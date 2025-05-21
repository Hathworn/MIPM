; ModuleID = 'bitonicsort/bitonicsort.cpp'
source_filename = "bitonicsort/bitonicsort.cpp"
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
%class.BitonicSort = type { i32, double, double, double, double, i32, %"class.std::basic_string", i32*, i32, i32*, i32*, i32, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"* }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.appsdk::SDKTimer" = type { %"class.std::vector", double }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<appsdk::SDKTimer::Timer *, std::allocator<appsdk::SDKTimer::Timer *>>::_Vector_impl" }
%"struct.std::_Vector_base<appsdk::SDKTimer::Timer *, std::allocator<appsdk::SDKTimer::Timer *>>::_Vector_impl" = type { %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"** }
%"struct.appsdk::SDKTimer::Timer" = type { %"class.std::basic_string", i64, i64, i64 }
%"class.appsdk::HIPCommandArgs" = type <{ %"class.appsdk::SDKCmdArgsParser", i32, i8, [3 x i8] }>
%"class.appsdk::SDKCmdArgsParser" = type { i32 (...)**, i32, i32, i32, i8**, %"struct.appsdk::Option"*, i8, %"class.std::basic_string", %"struct.appsdk::sdkVersionStr", i8, i8, i8, %"class.std::basic_string" }
%"struct.appsdk::Option" = type { %"class.std::basic_string", %"class.std::basic_string", %"class.std::basic_string", %"class.std::basic_string", i32, i8* }
%"struct.appsdk::sdkVersionStr" = type { i32, i32, i32, i32, i32 }
%"class.std::allocator" = type { i8 }
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

$_ZN11BitonicSortC2Ev = comdat any

$_ZN11BitonicSortD2Ev = comdat any

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
@_Z11bitonicSortPjjjj = dso_local constant void (i32*, i32, i32, i32)* @_Z26__device_stub__bitonicSortPjjjj, align 8
@.str = private unnamed_addr constant [52 x i8] c"Failed to allocate host memory. (verificationInput)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"bitonicsort/bitonicsort.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Unsorted Input\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"asc\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Please input asc or desc,the default sort order is desc!\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"HIP resource initilization failed\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Length of the array to be sorted\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Sort in descending/ascending order[desc/asc]\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"Error, iterations cannot be 0 or negative. Exiting..\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"\0AThe input lentgh must be a power of 2\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Elements\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Setup Time (sec)\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Avg. Kernel Time (sec)\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Elements/sec\00", align 1
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
@.str.80 = private unnamed_addr constant [33 x i8] c"Cannot fill array. NULL pointer.\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [21 x i8] c"_Z11bitonicSortPjjjj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_bitonicsort.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z26__device_stub__bitonicSortPjjjj(i32* %0, i32 %1, i32 %2, i32 %3) #3 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to i32***
  store i32** %5, i32*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to i32**
  store i32* %6, i32** %17, align 8
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
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32, i32, i32)** @_Z11bitonicSortPjjjj to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local i32 @_ZN11BitonicSort16setupBitonicSortEv(%class.BitonicSort* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator", align 1
  %8 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = shl i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = tail call noalias align 16 i8* @malloc(i64 %11) #26
  %13 = bitcast i8* %12 to i32*
  %14 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 7
  %15 = bitcast i32** %14 to i8**
  store i8* %12, i8** %15, align 8, !tbaa !14
  %16 = tail call i32 @_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j(i32* %13, i32 %9, i32 1, i32 0, i32 255, i32 123)
  %17 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 13
  %18 = bitcast %"class.appsdk::HIPCommandArgs"** %17 to %"class.appsdk::SDKCmdArgsParser"**
  %19 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %19, i64 0, i32 10
  %21 = load i8, i8* %20, align 1, !tbaa !16, !range !20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %95, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 8, !tbaa !9
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = tail call noalias align 16 i8* @malloc(i64 %26) #26
  %28 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 9
  %29 = bitcast i32** %28 to i8**
  store i8* %27, i8** %29, align 8, !tbaa !21
  %30 = icmp eq i8* %27, null
  br i1 %30, label %31, label %93

31:                                               ; preds = %23
  %32 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %32) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
          to label %33 unwind label %87

33:                                               ; preds = %31
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %34 unwind label %89

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !22
  %37 = getelementptr inbounds i8, i8* %36, i64 -24
  %38 = bitcast i8* %37 to %"struct.std::basic_string<char>::_Rep"*
  %39 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %39) #26
  %40 = icmp eq i8* %37, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %40, label %53, label %41, !prof !23

41:                                               ; preds = %34
  %42 = getelementptr inbounds i8, i8* %36, i64 -8
  %43 = bitcast i8* %42 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %44, label %46

44:                                               ; preds = %41
  %45 = atomicrmw volatile add i32* %43, i32 -1 acq_rel, align 4
  br label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %43, align 8, !tbaa !7
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %43, align 8, !tbaa !7
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %38, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %53

53:                                               ; preds = %34, %49, %52
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %39) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #26
  %54 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 27)
  %56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %57 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 230)
  %58 = bitcast %"class.std::basic_ostream"* %57 to i8**
  %59 = load i8*, i8** %58, align 8, !tbaa !24
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = bitcast %"class.std::basic_ostream"* %57 to i8*
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  %65 = getelementptr inbounds i8, i8* %64, i64 240
  %66 = bitcast i8* %65 to %"class.std::ctype"**
  %67 = load %"class.std::ctype"*, %"class.std::ctype"** %66, align 8, !tbaa !26
  %68 = icmp eq %"class.std::ctype"* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

70:                                               ; preds = %53
  %71 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %67, i64 0, i32 8
  %72 = load i8, i8* %71, align 8, !tbaa !28
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %67, i64 0, i32 9, i64 10
  %76 = load i8, i8* %75, align 1, !tbaa !30
  br label %83

77:                                               ; preds = %70
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %67)
  %78 = bitcast %"class.std::ctype"* %67 to i8 (%"class.std::ctype"*, i8)***
  %79 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %78, align 8, !tbaa !24
  %80 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %79, i64 6
  %81 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %80, align 8
  %82 = call signext i8 %81(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %67, i8 signext 10)
  br label %83

83:                                               ; preds = %74, %77
  %84 = phi i8 [ %76, %74 ], [ %82, %77 ]
  %85 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %57, i8 signext %84)
  %86 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %85)
  br label %130

87:                                               ; preds = %31
  %88 = landingpad { i8*, i32 }
          cleanup
  br label %91

89:                                               ; preds = %33
  %90 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi { i8*, i32 } [ %90, %89 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #26
  br label %132

93:                                               ; preds = %23
  %94 = load i8*, i8** %15, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %27, i8* align 4 %94, i64 %26, i1 false)
  br label %95

95:                                               ; preds = %93, %1
  %96 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %19, i64 0, i32 9
  %97 = load i8, i8* %96, align 4, !tbaa !31, !range !20
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %100) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %7)
          to label %101 unwind label %124

101:                                              ; preds = %99
  %102 = load i32*, i32** %14, align 8, !tbaa !14
  %103 = load i32, i32* %8, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %6, i32* %102, i32 %103, i32 1)
          to label %104 unwind label %126

104:                                              ; preds = %101
  %105 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8, !tbaa !22
  %107 = getelementptr inbounds i8, i8* %106, i64 -24
  %108 = bitcast i8* %107 to %"struct.std::basic_string<char>::_Rep"*
  %109 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %109) #26
  %110 = icmp eq i8* %107, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %110, label %123, label %111, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %108, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %123

123:                                              ; preds = %104, %119, %122
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %109) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %100) #26
  br label %130

124:                                              ; preds = %99
  %125 = landingpad { i8*, i32 }
          cleanup
  br label %128

126:                                              ; preds = %101
  %127 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi { i8*, i32 } [ %127, %126 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %100) #26
  br label %132

130:                                              ; preds = %95, %123, %83
  %131 = phi i32 [ 1, %83 ], [ 0, %123 ], [ 0, %95 ]
  ret i32 %131

132:                                              ; preds = %128, %91
  %133 = phi { i8*, i32 } [ %92, %91 ], [ %129, %128 ]
  resume { i8*, i32 } %133
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator", align 1
  %10 = icmp eq i32* %0, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.80, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %9)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %13 unwind label %33

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  %19 = icmp eq i8* %16, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %19, label %32, label %20, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %17, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %7) #26
  br label %32

32:                                               ; preds = %13, %28, %31
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #26
  br label %70

33:                                               ; preds = %11
  %34 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #26
  resume { i8*, i32 } %34

35:                                               ; preds = %6
  %36 = icmp eq i32 %5, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = tail call i64 @time(i64* null) #26
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %5, %35 ], [ %39, %37 ]
  tail call void @srand(i32 %41) #26
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
  %58 = tail call i32 @rand() #26
  %59 = sitofp i32 %58 to double
  %60 = fmul contract double %44, %59
  %61 = fmul contract double %60, 0x3E00000000000000
  %62 = fptoui double %61 to i32
  %63 = add i32 %62, %3
  %64 = getelementptr inbounds i32, i32* %0, i64 %57
  store i32 %63, i32* %64, align 4, !tbaa !7
  %65 = add nuw nsw i64 %56, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %67, label %55, !llvm.loop !32

67:                                               ; preds = %55
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %50
  br i1 %69, label %70, label %52, !llvm.loop !34

70:                                               ; preds = %67, %40, %32
  %71 = phi i32 [ 1, %32 ], [ 0, %40 ], [ 0, %67 ]
  ret i32 %71
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #8 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !22
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !35
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !24
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !26
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !28
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !30
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !24
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

declare dso_local void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, %"class.std::allocator"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* %0, i32* %1, i32 %2, i32 %3) local_unnamed_addr #8 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !22
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !35
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
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = zext i32 %27 to i64
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !38

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !39

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !39

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN11BitonicSort8setupHIPEv(%class.BitonicSort* nocapture nonnull readnone align 8 %0) local_unnamed_addr #8 align 2 {
  %2 = alloca %struct.hipDeviceProp_t, align 8
  %3 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %3) #26
  %4 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %2, i32 0)
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 14)
  %6 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 13
  %7 = load i32, i32* %6, align 4, !tbaa !40
  %8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !24
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !26
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !28
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !30
  br label %34

28:                                               ; preds = %21
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !24
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
  %40 = load i32, i32* %39, align 8, !tbaa !43
  %41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %40)
  %42 = bitcast %"class.std::basic_ostream"* %41 to i8**
  %43 = load i8*, i8** %42, align 8, !tbaa !24
  %44 = getelementptr i8, i8* %43, i64 -24
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %"class.std::basic_ostream"* %41 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  %49 = getelementptr inbounds i8, i8* %48, i64 240
  %50 = bitcast i8* %49 to %"class.std::ctype"**
  %51 = load %"class.std::ctype"*, %"class.std::ctype"** %50, align 8, !tbaa !26
  %52 = icmp eq %"class.std::ctype"* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

54:                                               ; preds = %34
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !28
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 9, i64 10
  %60 = load i8, i8* %59, align 1, !tbaa !30
  br label %67

61:                                               ; preds = %54
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51)
  %62 = bitcast %"class.std::ctype"* %51 to i8 (%"class.std::ctype"*, i8)***
  %63 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %62, align 8, !tbaa !24
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
  %74 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %75 = getelementptr i8, i8* %74, i64 -24
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 240
  %80 = bitcast i8* %79 to %"class.std::ctype"**
  %81 = load %"class.std::ctype"*, %"class.std::ctype"** %80, align 8, !tbaa !26
  %82 = icmp eq %"class.std::ctype"* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

84:                                               ; preds = %67
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !28
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 9, i64 10
  %90 = load i8, i8* %89, align 1, !tbaa !30
  br label %97

91:                                               ; preds = %84
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81)
  %92 = bitcast %"class.std::ctype"* %81 to i8 (%"class.std::ctype"*, i8)***
  %93 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %92, align 8, !tbaa !24
  %94 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %93, i64 6
  %95 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %94, align 8
  %96 = call signext i8 %95(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81, i8 signext 10)
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi i8 [ %90, %88 ], [ %96, %91 ]
  %99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %98)
  %100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %99)
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %3) #26
  ret i32 0
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN11BitonicSort10runKernelsEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim3, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [4 x i8*], align 16
  %11 = alloca %struct.ihipEvent_t*, align 8
  %12 = alloca %struct.ihipEvent_t*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = bitcast %struct.ihipEvent_t** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #26
  %16 = bitcast %struct.ihipEvent_t** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #26
  %17 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %11)
  %18 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %12)
  %19 = bitcast float* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #26
  store float 1.000000e+00, float* %13, align 4, !tbaa !44
  %20 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  %21 = load i32, i32* %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 10
  %23 = bitcast i32** %22 to i8**
  %24 = zext i32 %21 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = call i32 @hipHostMalloc(i8** nonnull %23, i64 %25, i32 0)
  %27 = bitcast i32** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #26
  %28 = bitcast i32** %14 to i8**
  %29 = load i8*, i8** %23, align 8, !tbaa !46
  %30 = call i32 @hipHostGetDevicePointer(i8** nonnull %28, i8* %29, i32 0)
  %31 = load i8*, i8** %28, align 8, !tbaa !3
  %32 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 7
  %33 = bitcast i32** %32 to i8**
  %34 = load i8*, i8** %33, align 8, !tbaa !14
  %35 = load i32, i32* %20, align 8, !tbaa !9
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 2
  %38 = call i32 @hipMemcpy(i8* %31, i8* %34, i64 %37, i32 1)
  %39 = load i32, i32* %20, align 8, !tbaa !9
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %1, %41
  %42 = phi i32 [ %44, %41 ], [ 0, %1 ]
  %43 = phi i32 [ %45, %41 ], [ %39, %1 ]
  %44 = add nuw nsw i32 %42, 1
  %45 = lshr i32 %43, 1
  %46 = icmp ugt i32 %43, 3
  br i1 %46, label %41, label %47, !llvm.loop !47

47:                                               ; preds = %41, %1
  %48 = phi i32 [ 0, %1 ], [ %44, %41 ]
  %49 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 6
  %50 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %47
  %53 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #26
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %52
  %56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i64 56)
  %57 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %58 = getelementptr i8, i8* %57, i64 -24
  %59 = bitcast i8* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 240
  %63 = bitcast i8* %62 to %"class.std::ctype"**
  %64 = load %"class.std::ctype"*, %"class.std::ctype"** %63, align 8, !tbaa !26
  %65 = icmp eq %"class.std::ctype"* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

67:                                               ; preds = %55
  %68 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %64, i64 0, i32 8
  %69 = load i8, i8* %68, align 8, !tbaa !28
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %64, i64 0, i32 9, i64 10
  %73 = load i8, i8* %72, align 1, !tbaa !30
  br label %80

74:                                               ; preds = %67
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %64)
  %75 = bitcast %"class.std::ctype"* %64 to i8 (%"class.std::ctype"*, i8)***
  %76 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %75, align 8, !tbaa !24
  %77 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %76, i64 6
  %78 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %77, align 8
  %79 = call signext i8 %78(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %64, i8 signext 10)
  br label %80

80:                                               ; preds = %71, %74
  %81 = phi i8 [ %73, %71 ], [ %79, %74 ]
  %82 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %81)
  %83 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %82)
  br label %84

