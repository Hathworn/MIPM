; ModuleID = 'dwthaar1d/dwthaar1d.cpp'
source_filename = "dwthaar1d/dwthaar1d.cpp"
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
%class.DwtHaar1D = type { i32, float*, float*, float*, float*, double, double, float*, float*, float*, i32, i32, i32, i32, float*, float*, float*, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"*, i32, i32, i32, i32 }
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
@_Z9dwtHaar1DPfS_S_jjjj = dso_local constant void (float*, float*, float*, i32, i32, i32, i32)* @_Z24__device_stub__dwtHaar1DPfS_S_jjjj, align 8
@.str = private unnamed_addr constant [46 x i8] c"Failed to allocate host memory. (tempOutData)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dwthaar1d/dwthaar1d.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"signalLength > 2 ^ 23 not supported\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (inData)\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to allocate host memory. (dOutData)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Failed to allocate host memory.(dPartialOutData)\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Failed to allocate host memory. (hOutData)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Input Signal\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"getLevels() failed\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"signalLength\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Length of the signal\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"dOutData\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"SignalLength\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Time(sec)\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"[Transfer+Kernel]Time(sec)\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.50 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"HIP-Examples-Application-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.61 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.68 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.75 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [23 x i8] c"_Z9dwtHaar1DPfS_S_jjjj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_dwthaar1d.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__dwtHaar1DPfS_S_jjjj(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, i32 %6) #3 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store float* %0, float** %8, align 8, !tbaa !3
  store float* %1, float** %9, align 8, !tbaa !3
  store float* %2, float** %10, align 8, !tbaa !3
  store i32 %3, i32* %11, align 4, !tbaa !7
  store i32 %4, i32* %12, align 4, !tbaa !7
  store i32 %5, i32* %13, align 4, !tbaa !7
  store i32 %6, i32* %14, align 4, !tbaa !7
  %19 = alloca [7 x i8*], align 16
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 0
  %21 = bitcast [7 x i8*]* %19 to float***
  store float** %8, float*** %21, align 16
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 1
  %23 = bitcast i8** %22 to float***
  store float** %9, float*** %23, align 8
  %24 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 2
  %25 = bitcast i8** %24 to float***
  store float** %10, float*** %25, align 16
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 3
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 8
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 4
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 16
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 5
  %31 = bitcast i8** %30 to i32**
  store i32* %13, i32** %31, align 8
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 6
  %33 = bitcast i8** %32 to i32**
  store i32* %14, i32** %33, align 16
  %34 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %15, %struct.dim3* nonnull %16, i64* nonnull %17, i8** nonnull %18)
  %35 = load i64, i64* %17, align 8
  %36 = bitcast i8** %18 to %struct.ihipStream_t**
  %37 = load %struct.ihipStream_t*, %struct.ihipStream_t** %36, align 8
  %38 = bitcast %struct.dim3* %15 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = bitcast %struct.dim3* %16 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32, i32, i32)** @_Z9dwtHaar1DPfS_S_jjjj to i8*), i64 %39, i32 %41, i64 %43, i32 %45, i8** nonnull %20, i64 %35, %struct.ihipStream_t* %37)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local i32 @_ZN9DwtHaar1D20calApproxFinalOnHostEv(%class.DwtHaar1D* nocapture nonnull readonly align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !9
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = tail call noalias align 16 i8* @malloc(i64 %8) #26
  %10 = bitcast i8* %9 to float*
  %11 = icmp eq i8* %9, null
  br i1 %11, label %12, label %69

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %13) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %14 unwind label %67

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !12
  %17 = getelementptr inbounds i8, i8* %16, i64 -24
  %18 = bitcast i8* %17 to %"struct.std::basic_string<char>::_Rep"*
  %19 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %19) #26
  %20 = icmp eq i8* %17, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %20, label %33, label %21, !prof !15

21:                                               ; preds = %14
  %22 = getelementptr inbounds i8, i8* %16, i64 -8
  %23 = bitcast i8* %22 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %24, label %26

24:                                               ; preds = %21
  %25 = atomicrmw volatile add i32* %23, i32 -1 acq_rel, align 4
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %23, align 8, !tbaa !7
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %23, align 8, !tbaa !7
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %18, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %33

33:                                               ; preds = %14, %29, %32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %19) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %13) #26
  %34 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %35 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 283)
  %38 = bitcast %"class.std::basic_ostream"* %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !16
  %40 = getelementptr i8, i8* %39, i64 -24
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %"class.std::basic_ostream"* %37 to i8*
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  %45 = getelementptr inbounds i8, i8* %44, i64 240
  %46 = bitcast i8* %45 to %"class.std::ctype"**
  %47 = load %"class.std::ctype"*, %"class.std::ctype"** %46, align 8, !tbaa !18
  %48 = icmp eq %"class.std::ctype"* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

50:                                               ; preds = %33
  %51 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %47, i64 0, i32 8
  %52 = load i8, i8* %51, align 8, !tbaa !21
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %47, i64 0, i32 9, i64 10
  %56 = load i8, i8* %55, align 1, !tbaa !23
  br label %63

57:                                               ; preds = %50
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %47)
  %58 = bitcast %"class.std::ctype"* %47 to i8 (%"class.std::ctype"*, i8)***
  %59 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %58, align 8, !tbaa !16
  %60 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %59, i64 6
  %61 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %60, align 8
  %62 = call signext i8 %61(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %47, i8 signext 10)
  br label %63

63:                                               ; preds = %54, %57
  %64 = phi i8 [ %56, %54 ], [ %62, %57 ]
  %65 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %37, i8 signext %64)
  %66 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %65)
  br label %159

67:                                               ; preds = %12
  %68 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %13) #26
  resume { i8*, i32 } %68

69:                                               ; preds = %1
  %70 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 1
  %71 = bitcast float** %70 to i8**
  %72 = load i8*, i8** %71, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 4 %72, i64 %8, i1 false)
  %73 = icmp eq i32 %6, 0
  br i1 %73, label %158, label %83

74:                                               ; preds = %83
  %75 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 4
  %76 = bitcast float** %75 to i8**
  %77 = load i8*, i8** %76, align 8
  %78 = zext i32 %92 to i64
  %79 = shl nuw nsw i64 %78, 2
  %80 = icmp ugt i32 %92, 1
  br i1 %80, label %81, label %158

81:                                               ; preds = %74
  %82 = bitcast i8* %77 to float*
  br label %95

83:                                               ; preds = %69, %83
  %84 = phi i64 [ %91, %83 ], [ 0, %69 ]
  %85 = phi i32 [ %92, %83 ], [ %6, %69 ]
  %86 = getelementptr inbounds float, float* %10, i64 %84
  %87 = load float, float* %86, align 4, !tbaa !25
  %88 = uitofp i32 %85 to float
  %89 = tail call contract float @sqrtf(float %88) #26
  %90 = fdiv contract float %87, %89
  store float %90, float* %86, align 4, !tbaa !25
  %91 = add nuw nsw i64 %84, 1
  %92 = load i32, i32* %5, align 8, !tbaa !9
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %83, label %74, !llvm.loop !27

95:                                               ; preds = %139, %81
  %96 = phi i32 [ %92, %81 ], [ %98, %139 ]
  %97 = phi float* [ %82, %81 ], [ %140, %139 ]
  %98 = lshr i32 %96, 1
  %99 = zext i32 %98 to i64
  %100 = icmp ugt i32 %98, 1
  %101 = select i1 %100, i32 %98, i32 1
  %102 = zext i32 %101 to i64
  %103 = icmp ult i32 %101, 4
  br i1 %103, label %135, label %104

104:                                              ; preds = %95
  %105 = getelementptr float, float* %97, i64 %102
  %106 = getelementptr float, float* %97, i64 %99
  %107 = add nuw nsw i64 %99, %102
  %108 = getelementptr float, float* %97, i64 %107
  %109 = icmp ult float* %97, %108
  %110 = icmp ult float* %106, %105
  %111 = and i1 %109, %110
  br i1 %111, label %135, label %112

112:                                              ; preds = %104
  %113 = and i64 %102, 2147483644
  br label %114

114:                                              ; preds = %114, %112
  %115 = phi i64 [ 0, %112 ], [ %131, %114 ]
  %116 = shl nuw i64 %115, 1
  %117 = getelementptr inbounds float, float* %10, i64 %116
  %118 = bitcast float* %117 to <8 x float>*
  %119 = load <8 x float>, <8 x float>* %118, align 16, !tbaa !25
  %120 = shufflevector <8 x float> %119, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %121 = shufflevector <8 x float> %119, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %122 = fadd contract <4 x float> %120, %121
  %123 = fdiv contract <4 x float> %122, <float 0x3FF6A09E60000000, float 0x3FF6A09E60000000, float 0x3FF6A09E60000000, float 0x3FF6A09E60000000>
  %124 = getelementptr inbounds float, float* %97, i64 %115
  %125 = bitcast float* %124 to <4 x float>*
  store <4 x float> %123, <4 x float>* %125, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %126 = fsub contract <4 x float> %120, %121
  %127 = fdiv contract <4 x float> %126, <float 0x3FF6A09E60000000, float 0x3FF6A09E60000000, float 0x3FF6A09E60000000, float 0x3FF6A09E60000000>
  %128 = add nuw nsw i64 %115, %99
  %129 = getelementptr inbounds float, float* %97, i64 %128
  %130 = bitcast float* %129 to <4 x float>*
  store <4 x float> %127, <4 x float>* %130, align 4, !tbaa !25, !alias.scope !32
  %131 = add nuw i64 %115, 4
  %132 = icmp eq i64 %131, %113
  br i1 %132, label %133, label %114, !llvm.loop !34

133:                                              ; preds = %114
  %134 = icmp eq i64 %113, %102
  br i1 %134, label %137, label %135

135:                                              ; preds = %104, %95, %133
  %136 = phi i64 [ 0, %104 ], [ 0, %95 ], [ %113, %133 ]
  br label %141

137:                                              ; preds = %141, %133
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 4 %77, i64 %79, i1 false)
  %138 = icmp ugt i32 %96, 3
  br i1 %138, label %139, label %158, !llvm.loop !36

139:                                              ; preds = %137
  %140 = load float*, float** %75, align 8
  br label %95

141:                                              ; preds = %135, %141
  %142 = phi i64 [ %156, %141 ], [ %136, %135 ]
  %143 = shl nuw i64 %142, 1
  %144 = getelementptr inbounds float, float* %10, i64 %143
  %145 = load float, float* %144, align 8, !tbaa !25
  %146 = or i64 %143, 1
  %147 = getelementptr inbounds float, float* %10, i64 %146
  %148 = load float, float* %147, align 4, !tbaa !25
  %149 = fadd contract float %145, %148
  %150 = fdiv contract float %149, 0x3FF6A09E60000000
  %151 = getelementptr inbounds float, float* %97, i64 %142
  store float %150, float* %151, align 4, !tbaa !25
  %152 = fsub contract float %145, %148
  %153 = fdiv contract float %152, 0x3FF6A09E60000000
  %154 = add nuw nsw i64 %142, %99
  %155 = getelementptr inbounds float, float* %97, i64 %154
  store float %153, float* %155, align 4, !tbaa !25
  %156 = add nuw nsw i64 %142, 1
  %157 = icmp eq i64 %156, %102
  br i1 %157, label %137, label %141, !llvm.loop !37

158:                                              ; preds = %137, %69, %74
  tail call void @free(i8* %9) #26
  br label %159

159:                                              ; preds = %158, %63
  %160 = phi i32 [ 1, %63 ], [ 0, %158 ]
  ret i32 %160
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #8 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !38
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !16
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !18
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !23
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !16
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

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local i32 @_ZN9DwtHaar1D9getLevelsEjPj(%class.DwtHaar1D* nocapture nonnull readnone align 8 %0, i32 %1, i32* nocapture writeonly %2) local_unnamed_addr #12 align 2 {
  switch i32 %1, label %29 [
    i32 1, label %27
    i32 2, label %4
    i32 4, label %5
    i32 8, label %6
    i32 16, label %7
    i32 32, label %8
    i32 64, label %9
    i32 128, label %10
    i32 256, label %11
    i32 512, label %12
    i32 1024, label %13
    i32 2048, label %14
    i32 4096, label %15
    i32 8192, label %16
    i32 16384, label %17
    i32 32768, label %18
    i32 65536, label %19
    i32 131072, label %20
    i32 262144, label %21
    i32 524288, label %22
    i32 1048576, label %23
    i32 2097152, label %24
    i32 4194304, label %25
    i32 8388608, label %26
  ]

4:                                                ; preds = %3
  br label %27

5:                                                ; preds = %3
  br label %27

6:                                                ; preds = %3
  br label %27

7:                                                ; preds = %3
  br label %27

8:                                                ; preds = %3
  br label %27

9:                                                ; preds = %3
  br label %27

10:                                               ; preds = %3
  br label %27

11:                                               ; preds = %3
  br label %27

12:                                               ; preds = %3
  br label %27

13:                                               ; preds = %3
  br label %27

14:                                               ; preds = %3
  br label %27

15:                                               ; preds = %3
  br label %27

16:                                               ; preds = %3
  br label %27

17:                                               ; preds = %3
  br label %27

18:                                               ; preds = %3
  br label %27

19:                                               ; preds = %3
  br label %27

20:                                               ; preds = %3
  br label %27

21:                                               ; preds = %3
  br label %27

22:                                               ; preds = %3
  br label %27

23:                                               ; preds = %3
  br label %27

24:                                               ; preds = %3
  br label %27

25:                                               ; preds = %3
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %3, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %28 = phi i32 [ 0, %3 ], [ 1, %4 ], [ 2, %5 ], [ 3, %6 ], [ 4, %7 ], [ 5, %8 ], [ 6, %9 ], [ 7, %10 ], [ 8, %11 ], [ 9, %12 ], [ 10, %13 ], [ 11, %14 ], [ 12, %15 ], [ 13, %16 ], [ 14, %17 ], [ 15, %18 ], [ 16, %19 ], [ 17, %20 ], [ 18, %21 ], [ 19, %22 ], [ 20, %23 ], [ 21, %24 ], [ 22, %25 ], [ 23, %26 ]
  store i32 %28, i32* %2, align 4, !tbaa !7
  br label %29

