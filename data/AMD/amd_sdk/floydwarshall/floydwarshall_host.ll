; ModuleID = 'floydwarshall/floydwarshall.cpp'
source_filename = "floydwarshall/floydwarshall.cpp"
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
%class.FloydWarshall = type { i32, double, double, double, double, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"* }
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

$_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j = comdat any

$_ZN6appsdk10printArrayIjEEvSsPKT_ii = comdat any

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
@_Z17floydWarshallPassPjS_jj = dso_local constant void (i32*, i32*, i32, i32)* @_Z32__device_stub__floydWarshallPassPjS_jj, align 8
@.str = private unnamed_addr constant [53 x i8] c"Failed to allocate host memory. (pathDistanceMatrix)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"floydwarshall/floydwarshall.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to allocate host memory. (pathMatrix)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Path Distance\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Path \00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Failed to allocate host memory. (verificationPathDistanceMatrix)\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Failed to allocate host memory. (verificationPathMatrix)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"number of nodes\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Output Path Distance Matrix\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Output Path Matrix\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"CPU time \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Nodes\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Time(sec)\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"[Transfer+Kernel]Time(sec)\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.49 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"HIP-Examples-Application-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.60 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.67 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"Cannot fill array. NULL pointer.\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [28 x i8] c"_Z17floydWarshallPassPjS_jj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_floydwarshall.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z32__device_stub__floydWarshallPassPjS_jj(i32* %0, i32* %1, i32 %2, i32 %3) #3 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to i32***
  store i32** %5, i32*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to i32***
  store i32** %6, i32*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32, i32)** @_Z17floydWarshallPassPjS_jj to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local i32 @_ZN13FloydWarshall18setupFloydWarshallEv(%class.FloydWarshall* nocapture nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
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
  %20 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 5
  %21 = load i32, i32* %20, align 8, !tbaa !9
  %22 = shl i32 %21, 2
  %23 = mul i32 %22, %21
  %24 = zext i32 %23 to i64
  %25 = tail call noalias align 16 i8* @malloc(i64 %24) #25
  %26 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 6
  %27 = bitcast i32** %26 to i8**
  store i8* %25, i8** %27, align 8, !tbaa !12
  %28 = icmp eq i8* %25, null
  %29 = bitcast i8* %25 to i32*
  br i1 %28, label %30, label %92

30:                                               ; preds = %1
  %31 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %31) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
          to label %32 unwind label %86

32:                                               ; preds = %30
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %33 unwind label %88

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !13
  %36 = getelementptr inbounds i8, i8* %35, i64 -24
  %37 = bitcast i8* %36 to %"struct.std::basic_string<char>::_Rep"*
  %38 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %38) #25
  %39 = icmp eq i8* %36, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %39, label %52, label %40, !prof !16

40:                                               ; preds = %33
  %41 = getelementptr inbounds i8, i8* %35, i64 -8
  %42 = bitcast i8* %41 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %43, label %45

43:                                               ; preds = %40
  %44 = atomicrmw volatile add i32* %42, i32 -1 acq_rel, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %42, align 8, !tbaa !7
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %42, align 8, !tbaa !7
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %37, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #25
  br label %52

52:                                               ; preds = %33, %48, %51
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %38) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #25
  %53 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %54 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 31)
  %55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 230)
  %57 = bitcast %"class.std::basic_ostream"* %56 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !17
  %59 = getelementptr i8, i8* %58, i64 -24
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = bitcast %"class.std::basic_ostream"* %56 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  %64 = getelementptr inbounds i8, i8* %63, i64 240
  %65 = bitcast i8* %64 to %"class.std::ctype"**
  %66 = load %"class.std::ctype"*, %"class.std::ctype"** %65, align 8, !tbaa !19
  %67 = icmp eq %"class.std::ctype"* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

69:                                               ; preds = %52
  %70 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %66, i64 0, i32 8
  %71 = load i8, i8* %70, align 8, !tbaa !22
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %66, i64 0, i32 9, i64 10
  %75 = load i8, i8* %74, align 1, !tbaa !24
  br label %82

76:                                               ; preds = %69
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %66)
  %77 = bitcast %"class.std::ctype"* %66 to i8 (%"class.std::ctype"*, i8)***
  %78 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %77, align 8, !tbaa !17
  %79 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %78, i64 6
  %80 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %79, align 8
  %81 = call signext i8 %80(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %66, i8 signext 10)
  br label %82

82:                                               ; preds = %73, %76
  %83 = phi i8 [ %75, %73 ], [ %81, %76 ]
  %84 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %56, i8 signext %83)
  %85 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %84)
  br label %457

86:                                               ; preds = %30
  %87 = landingpad { i8*, i32 }
          cleanup
  br label %90

88:                                               ; preds = %32
  %89 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #25
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { i8*, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #25
  br label %459

92:                                               ; preds = %1
  %93 = tail call noalias align 16 i8* @malloc(i64 %24) #25
  %94 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 7
  %95 = bitcast i32** %94 to i8**
  store i8* %93, i8** %95, align 8, !tbaa !25
  %96 = icmp eq i8* %93, null
  br i1 %96, label %97, label %159

97:                                               ; preds = %92
  %98 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %98) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
          to label %99 unwind label %153

99:                                               ; preds = %97
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %10)
          to label %100 unwind label %155

100:                                              ; preds = %99
  %101 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8, !tbaa !13
  %103 = getelementptr inbounds i8, i8* %102, i64 -24
  %104 = bitcast i8* %103 to %"struct.std::basic_string<char>::_Rep"*
  %105 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %105) #25
  %106 = icmp eq i8* %103, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %106, label %119, label %107, !prof !16

107:                                              ; preds = %100
  %108 = getelementptr inbounds i8, i8* %102, i64 -8
  %109 = bitcast i8* %108 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %110, label %112

110:                                              ; preds = %107
  %111 = atomicrmw volatile add i32* %109, i32 -1 acq_rel, align 4
  br label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %109, align 8, !tbaa !7
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %109, align 8, !tbaa !7
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %104, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #25
  br label %119

119:                                              ; preds = %100, %115, %118
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %105) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #25
  %120 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %121 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 31)
  %122 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %123 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 233)
  %124 = bitcast %"class.std::basic_ostream"* %123 to i8**
  %125 = load i8*, i8** %124, align 8, !tbaa !17
  %126 = getelementptr i8, i8* %125, i64 -24
  %127 = bitcast i8* %126 to i64*
  %128 = load i64, i64* %127, align 8
  %129 = bitcast %"class.std::basic_ostream"* %123 to i8*
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  %131 = getelementptr inbounds i8, i8* %130, i64 240
  %132 = bitcast i8* %131 to %"class.std::ctype"**
  %133 = load %"class.std::ctype"*, %"class.std::ctype"** %132, align 8, !tbaa !19
  %134 = icmp eq %"class.std::ctype"* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

136:                                              ; preds = %119
  %137 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %133, i64 0, i32 8
  %138 = load i8, i8* %137, align 8, !tbaa !22
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %133, i64 0, i32 9, i64 10
  %142 = load i8, i8* %141, align 1, !tbaa !24
  br label %149

143:                                              ; preds = %136
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %133)
  %144 = bitcast %"class.std::ctype"* %133 to i8 (%"class.std::ctype"*, i8)***
  %145 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %144, align 8, !tbaa !17
  %146 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %145, i64 6
  %147 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %146, align 8
  %148 = call signext i8 %147(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %133, i8 signext 10)
  br label %149

149:                                              ; preds = %140, %143
  %150 = phi i8 [ %142, %140 ], [ %148, %143 ]
  %151 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %123, i8 signext %150)
  %152 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %151)
  br label %457

153:                                              ; preds = %97
  %154 = landingpad { i8*, i32 }
          cleanup
  br label %157

155:                                              ; preds = %99
  %156 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10) #25
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi { i8*, i32 } [ %156, %155 ], [ %154, %153 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #25
  br label %459

159:                                              ; preds = %92
  %160 = tail call i32 @_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j(i32* nonnull %29, i32 %21, i32 %21, i32 0, i32 200, i32 123)
  %161 = load i32*, i32** %26, align 8
  %162 = load i32, i32* %20, align 8, !tbaa !9
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %187, label %167

164:                                              ; preds = %167
  %165 = load i32*, i32** %94, align 8
  %166 = icmp eq i32 %175, 0
  br i1 %166, label %187, label %177

167:                                              ; preds = %159, %167
  %168 = phi i32 [ %175, %167 ], [ %162, %159 ]
  %169 = phi i32 [ %174, %167 ], [ 0, %159 ]
  %170 = mul i32 %168, %169
  %171 = add i32 %170, %169
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %161, i64 %172
  store i32 0, i32* %173, align 4, !tbaa !7
  %174 = add nuw nsw i32 %169, 1
  %175 = load i32, i32* %20, align 8, !tbaa !9
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %167, label %164, !llvm.loop !26

177:                                              ; preds = %164, %219
  %178 = phi i32 [ %217, %219 ], [ %175, %164 ]
  %179 = phi i32* [ %220, %219 ], [ %165, %164 ]
  %180 = phi i32 [ %216, %219 ], [ 0, %164 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %210, label %182

182:                                              ; preds = %177
  %183 = and i32 %180, 1
  %184 = icmp eq i32 %180, 1
  br i1 %184, label %194, label %185

185:                                              ; preds = %182
  %186 = and i32 %180, 2147483646
  br label %221

187:                                              ; preds = %210, %159, %164
  %188 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 15
  %189 = bitcast %"class.appsdk::HIPCommandArgs"** %188 to %"class.appsdk::SDKCmdArgsParser"**
  %190 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %189, align 8, !tbaa !28
  %191 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %190, i64 0, i32 9
  %192 = load i8, i8* %191, align 4, !tbaa !29, !range !32
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %249, label %311

194:                                              ; preds = %221, %182
  %195 = phi i32 [ undef, %182 ], [ %246, %221 ]
  %196 = phi i32 [ %178, %182 ], [ %246, %221 ]
  %197 = phi i32 [ 0, %182 ], [ %245, %221 ]
  %198 = icmp eq i32 %183, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %194
  %200 = mul i32 %196, %180
  %201 = add i32 %200, %197
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %179, i64 %202
  store i32 %180, i32* %203, align 4, !tbaa !7
  %204 = load i32, i32* %20, align 8, !tbaa !9
  %205 = mul i32 %204, %197
  %206 = add i32 %205, %180
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %179, i64 %207
  store i32 %197, i32* %208, align 4, !tbaa !7
  %209 = load i32, i32* %20, align 8, !tbaa !9
  br label %210

210:                                              ; preds = %199, %194, %177
  %211 = phi i32 [ %178, %177 ], [ %195, %194 ], [ %209, %199 ]
  %212 = mul i32 %211, %180
  %213 = add i32 %212, %180
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %165, i64 %214
  store i32 %180, i32* %215, align 4, !tbaa !7
  %216 = add nuw nsw i32 %180, 1
  %217 = load i32, i32* %20, align 8, !tbaa !9
  %218 = icmp ult i32 %216, %217
  br i1 %218, label %219, label %187, !llvm.loop !33

219:                                              ; preds = %210
  %220 = load i32*, i32** %94, align 8
  br label %177

221:                                              ; preds = %221, %185
  %222 = phi i32 [ %178, %185 ], [ %246, %221 ]
  %223 = phi i32 [ 0, %185 ], [ %245, %221 ]
  %224 = phi i32 [ 0, %185 ], [ %247, %221 ]
  %225 = mul i32 %222, %180
  %226 = add i32 %225, %223
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %179, i64 %227
  store i32 %180, i32* %228, align 4, !tbaa !7
  %229 = load i32, i32* %20, align 8, !tbaa !9
  %230 = mul i32 %229, %223
  %231 = add i32 %230, %180
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %179, i64 %232
  store i32 %223, i32* %233, align 4, !tbaa !7
  %234 = or i32 %223, 1
  %235 = load i32, i32* %20, align 8, !tbaa !9
  %236 = mul i32 %235, %180
  %237 = add i32 %236, %234
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %179, i64 %238
  store i32 %180, i32* %239, align 4, !tbaa !7
  %240 = load i32, i32* %20, align 8, !tbaa !9
  %241 = mul i32 %240, %234
  %242 = add i32 %241, %180
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %179, i64 %243
  store i32 %234, i32* %244, align 4, !tbaa !7
  %245 = add nuw nsw i32 %223, 2
  %246 = load i32, i32* %20, align 8, !tbaa !9
  %247 = add i32 %224, 2
  %248 = icmp eq i32 %247, %186
  br i1 %248, label %194, label %221, !llvm.loop !34

249:                                              ; preds = %187
  %250 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %250) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
          to label %251 unwind label %299

251:                                              ; preds = %249
  %252 = load i32*, i32** %26, align 8, !tbaa !12
  %253 = load i32, i32* %20, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %12, i32* %252, i32 %253, i32 1)
          to label %254 unwind label %301

254:                                              ; preds = %251
  %255 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8, !tbaa !13
  %257 = getelementptr inbounds i8, i8* %256, i64 -24
  %258 = bitcast i8* %257 to %"struct.std::basic_string<char>::_Rep"*
  %259 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %259) #25
  %260 = icmp eq i8* %257, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %260, label %273, label %261, !prof !16

261:                                              ; preds = %254
  %262 = getelementptr inbounds i8, i8* %256, i64 -8
  %263 = bitcast i8* %262 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %264, label %266

264:                                              ; preds = %261
  %265 = atomicrmw volatile add i32* %263, i32 -1 acq_rel, align 4
  br label %269

266:                                              ; preds = %261
  %267 = load i32, i32* %263, align 8, !tbaa !7
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %263, align 8, !tbaa !7
  br label %269

269:                                              ; preds = %266, %264
  %270 = phi i32 [ %265, %264 ], [ %267, %266 ]
  %271 = icmp slt i32 %270, 1
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %258, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %273

273:                                              ; preds = %254, %269, %272
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %259) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %250) #25
  %274 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %274) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %275 unwind label %305

