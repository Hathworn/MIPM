; ModuleID = 'dct/dct.cpp'
source_filename = "dct/dct.cpp"
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
%"class.dct::DCT" = type { i32, double, double, double, double, i32, i32, float*, float*, i32, i32, i32, float*, float*, float*, float*, float*, [64 x float], i32, %"class.appsdk::SDKTimer"*, float*, float*, float*, float*, %"class.appsdk::HIPCommandArgs"* }
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
@_ZN3dctL1aE = internal global float 0.000000e+00, align 4
@_ZN3dctL1bE = internal global float 0.000000e+00, align 4
@_ZN3dctL1cE = internal global float 0.000000e+00, align 4
@_ZN3dctL1dE = internal global float 0.000000e+00, align 4
@_ZN3dctL1eE = internal global float 0.000000e+00, align 4
@_ZN3dctL1fE = internal global float 0.000000e+00, align 4
@_ZN3dctL1gE = internal global float 0.000000e+00, align 4
@_ZN3dct6dct8x8E = dso_local global [64 x float] zeroinitializer, align 16
@_Z9DCTKernelPfS_S_S_jjj = dso_local constant void (float*, float*, float*, float*, i32, i32, i32)* @_Z24__device_stub__DCTKernelPfS_S_S_jjj, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate host memory. (input)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"dct/dct.cpp\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (output)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"HIP resource initialization failed\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Width of the input matrix\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Height of the input matrix\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"inv\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Run inverse DCT\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c" setupDCT failed\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"Failed to allocate host memory. (verificationOutput)\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"Time(sec)\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"[Transfer+Kernel]Time(sec)\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.62 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"HIP-Examples-Applications-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.73 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.80 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"Cannot fill array. NULL pointer.\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [24 x i8] c"_Z9DCTKernelPfS_S_S_jjj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_dct.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare {}* @llvm.invariant.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #4

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__DCTKernelPfS_S_S_jjj(float* %0, float* %1, float* %2, float* %3, i32 %4, i32 %5, i32 %6) #5 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
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
  store float* %3, float** %11, align 8, !tbaa !3
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
  %27 = bitcast i8** %26 to float***
  store float** %11, float*** %27, align 8
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
  %46 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, float*, i32, i32, i32)** @_Z9DCTKernelPfS_S_S_jjj to i8*), i64 %39, i32 %41, i64 %43, i32 %45, i8** nonnull %20, i64 %35, %struct.ihipStream_t* %37)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: uwtable
define dso_local i32 @_ZN3dct3DCT8setupDCTEv(%"class.dct::DCT"* nocapture nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %12 = load i32, i32* %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 6
  %14 = load i32, i32* %13, align 4, !tbaa !12
  %15 = shl i32 %12, 2
  %16 = mul i32 %15, %14
  %17 = zext i32 %16 to i64
  %18 = tail call noalias align 16 i8* @malloc(i64 %17) #25
  %19 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 7
  %20 = bitcast float** %19 to i8**
  store i8* %18, i8** %20, align 8, !tbaa !13
  %21 = icmp eq i8* %18, null
  %22 = bitcast i8* %18 to float*
  br i1 %21, label %23, label %85

23:                                               ; preds = %1
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6)
          to label %25 unwind label %79

25:                                               ; preds = %23
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %5)
          to label %26 unwind label %81

26:                                               ; preds = %25
  %27 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !14
  %29 = getelementptr inbounds i8, i8* %28, i64 -24
  %30 = bitcast i8* %29 to %"struct.std::basic_string<char>::_Rep"*
  %31 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %31) #25
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
  %39 = load i32, i32* %35, align 8, !tbaa !7
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %35, align 8, !tbaa !7
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %30, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %45

45:                                               ; preds = %26, %41, %44
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #25
  %46 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11)
  %47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 11)
  %48 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1)
  %49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 326)
  %50 = bitcast %"class.std::basic_ostream"* %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !18
  %52 = getelementptr i8, i8* %51, i64 -24
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %"class.std::basic_ostream"* %49 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  %57 = getelementptr inbounds i8, i8* %56, i64 240
  %58 = bitcast i8* %57 to %"class.std::ctype"**
  %59 = load %"class.std::ctype"*, %"class.std::ctype"** %58, align 8, !tbaa !20
  %60 = icmp eq %"class.std::ctype"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

62:                                               ; preds = %45
  %63 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 8
  %64 = load i8, i8* %63, align 8, !tbaa !23
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 9, i64 10
  %68 = load i8, i8* %67, align 1, !tbaa !25
  br label %75

69:                                               ; preds = %62
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59)
  %70 = bitcast %"class.std::ctype"* %59 to i8 (%"class.std::ctype"*, i8)***
  %71 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %70, align 8, !tbaa !18
  %72 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %71, i64 6
  %73 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %72, align 8
  %74 = call signext i8 %73(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59, i8 signext 10)
  br label %75

75:                                               ; preds = %66, %69
  %76 = phi i8 [ %68, %66 ], [ %74, %69 ]
  %77 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49, i8 signext %76)
  %78 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %77)
  br label %244

79:                                               ; preds = %23
  %80 = landingpad { i8*, i32 }
          cleanup
  br label %83

81:                                               ; preds = %25
  %82 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5) #25
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { i8*, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #25
  br label %246

85:                                               ; preds = %1
  %86 = tail call noalias align 16 i8* @malloc(i64 %17) #25
  %87 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 8
  %88 = bitcast float** %87 to i8**
  store i8* %86, i8** %88, align 8, !tbaa !26
  %89 = icmp eq i8* %86, null
  br i1 %89, label %90, label %152

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %91) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8)
          to label %92 unwind label %146

92:                                               ; preds = %90
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %7)
          to label %93 unwind label %148

93:                                               ; preds = %92
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %7, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !14
  %96 = getelementptr inbounds i8, i8* %95, i64 -24
  %97 = bitcast i8* %96 to %"struct.std::basic_string<char>::_Rep"*
  %98 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %98) #25
  %99 = icmp eq i8* %96, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %99, label %112, label %100, !prof !17

100:                                              ; preds = %93
  %101 = getelementptr inbounds i8, i8* %95, i64 -8
  %102 = bitcast i8* %101 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %103, label %105

103:                                              ; preds = %100
  %104 = atomicrmw volatile add i32* %102, i32 -1 acq_rel, align 4
  br label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %102, align 8, !tbaa !7
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %102, align 8, !tbaa !7
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %97, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %112

112:                                              ; preds = %93, %108, %111
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %91) #25
  %113 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11)
  %114 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 11)
  %115 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1)
  %116 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 330)
  %117 = bitcast %"class.std::basic_ostream"* %116 to i8**
  %118 = load i8*, i8** %117, align 8, !tbaa !18
  %119 = getelementptr i8, i8* %118, i64 -24
  %120 = bitcast i8* %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = bitcast %"class.std::basic_ostream"* %116 to i8*
  %123 = getelementptr inbounds i8, i8* %122, i64 %121
  %124 = getelementptr inbounds i8, i8* %123, i64 240
  %125 = bitcast i8* %124 to %"class.std::ctype"**
  %126 = load %"class.std::ctype"*, %"class.std::ctype"** %125, align 8, !tbaa !20
  %127 = icmp eq %"class.std::ctype"* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %112
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

129:                                              ; preds = %112
  %130 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %126, i64 0, i32 8
  %131 = load i8, i8* %130, align 8, !tbaa !23
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %126, i64 0, i32 9, i64 10
  %135 = load i8, i8* %134, align 1, !tbaa !25
  br label %142

136:                                              ; preds = %129
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %126)
  %137 = bitcast %"class.std::ctype"* %126 to i8 (%"class.std::ctype"*, i8)***
  %138 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %137, align 8, !tbaa !18
  %139 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %138, i64 6
  %140 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %139, align 8
  %141 = call signext i8 %140(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %126, i8 signext 10)
  br label %142

142:                                              ; preds = %133, %136
  %143 = phi i8 [ %135, %133 ], [ %141, %136 ]
  %144 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %116, i8 signext %143)
  %145 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %144)
  br label %244

146:                                              ; preds = %90
  %147 = landingpad { i8*, i32 }
          cleanup
  br label %150

148:                                              ; preds = %92
  %149 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #25
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi { i8*, i32 } [ %149, %148 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %91) #25
  br label %246

152:                                              ; preds = %85
  %153 = tail call i32 @_ZN6appsdk10fillRandomIfEEiPT_iiS1_S1_j(float* nonnull %22, i32 %12, i32 %14, float 0.000000e+00, float 2.550000e+02, i32 123)
  %154 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 9
  %155 = load i32, i32* %154, align 8, !tbaa !27
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %152
  %158 = zext i32 %155 to i64
  %159 = and i64 %158, 1
  %160 = icmp eq i32 %155, 1
  %161 = and i64 %158, 4294967294
  %162 = icmp eq i64 %159, 0
  br label %163

163:                                              ; preds = %157, %185
  %164 = phi i32 [ %186, %185 ], [ 0, %157 ]
  %165 = mul i32 %155, %164
  br i1 %160, label %173, label %188

166:                                              ; preds = %185, %152
  %167 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 24
  %168 = bitcast %"class.appsdk::HIPCommandArgs"** %167 to %"class.appsdk::SDKCmdArgsParser"**
  %169 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %168, align 8, !tbaa !28
  %170 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %169, i64 0, i32 9
  %171 = load i8, i8* %170, align 4, !tbaa !29, !range !32
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %213, label %244

173:                                              ; preds = %188, %163
  %174 = phi i64 [ 0, %163 ], [ %210, %188 ]
  br i1 %162, label %185, label %175

175:                                              ; preds = %173
  %176 = trunc i64 %174 to i32
  %177 = mul i32 %155, %176
  %178 = add i32 %177, %164
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 %179
  %181 = load float, float* %180, align 4, !tbaa !33
  %182 = add i32 %165, %176
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %183
  store float %181, float* %184, align 4, !tbaa !33
  br label %185

185:                                              ; preds = %173, %175
  %186 = add nuw i32 %164, 1
  %187 = icmp eq i32 %186, %155
  br i1 %187, label %166, label %163, !llvm.loop !35

188:                                              ; preds = %163, %188
  %189 = phi i64 [ %210, %188 ], [ 0, %163 ]
  %190 = phi i64 [ %211, %188 ], [ 0, %163 ]
  %191 = trunc i64 %189 to i32
  %192 = mul i32 %155, %191
  %193 = add i32 %192, %164
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 %194
  %196 = load float, float* %195, align 4, !tbaa !33
  %197 = add i32 %165, %191
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %198
  store float %196, float* %199, align 4, !tbaa !33
  %200 = trunc i64 %189 to i32
  %201 = or i32 %200, 1
  %202 = mul i32 %155, %201
  %203 = add i32 %202, %164
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 %204
  %206 = load float, float* %205, align 4, !tbaa !33
  %207 = add i32 %165, %201
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %208
  store float %206, float* %209, align 4, !tbaa !33
  %210 = add nuw nsw i64 %189, 2
  %211 = add i64 %190, 2
  %212 = icmp eq i64 %211, %161
  br i1 %212, label %173, label %188, !llvm.loop !37

213:                                              ; preds = %166
  %214 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %214) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10)
          to label %215 unwind label %238

215:                                              ; preds = %213
  %216 = load float*, float** %19, align 8, !tbaa !13
  %217 = load i32, i32* %11, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %9, float* %216, i32 %217, i32 1)
          to label %218 unwind label %240

218:                                              ; preds = %215
  %219 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i64 0, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8, !tbaa !14
  %221 = getelementptr inbounds i8, i8* %220, i64 -24
  %222 = bitcast i8* %221 to %"struct.std::basic_string<char>::_Rep"*
  %223 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %223) #25
  %224 = icmp eq i8* %221, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %224, label %237, label %225, !prof !17

225:                                              ; preds = %218
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
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %222, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %237

237:                                              ; preds = %218, %233, %236
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %223) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %214) #25
  br label %244

238:                                              ; preds = %213
  %239 = landingpad { i8*, i32 }
          cleanup
  br label %242

240:                                              ; preds = %215
  %241 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #25
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi { i8*, i32 } [ %241, %240 ], [ %239, %238 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %214) #25
  br label %246

244:                                              ; preds = %142, %237, %166, %75
  %245 = phi i32 [ 1, %75 ], [ 1, %142 ], [ 0, %237 ], [ 0, %166 ]
  ret i32 %245

246:                                              ; preds = %150, %242, %83
  %247 = phi { i8*, i32 } [ %84, %83 ], [ %151, %150 ], [ %243, %242 ]
  resume { i8*, i32 } %247
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #9 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !14
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !39
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
  tail call void @_ZSt16__throw_bad_castv() #26
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

declare dso_local void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #10 align 2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #11

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk10fillRandomIfEEiPT_iiS1_S1_j(float* %0, i32 %1, i32 %2, float %3, float %4, i32 %5) local_unnamed_addr #7 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = icmp eq float* %0, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %13 unwind label %33

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !14
  %16 = getelementptr inbounds i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #25
  %19 = icmp eq i8* %16, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %19, label %32, label %20, !prof !17

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
  store float %63, float* %64, align 4, !tbaa !33
  %65 = add nuw nsw i64 %56, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %67, label %55, !llvm.loop !42

67:                                               ; preds = %55
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %50
  br i1 %69, label %70, label %52, !llvm.loop !43

