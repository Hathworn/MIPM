; ModuleID = 'binomialoption/binomialoption.cpp'
source_filename = "binomialoption/binomialoption.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x float> }
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
%class.BinomialOption = type { double, double, i32, i32, i32, float*, float*, float*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, %"class.appsdk::SDKTimer"*, float*, float*, %"class.appsdk::HIPCommandArgs"* }
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
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
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

$_ZN6appsdk14HIPCommandArgs10initializeEv = comdat any

$_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE = comdat any

$_ZN6appsdk6OptionD2Ev = comdat any

$_ZN6appsdk8SDKTimer11createTimerEv = comdat any

$_ZN6appsdk8SDKTimer10startTimerEi = comdat any

$_ZN6appsdk8SDKTimer9stopTimerEi = comdat any

$_ZN6appsdk8SDKTimer9readTimerEi = comdat any

$_ZN6appsdk10printArrayIfEEvSsPKT_ii = comdat any

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
@_Z16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_ = dso_local constant void (i32, %struct.HIP_vector_type*, %struct.HIP_vector_type*)* @_Z31__device_stub__binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate host memory. (randArray)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"binomialoption/binomialoption.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (output)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Failed to allocate host memory. (refOutput)\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Failed to allocate host memory. (stepsArray)\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c" Resource Intilization failed\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Number of samples to be calculated\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c" verifyResults  failed\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c" Failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"\0A\0A\0ANo. Output Output(hex) Refoutput Refoutput(hex)\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c" [%d] %f %#x \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c" %f %#x, \0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Option Samples\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Time(sec)\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"Transfer+kernel(sec)\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Options/sec\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.53 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"HIP-Examples-Applications-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.71 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.78 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [52 x i8] c"_Z16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_binomialoption.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

@_ZN14BinomialOptionD1Ev = dso_local unnamed_addr alias void (%class.BinomialOption*), void (%class.BinomialOption*)* @_ZN14BinomialOptionD2Ev

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z31__device_stub__binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_(i32 %0, %struct.HIP_vector_type* %1, %struct.HIP_vector_type* %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HIP_vector_type*, align 8
  %6 = alloca %struct.HIP_vector_type*, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4, !tbaa !3
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %5, align 8, !tbaa !7
  store %struct.HIP_vector_type* %2, %struct.HIP_vector_type** %6, align 8, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32**
  store i32* %4, i32** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %5, %struct.HIP_vector_type*** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %6, %struct.HIP_vector_type*** %17, align 16
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
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32, %struct.HIP_vector_type*, %struct.HIP_vector_type*)** @_Z16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_ to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local i32 @_ZN14BinomialOption19setupBinomialOptionEv(%class.BinomialOption* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = add i32 %9, 3
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = sdiv i32 %9, 4
  %14 = shl nsw i32 %13, 2
  br label %15

15:                                               ; preds = %1, %12
  %16 = phi i32 [ %14, %12 ], [ 4, %1 ]
  store i32 %16, i32* %8, align 8, !tbaa !9
  %17 = sdiv i32 %16, 4
  %18 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 3
  store i32 %17, i32* %18, align 4, !tbaa !12
  %19 = zext i32 %17 to i64
  %20 = shl nuw nsw i64 %19, 4
  %21 = tail call noalias align 16 i8* @memalign(i64 16, i64 %20) #26
  %22 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 5
  %23 = bitcast float** %22 to i8**
  store i8* %21, i8** %23, align 8, !tbaa !13
  %24 = icmp eq i8* %21, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = icmp sgt i32 %16, 0
  br i1 %26, label %98, label %92

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %28) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
          to label %29 unwind label %82

29:                                               ; preds = %27
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %30 unwind label %84

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !14
  %33 = getelementptr inbounds i8, i8* %32, i64 -24
  %34 = bitcast i8* %33 to %"struct.std::basic_string<char>::_Rep"*
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #26
  %36 = icmp eq i8* %33, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %36, label %49, label %37, !prof !17

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %32, i64 -8
  %39 = bitcast i8* %38 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %40, label %42

40:                                               ; preds = %37
  %41 = atomicrmw volatile add i32* %39, i32 -1 acq_rel, align 4
  br label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %39, align 8, !tbaa !3
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %39, align 8, !tbaa !3
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %34, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %49

49:                                               ; preds = %30, %45, %48
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %28) #26
  %50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 33)
  %52 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %53 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 302)
  %54 = bitcast %"class.std::basic_ostream"* %53 to i8**
  %55 = load i8*, i8** %54, align 8, !tbaa !18
  %56 = getelementptr i8, i8* %55, i64 -24
  %57 = bitcast i8* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = bitcast %"class.std::basic_ostream"* %53 to i8*
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  %61 = getelementptr inbounds i8, i8* %60, i64 240
  %62 = bitcast i8* %61 to %"class.std::ctype"**
  %63 = load %"class.std::ctype"*, %"class.std::ctype"** %62, align 8, !tbaa !20
  %64 = icmp eq %"class.std::ctype"* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

66:                                               ; preds = %49
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %63, i64 0, i32 8
  %68 = load i8, i8* %67, align 8, !tbaa !23
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %63, i64 0, i32 9, i64 10
  %72 = load i8, i8* %71, align 1, !tbaa !25
  br label %79

73:                                               ; preds = %66
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %63)
  %74 = bitcast %"class.std::ctype"* %63 to i8 (%"class.std::ctype"*, i8)***
  %75 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %74, align 8, !tbaa !18
  %76 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %75, i64 6
  %77 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %76, align 8
  %78 = call signext i8 %77(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %63, i8 signext 10)
  br label %79

79:                                               ; preds = %70, %73
  %80 = phi i8 [ %72, %70 ], [ %78, %73 ]
  %81 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %53, i8 signext %80)
  br label %170

82:                                               ; preds = %27
  %83 = landingpad { i8*, i32 }
          cleanup
  br label %86

84:                                               ; preds = %29
  %85 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi { i8*, i32 } [ %85, %84 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %28) #26
  br label %175

88:                                               ; preds = %98
  %89 = load i32, i32* %18, align 4, !tbaa !12
  %90 = zext i32 %89 to i64
  %91 = shl nuw nsw i64 %90, 4
  br label %92

92:                                               ; preds = %88, %25
  %93 = phi i64 [ %91, %88 ], [ %20, %25 ]
  %94 = call i8* @calloc(i64 1, i64 %93)
  %95 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 6
  %96 = bitcast float** %95 to i8**
  store i8* %94, i8** %96, align 8, !tbaa !26
  %97 = icmp eq i8* %94, null
  br i1 %97, label %109, label %173

98:                                               ; preds = %25, %98
  %99 = phi i64 [ %105, %98 ], [ 0, %25 ]
  %100 = tail call i32 @rand() #26
  %101 = sitofp i32 %100 to float
  %102 = fmul contract float %101, 0x3E00000000000000
  %103 = load float*, float** %22, align 8, !tbaa !13
  %104 = getelementptr inbounds float, float* %103, i64 %99
  store float %102, float* %104, align 4, !tbaa !27
  %105 = add nuw nsw i64 %99, 1
  %106 = load i32, i32* %8, align 8, !tbaa !9
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %98, label %88, !llvm.loop !29

109:                                              ; preds = %92
  %110 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %110) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %111 unwind label %164

111:                                              ; preds = %109
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %112 unwind label %166

112:                                              ; preds = %111
  %113 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8, !tbaa !14
  %115 = getelementptr inbounds i8, i8* %114, i64 -24
  %116 = bitcast i8* %115 to %"struct.std::basic_string<char>::_Rep"*
  %117 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %117) #26
  %118 = icmp eq i8* %115, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %118, label %131, label %119, !prof !17

119:                                              ; preds = %112
  %120 = getelementptr inbounds i8, i8* %114, i64 -8
  %121 = bitcast i8* %120 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %122, label %124

122:                                              ; preds = %119
  %123 = atomicrmw volatile add i32* %121, i32 -1 acq_rel, align 4
  br label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %121, align 8, !tbaa !3
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %121, align 8, !tbaa !3
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %116, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %131

131:                                              ; preds = %112, %127, %130
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %110) #26
  %132 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %133 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 33)
  %134 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %135 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 311)
  %136 = bitcast %"class.std::basic_ostream"* %135 to i8**
  %137 = load i8*, i8** %136, align 8, !tbaa !18
  %138 = getelementptr i8, i8* %137, i64 -24
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = bitcast %"class.std::basic_ostream"* %135 to i8*
  %142 = getelementptr inbounds i8, i8* %141, i64 %140
  %143 = getelementptr inbounds i8, i8* %142, i64 240
  %144 = bitcast i8* %143 to %"class.std::ctype"**
  %145 = load %"class.std::ctype"*, %"class.std::ctype"** %144, align 8, !tbaa !20
  %146 = icmp eq %"class.std::ctype"* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %131
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

148:                                              ; preds = %131
  %149 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %145, i64 0, i32 8
  %150 = load i8, i8* %149, align 8, !tbaa !23
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %145, i64 0, i32 9, i64 10
  %154 = load i8, i8* %153, align 1, !tbaa !25
  br label %161

155:                                              ; preds = %148
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %145)
  %156 = bitcast %"class.std::ctype"* %145 to i8 (%"class.std::ctype"*, i8)***
  %157 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %156, align 8, !tbaa !18
  %158 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %157, i64 6
  %159 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %158, align 8
  %160 = call signext i8 %159(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %145, i8 signext 10)
  br label %161

161:                                              ; preds = %152, %155
  %162 = phi i8 [ %154, %152 ], [ %160, %155 ]
  %163 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %135, i8 signext %162)
  br label %170

164:                                              ; preds = %109
  %165 = landingpad { i8*, i32 }
          cleanup
  br label %168

166:                                              ; preds = %111
  %167 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi { i8*, i32 } [ %167, %166 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %110) #26
  br label %175

170:                                              ; preds = %79, %161
  %171 = phi %"class.std::basic_ostream"* [ %163, %161 ], [ %81, %79 ]
  %172 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %171)
  br label %173

173:                                              ; preds = %170, %92
  %174 = phi i32 [ 0, %92 ], [ 1, %170 ]
  ret i32 %174

175:                                              ; preds = %168, %86
  %176 = phi { i8*, i32 } [ %87, %86 ], [ %169, %168 ]
  resume { i8*, i32 } %176
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @memalign(i64, i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #7 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !14
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !31
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !18
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !20
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !25
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !18
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

declare dso_local void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #9 align 2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #10

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN14BinomialOption8setupHIPEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #7 align 2 {
  %2 = alloca %struct.hipDeviceProp_t, align 8
  %3 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %3) #26
  %4 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %2, i32 0)
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 14)
  %6 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 13
  %7 = load i32, i32* %6, align 4, !tbaa !34
  %8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !18
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !20
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !25
  br label %34

28:                                               ; preds = %21
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !18
  %31 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %30, i64 6
  %32 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %31, align 8
  %33 = call signext i8 %32(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18, i8 signext 10)
  br label %34

34:                                               ; preds = %25, %28
  %35 = phi i8 [ %27, %25 ], [ %33, %28 ]
  %36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, i8 signext %35)
  %37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %36)
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 14)
  %39 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 12
  %40 = load i32, i32* %39, align 8, !tbaa !37
  %41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %40)
  %42 = bitcast %"class.std::basic_ostream"* %41 to i8**
  %43 = load i8*, i8** %42, align 8, !tbaa !18
  %44 = getelementptr i8, i8* %43, i64 -24
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %"class.std::basic_ostream"* %41 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  %49 = getelementptr inbounds i8, i8* %48, i64 240
  %50 = bitcast i8* %49 to %"class.std::ctype"**
  %51 = load %"class.std::ctype"*, %"class.std::ctype"** %50, align 8, !tbaa !20
  %52 = icmp eq %"class.std::ctype"* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

54:                                               ; preds = %34
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !23
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 9, i64 10
  %60 = load i8, i8* %59, align 1, !tbaa !25
  br label %67

61:                                               ; preds = %54
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51)
  %62 = bitcast %"class.std::ctype"* %51 to i8 (%"class.std::ctype"*, i8)***
  %63 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %62, align 8, !tbaa !18
  %64 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %63, i64 6
  %65 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %64, align 8
  %66 = call signext i8 %65(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51, i8 signext 10)
  br label %67

67:                                               ; preds = %58, %61
  %68 = phi i8 [ %60, %58 ], [ %66, %61 ]
  %69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %41, i8 signext %68)
  %70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %69)
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 17)
  %72 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #26
  %73 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %3, i64 %72)
  %74 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %75 = getelementptr i8, i8* %74, i64 -24
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 240
  %80 = bitcast i8* %79 to %"class.std::ctype"**
  %81 = load %"class.std::ctype"*, %"class.std::ctype"** %80, align 8, !tbaa !20
  %82 = icmp eq %"class.std::ctype"* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

84:                                               ; preds = %67
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !23
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 9, i64 10
  %90 = load i8, i8* %89, align 1, !tbaa !25
  br label %97

91:                                               ; preds = %84
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81)
  %92 = bitcast %"class.std::ctype"* %81 to i8 (%"class.std::ctype"*, i8)***
  %93 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %92, align 8, !tbaa !18
  %94 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %93, i64 6
  %95 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %94, align 8
  %96 = call signext i8 %95(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81, i8 signext 10)
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi i8 [ %90, %88 ], [ %96, %91 ]
  %99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %98)
  %100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %99)
  %101 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 8
  %102 = bitcast %struct.HIP_vector_type** %101 to i8**
  %103 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 3
  %104 = load i32, i32* %103, align 4, !tbaa !12
  %105 = zext i32 %104 to i64
  %106 = shl nuw nsw i64 %105, 4
  %107 = call i32 @hipHostMalloc(i8** nonnull %102, i64 %106, i32 0)
  %108 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 9
  %109 = bitcast %struct.HIP_vector_type** %108 to i8**
  %110 = load i32, i32* %103, align 4, !tbaa !12
  %111 = zext i32 %110 to i64
  %112 = shl nuw nsw i64 %111, 4
  %113 = call i32 @hipHostMalloc(i8** nonnull %109, i64 %112, i32 0)
  %114 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 12
  %115 = bitcast float** %114 to i8**
  %116 = load i8*, i8** %102, align 8, !tbaa !38
  %117 = call i32 @hipHostGetDevicePointer(i8** nonnull %115, i8* %116, i32 0)
  %118 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 13
  %119 = bitcast float** %118 to i8**
  %120 = load i8*, i8** %109, align 8, !tbaa !39
  %121 = call i32 @hipHostGetDevicePointer(i8** nonnull %119, i8* %120, i32 0)
  %122 = load i8*, i8** %115, align 8, !tbaa !40
  %123 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 5
  %124 = bitcast float** %123 to i8**
  %125 = load i8*, i8** %124, align 8, !tbaa !13
  %126 = load i32, i32* %103, align 4, !tbaa !12
  %127 = zext i32 %126 to i64
  %128 = shl nuw nsw i64 %127, 4
  %129 = call i32 @hipMemcpy(i8* %122, i8* %125, i64 %128, i32 1)
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %3) #26
  ret i32 0
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN14BinomialOption10runKernelsEv(%class.BinomialOption* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.HIP_vector_type*, align 8
  %4 = alloca %struct.HIP_vector_type*, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca %struct.ihipEvent_t*, align 8
  %11 = alloca %struct.ihipEvent_t*, align 8
  %12 = alloca float, align 4
  %13 = tail call i32 @hipSetDevice(i32 0)
  %14 = bitcast %struct.ihipEvent_t** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #26
  %15 = bitcast %struct.ihipEvent_t** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #26
  %16 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %10)
  %17 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %11)
  %18 = bitcast float* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #26
  store float 1.000000e+00, float* %12, align 4, !tbaa !27
  %19 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 4
  %20 = load i32, i32* %19, align 8, !tbaa !41
  %21 = add i32 %20, 1
  %22 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !7
  %23 = call i32 @hipEventRecord(%struct.ihipEvent_t* %22, %struct.ihipStream_t* null)
  %24 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !12
  %26 = zext i32 %25 to i64
  %27 = or i64 %26, 4294967296
  %28 = zext i32 %21 to i64
  %29 = or i64 %28, 4294967296
  %30 = call i32 @__hipPushCallConfiguration(i64 %27, i32 1, i64 %29, i32 1, i64 0, %struct.ihipStream_t* null)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %1
  %33 = load i32, i32* %19, align 8, !tbaa !41
  %34 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 8
  %35 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %34, align 8, !tbaa !38
  %36 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 9
  %37 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %36, align 8, !tbaa !39
  %38 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38)
  %39 = bitcast %struct.HIP_vector_type** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39)
  %40 = bitcast %struct.HIP_vector_type** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40)
  %41 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %41)
  %42 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %42)
  %43 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43)
  %44 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44)
  %45 = bitcast [3 x i8*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %45)
  store i32 %33, i32* %2, align 4, !tbaa !3
  store %struct.HIP_vector_type* %35, %struct.HIP_vector_type** %3, align 8, !tbaa !7
  store %struct.HIP_vector_type* %37, %struct.HIP_vector_type** %4, align 8, !tbaa !7
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %47 = bitcast [3 x i8*]* %9 to i32**
  store i32* %2, i32** %47, align 16
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 1
  %49 = bitcast i8** %48 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %3, %struct.HIP_vector_type*** %49, align 8
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 2
  %51 = bitcast i8** %50 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %4, %struct.HIP_vector_type*** %51, align 16
  %52 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %53 = load i64, i64* %7, align 8
  %54 = bitcast i8** %8 to %struct.ihipStream_t**
  %55 = load %struct.ihipStream_t*, %struct.ihipStream_t** %54, align 8
  %56 = bitcast %struct.dim3* %5 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = bitcast %struct.dim3* %6 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @hipLaunchKernel(i8* bitcast (void (i32, %struct.HIP_vector_type*, %struct.HIP_vector_type*)** @_Z16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_ to i8*), i64 %57, i32 %59, i64 %61, i32 %63, i8** nonnull %46, i64 %53, %struct.ihipStream_t* %55)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %41)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %42)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %45)
  br label %65

65:                                               ; preds = %32, %1
  %66 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %11, align 8, !tbaa !7
  %67 = call i32 @hipEventRecord(%struct.ihipEvent_t* %66, %struct.ihipStream_t* null)
  %68 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %11, align 8, !tbaa !7
  %69 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %68)
  %70 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !7
  %71 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %11, align 8, !tbaa !7
  %72 = call i32 @hipEventElapsedTime(float* nonnull %12, %struct.ihipEvent_t* %70, %struct.ihipEvent_t* %71)
  %73 = load float, float* %12, align 4, !tbaa !27
  %74 = fpext float %73 to double
  %75 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), double %74)
  %76 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 6
  %77 = bitcast float** %76 to i8**
  %78 = load i8*, i8** %77, align 8, !tbaa !26
  %79 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 13
  %80 = bitcast float** %79 to i8**
  %81 = load i8*, i8** %80, align 8, !tbaa !42
  %82 = load i32, i32* %24, align 4, !tbaa !12
  %83 = zext i32 %82 to i64
  %84 = shl nuw nsw i64 %83, 4
  %85 = call i32 @hipMemcpy(i8* %78, i8* %81, i64 %84, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #26
  ret i32 0
}