275:                                              ; preds = %273
  %276 = load i32*, i32** %94, align 8, !tbaa !25
  %277 = load i32, i32* %20, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %14, i32* %276, i32 %277, i32 1)
          to label %278 unwind label %307

278:                                              ; preds = %275
  %279 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8, !tbaa !13
  %281 = getelementptr inbounds i8, i8* %280, i64 -24
  %282 = bitcast i8* %281 to %"struct.std::basic_string<char>::_Rep"*
  %283 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %283) #25
  %284 = icmp eq i8* %281, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %284, label %297, label %285, !prof !16

285:                                              ; preds = %278
  %286 = getelementptr inbounds i8, i8* %280, i64 -8
  %287 = bitcast i8* %286 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %288, label %290

288:                                              ; preds = %285
  %289 = atomicrmw volatile add i32* %287, i32 -1 acq_rel, align 4
  br label %293

290:                                              ; preds = %285
  %291 = load i32, i32* %287, align 8, !tbaa !7
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %287, align 8, !tbaa !7
  br label %293

293:                                              ; preds = %290, %288
  %294 = phi i32 [ %289, %288 ], [ %291, %290 ]
  %295 = icmp slt i32 %294, 1
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %282, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %297

297:                                              ; preds = %278, %293, %296
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %283) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %274) #25
  %298 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %189, align 8, !tbaa !28
  br label %311

299:                                              ; preds = %249
  %300 = landingpad { i8*, i32 }
          cleanup
  br label %303

301:                                              ; preds = %251
  %302 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12) #25
  br label %303

303:                                              ; preds = %301, %299
  %304 = phi { i8*, i32 } [ %302, %301 ], [ %300, %299 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %250) #25
  br label %459

305:                                              ; preds = %273
  %306 = landingpad { i8*, i32 }
          cleanup
  br label %309

307:                                              ; preds = %275
  %308 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #25
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi { i8*, i32 } [ %308, %307 ], [ %306, %305 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %274) #25
  br label %459

311:                                              ; preds = %297, %187
  %312 = phi %"class.appsdk::SDKCmdArgsParser"* [ %298, %297 ], [ %190, %187 ]
  %313 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %312, i64 0, i32 10
  %314 = load i8, i8* %313, align 1, !tbaa !35, !range !32
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %457, label %316

316:                                              ; preds = %311
  %317 = load i32, i32* %20, align 8, !tbaa !9
  %318 = mul i32 %317, %317
  %319 = zext i32 %318 to i64
  %320 = shl nuw nsw i64 %319, 2
  %321 = call noalias align 16 i8* @malloc(i64 %320) #25
  %322 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 8
  %323 = bitcast i32** %322 to i8**
  store i8* %321, i8** %323, align 8, !tbaa !36
  %324 = icmp eq i8* %321, null
  br i1 %324, label %325, label %387

325:                                              ; preds = %316
  %326 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %326) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %327 unwind label %381

327:                                              ; preds = %325
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %16)
          to label %328 unwind label %383

328:                                              ; preds = %327
  %329 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8, !tbaa !13
  %331 = getelementptr inbounds i8, i8* %330, i64 -24
  %332 = bitcast i8* %331 to %"struct.std::basic_string<char>::_Rep"*
  %333 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %333) #25
  %334 = icmp eq i8* %331, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %334, label %347, label %335, !prof !16

335:                                              ; preds = %328
  %336 = getelementptr inbounds i8, i8* %330, i64 -8
  %337 = bitcast i8* %336 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %338, label %340

338:                                              ; preds = %335
  %339 = atomicrmw volatile add i32* %337, i32 -1 acq_rel, align 4
  br label %343

340:                                              ; preds = %335
  %341 = load i32, i32* %337, align 8, !tbaa !7
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %337, align 8, !tbaa !7
  br label %343

343:                                              ; preds = %340, %338
  %344 = phi i32 [ %339, %338 ], [ %341, %340 ]
  %345 = icmp slt i32 %344, 1
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %332, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %347

347:                                              ; preds = %328, %343, %346
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %333) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %326) #25
  %348 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %349 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 31)
  %350 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %351 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 290)
  %352 = bitcast %"class.std::basic_ostream"* %351 to i8**
  %353 = load i8*, i8** %352, align 8, !tbaa !17
  %354 = getelementptr i8, i8* %353, i64 -24
  %355 = bitcast i8* %354 to i64*
  %356 = load i64, i64* %355, align 8
  %357 = bitcast %"class.std::basic_ostream"* %351 to i8*
  %358 = getelementptr inbounds i8, i8* %357, i64 %356
  %359 = getelementptr inbounds i8, i8* %358, i64 240
  %360 = bitcast i8* %359 to %"class.std::ctype"**
  %361 = load %"class.std::ctype"*, %"class.std::ctype"** %360, align 8, !tbaa !19
  %362 = icmp eq %"class.std::ctype"* %361, null
  br i1 %362, label %363, label %364

363:                                              ; preds = %347
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

364:                                              ; preds = %347
  %365 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %361, i64 0, i32 8
  %366 = load i8, i8* %365, align 8, !tbaa !22
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %361, i64 0, i32 9, i64 10
  %370 = load i8, i8* %369, align 1, !tbaa !24
  br label %377

371:                                              ; preds = %364
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %361)
  %372 = bitcast %"class.std::ctype"* %361 to i8 (%"class.std::ctype"*, i8)***
  %373 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %372, align 8, !tbaa !17
  %374 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %373, i64 6
  %375 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %374, align 8
  %376 = call signext i8 %375(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %361, i8 signext 10)
  br label %377

377:                                              ; preds = %368, %371
  %378 = phi i8 [ %370, %368 ], [ %376, %371 ]
  %379 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %351, i8 signext %378)
  %380 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %379)
  br label %457

381:                                              ; preds = %325
  %382 = landingpad { i8*, i32 }
          cleanup
  br label %385

383:                                              ; preds = %327
  %384 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16) #25
  br label %385

385:                                              ; preds = %383, %381
  %386 = phi { i8*, i32 } [ %384, %383 ], [ %382, %381 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %326) #25
  br label %459

387:                                              ; preds = %316
  %388 = call noalias align 16 i8* @malloc(i64 %320) #25
  %389 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 9
  %390 = bitcast i32** %389 to i8**
  store i8* %388, i8** %390, align 8, !tbaa !37
  %391 = icmp eq i8* %388, null
  br i1 %391, label %392, label %454

392:                                              ; preds = %387
  %393 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %393) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %394 unwind label %448

394:                                              ; preds = %392
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %18)
          to label %395 unwind label %450

395:                                              ; preds = %394
  %396 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %397 = load i8*, i8** %396, align 8, !tbaa !13
  %398 = getelementptr inbounds i8, i8* %397, i64 -24
  %399 = bitcast i8* %398 to %"struct.std::basic_string<char>::_Rep"*
  %400 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %400) #25
  %401 = icmp eq i8* %398, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %401, label %414, label %402, !prof !16

402:                                              ; preds = %395
  %403 = getelementptr inbounds i8, i8* %397, i64 -8
  %404 = bitcast i8* %403 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %405, label %407

405:                                              ; preds = %402
  %406 = atomicrmw volatile add i32* %404, i32 -1 acq_rel, align 4
  br label %410

407:                                              ; preds = %402
  %408 = load i32, i32* %404, align 8, !tbaa !7
  %409 = add nsw i32 %408, -1
  store i32 %409, i32* %404, align 8, !tbaa !7
  br label %410

410:                                              ; preds = %407, %405
  %411 = phi i32 [ %406, %405 ], [ %408, %407 ]
  %412 = icmp slt i32 %411, 1
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %399, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %414

414:                                              ; preds = %395, %410, %413
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %400) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %393) #25
  %415 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %416 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 31)
  %417 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %418 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 295)
  %419 = bitcast %"class.std::basic_ostream"* %418 to i8**
  %420 = load i8*, i8** %419, align 8, !tbaa !17
  %421 = getelementptr i8, i8* %420, i64 -24
  %422 = bitcast i8* %421 to i64*
  %423 = load i64, i64* %422, align 8
  %424 = bitcast %"class.std::basic_ostream"* %418 to i8*
  %425 = getelementptr inbounds i8, i8* %424, i64 %423
  %426 = getelementptr inbounds i8, i8* %425, i64 240
  %427 = bitcast i8* %426 to %"class.std::ctype"**
  %428 = load %"class.std::ctype"*, %"class.std::ctype"** %427, align 8, !tbaa !19
  %429 = icmp eq %"class.std::ctype"* %428, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %414
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

431:                                              ; preds = %414
  %432 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %428, i64 0, i32 8
  %433 = load i8, i8* %432, align 8, !tbaa !22
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %428, i64 0, i32 9, i64 10
  %437 = load i8, i8* %436, align 1, !tbaa !24
  br label %444

438:                                              ; preds = %431
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %428)
  %439 = bitcast %"class.std::ctype"* %428 to i8 (%"class.std::ctype"*, i8)***
  %440 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %439, align 8, !tbaa !17
  %441 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %440, i64 6
  %442 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %441, align 8
  %443 = call signext i8 %442(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %428, i8 signext 10)
  br label %444

444:                                              ; preds = %435, %438
  %445 = phi i8 [ %437, %435 ], [ %443, %438 ]
  %446 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %418, i8 signext %445)
  %447 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %446)
  br label %457

448:                                              ; preds = %392
  %449 = landingpad { i8*, i32 }
          cleanup
  br label %452

450:                                              ; preds = %394
  %451 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #25
  br label %452

452:                                              ; preds = %450, %448
  %453 = phi { i8*, i32 } [ %451, %450 ], [ %449, %448 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %393) #25
  br label %459

454:                                              ; preds = %387
  %455 = load i8*, i8** %27, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %321, i8* align 4 %455, i64 %320, i1 false)
  %456 = load i8*, i8** %95, align 8, !tbaa !25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %388, i8* align 4 %456, i64 %320, i1 false)
  br label %457

457:                                              ; preds = %311, %454, %444, %377, %149, %82
  %458 = phi i32 [ 1, %82 ], [ 1, %149 ], [ 1, %377 ], [ 1, %444 ], [ 0, %454 ], [ 0, %311 ]
  ret i32 %458

459:                                              ; preds = %452, %385, %309, %303, %157, %90
  %460 = phi { i8*, i32 } [ %91, %90 ], [ %158, %157 ], [ %386, %385 ], [ %453, %452 ], [ %310, %309 ], [ %304, %303 ]
  resume { i8*, i32 } %460
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #8 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !38
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
define linkonce_odr dso_local i32 @_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = icmp eq i32* %0, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
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
  %42 = sub i32 %4, %3
  %43 = uitofp i32 %42 to double
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
  %62 = fptoui double %61 to i32
  %63 = add i32 %62, %3
  %64 = getelementptr inbounds i32, i32* %0, i64 %57
  store i32 %63, i32* %64, align 4, !tbaa !7
  %65 = add nuw nsw i64 %56, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %67, label %55, !llvm.loop !41

67:                                               ; preds = %55
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %50
  br i1 %69, label %70, label %52, !llvm.loop !42

70:                                               ; preds = %67, %40, %32
  %71 = phi i32 [ 1, %32 ], [ 0, %40 ], [ 0, %67 ]
  ret i32 %71
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* %0, i32* %1, i32 %2, i32 %3) local_unnamed_addr #8 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !38
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %7, i64 %10)
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 1)
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
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = zext i32 %27 to i64
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !43

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !44

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !44

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN13FloydWarshall8setupHIPEv(%class.FloydWarshall* nocapture nonnull readnone align 8 %0) local_unnamed_addr #8 align 2 {
  %2 = alloca %struct.hipDeviceProp_t, align 8
  %3 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %3) #25
  %4 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %2, i32 0)
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i64 14)
  %6 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 13
  %7 = load i32, i32* %6, align 4, !tbaa !45
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
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 14)
  %39 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 12
  %40 = load i32, i32* %39, align 8, !tbaa !48
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
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i64 17)
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
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %3) #25
  ret i32 0
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN13FloydWarshall10runKernelsEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim3, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [4 x i8*], align 16
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.ihipEvent_t*, align 8
  %14 = alloca %struct.ihipEvent_t*, align 8
  %15 = alloca float, align 4
  %16 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 5
  %17 = load i32, i32* %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 13
  %19 = load i32, i32* %18, align 4, !tbaa !49
  %20 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 2
  store double 0.000000e+00, double* %20, align 8, !tbaa !50
  %21 = mul i32 %19, %19
  %22 = icmp ugt i32 %21, 256
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 4, i32* %18, align 4, !tbaa !49
  br label %24