70:                                               ; preds = %67, %40, %32
  %71 = phi i32 [ 1, %32 ], [ 0, %40 ], [ 0, %67 ]
  ret i32 %71
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* %0, float* %1, i32 %2, i32 %3) local_unnamed_addr #9 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !39
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %7, i64 %10)
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i64 1)
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
  %27 = load float, float* %26, align 4, !tbaa !33
  %28 = fpext float %27 to double
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !44

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !45

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !45

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN3dct3DCT8setupHIPEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #9 align 2 {
  %2 = alloca %struct.hipDeviceProp_t, align 8
  %3 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %3) #25
  %4 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %2, i32 0)
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64 14)
  %6 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 13
  %7 = load i32, i32* %6, align 4, !tbaa !46
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
  call void @_ZSt16__throw_bad_castv() #26
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
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i64 14)
  %39 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 12
  %40 = load i32, i32* %39, align 8, !tbaa !49
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
  call void @_ZSt16__throw_bad_castv() #26
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
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i64 17)
  %72 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #25
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
  call void @_ZSt16__throw_bad_castv() #26
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
  %101 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 13
  %102 = bitcast float** %101 to i8**
  %103 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %104 = load i32, i32* %103, align 8, !tbaa !9
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 2
  %107 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 6
  %108 = load i32, i32* %107, align 4, !tbaa !12
  %109 = sext i32 %108 to i64
  %110 = mul i64 %106, %109
  %111 = call i32 @hipHostMalloc(i8** nonnull %102, i64 %110, i32 0)
  %112 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 14
  %113 = bitcast float** %112 to i8**
  %114 = load i32, i32* %103, align 8, !tbaa !9
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  %117 = load i32, i32* %107, align 4, !tbaa !12
  %118 = sext i32 %117 to i64
  %119 = mul i64 %116, %118
  %120 = call i32 @hipHostMalloc(i8** nonnull %113, i64 %119, i32 0)
  %121 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 15
  %122 = bitcast float** %121 to i8**
  %123 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 10
  %124 = load i32, i32* %123, align 4, !tbaa !50
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 2
  %127 = call i32 @hipHostMalloc(i8** nonnull %122, i64 %126, i32 0)
  %128 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 16
  %129 = bitcast float** %128 to i8**
  %130 = load i32, i32* %123, align 4, !tbaa !50
  %131 = zext i32 %130 to i64
  %132 = shl nuw nsw i64 %131, 2
  %133 = call i32 @hipHostMalloc(i8** nonnull %129, i64 %132, i32 0)
  %134 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 20
  %135 = bitcast float** %134 to i8**
  %136 = load i8*, i8** %102, align 8, !tbaa !51
  %137 = call i32 @hipHostGetDevicePointer(i8** nonnull %135, i8* %136, i32 0)
  %138 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 22
  %139 = bitcast float** %138 to i8**
  %140 = load i8*, i8** %113, align 8, !tbaa !52
  %141 = call i32 @hipHostGetDevicePointer(i8** nonnull %139, i8* %140, i32 0)
  %142 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 21
  %143 = bitcast float** %142 to i8**
  %144 = load i8*, i8** %122, align 8, !tbaa !53
  %145 = call i32 @hipHostGetDevicePointer(i8** nonnull %143, i8* %144, i32 0)
  %146 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 23
  %147 = bitcast float** %146 to i8**
  %148 = load i8*, i8** %129, align 8, !tbaa !54
  %149 = call i32 @hipHostGetDevicePointer(i8** nonnull %147, i8* %148, i32 0)
  %150 = load i8*, i8** %135, align 8, !tbaa !55
  %151 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 7
  %152 = bitcast float** %151 to i8**
  %153 = load i8*, i8** %152, align 8, !tbaa !13
  %154 = load i32, i32* %103, align 8, !tbaa !9
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 2
  %157 = load i32, i32* %107, align 4, !tbaa !12
  %158 = sext i32 %157 to i64
  %159 = mul i64 %156, %158
  %160 = call i32 @hipMemcpy(i8* %150, i8* %153, i64 %159, i32 1)
  %161 = load i8*, i8** %143, align 8, !tbaa !56
  %162 = load i32, i32* %123, align 4, !tbaa !50
  %163 = zext i32 %162 to i64
  %164 = shl nuw nsw i64 %163, 2
  %165 = call i32 @hipMemcpy(i8* %161, i8* bitcast ([64 x float]* @_ZN3dct6dct8x8E to i8*), i64 %164, i32 1)
  %166 = load i8*, i8** %147, align 8, !tbaa !57
  %167 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 0
  %168 = bitcast float* %167 to i8*
  %169 = load i32, i32* %123, align 4, !tbaa !50
  %170 = zext i32 %169 to i64
  %171 = shl nuw nsw i64 %170, 2
  %172 = call i32 @hipMemcpy(i8* %166, i8* nonnull %168, i64 %171, i32 1)
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %3) #25
  ret i32 0
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN3dct3DCT10runKernelsEv(%"class.dct::DCT"* nocapture nonnull readonly align 8 dereferenceable(432) %0) local_unnamed_addr #7 align 2 {
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
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
  %17 = bitcast %struct.ihipEvent_t** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #25
  %18 = bitcast %struct.ihipEvent_t** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #25
  %19 = bitcast float* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #25
  store float 1.000000e+00, float* %16, align 4, !tbaa !33
  %20 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %14)
  %21 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %15)
  %22 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !3
  %23 = call i32 @hipEventRecord(%struct.ihipEvent_t* %22, %struct.ihipStream_t* null)
  %24 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %25 = load i32, i32* %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 9
  %27 = load i32, i32* %26, align 8, !tbaa !27
  %28 = udiv i32 %25, %27
  %29 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 6
  %30 = load i32, i32* %29, align 4, !tbaa !12
  %31 = udiv i32 %30, %27
  %32 = zext i32 %31 to i64
  %33 = shl nuw i64 %32, 32
  %34 = zext i32 %28 to i64
  %35 = or i64 %33, %34
  %36 = zext i32 %27 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or i64 %37, %36
  %39 = call i32 @__hipPushCallConfiguration(i64 %35, i32 1, i64 %38, i32 1, i64 0, %struct.ihipStream_t* null)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %1
  %42 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 14
  %43 = load float*, float** %42, align 8, !tbaa !52
  %44 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 13
  %45 = load float*, float** %44, align 8, !tbaa !51
  %46 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 15
  %47 = load float*, float** %46, align 8, !tbaa !53
  %48 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 16
  %49 = load float*, float** %48, align 8, !tbaa !54
  %50 = load i32, i32* %24, align 8, !tbaa !9
  %51 = load i32, i32* %26, align 8, !tbaa !27
  %52 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 11
  %53 = load i32, i32* %52, align 8, !tbaa !58
  %54 = bitcast float** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54)
  %55 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55)
  %56 = bitcast float** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56)
  %57 = bitcast float** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57)
  %58 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58)
  %59 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %59)
  %60 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %60)
  %61 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %61)
  %62 = bitcast %struct.dim3* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %62)
  %63 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63)
  %64 = bitcast i8** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64)
  %65 = bitcast [7 x i8*]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %65)
  store float* %43, float** %2, align 8, !tbaa !3
  store float* %45, float** %3, align 8, !tbaa !3
  store float* %47, float** %4, align 8, !tbaa !3
  store float* %49, float** %5, align 8, !tbaa !3
  store i32 %50, i32* %6, align 4, !tbaa !7
  store i32 %51, i32* %7, align 4, !tbaa !7
  store i32 %53, i32* %8, align 4, !tbaa !7
  %66 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 0
  %67 = bitcast [7 x i8*]* %13 to float***
  store float** %2, float*** %67, align 16
  %68 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 1
  %69 = bitcast i8** %68 to float***
  store float** %3, float*** %69, align 8
  %70 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 2
  %71 = bitcast i8** %70 to float***
  store float** %4, float*** %71, align 16
  %72 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 3
  %73 = bitcast i8** %72 to float***
  store float** %5, float*** %73, align 8
  %74 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 4
  %75 = bitcast i8** %74 to i32**
  store i32* %6, i32** %75, align 16
  %76 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 5
  %77 = bitcast i8** %76 to i32**
  store i32* %7, i32** %77, align 8
  %78 = getelementptr inbounds [7 x i8*], [7 x i8*]* %13, i64 0, i64 6
  %79 = bitcast i8** %78 to i32**
  store i32* %8, i32** %79, align 16
  %80 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %81 = load i64, i64* %11, align 8
  %82 = bitcast i8** %12 to %struct.ihipStream_t**
  %83 = load %struct.ihipStream_t*, %struct.ihipStream_t** %82, align 8
  %84 = bitcast %struct.dim3* %9 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = bitcast %struct.dim3* %10 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, float*, i32, i32, i32)** @_Z9DCTKernelPfS_S_S_jjj to i8*), i64 %85, i32 %87, i64 %89, i32 %91, i8** nonnull %66, i64 %81, %struct.ihipStream_t* %83)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %59)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %60)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %61)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %62)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %65)
  br label %93

93:                                               ; preds = %41, %1
  %94 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %15, align 8, !tbaa !3
  %95 = call i32 @hipEventRecord(%struct.ihipEvent_t* %94, %struct.ihipStream_t* null)
  %96 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %15, align 8, !tbaa !3
  %97 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %96)
  %98 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !3
  %99 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %15, align 8, !tbaa !3
  %100 = call i32 @hipEventElapsedTime(float* nonnull %16, %struct.ihipEvent_t* %98, %struct.ihipEvent_t* %99)
  %101 = load float, float* %16, align 4, !tbaa !33
  %102 = fpext float %101 to double
  %103 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), double %102)
  %104 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 8
  %105 = bitcast float** %104 to i8**
  %106 = load i8*, i8** %105, align 8, !tbaa !26
  %107 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 22
  %108 = bitcast float** %107 to i8**
  %109 = load i8*, i8** %108, align 8, !tbaa !59
  %110 = load i32, i32* %24, align 8, !tbaa !9
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 2
  %113 = load i32, i32* %29, align 4, !tbaa !12
  %114 = sext i32 %113 to i64
  %115 = mul i64 %112, %114
  %116 = call i32 @hipMemcpy(i8* %106, i8* %109, i64 %115, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #25
  ret i32 0
}

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @_ZN3dct3DCT6getIdxEjjjjjj(%"class.dct::DCT"* nocapture nonnull readnone align 8 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #13 align 2 {
  %8 = mul i32 %5, %1
  %9 = add i32 %8, %3
  %10 = mul i32 %5, %2
  %11 = add i32 %10, %4
  %12 = mul i32 %11, %6
  %13 = add i32 %9, %12
  ret i32 %13
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3dct3DCT15DCTCPUReferenceEPfPKfS3_jjjjj(%"class.dct::DCT"* nocapture nonnull readonly align 8 dereferenceable(432) %0, float* nocapture writeonly %1, float* nocapture readonly %2, float* nocapture readonly %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) local_unnamed_addr #14 align 2 {
  %10 = mul i32 %5, %4
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = tail call noalias align 16 i8* @malloc(i64 %12) #25
  %14 = bitcast i8* %13 to float*
  %15 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 9
  %16 = icmp eq i32 %8, 0
  %17 = icmp eq i32 %7, 0
  %18 = icmp eq i32 %6, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %336, label %20

20:                                               ; preds = %9, %333
  %21 = phi i32 [ %334, %333 ], [ 0, %9 ]
  %22 = load i32, i32* %15, align 8
  %23 = mul i32 %22, %21
  %24 = icmp eq i32 %22, 0
  %25 = zext i32 %22 to i64
  %26 = zext i32 %22 to i64
  %27 = zext i32 %22 to i64
  %28 = zext i32 %22 to i64
  %29 = add nsw i64 %28, -1
  %30 = and i64 %28, 1
  %31 = icmp eq i64 %29, 0
  %32 = and i64 %28, 4294967294
  %33 = icmp eq i64 %30, 0
  %34 = and i64 %28, 1
  %35 = icmp eq i64 %29, 0
  %36 = and i64 %28, 4294967294
  %37 = icmp eq i64 %34, 0
  %38 = and i64 %28, 1
  %39 = icmp eq i64 %29, 0
  %40 = and i64 %28, 4294967294
  %41 = icmp eq i64 %38, 0
  %42 = and i64 %28, 1
  %43 = icmp eq i64 %29, 0
  %44 = and i64 %28, 4294967294
  %45 = icmp eq i64 %42, 0
  br label %133

46:                                               ; preds = %261, %330, %133, %132
  %47 = add nuw i32 %134, 1
  %48 = icmp eq i32 %47, %6
  br i1 %48, label %333, label %133, !llvm.loop !60

49:                                               ; preds = %253, %122
  %50 = phi i64 [ %259, %253 ], [ 0, %122 ]
  %51 = trunc i64 %50 to i32
  br i1 %39, label %236, label %52

52:                                               ; preds = %49, %52
  %53 = phi i64 [ %81, %52 ], [ 0, %49 ]
  %54 = phi float [ %80, %52 ], [ 0.000000e+00, %49 ]
  %55 = phi i64 [ %82, %52 ], [ 0, %49 ]
  %56 = trunc i64 %53 to i32
  %57 = add i32 %126, %56
  %58 = mul i32 %22, %56
  %59 = add i32 %58, %51
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds float, float* %14, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !33
  %63 = zext i32 %59 to i64
  %64 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !33
  %66 = fmul contract float %62, %65
  %67 = fadd contract float %54, %66
  %68 = trunc i64 %53 to i32
  %69 = or i32 %68, 1
  %70 = add i32 %126, %69
  %71 = mul i32 %22, %69
  %72 = add i32 %71, %51
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds float, float* %14, i64 %73
  %75 = load float, float* %74, align 4, !tbaa !33
  %76 = zext i32 %72 to i64
  %77 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %76
  %78 = load float, float* %77, align 4, !tbaa !33
  %79 = fmul contract float %75, %78
  %80 = fadd contract float %67, %79
  %81 = add nuw nsw i64 %53, 2
  %82 = add i64 %55, 2
  %83 = icmp eq i64 %82, %40
  br i1 %83, label %236, label %52, !llvm.loop !61

84:                                               ; preds = %154, %127
  %85 = phi i64 [ %159, %154 ], [ 0, %127 ]
  %86 = trunc i64 %85 to i32
  %87 = add i32 %135, %86
  br i1 %31, label %136, label %88

88:                                               ; preds = %84, %88
  %89 = phi i64 [ %119, %88 ], [ 0, %84 ]
  %90 = phi float [ %118, %88 ], [ 0.000000e+00, %84 ]
  %91 = phi i64 [ %120, %88 ], [ 0, %84 ]
  %92 = trunc i64 %89 to i32
  %93 = add i32 %131, %92
  %94 = add i32 %23, %92
  %95 = mul i32 %94, %4
  %96 = add i32 %95, %87
  %97 = zext i32 %93 to i64
  %98 = getelementptr inbounds float, float* %3, i64 %97
  %99 = load float, float* %98, align 4, !tbaa !33
  %100 = zext i32 %96 to i64
  %101 = getelementptr inbounds float, float* %2, i64 %100
  %102 = load float, float* %101, align 4, !tbaa !33
  %103 = fmul contract float %99, %102
  %104 = fadd contract float %90, %103
  %105 = trunc i64 %89 to i32
  %106 = or i32 %105, 1
  %107 = add i32 %131, %106
  %108 = add i32 %23, %106
  %109 = mul i32 %108, %4
  %110 = add i32 %109, %87
  %111 = zext i32 %107 to i64
  %112 = getelementptr inbounds float, float* %3, i64 %111
  %113 = load float, float* %112, align 4, !tbaa !33
  %114 = zext i32 %110 to i64
  %115 = getelementptr inbounds float, float* %2, i64 %114
  %116 = load float, float* %115, align 4, !tbaa !33
  %117 = fmul contract float %113, %116
  %118 = fadd contract float %104, %117
  %119 = add nuw nsw i64 %89, 2
  %120 = add i64 %91, 2
  %121 = icmp eq i64 %120, %32
  br i1 %121, label %136, label %88, !llvm.loop !62

122:                                              ; preds = %264, %261
  %123 = phi i32 [ %262, %261 ], [ 0, %264 ]
  %124 = add i32 %123, %23
  %125 = mul i32 %124, %4
  %126 = add i32 %125, %135
  br label %49

127:                                              ; preds = %164, %161
  %128 = phi i32 [ %162, %161 ], [ 0, %164 ]
  %129 = add i32 %23, %128
  %130 = mul i32 %129, %4
  %131 = mul i32 %22, %128
  br label %84

132:                                              ; preds = %161, %233
  br i1 %24, label %46, label %264

133:                                              ; preds = %20, %46
  %134 = phi i32 [ 0, %20 ], [ %47, %46 ]
  %135 = mul i32 %22, %134
  br i1 %24, label %46, label %164

136:                                              ; preds = %88, %84
  %137 = phi float [ undef, %84 ], [ %118, %88 ]
  %138 = phi i64 [ 0, %84 ], [ %119, %88 ]
  %139 = phi float [ 0.000000e+00, %84 ], [ %118, %88 ]
  br i1 %33, label %154, label %140

140:                                              ; preds = %136
  %141 = trunc i64 %138 to i32
  %142 = add i32 %131, %141
  %143 = add i32 %23, %141
  %144 = mul i32 %143, %4
  %145 = add i32 %144, %87
  %146 = zext i32 %142 to i64
  %147 = getelementptr inbounds float, float* %3, i64 %146
  %148 = load float, float* %147, align 4, !tbaa !33
  %149 = zext i32 %145 to i64
  %150 = getelementptr inbounds float, float* %2, i64 %149
  %151 = load float, float* %150, align 4, !tbaa !33
  %152 = fmul contract float %148, %151
  %153 = fadd contract float %139, %152
  br label %154

154:                                              ; preds = %136, %140
  %155 = phi float [ %137, %136 ], [ %153, %140 ]
  %156 = add i32 %87, %130
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %14, i64 %157
  store float %155, float* %158, align 4, !tbaa !33
  %159 = add nuw nsw i64 %85, 1
  %160 = icmp eq i64 %159, %25
  br i1 %160, label %161, label %84, !llvm.loop !63

161:                                              ; preds = %154
  %162 = add nuw i32 %128, 1
  %163 = icmp eq i32 %162, %22
  br i1 %163, label %132, label %127, !llvm.loop !64

164:                                              ; preds = %133
  br i1 %16, label %165, label %127

165:                                              ; preds = %164, %233
  %166 = phi i32 [ %234, %233 ], [ 0, %164 ]
  %167 = add i32 %23, %166
  %168 = mul i32 %167, %4
  %169 = mul i32 %22, %166
  br label %170

170:                                              ; preds = %226, %165
  %171 = phi i64 [ %231, %226 ], [ 0, %165 ]
  %172 = trunc i64 %171 to i32
  %173 = add i32 %135, %172
  br i1 %35, label %208, label %174

174:                                              ; preds = %170, %174
  %175 = phi i64 [ %205, %174 ], [ 0, %170 ]
  %176 = phi float [ %204, %174 ], [ 0.000000e+00, %170 ]
  %177 = phi i64 [ %206, %174 ], [ 0, %170 ]
  %178 = trunc i64 %175 to i32
  %179 = add i32 %169, %178
  %180 = add i32 %23, %178
  %181 = mul i32 %180, %4
  %182 = add i32 %181, %173
  %183 = zext i32 %179 to i64
  %184 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %183
  %185 = load float, float* %184, align 4, !tbaa !33
  %186 = zext i32 %182 to i64
  %187 = getelementptr inbounds float, float* %2, i64 %186
  %188 = load float, float* %187, align 4, !tbaa !33
  %189 = fmul contract float %185, %188
  %190 = fadd contract float %176, %189
  %191 = trunc i64 %175 to i32
  %192 = or i32 %191, 1
  %193 = add i32 %169, %192
  %194 = add i32 %23, %192
  %195 = mul i32 %194, %4
  %196 = add i32 %195, %173
  %197 = zext i32 %193 to i64
  %198 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %197
  %199 = load float, float* %198, align 4, !tbaa !33
  %200 = zext i32 %196 to i64
  %201 = getelementptr inbounds float, float* %2, i64 %200
  %202 = load float, float* %201, align 4, !tbaa !33
  %203 = fmul contract float %199, %202
  %204 = fadd contract float %190, %203
  %205 = add nuw nsw i64 %175, 2
  %206 = add i64 %177, 2
  %207 = icmp eq i64 %206, %36
  br i1 %207, label %208, label %174, !llvm.loop !62

208:                                              ; preds = %174, %170
  %209 = phi float [ undef, %170 ], [ %204, %174 ]
  %210 = phi i64 [ 0, %170 ], [ %205, %174 ]
  %211 = phi float [ 0.000000e+00, %170 ], [ %204, %174 ]
  br i1 %37, label %226, label %212

212:                                              ; preds = %208
  %213 = trunc i64 %210 to i32
  %214 = add i32 %169, %213
  %215 = add i32 %23, %213
  %216 = mul i32 %215, %4
  %217 = add i32 %216, %173
  %218 = zext i32 %214 to i64
  %219 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %218
  %220 = load float, float* %219, align 4, !tbaa !33
  %221 = zext i32 %217 to i64
  %222 = getelementptr inbounds float, float* %2, i64 %221
  %223 = load float, float* %222, align 4, !tbaa !33
  %224 = fmul contract float %220, %223
  %225 = fadd contract float %211, %224
  br label %226

226:                                              ; preds = %208, %212
  %227 = phi float [ %209, %208 ], [ %225, %212 ]
  %228 = add i32 %173, %168
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %14, i64 %229
  store float %227, float* %230, align 4, !tbaa !33
  %231 = add nuw nsw i64 %171, 1
  %232 = icmp eq i64 %231, %26
  br i1 %232, label %233, label %170, !llvm.loop !63

233:                                              ; preds = %226
  %234 = add nuw i32 %166, 1
  %235 = icmp eq i32 %234, %22
  br i1 %235, label %132, label %165, !llvm.loop !64

236:                                              ; preds = %52, %49
  %237 = phi float [ undef, %49 ], [ %80, %52 ]
  %238 = phi i64 [ 0, %49 ], [ %81, %52 ]
  %239 = phi float [ 0.000000e+00, %49 ], [ %80, %52 ]
  br i1 %41, label %253, label %240

240:                                              ; preds = %236
  %241 = trunc i64 %238 to i32
  %242 = add i32 %126, %241
  %243 = mul i32 %22, %241
  %244 = add i32 %243, %51
  %245 = zext i32 %242 to i64
  %246 = getelementptr inbounds float, float* %14, i64 %245
  %247 = load float, float* %246, align 4, !tbaa !33
  %248 = zext i32 %244 to i64
  %249 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 17, i64 %248
  %250 = load float, float* %249, align 4, !tbaa !33
  %251 = fmul contract float %247, %250
  %252 = fadd contract float %239, %251
  br label %253

253:                                              ; preds = %236, %240
  %254 = phi float [ %237, %236 ], [ %252, %240 ]
  %255 = trunc i64 %50 to i32
  %256 = add i32 %126, %255
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %1, i64 %257
  store float %254, float* %258, align 4, !tbaa !33
  %259 = add nuw nsw i64 %50, 1
  %260 = icmp eq i64 %259, %27
  br i1 %260, label %261, label %49, !llvm.loop !65

261:                                              ; preds = %253
  %262 = add nuw i32 %123, 1
  %263 = icmp eq i32 %262, %22
  br i1 %263, label %46, label %122, !llvm.loop !66

264:                                              ; preds = %132
  br i1 %16, label %265, label %122

265:                                              ; preds = %264, %330
  %266 = phi i32 [ %331, %330 ], [ 0, %264 ]
  %267 = add i32 %266, %23
  %268 = mul i32 %267, %4
  %269 = add i32 %268, %135
  br label %270

270:                                              ; preds = %322, %265
  %271 = phi i64 [ %328, %322 ], [ 0, %265 ]
  %272 = trunc i64 %271 to i32
  br i1 %43, label %305, label %273

273:                                              ; preds = %270, %273
  %274 = phi i64 [ %302, %273 ], [ 0, %270 ]
  %275 = phi float [ %301, %273 ], [ 0.000000e+00, %270 ]
  %276 = phi i64 [ %303, %273 ], [ 0, %270 ]
  %277 = trunc i64 %274 to i32
  %278 = add i32 %269, %277
  %279 = mul i32 %22, %277
  %280 = add i32 %279, %272
  %281 = zext i32 %278 to i64
  %282 = getelementptr inbounds float, float* %14, i64 %281
  %283 = load float, float* %282, align 4, !tbaa !33
  %284 = zext i32 %280 to i64
  %285 = getelementptr inbounds float, float* %3, i64 %284
  %286 = load float, float* %285, align 4, !tbaa !33
  %287 = fmul contract float %283, %286
  %288 = fadd contract float %275, %287
  %289 = trunc i64 %274 to i32
  %290 = or i32 %289, 1
  %291 = add i32 %269, %290
  %292 = mul i32 %22, %290
  %293 = add i32 %292, %272
  %294 = zext i32 %291 to i64
  %295 = getelementptr inbounds float, float* %14, i64 %294
  %296 = load float, float* %295, align 4, !tbaa !33
  %297 = zext i32 %293 to i64
  %298 = getelementptr inbounds float, float* %3, i64 %297
  %299 = load float, float* %298, align 4, !tbaa !33
  %300 = fmul contract float %296, %299
  %301 = fadd contract float %288, %300
  %302 = add nuw nsw i64 %274, 2
  %303 = add i64 %276, 2
  %304 = icmp eq i64 %303, %44
  br i1 %304, label %305, label %273, !llvm.loop !61

305:                                              ; preds = %273, %270
  %306 = phi float [ undef, %270 ], [ %301, %273 ]
  %307 = phi i64 [ 0, %270 ], [ %302, %273 ]
  %308 = phi float [ 0.000000e+00, %270 ], [ %301, %273 ]
  br i1 %45, label %322, label %309

309:                                              ; preds = %305
  %310 = trunc i64 %307 to i32
  %311 = add i32 %269, %310
  %312 = mul i32 %22, %310
  %313 = add i32 %312, %272
  %314 = zext i32 %311 to i64
  %315 = getelementptr inbounds float, float* %14, i64 %314
  %316 = load float, float* %315, align 4, !tbaa !33
  %317 = zext i32 %313 to i64
  %318 = getelementptr inbounds float, float* %3, i64 %317
  %319 = load float, float* %318, align 4, !tbaa !33
  %320 = fmul contract float %316, %319
  %321 = fadd contract float %308, %320
  br label %322

322:                                              ; preds = %305, %309
  %323 = phi float [ %306, %305 ], [ %321, %309 ]
  %324 = trunc i64 %271 to i32
  %325 = add i32 %269, %324
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %1, i64 %326
  store float %323, float* %327, align 4, !tbaa !33
  %328 = add nuw nsw i64 %271, 1
  %329 = icmp eq i64 %328, %28
  br i1 %329, label %330, label %270, !llvm.loop !65

330:                                              ; preds = %322
  %331 = add nuw i32 %266, 1
  %332 = icmp eq i32 %331, %22
  br i1 %332, label %46, label %265, !llvm.loop !66

333:                                              ; preds = %46
  %334 = add nuw i32 %21, 1
  %335 = icmp eq i32 %334, %7
  br i1 %335, label %336, label %20, !llvm.loop !67

336:                                              ; preds = %333, %9
  tail call void @free(i8* %13) #25
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #15

; Function Attrs: uwtable
define dso_local i32 @_ZN3dct3DCT10initializeEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 24
  %6 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %5, align 8, !tbaa !28
  %7 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %11 unwind label %64

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !14
  %14 = getelementptr inbounds i8, i8* %13, i64 -24
  %15 = bitcast i8* %14 to %"struct.std::basic_string<char>::_Rep"*
  %16 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %16) #25
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
  %24 = load i32, i32* %20, align 8, !tbaa !7
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %20, align 8, !tbaa !7
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %15, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %30