84:                                               ; preds = %52, %47, %80
  %85 = phi i32 [ 0, %80 ], [ 1, %47 ], [ 0, %52 ]
  %86 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 5
  store i32 %85, i32* %86, align 8, !tbaa !48
  %87 = lshr i32 %21, 9
  %88 = zext i32 %87 to i64
  %89 = or i64 %88, 4294967296
  %90 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 5
  %91 = bitcast i32** %2 to i8*
  %92 = bitcast i32* %3 to i8*
  %93 = bitcast i32* %4 to i8*
  %94 = bitcast i32* %5 to i8*
  %95 = bitcast %struct.dim3* %6 to i8*
  %96 = bitcast %struct.dim3* %7 to i8*
  %97 = bitcast i64* %8 to i8*
  %98 = bitcast i8** %9 to i8*
  %99 = bitcast [4 x i8*]* %10 to i8*
  %100 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %101 = bitcast [4 x i8*]* %10 to i32***
  %102 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  %103 = bitcast i8** %102 to i32**
  %104 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  %105 = bitcast i8** %104 to i32**
  %106 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  %107 = bitcast i8** %106 to i32**
  %108 = bitcast i8** %9 to %struct.ihipStream_t**
  %109 = bitcast %struct.dim3* %6 to i64*
  %110 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %111 = bitcast %struct.dim3* %7 to i64*
  %112 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %113 = icmp eq i32 %48, 0
  br i1 %113, label %151, label %118

114:                                              ; preds = %138
  %115 = add nuw nsw i32 %120, 1
  %116 = add nuw nsw i32 %119, 1
  %117 = icmp eq i32 %115, %48
  br i1 %117, label %151, label %118, !llvm.loop !49

118:                                              ; preds = %84, %114
  %119 = phi i32 [ %116, %114 ], [ 1, %84 ]
  %120 = phi i32 [ %115, %114 ], [ 0, %84 ]
  br label %121

121:                                              ; preds = %118, %138
  %122 = phi i32 [ 0, %118 ], [ %149, %138 ]
  %123 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %11, align 8, !tbaa !3
  %124 = call i32 @hipEventRecord(%struct.ihipEvent_t* %123, %struct.ihipStream_t* null)
  %125 = call i32 @__hipPushCallConfiguration(i64 %89, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load i32*, i32** %22, align 8, !tbaa !46
  %129 = load i32, i32* %90, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %92)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %93)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %94)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %95)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %96)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %97)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %98)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %99)
  store i32* %128, i32** %2, align 8, !tbaa !3
  store i32 %120, i32* %3, align 4, !tbaa !7
  store i32 %122, i32* %4, align 4, !tbaa !7
  store i32 %129, i32* %5, align 4, !tbaa !7
  store i32** %2, i32*** %101, align 16
  store i32* %3, i32** %103, align 8
  store i32* %4, i32** %105, align 16
  store i32* %5, i32** %107, align 8
  %130 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %6, %struct.dim3* nonnull %7, i64* nonnull %8, i8** nonnull %9)
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.ihipStream_t*, %struct.ihipStream_t** %108, align 8
  %133 = load i64, i64* %109, align 8
  %134 = load i32, i32* %110, align 8
  %135 = load i64, i64* %111, align 8
  %136 = load i32, i32* %112, align 8
  %137 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32, i32, i32)** @_Z11bitonicSortPjjjj to i8*), i64 %133, i32 %134, i64 %135, i32 %136, i8** nonnull %100, i64 %131, %struct.ihipStream_t* %132)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %92)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %93)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %94)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %95)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %96)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %97)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %98)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %99)
  br label %138

138:                                              ; preds = %127, %121
  %139 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %12, align 8, !tbaa !3
  %140 = call i32 @hipEventRecord(%struct.ihipEvent_t* %139, %struct.ihipStream_t* null)
  %141 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %12, align 8, !tbaa !3
  %142 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %141)
  %143 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %11, align 8, !tbaa !3
  %144 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %12, align 8, !tbaa !3
  %145 = call i32 @hipEventElapsedTime(float* nonnull %13, %struct.ihipEvent_t* %143, %struct.ihipEvent_t* %144)
  %146 = load float, float* %13, align 4, !tbaa !44
  %147 = fpext float %146 to double
  %148 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), double %147)
  %149 = add nuw nsw i32 %122, 1
  %150 = icmp eq i32 %149, %119
  br i1 %150, label %114, label %121, !llvm.loop !50

151:                                              ; preds = %114, %84
  %152 = load i8*, i8** %33, align 8, !tbaa !14
  %153 = load i8*, i8** %28, align 8, !tbaa !3
  %154 = load i32, i32* %20, align 8, !tbaa !9
  %155 = zext i32 %154 to i64
  %156 = shl nuw nsw i64 %155, 2
  %157 = call i32 @hipMemcpy(i8* %152, i8* %153, i64 %156, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #26
  ret i32 0
}

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_ZN11BitonicSort20swapIfFirstIsGreaterEPjS0_(%class.BitonicSort* nocapture nonnull readnone align 8 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #12 align 2 {
  %4 = load i32, i32* %1, align 4, !tbaa !7
  %5 = load i32, i32* %2, align 4, !tbaa !7
  %6 = icmp ugt i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i32 %5, i32* %1, align 4, !tbaa !7
  store i32 %4, i32* %2, align 4, !tbaa !7
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN11BitonicSort23bitonicSortCPUReferenceEPjjb(%class.BitonicSort* nocapture nonnull readnone align 8 %0, i32* nocapture %1, i32 %2, i1 zeroext %3) local_unnamed_addr #13 align 2 {
  %5 = zext i1 %3 to i8
  %6 = lshr i32 %2, 1
  %7 = icmp ult i32 %2, 2
  br i1 %7, label %250, label %8

8:                                                ; preds = %4, %11
  %9 = phi i32 [ %12, %11 ], [ 2, %4 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %248, %72, %190, %8
  %12 = shl i32 %9, 1
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %250, label %8, !llvm.loop !51

14:                                               ; preds = %8
  %15 = icmp ult i32 %9, %2
  br i1 %15, label %75, label %74

16:                                               ; preds = %74, %72
  %17 = phi i32 [ %18, %72 ], [ %9, %74 ]
  %18 = lshr i32 %17, 1
  %19 = and i32 %17, 2
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %18, 1
  br label %22

22:                                               ; preds = %42, %16
  %23 = phi i32 [ %45, %42 ], [ %18, %16 ]
  %24 = phi i32 [ %43, %42 ], [ 0, %16 ]
  %25 = add i32 %24, %18
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = zext i32 %24 to i64
  br i1 %20, label %40, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds i32, i32* %1, i64 %28
  %31 = add i32 %18, %24
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %1, i64 %32
  %34 = load i32, i32* %30, align 4, !tbaa !7
  %35 = load i32, i32* %33, align 4, !tbaa !7
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 %35, i32* %30, align 4, !tbaa !7
  store i32 %34, i32* %33, align 4, !tbaa !7
  br label %38

38:                                               ; preds = %37, %29
  %39 = add nuw nsw i64 %28, 1
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi i64 [ %28, %27 ], [ %39, %38 ]
  br i1 %21, label %42, label %46

42:                                               ; preds = %40, %68, %22
  %43 = add i32 %24, %17
  %44 = icmp ult i32 %43, %2
  %45 = add i32 %23, %17
  br i1 %44, label %22, label %72, !llvm.loop !52

46:                                               ; preds = %40, %68
  %47 = phi i64 [ %69, %68 ], [ %41, %40 ]
  %48 = getelementptr inbounds i32, i32* %1, i64 %47
  %49 = trunc i64 %47 to i32
  %50 = add i32 %18, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %1, i64 %51
  %53 = load i32, i32* %48, align 4, !tbaa !7
  %54 = load i32, i32* %52, align 4, !tbaa !7
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 %54, i32* %48, align 4, !tbaa !7
  store i32 %53, i32* %52, align 4, !tbaa !7
  br label %57

57:                                               ; preds = %56, %46
  %58 = add nuw nsw i64 %47, 1
  %59 = getelementptr inbounds i32, i32* %1, i64 %58
  %60 = trunc i64 %58 to i32
  %61 = add i32 %18, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %1, i64 %62
  %64 = load i32, i32* %59, align 4, !tbaa !7
  %65 = load i32, i32* %63, align 4, !tbaa !7
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 %65, i32* %59, align 4, !tbaa !7
  store i32 %64, i32* %63, align 4, !tbaa !7
  br label %68

68:                                               ; preds = %67, %57
  %69 = add nuw nsw i64 %47, 2
  %70 = trunc i64 %69 to i32
  %71 = icmp eq i32 %23, %70
  br i1 %71, label %42, label %46, !llvm.loop !53

72:                                               ; preds = %42
  %73 = icmp ugt i32 %17, 3
  br i1 %73, label %16, label %11, !llvm.loop !54

74:                                               ; preds = %14
  br i1 %3, label %16, label %192

75:                                               ; preds = %14, %190
  %76 = phi i32 [ %77, %190 ], [ %9, %14 ]
  %77 = lshr i32 %76, 1
  %78 = add nsw i32 %77, -1
  %79 = and i32 %76, 2
  %80 = icmp eq i32 %79, 0
  %81 = icmp eq i32 %78, 0
  %82 = and i32 %76, 2
  %83 = icmp eq i32 %82, 0
  %84 = icmp eq i32 %78, 0
  br label %85

85:                                               ; preds = %103, %75
  %86 = phi i32 [ %106, %103 ], [ %77, %75 ]
  %87 = phi i32 [ %104, %103 ], [ 0, %75 ]
  %88 = phi i8 [ %101, %103 ], [ %5, %75 ]
  %89 = zext i32 %87 to i64
  %90 = add i32 %87, %77
  %91 = icmp eq i32 %87, %9
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = urem i32 %87, %9
  %94 = icmp ne i32 %93, 0
  %95 = icmp eq i32 %87, %6
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %92, %85
  %98 = and i8 %88, 1
  %99 = xor i8 %98, 1
  br label %100

100:                                              ; preds = %97, %92
  %101 = phi i8 [ %99, %97 ], [ %88, %92 ]
  %102 = icmp ult i32 %87, %90
  br i1 %102, label %133, label %103

103:                                              ; preds = %148, %129, %162, %186, %100
  %104 = add i32 %87, %76
  %105 = icmp ult i32 %104, %2
  %106 = add i32 %86, %76
  br i1 %105, label %85, label %190, !llvm.loop !52

107:                                              ; preds = %148, %129
  %108 = phi i64 [ %130, %129 ], [ %149, %148 ]
  %109 = getelementptr inbounds i32, i32* %1, i64 %108
  %110 = trunc i64 %108 to i32
  %111 = add i32 %77, %110
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %1, i64 %112
  %114 = load i32, i32* %109, align 4, !tbaa !7
  %115 = load i32, i32* %113, align 4, !tbaa !7
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  store i32 %115, i32* %109, align 4, !tbaa !7
  store i32 %114, i32* %113, align 4, !tbaa !7
  br label %118

118:                                              ; preds = %117, %107
  %119 = add nuw nsw i64 %108, 1
  %120 = getelementptr inbounds i32, i32* %1, i64 %119
  %121 = trunc i64 %119 to i32
  %122 = add i32 %77, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %1, i64 %123
  %125 = load i32, i32* %120, align 4, !tbaa !7
  %126 = load i32, i32* %124, align 4, !tbaa !7
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  store i32 %126, i32* %120, align 4, !tbaa !7
  store i32 %125, i32* %124, align 4, !tbaa !7
  br label %129

129:                                              ; preds = %128, %118
  %130 = add nuw nsw i64 %108, 2
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %86, %131
  br i1 %132, label %103, label %107, !llvm.loop !53

133:                                              ; preds = %100
  %134 = and i8 %101, 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %133
  br i1 %80, label %148, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds i32, i32* %1, i64 %89
  %139 = add i32 %77, %87
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %1, i64 %140
  %142 = load i32, i32* %138, align 4, !tbaa !7
  %143 = load i32, i32* %141, align 4, !tbaa !7
  %144 = icmp ugt i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  store i32 %143, i32* %138, align 4, !tbaa !7
  store i32 %142, i32* %141, align 4, !tbaa !7
  br label %146

146:                                              ; preds = %145, %137
  %147 = add nuw nsw i64 %89, 1
  br label %148

148:                                              ; preds = %146, %136
  %149 = phi i64 [ %89, %136 ], [ %147, %146 ]
  br i1 %81, label %103, label %107

150:                                              ; preds = %133
  br i1 %83, label %162, label %151

151:                                              ; preds = %150
  %152 = add i32 %77, %87
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %1, i64 %153
  %155 = getelementptr inbounds i32, i32* %1, i64 %89
  %156 = load i32, i32* %154, align 4, !tbaa !7
  %157 = load i32, i32* %155, align 4, !tbaa !7
  %158 = icmp ugt i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  store i32 %157, i32* %154, align 4, !tbaa !7
  store i32 %156, i32* %155, align 4, !tbaa !7
  br label %160

160:                                              ; preds = %159, %151
  %161 = add nuw nsw i64 %89, 1
  br label %162

162:                                              ; preds = %160, %150
  %163 = phi i64 [ %89, %150 ], [ %161, %160 ]
  br i1 %84, label %103, label %164

164:                                              ; preds = %162, %186
  %165 = phi i64 [ %187, %186 ], [ %163, %162 ]
  %166 = trunc i64 %165 to i32
  %167 = add i32 %77, %166
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %1, i64 %168
  %170 = getelementptr inbounds i32, i32* %1, i64 %165
  %171 = load i32, i32* %169, align 4, !tbaa !7
  %172 = load i32, i32* %170, align 4, !tbaa !7
  %173 = icmp ugt i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  store i32 %172, i32* %169, align 4, !tbaa !7
  store i32 %171, i32* %170, align 4, !tbaa !7
  br label %175

175:                                              ; preds = %174, %164
  %176 = add nuw nsw i64 %165, 1
  %177 = trunc i64 %176 to i32
  %178 = add i32 %77, %177
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %1, i64 %179
  %181 = getelementptr inbounds i32, i32* %1, i64 %176
  %182 = load i32, i32* %180, align 4, !tbaa !7
  %183 = load i32, i32* %181, align 4, !tbaa !7
  %184 = icmp ugt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  store i32 %183, i32* %180, align 4, !tbaa !7
  store i32 %182, i32* %181, align 4, !tbaa !7
  br label %186

186:                                              ; preds = %185, %175
  %187 = add nuw nsw i64 %165, 2
  %188 = trunc i64 %187 to i32
  %189 = icmp eq i32 %86, %188
  br i1 %189, label %103, label %164, !llvm.loop !53

190:                                              ; preds = %103
  %191 = icmp ugt i32 %76, 3
  br i1 %191, label %75, label %11, !llvm.loop !54

192:                                              ; preds = %74, %248
  %193 = phi i32 [ %194, %248 ], [ %9, %74 ]
  %194 = lshr i32 %193, 1
  %195 = and i32 %193, 2
  %196 = icmp eq i32 %195, 0
  %197 = icmp eq i32 %194, 1
  br label %198

198:                                              ; preds = %218, %192
  %199 = phi i32 [ %221, %218 ], [ %194, %192 ]
  %200 = phi i32 [ %219, %218 ], [ 0, %192 ]
  %201 = add i32 %200, %194
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %198
  %204 = zext i32 %200 to i64
  br i1 %196, label %216, label %205

205:                                              ; preds = %203
  %206 = add i32 %194, %200
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %1, i64 %207
  %209 = getelementptr inbounds i32, i32* %1, i64 %204
  %210 = load i32, i32* %208, align 4, !tbaa !7
  %211 = load i32, i32* %209, align 4, !tbaa !7
  %212 = icmp ugt i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  store i32 %211, i32* %208, align 4, !tbaa !7
  store i32 %210, i32* %209, align 4, !tbaa !7
  br label %214

214:                                              ; preds = %213, %205
  %215 = add nuw nsw i64 %204, 1
  br label %216

216:                                              ; preds = %214, %203
  %217 = phi i64 [ %204, %203 ], [ %215, %214 ]
  br i1 %197, label %218, label %222

218:                                              ; preds = %216, %244, %198
  %219 = add i32 %200, %193
  %220 = icmp ult i32 %219, %2
  %221 = add i32 %199, %193
  br i1 %220, label %198, label %248, !llvm.loop !52

222:                                              ; preds = %216, %244
  %223 = phi i64 [ %245, %244 ], [ %217, %216 ]
  %224 = trunc i64 %223 to i32
  %225 = add i32 %194, %224
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %1, i64 %226
  %228 = getelementptr inbounds i32, i32* %1, i64 %223
  %229 = load i32, i32* %227, align 4, !tbaa !7
  %230 = load i32, i32* %228, align 4, !tbaa !7
  %231 = icmp ugt i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %222
  store i32 %230, i32* %227, align 4, !tbaa !7
  store i32 %229, i32* %228, align 4, !tbaa !7
  br label %233

233:                                              ; preds = %232, %222
  %234 = add nuw nsw i64 %223, 1
  %235 = trunc i64 %234 to i32
  %236 = add i32 %194, %235
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %1, i64 %237
  %239 = getelementptr inbounds i32, i32* %1, i64 %234
  %240 = load i32, i32* %238, align 4, !tbaa !7
  %241 = load i32, i32* %239, align 4, !tbaa !7
  %242 = icmp ugt i32 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %233
  store i32 %241, i32* %238, align 4, !tbaa !7
  store i32 %240, i32* %239, align 4, !tbaa !7
  br label %244

244:                                              ; preds = %243, %233
  %245 = add nuw nsw i64 %223, 2
  %246 = trunc i64 %245 to i32
  %247 = icmp eq i32 %199, %246
  br i1 %247, label %218, label %222, !llvm.loop !53

248:                                              ; preds = %218
  %249 = icmp ugt i32 %193, 3
  br i1 %249, label %192, label %11, !llvm.loop !54

250:                                              ; preds = %11, %4
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN11BitonicSort10initializeEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 13
  %6 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %5, align 8, !tbaa !15
  %7 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %11 unwind label %64

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !22
  %14 = getelementptr inbounds i8, i8* %13, i64 -24
  %15 = bitcast i8* %14 to %"struct.std::basic_string<char>::_Rep"*
  %16 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %16) #26
  %17 = icmp eq i8* %14, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %17, label %30, label %18, !prof !23

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, i8* %13, i64 -8
  %20 = bitcast i8* %19 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %21, label %23

21:                                               ; preds = %18
  %22 = atomicrmw volatile add i32* %20, i32 -1 acq_rel, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %20, align 8, !tbaa !7
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %20, align 8, !tbaa !7
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %15, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %30

30:                                               ; preds = %11, %26, %29
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %16) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #26
  %31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %32 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 27)
  %33 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %34 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 428)
  %35 = bitcast %"class.std::basic_ostream"* %34 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !24
  %37 = getelementptr i8, i8* %36, i64 -24
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %"class.std::basic_ostream"* %34 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  %42 = getelementptr inbounds i8, i8* %41, i64 240
  %43 = bitcast i8* %42 to %"class.std::ctype"**
  %44 = load %"class.std::ctype"*, %"class.std::ctype"** %43, align 8, !tbaa !26
  %45 = icmp eq %"class.std::ctype"* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