29:                                               ; preds = %3, %27
  %30 = phi i32 [ 0, %27 ], [ 1, %3 ]
  ret i32 %30
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9DwtHaar1D14setupDwtHaar1DEv(%class.DwtHaar1D* nocapture nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::allocator.0", align 1
  %13 = alloca %"class.std::basic_string", align 8
  %14 = alloca %"class.std::allocator.0", align 1
  %15 = alloca %"class.std::basic_string", align 8
  %16 = alloca %"class.std::allocator.0", align 1
  %17 = alloca %"class.std::basic_string", align 8
  %18 = alloca %"class.std::allocator.0", align 1
  %19 = alloca %"class.std::basic_string", align 8
  %20 = alloca %"class.std::allocator.0", align 1
  %21 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 0
  %22 = load i32, i32* %21, align 8, !tbaa !9
  %23 = add i32 %22, -1
  %24 = lshr i32 %23, 1
  %25 = or i32 %24, %23
  %26 = lshr i32 %25, 2
  %27 = or i32 %26, %25
  %28 = lshr i32 %27, 4
  %29 = or i32 %28, %27
  %30 = lshr i32 %29, 8
  %31 = or i32 %30, %29
  %32 = add i32 %31, 1
  store i32 %32, i32* %21, align 8, !tbaa !9
  %33 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #26
  store i32 0, i32* %8, align 4, !tbaa !7
  %34 = call i32 @_ZN9DwtHaar1D9getLevelsEjPj(%class.DwtHaar1D* nonnull align 8 undef, i32 %32, i32* nonnull %8)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %98, label %36

36:                                               ; preds = %1
  %37 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %37) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10)
          to label %38 unwind label %92

38:                                               ; preds = %36
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %9)
          to label %39 unwind label %94

39:                                               ; preds = %38
  %40 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8, i8* %41, i64 -24
  %43 = bitcast i8* %42 to %"struct.std::basic_string<char>::_Rep"*
  %44 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %44) #26
  %45 = icmp eq i8* %42, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %45, label %58, label %46, !prof !15

46:                                               ; preds = %39
  %47 = getelementptr inbounds i8, i8* %41, i64 -8
  %48 = bitcast i8* %47 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %49, label %51

49:                                               ; preds = %46
  %50 = atomicrmw volatile add i32* %48, i32 -1 acq_rel, align 4
  br label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %48, align 8, !tbaa !7
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %48, align 8, !tbaa !7
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %43, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %58

58:                                               ; preds = %39, %54, %57
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %44) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #26
  %59 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %60 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %61 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %62 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 338)
  %63 = bitcast %"class.std::basic_ostream"* %62 to i8**
  %64 = load i8*, i8** %63, align 8, !tbaa !16
  %65 = getelementptr i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = bitcast %"class.std::basic_ostream"* %62 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  %70 = getelementptr inbounds i8, i8* %69, i64 240
  %71 = bitcast i8* %70 to %"class.std::ctype"**
  %72 = load %"class.std::ctype"*, %"class.std::ctype"** %71, align 8, !tbaa !18
  %73 = icmp eq %"class.std::ctype"* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

75:                                               ; preds = %58
  %76 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %72, i64 0, i32 8
  %77 = load i8, i8* %76, align 8, !tbaa !21
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %72, i64 0, i32 9, i64 10
  %81 = load i8, i8* %80, align 1, !tbaa !23
  br label %88

82:                                               ; preds = %75
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %72)
  %83 = bitcast %"class.std::ctype"* %72 to i8 (%"class.std::ctype"*, i8)***
  %84 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %83, align 8, !tbaa !16
  %85 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %84, i64 6
  %86 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %85, align 8
  %87 = call signext i8 %86(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %72, i8 signext 10)
  br label %88

88:                                               ; preds = %79, %82
  %89 = phi i8 [ %81, %79 ], [ %87, %82 ]
  %90 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %62, i8 signext %89)
  %91 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %90)
  br label %422

92:                                               ; preds = %36
  %93 = landingpad { i8*, i32 }
          cleanup
  br label %96

94:                                               ; preds = %38
  %95 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #26
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi { i8*, i32 } [ %95, %94 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #26
  br label %424

98:                                               ; preds = %1
  %99 = load i32, i32* %21, align 8, !tbaa !9
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 2
  %102 = tail call noalias align 16 i8* @malloc(i64 %101) #26
  %103 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 1
  %104 = bitcast float** %103 to i8**
  store i8* %102, i8** %104, align 8, !tbaa !24
  %105 = icmp eq i8* %102, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = icmp eq i32 %99, 0
  br i1 %107, label %170, label %178

108:                                              ; preds = %98
  %109 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %12, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %109) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %12)
          to label %110 unwind label %164

110:                                              ; preds = %108
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %11)
          to label %111 unwind label %166

111:                                              ; preds = %110
  %112 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i64 0, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8, !tbaa !12
  %114 = getelementptr inbounds i8, i8* %113, i64 -24
  %115 = bitcast i8* %114 to %"struct.std::basic_string<char>::_Rep"*
  %116 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %116) #26
  %117 = icmp eq i8* %114, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %117, label %130, label %118, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %115, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #26
  br label %130

130:                                              ; preds = %111, %126, %129
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %116) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %109) #26
  %131 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %132 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %133 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %134 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 342)
  %135 = bitcast %"class.std::basic_ostream"* %134 to i8**
  %136 = load i8*, i8** %135, align 8, !tbaa !16
  %137 = getelementptr i8, i8* %136, i64 -24
  %138 = bitcast i8* %137 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = bitcast %"class.std::basic_ostream"* %134 to i8*
  %141 = getelementptr inbounds i8, i8* %140, i64 %139
  %142 = getelementptr inbounds i8, i8* %141, i64 240
  %143 = bitcast i8* %142 to %"class.std::ctype"**
  %144 = load %"class.std::ctype"*, %"class.std::ctype"** %143, align 8, !tbaa !18
  %145 = icmp eq %"class.std::ctype"* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

147:                                              ; preds = %130
  %148 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %144, i64 0, i32 8
  %149 = load i8, i8* %148, align 8, !tbaa !21
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %144, i64 0, i32 9, i64 10
  %153 = load i8, i8* %152, align 1, !tbaa !23
  br label %160

154:                                              ; preds = %147
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %144)
  %155 = bitcast %"class.std::ctype"* %144 to i8 (%"class.std::ctype"*, i8)***
  %156 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %155, align 8, !tbaa !16
  %157 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %156, i64 6
  %158 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %157, align 8
  %159 = call signext i8 %158(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %144, i8 signext 10)
  br label %160

160:                                              ; preds = %151, %154
  %161 = phi i8 [ %153, %151 ], [ %159, %154 ]
  %162 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %134, i8 signext %161)
  %163 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %162)
  br label %422

164:                                              ; preds = %108
  %165 = landingpad { i8*, i32 }
          cleanup
  br label %168

166:                                              ; preds = %110
  %167 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %11) #26
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi { i8*, i32 } [ %167, %166 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %109) #26
  br label %424

170:                                              ; preds = %178, %106
  %171 = phi i32 [ 0, %106 ], [ %186, %178 ]
  %172 = zext i32 %171 to i64
  %173 = shl nuw nsw i64 %172, 2
  %174 = call i8* @calloc(i64 1, i64 %173)
  %175 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 2
  %176 = bitcast float** %175 to i8**
  store i8* %174, i8** %176, align 8, !tbaa !41
  %177 = icmp eq i8* %174, null
  br i1 %177, label %189, label %251

178:                                              ; preds = %106, %178
  %179 = phi i64 [ %185, %178 ], [ 0, %106 ]
  %180 = tail call i32 @rand() #26
  %181 = srem i32 %180, 10
  %182 = sitofp i32 %181 to float
  %183 = load float*, float** %103, align 8, !tbaa !24
  %184 = getelementptr inbounds float, float* %183, i64 %179
  store float %182, float* %184, align 4, !tbaa !25
  %185 = add nuw nsw i64 %179, 1
  %186 = load i32, i32* %21, align 8, !tbaa !9
  %187 = zext i32 %186 to i64
  %188 = icmp ult i64 %185, %187
  br i1 %188, label %178, label %170, !llvm.loop !42

189:                                              ; preds = %170
  %190 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %190) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14)
          to label %191 unwind label %245

191:                                              ; preds = %189
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %13)
          to label %192 unwind label %247

192:                                              ; preds = %191
  %193 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %13, i64 0, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8, !tbaa !12
  %195 = getelementptr inbounds i8, i8* %194, i64 -24
  %196 = bitcast i8* %195 to %"struct.std::basic_string<char>::_Rep"*
  %197 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %197) #26
  %198 = icmp eq i8* %195, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %198, label %211, label %199, !prof !15

199:                                              ; preds = %192
  %200 = getelementptr inbounds i8, i8* %194, i64 -8
  %201 = bitcast i8* %200 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %202, label %204

202:                                              ; preds = %199
  %203 = atomicrmw volatile add i32* %201, i32 -1 acq_rel, align 4
  br label %207

204:                                              ; preds = %199
  %205 = load i32, i32* %201, align 8, !tbaa !7
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %201, align 8, !tbaa !7
  br label %207

207:                                              ; preds = %204, %202
  %208 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %196, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %211

211:                                              ; preds = %192, %207, %210
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %197) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %190) #26
  %212 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %213 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %214 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %215 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 350)
  %216 = bitcast %"class.std::basic_ostream"* %215 to i8**
  %217 = load i8*, i8** %216, align 8, !tbaa !16
  %218 = getelementptr i8, i8* %217, i64 -24
  %219 = bitcast i8* %218 to i64*
  %220 = load i64, i64* %219, align 8
  %221 = bitcast %"class.std::basic_ostream"* %215 to i8*
  %222 = getelementptr inbounds i8, i8* %221, i64 %220
  %223 = getelementptr inbounds i8, i8* %222, i64 240
  %224 = bitcast i8* %223 to %"class.std::ctype"**
  %225 = load %"class.std::ctype"*, %"class.std::ctype"** %224, align 8, !tbaa !18
  %226 = icmp eq %"class.std::ctype"* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %211
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

228:                                              ; preds = %211
  %229 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %225, i64 0, i32 8
  %230 = load i8, i8* %229, align 8, !tbaa !21
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %225, i64 0, i32 9, i64 10
  %234 = load i8, i8* %233, align 1, !tbaa !23
  br label %241

235:                                              ; preds = %228
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %225)
  %236 = bitcast %"class.std::ctype"* %225 to i8 (%"class.std::ctype"*, i8)***
  %237 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %236, align 8, !tbaa !16
  %238 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %237, i64 6
  %239 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %238, align 8
  %240 = call signext i8 %239(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %225, i8 signext 10)
  br label %241

241:                                              ; preds = %232, %235
  %242 = phi i8 [ %234, %232 ], [ %240, %235 ]
  %243 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %215, i8 signext %242)
  %244 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %243)
  br label %422

245:                                              ; preds = %189
  %246 = landingpad { i8*, i32 }
          cleanup
  br label %249

247:                                              ; preds = %191
  %248 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13) #26
  br label %249

249:                                              ; preds = %247, %245
  %250 = phi { i8*, i32 } [ %248, %247 ], [ %246, %245 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %190) #26
  br label %424

251:                                              ; preds = %170
  %252 = call i8* @calloc(i64 1, i64 %173)
  %253 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 3
  %254 = bitcast float** %253 to i8**
  store i8* %252, i8** %254, align 8, !tbaa !43
  %255 = icmp eq i8* %252, null
  br i1 %255, label %256, label %318

256:                                              ; preds = %251
  %257 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %16, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %257) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %16)
          to label %258 unwind label %312

258:                                              ; preds = %256
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %15)
          to label %259 unwind label %314

259:                                              ; preds = %258
  %260 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %15, i64 0, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8, !tbaa !12
  %262 = getelementptr inbounds i8, i8* %261, i64 -24
  %263 = bitcast i8* %262 to %"struct.std::basic_string<char>::_Rep"*
  %264 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %264) #26
  %265 = icmp eq i8* %262, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %265, label %278, label %266, !prof !15

266:                                              ; preds = %259
  %267 = getelementptr inbounds i8, i8* %261, i64 -8
  %268 = bitcast i8* %267 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %269, label %271

269:                                              ; preds = %266
  %270 = atomicrmw volatile add i32* %268, i32 -1 acq_rel, align 4
  br label %274

271:                                              ; preds = %266
  %272 = load i32, i32* %268, align 8, !tbaa !7
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %268, align 8, !tbaa !7
  br label %274

274:                                              ; preds = %271, %269
  %275 = phi i32 [ %270, %269 ], [ %272, %271 ]
  %276 = icmp slt i32 %275, 1
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %263, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %278

278:                                              ; preds = %259, %274, %277
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %264) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %257) #26
  %279 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %280 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %281 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %282 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 356)
  %283 = bitcast %"class.std::basic_ostream"* %282 to i8**
  %284 = load i8*, i8** %283, align 8, !tbaa !16
  %285 = getelementptr i8, i8* %284, i64 -24
  %286 = bitcast i8* %285 to i64*
  %287 = load i64, i64* %286, align 8
  %288 = bitcast %"class.std::basic_ostream"* %282 to i8*
  %289 = getelementptr inbounds i8, i8* %288, i64 %287
  %290 = getelementptr inbounds i8, i8* %289, i64 240
  %291 = bitcast i8* %290 to %"class.std::ctype"**
  %292 = load %"class.std::ctype"*, %"class.std::ctype"** %291, align 8, !tbaa !18
  %293 = icmp eq %"class.std::ctype"* %292, null
  br i1 %293, label %294, label %295

294:                                              ; preds = %278
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

295:                                              ; preds = %278
  %296 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %292, i64 0, i32 8
  %297 = load i8, i8* %296, align 8, !tbaa !21
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %292, i64 0, i32 9, i64 10
  %301 = load i8, i8* %300, align 1, !tbaa !23
  br label %308

302:                                              ; preds = %295
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %292)
  %303 = bitcast %"class.std::ctype"* %292 to i8 (%"class.std::ctype"*, i8)***
  %304 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %303, align 8, !tbaa !16
  %305 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %304, i64 6
  %306 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %305, align 8
  %307 = call signext i8 %306(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %292, i8 signext 10)
  br label %308

308:                                              ; preds = %299, %302
  %309 = phi i8 [ %301, %299 ], [ %307, %302 ]
  %310 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %282, i8 signext %309)
  %311 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %310)
  br label %422

312:                                              ; preds = %256
  %313 = landingpad { i8*, i32 }
          cleanup
  br label %316

314:                                              ; preds = %258
  %315 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15) #26
  br label %316