30:                                               ; preds = %11, %26, %29
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %16) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #25
  %31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11)
  %32 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 11)
  %33 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1)
  %34 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 499)
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
  call void @_ZSt16__throw_bad_castv() #26
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
  br label %140

64:                                               ; preds = %9
  %65 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #25
  resume { i8*, i32 } %65

66:                                               ; preds = %1
  %67 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %68 = bitcast i8* %67 to %"struct.appsdk::Option"*
  %69 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %69, align 8, !tbaa !68
  %70 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %70, align 8, !tbaa !68
  %71 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %71, align 8, !tbaa !68
  %72 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %72, align 8, !tbaa !68
  %73 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 0
  %74 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 1)
  %75 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 1
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 5)
  %77 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 2
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i64 25)
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 4
  store i32 0, i32* %79, align 8, !tbaa !69
  %80 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %81 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %68, i64 0, i32 5
  %82 = bitcast i8** %81 to i32**
  store i32* %80, i32** %82, align 8, !tbaa !72
  %83 = bitcast %"class.appsdk::HIPCommandArgs"** %5 to %"class.appsdk::SDKCmdArgsParser"**
  %84 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !28
  %85 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %84, %"struct.appsdk::Option"* nonnull %68)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %68) #25
  tail call void @_ZdlPv(i8* nonnull %67) #28
  %86 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %87 = bitcast i8* %86 to %"struct.appsdk::Option"*
  %88 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %88, align 8, !tbaa !68
  %89 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %89, align 8, !tbaa !68
  %90 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %90, align 8, !tbaa !68
  %91 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %91, align 8, !tbaa !68
  %92 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 0
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i64 1)
  %94 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 1
  %95 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 6)
  %96 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 2
  %97 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i64 26)
  %98 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 4
  store i32 0, i32* %98, align 8, !tbaa !69
  %99 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 6
  %100 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %87, i64 0, i32 5
  %101 = bitcast i8** %100 to i32**
  store i32* %99, i32** %101, align 8, !tbaa !72
  %102 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !28
  %103 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %102, %"struct.appsdk::Option"* nonnull %87)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %87) #25
  tail call void @_ZdlPv(i8* nonnull %86) #28
  %104 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %105 = bitcast i8* %104 to %"struct.appsdk::Option"*
  %106 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %106, align 8, !tbaa !68
  %107 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %107, align 8, !tbaa !68
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %108, align 8, !tbaa !68
  %109 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %109, align 8, !tbaa !68
  %110 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 0
  %111 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i64 1)
  %112 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 1
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i64 10)
  %114 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 2
  %115 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i64 41)
  %116 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 4
  store i32 0, i32* %116, align 8, !tbaa !69
  %117 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 18
  %118 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %105, i64 0, i32 5
  %119 = bitcast i8** %118 to i32**
  store i32* %117, i32** %119, align 8, !tbaa !72
  %120 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !28
  %121 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %120, %"struct.appsdk::Option"* nonnull %105)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %105) #25
  tail call void @_ZdlPv(i8* nonnull %104) #28
  %122 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %123 = bitcast i8* %122 to %"struct.appsdk::Option"*
  %124 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %124, align 8, !tbaa !68
  %125 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %125, align 8, !tbaa !68
  %126 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %126, align 8, !tbaa !68
  %127 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %127, align 8, !tbaa !68
  %128 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 0
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3)
  %130 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 1
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i64 7)
  %132 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 2
  %133 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i64 15)
  %134 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 4
  store i32 0, i32* %134, align 8, !tbaa !69
  %135 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 11
  %136 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %123, i64 0, i32 5
  %137 = bitcast i8** %136 to i32**
  store i32* %135, i32** %137, align 8, !tbaa !72
  %138 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !28
  %139 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %138, %"struct.appsdk::Option"* nonnull %123)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %123) #25
  tail call void @_ZdlPv(i8* nonnull %122) #28
  br label %140

140:                                              ; preds = %66, %60
  %141 = phi i32 [ 1, %60 ], [ 0, %66 ]
  ret i32 %141
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #27
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !68
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !68
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !68
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !68
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !68
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !68
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !68
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !68
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !68
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !68
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !68
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !68
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !68
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !68
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !68
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !68
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !68
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !68
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !68
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !68
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.50, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !69
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !72
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.53, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !69
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !72
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !69
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !72
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !69
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !72
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.62, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !69
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !72
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !73
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !74
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #17

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, %"struct.appsdk::Option"* %1) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"struct.appsdk::Option"* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !74
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !73
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
  store i8* %21, i8** %25, align 8, !tbaa !74
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !68
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !68
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !68
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !68
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !74
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
  %59 = load i32, i32* %10, align 8, !tbaa !73
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !74
  br i1 %61, label %39, label %63, !llvm.loop !75

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
  %83 = load i32, i32* %10, align 8, !tbaa !73
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !73
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
define linkonce_odr dso_local void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %0) unnamed_addr #18 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 3, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #25
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
  %26 = load i8*, i8** %25, align 8, !tbaa !14
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #25
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
  %45 = load i8*, i8** %44, align 8, !tbaa !14
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #25
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
  %64 = load i8*, i8** %63, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #25
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
define dso_local i32 @_ZN3dct3DCT5setupEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 9
  %11 = load i32, i32* %10, align 8, !tbaa !27
  %12 = urem i32 %9, %11
  %13 = udiv i32 %9, %11
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = add i32 %13, 1
  %17 = mul i32 %16, %11
  store i32 %17, i32* %8, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 6
  %20 = load i32, i32* %19, align 4, !tbaa !12
  %21 = urem i32 %20, %11
  %22 = udiv i32 %20, %11
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = add i32 %22, 1
  %26 = mul i32 %25, %11
  store i32 %26, i32* %19, align 4, !tbaa !12
  br label %27

27:                                               ; preds = %24, %18
  %28 = tail call i32 @_ZN3dct3DCT8setupDCTEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %94, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %31) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %32 unwind label %86

32:                                               ; preds = %30
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %33 unwind label %88

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !14
  %36 = getelementptr inbounds i8, i8* %35, i64 -24
  %37 = bitcast i8* %36 to %"struct.std::basic_string<char>::_Rep"*
  %38 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %38) #25
  %39 = icmp eq i8* %36, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %39, label %52, label %40, !prof !17

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %37, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %52

52:                                               ; preds = %33, %48, %51
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %38) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #25
  %53 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11)
  %54 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 11)
  %55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1)
  %56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 564)
  %57 = bitcast %"class.std::basic_ostream"* %56 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !18
  %59 = getelementptr i8, i8* %58, i64 -24
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = bitcast %"class.std::basic_ostream"* %56 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  %64 = getelementptr inbounds i8, i8* %63, i64 240
  %65 = bitcast i8* %64 to %"class.std::ctype"**
  %66 = load %"class.std::ctype"*, %"class.std::ctype"** %65, align 8, !tbaa !20
  %67 = icmp eq %"class.std::ctype"* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

69:                                               ; preds = %52
  %70 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %66, i64 0, i32 8
  %71 = load i8, i8* %70, align 8, !tbaa !23
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %66, i64 0, i32 9, i64 10
  %75 = load i8, i8* %74, align 1, !tbaa !25
  br label %82

76:                                               ; preds = %69
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %66)
  %77 = bitcast %"class.std::ctype"* %66 to i8 (%"class.std::ctype"*, i8)***
  %78 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %77, align 8, !tbaa !18
  %79 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %78, i64 6
  %80 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %79, align 8
  %81 = call signext i8 %80(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %66, i8 signext 10)
  br label %82

82:                                               ; preds = %73, %76
  %83 = phi i8 [ %75, %73 ], [ %81, %76 ]
  %84 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %56, i8 signext %83)
  %85 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %84)
  br label %149

86:                                               ; preds = %30
  %87 = landingpad { i8*, i32 }
          cleanup
  br label %92

88:                                               ; preds = %32
  %89 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #25
  br label %92

90:                                               ; preds = %132, %92
  %91 = phi { i8*, i32 } [ %93, %92 ], [ %133, %132 ]
  resume { i8*, i32 } %91

92:                                               ; preds = %88, %86
  %93 = phi { i8*, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #25
  br label %90

94:                                               ; preds = %27
  %95 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 19
  %96 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %95, align 8, !tbaa !76
  %97 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %96)
  %98 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %95, align 8, !tbaa !76
  %99 = bitcast %"class.std::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %99)
  %100 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %98, i64 0, i32 0, i32 0, i32 0, i32 1
  %101 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %100, align 8, !tbaa !77
  %102 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %98, i64 0, i32 0, i32 0, i32 0, i32 0
  %103 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %102, align 8, !tbaa !80
  %104 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %101 to i64
  %105 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %103 to i64
  %106 = sub i64 %104, %105
  %107 = lshr exact i64 %106, 3
  %108 = trunc i64 %107 to i32
  %109 = icmp slt i32 %97, %108
  br i1 %109, label %134, label %110

110:                                              ; preds = %94
  %111 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %111) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %112 unwind label %132

112:                                              ; preds = %110
  %113 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8, !tbaa !14
  %115 = getelementptr inbounds i8, i8* %114, i64 -24
  %116 = bitcast i8* %115 to %"struct.std::basic_string<char>::_Rep"*
  %117 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %117) #25
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
  %125 = load i32, i32* %121, align 8, !tbaa !7
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %121, align 8, !tbaa !7
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %116, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %131

131:                                              ; preds = %130, %127, %112
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %111) #25
  br label %140

132:                                              ; preds = %110
  %133 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %111) #25
  br label %90

134:                                              ; preds = %94
  %135 = sext i32 %97 to i64
  %136 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %103, i64 %135
  %137 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %136, align 8, !tbaa !3
  %138 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %137, i64 0, i32 2
  %139 = bitcast i64* %138 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %139, i8 0, i64 16, i1 false)
  br label %140

140:                                              ; preds = %131, %134
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %99)
  %141 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %95, align 8, !tbaa !76
  %142 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %141, i32 %97)
  %143 = call i32 @_ZN3dct3DCT8setupHIPEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0)
  %144 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %95, align 8, !tbaa !76
  %145 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %144, i32 %97)
  %146 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %95, align 8, !tbaa !76
  %147 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %146, i32 %97)
  %148 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 1
  store double %147, double* %148, align 8, !tbaa !81
  br label %149

149:                                              ; preds = %140, %82
  %150 = phi i32 [ 1, %82 ], [ 0, %140 ]
  ret i32 %150
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !77
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !85
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !77
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !77
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !80
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !80
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
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !80
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
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !77
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
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !80
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !77
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !85
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
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !77
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !80
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #25
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
  %45 = load i64, i64* %44, align 8, !tbaa !86
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !88
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !80
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #25
  br label %56

56:                                               ; preds = %41, %38
  %57 = phi i32 [ 1, %38 ], [ 0, %41 ]
  ret i32 %57
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !77
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !80
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #25
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
  %45 = load i64, i64* %44, align 8, !tbaa !86
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !88
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !80
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !89
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !89
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !90
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #25
  br label %61

61:                                               ; preds = %41, %38
  %62 = phi i32 [ 1, %38 ], [ 0, %41 ]
  ret i32 %62
}

; Function Attrs: uwtable
define linkonce_odr dso_local double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !80
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !14
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #25
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
  %45 = load i64, i64* %44, align 8, !tbaa !90
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !82
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN3dct3DCT3runEv(%"class.dct::DCT"* nocapture nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 18
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @_ZN3dct3DCT10runKernelsEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0)
  %13 = load i32, i32* %8, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_ZN3dct3DCT10runKernelsEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0)
  br label %17

