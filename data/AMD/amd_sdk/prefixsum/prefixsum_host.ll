; ModuleID = 'prefixsum/prefixsum.cpp'
source_filename = "prefixsum/prefixsum.cpp"
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
%class.PrefixSum = type { i32, double, double, i32, float*, float*, float*, float*, float*, i32, %"class.appsdk::SDKTimer"*, float*, float*, %"class.appsdk::HIPCommandArgs"* }
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
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%"class.std::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::basic_string" }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

$_ZN6appsdk10printArrayIfEEvSsPKT_ii = comdat any

$_ZN6appsdk14HIPCommandArgs10initializeEv = comdat any

$_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE = comdat any

$_ZN6appsdk6OptionD2Ev = comdat any

$_ZN6appsdk8SDKTimer11createTimerEv = comdat any

$_ZN6appsdk8SDKTimer10startTimerEi = comdat any

$_ZN6appsdk8SDKTimer9stopTimerEi = comdat any

$_ZN6appsdk8SDKTimer9readTimerEi = comdat any

$_ZN9PrefixSumD2Ev = comdat any

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
@_Z15group_prefixSumPfS_jj = dso_local constant void (float*, float*, i32, i32)* @_Z30__device_stub__group_prefixSumPfS_jj, align 8
@_Z16global_prefixSumPfjj = dso_local constant void (float*, i32, i32)* @_Z31__device_stub__global_prefixSumPfjj, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate host memory. (input)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"prefixsum/prefixsum.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Failed to allocate host memory. (verificationOutput)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Input : \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Length of the input array\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Output : \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Samples\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Setup Time(sec)\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Avg. kernel time (sec)\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Samples used /sec\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c" totalConstMem \00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c" sharedMemPerBlock \00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.47 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"HIP-Examples-Application-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.58 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.65 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.72 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [26 x i8] c"_Z15group_prefixSumPfS_jj\00", align 1
@1 = private unnamed_addr constant [25 x i8] c"_Z16global_prefixSumPfjj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_prefixsum.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z30__device_stub__group_prefixSumPfS_jj(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
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
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z15group_prefixSumPfS_jj to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: norecurse uwtable
define dso_local void @_Z31__device_stub__global_prefixSumPfjj(float* %0, i32 %1, i32 %2) #3 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store float* %0, float** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to float***
  store float** %4, float*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32**
  store i32* %5, i32** %15, align 8
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
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32, i32)** @_Z16global_prefixSumPfjj to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9PrefixSum14setupPrefixSumEv(%class.PrefixSum* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 8, !tbaa !9
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 2, i32* %11, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %14, %1
  %16 = phi i32 [ 2, %14 ], [ %12, %1 ]
  %17 = shl i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = tail call noalias align 16 i8* @malloc(i64 %18) #27
  %20 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 4
  %21 = bitcast float** %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !12
  %22 = icmp eq i8* %19, null
  br i1 %22, label %23, label %85

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6)
          to label %25 unwind label %79

25:                                               ; preds = %23
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %5)
          to label %26 unwind label %81

26:                                               ; preds = %25
  %27 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !13
  %29 = getelementptr inbounds i8, i8* %28, i64 -24
  %30 = bitcast i8* %29 to %"struct.std::basic_string<char>::_Rep"*
  %31 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %31) #27
  %32 = icmp eq i8* %29, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %32, label %45, label %33, !prof !16

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %28, i64 -8
  %35 = bitcast i8* %34 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %36, label %38

36:                                               ; preds = %33
  %37 = atomicrmw volatile add i32* %35, i32 -1 acq_rel, align 4
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %35, align 8, !tbaa !7
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %35, align 8, !tbaa !7
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %30, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #27
  br label %45

45:                                               ; preds = %26, %41, %44
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #27
  %46 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %48 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 314)
  %50 = bitcast %"class.std::basic_ostream"* %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !17
  %52 = getelementptr i8, i8* %51, i64 -24
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %"class.std::basic_ostream"* %49 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  %57 = getelementptr inbounds i8, i8* %56, i64 240
  %58 = bitcast i8* %57 to %"class.std::ctype"**
  %59 = load %"class.std::ctype"*, %"class.std::ctype"** %58, align 8, !tbaa !19
  %60 = icmp eq %"class.std::ctype"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

62:                                               ; preds = %45
  %63 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 8
  %64 = load i8, i8* %63, align 8, !tbaa !22
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 9, i64 10
  %68 = load i8, i8* %67, align 1, !tbaa !24
  br label %75

69:                                               ; preds = %62
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59)
  %70 = bitcast %"class.std::ctype"* %59 to i8 (%"class.std::ctype"*, i8)***
  %71 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %70, align 8, !tbaa !17
  %72 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %71, i64 6
  %73 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %72, align 8
  %74 = call signext i8 %73(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59, i8 signext 10)
  br label %75

75:                                               ; preds = %66, %69
  %76 = phi i8 [ %68, %66 ], [ %74, %69 ]
  %77 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49, i8 signext %76)
  %78 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %77)
  br label %213

79:                                               ; preds = %23
  %80 = landingpad { i8*, i32 }
          cleanup
  br label %83

81:                                               ; preds = %25
  %82 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5) #27
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { i8*, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #27
  br label %215

85:                                               ; preds = %15
  %86 = bitcast i8* %19 to float*
  tail call void @srand(i32 123) #27
  %87 = icmp sgt i32 %16, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = zext i32 %16 to i64
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi i64 [ 0, %88 ], [ %99, %90 ]
  %92 = tail call i32 @rand() #27
  %93 = sitofp i32 %92 to double
  %94 = fmul contract double %93, 1.100000e+01
  %95 = fmul contract double %94, 0x3E00000000000000
  %96 = fptrunc double %95 to float
  %97 = fadd contract float %96, 0.000000e+00
  %98 = getelementptr inbounds float, float* %86, i64 %91
  store float %97, float* %98, align 4, !tbaa !25
  %99 = add nuw nsw i64 %91, 1
  %100 = icmp eq i64 %99, %89
  br i1 %100, label %101, label %90, !llvm.loop !27

101:                                              ; preds = %90, %85
  %102 = tail call noalias align 16 i8* @malloc(i64 %18) #27
  %103 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 8
  %104 = bitcast float** %103 to i8**
  store i8* %102, i8** %104, align 8, !tbaa !29
  %105 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 13
  %106 = bitcast %"class.appsdk::HIPCommandArgs"** %105 to %"class.appsdk::SDKCmdArgsParser"**
  %107 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %106, align 8, !tbaa !30
  %108 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %107, i64 0, i32 10
  %109 = load i8, i8* %108, align 1, !tbaa !31, !range !34
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %178, label %111

111:                                              ; preds = %101
  %112 = call i8* @calloc(i64 1, i64 %18)
  %113 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 5
  %114 = bitcast float** %113 to i8**
  store i8* %112, i8** %114, align 8, !tbaa !35
  %115 = icmp eq i8* %112, null
  br i1 %115, label %116, label %178

116:                                              ; preds = %111
  %117 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %117) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8)
          to label %118 unwind label %172

118:                                              ; preds = %116
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %7)
          to label %119 unwind label %174

119:                                              ; preds = %118
  %120 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %7, i64 0, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8, !tbaa !13
  %122 = getelementptr inbounds i8, i8* %121, i64 -24
  %123 = bitcast i8* %122 to %"struct.std::basic_string<char>::_Rep"*
  %124 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %124) #27
  %125 = icmp eq i8* %122, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %125, label %138, label %126, !prof !16

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, i8* %121, i64 -8
  %128 = bitcast i8* %127 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %129, label %131

129:                                              ; preds = %126
  %130 = atomicrmw volatile add i32* %128, i32 -1 acq_rel, align 4
  br label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %128, align 8, !tbaa !7
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %128, align 8, !tbaa !7
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %123, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %138

138:                                              ; preds = %119, %134, %137
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %124) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #27
  %139 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %140 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %142 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 323)
  %143 = bitcast %"class.std::basic_ostream"* %142 to i8**
  %144 = load i8*, i8** %143, align 8, !tbaa !17
  %145 = getelementptr i8, i8* %144, i64 -24
  %146 = bitcast i8* %145 to i64*
  %147 = load i64, i64* %146, align 8
  %148 = bitcast %"class.std::basic_ostream"* %142 to i8*
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  %150 = getelementptr inbounds i8, i8* %149, i64 240
  %151 = bitcast i8* %150 to %"class.std::ctype"**
  %152 = load %"class.std::ctype"*, %"class.std::ctype"** %151, align 8, !tbaa !19
  %153 = icmp eq %"class.std::ctype"* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %138
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

155:                                              ; preds = %138
  %156 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %152, i64 0, i32 8
  %157 = load i8, i8* %156, align 8, !tbaa !22
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %152, i64 0, i32 9, i64 10
  %161 = load i8, i8* %160, align 1, !tbaa !24
  br label %168

162:                                              ; preds = %155
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %152)
  %163 = bitcast %"class.std::ctype"* %152 to i8 (%"class.std::ctype"*, i8)***
  %164 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %163, align 8, !tbaa !17
  %165 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %164, i64 6
  %166 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %165, align 8
  %167 = call signext i8 %166(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %152, i8 signext 10)
  br label %168

168:                                              ; preds = %159, %162
  %169 = phi i8 [ %161, %159 ], [ %167, %162 ]
  %170 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %142, i8 signext %169)
  %171 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %170)
  br label %213

172:                                              ; preds = %116
  %173 = landingpad { i8*, i32 }
          cleanup
  br label %176

174:                                              ; preds = %118
  %175 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #27
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi { i8*, i32 } [ %175, %174 ], [ %173, %172 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #27
  br label %215

178:                                              ; preds = %111, %101
  %179 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %107, i64 0, i32 9
  %180 = load i8, i8* %179, align 4, !tbaa !36, !range !34
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %213

182:                                              ; preds = %178
  %183 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %183) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10)
          to label %184 unwind label %207

184:                                              ; preds = %182
  %185 = load float*, float** %20, align 8, !tbaa !12
  %186 = load i32, i32* %11, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %9, float* %185, i32 %186, i32 1)
          to label %187 unwind label %209

187:                                              ; preds = %184
  %188 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i64 0, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8, !tbaa !13
  %190 = getelementptr inbounds i8, i8* %189, i64 -24
  %191 = bitcast i8* %190 to %"struct.std::basic_string<char>::_Rep"*
  %192 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %192) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %191, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %206

206:                                              ; preds = %187, %202, %205
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %192) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %183) #27
  br label %213

207:                                              ; preds = %182
  %208 = landingpad { i8*, i32 }
          cleanup
  br label %211

209:                                              ; preds = %184
  %210 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #27
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi { i8*, i32 } [ %210, %209 ], [ %208, %207 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %183) #27
  br label %215

213:                                              ; preds = %178, %206, %168, %75
  %214 = phi i32 [ 1, %75 ], [ 1, %168 ], [ 0, %206 ], [ 0, %178 ]
  ret i32 %214

215:                                              ; preds = %211, %176, %83
  %216 = phi { i8*, i32 } [ %84, %83 ], [ %177, %176 ], [ %212, %211 ]
  resume { i8*, i32 } %216
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #8 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !37
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
  tail call void @_ZSt16__throw_bad_castv() #28
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

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* %0, float* %1, i32 %2, i32 %3) local_unnamed_addr #8 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !37
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %7, i64 %10)
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i64 1)
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
  %27 = load float, float* %26, align 4, !tbaa !25
  %28 = fpext float %27 to double
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !40

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !41

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !41

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @_ZN9PrefixSum8setupHIPEv(%class.PrefixSum* nocapture nonnull readnone align 8 %0) local_unnamed_addr #12 align 2 {
  ret i32 0
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9PrefixSum14runGroupKernelEj(%class.PrefixSum* nocapture nonnull readonly align 8 dereferenceable(112) %0, i32 %1) local_unnamed_addr #5 align 2 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8*], align 16
  %12 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !9
  %14 = udiv i32 %13, %1
  %15 = add i32 %14, 1
  %16 = lshr i32 %15, 1
  %17 = add nuw i32 %16, 127
  %18 = lshr i32 %17, 7
  %19 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 7
  %20 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 6
  %21 = load float*, float** %19, align 8
  %22 = load float*, float** %20, align 8
  %23 = zext i32 %18 to i64
  %24 = or i64 %23, 4294967296
  %25 = tail call i32 @__hipPushCallConfiguration(i64 %24, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %2
  %28 = icmp ugt i32 %1, 1
  %29 = select i1 %28, float* %21, float* %22
  %30 = load float*, float** %19, align 8, !tbaa !42
  %31 = load i32, i32* %12, align 8, !tbaa !9
  %32 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32)
  %33 = bitcast float** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33)
  %34 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34)
  %35 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35)
  %36 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %36)
  %37 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %37)
  %38 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38)
  %39 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39)
  %40 = bitcast [4 x i8*]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %40)
  store float* %30, float** %3, align 8, !tbaa !3
  store float* %29, float** %4, align 8, !tbaa !3
  store i32 %31, i32* %5, align 4, !tbaa !7
  store i32 %1, i32* %6, align 4, !tbaa !7
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %42 = bitcast [4 x i8*]* %11 to float***
  store float** %3, float*** %42, align 16
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %44 = bitcast i8** %43 to float***
  store float** %4, float*** %44, align 8
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  %46 = bitcast i8** %45 to i32**
  store i32* %5, i32** %46, align 16
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 3
  %48 = bitcast i8** %47 to i32**
  store i32* %6, i32** %48, align 8
  %49 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %50 = load i64, i64* %9, align 8
  %51 = bitcast i8** %10 to %struct.ihipStream_t**
  %52 = load %struct.ihipStream_t*, %struct.ihipStream_t** %51, align 8
  %53 = bitcast %struct.dim3* %7 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = bitcast %struct.dim3* %8 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z15group_prefixSumPfS_jj to i8*), i64 %54, i32 %56, i64 %58, i32 %60, i8** nonnull %41, i64 %50, %struct.ihipStream_t* %52)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %36)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %37)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %40)
  br label %62

62:                                               ; preds = %27, %2
  ret i32 0
}

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN9PrefixSum15runGlobalKernelEj(%class.PrefixSum* nocapture nonnull readonly align 8 dereferenceable(112) %0, i32 %1) local_unnamed_addr #5 align 2 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim3, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [3 x i8*], align 16
  %11 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 8, !tbaa !9
  %13 = sub i32 %12, %1
  %14 = shl i32 %1, 8
  %15 = udiv i32 %13, %14
  %16 = mul i32 %15, %1
  %17 = add i32 %13, 127
  %18 = sub i32 %17, %16
  %19 = lshr i32 %18, 7
  %20 = zext i32 %19 to i64
  %21 = or i64 %20, 4294967296
  %22 = tail call i32 @__hipPushCallConfiguration(i64 %21, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %2
  %25 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 7
  %26 = load float*, float** %25, align 8, !tbaa !42
  %27 = load i32, i32* %11, align 8, !tbaa !9
  %28 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28)
  %29 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29)
  %30 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30)
  %31 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %31)
  %32 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %32)
  %33 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33)
  %34 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34)
  %35 = bitcast [3 x i8*]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %35)
  store float* %26, float** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  store i32 %27, i32* %5, align 4, !tbaa !7
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %37 = bitcast [3 x i8*]* %10 to float***
  store float** %3, float*** %37, align 16
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 1
  %39 = bitcast i8** %38 to i32**
  store i32* %4, i32** %39, align 8
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 2
  %41 = bitcast i8** %40 to i32**
  store i32* %5, i32** %41, align 16
  %42 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %6, %struct.dim3* nonnull %7, i64* nonnull %8, i8** nonnull %9)
  %43 = load i64, i64* %8, align 8
  %44 = bitcast i8** %9 to %struct.ihipStream_t**
  %45 = load %struct.ihipStream_t*, %struct.ihipStream_t** %44, align 8
  %46 = bitcast %struct.dim3* %6 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %struct.dim3* %7 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32, i32)** @_Z16global_prefixSumPfjj to i8*), i64 %47, i32 %49, i64 %51, i32 %53, i8** nonnull %36, i64 %43, %struct.ihipStream_t* %45)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %31)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %32)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %35)
  br label %55