24:                                               ; preds = %23, %1
  %25 = phi i32 [ 4, %23 ], [ %19, %1 ]
  %26 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 10
  %27 = bitcast i32** %26 to i8**
  %28 = zext i32 %17 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = mul i64 %29, %28
  %31 = tail call i32 @hipHostMalloc(i8** nonnull %27, i64 %30, i32 0)
  %32 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 11
  %33 = bitcast i32** %32 to i8**
  %34 = load i32, i32* %16, align 8, !tbaa !9
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 2
  %37 = mul i64 %36, %35
  %38 = tail call i32 @hipHostMalloc(i8** nonnull %33, i64 %37, i32 0)
  %39 = bitcast float** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #25
  %40 = bitcast float** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #25
  %41 = bitcast float** %11 to i8**
  %42 = load i8*, i8** %27, align 8, !tbaa !51
  %43 = call i32 @hipHostGetDevicePointer(i8** nonnull %41, i8* %42, i32 0)
  %44 = bitcast float** %12 to i8**
  %45 = load i8*, i8** %33, align 8, !tbaa !52
  %46 = call i32 @hipHostGetDevicePointer(i8** nonnull %44, i8* %45, i32 0)
  %47 = load i8*, i8** %41, align 8, !tbaa !3
  %48 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 6
  %49 = bitcast i32** %48 to i8**
  %50 = load i8*, i8** %49, align 8, !tbaa !12
  %51 = load i32, i32* %16, align 8, !tbaa !9
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 2
  %54 = mul i64 %53, %52
  %55 = call i32 @hipMemcpy(i8* %47, i8* %50, i64 %54, i32 1)
  %56 = bitcast %struct.ihipEvent_t** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #25
  %57 = bitcast %struct.ihipEvent_t** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #25
  %58 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %13)
  %59 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %14)
  %60 = bitcast float* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %60) #25
  store float 1.000000e+00, float* %15, align 4, !tbaa !53
  %61 = zext i32 %25 to i64
  %62 = mul nuw i64 %61, 4294967297
  %63 = bitcast i32** %2 to i8*
  %64 = bitcast i32** %3 to i8*
  %65 = bitcast i32* %4 to i8*
  %66 = bitcast i32* %5 to i8*
  %67 = bitcast %struct.dim3* %6 to i8*
  %68 = bitcast %struct.dim3* %7 to i8*
  %69 = bitcast i64* %8 to i8*
  %70 = bitcast i8** %9 to i8*
  %71 = bitcast [4 x i8*]* %10 to i8*
  %72 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %73 = bitcast [4 x i8*]* %10 to i32***
  %74 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  %75 = bitcast i8** %74 to i32***
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  %77 = bitcast i8** %76 to i32**
  %78 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  %79 = bitcast i8** %78 to i32**
  %80 = bitcast i8** %9 to %struct.ihipStream_t**
  %81 = bitcast %struct.dim3* %6 to i64*
  %82 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %83 = bitcast %struct.dim3* %7 to i64*
  %84 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %85 = icmp eq i32 %17, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %124, %24
  %87 = load i8*, i8** %49, align 8, !tbaa !12
  %88 = load i8*, i8** %41, align 8, !tbaa !3
  %89 = load i32, i32* %16, align 8, !tbaa !9
  %90 = mul i32 %89, %89
  %91 = zext i32 %90 to i64
  %92 = shl nuw nsw i64 %91, 2
  %93 = call i32 @hipMemcpy(i8* %87, i8* %88, i64 %92, i32 2)
  %94 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 7
  %95 = bitcast i32** %94 to i8**
  %96 = load i8*, i8** %95, align 8, !tbaa !25
  %97 = load i8*, i8** %44, align 8, !tbaa !3
  %98 = load i32, i32* %16, align 8, !tbaa !9
  %99 = mul i32 %98, %98
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 2
  %102 = call i32 @hipMemcpy(i8* %96, i8* %97, i64 %101, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %60) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #25
  ret i32 0

103:                                              ; preds = %24, %124
  %104 = phi i32 [ %135, %124 ], [ 0, %24 ]
  %105 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %13, align 8, !tbaa !3
  %106 = call i32 @hipEventRecord(%struct.ihipEvent_t* %105, %struct.ihipStream_t* null)
  %107 = udiv i32 %17, %25
  %108 = zext i32 %107 to i64
  %109 = mul nuw i64 %108, 4294967297
  %110 = call i32 @__hipPushCallConfiguration(i64 %109, i32 1, i64 %62, i32 1, i64 0, %struct.ihipStream_t* null)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %103
  %113 = load i32*, i32** %26, align 8, !tbaa !51
  %114 = load i32*, i32** %32, align 8, !tbaa !52
  %115 = load i32, i32* %16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %65)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %67)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %68)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %71)
  store i32* %113, i32** %2, align 8, !tbaa !3
  store i32* %114, i32** %3, align 8, !tbaa !3
  store i32 %115, i32* %4, align 4, !tbaa !7
  store i32 %104, i32* %5, align 4, !tbaa !7
  store i32** %2, i32*** %73, align 16
  store i32** %3, i32*** %75, align 8
  store i32* %4, i32** %77, align 16
  store i32* %5, i32** %79, align 8
  %116 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %6, %struct.dim3* nonnull %7, i64* nonnull %8, i8** nonnull %9)
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.ihipStream_t*, %struct.ihipStream_t** %80, align 8
  %119 = load i64, i64* %81, align 8
  %120 = load i32, i32* %82, align 8
  %121 = load i64, i64* %83, align 8
  %122 = load i32, i32* %84, align 8
  %123 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32, i32)** @_Z17floydWarshallPassPjS_jj to i8*), i64 %119, i32 %120, i64 %121, i32 %122, i8** nonnull %72, i64 %117, %struct.ihipStream_t* %118)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %67)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %68)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %71)
  br label %124

124:                                              ; preds = %112, %103
  %125 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !3
  %126 = call i32 @hipEventRecord(%struct.ihipEvent_t* %125, %struct.ihipStream_t* null)
  %127 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !3
  %128 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %127)
  %129 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %13, align 8, !tbaa !3
  %130 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !3
  %131 = call i32 @hipEventElapsedTime(float* nonnull %15, %struct.ihipEvent_t* %129, %struct.ihipEvent_t* %130)
  %132 = load float, float* %15, align 4, !tbaa !53
  %133 = fpext float %132 to double
  %134 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), double %133)
  %135 = add nuw i32 %104, 1
  %136 = icmp eq i32 %135, %17
  br i1 %136, label %86, label %103, !llvm.loop !55
}

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @_ZN13FloydWarshall7minimumEjj(%class.FloydWarshall* nocapture nonnull readnone align 8 dereferenceable(120) %0, i32 %1, i32 %2) local_unnamed_addr #12 align 2 {
  %4 = icmp ult i32 %2, %1
  %5 = select i1 %4, i32 %2, i32 %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN13FloydWarshall25floydWarshallCPUReferenceEPjS0_j(%class.FloydWarshall* nocapture nonnull readnone align 8 %0, i32* nocapture %1, i32* nocapture writeonly %2, i32 %3) local_unnamed_addr #13 align 2 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi i32 [ %13, %12 ], [ 0, %6 ]
  %10 = mul i32 %9, %3
  br label %15

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %22
  %13 = add nuw i32 %9, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %11, label %8, !llvm.loop !56

15:                                               ; preds = %8, %22
  %16 = phi i64 [ 0, %8 ], [ %23, %22 ]
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %17, %3
  %19 = add i32 %18, %9
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %1, i64 %20
  br label %25

22:                                               ; preds = %41
  %23 = add nuw nsw i64 %16, 1
  %24 = icmp eq i64 %23, %7
  br i1 %24, label %12, label %15, !llvm.loop !57

25:                                               ; preds = %15, %41
  %26 = phi i64 [ 0, %15 ], [ %42, %41 ]
  %27 = trunc i64 %26 to i32
  %28 = add i32 %18, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %1, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = load i32, i32* %21, align 4, !tbaa !7
  %33 = add i32 %10, %27
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %1, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = add i32 %36, %32
  %38 = icmp ult i32 %37, %31
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  store i32 %37, i32* %30, align 4, !tbaa !7
  %40 = getelementptr inbounds i32, i32* %2, i64 %29
  store i32 %9, i32* %40, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %25, %39
  %42 = add nuw nsw i64 %26, 1
  %43 = icmp eq i64 %42, %7
  br i1 %43, label %22, label %25, !llvm.loop !58
}

; Function Attrs: uwtable
define dso_local i32 @_ZN13FloydWarshall10initializeEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 15
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !28
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !59
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 5)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i64 15)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 5
  %21 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %22 = bitcast i8** %21 to i32**
  store i32* %20, i32** %22, align 8, !tbaa !63
  %23 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %24 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !28
  %25 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %24, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #25
  tail call void @_ZdlPv(i8* nonnull %7) #28
  %26 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %27 = bitcast i8* %26 to %"struct.appsdk::Option"*
  %28 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %28, align 8, !tbaa !59
  %29 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !59
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !59
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !59
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0
  %33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1
  %35 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 10)
  %36 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i64 41)
  %38 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 4
  store i32 0, i32* %38, align 8, !tbaa !60
  %39 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 12
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 5
  %41 = bitcast i8** %40 to i32**
  store i32* %39, i32** %41, align 8, !tbaa !63
  %42 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !28
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
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !59
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !59
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !59
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !59
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !59
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !59
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !59
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !59
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !59
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !59
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !59
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !59
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !59
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !59
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !59
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !59
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !59
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !59
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !59
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !59
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !60
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !63
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !63
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !60
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !63
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !60
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !63
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.49, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !60
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !63
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !64
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !65
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #15

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, %"struct.appsdk::Option"* %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"struct.appsdk::Option"* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !65
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !64
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
  store i8* %21, i8** %25, align 8, !tbaa !65
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !59
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !59
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !59
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !59
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !65
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
  %59 = load i32, i32* %10, align 8, !tbaa !64
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !65
  br i1 %61, label %39, label %63, !llvm.loop !66

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
  %83 = load i32, i32* %10, align 8, !tbaa !64
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !64
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
define linkonce_odr dso_local void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
define dso_local i32 @_ZN13FloydWarshall5setupEv(%class.FloydWarshall* nocapture nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 13
  %9 = load i32, i32* %8, align 4, !tbaa !49
  %10 = urem i32 %7, %9
  %11 = udiv i32 %7, %9
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = add i32 %11, 1
  %15 = mul i32 %14, %9
  store i32 %15, i32* %6, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %13, %1
  %17 = tail call i32 @_ZN13FloydWarshall18setupFloydWarshallEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %93

19:                                               ; preds = %16
  %20 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 14
  %21 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %20, align 8, !tbaa !67
  %22 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %21)
  %23 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %20, align 8, !tbaa !67
  %24 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24)
  %25 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %23, i64 0, i32 0, i32 0, i32 0, i32 1
  %26 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %25, align 8, !tbaa !68
  %27 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %23, i64 0, i32 0, i32 0, i32 0, i32 0
  %28 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %27, align 8, !tbaa !71
  %29 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %26 to i64
  %30 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %28 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 3
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %22, %33
  br i1 %34, label %78, label %35

35:                                               ; preds = %19
  %36 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %36) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %37 unwind label %57

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !13
  %40 = getelementptr inbounds i8, i8* %39, i64 -24
  %41 = bitcast i8* %40 to %"struct.std::basic_string<char>::_Rep"*
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #25
  %43 = icmp eq i8* %40, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %43, label %56, label %44, !prof !16

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, i8* %39, i64 -8
  %46 = bitcast i8* %45 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %47, label %49

47:                                               ; preds = %44
  %48 = atomicrmw volatile add i32* %46, i32 -1 acq_rel, align 4
  br label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %46, align 8, !tbaa !7
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %46, align 8, !tbaa !7
  br label %52

52:                                               ; preds = %49, %47
  %53 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %41, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %56

56:                                               ; preds = %55, %52, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %36) #25
  br label %84

57:                                               ; preds = %35
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8, !tbaa !13
  %61 = getelementptr inbounds i8, i8* %60, i64 -24
  %62 = bitcast i8* %61 to %"struct.std::basic_string<char>::_Rep"*
  %63 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %63) #25
  %64 = icmp eq i8* %61, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %64, label %77, label %65, !prof !16

65:                                               ; preds = %57
  %66 = getelementptr inbounds i8, i8* %60, i64 -8
  %67 = bitcast i8* %66 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %68, label %70

68:                                               ; preds = %65
  %69 = atomicrmw volatile add i32* %67, i32 -1 acq_rel, align 4
  br label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %67, align 8, !tbaa !7
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %67, align 8, !tbaa !7
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %62, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %77

77:                                               ; preds = %57, %73, %76
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %63) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %36) #25
  resume { i8*, i32 } %58

78:                                               ; preds = %19
  %79 = sext i32 %22 to i64
  %80 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %28, i64 %79
  %81 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %80, align 8, !tbaa !3
  %82 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %81, i64 0, i32 2
  %83 = bitcast i64* %82 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %83, i8 0, i64 16, i1 false)
  br label %84

84:                                               ; preds = %56, %78
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24)
  %85 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %20, align 8, !tbaa !67
  %86 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %85, i32 %22)
  %87 = call i32 @_ZN13FloydWarshall8setupHIPEv(%class.FloydWarshall* nonnull align 8 undef)
  %88 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %20, align 8, !tbaa !67
  %89 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %88, i32 %22)
  %90 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %20, align 8, !tbaa !67
  %91 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %90, i32 %22)
  %92 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 1
  store double %91, double* %92, align 8, !tbaa !72
  br label %93

93:                                               ; preds = %16, %84
  %94 = phi i32 [ 0, %84 ], [ 1, %16 ]
  ret i32 %94
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !76
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !68
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !68
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !71
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !71
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
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !71
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
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !68
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
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !71
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !68
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !76
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !71
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
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
  %45 = load i64, i64* %44, align 8, !tbaa !77
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !79
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !71
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !80
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !71
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
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
  %45 = load i64, i64* %44, align 8, !tbaa !77
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !79
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !71
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !80
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !80
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !81
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !81
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
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !71
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
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
  %45 = load i64, i64* %44, align 8, !tbaa !81
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !73
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN13FloydWarshall3runEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 12
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @_ZN13FloydWarshall10runKernelsEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %0)
  %16 = load i32, i32* %11, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @_ZN13FloydWarshall10runKernelsEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %0)
  br label %20

20:                                               ; preds = %14, %18, %1
  %21 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i64 21)
  %22 = load i32, i32* %11, align 8, !tbaa !82
  %23 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %22)
  %24 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %23, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i64 11)
  %25 = bitcast %"class.std::basic_ostream"* %23 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !17
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = bitcast %"class.std::basic_ostream"* %23 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  %32 = getelementptr inbounds i8, i8* %31, i64 240
  %33 = bitcast i8* %32 to %"class.std::ctype"**
  %34 = load %"class.std::ctype"*, %"class.std::ctype"** %33, align 8, !tbaa !19
  %35 = icmp eq %"class.std::ctype"* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

37:                                               ; preds = %20
  %38 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %34, i64 0, i32 8
  %39 = load i8, i8* %38, align 8, !tbaa !22
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %34, i64 0, i32 9, i64 10
  %43 = load i8, i8* %42, align 1, !tbaa !24
  br label %50