316:                                              ; preds = %314, %312
  %317 = phi { i8*, i32 } [ %315, %314 ], [ %313, %312 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %257) #26
  br label %424

318:                                              ; preds = %251
  %319 = call i8* @calloc(i64 1, i64 %173)
  %320 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 4
  %321 = bitcast float** %320 to i8**
  store i8* %319, i8** %321, align 8, !tbaa !44
  %322 = icmp eq i8* %319, null
  br i1 %322, label %323, label %385

323:                                              ; preds = %318
  %324 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %324) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %18)
          to label %325 unwind label %379

325:                                              ; preds = %323
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %17)
          to label %326 unwind label %381

326:                                              ; preds = %325
  %327 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %17, i64 0, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8, !tbaa !12
  %329 = getelementptr inbounds i8, i8* %328, i64 -24
  %330 = bitcast i8* %329 to %"struct.std::basic_string<char>::_Rep"*
  %331 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %331) #26
  %332 = icmp eq i8* %329, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %332, label %345, label %333, !prof !15

333:                                              ; preds = %326
  %334 = getelementptr inbounds i8, i8* %328, i64 -8
  %335 = bitcast i8* %334 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %336, label %338

336:                                              ; preds = %333
  %337 = atomicrmw volatile add i32* %335, i32 -1 acq_rel, align 4
  br label %341

338:                                              ; preds = %333
  %339 = load i32, i32* %335, align 8, !tbaa !7
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %335, align 8, !tbaa !7
  br label %341

341:                                              ; preds = %338, %336
  %342 = phi i32 [ %337, %336 ], [ %339, %338 ]
  %343 = icmp slt i32 %342, 1
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %330, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %345

345:                                              ; preds = %326, %341, %344
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %331) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %324) #26
  %346 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %347 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %348 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %349 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 361)
  %350 = bitcast %"class.std::basic_ostream"* %349 to i8**
  %351 = load i8*, i8** %350, align 8, !tbaa !16
  %352 = getelementptr i8, i8* %351, i64 -24
  %353 = bitcast i8* %352 to i64*
  %354 = load i64, i64* %353, align 8
  %355 = bitcast %"class.std::basic_ostream"* %349 to i8*
  %356 = getelementptr inbounds i8, i8* %355, i64 %354
  %357 = getelementptr inbounds i8, i8* %356, i64 240
  %358 = bitcast i8* %357 to %"class.std::ctype"**
  %359 = load %"class.std::ctype"*, %"class.std::ctype"** %358, align 8, !tbaa !18
  %360 = icmp eq %"class.std::ctype"* %359, null
  br i1 %360, label %361, label %362

361:                                              ; preds = %345
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

362:                                              ; preds = %345
  %363 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %359, i64 0, i32 8
  %364 = load i8, i8* %363, align 8, !tbaa !21
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %359, i64 0, i32 9, i64 10
  %368 = load i8, i8* %367, align 1, !tbaa !23
  br label %375

369:                                              ; preds = %362
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %359)
  %370 = bitcast %"class.std::ctype"* %359 to i8 (%"class.std::ctype"*, i8)***
  %371 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %370, align 8, !tbaa !16
  %372 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %371, i64 6
  %373 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %372, align 8
  %374 = call signext i8 %373(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %359, i8 signext 10)
  br label %375

375:                                              ; preds = %366, %369
  %376 = phi i8 [ %368, %366 ], [ %374, %369 ]
  %377 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %349, i8 signext %376)
  %378 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %377)
  br label %422

379:                                              ; preds = %323
  %380 = landingpad { i8*, i32 }
          cleanup
  br label %383

381:                                              ; preds = %325
  %382 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17) #26
  br label %383

383:                                              ; preds = %381, %379
  %384 = phi { i8*, i32 } [ %382, %381 ], [ %380, %379 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %324) #26
  br label %424

385:                                              ; preds = %318
  %386 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 18
  %387 = bitcast %"class.appsdk::HIPCommandArgs"** %386 to %"class.appsdk::SDKCmdArgsParser"**
  %388 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %387, align 8, !tbaa !45
  %389 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %388, i64 0, i32 9
  %390 = load i8, i8* %389, align 4, !tbaa !46, !range !49
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %392, label %422

392:                                              ; preds = %385
  %393 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %393) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20)
          to label %394 unwind label %416

394:                                              ; preds = %392
  %395 = load float*, float** %103, align 8, !tbaa !24
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %19, float* %395, i32 256, i32 1)
          to label %396 unwind label %418

396:                                              ; preds = %394
  %397 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %19, i64 0, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8, !tbaa !12
  %399 = getelementptr inbounds i8, i8* %398, i64 -24
  %400 = bitcast i8* %399 to %"struct.std::basic_string<char>::_Rep"*
  %401 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %401) #26
  %402 = icmp eq i8* %399, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %402, label %415, label %403, !prof !15

403:                                              ; preds = %396
  %404 = getelementptr inbounds i8, i8* %398, i64 -8
  %405 = bitcast i8* %404 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %406, label %408

406:                                              ; preds = %403
  %407 = atomicrmw volatile add i32* %405, i32 -1 acq_rel, align 4
  br label %411

408:                                              ; preds = %403
  %409 = load i32, i32* %405, align 8, !tbaa !7
  %410 = add nsw i32 %409, -1
  store i32 %410, i32* %405, align 8, !tbaa !7
  br label %411

411:                                              ; preds = %408, %406
  %412 = phi i32 [ %407, %406 ], [ %409, %408 ]
  %413 = icmp slt i32 %412, 1
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %400, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %415

415:                                              ; preds = %396, %411, %414
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %401) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %393) #26
  br label %422

416:                                              ; preds = %392
  %417 = landingpad { i8*, i32 }
          cleanup
  br label %420

418:                                              ; preds = %394
  %419 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19) #26
  br label %420

420:                                              ; preds = %418, %416
  %421 = phi { i8*, i32 } [ %419, %418 ], [ %417, %416 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %393) #26
  br label %424

422:                                              ; preds = %385, %415, %375, %308, %241, %160, %88
  %423 = phi i32 [ 1, %88 ], [ 1, %160 ], [ 1, %241 ], [ 1, %308 ], [ 1, %375 ], [ 0, %415 ], [ 0, %385 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #26
  ret i32 %423

424:                                              ; preds = %420, %383, %316, %249, %168, %96
  %425 = phi { i8*, i32 } [ %97, %96 ], [ %169, %168 ], [ %250, %249 ], [ %317, %316 ], [ %384, %383 ], [ %421, %420 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #26
  resume { i8*, i32 } %425
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* %0, float* %1, i32 %2, i32 %3) local_unnamed_addr #8 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !12
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !38
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %7, i64 %10)
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i64 1)
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
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !50

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !51

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !51

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN9DwtHaar1D8setupHIPEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #8 align 2 {
  %2 = alloca %struct.hipDeviceProp_t, align 8
  %3 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %3) #26
  %4 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %2, i32 0)
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 14)
  %6 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 13
  %7 = load i32, i32* %6, align 4, !tbaa !52
  %8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !16
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !18
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !23
  br label %34

28:                                               ; preds = %21
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !16
  %31 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %30, i64 6
  %32 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %31, align 8
  %33 = call signext i8 %32(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18, i8 signext 10)
  br label %34

34:                                               ; preds = %25, %28
  %35 = phi i8 [ %27, %25 ], [ %33, %28 ]
  %36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, i8 signext %35)
  %37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %36)
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i64 14)
  %39 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 12
  %40 = load i32, i32* %39, align 8, !tbaa !55
  %41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %40)
  %42 = bitcast %"class.std::basic_ostream"* %41 to i8**
  %43 = load i8*, i8** %42, align 8, !tbaa !16
  %44 = getelementptr i8, i8* %43, i64 -24
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %"class.std::basic_ostream"* %41 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  %49 = getelementptr inbounds i8, i8* %48, i64 240
  %50 = bitcast i8* %49 to %"class.std::ctype"**
  %51 = load %"class.std::ctype"*, %"class.std::ctype"** %50, align 8, !tbaa !18
  %52 = icmp eq %"class.std::ctype"* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

54:                                               ; preds = %34
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !21
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 9, i64 10
  %60 = load i8, i8* %59, align 1, !tbaa !23
  br label %67

61:                                               ; preds = %54
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51)
  %62 = bitcast %"class.std::ctype"* %51 to i8 (%"class.std::ctype"*, i8)***
  %63 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %62, align 8, !tbaa !16
  %64 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %63, i64 6
  %65 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %64, align 8
  %66 = call signext i8 %65(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51, i8 signext 10)
  br label %67

67:                                               ; preds = %58, %61
  %68 = phi i8 [ %60, %58 ], [ %66, %61 ]
  %69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %41, i8 signext %68)
  %70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %69)
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 17)
  %72 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #26
  %73 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %3, i64 %72)
  %74 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %75 = getelementptr i8, i8* %74, i64 -24
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 240
  %80 = bitcast i8* %79 to %"class.std::ctype"**
  %81 = load %"class.std::ctype"*, %"class.std::ctype"** %80, align 8, !tbaa !18
  %82 = icmp eq %"class.std::ctype"* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

84:                                               ; preds = %67
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 9, i64 10
  %90 = load i8, i8* %89, align 1, !tbaa !23
  br label %97

91:                                               ; preds = %84
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81)
  %92 = bitcast %"class.std::ctype"* %81 to i8 (%"class.std::ctype"*, i8)***
  %93 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %92, align 8, !tbaa !16
  %94 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %93, i64 6
  %95 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %94, align 8
  %96 = call signext i8 %95(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81, i8 signext 10)
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi i8 [ %90, %88 ], [ %96, %91 ]
  %99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %98)
  %100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %99)
  %101 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 7
  %102 = bitcast float** %101 to i8**
  %103 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 0
  %104 = load i32, i32* %103, align 8, !tbaa !9
  %105 = zext i32 %104 to i64
  %106 = shl nuw nsw i64 %105, 2
  %107 = call i32 @hipHostMalloc(i8** nonnull %102, i64 %106, i32 0)
  %108 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 8
  %109 = bitcast float** %108 to i8**
  %110 = load i32, i32* %103, align 8, !tbaa !9
  %111 = zext i32 %110 to i64
  %112 = shl nuw nsw i64 %111, 2
  %113 = call i32 @hipHostMalloc(i8** nonnull %109, i64 %112, i32 0)
  %114 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 9
  %115 = bitcast float** %114 to i8**
  %116 = load i32, i32* %103, align 8, !tbaa !9
  %117 = zext i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 2
  %119 = call i32 @hipHostMalloc(i8** nonnull %115, i64 %118, i32 0)
  %120 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 14
  %121 = bitcast float** %120 to i8**
  %122 = load i8*, i8** %102, align 8, !tbaa !56
  %123 = call i32 @hipHostGetDevicePointer(i8** nonnull %121, i8* %122, i32 0)
  %124 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 15
  %125 = bitcast float** %124 to i8**
  %126 = load i8*, i8** %109, align 8, !tbaa !57
  %127 = call i32 @hipHostGetDevicePointer(i8** nonnull %125, i8* %126, i32 0)
  %128 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 16
  %129 = bitcast float** %128 to i8**
  %130 = load i8*, i8** %115, align 8, !tbaa !58
  %131 = call i32 @hipHostGetDevicePointer(i8** nonnull %129, i8* %130, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %3) #26
  ret i32 0
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @_ZN9DwtHaar1D16setWorkGroupSizeEv(%class.DwtHaar1D* nocapture nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #14 align 2 {
  %2 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 21
  %3 = load i32, i32* %2, align 8, !tbaa !59
  %4 = ashr i32 %3, 1
  %5 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 12
  store i32 %4, i32* %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 19
  %7 = load i32, i32* %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 13
  store i32 %7, i32* %8, align 4, !tbaa !62
  ret i32 0
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9DwtHaar1D18runDwtHaar1DKernelEv(%class.DwtHaar1D* nocapture nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [7 x i8*], align 16
  %14 = alloca %struct.ihipEvent_t*, align 8
  %15 = alloca %struct.ihipEvent_t*, align 8
  %16 = alloca float, align 4
  %17 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 21
  %18 = load i32, i32* %17, align 8, !tbaa !59
  %19 = ashr i32 %18, 1
  %20 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 12
  store i32 %19, i32* %20, align 8, !tbaa !60
  %21 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 19
  %22 = load i32, i32* %21, align 8, !tbaa !61
  %23 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 13
  store i32 %22, i32* %23, align 4, !tbaa !62
  %24 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 14
  %25 = bitcast float** %24 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !63
  %27 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 1
  %28 = bitcast float** %27 to i8**
  %29 = load i8*, i8** %28, align 8, !tbaa !24
  %30 = sext i32 %18 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call i32 @hipMemcpy(i8* %26, i8* %29, i64 %31, i32 1)
  %33 = bitcast %struct.ihipEvent_t** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #26
  %34 = bitcast %struct.ihipEvent_t** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #26
  %35 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %14)
  %36 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %15)
  %37 = bitcast float* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #26
  store float 1.000000e+00, float* %16, align 4, !tbaa !25
  %38 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !3
  %39 = call i32 @hipEventRecord(%struct.ihipEvent_t* %38, %struct.ihipStream_t* null)
  %40 = load i32, i32* %20, align 8, !tbaa !60
  %41 = load i32, i32* %23, align 4, !tbaa !62
  %42 = udiv i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = or i64 %43, 4294967296
  %45 = zext i32 %41 to i64
  %46 = or i64 %45, 4294967296
  %47 = call i32 @__hipPushCallConfiguration(i64 %44, i32 1, i64 %46, i32 1, i64 0, %struct.ihipStream_t* null)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %1
  %50 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 7
  %51 = load float*, float** %50, align 8, !tbaa !56
  %52 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 8
  %53 = load float*, float** %52, align 8, !tbaa !57
  %54 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 9
  %55 = load float*, float** %54, align 8, !tbaa !58
  %56 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 20
  %57 = load i32, i32* %56, align 4, !tbaa !64
  %58 = load i32, i32* %17, align 8, !tbaa !59
  %59 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 22
  %60 = load i32, i32* %59, align 4, !tbaa !65
  %61 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 10
  %62 = load i32, i32* %61, align 8, !tbaa !66
  %63 = bitcast float** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63)
  %64 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64)
  %65 = bitcast float** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65)
  %66 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66)
  %67 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %67)
  %68 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %68)
  %69 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %69)
  %70 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %70)
  %71 = bitcast %struct.dim3* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %71)
  %72 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72)
  %73 = bitcast i8** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73)
  %74 = bitcast [7 x i8*]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %74)
  store float* %51, float** %2, align 8, !tbaa !3
  store float* %53, float** %3, align 8, !tbaa !3
  store float* %55, float** %4, align 8, !tbaa !3
  store i32 %57, i32* %5, align 4, !tbaa !7
  store i32 %58, i32* %6, align 4, !tbaa !7
  store i32 %60, i32* %7, align 4, !tbaa !7
  store i32 %62, i32* %8, align 4, !tbaa !7
  %75 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 0
  %76 = bitcast [7 x i8*]* %13 to float***
  store float** %2, float*** %76, align 16
  %77 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 1
  %78 = bitcast i8** %77 to float***
  store float** %3, float*** %78, align 8
  %79 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 2
  %80 = bitcast i8** %79 to float***
  store float** %4, float*** %80, align 16
  %81 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 3
  %82 = bitcast i8** %81 to i32**
  store i32* %5, i32** %82, align 8
  %83 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 4
  %84 = bitcast i8** %83 to i32**
  store i32* %6, i32** %84, align 16
  %85 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 5
  %86 = bitcast i8** %85 to i32**
  store i32* %7, i32** %86, align 8
  %87 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 6
  %88 = bitcast i8** %87 to i32**
  store i32* %8, i32** %88, align 16
  %89 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %90 = load i64, i64* %11, align 8
  %91 = bitcast i8** %12 to %struct.ihipStream_t**
  %92 = load %struct.ihipStream_t*, %struct.ihipStream_t** %91, align 8
  %93 = bitcast %struct.dim3* %9 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = bitcast %struct.dim3* %10 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32, i32, i32)** @_Z9dwtHaar1DPfS_S_jjjj to i8*), i64 %94, i32 %96, i64 %98, i32 %100, i8** nonnull %75, i64 %90, %struct.ihipStream_t* %92)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %67)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %68)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %69)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %70)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %71)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %74)
  br label %102