55:                                               ; preds = %24, %2
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN9PrefixSum10runKernelsEv(%class.PrefixSum* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 11
  %3 = bitcast float** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 4
  %6 = bitcast float** %5 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = tail call i32 @hipMemcpy(i8* %4, i8* %7, i64 %11, i32 1)
  %13 = load i32, i32* %8, align 8, !tbaa !9
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %1, %26
  %16 = phi i32 [ %28, %26 ], [ %13, %1 ]
  %17 = phi i32 [ %27, %26 ], [ 1, %1 ]
  %18 = udiv i32 %16, %17
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call i32 @_ZN9PrefixSum14runGroupKernelEj(%class.PrefixSum* nonnull align 8 dereferenceable(112) %0, i32 %17)
  br label %22

22:                                               ; preds = %20, %15
  %23 = icmp ugt i32 %17, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call i32 @_ZN9PrefixSum15runGlobalKernelEj(%class.PrefixSum* nonnull align 8 dereferenceable(112) %0, i32 %17)
  br label %26

26:                                               ; preds = %24, %22
  %27 = shl i32 %17, 8
  %28 = load i32, i32* %8, align 8, !tbaa !9
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %15, label %30, !llvm.loop !44

30:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN9PrefixSum21prefixSumCPUReferenceEPfS0_j(%class.PrefixSum* nocapture nonnull readnone align 8 %0, float* nocapture %1, float* nocapture readonly %2, i32 %3) local_unnamed_addr #13 align 2 {
  %5 = load float, float* %2, align 4, !tbaa !25
  store float %5, float* %1, align 4, !tbaa !25
  %6 = icmp ugt i32 %3, 1
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64
  %9 = add nsw i64 %8, -1
  %10 = add nsw i64 %8, -2
  %11 = and i64 %9, 3
  %12 = icmp ult i64 %10, 3
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = and i64 %9, -4
  br label %31

15:                                               ; preds = %31, %7
  %16 = phi float [ %5, %7 ], [ %52, %31 ]
  %17 = phi i64 [ 1, %7 ], [ %54, %31 ]
  %18 = icmp eq i64 %11, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15, %19
  %20 = phi float [ %25, %19 ], [ %16, %15 ]
  %21 = phi i64 [ %27, %19 ], [ %17, %15 ]
  %22 = phi i64 [ %28, %19 ], [ 0, %15 ]
  %23 = getelementptr inbounds float, float* %2, i64 %21
  %24 = load float, float* %23, align 4, !tbaa !25
  %25 = fadd contract float %24, %20
  %26 = getelementptr inbounds float, float* %1, i64 %21
  store float %25, float* %26, align 4, !tbaa !25
  %27 = add nuw nsw i64 %21, 1
  %28 = add i64 %22, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %30, label %19, !llvm.loop !45

30:                                               ; preds = %15, %19, %4
  ret void

31:                                               ; preds = %31, %13
  %32 = phi float [ %5, %13 ], [ %52, %31 ]
  %33 = phi i64 [ 1, %13 ], [ %54, %31 ]
  %34 = phi i64 [ 0, %13 ], [ %55, %31 ]
  %35 = getelementptr inbounds float, float* %2, i64 %33
  %36 = load float, float* %35, align 4, !tbaa !25
  %37 = fadd contract float %36, %32
  %38 = getelementptr inbounds float, float* %1, i64 %33
  store float %37, float* %38, align 4, !tbaa !25
  %39 = add nuw nsw i64 %33, 1
  %40 = getelementptr inbounds float, float* %2, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !25
  %42 = fadd contract float %41, %37
  %43 = getelementptr inbounds float, float* %1, i64 %39
  store float %42, float* %43, align 4, !tbaa !25
  %44 = add nuw nsw i64 %33, 2
  %45 = getelementptr inbounds float, float* %2, i64 %44
  %46 = load float, float* %45, align 4, !tbaa !25
  %47 = fadd contract float %46, %42
  %48 = getelementptr inbounds float, float* %1, i64 %44
  store float %47, float* %48, align 4, !tbaa !25
  %49 = add nuw nsw i64 %33, 3
  %50 = getelementptr inbounds float, float* %2, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !25
  %52 = fadd contract float %51, %47
  %53 = getelementptr inbounds float, float* %1, i64 %49
  store float %52, float* %53, align 4, !tbaa !25
  %54 = add nuw nsw i64 %33, 4
  %55 = add i64 %34, 4
  %56 = icmp eq i64 %55, %14
  br i1 %56, label %15, label %31, !llvm.loop !47
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9PrefixSum10initializeEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 13
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !30
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #29
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 6)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64 25)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %21 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %22 = bitcast i8** %21 to i32**
  store i32* %20, i32** %22, align 8, !tbaa !52
  %23 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %24 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !30
  %25 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %24, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #27
  tail call void @_ZdlPv(i8* nonnull %7) #30
  %26 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #29
  %27 = bitcast i8* %26 to %"struct.appsdk::Option"*
  %28 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %28, align 8, !tbaa !48
  %29 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !48
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !48
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !48
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0
  %33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1)
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1
  %35 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64 10)
  %36 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i64 41)
  %38 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 4
  store i32 0, i32* %38, align 8, !tbaa !49
  %39 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 9
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 5
  %41 = bitcast i8** %40 to i32**
  store i32* %39, i32** %41, align 8, !tbaa !52
  %42 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !30
  %43 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %42, %"struct.appsdk::Option"* nonnull %27)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %27) #27
  tail call void @_ZdlPv(i8* nonnull %26) #30
  br label %44

44:                                               ; preds = %1, %6
  %45 = phi i32 [ 0, %6 ], [ 1, %1 ]
  ret i32 %45
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #29
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !48
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !48
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !48
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !48
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !48
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !48
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !48
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !48
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !48
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !48
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !48
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !48
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !48
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !48
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !48
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !48
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !48
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !48
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !48
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !48
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !49
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !52
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !49
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !52
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !49
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !52
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !49
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !52
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.47, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !49
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !52
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !53
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !54
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
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !54
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !53
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 48)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = or i64 %16, 8
  %18 = select i1 %15, i64 -1, i64 %17
  %19 = tail call noalias nonnull i8* @_Znam(i64 %18) #29
  %20 = bitcast i8* %19 to i64*
  store i64 %13, i64* %20, align 16
  %21 = getelementptr inbounds i8, i8* %19, i64 8
  %22 = bitcast i8* %21 to %"struct.appsdk::Option"*
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %25, align 8, !tbaa !54
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !48
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !48
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !48
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !48
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !54
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
  %59 = load i32, i32* %10, align 8, !tbaa !53
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !54
  br i1 %61, label %39, label %63, !llvm.loop !55

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
  %83 = load i32, i32* %10, align 8, !tbaa !53
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !53
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %95) #27
  %96 = icmp eq %"struct.appsdk::Option"* %95, %8
  br i1 %96, label %97, label %93

97:                                               ; preds = %93, %85
  tail call void @_ZdaPv(i8* nonnull %87) #30
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %9, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #27
  br label %24

24:                                               ; preds = %1, %20, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #27
  %25 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %28, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #27
  br label %43

43:                                               ; preds = %24, %39, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #27
  %44 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !13
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %62

62:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #27
  %63 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !13
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %81

81:                                               ; preds = %62, %77, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #27
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9PrefixSum5setupEv(%class.PrefixSum* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %7 = load i32, i32* %6, align 8, !tbaa !9
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #27, !range !56
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = add i32 %7, -1
  %12 = lshr i32 %11, 1
  %13 = or i32 %12, %11
  %14 = lshr i32 %13, 2
  %15 = or i32 %14, %13
  %16 = lshr i32 %15, 4
  %17 = or i32 %16, %15
  %18 = lshr i32 %17, 8
  %19 = or i32 %18, %17
  %20 = add i32 %19, 1
  store i32 %20, i32* %6, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %10, %1
  %22 = tail call i32 @_ZN9PrefixSum14setupPrefixSumEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %97

24:                                               ; preds = %21
  %25 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 10
  %26 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %25, align 8, !tbaa !57
  %27 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %26)
  %28 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %25, align 8, !tbaa !57
  %29 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29)
  %30 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %28, i64 0, i32 0, i32 0, i32 0, i32 1
  %31 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %30, align 8, !tbaa !58
  %32 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %28, i64 0, i32 0, i32 0, i32 0, i32 0
  %33 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %32, align 8, !tbaa !61
  %34 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %31 to i64
  %35 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %33 to i64
  %36 = sub i64 %34, %35
  %37 = lshr exact i64 %36, 3
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %27, %38
  br i1 %39, label %83, label %40

40:                                               ; preds = %24
  %41 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %41) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %42 unwind label %62

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8, !tbaa !13
  %45 = getelementptr inbounds i8, i8* %44, i64 -24
  %46 = bitcast i8* %45 to %"struct.std::basic_string<char>::_Rep"*
  %47 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %47) #27
  %48 = icmp eq i8* %45, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %48, label %61, label %49, !prof !16

49:                                               ; preds = %42
  %50 = getelementptr inbounds i8, i8* %44, i64 -8
  %51 = bitcast i8* %50 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %52, label %54

52:                                               ; preds = %49
  %53 = atomicrmw volatile add i32* %51, i32 -1 acq_rel, align 4
  br label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %51, align 8, !tbaa !7
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %51, align 8, !tbaa !7
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %46, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %61

61:                                               ; preds = %60, %57, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %47) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %41) #27
  br label %89

62:                                               ; preds = %40
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8, !tbaa !13
  %66 = getelementptr inbounds i8, i8* %65, i64 -24
  %67 = bitcast i8* %66 to %"struct.std::basic_string<char>::_Rep"*
  %68 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %68) #27
  %69 = icmp eq i8* %66, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %69, label %82, label %70, !prof !16

70:                                               ; preds = %62
  %71 = getelementptr inbounds i8, i8* %65, i64 -8
  %72 = bitcast i8* %71 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %73, label %75

73:                                               ; preds = %70
  %74 = atomicrmw volatile add i32* %72, i32 -1 acq_rel, align 4
  br label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %72, align 8, !tbaa !7
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %72, align 8, !tbaa !7
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %67, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %82

82:                                               ; preds = %62, %78, %81
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %68) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %41) #27
  resume { i8*, i32 } %63

83:                                               ; preds = %24
  %84 = sext i32 %27 to i64
  %85 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %33, i64 %84
  %86 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %85, align 8, !tbaa !3
  %87 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %86, i64 0, i32 2
  %88 = bitcast i64* %87 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %88, i8 0, i64 16, i1 false)
  br label %89

89:                                               ; preds = %61, %83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29)
  %90 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %25, align 8, !tbaa !57
  %91 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %90, i32 %27)
  %92 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %25, align 8, !tbaa !57
  %93 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %92, i32 %27)
  %94 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %25, align 8, !tbaa !57
  %95 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %94, i32 %27)
  %96 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 1
  store double %95, double* %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %21, %89
  %98 = phi i32 [ 0, %89 ], [ 1, %21 ]
  ret i32 %98
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #29
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !66
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !58
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !58
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !61
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !61
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
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !61
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 %42, i1 false) #27
  br label %51

51:                                               ; preds = %48, %41
  %52 = ashr exact i64 %42, 3
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %52
  %54 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, i64 1
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !58
  %56 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %55 to i64
  %57 = sub i64 %56, %22
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = bitcast %"struct.appsdk::SDKTimer::Timer"** %54 to i8*
  %61 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %60, i8* align 8 %61, i64 %57, i1 false) #27
  br label %62

62:                                               ; preds = %59, %51
  %63 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %43, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = bitcast %"struct.appsdk::SDKTimer::Timer"** %43 to i8*
  tail call void @_ZdlPv(i8* nonnull %65) #27
  br label %66

66:                                               ; preds = %64, %62
  %67 = ashr exact i64 %57, 3
  %68 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %54, i64 %67
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !61
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !58
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !66
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !61
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !13
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #27
  br label %56

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #27
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #27
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #27
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !67
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !69
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !61
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #27
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !61
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !13
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #27
  br label %61

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #27
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #27
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #27
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !67
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !69
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !61
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !70
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !70
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !71
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #27
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
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !61
  %10 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %7 to i64
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !13
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %22, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %37

37:                                               ; preds = %18, %33, %36
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %23) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #27
  br label %51

38:                                               ; preds = %16
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #27
  resume { i8*, i32 } %39

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %9, i64 %41
  %43 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %42, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 2
  %45 = load i64, i64* %44, align 8, !tbaa !71
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !63
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9PrefixSum3runEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim3, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [4 x i8*], align 16
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dim3, align 8
  %15 = alloca %struct.dim3, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [3 x i8*], align 16
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dim3, align 8
  %24 = alloca %struct.dim3, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca [4 x i8*], align 16
  %28 = alloca float*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.dim3, align 8
  %32 = alloca %struct.dim3, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca [3 x i8*], align 16
  %36 = alloca %"class.std::allocator.0", align 1
  %37 = alloca %"class.std::allocator.0", align 1
  %38 = alloca %"class.std::basic_string", align 8
  %39 = alloca %"class.std::allocator.0", align 1
  %40 = alloca %"class.std::basic_string", align 8
  %41 = alloca %"class.std::allocator.0", align 1
  %42 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 6
  %43 = bitcast float** %42 to i8**
  %44 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %45 = load i32, i32* %44, align 8, !tbaa !9
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 2
  %48 = tail call i32 @hipHostMalloc(i8** nonnull %43, i64 %47, i32 0)
  %49 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 7
  %50 = bitcast float** %49 to i8**
  %51 = load i32, i32* %44, align 8, !tbaa !9
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 2
  %54 = tail call i32 @hipHostMalloc(i8** nonnull %50, i64 %53, i32 0)
  %55 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 11
  %56 = bitcast float** %55 to i8**
  %57 = load i8*, i8** %43, align 8, !tbaa !72
  %58 = tail call i32 @hipHostGetDevicePointer(i8** nonnull %56, i8* %57, i32 0)
  %59 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 12
  %60 = bitcast float** %59 to i8**
  %61 = load i8*, i8** %50, align 8, !tbaa !42
  %62 = tail call i32 @hipHostGetDevicePointer(i8** nonnull %60, i8* %61, i32 0)
  %63 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 9
  %64 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 4
  %65 = bitcast float** %64 to i8**
  %66 = bitcast float** %19 to i8*
  %67 = bitcast float** %20 to i8*
  %68 = bitcast i32* %21 to i8*
  %69 = bitcast i32* %22 to i8*
  %70 = bitcast %struct.dim3* %23 to i8*
  %71 = bitcast %struct.dim3* %24 to i8*
  %72 = bitcast i64* %25 to i8*
  %73 = bitcast i8** %26 to i8*
  %74 = bitcast [4 x i8*]* %27 to i8*
  %75 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 0
  %76 = bitcast [4 x i8*]* %27 to float***
  %77 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 1
  %78 = bitcast i8** %77 to float***
  %79 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 2
  %80 = bitcast i8** %79 to i32**
  %81 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 3
  %82 = bitcast i8** %81 to i32**
  %83 = bitcast i8** %26 to %struct.ihipStream_t**
  %84 = bitcast %struct.dim3* %23 to i64*
  %85 = getelementptr inbounds %struct.dim3, %struct.dim3* %23, i64 0, i32 2
  %86 = bitcast %struct.dim3* %24 to i64*
  %87 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i64 0, i32 2
  %88 = bitcast float** %28 to i8*
  %89 = bitcast i32* %29 to i8*
  %90 = bitcast i32* %30 to i8*
  %91 = bitcast %struct.dim3* %31 to i8*
  %92 = bitcast %struct.dim3* %32 to i8*
  %93 = bitcast i64* %33 to i8*
  %94 = bitcast i8** %34 to i8*
  %95 = bitcast [3 x i8*]* %35 to i8*
  %96 = getelementptr inbounds [3 x i8*], [3 x i8*]* %35, i64 0, i64 0
  %97 = bitcast [3 x i8*]* %35 to float***
  %98 = getelementptr inbounds [3 x i8*], [3 x i8*]* %35, i64 0, i64 1
  %99 = bitcast i8** %98 to i32**
  %100 = getelementptr inbounds [3 x i8*], [3 x i8*]* %35, i64 0, i64 2
  %101 = bitcast i8** %100 to i32**
  %102 = bitcast i8** %34 to %struct.ihipStream_t**
  %103 = bitcast %struct.dim3* %31 to i64*
  %104 = getelementptr inbounds %struct.dim3, %struct.dim3* %31, i64 0, i32 2
  %105 = bitcast %struct.dim3* %32 to i64*
  %106 = getelementptr inbounds %struct.dim3, %struct.dim3* %32, i64 0, i32 2
  %107 = load i32, i32* %63, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %187, label %109

109:                                              ; preds = %1
  %110 = load i32, i32* %44, align 8, !tbaa !9
  br label %111

111:                                              ; preds = %109, %182
  %112 = phi i32 [ %183, %182 ], [ %110, %109 ]
  %113 = phi i1 [ true, %182 ], [ false, %109 ]
  %114 = load i8*, i8** %56, align 8, !tbaa !43
  %115 = load i8*, i8** %65, align 8, !tbaa !12
  %116 = zext i32 %112 to i64
  %117 = shl nuw nsw i64 %116, 2
  %118 = call i32 @hipMemcpy(i8* %114, i8* %115, i64 %117, i32 1)
  %119 = load i32, i32* %44, align 8, !tbaa !9
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %182

121:                                              ; preds = %111, %178
  %122 = phi i32 [ %180, %178 ], [ %119, %111 ]
  %123 = phi i32 [ %179, %178 ], [ 1, %111 ]
  %124 = udiv i32 %122, %123
  %125 = icmp ugt i32 %124, 1
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = add i32 %124, 1
  %128 = lshr i32 %127, 1
  %129 = add nuw i32 %128, 127
  %130 = lshr i32 %129, 7
  %131 = load float*, float** %49, align 8
  %132 = load float*, float** %42, align 8
  %133 = zext i32 %130 to i64
  %134 = or i64 %133, 4294967296
  %135 = call i32 @__hipPushCallConfiguration(i64 %134, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %126
  %138 = icmp ugt i32 %123, 1
  %139 = select i1 %138, float* %131, float* %132
  %140 = load float*, float** %49, align 8, !tbaa !42
  %141 = load i32, i32* %44, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %68)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %69)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %70)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %71)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %74)
  store float* %140, float** %19, align 8, !tbaa !3
  store float* %139, float** %20, align 8, !tbaa !3
  store i32 %141, i32* %21, align 4, !tbaa !7
  store i32 %123, i32* %22, align 4, !tbaa !7
  store float** %19, float*** %76, align 16
  store float** %20, float*** %78, align 8
  store i32* %21, i32** %80, align 16
  store i32* %22, i32** %82, align 8
  %142 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %23, %struct.dim3* nonnull %24, i64* nonnull %25, i8** nonnull %26)
  %143 = load i64, i64* %25, align 8
  %144 = load %struct.ihipStream_t*, %struct.ihipStream_t** %83, align 8
  %145 = load i64, i64* %84, align 8
  %146 = load i32, i32* %85, align 8
  %147 = load i64, i64* %86, align 8
  %148 = load i32, i32* %87, align 8
  %149 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z15group_prefixSumPfS_jj to i8*), i64 %145, i32 %146, i64 %147, i32 %148, i8** nonnull %75, i64 %143, %struct.ihipStream_t* %144)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %68)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %69)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %70)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %71)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %74)
  br label %150