47:                                               ; preds = %30
  %48 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %44, i64 0, i32 8
  %49 = load i8, i8* %48, align 8, !tbaa !28
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %44, i64 0, i32 9, i64 10
  %53 = load i8, i8* %52, align 1, !tbaa !30
  br label %60

54:                                               ; preds = %47
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %44)
  %55 = bitcast %"class.std::ctype"* %44 to i8 (%"class.std::ctype"*, i8)***
  %56 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %55, align 8, !tbaa !24
  %57 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %56, i64 6
  %58 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %57, align 8
  %59 = call signext i8 %58(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %44, i8 signext 10)
  br label %60

60:                                               ; preds = %51, %54
  %61 = phi i8 [ %53, %51 ], [ %59, %54 ]
  %62 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %34, i8 signext %61)
  %63 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %62)
  br label %122

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
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %69, align 8, !tbaa !55
  %70 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %70, align 8, !tbaa !55
  %71 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %71, align 8, !tbaa !55
  %72 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %72, align 8, !tbaa !55
  %73 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 0
  %74 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i64 1)
  %75 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 1
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 2
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i64 32)
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 4
  store i32 0, i32* %79, align 8, !tbaa !56
  %80 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  %81 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 5
  %82 = bitcast i8** %81 to i32**
  store i32* %80, i32** %82, align 8, !tbaa !59
  %83 = bitcast %"class.appsdk::HIPCommandArgs"** %5 to %"class.appsdk::SDKCmdArgsParser"**
  %84 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !15
  %85 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %84, %"struct.appsdk::Option"* nonnull %68)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %68) #26
  tail call void @_ZdlPv(i8* nonnull %67) #29
  %86 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %87 = bitcast i8* %86 to %"struct.appsdk::Option"*
  %88 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %88, align 8, !tbaa !55
  %89 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %89, align 8, !tbaa !55
  %90 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %90, align 8, !tbaa !55
  %91 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %91, align 8, !tbaa !55
  %92 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 0
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %94 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 1
  %95 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 4)
  %96 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 2
  %97 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i64 44)
  %98 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 4
  store i32 3, i32* %98, align 8, !tbaa !56
  %99 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 6
  %100 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 5
  %101 = bitcast i8** %100 to %"class.std::basic_string"**
  store %"class.std::basic_string"* %99, %"class.std::basic_string"** %101, align 8, !tbaa !59
  %102 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !15
  %103 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %102, %"struct.appsdk::Option"* nonnull %87)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %87) #26
  tail call void @_ZdlPv(i8* nonnull %86) #29
  %104 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %105 = bitcast i8* %104 to %"struct.appsdk::Option"*
  %106 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %106, align 8, !tbaa !55
  %107 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %107, align 8, !tbaa !55
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %108, align 8, !tbaa !55
  %109 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %109, align 8, !tbaa !55
  %110 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 0
  %111 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 1)
  %112 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 1
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 10)
  %114 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 2
  %115 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i64 41)
  %116 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 4
  store i32 0, i32* %116, align 8, !tbaa !56
  %117 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 11
  %118 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 5
  %119 = bitcast i8** %118 to i32**
  store i32* %117, i32** %119, align 8, !tbaa !59
  %120 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !15
  %121 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %120, %"struct.appsdk::Option"* nonnull %105)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %105) #26
  tail call void @_ZdlPv(i8* nonnull %104) #29
  br label %122

122:                                              ; preds = %66, %60
  %123 = phi i32 [ 1, %60 ], [ 0, %66 ]
  ret i32 %123
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #28
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !55
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !55
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !55
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !55
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !55
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !55
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !55
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !55
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !55
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !55
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !55
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !55
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !55
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !55
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !55
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !55
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !55
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !55
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !55
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !55
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
  store i32 4, i32* %53, align 8, !tbaa !56
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !59
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
  store i32 4, i32* %67, align 8, !tbaa !56
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !59
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
  store i32 4, i32* %81, align 8, !tbaa !56
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !59
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
  store i32 4, i32* %95, align 8, !tbaa !56
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !59
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
  store i32 0, i32* %109, align 8, !tbaa !56
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !59
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !60
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !61
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
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !61
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !60
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
  store i8* %21, i8** %25, align 8, !tbaa !61
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !55
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !55
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !55
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !61
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
  %59 = load i32, i32* %10, align 8, !tbaa !60
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !61
  br i1 %61, label %39, label %63, !llvm.loop !62

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
  %83 = load i32, i32* %10, align 8, !tbaa !60
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !60
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
define linkonce_odr dso_local void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator", align 1
  %6 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 3, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !22
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #26
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %9, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #26
  br label %24

24:                                               ; preds = %1, %20, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #26
  %25 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !22
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #26
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %28, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #26
  br label %43

43:                                               ; preds = %24, %39, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #26
  %44 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !22
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %62

62:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #26
  %63 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !22
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #26
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %81

81:                                               ; preds = %62, %77, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #26
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN11BitonicSort5setupEv(%class.BitonicSort* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 11
  %6 = load i32, i32* %5, align 8, !tbaa !63
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0))
  tail call void @exit(i32 0) #30
  unreachable

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  %12 = load i32, i32* %11, align 8, !tbaa !9
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12), !range !64
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %44, label %15

15:                                               ; preds = %10
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i64 39)
  %17 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %18 = getelementptr i8, i8* %17, i64 -24
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 240
  %23 = bitcast i8* %22 to %"class.std::ctype"**
  %24 = load %"class.std::ctype"*, %"class.std::ctype"** %23, align 8, !tbaa !26
  %25 = icmp eq %"class.std::ctype"* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %24, i64 0, i32 8
  %29 = load i8, i8* %28, align 8, !tbaa !28
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %24, i64 0, i32 9, i64 10
  %33 = load i8, i8* %32, align 1, !tbaa !30
  br label %40

34:                                               ; preds = %27
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %24)
  %35 = bitcast %"class.std::ctype"* %24 to i8 (%"class.std::ctype"*, i8)***
  %36 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %35, align 8, !tbaa !24
  %37 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %36, i64 6
  %38 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %37, align 8
  %39 = tail call signext i8 %38(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %24, i8 signext 10)
  br label %40

40:                                               ; preds = %31, %34
  %41 = phi i8 [ %33, %31 ], [ %39, %34 ]
  %42 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %41)
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %42)
  br label %102

44:                                               ; preds = %10
  %45 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 12
  %46 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %45, align 8, !tbaa !65
  %47 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %46)
  %48 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %45, align 8, !tbaa !65
  %49 = bitcast %"class.std::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49)
  %50 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %48, i64 0, i32 0, i32 0, i32 0, i32 1
  %51 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %50, align 8, !tbaa !66
  %52 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %48, i64 0, i32 0, i32 0, i32 0, i32 0
  %53 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %52, align 8, !tbaa !69
  %54 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %51 to i64
  %55 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %53 to i64
  %56 = sub i64 %54, %55
  %57 = lshr exact i64 %56, 3
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %47, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %44
  %61 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %61) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %62 unwind label %82

62:                                               ; preds = %60
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !22
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #26
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %81

81:                                               ; preds = %80, %77, %62
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %61) #26
  br label %90

82:                                               ; preds = %60
  %83 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %61) #26
  resume { i8*, i32 } %83

84:                                               ; preds = %44
  %85 = sext i32 %47 to i64
  %86 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, i64 %85
  %87 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %86, align 8, !tbaa !3
  %88 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %87, i64 0, i32 2
  %89 = bitcast i64* %88 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %89, i8 0, i64 16, i1 false)
  br label %90

90:                                               ; preds = %81, %84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49)
  %91 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %45, align 8, !tbaa !65
  %92 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %91, i32 %47)
  %93 = call i32 @_ZN11BitonicSort8setupHIPEv(%class.BitonicSort* nonnull align 8 undef)
  %94 = call i32 @_ZN11BitonicSort16setupBitonicSortEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %45, align 8, !tbaa !65
  %98 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %97, i32 %47)
  %99 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %45, align 8, !tbaa !65
  %100 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %99, i32 %47)
  %101 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 1
  store double %100, double* %101, align 8, !tbaa !70
  br label %102

102:                                              ; preds = %96, %90, %40
  %103 = phi i32 [ 1, %40 ], [ 0, %96 ], [ 1, %90 ]
  ret i32 %103
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #17

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #28
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !74
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !66
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !66
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !69
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !69
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
  %36 = tail call noalias nonnull i8* @_Znwm(i64 %35) #31
  %37 = bitcast i8* %36 to %"struct.appsdk::SDKTimer::Timer"**
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !69
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 %42, i1 false) #26
  br label %51

51:                                               ; preds = %48, %41
  %52 = ashr exact i64 %42, 3
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %52
  %54 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, i64 1
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !66
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
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !69
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !66
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !74
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
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !69
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !22
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
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
  %45 = load i64, i64* %44, align 8, !tbaa !75
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !77
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !69
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #26
  br label %56

56:                                               ; preds = %41, %38
  %57 = phi i32 [ 1, %38 ], [ 0, %41 ]
  ret i32 %57
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !69
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !22
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
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
  %45 = load i64, i64* %44, align 8, !tbaa !75
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !77
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !69
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !78
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !78
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !79
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #26
  br label %61

61:                                               ; preds = %41, %38
  %62 = phi i32 [ 1, %38 ], [ 0, %41 ]
  ret i32 %62
}

; Function Attrs: uwtable
define linkonce_odr dso_local double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !69
  %10 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %7 to i64
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !22
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #26
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %22, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
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
  %43 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %42, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 2
  %45 = load i64, i64* %44, align 8, !tbaa !79
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !71
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN11BitonicSort3runEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator", align 1
  %8 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 11
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @_ZN11BitonicSort10runKernelsEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0)
  %13 = load i32, i32* %8, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_ZN11BitonicSort10runKernelsEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0)
  br label %17

17:                                               ; preds = %11, %15, %1
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i64 21)
  %19 = load i32, i32* %8, align 8, !tbaa !63
  %20 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %19)
  %21 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i64 11)
  %22 = bitcast %"class.std::basic_ostream"* %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !24
  %24 = getelementptr i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %"class.std::basic_ostream"* %20 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  %29 = getelementptr inbounds i8, i8* %28, i64 240
  %30 = bitcast i8* %29 to %"class.std::ctype"**
  %31 = load %"class.std::ctype"*, %"class.std::ctype"** %30, align 8, !tbaa !26
  %32 = icmp eq %"class.std::ctype"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

34:                                               ; preds = %17
  %35 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 8
  %36 = load i8, i8* %35, align 8, !tbaa !28
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 9, i64 10
  %40 = load i8, i8* %39, align 1, !tbaa !30
  br label %47

41:                                               ; preds = %34
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31)
  %42 = bitcast %"class.std::ctype"* %31 to i8 (%"class.std::ctype"*, i8)***
  %43 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %42, align 8, !tbaa !24
  %44 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %43, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %44, align 8
  %46 = tail call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31, i8 signext 10)
  br label %47

47:                                               ; preds = %38, %41
  %48 = phi i8 [ %40, %38 ], [ %46, %41 ]
  %49 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8 signext %48)
  %50 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49)
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i64 43)
  %52 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %53 = getelementptr i8, i8* %52, i64 -24
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 240
  %58 = bitcast i8* %57 to %"class.std::ctype"**
  %59 = load %"class.std::ctype"*, %"class.std::ctype"** %58, align 8, !tbaa !26
  %60 = icmp eq %"class.std::ctype"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

62:                                               ; preds = %47
  %63 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 8
  %64 = load i8, i8* %63, align 8, !tbaa !28
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 9, i64 10
  %68 = load i8, i8* %67, align 1, !tbaa !30
  br label %75

69:                                               ; preds = %62
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59)
  %70 = bitcast %"class.std::ctype"* %59 to i8 (%"class.std::ctype"*, i8)***
  %71 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %70, align 8, !tbaa !24
  %72 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %71, i64 6
  %73 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %72, align 8
  %74 = tail call signext i8 %73(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59, i8 signext 10)
  br label %75

75:                                               ; preds = %66, %69
  %76 = phi i8 [ %68, %66 ], [ %74, %69 ]
  %77 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %76)
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %77)
  %79 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 12
  %80 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !65
  %81 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %80)
  %82 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !65
  %83 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83)
  %84 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 1
  %85 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %84, align 8, !tbaa !66
  %86 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 0
  %87 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %86, align 8, !tbaa !69
  %88 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %85 to i64
  %89 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %87 to i64
  %90 = sub i64 %88, %89
  %91 = lshr exact i64 %90, 3
  %92 = trunc i64 %91 to i32
  %93 = icmp slt i32 %81, %92
  br i1 %93, label %120, label %94