declare dso_local i32 @hipSetDevice(i32) local_unnamed_addr #0

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: uwtable
define dso_local i32 @_ZN14BinomialOption26binomialOptionCPUReferenceEv(%class.BinomialOption* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !12
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 4
  %12 = tail call noalias align 16 i8* @malloc(i64 %11) #26
  %13 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 7
  %14 = bitcast float** %13 to i8**
  store i8* %12, i8** %14, align 8, !tbaa !43
  %15 = icmp eq i8* %12, null
  br i1 %15, label %16, label %78

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
          to label %18 unwind label %72

18:                                               ; preds = %16
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %74

19:                                               ; preds = %18
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !17

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, i8* %21, i64 -8
  %28 = bitcast i8* %27 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %29, label %31

29:                                               ; preds = %26
  %30 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %28, align 8, !tbaa !3
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %28, align 8, !tbaa !3
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #26
  %39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %40 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 33)
  %41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %42 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 382)
  %43 = bitcast %"class.std::basic_ostream"* %42 to i8**
  %44 = load i8*, i8** %43, align 8, !tbaa !18
  %45 = getelementptr i8, i8* %44, i64 -24
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = bitcast %"class.std::basic_ostream"* %42 to i8*
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  %50 = getelementptr inbounds i8, i8* %49, i64 240
  %51 = bitcast i8* %50 to %"class.std::ctype"**
  %52 = load %"class.std::ctype"*, %"class.std::ctype"** %51, align 8, !tbaa !20
  %53 = icmp eq %"class.std::ctype"* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

55:                                               ; preds = %38
  %56 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %52, i64 0, i32 8
  %57 = load i8, i8* %56, align 8, !tbaa !23
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %52, i64 0, i32 9, i64 10
  %61 = load i8, i8* %60, align 1, !tbaa !25
  br label %68

62:                                               ; preds = %55
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %52)
  %63 = bitcast %"class.std::ctype"* %52 to i8 (%"class.std::ctype"*, i8)***
  %64 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %63, align 8, !tbaa !18
  %65 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %64, i64 6
  %66 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %65, align 8
  %67 = call signext i8 %66(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %52, i8 signext 10)
  br label %68

68:                                               ; preds = %59, %62
  %69 = phi i8 [ %61, %59 ], [ %67, %62 ]
  %70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %42, i8 signext %69)
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %70)
  br label %379

72:                                               ; preds = %16
  %73 = landingpad { i8*, i32 }
          cleanup
  br label %76

74:                                               ; preds = %18
  %75 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi { i8*, i32 } [ %75, %74 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #26
  br label %381

78:                                               ; preds = %1
  %79 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 4
  %80 = load i32, i32* %79, align 8, !tbaa !41
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = shl nuw nsw i64 %82, 4
  %84 = tail call noalias align 16 i8* @malloc(i64 %83) #26
  %85 = bitcast i8* %84 to float*
  %86 = icmp eq i8* %84, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 2
  %89 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 5
  %90 = load i32, i32* %88, align 8, !tbaa !9
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %155, label %154

92:                                               ; preds = %78
  %93 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %93) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %94 unwind label %148

94:                                               ; preds = %92
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %95 unwind label %150

95:                                               ; preds = %94
  %96 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8, !tbaa !14
  %98 = getelementptr inbounds i8, i8* %97, i64 -24
  %99 = bitcast i8* %98 to %"struct.std::basic_string<char>::_Rep"*
  %100 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %100) #26
  %101 = icmp eq i8* %98, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %101, label %114, label %102, !prof !17

102:                                              ; preds = %95
  %103 = getelementptr inbounds i8, i8* %97, i64 -8
  %104 = bitcast i8* %103 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %105, label %107

105:                                              ; preds = %102
  %106 = atomicrmw volatile add i32* %104, i32 -1 acq_rel, align 4
  br label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %104, align 8, !tbaa !3
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %104, align 8, !tbaa !3
  br label %110

110:                                              ; preds = %107, %105
  %111 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %99, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %114

114:                                              ; preds = %95, %110, %113
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %100) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %93) #26
  %115 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %116 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 33)
  %117 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %118 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 385)
  %119 = bitcast %"class.std::basic_ostream"* %118 to i8**
  %120 = load i8*, i8** %119, align 8, !tbaa !18
  %121 = getelementptr i8, i8* %120, i64 -24
  %122 = bitcast i8* %121 to i64*
  %123 = load i64, i64* %122, align 8
  %124 = bitcast %"class.std::basic_ostream"* %118 to i8*
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  %126 = getelementptr inbounds i8, i8* %125, i64 240
  %127 = bitcast i8* %126 to %"class.std::ctype"**
  %128 = load %"class.std::ctype"*, %"class.std::ctype"** %127, align 8, !tbaa !20
  %129 = icmp eq %"class.std::ctype"* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

131:                                              ; preds = %114
  %132 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %128, i64 0, i32 8
  %133 = load i8, i8* %132, align 8, !tbaa !23
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %128, i64 0, i32 9, i64 10
  %137 = load i8, i8* %136, align 1, !tbaa !25
  br label %144

138:                                              ; preds = %131
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %128)
  %139 = bitcast %"class.std::ctype"* %128 to i8 (%"class.std::ctype"*, i8)***
  %140 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %139, align 8, !tbaa !18
  %141 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %140, i64 6
  %142 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %141, align 8
  %143 = call signext i8 %142(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %128, i8 signext 10)
  br label %144

144:                                              ; preds = %135, %138
  %145 = phi i8 [ %137, %135 ], [ %143, %138 ]
  %146 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %118, i8 signext %145)
  %147 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %146)
  br label %379

148:                                              ; preds = %92
  %149 = landingpad { i8*, i32 }
          cleanup
  br label %152

150:                                              ; preds = %94
  %151 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi { i8*, i32 } [ %151, %150 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %93) #26
  br label %381

154:                                              ; preds = %321, %87
  tail call void @free(i8* nonnull %84) #26
  br label %379

155:                                              ; preds = %87, %321
  %156 = phi i32 [ %316, %321 ], [ %80, %87 ]
  %157 = phi i64 [ %182, %321 ], [ 0, %87 ]
  %158 = load float*, float** %89, align 8, !tbaa !13
  %159 = getelementptr inbounds float, float* %158, i64 %157
  %160 = load float, float* %159, align 4, !tbaa !27
  %161 = fsub contract float 1.000000e+00, %160
  %162 = fmul contract float %161, 2.500000e-01
  %163 = fmul contract float %160, 1.000000e+01
  %164 = fadd contract float %163, %162
  %165 = uitofp i32 %156 to float
  %166 = fdiv contract float 1.000000e+00, %165
  %167 = fmul contract float %164, %166
  %168 = tail call contract float @sqrtf(float %167) #26
  %169 = fmul contract float %168, 0x3FD3333340000000
  %170 = fmul contract float %167, 0x3F947AE140000000
  %171 = tail call contract float @expf(float %170) #26
  %172 = fdiv contract float 1.000000e+00, %171
  %173 = tail call contract float @expf(float %169) #26
  %174 = fdiv contract float 1.000000e+00, %173
  %175 = fsub contract float %171, %174
  %176 = fsub contract float %173, %174
  %177 = fdiv contract float %175, %176
  %178 = fsub contract float 1.000000e+00, %177
  %179 = fmul contract float %172, %177
  %180 = fmul contract float %172, %178
  %181 = load float*, float** %89, align 8, !tbaa !13
  %182 = add nuw nsw i64 %157, 1
  %183 = getelementptr inbounds float, float* %181, i64 %182
  %184 = load float, float* %183, align 4, !tbaa !27
  %185 = fsub contract float 1.000000e+00, %184
  %186 = fmul contract float %185, 2.500000e-01
  %187 = fmul contract float %184, 1.000000e+01
  %188 = fadd contract float %187, %186
  %189 = load i32, i32* %79, align 8, !tbaa !41
  %190 = uitofp i32 %189 to float
  %191 = fdiv contract float 1.000000e+00, %190
  %192 = fmul contract float %188, %191
  %193 = tail call contract float @sqrtf(float %192) #26
  %194 = fmul contract float %193, 0x3FD3333340000000
  %195 = fmul contract float %192, 0x3F947AE140000000
  %196 = tail call contract float @expf(float %195) #26
  %197 = fdiv contract float 1.000000e+00, %196
  %198 = tail call contract float @expf(float %194) #26
  %199 = fdiv contract float 1.000000e+00, %198
  %200 = fsub contract float %196, %199
  %201 = fsub contract float %198, %199
  %202 = fdiv contract float %200, %201
  %203 = fsub contract float 1.000000e+00, %202
  %204 = fmul contract float %197, %202
  %205 = fmul contract float %197, %203
  %206 = load float*, float** %89, align 8, !tbaa !13
  %207 = add nuw nsw i64 %157, 2
  %208 = getelementptr inbounds float, float* %206, i64 %207
  %209 = load float, float* %208, align 4, !tbaa !27
  %210 = fsub contract float 1.000000e+00, %209
  %211 = fmul contract float %210, 2.500000e-01
  %212 = fmul contract float %209, 1.000000e+01
  %213 = fadd contract float %212, %211
  %214 = load i32, i32* %79, align 8, !tbaa !41
  %215 = uitofp i32 %214 to float
  %216 = fdiv contract float 1.000000e+00, %215
  %217 = fmul contract float %213, %216
  %218 = tail call contract float @sqrtf(float %217) #26
  %219 = fmul contract float %218, 0x3FD3333340000000
  %220 = fmul contract float %217, 0x3F947AE140000000
  %221 = tail call contract float @expf(float %220) #26
  %222 = fdiv contract float 1.000000e+00, %221
  %223 = tail call contract float @expf(float %219) #26
  %224 = fdiv contract float 1.000000e+00, %223
  %225 = fsub contract float %221, %224
  %226 = fsub contract float %223, %224
  %227 = fdiv contract float %225, %226
  %228 = fsub contract float 1.000000e+00, %227
  %229 = fmul contract float %222, %227
  %230 = fmul contract float %222, %228
  %231 = load float*, float** %89, align 8, !tbaa !13
  %232 = add nuw nsw i64 %157, 3
  %233 = getelementptr inbounds float, float* %231, i64 %232
  %234 = load float, float* %233, align 4, !tbaa !27
  %235 = fsub contract float 1.000000e+00, %234
  %236 = insertelement <4 x float> poison, float %160, i64 0
  %237 = insertelement <4 x float> %236, float %185, i64 1
  %238 = insertelement <4 x float> %237, float %209, i64 2
  %239 = insertelement <4 x float> %238, float %235, i64 3
  %240 = fmul contract <4 x float> %239, <float 3.000000e+01, float 5.000000e+00, float 3.000000e+01, float 5.000000e+00>
  %241 = insertelement <4 x float> poison, float %161, i64 0
  %242 = insertelement <4 x float> %241, float %184, i64 1
  %243 = insertelement <4 x float> %242, float %210, i64 2
  %244 = insertelement <4 x float> %243, float %234, i64 3
  %245 = fmul contract <4 x float> %244, <float 5.000000e+00, float 3.000000e+01, float 5.000000e+00, float 3.000000e+01>
  %246 = fadd contract <4 x float> %245, %240
  %247 = insertelement <4 x float> %236, float %184, i64 1
  %248 = insertelement <4 x float> %247, float %209, i64 2
  %249 = insertelement <4 x float> %248, float %234, i64 3
  %250 = fmul contract <4 x float> %249, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %251 = insertelement <4 x float> %241, float %185, i64 1
  %252 = insertelement <4 x float> %251, float %210, i64 2
  %253 = insertelement <4 x float> %252, float %235, i64 3
  %254 = fadd contract <4 x float> %253, %250
  %255 = fmul contract float %235, 2.500000e-01
  %256 = fmul contract float %234, 1.000000e+01
  %257 = fadd contract float %256, %255
  %258 = load i32, i32* %79, align 8, !tbaa !41
  %259 = uitofp i32 %258 to float
  %260 = fdiv contract float 1.000000e+00, %259
  %261 = fmul contract float %257, %260
  %262 = tail call contract float @sqrtf(float %261) #26
  %263 = fmul contract float %262, 0x3FD3333340000000
  %264 = fmul contract float %261, 0x3F947AE140000000
  %265 = tail call contract float @expf(float %264) #26
  %266 = fdiv contract float 1.000000e+00, %265
  %267 = tail call contract float @expf(float %263) #26
  %268 = fdiv contract float 1.000000e+00, %267
  %269 = fsub contract float %265, %268
  %270 = fsub contract float %267, %268
  %271 = fdiv contract float %269, %270
  %272 = fsub contract float 1.000000e+00, %271
  %273 = fmul contract float %266, %271
  %274 = fmul contract float %266, %272
  %275 = load i32, i32* %79, align 8, !tbaa !41
  br label %280

276:                                              ; preds = %280
  %277 = icmp sgt i32 %316, 0
  br i1 %277, label %278, label %321

278:                                              ; preds = %276
  %279 = zext i32 %316 to i64
  br label %319

280:                                              ; preds = %155, %280
  %281 = phi i32 [ %275, %155 ], [ %316, %280 ]
  %282 = phi i64 [ 0, %155 ], [ %315, %280 ]
  %283 = trunc i64 %282 to i32
  %284 = sitofp i32 %283 to float
  %285 = fmul contract float %284, 2.000000e+00
  %286 = shl nsw i64 %282, 2
  %287 = uitofp i32 %281 to float
  %288 = fsub contract float %285, %287
  %289 = fmul contract float %169, %288
  %290 = tail call contract float @expf(float %289) #26
  %291 = getelementptr inbounds float, float* %85, i64 %286
  %292 = load i32, i32* %79, align 8, !tbaa !41
  %293 = uitofp i32 %292 to float
  %294 = fsub contract float %285, %293
  %295 = fmul contract float %194, %294
  %296 = tail call contract float @expf(float %295) #26
  %297 = load i32, i32* %79, align 8, !tbaa !41
  %298 = uitofp i32 %297 to float
  %299 = fsub contract float %285, %298
  %300 = fmul contract float %219, %299
  %301 = tail call contract float @expf(float %300) #26
  %302 = load i32, i32* %79, align 8, !tbaa !41
  %303 = uitofp i32 %302 to float
  %304 = fsub contract float %285, %303
  %305 = fmul contract float %263, %304
  %306 = tail call contract float @expf(float %305) #26
  %307 = insertelement <4 x float> poison, float %290, i64 0
  %308 = insertelement <4 x float> %307, float %296, i64 1
  %309 = insertelement <4 x float> %308, float %301, i64 2
  %310 = insertelement <4 x float> %309, float %306, i64 3
  %311 = fmul contract <4 x float> %246, %310
  %312 = fsub contract <4 x float> %311, %254
  %313 = call contract <4 x float> @llvm.maxnum.v4f32(<4 x float> %312, <4 x float> zeroinitializer)
  %314 = bitcast float* %291 to <4 x float>*
  store <4 x float> %313, <4 x float>* %314, align 16, !tbaa !27
  %315 = add nuw nsw i64 %282, 1
  %316 = load i32, i32* %79, align 8, !tbaa !41
  %317 = zext i32 %316 to i64
  %318 = icmp ult i64 %282, %317
  br i1 %318, label %280, label %276, !llvm.loop !44

319:                                              ; preds = %278, %376
  %320 = phi i64 [ %377, %376 ], [ %279, %278 ]
  br label %328

321:                                              ; preds = %376, %276
  %322 = load float, float* %85, align 16, !tbaa !27
  %323 = load float*, float** %13, align 8, !tbaa !43
  %324 = getelementptr inbounds float, float* %323, i64 %157
  store float %322, float* %324, align 4, !tbaa !27
  %325 = load i32, i32* %88, align 8, !tbaa !9
  %326 = sext i32 %325 to i64
  %327 = icmp slt i64 %182, %326
  br i1 %327, label %155, label %154, !llvm.loop !45

328:                                              ; preds = %319, %328
  %329 = phi i64 [ 0, %319 ], [ %374, %328 ]
  %330 = shl nsw i64 %329, 2
  %331 = shl i64 %329, 34
  %332 = add i64 %331, 17179869184
  %333 = ashr exact i64 %332, 32
  %334 = getelementptr inbounds float, float* %85, i64 %333
  %335 = load float, float* %334, align 16, !tbaa !27
  %336 = fmul contract float %180, %335
  %337 = getelementptr inbounds float, float* %85, i64 %330
  %338 = load float, float* %337, align 16, !tbaa !27
  %339 = fmul contract float %179, %338
  %340 = fadd contract float %336, %339
  store float %340, float* %337, align 16, !tbaa !27
  %341 = or i64 %330, 1
  %342 = shl i64 %329, 34
  %343 = add i64 %342, 21474836480
  %344 = ashr exact i64 %343, 32
  %345 = getelementptr inbounds float, float* %85, i64 %344
  %346 = load float, float* %345, align 4, !tbaa !27
  %347 = fmul contract float %205, %346
  %348 = getelementptr inbounds float, float* %85, i64 %341
  %349 = load float, float* %348, align 4, !tbaa !27
  %350 = fmul contract float %204, %349
  %351 = fadd contract float %347, %350
  store float %351, float* %348, align 4, !tbaa !27
  %352 = or i64 %330, 2
  %353 = shl i64 %329, 34
  %354 = add i64 %353, 25769803776
  %355 = ashr exact i64 %354, 32
  %356 = getelementptr inbounds float, float* %85, i64 %355
  %357 = load float, float* %356, align 8, !tbaa !27
  %358 = fmul contract float %230, %357
  %359 = getelementptr inbounds float, float* %85, i64 %352
  %360 = load float, float* %359, align 8, !tbaa !27
  %361 = fmul contract float %229, %360
  %362 = fadd contract float %358, %361
  store float %362, float* %359, align 8, !tbaa !27
  %363 = or i64 %330, 3
  %364 = shl i64 %329, 34
  %365 = add i64 %364, 30064771072
  %366 = ashr exact i64 %365, 32
  %367 = getelementptr inbounds float, float* %85, i64 %366
  %368 = load float, float* %367, align 4, !tbaa !27
  %369 = fmul contract float %274, %368
  %370 = getelementptr inbounds float, float* %85, i64 %363
  %371 = load float, float* %370, align 4, !tbaa !27
  %372 = fmul contract float %273, %371
  %373 = fadd contract float %369, %372
  store float %373, float* %370, align 4, !tbaa !27
  %374 = add nuw nsw i64 %329, 1
  %375 = icmp eq i64 %374, %320
  br i1 %375, label %376, label %328, !llvm.loop !46