17:                                               ; preds = %11, %15, %1
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i64 21)
  %19 = load i32, i32* %8, align 8, !tbaa !91
  %20 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %19)
  %21 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i64 11)
  %22 = bitcast %"class.std::basic_ostream"* %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !18
  %24 = getelementptr i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %"class.std::basic_ostream"* %20 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  %29 = getelementptr inbounds i8, i8* %28, i64 240
  %30 = bitcast i8* %29 to %"class.std::ctype"**
  %31 = load %"class.std::ctype"*, %"class.std::ctype"** %30, align 8, !tbaa !20
  %32 = icmp eq %"class.std::ctype"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

34:                                               ; preds = %17
  %35 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 8
  %36 = load i8, i8* %35, align 8, !tbaa !23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 9, i64 10
  %40 = load i8, i8* %39, align 1, !tbaa !25
  br label %47

41:                                               ; preds = %34
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31)
  %42 = bitcast %"class.std::ctype"* %31 to i8 (%"class.std::ctype"*, i8)***
  %43 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %42, align 8, !tbaa !18
  %44 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %43, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %44, align 8
  %46 = tail call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31, i8 signext 10)
  br label %47

47:                                               ; preds = %38, %41
  %48 = phi i8 [ %40, %38 ], [ %46, %41 ]
  %49 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8 signext %48)
  %50 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49)
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0), i64 43)
  %52 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %53 = getelementptr i8, i8* %52, i64 -24
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 240
  %58 = bitcast i8* %57 to %"class.std::ctype"**
  %59 = load %"class.std::ctype"*, %"class.std::ctype"** %58, align 8, !tbaa !20
  %60 = icmp eq %"class.std::ctype"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

62:                                               ; preds = %47
  %63 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 8
  %64 = load i8, i8* %63, align 8, !tbaa !23
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 9, i64 10
  %68 = load i8, i8* %67, align 1, !tbaa !25
  br label %75

69:                                               ; preds = %62
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59)
  %70 = bitcast %"class.std::ctype"* %59 to i8 (%"class.std::ctype"*, i8)***
  %71 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %70, align 8, !tbaa !18
  %72 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %71, i64 6
  %73 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %72, align 8
  %74 = tail call signext i8 %73(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59, i8 signext 10)
  br label %75

75:                                               ; preds = %66, %69
  %76 = phi i8 [ %68, %66 ], [ %74, %69 ]
  %77 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %76)
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %77)
  %79 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 19
  %80 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !76
  %81 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %80)
  %82 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !76
  %83 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83)
  %84 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 1
  %85 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %84, align 8, !tbaa !77
  %86 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 0
  %87 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %86, align 8, !tbaa !80
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %96 unwind label %118

96:                                               ; preds = %94
  %97 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !14
  %99 = getelementptr inbounds i8, i8* %98, i64 -24
  %100 = bitcast i8* %99 to %"struct.std::basic_string<char>::_Rep"*
  %101 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %101) #25
  %102 = icmp eq i8* %99, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %102, label %115, label %103, !prof !17

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
  %127 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !76
  %128 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %127, i32 %81)
  %129 = load i32, i32* %8, align 8, !tbaa !91
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %131
  %132 = phi i32 [ %134, %131 ], [ 0, %126 ]
  %133 = call i32 @_ZN3dct3DCT10runKernelsEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0)
  %134 = add nuw nsw i32 %132, 1
  %135 = load i32, i32* %8, align 8, !tbaa !91
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %131, label %137, !llvm.loop !92

137:                                              ; preds = %131, %126
  %138 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !76
  %139 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %138, i32 %81)
  %140 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !76
  %141 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %140, i32 %81)
  %142 = load i32, i32* %8, align 8, !tbaa !91
  %143 = sitofp i32 %142 to double
  %144 = fdiv contract double %141, %143
  %145 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 2
  store double %144, double* %145, align 8, !tbaa !93
  %146 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 24
  %147 = bitcast %"class.appsdk::HIPCommandArgs"** %146 to %"class.appsdk::SDKCmdArgsParser"**
  %148 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %147, align 8, !tbaa !28
  %149 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %148, i64 0, i32 9
  %150 = load i8, i8* %149, align 4, !tbaa !29, !range !32
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %137
  %153 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %153) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %154 unwind label %179

154:                                              ; preds = %152
  %155 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 8
  %156 = load float*, float** %155, align 8, !tbaa !26
  %157 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %158 = load i32, i32* %157, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %6, float* %156, i32 %158, i32 1)
          to label %159 unwind label %181

159:                                              ; preds = %154
  %160 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8, !tbaa !14
  %162 = getelementptr inbounds i8, i8* %161, i64 -24
  %163 = bitcast i8* %162 to %"struct.std::basic_string<char>::_Rep"*
  %164 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %164) #25
  %165 = icmp eq i8* %162, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %165, label %178, label %166, !prof !17

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
define dso_local i32 @_ZN3dct3DCT13verifyResultsEv(%"class.dct::DCT"* nocapture nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 24
  %9 = bitcast %"class.appsdk::HIPCommandArgs"** %8 to %"class.appsdk::SDKCmdArgsParser"**
  %10 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %9, align 8, !tbaa !28
  %11 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %10, i64 0, i32 10
  %12 = load i8, i8* %11, align 1, !tbaa !94, !range !32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %280, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %16 = load i32, i32* %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 6
  %18 = load i32, i32* %17, align 4, !tbaa !12
  %19 = mul nsw i32 %18, %16
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call noalias align 16 i8* @malloc(i64 %21) #25
  %23 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 12
  %24 = bitcast float** %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !95
  %25 = icmp eq i8* %22, null
  br i1 %25, label %26, label %89

26:                                               ; preds = %14
  %27 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %27) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %28 unwind label %81

28:                                               ; preds = %26
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %29 unwind label %83

29:                                               ; preds = %28
  %30 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8, !tbaa !14
  %32 = getelementptr inbounds i8, i8* %31, i64 -24
  %33 = bitcast i8* %32 to %"struct.std::basic_string<char>::_Rep"*
  %34 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %34) #25
  %35 = icmp eq i8* %32, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %35, label %48, label %36, !prof !17

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, i8* %31, i64 -8
  %38 = bitcast i8* %37 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %39, label %41

39:                                               ; preds = %36
  %40 = atomicrmw volatile add i32* %38, i32 -1 acq_rel, align 4
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %38, align 8, !tbaa !7
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %38, align 8, !tbaa !7
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %33, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %48

48:                                               ; preds = %29, %44, %47
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %34) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %27) #25
  %49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11)
  %50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 11)
  %51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1)
  %52 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 625)
  %53 = bitcast %"class.std::basic_ostream"* %52 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !18
  %55 = getelementptr i8, i8* %54, i64 -24
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = bitcast %"class.std::basic_ostream"* %52 to i8*
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  %60 = getelementptr inbounds i8, i8* %59, i64 240
  %61 = bitcast i8* %60 to %"class.std::ctype"**
  %62 = load %"class.std::ctype"*, %"class.std::ctype"** %61, align 8, !tbaa !20
  %63 = icmp eq %"class.std::ctype"* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

65:                                               ; preds = %48
  %66 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i64 0, i32 8
  %67 = load i8, i8* %66, align 8, !tbaa !23
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i64 0, i32 9, i64 10
  %71 = load i8, i8* %70, align 1, !tbaa !25
  br label %78

72:                                               ; preds = %65
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %62)
  %73 = bitcast %"class.std::ctype"* %62 to i8 (%"class.std::ctype"*, i8)***
  %74 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %73, align 8, !tbaa !18
  %75 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %74, i64 6
  %76 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %75, align 8
  %77 = call signext i8 %76(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %62, i8 signext 10)
  br label %78

78:                                               ; preds = %69, %72
  %79 = phi i8 [ %71, %69 ], [ %77, %72 ]
  %80 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %52, i8 signext %79)
  br label %276

81:                                               ; preds = %26
  %82 = landingpad { i8*, i32 }
          cleanup
  br label %87

83:                                               ; preds = %28
  %84 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #25
  br label %87

85:                                               ; preds = %127, %87
  %86 = phi { i8*, i32 } [ %88, %87 ], [ %128, %127 ]
  resume { i8*, i32 } %86

87:                                               ; preds = %83, %81
  %88 = phi { i8*, i32 } [ %84, %83 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %27) #25
  br label %85

89:                                               ; preds = %14
  %90 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 19
  %91 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %90, align 8, !tbaa !76
  %92 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %91)
  %93 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %90, align 8, !tbaa !76
  %94 = bitcast %"class.std::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94)
  %95 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %93, i64 0, i32 0, i32 0, i32 0, i32 1
  %96 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %95, align 8, !tbaa !77
  %97 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %93, i64 0, i32 0, i32 0, i32 0, i32 0
  %98 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %97, align 8, !tbaa !80
  %99 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %96 to i64
  %100 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %98 to i64
  %101 = sub i64 %99, %100
  %102 = lshr exact i64 %101, 3
  %103 = trunc i64 %102 to i32
  %104 = icmp slt i32 %92, %103
  br i1 %104, label %129, label %105

105:                                              ; preds = %89
  %106 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %106) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %107 unwind label %127

107:                                              ; preds = %105
  %108 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8, !tbaa !14
  %110 = getelementptr inbounds i8, i8* %109, i64 -24
  %111 = bitcast i8* %110 to %"struct.std::basic_string<char>::_Rep"*
  %112 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %112) #25
  %113 = icmp eq i8* %110, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %113, label %126, label %114, !prof !17

114:                                              ; preds = %107
  %115 = getelementptr inbounds i8, i8* %109, i64 -8
  %116 = bitcast i8* %115 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %117, label %119

117:                                              ; preds = %114
  %118 = atomicrmw volatile add i32* %116, i32 -1 acq_rel, align 4
  br label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %116, align 8, !tbaa !7
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %116, align 8, !tbaa !7
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %111, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %126

126:                                              ; preds = %125, %122, %107
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %112) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %106) #25
  br label %135

127:                                              ; preds = %105
  %128 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %106) #25
  br label %85

129:                                              ; preds = %89
  %130 = sext i32 %92 to i64
  %131 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %98, i64 %130
  %132 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %131, align 8, !tbaa !3
  %133 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %132, i64 0, i32 2
  %134 = bitcast i64* %133 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  br label %135

135:                                              ; preds = %126, %129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94)
  %136 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %90, align 8, !tbaa !76
  %137 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %136, i32 %92)
  %138 = load float*, float** %23, align 8, !tbaa !95
  %139 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 7
  %140 = load float*, float** %139, align 8, !tbaa !13
  %141 = load i32, i32* %15, align 8, !tbaa !9
  %142 = load i32, i32* %17, align 4, !tbaa !12
  %143 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 9
  %144 = load i32, i32* %143, align 8, !tbaa !27
  %145 = udiv i32 %141, %144
  %146 = udiv i32 %142, %144
  %147 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 11
  %148 = load i32, i32* %147, align 8, !tbaa !58
  call void @_ZN3dct3DCT15DCTCPUReferenceEPfPKfS3_jjjjj(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %0, float* %138, float* %140, float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 0), i32 %141, i32 %142, i32 %145, i32 %146, i32 %148)
  %149 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %90, align 8, !tbaa !76
  %150 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %149, i32 %92)
  %151 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %90, align 8, !tbaa !76
  %152 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %151, i32 %92)
  %153 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 4
  store double %152, double* %153, align 8, !tbaa !96
  %154 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 8
  %155 = load float*, float** %154, align 8, !tbaa !26
  %156 = load float*, float** %23, align 8, !tbaa !95
  %157 = load i32, i32* %15, align 8, !tbaa !9
  %158 = load i32, i32* %17, align 4, !tbaa !12
  %159 = mul nsw i32 %158, %157
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %183

161:                                              ; preds = %135
  %162 = zext i32 %159 to i64
  %163 = add nsw i64 %162, -1
  %164 = and i64 %163, 1
  %165 = icmp eq i32 %159, 2
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = and i64 %163, -2
  br label %189

168:                                              ; preds = %189, %161
  %169 = phi <2 x float> [ undef, %161 ], [ %211, %189 ]
  %170 = phi i64 [ 1, %161 ], [ %212, %189 ]
  %171 = phi <2 x float> [ zeroinitializer, %161 ], [ %211, %189 ]
  %172 = icmp eq i64 %164, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds float, float* %155, i64 %170
  %175 = load float, float* %174, align 4, !tbaa !33
  %176 = getelementptr inbounds float, float* %156, i64 %170
  %177 = load float, float* %176, align 4, !tbaa !33
  %178 = fsub contract float %175, %177
  %179 = insertelement <2 x float> poison, float %175, i64 0
  %180 = insertelement <2 x float> %179, float %178, i64 1
  %181 = fmul contract <2 x float> %180, %180
  %182 = fadd contract <2 x float> %171, %181
  br label %183

183:                                              ; preds = %173, %168, %135
  %184 = phi <2 x float> [ zeroinitializer, %135 ], [ %169, %168 ], [ %182, %173 ]
  %185 = extractelement <2 x float> %184, i64 0
  %186 = call contract float @sqrtf(float %185) #25
  %187 = call contract float @llvm.fabs.f32(float %185) #25
  %188 = fcmp contract olt float %187, 0x3E7AD7F2A0000000
  br i1 %188, label %248, label %215

189:                                              ; preds = %189, %166
  %190 = phi i64 [ 1, %166 ], [ %212, %189 ]
  %191 = phi <2 x float> [ zeroinitializer, %166 ], [ %211, %189 ]
  %192 = phi i64 [ 0, %166 ], [ %213, %189 ]
  %193 = getelementptr inbounds float, float* %155, i64 %190
  %194 = load float, float* %193, align 4, !tbaa !33
  %195 = getelementptr inbounds float, float* %156, i64 %190
  %196 = load float, float* %195, align 4, !tbaa !33
  %197 = fsub contract float %194, %196
  %198 = insertelement <2 x float> poison, float %194, i64 0
  %199 = insertelement <2 x float> %198, float %197, i64 1
  %200 = fmul contract <2 x float> %199, %199
  %201 = fadd contract <2 x float> %191, %200
  %202 = add nuw nsw i64 %190, 1
  %203 = getelementptr inbounds float, float* %155, i64 %202
  %204 = load float, float* %203, align 4, !tbaa !33
  %205 = getelementptr inbounds float, float* %156, i64 %202
  %206 = load float, float* %205, align 4, !tbaa !33
  %207 = fsub contract float %204, %206
  %208 = insertelement <2 x float> poison, float %204, i64 0
  %209 = insertelement <2 x float> %208, float %207, i64 1
  %210 = fmul contract <2 x float> %209, %209
  %211 = fadd contract <2 x float> %201, %210
  %212 = add nuw nsw i64 %190, 2
  %213 = add i64 %192, 2
  %214 = icmp eq i64 %213, %167
  br i1 %214, label %168, label %189, !llvm.loop !97

215:                                              ; preds = %183
  %216 = extractelement <2 x float> %184, i64 1
  %217 = call contract float @sqrtf(float %216) #25
  %218 = fdiv contract float %217, %186
  %219 = fcmp contract olt float %218, 0x3EB0C6F7A0000000
  br i1 %219, label %220, label %248

220:                                              ; preds = %215
  %221 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i64 8)
  %222 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %223 = getelementptr i8, i8* %222, i64 -24
  %224 = bitcast i8* %223 to i64*
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %225
  %227 = getelementptr inbounds i8, i8* %226, i64 240
  %228 = bitcast i8* %227 to %"class.std::ctype"**
  %229 = load %"class.std::ctype"*, %"class.std::ctype"** %228, align 8, !tbaa !20
  %230 = icmp eq %"class.std::ctype"* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %220
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

232:                                              ; preds = %220
  %233 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %229, i64 0, i32 8
  %234 = load i8, i8* %233, align 8, !tbaa !23
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %229, i64 0, i32 9, i64 10
  %238 = load i8, i8* %237, align 1, !tbaa !25
  br label %245

239:                                              ; preds = %232
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %229)
  %240 = bitcast %"class.std::ctype"* %229 to i8 (%"class.std::ctype"*, i8)***
  %241 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %240, align 8, !tbaa !18
  %242 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %241, i64 6
  %243 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %242, align 8
  %244 = call signext i8 %243(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %229, i8 signext 10)
  br label %245

245:                                              ; preds = %236, %239
  %246 = phi i8 [ %238, %236 ], [ %244, %239 ]
  %247 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %246)
  br label %276

248:                                              ; preds = %183, %215
  %249 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i64 7)
  %250 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %251 = getelementptr i8, i8* %250, i64 -24
  %252 = bitcast i8* %251 to i64*
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %253
  %255 = getelementptr inbounds i8, i8* %254, i64 240
  %256 = bitcast i8* %255 to %"class.std::ctype"**
  %257 = load %"class.std::ctype"*, %"class.std::ctype"** %256, align 8, !tbaa !20
  %258 = icmp eq %"class.std::ctype"* %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %248
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

260:                                              ; preds = %248
  %261 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %257, i64 0, i32 8
  %262 = load i8, i8* %261, align 8, !tbaa !23
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %257, i64 0, i32 9, i64 10
  %266 = load i8, i8* %265, align 1, !tbaa !25
  br label %273

267:                                              ; preds = %260
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %257)
  %268 = bitcast %"class.std::ctype"* %257 to i8 (%"class.std::ctype"*, i8)***
  %269 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %268, align 8, !tbaa !18
  %270 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %269, i64 6
  %271 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %270, align 8
  %272 = call signext i8 %271(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %257, i8 signext 10)
  br label %273

273:                                              ; preds = %264, %267
  %274 = phi i8 [ %266, %264 ], [ %272, %267 ]
  %275 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %274)
  br label %276

276:                                              ; preds = %78, %273, %245
  %277 = phi %"class.std::basic_ostream"* [ %247, %245 ], [ %275, %273 ], [ %80, %78 ]
  %278 = phi i32 [ 0, %245 ], [ 1, %273 ], [ 1, %78 ]
  %279 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %277)
  br label %280