150:                                              ; preds = %137, %126, %121
  %151 = icmp ugt i32 %123, 1
  br i1 %151, label %154, label %152

152:                                              ; preds = %150
  %153 = shl nuw nsw i32 %123, 8
  br label %178

154:                                              ; preds = %150
  %155 = load i32, i32* %44, align 8, !tbaa !9
  %156 = sub i32 %155, %123
  %157 = shl i32 %123, 8
  %158 = udiv i32 %156, %157
  %159 = mul i32 %158, %123
  %160 = add i32 %156, 127
  %161 = sub i32 %160, %159
  %162 = lshr i32 %161, 7
  %163 = zext i32 %162 to i64
  %164 = or i64 %163, 4294967296
  %165 = call i32 @__hipPushCallConfiguration(i64 %164, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %154
  %168 = load float*, float** %49, align 8, !tbaa !42
  %169 = load i32, i32* %44, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %90)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %91)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %92)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %93)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %95)
  store float* %168, float** %28, align 8, !tbaa !3
  store i32 %123, i32* %29, align 4, !tbaa !7
  store i32 %169, i32* %30, align 4, !tbaa !7
  store float** %28, float*** %97, align 16
  store i32* %29, i32** %99, align 8
  store i32* %30, i32** %101, align 16
  %170 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %31, %struct.dim3* nonnull %32, i64* nonnull %33, i8** nonnull %34)
  %171 = load i64, i64* %33, align 8
  %172 = load %struct.ihipStream_t*, %struct.ihipStream_t** %102, align 8
  %173 = load i64, i64* %103, align 8
  %174 = load i32, i32* %104, align 8
  %175 = load i64, i64* %105, align 8
  %176 = load i32, i32* %106, align 8
  %177 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32, i32)** @_Z16global_prefixSumPfjj to i8*), i64 %173, i32 %174, i64 %175, i32 %176, i8** nonnull %96, i64 %171, %struct.ihipStream_t* %172)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %90)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %91)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %92)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %93)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %95)
  br label %178

178:                                              ; preds = %152, %167, %154
  %179 = phi i32 [ %153, %152 ], [ %157, %167 ], [ %157, %154 ]
  %180 = load i32, i32* %44, align 8, !tbaa !9
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %121, label %182, !llvm.loop !44

182:                                              ; preds = %178, %111
  %183 = phi i32 [ %119, %111 ], [ %180, %178 ]
  %184 = load i32, i32* %63, align 8
  %185 = icmp eq i32 %184, 1
  %186 = select i1 %113, i1 true, i1 %185
  br i1 %186, label %187, label %111, !llvm.loop !73

187:                                              ; preds = %182, %1
  %188 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i64 21)
  %189 = load i32, i32* %63, align 8, !tbaa !74
  %190 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %189)
  %191 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %190, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i64 11)
  %192 = bitcast %"class.std::basic_ostream"* %190 to i8**
  %193 = load i8*, i8** %192, align 8, !tbaa !17
  %194 = getelementptr i8, i8* %193, i64 -24
  %195 = bitcast i8* %194 to i64*
  %196 = load i64, i64* %195, align 8
  %197 = bitcast %"class.std::basic_ostream"* %190 to i8*
  %198 = getelementptr inbounds i8, i8* %197, i64 %196
  %199 = getelementptr inbounds i8, i8* %198, i64 240
  %200 = bitcast i8* %199 to %"class.std::ctype"**
  %201 = load %"class.std::ctype"*, %"class.std::ctype"** %200, align 8, !tbaa !19
  %202 = icmp eq %"class.std::ctype"* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %187
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

204:                                              ; preds = %187
  %205 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %201, i64 0, i32 8
  %206 = load i8, i8* %205, align 8, !tbaa !22
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %201, i64 0, i32 9, i64 10
  %210 = load i8, i8* %209, align 1, !tbaa !24
  br label %217

211:                                              ; preds = %204
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %201)
  %212 = bitcast %"class.std::ctype"* %201 to i8 (%"class.std::ctype"*, i8)***
  %213 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %212, align 8, !tbaa !17
  %214 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %213, i64 6
  %215 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %214, align 8
  %216 = call signext i8 %215(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %201, i8 signext 10)
  br label %217

217:                                              ; preds = %208, %211
  %218 = phi i8 [ %210, %208 ], [ %216, %211 ]
  %219 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %190, i8 signext %218)
  %220 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %219)
  %221 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i64 43)
  %222 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %223 = getelementptr i8, i8* %222, i64 -24
  %224 = bitcast i8* %223 to i64*
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %225
  %227 = getelementptr inbounds i8, i8* %226, i64 240
  %228 = bitcast i8* %227 to %"class.std::ctype"**
  %229 = load %"class.std::ctype"*, %"class.std::ctype"** %228, align 8, !tbaa !19
  %230 = icmp eq %"class.std::ctype"* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %217
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

232:                                              ; preds = %217
  %233 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %229, i64 0, i32 8
  %234 = load i8, i8* %233, align 8, !tbaa !22
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %229, i64 0, i32 9, i64 10
  %238 = load i8, i8* %237, align 1, !tbaa !24
  br label %245

239:                                              ; preds = %232
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %229)
  %240 = bitcast %"class.std::ctype"* %229 to i8 (%"class.std::ctype"*, i8)***
  %241 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %240, align 8, !tbaa !17
  %242 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %241, i64 6
  %243 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %242, align 8
  %244 = call signext i8 %243(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %229, i8 signext 10)
  br label %245

245:                                              ; preds = %236, %239
  %246 = phi i8 [ %238, %236 ], [ %244, %239 ]
  %247 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %246)
  %248 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %247)
  %249 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 10
  %250 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %249, align 8, !tbaa !57
  %251 = call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %250)
  %252 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %249, align 8, !tbaa !57
  %253 = bitcast %"class.std::basic_string"* %38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %253)
  %254 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %252, i64 0, i32 0, i32 0, i32 0, i32 1
  %255 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %254, align 8, !tbaa !58
  %256 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %252, i64 0, i32 0, i32 0, i32 0, i32 0
  %257 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %256, align 8, !tbaa !61
  %258 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %255 to i64
  %259 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %257 to i64
  %260 = sub i64 %258, %259
  %261 = lshr exact i64 %260, 3
  %262 = trunc i64 %261 to i32
  %263 = icmp slt i32 %251, %262
  br i1 %263, label %290, label %264

264:                                              ; preds = %245
  %265 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %39, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %265) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %39)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %38)
          to label %266 unwind label %288

266:                                              ; preds = %264
  %267 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %38, i64 0, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8, !tbaa !13
  %269 = getelementptr inbounds i8, i8* %268, i64 -24
  %270 = bitcast i8* %269 to %"struct.std::basic_string<char>::_Rep"*
  %271 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %37, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %271) #27
  %272 = icmp eq i8* %269, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %272, label %285, label %273, !prof !16

273:                                              ; preds = %266
  %274 = getelementptr inbounds i8, i8* %268, i64 -8
  %275 = bitcast i8* %274 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %276, label %278

276:                                              ; preds = %273
  %277 = atomicrmw volatile add i32* %275, i32 -1 acq_rel, align 4
  br label %281

278:                                              ; preds = %273
  %279 = load i32, i32* %275, align 8, !tbaa !7
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %275, align 8, !tbaa !7
  br label %281

281:                                              ; preds = %278, %276
  %282 = phi i32 [ %277, %276 ], [ %279, %278 ]
  %283 = icmp slt i32 %282, 1
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %270, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %37) #27
  br label %285

285:                                              ; preds = %284, %281, %266
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %271) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %265) #27
  br label %296

286:                                              ; preds = %461, %288
  %287 = phi { i8*, i32 } [ %289, %288 ], [ %462, %461 ]
  resume { i8*, i32 } %287

288:                                              ; preds = %264
  %289 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %38) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %265) #27
  br label %286

290:                                              ; preds = %245
  %291 = sext i32 %251 to i64
  %292 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %257, i64 %291
  %293 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %292, align 8, !tbaa !3
  %294 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %293, i64 0, i32 2
  %295 = bitcast i64* %294 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %295, i8 0, i64 16, i1 false)
  br label %296

296:                                              ; preds = %285, %290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %253)
  %297 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %249, align 8, !tbaa !57
  %298 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %297, i32 %251)
  %299 = bitcast float** %2 to i8*
  %300 = bitcast float** %3 to i8*
  %301 = bitcast i32* %4 to i8*
  %302 = bitcast i32* %5 to i8*
  %303 = bitcast %struct.dim3* %6 to i8*
  %304 = bitcast %struct.dim3* %7 to i8*
  %305 = bitcast i64* %8 to i8*
  %306 = bitcast i8** %9 to i8*
  %307 = bitcast [4 x i8*]* %10 to i8*
  %308 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %309 = bitcast [4 x i8*]* %10 to float***
  %310 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  %311 = bitcast i8** %310 to float***
  %312 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  %313 = bitcast i8** %312 to i32**
  %314 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  %315 = bitcast i8** %314 to i32**
  %316 = bitcast i8** %9 to %struct.ihipStream_t**
  %317 = bitcast %struct.dim3* %6 to i64*
  %318 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %319 = bitcast %struct.dim3* %7 to i64*
  %320 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %321 = bitcast float** %11 to i8*
  %322 = bitcast i32* %12 to i8*
  %323 = bitcast i32* %13 to i8*
  %324 = bitcast %struct.dim3* %14 to i8*
  %325 = bitcast %struct.dim3* %15 to i8*
  %326 = bitcast i64* %16 to i8*
  %327 = bitcast i8** %17 to i8*
  %328 = bitcast [3 x i8*]* %18 to i8*
  %329 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %330 = bitcast [3 x i8*]* %18 to float***
  %331 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  %332 = bitcast i8** %331 to i32**
  %333 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 2
  %334 = bitcast i8** %333 to i32**
  %335 = bitcast i8** %17 to %struct.ihipStream_t**
  %336 = bitcast %struct.dim3* %14 to i64*
  %337 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %338 = bitcast %struct.dim3* %15 to i64*
  %339 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %340 = load i32, i32* %63, align 8, !tbaa !74
  %341 = icmp sgt i32 %340, 0
  %342 = load i32, i32* %44, align 8, !tbaa !9
  br i1 %341, label %343, label %419

343:                                              ; preds = %296, %414
  %344 = phi i32 [ %415, %414 ], [ %342, %296 ]
  %345 = phi i32 [ %416, %414 ], [ 0, %296 ]
  %346 = load i8*, i8** %56, align 8, !tbaa !43
  %347 = load i8*, i8** %65, align 8, !tbaa !12
  %348 = zext i32 %344 to i64
  %349 = shl nuw nsw i64 %348, 2
  %350 = call i32 @hipMemcpy(i8* %346, i8* %347, i64 %349, i32 1)
  %351 = load i32, i32* %44, align 8, !tbaa !9
  %352 = icmp ugt i32 %351, 1
  br i1 %352, label %353, label %414

353:                                              ; preds = %343, %410
  %354 = phi i32 [ %412, %410 ], [ %351, %343 ]
  %355 = phi i32 [ %411, %410 ], [ 1, %343 ]
  %356 = udiv i32 %354, %355
  %357 = icmp ugt i32 %356, 1
  br i1 %357, label %358, label %382

358:                                              ; preds = %353
  %359 = add i32 %356, 1
  %360 = lshr i32 %359, 1
  %361 = add nuw i32 %360, 127
  %362 = lshr i32 %361, 7
  %363 = load float*, float** %49, align 8
  %364 = load float*, float** %42, align 8
  %365 = zext i32 %362 to i64
  %366 = or i64 %365, 4294967296
  %367 = call i32 @__hipPushCallConfiguration(i64 %366, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %358
  %370 = icmp ugt i32 %355, 1
  %371 = select i1 %370, float* %363, float* %364
  %372 = load float*, float** %49, align 8, !tbaa !42
  %373 = load i32, i32* %44, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %299)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %300)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %301)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %302)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %303)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %304)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %305)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %306)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %307)
  store float* %372, float** %2, align 8, !tbaa !3
  store float* %371, float** %3, align 8, !tbaa !3
  store i32 %373, i32* %4, align 4, !tbaa !7
  store i32 %355, i32* %5, align 4, !tbaa !7
  store float** %2, float*** %309, align 16
  store float** %3, float*** %311, align 8
  store i32* %4, i32** %313, align 16
  store i32* %5, i32** %315, align 8
  %374 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %6, %struct.dim3* nonnull %7, i64* nonnull %8, i8** nonnull %9)
  %375 = load i64, i64* %8, align 8
  %376 = load %struct.ihipStream_t*, %struct.ihipStream_t** %316, align 8
  %377 = load i64, i64* %317, align 8
  %378 = load i32, i32* %318, align 8
  %379 = load i64, i64* %319, align 8
  %380 = load i32, i32* %320, align 8
  %381 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z15group_prefixSumPfS_jj to i8*), i64 %377, i32 %378, i64 %379, i32 %380, i8** nonnull %308, i64 %375, %struct.ihipStream_t* %376)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %299)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %300)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %301)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %302)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %303)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %304)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %305)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %306)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %307)
  br label %382

382:                                              ; preds = %369, %358, %353
  %383 = icmp ugt i32 %355, 1
  br i1 %383, label %386, label %384

384:                                              ; preds = %382
  %385 = shl nuw nsw i32 %355, 8
  br label %410

386:                                              ; preds = %382
  %387 = load i32, i32* %44, align 8, !tbaa !9
  %388 = sub i32 %387, %355
  %389 = shl i32 %355, 8
  %390 = udiv i32 %388, %389
  %391 = mul i32 %390, %355
  %392 = add i32 %388, 127
  %393 = sub i32 %392, %391
  %394 = lshr i32 %393, 7
  %395 = zext i32 %394 to i64
  %396 = or i64 %395, 4294967296
  %397 = call i32 @__hipPushCallConfiguration(i64 %396, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %410

399:                                              ; preds = %386
  %400 = load float*, float** %49, align 8, !tbaa !42
  %401 = load i32, i32* %44, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %321)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %322)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %323)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %324)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %325)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %326)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %327)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %328)
  store float* %400, float** %11, align 8, !tbaa !3
  store i32 %355, i32* %12, align 4, !tbaa !7
  store i32 %401, i32* %13, align 4, !tbaa !7
  store float** %11, float*** %330, align 16
  store i32* %12, i32** %332, align 8
  store i32* %13, i32** %334, align 16
  %402 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %14, %struct.dim3* nonnull %15, i64* nonnull %16, i8** nonnull %17)
  %403 = load i64, i64* %16, align 8
  %404 = load %struct.ihipStream_t*, %struct.ihipStream_t** %335, align 8
  %405 = load i64, i64* %336, align 8
  %406 = load i32, i32* %337, align 8
  %407 = load i64, i64* %338, align 8
  %408 = load i32, i32* %339, align 8
  %409 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32, i32)** @_Z16global_prefixSumPfjj to i8*), i64 %405, i32 %406, i64 %407, i32 %408, i8** nonnull %329, i64 %403, %struct.ihipStream_t* %404)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %321)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %322)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %323)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %324)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %325)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %326)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %327)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %328)
  br label %410

410:                                              ; preds = %384, %399, %386
  %411 = phi i32 [ %385, %384 ], [ %389, %399 ], [ %389, %386 ]
  %412 = load i32, i32* %44, align 8, !tbaa !9
  %413 = icmp ult i32 %411, %412
  br i1 %413, label %353, label %414, !llvm.loop !44

414:                                              ; preds = %410, %343
  %415 = phi i32 [ %351, %343 ], [ %412, %410 ]
  %416 = add nuw nsw i32 %345, 1
  %417 = load i32, i32* %63, align 8, !tbaa !74
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %343, label %419, !llvm.loop !75

419:                                              ; preds = %414, %296
  %420 = phi i32 [ %342, %296 ], [ %415, %414 ]
  %421 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 8
  %422 = bitcast float** %421 to i8**
  %423 = load i8*, i8** %422, align 8, !tbaa !29
  %424 = load i8*, i8** %60, align 8, !tbaa !76
  %425 = zext i32 %420 to i64
  %426 = shl nuw nsw i64 %425, 2
  %427 = call i32 @hipMemcpy(i8* %423, i8* %424, i64 %426, i32 2)
  %428 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %41, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %428) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %41)
          to label %429 unwind label %457

429:                                              ; preds = %419
  %430 = load float*, float** %421, align 8, !tbaa !29
  %431 = load i32, i32* %44, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %40, float* %430, i32 %431, i32 1)
          to label %432 unwind label %459

432:                                              ; preds = %429
  %433 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %40, i64 0, i32 0, i32 0
  %434 = load i8*, i8** %433, align 8, !tbaa !13
  %435 = getelementptr inbounds i8, i8* %434, i64 -24
  %436 = bitcast i8* %435 to %"struct.std::basic_string<char>::_Rep"*
  %437 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %36, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %437) #27
  %438 = icmp eq i8* %435, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %438, label %451, label %439, !prof !16

439:                                              ; preds = %432
  %440 = getelementptr inbounds i8, i8* %434, i64 -8
  %441 = bitcast i8* %440 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %442, label %444

442:                                              ; preds = %439
  %443 = atomicrmw volatile add i32* %441, i32 -1 acq_rel, align 4
  br label %447

444:                                              ; preds = %439
  %445 = load i32, i32* %441, align 8, !tbaa !7
  %446 = add nsw i32 %445, -1
  store i32 %446, i32* %441, align 8, !tbaa !7
  br label %447

447:                                              ; preds = %444, %442
  %448 = phi i32 [ %443, %442 ], [ %445, %444 ]
  %449 = icmp slt i32 %448, 1
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %436, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %36) #27
  br label %451