44:                                               ; preds = %37
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %34)
  %45 = bitcast %"class.std::ctype"* %34 to i8 (%"class.std::ctype"*, i8)***
  %46 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %45, align 8, !tbaa !17
  %47 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %46, i64 6
  %48 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %47, align 8
  %49 = tail call signext i8 %48(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %34, i8 signext 10)
  br label %50

50:                                               ; preds = %41, %44
  %51 = phi i8 [ %43, %41 ], [ %49, %44 ]
  %52 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %23, i8 signext %51)
  %53 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %52)
  %54 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i64 43)
  %55 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %56 = getelementptr i8, i8* %55, i64 -24
  %57 = bitcast i8* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 240
  %61 = bitcast i8* %60 to %"class.std::ctype"**
  %62 = load %"class.std::ctype"*, %"class.std::ctype"** %61, align 8, !tbaa !19
  %63 = icmp eq %"class.std::ctype"* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

65:                                               ; preds = %50
  %66 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i64 0, i32 8
  %67 = load i8, i8* %66, align 8, !tbaa !22
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i64 0, i32 9, i64 10
  %71 = load i8, i8* %70, align 1, !tbaa !24
  br label %78

72:                                               ; preds = %65
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %62)
  %73 = bitcast %"class.std::ctype"* %62 to i8 (%"class.std::ctype"*, i8)***
  %74 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %73, align 8, !tbaa !17
  %75 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %74, i64 6
  %76 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %75, align 8
  %77 = tail call signext i8 %76(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %62, i8 signext 10)
  br label %78

78:                                               ; preds = %69, %72
  %79 = phi i8 [ %71, %69 ], [ %77, %72 ]
  %80 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %79)
  %81 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %80)
  %82 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 14
  %83 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !67
  %84 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %83)
  %85 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !67
  %86 = bitcast %"class.std::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86)
  %87 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %85, i64 0, i32 0, i32 0, i32 0, i32 1
  %88 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %87, align 8, !tbaa !68
  %89 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %85, i64 0, i32 0, i32 0, i32 0, i32 0
  %90 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %89, align 8, !tbaa !71
  %91 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %88 to i64
  %92 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %90 to i64
  %93 = sub i64 %91, %92
  %94 = lshr exact i64 %93, 3
  %95 = trunc i64 %94 to i32
  %96 = icmp slt i32 %84, %95
  br i1 %96, label %123, label %97

97:                                               ; preds = %78
  %98 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %98) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %5)
          to label %99 unwind label %121

99:                                               ; preds = %97
  %100 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i64 0, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !13
  %102 = getelementptr inbounds i8, i8* %101, i64 -24
  %103 = bitcast i8* %102 to %"struct.std::basic_string<char>::_Rep"*
  %104 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %104) #25
  %105 = icmp eq i8* %102, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %105, label %118, label %106, !prof !16

106:                                              ; preds = %99
  %107 = getelementptr inbounds i8, i8* %101, i64 -8
  %108 = bitcast i8* %107 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %109, label %111

109:                                              ; preds = %106
  %110 = atomicrmw volatile add i32* %108, i32 -1 acq_rel, align 4
  br label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %108, align 8, !tbaa !7
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %108, align 8, !tbaa !7
  br label %114

114:                                              ; preds = %111, %109
  %115 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %103, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %118

118:                                              ; preds = %117, %114, %99
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %104) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #25
  br label %129

119:                                              ; preds = %211, %217, %121
  %120 = phi { i8*, i32 } [ %122, %121 ], [ %218, %217 ], [ %212, %211 ]
  resume { i8*, i32 } %120

121:                                              ; preds = %97
  %122 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #25
  br label %119

123:                                              ; preds = %78
  %124 = sext i32 %84 to i64
  %125 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %90, i64 %124
  %126 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %125, align 8, !tbaa !3
  %127 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %126, i64 0, i32 2
  %128 = bitcast i64* %127 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %128, i8 0, i64 16, i1 false)
  br label %129

129:                                              ; preds = %118, %123
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86)
  %130 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !67
  %131 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %130, i32 %84)
  %132 = load i32, i32* %11, align 8, !tbaa !82
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129, %134
  %135 = phi i32 [ %137, %134 ], [ 0, %129 ]
  %136 = call i32 @_ZN13FloydWarshall10runKernelsEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %0)
  %137 = add nuw nsw i32 %135, 1
  %138 = load i32, i32* %11, align 8, !tbaa !82
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %134, label %140, !llvm.loop !83

140:                                              ; preds = %134, %129
  %141 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !67
  %142 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %141, i32 %84)
  %143 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %82, align 8, !tbaa !67
  %144 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %143, i32 %84)
  %145 = load i32, i32* %11, align 8, !tbaa !82
  %146 = sitofp i32 %145 to double
  %147 = fdiv contract double %144, %146
  %148 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 2
  store double %147, double* %148, align 8, !tbaa !50
  %149 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 15
  %150 = bitcast %"class.appsdk::HIPCommandArgs"** %149 to %"class.appsdk::SDKCmdArgsParser"**
  %151 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %150, align 8, !tbaa !28
  %152 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %151, i64 0, i32 9
  %153 = load i8, i8* %152, align 4, !tbaa !29, !range !32
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %219

155:                                              ; preds = %140
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8)
          to label %157 unwind label %207

157:                                              ; preds = %155
  %158 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 6
  %159 = load i32*, i32** %158, align 8, !tbaa !12
  %160 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 5
  %161 = load i32, i32* %160, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %7, i32* %159, i32 %161, i32 1)
          to label %162 unwind label %209

162:                                              ; preds = %157
  %163 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %7, i64 0, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8, !tbaa !13
  %165 = getelementptr inbounds i8, i8* %164, i64 -24
  %166 = bitcast i8* %165 to %"struct.std::basic_string<char>::_Rep"*
  %167 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %167) #25
  %168 = icmp eq i8* %165, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %168, label %181, label %169, !prof !16

169:                                              ; preds = %162
  %170 = getelementptr inbounds i8, i8* %164, i64 -8
  %171 = bitcast i8* %170 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %172, label %174

172:                                              ; preds = %169
  %173 = atomicrmw volatile add i32* %171, i32 -1 acq_rel, align 4
  br label %177

174:                                              ; preds = %169
  %175 = load i32, i32* %171, align 8, !tbaa !7
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %171, align 8, !tbaa !7
  br label %177

177:                                              ; preds = %174, %172
  %178 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %179 = icmp slt i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %166, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %181

181:                                              ; preds = %162, %177, %180
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %167) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #25
  %182 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %182) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10)
          to label %183 unwind label %213

183:                                              ; preds = %181
  %184 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 7
  %185 = load i32*, i32** %184, align 8, !tbaa !25
  %186 = load i32, i32* %160, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %9, i32* %185, i32 %186, i32 1)
          to label %187 unwind label %215

187:                                              ; preds = %183
  %188 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i64 0, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8, !tbaa !13
  %190 = getelementptr inbounds i8, i8* %189, i64 -24
  %191 = bitcast i8* %190 to %"struct.std::basic_string<char>::_Rep"*
  %192 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %192) #25
  %193 = icmp eq i8* %190, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %193, label %206, label %194, !prof !16

194:                                              ; preds = %187
  %195 = getelementptr inbounds i8, i8* %189, i64 -8
  %196 = bitcast i8* %195 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %197, label %199

197:                                              ; preds = %194
  %198 = atomicrmw volatile add i32* %196, i32 -1 acq_rel, align 4
  br label %202

199:                                              ; preds = %194
  %200 = load i32, i32* %196, align 8, !tbaa !7
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %196, align 8, !tbaa !7
  br label %202

202:                                              ; preds = %199, %197
  %203 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %191, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %206

206:                                              ; preds = %187, %202, %205
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %192) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %182) #25
  br label %219

207:                                              ; preds = %155
  %208 = landingpad { i8*, i32 }
          cleanup
  br label %211

209:                                              ; preds = %157
  %210 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #25
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi { i8*, i32 } [ %210, %209 ], [ %208, %207 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #25
  br label %119

213:                                              ; preds = %181
  %214 = landingpad { i8*, i32 }
          cleanup
  br label %217

215:                                              ; preds = %183
  %216 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #25
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi { i8*, i32 } [ %216, %215 ], [ %214, %213 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %182) #25
  br label %119

219:                                              ; preds = %206, %140
  ret i32 0
}

; Function Attrs: uwtable
define dso_local i32 @_ZN13FloydWarshall13verifyResultsEv(%class.FloydWarshall* nocapture nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 15
  %7 = bitcast %"class.appsdk::HIPCommandArgs"** %6 to %"class.appsdk::SDKCmdArgsParser"**
  %8 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %8, i64 0, i32 10
  %10 = load i8, i8* %9, align 1, !tbaa !35, !range !32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %234, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 14
  %14 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !67
  %15 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %14)
  %16 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !67
  %17 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  %18 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %16, i64 0, i32 0, i32 0, i32 0, i32 1
  %19 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %18, align 8, !tbaa !68
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %16, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !71
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
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
  %78 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !67
  %79 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %78, i32 %15)
  %80 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 8
  %81 = load i32*, i32** %80, align 8, !tbaa !36
  %82 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 9
  %83 = load i32*, i32** %82, align 8, !tbaa !37
  %84 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 5
  %85 = load i32, i32* %84, align 8, !tbaa !9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %124, label %87

87:                                               ; preds = %77
  %88 = zext i32 %85 to i64
  br label %89

89:                                               ; preds = %92, %87
  %90 = phi i32 [ %93, %92 ], [ 0, %87 ]
  %91 = mul i32 %90, %85
  br label %95

92:                                               ; preds = %102
  %93 = add nuw i32 %90, 1
  %94 = icmp eq i32 %93, %85
  br i1 %94, label %124, label %89, !llvm.loop !56

95:                                               ; preds = %102, %89
  %96 = phi i64 [ 0, %89 ], [ %103, %102 ]
  %97 = trunc i64 %96 to i32
  %98 = mul i32 %85, %97
  %99 = add i32 %98, %90
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %81, i64 %100
  br label %105

102:                                              ; preds = %121
  %103 = add nuw nsw i64 %96, 1
  %104 = icmp eq i64 %103, %88
  br i1 %104, label %92, label %95, !llvm.loop !57

105:                                              ; preds = %121, %95
  %106 = phi i64 [ 0, %95 ], [ %122, %121 ]
  %107 = trunc i64 %106 to i32
  %108 = add i32 %98, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %81, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !7
  %112 = load i32, i32* %101, align 4, !tbaa !7
  %113 = add i32 %91, %107
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %81, i64 %114
  %116 = load i32, i32* %115, align 4, !tbaa !7
  %117 = add i32 %116, %112
  %118 = icmp ult i32 %117, %111
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  store i32 %117, i32* %110, align 4, !tbaa !7
  %120 = getelementptr inbounds i32, i32* %83, i64 %109
  store i32 %90, i32* %120, align 4, !tbaa !7
  br label %121

121:                                              ; preds = %119, %105
  %122 = add nuw nsw i64 %106, 1
  %123 = icmp eq i64 %122, %88
  br i1 %123, label %102, label %105, !llvm.loop !58

124:                                              ; preds = %92, %77
  %125 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !67
  %126 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %125, i32 %15)
  %127 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !67
  %128 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %127, i32 %15)
  %129 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 4
  store double %128, double* %129, align 8, !tbaa !84
  %130 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %7, align 8, !tbaa !28
  %131 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %130, i64 0, i32 11
  %132 = load i8, i8* %131, align 2, !tbaa !85, !range !32
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %167, label %134

134:                                              ; preds = %124
  %135 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i64 9)
  %136 = load double, double* %129, align 8, !tbaa !84
  %137 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %136)
  %138 = bitcast %"class.std::basic_ostream"* %137 to i8**
  %139 = load i8*, i8** %138, align 8, !tbaa !17
  %140 = getelementptr i8, i8* %139, i64 -24
  %141 = bitcast i8* %140 to i64*
  %142 = load i64, i64* %141, align 8
  %143 = bitcast %"class.std::basic_ostream"* %137 to i8*
  %144 = getelementptr inbounds i8, i8* %143, i64 %142
  %145 = getelementptr inbounds i8, i8* %144, i64 240
  %146 = bitcast i8* %145 to %"class.std::ctype"**
  %147 = load %"class.std::ctype"*, %"class.std::ctype"** %146, align 8, !tbaa !19
  %148 = icmp eq %"class.std::ctype"* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %134
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

150:                                              ; preds = %134
  %151 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %147, i64 0, i32 8
  %152 = load i8, i8* %151, align 8, !tbaa !22
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %147, i64 0, i32 9, i64 10
  %156 = load i8, i8* %155, align 1, !tbaa !24
  br label %163

157:                                              ; preds = %150
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %147)
  %158 = bitcast %"class.std::ctype"* %147 to i8 (%"class.std::ctype"*, i8)***
  %159 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %158, align 8, !tbaa !17
  %160 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %159, i64 6
  %161 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %160, align 8
  %162 = call signext i8 %161(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %147, i8 signext 10)
  br label %163

163:                                              ; preds = %154, %157
  %164 = phi i8 [ %156, %154 ], [ %162, %157 ]
  %165 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %137, i8 signext %164)
  %166 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %165)
  br label %167

167:                                              ; preds = %163, %124
  %168 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 6
  %169 = bitcast i32** %168 to i8**
  %170 = load i8*, i8** %169, align 8, !tbaa !12
  %171 = bitcast i32** %80 to i8**
  %172 = load i8*, i8** %171, align 8, !tbaa !36
  %173 = load i32, i32* %84, align 8, !tbaa !9
  %174 = mul i32 %173, %173
  %175 = zext i32 %174 to i64
  %176 = shl nuw nsw i64 %175, 2
  %177 = call i32 @bcmp(i8* %170, i8* %172, i64 %176)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %167
  %180 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i64 8)
  %181 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %182 = getelementptr i8, i8* %181, i64 -24
  %183 = bitcast i8* %182 to i64*
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %184
  %186 = getelementptr inbounds i8, i8* %185, i64 240
  %187 = bitcast i8* %186 to %"class.std::ctype"**
  %188 = load %"class.std::ctype"*, %"class.std::ctype"** %187, align 8, !tbaa !19
  %189 = icmp eq %"class.std::ctype"* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