102:                                              ; preds = %49, %1
  %103 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %15, align 8, !tbaa !3
  %104 = call i32 @hipEventRecord(%struct.ihipEvent_t* %103, %struct.ihipStream_t* null)
  %105 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %15, align 8, !tbaa !3
  %106 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %105)
  %107 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !3
  %108 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %15, align 8, !tbaa !3
  %109 = call i32 @hipEventElapsedTime(float* nonnull %16, %struct.ihipEvent_t* %107, %struct.ihipEvent_t* %108)
  %110 = load float, float* %16, align 4, !tbaa !25
  %111 = fpext float %110 to double
  %112 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), double %111)
  %113 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 2
  %114 = bitcast float** %113 to i8**
  %115 = load i8*, i8** %114, align 8, !tbaa !41
  %116 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 15
  %117 = bitcast float** %116 to i8**
  %118 = load i8*, i8** %117, align 8, !tbaa !67
  %119 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 0
  %120 = load i32, i32* %119, align 8, !tbaa !9
  %121 = zext i32 %120 to i64
  %122 = shl nuw nsw i64 %121, 2
  %123 = call i32 @hipMemcpy(i8* %115, i8* %118, i64 %122, i32 2)
  %124 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 3
  %125 = bitcast float** %124 to i8**
  %126 = load i8*, i8** %125, align 8, !tbaa !43
  %127 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 16
  %128 = bitcast float** %127 to i8**
  %129 = load i8*, i8** %128, align 8, !tbaa !68
  %130 = load i32, i32* %119, align 8, !tbaa !9
  %131 = zext i32 %130 to i64
  %132 = shl nuw nsw i64 %131, 2
  %133 = call i32 @hipMemcpy(i8* %126, i8* %129, i64 %132, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #26
  ret i32 0
}

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: uwtable
define dso_local i32 @_ZN9DwtHaar1D10runKernelsEv(%class.DwtHaar1D* nocapture nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26
  store i32 0, i32* %3, align 4, !tbaa !7
  %7 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !9
  %9 = call i32 @_ZN9DwtHaar1D9getLevelsEjPj(%class.DwtHaar1D* nonnull align 8 undef, i32 %8, i32* nonnull %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %13 unwind label %66

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  %19 = icmp eq i8* %16, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %19, label %32, label %20, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %17, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %32

32:                                               ; preds = %13, %28, %31
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #26
  %33 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %34 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %35 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 444)
  %37 = bitcast %"class.std::basic_ostream"* %36 to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !16
  %39 = getelementptr i8, i8* %38, i64 -24
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = bitcast %"class.std::basic_ostream"* %36 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  %44 = getelementptr inbounds i8, i8* %43, i64 240
  %45 = bitcast i8* %44 to %"class.std::ctype"**
  %46 = load %"class.std::ctype"*, %"class.std::ctype"** %45, align 8, !tbaa !18
  %47 = icmp eq %"class.std::ctype"* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

49:                                               ; preds = %32
  %50 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %46, i64 0, i32 8
  %51 = load i8, i8* %50, align 8, !tbaa !21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %46, i64 0, i32 9, i64 10
  %55 = load i8, i8* %54, align 1, !tbaa !23
  br label %62

56:                                               ; preds = %49
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %46)
  %57 = bitcast %"class.std::ctype"* %46 to i8 (%"class.std::ctype"*, i8)***
  %58 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %57, align 8, !tbaa !16
  %59 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %58, i64 6
  %60 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %59, align 8
  %61 = call signext i8 %60(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %46, i8 signext 10)
  br label %62

62:                                               ; preds = %53, %56
  %63 = phi i8 [ %55, %53 ], [ %61, %56 ]
  %64 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %36, i8 signext %63)
  %65 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %64)
  br label %143

66:                                               ; preds = %11
  %67 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26
  resume { i8*, i32 } %67

68:                                               ; preds = %1
  %69 = load i32, i32* %3, align 4, !tbaa !7
  %70 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 10
  store i32 5, i32* %70, align 8, !tbaa !66
  %71 = load i32, i32* %7, align 8, !tbaa !9
  %72 = zext i32 %71 to i64
  %73 = shl nuw nsw i64 %72, 2
  %74 = tail call noalias align 16 i8* @malloc(i64 %73) #26
  %75 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 1
  %76 = bitcast float** %75 to i8**
  %77 = load i8*, i8** %76, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %74, i8* align 4 %77, i64 %73, i1 false)
  %78 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 22
  %79 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 21
  %80 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 19
  %81 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 20
  %82 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 4
  %83 = bitcast float** %82 to i8**
  %84 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 2
  %85 = bitcast float** %84 to i8**
  %86 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 3
  %87 = bitcast float** %86 to i8**
  store i32 0, i32* %78, align 4, !tbaa !65
  %88 = icmp eq i32 %69, 0
  br i1 %88, label %138, label %89

89:                                               ; preds = %68, %122
  %90 = phi i32 [ %134, %122 ], [ 5, %68 ]
  %91 = phi i32 [ %136, %122 ], [ 0, %68 ]
  %92 = phi i32 [ %123, %122 ], [ %69, %68 ]
  %93 = icmp ult i32 %92, %90
  %94 = select i1 %93, i32 %92, i32 %90
  %95 = icmp eq i32 %91, 0
  %96 = shl nuw i32 1, %92
  %97 = load i32, i32* %7, align 8
  %98 = select i1 %95, i32 %97, i32 %96
  store i32 %98, i32* %79, align 8, !tbaa !59
  %99 = shl nuw i32 1, %94
  %100 = sdiv i32 %99, 2
  store i32 %100, i32* %80, align 8, !tbaa !61
  store i32 %92, i32* %81, align 4, !tbaa !64
  %101 = tail call i32 @_ZN9DwtHaar1D18runDwtHaar1DKernelEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0)
  %102 = load i32, i32* %70, align 8, !tbaa !66
  %103 = icmp ugt i32 %92, %102
  br i1 %103, label %122, label %104

104:                                              ; preds = %89
  %105 = load float*, float** %86, align 8, !tbaa !43
  %106 = load float, float* %105, align 4, !tbaa !25
  %107 = load float*, float** %84, align 8, !tbaa !41
  store float %106, float* %107, align 4, !tbaa !25
  %108 = load i8*, i8** %83, align 8, !tbaa !44
  %109 = bitcast float* %107 to i8*
  %110 = sext i32 %99 to i64
  %111 = shl nsw i64 %110, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* nonnull align 4 %109, i64 %111, i1 false)
  %112 = load float*, float** %84, align 8, !tbaa !41
  %113 = getelementptr inbounds float, float* %112, i64 %110
  %114 = bitcast float* %113 to i8*
  %115 = load float*, float** %82, align 8, !tbaa !44
  %116 = getelementptr inbounds float, float* %115, i64 %110
  %117 = bitcast float* %116 to i8*
  %118 = load i32, i32* %7, align 8, !tbaa !9
  %119 = sub i32 %118, %99
  %120 = zext i32 %119 to i64
  %121 = shl nuw nsw i64 %120, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %114, i8* nonnull align 4 %117, i64 %121, i1 false)
  br label %138

122:                                              ; preds = %89
  %123 = sub i32 %92, %102
  %124 = load i8*, i8** %83, align 8, !tbaa !44
  %125 = load i8*, i8** %85, align 8, !tbaa !41
  %126 = load i32, i32* %79, align 8, !tbaa !59
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 %128, i1 false)
  %129 = load i8*, i8** %76, align 8, !tbaa !24
  %130 = load i8*, i8** %87, align 8, !tbaa !43
  %131 = shl nuw i32 1, %123
  %132 = sext i32 %131 to i64
  %133 = shl nsw i64 %132, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 %133, i1 false)
  %134 = load i32, i32* %70, align 8, !tbaa !66
  %135 = load i32, i32* %78, align 4, !tbaa !65
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %78, align 4, !tbaa !65
  %137 = icmp ult i32 %136, %69
  br i1 %137, label %89, label %138, !llvm.loop !69

138:                                              ; preds = %122, %68, %104
  %139 = load i8*, i8** %76, align 8, !tbaa !24
  %140 = load i32, i32* %7, align 8, !tbaa !9
  %141 = zext i32 %140 to i64
  %142 = shl nuw nsw i64 %141, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 16 %74, i64 %142, i1 false)
  tail call void @free(i8* %74) #26
  br label %143

143:                                              ; preds = %138, %62
  %144 = phi i32 [ 1, %62 ], [ 0, %138 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26
  ret i32 %144
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9DwtHaar1D10initializeEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 18
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !45
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !70
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !70
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i64 12)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i64 20)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !71
  %20 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %21 = bitcast i8** %20 to %class.DwtHaar1D**
  store %class.DwtHaar1D* %0, %class.DwtHaar1D** %21, align 8, !tbaa !74
  %22 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %23 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %22, align 8, !tbaa !45
  %24 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %23, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #26
  tail call void @_ZdlPv(i8* nonnull %7) #29
  %25 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %26 = bitcast i8* %25 to %"struct.appsdk::Option"*
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !70
  %28 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %28, align 8, !tbaa !70
  %29 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !70
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !70
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 0
  %32 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 1)
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 1
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 10)
  %35 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 2
  %36 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i64 41)
  %37 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 4
  store i32 0, i32* %37, align 8, !tbaa !71
  %38 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 11
  %39 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %26, i64 0, i32 5
  %40 = bitcast i8** %39 to i32**
  store i32* %38, i32** %40, align 8, !tbaa !74
  %41 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %22, align 8, !tbaa !45
  %42 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %41, %"struct.appsdk::Option"* nonnull %26)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %26) #26
  tail call void @_ZdlPv(i8* nonnull %25) #29
  br label %43

43:                                               ; preds = %1, %6
  %44 = phi i32 [ 0, %6 ], [ 1, %1 ]
  ret i32 %44
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #28
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !70
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !70
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !70
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !70
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !70
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !70
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !70
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !70
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !70
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !70
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !70
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !70
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !70
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !70
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !70
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !70
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !70
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !70
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !70
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !70
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !71
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !74
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !71
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !74
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !71
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !74
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !71
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !74
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.50, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !71
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !74
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !75
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !76
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #17

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, %"struct.appsdk::Option"* %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"struct.appsdk::Option"* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !76
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !75
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
  store i8* %21, i8** %25, align 8, !tbaa !76
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !70
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !70
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !70
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !76
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
  %59 = load i32, i32* %10, align 8, !tbaa !75
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !76
  br i1 %61, label %39, label %63, !llvm.loop !77

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
  %83 = load i32, i32* %10, align 8, !tbaa !75
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !75
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
define linkonce_odr dso_local void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %0) unnamed_addr #18 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 3, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !12
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #26
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %9, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %24

24:                                               ; preds = %1, %20, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #26
  %25 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !12
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #26
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %28, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %43

43:                                               ; preds = %24, %39, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #26
  %44 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %62

62:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #26
  %63 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !12
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #26
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %81

81:                                               ; preds = %62, %77, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #26
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9DwtHaar1D5setupEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = tail call i32 @_ZN9DwtHaar1D14setupDwtHaar1DEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %82

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 17
  %10 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !78
  %11 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %10)
  %12 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !78
  %13 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13)
  %14 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %12, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %14, align 8, !tbaa !79
  %16 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %12, i64 0, i32 0, i32 0, i32 0, i32 0
  %17 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %16, align 8, !tbaa !82
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %26 unwind label %46

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !12
  %29 = getelementptr inbounds i8, i8* %28, i64 -24
  %30 = bitcast i8* %29 to %"struct.std::basic_string<char>::_Rep"*
  %31 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %31) #26
  %32 = icmp eq i8* %29, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %32, label %45, label %33, !prof !15

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
  %49 = load i8*, i8** %48, align 8, !tbaa !12
  %50 = getelementptr inbounds i8, i8* %49, i64 -24
  %51 = bitcast i8* %50 to %"struct.std::basic_string<char>::_Rep"*
  %52 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #26
  %53 = icmp eq i8* %50, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %53, label %66, label %54, !prof !15

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, i8* %49, i64 -8
  %56 = bitcast i8* %55 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %57, label %59

57:                                               ; preds = %54
  %58 = atomicrmw volatile add i32* %56, i32 -1 acq_rel, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %56, align 8, !tbaa !7
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %56, align 8, !tbaa !7
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
  %70 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %69, align 8, !tbaa !3
  %71 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %70, i64 0, i32 2
  %72 = bitcast i64* %71 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  br label %73