451:                                              ; preds = %432, %447, %450
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %437) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %428) #27
  %452 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %249, align 8, !tbaa !57
  %453 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %452, i32 %251)
  %454 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %249, align 8, !tbaa !57
  %455 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %454, i32 %251)
  %456 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 2
  store double %455, double* %456, align 8, !tbaa !77
  ret i32 0

457:                                              ; preds = %419
  %458 = landingpad { i8*, i32 }
          cleanup
  br label %461

459:                                              ; preds = %429
  %460 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %40) #27
  br label %461

461:                                              ; preds = %459, %457
  %462 = phi { i8*, i32 } [ %460, %459 ], [ %458, %457 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %428) #27
  br label %286
}

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN9PrefixSum13verifyResultsEv(%class.PrefixSum* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 13
  %6 = bitcast %"class.appsdk::HIPCommandArgs"** %5 to %"class.appsdk::SDKCmdArgsParser"**
  %7 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %7, i64 0, i32 10
  %9 = load i8, i8* %8, align 1, !tbaa !31, !range !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %220, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 5
  %13 = load float*, float** %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 4
  %15 = load float*, float** %14, align 8, !tbaa !12
  %16 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %17 = load i32, i32* %16, align 8, !tbaa !9
  %18 = load float, float* %15, align 4, !tbaa !25
  store float %18, float* %13, align 4, !tbaa !25
  %19 = icmp ugt i32 %17, 1
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 8
  br label %95

22:                                               ; preds = %11
  %23 = zext i32 %17 to i64
  %24 = add nsw i64 %23, -1
  %25 = add nsw i64 %23, -2
  %26 = and i64 %24, 3
  %27 = icmp ult i64 %25, 3
  br i1 %27, label %56, label %28

28:                                               ; preds = %22
  %29 = and i64 %24, -4
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi float [ %18, %28 ], [ %51, %30 ]
  %32 = phi i64 [ 1, %28 ], [ %53, %30 ]
  %33 = phi i64 [ 0, %28 ], [ %54, %30 ]
  %34 = getelementptr inbounds float, float* %15, i64 %32
  %35 = load float, float* %34, align 4, !tbaa !25
  %36 = fadd contract float %31, %35
  %37 = getelementptr inbounds float, float* %13, i64 %32
  store float %36, float* %37, align 4, !tbaa !25
  %38 = add nuw nsw i64 %32, 1
  %39 = getelementptr inbounds float, float* %15, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !25
  %41 = fadd contract float %36, %40
  %42 = getelementptr inbounds float, float* %13, i64 %38
  store float %41, float* %42, align 4, !tbaa !25
  %43 = add nuw nsw i64 %32, 2
  %44 = getelementptr inbounds float, float* %15, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !25
  %46 = fadd contract float %41, %45
  %47 = getelementptr inbounds float, float* %13, i64 %43
  store float %46, float* %47, align 4, !tbaa !25
  %48 = add nuw nsw i64 %32, 3
  %49 = getelementptr inbounds float, float* %15, i64 %48
  %50 = load float, float* %49, align 4, !tbaa !25
  %51 = fadd contract float %46, %50
  %52 = getelementptr inbounds float, float* %13, i64 %48
  store float %51, float* %52, align 4, !tbaa !25
  %53 = add nuw nsw i64 %32, 4
  %54 = add i64 %33, 4
  %55 = icmp eq i64 %54, %29
  br i1 %55, label %56, label %30, !llvm.loop !47

56:                                               ; preds = %30, %22
  %57 = phi float [ %18, %22 ], [ %51, %30 ]
  %58 = phi i64 [ 1, %22 ], [ %53, %30 ]
  %59 = icmp eq i64 %26, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56, %60
  %61 = phi float [ %66, %60 ], [ %57, %56 ]
  %62 = phi i64 [ %68, %60 ], [ %58, %56 ]
  %63 = phi i64 [ %69, %60 ], [ 0, %56 ]
  %64 = getelementptr inbounds float, float* %15, i64 %62
  %65 = load float, float* %64, align 4, !tbaa !25
  %66 = fadd contract float %61, %65
  %67 = getelementptr inbounds float, float* %13, i64 %62
  store float %66, float* %67, align 4, !tbaa !25
  %68 = add nuw nsw i64 %62, 1
  %69 = add i64 %63, 1
  %70 = icmp eq i64 %69, %26
  br i1 %70, label %71, label %60, !llvm.loop !78

71:                                               ; preds = %60, %56
  %72 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 8
  %73 = load float*, float** %72, align 8, !tbaa !29
  %74 = icmp sgt i32 %17, 1
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = and i64 %24, 1
  %77 = icmp eq i64 %25, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = and i64 %24, -2
  br label %102

80:                                               ; preds = %102, %75
  %81 = phi <2 x float> [ undef, %75 ], [ %124, %102 ]
  %82 = phi i64 [ 1, %75 ], [ %125, %102 ]
  %83 = phi <2 x float> [ zeroinitializer, %75 ], [ %124, %102 ]
  %84 = icmp eq i64 %76, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds float, float* %73, i64 %82
  %87 = load float, float* %86, align 4, !tbaa !25
  %88 = getelementptr inbounds float, float* %13, i64 %82
  %89 = load float, float* %88, align 4, !tbaa !25
  %90 = fsub contract float %87, %89
  %91 = insertelement <2 x float> poison, float %87, i64 0
  %92 = insertelement <2 x float> %91, float %90, i64 1
  %93 = fmul contract <2 x float> %92, %92
  %94 = fadd contract <2 x float> %83, %93
  br label %95

95:                                               ; preds = %85, %80, %20, %71
  %96 = phi float** [ %72, %71 ], [ %21, %20 ], [ %72, %80 ], [ %72, %85 ]
  %97 = phi <2 x float> [ zeroinitializer, %71 ], [ zeroinitializer, %20 ], [ %81, %80 ], [ %94, %85 ]
  %98 = extractelement <2 x float> %97, i64 0
  %99 = tail call contract float @sqrtf(float %98) #27
  %100 = tail call contract float @llvm.fabs.f32(float %98) #27
  %101 = fcmp contract olt float %100, 0x3E7AD7F2A0000000
  br i1 %101, label %160, label %128

102:                                              ; preds = %102, %78
  %103 = phi i64 [ 1, %78 ], [ %125, %102 ]
  %104 = phi <2 x float> [ zeroinitializer, %78 ], [ %124, %102 ]
  %105 = phi i64 [ 0, %78 ], [ %126, %102 ]
  %106 = getelementptr inbounds float, float* %73, i64 %103
  %107 = load float, float* %106, align 4, !tbaa !25
  %108 = getelementptr inbounds float, float* %13, i64 %103
  %109 = load float, float* %108, align 4, !tbaa !25
  %110 = fsub contract float %107, %109
  %111 = insertelement <2 x float> poison, float %107, i64 0
  %112 = insertelement <2 x float> %111, float %110, i64 1
  %113 = fmul contract <2 x float> %112, %112
  %114 = fadd contract <2 x float> %104, %113
  %115 = add nuw nsw i64 %103, 1
  %116 = getelementptr inbounds float, float* %73, i64 %115
  %117 = load float, float* %116, align 4, !tbaa !25
  %118 = getelementptr inbounds float, float* %13, i64 %115
  %119 = load float, float* %118, align 4, !tbaa !25
  %120 = fsub contract float %117, %119
  %121 = insertelement <2 x float> poison, float %117, i64 0
  %122 = insertelement <2 x float> %121, float %120, i64 1
  %123 = fmul contract <2 x float> %122, %122
  %124 = fadd contract <2 x float> %114, %123
  %125 = add nuw nsw i64 %103, 2
  %126 = add i64 %105, 2
  %127 = icmp eq i64 %126, %79
  br i1 %127, label %80, label %102, !llvm.loop !79

128:                                              ; preds = %95
  %129 = uitofp i32 %17 to float
  %130 = fmul contract float %129, 0x3E7AD7F2A0000000
  %131 = extractelement <2 x float> %97, i64 1
  %132 = tail call contract float @sqrtf(float %131) #27
  %133 = fdiv contract float %132, %99
  %134 = fcmp contract olt float %133, %130
  br i1 %134, label %135, label %160

135:                                              ; preds = %128
  %136 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i64 8)
  %137 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %138 = getelementptr i8, i8* %137, i64 -24
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %140
  %142 = getelementptr inbounds i8, i8* %141, i64 240
  %143 = bitcast i8* %142 to %"class.std::ctype"**
  %144 = load %"class.std::ctype"*, %"class.std::ctype"** %143, align 8, !tbaa !19
  %145 = icmp eq %"class.std::ctype"* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

147:                                              ; preds = %135
  %148 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %144, i64 0, i32 8
  %149 = load i8, i8* %148, align 8, !tbaa !22
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %144, i64 0, i32 9, i64 10
  %153 = load i8, i8* %152, align 1, !tbaa !24
  br label %185

154:                                              ; preds = %147
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %144)
  %155 = bitcast %"class.std::ctype"* %144 to i8 (%"class.std::ctype"*, i8)***
  %156 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %155, align 8, !tbaa !17
  %157 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %156, i64 6
  %158 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %157, align 8
  %159 = tail call signext i8 %158(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %144, i8 signext 10)
  br label %185

160:                                              ; preds = %95, %128
  %161 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i64 7)
  %162 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %163 = getelementptr i8, i8* %162, i64 -24
  %164 = bitcast i8* %163 to i64*
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %165
  %167 = getelementptr inbounds i8, i8* %166, i64 240
  %168 = bitcast i8* %167 to %"class.std::ctype"**
  %169 = load %"class.std::ctype"*, %"class.std::ctype"** %168, align 8, !tbaa !19
  %170 = icmp eq %"class.std::ctype"* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

172:                                              ; preds = %160
  %173 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %169, i64 0, i32 8
  %174 = load i8, i8* %173, align 8, !tbaa !22
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %169, i64 0, i32 9, i64 10
  %178 = load i8, i8* %177, align 1, !tbaa !24
  br label %185

179:                                              ; preds = %172
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %169)
  %180 = bitcast %"class.std::ctype"* %169 to i8 (%"class.std::ctype"*, i8)***
  %181 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %180, align 8, !tbaa !17
  %182 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %181, i64 6
  %183 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %182, align 8
  %184 = tail call signext i8 %183(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %169, i8 signext 10)
  br label %185

185:                                              ; preds = %179, %176, %154, %151
  %186 = phi i8 [ %153, %151 ], [ %159, %154 ], [ %178, %176 ], [ %184, %179 ]
  %187 = phi i32 [ 0, %151 ], [ 0, %154 ], [ 1, %176 ], [ 1, %179 ]
  %188 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %186)
  %189 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %188)
  %190 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %6, align 8, !tbaa !30
  %191 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %190, i64 0, i32 9
  %192 = load i8, i8* %191, align 4, !tbaa !36, !range !34
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %185
  %195 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %195) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  %196 = load float*, float** %96, align 8, !tbaa !29
  %197 = load i32, i32* %16, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %3, float* %196, i32 %197, i32 1)
          to label %198 unwind label %218

198:                                              ; preds = %194
  %199 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8, !tbaa !13
  %201 = getelementptr inbounds i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to %"struct.std::basic_string<char>::_Rep"*
  %203 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %203) #27
  %204 = icmp eq i8* %201, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %204, label %217, label %205, !prof !16

205:                                              ; preds = %198
  %206 = getelementptr inbounds i8, i8* %200, i64 -8
  %207 = bitcast i8* %206 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %208, label %210

208:                                              ; preds = %205
  %209 = atomicrmw volatile add i32* %207, i32 -1 acq_rel, align 4
  br label %213

210:                                              ; preds = %205
  %211 = load i32, i32* %207, align 8, !tbaa !7
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %207, align 8, !tbaa !7
  br label %213

213:                                              ; preds = %210, %208
  %214 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %215 = icmp slt i32 %214, 1
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %202, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %217

217:                                              ; preds = %198, %213, %216
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %203) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %195) #27
  br label %220

218:                                              ; preds = %194
  %219 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %195) #27
  resume { i8*, i32 } %219

220:                                              ; preds = %185, %217, %1
  %221 = phi i32 [ 0, %1 ], [ %187, %217 ], [ %187, %185 ]
  ret i32 %221
}

; Function Attrs: uwtable
define dso_local void @_ZN9PrefixSum10printStatsEv(%class.PrefixSum* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %26 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 13
  %27 = bitcast %"class.appsdk::HIPCommandArgs"** %26 to %"class.appsdk::SDKCmdArgsParser"**
  %28 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %27, align 8, !tbaa !30
  %29 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %28, i64 0, i32 11
  %30 = load i8, i8* %29, align 2, !tbaa !80, !range !34
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %994, label %32

32:                                               ; preds = %1
  %33 = bitcast [4 x %"class.std::basic_string"]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #27
  %34 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
  %36 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  %37 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %37) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %18)
          to label %38 unwind label %932

38:                                               ; preds = %32
  %39 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  %40 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %40) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %41 unwind label %934

41:                                               ; preds = %38
  %42 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  %43 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %43) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20)
          to label %44 unwind label %936

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #27
  %45 = bitcast [4 x %"class.std::basic_string"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %45) #27
  %46 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  %47 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 16, !tbaa !48
  %48 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !48
  %49 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 16, !tbaa !48
  %50 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %50, align 8, !tbaa !48
  %51 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 2
  %52 = load double, double* %51, align 8, !tbaa !77
  %53 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 9
  %54 = load i32, i32* %53, align 8, !tbaa !74
  %55 = sitofp i32 %54 to double
  %56 = fdiv contract double %52, %55
  %57 = bitcast %"class.std::basic_string"* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #27
  %58 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 3
  %59 = load i32, i32* %58, align 8, !tbaa !9
  %60 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %60) #27, !noalias !81
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %61 unwind label %948

61:                                               ; preds = %44
  %62 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %63 = load i8*, i8** %62, align 8, !tbaa !17, !noalias !81
  %64 = getelementptr i8, i8* %63, i64 -24
  %65 = bitcast i8* %64 to i64*
  %66 = load i64, i64* %65, align 8, !noalias !81
  %67 = getelementptr inbounds i8, i8* %60, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 24
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %69, align 8, !tbaa !84, !noalias !81
  %71 = and i32 %70, -75
  %72 = or i32 %71, 2
  store i32 %72, i32* %69, align 8, !tbaa !90, !noalias !81
  %73 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %74 = zext i32 %59 to i64
  %75 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %73, i64 %74)
          to label %76 unwind label %106, !noalias !81

76:                                               ; preds = %61
  %77 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %22, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %77)
          to label %78 unwind label %106

78:                                               ; preds = %76
  %79 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %80 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %79, i32 (...)*** %80, align 8, !tbaa !17, !noalias !81
  %81 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %82 = getelementptr i32 (...)*, i32 (...)** %79, i64 -3
  %83 = bitcast i32 (...)** %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i8, i8* %60, i64 %84
  %86 = bitcast i8* %85 to i32 (...)***
  store i32 (...)** %81, i32 (...)*** %86, align 8, !tbaa !17, !noalias !81
  %87 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %87, align 8, !tbaa !17, !noalias !81
  %88 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8, !tbaa !13, !noalias !81
  %90 = getelementptr inbounds i8, i8* %89, i64 -24
  %91 = bitcast i8* %90 to %"struct.std::basic_string<char>::_Rep"*
  %92 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %92) #27, !noalias !81
  %93 = icmp eq i8* %90, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %93, label %108, label %94, !prof !16

94:                                               ; preds = %78
  %95 = getelementptr inbounds i8, i8* %89, i64 -8
  %96 = bitcast i8* %95 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %97, label %99

97:                                               ; preds = %94
  %98 = atomicrmw volatile add i32* %96, i32 -1 acq_rel, align 4
  br label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %96, align 8, !tbaa !7
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %96, align 8, !tbaa !7
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %91, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14) #27
  br label %108

106:                                              ; preds = %76, %61
  %107 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %60) #27, !noalias !81
  br label %952

108:                                              ; preds = %105, %102, %78
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %92) #27, !noalias !81
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %87, align 8, !tbaa !17, !noalias !81
  %109 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %109) #27
  %110 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %110) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %60) #27, !noalias !81
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %46, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22)
          to label %111 unwind label %950

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %22, i64 0, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8, !tbaa !13
  %114 = getelementptr inbounds i8, i8* %113, i64 -24
  %115 = bitcast i8* %114 to %"struct.std::basic_string<char>::_Rep"*
  %116 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %116) #27
  %117 = icmp eq i8* %114, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %117, label %130, label %118, !prof !16

118:                                              ; preds = %111
  %119 = getelementptr inbounds i8, i8* %113, i64 -8
  %120 = bitcast i8* %119 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %121, label %123

121:                                              ; preds = %118
  %122 = atomicrmw volatile add i32* %120, i32 -1 acq_rel, align 4
  br label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %120, align 8, !tbaa !7
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %120, align 8, !tbaa !7
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %115, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #27
  br label %130

130:                                              ; preds = %111, %126, %129
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %116) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #27
  %131 = bitcast %"class.std::basic_string"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %131) #27
  %132 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 1
  %133 = load double, double* %132, align 8, !tbaa !62
  %134 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %134) #27, !noalias !91
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %135 unwind label %954

135:                                              ; preds = %130
  %136 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %137 = load i8*, i8** %136, align 8, !tbaa !17, !noalias !91
  %138 = getelementptr i8, i8* %137, i64 -24
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %139, align 8, !noalias !91
  %141 = getelementptr inbounds i8, i8* %134, i64 %140
  %142 = getelementptr inbounds i8, i8* %141, i64 24
  %143 = bitcast i8* %142 to i32*
  %144 = load i32, i32* %143, align 8, !tbaa !84, !noalias !91
  %145 = and i32 %144, -75
  %146 = or i32 %145, 2
  store i32 %146, i32* %143, align 8, !tbaa !90, !noalias !91
  %147 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %148 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %147, double %133)
          to label %149 unwind label %175, !noalias !91