191:                                              ; preds = %179
  %192 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %188, i64 0, i32 8
  %193 = load i8, i8* %192, align 8, !tbaa !22
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %188, i64 0, i32 9, i64 10
  %197 = load i8, i8* %196, align 1, !tbaa !24
  br label %229

198:                                              ; preds = %191
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %188)
  %199 = bitcast %"class.std::ctype"* %188 to i8 (%"class.std::ctype"*, i8)***
  %200 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %199, align 8, !tbaa !17
  %201 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %200, i64 6
  %202 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %201, align 8
  %203 = call signext i8 %202(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %188, i8 signext 10)
  br label %229

204:                                              ; preds = %167
  %205 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 7)
  %206 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %207 = getelementptr i8, i8* %206, i64 -24
  %208 = bitcast i8* %207 to i64*
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %209
  %211 = getelementptr inbounds i8, i8* %210, i64 240
  %212 = bitcast i8* %211 to %"class.std::ctype"**
  %213 = load %"class.std::ctype"*, %"class.std::ctype"** %212, align 8, !tbaa !19
  %214 = icmp eq %"class.std::ctype"* %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

216:                                              ; preds = %204
  %217 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %213, i64 0, i32 8
  %218 = load i8, i8* %217, align 8, !tbaa !22
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %213, i64 0, i32 9, i64 10
  %222 = load i8, i8* %221, align 1, !tbaa !24
  br label %229

223:                                              ; preds = %216
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %213)
  %224 = bitcast %"class.std::ctype"* %213 to i8 (%"class.std::ctype"*, i8)***
  %225 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %224, align 8, !tbaa !17
  %226 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %225, i64 6
  %227 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %226, align 8
  %228 = call signext i8 %227(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %213, i8 signext 10)
  br label %229

229:                                              ; preds = %223, %220, %198, %195
  %230 = phi i8 [ %197, %195 ], [ %203, %198 ], [ %222, %220 ], [ %228, %223 ]
  %231 = phi i32 [ 0, %195 ], [ 0, %198 ], [ 1, %220 ], [ 1, %223 ]
  %232 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %230)
  %233 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %232)
  br label %234

234:                                              ; preds = %229, %1
  %235 = phi i32 [ 0, %1 ], [ %231, %229 ]
  ret i32 %235
}

; Function Attrs: uwtable
define dso_local void @_ZN13FloydWarshall10printStatsEv(%class.FloydWarshall* nocapture nonnull readonly align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %21 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 15
  %22 = bitcast %"class.appsdk::HIPCommandArgs"** %21 to %"class.appsdk::SDKCmdArgsParser"**
  %23 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %22, align 8, !tbaa !28
  %24 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %23, i64 0, i32 11
  %25 = load i8, i8* %24, align 2, !tbaa !85, !range !32
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %787, label %27

27:                                               ; preds = %1
  %28 = bitcast [3 x %"class.std::basic_string"]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #25
  %29 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0
  %30 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %30) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14)
  %31 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1
  %32 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %32) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %33 unwind label %740

33:                                               ; preds = %27
  %34 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %16, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %16)
          to label %36 unwind label %742

36:                                               ; preds = %33
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #25
  %37 = bitcast [3 x %"class.std::basic_string"]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %37) #25
  %38 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0
  %39 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 16, !tbaa !59
  %40 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %40, align 8, !tbaa !59
  %41 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 16, !tbaa !59
  %42 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 1
  %43 = load double, double* %42, align 8, !tbaa !72
  %44 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 2
  %45 = load double, double* %44, align 8, !tbaa !50
  %46 = fadd contract double %43, %45
  %47 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 14
  %48 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %47, align 8, !tbaa !67
  %49 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %48, i64 0, i32 1
  store double %46, double* %49, align 8, !tbaa !86
  %50 = bitcast %"class.std::basic_string"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #25
  %51 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 5
  %52 = load i32, i32* %51, align 8, !tbaa !9
  %53 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %53) #25, !noalias !89
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %54 unwind label %751

54:                                               ; preds = %36
  %55 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %56 = load i8*, i8** %55, align 8, !tbaa !17, !noalias !89
  %57 = getelementptr i8, i8* %56, i64 -24
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8, !noalias !89
  %60 = getelementptr inbounds i8, i8* %53, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 24
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 8, !tbaa !92, !noalias !89
  %64 = and i32 %63, -75
  %65 = or i32 %64, 2
  store i32 %65, i32* %62, align 8, !tbaa !98, !noalias !89
  %66 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %67 = zext i32 %52 to i64
  %68 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %66, i64 %67)
          to label %69 unwind label %99, !noalias !89

69:                                               ; preds = %54
  %70 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %18, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %70)
          to label %71 unwind label %99

71:                                               ; preds = %69
  %72 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %73 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %72, i32 (...)*** %73, align 8, !tbaa !17, !noalias !89
  %74 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %75 = getelementptr i32 (...)*, i32 (...)** %72, i64 -3
  %76 = bitcast i32 (...)** %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %53, i64 %77
  %79 = bitcast i8* %78 to i32 (...)***
  store i32 (...)** %74, i32 (...)*** %79, align 8, !tbaa !17, !noalias !89
  %80 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !17, !noalias !89
  %81 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !13, !noalias !89
  %83 = getelementptr inbounds i8, i8* %82, i64 -24
  %84 = bitcast i8* %83 to %"struct.std::basic_string<char>::_Rep"*
  %85 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %85) #25, !noalias !89
  %86 = icmp eq i8* %83, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %86, label %101, label %87, !prof !16

87:                                               ; preds = %71
  %88 = getelementptr inbounds i8, i8* %82, i64 -8
  %89 = bitcast i8* %88 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %90, label %92

90:                                               ; preds = %87
  %91 = atomicrmw volatile add i32* %89, i32 -1 acq_rel, align 4
  br label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %89, align 8, !tbaa !7
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %89, align 8, !tbaa !7
  br label %95

95:                                               ; preds = %92, %90
  %96 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %84, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #25
  br label %101

99:                                               ; preds = %69, %54
  %100 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %53) #25, !noalias !89
  br label %755

101:                                              ; preds = %98, %95, %71
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %85) #25, !noalias !89
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !17, !noalias !89
  %102 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %102) #25
  %103 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %103) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %53) #25, !noalias !89
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %38, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18)
          to label %104 unwind label %753

104:                                              ; preds = %101
  %105 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8, !tbaa !13
  %107 = getelementptr inbounds i8, i8* %106, i64 -24
  %108 = bitcast i8* %107 to %"struct.std::basic_string<char>::_Rep"*
  %109 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %109) #25
  %110 = icmp eq i8* %107, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %110, label %123, label %111, !prof !16

111:                                              ; preds = %104
  %112 = getelementptr inbounds i8, i8* %106, i64 -8
  %113 = bitcast i8* %112 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %114, label %116

114:                                              ; preds = %111
  %115 = atomicrmw volatile add i32* %113, i32 -1 acq_rel, align 4
  br label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %113, align 8, !tbaa !7
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %113, align 8, !tbaa !7
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %108, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #25
  br label %123

123:                                              ; preds = %104, %119, %122
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %109) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #25
  %124 = bitcast %"class.std::basic_string"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %124) #25
  %125 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %47, align 8, !tbaa !67
  %126 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %125, i64 0, i32 1
  %127 = load double, double* %126, align 8, !tbaa !86
  %128 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %128) #25, !noalias !99
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %129 unwind label %757

129:                                              ; preds = %123
  %130 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %131 = load i8*, i8** %130, align 8, !tbaa !17, !noalias !99
  %132 = getelementptr i8, i8* %131, i64 -24
  %133 = bitcast i8* %132 to i64*
  %134 = load i64, i64* %133, align 8, !noalias !99
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  %136 = getelementptr inbounds i8, i8* %135, i64 24
  %137 = bitcast i8* %136 to i32*
  %138 = load i32, i32* %137, align 8, !tbaa !92, !noalias !99
  %139 = and i32 %138, -75
  %140 = or i32 %139, 2
  store i32 %140, i32* %137, align 8, !tbaa !98, !noalias !99
  %141 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %142 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %141, double %127)
          to label %143 unwind label %169, !noalias !99

143:                                              ; preds = %129
  %144 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %19, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %144)
          to label %145 unwind label %169

145:                                              ; preds = %143
  %146 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %72, i32 (...)*** %146, align 8, !tbaa !17, !noalias !99
  %147 = load i64, i64* %76, align 8
  %148 = getelementptr inbounds i8, i8* %128, i64 %147
  %149 = bitcast i8* %148 to i32 (...)***
  store i32 (...)** %74, i32 (...)*** %149, align 8, !tbaa !17, !noalias !99
  %150 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %150, align 8, !tbaa !17, !noalias !99
  %151 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !13, !noalias !99
  %153 = getelementptr inbounds i8, i8* %152, i64 -24
  %154 = bitcast i8* %153 to %"struct.std::basic_string<char>::_Rep"*
  %155 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %155) #25, !noalias !99
  %156 = icmp eq i8* %153, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %156, label %171, label %157, !prof !16

157:                                              ; preds = %145
  %158 = getelementptr inbounds i8, i8* %152, i64 -8
  %159 = bitcast i8* %158 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %160, label %162

160:                                              ; preds = %157
  %161 = atomicrmw volatile add i32* %159, i32 -1 acq_rel, align 4
  br label %165

162:                                              ; preds = %157
  %163 = load i32, i32* %159, align 8, !tbaa !7
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %159, align 8, !tbaa !7
  br label %165

165:                                              ; preds = %162, %160
  %166 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %167 = icmp slt i32 %166, 1
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %154, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #25
  br label %171

169:                                              ; preds = %143, %129
  %170 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %128) #25, !noalias !99
  br label %761

171:                                              ; preds = %168, %165, %145
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %155) #25, !noalias !99
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %150, align 8, !tbaa !17, !noalias !99
  %172 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %172) #25
  %173 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %173) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %128) #25, !noalias !99
  %174 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %174, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19)
          to label %175 unwind label %759

175:                                              ; preds = %171
  %176 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %19, i64 0, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8, !tbaa !13
  %178 = getelementptr inbounds i8, i8* %177, i64 -24
  %179 = bitcast i8* %178 to %"struct.std::basic_string<char>::_Rep"*
  %180 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %180) #25
  %181 = icmp eq i8* %178, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %181, label %194, label %182, !prof !16

182:                                              ; preds = %175
  %183 = getelementptr inbounds i8, i8* %177, i64 -8
  %184 = bitcast i8* %183 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %185, label %187

185:                                              ; preds = %182
  %186 = atomicrmw volatile add i32* %184, i32 -1 acq_rel, align 4
  br label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %184, align 8, !tbaa !7
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %184, align 8, !tbaa !7
  br label %190

190:                                              ; preds = %187, %185
  %191 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %179, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #25
  br label %194

194:                                              ; preds = %175, %190, %193
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %180) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124) #25
  %195 = bitcast %"class.std::basic_string"* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195) #25
  %196 = load double, double* %44, align 8, !tbaa !50
  %197 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %197) #25, !noalias !102
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %198 unwind label %763

198:                                              ; preds = %194
  %199 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %200 = load i8*, i8** %199, align 8, !tbaa !17, !noalias !102
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8, !noalias !102
  %204 = getelementptr inbounds i8, i8* %197, i64 %203
  %205 = getelementptr inbounds i8, i8* %204, i64 24
  %206 = bitcast i8* %205 to i32*
  %207 = load i32, i32* %206, align 8, !tbaa !92, !noalias !102
  %208 = and i32 %207, -75
  %209 = or i32 %208, 2
  store i32 %209, i32* %206, align 8, !tbaa !98, !noalias !102
  %210 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %211 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %210, double %196)
          to label %212 unwind label %238, !noalias !102

212:                                              ; preds = %198
  %213 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %20, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %213)
          to label %214 unwind label %238

214:                                              ; preds = %212
  %215 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %72, i32 (...)*** %215, align 8, !tbaa !17, !noalias !102
  %216 = load i64, i64* %76, align 8
  %217 = getelementptr inbounds i8, i8* %197, i64 %216
  %218 = bitcast i8* %217 to i32 (...)***
  store i32 (...)** %74, i32 (...)*** %218, align 8, !tbaa !17, !noalias !102
  %219 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %219, align 8, !tbaa !17, !noalias !102
  %220 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8, !tbaa !13, !noalias !102
  %222 = getelementptr inbounds i8, i8* %221, i64 -24
  %223 = bitcast i8* %222 to %"struct.std::basic_string<char>::_Rep"*
  %224 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %224) #25, !noalias !102
  %225 = icmp eq i8* %222, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %225, label %240, label %226, !prof !16

226:                                              ; preds = %214
  %227 = getelementptr inbounds i8, i8* %221, i64 -8
  %228 = bitcast i8* %227 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %229, label %231

229:                                              ; preds = %226
  %230 = atomicrmw volatile add i32* %228, i32 -1 acq_rel, align 4
  br label %234

231:                                              ; preds = %226
  %232 = load i32, i32* %228, align 8, !tbaa !7
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %228, align 8, !tbaa !7
  br label %234

234:                                              ; preds = %231, %229
  %235 = phi i32 [ %230, %229 ], [ %232, %231 ]
  %236 = icmp slt i32 %235, 1
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %223, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %240

238:                                              ; preds = %212, %198
  %239 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %197) #25, !noalias !102
  br label %767

240:                                              ; preds = %237, %234, %214
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %224) #25, !noalias !102
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %219, align 8, !tbaa !17, !noalias !102
  %241 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %241) #25
  %242 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %242) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %197) #25, !noalias !102
  %243 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %243, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20)
          to label %244 unwind label %765

244:                                              ; preds = %240
  %245 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8, !tbaa !13
  %247 = getelementptr inbounds i8, i8* %246, i64 -24
  %248 = bitcast i8* %247 to %"struct.std::basic_string<char>::_Rep"*
  %249 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %249) #25
  %250 = icmp eq i8* %247, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %250, label %263, label %251, !prof !16