73:                                               ; preds = %45, %67
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13)
  %74 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !78
  %75 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %74, i32 %11)
  %76 = call i32 @_ZN9DwtHaar1D8setupHIPEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0)
  %77 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !78
  %78 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %77, i32 %11)
  %79 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %9, align 8, !tbaa !78
  %80 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %79, i32 %11)
  %81 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 5
  store double %80, double* %81, align 8, !tbaa !83
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
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !87
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !79
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !79
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !82
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !82
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
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !82
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
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !79
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
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !82
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !79
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !87
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !82
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !15

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
  %45 = load i64, i64* %44, align 8, !tbaa !88
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !90
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !82
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !91
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !82
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !15

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
  %45 = load i64, i64* %44, align 8, !tbaa !88
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !90
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !82
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !91
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !91
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !92
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !92
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
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !82
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !12
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #26
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !15

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
  %43 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %42, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 2
  %45 = load i64, i64* %44, align 8, !tbaa !92
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !84
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9DwtHaar1D3runEv(%class.DwtHaar1D* nocapture nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %19, label %15

11:                                               ; preds = %15
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %16, i1 true, i1 %13
  br i1 %14, label %19, label %15, !llvm.loop !93

15:                                               ; preds = %1, %11
  %16 = phi i1 [ true, %11 ], [ false, %1 ]
  %17 = tail call i32 @_ZN9DwtHaar1D10runKernelsEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %187

19:                                               ; preds = %11, %1
  %20 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i64 21)
  %21 = load i32, i32* %8, align 4, !tbaa !94
  %22 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %21)
  %23 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %22, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11)
  %24 = bitcast %"class.std::basic_ostream"* %22 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !16
  %26 = getelementptr i8, i8* %25, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %"class.std::basic_ostream"* %22 to i8*
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  %31 = getelementptr inbounds i8, i8* %30, i64 240
  %32 = bitcast i8* %31 to %"class.std::ctype"**
  %33 = load %"class.std::ctype"*, %"class.std::ctype"** %32, align 8, !tbaa !18
  %34 = icmp eq %"class.std::ctype"* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

36:                                               ; preds = %19
  %37 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %33, i64 0, i32 8
  %38 = load i8, i8* %37, align 8, !tbaa !21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %33, i64 0, i32 9, i64 10
  %42 = load i8, i8* %41, align 1, !tbaa !23
  br label %49

43:                                               ; preds = %36
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %33)
  %44 = bitcast %"class.std::ctype"* %33 to i8 (%"class.std::ctype"*, i8)***
  %45 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !16
  %46 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %45, i64 6
  %47 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %46, align 8
  %48 = tail call signext i8 %47(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %33, i8 signext 10)
  br label %49

49:                                               ; preds = %40, %43
  %50 = phi i8 [ %42, %40 ], [ %48, %43 ]
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %22, i8 signext %50)
  %52 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %51)
  %53 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0), i64 43)
  %54 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %55 = getelementptr i8, i8* %54, i64 -24
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 240
  %60 = bitcast i8* %59 to %"class.std::ctype"**
  %61 = load %"class.std::ctype"*, %"class.std::ctype"** %60, align 8, !tbaa !18
  %62 = icmp eq %"class.std::ctype"* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

64:                                               ; preds = %49
  %65 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %61, i64 0, i32 8
  %66 = load i8, i8* %65, align 8, !tbaa !21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %61, i64 0, i32 9, i64 10
  %70 = load i8, i8* %69, align 1, !tbaa !23
  br label %77

71:                                               ; preds = %64
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %61)
  %72 = bitcast %"class.std::ctype"* %61 to i8 (%"class.std::ctype"*, i8)***
  %73 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %72, align 8, !tbaa !16
  %74 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %73, i64 6
  %75 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %74, align 8
  %76 = tail call signext i8 %75(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %61, i8 signext 10)
  br label %77

77:                                               ; preds = %68, %71
  %78 = phi i8 [ %70, %68 ], [ %76, %71 ]
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %78)
  %80 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %79)
  %81 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 17
  %82 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %81, align 8, !tbaa !78
  %83 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %82)
  %84 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %81, align 8, !tbaa !78
  %85 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85)
  %86 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %84, i64 0, i32 0, i32 0, i32 0, i32 1
  %87 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %86, align 8, !tbaa !79
  %88 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %84, i64 0, i32 0, i32 0, i32 0, i32 0
  %89 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %88, align 8, !tbaa !82
  %90 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %87 to i64
  %91 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %89 to i64
  %92 = sub i64 %90, %91
  %93 = lshr exact i64 %92, 3
  %94 = trunc i64 %93 to i32
  %95 = icmp slt i32 %83, %94
  br i1 %95, label %122, label %96

96:                                               ; preds = %77
  %97 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %97) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %98 unwind label %120

98:                                               ; preds = %96
  %99 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8, !tbaa !12
  %101 = getelementptr inbounds i8, i8* %100, i64 -24
  %102 = bitcast i8* %101 to %"struct.std::basic_string<char>::_Rep"*
  %103 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %103) #26
  %104 = icmp eq i8* %101, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %104, label %117, label %105, !prof !15

105:                                              ; preds = %98
  %106 = getelementptr inbounds i8, i8* %100, i64 -8
  %107 = bitcast i8* %106 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %108, label %110

108:                                              ; preds = %105
  %109 = atomicrmw volatile add i32* %107, i32 -1 acq_rel, align 4
  br label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %107, align 8, !tbaa !7
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %107, align 8, !tbaa !7
  br label %113

113:                                              ; preds = %110, %108
  %114 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %117

117:                                              ; preds = %116, %113, %98
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %103) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %97) #26
  br label %128

118:                                              ; preds = %185, %120
  %119 = phi { i8*, i32 } [ %121, %120 ], [ %186, %185 ]
  resume { i8*, i32 } %119

120:                                              ; preds = %96
  %121 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %97) #26
  br label %118

122:                                              ; preds = %77
  %123 = sext i32 %83 to i64
  %124 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %89, i64 %123
  %125 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %124, align 8, !tbaa !3
  %126 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %125, i64 0, i32 2
  %127 = bitcast i64* %126 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  br label %128

128:                                              ; preds = %117, %122
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85)
  %129 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %81, align 8, !tbaa !78
  %130 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %129, i32 %83)
  %131 = load i32, i32* %8, align 4, !tbaa !94
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %136, label %141

133:                                              ; preds = %136
  %134 = load i32, i32* %8, align 4, !tbaa !94
  %135 = icmp slt i32 %140, %134
  br i1 %135, label %136, label %141, !llvm.loop !95

136:                                              ; preds = %128, %133
  %137 = phi i32 [ %140, %133 ], [ 0, %128 ]
  %138 = call i32 @_ZN9DwtHaar1D10runKernelsEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0)
  %139 = icmp eq i32 %138, 0
  %140 = add nuw nsw i32 %137, 1
  br i1 %139, label %133, label %187

141:                                              ; preds = %133, %128
  %142 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %81, align 8, !tbaa !78
  %143 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %142, i32 %83)
  %144 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %81, align 8, !tbaa !78
  %145 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %144, i32 %83)
  %146 = load i32, i32* %8, align 4, !tbaa !94
  %147 = sitofp i32 %146 to double
  %148 = fdiv contract double %145, %147
  %149 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 6
  store double %148, double* %149, align 8, !tbaa !96
  %150 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 18
  %151 = bitcast %"class.appsdk::HIPCommandArgs"** %150 to %"class.appsdk::SDKCmdArgsParser"**
  %152 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %151, align 8, !tbaa !45
  %153 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %152, i64 0, i32 9
  %154 = load i8, i8* %153, align 4, !tbaa !46, !range !49
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %141
  %157 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %157) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %158 unwind label %181

158:                                              ; preds = %156
  %159 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 2
  %160 = load float*, float** %159, align 8, !tbaa !41
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %6, float* %160, i32 256, i32 1)
          to label %161 unwind label %183

161:                                              ; preds = %158
  %162 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8, !tbaa !12
  %164 = getelementptr inbounds i8, i8* %163, i64 -24
  %165 = bitcast i8* %164 to %"struct.std::basic_string<char>::_Rep"*
  %166 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %166) #26
  %167 = icmp eq i8* %164, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %167, label %180, label %168, !prof !15

168:                                              ; preds = %161
  %169 = getelementptr inbounds i8, i8* %163, i64 -8
  %170 = bitcast i8* %169 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %171, label %173

171:                                              ; preds = %168
  %172 = atomicrmw volatile add i32* %170, i32 -1 acq_rel, align 4
  br label %176

173:                                              ; preds = %168
  %174 = load i32, i32* %170, align 8, !tbaa !7
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %170, align 8, !tbaa !7
  br label %176

176:                                              ; preds = %173, %171
  %177 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %178 = icmp slt i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %165, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %180

180:                                              ; preds = %161, %176, %179
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %166) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %157) #26
  br label %187

181:                                              ; preds = %156
  %182 = landingpad { i8*, i32 }
          cleanup
  br label %185

183:                                              ; preds = %158
  %184 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi { i8*, i32 } [ %184, %183 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %157) #26
  br label %118

187:                                              ; preds = %15, %136, %180, %141
  %188 = phi i32 [ 0, %180 ], [ 0, %141 ], [ 1, %136 ], [ 1, %15 ]
  ret i32 %188
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN9DwtHaar1D13verifyResultsEv(%class.DwtHaar1D* nocapture nonnull readonly align 8 dereferenceable(152) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 18
  %3 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %4 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %4, i64 0, i32 10
  %6 = load i8, i8* %5, align 1, !tbaa !97, !range !49
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %86, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @_ZN9DwtHaar1D20calApproxFinalOnHostEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %0)
  %10 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !9
  %12 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 2
  %13 = load float*, float** %12, align 8
  %14 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 4
  %15 = load float*, float** %14, align 8
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = zext i32 %11 to i64
  br label %21

19:                                               ; preds = %21
  %20 = icmp eq i64 %30, %18
  br i1 %20, label %31, label %21, !llvm.loop !98

21:                                               ; preds = %17, %19
  %22 = phi i64 [ 0, %17 ], [ %30, %19 ]
  %23 = getelementptr inbounds float, float* %13, i64 %22
  %24 = load float, float* %23, align 4, !tbaa !25
  %25 = getelementptr inbounds float, float* %15, i64 %22
  %26 = load float, float* %25, align 4, !tbaa !25
  %27 = fsub contract float %24, %26
  %28 = tail call contract float @llvm.fabs.f32(float %27) #26
  %29 = fcmp contract ogt float %28, 0x3FB99999A0000000
  %30 = add nuw nsw i64 %22, 1
  br i1 %29, label %56, label %19

31:                                               ; preds = %19, %8
  %32 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i64 8)
  %33 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %34 = getelementptr i8, i8* %33, i64 -24
  %35 = bitcast i8* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 240
  %39 = bitcast i8* %38 to %"class.std::ctype"**
  %40 = load %"class.std::ctype"*, %"class.std::ctype"** %39, align 8, !tbaa !18
  %41 = icmp eq %"class.std::ctype"* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

43:                                               ; preds = %31
  %44 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %40, i64 0, i32 8
  %45 = load i8, i8* %44, align 8, !tbaa !21
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %40, i64 0, i32 9, i64 10
  %49 = load i8, i8* %48, align 1, !tbaa !23
  br label %81

50:                                               ; preds = %43
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %40)
  %51 = bitcast %"class.std::ctype"* %40 to i8 (%"class.std::ctype"*, i8)***
  %52 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %51, align 8, !tbaa !16
  %53 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %52, i64 6
  %54 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %53, align 8
  %55 = tail call signext i8 %54(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %40, i8 signext 10)
  br label %81

56:                                               ; preds = %21
  %57 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i64 7)
  %58 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %59 = getelementptr i8, i8* %58, i64 -24
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 240
  %64 = bitcast i8* %63 to %"class.std::ctype"**
  %65 = load %"class.std::ctype"*, %"class.std::ctype"** %64, align 8, !tbaa !18
  %66 = icmp eq %"class.std::ctype"* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

68:                                               ; preds = %56
  %69 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %65, i64 0, i32 8
  %70 = load i8, i8* %69, align 8, !tbaa !21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %65, i64 0, i32 9, i64 10
  %74 = load i8, i8* %73, align 1, !tbaa !23
  br label %81

75:                                               ; preds = %68
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %65)
  %76 = bitcast %"class.std::ctype"* %65 to i8 (%"class.std::ctype"*, i8)***
  %77 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %76, align 8, !tbaa !16
  %78 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %77, i64 6
  %79 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %78, align 8
  %80 = tail call signext i8 %79(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %65, i8 signext 10)
  br label %81

81:                                               ; preds = %75, %72, %50, %47
  %82 = phi i8 [ %49, %47 ], [ %55, %50 ], [ %74, %72 ], [ %80, %75 ]
  %83 = phi i32 [ 0, %47 ], [ 0, %50 ], [ 1, %72 ], [ 1, %75 ]
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %82)
  %85 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %84)
  br label %86

86:                                               ; preds = %81, %1
  %87 = phi i32 [ 0, %1 ], [ %83, %81 ]
  ret i32 %87
}

; Function Attrs: uwtable
define dso_local void @_ZN9DwtHaar1D10printStatsEv(%class.DwtHaar1D* nocapture nonnull readonly align 8 dereferenceable(152) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %21 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 18
  %22 = bitcast %"class.appsdk::HIPCommandArgs"** %21 to %"class.appsdk::SDKCmdArgsParser"**
  %23 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %23, i64 0, i32 11
  %25 = load i8, i8* %24, align 2, !tbaa !99, !range !49
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %787, label %27

27:                                               ; preds = %1
  %28 = bitcast [3 x %"class.std::basic_string"]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #26
  %29 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0
  %30 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %30) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14)
  %31 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1
  %32 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %32) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %33 unwind label %740

33:                                               ; preds = %27
  %34 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %16, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %16)
          to label %36 unwind label %742

36:                                               ; preds = %33
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #26
  %37 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 5
  %38 = load double, double* %37, align 8, !tbaa !83
  %39 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 6
  %40 = load double, double* %39, align 8, !tbaa !96
  %41 = fadd contract double %38, %40
  %42 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 17
  %43 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %42, align 8, !tbaa !78
  %44 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %43, i64 0, i32 1
  store double %41, double* %44, align 8, !tbaa !100
  %45 = bitcast [3 x %"class.std::basic_string"]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %45) #26
  %46 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0
  %47 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 16, !tbaa !70
  %48 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !70
  %49 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 16, !tbaa !70
  %50 = bitcast %"class.std::basic_string"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #26
  %51 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 0
  %52 = load i32, i32* %51, align 8, !tbaa !9
  %53 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %53) #26, !noalias !103
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %54 unwind label %751