149:                                              ; preds = %135
  %150 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %23, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %150)
          to label %151 unwind label %175

151:                                              ; preds = %149
  %152 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %79, i32 (...)*** %152, align 8, !tbaa !17, !noalias !91
  %153 = load i64, i64* %83, align 8
  %154 = getelementptr inbounds i8, i8* %134, i64 %153
  %155 = bitcast i8* %154 to i32 (...)***
  store i32 (...)** %81, i32 (...)*** %155, align 8, !tbaa !17, !noalias !91
  %156 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %156, align 8, !tbaa !17, !noalias !91
  %157 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !13, !noalias !91
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to %"struct.std::basic_string<char>::_Rep"*
  %161 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %161) #27, !noalias !91
  %162 = icmp eq i8* %159, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %162, label %177, label %163, !prof !16

163:                                              ; preds = %151
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
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %160, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #27
  br label %177

175:                                              ; preds = %149, %135
  %176 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %134) #27, !noalias !91
  br label %958

177:                                              ; preds = %174, %171, %151
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %161) #27, !noalias !91
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %156, align 8, !tbaa !17, !noalias !91
  %178 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %178) #27
  %179 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %179) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %134) #27, !noalias !91
  %180 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %180, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23)
          to label %181 unwind label %956

181:                                              ; preds = %177
  %182 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %23, i64 0, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8, !tbaa !13
  %184 = getelementptr inbounds i8, i8* %183, i64 -24
  %185 = bitcast i8* %184 to %"struct.std::basic_string<char>::_Rep"*
  %186 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %186) #27
  %187 = icmp eq i8* %184, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %187, label %200, label %188, !prof !16

188:                                              ; preds = %181
  %189 = getelementptr inbounds i8, i8* %183, i64 -8
  %190 = bitcast i8* %189 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %191, label %193

191:                                              ; preds = %188
  %192 = atomicrmw volatile add i32* %190, i32 -1 acq_rel, align 4
  br label %196

193:                                              ; preds = %188
  %194 = load i32, i32* %190, align 8, !tbaa !7
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %190, align 8, !tbaa !7
  br label %196

196:                                              ; preds = %193, %191
  %197 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %185, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #27
  br label %200

200:                                              ; preds = %181, %196, %199
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %186) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %131) #27
  %201 = bitcast %"class.std::basic_string"* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %201) #27
  %202 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %202) #27, !noalias !94
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %203 unwind label %960

203:                                              ; preds = %200
  %204 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %205 = load i8*, i8** %204, align 8, !tbaa !17, !noalias !94
  %206 = getelementptr i8, i8* %205, i64 -24
  %207 = bitcast i8* %206 to i64*
  %208 = load i64, i64* %207, align 8, !noalias !94
  %209 = getelementptr inbounds i8, i8* %202, i64 %208
  %210 = getelementptr inbounds i8, i8* %209, i64 24
  %211 = bitcast i8* %210 to i32*
  %212 = load i32, i32* %211, align 8, !tbaa !84, !noalias !94
  %213 = and i32 %212, -75
  %214 = or i32 %213, 2
  store i32 %214, i32* %211, align 8, !tbaa !90, !noalias !94
  %215 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %216 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %215, double %56)
          to label %217 unwind label %243, !noalias !94

217:                                              ; preds = %203
  %218 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %24, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %218)
          to label %219 unwind label %243

219:                                              ; preds = %217
  %220 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %79, i32 (...)*** %220, align 8, !tbaa !17, !noalias !94
  %221 = load i64, i64* %83, align 8
  %222 = getelementptr inbounds i8, i8* %202, i64 %221
  %223 = bitcast i8* %222 to i32 (...)***
  store i32 (...)** %81, i32 (...)*** %223, align 8, !tbaa !17, !noalias !94
  %224 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %224, align 8, !tbaa !17, !noalias !94
  %225 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8, !tbaa !13, !noalias !94
  %227 = getelementptr inbounds i8, i8* %226, i64 -24
  %228 = bitcast i8* %227 to %"struct.std::basic_string<char>::_Rep"*
  %229 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %229) #27, !noalias !94
  %230 = icmp eq i8* %227, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %230, label %245, label %231, !prof !16

231:                                              ; preds = %219
  %232 = getelementptr inbounds i8, i8* %226, i64 -8
  %233 = bitcast i8* %232 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %234, label %236

234:                                              ; preds = %231
  %235 = atomicrmw volatile add i32* %233, i32 -1 acq_rel, align 4
  br label %239

236:                                              ; preds = %231
  %237 = load i32, i32* %233, align 8, !tbaa !7
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %233, align 8, !tbaa !7
  br label %239

239:                                              ; preds = %236, %234
  %240 = phi i32 [ %235, %234 ], [ %237, %236 ]
  %241 = icmp slt i32 %240, 1
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %228, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #27
  br label %245

243:                                              ; preds = %217, %203
  %244 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %202) #27, !noalias !94
  br label %964

245:                                              ; preds = %242, %239, %219
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %229) #27, !noalias !94
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %224, align 8, !tbaa !17, !noalias !94
  %246 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %246) #27
  %247 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %247) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %202) #27, !noalias !94
  %248 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %248, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24)
          to label %249 unwind label %962

249:                                              ; preds = %245
  %250 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %24, i64 0, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8, !tbaa !13
  %252 = getelementptr inbounds i8, i8* %251, i64 -24
  %253 = bitcast i8* %252 to %"struct.std::basic_string<char>::_Rep"*
  %254 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %254) #27
  %255 = icmp eq i8* %252, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %255, label %268, label %256, !prof !16

256:                                              ; preds = %249
  %257 = getelementptr inbounds i8, i8* %251, i64 -8
  %258 = bitcast i8* %257 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %259, label %261

259:                                              ; preds = %256
  %260 = atomicrmw volatile add i32* %258, i32 -1 acq_rel, align 4
  br label %264

261:                                              ; preds = %256
  %262 = load i32, i32* %258, align 8, !tbaa !7
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %258, align 8, !tbaa !7
  br label %264

264:                                              ; preds = %261, %259
  %265 = phi i32 [ %260, %259 ], [ %262, %261 ]
  %266 = icmp slt i32 %265, 1
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %253, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #27
  br label %268

268:                                              ; preds = %249, %264, %267
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %254) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %201) #27
  %269 = bitcast %"class.std::basic_string"* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %269) #27
  %270 = load i32, i32* %58, align 8, !tbaa !9
  %271 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %271) #27, !noalias !97
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %272 unwind label %966

272:                                              ; preds = %268
  %273 = uitofp i32 %270 to double
  %274 = fdiv contract double %273, %56
  %275 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %276 = load i8*, i8** %275, align 8, !tbaa !17, !noalias !97
  %277 = getelementptr i8, i8* %276, i64 -24
  %278 = bitcast i8* %277 to i64*
  %279 = load i64, i64* %278, align 8, !noalias !97
  %280 = getelementptr inbounds i8, i8* %271, i64 %279
  %281 = getelementptr inbounds i8, i8* %280, i64 24
  %282 = bitcast i8* %281 to i32*
  %283 = load i32, i32* %282, align 8, !tbaa !84, !noalias !97
  %284 = and i32 %283, -75
  %285 = or i32 %284, 2
  store i32 %285, i32* %282, align 8, !tbaa !90, !noalias !97
  %286 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %287 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %286, double %274)
          to label %288 unwind label %314, !noalias !97

288:                                              ; preds = %272
  %289 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %25, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %289)
          to label %290 unwind label %314

290:                                              ; preds = %288
  %291 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %79, i32 (...)*** %291, align 8, !tbaa !17, !noalias !97
  %292 = load i64, i64* %83, align 8
  %293 = getelementptr inbounds i8, i8* %271, i64 %292
  %294 = bitcast i8* %293 to i32 (...)***
  store i32 (...)** %81, i32 (...)*** %294, align 8, !tbaa !17, !noalias !97
  %295 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %295, align 8, !tbaa !17, !noalias !97
  %296 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8, !tbaa !13, !noalias !97
  %298 = getelementptr inbounds i8, i8* %297, i64 -24
  %299 = bitcast i8* %298 to %"struct.std::basic_string<char>::_Rep"*
  %300 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %300) #27, !noalias !97
  %301 = icmp eq i8* %298, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %301, label %316, label %302, !prof !16

302:                                              ; preds = %290
  %303 = getelementptr inbounds i8, i8* %297, i64 -8
  %304 = bitcast i8* %303 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %305, label %307

305:                                              ; preds = %302
  %306 = atomicrmw volatile add i32* %304, i32 -1 acq_rel, align 4
  br label %310

307:                                              ; preds = %302
  %308 = load i32, i32* %304, align 8, !tbaa !7
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %304, align 8, !tbaa !7
  br label %310

310:                                              ; preds = %307, %305
  %311 = phi i32 [ %306, %305 ], [ %308, %307 ]
  %312 = icmp slt i32 %311, 1
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %299, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #27
  br label %316

314:                                              ; preds = %288, %272
  %315 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %271) #27, !noalias !97
  br label %970

316:                                              ; preds = %313, %310, %290
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %300) #27, !noalias !97
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %295, align 8, !tbaa !17, !noalias !97
  %317 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %317) #27
  %318 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %318) #27
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %271) #27, !noalias !97
  %319 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %319, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25)
          to label %320 unwind label %968

320:                                              ; preds = %316
  %321 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %25, i64 0, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8, !tbaa !13
  %323 = getelementptr inbounds i8, i8* %322, i64 -24
  %324 = bitcast i8* %323 to %"struct.std::basic_string<char>::_Rep"*
  %325 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %325) #27
  %326 = icmp eq i8* %323, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %326, label %339, label %327, !prof !16

327:                                              ; preds = %320
  %328 = getelementptr inbounds i8, i8* %322, i64 -8
  %329 = bitcast i8* %328 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %330, label %332

330:                                              ; preds = %327
  %331 = atomicrmw volatile add i32* %329, i32 -1 acq_rel, align 4
  br label %335

332:                                              ; preds = %327
  %333 = load i32, i32* %329, align 8, !tbaa !7
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %329, align 8, !tbaa !7
  br label %335

335:                                              ; preds = %332, %330
  %336 = phi i32 [ %331, %330 ], [ %333, %332 ]
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %324, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #27
  br label %339

339:                                              ; preds = %320, %335, %338
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %325) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %269) #27
  %340 = invoke noalias nonnull dereferenceable(16) i8* @_Znam(i64 16) #29
          to label %341 unwind label %980

341:                                              ; preds = %339
  %342 = bitcast i8* %340 to i32*
  %343 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %344 = getelementptr i8, i8* %343, i64 -24
  %345 = bitcast i8* %344 to i64*
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %346
  %348 = getelementptr inbounds i8, i8* %347, i64 240
  %349 = bitcast i8* %348 to %"class.std::ctype"**
  %350 = load %"class.std::ctype"*, %"class.std::ctype"** %349, align 8, !tbaa !19
  %351 = icmp eq %"class.std::ctype"* %350, null
  br i1 %351, label %352, label %354

352:                                              ; preds = %341
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %353 unwind label %980

353:                                              ; preds = %352
  unreachable

354:                                              ; preds = %341
  %355 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %350, i64 0, i32 8
  %356 = load i8, i8* %355, align 8, !tbaa !22
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %350, i64 0, i32 9, i64 10
  %360 = load i8, i8* %359, align 1, !tbaa !24
  br label %368

361:                                              ; preds = %354
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %350)
          to label %362 unwind label %980

362:                                              ; preds = %361
  %363 = bitcast %"class.std::ctype"* %350 to i8 (%"class.std::ctype"*, i8)***
  %364 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %363, align 8, !tbaa !17
  %365 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %364, i64 6
  %366 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %365, align 8
  %367 = invoke signext i8 %366(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %350, i8 signext 10)
          to label %368 unwind label %980

368:                                              ; preds = %362, %358
  %369 = phi i8 [ %360, %358 ], [ %367, %362 ]
  %370 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %369)
          to label %371 unwind label %980

371:                                              ; preds = %368
  %372 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %370)
          to label %373 unwind label %980

373:                                              ; preds = %371
  %374 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %372, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %375 unwind label %980

375:                                              ; preds = %373
  %376 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %377 = load i8*, i8** %376, align 16, !tbaa !13
  %378 = getelementptr inbounds i8, i8* %377, i64 -24
  %379 = bitcast i8* %378 to i64*
  %380 = load i64, i64* %379, align 8, !tbaa !37
  %381 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %382 = load i8*, i8** %381, align 16, !tbaa !13
  %383 = getelementptr inbounds i8, i8* %382, i64 -24
  %384 = bitcast i8* %383 to i64*
  %385 = load i64, i64* %384, align 8, !tbaa !37
  %386 = icmp ugt i64 %380, %385
  %387 = select i1 %386, i64 %380, i64 %385
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %342, align 4, !tbaa !7
  %389 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %390 unwind label %980

390:                                              ; preds = %375
  %391 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %392 = getelementptr i8, i8* %391, i64 -24
  %393 = bitcast i8* %392 to i64*
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %394
  %396 = shl i64 %387, 32
  %397 = add i64 %396, 4294967296
  %398 = ashr exact i64 %397, 32
  %399 = getelementptr inbounds i8, i8* %395, i64 16
  %400 = bitcast i8* %399 to i64*
  store i64 %398, i64* %400, align 8, !tbaa !100
  %401 = load i64, i64* %393, align 8
  %402 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %401
  %403 = getelementptr inbounds i8, i8* %402, i64 24
  %404 = bitcast i8* %403 to i32*
  %405 = load i32, i32* %404, align 8, !tbaa !84
  %406 = and i32 %405, -177
  %407 = or i32 %406, 32
  store i32 %407, i32* %404, align 8, !tbaa !90
  %408 = load i8*, i8** %376, align 16, !tbaa !13
  %409 = getelementptr inbounds i8, i8* %408, i64 -24
  %410 = bitcast i8* %409 to i64*
  %411 = load i64, i64* %410, align 8, !tbaa !37
  %412 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %408, i64 %411)
          to label %413 unwind label %980

413:                                              ; preds = %390
  %414 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %412, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %415 unwind label %980

415:                                              ; preds = %413
  %416 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8, !tbaa !13
  %418 = getelementptr inbounds i8, i8* %417, i64 -24
  %419 = bitcast i8* %418 to i64*
  %420 = load i64, i64* %419, align 8, !tbaa !37
  %421 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %422 = load i8*, i8** %421, align 8, !tbaa !13
  %423 = getelementptr inbounds i8, i8* %422, i64 -24
  %424 = bitcast i8* %423 to i64*
  %425 = load i64, i64* %424, align 8, !tbaa !37
  %426 = icmp ugt i64 %420, %425
  %427 = select i1 %426, i64 %420, i64 %425
  %428 = trunc i64 %427 to i32
  %429 = getelementptr inbounds i32, i32* %342, i64 1
  store i32 %428, i32* %429, align 4, !tbaa !7
  %430 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %431 unwind label %980

431:                                              ; preds = %415
  %432 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %433 = getelementptr i8, i8* %432, i64 -24
  %434 = bitcast i8* %433 to i64*
  %435 = load i64, i64* %434, align 8
  %436 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %435
  %437 = shl i64 %427, 32
  %438 = add i64 %437, 4294967296
  %439 = ashr exact i64 %438, 32
  %440 = getelementptr inbounds i8, i8* %436, i64 16
  %441 = bitcast i8* %440 to i64*
  store i64 %439, i64* %441, align 8, !tbaa !100
  %442 = load i64, i64* %434, align 8
  %443 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %442
  %444 = getelementptr inbounds i8, i8* %443, i64 24
  %445 = bitcast i8* %444 to i32*
  %446 = load i32, i32* %445, align 8, !tbaa !84
  %447 = and i32 %446, -177
  %448 = or i32 %447, 32
  store i32 %448, i32* %445, align 8, !tbaa !90
  %449 = load i8*, i8** %416, align 8, !tbaa !13
  %450 = getelementptr inbounds i8, i8* %449, i64 -24
  %451 = bitcast i8* %450 to i64*
  %452 = load i64, i64* %451, align 8, !tbaa !37
  %453 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %449, i64 %452)
          to label %454 unwind label %980

454:                                              ; preds = %431
  %455 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %453, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %456 unwind label %980

456:                                              ; preds = %454
  %457 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %458 = load i8*, i8** %457, align 16, !tbaa !13
  %459 = getelementptr inbounds i8, i8* %458, i64 -24
  %460 = bitcast i8* %459 to i64*
  %461 = load i64, i64* %460, align 8, !tbaa !37
  %462 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %463 = load i8*, i8** %462, align 16, !tbaa !13
  %464 = getelementptr inbounds i8, i8* %463, i64 -24
  %465 = bitcast i8* %464 to i64*
  %466 = load i64, i64* %465, align 8, !tbaa !37
  %467 = icmp ugt i64 %461, %466
  %468 = select i1 %467, i64 %461, i64 %466
  %469 = trunc i64 %468 to i32
  %470 = getelementptr inbounds i32, i32* %342, i64 2
  store i32 %469, i32* %470, align 4, !tbaa !7
  %471 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %472 unwind label %980