280:                                              ; preds = %276, %1
  %281 = phi i32 [ 0, %1 ], [ %278, %276 ]
  ret i32 %281
}

; Function Attrs: uwtable
define dso_local void @_ZN3dct3DCT10printStatsEv(%"class.dct::DCT"* nocapture nonnull readonly align 8 dereferenceable(432) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %26 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 24
  %27 = bitcast %"class.appsdk::HIPCommandArgs"** %26 to %"class.appsdk::SDKCmdArgsParser"**
  %28 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %27, align 8, !tbaa !28
  %29 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %28, i64 0, i32 11
  %30 = load i8, i8* %29, align 2, !tbaa !98, !range !32
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %996, label %32

32:                                               ; preds = %1
  %33 = bitcast [4 x %"class.std::basic_string"]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #25
  %34 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
  %36 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  %37 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %37) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %18)
          to label %38 unwind label %934

38:                                               ; preds = %32
  %39 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  %40 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %40) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %41 unwind label %936

41:                                               ; preds = %38
  %42 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  %43 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %43) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20)
          to label %44 unwind label %938

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  %45 = bitcast [4 x %"class.std::basic_string"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %45) #25
  %46 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  %47 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 16, !tbaa !68
  %48 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !68
  %49 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 16, !tbaa !68
  %50 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %50, align 8, !tbaa !68
  %51 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 1
  %52 = load double, double* %51, align 8, !tbaa !81
  %53 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 2
  %54 = load double, double* %53, align 8, !tbaa !93
  %55 = fadd contract double %52, %54
  %56 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 19
  %57 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !76
  %58 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %57, i64 0, i32 1
  store double %55, double* %58, align 8, !tbaa !99
  %59 = bitcast %"class.std::basic_string"* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #25
  %60 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 5
  %61 = load i32, i32* %60, align 8, !tbaa !9
  %62 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %62) #25, !noalias !102
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %63 unwind label %950

63:                                               ; preds = %44
  %64 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %65 = load i8*, i8** %64, align 8, !tbaa !18, !noalias !102
  %66 = getelementptr i8, i8* %65, i64 -24
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8, !noalias !102
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 24
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 8, !tbaa !105, !noalias !102
  %73 = and i32 %72, -75
  %74 = or i32 %73, 2
  store i32 %74, i32* %71, align 8, !tbaa !111, !noalias !102
  %75 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %76 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %75, i32 %61)
          to label %77 unwind label %107, !noalias !102

77:                                               ; preds = %63
  %78 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %22, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %78)
          to label %79 unwind label %107

79:                                               ; preds = %77
  %80 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %81 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %81, align 8, !tbaa !18, !noalias !102
  %82 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %83 = getelementptr i32 (...)*, i32 (...)** %80, i64 -3
  %84 = bitcast i32 (...)** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %62, i64 %85
  %87 = bitcast i8* %86 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %87, align 8, !tbaa !18, !noalias !102
  %88 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %88, align 8, !tbaa !18, !noalias !102
  %89 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8, !tbaa !14, !noalias !102
  %91 = getelementptr inbounds i8, i8* %90, i64 -24
  %92 = bitcast i8* %91 to %"struct.std::basic_string<char>::_Rep"*
  %93 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %93) #25, !noalias !102
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
  %101 = load i32, i32* %97, align 8, !tbaa !7
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %97, align 8, !tbaa !7
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %92, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14) #25
  br label %109

107:                                              ; preds = %77, %63
  %108 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %62) #25, !noalias !102
  br label %954

109:                                              ; preds = %106, %103, %79
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %93) #25, !noalias !102
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %88, align 8, !tbaa !18, !noalias !102
  %110 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %110) #25
  %111 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %111) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %62) #25, !noalias !102
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %46, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22)
          to label %112 unwind label %952

112:                                              ; preds = %109
  %113 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %22, i64 0, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8, !tbaa !14
  %115 = getelementptr inbounds i8, i8* %114, i64 -24
  %116 = bitcast i8* %115 to %"struct.std::basic_string<char>::_Rep"*
  %117 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %117) #25
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
  %125 = load i32, i32* %121, align 8, !tbaa !7
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %121, align 8, !tbaa !7
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %116, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #25
  br label %131

131:                                              ; preds = %112, %127, %130
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #25
  %132 = bitcast %"class.std::basic_string"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %132) #25
  %133 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 6
  %134 = load i32, i32* %133, align 4, !tbaa !12
  %135 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %135) #25, !noalias !112
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %136 unwind label %956

136:                                              ; preds = %131
  %137 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %138 = load i8*, i8** %137, align 8, !tbaa !18, !noalias !112
  %139 = getelementptr i8, i8* %138, i64 -24
  %140 = bitcast i8* %139 to i64*
  %141 = load i64, i64* %140, align 8, !noalias !112
  %142 = getelementptr inbounds i8, i8* %135, i64 %141
  %143 = getelementptr inbounds i8, i8* %142, i64 24
  %144 = bitcast i8* %143 to i32*
  %145 = load i32, i32* %144, align 8, !tbaa !105, !noalias !112
  %146 = and i32 %145, -75
  %147 = or i32 %146, 2
  store i32 %147, i32* %144, align 8, !tbaa !111, !noalias !112
  %148 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %149 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %148, i32 %134)
          to label %150 unwind label %176, !noalias !112

150:                                              ; preds = %136
  %151 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %23, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %151)
          to label %152 unwind label %176

152:                                              ; preds = %150
  %153 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %153, align 8, !tbaa !18, !noalias !112
  %154 = load i64, i64* %84, align 8
  %155 = getelementptr inbounds i8, i8* %135, i64 %154
  %156 = bitcast i8* %155 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %156, align 8, !tbaa !18, !noalias !112
  %157 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %157, align 8, !tbaa !18, !noalias !112
  %158 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8, !tbaa !14, !noalias !112
  %160 = getelementptr inbounds i8, i8* %159, i64 -24
  %161 = bitcast i8* %160 to %"struct.std::basic_string<char>::_Rep"*
  %162 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %162) #25, !noalias !112
  %163 = icmp eq i8* %160, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %163, label %178, label %164, !prof !17

164:                                              ; preds = %152
  %165 = getelementptr inbounds i8, i8* %159, i64 -8
  %166 = bitcast i8* %165 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %167, label %169

167:                                              ; preds = %164
  %168 = atomicrmw volatile add i32* %166, i32 -1 acq_rel, align 4
  br label %172

169:                                              ; preds = %164
  %170 = load i32, i32* %166, align 8, !tbaa !7
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %166, align 8, !tbaa !7
  br label %172

172:                                              ; preds = %169, %167
  %173 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %161, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #25
  br label %178

176:                                              ; preds = %150, %136
  %177 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %135) #25, !noalias !112
  br label %960

178:                                              ; preds = %175, %172, %152
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %162) #25, !noalias !112
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %157, align 8, !tbaa !18, !noalias !112
  %179 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %179) #25
  %180 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %180) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %135) #25, !noalias !112
  %181 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %181, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23)
          to label %182 unwind label %958

182:                                              ; preds = %178
  %183 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %23, i64 0, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8, !tbaa !14
  %185 = getelementptr inbounds i8, i8* %184, i64 -24
  %186 = bitcast i8* %185 to %"struct.std::basic_string<char>::_Rep"*
  %187 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %187) #25
  %188 = icmp eq i8* %185, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %188, label %201, label %189, !prof !17

189:                                              ; preds = %182
  %190 = getelementptr inbounds i8, i8* %184, i64 -8
  %191 = bitcast i8* %190 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %192, label %194

192:                                              ; preds = %189
  %193 = atomicrmw volatile add i32* %191, i32 -1 acq_rel, align 4
  br label %197

194:                                              ; preds = %189
  %195 = load i32, i32* %191, align 8, !tbaa !7
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %191, align 8, !tbaa !7
  br label %197

197:                                              ; preds = %194, %192
  %198 = phi i32 [ %193, %192 ], [ %195, %194 ]
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %186, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #25
  br label %201

201:                                              ; preds = %182, %197, %200
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %187) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %132) #25
  %202 = bitcast %"class.std::basic_string"* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %202) #25
  %203 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !76
  %204 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %203, i64 0, i32 1
  %205 = load double, double* %204, align 8, !tbaa !99
  %206 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %206) #25, !noalias !115
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %207 unwind label %962

207:                                              ; preds = %201
  %208 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %209 = load i8*, i8** %208, align 8, !tbaa !18, !noalias !115
  %210 = getelementptr i8, i8* %209, i64 -24
  %211 = bitcast i8* %210 to i64*
  %212 = load i64, i64* %211, align 8, !noalias !115
  %213 = getelementptr inbounds i8, i8* %206, i64 %212
  %214 = getelementptr inbounds i8, i8* %213, i64 24
  %215 = bitcast i8* %214 to i32*
  %216 = load i32, i32* %215, align 8, !tbaa !105, !noalias !115
  %217 = and i32 %216, -75
  %218 = or i32 %217, 2
  store i32 %218, i32* %215, align 8, !tbaa !111, !noalias !115
  %219 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %220 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %219, double %205)
          to label %221 unwind label %247, !noalias !115

221:                                              ; preds = %207
  %222 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %24, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %222)
          to label %223 unwind label %247

223:                                              ; preds = %221
  %224 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %224, align 8, !tbaa !18, !noalias !115
  %225 = load i64, i64* %84, align 8
  %226 = getelementptr inbounds i8, i8* %206, i64 %225
  %227 = bitcast i8* %226 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %227, align 8, !tbaa !18, !noalias !115
  %228 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %228, align 8, !tbaa !18, !noalias !115
  %229 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8, !tbaa !14, !noalias !115
  %231 = getelementptr inbounds i8, i8* %230, i64 -24
  %232 = bitcast i8* %231 to %"struct.std::basic_string<char>::_Rep"*
  %233 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %233) #25, !noalias !115
  %234 = icmp eq i8* %231, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %249, label %235, !prof !17

235:                                              ; preds = %223
  %236 = getelementptr inbounds i8, i8* %230, i64 -8
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
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %232, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #25
  br label %249

247:                                              ; preds = %221, %207
  %248 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %206) #25, !noalias !115
  br label %966

249:                                              ; preds = %246, %243, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %233) #25, !noalias !115
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %228, align 8, !tbaa !18, !noalias !115
  %250 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %250) #25
  %251 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %251) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %206) #25, !noalias !115
  %252 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %252, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24)
          to label %253 unwind label %964

253:                                              ; preds = %249
  %254 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %24, i64 0, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8, !tbaa !14
  %256 = getelementptr inbounds i8, i8* %255, i64 -24
  %257 = bitcast i8* %256 to %"struct.std::basic_string<char>::_Rep"*
  %258 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %258) #25
  %259 = icmp eq i8* %256, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %259, label %272, label %260, !prof !17

260:                                              ; preds = %253
  %261 = getelementptr inbounds i8, i8* %255, i64 -8
  %262 = bitcast i8* %261 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %263, label %265

263:                                              ; preds = %260
  %264 = atomicrmw volatile add i32* %262, i32 -1 acq_rel, align 4
  br label %268

265:                                              ; preds = %260
  %266 = load i32, i32* %262, align 8, !tbaa !7
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %262, align 8, !tbaa !7
  br label %268

268:                                              ; preds = %265, %263
  %269 = phi i32 [ %264, %263 ], [ %266, %265 ]
  %270 = icmp slt i32 %269, 1
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %257, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #25
  br label %272

272:                                              ; preds = %253, %268, %271
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %258) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %202) #25
  %273 = bitcast %"class.std::basic_string"* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %273) #25
  %274 = load double, double* %53, align 8, !tbaa !93
  %275 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %275) #25, !noalias !118
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %276 unwind label %968

276:                                              ; preds = %272
  %277 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %278 = load i8*, i8** %277, align 8, !tbaa !18, !noalias !118
  %279 = getelementptr i8, i8* %278, i64 -24
  %280 = bitcast i8* %279 to i64*
  %281 = load i64, i64* %280, align 8, !noalias !118
  %282 = getelementptr inbounds i8, i8* %275, i64 %281
  %283 = getelementptr inbounds i8, i8* %282, i64 24
  %284 = bitcast i8* %283 to i32*
  %285 = load i32, i32* %284, align 8, !tbaa !105, !noalias !118
  %286 = and i32 %285, -75
  %287 = or i32 %286, 2
  store i32 %287, i32* %284, align 8, !tbaa !111, !noalias !118
  %288 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %289 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %288, double %274)
          to label %290 unwind label %316, !noalias !118

290:                                              ; preds = %276
  %291 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %25, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %291)
          to label %292 unwind label %316

292:                                              ; preds = %290
  %293 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %80, i32 (...)*** %293, align 8, !tbaa !18, !noalias !118
  %294 = load i64, i64* %84, align 8
  %295 = getelementptr inbounds i8, i8* %275, i64 %294
  %296 = bitcast i8* %295 to i32 (...)***
  store i32 (...)** %82, i32 (...)*** %296, align 8, !tbaa !18, !noalias !118
  %297 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %297, align 8, !tbaa !18, !noalias !118
  %298 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8, !tbaa !14, !noalias !118
  %300 = getelementptr inbounds i8, i8* %299, i64 -24
  %301 = bitcast i8* %300 to %"struct.std::basic_string<char>::_Rep"*
  %302 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %302) #25, !noalias !118
  %303 = icmp eq i8* %300, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %303, label %318, label %304, !prof !17

304:                                              ; preds = %292
  %305 = getelementptr inbounds i8, i8* %299, i64 -8
  %306 = bitcast i8* %305 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %307, label %309

307:                                              ; preds = %304
  %308 = atomicrmw volatile add i32* %306, i32 -1 acq_rel, align 4
  br label %312

309:                                              ; preds = %304
  %310 = load i32, i32* %306, align 8, !tbaa !7
  %311 = add nsw i32 %310, -1
  store i32 %311, i32* %306, align 8, !tbaa !7
  br label %312

312:                                              ; preds = %309, %307
  %313 = phi i32 [ %308, %307 ], [ %310, %309 ]
  %314 = icmp slt i32 %313, 1
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %301, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %318

316:                                              ; preds = %290, %276
  %317 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %275) #25, !noalias !118
  br label %972

318:                                              ; preds = %315, %312, %292
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %302) #25, !noalias !118
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %297, align 8, !tbaa !18, !noalias !118
  %319 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %319) #25
  %320 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %320) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %275) #25, !noalias !118
  %321 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %321, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25)
          to label %322 unwind label %970

322:                                              ; preds = %318
  %323 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %25, i64 0, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8, !tbaa !14
  %325 = getelementptr inbounds i8, i8* %324, i64 -24
  %326 = bitcast i8* %325 to %"struct.std::basic_string<char>::_Rep"*
  %327 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %327) #25
  %328 = icmp eq i8* %325, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %328, label %341, label %329, !prof !17

329:                                              ; preds = %322
  %330 = getelementptr inbounds i8, i8* %324, i64 -8
  %331 = bitcast i8* %330 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %332, label %334

332:                                              ; preds = %329
  %333 = atomicrmw volatile add i32* %331, i32 -1 acq_rel, align 4
  br label %337

334:                                              ; preds = %329
  %335 = load i32, i32* %331, align 8, !tbaa !7
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %331, align 8, !tbaa !7
  br label %337

337:                                              ; preds = %334, %332
  %338 = phi i32 [ %333, %332 ], [ %335, %334 ]
  %339 = icmp slt i32 %338, 1
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %326, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %341

341:                                              ; preds = %322, %337, %340
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %327) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %273) #25
  %342 = invoke noalias nonnull dereferenceable(16) i8* @_Znam(i64 16) #27
          to label %343 unwind label %982

343:                                              ; preds = %341
  %344 = bitcast i8* %342 to i32*
  %345 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %346 = getelementptr i8, i8* %345, i64 -24
  %347 = bitcast i8* %346 to i64*
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %348
  %350 = getelementptr inbounds i8, i8* %349, i64 240
  %351 = bitcast i8* %350 to %"class.std::ctype"**
  %352 = load %"class.std::ctype"*, %"class.std::ctype"** %351, align 8, !tbaa !20
  %353 = icmp eq %"class.std::ctype"* %352, null
  br i1 %353, label %354, label %356

354:                                              ; preds = %343
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %355 unwind label %982

355:                                              ; preds = %354
  unreachable

356:                                              ; preds = %343
  %357 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %352, i64 0, i32 8
  %358 = load i8, i8* %357, align 8, !tbaa !23
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %356
  %361 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %352, i64 0, i32 9, i64 10
  %362 = load i8, i8* %361, align 1, !tbaa !25
  br label %370

363:                                              ; preds = %356
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %352)
          to label %364 unwind label %982

364:                                              ; preds = %363
  %365 = bitcast %"class.std::ctype"* %352 to i8 (%"class.std::ctype"*, i8)***
  %366 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %365, align 8, !tbaa !18
  %367 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %366, i64 6
  %368 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %367, align 8
  %369 = invoke signext i8 %368(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %352, i8 signext 10)
          to label %370 unwind label %982

370:                                              ; preds = %364, %360
  %371 = phi i8 [ %362, %360 ], [ %369, %364 ]
  %372 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %371)
          to label %373 unwind label %982

373:                                              ; preds = %370
  %374 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %372)
          to label %375 unwind label %982

375:                                              ; preds = %373
  %376 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %374, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %377 unwind label %982