54:                                               ; preds = %36
  %55 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %56 = load i8*, i8** %55, align 8, !tbaa !16, !noalias !103
  %57 = getelementptr i8, i8* %56, i64 -24
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8, !noalias !103
  %60 = getelementptr inbounds i8, i8* %53, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 24
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 8, !tbaa !106, !noalias !103
  %64 = and i32 %63, -75
  %65 = or i32 %64, 2
  store i32 %65, i32* %62, align 8, !tbaa !112, !noalias !103
  %66 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %67 = zext i32 %52 to i64
  %68 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %66, i64 %67)
          to label %69 unwind label %99, !noalias !103

69:                                               ; preds = %54
  %70 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %18, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %70)
          to label %71 unwind label %99

71:                                               ; preds = %69
  %72 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %73 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %72, i32 (...)*** %73, align 8, !tbaa !16, !noalias !103
  %74 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %75 = getelementptr i32 (...)*, i32 (...)** %72, i64 -3
  %76 = bitcast i32 (...)** %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %53, i64 %77
  %79 = bitcast i8* %78 to i32 (...)***
  store i32 (...)** %74, i32 (...)*** %79, align 8, !tbaa !16, !noalias !103
  %80 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !16, !noalias !103
  %81 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !12, !noalias !103
  %83 = getelementptr inbounds i8, i8* %82, i64 -24
  %84 = bitcast i8* %83 to %"struct.std::basic_string<char>::_Rep"*
  %85 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %85) #26, !noalias !103
  %86 = icmp eq i8* %83, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %86, label %101, label %87, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %84, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #26
  br label %101

99:                                               ; preds = %69, %54
  %100 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %53) #26, !noalias !103
  br label %755

101:                                              ; preds = %98, %95, %71
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %85) #26, !noalias !103
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !16, !noalias !103
  %102 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %102) #26
  %103 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %103) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %53) #26, !noalias !103
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %46, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18)
          to label %104 unwind label %753

104:                                              ; preds = %101
  %105 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8, !tbaa !12
  %107 = getelementptr inbounds i8, i8* %106, i64 -24
  %108 = bitcast i8* %107 to %"struct.std::basic_string<char>::_Rep"*
  %109 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %109) #26
  %110 = icmp eq i8* %107, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %110, label %123, label %111, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %108, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #26
  br label %123

123:                                              ; preds = %104, %119, %122
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %109) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #26
  %124 = bitcast %"class.std::basic_string"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %124) #26
  %125 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %42, align 8, !tbaa !78
  %126 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %125, i64 0, i32 1
  %127 = load double, double* %126, align 8, !tbaa !100
  %128 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %128) #26, !noalias !113
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %129 unwind label %757

129:                                              ; preds = %123
  %130 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %131 = load i8*, i8** %130, align 8, !tbaa !16, !noalias !113
  %132 = getelementptr i8, i8* %131, i64 -24
  %133 = bitcast i8* %132 to i64*
  %134 = load i64, i64* %133, align 8, !noalias !113
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  %136 = getelementptr inbounds i8, i8* %135, i64 24
  %137 = bitcast i8* %136 to i32*
  %138 = load i32, i32* %137, align 8, !tbaa !106, !noalias !113
  %139 = and i32 %138, -75
  %140 = or i32 %139, 2
  store i32 %140, i32* %137, align 8, !tbaa !112, !noalias !113
  %141 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %142 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %141, double %127)
          to label %143 unwind label %169, !noalias !113

143:                                              ; preds = %129
  %144 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %19, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %144)
          to label %145 unwind label %169

145:                                              ; preds = %143
  %146 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %72, i32 (...)*** %146, align 8, !tbaa !16, !noalias !113
  %147 = load i64, i64* %76, align 8
  %148 = getelementptr inbounds i8, i8* %128, i64 %147
  %149 = bitcast i8* %148 to i32 (...)***
  store i32 (...)** %74, i32 (...)*** %149, align 8, !tbaa !16, !noalias !113
  %150 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %150, align 8, !tbaa !16, !noalias !113
  %151 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !12, !noalias !113
  %153 = getelementptr inbounds i8, i8* %152, i64 -24
  %154 = bitcast i8* %153 to %"struct.std::basic_string<char>::_Rep"*
  %155 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %155) #26, !noalias !113
  %156 = icmp eq i8* %153, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %156, label %171, label %157, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %154, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #26
  br label %171

169:                                              ; preds = %143, %129
  %170 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %128) #26, !noalias !113
  br label %761

171:                                              ; preds = %168, %165, %145
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %155) #26, !noalias !113
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %150, align 8, !tbaa !16, !noalias !113
  %172 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %172) #26
  %173 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %173) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %128) #26, !noalias !113
  %174 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %174, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19)
          to label %175 unwind label %759

175:                                              ; preds = %171
  %176 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %19, i64 0, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8, !tbaa !12
  %178 = getelementptr inbounds i8, i8* %177, i64 -24
  %179 = bitcast i8* %178 to %"struct.std::basic_string<char>::_Rep"*
  %180 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %180) #26
  %181 = icmp eq i8* %178, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %181, label %194, label %182, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %179, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %194

194:                                              ; preds = %175, %190, %193
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %180) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124) #26
  %195 = bitcast %"class.std::basic_string"* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195) #26
  %196 = load double, double* %39, align 8, !tbaa !96
  %197 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %197) #26, !noalias !116
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %198 unwind label %763

198:                                              ; preds = %194
  %199 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %200 = load i8*, i8** %199, align 8, !tbaa !16, !noalias !116
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8, !noalias !116
  %204 = getelementptr inbounds i8, i8* %197, i64 %203
  %205 = getelementptr inbounds i8, i8* %204, i64 24
  %206 = bitcast i8* %205 to i32*
  %207 = load i32, i32* %206, align 8, !tbaa !106, !noalias !116
  %208 = and i32 %207, -75
  %209 = or i32 %208, 2
  store i32 %209, i32* %206, align 8, !tbaa !112, !noalias !116
  %210 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %211 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %210, double %196)
          to label %212 unwind label %238, !noalias !116

212:                                              ; preds = %198
  %213 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %20, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %213)
          to label %214 unwind label %238

214:                                              ; preds = %212
  %215 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %72, i32 (...)*** %215, align 8, !tbaa !16, !noalias !116
  %216 = load i64, i64* %76, align 8
  %217 = getelementptr inbounds i8, i8* %197, i64 %216
  %218 = bitcast i8* %217 to i32 (...)***
  store i32 (...)** %74, i32 (...)*** %218, align 8, !tbaa !16, !noalias !116
  %219 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %219, align 8, !tbaa !16, !noalias !116
  %220 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8, !tbaa !12, !noalias !116
  %222 = getelementptr inbounds i8, i8* %221, i64 -24
  %223 = bitcast i8* %222 to %"struct.std::basic_string<char>::_Rep"*
  %224 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %224) #26, !noalias !116
  %225 = icmp eq i8* %222, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %225, label %240, label %226, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %223, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %240

238:                                              ; preds = %212, %198
  %239 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %197) #26, !noalias !116
  br label %767

240:                                              ; preds = %237, %234, %214
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %224) #26, !noalias !116
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %219, align 8, !tbaa !16, !noalias !116
  %241 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %241) #26
  %242 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %242) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %197) #26, !noalias !116
  %243 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %243, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20)
          to label %244 unwind label %765

244:                                              ; preds = %240
  %245 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8, !tbaa !12
  %247 = getelementptr inbounds i8, i8* %246, i64 -24
  %248 = bitcast i8* %247 to %"struct.std::basic_string<char>::_Rep"*
  %249 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %249) #26
  %250 = icmp eq i8* %247, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %250, label %263, label %251, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %248, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %263

263:                                              ; preds = %244, %259, %262
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %249) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #26
  %264 = invoke noalias nonnull dereferenceable(12) i8* @_Znam(i64 12) #28
          to label %265 unwind label %775

265:                                              ; preds = %263
  %266 = bitcast i8* %264 to i32*
  %267 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %268 = getelementptr i8, i8* %267, i64 -24
  %269 = bitcast i8* %268 to i64*
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %270
  %272 = getelementptr inbounds i8, i8* %271, i64 240
  %273 = bitcast i8* %272 to %"class.std::ctype"**
  %274 = load %"class.std::ctype"*, %"class.std::ctype"** %273, align 8, !tbaa !18
  %275 = icmp eq %"class.std::ctype"* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %265
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %277 unwind label %775

277:                                              ; preds = %276
  unreachable

278:                                              ; preds = %265
  %279 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %274, i64 0, i32 8
  %280 = load i8, i8* %279, align 8, !tbaa !21
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %274, i64 0, i32 9, i64 10
  %284 = load i8, i8* %283, align 1, !tbaa !23
  br label %292

285:                                              ; preds = %278
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %274)
          to label %286 unwind label %775

286:                                              ; preds = %285
  %287 = bitcast %"class.std::ctype"* %274 to i8 (%"class.std::ctype"*, i8)***
  %288 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %287, align 8, !tbaa !16
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
  %298 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %296, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %299 unwind label %775

299:                                              ; preds = %297
  %300 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0, i32 0, i32 0
  %301 = load i8*, i8** %300, align 16, !tbaa !12
  %302 = getelementptr inbounds i8, i8* %301, i64 -24
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 8, !tbaa !38
  %305 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  %306 = load i8*, i8** %305, align 16, !tbaa !12
  %307 = getelementptr inbounds i8, i8* %306, i64 -24
  %308 = bitcast i8* %307 to i64*
  %309 = load i64, i64* %308, align 8, !tbaa !38
  %310 = icmp ugt i64 %304, %309
  %311 = select i1 %310, i64 %304, i64 %309
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %266, align 4, !tbaa !7
  %313 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %314 unwind label %775

314:                                              ; preds = %299
  %315 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %316 = getelementptr i8, i8* %315, i64 -24
  %317 = bitcast i8* %316 to i64*
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %318
  %320 = shl i64 %311, 32
  %321 = add i64 %320, 4294967296
  %322 = ashr exact i64 %321, 32
  %323 = getelementptr inbounds i8, i8* %319, i64 16
  %324 = bitcast i8* %323 to i64*
  store i64 %322, i64* %324, align 8, !tbaa !119
  %325 = load i64, i64* %317, align 8
  %326 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %325
  %327 = getelementptr inbounds i8, i8* %326, i64 24
  %328 = bitcast i8* %327 to i32*
  %329 = load i32, i32* %328, align 8, !tbaa !106
  %330 = and i32 %329, -177
  %331 = or i32 %330, 32
  store i32 %331, i32* %328, align 8, !tbaa !112
  %332 = load i8*, i8** %300, align 16, !tbaa !12
  %333 = getelementptr inbounds i8, i8* %332, i64 -24
  %334 = bitcast i8* %333 to i64*
  %335 = load i64, i64* %334, align 8, !tbaa !38
  %336 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %332, i64 %335)
          to label %337 unwind label %775

337:                                              ; preds = %314
  %338 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %336, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %339 unwind label %775

339:                                              ; preds = %337
  %340 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8, !tbaa !12
  %342 = getelementptr inbounds i8, i8* %341, i64 -24
  %343 = bitcast i8* %342 to i64*
  %344 = load i64, i64* %343, align 8, !tbaa !38
  %345 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8, !tbaa !12
  %347 = getelementptr inbounds i8, i8* %346, i64 -24
  %348 = bitcast i8* %347 to i64*
  %349 = load i64, i64* %348, align 8, !tbaa !38
  %350 = icmp ugt i64 %344, %349
  %351 = select i1 %350, i64 %344, i64 %349
  %352 = trunc i64 %351 to i32
  %353 = getelementptr inbounds i32, i32* %266, i64 1
  store i32 %352, i32* %353, align 4, !tbaa !7
  %354 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %355 unwind label %775

355:                                              ; preds = %339
  %356 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %357 = getelementptr i8, i8* %356, i64 -24
  %358 = bitcast i8* %357 to i64*
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %359
  %361 = shl i64 %351, 32
  %362 = add i64 %361, 4294967296
  %363 = ashr exact i64 %362, 32
  %364 = getelementptr inbounds i8, i8* %360, i64 16
  %365 = bitcast i8* %364 to i64*
  store i64 %363, i64* %365, align 8, !tbaa !119
  %366 = load i64, i64* %358, align 8
  %367 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %366
  %368 = getelementptr inbounds i8, i8* %367, i64 24
  %369 = bitcast i8* %368 to i32*
  %370 = load i32, i32* %369, align 8, !tbaa !106
  %371 = and i32 %370, -177
  %372 = or i32 %371, 32
  store i32 %372, i32* %369, align 8, !tbaa !112
  %373 = load i8*, i8** %340, align 8, !tbaa !12
  %374 = getelementptr inbounds i8, i8* %373, i64 -24
  %375 = bitcast i8* %374 to i64*
  %376 = load i64, i64* %375, align 8, !tbaa !38
  %377 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %373, i64 %376)
          to label %378 unwind label %775

378:                                              ; preds = %355
  %379 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %377, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %380 unwind label %775

380:                                              ; preds = %378
  %381 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2, i32 0, i32 0
  %382 = load i8*, i8** %381, align 16, !tbaa !12
  %383 = getelementptr inbounds i8, i8* %382, i64 -24
  %384 = bitcast i8* %383 to i64*
  %385 = load i64, i64* %384, align 8, !tbaa !38
  %386 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  %387 = load i8*, i8** %386, align 16, !tbaa !12
  %388 = getelementptr inbounds i8, i8* %387, i64 -24
  %389 = bitcast i8* %388 to i64*
  %390 = load i64, i64* %389, align 8, !tbaa !38
  %391 = icmp ugt i64 %385, %390
  %392 = select i1 %391, i64 %385, i64 %390
  %393 = trunc i64 %392 to i32
  %394 = getelementptr inbounds i32, i32* %266, i64 2
  store i32 %393, i32* %394, align 4, !tbaa !7
  %395 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %396 unwind label %775