376:                                              ; preds = %328
  %377 = add nsw i64 %320, -1
  %378 = icmp sgt i64 %320, 1
  br i1 %378, label %319, label %321, !llvm.loop !47

379:                                              ; preds = %144, %154, %68
  %380 = phi i32 [ 1, %68 ], [ 1, %144 ], [ 0, %154 ]
  ret i32 %380

381:                                              ; preds = %152, %76
  %382 = phi { i8*, i32 } [ %77, %76 ], [ %153, %152 ]
  resume { i8*, i32 } %382
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @expf(float) local_unnamed_addr #13

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: uwtable
define dso_local i32 @_ZN14BinomialOption10initializeEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 14
  %6 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %5, align 8, !tbaa !48
  %7 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %11 unwind label %64

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !14
  %14 = getelementptr inbounds i8, i8* %13, i64 -24
  %15 = bitcast i8* %14 to %"struct.std::basic_string<char>::_Rep"*
  %16 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %16) #26
  %17 = icmp eq i8* %14, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %17, label %30, label %18, !prof !17

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, i8* %13, i64 -8
  %20 = bitcast i8* %19 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %21, label %23

21:                                               ; preds = %18
  %22 = atomicrmw volatile add i32* %20, i32 -1 acq_rel, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %20, align 8, !tbaa !3
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %20, align 8, !tbaa !3
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %15, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %30

30:                                               ; preds = %11, %26, %29
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %16) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #26
  %31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %32 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 33)
  %33 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %34 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 454)
  %35 = bitcast %"class.std::basic_ostream"* %34 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !18
  %37 = getelementptr i8, i8* %36, i64 -24
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %"class.std::basic_ostream"* %34 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  %42 = getelementptr inbounds i8, i8* %41, i64 240
  %43 = bitcast i8* %42 to %"class.std::ctype"**
  %44 = load %"class.std::ctype"*, %"class.std::ctype"** %43, align 8, !tbaa !20
  %45 = icmp eq %"class.std::ctype"* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

47:                                               ; preds = %30
  %48 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %44, i64 0, i32 8
  %49 = load i8, i8* %48, align 8, !tbaa !23
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %44, i64 0, i32 9, i64 10
  %53 = load i8, i8* %52, align 1, !tbaa !25
  br label %60

54:                                               ; preds = %47
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %44)
  %55 = bitcast %"class.std::ctype"* %44 to i8 (%"class.std::ctype"*, i8)***
  %56 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %55, align 8, !tbaa !18
  %57 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %56, i64 6
  %58 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %57, align 8
  %59 = call signext i8 %58(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %44, i8 signext 10)
  br label %60

60:                                               ; preds = %51, %54
  %61 = phi i8 [ %53, %51 ], [ %59, %54 ]
  %62 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %34, i8 signext %61)
  %63 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %62)
  br label %104

64:                                               ; preds = %9
  %65 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #26
  resume { i8*, i32 } %65

66:                                               ; preds = %1
  %67 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %68 = bitcast i8* %67 to %"struct.appsdk::Option"*
  %69 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %69, align 8, !tbaa !49
  %70 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %70, align 8, !tbaa !49
  %71 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %71, align 8, !tbaa !49
  %72 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %72, align 8, !tbaa !49
  %73 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 0
  %74 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 1)
  %75 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 1
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64 7)
  %77 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 2
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i64 34)
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 4
  store i32 0, i32* %79, align 8, !tbaa !50
  %80 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 2
  %81 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 5
  %82 = bitcast i8** %81 to i32**
  store i32* %80, i32** %82, align 8, !tbaa !53
  %83 = bitcast %"class.appsdk::HIPCommandArgs"** %5 to %"class.appsdk::SDKCmdArgsParser"**
  %84 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !48
  %85 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %84, %"struct.appsdk::Option"* nonnull %68)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %68) #26
  tail call void @_ZdlPv(i8* nonnull %67) #29
  %86 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %87 = bitcast i8* %86 to %"struct.appsdk::Option"*
  %88 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %88, align 8, !tbaa !49
  %89 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %89, align 8, !tbaa !49
  %90 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %90, align 8, !tbaa !49
  %91 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %91, align 8, !tbaa !49
  %92 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 0
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %94 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 1
  %95 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 10)
  %96 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 2
  %97 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i64 41)
  %98 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 4
  store i32 0, i32* %98, align 8, !tbaa !50
  %99 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 10
  %100 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 5
  %101 = bitcast i8** %100 to i32**
  store i32* %99, i32** %101, align 8, !tbaa !53
  %102 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !48
  %103 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %102, %"struct.appsdk::Option"* nonnull %87)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %87) #26
  tail call void @_ZdlPv(i8* nonnull %86) #29
  br label %104

104:                                              ; preds = %66, %60
  %105 = phi i32 [ 1, %60 ], [ 0, %66 ]
  ret i32 %105
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #28
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !49
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !49
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !49
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !49
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !49
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !49
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !49
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !49
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !49
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !49
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !49
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !49
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !49
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !49
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !49
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !49
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !49
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !49
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !49
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !49
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !50
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !53
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !50
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !53
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !50
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !53
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !50
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !53
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.53, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !50
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !53
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !54
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !57
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #16

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, %"struct.appsdk::Option"* %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"struct.appsdk::Option"* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !57
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !54
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 48)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = or i64 %16, 8
  %18 = select i1 %15, i64 -1, i64 %17
  %19 = tail call noalias nonnull i8* @_Znam(i64 %18) #28
  %20 = bitcast i8* %19 to i64*
  store i64 %13, i64* %20, align 16
  %21 = getelementptr inbounds i8, i8* %19, i64 8
  %22 = bitcast i8* %21 to %"struct.appsdk::Option"*
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %25, align 8, !tbaa !57
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !49
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !49
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !49
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !49
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !57
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
  %59 = load i32, i32* %10, align 8, !tbaa !54
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !57
  br i1 %61, label %39, label %63, !llvm.loop !58

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
  %83 = load i32, i32* %10, align 8, !tbaa !54
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !54
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %95) #26
  %96 = icmp eq %"struct.appsdk::Option"* %95, %8
  br i1 %96, label %97, label %93

97:                                               ; preds = %93, %85
  tail call void @_ZdaPv(i8* nonnull %87) #29
  br label %98

98:                                               ; preds = %63, %97, %4
  %99 = phi i32 [ -1, %4 ], [ 0, %97 ], [ 0, %63 ]
  ret i32 %99
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %0) unnamed_addr #17 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 3, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #26
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !17

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, i8* %7, i64 -8
  %14 = bitcast i8* %13 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %15, label %17

15:                                               ; preds = %12
  %16 = atomicrmw volatile add i32* %14, i32 -1 acq_rel, align 4
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %14, align 8, !tbaa !3
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %14, align 8, !tbaa !3
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %9, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %24

24:                                               ; preds = %1, %20, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #26
  %25 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !14
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #26
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !17

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, i8* %26, i64 -8
  %33 = bitcast i8* %32 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %34, label %36

34:                                               ; preds = %31
  %35 = atomicrmw volatile add i32* %33, i32 -1 acq_rel, align 4
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %33, align 8, !tbaa !3
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %33, align 8, !tbaa !3
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %28, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %43

43:                                               ; preds = %24, %39, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #26
  %44 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !14
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !17

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, i8* %45, i64 -8
  %52 = bitcast i8* %51 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %53, label %55

53:                                               ; preds = %50
  %54 = atomicrmw volatile add i32* %52, i32 -1 acq_rel, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %52, align 8, !tbaa !3
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %52, align 8, !tbaa !3
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %62

62:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #26
  %63 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #26
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !17

69:                                               ; preds = %62
  %70 = getelementptr inbounds i8, i8* %64, i64 -8
  %71 = bitcast i8* %70 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %72, label %74

72:                                               ; preds = %69
  %73 = atomicrmw volatile add i32* %71, i32 -1 acq_rel, align 4
  br label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %71, align 8, !tbaa !3
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %71, align 8, !tbaa !3
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %81

81:                                               ; preds = %62, %77, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #26
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN14BinomialOption5setupEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = tail call i32 @_ZN14BinomialOption19setupBinomialOptionEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %82

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 11
  %10 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !59
  %11 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %10)
  %12 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !59
  %13 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13)
  %14 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %12, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %12, i64 0, i32 0, i32 0, i32 0, i32 0
  %17 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %16, align 8, !tbaa !63
  %18 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %15 to i64
  %19 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %17 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 3
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %11, %22
  br i1 %23, label %67, label %24

24:                                               ; preds = %8
  %25 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %25) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %26 unwind label %46

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !14
  %29 = getelementptr inbounds i8, i8* %28, i64 -24
  %30 = bitcast i8* %29 to %"struct.std::basic_string<char>::_Rep"*
  %31 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %31) #26
  %32 = icmp eq i8* %29, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %32, label %45, label %33, !prof !17

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %28, i64 -8
  %35 = bitcast i8* %34 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %36, label %38

36:                                               ; preds = %33
  %37 = atomicrmw volatile add i32* %35, i32 -1 acq_rel, align 4
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %35, align 8, !tbaa !3
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %35, align 8, !tbaa !3
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %30, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %45

45:                                               ; preds = %44, %41, %26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %25) #26
  br label %73

46:                                               ; preds = %24
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !14
  %50 = getelementptr inbounds i8, i8* %49, i64 -24
  %51 = bitcast i8* %50 to %"struct.std::basic_string<char>::_Rep"*
  %52 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #26
  %53 = icmp eq i8* %50, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %53, label %66, label %54, !prof !17

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, i8* %49, i64 -8
  %56 = bitcast i8* %55 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %57, label %59

57:                                               ; preds = %54
  %58 = atomicrmw volatile add i32* %56, i32 -1 acq_rel, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %56, align 8, !tbaa !3
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %56, align 8, !tbaa !3
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %51, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %66

66:                                               ; preds = %46, %62, %65
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %25) #26
  resume { i8*, i32 } %47

67:                                               ; preds = %8
  %68 = sext i32 %11 to i64
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %17, i64 %68
  %70 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %69, align 8, !tbaa !7
  %71 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %70, i64 0, i32 2
  %72 = bitcast i64* %71 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  br label %73

73:                                               ; preds = %45, %67
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13)
  %74 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !59
  %75 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %74, i32 %11)
  %76 = call i32 @_ZN14BinomialOption8setupHIPEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0)
  %77 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !59
  %78 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %77, i32 %11)
  %79 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !59
  %80 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %79, i32 %11)
  %81 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 0
  store double %80, double* %81, align 8, !tbaa !64
  br label %82

82:                                               ; preds = %1, %73
  %83 = phi i32 [ 0, %73 ], [ 1, %1 ]
  ret i32 %83
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #28
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !68
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !7
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !60
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !63
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !63
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
  %36 = tail call noalias nonnull i8* @_Znwm(i64 %35) #30
  %37 = bitcast i8* %36 to %"struct.appsdk::SDKTimer::Timer"**
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !63
  %39 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %38 to i64
  %40 = sub i64 %22, %39
  br label %41

41:                                               ; preds = %34, %19
  %42 = phi i64 [ %40, %34 ], [ %24, %19 ]
  %43 = phi %"struct.appsdk::SDKTimer::Timer"** [ %38, %34 ], [ %21, %19 ]
  %44 = phi %"struct.appsdk::SDKTimer::Timer"** [ %37, %34 ], [ null, %19 ]
  %45 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %25
  %46 = bitcast %"struct.appsdk::SDKTimer::Timer"** %45 to i8**
  store i8* %2, i8** %46, align 8, !tbaa !7
  %47 = icmp eq i64 %42, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = bitcast %"struct.appsdk::SDKTimer::Timer"** %44 to i8*
  %50 = bitcast %"struct.appsdk::SDKTimer::Timer"** %43 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 %42, i1 false) #26
  br label %51

51:                                               ; preds = %48, %41
  %52 = ashr exact i64 %42, 3
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %52
  %54 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, i64 1
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !60
  %56 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %55 to i64
  %57 = sub i64 %56, %22
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = bitcast %"struct.appsdk::SDKTimer::Timer"** %54 to i8*
  %61 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %60, i8* align 8 %61, i64 %57, i1 false) #26
  br label %62

62:                                               ; preds = %59, %51
  %63 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %43, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = bitcast %"struct.appsdk::SDKTimer::Timer"** %43 to i8*
  tail call void @_ZdlPv(i8* nonnull %65) #26
  br label %66

66:                                               ; preds = %64, %62
  %67 = ashr exact i64 %57, 3
  %68 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %54, i64 %67
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !63
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !60
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !68
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !63
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !17

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, i8* %21, i64 -8
  %28 = bitcast i8* %27 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %29, label %31

29:                                               ; preds = %26
  %30 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %28, align 8, !tbaa !3
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %28, align 8, !tbaa !3
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #26
  br label %56

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #26
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #26
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #26
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !69
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !71
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !63
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !7
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #26
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !63
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !17

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, i8* %21, i64 -8
  %28 = bitcast i8* %27 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %29, label %31

29:                                               ; preds = %26
  %30 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %28, align 8, !tbaa !3
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %28, align 8, !tbaa !3
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #26
  br label %61

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #26
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #26
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #26
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !69
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !71
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !63
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !7
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !72
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !72
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !73
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #26
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
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !63
  %10 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %7 to i64
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !14
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #26
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !17

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, i8* %20, i64 -8
  %27 = bitcast i8* %26 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %28, label %30

28:                                               ; preds = %25
  %29 = atomicrmw volatile add i32* %27, i32 -1 acq_rel, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %27, align 8, !tbaa !3
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %27, align 8, !tbaa !3
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %22, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %37

37:                                               ; preds = %18, %33, %36
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %23) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #26
  br label %51

38:                                               ; preds = %16
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #26
  resume { i8*, i32 } %39

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %9, i64 %41
  %43 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %42, align 8, !tbaa !7
  %44 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 2
  %45 = load i64, i64* %44, align 8, !tbaa !73
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !65
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN14BinomialOption3runEv(%class.BinomialOption* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @_ZN14BinomialOption10runKernelsEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0)
  %16 = load i32, i32* %11, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @_ZN14BinomialOption10runKernelsEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0)
  br label %20

20:                                               ; preds = %14, %18, %1
  %21 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i64 21)
  %22 = load i32, i32* %11, align 8, !tbaa !74
  %23 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %22)
  %24 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %23, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i64 11)
  %25 = bitcast %"class.std::basic_ostream"* %23 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !18
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = bitcast %"class.std::basic_ostream"* %23 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  %32 = getelementptr inbounds i8, i8* %31, i64 240
  %33 = bitcast i8* %32 to %"class.std::ctype"**
  %34 = load %"class.std::ctype"*, %"class.std::ctype"** %33, align 8, !tbaa !20
  %35 = icmp eq %"class.std::ctype"* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

37:                                               ; preds = %20
  %38 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %34, i64 0, i32 8
  %39 = load i8, i8* %38, align 8, !tbaa !23
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %34, i64 0, i32 9, i64 10
  %43 = load i8, i8* %42, align 1, !tbaa !25
  br label %50

44:                                               ; preds = %37
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %34)
  %45 = bitcast %"class.std::ctype"* %34 to i8 (%"class.std::ctype"*, i8)***
  %46 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %45, align 8, !tbaa !18
  %47 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %46, i64 6
  %48 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %47, align 8
  %49 = tail call signext i8 %48(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %34, i8 signext 10)
  br label %50

50:                                               ; preds = %41, %44
  %51 = phi i8 [ %43, %41 ], [ %49, %44 ]
  %52 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %23, i8 signext %51)
  %53 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %52)
  %54 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i64 43)
  %55 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %56 = getelementptr i8, i8* %55, i64 -24
  %57 = bitcast i8* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 240
  %61 = bitcast i8* %60 to %"class.std::ctype"**
  %62 = load %"class.std::ctype"*, %"class.std::ctype"** %61, align 8, !tbaa !20
  %63 = icmp eq %"class.std::ctype"* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

65:                                               ; preds = %50
  %66 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i64 0, i32 8
  %67 = load i8, i8* %66, align 8, !tbaa !23
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i64 0, i32 9, i64 10
  %71 = load i8, i8* %70, align 1, !tbaa !25
  br label %78

72:                                               ; preds = %65
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %62)
  %73 = bitcast %"class.std::ctype"* %62 to i8 (%"class.std::ctype"*, i8)***
  %74 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %73, align 8, !tbaa !18
  %75 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %74, i64 6
  %76 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %75, align 8
  %77 = tail call signext i8 %76(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %62, i8 signext 10)
  br label %78

78:                                               ; preds = %69, %72
  %79 = phi i8 [ %71, %69 ], [ %77, %72 ]
  %80 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %79)
  %81 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %80)
  %82 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 11
  %83 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !59
  %84 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %83)
  %85 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !59
  %86 = bitcast %"class.std::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86)
  %87 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %85, i64 0, i32 0, i32 0, i32 0, i32 1
  %88 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %87, align 8, !tbaa !60
  %89 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %85, i64 0, i32 0, i32 0, i32 0, i32 0
  %90 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %89, align 8, !tbaa !63
  %91 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %88 to i64
  %92 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %90 to i64
  %93 = sub i64 %91, %92
  %94 = lshr exact i64 %93, 3
  %95 = trunc i64 %94 to i32
  %96 = icmp slt i32 %84, %95
  br i1 %96, label %123, label %97

97:                                               ; preds = %78
  %98 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %98) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %5)
          to label %99 unwind label %121

99:                                               ; preds = %97
  %100 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i64 0, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !14
  %102 = getelementptr inbounds i8, i8* %101, i64 -24
  %103 = bitcast i8* %102 to %"struct.std::basic_string<char>::_Rep"*
  %104 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %104) #26
  %105 = icmp eq i8* %102, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %105, label %118, label %106, !prof !17

106:                                              ; preds = %99
  %107 = getelementptr inbounds i8, i8* %101, i64 -8
  %108 = bitcast i8* %107 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %109, label %111

109:                                              ; preds = %106
  %110 = atomicrmw volatile add i32* %108, i32 -1 acq_rel, align 4
  br label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %108, align 8, !tbaa !3
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %108, align 8, !tbaa !3
  br label %114

114:                                              ; preds = %111, %109
  %115 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %103, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %118

118:                                              ; preds = %117, %114, %99
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %104) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #26
  br label %129

119:                                              ; preds = %211, %217, %121
  %120 = phi { i8*, i32 } [ %122, %121 ], [ %218, %217 ], [ %212, %211 ]
  resume { i8*, i32 } %120