94:                                               ; preds = %75
  %95 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %95) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %96 unwind label %118

96:                                               ; preds = %94
  %97 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !22
  %99 = getelementptr inbounds i8, i8* %98, i64 -24
  %100 = bitcast i8* %99 to %"struct.std::basic_string<char>::_Rep"*
  %101 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %101) #26
  %102 = icmp eq i8* %99, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %102, label %115, label %103, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %100, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %115

115:                                              ; preds = %114, %111, %96
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %101) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #26
  br label %126

116:                                              ; preds = %180, %118
  %117 = phi { i8*, i32 } [ %119, %118 ], [ %181, %180 ]
  resume { i8*, i32 } %117

118:                                              ; preds = %94
  %119 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #26
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
  %127 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !65
  %128 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %127, i32 %81)
  %129 = load i32, i32* %8, align 8, !tbaa !63
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %131
  %132 = phi i32 [ %134, %131 ], [ 0, %126 ]
  %133 = call i32 @_ZN11BitonicSort10runKernelsEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0)
  %134 = add nuw nsw i32 %132, 1
  %135 = load i32, i32* %8, align 8, !tbaa !63
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %131, label %137, !llvm.loop !80

137:                                              ; preds = %131, %126
  %138 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !65
  %139 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %138, i32 %81)
  %140 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !65
  %141 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %140, i32 %81)
  %142 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 2
  store double %141, double* %142, align 8, !tbaa !81
  %143 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 13
  %144 = bitcast %"class.appsdk::HIPCommandArgs"** %143 to %"class.appsdk::SDKCmdArgsParser"**
  %145 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %144, align 8, !tbaa !15
  %146 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %145, i64 0, i32 9
  %147 = load i8, i8* %146, align 4, !tbaa !31, !range !20
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %182

149:                                              ; preds = %137
  %150 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %150) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %7)
          to label %151 unwind label %176

151:                                              ; preds = %149
  %152 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 7
  %153 = load i32*, i32** %152, align 8, !tbaa !14
  %154 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  %155 = load i32, i32* %154, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %6, i32* %153, i32 %155, i32 1)
          to label %156 unwind label %178

156:                                              ; preds = %151
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !22
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to %"struct.std::basic_string<char>::_Rep"*
  %161 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %161) #26
  %162 = icmp eq i8* %159, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %162, label %175, label %163, !prof !23

163:                                              ; preds = %156
  %164 = getelementptr inbounds i8, i8* %158, i64 -8
  %165 = bitcast i8* %164 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %166, label %168

166:                                              ; preds = %163
  %167 = atomicrmw volatile add i32* %165, i32 -1 acq_rel, align 4
  br label %171

168:                                              ; preds = %163
  %169 = load i32, i32* %165, align 8, !tbaa !7
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %165, align 8, !tbaa !7
  br label %171

171:                                              ; preds = %168, %166
  %172 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %160, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %175

175:                                              ; preds = %156, %171, %174
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %161) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %150) #26
  br label %182

176:                                              ; preds = %149
  %177 = landingpad { i8*, i32 }
          cleanup
  br label %180

178:                                              ; preds = %151
  %179 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi { i8*, i32 } [ %179, %178 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %150) #26
  br label %116

182:                                              ; preds = %175, %137
  ret i32 0
}

; Function Attrs: uwtable
define dso_local i32 @_ZN11BitonicSort13verifyResultsEv(%class.BitonicSort* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 13
  %7 = bitcast %"class.appsdk::HIPCommandArgs"** %6 to %"class.appsdk::SDKCmdArgsParser"**
  %8 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %8, i64 0, i32 10
  %10 = load i8, i8* %9, align 1, !tbaa !16, !range !20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %157, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 12
  %14 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !65
  %15 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %14)
  %16 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !65
  %17 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  %18 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %16, i64 0, i32 0, i32 0, i32 0, i32 1
  %19 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %18, align 8, !tbaa !66
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %16, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !69
  %22 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %19 to i64
  %23 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %21 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 3
  %26 = trunc i64 %25 to i32
  %27 = icmp slt i32 %15, %26
  br i1 %27, label %71, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %30 unwind label %50

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !22
  %33 = getelementptr inbounds i8, i8* %32, i64 -24
  %34 = bitcast i8* %33 to %"struct.std::basic_string<char>::_Rep"*
  %35 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #26
  %36 = icmp eq i8* %33, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %36, label %49, label %37, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %34, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %49

49:                                               ; preds = %48, %45, %30
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #26
  br label %77

50:                                               ; preds = %28
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8, !tbaa !22
  %54 = getelementptr inbounds i8, i8* %53, i64 -24
  %55 = bitcast i8* %54 to %"struct.std::basic_string<char>::_Rep"*
  %56 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %56) #26
  %57 = icmp eq i8* %54, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %57, label %70, label %58, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %55, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %70

70:                                               ; preds = %50, %66, %69
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %56) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #26
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
  %78 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !65
  %79 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %78, i32 %15)
  %80 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 9
  %81 = load i32*, i32** %80, align 8, !tbaa !21
  %82 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  %83 = load i32, i32* %82, align 8, !tbaa !9
  %84 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 5
  %85 = load i32, i32* %84, align 8, !tbaa !48
  %86 = icmp ne i32 %85, 0
  call void @_ZN11BitonicSort23bitonicSortCPUReferenceEPjjb(%class.BitonicSort* nonnull align 8 undef, i32* %81, i32 %83, i1 zeroext %86)
  %87 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !65
  %88 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %87, i32 %15)
  %89 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !65
  %90 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %89, i32 %15)
  %91 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 4
  store double %90, double* %91, align 8, !tbaa !82
  %92 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 7
  %93 = bitcast i32** %92 to i8**
  %94 = load i8*, i8** %93, align 8, !tbaa !14
  %95 = bitcast i32** %80 to i8**
  %96 = load i8*, i8** %95, align 8, !tbaa !21
  %97 = load i32, i32* %82, align 8, !tbaa !9
  %98 = zext i32 %97 to i64
  %99 = shl nuw nsw i64 %98, 2
  %100 = call i32 @bcmp(i8* %94, i8* %96, i64 %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %77
  %103 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i64 8)
  %104 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %105 = getelementptr i8, i8* %104, i64 -24
  %106 = bitcast i8* %105 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %107
  %109 = getelementptr inbounds i8, i8* %108, i64 240
  %110 = bitcast i8* %109 to %"class.std::ctype"**
  %111 = load %"class.std::ctype"*, %"class.std::ctype"** %110, align 8, !tbaa !26
  %112 = icmp eq %"class.std::ctype"* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

114:                                              ; preds = %102
  %115 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %111, i64 0, i32 8
  %116 = load i8, i8* %115, align 8, !tbaa !28
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %111, i64 0, i32 9, i64 10
  %120 = load i8, i8* %119, align 1, !tbaa !30
  br label %152

121:                                              ; preds = %114
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %111)
  %122 = bitcast %"class.std::ctype"* %111 to i8 (%"class.std::ctype"*, i8)***
  %123 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %122, align 8, !tbaa !24
  %124 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %123, i64 6
  %125 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %124, align 8
  %126 = call signext i8 %125(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %111, i8 signext 10)
  br label %152

127:                                              ; preds = %77
  %128 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i64 7)
  %129 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %130 = getelementptr i8, i8* %129, i64 -24
  %131 = bitcast i8* %130 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %132
  %134 = getelementptr inbounds i8, i8* %133, i64 240
  %135 = bitcast i8* %134 to %"class.std::ctype"**
  %136 = load %"class.std::ctype"*, %"class.std::ctype"** %135, align 8, !tbaa !26
  %137 = icmp eq %"class.std::ctype"* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

139:                                              ; preds = %127
  %140 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %136, i64 0, i32 8
  %141 = load i8, i8* %140, align 8, !tbaa !28
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %136, i64 0, i32 9, i64 10
  %145 = load i8, i8* %144, align 1, !tbaa !30
  br label %152

146:                                              ; preds = %139
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %136)
  %147 = bitcast %"class.std::ctype"* %136 to i8 (%"class.std::ctype"*, i8)***
  %148 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %147, align 8, !tbaa !24
  %149 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %148, i64 6
  %150 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %149, align 8
  %151 = call signext i8 %150(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %136, i8 signext 10)
  br label %152

152:                                              ; preds = %146, %143, %121, %118
  %153 = phi i8 [ %120, %118 ], [ %126, %121 ], [ %145, %143 ], [ %151, %146 ]
  %154 = phi i32 [ 0, %118 ], [ 0, %121 ], [ 1, %143 ], [ 1, %146 ]
  %155 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %153)
  %156 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %155)
  br label %157

157:                                              ; preds = %152, %1
  %158 = phi i32 [ 0, %1 ], [ %154, %152 ]
  ret i32 %158
}

; Function Attrs: uwtable
define dso_local void @_ZN11BitonicSort10printStatsEv(%class.BitonicSort* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::basic_ostringstream", align 8
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::basic_ostringstream", align 8
  %10 = alloca %"class.std::allocator", align 1
  %11 = alloca %"class.std::allocator", align 1
  %12 = alloca %"class.std::basic_ostringstream", align 8
  %13 = alloca %"class.std::allocator", align 1
  %14 = alloca %"class.std::allocator", align 1
  %15 = alloca %"class.std::basic_ostringstream", align 8
  %16 = alloca [4 x %"class.std::basic_string"], align 16
  %17 = alloca %"class.std::allocator", align 1
  %18 = alloca %"class.std::allocator", align 1
  %19 = alloca %"class.std::allocator", align 1
  %20 = alloca %"class.std::allocator", align 1
  %21 = alloca [4 x %"class.std::basic_string"], align 16
  %22 = alloca %"class.std::basic_string", align 8
  %23 = alloca %"class.std::basic_string", align 8
  %24 = alloca %"class.std::basic_string", align 8
  %25 = alloca %"class.std::basic_string", align 8
  %26 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 13
  %27 = bitcast %"class.appsdk::HIPCommandArgs"** %26 to %"class.appsdk::SDKCmdArgsParser"**
  %28 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %27, align 8, !tbaa !15
  %29 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %28, i64 0, i32 11
  %30 = load i8, i8* %29, align 2, !tbaa !83, !range !20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %1003, label %32

32:                                               ; preds = %1
  %33 = bitcast [4 x %"class.std::basic_string"]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #26
  %34 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %17)
  %36 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  %37 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %37) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %18)
          to label %38 unwind label %941

38:                                               ; preds = %32
  %39 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  %40 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %40) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %19)
          to label %41 unwind label %943

41:                                               ; preds = %38
  %42 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  %43 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %43) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %20)
          to label %44 unwind label %945

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  %45 = bitcast [4 x %"class.std::basic_string"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %45) #26
  %46 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  %47 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 16, !tbaa !55
  %48 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !55
  %49 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 16, !tbaa !55
  %50 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %50, align 8, !tbaa !55
  %51 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 2
  %52 = load double, double* %51, align 8, !tbaa !81
  %53 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 11
  %54 = load i32, i32* %53, align 8, !tbaa !63
  %55 = sitofp i32 %54 to double
  %56 = fdiv contract double %52, %55
  %57 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 12
  %58 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %57, align 8, !tbaa !65
  %59 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %58, i64 0, i32 1
  store double %56, double* %59, align 8, !tbaa !84
  %60 = bitcast %"class.std::basic_string"* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #26
  %61 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  %62 = load i32, i32* %61, align 8, !tbaa !9
  %63 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %63) #26, !noalias !87
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %64 unwind label %957

64:                                               ; preds = %44
  %65 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %66 = load i8*, i8** %65, align 8, !tbaa !24, !noalias !87
  %67 = getelementptr i8, i8* %66, i64 -24
  %68 = bitcast i8* %67 to i64*
  %69 = load i64, i64* %68, align 8, !noalias !87
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 24
  %72 = bitcast i8* %71 to i32*
  %73 = load i32, i32* %72, align 8, !tbaa !90, !noalias !87
  %74 = and i32 %73, -75
  %75 = or i32 %74, 2
  store i32 %75, i32* %72, align 8, !tbaa !96, !noalias !87
  %76 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %77 = zext i32 %62 to i64
  %78 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %76, i64 %77)
          to label %79 unwind label %109, !noalias !87

79:                                               ; preds = %64
  %80 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %22, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %80)
          to label %81 unwind label %109

81:                                               ; preds = %79
  %82 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %83 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %82, i32 (...)*** %83, align 8, !tbaa !24, !noalias !87
  %84 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %85 = getelementptr i32 (...)*, i32 (...)** %82, i64 -3
  %86 = bitcast i32 (...)** %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %63, i64 %87
  %89 = bitcast i8* %88 to i32 (...)***
  store i32 (...)** %84, i32 (...)*** %89, align 8, !tbaa !24, !noalias !87
  %90 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %90, align 8, !tbaa !24, !noalias !87
  %91 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8, !tbaa !22, !noalias !87
  %93 = getelementptr inbounds i8, i8* %92, i64 -24
  %94 = bitcast i8* %93 to %"struct.std::basic_string<char>::_Rep"*
  %95 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %95) #26, !noalias !87
  %96 = icmp eq i8* %93, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %96, label %111, label %97, !prof !23

97:                                               ; preds = %81
  %98 = getelementptr inbounds i8, i8* %92, i64 -8
  %99 = bitcast i8* %98 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %100, label %102

100:                                              ; preds = %97
  %101 = atomicrmw volatile add i32* %99, i32 -1 acq_rel, align 4
  br label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %99, align 8, !tbaa !7
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %99, align 8, !tbaa !7
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %94, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %14) #26
  br label %111

109:                                              ; preds = %79, %64
  %110 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %63) #26, !noalias !87
  br label %961

111:                                              ; preds = %108, %105, %81
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #26, !noalias !87
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %90, align 8, !tbaa !24, !noalias !87
  %112 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %112) #26
  %113 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %113) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %63) #26, !noalias !87
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %46, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22)
          to label %114 unwind label %959

114:                                              ; preds = %111
  %115 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %22, i64 0, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8, !tbaa !22
  %117 = getelementptr inbounds i8, i8* %116, i64 -24
  %118 = bitcast i8* %117 to %"struct.std::basic_string<char>::_Rep"*
  %119 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %119) #26
  %120 = icmp eq i8* %117, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !23

121:                                              ; preds = %114
  %122 = getelementptr inbounds i8, i8* %116, i64 -8
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %118, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %13) #26
  br label %133

133:                                              ; preds = %114, %129, %132
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %119) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #26
  %134 = bitcast %"class.std::basic_string"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %134) #26
  %135 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 1
  %136 = load double, double* %135, align 8, !tbaa !70
  %137 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %137) #26, !noalias !97
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %138 unwind label %963

138:                                              ; preds = %133
  %139 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %140 = load i8*, i8** %139, align 8, !tbaa !24, !noalias !97
  %141 = getelementptr i8, i8* %140, i64 -24
  %142 = bitcast i8* %141 to i64*
  %143 = load i64, i64* %142, align 8, !noalias !97
  %144 = getelementptr inbounds i8, i8* %137, i64 %143
  %145 = getelementptr inbounds i8, i8* %144, i64 24
  %146 = bitcast i8* %145 to i32*
  %147 = load i32, i32* %146, align 8, !tbaa !90, !noalias !97
  %148 = and i32 %147, -75
  %149 = or i32 %148, 2
  store i32 %149, i32* %146, align 8, !tbaa !96, !noalias !97
  %150 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %151 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %150, double %136)
          to label %152 unwind label %178, !noalias !97

152:                                              ; preds = %138
  %153 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %23, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %153)
          to label %154 unwind label %178