472:                                              ; preds = %456
  %473 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %474 = getelementptr i8, i8* %473, i64 -24
  %475 = bitcast i8* %474 to i64*
  %476 = load i64, i64* %475, align 8
  %477 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %476
  %478 = shl i64 %468, 32
  %479 = add i64 %478, 4294967296
  %480 = ashr exact i64 %479, 32
  %481 = getelementptr inbounds i8, i8* %477, i64 16
  %482 = bitcast i8* %481 to i64*
  store i64 %480, i64* %482, align 8, !tbaa !100
  %483 = load i64, i64* %475, align 8
  %484 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %483
  %485 = getelementptr inbounds i8, i8* %484, i64 24
  %486 = bitcast i8* %485 to i32*
  %487 = load i32, i32* %486, align 8, !tbaa !84
  %488 = and i32 %487, -177
  %489 = or i32 %488, 32
  store i32 %489, i32* %486, align 8, !tbaa !90
  %490 = load i8*, i8** %457, align 16, !tbaa !13
  %491 = getelementptr inbounds i8, i8* %490, i64 -24
  %492 = bitcast i8* %491 to i64*
  %493 = load i64, i64* %492, align 8, !tbaa !37
  %494 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %490, i64 %493)
          to label %495 unwind label %980

495:                                              ; preds = %472
  %496 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %494, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %497 unwind label %980

497:                                              ; preds = %495
  %498 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %499 = load i8*, i8** %498, align 8, !tbaa !13
  %500 = getelementptr inbounds i8, i8* %499, i64 -24
  %501 = bitcast i8* %500 to i64*
  %502 = load i64, i64* %501, align 8, !tbaa !37
  %503 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %504 = load i8*, i8** %503, align 8, !tbaa !13
  %505 = getelementptr inbounds i8, i8* %504, i64 -24
  %506 = bitcast i8* %505 to i64*
  %507 = load i64, i64* %506, align 8, !tbaa !37
  %508 = icmp ugt i64 %502, %507
  %509 = select i1 %508, i64 %502, i64 %507
  %510 = trunc i64 %509 to i32
  %511 = getelementptr inbounds i32, i32* %342, i64 3
  store i32 %510, i32* %511, align 4, !tbaa !7
  %512 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %513 unwind label %980

513:                                              ; preds = %497
  %514 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %515 = getelementptr i8, i8* %514, i64 -24
  %516 = bitcast i8* %515 to i64*
  %517 = load i64, i64* %516, align 8
  %518 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %517
  %519 = shl i64 %509, 32
  %520 = add i64 %519, 4294967296
  %521 = ashr exact i64 %520, 32
  %522 = getelementptr inbounds i8, i8* %518, i64 16
  %523 = bitcast i8* %522 to i64*
  store i64 %521, i64* %523, align 8, !tbaa !100
  %524 = load i64, i64* %516, align 8
  %525 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %524
  %526 = getelementptr inbounds i8, i8* %525, i64 24
  %527 = bitcast i8* %526 to i32*
  %528 = load i32, i32* %527, align 8, !tbaa !84
  %529 = and i32 %528, -177
  %530 = or i32 %529, 32
  store i32 %530, i32* %527, align 8, !tbaa !90
  %531 = load i8*, i8** %498, align 8, !tbaa !13
  %532 = getelementptr inbounds i8, i8* %531, i64 -24
  %533 = bitcast i8* %532 to i64*
  %534 = load i64, i64* %533, align 8, !tbaa !37
  %535 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %531, i64 %534)
          to label %536 unwind label %980

536:                                              ; preds = %513
  %537 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %535, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %538 unwind label %980

538:                                              ; preds = %536
  %539 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %540 = getelementptr i8, i8* %539, i64 -24
  %541 = bitcast i8* %540 to i64*
  %542 = load i64, i64* %541, align 8
  %543 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %542
  %544 = getelementptr inbounds i8, i8* %543, i64 240
  %545 = bitcast i8* %544 to %"class.std::ctype"**
  %546 = load %"class.std::ctype"*, %"class.std::ctype"** %545, align 8, !tbaa !19
  %547 = icmp eq %"class.std::ctype"* %546, null
  br i1 %547, label %548, label %550

548:                                              ; preds = %538
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %549 unwind label %980

549:                                              ; preds = %548
  unreachable

550:                                              ; preds = %538
  %551 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %546, i64 0, i32 8
  %552 = load i8, i8* %551, align 8, !tbaa !22
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %557, label %554

554:                                              ; preds = %550
  %555 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %546, i64 0, i32 9, i64 10
  %556 = load i8, i8* %555, align 1, !tbaa !24
  br label %564

557:                                              ; preds = %550
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %546)
          to label %558 unwind label %980

558:                                              ; preds = %557
  %559 = bitcast %"class.std::ctype"* %546 to i8 (%"class.std::ctype"*, i8)***
  %560 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %559, align 8, !tbaa !17
  %561 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %560, i64 6
  %562 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %561, align 8
  %563 = invoke signext i8 %562(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %546, i8 signext 10)
          to label %564 unwind label %980

564:                                              ; preds = %558, %554
  %565 = phi i8 [ %556, %554 ], [ %563, %558 ]
  %566 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %565)
          to label %567 unwind label %980

567:                                              ; preds = %564
  %568 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %566)
          to label %569 unwind label %980

569:                                              ; preds = %567
  %570 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %568, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %571 unwind label %980

571:                                              ; preds = %569
  %572 = load i32, i32* %342, align 4, !tbaa !7
  %573 = icmp sgt i32 %572, -2
  br i1 %573, label %574, label %709

574:                                              ; preds = %571
  %575 = add i32 %572, 1
  br label %758

576:                                              ; preds = %748
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %577 unwind label %980

577:                                              ; preds = %576
  unreachable

578:                                              ; preds = %748
  %579 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %756, i64 0, i32 8
  %580 = load i8, i8* %579, align 8, !tbaa !22
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %578
  %583 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %756, i64 0, i32 9, i64 10
  %584 = load i8, i8* %583, align 1, !tbaa !24
  br label %592

585:                                              ; preds = %578
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %756)
          to label %586 unwind label %980

586:                                              ; preds = %585
  %587 = bitcast %"class.std::ctype"* %756 to i8 (%"class.std::ctype"*, i8)***
  %588 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %587, align 8, !tbaa !17
  %589 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %588, i64 6
  %590 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %589, align 8
  %591 = invoke signext i8 %590(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %756, i8 signext 10)
          to label %592 unwind label %980

592:                                              ; preds = %586, %582
  %593 = phi i8 [ %584, %582 ], [ %591, %586 ]
  %594 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %593)
          to label %595 unwind label %980

595:                                              ; preds = %592
  %596 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %594)
          to label %597 unwind label %980

597:                                              ; preds = %595
  %598 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %596, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %599 unwind label %980

599:                                              ; preds = %597
  %600 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %601 unwind label %980

601:                                              ; preds = %599
  %602 = add nsw i32 %572, 1
  %603 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %604 = getelementptr i8, i8* %603, i64 -24
  %605 = bitcast i8* %604 to i64*
  %606 = load i64, i64* %605, align 8
  %607 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %606
  %608 = sext i32 %602 to i64
  %609 = getelementptr inbounds i8, i8* %607, i64 16
  %610 = bitcast i8* %609 to i64*
  store i64 %608, i64* %610, align 8, !tbaa !100
  %611 = load i64, i64* %605, align 8
  %612 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %611
  %613 = getelementptr inbounds i8, i8* %612, i64 24
  %614 = bitcast i8* %613 to i32*
  %615 = load i32, i32* %614, align 8, !tbaa !84
  %616 = and i32 %615, -177
  %617 = or i32 %616, 32
  store i32 %617, i32* %614, align 8, !tbaa !90
  %618 = load i8*, i8** %381, align 16, !tbaa !13
  %619 = getelementptr inbounds i8, i8* %618, i64 -24
  %620 = bitcast i8* %619 to i64*
  %621 = load i64, i64* %620, align 8, !tbaa !37
  %622 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %618, i64 %621)
          to label %623 unwind label %980

623:                                              ; preds = %601
  %624 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %622, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %625 unwind label %980

625:                                              ; preds = %623
  %626 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %627 unwind label %980

627:                                              ; preds = %625
  %628 = add nsw i32 %712, 1
  %629 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %630 = getelementptr i8, i8* %629, i64 -24
  %631 = bitcast i8* %630 to i64*
  %632 = load i64, i64* %631, align 8
  %633 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %632
  %634 = sext i32 %628 to i64
  %635 = getelementptr inbounds i8, i8* %633, i64 16
  %636 = bitcast i8* %635 to i64*
  store i64 %634, i64* %636, align 8, !tbaa !100
  %637 = load i64, i64* %631, align 8
  %638 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %637
  %639 = getelementptr inbounds i8, i8* %638, i64 24
  %640 = bitcast i8* %639 to i32*
  %641 = load i32, i32* %640, align 8, !tbaa !84
  %642 = and i32 %641, -177
  %643 = or i32 %642, 32
  store i32 %643, i32* %640, align 8, !tbaa !90
  %644 = load i8*, i8** %421, align 8, !tbaa !13
  %645 = getelementptr inbounds i8, i8* %644, i64 -24
  %646 = bitcast i8* %645 to i64*
  %647 = load i64, i64* %646, align 8, !tbaa !37
  %648 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %644, i64 %647)
          to label %649 unwind label %980

649:                                              ; preds = %627
  %650 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %648, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %651 unwind label %980

651:                                              ; preds = %649
  %652 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %653 unwind label %980

653:                                              ; preds = %651
  %654 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %655 = getelementptr i8, i8* %654, i64 -24
  %656 = bitcast i8* %655 to i64*
  %657 = load i64, i64* %656, align 8
  %658 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %657
  %659 = getelementptr inbounds i8, i8* %658, i64 16
  %660 = bitcast i8* %659 to i64*
  store i64 %480, i64* %660, align 8, !tbaa !100
  %661 = load i64, i64* %656, align 8
  %662 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %661
  %663 = getelementptr inbounds i8, i8* %662, i64 24
  %664 = bitcast i8* %663 to i32*
  %665 = load i32, i32* %664, align 8, !tbaa !84
  %666 = and i32 %665, -177
  %667 = or i32 %666, 32
  store i32 %667, i32* %664, align 8, !tbaa !90
  %668 = load i8*, i8** %462, align 16, !tbaa !13
  %669 = getelementptr inbounds i8, i8* %668, i64 -24
  %670 = bitcast i8* %669 to i64*
  %671 = load i64, i64* %670, align 8, !tbaa !37
  %672 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %668, i64 %671)
          to label %673 unwind label %980

673:                                              ; preds = %653
  %674 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %672, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %675 unwind label %980

675:                                              ; preds = %673
  %676 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
          to label %677 unwind label %980

677:                                              ; preds = %675
  %678 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %679 = getelementptr i8, i8* %678, i64 -24
  %680 = bitcast i8* %679 to i64*
  %681 = load i64, i64* %680, align 8
  %682 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %681
  %683 = getelementptr inbounds i8, i8* %682, i64 16
  %684 = bitcast i8* %683 to i64*
  store i64 %521, i64* %684, align 8, !tbaa !100
  %685 = load i64, i64* %680, align 8
  %686 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %685
  %687 = getelementptr inbounds i8, i8* %686, i64 24
  %688 = bitcast i8* %687 to i32*
  %689 = load i32, i32* %688, align 8, !tbaa !84
  %690 = and i32 %689, -177
  %691 = or i32 %690, 32
  store i32 %691, i32* %688, align 8, !tbaa !90
  %692 = load i8*, i8** %503, align 8, !tbaa !13
  %693 = getelementptr inbounds i8, i8* %692, i64 -24
  %694 = bitcast i8* %693 to i64*
  %695 = load i64, i64* %694, align 8, !tbaa !37
  %696 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %692, i64 %695)
          to label %697 unwind label %980

697:                                              ; preds = %677
  %698 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %696, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %699 unwind label %980

699:                                              ; preds = %697
  %700 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %701 = getelementptr i8, i8* %700, i64 -24
  %702 = bitcast i8* %701 to i64*
  %703 = load i64, i64* %702, align 8
  %704 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %703
  %705 = getelementptr inbounds i8, i8* %704, i64 240
  %706 = bitcast i8* %705 to %"class.std::ctype"**
  %707 = load %"class.std::ctype"*, %"class.std::ctype"** %706, align 8, !tbaa !19
  %708 = icmp eq %"class.std::ctype"* %707, null
  br i1 %708, label %764, label %766

709:                                              ; preds = %761, %571
  %710 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %711 unwind label %980

711:                                              ; preds = %709
  %712 = load i32, i32* %429, align 4, !tbaa !7
  %713 = icmp sgt i32 %712, -2
  br i1 %713, label %714, label %722

714:                                              ; preds = %711
  %715 = add i32 %712, 1
  br label %716

716:                                              ; preds = %714, %719
  %717 = phi i32 [ %720, %719 ], [ 0, %714 ]
  %718 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %719 unwind label %976

719:                                              ; preds = %716
  %720 = add nuw i32 %717, 1
  %721 = icmp eq i32 %717, %715
  br i1 %721, label %722, label %716, !llvm.loop !101

722:                                              ; preds = %719, %711
  %723 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %724 unwind label %980

724:                                              ; preds = %722
  %725 = icmp sgt i32 %469, -2
  br i1 %725, label %726, label %734

726:                                              ; preds = %724
  %727 = add i32 %469, 1
  br label %728

728:                                              ; preds = %726, %731
  %729 = phi i32 [ %732, %731 ], [ 0, %726 ]
  %730 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %731 unwind label %974

731:                                              ; preds = %728
  %732 = add nuw i32 %729, 1
  %733 = icmp eq i32 %729, %727
  br i1 %733, label %734, label %728, !llvm.loop !101

734:                                              ; preds = %731, %724
  %735 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %736 unwind label %980

736:                                              ; preds = %734
  %737 = icmp sgt i32 %510, -2
  br i1 %737, label %738, label %746

738:                                              ; preds = %736
  %739 = add i32 %510, 1
  br label %740

740:                                              ; preds = %738, %743
  %741 = phi i32 [ %744, %743 ], [ 0, %738 ]
  %742 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %743 unwind label %972

743:                                              ; preds = %740
  %744 = add nuw i32 %741, 1
  %745 = icmp eq i32 %741, %739
  br i1 %745, label %746, label %740, !llvm.loop !101

746:                                              ; preds = %743, %736
  %747 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %748 unwind label %980

748:                                              ; preds = %746
  %749 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %750 = getelementptr i8, i8* %749, i64 -24
  %751 = bitcast i8* %750 to i64*
  %752 = load i64, i64* %751, align 8
  %753 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %752
  %754 = getelementptr inbounds i8, i8* %753, i64 240
  %755 = bitcast i8* %754 to %"class.std::ctype"**
  %756 = load %"class.std::ctype"*, %"class.std::ctype"** %755, align 8, !tbaa !19
  %757 = icmp eq %"class.std::ctype"* %756, null
  br i1 %757, label %576, label %578

758:                                              ; preds = %574, %761
  %759 = phi i32 [ %762, %761 ], [ 0, %574 ]
  %760 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
          to label %761 unwind label %978

761:                                              ; preds = %758
  %762 = add nuw i32 %759, 1
  %763 = icmp eq i32 %759, %575
  br i1 %763, label %709, label %758, !llvm.loop !101

764:                                              ; preds = %699
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %765 unwind label %980

765:                                              ; preds = %764
  unreachable

766:                                              ; preds = %699
  %767 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %707, i64 0, i32 8
  %768 = load i8, i8* %767, align 8, !tbaa !22
  %769 = icmp eq i8 %768, 0
  br i1 %769, label %773, label %770

770:                                              ; preds = %766
  %771 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %707, i64 0, i32 9, i64 10
  %772 = load i8, i8* %771, align 1, !tbaa !24
  br label %780

773:                                              ; preds = %766
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %707)
          to label %774 unwind label %980

774:                                              ; preds = %773
  %775 = bitcast %"class.std::ctype"* %707 to i8 (%"class.std::ctype"*, i8)***
  %776 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %775, align 8, !tbaa !17
  %777 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %776, i64 6
  %778 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %777, align 8
  %779 = invoke signext i8 %778(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %707, i8 signext 10)
          to label %780 unwind label %980

780:                                              ; preds = %774, %770
  %781 = phi i8 [ %772, %770 ], [ %779, %774 ]
  %782 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %781)
          to label %783 unwind label %980

783:                                              ; preds = %780
  %784 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %782)
          to label %785 unwind label %980

785:                                              ; preds = %783
  call void @_ZdaPv(i8* nonnull %340) #30
  %786 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %787 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %788 = load i8*, i8** %787, align 8, !tbaa !13
  %789 = getelementptr inbounds i8, i8* %788, i64 -24
  %790 = bitcast i8* %789 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %786) #27
  %791 = icmp eq i8* %789, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %791, label %804, label %792, !prof !16

792:                                              ; preds = %785
  %793 = getelementptr inbounds i8, i8* %788, i64 -8
  %794 = bitcast i8* %793 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %795, label %797

795:                                              ; preds = %792
  %796 = atomicrmw volatile add i32* %794, i32 -1 acq_rel, align 4
  br label %800

797:                                              ; preds = %792
  %798 = load i32, i32* %794, align 8, !tbaa !7
  %799 = add nsw i32 %798, -1
  store i32 %799, i32* %794, align 8, !tbaa !7
  br label %800

800:                                              ; preds = %797, %795
  %801 = phi i32 [ %796, %795 ], [ %798, %797 ]
  %802 = icmp slt i32 %801, 1
  br i1 %802, label %803, label %804

803:                                              ; preds = %800
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %790, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %804

804:                                              ; preds = %785, %800, %803
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %786) #27
  %805 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %806 = load i8*, i8** %805, align 16, !tbaa !13
  %807 = getelementptr inbounds i8, i8* %806, i64 -24
  %808 = bitcast i8* %807 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %786) #27
  %809 = icmp eq i8* %807, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %809, label %822, label %810, !prof !16

810:                                              ; preds = %804
  %811 = getelementptr inbounds i8, i8* %806, i64 -8
  %812 = bitcast i8* %811 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %816, label %813