121:                                              ; preds = %97
  %122 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #26
  br label %119

123:                                              ; preds = %78
  %124 = sext i32 %84 to i64
  %125 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %90, i64 %124
  %126 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %125, align 8, !tbaa !7
  %127 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %126, i64 0, i32 2
  %128 = bitcast i64* %127 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %128, i8 0, i64 16, i1 false)
  br label %129

129:                                              ; preds = %118, %123
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86)
  %130 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !59
  %131 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %130, i32 %84)
  %132 = load i32, i32* %11, align 8, !tbaa !74
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129, %134
  %135 = phi i32 [ %137, %134 ], [ 0, %129 ]
  %136 = call i32 @_ZN14BinomialOption10runKernelsEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0)
  %137 = add nuw nsw i32 %135, 1
  %138 = load i32, i32* %11, align 8, !tbaa !74
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %134, label %140, !llvm.loop !75

140:                                              ; preds = %134, %129
  %141 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !59
  %142 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %141, i32 %84)
  %143 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !59
  %144 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %143, i32 %84)
  %145 = load i32, i32* %11, align 8, !tbaa !74
  %146 = sitofp i32 %145 to double
  %147 = fdiv contract double %144, %146
  %148 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 1
  store double %147, double* %148, align 8, !tbaa !76
  %149 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 14
  %150 = bitcast %"class.appsdk::HIPCommandArgs"** %149 to %"class.appsdk::SDKCmdArgsParser"**
  %151 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %150, align 8, !tbaa !48
  %152 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %151, i64 0, i32 9
  %153 = load i8, i8* %152, align 4, !tbaa !77, !range !78
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %219

155:                                              ; preds = %140
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8)
          to label %157 unwind label %207

157:                                              ; preds = %155
  %158 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 5
  %159 = load float*, float** %158, align 8, !tbaa !13
  %160 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 2
  %161 = load i32, i32* %160, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %7, float* %159, i32 %161, i32 1)
          to label %162 unwind label %209

162:                                              ; preds = %157
  %163 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %7, i64 0, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8, !tbaa !14
  %165 = getelementptr inbounds i8, i8* %164, i64 -24
  %166 = bitcast i8* %165 to %"struct.std::basic_string<char>::_Rep"*
  %167 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %167) #26
  %168 = icmp eq i8* %165, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %168, label %181, label %169, !prof !17

169:                                              ; preds = %162
  %170 = getelementptr inbounds i8, i8* %164, i64 -8
  %171 = bitcast i8* %170 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %172, label %174

172:                                              ; preds = %169
  %173 = atomicrmw volatile add i32* %171, i32 -1 acq_rel, align 4
  br label %177

174:                                              ; preds = %169
  %175 = load i32, i32* %171, align 8, !tbaa !3
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %171, align 8, !tbaa !3
  br label %177

177:                                              ; preds = %174, %172
  %178 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %179 = icmp slt i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %166, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %181

181:                                              ; preds = %162, %177, %180
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %167) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #26
  %182 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %182) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10)
          to label %183 unwind label %213

183:                                              ; preds = %181
  %184 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 6
  %185 = load float*, float** %184, align 8, !tbaa !26
  %186 = load i32, i32* %160, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %9, float* %185, i32 %186, i32 1)
          to label %187 unwind label %215

187:                                              ; preds = %183
  %188 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i64 0, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8, !tbaa !14
  %190 = getelementptr inbounds i8, i8* %189, i64 -24
  %191 = bitcast i8* %190 to %"struct.std::basic_string<char>::_Rep"*
  %192 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %192) #26
  %193 = icmp eq i8* %190, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %193, label %206, label %194, !prof !17

194:                                              ; preds = %187
  %195 = getelementptr inbounds i8, i8* %189, i64 -8
  %196 = bitcast i8* %195 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %197, label %199

197:                                              ; preds = %194
  %198 = atomicrmw volatile add i32* %196, i32 -1 acq_rel, align 4
  br label %202

199:                                              ; preds = %194
  %200 = load i32, i32* %196, align 8, !tbaa !3
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %196, align 8, !tbaa !3
  br label %202

202:                                              ; preds = %199, %197
  %203 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %191, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %206

206:                                              ; preds = %187, %202, %205
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %192) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %182) #26
  br label %219

207:                                              ; preds = %155
  %208 = landingpad { i8*, i32 }
          cleanup
  br label %211

209:                                              ; preds = %157
  %210 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #26
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi { i8*, i32 } [ %210, %209 ], [ %208, %207 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #26
  br label %119

213:                                              ; preds = %181
  %214 = landingpad { i8*, i32 }
          cleanup
  br label %217

215:                                              ; preds = %183
  %216 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #26
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi { i8*, i32 } [ %216, %215 ], [ %214, %213 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %182) #26
  br label %119

219:                                              ; preds = %206, %140
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* %0, float* %1, i32 %2, i32 %3) local_unnamed_addr #7 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !31
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %7, i64 %10)
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
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
  %27 = load float, float* %26, align 4, !tbaa !27
  %28 = fpext float %27 to double
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !79

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !80

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !80

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN14BinomialOption13verifyResultsEv(%class.BinomialOption* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 14
  %6 = bitcast %"class.appsdk::HIPCommandArgs"** %5 to %"class.appsdk::SDKCmdArgsParser"**
  %7 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %7, i64 0, i32 10
  %9 = load i8, i8* %8, align 1, !tbaa !81, !range !78
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %229, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @_ZN14BinomialOption26binomialOptionCPUReferenceEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %15) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %16 unwind label %69

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, i8* %18, i64 -24
  %20 = bitcast i8* %19 to %"struct.std::basic_string<char>::_Rep"*
  %21 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %21) #26
  %22 = icmp eq i8* %19, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %22, label %35, label %23, !prof !17

23:                                               ; preds = %16
  %24 = getelementptr inbounds i8, i8* %18, i64 -8
  %25 = bitcast i8* %24 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %26, label %28

26:                                               ; preds = %23
  %27 = atomicrmw volatile add i32* %25, i32 -1 acq_rel, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %25, align 8, !tbaa !3
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %25, align 8, !tbaa !3
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %20, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %35

35:                                               ; preds = %16, %31, %34
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %21) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %15) #26
  %36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 33)
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 558)
  %40 = bitcast %"class.std::basic_ostream"* %39 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !18
  %42 = getelementptr i8, i8* %41, i64 -24
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = bitcast %"class.std::basic_ostream"* %39 to i8*
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  %47 = getelementptr inbounds i8, i8* %46, i64 240
  %48 = bitcast i8* %47 to %"class.std::ctype"**
  %49 = load %"class.std::ctype"*, %"class.std::ctype"** %48, align 8, !tbaa !20
  %50 = icmp eq %"class.std::ctype"* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

52:                                               ; preds = %35
  %53 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %49, i64 0, i32 8
  %54 = load i8, i8* %53, align 8, !tbaa !23
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %49, i64 0, i32 9, i64 10
  %58 = load i8, i8* %57, align 1, !tbaa !25
  br label %65

59:                                               ; preds = %52
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %49)
  %60 = bitcast %"class.std::ctype"* %49 to i8 (%"class.std::ctype"*, i8)***
  %61 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %60, align 8, !tbaa !18
  %62 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %61, i64 6
  %63 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %62, align 8
  %64 = call signext i8 %63(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %49, i8 signext 10)
  br label %65

65:                                               ; preds = %56, %59
  %66 = phi i8 [ %58, %56 ], [ %64, %59 ]
  %67 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %39, i8 signext %66)
  %68 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %67)
  br label %229

69:                                               ; preds = %14
  %70 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %15) #26
  resume { i8*, i32 } %70

71:                                               ; preds = %11
  %72 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 6
  %73 = load float*, float** %72, align 8, !tbaa !26
  %74 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 7
  %75 = load float*, float** %74, align 8, !tbaa !43
  %76 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 2
  %77 = load i32, i32* %76, align 8, !tbaa !9
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %101

79:                                               ; preds = %71
  %80 = zext i32 %77 to i64
  %81 = add nsw i64 %80, -1
  %82 = and i64 %81, 1
  %83 = icmp eq i32 %77, 2
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = and i64 %81, -2
  br label %107

86:                                               ; preds = %107, %79
  %87 = phi <2 x float> [ undef, %79 ], [ %129, %107 ]
  %88 = phi i64 [ 1, %79 ], [ %130, %107 ]
  %89 = phi <2 x float> [ zeroinitializer, %79 ], [ %129, %107 ]
  %90 = icmp eq i64 %82, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds float, float* %73, i64 %88
  %93 = load float, float* %92, align 4, !tbaa !27
  %94 = getelementptr inbounds float, float* %75, i64 %88
  %95 = load float, float* %94, align 4, !tbaa !27
  %96 = fsub contract float %93, %95
  %97 = insertelement <2 x float> poison, float %93, i64 0
  %98 = insertelement <2 x float> %97, float %96, i64 1
  %99 = fmul contract <2 x float> %98, %98
  %100 = fadd contract <2 x float> %89, %99
  br label %101

101:                                              ; preds = %91, %86, %71
  %102 = phi <2 x float> [ zeroinitializer, %71 ], [ %87, %86 ], [ %100, %91 ]
  %103 = extractelement <2 x float> %102, i64 0
  %104 = tail call contract float @sqrtf(float %103) #26
  %105 = tail call contract float @llvm.fabs.f32(float %103) #26
  %106 = fcmp contract olt float %105, 0x3E7AD7F2A0000000
  br i1 %106, label %167, label %133

107:                                              ; preds = %107, %84
  %108 = phi i64 [ 1, %84 ], [ %130, %107 ]
  %109 = phi <2 x float> [ zeroinitializer, %84 ], [ %129, %107 ]
  %110 = phi i64 [ 0, %84 ], [ %131, %107 ]
  %111 = getelementptr inbounds float, float* %73, i64 %108
  %112 = load float, float* %111, align 4, !tbaa !27
  %113 = getelementptr inbounds float, float* %75, i64 %108
  %114 = load float, float* %113, align 4, !tbaa !27
  %115 = fsub contract float %112, %114
  %116 = insertelement <2 x float> poison, float %112, i64 0
  %117 = insertelement <2 x float> %116, float %115, i64 1
  %118 = fmul contract <2 x float> %117, %117
  %119 = fadd contract <2 x float> %109, %118
  %120 = add nuw nsw i64 %108, 1
  %121 = getelementptr inbounds float, float* %73, i64 %120
  %122 = load float, float* %121, align 4, !tbaa !27
  %123 = getelementptr inbounds float, float* %75, i64 %120
  %124 = load float, float* %123, align 4, !tbaa !27
  %125 = fsub contract float %122, %124
  %126 = insertelement <2 x float> poison, float %122, i64 0
  %127 = insertelement <2 x float> %126, float %125, i64 1
  %128 = fmul contract <2 x float> %127, %127
  %129 = fadd contract <2 x float> %119, %128
  %130 = add nuw nsw i64 %108, 2
  %131 = add i64 %110, 2
  %132 = icmp eq i64 %131, %85
  br i1 %132, label %86, label %107, !llvm.loop !82

133:                                              ; preds = %101
  %134 = extractelement <2 x float> %102, i64 1
  %135 = tail call contract float @sqrtf(float %134) #26
  %136 = fdiv contract float %135, %104
  %137 = fcmp contract olt float %136, 0x3F50624DE0000000
  br i1 %137, label %138, label %167

138:                                              ; preds = %133
  %139 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i64 8)
  %140 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %141 = getelementptr i8, i8* %140, i64 -24
  %142 = bitcast i8* %141 to i64*
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %143
  %145 = getelementptr inbounds i8, i8* %144, i64 240
  %146 = bitcast i8* %145 to %"class.std::ctype"**
  %147 = load %"class.std::ctype"*, %"class.std::ctype"** %146, align 8, !tbaa !20
  %148 = icmp eq %"class.std::ctype"* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

150:                                              ; preds = %138
  %151 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %147, i64 0, i32 8
  %152 = load i8, i8* %151, align 8, !tbaa !23
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %147, i64 0, i32 9, i64 10
  %156 = load i8, i8* %155, align 1, !tbaa !25
  br label %163

157:                                              ; preds = %150
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %147)
  %158 = bitcast %"class.std::ctype"* %147 to i8 (%"class.std::ctype"*, i8)***
  %159 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %158, align 8, !tbaa !18
  %160 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %159, i64 6
  %161 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %160, align 8
  %162 = tail call signext i8 %161(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %147, i8 signext 10)
  br label %163

163:                                              ; preds = %154, %157
  %164 = phi i8 [ %156, %154 ], [ %162, %157 ]
  %165 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %164)
  %166 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %165)
  br label %229

167:                                              ; preds = %101, %133
  %168 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i64 8)
  %169 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %170 = getelementptr i8, i8* %169, i64 -24
  %171 = bitcast i8* %170 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %172
  %174 = getelementptr inbounds i8, i8* %173, i64 240
  %175 = bitcast i8* %174 to %"class.std::ctype"**
  %176 = load %"class.std::ctype"*, %"class.std::ctype"** %175, align 8, !tbaa !20
  %177 = icmp eq %"class.std::ctype"* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

179:                                              ; preds = %167
  %180 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %176, i64 0, i32 8
  %181 = load i8, i8* %180, align 8, !tbaa !23
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %176, i64 0, i32 9, i64 10
  %185 = load i8, i8* %184, align 1, !tbaa !25
  br label %192

186:                                              ; preds = %179
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %176)
  %187 = bitcast %"class.std::ctype"* %176 to i8 (%"class.std::ctype"*, i8)***
  %188 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %187, align 8, !tbaa !18
  %189 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %188, i64 6
  %190 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %189, align 8
  %191 = tail call signext i8 %190(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %176, i8 signext 10)
  br label %192

192:                                              ; preds = %183, %186
  %193 = phi i8 [ %185, %183 ], [ %191, %186 ]
  %194 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %193)
  %195 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %194)
  %196 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i64 0, i64 0), i64 51)
  %197 = load i32, i32* %76, align 8, !tbaa !9
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %192, %224
  %200 = phi i32 [ %225, %224 ], [ %197, %192 ]
  %201 = phi i64 [ %226, %224 ], [ 0, %192 ]
  %202 = load float*, float** %72, align 8, !tbaa !26
  %203 = getelementptr inbounds float, float* %202, i64 %201
  %204 = load float, float* %203, align 4, !tbaa !27
  %205 = load float*, float** %74, align 8, !tbaa !43
  %206 = getelementptr inbounds float, float* %205, i64 %201
  %207 = load float, float* %206, align 4, !tbaa !27
  %208 = fsub contract float %204, %207
  %209 = tail call contract float @llvm.fabs.f32(float %208) #26
  %210 = fpext float %209 to double
  %211 = fcmp contract ogt double %210, 1.000000e-04
  br i1 %211, label %212, label %224

212:                                              ; preds = %199
  %213 = fpext float %204 to double
  %214 = bitcast float %204 to i32
  %215 = trunc i64 %201 to i32
  %216 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 %215, double %213, i32 %214)
  %217 = load float*, float** %74, align 8, !tbaa !43
  %218 = getelementptr inbounds float, float* %217, i64 %201
  %219 = load float, float* %218, align 4, !tbaa !25
  %220 = fpext float %219 to double
  %221 = bitcast float %219 to i32
  %222 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), double %220, i32 %221)
  %223 = load i32, i32* %76, align 8, !tbaa !9
  br label %224

224:                                              ; preds = %199, %212
  %225 = phi i32 [ %200, %199 ], [ %223, %212 ]
  %226 = add nuw nsw i64 %201, 1
  %227 = sext i32 %225 to i64
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %199, label %229, !llvm.loop !83

229:                                              ; preds = %224, %192, %1, %65, %163
  %230 = phi i32 [ 1, %65 ], [ 0, %163 ], [ 0, %1 ], [ 1, %192 ], [ 1, %224 ]
  ret i32 %230
}

; Function Attrs: uwtable
define dso_local void @_ZN14BinomialOption10printStatsEv(%class.BinomialOption* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %13 = alloca %"class.std::allocator.0", align 1
  %14 = alloca %"class.std::allocator.0", align 1
  %15 = alloca %"class.std::basic_ostringstream", align 8
  %16 = alloca [4 x %"class.std::basic_string"], align 16
  %17 = alloca %"class.std::allocator.0", align 1
  %18 = alloca %"class.std::allocator.0", align 1
  %19 = alloca %"class.std::allocator.0", align 1
  %20 = alloca %"class.std::allocator.0", align 1
  %21 = alloca [4 x %"class.std::basic_string"], align 16
  %22 = alloca %"class.std::basic_string", align 8
  %23 = alloca %"class.std::basic_string", align 8
  %24 = alloca %"class.std::basic_string", align 8
  %25 = alloca %"class.std::basic_string", align 8
  %26 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 14
  %27 = bitcast %"class.appsdk::HIPCommandArgs"** %26 to %"class.appsdk::SDKCmdArgsParser"**
  %28 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %28, i64 0, i32 11
  %30 = load i8, i8* %29, align 2, !tbaa !84, !range !78
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %1000, label %32

32:                                               ; preds = %1
  %33 = bitcast [4 x %"class.std::basic_string"]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #26
  %34 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
  %36 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  %37 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %37) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %18)
          to label %38 unwind label %938

38:                                               ; preds = %32
  %39 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  %40 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %40) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %41 unwind label %940

41:                                               ; preds = %38
  %42 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  %43 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %43) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20)
          to label %44 unwind label %942

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  %45 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 0
  %46 = load double, double* %45, align 8, !tbaa !64
  %47 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 1
  %48 = load double, double* %47, align 8, !tbaa !76
  %49 = fadd contract double %46, %48
  %50 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 11
  %51 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %50, align 8, !tbaa !59
  %52 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %51, i64 0, i32 1
  store double %49, double* %52, align 8, !tbaa !85
  %53 = bitcast [4 x %"class.std::basic_string"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %53) #26
  %54 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  %55 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %55, align 16, !tbaa !49
  %56 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %56, align 8, !tbaa !49
  %57 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %57, align 16, !tbaa !49
  %58 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %58, align 8, !tbaa !49
  %59 = bitcast %"class.std::basic_string"* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #26
  %60 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 2
  %61 = load i32, i32* %60, align 8, !tbaa !9
  %62 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %62) #26, !noalias !88
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %63 unwind label %954

63:                                               ; preds = %44
  %64 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %65 = load i8*, i8** %64, align 8, !tbaa !18, !noalias !88
  %66 = getelementptr i8, i8* %65, i64 -24
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8, !noalias !88
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 24
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 8, !tbaa !91, !noalias !88
  %73 = and i32 %72, -75
  %74 = or i32 %73, 2
  store i32 %74, i32* %71, align 8, !tbaa !97, !noalias !88
  %75 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %76 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %75, i32 %61)
          to label %77 unwind label %107, !noalias !88