154:                                              ; preds = %152
  %155 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %82, i32 (...)*** %155, align 8, !tbaa !24, !noalias !97
  %156 = load i64, i64* %86, align 8
  %157 = getelementptr inbounds i8, i8* %137, i64 %156
  %158 = bitcast i8* %157 to i32 (...)***
  store i32 (...)** %84, i32 (...)*** %158, align 8, !tbaa !24, !noalias !97
  %159 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %159, align 8, !tbaa !24, !noalias !97
  %160 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8, !tbaa !22, !noalias !97
  %162 = getelementptr inbounds i8, i8* %161, i64 -24
  %163 = bitcast i8* %162 to %"struct.std::basic_string<char>::_Rep"*
  %164 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %164) #26, !noalias !97
  %165 = icmp eq i8* %162, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %165, label %180, label %166, !prof !23

166:                                              ; preds = %154
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
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %163, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %11) #26
  br label %180

178:                                              ; preds = %152, %138
  %179 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %137) #26, !noalias !97
  br label %967

180:                                              ; preds = %177, %174, %154
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %164) #26, !noalias !97
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %159, align 8, !tbaa !24, !noalias !97
  %181 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %181) #26
  %182 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %182) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %137) #26, !noalias !97
  %183 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %183, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23)
          to label %184 unwind label %965

184:                                              ; preds = %180
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %23, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !22
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #26
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !23

191:                                              ; preds = %184
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %10) #26
  br label %203

203:                                              ; preds = %184, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %134) #26
  %204 = bitcast %"class.std::basic_string"* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %204) #26
  %205 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %57, align 8, !tbaa !65
  %206 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %205, i64 0, i32 1
  %207 = load double, double* %206, align 8, !tbaa !84
  %208 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %208) #26, !noalias !100
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %209 unwind label %969

209:                                              ; preds = %203
  %210 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %211 = load i8*, i8** %210, align 8, !tbaa !24, !noalias !100
  %212 = getelementptr i8, i8* %211, i64 -24
  %213 = bitcast i8* %212 to i64*
  %214 = load i64, i64* %213, align 8, !noalias !100
  %215 = getelementptr inbounds i8, i8* %208, i64 %214
  %216 = getelementptr inbounds i8, i8* %215, i64 24
  %217 = bitcast i8* %216 to i32*
  %218 = load i32, i32* %217, align 8, !tbaa !90, !noalias !100
  %219 = and i32 %218, -75
  %220 = or i32 %219, 2
  store i32 %220, i32* %217, align 8, !tbaa !96, !noalias !100
  %221 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %222 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %221, double %207)
          to label %223 unwind label %249, !noalias !100

223:                                              ; preds = %209
  %224 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %24, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %224)
          to label %225 unwind label %249

225:                                              ; preds = %223
  %226 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %82, i32 (...)*** %226, align 8, !tbaa !24, !noalias !100
  %227 = load i64, i64* %86, align 8
  %228 = getelementptr inbounds i8, i8* %208, i64 %227
  %229 = bitcast i8* %228 to i32 (...)***
  store i32 (...)** %84, i32 (...)*** %229, align 8, !tbaa !24, !noalias !100
  %230 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %230, align 8, !tbaa !24, !noalias !100
  %231 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8, !tbaa !22, !noalias !100
  %233 = getelementptr inbounds i8, i8* %232, i64 -24
  %234 = bitcast i8* %233 to %"struct.std::basic_string<char>::_Rep"*
  %235 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %235) #26, !noalias !100
  %236 = icmp eq i8* %233, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %236, label %251, label %237, !prof !23

237:                                              ; preds = %225
  %238 = getelementptr inbounds i8, i8* %232, i64 -8
  %239 = bitcast i8* %238 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %240, label %242

240:                                              ; preds = %237
  %241 = atomicrmw volatile add i32* %239, i32 -1 acq_rel, align 4
  br label %245

242:                                              ; preds = %237
  %243 = load i32, i32* %239, align 8, !tbaa !7
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %239, align 8, !tbaa !7
  br label %245

245:                                              ; preds = %242, %240
  %246 = phi i32 [ %241, %240 ], [ %243, %242 ]
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %234, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %8) #26
  br label %251

249:                                              ; preds = %223, %209
  %250 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %208) #26, !noalias !100
  br label %973

251:                                              ; preds = %248, %245, %225
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %235) #26, !noalias !100
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %230, align 8, !tbaa !24, !noalias !100
  %252 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %252) #26
  %253 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %253) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %208) #26, !noalias !100
  %254 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %254, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24)
          to label %255 unwind label %971

255:                                              ; preds = %251
  %256 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %24, i64 0, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8, !tbaa !22
  %258 = getelementptr inbounds i8, i8* %257, i64 -24
  %259 = bitcast i8* %258 to %"struct.std::basic_string<char>::_Rep"*
  %260 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %260) #26
  %261 = icmp eq i8* %258, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %261, label %274, label %262, !prof !23

262:                                              ; preds = %255
  %263 = getelementptr inbounds i8, i8* %257, i64 -8
  %264 = bitcast i8* %263 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %265, label %267

265:                                              ; preds = %262
  %266 = atomicrmw volatile add i32* %264, i32 -1 acq_rel, align 4
  br label %270

267:                                              ; preds = %262
  %268 = load i32, i32* %264, align 8, !tbaa !7
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %264, align 8, !tbaa !7
  br label %270

270:                                              ; preds = %267, %265
  %271 = phi i32 [ %266, %265 ], [ %268, %267 ]
  %272 = icmp slt i32 %271, 1
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %259, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %7) #26
  br label %274

274:                                              ; preds = %255, %270, %273
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %260) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %204) #26
  %275 = bitcast %"class.std::basic_string"* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %275) #26
  %276 = load i32, i32* %61, align 8, !tbaa !9
  %277 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %57, align 8, !tbaa !65
  %278 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %277, i64 0, i32 1
  %279 = load double, double* %278, align 8, !tbaa !84
  %280 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %280) #26, !noalias !103
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %281 unwind label %975

281:                                              ; preds = %274
  %282 = uitofp i32 %276 to double
  %283 = fdiv contract double %282, %279
  %284 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %285 = load i8*, i8** %284, align 8, !tbaa !24, !noalias !103
  %286 = getelementptr i8, i8* %285, i64 -24
  %287 = bitcast i8* %286 to i64*
  %288 = load i64, i64* %287, align 8, !noalias !103
  %289 = getelementptr inbounds i8, i8* %280, i64 %288
  %290 = getelementptr inbounds i8, i8* %289, i64 24
  %291 = bitcast i8* %290 to i32*
  %292 = load i32, i32* %291, align 8, !tbaa !90, !noalias !103
  %293 = and i32 %292, -75
  %294 = or i32 %293, 2
  store i32 %294, i32* %291, align 8, !tbaa !96, !noalias !103
  %295 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %296 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %295, double %283)
          to label %297 unwind label %323, !noalias !103

297:                                              ; preds = %281
  %298 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %25, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %298)
          to label %299 unwind label %323

299:                                              ; preds = %297
  %300 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %82, i32 (...)*** %300, align 8, !tbaa !24, !noalias !103
  %301 = load i64, i64* %86, align 8
  %302 = getelementptr inbounds i8, i8* %280, i64 %301
  %303 = bitcast i8* %302 to i32 (...)***
  store i32 (...)** %84, i32 (...)*** %303, align 8, !tbaa !24, !noalias !103
  %304 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %304, align 8, !tbaa !24, !noalias !103
  %305 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8, !tbaa !22, !noalias !103
  %307 = getelementptr inbounds i8, i8* %306, i64 -24
  %308 = bitcast i8* %307 to %"struct.std::basic_string<char>::_Rep"*
  %309 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %309) #26, !noalias !103
  %310 = icmp eq i8* %307, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %310, label %325, label %311, !prof !23

311:                                              ; preds = %299
  %312 = getelementptr inbounds i8, i8* %306, i64 -8
  %313 = bitcast i8* %312 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %314, label %316

314:                                              ; preds = %311
  %315 = atomicrmw volatile add i32* %313, i32 -1 acq_rel, align 4
  br label %319

316:                                              ; preds = %311
  %317 = load i32, i32* %313, align 8, !tbaa !7
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %313, align 8, !tbaa !7
  br label %319

319:                                              ; preds = %316, %314
  %320 = phi i32 [ %315, %314 ], [ %317, %316 ]
  %321 = icmp slt i32 %320, 1
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %308, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #26
  br label %325

323:                                              ; preds = %297, %281
  %324 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %280) #26, !noalias !103
  br label %979

325:                                              ; preds = %322, %319, %299
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %309) #26, !noalias !103
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %304, align 8, !tbaa !24, !noalias !103
  %326 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %326) #26
  %327 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %327) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %280) #26, !noalias !103
  %328 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %328, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25)
          to label %329 unwind label %977

329:                                              ; preds = %325
  %330 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %25, i64 0, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8, !tbaa !22
  %332 = getelementptr inbounds i8, i8* %331, i64 -24
  %333 = bitcast i8* %332 to %"struct.std::basic_string<char>::_Rep"*
  %334 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %334) #26
  %335 = icmp eq i8* %332, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %335, label %348, label %336, !prof !23

336:                                              ; preds = %329
  %337 = getelementptr inbounds i8, i8* %331, i64 -8
  %338 = bitcast i8* %337 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %339, label %341

339:                                              ; preds = %336
  %340 = atomicrmw volatile add i32* %338, i32 -1 acq_rel, align 4
  br label %344

341:                                              ; preds = %336
  %342 = load i32, i32* %338, align 8, !tbaa !7
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %338, align 8, !tbaa !7
  br label %344

344:                                              ; preds = %341, %339
  %345 = phi i32 [ %340, %339 ], [ %342, %341 ]
  %346 = icmp slt i32 %345, 1
  br i1 %346, label %347, label %348

347:                                              ; preds = %344
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %333, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #26
  br label %348

348:                                              ; preds = %329, %344, %347
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %334) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %275) #26
  %349 = invoke noalias nonnull dereferenceable(16) i8* @_Znam(i64 16) #28
          to label %350 unwind label %989

350:                                              ; preds = %348
  %351 = bitcast i8* %349 to i32*
  %352 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %353 = getelementptr i8, i8* %352, i64 -24
  %354 = bitcast i8* %353 to i64*
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %355
  %357 = getelementptr inbounds i8, i8* %356, i64 240
  %358 = bitcast i8* %357 to %"class.std::ctype"**
  %359 = load %"class.std::ctype"*, %"class.std::ctype"** %358, align 8, !tbaa !26
  %360 = icmp eq %"class.std::ctype"* %359, null
  br i1 %360, label %361, label %363

361:                                              ; preds = %350
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %362 unwind label %989

362:                                              ; preds = %361
  unreachable

363:                                              ; preds = %350
  %364 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %359, i64 0, i32 8
  %365 = load i8, i8* %364, align 8, !tbaa !28
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %359, i64 0, i32 9, i64 10
  %369 = load i8, i8* %368, align 1, !tbaa !30
  br label %377

370:                                              ; preds = %363
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %359)
          to label %371 unwind label %989

371:                                              ; preds = %370
  %372 = bitcast %"class.std::ctype"* %359 to i8 (%"class.std::ctype"*, i8)***
  %373 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %372, align 8, !tbaa !24
  %374 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %373, i64 6
  %375 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %374, align 8
  %376 = invoke signext i8 %375(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %359, i8 signext 10)
          to label %377 unwind label %989

377:                                              ; preds = %371, %367
  %378 = phi i8 [ %369, %367 ], [ %376, %371 ]
  %379 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %378)
          to label %380 unwind label %989

380:                                              ; preds = %377
  %381 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %379)
          to label %382 unwind label %989

382:                                              ; preds = %380
  %383 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %381, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %384 unwind label %989

384:                                              ; preds = %382
  %385 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %386 = load i8*, i8** %385, align 16, !tbaa !22
  %387 = getelementptr inbounds i8, i8* %386, i64 -24
  %388 = bitcast i8* %387 to i64*
  %389 = load i64, i64* %388, align 8, !tbaa !35
  %390 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %391 = load i8*, i8** %390, align 16, !tbaa !22
  %392 = getelementptr inbounds i8, i8* %391, i64 -24
  %393 = bitcast i8* %392 to i64*
  %394 = load i64, i64* %393, align 8, !tbaa !35
  %395 = icmp ugt i64 %389, %394
  %396 = select i1 %395, i64 %389, i64 %394
  %397 = trunc i64 %396 to i32
  store i32 %397, i32* %351, align 4, !tbaa !7
  %398 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %399 unwind label %989

399:                                              ; preds = %384
  %400 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %401 = getelementptr i8, i8* %400, i64 -24
  %402 = bitcast i8* %401 to i64*
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %403
  %405 = shl i64 %396, 32
  %406 = add i64 %405, 4294967296
  %407 = ashr exact i64 %406, 32
  %408 = getelementptr inbounds i8, i8* %404, i64 16
  %409 = bitcast i8* %408 to i64*
  store i64 %407, i64* %409, align 8, !tbaa !106
  %410 = load i64, i64* %402, align 8
  %411 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %410
  %412 = getelementptr inbounds i8, i8* %411, i64 24
  %413 = bitcast i8* %412 to i32*
  %414 = load i32, i32* %413, align 8, !tbaa !90
  %415 = and i32 %414, -177
  %416 = or i32 %415, 32
  store i32 %416, i32* %413, align 8, !tbaa !96
  %417 = load i8*, i8** %385, align 16, !tbaa !22
  %418 = getelementptr inbounds i8, i8* %417, i64 -24
  %419 = bitcast i8* %418 to i64*
  %420 = load i64, i64* %419, align 8, !tbaa !35
  %421 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %417, i64 %420)
          to label %422 unwind label %989

422:                                              ; preds = %399
  %423 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %421, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %424 unwind label %989

424:                                              ; preds = %422
  %425 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8, !tbaa !22
  %427 = getelementptr inbounds i8, i8* %426, i64 -24
  %428 = bitcast i8* %427 to i64*
  %429 = load i64, i64* %428, align 8, !tbaa !35
  %430 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %431 = load i8*, i8** %430, align 8, !tbaa !22
  %432 = getelementptr inbounds i8, i8* %431, i64 -24
  %433 = bitcast i8* %432 to i64*
  %434 = load i64, i64* %433, align 8, !tbaa !35
  %435 = icmp ugt i64 %429, %434
  %436 = select i1 %435, i64 %429, i64 %434
  %437 = trunc i64 %436 to i32
  %438 = getelementptr inbounds i32, i32* %351, i64 1
  store i32 %437, i32* %438, align 4, !tbaa !7
  %439 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %440 unwind label %989

440:                                              ; preds = %424
  %441 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %442 = getelementptr i8, i8* %441, i64 -24
  %443 = bitcast i8* %442 to i64*
  %444 = load i64, i64* %443, align 8
  %445 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %444
  %446 = shl i64 %436, 32
  %447 = add i64 %446, 4294967296
  %448 = ashr exact i64 %447, 32
  %449 = getelementptr inbounds i8, i8* %445, i64 16
  %450 = bitcast i8* %449 to i64*
  store i64 %448, i64* %450, align 8, !tbaa !106
  %451 = load i64, i64* %443, align 8
  %452 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %451
  %453 = getelementptr inbounds i8, i8* %452, i64 24
  %454 = bitcast i8* %453 to i32*
  %455 = load i32, i32* %454, align 8, !tbaa !90
  %456 = and i32 %455, -177
  %457 = or i32 %456, 32
  store i32 %457, i32* %454, align 8, !tbaa !96
  %458 = load i8*, i8** %425, align 8, !tbaa !22
  %459 = getelementptr inbounds i8, i8* %458, i64 -24
  %460 = bitcast i8* %459 to i64*
  %461 = load i64, i64* %460, align 8, !tbaa !35
  %462 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %458, i64 %461)
          to label %463 unwind label %989