813:                                              ; preds = %810
  %814 = load i32, i32* %812, align 8, !tbaa !7
  %815 = add nsw i32 %814, -1
  store i32 %815, i32* %812, align 8, !tbaa !7
  br label %818

816:                                              ; preds = %810
  %817 = atomicrmw volatile add i32* %812, i32 -1 acq_rel, align 4
  br label %818

818:                                              ; preds = %816, %813
  %819 = phi i32 [ %817, %816 ], [ %814, %813 ]
  %820 = icmp slt i32 %819, 1
  br i1 %820, label %821, label %822

821:                                              ; preds = %818
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %808, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %822

822:                                              ; preds = %821, %818, %804
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %786) #27
  %823 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %824 = load i8*, i8** %823, align 8, !tbaa !13
  %825 = getelementptr inbounds i8, i8* %824, i64 -24
  %826 = bitcast i8* %825 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %786) #27
  %827 = icmp eq i8* %825, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %827, label %840, label %828, !prof !16

828:                                              ; preds = %822
  %829 = getelementptr inbounds i8, i8* %824, i64 -8
  %830 = bitcast i8* %829 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %834, label %831

831:                                              ; preds = %828
  %832 = load i32, i32* %830, align 8, !tbaa !7
  %833 = add nsw i32 %832, -1
  store i32 %833, i32* %830, align 8, !tbaa !7
  br label %836

834:                                              ; preds = %828
  %835 = atomicrmw volatile add i32* %830, i32 -1 acq_rel, align 4
  br label %836

836:                                              ; preds = %834, %831
  %837 = phi i32 [ %835, %834 ], [ %832, %831 ]
  %838 = icmp slt i32 %837, 1
  br i1 %838, label %839, label %840

839:                                              ; preds = %836
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %826, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %840

840:                                              ; preds = %839, %836, %822
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %786) #27
  %841 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %842 = load i8*, i8** %841, align 16, !tbaa !13
  %843 = getelementptr inbounds i8, i8* %842, i64 -24
  %844 = bitcast i8* %843 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %786) #27
  %845 = icmp eq i8* %843, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %845, label %858, label %846, !prof !16

846:                                              ; preds = %840
  %847 = getelementptr inbounds i8, i8* %842, i64 -8
  %848 = bitcast i8* %847 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %852, label %849

849:                                              ; preds = %846
  %850 = load i32, i32* %848, align 8, !tbaa !7
  %851 = add nsw i32 %850, -1
  store i32 %851, i32* %848, align 8, !tbaa !7
  br label %854

852:                                              ; preds = %846
  %853 = atomicrmw volatile add i32* %848, i32 -1 acq_rel, align 4
  br label %854

854:                                              ; preds = %852, %849
  %855 = phi i32 [ %853, %852 ], [ %850, %849 ]
  %856 = icmp slt i32 %855, 1
  br i1 %856, label %857, label %858

857:                                              ; preds = %854
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %844, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %858

858:                                              ; preds = %857, %854, %840
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %786) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #27
  %859 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %860 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %861 = load i8*, i8** %860, align 8, !tbaa !13
  %862 = getelementptr inbounds i8, i8* %861, i64 -24
  %863 = bitcast i8* %862 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %859) #27
  %864 = icmp eq i8* %862, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %864, label %877, label %865, !prof !16

865:                                              ; preds = %858
  %866 = getelementptr inbounds i8, i8* %861, i64 -8
  %867 = bitcast i8* %866 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %868, label %870

868:                                              ; preds = %865
  %869 = atomicrmw volatile add i32* %867, i32 -1 acq_rel, align 4
  br label %873

870:                                              ; preds = %865
  %871 = load i32, i32* %867, align 8, !tbaa !7
  %872 = add nsw i32 %871, -1
  store i32 %872, i32* %867, align 8, !tbaa !7
  br label %873

873:                                              ; preds = %870, %868
  %874 = phi i32 [ %869, %868 ], [ %871, %870 ]
  %875 = icmp slt i32 %874, 1
  br i1 %875, label %876, label %877

876:                                              ; preds = %873
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %863, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %877

877:                                              ; preds = %858, %873, %876
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %859) #27
  %878 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %879 = load i8*, i8** %878, align 16, !tbaa !13
  %880 = getelementptr inbounds i8, i8* %879, i64 -24
  %881 = bitcast i8* %880 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %859) #27
  %882 = icmp eq i8* %880, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %882, label %895, label %883, !prof !16

883:                                              ; preds = %877
  %884 = getelementptr inbounds i8, i8* %879, i64 -8
  %885 = bitcast i8* %884 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %889, label %886

886:                                              ; preds = %883
  %887 = load i32, i32* %885, align 8, !tbaa !7
  %888 = add nsw i32 %887, -1
  store i32 %888, i32* %885, align 8, !tbaa !7
  br label %891

889:                                              ; preds = %883
  %890 = atomicrmw volatile add i32* %885, i32 -1 acq_rel, align 4
  br label %891

891:                                              ; preds = %889, %886
  %892 = phi i32 [ %890, %889 ], [ %887, %886 ]
  %893 = icmp slt i32 %892, 1
  br i1 %893, label %894, label %895

894:                                              ; preds = %891
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %881, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %895

895:                                              ; preds = %894, %891, %877
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %859) #27
  %896 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %897 = load i8*, i8** %896, align 8, !tbaa !13
  %898 = getelementptr inbounds i8, i8* %897, i64 -24
  %899 = bitcast i8* %898 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %859) #27
  %900 = icmp eq i8* %898, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %900, label %913, label %901, !prof !16

901:                                              ; preds = %895
  %902 = getelementptr inbounds i8, i8* %897, i64 -8
  %903 = bitcast i8* %902 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %907, label %904

904:                                              ; preds = %901
  %905 = load i32, i32* %903, align 8, !tbaa !7
  %906 = add nsw i32 %905, -1
  store i32 %906, i32* %903, align 8, !tbaa !7
  br label %909

907:                                              ; preds = %901
  %908 = atomicrmw volatile add i32* %903, i32 -1 acq_rel, align 4
  br label %909

909:                                              ; preds = %907, %904
  %910 = phi i32 [ %908, %907 ], [ %905, %904 ]
  %911 = icmp slt i32 %910, 1
  br i1 %911, label %912, label %913

912:                                              ; preds = %909
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %899, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %913

913:                                              ; preds = %912, %909, %895
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %859) #27
  %914 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %915 = load i8*, i8** %914, align 16, !tbaa !13
  %916 = getelementptr inbounds i8, i8* %915, i64 -24
  %917 = bitcast i8* %916 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %859) #27
  %918 = icmp eq i8* %916, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %918, label %931, label %919, !prof !16

919:                                              ; preds = %913
  %920 = getelementptr inbounds i8, i8* %915, i64 -8
  %921 = bitcast i8* %920 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %925, label %922

922:                                              ; preds = %919
  %923 = load i32, i32* %921, align 8, !tbaa !7
  %924 = add nsw i32 %923, -1
  store i32 %924, i32* %921, align 8, !tbaa !7
  br label %927

925:                                              ; preds = %919
  %926 = atomicrmw volatile add i32* %921, i32 -1 acq_rel, align 4
  br label %927

927:                                              ; preds = %925, %922
  %928 = phi i32 [ %926, %925 ], [ %923, %922 ]
  %929 = icmp slt i32 %928, 1
  br i1 %929, label %930, label %931

930:                                              ; preds = %927
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %917, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %931

931:                                              ; preds = %930, %927, %913
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %859) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #27
  br label %994

932:                                              ; preds = %32
  %933 = landingpad { i8*, i32 }
          cleanup
  br label %941

934:                                              ; preds = %38
  %935 = landingpad { i8*, i32 }
          cleanup
  br label %938

936:                                              ; preds = %41
  %937 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #27
  br label %938

938:                                              ; preds = %936, %934
  %939 = phi { i8*, i32 } [ %937, %936 ], [ %935, %934 ]
  %940 = phi %"class.std::basic_string"* [ %42, %936 ], [ %39, %934 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #27
  br label %941

941:                                              ; preds = %932, %938
  %942 = phi { i8*, i32 } [ %939, %938 ], [ %933, %932 ]
  %943 = phi %"class.std::basic_string"* [ %940, %938 ], [ %36, %932 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #27
  br label %944

944:                                              ; preds = %941, %944
  %945 = phi %"class.std::basic_string"* [ %946, %944 ], [ %943, %941 ]
  %946 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %945, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %946) #27
  %947 = icmp eq %"class.std::basic_string"* %946, %34
  br i1 %947, label %992, label %944

948:                                              ; preds = %44
  %949 = landingpad { i8*, i32 }
          cleanup
  br label %952

950:                                              ; preds = %108
  %951 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22) #27
  br label %952

952:                                              ; preds = %948, %106, %950
  %953 = phi { i8*, i32 } [ %951, %950 ], [ %949, %948 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #27
  br label %982

954:                                              ; preds = %130
  %955 = landingpad { i8*, i32 }
          cleanup
  br label %958

956:                                              ; preds = %177
  %957 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23) #27
  br label %958

958:                                              ; preds = %954, %175, %956
  %959 = phi { i8*, i32 } [ %957, %956 ], [ %955, %954 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %131) #27
  br label %982

960:                                              ; preds = %200
  %961 = landingpad { i8*, i32 }
          cleanup
  br label %964

962:                                              ; preds = %245
  %963 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24) #27
  br label %964

964:                                              ; preds = %960, %243, %962
  %965 = phi { i8*, i32 } [ %963, %962 ], [ %961, %960 ], [ %244, %243 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %201) #27
  br label %982

966:                                              ; preds = %268
  %967 = landingpad { i8*, i32 }
          cleanup
  br label %970

968:                                              ; preds = %316
  %969 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25) #27
  br label %970

970:                                              ; preds = %966, %314, %968
  %971 = phi { i8*, i32 } [ %969, %968 ], [ %967, %966 ], [ %315, %314 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %269) #27
  br label %982

972:                                              ; preds = %740
  %973 = landingpad { i8*, i32 }
          cleanup
  br label %982

974:                                              ; preds = %728
  %975 = landingpad { i8*, i32 }
          cleanup
  br label %982

976:                                              ; preds = %716
  %977 = landingpad { i8*, i32 }
          cleanup
  br label %982

978:                                              ; preds = %758
  %979 = landingpad { i8*, i32 }
          cleanup
  br label %982

980:                                              ; preds = %783, %780, %774, %773, %764, %746, %734, %722, %709, %697, %677, %675, %673, %653, %651, %649, %627, %625, %623, %601, %599, %597, %595, %592, %586, %585, %576, %569, %567, %564, %558, %557, %548, %536, %513, %497, %495, %472, %456, %454, %431, %415, %413, %390, %375, %373, %371, %368, %362, %361, %352, %339
  %981 = landingpad { i8*, i32 }
          cleanup
  br label %982

982:                                              ; preds = %972, %976, %980, %978, %974, %970, %964, %958, %952
  %983 = phi { i8*, i32 } [ %971, %970 ], [ %965, %964 ], [ %959, %958 ], [ %953, %952 ], [ %973, %972 ], [ %975, %974 ], [ %977, %976 ], [ %979, %978 ], [ %981, %980 ]
  %984 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %984) #27
  %985 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %985) #27
  %986 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %986) #27
  %987 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %987) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #27
  %988 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %988) #27
  %989 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %989) #27
  %990 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %990) #27
  %991 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %991) #27
  br label %992

992:                                              ; preds = %944, %982
  %993 = phi { i8*, i32 } [ %983, %982 ], [ %942, %944 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #27
  resume { i8*, i32 } %993

994:                                              ; preds = %931, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN9PrefixSum7cleanupEv(%class.PrefixSum* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 6
  %3 = bitcast float** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !72
  %5 = tail call i32 @hipFree(i8* %4)
  %6 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 7
  %7 = bitcast float** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !42
  %9 = tail call i32 @hipFree(i8* %8)
  ret i32 0
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %struct.hipDeviceProp_t, align 8
  %4 = alloca %class.PrefixSum, align 8
  %5 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %3, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %5) #27
  %6 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %3, i32 0)
  %7 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i64 14)
  %8 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %3, i64 0, i32 13
  %9 = load i32, i32* %8, align 4, !tbaa !102
  %10 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %9)
  %11 = bitcast %"class.std::basic_ostream"* %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !17
  %13 = getelementptr i8, i8* %12, i64 -24
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %"class.std::basic_ostream"* %10 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  %18 = getelementptr inbounds i8, i8* %17, i64 240
  %19 = bitcast i8* %18 to %"class.std::ctype"**
  %20 = load %"class.std::ctype"*, %"class.std::ctype"** %19, align 8, !tbaa !19
  %21 = icmp eq %"class.std::ctype"* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

23:                                               ; preds = %2
  %24 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %20, i64 0, i32 8
  %25 = load i8, i8* %24, align 8, !tbaa !22
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %20, i64 0, i32 9, i64 10
  %29 = load i8, i8* %28, align 1, !tbaa !24
  br label %36

30:                                               ; preds = %23
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %20)
  %31 = bitcast %"class.std::ctype"* %20 to i8 (%"class.std::ctype"*, i8)***
  %32 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %31, align 8, !tbaa !17
  %33 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %32, i64 6
  %34 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %33, align 8
  %35 = call signext i8 %34(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %20, i8 signext 10)
  br label %36

36:                                               ; preds = %27, %30
  %37 = phi i8 [ %29, %27 ], [ %35, %30 ]
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %10, i8 signext %37)
  %39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %38)
  %40 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i64 14)
  %41 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %3, i64 0, i32 12
  %42 = load i32, i32* %41, align 8, !tbaa !105
  %43 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %42)
  %44 = bitcast %"class.std::basic_ostream"* %43 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !17
  %46 = getelementptr i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %"class.std::basic_ostream"* %43 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  %51 = getelementptr inbounds i8, i8* %50, i64 240
  %52 = bitcast i8* %51 to %"class.std::ctype"**
  %53 = load %"class.std::ctype"*, %"class.std::ctype"** %52, align 8, !tbaa !19
  %54 = icmp eq %"class.std::ctype"* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

56:                                               ; preds = %36
  %57 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %53, i64 0, i32 8
  %58 = load i8, i8* %57, align 8, !tbaa !22
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %53, i64 0, i32 9, i64 10
  %62 = load i8, i8* %61, align 1, !tbaa !24
  br label %69

63:                                               ; preds = %56
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %53)
  %64 = bitcast %"class.std::ctype"* %53 to i8 (%"class.std::ctype"*, i8)***
  %65 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %64, align 8, !tbaa !17
  %66 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %65, i64 6
  %67 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %66, align 8
  %68 = call signext i8 %67(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %53, i8 signext 10)
  br label %69

69:                                               ; preds = %60, %63
  %70 = phi i8 [ %62, %60 ], [ %68, %63 ]
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %43, i8 signext %70)
  %72 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %71)
  %73 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i64 17)
  %74 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %5) #27
  %75 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %5, i64 %74)
  %76 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %77 = getelementptr i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %79
  %81 = getelementptr inbounds i8, i8* %80, i64 240
  %82 = bitcast i8* %81 to %"class.std::ctype"**
  %83 = load %"class.std::ctype"*, %"class.std::ctype"** %82, align 8, !tbaa !19
  %84 = icmp eq %"class.std::ctype"* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

86:                                               ; preds = %69
  %87 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %83, i64 0, i32 8
  %88 = load i8, i8* %87, align 8, !tbaa !22
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %83, i64 0, i32 9, i64 10
  %92 = load i8, i8* %91, align 1, !tbaa !24
  br label %99

93:                                               ; preds = %86
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %83)
  %94 = bitcast %"class.std::ctype"* %83 to i8 (%"class.std::ctype"*, i8)***
  %95 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %94, align 8, !tbaa !17
  %96 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %95, i64 6
  %97 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %96, align 8
  %98 = call signext i8 %97(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %83, i8 signext 10)
  br label %99

99:                                               ; preds = %90, %93
  %100 = phi i8 [ %92, %90 ], [ %98, %93 ]
  %101 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %100)
  %102 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %101)
  %103 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i64 15)
  %104 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %3, i64 0, i32 11
  %105 = load i64, i64* %104, align 8, !tbaa !106
  %106 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %105)
  %107 = bitcast %"class.std::basic_ostream"* %106 to i8**
  %108 = load i8*, i8** %107, align 8, !tbaa !17
  %109 = getelementptr i8, i8* %108, i64 -24
  %110 = bitcast i8* %109 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = bitcast %"class.std::basic_ostream"* %106 to i8*
  %113 = getelementptr inbounds i8, i8* %112, i64 %111
  %114 = getelementptr inbounds i8, i8* %113, i64 240
  %115 = bitcast i8* %114 to %"class.std::ctype"**
  %116 = load %"class.std::ctype"*, %"class.std::ctype"** %115, align 8, !tbaa !19
  %117 = icmp eq %"class.std::ctype"* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

119:                                              ; preds = %99
  %120 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %116, i64 0, i32 8
  %121 = load i8, i8* %120, align 8, !tbaa !22
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %116, i64 0, i32 9, i64 10
  %125 = load i8, i8* %124, align 1, !tbaa !24
  br label %132

126:                                              ; preds = %119
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %116)
  %127 = bitcast %"class.std::ctype"* %116 to i8 (%"class.std::ctype"*, i8)***
  %128 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %127, align 8, !tbaa !17
  %129 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %128, i64 6
  %130 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %129, align 8
  %131 = call signext i8 %130(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %116, i8 signext 10)
  br label %132