77:                                               ; preds = %63
  %78 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %22, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %78)
          to label %79 unwind label %107

79:                                               ; preds = %77
  %80 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %81 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %81, align 8, !tbaa !18, !noalias !88
  %82 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %83 = getelementptr i32 (...)*, i32 (...)** %80, i64 -3
  %84 = bitcast i32 (...)** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %62, i64 %85
  %87 = bitcast i8* %86 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %87, align 8, !tbaa !18, !noalias !88
  %88 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %88, align 8, !tbaa !18, !noalias !88
  %89 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8, !tbaa !14, !noalias !88
  %91 = getelementptr inbounds i8, i8* %90, i64 -24
  %92 = bitcast i8* %91 to %"struct.std::basic_string<char>::_Rep"*
  %93 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %93) #26, !noalias !88
  %94 = icmp eq i8* %91, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %94, label %109, label %95, !prof !17

95:                                               ; preds = %79
  %96 = getelementptr inbounds i8, i8* %90, i64 -8
  %97 = bitcast i8* %96 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %98, label %100

98:                                               ; preds = %95
  %99 = atomicrmw volatile add i32* %97, i32 -1 acq_rel, align 4
  br label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %97, align 8, !tbaa !3
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %97, align 8, !tbaa !3
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %92, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14) #26
  br label %109

107:                                              ; preds = %77, %63
  %108 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %62) #26, !noalias !88
  br label %958

109:                                              ; preds = %106, %103, %79
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %93) #26, !noalias !88
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %88, align 8, !tbaa !18, !noalias !88
  %110 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %110) #26
  %111 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %111) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %62) #26, !noalias !88
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %54, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22)
          to label %112 unwind label %956

112:                                              ; preds = %109
  %113 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %22, i64 0, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8, !tbaa !14
  %115 = getelementptr inbounds i8, i8* %114, i64 -24
  %116 = bitcast i8* %115 to %"struct.std::basic_string<char>::_Rep"*
  %117 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %117) #26
  %118 = icmp eq i8* %115, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %118, label %131, label %119, !prof !17

119:                                              ; preds = %112
  %120 = getelementptr inbounds i8, i8* %114, i64 -8
  %121 = bitcast i8* %120 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %122, label %124

122:                                              ; preds = %119
  %123 = atomicrmw volatile add i32* %121, i32 -1 acq_rel, align 4
  br label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %121, align 8, !tbaa !3
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %121, align 8, !tbaa !3
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %116, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #26
  br label %131

131:                                              ; preds = %112, %127, %130
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #26
  %132 = bitcast %"class.std::basic_string"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %132) #26
  %133 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %50, align 8, !tbaa !59
  %134 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %133, i64 0, i32 1
  %135 = load double, double* %134, align 8, !tbaa !85
  %136 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %136) #26, !noalias !98
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %137 unwind label %960

137:                                              ; preds = %131
  %138 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %139 = load i8*, i8** %138, align 8, !tbaa !18, !noalias !98
  %140 = getelementptr i8, i8* %139, i64 -24
  %141 = bitcast i8* %140 to i64*
  %142 = load i64, i64* %141, align 8, !noalias !98
  %143 = getelementptr inbounds i8, i8* %136, i64 %142
  %144 = getelementptr inbounds i8, i8* %143, i64 24
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %145, align 8, !tbaa !91, !noalias !98
  %147 = and i32 %146, -75
  %148 = or i32 %147, 2
  store i32 %148, i32* %145, align 8, !tbaa !97, !noalias !98
  %149 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %150 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %149, double %135)
          to label %151 unwind label %177, !noalias !98

151:                                              ; preds = %137
  %152 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %23, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %152)
          to label %153 unwind label %177

153:                                              ; preds = %151
  %154 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %154, align 8, !tbaa !18, !noalias !98
  %155 = load i64, i64* %84, align 8
  %156 = getelementptr inbounds i8, i8* %136, i64 %155
  %157 = bitcast i8* %156 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %157, align 8, !tbaa !18, !noalias !98
  %158 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %158, align 8, !tbaa !18, !noalias !98
  %159 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8, !tbaa !14, !noalias !98
  %161 = getelementptr inbounds i8, i8* %160, i64 -24
  %162 = bitcast i8* %161 to %"struct.std::basic_string<char>::_Rep"*
  %163 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %163) #26, !noalias !98
  %164 = icmp eq i8* %161, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %179, label %165, !prof !17

165:                                              ; preds = %153
  %166 = getelementptr inbounds i8, i8* %160, i64 -8
  %167 = bitcast i8* %166 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %168, label %170

168:                                              ; preds = %165
  %169 = atomicrmw volatile add i32* %167, i32 -1 acq_rel, align 4
  br label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %167, align 8, !tbaa !3
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %167, align 8, !tbaa !3
  br label %173

173:                                              ; preds = %170, %168
  %174 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %175 = icmp slt i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %162, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #26
  br label %179

177:                                              ; preds = %151, %137
  %178 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %136) #26, !noalias !98
  br label %964

179:                                              ; preds = %176, %173, %153
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %163) #26, !noalias !98
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %158, align 8, !tbaa !18, !noalias !98
  %180 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %180) #26
  %181 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %181) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %136) #26, !noalias !98
  %182 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %182, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23)
          to label %183 unwind label %962

183:                                              ; preds = %179
  %184 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %23, i64 0, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8, !tbaa !14
  %186 = getelementptr inbounds i8, i8* %185, i64 -24
  %187 = bitcast i8* %186 to %"struct.std::basic_string<char>::_Rep"*
  %188 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %188) #26
  %189 = icmp eq i8* %186, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %189, label %202, label %190, !prof !17

190:                                              ; preds = %183
  %191 = getelementptr inbounds i8, i8* %185, i64 -8
  %192 = bitcast i8* %191 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %193, label %195

193:                                              ; preds = %190
  %194 = atomicrmw volatile add i32* %192, i32 -1 acq_rel, align 4
  br label %198

195:                                              ; preds = %190
  %196 = load i32, i32* %192, align 8, !tbaa !3
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %192, align 8, !tbaa !3
  br label %198

198:                                              ; preds = %195, %193
  %199 = phi i32 [ %194, %193 ], [ %196, %195 ]
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %187, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #26
  br label %202

202:                                              ; preds = %183, %198, %201
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %188) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %132) #26
  %203 = bitcast %"class.std::basic_string"* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %203) #26
  %204 = load double, double* %47, align 8, !tbaa !76
  %205 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %205) #26, !noalias !101
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %206 unwind label %966

206:                                              ; preds = %202
  %207 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %208 = load i8*, i8** %207, align 8, !tbaa !18, !noalias !101
  %209 = getelementptr i8, i8* %208, i64 -24
  %210 = bitcast i8* %209 to i64*
  %211 = load i64, i64* %210, align 8, !noalias !101
  %212 = getelementptr inbounds i8, i8* %205, i64 %211
  %213 = getelementptr inbounds i8, i8* %212, i64 24
  %214 = bitcast i8* %213 to i32*
  %215 = load i32, i32* %214, align 8, !tbaa !91, !noalias !101
  %216 = and i32 %215, -75
  %217 = or i32 %216, 2
  store i32 %217, i32* %214, align 8, !tbaa !97, !noalias !101
  %218 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %219 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %218, double %204)
          to label %220 unwind label %246, !noalias !101

220:                                              ; preds = %206
  %221 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %24, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %221)
          to label %222 unwind label %246

222:                                              ; preds = %220
  %223 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %223, align 8, !tbaa !18, !noalias !101
  %224 = load i64, i64* %84, align 8
  %225 = getelementptr inbounds i8, i8* %205, i64 %224
  %226 = bitcast i8* %225 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %226, align 8, !tbaa !18, !noalias !101
  %227 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %227, align 8, !tbaa !18, !noalias !101
  %228 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8, !tbaa !14, !noalias !101
  %230 = getelementptr inbounds i8, i8* %229, i64 -24
  %231 = bitcast i8* %230 to %"struct.std::basic_string<char>::_Rep"*
  %232 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %232) #26, !noalias !101
  %233 = icmp eq i8* %230, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %233, label %248, label %234, !prof !17

234:                                              ; preds = %222
  %235 = getelementptr inbounds i8, i8* %229, i64 -8
  %236 = bitcast i8* %235 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %237, label %239

237:                                              ; preds = %234
  %238 = atomicrmw volatile add i32* %236, i32 -1 acq_rel, align 4
  br label %242

239:                                              ; preds = %234
  %240 = load i32, i32* %236, align 8, !tbaa !3
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %236, align 8, !tbaa !3
  br label %242

242:                                              ; preds = %239, %237
  %243 = phi i32 [ %238, %237 ], [ %240, %239 ]
  %244 = icmp slt i32 %243, 1
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %231, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #26
  br label %248

246:                                              ; preds = %220, %206
  %247 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %205) #26, !noalias !101
  br label %970

248:                                              ; preds = %245, %242, %222
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %232) #26, !noalias !101
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %227, align 8, !tbaa !18, !noalias !101
  %249 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %249) #26
  %250 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %250) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %205) #26, !noalias !101
  %251 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %251, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24)
          to label %252 unwind label %968

252:                                              ; preds = %248
  %253 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %24, i64 0, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8, !tbaa !14
  %255 = getelementptr inbounds i8, i8* %254, i64 -24
  %256 = bitcast i8* %255 to %"struct.std::basic_string<char>::_Rep"*
  %257 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %257) #26
  %258 = icmp eq i8* %255, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %258, label %271, label %259, !prof !17

259:                                              ; preds = %252
  %260 = getelementptr inbounds i8, i8* %254, i64 -8
  %261 = bitcast i8* %260 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %262, label %264

262:                                              ; preds = %259
  %263 = atomicrmw volatile add i32* %261, i32 -1 acq_rel, align 4
  br label %267

264:                                              ; preds = %259
  %265 = load i32, i32* %261, align 8, !tbaa !3
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %261, align 8, !tbaa !3
  br label %267

267:                                              ; preds = %264, %262
  %268 = phi i32 [ %263, %262 ], [ %265, %264 ]
  %269 = icmp slt i32 %268, 1
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %256, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %271

271:                                              ; preds = %252, %267, %270
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %257) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %203) #26
  %272 = bitcast %"class.std::basic_string"* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %272) #26
  %273 = load i32, i32* %60, align 8, !tbaa !9
  %274 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %50, align 8, !tbaa !59
  %275 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %274, i64 0, i32 1
  %276 = load double, double* %275, align 8, !tbaa !85
  %277 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %277) #26, !noalias !104
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %278 unwind label %972

278:                                              ; preds = %271
  %279 = sitofp i32 %273 to double
  %280 = fdiv contract double %279, %276
  %281 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %282 = load i8*, i8** %281, align 8, !tbaa !18, !noalias !104
  %283 = getelementptr i8, i8* %282, i64 -24
  %284 = bitcast i8* %283 to i64*
  %285 = load i64, i64* %284, align 8, !noalias !104
  %286 = getelementptr inbounds i8, i8* %277, i64 %285
  %287 = getelementptr inbounds i8, i8* %286, i64 24
  %288 = bitcast i8* %287 to i32*
  %289 = load i32, i32* %288, align 8, !tbaa !91, !noalias !104
  %290 = and i32 %289, -75
  %291 = or i32 %290, 2
  store i32 %291, i32* %288, align 8, !tbaa !97, !noalias !104
  %292 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %293 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %292, double %280)
          to label %294 unwind label %320, !noalias !104

294:                                              ; preds = %278
  %295 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %25, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %295)
          to label %296 unwind label %320

296:                                              ; preds = %294
  %297 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %297, align 8, !tbaa !18, !noalias !104
  %298 = load i64, i64* %84, align 8
  %299 = getelementptr inbounds i8, i8* %277, i64 %298
  %300 = bitcast i8* %299 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %300, align 8, !tbaa !18, !noalias !104
  %301 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %301, align 8, !tbaa !18, !noalias !104
  %302 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8, !tbaa !14, !noalias !104
  %304 = getelementptr inbounds i8, i8* %303, i64 -24
  %305 = bitcast i8* %304 to %"struct.std::basic_string<char>::_Rep"*
  %306 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %306) #26, !noalias !104
  %307 = icmp eq i8* %304, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %307, label %322, label %308, !prof !17

308:                                              ; preds = %296
  %309 = getelementptr inbounds i8, i8* %303, i64 -8
  %310 = bitcast i8* %309 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %311, label %313

311:                                              ; preds = %308
  %312 = atomicrmw volatile add i32* %310, i32 -1 acq_rel, align 4
  br label %316

313:                                              ; preds = %308
  %314 = load i32, i32* %310, align 8, !tbaa !3
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %310, align 8, !tbaa !3
  br label %316

316:                                              ; preds = %313, %311
  %317 = phi i32 [ %312, %311 ], [ %314, %313 ]
  %318 = icmp slt i32 %317, 1
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %305, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %322

320:                                              ; preds = %294, %278
  %321 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %277) #26, !noalias !104
  br label %976

322:                                              ; preds = %319, %316, %296
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %306) #26, !noalias !104
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %301, align 8, !tbaa !18, !noalias !104
  %323 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %323) #26
  %324 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %324) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %277) #26, !noalias !104
  %325 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %325, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25)
          to label %326 unwind label %974

326:                                              ; preds = %322
  %327 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %25, i64 0, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8, !tbaa !14
  %329 = getelementptr inbounds i8, i8* %328, i64 -24
  %330 = bitcast i8* %329 to %"struct.std::basic_string<char>::_Rep"*
  %331 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %331) #26
  %332 = icmp eq i8* %329, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %332, label %345, label %333, !prof !17

333:                                              ; preds = %326
  %334 = getelementptr inbounds i8, i8* %328, i64 -8
  %335 = bitcast i8* %334 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %336, label %338

336:                                              ; preds = %333
  %337 = atomicrmw volatile add i32* %335, i32 -1 acq_rel, align 4
  br label %341

338:                                              ; preds = %333
  %339 = load i32, i32* %335, align 8, !tbaa !3
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %335, align 8, !tbaa !3
  br label %341

341:                                              ; preds = %338, %336
  %342 = phi i32 [ %337, %336 ], [ %339, %338 ]
  %343 = icmp slt i32 %342, 1
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %330, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %345

345:                                              ; preds = %326, %341, %344
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %331) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %272) #26
  %346 = invoke noalias nonnull dereferenceable(16) i8* @_Znam(i64 16) #28
          to label %347 unwind label %986

347:                                              ; preds = %345
  %348 = bitcast i8* %346 to i32*
  %349 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %350 = getelementptr i8, i8* %349, i64 -24
  %351 = bitcast i8* %350 to i64*
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %352
  %354 = getelementptr inbounds i8, i8* %353, i64 240
  %355 = bitcast i8* %354 to %"class.std::ctype"**
  %356 = load %"class.std::ctype"*, %"class.std::ctype"** %355, align 8, !tbaa !20
  %357 = icmp eq %"class.std::ctype"* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %347
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %359 unwind label %986

359:                                              ; preds = %358
  unreachable

360:                                              ; preds = %347
  %361 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %356, i64 0, i32 8
  %362 = load i8, i8* %361, align 8, !tbaa !23
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %356, i64 0, i32 9, i64 10
  %366 = load i8, i8* %365, align 1, !tbaa !25
  br label %374

367:                                              ; preds = %360
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %356)
          to label %368 unwind label %986

368:                                              ; preds = %367
  %369 = bitcast %"class.std::ctype"* %356 to i8 (%"class.std::ctype"*, i8)***
  %370 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %369, align 8, !tbaa !18
  %371 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %370, i64 6
  %372 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %371, align 8
  %373 = invoke signext i8 %372(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %356, i8 signext 10)
          to label %374 unwind label %986

374:                                              ; preds = %368, %364
  %375 = phi i8 [ %366, %364 ], [ %373, %368 ]
  %376 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %375)
          to label %377 unwind label %986

377:                                              ; preds = %374
  %378 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %376)
          to label %379 unwind label %986

379:                                              ; preds = %377
  %380 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %378, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %381 unwind label %986

381:                                              ; preds = %379
  %382 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %383 = load i8*, i8** %382, align 16, !tbaa !14
  %384 = getelementptr inbounds i8, i8* %383, i64 -24
  %385 = bitcast i8* %384 to i64*
  %386 = load i64, i64* %385, align 8, !tbaa !31
  %387 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %388 = load i8*, i8** %387, align 16, !tbaa !14
  %389 = getelementptr inbounds i8, i8* %388, i64 -24
  %390 = bitcast i8* %389 to i64*
  %391 = load i64, i64* %390, align 8, !tbaa !31
  %392 = icmp ugt i64 %386, %391
  %393 = select i1 %392, i64 %386, i64 %391
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %348, align 4, !tbaa !3
  %395 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %396 unwind label %986

396:                                              ; preds = %381
  %397 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %398 = getelementptr i8, i8* %397, i64 -24
  %399 = bitcast i8* %398 to i64*
  %400 = load i64, i64* %399, align 8
  %401 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %400
  %402 = shl i64 %393, 32
  %403 = add i64 %402, 4294967296
  %404 = ashr exact i64 %403, 32
  %405 = getelementptr inbounds i8, i8* %401, i64 16
  %406 = bitcast i8* %405 to i64*
  store i64 %404, i64* %406, align 8, !tbaa !107
  %407 = load i64, i64* %399, align 8
  %408 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %407
  %409 = getelementptr inbounds i8, i8* %408, i64 24
  %410 = bitcast i8* %409 to i32*
  %411 = load i32, i32* %410, align 8, !tbaa !91
  %412 = and i32 %411, -177
  %413 = or i32 %412, 32
  store i32 %413, i32* %410, align 8, !tbaa !97
  %414 = load i8*, i8** %382, align 16, !tbaa !14
  %415 = getelementptr inbounds i8, i8* %414, i64 -24
  %416 = bitcast i8* %415 to i64*
  %417 = load i64, i64* %416, align 8, !tbaa !31
  %418 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %414, i64 %417)
          to label %419 unwind label %986

419:                                              ; preds = %396
  %420 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %418, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %421 unwind label %986

421:                                              ; preds = %419
  %422 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %423 = load i8*, i8** %422, align 8, !tbaa !14
  %424 = getelementptr inbounds i8, i8* %423, i64 -24
  %425 = bitcast i8* %424 to i64*
  %426 = load i64, i64* %425, align 8, !tbaa !31
  %427 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %428 = load i8*, i8** %427, align 8, !tbaa !14
  %429 = getelementptr inbounds i8, i8* %428, i64 -24
  %430 = bitcast i8* %429 to i64*
  %431 = load i64, i64* %430, align 8, !tbaa !31
  %432 = icmp ugt i64 %426, %431
  %433 = select i1 %432, i64 %426, i64 %431
  %434 = trunc i64 %433 to i32
  %435 = getelementptr inbounds i32, i32* %348, i64 1
  store i32 %434, i32* %435, align 4, !tbaa !3
  %436 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %437 unwind label %986