463:                                              ; preds = %440
  %464 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %462, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %465 unwind label %989

465:                                              ; preds = %463
  %466 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %467 = load i8*, i8** %466, align 16, !tbaa !22
  %468 = getelementptr inbounds i8, i8* %467, i64 -24
  %469 = bitcast i8* %468 to i64*
  %470 = load i64, i64* %469, align 8, !tbaa !35
  %471 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %472 = load i8*, i8** %471, align 16, !tbaa !22
  %473 = getelementptr inbounds i8, i8* %472, i64 -24
  %474 = bitcast i8* %473 to i64*
  %475 = load i64, i64* %474, align 8, !tbaa !35
  %476 = icmp ugt i64 %470, %475
  %477 = select i1 %476, i64 %470, i64 %475
  %478 = trunc i64 %477 to i32
  %479 = getelementptr inbounds i32, i32* %351, i64 2
  store i32 %478, i32* %479, align 4, !tbaa !7
  %480 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %481 unwind label %989

481:                                              ; preds = %465
  %482 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %483 = getelementptr i8, i8* %482, i64 -24
  %484 = bitcast i8* %483 to i64*
  %485 = load i64, i64* %484, align 8
  %486 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %485
  %487 = shl i64 %477, 32
  %488 = add i64 %487, 4294967296
  %489 = ashr exact i64 %488, 32
  %490 = getelementptr inbounds i8, i8* %486, i64 16
  %491 = bitcast i8* %490 to i64*
  store i64 %489, i64* %491, align 8, !tbaa !106
  %492 = load i64, i64* %484, align 8
  %493 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %492
  %494 = getelementptr inbounds i8, i8* %493, i64 24
  %495 = bitcast i8* %494 to i32*
  %496 = load i32, i32* %495, align 8, !tbaa !90
  %497 = and i32 %496, -177
  %498 = or i32 %497, 32
  store i32 %498, i32* %495, align 8, !tbaa !96
  %499 = load i8*, i8** %466, align 16, !tbaa !22
  %500 = getelementptr inbounds i8, i8* %499, i64 -24
  %501 = bitcast i8* %500 to i64*
  %502 = load i64, i64* %501, align 8, !tbaa !35
  %503 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %499, i64 %502)
          to label %504 unwind label %989

504:                                              ; preds = %481
  %505 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %503, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %506 unwind label %989

506:                                              ; preds = %504
  %507 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %508 = load i8*, i8** %507, align 8, !tbaa !22
  %509 = getelementptr inbounds i8, i8* %508, i64 -24
  %510 = bitcast i8* %509 to i64*
  %511 = load i64, i64* %510, align 8, !tbaa !35
  %512 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %513 = load i8*, i8** %512, align 8, !tbaa !22
  %514 = getelementptr inbounds i8, i8* %513, i64 -24
  %515 = bitcast i8* %514 to i64*
  %516 = load i64, i64* %515, align 8, !tbaa !35
  %517 = icmp ugt i64 %511, %516
  %518 = select i1 %517, i64 %511, i64 %516
  %519 = trunc i64 %518 to i32
  %520 = getelementptr inbounds i32, i32* %351, i64 3
  store i32 %519, i32* %520, align 4, !tbaa !7
  %521 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %522 unwind label %989

522:                                              ; preds = %506
  %523 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %524 = getelementptr i8, i8* %523, i64 -24
  %525 = bitcast i8* %524 to i64*
  %526 = load i64, i64* %525, align 8
  %527 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %526
  %528 = shl i64 %518, 32
  %529 = add i64 %528, 4294967296
  %530 = ashr exact i64 %529, 32
  %531 = getelementptr inbounds i8, i8* %527, i64 16
  %532 = bitcast i8* %531 to i64*
  store i64 %530, i64* %532, align 8, !tbaa !106
  %533 = load i64, i64* %525, align 8
  %534 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %533
  %535 = getelementptr inbounds i8, i8* %534, i64 24
  %536 = bitcast i8* %535 to i32*
  %537 = load i32, i32* %536, align 8, !tbaa !90
  %538 = and i32 %537, -177
  %539 = or i32 %538, 32
  store i32 %539, i32* %536, align 8, !tbaa !96
  %540 = load i8*, i8** %507, align 8, !tbaa !22
  %541 = getelementptr inbounds i8, i8* %540, i64 -24
  %542 = bitcast i8* %541 to i64*
  %543 = load i64, i64* %542, align 8, !tbaa !35
  %544 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %540, i64 %543)
          to label %545 unwind label %989

545:                                              ; preds = %522
  %546 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %544, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %547 unwind label %989

547:                                              ; preds = %545
  %548 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %549 = getelementptr i8, i8* %548, i64 -24
  %550 = bitcast i8* %549 to i64*
  %551 = load i64, i64* %550, align 8
  %552 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %551
  %553 = getelementptr inbounds i8, i8* %552, i64 240
  %554 = bitcast i8* %553 to %"class.std::ctype"**
  %555 = load %"class.std::ctype"*, %"class.std::ctype"** %554, align 8, !tbaa !26
  %556 = icmp eq %"class.std::ctype"* %555, null
  br i1 %556, label %557, label %559

557:                                              ; preds = %547
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %558 unwind label %989

558:                                              ; preds = %557
  unreachable

559:                                              ; preds = %547
  %560 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %555, i64 0, i32 8
  %561 = load i8, i8* %560, align 8, !tbaa !28
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %555, i64 0, i32 9, i64 10
  %565 = load i8, i8* %564, align 1, !tbaa !30
  br label %573

566:                                              ; preds = %559
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %555)
          to label %567 unwind label %989

567:                                              ; preds = %566
  %568 = bitcast %"class.std::ctype"* %555 to i8 (%"class.std::ctype"*, i8)***
  %569 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %568, align 8, !tbaa !24
  %570 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %569, i64 6
  %571 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %570, align 8
  %572 = invoke signext i8 %571(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %555, i8 signext 10)
          to label %573 unwind label %989

573:                                              ; preds = %567, %563
  %574 = phi i8 [ %565, %563 ], [ %572, %567 ]
  %575 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %574)
          to label %576 unwind label %989

576:                                              ; preds = %573
  %577 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %575)
          to label %578 unwind label %989

578:                                              ; preds = %576
  %579 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %577, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %580 unwind label %989

580:                                              ; preds = %578
  %581 = load i32, i32* %351, align 4, !tbaa !7
  %582 = icmp sgt i32 %581, -2
  br i1 %582, label %583, label %718

583:                                              ; preds = %580
  %584 = add i32 %581, 1
  br label %767

585:                                              ; preds = %757
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %586 unwind label %989

586:                                              ; preds = %585
  unreachable

587:                                              ; preds = %757
  %588 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %765, i64 0, i32 8
  %589 = load i8, i8* %588, align 8, !tbaa !28
  %590 = icmp eq i8 %589, 0
  br i1 %590, label %594, label %591

591:                                              ; preds = %587
  %592 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %765, i64 0, i32 9, i64 10
  %593 = load i8, i8* %592, align 1, !tbaa !30
  br label %601

594:                                              ; preds = %587
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %765)
          to label %595 unwind label %989

595:                                              ; preds = %594
  %596 = bitcast %"class.std::ctype"* %765 to i8 (%"class.std::ctype"*, i8)***
  %597 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %596, align 8, !tbaa !24
  %598 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %597, i64 6
  %599 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %598, align 8
  %600 = invoke signext i8 %599(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %765, i8 signext 10)
          to label %601 unwind label %989

601:                                              ; preds = %595, %591
  %602 = phi i8 [ %593, %591 ], [ %600, %595 ]
  %603 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %602)
          to label %604 unwind label %989

604:                                              ; preds = %601
  %605 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %603)
          to label %606 unwind label %989

606:                                              ; preds = %604
  %607 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %605, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %608 unwind label %989

608:                                              ; preds = %606
  %609 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %610 unwind label %989

610:                                              ; preds = %608
  %611 = add nsw i32 %581, 1
  %612 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %613 = getelementptr i8, i8* %612, i64 -24
  %614 = bitcast i8* %613 to i64*
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %615
  %617 = sext i32 %611 to i64
  %618 = getelementptr inbounds i8, i8* %616, i64 16
  %619 = bitcast i8* %618 to i64*
  store i64 %617, i64* %619, align 8, !tbaa !106
  %620 = load i64, i64* %614, align 8
  %621 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %620
  %622 = getelementptr inbounds i8, i8* %621, i64 24
  %623 = bitcast i8* %622 to i32*
  %624 = load i32, i32* %623, align 8, !tbaa !90
  %625 = and i32 %624, -177
  %626 = or i32 %625, 32
  store i32 %626, i32* %623, align 8, !tbaa !96
  %627 = load i8*, i8** %390, align 16, !tbaa !22
  %628 = getelementptr inbounds i8, i8* %627, i64 -24
  %629 = bitcast i8* %628 to i64*
  %630 = load i64, i64* %629, align 8, !tbaa !35
  %631 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %627, i64 %630)
          to label %632 unwind label %989

632:                                              ; preds = %610
  %633 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %631, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %634 unwind label %989

634:                                              ; preds = %632
  %635 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %636 unwind label %989

636:                                              ; preds = %634
  %637 = add nsw i32 %721, 1
  %638 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %639 = getelementptr i8, i8* %638, i64 -24
  %640 = bitcast i8* %639 to i64*
  %641 = load i64, i64* %640, align 8
  %642 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %641
  %643 = sext i32 %637 to i64
  %644 = getelementptr inbounds i8, i8* %642, i64 16
  %645 = bitcast i8* %644 to i64*
  store i64 %643, i64* %645, align 8, !tbaa !106
  %646 = load i64, i64* %640, align 8
  %647 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %646
  %648 = getelementptr inbounds i8, i8* %647, i64 24
  %649 = bitcast i8* %648 to i32*
  %650 = load i32, i32* %649, align 8, !tbaa !90
  %651 = and i32 %650, -177
  %652 = or i32 %651, 32
  store i32 %652, i32* %649, align 8, !tbaa !96
  %653 = load i8*, i8** %430, align 8, !tbaa !22
  %654 = getelementptr inbounds i8, i8* %653, i64 -24
  %655 = bitcast i8* %654 to i64*
  %656 = load i64, i64* %655, align 8, !tbaa !35
  %657 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %653, i64 %656)
          to label %658 unwind label %989

658:                                              ; preds = %636
  %659 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %657, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %660 unwind label %989

660:                                              ; preds = %658
  %661 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %662 unwind label %989

662:                                              ; preds = %660
  %663 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %664 = getelementptr i8, i8* %663, i64 -24
  %665 = bitcast i8* %664 to i64*
  %666 = load i64, i64* %665, align 8
  %667 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %666
  %668 = getelementptr inbounds i8, i8* %667, i64 16
  %669 = bitcast i8* %668 to i64*
  store i64 %489, i64* %669, align 8, !tbaa !106
  %670 = load i64, i64* %665, align 8
  %671 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %670
  %672 = getelementptr inbounds i8, i8* %671, i64 24
  %673 = bitcast i8* %672 to i32*
  %674 = load i32, i32* %673, align 8, !tbaa !90
  %675 = and i32 %674, -177
  %676 = or i32 %675, 32
  store i32 %676, i32* %673, align 8, !tbaa !96
  %677 = load i8*, i8** %471, align 16, !tbaa !22
  %678 = getelementptr inbounds i8, i8* %677, i64 -24
  %679 = bitcast i8* %678 to i64*
  %680 = load i64, i64* %679, align 8, !tbaa !35
  %681 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %677, i64 %680)
          to label %682 unwind label %989

682:                                              ; preds = %662
  %683 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %681, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %684 unwind label %989

684:                                              ; preds = %682
  %685 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
          to label %686 unwind label %989

686:                                              ; preds = %684
  %687 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %688 = getelementptr i8, i8* %687, i64 -24
  %689 = bitcast i8* %688 to i64*
  %690 = load i64, i64* %689, align 8
  %691 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %690
  %692 = getelementptr inbounds i8, i8* %691, i64 16
  %693 = bitcast i8* %692 to i64*
  store i64 %530, i64* %693, align 8, !tbaa !106
  %694 = load i64, i64* %689, align 8
  %695 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %694
  %696 = getelementptr inbounds i8, i8* %695, i64 24
  %697 = bitcast i8* %696 to i32*
  %698 = load i32, i32* %697, align 8, !tbaa !90
  %699 = and i32 %698, -177
  %700 = or i32 %699, 32
  store i32 %700, i32* %697, align 8, !tbaa !96
  %701 = load i8*, i8** %512, align 8, !tbaa !22
  %702 = getelementptr inbounds i8, i8* %701, i64 -24
  %703 = bitcast i8* %702 to i64*
  %704 = load i64, i64* %703, align 8, !tbaa !35
  %705 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %701, i64 %704)
          to label %706 unwind label %989

706:                                              ; preds = %686
  %707 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %705, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %708 unwind label %989

708:                                              ; preds = %706
  %709 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %710 = getelementptr i8, i8* %709, i64 -24
  %711 = bitcast i8* %710 to i64*
  %712 = load i64, i64* %711, align 8
  %713 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %712
  %714 = getelementptr inbounds i8, i8* %713, i64 240
  %715 = bitcast i8* %714 to %"class.std::ctype"**
  %716 = load %"class.std::ctype"*, %"class.std::ctype"** %715, align 8, !tbaa !26
  %717 = icmp eq %"class.std::ctype"* %716, null
  br i1 %717, label %773, label %775

718:                                              ; preds = %770, %580
  %719 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %720 unwind label %989

720:                                              ; preds = %718
  %721 = load i32, i32* %438, align 4, !tbaa !7
  %722 = icmp sgt i32 %721, -2
  br i1 %722, label %723, label %731

723:                                              ; preds = %720
  %724 = add i32 %721, 1
  br label %725

725:                                              ; preds = %723, %728
  %726 = phi i32 [ %729, %728 ], [ 0, %723 ]
  %727 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %728 unwind label %985

728:                                              ; preds = %725
  %729 = add nuw i32 %726, 1
  %730 = icmp eq i32 %726, %724
  br i1 %730, label %731, label %725, !llvm.loop !107

731:                                              ; preds = %728, %720
  %732 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %733 unwind label %989

733:                                              ; preds = %731
  %734 = icmp sgt i32 %478, -2
  br i1 %734, label %735, label %743

735:                                              ; preds = %733
  %736 = add i32 %478, 1
  br label %737

737:                                              ; preds = %735, %740
  %738 = phi i32 [ %741, %740 ], [ 0, %735 ]
  %739 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %740 unwind label %983

740:                                              ; preds = %737
  %741 = add nuw i32 %738, 1
  %742 = icmp eq i32 %738, %736
  br i1 %742, label %743, label %737, !llvm.loop !107

743:                                              ; preds = %740, %733
  %744 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %745 unwind label %989

745:                                              ; preds = %743
  %746 = icmp sgt i32 %519, -2
  br i1 %746, label %747, label %755

747:                                              ; preds = %745
  %748 = add i32 %519, 1
  br label %749

749:                                              ; preds = %747, %752
  %750 = phi i32 [ %753, %752 ], [ 0, %747 ]
  %751 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %752 unwind label %981

752:                                              ; preds = %749
  %753 = add nuw i32 %750, 1
  %754 = icmp eq i32 %750, %748
  br i1 %754, label %755, label %749, !llvm.loop !107

755:                                              ; preds = %752, %745
  %756 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
          to label %757 unwind label %989