251:                                              ; preds = %244
  %252 = getelementptr inbounds i8, i8* %246, i64 -8
  %253 = bitcast i8* %252 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %254, label %256

254:                                              ; preds = %251
  %255 = atomicrmw volatile add i32* %253, i32 -1 acq_rel, align 4
  br label %259

256:                                              ; preds = %251
  %257 = load i32, i32* %253, align 8, !tbaa !7
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %253, align 8, !tbaa !7
  br label %259

259:                                              ; preds = %256, %254
  %260 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %261 = icmp slt i32 %260, 1
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %248, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %263

263:                                              ; preds = %244, %259, %262
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %249) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #25
  %264 = invoke noalias nonnull dereferenceable(12) i8* @_Znam(i64 12) #27
          to label %265 unwind label %775

265:                                              ; preds = %263
  %266 = bitcast i8* %264 to i32*
  %267 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %268 = getelementptr i8, i8* %267, i64 -24
  %269 = bitcast i8* %268 to i64*
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %270
  %272 = getelementptr inbounds i8, i8* %271, i64 240
  %273 = bitcast i8* %272 to %"class.std::ctype"**
  %274 = load %"class.std::ctype"*, %"class.std::ctype"** %273, align 8, !tbaa !19
  %275 = icmp eq %"class.std::ctype"* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %265
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %277 unwind label %775

277:                                              ; preds = %276
  unreachable

278:                                              ; preds = %265
  %279 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %274, i64 0, i32 8
  %280 = load i8, i8* %279, align 8, !tbaa !22
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %274, i64 0, i32 9, i64 10
  %284 = load i8, i8* %283, align 1, !tbaa !24
  br label %292

285:                                              ; preds = %278
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %274)
          to label %286 unwind label %775

286:                                              ; preds = %285
  %287 = bitcast %"class.std::ctype"* %274 to i8 (%"class.std::ctype"*, i8)***
  %288 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %287, align 8, !tbaa !17
  %289 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %288, i64 6
  %290 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %289, align 8
  %291 = invoke signext i8 %290(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %274, i8 signext 10)
          to label %292 unwind label %775

292:                                              ; preds = %286, %282
  %293 = phi i8 [ %284, %282 ], [ %291, %286 ]
  %294 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %293)
          to label %295 unwind label %775

295:                                              ; preds = %292
  %296 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %294)
          to label %297 unwind label %775

297:                                              ; preds = %295
  %298 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %296, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %299 unwind label %775

299:                                              ; preds = %297
  %300 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0, i32 0, i32 0
  %301 = load i8*, i8** %300, align 16, !tbaa !13
  %302 = getelementptr inbounds i8, i8* %301, i64 -24
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 8, !tbaa !38
  %305 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  %306 = load i8*, i8** %305, align 16, !tbaa !13
  %307 = getelementptr inbounds i8, i8* %306, i64 -24
  %308 = bitcast i8* %307 to i64*
  %309 = load i64, i64* %308, align 8, !tbaa !38
  %310 = icmp ugt i64 %304, %309
  %311 = select i1 %310, i64 %304, i64 %309
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %266, align 4, !tbaa !7
  %313 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %314 unwind label %775

314:                                              ; preds = %299
  %315 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %316 = getelementptr i8, i8* %315, i64 -24
  %317 = bitcast i8* %316 to i64*
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %318
  %320 = shl i64 %311, 32
  %321 = add i64 %320, 4294967296
  %322 = ashr exact i64 %321, 32
  %323 = getelementptr inbounds i8, i8* %319, i64 16
  %324 = bitcast i8* %323 to i64*
  store i64 %322, i64* %324, align 8, !tbaa !105
  %325 = load i64, i64* %317, align 8
  %326 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %325
  %327 = getelementptr inbounds i8, i8* %326, i64 24
  %328 = bitcast i8* %327 to i32*
  %329 = load i32, i32* %328, align 8, !tbaa !92
  %330 = and i32 %329, -177
  %331 = or i32 %330, 32
  store i32 %331, i32* %328, align 8, !tbaa !98
  %332 = load i8*, i8** %300, align 16, !tbaa !13
  %333 = getelementptr inbounds i8, i8* %332, i64 -24
  %334 = bitcast i8* %333 to i64*
  %335 = load i64, i64* %334, align 8, !tbaa !38
  %336 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %332, i64 %335)
          to label %337 unwind label %775

337:                                              ; preds = %314
  %338 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %336, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %339 unwind label %775

339:                                              ; preds = %337
  %340 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8, !tbaa !13
  %342 = getelementptr inbounds i8, i8* %341, i64 -24
  %343 = bitcast i8* %342 to i64*
  %344 = load i64, i64* %343, align 8, !tbaa !38
  %345 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8, !tbaa !13
  %347 = getelementptr inbounds i8, i8* %346, i64 -24
  %348 = bitcast i8* %347 to i64*
  %349 = load i64, i64* %348, align 8, !tbaa !38
  %350 = icmp ugt i64 %344, %349
  %351 = select i1 %350, i64 %344, i64 %349
  %352 = trunc i64 %351 to i32
  %353 = getelementptr inbounds i32, i32* %266, i64 1
  store i32 %352, i32* %353, align 4, !tbaa !7
  %354 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %355 unwind label %775

355:                                              ; preds = %339
  %356 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %357 = getelementptr i8, i8* %356, i64 -24
  %358 = bitcast i8* %357 to i64*
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %359
  %361 = shl i64 %351, 32
  %362 = add i64 %361, 4294967296
  %363 = ashr exact i64 %362, 32
  %364 = getelementptr inbounds i8, i8* %360, i64 16
  %365 = bitcast i8* %364 to i64*
  store i64 %363, i64* %365, align 8, !tbaa !105
  %366 = load i64, i64* %358, align 8
  %367 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %366
  %368 = getelementptr inbounds i8, i8* %367, i64 24
  %369 = bitcast i8* %368 to i32*
  %370 = load i32, i32* %369, align 8, !tbaa !92
  %371 = and i32 %370, -177
  %372 = or i32 %371, 32
  store i32 %372, i32* %369, align 8, !tbaa !98
  %373 = load i8*, i8** %340, align 8, !tbaa !13
  %374 = getelementptr inbounds i8, i8* %373, i64 -24
  %375 = bitcast i8* %374 to i64*
  %376 = load i64, i64* %375, align 8, !tbaa !38
  %377 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %373, i64 %376)
          to label %378 unwind label %775

378:                                              ; preds = %355
  %379 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %377, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %380 unwind label %775

380:                                              ; preds = %378
  %381 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2, i32 0, i32 0
  %382 = load i8*, i8** %381, align 16, !tbaa !13
  %383 = getelementptr inbounds i8, i8* %382, i64 -24
  %384 = bitcast i8* %383 to i64*
  %385 = load i64, i64* %384, align 8, !tbaa !38
  %386 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  %387 = load i8*, i8** %386, align 16, !tbaa !13
  %388 = getelementptr inbounds i8, i8* %387, i64 -24
  %389 = bitcast i8* %388 to i64*
  %390 = load i64, i64* %389, align 8, !tbaa !38
  %391 = icmp ugt i64 %385, %390
  %392 = select i1 %391, i64 %385, i64 %390
  %393 = trunc i64 %392 to i32
  %394 = getelementptr inbounds i32, i32* %266, i64 2
  store i32 %393, i32* %394, align 4, !tbaa !7
  %395 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %396 unwind label %775

396:                                              ; preds = %380
  %397 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %398 = getelementptr i8, i8* %397, i64 -24
  %399 = bitcast i8* %398 to i64*
  %400 = load i64, i64* %399, align 8
  %401 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %400
  %402 = shl i64 %392, 32
  %403 = add i64 %402, 4294967296
  %404 = ashr exact i64 %403, 32
  %405 = getelementptr inbounds i8, i8* %401, i64 16
  %406 = bitcast i8* %405 to i64*
  store i64 %404, i64* %406, align 8, !tbaa !105
  %407 = load i64, i64* %399, align 8
  %408 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %407
  %409 = getelementptr inbounds i8, i8* %408, i64 24
  %410 = bitcast i8* %409 to i32*
  %411 = load i32, i32* %410, align 8, !tbaa !92
  %412 = and i32 %411, -177
  %413 = or i32 %412, 32
  store i32 %413, i32* %410, align 8, !tbaa !98
  %414 = load i8*, i8** %381, align 16, !tbaa !13
  %415 = getelementptr inbounds i8, i8* %414, i64 -24
  %416 = bitcast i8* %415 to i64*
  %417 = load i64, i64* %416, align 8, !tbaa !38
  %418 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %414, i64 %417)
          to label %419 unwind label %775

419:                                              ; preds = %396
  %420 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %418, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %421 unwind label %775

421:                                              ; preds = %419
  %422 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %423 = getelementptr i8, i8* %422, i64 -24
  %424 = bitcast i8* %423 to i64*
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %425
  %427 = getelementptr inbounds i8, i8* %426, i64 240
  %428 = bitcast i8* %427 to %"class.std::ctype"**
  %429 = load %"class.std::ctype"*, %"class.std::ctype"** %428, align 8, !tbaa !19
  %430 = icmp eq %"class.std::ctype"* %429, null
  br i1 %430, label %431, label %433

431:                                              ; preds = %421
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %432 unwind label %775

432:                                              ; preds = %431
  unreachable

433:                                              ; preds = %421
  %434 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %429, i64 0, i32 8
  %435 = load i8, i8* %434, align 8, !tbaa !22
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %429, i64 0, i32 9, i64 10
  %439 = load i8, i8* %438, align 1, !tbaa !24
  br label %447

440:                                              ; preds = %433
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %429)
          to label %441 unwind label %775

441:                                              ; preds = %440
  %442 = bitcast %"class.std::ctype"* %429 to i8 (%"class.std::ctype"*, i8)***
  %443 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %442, align 8, !tbaa !17
  %444 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %443, i64 6
  %445 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %444, align 8
  %446 = invoke signext i8 %445(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %429, i8 signext 10)
          to label %447 unwind label %775

447:                                              ; preds = %441, %437
  %448 = phi i8 [ %439, %437 ], [ %446, %441 ]
  %449 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %448)
          to label %450 unwind label %775

450:                                              ; preds = %447
  %451 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %449)
          to label %452 unwind label %775

452:                                              ; preds = %450
  %453 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %451, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %454 unwind label %775

454:                                              ; preds = %452
  %455 = load i32, i32* %266, align 4, !tbaa !7
  %456 = icmp sgt i32 %455, -2
  br i1 %456, label %457, label %566

457:                                              ; preds = %454
  %458 = add i32 %455, 1
  br label %602

459:                                              ; preds = %592
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %460 unwind label %775

460:                                              ; preds = %459
  unreachable

461:                                              ; preds = %592
  %462 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %600, i64 0, i32 8
  %463 = load i8, i8* %462, align 8, !tbaa !22
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %600, i64 0, i32 9, i64 10
  %467 = load i8, i8* %466, align 1, !tbaa !24
  br label %475

468:                                              ; preds = %461
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %600)
          to label %469 unwind label %775

469:                                              ; preds = %468
  %470 = bitcast %"class.std::ctype"* %600 to i8 (%"class.std::ctype"*, i8)***
  %471 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %470, align 8, !tbaa !17
  %472 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %471, i64 6
  %473 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %472, align 8
  %474 = invoke signext i8 %473(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %600, i8 signext 10)
          to label %475 unwind label %775

475:                                              ; preds = %469, %465
  %476 = phi i8 [ %467, %465 ], [ %474, %469 ]
  %477 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %476)
          to label %478 unwind label %775

478:                                              ; preds = %475
  %479 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %477)
          to label %480 unwind label %775

480:                                              ; preds = %478
  %481 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %479, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %482 unwind label %775

482:                                              ; preds = %480
  %483 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %484 unwind label %775

484:                                              ; preds = %482
  %485 = add nsw i32 %455, 1
  %486 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %487 = getelementptr i8, i8* %486, i64 -24
  %488 = bitcast i8* %487 to i64*
  %489 = load i64, i64* %488, align 8
  %490 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %489
  %491 = sext i32 %485 to i64
  %492 = getelementptr inbounds i8, i8* %490, i64 16
  %493 = bitcast i8* %492 to i64*
  store i64 %491, i64* %493, align 8, !tbaa !105
  %494 = load i64, i64* %488, align 8
  %495 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %494
  %496 = getelementptr inbounds i8, i8* %495, i64 24
  %497 = bitcast i8* %496 to i32*
  %498 = load i32, i32* %497, align 8, !tbaa !92
  %499 = and i32 %498, -177
  %500 = or i32 %499, 32
  store i32 %500, i32* %497, align 8, !tbaa !98
  %501 = load i8*, i8** %305, align 16, !tbaa !13
  %502 = getelementptr inbounds i8, i8* %501, i64 -24
  %503 = bitcast i8* %502 to i64*
  %504 = load i64, i64* %503, align 8, !tbaa !38
  %505 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %501, i64 %504)
          to label %506 unwind label %775

506:                                              ; preds = %484
  %507 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %505, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %508 unwind label %775

508:                                              ; preds = %506
  %509 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %510 unwind label %775

510:                                              ; preds = %508
  %511 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %512 = getelementptr i8, i8* %511, i64 -24
  %513 = bitcast i8* %512 to i64*
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %514
  %516 = getelementptr inbounds i8, i8* %515, i64 16
  %517 = bitcast i8* %516 to i64*
  store i64 %363, i64* %517, align 8, !tbaa !105
  %518 = load i64, i64* %513, align 8
  %519 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %518
  %520 = getelementptr inbounds i8, i8* %519, i64 24
  %521 = bitcast i8* %520 to i32*
  %522 = load i32, i32* %521, align 8, !tbaa !92
  %523 = and i32 %522, -177
  %524 = or i32 %523, 32
  store i32 %524, i32* %521, align 8, !tbaa !98
  %525 = load i8*, i8** %345, align 8, !tbaa !13
  %526 = getelementptr inbounds i8, i8* %525, i64 -24
  %527 = bitcast i8* %526 to i64*
  %528 = load i64, i64* %527, align 8, !tbaa !38
  %529 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %525, i64 %528)
          to label %530 unwind label %775