377:                                              ; preds = %375
  %378 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %379 = load i8*, i8** %378, align 16, !tbaa !14
  %380 = getelementptr inbounds i8, i8* %379, i64 -24
  %381 = bitcast i8* %380 to i64*
  %382 = load i64, i64* %381, align 8, !tbaa !39
  %383 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %384 = load i8*, i8** %383, align 16, !tbaa !14
  %385 = getelementptr inbounds i8, i8* %384, i64 -24
  %386 = bitcast i8* %385 to i64*
  %387 = load i64, i64* %386, align 8, !tbaa !39
  %388 = icmp ugt i64 %382, %387
  %389 = select i1 %388, i64 %382, i64 %387
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %344, align 4, !tbaa !7
  %391 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %392 unwind label %982

392:                                              ; preds = %377
  %393 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %394 = getelementptr i8, i8* %393, i64 -24
  %395 = bitcast i8* %394 to i64*
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %396
  %398 = shl i64 %389, 32
  %399 = add i64 %398, 4294967296
  %400 = ashr exact i64 %399, 32
  %401 = getelementptr inbounds i8, i8* %397, i64 16
  %402 = bitcast i8* %401 to i64*
  store i64 %400, i64* %402, align 8, !tbaa !121
  %403 = load i64, i64* %395, align 8
  %404 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %403
  %405 = getelementptr inbounds i8, i8* %404, i64 24
  %406 = bitcast i8* %405 to i32*
  %407 = load i32, i32* %406, align 8, !tbaa !105
  %408 = and i32 %407, -177
  %409 = or i32 %408, 32
  store i32 %409, i32* %406, align 8, !tbaa !111
  %410 = load i8*, i8** %378, align 16, !tbaa !14
  %411 = getelementptr inbounds i8, i8* %410, i64 -24
  %412 = bitcast i8* %411 to i64*
  %413 = load i64, i64* %412, align 8, !tbaa !39
  %414 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %410, i64 %413)
          to label %415 unwind label %982

415:                                              ; preds = %392
  %416 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %414, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %417 unwind label %982

417:                                              ; preds = %415
  %418 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8, !tbaa !14
  %420 = getelementptr inbounds i8, i8* %419, i64 -24
  %421 = bitcast i8* %420 to i64*
  %422 = load i64, i64* %421, align 8, !tbaa !39
  %423 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %424 = load i8*, i8** %423, align 8, !tbaa !14
  %425 = getelementptr inbounds i8, i8* %424, i64 -24
  %426 = bitcast i8* %425 to i64*
  %427 = load i64, i64* %426, align 8, !tbaa !39
  %428 = icmp ugt i64 %422, %427
  %429 = select i1 %428, i64 %422, i64 %427
  %430 = trunc i64 %429 to i32
  %431 = getelementptr inbounds i32, i32* %344, i64 1
  store i32 %430, i32* %431, align 4, !tbaa !7
  %432 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %433 unwind label %982

433:                                              ; preds = %417
  %434 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %435 = getelementptr i8, i8* %434, i64 -24
  %436 = bitcast i8* %435 to i64*
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %437
  %439 = shl i64 %429, 32
  %440 = add i64 %439, 4294967296
  %441 = ashr exact i64 %440, 32
  %442 = getelementptr inbounds i8, i8* %438, i64 16
  %443 = bitcast i8* %442 to i64*
  store i64 %441, i64* %443, align 8, !tbaa !121
  %444 = load i64, i64* %436, align 8
  %445 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %444
  %446 = getelementptr inbounds i8, i8* %445, i64 24
  %447 = bitcast i8* %446 to i32*
  %448 = load i32, i32* %447, align 8, !tbaa !105
  %449 = and i32 %448, -177
  %450 = or i32 %449, 32
  store i32 %450, i32* %447, align 8, !tbaa !111
  %451 = load i8*, i8** %418, align 8, !tbaa !14
  %452 = getelementptr inbounds i8, i8* %451, i64 -24
  %453 = bitcast i8* %452 to i64*
  %454 = load i64, i64* %453, align 8, !tbaa !39
  %455 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %451, i64 %454)
          to label %456 unwind label %982

456:                                              ; preds = %433
  %457 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %455, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %458 unwind label %982

458:                                              ; preds = %456
  %459 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %460 = load i8*, i8** %459, align 16, !tbaa !14
  %461 = getelementptr inbounds i8, i8* %460, i64 -24
  %462 = bitcast i8* %461 to i64*
  %463 = load i64, i64* %462, align 8, !tbaa !39
  %464 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %465 = load i8*, i8** %464, align 16, !tbaa !14
  %466 = getelementptr inbounds i8, i8* %465, i64 -24
  %467 = bitcast i8* %466 to i64*
  %468 = load i64, i64* %467, align 8, !tbaa !39
  %469 = icmp ugt i64 %463, %468
  %470 = select i1 %469, i64 %463, i64 %468
  %471 = trunc i64 %470 to i32
  %472 = getelementptr inbounds i32, i32* %344, i64 2
  store i32 %471, i32* %472, align 4, !tbaa !7
  %473 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %474 unwind label %982

474:                                              ; preds = %458
  %475 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %476 = getelementptr i8, i8* %475, i64 -24
  %477 = bitcast i8* %476 to i64*
  %478 = load i64, i64* %477, align 8
  %479 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %478
  %480 = shl i64 %470, 32
  %481 = add i64 %480, 4294967296
  %482 = ashr exact i64 %481, 32
  %483 = getelementptr inbounds i8, i8* %479, i64 16
  %484 = bitcast i8* %483 to i64*
  store i64 %482, i64* %484, align 8, !tbaa !121
  %485 = load i64, i64* %477, align 8
  %486 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %485
  %487 = getelementptr inbounds i8, i8* %486, i64 24
  %488 = bitcast i8* %487 to i32*
  %489 = load i32, i32* %488, align 8, !tbaa !105
  %490 = and i32 %489, -177
  %491 = or i32 %490, 32
  store i32 %491, i32* %488, align 8, !tbaa !111
  %492 = load i8*, i8** %459, align 16, !tbaa !14
  %493 = getelementptr inbounds i8, i8* %492, i64 -24
  %494 = bitcast i8* %493 to i64*
  %495 = load i64, i64* %494, align 8, !tbaa !39
  %496 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %492, i64 %495)
          to label %497 unwind label %982

497:                                              ; preds = %474
  %498 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %496, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %499 unwind label %982

499:                                              ; preds = %497
  %500 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %501 = load i8*, i8** %500, align 8, !tbaa !14
  %502 = getelementptr inbounds i8, i8* %501, i64 -24
  %503 = bitcast i8* %502 to i64*
  %504 = load i64, i64* %503, align 8, !tbaa !39
  %505 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %506 = load i8*, i8** %505, align 8, !tbaa !14
  %507 = getelementptr inbounds i8, i8* %506, i64 -24
  %508 = bitcast i8* %507 to i64*
  %509 = load i64, i64* %508, align 8, !tbaa !39
  %510 = icmp ugt i64 %504, %509
  %511 = select i1 %510, i64 %504, i64 %509
  %512 = trunc i64 %511 to i32
  %513 = getelementptr inbounds i32, i32* %344, i64 3
  store i32 %512, i32* %513, align 4, !tbaa !7
  %514 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %515 unwind label %982

515:                                              ; preds = %499
  %516 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %517 = getelementptr i8, i8* %516, i64 -24
  %518 = bitcast i8* %517 to i64*
  %519 = load i64, i64* %518, align 8
  %520 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %519
  %521 = shl i64 %511, 32
  %522 = add i64 %521, 4294967296
  %523 = ashr exact i64 %522, 32
  %524 = getelementptr inbounds i8, i8* %520, i64 16
  %525 = bitcast i8* %524 to i64*
  store i64 %523, i64* %525, align 8, !tbaa !121
  %526 = load i64, i64* %518, align 8
  %527 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %526
  %528 = getelementptr inbounds i8, i8* %527, i64 24
  %529 = bitcast i8* %528 to i32*
  %530 = load i32, i32* %529, align 8, !tbaa !105
  %531 = and i32 %530, -177
  %532 = or i32 %531, 32
  store i32 %532, i32* %529, align 8, !tbaa !111
  %533 = load i8*, i8** %500, align 8, !tbaa !14
  %534 = getelementptr inbounds i8, i8* %533, i64 -24
  %535 = bitcast i8* %534 to i64*
  %536 = load i64, i64* %535, align 8, !tbaa !39
  %537 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %533, i64 %536)
          to label %538 unwind label %982

538:                                              ; preds = %515
  %539 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %537, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %540 unwind label %982

540:                                              ; preds = %538
  %541 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %542 = getelementptr i8, i8* %541, i64 -24
  %543 = bitcast i8* %542 to i64*
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %544
  %546 = getelementptr inbounds i8, i8* %545, i64 240
  %547 = bitcast i8* %546 to %"class.std::ctype"**
  %548 = load %"class.std::ctype"*, %"class.std::ctype"** %547, align 8, !tbaa !20
  %549 = icmp eq %"class.std::ctype"* %548, null
  br i1 %549, label %550, label %552

550:                                              ; preds = %540
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %551 unwind label %982

551:                                              ; preds = %550
  unreachable

552:                                              ; preds = %540
  %553 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %548, i64 0, i32 8
  %554 = load i8, i8* %553, align 8, !tbaa !23
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %552
  %557 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %548, i64 0, i32 9, i64 10
  %558 = load i8, i8* %557, align 1, !tbaa !25
  br label %566

559:                                              ; preds = %552
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %548)
          to label %560 unwind label %982

560:                                              ; preds = %559
  %561 = bitcast %"class.std::ctype"* %548 to i8 (%"class.std::ctype"*, i8)***
  %562 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %561, align 8, !tbaa !18
  %563 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %562, i64 6
  %564 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %563, align 8
  %565 = invoke signext i8 %564(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %548, i8 signext 10)
          to label %566 unwind label %982

566:                                              ; preds = %560, %556
  %567 = phi i8 [ %558, %556 ], [ %565, %560 ]
  %568 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %567)
          to label %569 unwind label %982

569:                                              ; preds = %566
  %570 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %568)
          to label %571 unwind label %982

571:                                              ; preds = %569
  %572 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %570, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %573 unwind label %982

573:                                              ; preds = %571
  %574 = load i32, i32* %344, align 4, !tbaa !7
  %575 = icmp sgt i32 %574, -2
  br i1 %575, label %576, label %711

576:                                              ; preds = %573
  %577 = add i32 %574, 1
  br label %760

578:                                              ; preds = %750
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %579 unwind label %982

579:                                              ; preds = %578
  unreachable

580:                                              ; preds = %750
  %581 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %758, i64 0, i32 8
  %582 = load i8, i8* %581, align 8, !tbaa !23
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %758, i64 0, i32 9, i64 10
  %586 = load i8, i8* %585, align 1, !tbaa !25
  br label %594

587:                                              ; preds = %580
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %758)
          to label %588 unwind label %982

588:                                              ; preds = %587
  %589 = bitcast %"class.std::ctype"* %758 to i8 (%"class.std::ctype"*, i8)***
  %590 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %589, align 8, !tbaa !18
  %591 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %590, i64 6
  %592 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %591, align 8
  %593 = invoke signext i8 %592(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %758, i8 signext 10)
          to label %594 unwind label %982

594:                                              ; preds = %588, %584
  %595 = phi i8 [ %586, %584 ], [ %593, %588 ]
  %596 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %595)
          to label %597 unwind label %982

597:                                              ; preds = %594
  %598 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %596)
          to label %599 unwind label %982

599:                                              ; preds = %597
  %600 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %598, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %601 unwind label %982

601:                                              ; preds = %599
  %602 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %603 unwind label %982

603:                                              ; preds = %601
  %604 = add nsw i32 %574, 1
  %605 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %606 = getelementptr i8, i8* %605, i64 -24
  %607 = bitcast i8* %606 to i64*
  %608 = load i64, i64* %607, align 8
  %609 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %608
  %610 = sext i32 %604 to i64
  %611 = getelementptr inbounds i8, i8* %609, i64 16
  %612 = bitcast i8* %611 to i64*
  store i64 %610, i64* %612, align 8, !tbaa !121
  %613 = load i64, i64* %607, align 8
  %614 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %613
  %615 = getelementptr inbounds i8, i8* %614, i64 24
  %616 = bitcast i8* %615 to i32*
  %617 = load i32, i32* %616, align 8, !tbaa !105
  %618 = and i32 %617, -177
  %619 = or i32 %618, 32
  store i32 %619, i32* %616, align 8, !tbaa !111
  %620 = load i8*, i8** %383, align 16, !tbaa !14
  %621 = getelementptr inbounds i8, i8* %620, i64 -24
  %622 = bitcast i8* %621 to i64*
  %623 = load i64, i64* %622, align 8, !tbaa !39
  %624 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %620, i64 %623)
          to label %625 unwind label %982

625:                                              ; preds = %603
  %626 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %624, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %627 unwind label %982

627:                                              ; preds = %625
  %628 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %629 unwind label %982

629:                                              ; preds = %627
  %630 = add nsw i32 %714, 1
  %631 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %632 = getelementptr i8, i8* %631, i64 -24
  %633 = bitcast i8* %632 to i64*
  %634 = load i64, i64* %633, align 8
  %635 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %634
  %636 = sext i32 %630 to i64
  %637 = getelementptr inbounds i8, i8* %635, i64 16
  %638 = bitcast i8* %637 to i64*
  store i64 %636, i64* %638, align 8, !tbaa !121
  %639 = load i64, i64* %633, align 8
  %640 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %639
  %641 = getelementptr inbounds i8, i8* %640, i64 24
  %642 = bitcast i8* %641 to i32*
  %643 = load i32, i32* %642, align 8, !tbaa !105
  %644 = and i32 %643, -177
  %645 = or i32 %644, 32
  store i32 %645, i32* %642, align 8, !tbaa !111
  %646 = load i8*, i8** %423, align 8, !tbaa !14
  %647 = getelementptr inbounds i8, i8* %646, i64 -24
  %648 = bitcast i8* %647 to i64*
  %649 = load i64, i64* %648, align 8, !tbaa !39
  %650 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %646, i64 %649)
          to label %651 unwind label %982

651:                                              ; preds = %629
  %652 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %650, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %653 unwind label %982

653:                                              ; preds = %651
  %654 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %655 unwind label %982

655:                                              ; preds = %653
  %656 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %657 = getelementptr i8, i8* %656, i64 -24
  %658 = bitcast i8* %657 to i64*
  %659 = load i64, i64* %658, align 8
  %660 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %659
  %661 = getelementptr inbounds i8, i8* %660, i64 16
  %662 = bitcast i8* %661 to i64*
  store i64 %482, i64* %662, align 8, !tbaa !121
  %663 = load i64, i64* %658, align 8
  %664 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %663
  %665 = getelementptr inbounds i8, i8* %664, i64 24
  %666 = bitcast i8* %665 to i32*
  %667 = load i32, i32* %666, align 8, !tbaa !105
  %668 = and i32 %667, -177
  %669 = or i32 %668, 32
  store i32 %669, i32* %666, align 8, !tbaa !111
  %670 = load i8*, i8** %464, align 16, !tbaa !14
  %671 = getelementptr inbounds i8, i8* %670, i64 -24
  %672 = bitcast i8* %671 to i64*
  %673 = load i64, i64* %672, align 8, !tbaa !39
  %674 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %670, i64 %673)
          to label %675 unwind label %982

675:                                              ; preds = %655
  %676 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %674, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %677 unwind label %982

677:                                              ; preds = %675
  %678 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
          to label %679 unwind label %982

679:                                              ; preds = %677
  %680 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %681 = getelementptr i8, i8* %680, i64 -24
  %682 = bitcast i8* %681 to i64*
  %683 = load i64, i64* %682, align 8
  %684 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %683
  %685 = getelementptr inbounds i8, i8* %684, i64 16
  %686 = bitcast i8* %685 to i64*
  store i64 %523, i64* %686, align 8, !tbaa !121
  %687 = load i64, i64* %682, align 8
  %688 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %687
  %689 = getelementptr inbounds i8, i8* %688, i64 24
  %690 = bitcast i8* %689 to i32*
  %691 = load i32, i32* %690, align 8, !tbaa !105
  %692 = and i32 %691, -177
  %693 = or i32 %692, 32
  store i32 %693, i32* %690, align 8, !tbaa !111
  %694 = load i8*, i8** %505, align 8, !tbaa !14
  %695 = getelementptr inbounds i8, i8* %694, i64 -24
  %696 = bitcast i8* %695 to i64*
  %697 = load i64, i64* %696, align 8, !tbaa !39
  %698 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %694, i64 %697)
          to label %699 unwind label %982

699:                                              ; preds = %679
  %700 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %698, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %701 unwind label %982

701:                                              ; preds = %699
  %702 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %703 = getelementptr i8, i8* %702, i64 -24
  %704 = bitcast i8* %703 to i64*
  %705 = load i64, i64* %704, align 8
  %706 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %705
  %707 = getelementptr inbounds i8, i8* %706, i64 240
  %708 = bitcast i8* %707 to %"class.std::ctype"**
  %709 = load %"class.std::ctype"*, %"class.std::ctype"** %708, align 8, !tbaa !20
  %710 = icmp eq %"class.std::ctype"* %709, null
  br i1 %710, label %766, label %768

711:                                              ; preds = %763, %573
  %712 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %713 unwind label %982

713:                                              ; preds = %711
  %714 = load i32, i32* %431, align 4, !tbaa !7
  %715 = icmp sgt i32 %714, -2
  br i1 %715, label %716, label %724

716:                                              ; preds = %713
  %717 = add i32 %714, 1
  br label %718

718:                                              ; preds = %716, %721
  %719 = phi i32 [ %722, %721 ], [ 0, %716 ]
  %720 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
          to label %721 unwind label %978

721:                                              ; preds = %718
  %722 = add nuw i32 %719, 1
  %723 = icmp eq i32 %719, %717
  br i1 %723, label %724, label %718, !llvm.loop !122

724:                                              ; preds = %721, %713
  %725 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %726 unwind label %982