132:                                              ; preds = %123, %126
  %133 = phi i8 [ %125, %123 ], [ %131, %126 ]
  %134 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %106, i8 signext %133)
  %135 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %134)
  %136 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i64 19)
  %137 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %3, i64 0, i32 2
  %138 = load i64, i64* %137, align 8, !tbaa !107
  %139 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %138)
  %140 = bitcast %"class.std::basic_ostream"* %139 to i8**
  %141 = load i8*, i8** %140, align 8, !tbaa !17
  %142 = getelementptr i8, i8* %141, i64 -24
  %143 = bitcast i8* %142 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = bitcast %"class.std::basic_ostream"* %139 to i8*
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  %147 = getelementptr inbounds i8, i8* %146, i64 240
  %148 = bitcast i8* %147 to %"class.std::ctype"**
  %149 = load %"class.std::ctype"*, %"class.std::ctype"** %148, align 8, !tbaa !19
  %150 = icmp eq %"class.std::ctype"* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %132
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

152:                                              ; preds = %132
  %153 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %149, i64 0, i32 8
  %154 = load i8, i8* %153, align 8, !tbaa !22
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %149, i64 0, i32 9, i64 10
  %158 = load i8, i8* %157, align 1, !tbaa !24
  br label %165

159:                                              ; preds = %152
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %149)
  %160 = bitcast %"class.std::ctype"* %149 to i8 (%"class.std::ctype"*, i8)***
  %161 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %160, align 8, !tbaa !17
  %162 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %161, i64 6
  %163 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %162, align 8
  %164 = call signext i8 %163(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %149, i8 signext 10)
  br label %165

165:                                              ; preds = %156, %159
  %166 = phi i8 [ %158, %156 ], [ %164, %159 ]
  %167 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %139, i8 signext %166)
  %168 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %167)
  %169 = bitcast %class.PrefixSum* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %169) #27
  %170 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 0
  store i32 123, i32* %170, align 8, !tbaa !108
  %171 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 1
  %172 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 3
  %173 = bitcast double* %171 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %173, i8 0, i64 16, i1 false)
  store i32 64, i32* %172, align 8, !tbaa !9
  %174 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 4
  %175 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 9
  %176 = bitcast float** %174 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %176, i8 0, i64 16, i1 false)
  store i32 1, i32* %175, align 8, !tbaa !74
  %177 = call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #29
  %178 = bitcast i8* %177 to %"class.appsdk::HIPCommandArgs"*
  %179 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 0
  %180 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %180, align 8, !tbaa !48
  %181 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 8, i32 0
  %182 = bitcast i32* %181 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %182, align 8, !tbaa !7
  %183 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %183, align 8, !tbaa !109
  %184 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %184, align 8, !tbaa !48
  %185 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 1
  store i32 0, i32* %185, align 8, !tbaa !53
  %186 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 2
  store i32 0, i32* %186, align 4, !tbaa !110
  %187 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 4
  %188 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 3
  %189 = bitcast i8*** %187 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %189, i8 0, i64 16, i1 false)
  store i32 123, i32* %188, align 8, !tbaa !111
  %190 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 9
  store i8 0, i8* %190, align 4, !tbaa !36
  %191 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 10
  store i8 0, i8* %191, align 1, !tbaa !31
  %192 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 0, i32 11
  store i8 0, i8* %192, align 2, !tbaa !80
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %179, align 8, !tbaa !17
  %193 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 1
  store i32 0, i32* %193, align 8, !tbaa !112
  %194 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %178, i64 0, i32 2
  store i8 0, i8* %194, align 4, !tbaa !114
  %195 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 13
  %196 = bitcast %"class.appsdk::HIPCommandArgs"** %195 to i8**
  store i8* %177, i8** %196, align 8, !tbaa !30
  %197 = call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #29
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %197, i8 0, i64 24, i1 false) #27
  %198 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 10
  %199 = bitcast %"class.appsdk::SDKTimer"** %198 to i8**
  store i8* %197, i8** %199, align 8, !tbaa !57
  %200 = bitcast i8* %177 to %"class.appsdk::SDKCmdArgsParser"*
  %201 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %200, i64 0, i32 12
  %202 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i64 0, i64 0), i64 29)
  %203 = invoke i32 @_ZN9PrefixSum10initializeEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %4)
          to label %204 unwind label %206

204:                                              ; preds = %165
  %205 = icmp eq i32 %203, 0
  br i1 %205, label %208, label %237

206:                                              ; preds = %231, %226, %236, %222, %220, %216, %208, %165
  %207 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN9PrefixSumD2Ev(%class.PrefixSum* nonnull align 8 dereferenceable(112) %4) #27
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %169) #27
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %5) #27
  resume { i8*, i32 } %207

208:                                              ; preds = %204
  %209 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %195, align 8, !tbaa !30
  %210 = bitcast %"class.appsdk::HIPCommandArgs"* %209 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %211 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %210, align 8, !tbaa !17
  %212 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %211, align 8
  %213 = invoke i32 %212(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %209, i32 %0, i8** %1)
          to label %214 unwind label %206

214:                                              ; preds = %208
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %214
  %217 = invoke i32 @_ZN9PrefixSum5setupEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %4)
          to label %218 unwind label %206

218:                                              ; preds = %216
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %218
  %221 = invoke i32 @_ZN9PrefixSum3runEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %4)
          to label %222 unwind label %206

222:                                              ; preds = %220
  %223 = invoke i32 @_ZN9PrefixSum13verifyResultsEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %4)
          to label %224 unwind label %206

224:                                              ; preds = %222
  %225 = icmp eq i32 %223, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %224
  %227 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 6
  %228 = bitcast float** %227 to i8**
  %229 = load i8*, i8** %228, align 8, !tbaa !72
  %230 = invoke i32 @hipFree(i8* %229)
          to label %231 unwind label %206

231:                                              ; preds = %226
  %232 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 7
  %233 = bitcast float** %232 to i8**
  %234 = load i8*, i8** %233, align 8, !tbaa !42
  %235 = invoke i32 @hipFree(i8* %234)
          to label %236 unwind label %206

236:                                              ; preds = %231
  invoke void @_ZN9PrefixSum10printStatsEv(%class.PrefixSum* nonnull align 8 dereferenceable(112) %4)
          to label %237 unwind label %206

237:                                              ; preds = %236, %224, %218, %214, %204
  %238 = phi i32 [ 1, %204 ], [ 1, %214 ], [ 1, %218 ], [ 1, %224 ], [ 0, %236 ]
  %239 = load float*, float** %174, align 8, !tbaa !12
  %240 = icmp eq float* %239, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = bitcast float* %239 to i8*
  call void @free(i8* %242) #27
  store float* null, float** %174, align 8, !tbaa !12
  br label %243

243:                                              ; preds = %241, %237
  %244 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %4, i64 0, i32 5
  %245 = load float*, float** %244, align 8, !tbaa !35
  %246 = icmp eq float* %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = bitcast float* %245 to i8*
  call void @free(i8* %248) #27
  br label %249

249:                                              ; preds = %243, %247
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %169) #27
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %5) #27
  ret i32 %238
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9PrefixSumD2Ev(%class.PrefixSum* nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 4
  %3 = load float*, float** %2, align 8, !tbaa !12
  %4 = icmp eq float* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = bitcast float* %3 to i8*
  tail call void @free(i8* %6) #27
  store float* null, float** %2, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %class.PrefixSum, %class.PrefixSum* %0, i64 0, i32 5
  %9 = load float*, float** %8, align 8, !tbaa !35
  %10 = icmp eq float* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = bitcast float* %9 to i8*
  tail call void @free(i8* %12) #27
  store float* null, float** %8, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #15

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #19

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
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !110
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !115
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !24
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #27
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
  %67 = load i8*, i8** %66, align 8, !tbaa !13
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %69, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #27
  br label %84

84:                                               ; preds = %64, %80, %83
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %70) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #27
  br i1 %65, label %85, label %339

85:                                               ; preds = %84
  call void @exit(i32 0) #32
  unreachable

86:                                               ; preds = %3, %38
  %87 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %87) #27
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !110
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !115
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !24
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #27
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
  %112 = load i8*, i8** %111, align 8, !tbaa !13
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %114, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #27
  br label %129

129:                                              ; preds = %109, %125, %128
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %87) #27
  br i1 %110, label %130, label %131

130:                                              ; preds = %129
  call void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  call void @exit(i32 0) #32
  unreachable

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %132) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
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
  %142 = load i8, i8* %141, align 1, !tbaa !24
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #27
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
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
  %166 = load i8, i8* %165, align 1, !tbaa !24
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !24
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #27
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
  %186 = load i8*, i8** %185, align 8, !tbaa !13
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #27
  br label %203

203:                                              ; preds = %183, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #27
  br label %204

204:                                              ; preds = %144, %203
  %205 = phi i1 [ %184, %203 ], [ true, %144 ]
  %206 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8, !tbaa !13
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %209, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #27
  br label %224

224:                                              ; preds = %204, %220, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %210) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #27
  br i1 %205, label %225, label %237

225:                                              ; preds = %224
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !13
  %229 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %226, i8* %228)
  %230 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %229)
  call void @exit(i32 0) #32
  unreachable

231:                                              ; preds = %131
  %232 = landingpad { i8*, i32 }
          cleanup
  br label %235

233:                                              ; preds = %155
  %234 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #27
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #27
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi { i8*, i32 } [ %234, %233 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #27
  br label %341

237:                                              ; preds = %224
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
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
  %248 = load i8, i8* %247, align 1, !tbaa !24
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #27
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #27
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
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
  %272 = load i8, i8* %271, align 1, !tbaa !24
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !24
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #27
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
  %292 = load i8*, i8** %291, align 8, !tbaa !13
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %294, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #27
  br label %309

309:                                              ; preds = %289, %305, %308
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %295) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #27
  br label %310

310:                                              ; preds = %250, %309
  %311 = phi i1 [ %290, %309 ], [ true, %250 ]
  %312 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8, !tbaa !13
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %315, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #27
  br label %330

330:                                              ; preds = %310, %326, %329
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %316) #27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #27
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #27
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #27
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi { i8*, i32 } [ %336, %335 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #27
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
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !54
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %18) #27
  %19 = icmp eq %"struct.appsdk::Option"* %18, %6
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %8
  tail call void @_ZdaPv(i8* nonnull %10) #30
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 12, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %25, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %40

40:                                               ; preds = %21, %36, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #27
  %41 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !13
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %44, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %59

59:                                               ; preds = %40, %55, %58
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %45) #27
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk14HIPCommandArgsD0Ev(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  tail call void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(93) %2) #27
  %3 = bitcast %"class.appsdk::HIPCommandArgs"* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %3) #30
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #20

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
  %16 = load i32, i32* %14, align 8, !tbaa !53
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !54
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #27
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !53
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !118

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !54
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #27
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !54
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !49
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !52
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
  %52 = load float*, float** %51, align 8, !tbaa !52
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), float* %52) #27
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i64 0, i64 0), i64 29)
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
  %67 = load i32, i32* %66, align 8, !tbaa !120
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #27
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !52
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), double* %81) #27
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i64 0, i64 0), i64 29)
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
  %96 = load i32, i32* %95, align 8, !tbaa !120
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #27
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !52
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i32* %110) #27
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i64 0, i64 0), i64 29)
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
  %125 = load i32, i32* %124, align 8, !tbaa !120
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #27
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !52
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %147, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #27
  br label %162

162:                                              ; preds = %161, %158, %146
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #27
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !13
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !16

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !121
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !37
  store i8 0, i8* %144, align 1, !tbaa !24
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #27
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i64 0, i64 0), i64 29)
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
  %187 = load i32, i32* %186, align 8, !tbaa !120
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #27
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !53
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
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #18

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !84
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !90
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !100
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !84
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !90
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !100
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !53
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !54
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !13
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !37
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !84
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !90
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #27
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !48, !alias.scope !122
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
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
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #27
  br label %87

91:                                               ; preds = %85
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !48, !noalias !125
  store i8* %95, i8** %47, align 8, !tbaa !48, !alias.scope !125
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !13, !noalias !125
  %96 = load i8*, i8** %47, align 8, !tbaa !13
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !37
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #27
  br label %116

116:                                              ; preds = %101, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #27
  %117 = load i8*, i8** %46, align 8, !tbaa !13
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %119, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #27
  br label %133

133:                                              ; preds = %116, %129, %132
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %49) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #27
  br label %142

134:                                              ; preds = %91
  %135 = landingpad { i8*, i32 }
          cleanup
  br label %138

136:                                              ; preds = %93
  %137 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #27
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { i8*, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #27
  br label %87

140:                                              ; preds = %59
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !84
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !90
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #27
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !54
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !48, !alias.scope !128
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !13, !noalias !128
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !37, !noalias !128
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2)
          to label %165 unwind label %167

165:                                              ; preds = %163
  %166 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %156)
          to label %169 unwind label %167

167:                                              ; preds = %165, %163, %142
  %168 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #27
  br label %87

169:                                              ; preds = %165
  %170 = load i8*, i8** %51, align 8, !tbaa !13
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !37
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !13
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #27
  br label %192

192:                                              ; preds = %175, %188, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #27
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !54
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !13
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !37
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !84
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !90
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !100
  br i1 %199, label %216, label %212

212:                                              ; preds = %192
  %213 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %195, i64 %198)
  br label %218

214:                                              ; preds = %169
  %215 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #27
  br label %87

216:                                              ; preds = %192
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #27
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !54
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #27
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !13
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !37
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !13
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #27
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %233, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #27
  br label %247

247:                                              ; preds = %230, %243, %246
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %55) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #27
  %248 = add nuw nsw i64 %60, 1
  %249 = load i32, i32* %42, align 8, !tbaa !53
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !131

252:                                              ; preds = %224
  %253 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #27
  br label %87
}

declare dso_local void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare dso_local void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #22

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #23

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: uwtable
declare dso_local void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80)) local_unnamed_addr #5 align 2

declare dso_local void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_prefixsum.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #27
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z15group_prefixSumPfS_jj to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, i32, i32)** @_Z16global_prefixSumPfjj to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

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
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #25 = { inaccessiblememonly nofree nounwind willreturn }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { allocsize(0) }
attributes #32 = { noreturn nounwind }

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
!9 = !{!10, !8, i64 24}
!10 = !{!"_ZTS9PrefixSum", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !8, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104}
!11 = !{!"double", !5, i64 0}
!12 = !{!10, !4, i64 32}
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
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !5, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!10, !4, i64 64}
!30 = !{!10, !4, i64 104}
!31 = !{!32, !21, i64 77}
!32 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !21, i64 40, !14, i64 48, !33, i64 56, !21, i64 76, !21, i64 77, !21, i64 78, !14, i64 80}
!33 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!34 = !{i8 0, i8 2}
!35 = !{!10, !4, i64 40}
!36 = !{!32, !21, i64 76}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSNSs9_Rep_baseE", !39, i64 0, !39, i64 8, !8, i64 16}
!39 = !{!"long", !5, i64 0}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = !{!10, !4, i64 56}
!43 = !{!10, !4, i64 88}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !28}
!48 = !{!15, !4, i64 0}
!49 = !{!50, !51, i64 32}
!50 = !{!"_ZTSN6appsdk6OptionE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !51, i64 32, !4, i64 40}
!51 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!52 = !{!50, !4, i64 40}
!53 = !{!32, !8, i64 8}
!54 = !{!32, !4, i64 32}
!55 = distinct !{!55, !28}
!56 = !{i32 0, i32 33}
!57 = !{!10, !4, i64 80}
!58 = !{!59, !4, i64 8}
!59 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!61 = !{!59, !4, i64 0}
!62 = !{!10, !11, i64 8}
!63 = !{!64, !65, i64 8}
!64 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !14, i64 0, !65, i64 8, !65, i64 16, !65, i64 24}
!65 = !{!"long long", !5, i64 0}
!66 = !{!59, !4, i64 16}
!67 = !{!68, !39, i64 0}
!68 = !{!"_ZTS7timeval", !39, i64 0, !39, i64 8}
!69 = !{!68, !39, i64 8}
!70 = !{!64, !65, i64 24}
!71 = !{!64, !65, i64 16}
!72 = !{!10, !4, i64 48}
!73 = distinct !{!73, !28}
!74 = !{!10, !8, i64 72}
!75 = distinct !{!75, !28}
!76 = !{!10, !4, i64 96}
!77 = !{!10, !11, i64 16}
!78 = distinct !{!78, !46}
!79 = distinct !{!79, !28}
!80 = !{!32, !21, i64 78}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!83 = distinct !{!83, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!84 = !{!85, !86, i64 24}
!85 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !86, i64 24, !87, i64 28, !87, i64 32, !4, i64 40, !88, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !89, i64 208}
!86 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!87 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!88 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !39, i64 8}
!89 = !{!"_ZTSSt6locale", !4, i64 0}
!90 = !{!86, !86, i64 0}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!93 = distinct !{!93, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!96 = distinct !{!96, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!99 = distinct !{!99, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!100 = !{!85, !39, i64 16}
!101 = distinct !{!101, !28}
!102 = !{!103, !8, i64 332}
!103 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !39, i64 256, !39, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !39, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !104, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !39, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !39, i64 712, !39, i64 720, !39, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!104 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!105 = !{!103, !8, i64 328}
!106 = !{!103, !39, i64 320}
!107 = !{!103, !39, i64 264}
!108 = !{!10, !8, i64 0}
!109 = !{!33, !8, i64 16}
!110 = !{!32, !8, i64 12}
!111 = !{!32, !8, i64 16}
!112 = !{!113, !8, i64 88}
!113 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !21, i64 92}
!114 = !{!113, !21, i64 92}
!115 = !{!32, !4, i64 24}
!116 = distinct !{!116, !28}
!117 = distinct !{!117, !28}
!118 = distinct !{!118, !28}
!119 = !{!21, !21, i64 0}
!120 = !{!85, !87, i64 32}
!121 = !{!38, !8, i64 16}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!127 = distinct !{!127, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!130 = distinct !{!130, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!131 = distinct !{!131, !28}