530:                                              ; preds = %510
  %531 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %529, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %532 unwind label %775

532:                                              ; preds = %530
  %533 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %534 unwind label %775

534:                                              ; preds = %532
  %535 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %536 = getelementptr i8, i8* %535, i64 -24
  %537 = bitcast i8* %536 to i64*
  %538 = load i64, i64* %537, align 8
  %539 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %538
  %540 = getelementptr inbounds i8, i8* %539, i64 16
  %541 = bitcast i8* %540 to i64*
  store i64 %404, i64* %541, align 8, !tbaa !105
  %542 = load i64, i64* %537, align 8
  %543 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %542
  %544 = getelementptr inbounds i8, i8* %543, i64 24
  %545 = bitcast i8* %544 to i32*
  %546 = load i32, i32* %545, align 8, !tbaa !92
  %547 = and i32 %546, -177
  %548 = or i32 %547, 32
  store i32 %548, i32* %545, align 8, !tbaa !98
  %549 = load i8*, i8** %386, align 16, !tbaa !13
  %550 = getelementptr inbounds i8, i8* %549, i64 -24
  %551 = bitcast i8* %550 to i64*
  %552 = load i64, i64* %551, align 8, !tbaa !38
  %553 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %549, i64 %552)
          to label %554 unwind label %775

554:                                              ; preds = %534
  %555 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %553, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %556 unwind label %775

556:                                              ; preds = %554
  %557 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %558 = getelementptr i8, i8* %557, i64 -24
  %559 = bitcast i8* %558 to i64*
  %560 = load i64, i64* %559, align 8
  %561 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %560
  %562 = getelementptr inbounds i8, i8* %561, i64 240
  %563 = bitcast i8* %562 to %"class.std::ctype"**
  %564 = load %"class.std::ctype"*, %"class.std::ctype"** %563, align 8, !tbaa !19
  %565 = icmp eq %"class.std::ctype"* %564, null
  br i1 %565, label %608, label %610

566:                                              ; preds = %605, %454
  %567 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %568 unwind label %775

568:                                              ; preds = %566
  %569 = icmp sgt i32 %352, -2
  br i1 %569, label %570, label %578

570:                                              ; preds = %568
  %571 = add i32 %352, 1
  br label %572

572:                                              ; preds = %570, %575
  %573 = phi i32 [ %576, %575 ], [ 0, %570 ]
  %574 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %575 unwind label %771

575:                                              ; preds = %572
  %576 = add nuw i32 %573, 1
  %577 = icmp eq i32 %573, %571
  br i1 %577, label %578, label %572, !llvm.loop !106

578:                                              ; preds = %575, %568
  %579 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %580 unwind label %775

580:                                              ; preds = %578
  %581 = icmp sgt i32 %393, -2
  br i1 %581, label %582, label %590

582:                                              ; preds = %580
  %583 = add i32 %393, 1
  br label %584

584:                                              ; preds = %582, %587
  %585 = phi i32 [ %588, %587 ], [ 0, %582 ]
  %586 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %587 unwind label %769

587:                                              ; preds = %584
  %588 = add nuw i32 %585, 1
  %589 = icmp eq i32 %585, %583
  br i1 %589, label %590, label %584, !llvm.loop !106

590:                                              ; preds = %587, %580
  %591 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %592 unwind label %775

592:                                              ; preds = %590
  %593 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %594 = getelementptr i8, i8* %593, i64 -24
  %595 = bitcast i8* %594 to i64*
  %596 = load i64, i64* %595, align 8
  %597 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %596
  %598 = getelementptr inbounds i8, i8* %597, i64 240
  %599 = bitcast i8* %598 to %"class.std::ctype"**
  %600 = load %"class.std::ctype"*, %"class.std::ctype"** %599, align 8, !tbaa !19
  %601 = icmp eq %"class.std::ctype"* %600, null
  br i1 %601, label %459, label %461

602:                                              ; preds = %457, %605
  %603 = phi i32 [ %606, %605 ], [ 0, %457 ]
  %604 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %605 unwind label %773

605:                                              ; preds = %602
  %606 = add nuw i32 %603, 1
  %607 = icmp eq i32 %603, %458
  br i1 %607, label %566, label %602, !llvm.loop !106

608:                                              ; preds = %556
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %609 unwind label %775

609:                                              ; preds = %608
  unreachable

610:                                              ; preds = %556
  %611 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %564, i64 0, i32 8
  %612 = load i8, i8* %611, align 8, !tbaa !22
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %617, label %614

614:                                              ; preds = %610
  %615 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %564, i64 0, i32 9, i64 10
  %616 = load i8, i8* %615, align 1, !tbaa !24
  br label %624

617:                                              ; preds = %610
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %564)
          to label %618 unwind label %775

618:                                              ; preds = %617
  %619 = bitcast %"class.std::ctype"* %564 to i8 (%"class.std::ctype"*, i8)***
  %620 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %619, align 8, !tbaa !17
  %621 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %620, i64 6
  %622 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %621, align 8
  %623 = invoke signext i8 %622(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %564, i8 signext 10)
          to label %624 unwind label %775

624:                                              ; preds = %618, %614
  %625 = phi i8 [ %616, %614 ], [ %623, %618 ]
  %626 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %625)
          to label %627 unwind label %775

627:                                              ; preds = %624
  %628 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %626)
          to label %629 unwind label %775

629:                                              ; preds = %627
  call void @_ZdaPv(i8* nonnull %264) #28
  %630 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %631 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  %632 = load i8*, i8** %631, align 16, !tbaa !13
  %633 = getelementptr inbounds i8, i8* %632, i64 -24
  %634 = bitcast i8* %633 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %630) #25
  %635 = icmp eq i8* %633, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %635, label %648, label %636, !prof !16

636:                                              ; preds = %629
  %637 = getelementptr inbounds i8, i8* %632, i64 -8
  %638 = bitcast i8* %637 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %639, label %641

639:                                              ; preds = %636
  %640 = atomicrmw volatile add i32* %638, i32 -1 acq_rel, align 4
  br label %644

641:                                              ; preds = %636
  %642 = load i32, i32* %638, align 8, !tbaa !7
  %643 = add nsw i32 %642, -1
  store i32 %643, i32* %638, align 8, !tbaa !7
  br label %644

644:                                              ; preds = %641, %639
  %645 = phi i32 [ %640, %639 ], [ %642, %641 ]
  %646 = icmp slt i32 %645, 1
  br i1 %646, label %647, label %648

647:                                              ; preds = %644
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %634, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %648

648:                                              ; preds = %629, %644, %647
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %630) #25
  %649 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  %650 = load i8*, i8** %649, align 8, !tbaa !13
  %651 = getelementptr inbounds i8, i8* %650, i64 -24
  %652 = bitcast i8* %651 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %630) #25
  %653 = icmp eq i8* %651, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %653, label %666, label %654, !prof !16

654:                                              ; preds = %648
  %655 = getelementptr inbounds i8, i8* %650, i64 -8
  %656 = bitcast i8* %655 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %660, label %657

657:                                              ; preds = %654
  %658 = load i32, i32* %656, align 8, !tbaa !7
  %659 = add nsw i32 %658, -1
  store i32 %659, i32* %656, align 8, !tbaa !7
  br label %662

660:                                              ; preds = %654
  %661 = atomicrmw volatile add i32* %656, i32 -1 acq_rel, align 4
  br label %662

662:                                              ; preds = %660, %657
  %663 = phi i32 [ %661, %660 ], [ %658, %657 ]
  %664 = icmp slt i32 %663, 1
  br i1 %664, label %665, label %666

665:                                              ; preds = %662
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %652, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %666

666:                                              ; preds = %665, %662, %648
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %630) #25
  %667 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  %668 = load i8*, i8** %667, align 16, !tbaa !13
  %669 = getelementptr inbounds i8, i8* %668, i64 -24
  %670 = bitcast i8* %669 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %630) #25
  %671 = icmp eq i8* %669, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %671, label %684, label %672, !prof !16

672:                                              ; preds = %666
  %673 = getelementptr inbounds i8, i8* %668, i64 -8
  %674 = bitcast i8* %673 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %678, label %675

675:                                              ; preds = %672
  %676 = load i32, i32* %674, align 8, !tbaa !7
  %677 = add nsw i32 %676, -1
  store i32 %677, i32* %674, align 8, !tbaa !7
  br label %680

678:                                              ; preds = %672
  %679 = atomicrmw volatile add i32* %674, i32 -1 acq_rel, align 4
  br label %680

680:                                              ; preds = %678, %675
  %681 = phi i32 [ %679, %678 ], [ %676, %675 ]
  %682 = icmp slt i32 %681, 1
  br i1 %682, label %683, label %684

683:                                              ; preds = %680
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %670, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %684

684:                                              ; preds = %683, %680, %666
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %630) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %37) #25
  %685 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %686 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2, i32 0, i32 0
  %687 = load i8*, i8** %686, align 16, !tbaa !13
  %688 = getelementptr inbounds i8, i8* %687, i64 -24
  %689 = bitcast i8* %688 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %685) #25
  %690 = icmp eq i8* %688, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %690, label %703, label %691, !prof !16

691:                                              ; preds = %684
  %692 = getelementptr inbounds i8, i8* %687, i64 -8
  %693 = bitcast i8* %692 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %694, label %696

694:                                              ; preds = %691
  %695 = atomicrmw volatile add i32* %693, i32 -1 acq_rel, align 4
  br label %699

696:                                              ; preds = %691
  %697 = load i32, i32* %693, align 8, !tbaa !7
  %698 = add nsw i32 %697, -1
  store i32 %698, i32* %693, align 8, !tbaa !7
  br label %699

699:                                              ; preds = %696, %694
  %700 = phi i32 [ %695, %694 ], [ %697, %696 ]
  %701 = icmp slt i32 %700, 1
  br i1 %701, label %702, label %703

702:                                              ; preds = %699
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %689, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %703

703:                                              ; preds = %684, %699, %702
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %685) #25
  %704 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1, i32 0, i32 0
  %705 = load i8*, i8** %704, align 8, !tbaa !13
  %706 = getelementptr inbounds i8, i8* %705, i64 -24
  %707 = bitcast i8* %706 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %685) #25
  %708 = icmp eq i8* %706, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %708, label %721, label %709, !prof !16

709:                                              ; preds = %703
  %710 = getelementptr inbounds i8, i8* %705, i64 -8
  %711 = bitcast i8* %710 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %715, label %712

712:                                              ; preds = %709
  %713 = load i32, i32* %711, align 8, !tbaa !7
  %714 = add nsw i32 %713, -1
  store i32 %714, i32* %711, align 8, !tbaa !7
  br label %717

715:                                              ; preds = %709
  %716 = atomicrmw volatile add i32* %711, i32 -1 acq_rel, align 4
  br label %717

717:                                              ; preds = %715, %712
  %718 = phi i32 [ %716, %715 ], [ %713, %712 ]
  %719 = icmp slt i32 %718, 1
  br i1 %719, label %720, label %721

720:                                              ; preds = %717
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %707, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %721

721:                                              ; preds = %720, %717, %703
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %685) #25
  %722 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0, i32 0, i32 0
  %723 = load i8*, i8** %722, align 16, !tbaa !13
  %724 = getelementptr inbounds i8, i8* %723, i64 -24
  %725 = bitcast i8* %724 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %685) #25
  %726 = icmp eq i8* %724, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %726, label %739, label %727, !prof !16

727:                                              ; preds = %721
  %728 = getelementptr inbounds i8, i8* %723, i64 -8
  %729 = bitcast i8* %728 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %733, label %730

730:                                              ; preds = %727
  %731 = load i32, i32* %729, align 8, !tbaa !7
  %732 = add nsw i32 %731, -1
  store i32 %732, i32* %729, align 8, !tbaa !7
  br label %735

733:                                              ; preds = %727
  %734 = atomicrmw volatile add i32* %729, i32 -1 acq_rel, align 4
  br label %735

735:                                              ; preds = %733, %730
  %736 = phi i32 [ %734, %733 ], [ %731, %730 ]
  %737 = icmp slt i32 %736, 1
  br i1 %737, label %738, label %739

738:                                              ; preds = %735
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %725, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %739

739:                                              ; preds = %738, %735, %721
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %685) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #25
  br label %787

740:                                              ; preds = %27
  %741 = landingpad { i8*, i32 }
          cleanup
  br label %744

742:                                              ; preds = %33
  %743 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  br label %744

744:                                              ; preds = %740, %742
  %745 = phi %"class.std::basic_string"* [ %34, %742 ], [ %31, %740 ]
  %746 = phi { i8*, i32 } [ %743, %742 ], [ %741, %740 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #25
  br label %747

747:                                              ; preds = %744, %747
  %748 = phi %"class.std::basic_string"* [ %749, %747 ], [ %745, %744 ]
  %749 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %748, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %749) #25
  %750 = icmp eq %"class.std::basic_string"* %749, %29
  br i1 %750, label %785, label %747

751:                                              ; preds = %36
  %752 = landingpad { i8*, i32 }
          cleanup
  br label %755

753:                                              ; preds = %101
  %754 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #25
  br label %755

755:                                              ; preds = %751, %99, %753
  %756 = phi { i8*, i32 } [ %754, %753 ], [ %752, %751 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #25
  br label %777

757:                                              ; preds = %123
  %758 = landingpad { i8*, i32 }
          cleanup
  br label %761

759:                                              ; preds = %171
  %760 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19) #25
  br label %761

761:                                              ; preds = %757, %169, %759
  %762 = phi { i8*, i32 } [ %760, %759 ], [ %758, %757 ], [ %170, %169 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124) #25
  br label %777

763:                                              ; preds = %194
  %764 = landingpad { i8*, i32 }
          cleanup
  br label %767

765:                                              ; preds = %240
  %766 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20) #25
  br label %767