726:                                              ; preds = %724
  %727 = icmp sgt i32 %471, -2
  br i1 %727, label %728, label %736

728:                                              ; preds = %726
  %729 = add i32 %471, 1
  br label %730

730:                                              ; preds = %728, %733
  %731 = phi i32 [ %734, %733 ], [ 0, %728 ]
  %732 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
          to label %733 unwind label %976

733:                                              ; preds = %730
  %734 = add nuw i32 %731, 1
  %735 = icmp eq i32 %731, %729
  br i1 %735, label %736, label %730, !llvm.loop !122

736:                                              ; preds = %733, %726
  %737 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %738 unwind label %982

738:                                              ; preds = %736
  %739 = icmp sgt i32 %512, -2
  br i1 %739, label %740, label %748

740:                                              ; preds = %738
  %741 = add i32 %512, 1
  br label %742

742:                                              ; preds = %740, %745
  %743 = phi i32 [ %746, %745 ], [ 0, %740 ]
  %744 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
          to label %745 unwind label %974

745:                                              ; preds = %742
  %746 = add nuw i32 %743, 1
  %747 = icmp eq i32 %743, %741
  br i1 %747, label %748, label %742, !llvm.loop !122

748:                                              ; preds = %745, %738
  %749 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1)
          to label %750 unwind label %982

750:                                              ; preds = %748
  %751 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %752 = getelementptr i8, i8* %751, i64 -24
  %753 = bitcast i8* %752 to i64*
  %754 = load i64, i64* %753, align 8
  %755 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %754
  %756 = getelementptr inbounds i8, i8* %755, i64 240
  %757 = bitcast i8* %756 to %"class.std::ctype"**
  %758 = load %"class.std::ctype"*, %"class.std::ctype"** %757, align 8, !tbaa !20
  %759 = icmp eq %"class.std::ctype"* %758, null
  br i1 %759, label %578, label %580

760:                                              ; preds = %576, %763
  %761 = phi i32 [ %764, %763 ], [ 0, %576 ]
  %762 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
          to label %763 unwind label %980

763:                                              ; preds = %760
  %764 = add nuw i32 %761, 1
  %765 = icmp eq i32 %761, %577
  br i1 %765, label %711, label %760, !llvm.loop !122

766:                                              ; preds = %701
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %767 unwind label %982

767:                                              ; preds = %766
  unreachable

768:                                              ; preds = %701
  %769 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %709, i64 0, i32 8
  %770 = load i8, i8* %769, align 8, !tbaa !23
  %771 = icmp eq i8 %770, 0
  br i1 %771, label %775, label %772

772:                                              ; preds = %768
  %773 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %709, i64 0, i32 9, i64 10
  %774 = load i8, i8* %773, align 1, !tbaa !25
  br label %782

775:                                              ; preds = %768
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %709)
          to label %776 unwind label %982

776:                                              ; preds = %775
  %777 = bitcast %"class.std::ctype"* %709 to i8 (%"class.std::ctype"*, i8)***
  %778 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %777, align 8, !tbaa !18
  %779 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %778, i64 6
  %780 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %779, align 8
  %781 = invoke signext i8 %780(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %709, i8 signext 10)
          to label %782 unwind label %982

782:                                              ; preds = %776, %772
  %783 = phi i8 [ %774, %772 ], [ %781, %776 ]
  %784 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %783)
          to label %785 unwind label %982

785:                                              ; preds = %782
  %786 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %784)
          to label %787 unwind label %982

787:                                              ; preds = %785
  call void @_ZdaPv(i8* nonnull %342) #28
  %788 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %789 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %790 = load i8*, i8** %789, align 8, !tbaa !14
  %791 = getelementptr inbounds i8, i8* %790, i64 -24
  %792 = bitcast i8* %791 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %788) #25
  %793 = icmp eq i8* %791, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %793, label %806, label %794, !prof !17

794:                                              ; preds = %787
  %795 = getelementptr inbounds i8, i8* %790, i64 -8
  %796 = bitcast i8* %795 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %797, label %799

797:                                              ; preds = %794
  %798 = atomicrmw volatile add i32* %796, i32 -1 acq_rel, align 4
  br label %802

799:                                              ; preds = %794
  %800 = load i32, i32* %796, align 8, !tbaa !7
  %801 = add nsw i32 %800, -1
  store i32 %801, i32* %796, align 8, !tbaa !7
  br label %802

802:                                              ; preds = %799, %797
  %803 = phi i32 [ %798, %797 ], [ %800, %799 ]
  %804 = icmp slt i32 %803, 1
  br i1 %804, label %805, label %806

805:                                              ; preds = %802
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %792, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %806

806:                                              ; preds = %787, %802, %805
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %788) #25
  %807 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %808 = load i8*, i8** %807, align 16, !tbaa !14
  %809 = getelementptr inbounds i8, i8* %808, i64 -24
  %810 = bitcast i8* %809 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %788) #25
  %811 = icmp eq i8* %809, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %811, label %824, label %812, !prof !17

812:                                              ; preds = %806
  %813 = getelementptr inbounds i8, i8* %808, i64 -8
  %814 = bitcast i8* %813 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %818, label %815

815:                                              ; preds = %812
  %816 = load i32, i32* %814, align 8, !tbaa !7
  %817 = add nsw i32 %816, -1
  store i32 %817, i32* %814, align 8, !tbaa !7
  br label %820

818:                                              ; preds = %812
  %819 = atomicrmw volatile add i32* %814, i32 -1 acq_rel, align 4
  br label %820

820:                                              ; preds = %818, %815
  %821 = phi i32 [ %819, %818 ], [ %816, %815 ]
  %822 = icmp slt i32 %821, 1
  br i1 %822, label %823, label %824

823:                                              ; preds = %820
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %810, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %824

824:                                              ; preds = %823, %820, %806
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %788) #25
  %825 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %826 = load i8*, i8** %825, align 8, !tbaa !14
  %827 = getelementptr inbounds i8, i8* %826, i64 -24
  %828 = bitcast i8* %827 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %788) #25
  %829 = icmp eq i8* %827, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %829, label %842, label %830, !prof !17

830:                                              ; preds = %824
  %831 = getelementptr inbounds i8, i8* %826, i64 -8
  %832 = bitcast i8* %831 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %836, label %833

833:                                              ; preds = %830
  %834 = load i32, i32* %832, align 8, !tbaa !7
  %835 = add nsw i32 %834, -1
  store i32 %835, i32* %832, align 8, !tbaa !7
  br label %838

836:                                              ; preds = %830
  %837 = atomicrmw volatile add i32* %832, i32 -1 acq_rel, align 4
  br label %838

838:                                              ; preds = %836, %833
  %839 = phi i32 [ %837, %836 ], [ %834, %833 ]
  %840 = icmp slt i32 %839, 1
  br i1 %840, label %841, label %842

841:                                              ; preds = %838
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %828, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %842

842:                                              ; preds = %841, %838, %824
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %788) #25
  %843 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %844 = load i8*, i8** %843, align 16, !tbaa !14
  %845 = getelementptr inbounds i8, i8* %844, i64 -24
  %846 = bitcast i8* %845 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %788) #25
  %847 = icmp eq i8* %845, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %847, label %860, label %848, !prof !17

848:                                              ; preds = %842
  %849 = getelementptr inbounds i8, i8* %844, i64 -8
  %850 = bitcast i8* %849 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %854, label %851

851:                                              ; preds = %848
  %852 = load i32, i32* %850, align 8, !tbaa !7
  %853 = add nsw i32 %852, -1
  store i32 %853, i32* %850, align 8, !tbaa !7
  br label %856

854:                                              ; preds = %848
  %855 = atomicrmw volatile add i32* %850, i32 -1 acq_rel, align 4
  br label %856

856:                                              ; preds = %854, %851
  %857 = phi i32 [ %855, %854 ], [ %852, %851 ]
  %858 = icmp slt i32 %857, 1
  br i1 %858, label %859, label %860

859:                                              ; preds = %856
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %846, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %860

860:                                              ; preds = %859, %856, %842
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %788) #25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #25
  %861 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %862 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %863 = load i8*, i8** %862, align 8, !tbaa !14
  %864 = getelementptr inbounds i8, i8* %863, i64 -24
  %865 = bitcast i8* %864 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %861) #25
  %866 = icmp eq i8* %864, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %866, label %879, label %867, !prof !17

867:                                              ; preds = %860
  %868 = getelementptr inbounds i8, i8* %863, i64 -8
  %869 = bitcast i8* %868 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %870, label %872

870:                                              ; preds = %867
  %871 = atomicrmw volatile add i32* %869, i32 -1 acq_rel, align 4
  br label %875

872:                                              ; preds = %867
  %873 = load i32, i32* %869, align 8, !tbaa !7
  %874 = add nsw i32 %873, -1
  store i32 %874, i32* %869, align 8, !tbaa !7
  br label %875

875:                                              ; preds = %872, %870
  %876 = phi i32 [ %871, %870 ], [ %873, %872 ]
  %877 = icmp slt i32 %876, 1
  br i1 %877, label %878, label %879

878:                                              ; preds = %875
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %865, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %879

879:                                              ; preds = %860, %875, %878
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %861) #25
  %880 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %881 = load i8*, i8** %880, align 16, !tbaa !14
  %882 = getelementptr inbounds i8, i8* %881, i64 -24
  %883 = bitcast i8* %882 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %861) #25
  %884 = icmp eq i8* %882, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %884, label %897, label %885, !prof !17

885:                                              ; preds = %879
  %886 = getelementptr inbounds i8, i8* %881, i64 -8
  %887 = bitcast i8* %886 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %891, label %888

888:                                              ; preds = %885
  %889 = load i32, i32* %887, align 8, !tbaa !7
  %890 = add nsw i32 %889, -1
  store i32 %890, i32* %887, align 8, !tbaa !7
  br label %893

891:                                              ; preds = %885
  %892 = atomicrmw volatile add i32* %887, i32 -1 acq_rel, align 4
  br label %893

893:                                              ; preds = %891, %888
  %894 = phi i32 [ %892, %891 ], [ %889, %888 ]
  %895 = icmp slt i32 %894, 1
  br i1 %895, label %896, label %897

896:                                              ; preds = %893
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %883, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %897

897:                                              ; preds = %896, %893, %879
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %861) #25
  %898 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %899 = load i8*, i8** %898, align 8, !tbaa !14
  %900 = getelementptr inbounds i8, i8* %899, i64 -24
  %901 = bitcast i8* %900 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %861) #25
  %902 = icmp eq i8* %900, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %902, label %915, label %903, !prof !17

903:                                              ; preds = %897
  %904 = getelementptr inbounds i8, i8* %899, i64 -8
  %905 = bitcast i8* %904 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %909, label %906

906:                                              ; preds = %903
  %907 = load i32, i32* %905, align 8, !tbaa !7
  %908 = add nsw i32 %907, -1
  store i32 %908, i32* %905, align 8, !tbaa !7
  br label %911

909:                                              ; preds = %903
  %910 = atomicrmw volatile add i32* %905, i32 -1 acq_rel, align 4
  br label %911

911:                                              ; preds = %909, %906
  %912 = phi i32 [ %910, %909 ], [ %907, %906 ]
  %913 = icmp slt i32 %912, 1
  br i1 %913, label %914, label %915

914:                                              ; preds = %911
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %901, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %915

915:                                              ; preds = %914, %911, %897
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %861) #25
  %916 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %917 = load i8*, i8** %916, align 16, !tbaa !14
  %918 = getelementptr inbounds i8, i8* %917, i64 -24
  %919 = bitcast i8* %918 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %861) #25
  %920 = icmp eq i8* %918, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %920, label %933, label %921, !prof !17

921:                                              ; preds = %915
  %922 = getelementptr inbounds i8, i8* %917, i64 -8
  %923 = bitcast i8* %922 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %927, label %924

924:                                              ; preds = %921
  %925 = load i32, i32* %923, align 8, !tbaa !7
  %926 = add nsw i32 %925, -1
  store i32 %926, i32* %923, align 8, !tbaa !7
  br label %929

927:                                              ; preds = %921
  %928 = atomicrmw volatile add i32* %923, i32 -1 acq_rel, align 4
  br label %929

929:                                              ; preds = %927, %924
  %930 = phi i32 [ %928, %927 ], [ %925, %924 ]
  %931 = icmp slt i32 %930, 1
  br i1 %931, label %932, label %933

932:                                              ; preds = %929
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %919, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %933

933:                                              ; preds = %932, %929, %915
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %861) #25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #25
  br label %996

934:                                              ; preds = %32
  %935 = landingpad { i8*, i32 }
          cleanup
  br label %943

936:                                              ; preds = %38
  %937 = landingpad { i8*, i32 }
          cleanup
  br label %940

938:                                              ; preds = %41
  %939 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #25
  br label %940

940:                                              ; preds = %938, %936
  %941 = phi %"class.std::basic_string"* [ %42, %938 ], [ %39, %936 ]
  %942 = phi { i8*, i32 } [ %939, %938 ], [ %937, %936 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #25
  br label %943

943:                                              ; preds = %934, %940
  %944 = phi %"class.std::basic_string"* [ %941, %940 ], [ %36, %934 ]
  %945 = phi { i8*, i32 } [ %942, %940 ], [ %935, %934 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  br label %946

946:                                              ; preds = %943, %946
  %947 = phi %"class.std::basic_string"* [ %948, %946 ], [ %944, %943 ]
  %948 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %947, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %948) #25
  %949 = icmp eq %"class.std::basic_string"* %948, %34
  br i1 %949, label %994, label %946

950:                                              ; preds = %44
  %951 = landingpad { i8*, i32 }
          cleanup
  br label %954

952:                                              ; preds = %109
  %953 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22) #25
  br label %954

954:                                              ; preds = %950, %107, %952
  %955 = phi { i8*, i32 } [ %953, %952 ], [ %951, %950 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #25
  br label %984

956:                                              ; preds = %131
  %957 = landingpad { i8*, i32 }
          cleanup
  br label %960

958:                                              ; preds = %178
  %959 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23) #25
  br label %960

960:                                              ; preds = %956, %176, %958
  %961 = phi { i8*, i32 } [ %959, %958 ], [ %957, %956 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %132) #25
  br label %984

962:                                              ; preds = %201
  %963 = landingpad { i8*, i32 }
          cleanup
  br label %966

964:                                              ; preds = %249
  %965 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24) #25
  br label %966

966:                                              ; preds = %962, %247, %964
  %967 = phi { i8*, i32 } [ %965, %964 ], [ %963, %962 ], [ %248, %247 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %202) #25
  br label %984

968:                                              ; preds = %272
  %969 = landingpad { i8*, i32 }
          cleanup
  br label %972

970:                                              ; preds = %318
  %971 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25) #25
  br label %972

972:                                              ; preds = %968, %316, %970
  %973 = phi { i8*, i32 } [ %971, %970 ], [ %969, %968 ], [ %317, %316 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %273) #25
  br label %984

974:                                              ; preds = %742
  %975 = landingpad { i8*, i32 }
          cleanup
  br label %984

976:                                              ; preds = %730
  %977 = landingpad { i8*, i32 }
          cleanup
  br label %984

978:                                              ; preds = %718
  %979 = landingpad { i8*, i32 }
          cleanup
  br label %984

980:                                              ; preds = %760
  %981 = landingpad { i8*, i32 }
          cleanup
  br label %984

982:                                              ; preds = %785, %782, %776, %775, %766, %748, %736, %724, %711, %699, %679, %677, %675, %655, %653, %651, %629, %627, %625, %603, %601, %599, %597, %594, %588, %587, %578, %571, %569, %566, %560, %559, %550, %538, %515, %499, %497, %474, %458, %456, %433, %417, %415, %392, %377, %375, %373, %370, %364, %363, %354, %341
  %983 = landingpad { i8*, i32 }
          cleanup
  br label %984

984:                                              ; preds = %974, %978, %982, %980, %976, %972, %966, %960, %954
  %985 = phi { i8*, i32 } [ %973, %972 ], [ %967, %966 ], [ %961, %960 ], [ %955, %954 ], [ %975, %974 ], [ %977, %976 ], [ %979, %978 ], [ %981, %980 ], [ %983, %982 ]
  %986 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %986) #25
  %987 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %987) #25
  %988 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %988) #25
  %989 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %989) #25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #25
  %990 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %990) #25
  %991 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %991) #25
  %992 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %992) #25
  %993 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %993) #25
  br label %994