396:                                              ; preds = %380
  %397 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %398 = getelementptr i8, i8* %397, i64 -24
  %399 = bitcast i8* %398 to i64*
  %400 = load i64, i64* %399, align 8
  %401 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %400
  %402 = shl i64 %392, 32
  %403 = add i64 %402, 4294967296
  %404 = ashr exact i64 %403, 32
  %405 = getelementptr inbounds i8, i8* %401, i64 16
  %406 = bitcast i8* %405 to i64*
  store i64 %404, i64* %406, align 8, !tbaa !119
  %407 = load i64, i64* %399, align 8
  %408 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %407
  %409 = getelementptr inbounds i8, i8* %408, i64 24
  %410 = bitcast i8* %409 to i32*
  %411 = load i32, i32* %410, align 8, !tbaa !106
  %412 = and i32 %411, -177
  %413 = or i32 %412, 32
  store i32 %413, i32* %410, align 8, !tbaa !112
  %414 = load i8*, i8** %381, align 16, !tbaa !12
  %415 = getelementptr inbounds i8, i8* %414, i64 -24
  %416 = bitcast i8* %415 to i64*
  %417 = load i64, i64* %416, align 8, !tbaa !38
  %418 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %414, i64 %417)
          to label %419 unwind label %775

419:                                              ; preds = %396
  %420 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %418, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %421 unwind label %775

421:                                              ; preds = %419
  %422 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %423 = getelementptr i8, i8* %422, i64 -24
  %424 = bitcast i8* %423 to i64*
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %425
  %427 = getelementptr inbounds i8, i8* %426, i64 240
  %428 = bitcast i8* %427 to %"class.std::ctype"**
  %429 = load %"class.std::ctype"*, %"class.std::ctype"** %428, align 8, !tbaa !18
  %430 = icmp eq %"class.std::ctype"* %429, null
  br i1 %430, label %431, label %433

431:                                              ; preds = %421
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %432 unwind label %775

432:                                              ; preds = %431
  unreachable

433:                                              ; preds = %421
  %434 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %429, i64 0, i32 8
  %435 = load i8, i8* %434, align 8, !tbaa !21
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %429, i64 0, i32 9, i64 10
  %439 = load i8, i8* %438, align 1, !tbaa !23
  br label %447

440:                                              ; preds = %433
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %429)
          to label %441 unwind label %775

441:                                              ; preds = %440
  %442 = bitcast %"class.std::ctype"* %429 to i8 (%"class.std::ctype"*, i8)***
  %443 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %442, align 8, !tbaa !16
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
  %453 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %451, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %454 unwind label %775

454:                                              ; preds = %452
  %455 = load i32, i32* %266, align 4, !tbaa !7
  %456 = icmp sgt i32 %455, -2
  br i1 %456, label %457, label %566

457:                                              ; preds = %454
  %458 = add i32 %455, 1
  br label %602

459:                                              ; preds = %592
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %460 unwind label %775

460:                                              ; preds = %459
  unreachable

461:                                              ; preds = %592
  %462 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %600, i64 0, i32 8
  %463 = load i8, i8* %462, align 8, !tbaa !21
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %600, i64 0, i32 9, i64 10
  %467 = load i8, i8* %466, align 1, !tbaa !23
  br label %475

468:                                              ; preds = %461
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %600)
          to label %469 unwind label %775

469:                                              ; preds = %468
  %470 = bitcast %"class.std::ctype"* %600 to i8 (%"class.std::ctype"*, i8)***
  %471 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %470, align 8, !tbaa !16
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
  %481 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %479, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %482 unwind label %775

482:                                              ; preds = %480
  %483 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %484 unwind label %775

484:                                              ; preds = %482
  %485 = add nsw i32 %455, 1
  %486 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %487 = getelementptr i8, i8* %486, i64 -24
  %488 = bitcast i8* %487 to i64*
  %489 = load i64, i64* %488, align 8
  %490 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %489
  %491 = sext i32 %485 to i64
  %492 = getelementptr inbounds i8, i8* %490, i64 16
  %493 = bitcast i8* %492 to i64*
  store i64 %491, i64* %493, align 8, !tbaa !119
  %494 = load i64, i64* %488, align 8
  %495 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %494
  %496 = getelementptr inbounds i8, i8* %495, i64 24
  %497 = bitcast i8* %496 to i32*
  %498 = load i32, i32* %497, align 8, !tbaa !106
  %499 = and i32 %498, -177
  %500 = or i32 %499, 32
  store i32 %500, i32* %497, align 8, !tbaa !112
  %501 = load i8*, i8** %305, align 16, !tbaa !12
  %502 = getelementptr inbounds i8, i8* %501, i64 -24
  %503 = bitcast i8* %502 to i64*
  %504 = load i64, i64* %503, align 8, !tbaa !38
  %505 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %501, i64 %504)
          to label %506 unwind label %775

506:                                              ; preds = %484
  %507 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %505, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %508 unwind label %775

508:                                              ; preds = %506
  %509 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %510 unwind label %775

510:                                              ; preds = %508
  %511 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %512 = getelementptr i8, i8* %511, i64 -24
  %513 = bitcast i8* %512 to i64*
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %514
  %516 = getelementptr inbounds i8, i8* %515, i64 16
  %517 = bitcast i8* %516 to i64*
  store i64 %363, i64* %517, align 8, !tbaa !119
  %518 = load i64, i64* %513, align 8
  %519 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %518
  %520 = getelementptr inbounds i8, i8* %519, i64 24
  %521 = bitcast i8* %520 to i32*
  %522 = load i32, i32* %521, align 8, !tbaa !106
  %523 = and i32 %522, -177
  %524 = or i32 %523, 32
  store i32 %524, i32* %521, align 8, !tbaa !112
  %525 = load i8*, i8** %345, align 8, !tbaa !12
  %526 = getelementptr inbounds i8, i8* %525, i64 -24
  %527 = bitcast i8* %526 to i64*
  %528 = load i64, i64* %527, align 8, !tbaa !38
  %529 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %525, i64 %528)
          to label %530 unwind label %775

530:                                              ; preds = %510
  %531 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %529, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %532 unwind label %775

532:                                              ; preds = %530
  %533 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
          to label %534 unwind label %775

534:                                              ; preds = %532
  %535 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %536 = getelementptr i8, i8* %535, i64 -24
  %537 = bitcast i8* %536 to i64*
  %538 = load i64, i64* %537, align 8
  %539 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %538
  %540 = getelementptr inbounds i8, i8* %539, i64 16
  %541 = bitcast i8* %540 to i64*
  store i64 %404, i64* %541, align 8, !tbaa !119
  %542 = load i64, i64* %537, align 8
  %543 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %542
  %544 = getelementptr inbounds i8, i8* %543, i64 24
  %545 = bitcast i8* %544 to i32*
  %546 = load i32, i32* %545, align 8, !tbaa !106
  %547 = and i32 %546, -177
  %548 = or i32 %547, 32
  store i32 %548, i32* %545, align 8, !tbaa !112
  %549 = load i8*, i8** %386, align 16, !tbaa !12
  %550 = getelementptr inbounds i8, i8* %549, i64 -24
  %551 = bitcast i8* %550 to i64*
  %552 = load i64, i64* %551, align 8, !tbaa !38
  %553 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %549, i64 %552)
          to label %554 unwind label %775

554:                                              ; preds = %534
  %555 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %553, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %556 unwind label %775

556:                                              ; preds = %554
  %557 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %558 = getelementptr i8, i8* %557, i64 -24
  %559 = bitcast i8* %558 to i64*
  %560 = load i64, i64* %559, align 8
  %561 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %560
  %562 = getelementptr inbounds i8, i8* %561, i64 240
  %563 = bitcast i8* %562 to %"class.std::ctype"**
  %564 = load %"class.std::ctype"*, %"class.std::ctype"** %563, align 8, !tbaa !18
  %565 = icmp eq %"class.std::ctype"* %564, null
  br i1 %565, label %608, label %610

566:                                              ; preds = %605, %454
  %567 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %568 unwind label %775

568:                                              ; preds = %566
  %569 = icmp sgt i32 %352, -2
  br i1 %569, label %570, label %578

570:                                              ; preds = %568
  %571 = add i32 %352, 1
  br label %572

572:                                              ; preds = %570, %575
  %573 = phi i32 [ %576, %575 ], [ 0, %570 ]
  %574 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i64 1)
          to label %575 unwind label %771

575:                                              ; preds = %572
  %576 = add nuw i32 %573, 1
  %577 = icmp eq i32 %573, %571
  br i1 %577, label %578, label %572, !llvm.loop !120

578:                                              ; preds = %575, %568
  %579 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %580 unwind label %775

580:                                              ; preds = %578
  %581 = icmp sgt i32 %393, -2
  br i1 %581, label %582, label %590

582:                                              ; preds = %580
  %583 = add i32 %393, 1
  br label %584

584:                                              ; preds = %582, %587
  %585 = phi i32 [ %588, %587 ], [ 0, %582 ]
  %586 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i64 1)
          to label %587 unwind label %769

587:                                              ; preds = %584
  %588 = add nuw i32 %585, 1
  %589 = icmp eq i32 %585, %583
  br i1 %589, label %590, label %584, !llvm.loop !120

590:                                              ; preds = %587, %580
  %591 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
          to label %592 unwind label %775

592:                                              ; preds = %590
  %593 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %594 = getelementptr i8, i8* %593, i64 -24
  %595 = bitcast i8* %594 to i64*
  %596 = load i64, i64* %595, align 8
  %597 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %596
  %598 = getelementptr inbounds i8, i8* %597, i64 240
  %599 = bitcast i8* %598 to %"class.std::ctype"**
  %600 = load %"class.std::ctype"*, %"class.std::ctype"** %599, align 8, !tbaa !18
  %601 = icmp eq %"class.std::ctype"* %600, null
  br i1 %601, label %459, label %461

602:                                              ; preds = %457, %605
  %603 = phi i32 [ %606, %605 ], [ 0, %457 ]
  %604 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i64 1)
          to label %605 unwind label %773

605:                                              ; preds = %602
  %606 = add nuw i32 %603, 1
  %607 = icmp eq i32 %603, %458
  br i1 %607, label %566, label %602, !llvm.loop !120

608:                                              ; preds = %556
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %609 unwind label %775

609:                                              ; preds = %608
  unreachable

610:                                              ; preds = %556
  %611 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %564, i64 0, i32 8
  %612 = load i8, i8* %611, align 8, !tbaa !21
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %617, label %614

614:                                              ; preds = %610
  %615 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %564, i64 0, i32 9, i64 10
  %616 = load i8, i8* %615, align 1, !tbaa !23
  br label %624

617:                                              ; preds = %610
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %564)
          to label %618 unwind label %775

618:                                              ; preds = %617
  %619 = bitcast %"class.std::ctype"* %564 to i8 (%"class.std::ctype"*, i8)***
  %620 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %619, align 8, !tbaa !16
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
  call void @_ZdaPv(i8* nonnull %264) #29
  %630 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %631 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  %632 = load i8*, i8** %631, align 16, !tbaa !12
  %633 = getelementptr inbounds i8, i8* %632, i64 -24
  %634 = bitcast i8* %633 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %630) #26
  %635 = icmp eq i8* %633, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %635, label %648, label %636, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %634, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %648

648:                                              ; preds = %629, %644, %647
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %630) #26
  %649 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  %650 = load i8*, i8** %649, align 8, !tbaa !12
  %651 = getelementptr inbounds i8, i8* %650, i64 -24
  %652 = bitcast i8* %651 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %630) #26
  %653 = icmp eq i8* %651, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %653, label %666, label %654, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %652, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %666

666:                                              ; preds = %665, %662, %648
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %630) #26
  %667 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  %668 = load i8*, i8** %667, align 16, !tbaa !12
  %669 = getelementptr inbounds i8, i8* %668, i64 -24
  %670 = bitcast i8* %669 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %630) #26
  %671 = icmp eq i8* %669, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %671, label %684, label %672, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %670, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %684

684:                                              ; preds = %683, %680, %666
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %630) #26
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %45) #26
  %685 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %686 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2, i32 0, i32 0
  %687 = load i8*, i8** %686, align 16, !tbaa !12
  %688 = getelementptr inbounds i8, i8* %687, i64 -24
  %689 = bitcast i8* %688 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %685) #26
  %690 = icmp eq i8* %688, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %690, label %703, label %691, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %689, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %703

703:                                              ; preds = %684, %699, %702
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %685) #26
  %704 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1, i32 0, i32 0
  %705 = load i8*, i8** %704, align 8, !tbaa !12
  %706 = getelementptr inbounds i8, i8* %705, i64 -24
  %707 = bitcast i8* %706 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %685) #26
  %708 = icmp eq i8* %706, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %708, label %721, label %709, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %707, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %721

721:                                              ; preds = %720, %717, %703
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %685) #26
  %722 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0, i32 0, i32 0
  %723 = load i8*, i8** %722, align 16, !tbaa !12
  %724 = getelementptr inbounds i8, i8* %723, i64 -24
  %725 = bitcast i8* %724 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %685) #26
  %726 = icmp eq i8* %724, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %726, label %739, label %727, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %725, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %739

739:                                              ; preds = %738, %735, %721
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %685) #26
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #26
  br label %787

740:                                              ; preds = %27
  %741 = landingpad { i8*, i32 }
          cleanup
  br label %744

742:                                              ; preds = %33
  %743 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #26
  br label %744

744:                                              ; preds = %740, %742
  %745 = phi %"class.std::basic_string"* [ %34, %742 ], [ %31, %740 ]
  %746 = phi { i8*, i32 } [ %743, %742 ], [ %741, %740 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #26
  br label %747

747:                                              ; preds = %744, %747
  %748 = phi %"class.std::basic_string"* [ %749, %747 ], [ %745, %744 ]
  %749 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %748, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %749) #26
  %750 = icmp eq %"class.std::basic_string"* %749, %29
  br i1 %750, label %785, label %747

751:                                              ; preds = %36
  %752 = landingpad { i8*, i32 }
          cleanup
  br label %755

753:                                              ; preds = %101
  %754 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #26
  br label %755

755:                                              ; preds = %751, %99, %753
  %756 = phi { i8*, i32 } [ %754, %753 ], [ %752, %751 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #26
  br label %777

757:                                              ; preds = %123
  %758 = landingpad { i8*, i32 }
          cleanup
  br label %761

759:                                              ; preds = %171
  %760 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19) #26
  br label %761

761:                                              ; preds = %757, %169, %759
  %762 = phi { i8*, i32 } [ %760, %759 ], [ %758, %757 ], [ %170, %169 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124) #26
  br label %777