757:                                              ; preds = %755
  %758 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %759 = getelementptr i8, i8* %758, i64 -24
  %760 = bitcast i8* %759 to i64*
  %761 = load i64, i64* %760, align 8
  %762 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %761
  %763 = getelementptr inbounds i8, i8* %762, i64 240
  %764 = bitcast i8* %763 to %"class.std::ctype"**
  %765 = load %"class.std::ctype"*, %"class.std::ctype"** %764, align 8, !tbaa !26
  %766 = icmp eq %"class.std::ctype"* %765, null
  br i1 %766, label %585, label %587

767:                                              ; preds = %583, %770
  %768 = phi i32 [ %771, %770 ], [ 0, %583 ]
  %769 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i64 1)
          to label %770 unwind label %987

770:                                              ; preds = %767
  %771 = add nuw i32 %768, 1
  %772 = icmp eq i32 %768, %584
  br i1 %772, label %718, label %767, !llvm.loop !107

773:                                              ; preds = %708
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %774 unwind label %989

774:                                              ; preds = %773
  unreachable

775:                                              ; preds = %708
  %776 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %716, i64 0, i32 8
  %777 = load i8, i8* %776, align 8, !tbaa !28
  %778 = icmp eq i8 %777, 0
  br i1 %778, label %782, label %779

779:                                              ; preds = %775
  %780 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %716, i64 0, i32 9, i64 10
  %781 = load i8, i8* %780, align 1, !tbaa !30
  br label %789

782:                                              ; preds = %775
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %716)
          to label %783 unwind label %989

783:                                              ; preds = %782
  %784 = bitcast %"class.std::ctype"* %716 to i8 (%"class.std::ctype"*, i8)***
  %785 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %784, align 8, !tbaa !24
  %786 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %785, i64 6
  %787 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %786, align 8
  %788 = invoke signext i8 %787(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %716, i8 signext 10)
          to label %789 unwind label %989

789:                                              ; preds = %783, %779
  %790 = phi i8 [ %781, %779 ], [ %788, %783 ]
  %791 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %790)
          to label %792 unwind label %989

792:                                              ; preds = %789
  %793 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %791)
          to label %794 unwind label %989

794:                                              ; preds = %792
  call void @_ZdaPv(i8* nonnull %349) #29
  %795 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  %796 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %797 = load i8*, i8** %796, align 8, !tbaa !22
  %798 = getelementptr inbounds i8, i8* %797, i64 -24
  %799 = bitcast i8* %798 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %795) #26
  %800 = icmp eq i8* %798, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %800, label %813, label %801, !prof !23

801:                                              ; preds = %794
  %802 = getelementptr inbounds i8, i8* %797, i64 -8
  %803 = bitcast i8* %802 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %804, label %806

804:                                              ; preds = %801
  %805 = atomicrmw volatile add i32* %803, i32 -1 acq_rel, align 4
  br label %809

806:                                              ; preds = %801
  %807 = load i32, i32* %803, align 8, !tbaa !7
  %808 = add nsw i32 %807, -1
  store i32 %808, i32* %803, align 8, !tbaa !7
  br label %809

809:                                              ; preds = %806, %804
  %810 = phi i32 [ %805, %804 ], [ %807, %806 ]
  %811 = icmp slt i32 %810, 1
  br i1 %811, label %812, label %813

812:                                              ; preds = %809
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %799, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %813

813:                                              ; preds = %794, %809, %812
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %795) #26
  %814 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %815 = load i8*, i8** %814, align 16, !tbaa !22
  %816 = getelementptr inbounds i8, i8* %815, i64 -24
  %817 = bitcast i8* %816 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %795) #26
  %818 = icmp eq i8* %816, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %818, label %831, label %819, !prof !23

819:                                              ; preds = %813
  %820 = getelementptr inbounds i8, i8* %815, i64 -8
  %821 = bitcast i8* %820 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %825, label %822

822:                                              ; preds = %819
  %823 = load i32, i32* %821, align 8, !tbaa !7
  %824 = add nsw i32 %823, -1
  store i32 %824, i32* %821, align 8, !tbaa !7
  br label %827

825:                                              ; preds = %819
  %826 = atomicrmw volatile add i32* %821, i32 -1 acq_rel, align 4
  br label %827

827:                                              ; preds = %825, %822
  %828 = phi i32 [ %826, %825 ], [ %823, %822 ]
  %829 = icmp slt i32 %828, 1
  br i1 %829, label %830, label %831

830:                                              ; preds = %827
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %817, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %831

831:                                              ; preds = %830, %827, %813
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %795) #26
  %832 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %833 = load i8*, i8** %832, align 8, !tbaa !22
  %834 = getelementptr inbounds i8, i8* %833, i64 -24
  %835 = bitcast i8* %834 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %795) #26
  %836 = icmp eq i8* %834, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %836, label %849, label %837, !prof !23

837:                                              ; preds = %831
  %838 = getelementptr inbounds i8, i8* %833, i64 -8
  %839 = bitcast i8* %838 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %843, label %840

840:                                              ; preds = %837
  %841 = load i32, i32* %839, align 8, !tbaa !7
  %842 = add nsw i32 %841, -1
  store i32 %842, i32* %839, align 8, !tbaa !7
  br label %845

843:                                              ; preds = %837
  %844 = atomicrmw volatile add i32* %839, i32 -1 acq_rel, align 4
  br label %845

845:                                              ; preds = %843, %840
  %846 = phi i32 [ %844, %843 ], [ %841, %840 ]
  %847 = icmp slt i32 %846, 1
  br i1 %847, label %848, label %849

848:                                              ; preds = %845
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %835, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %849

849:                                              ; preds = %848, %845, %831
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %795) #26
  %850 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %851 = load i8*, i8** %850, align 16, !tbaa !22
  %852 = getelementptr inbounds i8, i8* %851, i64 -24
  %853 = bitcast i8* %852 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %795) #26
  %854 = icmp eq i8* %852, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %854, label %867, label %855, !prof !23

855:                                              ; preds = %849
  %856 = getelementptr inbounds i8, i8* %851, i64 -8
  %857 = bitcast i8* %856 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %861, label %858

858:                                              ; preds = %855
  %859 = load i32, i32* %857, align 8, !tbaa !7
  %860 = add nsw i32 %859, -1
  store i32 %860, i32* %857, align 8, !tbaa !7
  br label %863

861:                                              ; preds = %855
  %862 = atomicrmw volatile add i32* %857, i32 -1 acq_rel, align 4
  br label %863

863:                                              ; preds = %861, %858
  %864 = phi i32 [ %862, %861 ], [ %859, %858 ]
  %865 = icmp slt i32 %864, 1
  br i1 %865, label %866, label %867

866:                                              ; preds = %863
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %853, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %867

867:                                              ; preds = %866, %863, %849
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %795) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #26
  %868 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  %869 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %870 = load i8*, i8** %869, align 8, !tbaa !22
  %871 = getelementptr inbounds i8, i8* %870, i64 -24
  %872 = bitcast i8* %871 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %868) #26
  %873 = icmp eq i8* %871, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %873, label %886, label %874, !prof !23

874:                                              ; preds = %867
  %875 = getelementptr inbounds i8, i8* %870, i64 -8
  %876 = bitcast i8* %875 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %877, label %879

877:                                              ; preds = %874
  %878 = atomicrmw volatile add i32* %876, i32 -1 acq_rel, align 4
  br label %882

879:                                              ; preds = %874
  %880 = load i32, i32* %876, align 8, !tbaa !7
  %881 = add nsw i32 %880, -1
  store i32 %881, i32* %876, align 8, !tbaa !7
  br label %882

882:                                              ; preds = %879, %877
  %883 = phi i32 [ %878, %877 ], [ %880, %879 ]
  %884 = icmp slt i32 %883, 1
  br i1 %884, label %885, label %886

885:                                              ; preds = %882
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %872, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %886

886:                                              ; preds = %867, %882, %885
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %868) #26
  %887 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %888 = load i8*, i8** %887, align 16, !tbaa !22
  %889 = getelementptr inbounds i8, i8* %888, i64 -24
  %890 = bitcast i8* %889 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %868) #26
  %891 = icmp eq i8* %889, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %891, label %904, label %892, !prof !23

892:                                              ; preds = %886
  %893 = getelementptr inbounds i8, i8* %888, i64 -8
  %894 = bitcast i8* %893 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %898, label %895

895:                                              ; preds = %892
  %896 = load i32, i32* %894, align 8, !tbaa !7
  %897 = add nsw i32 %896, -1
  store i32 %897, i32* %894, align 8, !tbaa !7
  br label %900

898:                                              ; preds = %892
  %899 = atomicrmw volatile add i32* %894, i32 -1 acq_rel, align 4
  br label %900

900:                                              ; preds = %898, %895
  %901 = phi i32 [ %899, %898 ], [ %896, %895 ]
  %902 = icmp slt i32 %901, 1
  br i1 %902, label %903, label %904

903:                                              ; preds = %900
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %890, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %904

904:                                              ; preds = %903, %900, %886
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %868) #26
  %905 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %906 = load i8*, i8** %905, align 8, !tbaa !22
  %907 = getelementptr inbounds i8, i8* %906, i64 -24
  %908 = bitcast i8* %907 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %868) #26
  %909 = icmp eq i8* %907, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %909, label %922, label %910, !prof !23

910:                                              ; preds = %904
  %911 = getelementptr inbounds i8, i8* %906, i64 -8
  %912 = bitcast i8* %911 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %916, label %913

913:                                              ; preds = %910
  %914 = load i32, i32* %912, align 8, !tbaa !7
  %915 = add nsw i32 %914, -1
  store i32 %915, i32* %912, align 8, !tbaa !7
  br label %918

916:                                              ; preds = %910
  %917 = atomicrmw volatile add i32* %912, i32 -1 acq_rel, align 4
  br label %918

918:                                              ; preds = %916, %913
  %919 = phi i32 [ %917, %916 ], [ %914, %913 ]
  %920 = icmp slt i32 %919, 1
  br i1 %920, label %921, label %922

921:                                              ; preds = %918
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %908, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %922

922:                                              ; preds = %921, %918, %904
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %868) #26
  %923 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %924 = load i8*, i8** %923, align 16, !tbaa !22
  %925 = getelementptr inbounds i8, i8* %924, i64 -24
  %926 = bitcast i8* %925 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %868) #26
  %927 = icmp eq i8* %925, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %927, label %940, label %928, !prof !23

928:                                              ; preds = %922
  %929 = getelementptr inbounds i8, i8* %924, i64 -8
  %930 = bitcast i8* %929 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %934, label %931

931:                                              ; preds = %928
  %932 = load i32, i32* %930, align 8, !tbaa !7
  %933 = add nsw i32 %932, -1
  store i32 %933, i32* %930, align 8, !tbaa !7
  br label %936

934:                                              ; preds = %928
  %935 = atomicrmw volatile add i32* %930, i32 -1 acq_rel, align 4
  br label %936

936:                                              ; preds = %934, %931
  %937 = phi i32 [ %935, %934 ], [ %932, %931 ]
  %938 = icmp slt i32 %937, 1
  br i1 %938, label %939, label %940

939:                                              ; preds = %936
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %926, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %940

940:                                              ; preds = %939, %936, %922
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %868) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #26
  br label %1003

941:                                              ; preds = %32
  %942 = landingpad { i8*, i32 }
          cleanup
  br label %950

943:                                              ; preds = %38
  %944 = landingpad { i8*, i32 }
          cleanup
  br label %947

945:                                              ; preds = %41
  %946 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #26
  br label %947

947:                                              ; preds = %945, %943
  %948 = phi %"class.std::basic_string"* [ %42, %945 ], [ %39, %943 ]
  %949 = phi { i8*, i32 } [ %946, %945 ], [ %944, %943 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #26
  br label %950

950:                                              ; preds = %941, %947
  %951 = phi %"class.std::basic_string"* [ %948, %947 ], [ %36, %941 ]
  %952 = phi { i8*, i32 } [ %949, %947 ], [ %942, %941 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  br label %953

953:                                              ; preds = %950, %953
  %954 = phi %"class.std::basic_string"* [ %955, %953 ], [ %951, %950 ]
  %955 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %954, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %955) #26
  %956 = icmp eq %"class.std::basic_string"* %955, %34
  br i1 %956, label %1001, label %953

957:                                              ; preds = %44
  %958 = landingpad { i8*, i32 }
          cleanup
  br label %961

959:                                              ; preds = %111
  %960 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22) #26
  br label %961

961:                                              ; preds = %957, %109, %959
  %962 = phi { i8*, i32 } [ %960, %959 ], [ %958, %957 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #26
  br label %991

963:                                              ; preds = %133
  %964 = landingpad { i8*, i32 }
          cleanup
  br label %967

965:                                              ; preds = %180
  %966 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23) #26
  br label %967

967:                                              ; preds = %963, %178, %965
  %968 = phi { i8*, i32 } [ %966, %965 ], [ %964, %963 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %134) #26
  br label %991

969:                                              ; preds = %203
  %970 = landingpad { i8*, i32 }
          cleanup
  br label %973

971:                                              ; preds = %251
  %972 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24) #26
  br label %973

973:                                              ; preds = %969, %249, %971
  %974 = phi { i8*, i32 } [ %972, %971 ], [ %970, %969 ], [ %250, %249 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %204) #26
  br label %991

975:                                              ; preds = %274
  %976 = landingpad { i8*, i32 }
          cleanup
  br label %979

977:                                              ; preds = %325
  %978 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25) #26
  br label %979

979:                                              ; preds = %975, %323, %977
  %980 = phi { i8*, i32 } [ %978, %977 ], [ %976, %975 ], [ %324, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %275) #26
  br label %991

981:                                              ; preds = %749
  %982 = landingpad { i8*, i32 }
          cleanup
  br label %991

983:                                              ; preds = %737
  %984 = landingpad { i8*, i32 }
          cleanup
  br label %991

985:                                              ; preds = %725
  %986 = landingpad { i8*, i32 }
          cleanup
  br label %991

987:                                              ; preds = %767
  %988 = landingpad { i8*, i32 }
          cleanup
  br label %991

989:                                              ; preds = %792, %789, %783, %782, %773, %755, %743, %731, %718, %706, %686, %684, %682, %662, %660, %658, %636, %634, %632, %610, %608, %606, %604, %601, %595, %594, %585, %578, %576, %573, %567, %566, %557, %545, %522, %506, %504, %481, %465, %463, %440, %424, %422, %399, %384, %382, %380, %377, %371, %370, %361, %348
  %990 = landingpad { i8*, i32 }
          cleanup
  br label %991

991:                                              ; preds = %981, %985, %989, %987, %983, %979, %973, %967, %961
  %992 = phi { i8*, i32 } [ %980, %979 ], [ %974, %973 ], [ %968, %967 ], [ %962, %961 ], [ %982, %981 ], [ %984, %983 ], [ %986, %985 ], [ %988, %987 ], [ %990, %989 ]
  %993 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %993) #26
  %994 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %994) #26
  %995 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %995) #26
  %996 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %996) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #26
  %997 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %997) #26
  %998 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %998) #26
  %999 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %999) #26
  %1000 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1000) #26
  br label %1001

1001:                                             ; preds = %953, %991
  %1002 = phi { i8*, i32 } [ %992, %991 ], [ %952, %953 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #26
  resume { i8*, i32 } %1002

1003:                                             ; preds = %940, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN11BitonicSort7cleanupEv(%class.BitonicSort* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 10
  %3 = bitcast i32** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !46
  %5 = tail call i32 @hipFree(i8* %4)
  %6 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 9
  %7 = load i32*, i32** %6, align 8, !tbaa !21
  %8 = icmp eq i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = bitcast i32* %7 to i8*
  tail call void @free(i8* %10) #26
  store i32* null, i32** %6, align 8, !tbaa !21
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %class.BitonicSort, align 8
  %5 = bitcast %class.BitonicSort* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %5) #26
  call void @_ZN11BitonicSortC2Ev(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4)
  %6 = invoke i32 @_ZN11BitonicSort10initializeEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4)
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %11, label %33