994:                                              ; preds = %946, %984
  %995 = phi { i8*, i32 } [ %985, %984 ], [ %945, %946 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #25
  resume { i8*, i32 } %995

996:                                              ; preds = %933, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN3dct3DCT7cleanupEv(%"class.dct::DCT"* nocapture nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 13
  %3 = bitcast float** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !51
  %5 = tail call i32 @hipHostFree(i8* %4)
  %6 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 14
  %7 = bitcast float** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !52
  %9 = tail call i32 @hipHostFree(i8* %8)
  %10 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 15
  %11 = bitcast float** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !53
  %13 = tail call i32 @hipHostFree(i8* %12)
  %14 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 16
  %15 = bitcast float** %14 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !54
  %17 = tail call i32 @hipHostFree(i8* %16)
  %18 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 7
  %19 = load float*, float** %18, align 8, !tbaa !13
  %20 = icmp eq float* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = bitcast float* %19 to i8*
  tail call void @free(i8* %22) #25
  store float* null, float** %18, align 8, !tbaa !13
  br label %23

23:                                               ; preds = %21, %1
  %24 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 8
  %25 = load float*, float** %24, align 8, !tbaa !26
  %26 = icmp eq float* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = bitcast float* %25 to i8*
  tail call void @free(i8* %28) #25
  store float* null, float** %24, align 8, !tbaa !26
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %0, i64 0, i32 12
  %31 = load float*, float** %30, align 8, !tbaa !95
  %32 = icmp eq float* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = bitcast float* %31 to i8*
  tail call void @free(i8* %34) #25
  store float* null, float** %30, align 8, !tbaa !95
  br label %35

35:                                               ; preds = %33, %29
  ret i32 0
}

declare dso_local i32 @hipHostFree(i8*) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %"class.dct::DCT", align 8
  %4 = bitcast %"class.dct::DCT"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 432, i8* nonnull %4) #25
  %5 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 0
  store i32 123, i32* %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 7
  store float* null, float** %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 12
  store float* null, float** %7, align 8, !tbaa !95
  %8 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 5
  store i32 64, i32* %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 6
  store i32 64, i32* %9, align 4, !tbaa !12
  %10 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 9
  store i32 8, i32* %10, align 8, !tbaa !27
  %11 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 10
  store i32 64, i32* %11, align 4, !tbaa !50
  %12 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 11
  store i32 0, i32* %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 1
  %14 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 18
  %15 = bitcast double* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 1, i32* %14, align 8, !tbaa !91
  %16 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #27
  %17 = bitcast i8* %16 to %"class.appsdk::HIPCommandArgs"*
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 0
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !68
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 8, i32 0
  %21 = bitcast i32* %20 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %21, align 8, !tbaa !7
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %22, align 8, !tbaa !124
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !68
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 1
  store i32 0, i32* %24, align 8, !tbaa !73
  %25 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 2
  store i32 0, i32* %25, align 4, !tbaa !125
  %26 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 4
  %27 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 3
  %28 = bitcast i8*** %26 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i32 123, i32* %27, align 8, !tbaa !126
  %29 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 9
  store i8 0, i8* %29, align 4, !tbaa !29
  %30 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 10
  store i8 0, i8* %30, align 1, !tbaa !94
  %31 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 0, i32 11
  store i8 0, i8* %31, align 2, !tbaa !98
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %18, align 8, !tbaa !18
  %32 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 1
  store i32 0, i32* %32, align 8, !tbaa !127
  %33 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %17, i64 0, i32 2
  store i8 0, i8* %33, align 4, !tbaa !129
  %34 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 24
  %35 = bitcast %"class.appsdk::HIPCommandArgs"** %34 to i8**
  store i8* %16, i8** %35, align 8, !tbaa !28
  %36 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false) #25
  %37 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 19
  %38 = bitcast %"class.appsdk::SDKTimer"** %37 to i8**
  store i8* %36, i8** %38, align 8, !tbaa !76
  %39 = bitcast i8* %16 to %"class.appsdk::SDKCmdArgsParser"*
  %40 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %39, i64 0, i32 12
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i64 0, i64 0), i64 30)
  %42 = call i32 @_ZN3dct3DCT10initializeEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %2
  %45 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %34, align 8, !tbaa !28
  %46 = bitcast %"class.appsdk::HIPCommandArgs"* %45 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %47 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %46, align 8, !tbaa !18
  %48 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %47, align 8
  %49 = call i32 %48(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %45, i32 %0, i8** %1)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %44
  %52 = call i32 @_ZN3dct3DCT5setupEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %3)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = call i32 @_ZN3dct3DCT3runEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %3)
  %56 = call i32 @_ZN3dct3DCT13verifyResultsEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %3)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 13
  %60 = bitcast float** %59 to i8**
  %61 = load i8*, i8** %60, align 8, !tbaa !51
  %62 = call i32 @hipHostFree(i8* %61)
  %63 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 14
  %64 = bitcast float** %63 to i8**
  %65 = load i8*, i8** %64, align 8, !tbaa !52
  %66 = call i32 @hipHostFree(i8* %65)
  %67 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 15
  %68 = bitcast float** %67 to i8**
  %69 = load i8*, i8** %68, align 8, !tbaa !53
  %70 = call i32 @hipHostFree(i8* %69)
  %71 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 16
  %72 = bitcast float** %71 to i8**
  %73 = load i8*, i8** %72, align 8, !tbaa !54
  %74 = call i32 @hipHostFree(i8* %73)
  %75 = load float*, float** %6, align 8, !tbaa !13
  %76 = icmp eq float* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %58
  %78 = bitcast float* %75 to i8*
  call void @free(i8* %78) #25
  store float* null, float** %6, align 8, !tbaa !13
  br label %79

79:                                               ; preds = %77, %58
  %80 = getelementptr inbounds %"class.dct::DCT", %"class.dct::DCT"* %3, i64 0, i32 8
  %81 = load float*, float** %80, align 8, !tbaa !26
  %82 = icmp eq float* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = bitcast float* %81 to i8*
  call void @free(i8* %84) #25
  store float* null, float** %80, align 8, !tbaa !26
  br label %85

85:                                               ; preds = %83, %79
  %86 = load float*, float** %7, align 8, !tbaa !95
  %87 = icmp eq float* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = bitcast float* %86 to i8*
  call void @free(i8* %89) #25
  store float* null, float** %7, align 8, !tbaa !95
  br label %90

90:                                               ; preds = %85, %88
  call void @_ZN3dct3DCT10printStatsEv(%"class.dct::DCT"* nonnull align 8 dereferenceable(432) %3)
  br label %91

91:                                               ; preds = %54, %51, %44, %2, %90
  %92 = phi i32 [ 0, %90 ], [ 1, %2 ], [ 1, %44 ], [ 1, %51 ], [ 1, %54 ]
  call void @llvm.lifetime.end.p0i8(i64 432, i8* nonnull %4) #25
  ret i32 %92
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #17

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #19

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0, i32 %1, i8** %2) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  store i32 %1, i32* %23, align 4, !tbaa !125
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !130
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
  br i1 %37, label %28, label %38, !llvm.loop !131

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !125
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !130
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !25
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #25
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !125
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !132

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !14
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #25
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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !125
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !130
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !25
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #25
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !125
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !132

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !14
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #25
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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !125
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !130
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !25
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #25
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !125
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !132

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !125
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !130
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !25
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !25
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #25
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !125
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !132

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !14
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #25
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
  %207 = load i8*, i8** %206, align 8, !tbaa !14
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #25
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
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !14
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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !125
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !130
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !25
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #25
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !125
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !132

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !125
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !130
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !25
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !25
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #25
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !125
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !132

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !14
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #25
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
  %313 = load i8*, i8** %312, align 8, !tbaa !14
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #25
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
  store i8 1, i8* %332, align 4, !tbaa !129
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
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !18
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !74
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
  %23 = load i8*, i8** %22, align 8, !tbaa !14
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #25
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
  %42 = load i8*, i8** %41, align 8, !tbaa !14
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #25
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
define linkonce_odr dso_local void @_ZN6appsdk14HIPCommandArgsD0Ev(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  tail call void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(93) %2) #25
  %3 = bitcast %"class.appsdk::HIPCommandArgs"* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %3) #28
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #20

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #7 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
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
  %16 = load i32, i32* %14, align 8, !tbaa !73
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !74
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !73
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !133

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !74
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !74
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !69
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !72
  store i8 1, i8* %44, align 1, !tbaa !134
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !72
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), float* %52) #25
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
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
  %67 = load i32, i32* %66, align 8, !tbaa !135
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #25
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !72
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), double* %81) #25
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
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
  %96 = load i32, i32* %95, align 8, !tbaa !135
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #25
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !72
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), i32* %110) #25
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
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
  %125 = load i32, i32* %124, align 8, !tbaa !135
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #25
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !72
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #25
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
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !14
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !17

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !136
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !39
  store i8 0, i8* %144, align 1, !tbaa !25
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #25
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
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
  %187 = load i32, i32* %186, align 8, !tbaa !135
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #25
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !73
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !133

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
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::basic_string", align 8
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !105
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !111
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !121
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !105
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !111
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !121
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !73
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !74
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !39
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !105
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !111
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #25
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !68, !alias.scope !137
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !68, !noalias !140
  store i8* %95, i8** %47, align 8, !tbaa !68, !alias.scope !140
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !14, !noalias !140
  %96 = load i8*, i8** %47, align 8, !tbaa !14
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !39
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #25
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
  %117 = load i8*, i8** %46, align 8, !tbaa !14
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #25
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
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !105
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !111
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #25
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !74
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !68, !alias.scope !143
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !14, !noalias !143
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !39, !noalias !143
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 2)
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
  %170 = load i8*, i8** %51, align 8, !tbaa !14
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !39
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !14
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #25
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
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !74
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !14
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !39
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !18
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !105
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !111
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !121
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
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.87, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #25
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !74
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #25
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !14
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !39
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !14
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #25
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
  %249 = load i32, i32* %42, align 8, !tbaa !73
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !146

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
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #22

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
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88), i32) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88)) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80)) local_unnamed_addr #7 align 2

declare dso_local void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_dct.cpp() #7 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #25
  store float 0x3FDF6297C0000000, float* @_ZN3dctL1aE, align 4, !tbaa !33
  %2 = tail call {}* @llvm.invariant.start.p0i8(i64 4, i8* bitcast (float* @_ZN3dctL1aE to i8*)) #25
  store float 0x3FDD906BC0000000, float* @_ZN3dctL1bE, align 4, !tbaa !33
  %3 = tail call {}* @llvm.invariant.start.p0i8(i64 4, i8* bitcast (float* @_ZN3dctL1bE to i8*)) #25
  store float 0x3FDA9B6620000000, float* @_ZN3dctL1cE, align 4, !tbaa !33
  %4 = tail call {}* @llvm.invariant.start.p0i8(i64 4, i8* bitcast (float* @_ZN3dctL1cE to i8*)) #25
  store float 0x3FD1C73B40000000, float* @_ZN3dctL1dE, align 4, !tbaa !33
  %5 = tail call {}* @llvm.invariant.start.p0i8(i64 4, i8* bitcast (float* @_ZN3dctL1dE to i8*)) #25
  store float 0x3FC87DE2A0000000, float* @_ZN3dctL1eE, align 4, !tbaa !33
  %6 = tail call {}* @llvm.invariant.start.p0i8(i64 4, i8* bitcast (float* @_ZN3dctL1eE to i8*)) #25
  store float 0x3FB8F8B880000000, float* @_ZN3dctL1fE, align 4, !tbaa !33
  %7 = tail call {}* @llvm.invariant.start.p0i8(i64 4, i8* bitcast (float* @_ZN3dctL1fE to i8*)) #25
  store float 0x3FD6A09E60000000, float* @_ZN3dctL1gE, align 4, !tbaa !33
  %8 = tail call {}* @llvm.invariant.start.p0i8(i64 4, i8* bitcast (float* @_ZN3dctL1gE to i8*)) #25
  store <4 x float> <float 0x3FD6A09E60000000, float 0x3FDF6297C0000000, float 0x3FDD906BC0000000, float 0x3FDA9B6620000000>, <4 x float>* bitcast ([64 x float]* @_ZN3dct6dct8x8E to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0x3FD1C73B40000000, float 0x3FC87DE2A0000000, float 0x3FB8F8B880000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 4) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0x3FDA9B6620000000, float 0x3FC87DE2A0000000, float 0xBFB8F8B880000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 8) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0xBFD6A09E60000000, float 0xBFDF6297C0000000, float 0xBFDD906BC0000000, float 0xBFD1C73B40000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 12) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0x3FD1C73B40000000, float 0xBFC87DE2A0000000, float 0xBFDF6297C0000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 16) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0xBFD6A09E60000000, float 0x3FB8F8B880000000, float 0x3FDD906BC0000000, float 0x3FDA9B6620000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 20) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0x3FB8F8B880000000, float 0xBFDD906BC0000000, float 0xBFD1C73B40000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 24) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0x3FDA9B6620000000, float 0xBFC87DE2A0000000, float 0xBFDF6297C0000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 28) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0xBFB8F8B880000000, float 0xBFDD906BC0000000, float 0x3FD1C73B40000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 32) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0xBFDA9B6620000000, float 0xBFC87DE2A0000000, float 0x3FDF6297C0000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 36) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0xBFD1C73B40000000, float 0xBFC87DE2A0000000, float 0x3FDF6297C0000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 40) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0xBFD6A09E60000000, float 0xBFB8F8B880000000, float 0x3FDD906BC0000000, float 0xBFDA9B6620000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 44) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0xBFDA9B6620000000, float 0x3FC87DE2A0000000, float 0x3FB8F8B880000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 48) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0xBFD6A09E60000000, float 0x3FDF6297C0000000, float 0xBFDD906BC0000000, float 0x3FD1C73B40000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 52) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0xBFDF6297C0000000, float 0x3FDD906BC0000000, float 0xBFDA9B6620000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 56) to <4 x float>*), align 16, !tbaa !33
  store <4 x float> <float 0x3FD6A09E60000000, float 0xBFD1C73B40000000, float 0x3FC87DE2A0000000, float 0xBFB8F8B880000000>, <4 x float>* bitcast (float* getelementptr inbounds ([64 x float], [64 x float]* @_ZN3dct6dct8x8E, i64 0, i64 60) to <4 x float>*), align 16, !tbaa !33
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, float*, float*, i32, i32, i32)** @_Z9DCTKernelPfS_S_S_jjj to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!"_ZTSN3dct3DCTE", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !4, i64 48, !4, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !5, i64 120, !8, i64 376, !4, i64 384, !4, i64 392, !4, i64 400, !4, i64 408, !4, i64 416, !4, i64 424}
!11 = !{!"double", !5, i64 0}
!12 = !{!10, !8, i64 44}
!13 = !{!10, !4, i64 48}
!14 = !{!15, !4, i64 0}
!15 = !{!"_ZTSSs", !16, i64 0}
!16 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!21, !4, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !22, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!22 = !{!"bool", !5, i64 0}
!23 = !{!24, !5, i64 56}
!24 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !22, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!25 = !{!5, !5, i64 0}
!26 = !{!10, !4, i64 56}
!27 = !{!10, !8, i64 64}
!28 = !{!10, !4, i64 424}
!29 = !{!30, !22, i64 76}
!30 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !22, i64 40, !15, i64 48, !31, i64 56, !22, i64 76, !22, i64 77, !22, i64 78, !15, i64 80}
!31 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!32 = !{i8 0, i8 2}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !5, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36, !38}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSNSs9_Rep_baseE", !41, i64 0, !41, i64 8, !8, i64 16}
!41 = !{!"long", !5, i64 0}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = !{!47, !8, i64 332}
!47 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !41, i64 256, !41, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !41, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !48, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !41, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !41, i64 712, !41, i64 720, !41, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!48 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!49 = !{!47, !8, i64 328}
!50 = !{!10, !8, i64 68}
!51 = !{!10, !4, i64 88}
!52 = !{!10, !4, i64 96}
!53 = !{!10, !4, i64 104}
!54 = !{!10, !4, i64 112}
!55 = !{!10, !4, i64 392}
!56 = !{!10, !4, i64 400}
!57 = !{!10, !4, i64 416}
!58 = !{!10, !8, i64 72}
!59 = !{!10, !4, i64 408}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36}
!68 = !{!16, !4, i64 0}
!69 = !{!70, !71, i64 32}
!70 = !{!"_ZTSN6appsdk6OptionE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !71, i64 32, !4, i64 40}
!71 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!72 = !{!70, !4, i64 40}
!73 = !{!30, !8, i64 8}
!74 = !{!30, !4, i64 32}
!75 = distinct !{!75, !36}
!76 = !{!10, !4, i64 384}
!77 = !{!78, !4, i64 8}
!78 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!80 = !{!78, !4, i64 0}
!81 = !{!10, !11, i64 8}
!82 = !{!83, !84, i64 8}
!83 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !15, i64 0, !84, i64 8, !84, i64 16, !84, i64 24}
!84 = !{!"long long", !5, i64 0}
!85 = !{!78, !4, i64 16}
!86 = !{!87, !41, i64 0}
!87 = !{!"_ZTS7timeval", !41, i64 0, !41, i64 8}
!88 = !{!87, !41, i64 8}
!89 = !{!83, !84, i64 24}
!90 = !{!83, !84, i64 16}
!91 = !{!10, !8, i64 376}
!92 = distinct !{!92, !36}
!93 = !{!10, !11, i64 16}
!94 = !{!30, !22, i64 77}
!95 = !{!10, !4, i64 80}
!96 = !{!10, !11, i64 32}
!97 = distinct !{!97, !36}
!98 = !{!30, !22, i64 78}
!99 = !{!100, !11, i64 24}
!100 = !{!"_ZTSN6appsdk8SDKTimerE", !101, i64 0, !11, i64 24}
!101 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!104 = distinct !{!104, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!105 = !{!106, !107, i64 24}
!106 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !107, i64 24, !108, i64 28, !108, i64 32, !4, i64 40, !109, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !110, i64 208}
!107 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!108 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!109 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !41, i64 8}
!110 = !{!"_ZTSSt6locale", !4, i64 0}
!111 = !{!107, !107, i64 0}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!114 = distinct !{!114, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!117 = distinct !{!117, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!120 = distinct !{!120, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!121 = !{!106, !41, i64 16}
!122 = distinct !{!122, !36}
!123 = !{!10, !8, i64 0}
!124 = !{!31, !8, i64 16}
!125 = !{!30, !8, i64 12}
!126 = !{!30, !8, i64 16}
!127 = !{!128, !8, i64 88}
!128 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !22, i64 92}
!129 = !{!128, !22, i64 92}
!130 = !{!30, !4, i64 24}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = distinct !{!133, !36}
!134 = !{!22, !22, i64 0}
!135 = !{!106, !108, i64 32}
!136 = !{!40, !8, i64 16}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!139 = distinct !{!139, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!142 = distinct !{!142, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!145 = distinct !{!145, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!146 = distinct !{!146, !36}