437:                                              ; preds = %421
  %438 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %439 = getelementptr i8, i8* %438, i64 -24
  %440 = bitcast i8* %439 to i64*
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %441
  %443 = shl i64 %433, 32
  %444 = add i64 %443, 4294967296
  %445 = ashr exact i64 %444, 32
  %446 = getelementptr inbounds i8, i8* %442, i64 16
  %447 = bitcast i8* %446 to i64*
  store i64 %445, i64* %447, align 8, !tbaa !107
  %448 = load i64, i64* %440, align 8
  %449 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %448
  %450 = getelementptr inbounds i8, i8* %449, i64 24
  %451 = bitcast i8* %450 to i32*
  %452 = load i32, i32* %451, align 8, !tbaa !91
  %453 = and i32 %452, -177
  %454 = or i32 %453, 32
  store i32 %454, i32* %451, align 8, !tbaa !97
  %455 = load i8*, i8** %422, align 8, !tbaa !14
  %456 = getelementptr inbounds i8, i8* %455, i64 -24
  %457 = bitcast i8* %456 to i64*
  %458 = load i64, i64* %457, align 8, !tbaa !31
  %459 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %455, i64 %458)
          to label %460 unwind label %986

460:                                              ; preds = %437
  %461 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %459, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %462 unwind label %986

462:                                              ; preds = %460
  %463 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %464 = load i8*, i8** %463, align 16, !tbaa !14
  %465 = getelementptr inbounds i8, i8* %464, i64 -24
  %466 = bitcast i8* %465 to i64*
  %467 = load i64, i64* %466, align 8, !tbaa !31
  %468 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %469 = load i8*, i8** %468, align 16, !tbaa !14
  %470 = getelementptr inbounds i8, i8* %469, i64 -24
  %471 = bitcast i8* %470 to i64*
  %472 = load i64, i64* %471, align 8, !tbaa !31
  %473 = icmp ugt i64 %467, %472
  %474 = select i1 %473, i64 %467, i64 %472
  %475 = trunc i64 %474 to i32
  %476 = getelementptr inbounds i32, i32* %348, i64 2
  store i32 %475, i32* %476, align 4, !tbaa !3
  %477 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %478 unwind label %986

478:                                              ; preds = %462
  %479 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %480 = getelementptr i8, i8* %479, i64 -24
  %481 = bitcast i8* %480 to i64*
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %482
  %484 = shl i64 %474, 32
  %485 = add i64 %484, 4294967296
  %486 = ashr exact i64 %485, 32
  %487 = getelementptr inbounds i8, i8* %483, i64 16
  %488 = bitcast i8* %487 to i64*
  store i64 %486, i64* %488, align 8, !tbaa !107
  %489 = load i64, i64* %481, align 8
  %490 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %489
  %491 = getelementptr inbounds i8, i8* %490, i64 24
  %492 = bitcast i8* %491 to i32*
  %493 = load i32, i32* %492, align 8, !tbaa !91
  %494 = and i32 %493, -177
  %495 = or i32 %494, 32
  store i32 %495, i32* %492, align 8, !tbaa !97
  %496 = load i8*, i8** %463, align 16, !tbaa !14
  %497 = getelementptr inbounds i8, i8* %496, i64 -24
  %498 = bitcast i8* %497 to i64*
  %499 = load i64, i64* %498, align 8, !tbaa !31
  %500 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %496, i64 %499)
          to label %501 unwind label %986

501:                                              ; preds = %478
  %502 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %500, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %503 unwind label %986

503:                                              ; preds = %501
  %504 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %505 = load i8*, i8** %504, align 8, !tbaa !14
  %506 = getelementptr inbounds i8, i8* %505, i64 -24
  %507 = bitcast i8* %506 to i64*
  %508 = load i64, i64* %507, align 8, !tbaa !31
  %509 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %510 = load i8*, i8** %509, align 8, !tbaa !14
  %511 = getelementptr inbounds i8, i8* %510, i64 -24
  %512 = bitcast i8* %511 to i64*
  %513 = load i64, i64* %512, align 8, !tbaa !31
  %514 = icmp ugt i64 %508, %513
  %515 = select i1 %514, i64 %508, i64 %513
  %516 = trunc i64 %515 to i32
  %517 = getelementptr inbounds i32, i32* %348, i64 3
  store i32 %516, i32* %517, align 4, !tbaa !3
  %518 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %519 unwind label %986

519:                                              ; preds = %503
  %520 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %521 = getelementptr i8, i8* %520, i64 -24
  %522 = bitcast i8* %521 to i64*
  %523 = load i64, i64* %522, align 8
  %524 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %523
  %525 = shl i64 %515, 32
  %526 = add i64 %525, 4294967296
  %527 = ashr exact i64 %526, 32
  %528 = getelementptr inbounds i8, i8* %524, i64 16
  %529 = bitcast i8* %528 to i64*
  store i64 %527, i64* %529, align 8, !tbaa !107
  %530 = load i64, i64* %522, align 8
  %531 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %530
  %532 = getelementptr inbounds i8, i8* %531, i64 24
  %533 = bitcast i8* %532 to i32*
  %534 = load i32, i32* %533, align 8, !tbaa !91
  %535 = and i32 %534, -177
  %536 = or i32 %535, 32
  store i32 %536, i32* %533, align 8, !tbaa !97
  %537 = load i8*, i8** %504, align 8, !tbaa !14
  %538 = getelementptr inbounds i8, i8* %537, i64 -24
  %539 = bitcast i8* %538 to i64*
  %540 = load i64, i64* %539, align 8, !tbaa !31
  %541 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %537, i64 %540)
          to label %542 unwind label %986

542:                                              ; preds = %519
  %543 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %541, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %544 unwind label %986

544:                                              ; preds = %542
  %545 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %546 = getelementptr i8, i8* %545, i64 -24
  %547 = bitcast i8* %546 to i64*
  %548 = load i64, i64* %547, align 8
  %549 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %548
  %550 = getelementptr inbounds i8, i8* %549, i64 240
  %551 = bitcast i8* %550 to %"class.std::ctype"**
  %552 = load %"class.std::ctype"*, %"class.std::ctype"** %551, align 8, !tbaa !20
  %553 = icmp eq %"class.std::ctype"* %552, null
  br i1 %553, label %554, label %556

554:                                              ; preds = %544
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %555 unwind label %986

555:                                              ; preds = %554
  unreachable

556:                                              ; preds = %544
  %557 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %552, i64 0, i32 8
  %558 = load i8, i8* %557, align 8, !tbaa !23
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %563, label %560

560:                                              ; preds = %556
  %561 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %552, i64 0, i32 9, i64 10
  %562 = load i8, i8* %561, align 1, !tbaa !25
  br label %570

563:                                              ; preds = %556
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %552)
          to label %564 unwind label %986

564:                                              ; preds = %563
  %565 = bitcast %"class.std::ctype"* %552 to i8 (%"class.std::ctype"*, i8)***
  %566 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %565, align 8, !tbaa !18
  %567 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %566, i64 6
  %568 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %567, align 8
  %569 = invoke signext i8 %568(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %552, i8 signext 10)
          to label %570 unwind label %986

570:                                              ; preds = %564, %560
  %571 = phi i8 [ %562, %560 ], [ %569, %564 ]
  %572 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %571)
          to label %573 unwind label %986

573:                                              ; preds = %570
  %574 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %572)
          to label %575 unwind label %986

575:                                              ; preds = %573
  %576 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %574, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %577 unwind label %986

577:                                              ; preds = %575
  %578 = load i32, i32* %348, align 4, !tbaa !3
  %579 = icmp sgt i32 %578, -2
  br i1 %579, label %580, label %715

580:                                              ; preds = %577
  %581 = add i32 %578, 1
  br label %764

582:                                              ; preds = %754
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %583 unwind label %986

583:                                              ; preds = %582
  unreachable

584:                                              ; preds = %754
  %585 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %762, i64 0, i32 8
  %586 = load i8, i8* %585, align 8, !tbaa !23
  %587 = icmp eq i8 %586, 0
  br i1 %587, label %591, label %588

588:                                              ; preds = %584
  %589 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %762, i64 0, i32 9, i64 10
  %590 = load i8, i8* %589, align 1, !tbaa !25
  br label %598

591:                                              ; preds = %584
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %762)
          to label %592 unwind label %986

592:                                              ; preds = %591
  %593 = bitcast %"class.std::ctype"* %762 to i8 (%"class.std::ctype"*, i8)***
  %594 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %593, align 8, !tbaa !18
  %595 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %594, i64 6
  %596 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %595, align 8
  %597 = invoke signext i8 %596(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %762, i8 signext 10)
          to label %598 unwind label %986

598:                                              ; preds = %592, %588
  %599 = phi i8 [ %590, %588 ], [ %597, %592 ]
  %600 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %599)
          to label %601 unwind label %986

601:                                              ; preds = %598
  %602 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %600)
          to label %603 unwind label %986

603:                                              ; preds = %601
  %604 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %602, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %605 unwind label %986

605:                                              ; preds = %603
  %606 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %607 unwind label %986

607:                                              ; preds = %605
  %608 = add nsw i32 %578, 1
  %609 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %610 = getelementptr i8, i8* %609, i64 -24
  %611 = bitcast i8* %610 to i64*
  %612 = load i64, i64* %611, align 8
  %613 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %612
  %614 = sext i32 %608 to i64
  %615 = getelementptr inbounds i8, i8* %613, i64 16
  %616 = bitcast i8* %615 to i64*
  store i64 %614, i64* %616, align 8, !tbaa !107
  %617 = load i64, i64* %611, align 8
  %618 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %617
  %619 = getelementptr inbounds i8, i8* %618, i64 24
  %620 = bitcast i8* %619 to i32*
  %621 = load i32, i32* %620, align 8, !tbaa !91
  %622 = and i32 %621, -177
  %623 = or i32 %622, 32
  store i32 %623, i32* %620, align 8, !tbaa !97
  %624 = load i8*, i8** %387, align 16, !tbaa !14
  %625 = getelementptr inbounds i8, i8* %624, i64 -24
  %626 = bitcast i8* %625 to i64*
  %627 = load i64, i64* %626, align 8, !tbaa !31
  %628 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %624, i64 %627)
          to label %629 unwind label %986

629:                                              ; preds = %607
  %630 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %628, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %631 unwind label %986

631:                                              ; preds = %629
  %632 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %633 unwind label %986

633:                                              ; preds = %631
  %634 = add nsw i32 %718, 1
  %635 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %636 = getelementptr i8, i8* %635, i64 -24
  %637 = bitcast i8* %636 to i64*
  %638 = load i64, i64* %637, align 8
  %639 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %638
  %640 = sext i32 %634 to i64
  %641 = getelementptr inbounds i8, i8* %639, i64 16
  %642 = bitcast i8* %641 to i64*
  store i64 %640, i64* %642, align 8, !tbaa !107
  %643 = load i64, i64* %637, align 8
  %644 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %643
  %645 = getelementptr inbounds i8, i8* %644, i64 24
  %646 = bitcast i8* %645 to i32*
  %647 = load i32, i32* %646, align 8, !tbaa !91
  %648 = and i32 %647, -177
  %649 = or i32 %648, 32
  store i32 %649, i32* %646, align 8, !tbaa !97
  %650 = load i8*, i8** %427, align 8, !tbaa !14
  %651 = getelementptr inbounds i8, i8* %650, i64 -24
  %652 = bitcast i8* %651 to i64*
  %653 = load i64, i64* %652, align 8, !tbaa !31
  %654 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %650, i64 %653)
          to label %655 unwind label %986

655:                                              ; preds = %633
  %656 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %654, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %657 unwind label %986

657:                                              ; preds = %655
  %658 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %659 unwind label %986

659:                                              ; preds = %657
  %660 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %661 = getelementptr i8, i8* %660, i64 -24
  %662 = bitcast i8* %661 to i64*
  %663 = load i64, i64* %662, align 8
  %664 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %663
  %665 = getelementptr inbounds i8, i8* %664, i64 16
  %666 = bitcast i8* %665 to i64*
  store i64 %486, i64* %666, align 8, !tbaa !107
  %667 = load i64, i64* %662, align 8
  %668 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %667
  %669 = getelementptr inbounds i8, i8* %668, i64 24
  %670 = bitcast i8* %669 to i32*
  %671 = load i32, i32* %670, align 8, !tbaa !91
  %672 = and i32 %671, -177
  %673 = or i32 %672, 32
  store i32 %673, i32* %670, align 8, !tbaa !97
  %674 = load i8*, i8** %468, align 16, !tbaa !14
  %675 = getelementptr inbounds i8, i8* %674, i64 -24
  %676 = bitcast i8* %675 to i64*
  %677 = load i64, i64* %676, align 8, !tbaa !31
  %678 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %674, i64 %677)
          to label %679 unwind label %986

679:                                              ; preds = %659
  %680 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %678, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %681 unwind label %986

681:                                              ; preds = %679
  %682 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %683 unwind label %986

683:                                              ; preds = %681
  %684 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %685 = getelementptr i8, i8* %684, i64 -24
  %686 = bitcast i8* %685 to i64*
  %687 = load i64, i64* %686, align 8
  %688 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %687
  %689 = getelementptr inbounds i8, i8* %688, i64 16
  %690 = bitcast i8* %689 to i64*
  store i64 %527, i64* %690, align 8, !tbaa !107
  %691 = load i64, i64* %686, align 8
  %692 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %691
  %693 = getelementptr inbounds i8, i8* %692, i64 24
  %694 = bitcast i8* %693 to i32*
  %695 = load i32, i32* %694, align 8, !tbaa !91
  %696 = and i32 %695, -177
  %697 = or i32 %696, 32
  store i32 %697, i32* %694, align 8, !tbaa !97
  %698 = load i8*, i8** %509, align 8, !tbaa !14
  %699 = getelementptr inbounds i8, i8* %698, i64 -24
  %700 = bitcast i8* %699 to i64*
  %701 = load i64, i64* %700, align 8, !tbaa !31
  %702 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %698, i64 %701)
          to label %703 unwind label %986

703:                                              ; preds = %683
  %704 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %702, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %705 unwind label %986

705:                                              ; preds = %703
  %706 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %707 = getelementptr i8, i8* %706, i64 -24
  %708 = bitcast i8* %707 to i64*
  %709 = load i64, i64* %708, align 8
  %710 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %709
  %711 = getelementptr inbounds i8, i8* %710, i64 240
  %712 = bitcast i8* %711 to %"class.std::ctype"**
  %713 = load %"class.std::ctype"*, %"class.std::ctype"** %712, align 8, !tbaa !20
  %714 = icmp eq %"class.std::ctype"* %713, null
  br i1 %714, label %770, label %772

715:                                              ; preds = %767, %577
  %716 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %717 unwind label %986

717:                                              ; preds = %715
  %718 = load i32, i32* %435, align 4, !tbaa !3
  %719 = icmp sgt i32 %718, -2
  br i1 %719, label %720, label %728

720:                                              ; preds = %717
  %721 = add i32 %718, 1
  br label %722

722:                                              ; preds = %720, %725
  %723 = phi i32 [ %726, %725 ], [ 0, %720 ]
  %724 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %725 unwind label %982

725:                                              ; preds = %722
  %726 = add nuw i32 %723, 1
  %727 = icmp eq i32 %723, %721
  br i1 %727, label %728, label %722, !llvm.loop !108

728:                                              ; preds = %725, %717
  %729 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %730 unwind label %986

730:                                              ; preds = %728
  %731 = icmp sgt i32 %475, -2
  br i1 %731, label %732, label %740

732:                                              ; preds = %730
  %733 = add i32 %475, 1
  br label %734

734:                                              ; preds = %732, %737
  %735 = phi i32 [ %738, %737 ], [ 0, %732 ]
  %736 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %737 unwind label %980

737:                                              ; preds = %734
  %738 = add nuw i32 %735, 1
  %739 = icmp eq i32 %735, %733
  br i1 %739, label %740, label %734, !llvm.loop !108

740:                                              ; preds = %737, %730
  %741 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %742 unwind label %986

742:                                              ; preds = %740
  %743 = icmp sgt i32 %516, -2
  br i1 %743, label %744, label %752

744:                                              ; preds = %742
  %745 = add i32 %516, 1
  br label %746

746:                                              ; preds = %744, %749
  %747 = phi i32 [ %750, %749 ], [ 0, %744 ]
  %748 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %749 unwind label %978

749:                                              ; preds = %746
  %750 = add nuw i32 %747, 1
  %751 = icmp eq i32 %747, %745
  br i1 %751, label %752, label %746, !llvm.loop !108

752:                                              ; preds = %749, %742
  %753 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %754 unwind label %986

754:                                              ; preds = %752
  %755 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %756 = getelementptr i8, i8* %755, i64 -24
  %757 = bitcast i8* %756 to i64*
  %758 = load i64, i64* %757, align 8
  %759 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %758
  %760 = getelementptr inbounds i8, i8* %759, i64 240
  %761 = bitcast i8* %760 to %"class.std::ctype"**
  %762 = load %"class.std::ctype"*, %"class.std::ctype"** %761, align 8, !tbaa !20
  %763 = icmp eq %"class.std::ctype"* %762, null
  br i1 %763, label %582, label %584

764:                                              ; preds = %580, %767
  %765 = phi i32 [ %768, %767 ], [ 0, %580 ]
  %766 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %767 unwind label %984

767:                                              ; preds = %764
  %768 = add nuw i32 %765, 1
  %769 = icmp eq i32 %765, %581
  br i1 %769, label %715, label %764, !llvm.loop !108

770:                                              ; preds = %705
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %771 unwind label %986

771:                                              ; preds = %770
  unreachable

772:                                              ; preds = %705
  %773 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %713, i64 0, i32 8
  %774 = load i8, i8* %773, align 8, !tbaa !23
  %775 = icmp eq i8 %774, 0
  br i1 %775, label %779, label %776

776:                                              ; preds = %772
  %777 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %713, i64 0, i32 9, i64 10
  %778 = load i8, i8* %777, align 1, !tbaa !25
  br label %786

779:                                              ; preds = %772
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %713)
          to label %780 unwind label %986

780:                                              ; preds = %779
  %781 = bitcast %"class.std::ctype"* %713 to i8 (%"class.std::ctype"*, i8)***
  %782 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %781, align 8, !tbaa !18
  %783 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %782, i64 6
  %784 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %783, align 8
  %785 = invoke signext i8 %784(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %713, i8 signext 10)
          to label %786 unwind label %986