9:                                                ; preds = %32, %30, %26, %24, %20, %11, %2
  %10 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN11BitonicSortD2Ev(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %5) #26
  resume { i8*, i32 } %10

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %4, i64 0, i32 13
  %13 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %12, align 8, !tbaa !15
  %14 = bitcast %"class.appsdk::HIPCommandArgs"* %13 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %15 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %14, align 8, !tbaa !24
  %16 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %15, align 8
  %17 = invoke i32 %16(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %13, i32 %0, i8** %1)
          to label %18 unwind label %9

18:                                               ; preds = %11
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = invoke i32 @_ZN11BitonicSort5setupEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4)
          to label %22 unwind label %9

22:                                               ; preds = %20
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = invoke i32 @_ZN11BitonicSort3runEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4)
          to label %26 unwind label %9

26:                                               ; preds = %24
  %27 = invoke i32 @_ZN11BitonicSort13verifyResultsEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4)
          to label %28 unwind label %9

28:                                               ; preds = %26
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = invoke i32 @_ZN11BitonicSort7cleanupEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4)
          to label %32 unwind label %9

32:                                               ; preds = %30
  invoke void @_ZN11BitonicSort10printStatsEv(%class.BitonicSort* nonnull align 8 dereferenceable(112) %4)
          to label %33 unwind label %9

33:                                               ; preds = %32, %28, %22, %18, %7
  %34 = phi i32 [ 1, %7 ], [ 1, %18 ], [ 1, %22 ], [ 1, %28 ], [ 0, %32 ]
  %35 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %4, i64 0, i32 6, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !22
  %37 = getelementptr inbounds i8, i8* %36, i64 -24
  %38 = bitcast i8* %37 to %"struct.std::basic_string<char>::_Rep"*
  %39 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %39) #26
  %40 = icmp eq i8* %37, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %40, label %53, label %41, !prof !23

41:                                               ; preds = %33
  %42 = getelementptr inbounds i8, i8* %36, i64 -8
  %43 = bitcast i8* %42 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %44, label %46

44:                                               ; preds = %41
  %45 = atomicrmw volatile add i32* %43, i32 -1 acq_rel, align 4
  br label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %43, align 8, !tbaa !7
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %43, align 8, !tbaa !7
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %38, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %53

53:                                               ; preds = %33, %49, %52
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %39) #26
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %5) #26
  ret i32 %34
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11BitonicSortC2Ev(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 6
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %2, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %3, align 8, !tbaa !55
  %4 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 0
  store i32 123, i32* %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 5
  store i32 0, i32* %5, align 8, !tbaa !48
  %6 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4)
          to label %7 unwind label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 7
  store i32* null, i32** %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 9
  store i32* null, i32** %9, align 8, !tbaa !21
  %10 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 8
  store i32 32768, i32* %10, align 8, !tbaa !9
  %11 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 1
  %12 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 11
  %13 = bitcast double* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store i32 1, i32* %12, align 8, !tbaa !63
  %14 = invoke noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #28
          to label %15 unwind label %43

15:                                               ; preds = %7
  %16 = bitcast i8* %14 to %"class.appsdk::HIPCommandArgs"*
  %17 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 0
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 8, i32 0
  %20 = bitcast i32* %19 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %20, align 8, !tbaa !7
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %21, align 8, !tbaa !109
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %22, align 8, !tbaa !55
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 1
  store i32 0, i32* %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 2
  store i32 0, i32* %24, align 4, !tbaa !110
  %25 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 4
  %26 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 3
  %27 = bitcast i8*** %25 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  store i32 123, i32* %26, align 8, !tbaa !111
  %28 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 9
  store i8 0, i8* %28, align 4, !tbaa !31
  %29 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 10
  store i8 0, i8* %29, align 1, !tbaa !16
  %30 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 0, i32 11
  store i8 0, i8* %30, align 2, !tbaa !83
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %17, align 8, !tbaa !24
  %31 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 1
  store i32 0, i32* %31, align 8, !tbaa !112
  %32 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %16, i64 0, i32 2
  store i8 0, i8* %32, align 4, !tbaa !114
  %33 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 13
  %34 = bitcast %"class.appsdk::HIPCommandArgs"** %33 to i8**
  store i8* %14, i8** %34, align 8, !tbaa !15
  %35 = invoke noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #28
          to label %36 unwind label %43

36:                                               ; preds = %15
  %37 = bitcast i8* %14 to %"class.appsdk::SDKCmdArgsParser"*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false) #26
  %38 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 12
  %39 = bitcast %"class.appsdk::SDKTimer"** %38 to i8**
  store i8* %35, i8** %39, align 8, !tbaa !65
  %40 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %37, i64 0, i32 12
  %41 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i64 0, i64 0), i64 30)
          to label %42 unwind label %43

42:                                               ; preds = %36
  ret void

43:                                               ; preds = %36, %1, %15, %7
  %44 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %2) #26
  resume { i8*, i32 } %44
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN11BitonicSortD2Ev(%class.BitonicSort* nonnull align 8 dereferenceable(112) %0) unnamed_addr #16 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator", align 1
  %3 = getelementptr inbounds %class.BitonicSort, %class.BitonicSort* %0, i64 0, i32 6, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !22
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to %"struct.std::basic_string<char>::_Rep"*
  %7 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7) #26
  %8 = icmp eq i8* %5, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %8, label %21, label %9, !prof !23

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, i8* %4, i64 -8
  %11 = bitcast i8* %10 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %12, label %14

12:                                               ; preds = %9
  %13 = atomicrmw volatile add i32* %11, i32 -1 acq_rel, align 4
  br label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %11, align 8, !tbaa !7
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %11, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %6, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %21

21:                                               ; preds = %1, %17, %20
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #26
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

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
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::allocator", align 1
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::allocator", align 1
  %14 = alloca %"class.std::basic_string", align 8
  %15 = alloca %"class.std::allocator", align 1
  %16 = alloca %"class.std::basic_string", align 8
  %17 = alloca %"class.std::allocator", align 1
  %18 = alloca %"class.std::basic_string", align 8
  %19 = alloca %"class.std::allocator", align 1
  %20 = alloca %"class.std::basic_string", align 8
  %21 = alloca %"class.std::allocator", align 1
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
  %42 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !110
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !115
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !30
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
  %67 = load i8*, i8** %66, align 8, !tbaa !22
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #26
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %69, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %9) #26
  br label %84

84:                                               ; preds = %64, %80, %83
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %70) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #26
  br i1 %65, label %85, label %339

85:                                               ; preds = %84
  call void @exit(i32 0) #30
  unreachable

86:                                               ; preds = %3, %38
  %87 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %87) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !110
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !115
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !30
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
  %112 = load i8*, i8** %111, align 8, !tbaa !22
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #26
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %114, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %8) #26
  br label %129

129:                                              ; preds = %109, %125, %128
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %87) #26
  br i1 %110, label %130, label %131

130:                                              ; preds = %129
  call void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  call void @exit(i32 0) #30
  unreachable

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %132) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %15)
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
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !30
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
  %156 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %17)
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
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !30
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !30
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
  %186 = load i8*, i8** %185, align 8, !tbaa !22
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #26
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %7) #26
  br label %203

203:                                              ; preds = %183, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #26
  br label %204

204:                                              ; preds = %144, %203
  %205 = phi i1 [ %184, %203 ], [ true, %144 ]
  %206 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8, !tbaa !22
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #26
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %209, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %6) #26
  br label %224

224:                                              ; preds = %204, %220, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %210) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #26
  br i1 %205, label %225, label %237

225:                                              ; preds = %224
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !22
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #26
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #26
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi { i8*, i32 } [ %234, %233 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #26
  br label %341

237:                                              ; preds = %224
  %238 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %19)
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
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !30
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
  %262 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %21)
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
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !30
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !30
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
  %292 = load i8*, i8** %291, align 8, !tbaa !22
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #26
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %294, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #26
  br label %309

309:                                              ; preds = %289, %305, %308
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %295) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #26
  br label %310

310:                                              ; preds = %250, %309
  %311 = phi i1 [ %290, %309 ], [ true, %250 ]
  %312 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8, !tbaa !22
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #26
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %315, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #26
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
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !24
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !61
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
  %23 = load i8*, i8** %22, align 8, !tbaa !22
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #26
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %25, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %40

40:                                               ; preds = %21, %36, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #26
  %41 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !22
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #26
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %44, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
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
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !30
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !30
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !60
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !61
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !60
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !118

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !61
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !61
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !56
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !59
  store i8 1, i8* %44, align 1, !tbaa !119
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !59
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), float* %52) #26
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
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
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !59
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), double* %81) #26
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
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
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !59
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), i32* %110) #26
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
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
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !59
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !22
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !22
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #26
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %147, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #26
  br label %162

162:                                              ; preds = %161, %158, %146
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !22
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !23

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !121
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !35
  store i8 0, i8* %144, align 1, !tbaa !30
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #26
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
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
  %196 = load i32, i32* %14, align 8, !tbaa !60
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !118

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare dso_local void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24), %"class.std::allocator"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #20

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::basic_string", align 8
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !90
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !96
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !106
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !90
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !96
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !106
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i64 0, i64 0), i64 25)
  %42 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %43 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %44 = bitcast %"class.std::basic_string"* %6 to i8*
  %45 = bitcast %"class.std::basic_string"* %7 to i8*
  %46 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %7, i64 0, i32 0, i32 0
  %47 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %48 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %5, i64 0, i32 0
  %49 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %4, i64 0, i32 0
  %50 = bitcast %"class.std::basic_string"* %8 to i8*
  %51 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %52 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %3, i64 0, i32 0
  %53 = bitcast %"class.std::basic_string"* %9 to i8*
  %54 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i64 0, i32 0, i32 0
  %55 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %2, i64 0, i32 0
  %56 = load i32, i32* %42, align 8, !tbaa !60
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !61
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !22
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !35
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !90
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !96
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #26
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !55, !alias.scope !122
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
  %95 = load i8*, i8** %94, align 8, !tbaa !55, !noalias !125
  store i8* %95, i8** %47, align 8, !tbaa !55, !alias.scope !125
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !22, !noalias !125
  %96 = load i8*, i8** %47, align 8, !tbaa !22
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !35
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #26
  br label %116

116:                                              ; preds = %101, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #26
  %117 = load i8*, i8** %46, align 8, !tbaa !22
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #26
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %119, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %4) #26
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
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !90
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !96
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #26
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !61
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !55, !alias.scope !128
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !22, !noalias !128
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !35, !noalias !128
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
  %170 = load i8*, i8** %51, align 8, !tbaa !22
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !35
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !22
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #26
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #26
  br label %192

192:                                              ; preds = %175, %188, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #26
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !61
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !22
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !35
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !90
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !96
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !106
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
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !61
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
  %225 = load i8*, i8** %54, align 8, !tbaa !22
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !35
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !22
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #26
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !23

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %233, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #26
  br label %247

247:                                              ; preds = %230, %243, %246
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %55) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #26
  %248 = add nuw nsw i64 %60, 1
  %249 = load i32, i32* %42, align 8, !tbaa !60
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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bitonicsort.cpp() #5 section ".text.startup" {
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32, i32, i32)** @_Z11bitonicSortPjjjj to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

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
attributes #12 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { argmemonly nofree nounwind willreturn writeonly }
attributes #25 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { allocsize(0) }

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
!9 = !{!10, !8, i64 64}
!10 = !{!"_ZTS11BitonicSort", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !12, i64 48, !4, i64 56, !8, i64 64, !4, i64 72, !4, i64 80, !8, i64 88, !4, i64 96, !4, i64 104}
!11 = !{!"double", !5, i64 0}
!12 = !{!"_ZTSSs", !13, i64 0}
!13 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!14 = !{!10, !4, i64 56}
!15 = !{!10, !4, i64 104}
!16 = !{!17, !18, i64 77}
!17 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !18, i64 40, !12, i64 48, !19, i64 56, !18, i64 76, !18, i64 77, !18, i64 78, !12, i64 80}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!20 = !{i8 0, i8 2}
!21 = !{!10, !4, i64 72}
!22 = !{!12, !4, i64 0}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !6, i64 0}
!26 = !{!27, !4, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !18, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!28 = !{!29, !5, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !18, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!30 = !{!5, !5, i64 0}
!31 = !{!17, !18, i64 76}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSNSs9_Rep_baseE", !37, i64 0, !37, i64 8, !8, i64 16}
!37 = !{!"long", !5, i64 0}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = !{!41, !8, i64 332}
!41 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !37, i64 256, !37, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !37, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !42, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !37, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !37, i64 712, !37, i64 720, !37, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!42 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!43 = !{!41, !8, i64 328}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !5, i64 0}
!46 = !{!10, !4, i64 80}
!47 = distinct !{!47, !33}
!48 = !{!10, !8, i64 40}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = !{!13, !4, i64 0}
!56 = !{!57, !58, i64 32}
!57 = !{!"_ZTSN6appsdk6OptionE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !58, i64 32, !4, i64 40}
!58 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!59 = !{!57, !4, i64 40}
!60 = !{!17, !8, i64 8}
!61 = !{!17, !4, i64 32}
!62 = distinct !{!62, !33}
!63 = !{!10, !8, i64 88}
!64 = !{i32 0, i32 33}
!65 = !{!10, !4, i64 96}
!66 = !{!67, !4, i64 8}
!67 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!69 = !{!67, !4, i64 0}
!70 = !{!10, !11, i64 8}
!71 = !{!72, !73, i64 8}
!72 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !12, i64 0, !73, i64 8, !73, i64 16, !73, i64 24}
!73 = !{!"long long", !5, i64 0}
!74 = !{!67, !4, i64 16}
!75 = !{!76, !37, i64 0}
!76 = !{!"_ZTS7timeval", !37, i64 0, !37, i64 8}
!77 = !{!76, !37, i64 8}
!78 = !{!72, !73, i64 24}
!79 = !{!72, !73, i64 16}
!80 = distinct !{!80, !33}
!81 = !{!10, !11, i64 16}
!82 = !{!10, !11, i64 32}
!83 = !{!17, !18, i64 78}
!84 = !{!85, !11, i64 24}
!85 = !{!"_ZTSN6appsdk8SDKTimerE", !86, i64 0, !11, i64 24}
!86 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!89 = distinct !{!89, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!90 = !{!91, !92, i64 24}
!91 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !92, i64 24, !93, i64 28, !93, i64 32, !4, i64 40, !94, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !95, i64 208}
!92 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!93 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!94 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !37, i64 8}
!95 = !{!"_ZTSSt6locale", !4, i64 0}
!96 = !{!92, !92, i64 0}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!99 = distinct !{!99, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!102 = distinct !{!102, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!105 = distinct !{!105, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!106 = !{!91, !37, i64 16}
!107 = distinct !{!107, !33}
!108 = !{!10, !8, i64 0}
!109 = !{!19, !8, i64 16}
!110 = !{!17, !8, i64 12}
!111 = !{!17, !8, i64 16}
!112 = !{!113, !8, i64 88}
!113 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !18, i64 92}
!114 = !{!113, !18, i64 92}
!115 = !{!17, !4, i64 24}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = !{!18, !18, i64 0}
!120 = !{!91, !93, i64 32}
!121 = !{!36, !8, i64 16}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!127 = distinct !{!127, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!130 = distinct !{!130, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!131 = distinct !{!131, !33}