763:                                              ; preds = %194
  %764 = landingpad { i8*, i32 }
          cleanup
  br label %767

765:                                              ; preds = %240
  %766 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20) #26
  br label %767

767:                                              ; preds = %763, %238, %765
  %768 = phi { i8*, i32 } [ %766, %765 ], [ %764, %763 ], [ %239, %238 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #26
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
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %779) #26
  %780 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %780) #26
  %781 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %781) #26
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %45) #26
  %782 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %782) #26
  %783 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %783) #26
  %784 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %784) #26
  br label %785

785:                                              ; preds = %747, %777
  %786 = phi { i8*, i32 } [ %778, %777 ], [ %746, %747 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #26
  resume { i8*, i32 } %786

787:                                              ; preds = %739, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN9DwtHaar1D7cleanupEv(%class.DwtHaar1D* nocapture nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 7
  %3 = bitcast float** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !56
  %5 = tail call i32 @hipHostFree(i8* %4)
  %6 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 8
  %7 = bitcast float** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !57
  %9 = tail call i32 @hipHostFree(i8* %8)
  %10 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 9
  %11 = bitcast float** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !58
  %13 = tail call i32 @hipHostFree(i8* %12)
  %14 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 1
  %15 = load float*, float** %14, align 8, !tbaa !24
  %16 = icmp eq float* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = bitcast float* %15 to i8*
  tail call void @free(i8* %18) #26
  store float* null, float** %14, align 8, !tbaa !24
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 2
  %21 = load float*, float** %20, align 8, !tbaa !41
  %22 = icmp eq float* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = bitcast float* %21 to i8*
  tail call void @free(i8* %24) #26
  store float* null, float** %20, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 3
  %27 = load float*, float** %26, align 8, !tbaa !43
  %28 = icmp eq float* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = bitcast float* %27 to i8*
  tail call void @free(i8* %30) #26
  store float* null, float** %26, align 8, !tbaa !43
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %0, i64 0, i32 4
  %33 = load float*, float** %32, align 8, !tbaa !44
  %34 = icmp eq float* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = bitcast float* %33 to i8*
  tail call void @free(i8* %36) #26
  store float* null, float** %32, align 8, !tbaa !44
  br label %37

37:                                               ; preds = %35, %31
  ret i32 0
}

declare dso_local i32 @hipHostFree(i8*) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.DwtHaar1D, align 8
  %4 = bitcast %class.DwtHaar1D* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %4) #26
  %5 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %3, i64 0, i32 0
  store i32 1024, i32* %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %3, i64 0, i32 1
  %7 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %3, i64 0, i32 11
  %8 = bitcast float** %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  store i32 1, i32* %7, align 4, !tbaa !94
  %9 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #28
  %10 = bitcast i8* %9 to %"class.appsdk::HIPCommandArgs"*
  %11 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 0
  %12 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 8, i32 0
  %14 = bitcast i32* %13 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %14, align 8, !tbaa !7
  %15 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %15, align 8, !tbaa !121
  %16 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %16, align 8, !tbaa !70
  %17 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 1
  store i32 0, i32* %17, align 8, !tbaa !75
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 2
  store i32 0, i32* %18, align 4, !tbaa !122
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 4
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 3
  %21 = bitcast i8*** %19 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store i32 123, i32* %20, align 8, !tbaa !123
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 9
  store i8 0, i8* %22, align 4, !tbaa !46
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 10
  store i8 0, i8* %23, align 1, !tbaa !97
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 0, i32 11
  store i8 0, i8* %24, align 2, !tbaa !99
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !16
  %25 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 1
  store i32 0, i32* %25, align 8, !tbaa !124
  %26 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %10, i64 0, i32 2
  store i8 0, i8* %26, align 4, !tbaa !126
  %27 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %3, i64 0, i32 18
  %28 = bitcast %"class.appsdk::HIPCommandArgs"** %27 to i8**
  store i8* %9, i8** %28, align 8, !tbaa !45
  %29 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #28
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false) #26
  %30 = getelementptr inbounds %class.DwtHaar1D, %class.DwtHaar1D* %3, i64 0, i32 17
  %31 = bitcast %"class.appsdk::SDKTimer"** %30 to i8**
  store i8* %29, i8** %31, align 8, !tbaa !78
  %32 = bitcast i8* %9 to %"class.appsdk::SDKCmdArgsParser"*
  %33 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %32, i64 0, i32 12
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0), i64 29)
  %35 = call i32 @_ZN9DwtHaar1D10initializeEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %3)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %27, align 8, !tbaa !45
  %39 = bitcast %"class.appsdk::HIPCommandArgs"* %38 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %40 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %39, align 8, !tbaa !16
  %41 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %40, align 8
  %42 = call i32 %41(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %38, i32 %0, i8** %1)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = call i32 @_ZN9DwtHaar1D5setupEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %3)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = call i32 @_ZN9DwtHaar1D3runEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %3)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = call i32 @_ZN9DwtHaar1D13verifyResultsEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %3)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @_ZN9DwtHaar1D7cleanupEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %3)
  call void @_ZN9DwtHaar1D10printStatsEv(%class.DwtHaar1D* nonnull align 8 dereferenceable(152) %3)
  br label %55

55:                                               ; preds = %53, %50, %47, %44, %37, %2
  %56 = phi i32 [ 1, %2 ], [ 1, %37 ], [ 1, %44 ], [ 1, %47 ], [ 1, %50 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %4) #26
  ret i32 %56
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #17

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #20

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
  store i32 %1, i32* %23, align 4, !tbaa !122
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !127
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
  br i1 %37, label %28, label %38, !llvm.loop !128

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !122
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !127
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !23
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #26
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !122
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !129

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !12
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #26
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !15

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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !122
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !127
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !23
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #26
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !122
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !129

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !12
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #26
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !15

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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !122
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !127
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !23
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #26
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !122
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !129

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !122
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !127
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !23
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !23
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #26
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !122
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !129

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !12
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #26
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %203

203:                                              ; preds = %183, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #26
  br label %204

204:                                              ; preds = %144, %203
  %205 = phi i1 [ %184, %203 ], [ true, %144 ]
  %206 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8, !tbaa !12
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #26
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %209, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #26
  br label %224

224:                                              ; preds = %204, %220, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %210) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #26
  br i1 %205, label %225, label %237

225:                                              ; preds = %224
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !12
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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !122
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !127
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !23
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #26
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !122
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !129

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !122
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !127
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !23
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !23
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #26
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !122
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !129

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !12
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #26
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %294, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %309

309:                                              ; preds = %289, %305, %308
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %295) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #26
  br label %310

310:                                              ; preds = %250, %309
  %311 = phi i1 [ %290, %309 ], [ true, %250 ]
  %312 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8, !tbaa !12
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #26
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %315, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %330

330:                                              ; preds = %310, %326, %329
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %316) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #26
  br i1 %311, label %331, label %339

331:                                              ; preds = %330
  %332 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 2
  store i8 1, i8* %332, align 4, !tbaa !126
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !76
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
  %23 = load i8*, i8** %22, align 8, !tbaa !12
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #26
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %25, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %40

40:                                               ; preds = %21, %36, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #26
  %41 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !12
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #26
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !15

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
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #21

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !23
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !23
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !75
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !76
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !75
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !130

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !76
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !76
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !71
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !74
  store i8 1, i8* %44, align 1, !tbaa !131
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !74
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0), float* %52) #26
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %62
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = getelementptr inbounds i8, i8* %63, i64 32
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !132
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #26
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !74
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), double* %81) #26
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %91
  %93 = bitcast i8* %92 to %"class.std::basic_ios"*
  %94 = getelementptr inbounds i8, i8* %92, i64 32
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !132
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #26
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !74
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i32* %110) #26
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = bitcast i8* %121 to %"class.std::basic_ios"*
  %123 = getelementptr inbounds i8, i8* %121, i64 32
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !132
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #26
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !74
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !12
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !12
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #26
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %147, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %162

162:                                              ; preds = %161, %158, %146
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !12
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !15

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !133
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !38
  store i8 0, i8* %144, align 1, !tbaa !23
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #26
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %182
  %184 = bitcast i8* %183 to %"class.std::basic_ios"*
  %185 = getelementptr inbounds i8, i8* %183, i64 32
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 8, !tbaa !132
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #26
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !75
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !130

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #22

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !106
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !112
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !119
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !106
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !112
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !119
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !75
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !76
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !12
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !38
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !106
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !112
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #26
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !70, !alias.scope !134
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i64 1)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !70, !noalias !137
  store i8* %95, i8** %47, align 8, !tbaa !70, !alias.scope !137
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !12, !noalias !137
  %96 = load i8*, i8** %47, align 8, !tbaa !12
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !38
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %116

116:                                              ; preds = %101, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #26
  %117 = load i8*, i8** %46, align 8, !tbaa !12
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #26
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !15

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
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !106
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !112
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #26
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !76
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !70, !alias.scope !140
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !12, !noalias !140
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !38, !noalias !140
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2)
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
  %170 = load i8*, i8** %51, align 8, !tbaa !12
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !38
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !12
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #26
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %192

192:                                              ; preds = %175, %188, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #26
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !76
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !12
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !38
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !16
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !106
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !112
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !119
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
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.75, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #26
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !76
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #26
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !12
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !38
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !12
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #26
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !15

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %233, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %247

247:                                              ; preds = %230, %243, %246
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %55) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #26
  %248 = add nuw nsw i64 %60, 1
  %249 = load i32, i32* %42, align 8, !tbaa !75
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !143

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
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #23

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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: uwtable
declare dso_local void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80)) local_unnamed_addr #5 align 2

declare dso_local void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_dwthaar1d.cpp() #5 section ".text.startup" {
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, float*, i32, i32, i32, i32)** @_Z9dwtHaar1DPfS_S_jjjj to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

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
attributes #11 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn }
attributes #25 = { inaccessiblememonly nofree nosync nounwind willreturn }
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"_ZTS9DwtHaar1D", !8, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !11, i64 40, !11, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148}
!11 = !{!"double", !5, i64 0}
!12 = !{!13, !4, i64 0}
!13 = !{!"_ZTSSs", !14, i64 0}
!14 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!19, !4, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !20, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!20 = !{!"bool", !5, i64 0}
!21 = !{!22, !5, i64 56}
!22 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !20, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!23 = !{!5, !5, i64 0}
!24 = !{!10, !4, i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !5, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !28, !35}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28, !35}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSs9_Rep_baseE", !40, i64 0, !40, i64 8, !8, i64 16}
!40 = !{!"long", !5, i64 0}
!41 = !{!10, !4, i64 16}
!42 = distinct !{!42, !28}
!43 = !{!10, !4, i64 24}
!44 = !{!10, !4, i64 32}
!45 = !{!10, !4, i64 128}
!46 = !{!47, !20, i64 76}
!47 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !20, i64 40, !13, i64 48, !48, i64 56, !20, i64 76, !20, i64 77, !20, i64 78, !13, i64 80}
!48 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!49 = !{i8 0, i8 2}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = !{!53, !8, i64 332}
!53 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !40, i64 256, !40, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !40, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !54, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !40, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !40, i64 712, !40, i64 720, !40, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!54 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!55 = !{!53, !8, i64 328}
!56 = !{!10, !4, i64 56}
!57 = !{!10, !4, i64 64}
!58 = !{!10, !4, i64 72}
!59 = !{!10, !8, i64 144}
!60 = !{!10, !8, i64 88}
!61 = !{!10, !8, i64 136}
!62 = !{!10, !8, i64 92}
!63 = !{!10, !4, i64 96}
!64 = !{!10, !8, i64 140}
!65 = !{!10, !8, i64 148}
!66 = !{!10, !8, i64 80}
!67 = !{!10, !4, i64 104}
!68 = !{!10, !4, i64 112}
!69 = distinct !{!69, !28}
!70 = !{!14, !4, i64 0}
!71 = !{!72, !73, i64 32}
!72 = !{!"_ZTSN6appsdk6OptionE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !73, i64 32, !4, i64 40}
!73 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!74 = !{!72, !4, i64 40}
!75 = !{!47, !8, i64 8}
!76 = !{!47, !4, i64 32}
!77 = distinct !{!77, !28}
!78 = !{!10, !4, i64 120}
!79 = !{!80, !4, i64 8}
!80 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!82 = !{!80, !4, i64 0}
!83 = !{!10, !11, i64 40}
!84 = !{!85, !86, i64 8}
!85 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !13, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!86 = !{!"long long", !5, i64 0}
!87 = !{!80, !4, i64 16}
!88 = !{!89, !40, i64 0}
!89 = !{!"_ZTS7timeval", !40, i64 0, !40, i64 8}
!90 = !{!89, !40, i64 8}
!91 = !{!85, !86, i64 24}
!92 = !{!85, !86, i64 16}
!93 = distinct !{!93, !28}
!94 = !{!10, !8, i64 84}
!95 = distinct !{!95, !28}
!96 = !{!10, !11, i64 48}
!97 = !{!47, !20, i64 77}
!98 = distinct !{!98, !28}
!99 = !{!47, !20, i64 78}
!100 = !{!101, !11, i64 24}
!101 = !{!"_ZTSN6appsdk8SDKTimerE", !102, i64 0, !11, i64 24}
!102 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!105 = distinct !{!105, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!106 = !{!107, !108, i64 24}
!107 = !{!"_ZTSSt8ios_base", !40, i64 8, !40, i64 16, !108, i64 24, !109, i64 28, !109, i64 32, !4, i64 40, !110, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !111, i64 208}
!108 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!109 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!110 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !40, i64 8}
!111 = !{!"_ZTSSt6locale", !4, i64 0}
!112 = !{!108, !108, i64 0}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!115 = distinct !{!115, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!118 = distinct !{!118, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!119 = !{!107, !40, i64 16}
!120 = distinct !{!120, !28}
!121 = !{!48, !8, i64 16}
!122 = !{!47, !8, i64 12}
!123 = !{!47, !8, i64 16}
!124 = !{!125, !8, i64 88}
!125 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !20, i64 92}
!126 = !{!125, !20, i64 92}
!127 = !{!47, !4, i64 24}
!128 = distinct !{!128, !28}
!129 = distinct !{!129, !28}
!130 = distinct !{!130, !28}
!131 = !{!20, !20, i64 0}
!132 = !{!107, !109, i64 32}
!133 = !{!39, !8, i64 16}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!136 = distinct !{!136, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!139 = distinct !{!139, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!142 = distinct !{!142, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!143 = distinct !{!143, !28}