786:                                              ; preds = %780, %776
  %787 = phi i8 [ %778, %776 ], [ %785, %780 ]
  %788 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %787)
          to label %789 unwind label %986

789:                                              ; preds = %786
  %790 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %788)
          to label %791 unwind label %986

791:                                              ; preds = %789
  call void @_ZdaPv(i8* nonnull %346) #29
  %792 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %793 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %794 = load i8*, i8** %793, align 8, !tbaa !14
  %795 = getelementptr inbounds i8, i8* %794, i64 -24
  %796 = bitcast i8* %795 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %792) #26
  %797 = icmp eq i8* %795, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %797, label %810, label %798, !prof !17

798:                                              ; preds = %791
  %799 = getelementptr inbounds i8, i8* %794, i64 -8
  %800 = bitcast i8* %799 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %801, label %803

801:                                              ; preds = %798
  %802 = atomicrmw volatile add i32* %800, i32 -1 acq_rel, align 4
  br label %806

803:                                              ; preds = %798
  %804 = load i32, i32* %800, align 8, !tbaa !3
  %805 = add nsw i32 %804, -1
  store i32 %805, i32* %800, align 8, !tbaa !3
  br label %806

806:                                              ; preds = %803, %801
  %807 = phi i32 [ %802, %801 ], [ %804, %803 ]
  %808 = icmp slt i32 %807, 1
  br i1 %808, label %809, label %810

809:                                              ; preds = %806
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %796, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %810

810:                                              ; preds = %791, %806, %809
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %792) #26
  %811 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %812 = load i8*, i8** %811, align 16, !tbaa !14
  %813 = getelementptr inbounds i8, i8* %812, i64 -24
  %814 = bitcast i8* %813 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %792) #26
  %815 = icmp eq i8* %813, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %815, label %828, label %816, !prof !17

816:                                              ; preds = %810
  %817 = getelementptr inbounds i8, i8* %812, i64 -8
  %818 = bitcast i8* %817 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %822, label %819

819:                                              ; preds = %816
  %820 = load i32, i32* %818, align 8, !tbaa !3
  %821 = add nsw i32 %820, -1
  store i32 %821, i32* %818, align 8, !tbaa !3
  br label %824

822:                                              ; preds = %816
  %823 = atomicrmw volatile add i32* %818, i32 -1 acq_rel, align 4
  br label %824

824:                                              ; preds = %822, %819
  %825 = phi i32 [ %823, %822 ], [ %820, %819 ]
  %826 = icmp slt i32 %825, 1
  br i1 %826, label %827, label %828

827:                                              ; preds = %824
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %814, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %828

828:                                              ; preds = %827, %824, %810
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %792) #26
  %829 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %830 = load i8*, i8** %829, align 8, !tbaa !14
  %831 = getelementptr inbounds i8, i8* %830, i64 -24
  %832 = bitcast i8* %831 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %792) #26
  %833 = icmp eq i8* %831, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %833, label %846, label %834, !prof !17

834:                                              ; preds = %828
  %835 = getelementptr inbounds i8, i8* %830, i64 -8
  %836 = bitcast i8* %835 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %840, label %837

837:                                              ; preds = %834
  %838 = load i32, i32* %836, align 8, !tbaa !3
  %839 = add nsw i32 %838, -1
  store i32 %839, i32* %836, align 8, !tbaa !3
  br label %842

840:                                              ; preds = %834
  %841 = atomicrmw volatile add i32* %836, i32 -1 acq_rel, align 4
  br label %842

842:                                              ; preds = %840, %837
  %843 = phi i32 [ %841, %840 ], [ %838, %837 ]
  %844 = icmp slt i32 %843, 1
  br i1 %844, label %845, label %846

845:                                              ; preds = %842
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %832, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %846

846:                                              ; preds = %845, %842, %828
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %792) #26
  %847 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %848 = load i8*, i8** %847, align 16, !tbaa !14
  %849 = getelementptr inbounds i8, i8* %848, i64 -24
  %850 = bitcast i8* %849 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %792) #26
  %851 = icmp eq i8* %849, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %851, label %864, label %852, !prof !17

852:                                              ; preds = %846
  %853 = getelementptr inbounds i8, i8* %848, i64 -8
  %854 = bitcast i8* %853 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %858, label %855

855:                                              ; preds = %852
  %856 = load i32, i32* %854, align 8, !tbaa !3
  %857 = add nsw i32 %856, -1
  store i32 %857, i32* %854, align 8, !tbaa !3
  br label %860

858:                                              ; preds = %852
  %859 = atomicrmw volatile add i32* %854, i32 -1 acq_rel, align 4
  br label %860

860:                                              ; preds = %858, %855
  %861 = phi i32 [ %859, %858 ], [ %856, %855 ]
  %862 = icmp slt i32 %861, 1
  br i1 %862, label %863, label %864

863:                                              ; preds = %860
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %850, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %864

864:                                              ; preds = %863, %860, %846
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %792) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %53) #26
  %865 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %866 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %867 = load i8*, i8** %866, align 8, !tbaa !14
  %868 = getelementptr inbounds i8, i8* %867, i64 -24
  %869 = bitcast i8* %868 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %865) #26
  %870 = icmp eq i8* %868, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %870, label %883, label %871, !prof !17

871:                                              ; preds = %864
  %872 = getelementptr inbounds i8, i8* %867, i64 -8
  %873 = bitcast i8* %872 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %874, label %876

874:                                              ; preds = %871
  %875 = atomicrmw volatile add i32* %873, i32 -1 acq_rel, align 4
  br label %879

876:                                              ; preds = %871
  %877 = load i32, i32* %873, align 8, !tbaa !3
  %878 = add nsw i32 %877, -1
  store i32 %878, i32* %873, align 8, !tbaa !3
  br label %879

879:                                              ; preds = %876, %874
  %880 = phi i32 [ %875, %874 ], [ %877, %876 ]
  %881 = icmp slt i32 %880, 1
  br i1 %881, label %882, label %883

882:                                              ; preds = %879
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %869, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %883

883:                                              ; preds = %864, %879, %882
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %865) #26
  %884 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %885 = load i8*, i8** %884, align 16, !tbaa !14
  %886 = getelementptr inbounds i8, i8* %885, i64 -24
  %887 = bitcast i8* %886 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %865) #26
  %888 = icmp eq i8* %886, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %888, label %901, label %889, !prof !17

889:                                              ; preds = %883
  %890 = getelementptr inbounds i8, i8* %885, i64 -8
  %891 = bitcast i8* %890 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %895, label %892

892:                                              ; preds = %889
  %893 = load i32, i32* %891, align 8, !tbaa !3
  %894 = add nsw i32 %893, -1
  store i32 %894, i32* %891, align 8, !tbaa !3
  br label %897

895:                                              ; preds = %889
  %896 = atomicrmw volatile add i32* %891, i32 -1 acq_rel, align 4
  br label %897

897:                                              ; preds = %895, %892
  %898 = phi i32 [ %896, %895 ], [ %893, %892 ]
  %899 = icmp slt i32 %898, 1
  br i1 %899, label %900, label %901

900:                                              ; preds = %897
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %887, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %901

901:                                              ; preds = %900, %897, %883
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %865) #26
  %902 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %903 = load i8*, i8** %902, align 8, !tbaa !14
  %904 = getelementptr inbounds i8, i8* %903, i64 -24
  %905 = bitcast i8* %904 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %865) #26
  %906 = icmp eq i8* %904, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %906, label %919, label %907, !prof !17

907:                                              ; preds = %901
  %908 = getelementptr inbounds i8, i8* %903, i64 -8
  %909 = bitcast i8* %908 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %913, label %910

910:                                              ; preds = %907
  %911 = load i32, i32* %909, align 8, !tbaa !3
  %912 = add nsw i32 %911, -1
  store i32 %912, i32* %909, align 8, !tbaa !3
  br label %915

913:                                              ; preds = %907
  %914 = atomicrmw volatile add i32* %909, i32 -1 acq_rel, align 4
  br label %915

915:                                              ; preds = %913, %910
  %916 = phi i32 [ %914, %913 ], [ %911, %910 ]
  %917 = icmp slt i32 %916, 1
  br i1 %917, label %918, label %919

918:                                              ; preds = %915
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %905, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %919

919:                                              ; preds = %918, %915, %901
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %865) #26
  %920 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %921 = load i8*, i8** %920, align 16, !tbaa !14
  %922 = getelementptr inbounds i8, i8* %921, i64 -24
  %923 = bitcast i8* %922 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %865) #26
  %924 = icmp eq i8* %922, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %924, label %937, label %925, !prof !17

925:                                              ; preds = %919
  %926 = getelementptr inbounds i8, i8* %921, i64 -8
  %927 = bitcast i8* %926 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %931, label %928

928:                                              ; preds = %925
  %929 = load i32, i32* %927, align 8, !tbaa !3
  %930 = add nsw i32 %929, -1
  store i32 %930, i32* %927, align 8, !tbaa !3
  br label %933

931:                                              ; preds = %925
  %932 = atomicrmw volatile add i32* %927, i32 -1 acq_rel, align 4
  br label %933

933:                                              ; preds = %931, %928
  %934 = phi i32 [ %932, %931 ], [ %929, %928 ]
  %935 = icmp slt i32 %934, 1
  br i1 %935, label %936, label %937

936:                                              ; preds = %933
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %923, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %937

937:                                              ; preds = %936, %933, %919
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %865) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #26
  br label %1000

938:                                              ; preds = %32
  %939 = landingpad { i8*, i32 }
          cleanup
  br label %947

940:                                              ; preds = %38
  %941 = landingpad { i8*, i32 }
          cleanup
  br label %944

942:                                              ; preds = %41
  %943 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #26
  br label %944

944:                                              ; preds = %942, %940
  %945 = phi %"class.std::basic_string"* [ %42, %942 ], [ %39, %940 ]
  %946 = phi { i8*, i32 } [ %943, %942 ], [ %941, %940 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #26
  br label %947

947:                                              ; preds = %938, %944
  %948 = phi %"class.std::basic_string"* [ %945, %944 ], [ %36, %938 ]
  %949 = phi { i8*, i32 } [ %946, %944 ], [ %939, %938 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  br label %950

950:                                              ; preds = %947, %950
  %951 = phi %"class.std::basic_string"* [ %952, %950 ], [ %948, %947 ]
  %952 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %951, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %952) #26
  %953 = icmp eq %"class.std::basic_string"* %952, %34
  br i1 %953, label %998, label %950

954:                                              ; preds = %44
  %955 = landingpad { i8*, i32 }
          cleanup
  br label %958

956:                                              ; preds = %109
  %957 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22) #26
  br label %958

958:                                              ; preds = %954, %107, %956
  %959 = phi { i8*, i32 } [ %957, %956 ], [ %955, %954 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #26
  br label %988

960:                                              ; preds = %131
  %961 = landingpad { i8*, i32 }
          cleanup
  br label %964

962:                                              ; preds = %179
  %963 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23) #26
  br label %964

964:                                              ; preds = %960, %177, %962
  %965 = phi { i8*, i32 } [ %963, %962 ], [ %961, %960 ], [ %178, %177 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %132) #26
  br label %988

966:                                              ; preds = %202
  %967 = landingpad { i8*, i32 }
          cleanup
  br label %970

968:                                              ; preds = %248
  %969 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24) #26
  br label %970

970:                                              ; preds = %966, %246, %968
  %971 = phi { i8*, i32 } [ %969, %968 ], [ %967, %966 ], [ %247, %246 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %203) #26
  br label %988

972:                                              ; preds = %271
  %973 = landingpad { i8*, i32 }
          cleanup
  br label %976

974:                                              ; preds = %322
  %975 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25) #26
  br label %976

976:                                              ; preds = %972, %320, %974
  %977 = phi { i8*, i32 } [ %975, %974 ], [ %973, %972 ], [ %321, %320 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %272) #26
  br label %988

978:                                              ; preds = %746
  %979 = landingpad { i8*, i32 }
          cleanup
  br label %988

980:                                              ; preds = %734
  %981 = landingpad { i8*, i32 }
          cleanup
  br label %988

982:                                              ; preds = %722
  %983 = landingpad { i8*, i32 }
          cleanup
  br label %988

984:                                              ; preds = %764
  %985 = landingpad { i8*, i32 }
          cleanup
  br label %988

986:                                              ; preds = %789, %786, %780, %779, %770, %752, %740, %728, %715, %703, %683, %681, %679, %659, %657, %655, %633, %631, %629, %607, %605, %603, %601, %598, %592, %591, %582, %575, %573, %570, %564, %563, %554, %542, %519, %503, %501, %478, %462, %460, %437, %421, %419, %396, %381, %379, %377, %374, %368, %367, %358, %345
  %987 = landingpad { i8*, i32 }
          cleanup
  br label %988

988:                                              ; preds = %978, %982, %986, %984, %980, %976, %970, %964, %958
  %989 = phi { i8*, i32 } [ %977, %976 ], [ %971, %970 ], [ %965, %964 ], [ %959, %958 ], [ %979, %978 ], [ %981, %980 ], [ %983, %982 ], [ %985, %984 ], [ %987, %986 ]
  %990 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %990) #26
  %991 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %991) #26
  %992 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %992) #26
  %993 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %993) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %53) #26
  %994 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %994) #26
  %995 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %995) #26
  %996 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %996) #26
  %997 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %997) #26
  br label %998

998:                                              ; preds = %950, %988
  %999 = phi { i8*, i32 } [ %989, %988 ], [ %949, %950 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #26
  resume { i8*, i32 } %999

1000:                                             ; preds = %937, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN14BinomialOption7cleanupEv(%class.BinomialOption* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 8
  %3 = bitcast %struct.HIP_vector_type** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !38
  %5 = tail call i32 @hipHostFree(i8* %4)
  %6 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 9
  %7 = bitcast %struct.HIP_vector_type** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !39
  %9 = tail call i32 @hipHostFree(i8* %8)
  %10 = tail call i32 @hipDeviceReset()
  ret i32 0
}

declare dso_local i32 @hipHostFree(i8*) local_unnamed_addr #0

declare dso_local i32 @hipDeviceReset() local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @_ZN14BinomialOptionD2Ev(%class.BinomialOption* nocapture nonnull align 8 dereferenceable(112) %0) unnamed_addr #18 align 2 {
  %2 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 5
  %3 = load float*, float** %2, align 8, !tbaa !13
  %4 = icmp eq float* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = bitcast float* %3 to i8*
  tail call void @free(i8* %6) #26
  store float* null, float** %2, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 6
  %9 = load float*, float** %8, align 8, !tbaa !26
  %10 = icmp eq float* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = bitcast float* %9 to i8*
  tail call void @free(i8* %12) #26
  store float* null, float** %8, align 8, !tbaa !26
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %0, i64 0, i32 7
  %15 = load float*, float** %14, align 8, !tbaa !43
  %16 = icmp eq float* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = bitcast float* %15 to i8*
  tail call void @free(i8* %18) #26
  store float* null, float** %14, align 8, !tbaa !43
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.BinomialOption, align 8
  %4 = bitcast %class.BinomialOption* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #26
  %5 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 5
  %6 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %7 = bitcast float** %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 1, i32* %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 2
  store i32 256, i32* %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 4
  store i32 254, i32* %9, align 8, !tbaa !41
  %10 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #28
  %11 = bitcast i8* %10 to %"class.appsdk::HIPCommandArgs"*
  %12 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 0
  %13 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 8, i32 0
  %15 = bitcast i32* %14 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %15, align 8, !tbaa !3
  %16 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %16, align 8, !tbaa !109
  %17 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 1
  store i32 0, i32* %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 2
  store i32 0, i32* %19, align 4, !tbaa !110
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 4
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 3
  %22 = bitcast i8*** %20 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 123, i32* %21, align 8, !tbaa !111
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 9
  store i8 0, i8* %23, align 4, !tbaa !77
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 10
  store i8 0, i8* %24, align 1, !tbaa !81
  %25 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 0, i32 11
  store i8 0, i8* %25, align 2, !tbaa !84
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %12, align 8, !tbaa !18
  %26 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 1
  store i32 0, i32* %26, align 8, !tbaa !112
  %27 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %11, i64 0, i32 2
  store i8 0, i8* %27, align 4, !tbaa !114
  %28 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 14
  %29 = bitcast %"class.appsdk::HIPCommandArgs"** %28 to i8**
  store i8* %10, i8** %29, align 8, !tbaa !48
  %30 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #28
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false) #26
  %31 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 11
  %32 = bitcast %"class.appsdk::SDKTimer"** %31 to i8**
  store i8* %30, i8** %32, align 8, !tbaa !59
  %33 = bitcast i8* %10 to %"class.appsdk::SDKCmdArgsParser"*
  %34 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %33, i64 0, i32 12
  %35 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i64 0, i64 0), i64 30)
  %36 = invoke i32 @_ZN14BinomialOption10initializeEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %3)
          to label %37 unwind label %39

37:                                               ; preds = %2
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %41, label %62

39:                                               ; preds = %61, %59, %55, %53, %49, %41, %2
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN14BinomialOptionD2Ev(%class.BinomialOption* nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #26
  resume { i8*, i32 } %40

41:                                               ; preds = %37
  %42 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %28, align 8, !tbaa !48
  %43 = bitcast %"class.appsdk::HIPCommandArgs"* %42 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %44 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %43, align 8, !tbaa !18
  %45 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %44, align 8
  %46 = invoke i32 %45(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %42, i32 %0, i8** %1)
          to label %47 unwind label %39

47:                                               ; preds = %41
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = invoke i32 @_ZN14BinomialOption5setupEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %3)
          to label %51 unwind label %39

51:                                               ; preds = %49
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = invoke i32 @_ZN14BinomialOption3runEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %3)
          to label %55 unwind label %39

55:                                               ; preds = %53
  %56 = invoke i32 @_ZN14BinomialOption13verifyResultsEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %3)
          to label %57 unwind label %39

57:                                               ; preds = %55
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = invoke i32 @_ZN14BinomialOption7cleanupEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %3)
          to label %61 unwind label %39

61:                                               ; preds = %59
  invoke void @_ZN14BinomialOption10printStatsEv(%class.BinomialOption* nonnull align 8 dereferenceable(112) %3)
          to label %62 unwind label %39