767:                                              ; preds = %763, %238, %765
  %768 = phi { i8*, i32 } [ %766, %765 ], [ %764, %763 ], [ %239, %238 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #25
  br label %777

769:                                              ; preds = %584
  %770 = landingpad { i8*, i32 }
          cleanup
  br label %777

771:                                              ; preds = %572
  %772 = landingpad { i8*, i32 }
          cleanup
  br label %777

773:                                              ; preds = %602
  %774 = landingpad { i8*, i32 }
          cleanup
  br label %777

775:                                              ; preds = %263, %276, %285, %286, %292, %295, %297, %299, %314, %337, %339, %355, %378, %380, %396, %419, %431, %440, %441, %447, %450, %452, %459, %468, %469, %475, %478, %480, %482, %484, %506, %508, %510, %530, %532, %534, %554, %566, %578, %590, %608, %617, %618, %624, %627
  %776 = landingpad { i8*, i32 }
          cleanup
  br label %777

777:                                              ; preds = %769, %773, %775, %771, %767, %761, %755
  %778 = phi { i8*, i32 } [ %768, %767 ], [ %762, %761 ], [ %756, %755 ], [ %770, %769 ], [ %772, %771 ], [ %774, %773 ], [ %776, %775 ]
  %779 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %779) #25
  %780 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %780) #25
  %781 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %781) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %37) #25
  %782 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %782) #25
  %783 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %783) #25
  %784 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %784) #25
  br label %785

785:                                              ; preds = %747, %777
  %786 = phi { i8*, i32 } [ %778, %777 ], [ %746, %747 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #25
  resume { i8*, i32 } %786

787:                                              ; preds = %739, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN13FloydWarshall7cleanupEv(%class.FloydWarshall* nocapture nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 10
  %3 = bitcast i32** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !51
  %5 = tail call i32 @hipFree(i8* %4)
  %6 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 11
  %7 = bitcast i32** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !52
  %9 = tail call i32 @hipFree(i8* %8)
  %10 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 6
  %11 = load i32*, i32** %10, align 8, !tbaa !12
  %12 = icmp eq i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = bitcast i32* %11 to i8*
  tail call void @free(i8* %14) #25
  store i32* null, i32** %10, align 8, !tbaa !12
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 7
  %17 = load i32*, i32** %16, align 8, !tbaa !25
  %18 = icmp eq i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = bitcast i32* %17 to i8*
  tail call void @free(i8* %20) #25
  store i32* null, i32** %16, align 8, !tbaa !25
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 8
  %23 = load i32*, i32** %22, align 8, !tbaa !36
  %24 = icmp eq i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = bitcast i32* %23 to i8*
  tail call void @free(i8* %26) #25
  store i32* null, i32** %22, align 8, !tbaa !36
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %0, i64 0, i32 9
  %29 = load i32*, i32** %28, align 8, !tbaa !37
  %30 = icmp eq i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = bitcast i32* %29 to i8*
  tail call void @free(i8* %32) #25
  store i32* null, i32** %28, align 8, !tbaa !37
  br label %33

33:                                               ; preds = %31, %27
  ret i32 0
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %class.FloydWarshall, align 8
  %4 = bitcast %class.FloydWarshall* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #25
  %5 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 0
  store i32 123, i32* %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 5
  store i32 256, i32* %6, align 8, !tbaa !9
  %7 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 6
  %8 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 1
  %9 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 12
  %10 = bitcast double* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = bitcast i32** %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 1, i32* %9, align 8, !tbaa !82
  %12 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 13
  store i32 16, i32* %12, align 4, !tbaa !49
  %13 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #27
  %14 = bitcast i8* %13 to %"class.appsdk::HIPCommandArgs"*
  %15 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 0
  %16 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %16, align 8, !tbaa !59
  %17 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 8, i32 0
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %18, align 8, !tbaa !7
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %19, align 8, !tbaa !108
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 1
  store i32 0, i32* %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 2
  store i32 0, i32* %22, align 4, !tbaa !109
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 4
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 3
  %25 = bitcast i8*** %23 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store i32 123, i32* %24, align 8, !tbaa !110
  %26 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 9
  store i8 0, i8* %26, align 4, !tbaa !29
  %27 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 10
  store i8 0, i8* %27, align 1, !tbaa !35
  %28 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 0, i32 11
  store i8 0, i8* %28, align 2, !tbaa !85
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !17
  %29 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 1
  store i32 0, i32* %29, align 8, !tbaa !111
  %30 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %14, i64 0, i32 2
  store i8 0, i8* %30, align 4, !tbaa !113
  %31 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 15
  %32 = bitcast %"class.appsdk::HIPCommandArgs"** %31 to i8**
  store i8* %13, i8** %32, align 8, !tbaa !28
  %33 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false) #25
  %34 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 14
  %35 = bitcast %"class.appsdk::SDKTimer"** %34 to i8**
  store i8* %33, i8** %35, align 8, !tbaa !67
  %36 = bitcast i8* %13 to %"class.appsdk::SDKCmdArgsParser"*
  %37 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %36, i64 0, i32 12
  %38 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i64 29)
  %39 = call i32 @_ZN13FloydWarshall10initializeEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %3)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %2
  %42 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %31, align 8, !tbaa !28
  %43 = bitcast %"class.appsdk::HIPCommandArgs"* %42 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %44 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %43, align 8, !tbaa !17
  %45 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %44, align 8
  %46 = call i32 %45(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %42, i32 %0, i8** %1)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %41
  %49 = call i32 @_ZN13FloydWarshall5setupEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %3)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %48
  %52 = call i32 @_ZN13FloydWarshall3runEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %3)
  %53 = call i32 @_ZN13FloydWarshall13verifyResultsEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %3)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 10
  %57 = bitcast i32** %56 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !51
  %59 = call i32 @hipFree(i8* %58)
  %60 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 11
  %61 = bitcast i32** %60 to i8**
  %62 = load i8*, i8** %61, align 8, !tbaa !52
  %63 = call i32 @hipFree(i8* %62)
  %64 = load i32*, i32** %7, align 8, !tbaa !12
  %65 = icmp eq i32* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  %67 = bitcast i32* %64 to i8*
  call void @free(i8* %67) #25
  store i32* null, i32** %7, align 8, !tbaa !12
  br label %68

68:                                               ; preds = %66, %55
  %69 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 7
  %70 = load i32*, i32** %69, align 8, !tbaa !25
  %71 = icmp eq i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = bitcast i32* %70 to i8*
  call void @free(i8* %73) #25
  store i32* null, i32** %69, align 8, !tbaa !25
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 8
  %76 = load i32*, i32** %75, align 8, !tbaa !36
  %77 = icmp eq i32* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = bitcast i32* %76 to i8*
  call void @free(i8* %79) #25
  store i32* null, i32** %75, align 8, !tbaa !36
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %class.FloydWarshall, %class.FloydWarshall* %3, i64 0, i32 9
  %82 = load i32*, i32** %81, align 8, !tbaa !37
  %83 = icmp eq i32* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = bitcast i32* %82 to i8*
  call void @free(i8* %85) #25
  store i32* null, i32** %81, align 8, !tbaa !37
  br label %86

86:                                               ; preds = %80, %84
  call void @_ZN13FloydWarshall10printStatsEv(%class.FloydWarshall* nonnull align 8 dereferenceable(120) %3)
  br label %87

87:                                               ; preds = %51, %48, %41, %2, %86
  %88 = phi i32 [ 0, %86 ], [ 1, %2 ], [ 1, %41 ], [ 1, %48 ], [ 1, %51 ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #25
  ret i32 %88
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #15

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #11

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
  store i32 %1, i32* %23, align 4, !tbaa !109
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !114
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
  br i1 %37, label %28, label %38, !llvm.loop !115

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !109
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !114
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
  %58 = load i32, i32* %23, align 4, !tbaa !109
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !116

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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !109
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !114
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
  %103 = load i32, i32* %23, align 4, !tbaa !109
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !116

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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !109
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !114
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
  %149 = load i32, i32* %23, align 4, !tbaa !109
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !116

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !109
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !114
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
  %177 = load i32, i32* %23, align 4, !tbaa !109
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !116

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
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0))
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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !109
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !114
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
  %255 = load i32, i32* %23, align 4, !tbaa !109
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !116

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !109
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !114
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
  %283 = load i32, i32* %23, align 4, !tbaa !109
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !116

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
  store i8 1, i8* %332, align 4, !tbaa !113
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
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !65
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
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i64 6)
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
  %16 = load i32, i32* %14, align 8, !tbaa !64
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !65
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !64
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !117

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !65
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !65
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !60
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !63
  store i8 1, i8* %44, align 1, !tbaa !118
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !63
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), float* %52) #25
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0), i64 29)
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
  %67 = load i32, i32* %66, align 8, !tbaa !119
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #25
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !63
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), double* %81) #25
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0), i64 29)
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
  %96 = load i32, i32* %95, align 8, !tbaa !119
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #25
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !63
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i32* %110) #25
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0), i64 29)
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
  %125 = load i32, i32* %124, align 8, !tbaa !119
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #25
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !63
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
  store i32 0, i32* %167, align 8, !tbaa !120
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !38
  store i8 0, i8* %144, align 1, !tbaa !24
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #25
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0), i64 29)
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
  %187 = load i32, i32* %186, align 8, !tbaa !119
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #25
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !64
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !117

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !92
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !98
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !105
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !92
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !98
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !105
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !64
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !65
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !13
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !38
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !92
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !98
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #25
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !59, !alias.scope !121
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !59, !noalias !124
  store i8* %95, i8** %47, align 8, !tbaa !59, !alias.scope !124
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !13, !noalias !124
  %96 = load i8*, i8** %47, align 8, !tbaa !13
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !38
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
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !92
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !98
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #25
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !65
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !59, !alias.scope !127
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !13, !noalias !127
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !38, !noalias !127
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i64 2)
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
  %173 = load i64, i64* %172, align 8, !tbaa !38
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
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !65
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !13
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !38
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !92
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !98
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !105
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
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #25
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !65
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0), i64 1)
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
  %228 = load i64, i64* %227, align 8, !tbaa !38
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
  %249 = load i32, i32* %42, align 8, !tbaa !64
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !130

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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

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
define internal void @_GLOBAL__sub_I_floydwarshall.cpp() #5 section ".text.startup" {
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32, i32)** @_Z17floydWarshallPassPjS_jj to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #22

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
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
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
!10 = !{!"_ZTS13FloydWarshall", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !8, i64 96, !8, i64 100, !4, i64 104, !4, i64 112}
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
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!10, !4, i64 112}
!29 = !{!30, !21, i64 76}
!30 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !21, i64 40, !14, i64 48, !31, i64 56, !21, i64 76, !21, i64 77, !21, i64 78, !14, i64 80}
!31 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!32 = !{i8 0, i8 2}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !27}
!35 = !{!30, !21, i64 77}
!36 = !{!10, !4, i64 64}
!37 = !{!10, !4, i64 72}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSs9_Rep_baseE", !40, i64 0, !40, i64 8, !8, i64 16}
!40 = !{!"long", !5, i64 0}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{!46, !8, i64 332}
!46 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !40, i64 256, !40, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !40, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !47, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !40, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !40, i64 712, !40, i64 720, !40, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!47 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!48 = !{!46, !8, i64 328}
!49 = !{!10, !8, i64 100}
!50 = !{!10, !11, i64 16}
!51 = !{!10, !4, i64 80}
!52 = !{!10, !4, i64 88}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !5, i64 0}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = !{!15, !4, i64 0}
!60 = !{!61, !62, i64 32}
!61 = !{!"_ZTSN6appsdk6OptionE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !62, i64 32, !4, i64 40}
!62 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!63 = !{!61, !4, i64 40}
!64 = !{!30, !8, i64 8}
!65 = !{!30, !4, i64 32}
!66 = distinct !{!66, !27}
!67 = !{!10, !4, i64 104}
!68 = !{!69, !4, i64 8}
!69 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!71 = !{!69, !4, i64 0}
!72 = !{!10, !11, i64 8}
!73 = !{!74, !75, i64 8}
!74 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !14, i64 0, !75, i64 8, !75, i64 16, !75, i64 24}
!75 = !{!"long long", !5, i64 0}
!76 = !{!69, !4, i64 16}
!77 = !{!78, !40, i64 0}
!78 = !{!"_ZTS7timeval", !40, i64 0, !40, i64 8}
!79 = !{!78, !40, i64 8}
!80 = !{!74, !75, i64 24}
!81 = !{!74, !75, i64 16}
!82 = !{!10, !8, i64 96}
!83 = distinct !{!83, !27}
!84 = !{!10, !11, i64 32}
!85 = !{!30, !21, i64 78}
!86 = !{!87, !11, i64 24}
!87 = !{!"_ZTSN6appsdk8SDKTimerE", !88, i64 0, !11, i64 24}
!88 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!91 = distinct !{!91, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!92 = !{!93, !94, i64 24}
!93 = !{!"_ZTSSt8ios_base", !40, i64 8, !40, i64 16, !94, i64 24, !95, i64 28, !95, i64 32, !4, i64 40, !96, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !97, i64 208}
!94 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!95 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!96 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !40, i64 8}
!97 = !{!"_ZTSSt6locale", !4, i64 0}
!98 = !{!94, !94, i64 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!101 = distinct !{!101, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!104 = distinct !{!104, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!105 = !{!93, !40, i64 16}
!106 = distinct !{!106, !27}
!107 = !{!10, !8, i64 0}
!108 = !{!31, !8, i64 16}
!109 = !{!30, !8, i64 12}
!110 = !{!30, !8, i64 16}
!111 = !{!112, !8, i64 88}
!112 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !21, i64 92}
!113 = !{!112, !21, i64 92}
!114 = !{!30, !4, i64 24}
!115 = distinct !{!115, !27}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !27}
!118 = !{!21, !21, i64 0}
!119 = !{!93, !95, i64 32}
!120 = !{!39, !8, i64 16}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!123 = distinct !{!123, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!126 = distinct !{!126, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!129 = distinct !{!129, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!130 = distinct !{!130, !27}