62:                                               ; preds = %61, %57, %51, %47, %37
  %63 = phi i32 [ 1, %37 ], [ 1, %47 ], [ 1, %51 ], [ 1, %57 ], [ 0, %61 ]
  %64 = load float*, float** %5, align 8, !tbaa !13
  %65 = icmp eq float* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = bitcast float* %64 to i8*
  call void @free(i8* %67) #26
  store float* null, float** %5, align 8, !tbaa !13
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 6
  %70 = load float*, float** %69, align 8, !tbaa !26
  %71 = icmp eq float* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = bitcast float* %70 to i8*
  call void @free(i8* %73) #26
  store float* null, float** %69, align 8, !tbaa !26
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %class.BinomialOption, %class.BinomialOption* %3, i64 0, i32 7
  %76 = load float*, float** %75, align 8, !tbaa !43
  %77 = icmp eq float* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = bitcast float* %76 to i8*
  call void @free(i8* %79) #26
  br label %80

80:                                               ; preds = %74, %78
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #26
  ret i32 %63
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #16

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #19

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
  store i32 %1, i32* %23, align 4, !tbaa !110
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !115
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
  br i1 %37, label %28, label %38, !llvm.loop !116

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !110
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !115
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !7
  %51 = load i8, i8* %50, align 1, !tbaa !25
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #26
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !110
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !117

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !14
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #26
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !17

72:                                               ; preds = %64
  %73 = getelementptr inbounds i8, i8* %67, i64 -8
  %74 = bitcast i8* %73 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %75, label %77

75:                                               ; preds = %72
  %76 = atomicrmw volatile add i32* %74, i32 -1 acq_rel, align 4
  br label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %74, align 8, !tbaa !3
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %74, align 8, !tbaa !3
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %69, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #26
  br label %84

84:                                               ; preds = %64, %80, %83
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %70) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #26
  br i1 %65, label %85, label %339

85:                                               ; preds = %84
  call void @exit(i32 0) #31
  unreachable

86:                                               ; preds = %3, %38
  %87 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %87) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !110
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !115
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !7
  %96 = load i8, i8* %95, align 1, !tbaa !25
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #26
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !110
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !117

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !14
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #26
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !17

117:                                              ; preds = %109
  %118 = getelementptr inbounds i8, i8* %112, i64 -8
  %119 = bitcast i8* %118 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %120, label %122

120:                                              ; preds = %117
  %121 = atomicrmw volatile add i32* %119, i32 -1 acq_rel, align 4
  br label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %119, align 8, !tbaa !3
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %119, align 8, !tbaa !3
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %114, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #26
  br label %129

129:                                              ; preds = %109, %125, %128
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %87) #26
  br i1 %110, label %130, label %131

130:                                              ; preds = %129
  call void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  call void @exit(i32 0) #31
  unreachable

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %132) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !110
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !115
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !7
  %142 = load i8, i8* %141, align 1, !tbaa !25
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #26
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !110
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !117

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !110
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !115
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !7
  %166 = load i8, i8* %165, align 1, !tbaa !25
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !25
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #26
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !110
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !117

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !14
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #26
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !17

191:                                              ; preds = %183
  %192 = getelementptr inbounds i8, i8* %186, i64 -8
  %193 = bitcast i8* %192 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %194, label %196

194:                                              ; preds = %191
  %195 = atomicrmw volatile add i32* %193, i32 -1 acq_rel, align 4
  br label %199

196:                                              ; preds = %191
  %197 = load i32, i32* %193, align 8, !tbaa !3
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %193, align 8, !tbaa !3
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %203

203:                                              ; preds = %183, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #26
  br label %204

204:                                              ; preds = %144, %203
  %205 = phi i1 [ %184, %203 ], [ true, %144 ]
  %206 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8, !tbaa !14
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #26
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !17

212:                                              ; preds = %204
  %213 = getelementptr inbounds i8, i8* %207, i64 -8
  %214 = bitcast i8* %213 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %215, label %217

215:                                              ; preds = %212
  %216 = atomicrmw volatile add i32* %214, i32 -1 acq_rel, align 4
  br label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %214, align 8, !tbaa !3
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %214, align 8, !tbaa !3
  br label %220

220:                                              ; preds = %217, %215
  %221 = phi i32 [ %216, %215 ], [ %218, %217 ]
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %209, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #26
  br label %224

224:                                              ; preds = %204, %220, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %210) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #26
  br i1 %205, label %225, label %237

225:                                              ; preds = %224
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !14
  %229 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %226, i8* %228)
  %230 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %229)
  call void @exit(i32 0) #31
  unreachable

231:                                              ; preds = %131
  %232 = landingpad { i8*, i32 }
          cleanup
  br label %235

233:                                              ; preds = %155
  %234 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #26
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #26
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi { i8*, i32 } [ %234, %233 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #26
  br label %341

237:                                              ; preds = %224
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !110
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !115
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !7
  %248 = load i8, i8* %247, align 1, !tbaa !25
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #26
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !110
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !117

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !110
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !115
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !7
  %272 = load i8, i8* %271, align 1, !tbaa !25
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !25
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #26
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !110
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !117

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !14
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #26
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !17

297:                                              ; preds = %289
  %298 = getelementptr inbounds i8, i8* %292, i64 -8
  %299 = bitcast i8* %298 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %300, label %302

300:                                              ; preds = %297
  %301 = atomicrmw volatile add i32* %299, i32 -1 acq_rel, align 4
  br label %305

302:                                              ; preds = %297
  %303 = load i32, i32* %299, align 8, !tbaa !3
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %299, align 8, !tbaa !3
  br label %305

305:                                              ; preds = %302, %300
  %306 = phi i32 [ %301, %300 ], [ %303, %302 ]
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %294, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %309

309:                                              ; preds = %289, %305, %308
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %295) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #26
  br label %310

310:                                              ; preds = %250, %309
  %311 = phi i1 [ %290, %309 ], [ true, %250 ]
  %312 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8, !tbaa !14
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #26
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !17

318:                                              ; preds = %310
  %319 = getelementptr inbounds i8, i8* %313, i64 -8
  %320 = bitcast i8* %319 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %321, label %323

321:                                              ; preds = %318
  %322 = atomicrmw volatile add i32* %320, i32 -1 acq_rel, align 4
  br label %326

323:                                              ; preds = %318
  %324 = load i32, i32* %320, align 8, !tbaa !3
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %320, align 8, !tbaa !3
  br label %326

326:                                              ; preds = %323, %321
  %327 = phi i32 [ %322, %321 ], [ %324, %323 ]
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %315, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %330

330:                                              ; preds = %310, %326, %329
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %316) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #26
  br i1 %311, label %331, label %339

331:                                              ; preds = %330
  %332 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 2
  store i8 1, i8* %332, align 4, !tbaa !114
  br label %339

333:                                              ; preds = %237
  %334 = landingpad { i8*, i32 }
          cleanup
  br label %337

335:                                              ; preds = %261
  %336 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #26
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #26
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi { i8*, i32 } [ %336, %335 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #26
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !18
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !57
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %18) #26
  %19 = icmp eq %"struct.appsdk::Option"* %18, %6
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %8
  tail call void @_ZdaPv(i8* nonnull %10) #29
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 12, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !14
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #26
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !17

28:                                               ; preds = %21
  %29 = getelementptr inbounds i8, i8* %23, i64 -8
  %30 = bitcast i8* %29 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %31, label %33

31:                                               ; preds = %28
  %32 = atomicrmw volatile add i32* %30, i32 -1 acq_rel, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %30, align 8, !tbaa !3
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %30, align 8, !tbaa !3
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %25, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %40

40:                                               ; preds = %21, %36, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #26
  %41 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !14
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #26
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !17

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, i8* %42, i64 -8
  %49 = bitcast i8* %48 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %50, label %52

50:                                               ; preds = %47
  %51 = atomicrmw volatile add i32* %49, i32 -1 acq_rel, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %49, align 8, !tbaa !3
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %49, align 8, !tbaa !3
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %44, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %59

59:                                               ; preds = %40, %55, %58
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %45) #26
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk14HIPCommandArgsD0Ev(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  tail call void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(93) %2) #26
  %3 = bitcast %"class.appsdk::HIPCommandArgs"* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %3) #29
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #20

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !7
  %6 = load i8, i8* %5, align 1, !tbaa !25
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !25
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !54
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !57
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !54
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !118

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !57
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !57
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !50
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !53
  store i8 1, i8* %44, align 1, !tbaa !119
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !7
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !53
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), float* %52) #26
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !7
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %62
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = getelementptr inbounds i8, i8* %63, i64 32
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !120
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #26
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !7
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !53
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), double* %81) #26
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !7
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %91
  %93 = bitcast i8* %92 to %"class.std::basic_ios"*
  %94 = getelementptr inbounds i8, i8* %92, i64 32
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !120
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #26
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !7
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !53
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), i32* %110) #26
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !7
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = bitcast i8* %121 to %"class.std::basic_ios"*
  %123 = getelementptr inbounds i8, i8* %121, i64 32
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !120
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #26
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !53
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !14
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !14
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #26
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !17

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, i8* %144, i64 -8
  %152 = bitcast i8* %151 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %153, label %155

153:                                              ; preds = %150
  %154 = atomicrmw volatile add i32* %152, i32 -1 acq_rel, align 4
  br label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %152, align 8, !tbaa !3
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %152, align 8, !tbaa !3
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %147, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %162

162:                                              ; preds = %161, %158, %146
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !14
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !17

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !121
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !31
  store i8 0, i8* %144, align 1, !tbaa !25
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !7
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #26
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !7
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %182
  %184 = bitcast i8* %183 to %"class.std::basic_ios"*
  %185 = getelementptr inbounds i8, i8* %183, i64 32
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 8, !tbaa !120
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #26
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !54
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !118

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare dso_local void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #21

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !91
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !97
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !107
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !91
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !97
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !107
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !54
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !57
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !31
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !91
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !97
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #26
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !49, !alias.scope !122
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
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
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #26
  br label %87

91:                                               ; preds = %85
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !49, !noalias !125
  store i8* %95, i8** %47, align 8, !tbaa !49, !alias.scope !125
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !14, !noalias !125
  %96 = load i8*, i8** %47, align 8, !tbaa !14
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !31
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !17

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %96, i64 -8
  %106 = bitcast i8* %105 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %107, label %109

107:                                              ; preds = %104
  %108 = atomicrmw volatile add i32* %106, i32 -1 acq_rel, align 4
  br label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %106, align 8, !tbaa !3
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %106, align 8, !tbaa !3
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %116

116:                                              ; preds = %101, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #26
  %117 = load i8*, i8** %46, align 8, !tbaa !14
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #26
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !17

121:                                              ; preds = %116
  %122 = getelementptr inbounds i8, i8* %117, i64 -8
  %123 = bitcast i8* %122 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %124, label %126

124:                                              ; preds = %121
  %125 = atomicrmw volatile add i32* %123, i32 -1 acq_rel, align 4
  br label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %123, align 8, !tbaa !3
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %123, align 8, !tbaa !3
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %119, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %133

133:                                              ; preds = %116, %129, %132
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %49) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #26
  br label %142

134:                                              ; preds = %91
  %135 = landingpad { i8*, i32 }
          cleanup
  br label %138

136:                                              ; preds = %93
  %137 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { i8*, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #26
  br label %87

140:                                              ; preds = %59
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !91
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !97
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #26
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !57
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !49, !alias.scope !128
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !14, !noalias !128
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !31, !noalias !128
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), i64 2)
          to label %165 unwind label %167

165:                                              ; preds = %163
  %166 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %156)
          to label %169 unwind label %167

167:                                              ; preds = %165, %163, %142
  %168 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #26
  br label %87

169:                                              ; preds = %165
  %170 = load i8*, i8** %51, align 8, !tbaa !14
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !31
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !14
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #26
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !17

180:                                              ; preds = %175
  %181 = getelementptr inbounds i8, i8* %176, i64 -8
  %182 = bitcast i8* %181 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %183, label %185

183:                                              ; preds = %180
  %184 = atomicrmw volatile add i32* %182, i32 -1 acq_rel, align 4
  br label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %182, align 8, !tbaa !3
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %182, align 8, !tbaa !3
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %192

192:                                              ; preds = %175, %188, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #26
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !57
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !14
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !31
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !91
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !97
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !107
  br i1 %199, label %216, label %212

212:                                              ; preds = %192
  %213 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %195, i64 %198)
  br label %218

214:                                              ; preds = %169
  %215 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #26
  br label %87

216:                                              ; preds = %192
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.78, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #26
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !57
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #26
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !14
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !31
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !14
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #26
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !17

235:                                              ; preds = %230
  %236 = getelementptr inbounds i8, i8* %231, i64 -8
  %237 = bitcast i8* %236 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %238, label %240

238:                                              ; preds = %235
  %239 = atomicrmw volatile add i32* %237, i32 -1 acq_rel, align 4
  br label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %237, align 8, !tbaa !3
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %237, align 8, !tbaa !3
  br label %243

243:                                              ; preds = %240, %238
  %244 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %233, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %247

247:                                              ; preds = %230, %243, %246
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %55) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #26
  %248 = add nuw nsw i64 %60, 1
  %249 = load i32, i32* %42, align 8, !tbaa !54
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !131

252:                                              ; preds = %224
  %253 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #26
  br label %87
}

declare dso_local void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare dso_local void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #22

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

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
define internal void @_GLOBAL__sub_I_binomialoption.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #26
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32, %struct.HIP_vector_type*, %struct.HIP_vector_type*)** @_Z16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_ to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #25

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #9 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { allocsize(0) }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !4, i64 16}
!10 = !{!"_ZTS14BinomialOption", !11, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !4, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104}
!11 = !{!"double", !5, i64 0}
!12 = !{!10, !4, i64 20}
!13 = !{!10, !8, i64 32}
!14 = !{!15, !8, i64 0}
!15 = !{!"_ZTSSs", !16, i64 0}
!16 = !{!"_ZTSNSs12_Alloc_hiderE", !8, i64 0}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!21, !8, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !8, i64 216, !5, i64 224, !22, i64 225, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256}
!22 = !{!"bool", !5, i64 0}
!23 = !{!24, !5, i64 56}
!24 = !{!"_ZTSSt5ctypeIcE", !8, i64 16, !22, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!25 = !{!5, !5, i64 0}
!26 = !{!10, !8, i64 40}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !5, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSs9_Rep_baseE", !33, i64 0, !33, i64 8, !4, i64 16}
!33 = !{!"long", !5, i64 0}
!34 = !{!35, !4, i64 332}
!35 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !33, i64 256, !33, i64 264, !4, i64 272, !4, i64 276, !4, i64 280, !5, i64 284, !5, i64 296, !4, i64 308, !4, i64 312, !4, i64 316, !33, i64 320, !4, i64 328, !4, i64 332, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !36, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !4, i64 372, !33, i64 376, !4, i64 384, !4, i64 388, !4, i64 392, !5, i64 396, !4, i64 652, !4, i64 656, !4, i64 660, !4, i64 664, !4, i64 668, !5, i64 672, !5, i64 680, !8, i64 696, !8, i64 704, !33, i64 712, !33, i64 720, !33, i64 728, !4, i64 736, !4, i64 740, !4, i64 744, !4, i64 748, !4, i64 752, !4, i64 756, !4, i64 760, !4, i64 764, !4, i64 768, !4, i64 772, !4, i64 776, !4, i64 780, !4, i64 784, !4, i64 788}
!36 = !{!"_ZTS15hipDeviceArch_t", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1, !4, i64 1, !4, i64 1, !4, i64 1, !4, i64 1, !4, i64 1, !4, i64 1, !4, i64 1, !4, i64 2, !4, i64 2, !4, i64 2}
!37 = !{!35, !4, i64 328}
!38 = !{!10, !8, i64 56}
!39 = !{!10, !8, i64 64}
!40 = !{!10, !8, i64 88}
!41 = !{!10, !4, i64 24}
!42 = !{!10, !8, i64 96}
!43 = !{!10, !8, i64 48}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = !{!10, !8, i64 104}
!49 = !{!16, !8, i64 0}
!50 = !{!51, !52, i64 32}
!51 = !{!"_ZTSN6appsdk6OptionE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !52, i64 32, !8, i64 40}
!52 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!53 = !{!51, !8, i64 40}
!54 = !{!55, !4, i64 8}
!55 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !4, i64 8, !4, i64 12, !4, i64 16, !8, i64 24, !8, i64 32, !22, i64 40, !15, i64 48, !56, i64 56, !22, i64 76, !22, i64 77, !22, i64 78, !15, i64 80}
!56 = !{!"_ZTSN6appsdk13sdkVersionStrE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16}
!57 = !{!55, !8, i64 32}
!58 = distinct !{!58, !30}
!59 = !{!10, !8, i64 80}
!60 = !{!61, !8, i64 8}
!61 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !8, i64 0, !8, i64 8, !8, i64 16}
!63 = !{!61, !8, i64 0}
!64 = !{!10, !11, i64 0}
!65 = !{!66, !67, i64 8}
!66 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !15, i64 0, !67, i64 8, !67, i64 16, !67, i64 24}
!67 = !{!"long long", !5, i64 0}
!68 = !{!61, !8, i64 16}
!69 = !{!70, !33, i64 0}
!70 = !{!"_ZTS7timeval", !33, i64 0, !33, i64 8}
!71 = !{!70, !33, i64 8}
!72 = !{!66, !67, i64 24}
!73 = !{!66, !67, i64 16}
!74 = !{!10, !4, i64 72}
!75 = distinct !{!75, !30}
!76 = !{!10, !11, i64 8}
!77 = !{!55, !22, i64 76}
!78 = !{i8 0, i8 2}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = !{!55, !22, i64 77}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !30}
!84 = !{!55, !22, i64 78}
!85 = !{!86, !11, i64 24}
!86 = !{!"_ZTSN6appsdk8SDKTimerE", !87, i64 0, !11, i64 24}
!87 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!90 = distinct !{!90, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!91 = !{!92, !93, i64 24}
!92 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !93, i64 24, !94, i64 28, !94, i64 32, !8, i64 40, !95, i64 48, !5, i64 64, !4, i64 192, !8, i64 200, !96, i64 208}
!93 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!94 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!95 = !{!"_ZTSNSt8ios_base6_WordsE", !8, i64 0, !33, i64 8}
!96 = !{!"_ZTSSt6locale", !8, i64 0}
!97 = !{!93, !93, i64 0}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!100 = distinct !{!100, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!103 = distinct !{!103, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!106 = distinct !{!106, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!107 = !{!92, !33, i64 16}
!108 = distinct !{!108, !30}
!109 = !{!56, !4, i64 16}
!110 = !{!55, !4, i64 12}
!111 = !{!55, !4, i64 16}
!112 = !{!113, !4, i64 88}
!113 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !4, i64 88, !22, i64 92}
!114 = !{!113, !22, i64 92}
!115 = !{!55, !8, i64 24}
!116 = distinct !{!116, !30}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = !{!22, !22, i64 0}
!120 = !{!92, !94, i64 32}
!121 = !{!32, !4, i64 16}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!127 = distinct !{!127, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!130 = distinct !{!130, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!131 = distinct !{!131, !30}
