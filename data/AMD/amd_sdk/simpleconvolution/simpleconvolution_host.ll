; ModuleID = 'simpleconvolution/simpleconvolution.cpp'
source_filename = "simpleconvolution/simpleconvolution.cpp"
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
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <2 x i32> }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%class.SimpleConvolution = type { i32, double, double, double, i32, i32, i32, i32, i32*, i32*, float*, i32*, i32*, float*, i32, i32, float*, float*, i32, i32, i32*, i32*, float*, i32*, i32*, float*, float*, float*, i32, i32, i32, i32, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"* }
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

$_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j = comdat any

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
@SOBEL_FILTER_3x3 = dso_local global [9 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 2.000000e+00, float 0.000000e+00, float -2.000000e+00, float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], align 16
@SOBEL_FILTER_3x3_pass1 = dso_local global [3 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], align 4
@SOBEL_FILTER_3x3_pass2 = dso_local global [3 x float] [float 1.000000e+00, float 2.000000e+00, float 1.000000e+00], align 4
@SOBEL_FILTER_5x5 = dso_local global [25 x float] [float 1.000000e+00, float 2.000000e+00, float 0.000000e+00, float -2.000000e+00, float -1.000000e+00, float 4.000000e+00, float 8.000000e+00, float 0.000000e+00, float -8.000000e+00, float -4.000000e+00, float 6.000000e+00, float 1.200000e+01, float 0.000000e+00, float -1.200000e+01, float -6.000000e+00, float 4.000000e+00, float 8.000000e+00, float 0.000000e+00, float -8.000000e+00, float -4.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00, float -2.000000e+00, float -1.000000e+00], align 16
@SOBEL_FILTER_5x5_pass1 = dso_local global [5 x float] [float 1.000000e+00, float 2.000000e+00, float 0.000000e+00, float -2.000000e+00, float -1.000000e+00], align 16
@SOBEL_FILTER_5x5_pass2 = dso_local global [5 x float] [float 1.000000e+00, float 4.000000e+00, float 6.000000e+00, float 4.000000e+00, float 1.000000e+00], align 16
@_Z29simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j = dso_local constant void (i32*, float*, i32*, i64, i64, i32)* @_Z44__device_stub__simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j, align 8
@_Z31simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_ = dso_local constant void (i32*, float*, float*, i64, i32, i64)* @_Z46__device_stub__simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_, align 8
@_Z31simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_ = dso_local constant void (float*, float*, i32*, i64, i32, i64)* @_Z46__device_stub__simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_, align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [35 x i8] c"Mask width should be either 3 or 5\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to allocate host memory. (input)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"simpleconvolution/simpleconvolution.cpp\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (output)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed to allocate host memory. (outputSep)\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Failed to allocate host memory. (tmpOutput)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Width of the input matrix\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Height of the input matrix\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"masksize\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Width of the mask matrix\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"localSize\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Size of work-group\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"Failed to allocate host memory. (verificationOutput)\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"Verifying non-Separable Convolution Kernel result - \00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"Verifying Separable Convolution Kernel result - \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"mask Size\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"KernelTime(sec)\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"\0A Non-Separable Filter Timing Measurement!\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"\0A Separable Filter Timing Measurement!\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.58 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"AMD-APP-SDK-vx.y.z.s\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.69 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.76 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.83 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"Cannot fill array. NULL pointer.\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [68 x i8] c"_Z29simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j\00", align 1
@1 = private unnamed_addr constant [71 x i8] c"_Z31simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_\00", align 1
@2 = private unnamed_addr constant [70 x i8] c"_Z31simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_simpleconvolution.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z44__device_stub__simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j(i32* %0, float* %1, i32* %2, i64 %3, i64 %4, i32 %5) #3 {
  %7 = alloca %struct.HIP_vector_type, align 8
  %8 = alloca %struct.HIP_vector_type, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = bitcast %struct.HIP_vector_type* %7 to i64*
  store i64 %3, i64* %17, align 8
  %18 = bitcast %struct.HIP_vector_type* %8 to i64*
  store i64 %4, i64* %18, align 8
  store i32* %0, i32** %9, align 8, !tbaa !3
  store float* %1, float** %10, align 8, !tbaa !3
  store i32* %2, i32** %11, align 8, !tbaa !3
  store i32 %5, i32* %12, align 4, !tbaa !7
  %19 = alloca [6 x i8*], align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 0
  %21 = bitcast [6 x i8*]* %19 to i32***
  store i32** %9, i32*** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 1
  %23 = bitcast i8** %22 to float***
  store float** %10, float*** %23, align 8
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 2
  %25 = bitcast i8** %24 to i32***
  store i32** %11, i32*** %25, align 16
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 3
  %27 = bitcast i8** %26 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %7, %struct.HIP_vector_type** %27, align 8
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 4
  %29 = bitcast i8** %28 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %8, %struct.HIP_vector_type** %29, align 16
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 5
  %31 = bitcast i8** %30 to i32**
  store i32* %12, i32** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %33 = load i64, i64* %15, align 8
  %34 = bitcast i8** %16 to %struct.ihipStream_t**
  %35 = load %struct.ihipStream_t*, %struct.ihipStream_t** %34, align 8
  %36 = bitcast %struct.dim3* %13 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %struct.dim3* %14 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, float*, i32*, i64, i64, i32)** @_Z29simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j to i8*), i64 %37, i32 %39, i64 %41, i32 %43, i8** nonnull %20, i64 %33, %struct.ihipStream_t* %35)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: norecurse uwtable
define dso_local void @_Z46__device_stub__simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_(i32* %0, float* %1, float* %2, i64 %3, i32 %4, i64 %5) #3 {
  %7 = alloca %struct.HIP_vector_type, align 8
  %8 = alloca %struct.HIP_vector_type, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = bitcast %struct.HIP_vector_type* %7 to i64*
  store i64 %3, i64* %17, align 8
  %18 = bitcast %struct.HIP_vector_type* %8 to i64*
  store i64 %5, i64* %18, align 8
  store i32* %0, i32** %9, align 8, !tbaa !3
  store float* %1, float** %10, align 8, !tbaa !3
  store float* %2, float** %11, align 8, !tbaa !3
  store i32 %4, i32* %12, align 4, !tbaa !7
  %19 = alloca [6 x i8*], align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 0
  %21 = bitcast [6 x i8*]* %19 to i32***
  store i32** %9, i32*** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 1
  %23 = bitcast i8** %22 to float***
  store float** %10, float*** %23, align 8
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 2
  %25 = bitcast i8** %24 to float***
  store float** %11, float*** %25, align 16
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 3
  %27 = bitcast i8** %26 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %7, %struct.HIP_vector_type** %27, align 8
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 4
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 16
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 5
  %31 = bitcast i8** %30 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %8, %struct.HIP_vector_type** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %33 = load i64, i64* %15, align 8
  %34 = bitcast i8** %16 to %struct.ihipStream_t**
  %35 = load %struct.ihipStream_t*, %struct.ihipStream_t** %34, align 8
  %36 = bitcast %struct.dim3* %13 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %struct.dim3* %14 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, float*, float*, i64, i32, i64)** @_Z31simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_ to i8*), i64 %37, i32 %39, i64 %41, i32 %43, i8** nonnull %20, i64 %33, %struct.ihipStream_t* %35)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z46__device_stub__simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_(float* %0, float* %1, i32* %2, i64 %3, i32 %4, i64 %5) #3 {
  %7 = alloca %struct.HIP_vector_type, align 8
  %8 = alloca %struct.HIP_vector_type, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = bitcast %struct.HIP_vector_type* %7 to i64*
  store i64 %3, i64* %17, align 8
  %18 = bitcast %struct.HIP_vector_type* %8 to i64*
  store i64 %5, i64* %18, align 8
  store float* %0, float** %9, align 8, !tbaa !3
  store float* %1, float** %10, align 8, !tbaa !3
  store i32* %2, i32** %11, align 8, !tbaa !3
  store i32 %4, i32* %12, align 4, !tbaa !7
  %19 = alloca [6 x i8*], align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 0
  %21 = bitcast [6 x i8*]* %19 to float***
  store float** %9, float*** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 1
  %23 = bitcast i8** %22 to float***
  store float** %10, float*** %23, align 8
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 2
  %25 = bitcast i8** %24 to i32***
  store i32** %11, i32*** %25, align 16
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 3
  %27 = bitcast i8** %26 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %7, %struct.HIP_vector_type** %27, align 8
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 4
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 16
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 5
  %31 = bitcast i8** %30 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %8, %struct.HIP_vector_type** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %33 = load i64, i64* %15, align 8
  %34 = bitcast i8** %16 to %struct.ihipStream_t**
  %35 = load %struct.ihipStream_t*, %struct.ihipStream_t** %34, align 8
  %36 = bitcast %struct.dim3* %13 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %struct.dim3* %14 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32*, i64, i32, i64)** @_Z31simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_ to i8*), i64 %37, i32 %39, i64 %41, i32 %43, i8** nonnull %20, i64 %33, %struct.ihipStream_t* %35)
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN17SimpleConvolution22setupSimpleConvolutionEv(%class.SimpleConvolution* nocapture nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %14 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 14
  %15 = load i32, i32* %14, align 8, !tbaa !9
  switch i32 %15, label %16 [
    i32 3, label %46
    i32 5, label %45
  ]

16:                                               ; preds = %1
  %17 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 34)
  %18 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %19 = getelementptr i8, i8* %18, i64 -24
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 240
  %24 = bitcast i8* %23 to %"class.std::ctype"**
  %25 = load %"class.std::ctype"*, %"class.std::ctype"** %24, align 8, !tbaa !14
  %26 = icmp eq %"class.std::ctype"* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

28:                                               ; preds = %16
  %29 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 8
  %30 = load i8, i8* %29, align 8, !tbaa !17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 9, i64 10
  %34 = load i8, i8* %33, align 1, !tbaa !19
  br label %41

35:                                               ; preds = %28
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25)
  %36 = bitcast %"class.std::ctype"* %25 to i8 (%"class.std::ctype"*, i8)***
  %37 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %36, align 8, !tbaa !12
  %38 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %37, i64 6
  %39 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %38, align 8
  %40 = tail call signext i8 %39(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25, i8 signext 10)
  br label %41

41:                                               ; preds = %32, %35
  %42 = phi i8 [ %34, %32 ], [ %40, %35 ]
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %42)
  %44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %43)
  br label %401

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %1, %45
  %47 = phi float* [ getelementptr inbounds ([25 x float], [25 x float]* @SOBEL_FILTER_5x5, i64 0, i64 0), %45 ], [ getelementptr inbounds ([9 x float], [9 x float]* @SOBEL_FILTER_3x3, i64 0, i64 0), %1 ]
  %48 = phi float* [ getelementptr inbounds ([5 x float], [5 x float]* @SOBEL_FILTER_5x5_pass1, i64 0, i64 0), %45 ], [ getelementptr inbounds ([3 x float], [3 x float]* @SOBEL_FILTER_3x3_pass1, i64 0, i64 0), %1 ]
  %49 = phi float* [ getelementptr inbounds ([5 x float], [5 x float]* @SOBEL_FILTER_5x5_pass2, i64 0, i64 0), %45 ], [ getelementptr inbounds ([3 x float], [3 x float]* @SOBEL_FILTER_3x3_pass2, i64 0, i64 0), %1 ]
  %50 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 13
  store float* %47, float** %50, align 8, !tbaa !20
  %51 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 16
  store float* %48, float** %51, align 8, !tbaa !21
  %52 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 17
  store float* %49, float** %52, align 8, !tbaa !22
  %53 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %54 = load i32, i32* %53, align 8, !tbaa !23
  %55 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %56 = load i32, i32* %55, align 4, !tbaa !24
  %57 = mul nsw i32 %56, %54
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i32 64, i32* %53, align 8, !tbaa !23
  store i32 64, i32* %55, align 4, !tbaa !24
  br label %60

60:                                               ; preds = %59, %46
  %61 = phi i32 [ 64, %59 ], [ %56, %46 ]
  %62 = phi i32 [ 64, %59 ], [ %54, %46 ]
  %63 = mul nsw i32 %61, %62
  %64 = shl i32 %63, 2
  %65 = zext i32 %64 to i64
  %66 = tail call noalias align 16 i8* @malloc(i64 %65) #26
  %67 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 8
  %68 = bitcast i32** %67 to i8**
  store i8* %66, i8** %68, align 8, !tbaa !25
  %69 = icmp eq i8* %66, null
  %70 = bitcast i8* %66 to i32*
  br i1 %69, label %71, label %133

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %72) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %73 unwind label %127

73:                                               ; preds = %71
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %74 unwind label %129

74:                                               ; preds = %73
  %75 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8, !tbaa !26
  %77 = getelementptr inbounds i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to %"struct.std::basic_string<char>::_Rep"*
  %79 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %79) #26
  %80 = icmp eq i8* %77, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %80, label %93, label %81, !prof !29

81:                                               ; preds = %74
  %82 = getelementptr inbounds i8, i8* %76, i64 -8
  %83 = bitcast i8* %82 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %84, label %86

84:                                               ; preds = %81
  %85 = atomicrmw volatile add i32* %83, i32 -1 acq_rel, align 4
  br label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %83, align 8, !tbaa !7
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %83, align 8, !tbaa !7
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %78, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %93

93:                                               ; preds = %74, %89, %92
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %79) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %72) #26
  %94 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 11)
  %95 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 39)
  %96 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %97 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 470)
  %98 = bitcast %"class.std::basic_ostream"* %97 to i8**
  %99 = load i8*, i8** %98, align 8, !tbaa !12
  %100 = getelementptr i8, i8* %99, i64 -24
  %101 = bitcast i8* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = bitcast %"class.std::basic_ostream"* %97 to i8*
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  %105 = getelementptr inbounds i8, i8* %104, i64 240
  %106 = bitcast i8* %105 to %"class.std::ctype"**
  %107 = load %"class.std::ctype"*, %"class.std::ctype"** %106, align 8, !tbaa !14
  %108 = icmp eq %"class.std::ctype"* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

110:                                              ; preds = %93
  %111 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %107, i64 0, i32 8
  %112 = load i8, i8* %111, align 8, !tbaa !17
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %107, i64 0, i32 9, i64 10
  %116 = load i8, i8* %115, align 1, !tbaa !19
  br label %123

117:                                              ; preds = %110
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %107)
  %118 = bitcast %"class.std::ctype"* %107 to i8 (%"class.std::ctype"*, i8)***
  %119 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %118, align 8, !tbaa !12
  %120 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %119, i64 6
  %121 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %120, align 8
  %122 = call signext i8 %121(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %107, i8 signext 10)
  br label %123

123:                                              ; preds = %114, %117
  %124 = phi i8 [ %116, %114 ], [ %122, %117 ]
  %125 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %97, i8 signext %124)
  %126 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %125)
  br label %401

127:                                              ; preds = %71
  %128 = landingpad { i8*, i32 }
          cleanup
  br label %131

129:                                              ; preds = %73
  %130 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi { i8*, i32 } [ %130, %129 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %72) #26
  br label %403

133:                                              ; preds = %60
  %134 = sext i32 %63 to i64
  %135 = shl nsw i64 %134, 2
  %136 = tail call noalias align 16 i8* @malloc(i64 %135) #26
  %137 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 11
  %138 = bitcast i32** %137 to i8**
  store i8* %136, i8** %138, align 8, !tbaa !30
  %139 = icmp eq i8* %136, null
  br i1 %139, label %140, label %202

140:                                              ; preds = %133
  %141 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %141) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
          to label %142 unwind label %196

142:                                              ; preds = %140
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %143 unwind label %198

143:                                              ; preds = %142
  %144 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8, !tbaa !26
  %146 = getelementptr inbounds i8, i8* %145, i64 -24
  %147 = bitcast i8* %146 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #26
  %149 = icmp eq i8* %146, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !29

150:                                              ; preds = %143
  %151 = getelementptr inbounds i8, i8* %145, i64 -8
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

162:                                              ; preds = %143, %158, %161
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %141) #26
  %163 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 11)
  %164 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 39)
  %165 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %166 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 472)
  %167 = bitcast %"class.std::basic_ostream"* %166 to i8**
  %168 = load i8*, i8** %167, align 8, !tbaa !12
  %169 = getelementptr i8, i8* %168, i64 -24
  %170 = bitcast i8* %169 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = bitcast %"class.std::basic_ostream"* %166 to i8*
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  %174 = getelementptr inbounds i8, i8* %173, i64 240
  %175 = bitcast i8* %174 to %"class.std::ctype"**
  %176 = load %"class.std::ctype"*, %"class.std::ctype"** %175, align 8, !tbaa !14
  %177 = icmp eq %"class.std::ctype"* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %162
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

179:                                              ; preds = %162
  %180 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %176, i64 0, i32 8
  %181 = load i8, i8* %180, align 8, !tbaa !17
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %176, i64 0, i32 9, i64 10
  %185 = load i8, i8* %184, align 1, !tbaa !19
  br label %192

186:                                              ; preds = %179
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %176)
  %187 = bitcast %"class.std::ctype"* %176 to i8 (%"class.std::ctype"*, i8)***
  %188 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %187, align 8, !tbaa !12
  %189 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %188, i64 6
  %190 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %189, align 8
  %191 = call signext i8 %190(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %176, i8 signext 10)
  br label %192

192:                                              ; preds = %183, %186
  %193 = phi i8 [ %185, %183 ], [ %191, %186 ]
  %194 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %166, i8 signext %193)
  %195 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %194)
  br label %401

196:                                              ; preds = %140
  %197 = landingpad { i8*, i32 }
          cleanup
  br label %200

198:                                              ; preds = %142
  %199 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #26
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi { i8*, i32 } [ %199, %198 ], [ %197, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %141) #26
  br label %403

202:                                              ; preds = %133
  %203 = tail call noalias align 16 i8* @malloc(i64 %135) #26
  %204 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 12
  %205 = bitcast i32** %204 to i8**
  store i8* %203, i8** %205, align 8, !tbaa !31
  %206 = icmp eq i8* %203, null
  br i1 %206, label %207, label %269

207:                                              ; preds = %202
  %208 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %208) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
          to label %209 unwind label %263

209:                                              ; preds = %207
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %10)
          to label %210 unwind label %265

210:                                              ; preds = %209
  %211 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8, !tbaa !26
  %213 = getelementptr inbounds i8, i8* %212, i64 -24
  %214 = bitcast i8* %213 to %"struct.std::basic_string<char>::_Rep"*
  %215 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %215) #26
  %216 = icmp eq i8* %213, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %216, label %229, label %217, !prof !29

217:                                              ; preds = %210
  %218 = getelementptr inbounds i8, i8* %212, i64 -8
  %219 = bitcast i8* %218 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %220, label %222

220:                                              ; preds = %217
  %221 = atomicrmw volatile add i32* %219, i32 -1 acq_rel, align 4
  br label %225

222:                                              ; preds = %217
  %223 = load i32, i32* %219, align 8, !tbaa !7
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %219, align 8, !tbaa !7
  br label %225

225:                                              ; preds = %222, %220
  %226 = phi i32 [ %221, %220 ], [ %223, %222 ]
  %227 = icmp slt i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %214, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %229

229:                                              ; preds = %210, %225, %228
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %215) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %208) #26
  %230 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 11)
  %231 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 39)
  %232 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %233 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 474)
  %234 = bitcast %"class.std::basic_ostream"* %233 to i8**
  %235 = load i8*, i8** %234, align 8, !tbaa !12
  %236 = getelementptr i8, i8* %235, i64 -24
  %237 = bitcast i8* %236 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = bitcast %"class.std::basic_ostream"* %233 to i8*
  %240 = getelementptr inbounds i8, i8* %239, i64 %238
  %241 = getelementptr inbounds i8, i8* %240, i64 240
  %242 = bitcast i8* %241 to %"class.std::ctype"**
  %243 = load %"class.std::ctype"*, %"class.std::ctype"** %242, align 8, !tbaa !14
  %244 = icmp eq %"class.std::ctype"* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %229
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

246:                                              ; preds = %229
  %247 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %243, i64 0, i32 8
  %248 = load i8, i8* %247, align 8, !tbaa !17
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %243, i64 0, i32 9, i64 10
  %252 = load i8, i8* %251, align 1, !tbaa !19
  br label %259

253:                                              ; preds = %246
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %243)
  %254 = bitcast %"class.std::ctype"* %243 to i8 (%"class.std::ctype"*, i8)***
  %255 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %254, align 8, !tbaa !12
  %256 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %255, i64 6
  %257 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %256, align 8
  %258 = call signext i8 %257(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %243, i8 signext 10)
  br label %259

259:                                              ; preds = %250, %253
  %260 = phi i8 [ %252, %250 ], [ %258, %253 ]
  %261 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %233, i8 signext %260)
  %262 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %261)
  br label %401

263:                                              ; preds = %207
  %264 = landingpad { i8*, i32 }
          cleanup
  br label %267

265:                                              ; preds = %209
  %266 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10) #26
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi { i8*, i32 } [ %266, %265 ], [ %264, %263 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %208) #26
  br label %403

269:                                              ; preds = %202
  %270 = tail call i32 @_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j(i32* nonnull %70, i32 %62, i32 %61, i32 0, i32 255, i32 123)
  %271 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 18
  %272 = load i32, i32* %271, align 8, !tbaa !32
  %273 = lshr i32 %272, 1
  %274 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 19
  store i32 %273, i32* %274, align 4, !tbaa !33
  %275 = load i32, i32* %55, align 4, !tbaa !24
  %276 = and i32 %272, -2
  %277 = add nsw i32 %275, %276
  %278 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 7
  store i32 %277, i32* %278, align 4, !tbaa !34
  %279 = load i32, i32* %53, align 8, !tbaa !23
  %280 = add nsw i32 %279, %276
  %281 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 6
  store i32 %280, i32* %281, align 8, !tbaa !35
  %282 = mul nsw i32 %280, %277
  %283 = sext i32 %282 to i64
  %284 = tail call noalias align 16 i8* @calloc(i64 %283, i64 4) #26
  %285 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 9
  %286 = bitcast i32** %285 to i8**
  store i8* %284, i8** %286, align 8, !tbaa !36
  %287 = icmp sgt i32 %275, 0
  %288 = icmp sgt i32 %279, 0
  %289 = select i1 %287, i1 %288, i1 false
  br i1 %289, label %290, label %301

290:                                              ; preds = %269
  %291 = bitcast i8* %284 to i32*
  br label %292

292:                                              ; preds = %290, %318
  %293 = phi i32 [ %314, %318 ], [ %275, %290 ]
  %294 = phi i32 [ %315, %318 ], [ %279, %290 ]
  %295 = phi i32* [ %319, %318 ], [ %291, %290 ]
  %296 = phi i32 [ %316, %318 ], [ 0, %290 ]
  %297 = load i32*, i32** %67, align 8
  %298 = icmp sgt i32 %294, 0
  br i1 %298, label %320, label %313

299:                                              ; preds = %313
  %300 = load i32, i32* %278, align 4, !tbaa !34
  br label %301

301:                                              ; preds = %299, %269
  %302 = phi i32 [ %300, %299 ], [ %277, %269 ]
  %303 = phi i32 [ %315, %299 ], [ %279, %269 ]
  %304 = mul nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = tail call noalias align 16 i8* @calloc(i64 %305, i64 4) #26
  %307 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 10
  %308 = bitcast float** %307 to i8**
  store i8* %306, i8** %308, align 8, !tbaa !37
  %309 = load i32*, i32** %137, align 8, !tbaa !30
  %310 = icmp eq i32* %309, null
  br i1 %310, label %339, label %401

311:                                              ; preds = %320
  %312 = load i32, i32* %55, align 4, !tbaa !24
  br label %313

313:                                              ; preds = %311, %292
  %314 = phi i32 [ %312, %311 ], [ %293, %292 ]
  %315 = phi i32 [ %337, %311 ], [ %294, %292 ]
  %316 = add nuw nsw i32 %296, 1
  %317 = icmp slt i32 %316, %314
  br i1 %317, label %318, label %299, !llvm.loop !38

318:                                              ; preds = %313
  %319 = load i32*, i32** %285, align 8
  br label %292

320:                                              ; preds = %292, %320
  %321 = phi i32 [ %337, %320 ], [ %294, %292 ]
  %322 = phi i32 [ %336, %320 ], [ 0, %292 ]
  %323 = mul nsw i32 %321, %296
  %324 = add nsw i32 %323, %322
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %297, i64 %325
  %327 = load i32, i32* %326, align 4, !tbaa !7
  %328 = load i32, i32* %274, align 4, !tbaa !33
  %329 = add nsw i32 %328, %296
  %330 = load i32, i32* %281, align 8, !tbaa !35
  %331 = mul nsw i32 %329, %330
  %332 = add nsw i32 %328, %322
  %333 = add nsw i32 %332, %331
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %295, i64 %334
  store i32 %327, i32* %335, align 4, !tbaa !7
  %336 = add nuw nsw i32 %322, 1
  %337 = load i32, i32* %53, align 8, !tbaa !23
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %320, label %311, !llvm.loop !41

339:                                              ; preds = %301
  %340 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %340) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
          to label %341 unwind label %395

341:                                              ; preds = %339
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %12)
          to label %342 unwind label %397

342:                                              ; preds = %341
  %343 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8, !tbaa !26
  %345 = getelementptr inbounds i8, i8* %344, i64 -24
  %346 = bitcast i8* %345 to %"struct.std::basic_string<char>::_Rep"*
  %347 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %347) #26
  %348 = icmp eq i8* %345, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %348, label %361, label %349, !prof !29

349:                                              ; preds = %342
  %350 = getelementptr inbounds i8, i8* %344, i64 -8
  %351 = bitcast i8* %350 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %352, label %354

352:                                              ; preds = %349
  %353 = atomicrmw volatile add i32* %351, i32 -1 acq_rel, align 4
  br label %357

354:                                              ; preds = %349
  %355 = load i32, i32* %351, align 8, !tbaa !7
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %351, align 8, !tbaa !7
  br label %357

357:                                              ; preds = %354, %352
  %358 = phi i32 [ %353, %352 ], [ %355, %354 ]
  %359 = icmp slt i32 %358, 1
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %346, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %361

361:                                              ; preds = %342, %357, %360
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %347) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %340) #26
  %362 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 11)
  %363 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 39)
  %364 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %365 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 492)
  %366 = bitcast %"class.std::basic_ostream"* %365 to i8**
  %367 = load i8*, i8** %366, align 8, !tbaa !12
  %368 = getelementptr i8, i8* %367, i64 -24
  %369 = bitcast i8* %368 to i64*
  %370 = load i64, i64* %369, align 8
  %371 = bitcast %"class.std::basic_ostream"* %365 to i8*
  %372 = getelementptr inbounds i8, i8* %371, i64 %370
  %373 = getelementptr inbounds i8, i8* %372, i64 240
  %374 = bitcast i8* %373 to %"class.std::ctype"**
  %375 = load %"class.std::ctype"*, %"class.std::ctype"** %374, align 8, !tbaa !14
  %376 = icmp eq %"class.std::ctype"* %375, null
  br i1 %376, label %377, label %378

377:                                              ; preds = %361
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

378:                                              ; preds = %361
  %379 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %375, i64 0, i32 8
  %380 = load i8, i8* %379, align 8, !tbaa !17
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %375, i64 0, i32 9, i64 10
  %384 = load i8, i8* %383, align 1, !tbaa !19
  br label %391

385:                                              ; preds = %378
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %375)
  %386 = bitcast %"class.std::ctype"* %375 to i8 (%"class.std::ctype"*, i8)***
  %387 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %386, align 8, !tbaa !12
  %388 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %387, i64 6
  %389 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %388, align 8
  %390 = call signext i8 %389(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %375, i8 signext 10)
  br label %391

391:                                              ; preds = %382, %385
  %392 = phi i8 [ %384, %382 ], [ %390, %385 ]
  %393 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %365, i8 signext %392)
  %394 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %393)
  br label %401

395:                                              ; preds = %339
  %396 = landingpad { i8*, i32 }
          cleanup
  br label %399

397:                                              ; preds = %341
  %398 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12) #26
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi { i8*, i32 } [ %398, %397 ], [ %396, %395 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %340) #26
  br label %403

401:                                              ; preds = %301, %391, %259, %192, %123, %41
  %402 = phi i32 [ 2, %41 ], [ 1, %123 ], [ 1, %192 ], [ 1, %259 ], [ 1, %391 ], [ 0, %301 ]
  ret i32 %402

403:                                              ; preds = %399, %267, %200, %131
  %404 = phi { i8*, i32 } [ %132, %131 ], [ %201, %200 ], [ %268, %267 ], [ %400, %399 ]
  resume { i8*, i32 } %404
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #9 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !26
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !42
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !12
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !14
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !19
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !12
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
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk10fillRandomIjEEiPT_iiS1_S1_j(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = icmp eq i32* %0, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %13 unwind label %33

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !26
  %16 = getelementptr inbounds i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  %19 = icmp eq i8* %16, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %19, label %32, label %20, !prof !29

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %17, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
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
  br i1 %66, label %67, label %55, !llvm.loop !45

67:                                               ; preds = %55
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %50
  br i1 %69, label %70, label %52, !llvm.loop !46

70:                                               ; preds = %67, %40, %32
  %71 = phi i32 [ 1, %32 ], [ 0, %40 ], [ 0, %67 ]
  ret i32 %71
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN17SimpleConvolution8setupHIPEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 21
  %3 = bitcast i32** %2 to i8**
  %4 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 7
  %5 = load i32, i32* %4, align 4, !tbaa !34
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 8, !tbaa !35
  %10 = sext i32 %9 to i64
  %11 = mul i64 %7, %10
  %12 = tail call i32 @hipMalloc(i8** nonnull %3, i64 %11)
  %13 = load i8*, i8** %3, align 8, !tbaa !47
  %14 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 9
  %15 = bitcast i32** %14 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !36
  %17 = load i32, i32* %4, align 4, !tbaa !34
  %18 = load i32, i32* %8, align 8, !tbaa !35
  %19 = mul nsw i32 %18, %17
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call i32 @hipMemcpy(i8* %13, i8* %16, i64 %21, i32 1)
  %23 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 22
  %24 = bitcast float** %23 to i8**
  %25 = load i32, i32* %4, align 4, !tbaa !34
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %29 = load i32, i32* %28, align 8, !tbaa !23
  %30 = sext i32 %29 to i64
  %31 = mul i64 %27, %30
  %32 = tail call i32 @hipMalloc(i8** nonnull %24, i64 %31)
  %33 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 23
  %34 = bitcast i32** %33 to i8**
  %35 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %36 = load i32, i32* %35, align 4, !tbaa !24
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = load i32, i32* %28, align 8, !tbaa !23
  %40 = sext i32 %39 to i64
  %41 = mul i64 %38, %40
  %42 = tail call i32 @hipMalloc(i8** nonnull %34, i64 %41)
  %43 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 24
  %44 = bitcast i32** %43 to i8**
  %45 = load i32, i32* %35, align 4, !tbaa !24
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 2
  %48 = load i32, i32* %28, align 8, !tbaa !23
  %49 = sext i32 %48 to i64
  %50 = mul i64 %47, %49
  %51 = tail call i32 @hipMalloc(i8** nonnull %44, i64 %50)
  %52 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 25
  %53 = bitcast float** %52 to i8**
  %54 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 14
  %55 = load i32, i32* %54, align 8, !tbaa !9
  %56 = zext i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 2
  %58 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 15
  %59 = load i32, i32* %58, align 4, !tbaa !48
  %60 = zext i32 %59 to i64
  %61 = mul i64 %57, %60
  %62 = tail call i32 @hipMalloc(i8** nonnull %53, i64 %61)
  %63 = load i8*, i8** %53, align 8, !tbaa !49
  %64 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 13
  %65 = bitcast float** %64 to i8**
  %66 = load i8*, i8** %65, align 8, !tbaa !20
  %67 = load i32, i32* %54, align 8, !tbaa !9
  %68 = zext i32 %67 to i64
  %69 = shl nuw nsw i64 %68, 2
  %70 = load i32, i32* %58, align 4, !tbaa !48
  %71 = zext i32 %70 to i64
  %72 = mul i64 %69, %71
  %73 = tail call i32 @hipMemcpy(i8* %63, i8* %66, i64 %72, i32 1)
  %74 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 26
  %75 = bitcast float** %74 to i8**
  %76 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 18
  %77 = load i32, i32* %76, align 8, !tbaa !32
  %78 = zext i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 2
  %80 = tail call i32 @hipMalloc(i8** nonnull %75, i64 %79)
  %81 = load i8*, i8** %75, align 8, !tbaa !50
  %82 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 16
  %83 = bitcast float** %82 to i8**
  %84 = load i8*, i8** %83, align 8, !tbaa !21
  %85 = load i32, i32* %76, align 8, !tbaa !32
  %86 = zext i32 %85 to i64
  %87 = shl nuw nsw i64 %86, 2
  %88 = tail call i32 @hipMemcpy(i8* %81, i8* %84, i64 %87, i32 1)
  %89 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 27
  %90 = bitcast float** %89 to i8**
  %91 = load i32, i32* %76, align 8, !tbaa !32
  %92 = zext i32 %91 to i64
  %93 = shl nuw nsw i64 %92, 2
  %94 = tail call i32 @hipMalloc(i8** nonnull %90, i64 %93)
  %95 = load i8*, i8** %90, align 8, !tbaa !51
  %96 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 17
  %97 = bitcast float** %96 to i8**
  %98 = load i8*, i8** %97, align 8, !tbaa !22
  %99 = load i32, i32* %76, align 8, !tbaa !32
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 2
  %102 = tail call i32 @hipMemcpy(i8* %95, i8* %98, i64 %101, i32 1)
  ret i32 0
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN17SimpleConvolution22runNonSeparableKernelsEv(%class.SimpleConvolution* nocapture nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca %struct.HIP_vector_type, align 8
  %3 = alloca %struct.HIP_vector_type, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dim3, align 8
  %9 = alloca %struct.dim3, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [6 x i8*], align 16
  %13 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %14 = bitcast i32* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 8, !tbaa !7
  %16 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 14
  %17 = bitcast i32* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 8, !tbaa !7
  %19 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 30
  %20 = load i32, i32* %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 29
  store i32 %20, i32* %21, align 4, !tbaa !53
  %22 = extractelement <2 x i32> %15, i64 0
  %23 = extractelement <2 x i32> %15, i64 1
  %24 = mul nsw i32 %23, %22
  %25 = add i32 %24, -1
  %26 = add i32 %25, %20
  %27 = udiv i32 %26, %20
  %28 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 28
  %29 = mul i32 %27, %20
  store i32 %29, i32* %28, align 8, !tbaa !54
  %30 = zext i32 %27 to i64
  %31 = or i64 %30, 4294967296
  %32 = zext i32 %20 to i64
  %33 = or i64 %32, 4294967296
  %34 = tail call i32 @__hipPushCallConfiguration(i64 %31, i32 1, i64 %33, i32 1, i64 0, %struct.ihipStream_t* null)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %1
  %37 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 21
  %38 = load i32*, i32** %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 25
  %40 = load float*, float** %39, align 8, !tbaa !49
  %41 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 23
  %42 = load i32*, i32** %41, align 8, !tbaa !55
  %43 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 6
  %44 = load i32, i32* %43, align 8, !tbaa !35
  %45 = bitcast %struct.HIP_vector_type* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45)
  %46 = bitcast %struct.HIP_vector_type* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46)
  %47 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47)
  %48 = bitcast float** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48)
  %49 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49)
  %50 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50)
  %51 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %51)
  %52 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %52)
  %53 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53)
  %54 = bitcast i8** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54)
  %55 = bitcast [6 x i8*]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %55)
  %56 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 0, i32 0, i32 0, i32 0
  store <2 x i32> %15, <2 x i32>* %56, align 8
  %57 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %3, i64 0, i32 0, i32 0, i32 0
  store <2 x i32> %18, <2 x i32>* %57, align 8
  store i32* %38, i32** %4, align 8, !tbaa !3
  store float* %40, float** %5, align 8, !tbaa !3
  store i32* %42, i32** %6, align 8, !tbaa !3
  store i32 %44, i32* %7, align 4, !tbaa !7
  %58 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %59 = bitcast [6 x i8*]* %12 to i32***
  store i32** %4, i32*** %59, align 16
  %60 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 1
  %61 = bitcast i8** %60 to float***
  store float** %5, float*** %61, align 8
  %62 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 2
  %63 = bitcast i8** %62 to i32***
  store i32** %6, i32*** %63, align 16
  %64 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 3
  %65 = bitcast i8** %64 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %2, %struct.HIP_vector_type** %65, align 8
  %66 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 4
  %67 = bitcast i8** %66 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %3, %struct.HIP_vector_type** %67, align 16
  %68 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 5
  %69 = bitcast i8** %68 to i32**
  store i32* %7, i32** %69, align 8
  %70 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %8, %struct.dim3* nonnull %9, i64* nonnull %10, i8** nonnull %11)
  %71 = load i64, i64* %10, align 8
  %72 = bitcast i8** %11 to %struct.ihipStream_t**
  %73 = load %struct.ihipStream_t*, %struct.ihipStream_t** %72, align 8
  %74 = bitcast %struct.dim3* %8 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = bitcast %struct.dim3* %9 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, float*, i32*, i64, i64, i32)** @_Z29simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j to i8*), i64 %75, i32 %77, i64 %79, i32 %81, i8** nonnull %58, i64 %71, %struct.ihipStream_t* %73)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %51)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %52)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %55)
  br label %83

83:                                               ; preds = %36, %1
  ret i32 0
}

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN17SimpleConvolution19runSeparableKernelsEv(%class.SimpleConvolution* nocapture nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca %struct.HIP_vector_type, align 8
  %3 = alloca %struct.HIP_vector_type, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dim3, align 8
  %9 = alloca %struct.dim3, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [6 x i8*], align 16
  %13 = alloca %struct.HIP_vector_type, align 8
  %14 = alloca %struct.HIP_vector_type, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.dim3, align 8
  %20 = alloca %struct.dim3, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [6 x i8*], align 16
  %24 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %25 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %26 = bitcast i32* %24 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 8, !tbaa !7
  %28 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 6
  %29 = bitcast i32* %28 to <2 x i32>*
  %30 = load <2 x i32>, <2 x i32>* %29, align 8, !tbaa !7
  %31 = extractelement <2 x i32> %30, i64 1
  %32 = extractelement <2 x i32> %27, i64 0
  %33 = mul nsw i32 %31, %32
  %34 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 30
  %35 = load i32, i32* %34, align 8, !tbaa !52
  %36 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 29
  store i32 %35, i32* %36, align 4, !tbaa !53
  %37 = add i32 %35, -1
  %38 = add i32 %37, %33
  %39 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 28
  %40 = urem i32 %38, %35
  %41 = sub i32 %38, %40
  store i32 %41, i32* %39, align 8, !tbaa !54
  %42 = udiv i32 %38, %35
  %43 = zext i32 %42 to i64
  %44 = or i64 %43, 4294967296
  %45 = zext i32 %35 to i64
  %46 = or i64 %45, 4294967296
  %47 = tail call i32 @__hipPushCallConfiguration(i64 %44, i32 1, i64 %46, i32 1, i64 0, %struct.ihipStream_t* null)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %1
  %50 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 21
  %51 = load i32*, i32** %50, align 8, !tbaa !47
  %52 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 26
  %53 = load float*, float** %52, align 8, !tbaa !50
  %54 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 22
  %55 = load float*, float** %54, align 8, !tbaa !56
  %56 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 18
  %57 = load i32, i32* %56, align 8, !tbaa !32
  %58 = bitcast %struct.HIP_vector_type* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58)
  %59 = bitcast %struct.HIP_vector_type* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59)
  %60 = bitcast i32** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60)
  %61 = bitcast float** %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61)
  %62 = bitcast float** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62)
  %63 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63)
  %64 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %64)
  %65 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %65)
  %66 = bitcast i64* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66)
  %67 = bitcast i8** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67)
  %68 = bitcast [6 x i8*]* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %68)
  %69 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %13, i64 0, i32 0, i32 0, i32 0
  store <2 x i32> %27, <2 x i32>* %69, align 8
  %70 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %14, i64 0, i32 0, i32 0, i32 0
  store <2 x i32> %30, <2 x i32>* %70, align 8
  store i32* %51, i32** %15, align 8, !tbaa !3
  store float* %53, float** %16, align 8, !tbaa !3
  store float* %55, float** %17, align 8, !tbaa !3
  store i32 %57, i32* %18, align 4, !tbaa !7
  %71 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i64 0, i64 0
  %72 = bitcast [6 x i8*]* %23 to i32***
  store i32** %15, i32*** %72, align 16
  %73 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i64 0, i64 1
  %74 = bitcast i8** %73 to float***
  store float** %16, float*** %74, align 8
  %75 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i64 0, i64 2
  %76 = bitcast i8** %75 to float***
  store float** %17, float*** %76, align 16
  %77 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i64 0, i64 3
  %78 = bitcast i8** %77 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %13, %struct.HIP_vector_type** %78, align 8
  %79 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i64 0, i64 4
  %80 = bitcast i8** %79 to i32**
  store i32* %18, i32** %80, align 16
  %81 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i64 0, i64 5
  %82 = bitcast i8** %81 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %14, %struct.HIP_vector_type** %82, align 8
  %83 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %19, %struct.dim3* nonnull %20, i64* nonnull %21, i8** nonnull %22)
  %84 = load i64, i64* %21, align 8
  %85 = bitcast i8** %22 to %struct.ihipStream_t**
  %86 = load %struct.ihipStream_t*, %struct.ihipStream_t** %85, align 8
  %87 = bitcast %struct.dim3* %19 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i64 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %struct.dim3* %20 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.dim3, %struct.dim3* %20, i64 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, float*, float*, i64, i32, i64)** @_Z31simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_ to i8*), i64 %88, i32 %90, i64 %92, i32 %94, i8** nonnull %71, i64 %84, %struct.ihipStream_t* %86)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %64)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %65)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %68)
  br label %96

96:                                               ; preds = %49, %1
  %97 = load i32, i32* %24, align 8, !tbaa !23
  %98 = load i32, i32* %25, align 4, !tbaa !24
  %99 = mul nsw i32 %98, %97
  %100 = load i32, i32* %36, align 4, !tbaa !53
  %101 = add i32 %100, -1
  %102 = add i32 %101, %99
  %103 = udiv i32 %102, %100
  %104 = mul i32 %103, %100
  store i32 %104, i32* %39, align 8, !tbaa !54
  %105 = zext i32 %103 to i64
  %106 = or i64 %105, 4294967296
  %107 = zext i32 %100 to i64
  %108 = or i64 %107, 4294967296
  %109 = call i32 @__hipPushCallConfiguration(i64 %106, i32 1, i64 %108, i32 1, i64 0, %struct.ihipStream_t* null)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %158

111:                                              ; preds = %96
  %112 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 22
  %113 = load float*, float** %112, align 8, !tbaa !56
  %114 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 27
  %115 = load float*, float** %114, align 8, !tbaa !51
  %116 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 24
  %117 = load i32*, i32** %116, align 8, !tbaa !57
  %118 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 18
  %119 = load i32, i32* %118, align 8, !tbaa !32
  %120 = bitcast %struct.HIP_vector_type* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120)
  %121 = bitcast %struct.HIP_vector_type* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %121)
  %122 = bitcast float** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %122)
  %123 = bitcast float** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123)
  %124 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %124)
  %125 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %125)
  %126 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %126)
  %127 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %127)
  %128 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %128)
  %129 = bitcast i8** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129)
  %130 = bitcast [6 x i8*]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %130)
  %131 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 0, i32 0, i32 0, i32 0
  store <2 x i32> %27, <2 x i32>* %131, align 8
  %132 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %3, i64 0, i32 0, i32 0, i32 0
  store <2 x i32> %30, <2 x i32>* %132, align 8
  store float* %113, float** %4, align 8, !tbaa !3
  store float* %115, float** %5, align 8, !tbaa !3
  store i32* %117, i32** %6, align 8, !tbaa !3
  store i32 %119, i32* %7, align 4, !tbaa !7
  %133 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 0
  %134 = bitcast [6 x i8*]* %12 to float***
  store float** %4, float*** %134, align 16
  %135 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 1
  %136 = bitcast i8** %135 to float***
  store float** %5, float*** %136, align 8
  %137 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 2
  %138 = bitcast i8** %137 to i32***
  store i32** %6, i32*** %138, align 16
  %139 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 3
  %140 = bitcast i8** %139 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %2, %struct.HIP_vector_type** %140, align 8
  %141 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 4
  %142 = bitcast i8** %141 to i32**
  store i32* %7, i32** %142, align 16
  %143 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i64 0, i64 5
  %144 = bitcast i8** %143 to %struct.HIP_vector_type**
  store %struct.HIP_vector_type* %3, %struct.HIP_vector_type** %144, align 8
  %145 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %8, %struct.dim3* nonnull %9, i64* nonnull %10, i8** nonnull %11)
  %146 = load i64, i64* %10, align 8
  %147 = bitcast i8** %11 to %struct.ihipStream_t**
  %148 = load %struct.ihipStream_t*, %struct.ihipStream_t** %147, align 8
  %149 = bitcast %struct.dim3* %8 to i64*
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = bitcast %struct.dim3* %9 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32*, i64, i32, i64)** @_Z31simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_ to i8*), i64 %150, i32 %152, i64 %154, i32 %156, i8** nonnull %133, i64 %146, %struct.ihipStream_t* %148)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %121)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %125)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %126)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %127)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %128)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %130)
  br label %158

158:                                              ; preds = %111, %96
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN17SimpleConvolution12CPUReferenceEv(%class.SimpleConvolution* nocapture nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #11 align 2 {
  %2 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %3 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %4 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 18
  %5 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 6
  %6 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 9
  %7 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 13
  %8 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 20
  %9 = load i32, i32* %2, align 4, !tbaa !24
  %10 = icmp sgt i32 %9, 0
  %11 = load i32, i32* %3, align 8
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %20

14:                                               ; preds = %1, %37
  %15 = phi i32 [ %38, %37 ], [ %9, %1 ]
  %16 = phi i32 [ %39, %37 ], [ %11, %1 ]
  %17 = phi i32 [ %40, %37 ], [ 0, %1 ]
  %18 = load i32*, i32** %8, align 8
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %21, label %37

20:                                               ; preds = %37, %1
  ret void

21:                                               ; preds = %14, %48
  %22 = phi i32 [ %57, %48 ], [ %16, %14 ]
  %23 = phi i32 [ %56, %48 ], [ 0, %14 ]
  %24 = load i32, i32* %4, align 8, !tbaa !32
  %25 = load i32, i32* %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load float*, float** %7, align 8
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %21
  %30 = zext i32 %24 to i64
  %31 = and i64 %30, 1
  %32 = icmp eq i32 %24, 1
  %33 = and i64 %30, 4294967294
  %34 = icmp eq i64 %31, 0
  br label %42

35:                                               ; preds = %48
  %36 = load i32, i32* %2, align 4, !tbaa !24
  br label %37

37:                                               ; preds = %35, %14
  %38 = phi i32 [ %36, %35 ], [ %15, %14 ]
  %39 = phi i32 [ %57, %35 ], [ %16, %14 ]
  %40 = add nuw nsw i32 %17, 1
  %41 = icmp slt i32 %40, %38
  br i1 %41, label %14, label %20, !llvm.loop !58

42:                                               ; preds = %29, %77
  %43 = phi i32 [ %79, %77 ], [ 0, %29 ]
  %44 = phi float [ %78, %77 ], [ 0.000000e+00, %29 ]
  %45 = mul i32 %24, %43
  %46 = add i32 %43, %17
  %47 = mul i32 %25, %46
  br i1 %32, label %59, label %81

48:                                               ; preds = %77, %21
  %49 = phi float [ 0.000000e+00, %21 ], [ %78, %77 ]
  %50 = fadd contract float %49, 5.000000e-01
  %51 = fptosi float %50 to i32
  %52 = mul nsw i32 %22, %17
  %53 = add nsw i32 %52, %23
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %18, i64 %54
  store i32 %51, i32* %55, align 4, !tbaa !7
  %56 = add nuw nsw i32 %23, 1
  %57 = load i32, i32* %3, align 8, !tbaa !23
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %21, label %35, !llvm.loop !59

59:                                               ; preds = %81, %42
  %60 = phi float [ undef, %42 ], [ %111, %81 ]
  %61 = phi i64 [ 0, %42 ], [ %112, %81 ]
  %62 = phi float [ %44, %42 ], [ %111, %81 ]
  br i1 %34, label %77, label %63

63:                                               ; preds = %59
  %64 = trunc i64 %61 to i32
  %65 = add i32 %45, %64
  %66 = add i32 %23, %64
  %67 = add i32 %66, %47
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %26, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !7
  %71 = uitofp i32 %70 to float
  %72 = zext i32 %65 to i64
  %73 = getelementptr inbounds float, float* %27, i64 %72
  %74 = load float, float* %73, align 4, !tbaa !60
  %75 = fmul contract float %74, %71
  %76 = fadd contract float %62, %75
  br label %77

77:                                               ; preds = %59, %63
  %78 = phi float [ %60, %59 ], [ %76, %63 ]
  %79 = add nuw i32 %43, 1
  %80 = icmp eq i32 %79, %24
  br i1 %80, label %48, label %42, !llvm.loop !62

81:                                               ; preds = %42, %81
  %82 = phi i64 [ %112, %81 ], [ 0, %42 ]
  %83 = phi float [ %111, %81 ], [ %44, %42 ]
  %84 = phi i64 [ %113, %81 ], [ 0, %42 ]
  %85 = trunc i64 %82 to i32
  %86 = add i32 %45, %85
  %87 = add i32 %23, %85
  %88 = add i32 %87, %47
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %26, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !7
  %92 = uitofp i32 %91 to float
  %93 = zext i32 %86 to i64
  %94 = getelementptr inbounds float, float* %27, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !60
  %96 = fmul contract float %95, %92
  %97 = fadd contract float %83, %96
  %98 = trunc i64 %82 to i32
  %99 = or i32 %98, 1
  %100 = add i32 %45, %99
  %101 = add i32 %23, %99
  %102 = add i32 %101, %47
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %26, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !7
  %106 = uitofp i32 %105 to float
  %107 = zext i32 %100 to i64
  %108 = getelementptr inbounds float, float* %27, i64 %107
  %109 = load float, float* %108, align 4, !tbaa !60
  %110 = fmul contract float %109, %106
  %111 = fadd contract float %97, %110
  %112 = add nuw nsw i64 %82, 2
  %113 = add i64 %84, 2
  %114 = icmp eq i64 %113, %33
  br i1 %114, label %59, label %81, !llvm.loop !63
}

; Function Attrs: uwtable
define dso_local i32 @_ZN17SimpleConvolution10initializeEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 33
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !64
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %98

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !65
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 5)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 25)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !66
  %20 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %21 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %22 = bitcast i8** %21 to i32**
  store i32* %20, i32** %22, align 8, !tbaa !69
  %23 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %24 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !64
  %25 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %24, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #26
  tail call void @_ZdlPv(i8* nonnull %7) #28
  %26 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %27 = bitcast i8* %26 to %"struct.appsdk::Option"*
  %28 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %28, align 8, !tbaa !65
  %29 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !65
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !65
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !65
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0
  %33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1)
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1
  %35 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 6)
  %36 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i64 26)
  %38 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 4
  store i32 0, i32* %38, align 8, !tbaa !66
  %39 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 5
  %41 = bitcast i8** %40 to i32**
  store i32* %39, i32** %41, align 8, !tbaa !69
  %42 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !64
  %43 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %42, %"struct.appsdk::Option"* nonnull %27)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %27) #26
  tail call void @_ZdlPv(i8* nonnull %26) #28
  %44 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %45 = bitcast i8* %44 to %"struct.appsdk::Option"*
  %46 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !65
  %47 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 8, !tbaa !65
  %48 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !65
  %49 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 8, !tbaa !65
  %50 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 14
  store i32 3, i32* %50, align 8, !tbaa !9
  %51 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 0
  %52 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1)
  %53 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 1
  %54 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i64 8)
  %55 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 2
  %56 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i64 24)
  %57 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 4
  store i32 0, i32* %57, align 8, !tbaa !66
  %58 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 5
  %59 = bitcast i8** %58 to i32**
  store i32* %50, i32** %59, align 8, !tbaa !69
  %60 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !64
  %61 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %60, %"struct.appsdk::Option"* nonnull %45)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %45) #26
  tail call void @_ZdlPv(i8* nonnull %44) #28
  %62 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %63 = bitcast i8* %62 to %"struct.appsdk::Option"*
  %64 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %64, align 8, !tbaa !65
  %65 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %65, align 8, !tbaa !65
  %66 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %66, align 8, !tbaa !65
  %67 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %67, align 8, !tbaa !65
  %68 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 0
  %69 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 1)
  %70 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 1
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i64 10)
  %72 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 2
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i64 41)
  %74 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 4
  store i32 0, i32* %74, align 8, !tbaa !66
  %75 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 31
  %76 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 5
  %77 = bitcast i8** %76 to i32**
  store i32* %75, i32** %77, align 8, !tbaa !69
  %78 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !64
  %79 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %78, %"struct.appsdk::Option"* nonnull %63)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %63) #26
  tail call void @_ZdlPv(i8* nonnull %62) #28
  %80 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %81 = bitcast i8* %80 to %"struct.appsdk::Option"*
  %82 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %82, align 8, !tbaa !65
  %83 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %83, align 8, !tbaa !65
  %84 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %84, align 8, !tbaa !65
  %85 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %85, align 8, !tbaa !65
  %86 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 0
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 1
  %89 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i64 9)
  %90 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 2
  %91 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i64 18)
  %92 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 4
  store i32 0, i32* %92, align 8, !tbaa !66
  %93 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 30
  %94 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 5
  %95 = bitcast i8** %94 to i32**
  store i32* %93, i32** %95, align 8, !tbaa !69
  %96 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !64
  %97 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %96, %"struct.appsdk::Option"* nonnull %81)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %81) #26
  tail call void @_ZdlPv(i8* nonnull %80) #28
  br label %98

98:                                               ; preds = %1, %6
  %99 = phi i32 [ 0, %6 ], [ 1, %1 ]
  ret i32 %99
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #27
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !65
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !65
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !65
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !65
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !65
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !65
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !65
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !65
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !65
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !65
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !65
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !65
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !65
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !65
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !65
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !65
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !65
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !65
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !65
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !65
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !66
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !69
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.49, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !66
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !69
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !66
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !69
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !66
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !69
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.58, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !66
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !69
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !70
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !73
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #13

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, %"struct.appsdk::Option"* %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"struct.appsdk::Option"* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !73
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !70
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
  store i8* %21, i8** %25, align 8, !tbaa !73
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !65
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !65
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !65
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !65
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !73
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
  %59 = load i32, i32* %10, align 8, !tbaa !70
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !73
  br i1 %61, label %39, label %63, !llvm.loop !74

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
  %83 = load i32, i32* %10, align 8, !tbaa !70
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !70
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
  tail call void @_ZdaPv(i8* nonnull %87) #28
  br label %98

98:                                               ; preds = %63, %97, %4
  %99 = phi i32 [ -1, %4 ], [ 0, %97 ], [ 0, %63 ]
  ret i32 %99
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %0) unnamed_addr #14 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 3, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !26
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #26
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !29

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
  %26 = load i8*, i8** %25, align 8, !tbaa !26
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #26
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !29

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
  %45 = load i8*, i8** %44, align 8, !tbaa !26
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !29

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
  %64 = load i8*, i8** %63, align 8, !tbaa !26
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #26
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !29

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
define dso_local i32 @_ZN17SimpleConvolution5setupEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 8, !tbaa !23
  %8 = sext i32 %7 to i64
  %9 = tail call i64 @llvm.ctpop.i64(i64 %8) #26, !range !75
  %10 = icmp ult i64 %9, 2
  %11 = icmp ne i32 %7, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %24

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
  store i32 %23, i32* %6, align 8, !tbaa !23
  br label %24

24:                                               ; preds = %13, %1
  %25 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %26 = load i32, i32* %25, align 4, !tbaa !24
  %27 = sext i32 %26 to i64
  %28 = tail call i64 @llvm.ctpop.i64(i64 %27) #26, !range !75
  %29 = icmp ult i64 %28, 2
  %30 = icmp ne i32 %26, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = add nsw i32 %26, -1
  %34 = ashr i32 %33, 1
  %35 = or i32 %34, %33
  %36 = ashr i32 %35, 2
  %37 = or i32 %36, %35
  %38 = ashr i32 %37, 4
  %39 = or i32 %38, %37
  %40 = ashr i32 %39, 8
  %41 = or i32 %40, %39
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %25, align 4, !tbaa !24
  br label %43

43:                                               ; preds = %32, %24
  %44 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 14
  %45 = load i32, i32* %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 15
  store i32 %45, i32* %46, align 4, !tbaa !48
  %47 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 18
  store i32 %45, i32* %47, align 8, !tbaa !32
  %48 = and i32 %45, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = add nuw i32 %45, 1
  store i32 %51, i32* %44, align 8, !tbaa !9
  store i32 %51, i32* %46, align 4, !tbaa !48
  br label %52

52:                                               ; preds = %43, %50
  %53 = tail call i32 @_ZN17SimpleConvolution22setupSimpleConvolutionEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %129

55:                                               ; preds = %52
  %56 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 32
  %57 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !76
  %58 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %57)
  %59 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !76
  %60 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60)
  %61 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %59, i64 0, i32 0, i32 0, i32 0, i32 1
  %62 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %61, align 8, !tbaa !77
  %63 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %59, i64 0, i32 0, i32 0, i32 0, i32 0
  %64 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %63, align 8, !tbaa !80
  %65 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %62 to i64
  %66 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %64 to i64
  %67 = sub i64 %65, %66
  %68 = lshr exact i64 %67, 3
  %69 = trunc i64 %68 to i32
  %70 = icmp slt i32 %58, %69
  br i1 %70, label %114, label %71

71:                                               ; preds = %55
  %72 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %72) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %73 unwind label %93

73:                                               ; preds = %71
  %74 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8, !tbaa !26
  %76 = getelementptr inbounds i8, i8* %75, i64 -24
  %77 = bitcast i8* %76 to %"struct.std::basic_string<char>::_Rep"*
  %78 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %78) #26
  %79 = icmp eq i8* %76, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %79, label %92, label %80, !prof !29

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, i8* %75, i64 -8
  %82 = bitcast i8* %81 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %83, label %85

83:                                               ; preds = %80
  %84 = atomicrmw volatile add i32* %82, i32 -1 acq_rel, align 4
  br label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %82, align 8, !tbaa !7
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %82, align 8, !tbaa !7
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %77, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %92

92:                                               ; preds = %91, %88, %73
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %78) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %72) #26
  br label %120

93:                                               ; preds = %71
  %94 = landingpad { i8*, i32 }
          cleanup
  %95 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8, !tbaa !26
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  %99 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %99) #26
  %100 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %100, label %113, label %101, !prof !29

101:                                              ; preds = %93
  %102 = getelementptr inbounds i8, i8* %96, i64 -8
  %103 = bitcast i8* %102 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %104, label %106

104:                                              ; preds = %101
  %105 = atomicrmw volatile add i32* %103, i32 -1 acq_rel, align 4
  br label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %103, align 8, !tbaa !7
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %103, align 8, !tbaa !7
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %98, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %113

113:                                              ; preds = %93, %109, %112
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %99) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %72) #26
  resume { i8*, i32 } %94

114:                                              ; preds = %55
  %115 = sext i32 %58 to i64
  %116 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %64, i64 %115
  %117 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %116, align 8, !tbaa !3
  %118 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %117, i64 0, i32 2
  %119 = bitcast i64* %118 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %119, i8 0, i64 16, i1 false)
  br label %120

120:                                              ; preds = %92, %114
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60)
  %121 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !76
  %122 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %121, i32 %58)
  %123 = call i32 @_ZN17SimpleConvolution8setupHIPEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %124 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !76
  %125 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %124, i32 %58)
  %126 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !76
  %127 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %126, i32 %58)
  %128 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 1
  store double %127, double* %128, align 8, !tbaa !81
  br label %129

129:                                              ; preds = %52, %120
  ret i32 %53
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !65
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 %42, i1 false) #26
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
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !26
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !29

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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !26
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !29

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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !26
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #26
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !29

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
define dso_local i32 @_ZN17SimpleConvolution3runEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 31
  %11 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 11
  %12 = bitcast i32** %11 to i8**
  %13 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 23
  %14 = bitcast i32** %13 to i8**
  %15 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %16 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %17 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 12
  %18 = bitcast i32** %17 to i8**
  %19 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 24
  %20 = bitcast i32** %19 to i8**
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %63, label %23

23:                                               ; preds = %1
  %24 = tail call i32 @_ZN17SimpleConvolution22runNonSeparableKernelsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %25 = load i8*, i8** %12, align 8, !tbaa !30
  %26 = load i8*, i8** %14, align 8, !tbaa !55
  %27 = load i32, i32* %15, align 8, !tbaa !23
  %28 = load i32, i32* %16, align 4, !tbaa !24
  %29 = mul nsw i32 %28, %27
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call i32 @hipMemcpy(i8* %25, i8* %26, i64 %31, i32 2)
  %33 = tail call i32 @_ZN17SimpleConvolution19runSeparableKernelsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %34 = load i8*, i8** %18, align 8, !tbaa !31
  %35 = load i8*, i8** %20, align 8, !tbaa !57
  %36 = load i32, i32* %15, align 8, !tbaa !23
  %37 = load i32, i32* %16, align 4, !tbaa !24
  %38 = mul nsw i32 %37, %36
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call i32 @hipMemcpy(i8* %34, i8* %35, i64 %40, i32 2)
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %63, label %44

44:                                               ; preds = %23
  %45 = tail call i32 @_ZN17SimpleConvolution22runNonSeparableKernelsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %46 = load i8*, i8** %12, align 8, !tbaa !30
  %47 = load i8*, i8** %14, align 8, !tbaa !55
  %48 = load i32, i32* %15, align 8, !tbaa !23
  %49 = load i32, i32* %16, align 4, !tbaa !24
  %50 = mul nsw i32 %49, %48
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 2
  %53 = tail call i32 @hipMemcpy(i8* %46, i8* %47, i64 %52, i32 2)
  %54 = tail call i32 @_ZN17SimpleConvolution19runSeparableKernelsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %55 = load i8*, i8** %18, align 8, !tbaa !31
  %56 = load i8*, i8** %20, align 8, !tbaa !57
  %57 = load i32, i32* %15, align 8, !tbaa !23
  %58 = load i32, i32* %16, align 4, !tbaa !24
  %59 = mul nsw i32 %58, %57
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 2
  %62 = tail call i32 @hipMemcpy(i8* %55, i8* %56, i64 %61, i32 2)
  br label %63

63:                                               ; preds = %23, %44, %1
  %64 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i64 21)
  %65 = load i32, i32* %10, align 4, !tbaa !91
  %66 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %65)
  %67 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %66, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i64 11)
  %68 = bitcast %"class.std::basic_ostream"* %66 to i8**
  %69 = load i8*, i8** %68, align 8, !tbaa !12
  %70 = getelementptr i8, i8* %69, i64 -24
  %71 = bitcast i8* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = bitcast %"class.std::basic_ostream"* %66 to i8*
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  %75 = getelementptr inbounds i8, i8* %74, i64 240
  %76 = bitcast i8* %75 to %"class.std::ctype"**
  %77 = load %"class.std::ctype"*, %"class.std::ctype"** %76, align 8, !tbaa !14
  %78 = icmp eq %"class.std::ctype"* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

80:                                               ; preds = %63
  %81 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %77, i64 0, i32 8
  %82 = load i8, i8* %81, align 8, !tbaa !17
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %77, i64 0, i32 9, i64 10
  %86 = load i8, i8* %85, align 1, !tbaa !19
  br label %93

87:                                               ; preds = %80
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %77)
  %88 = bitcast %"class.std::ctype"* %77 to i8 (%"class.std::ctype"*, i8)***
  %89 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %88, align 8, !tbaa !12
  %90 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %89, i64 6
  %91 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %90, align 8
  %92 = tail call signext i8 %91(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %77, i8 signext 10)
  br label %93

93:                                               ; preds = %84, %87
  %94 = phi i8 [ %86, %84 ], [ %92, %87 ]
  %95 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %66, i8 signext %94)
  %96 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %95)
  %97 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0), i64 43)
  %98 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %99 = getelementptr i8, i8* %98, i64 -24
  %100 = bitcast i8* %99 to i64*
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 240
  %104 = bitcast i8* %103 to %"class.std::ctype"**
  %105 = load %"class.std::ctype"*, %"class.std::ctype"** %104, align 8, !tbaa !14
  %106 = icmp eq %"class.std::ctype"* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

108:                                              ; preds = %93
  %109 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %105, i64 0, i32 8
  %110 = load i8, i8* %109, align 8, !tbaa !17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %105, i64 0, i32 9, i64 10
  %114 = load i8, i8* %113, align 1, !tbaa !19
  br label %121

115:                                              ; preds = %108
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %105)
  %116 = bitcast %"class.std::ctype"* %105 to i8 (%"class.std::ctype"*, i8)***
  %117 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %116, align 8, !tbaa !12
  %118 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %117, i64 6
  %119 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %118, align 8
  %120 = tail call signext i8 %119(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %105, i8 signext 10)
  br label %121

121:                                              ; preds = %112, %115
  %122 = phi i8 [ %114, %112 ], [ %120, %115 ]
  %123 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %122)
  %124 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %123)
  %125 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 32
  %126 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %127 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %126)
  %128 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %129 = bitcast %"class.std::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129)
  %130 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %128, i64 0, i32 0, i32 0, i32 0, i32 1
  %131 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %130, align 8, !tbaa !77
  %132 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %128, i64 0, i32 0, i32 0, i32 0, i32 0
  %133 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %132, align 8, !tbaa !80
  %134 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %131 to i64
  %135 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %133 to i64
  %136 = sub i64 %134, %135
  %137 = lshr exact i64 %136, 3
  %138 = trunc i64 %137 to i32
  %139 = icmp slt i32 %127, %138
  br i1 %139, label %185, label %140

140:                                              ; preds = %121
  %141 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %141) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %142 unwind label %162

142:                                              ; preds = %140
  %143 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8, !tbaa !26
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  %146 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %147 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %147) #26
  %148 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %148, label %161, label %149, !prof !29

149:                                              ; preds = %142
  %150 = getelementptr inbounds i8, i8* %144, i64 -8
  %151 = bitcast i8* %150 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %152, label %154

152:                                              ; preds = %149
  %153 = atomicrmw volatile add i32* %151, i32 -1 acq_rel, align 4
  br label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %151, align 8, !tbaa !7
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %151, align 8, !tbaa !7
  br label %157

157:                                              ; preds = %154, %152
  %158 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %146, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %161

161:                                              ; preds = %160, %157, %142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %147) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %141) #26
  br label %191

162:                                              ; preds = %140
  %163 = landingpad { i8*, i32 }
          cleanup
  %164 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8, !tbaa !26
  %166 = getelementptr inbounds i8, i8* %165, i64 -24
  %167 = bitcast i8* %166 to %"struct.std::basic_string<char>::_Rep"*
  %168 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %168) #26
  %169 = icmp eq i8* %166, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %169, label %184, label %170, !prof !29

170:                                              ; preds = %162
  %171 = getelementptr inbounds i8, i8* %165, i64 -8
  %172 = bitcast i8* %171 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %173, label %175

173:                                              ; preds = %170
  %174 = atomicrmw volatile add i32* %172, i32 -1 acq_rel, align 4
  br label %178

175:                                              ; preds = %170
  %176 = load i32, i32* %172, align 8, !tbaa !7
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %172, align 8, !tbaa !7
  br label %178

178:                                              ; preds = %175, %173
  %179 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %167, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %184

182:                                              ; preds = %273, %184
  %183 = phi { i8*, i32 } [ %163, %184 ], [ %254, %273 ]
  resume { i8*, i32 } %183

184:                                              ; preds = %162, %178, %181
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %168) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %141) #26
  br label %182

185:                                              ; preds = %121
  %186 = sext i32 %127 to i64
  %187 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %133, i64 %186
  %188 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %187, align 8, !tbaa !3
  %189 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %188, i64 0, i32 2
  %190 = bitcast i64* %189 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %191

191:                                              ; preds = %161, %185
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129)
  %192 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %193 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %192, i32 %127)
  %194 = load i32, i32* %10, align 4, !tbaa !91
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191, %196
  %197 = phi i32 [ %199, %196 ], [ 0, %191 ]
  %198 = call i32 @_ZN17SimpleConvolution22runNonSeparableKernelsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %199 = add nuw nsw i32 %197, 1
  %200 = load i32, i32* %10, align 4, !tbaa !91
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %196, label %202, !llvm.loop !92

202:                                              ; preds = %196, %191
  %203 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %204 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %203, i32 %127)
  %205 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %206 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %205, i32 %127)
  %207 = load i32, i32* %10, align 4, !tbaa !91
  %208 = sitofp i32 %207 to double
  %209 = fdiv contract double %206, %208
  %210 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 2
  store double %209, double* %210, align 8, !tbaa !93
  %211 = load i8*, i8** %12, align 8, !tbaa !30
  %212 = load i8*, i8** %14, align 8, !tbaa !55
  %213 = load i32, i32* %15, align 8, !tbaa !23
  %214 = load i32, i32* %16, align 4, !tbaa !24
  %215 = mul nsw i32 %214, %213
  %216 = sext i32 %215 to i64
  %217 = shl nsw i64 %216, 2
  %218 = call i32 @hipMemcpy(i8* %211, i8* %212, i64 %217, i32 2)
  %219 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %220 = bitcast %"class.std::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %220)
  %221 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %219, i64 0, i32 0, i32 0, i32 0, i32 1
  %222 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %221, align 8, !tbaa !77
  %223 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %219, i64 0, i32 0, i32 0, i32 0, i32 0
  %224 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %223, align 8, !tbaa !80
  %225 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %222 to i64
  %226 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %224 to i64
  %227 = sub i64 %225, %226
  %228 = lshr exact i64 %227, 3
  %229 = trunc i64 %228 to i32
  %230 = icmp slt i32 %127, %229
  br i1 %230, label %274, label %231

231:                                              ; preds = %202
  %232 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %232) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %5)
          to label %233 unwind label %253

233:                                              ; preds = %231
  %234 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i64 0, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8, !tbaa !26
  %236 = getelementptr inbounds i8, i8* %235, i64 -24
  %237 = bitcast i8* %236 to %"struct.std::basic_string<char>::_Rep"*
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #26
  %239 = icmp eq i8* %236, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %239, label %252, label %240, !prof !29

240:                                              ; preds = %233
  %241 = getelementptr inbounds i8, i8* %235, i64 -8
  %242 = bitcast i8* %241 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %243, label %245

243:                                              ; preds = %240
  %244 = atomicrmw volatile add i32* %242, i32 -1 acq_rel, align 4
  br label %248

245:                                              ; preds = %240
  %246 = load i32, i32* %242, align 8, !tbaa !7
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %242, align 8, !tbaa !7
  br label %248

248:                                              ; preds = %245, %243
  %249 = phi i32 [ %244, %243 ], [ %246, %245 ]
  %250 = icmp slt i32 %249, 1
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %237, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %252

252:                                              ; preds = %251, %248, %233
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %232) #26
  br label %280

253:                                              ; preds = %231
  %254 = landingpad { i8*, i32 }
          cleanup
  %255 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i64 0, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8, !tbaa !26
  %257 = getelementptr inbounds i8, i8* %256, i64 -24
  %258 = bitcast i8* %257 to %"struct.std::basic_string<char>::_Rep"*
  %259 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %259) #26
  %260 = icmp eq i8* %257, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %260, label %273, label %261, !prof !29

261:                                              ; preds = %253
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %258, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %273

273:                                              ; preds = %253, %269, %272
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %259) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %232) #26
  br label %182

274:                                              ; preds = %202
  %275 = sext i32 %127 to i64
  %276 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %224, i64 %275
  %277 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %276, align 8, !tbaa !3
  %278 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %277, i64 0, i32 2
  %279 = bitcast i64* %278 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %279, i8 0, i64 16, i1 false)
  br label %280

280:                                              ; preds = %252, %274
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %220)
  %281 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %282 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %281, i32 %127)
  %283 = load i32, i32* %10, align 4, !tbaa !91
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %280, %285
  %286 = phi i32 [ %288, %285 ], [ 0, %280 ]
  %287 = call i32 @_ZN17SimpleConvolution19runSeparableKernelsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %0)
  %288 = add nuw nsw i32 %286, 1
  %289 = load i32, i32* %10, align 4, !tbaa !91
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %285, label %291, !llvm.loop !94

291:                                              ; preds = %285, %280
  %292 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %293 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %292, i32 %127)
  %294 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %125, align 8, !tbaa !76
  %295 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %294, i32 %127)
  %296 = load i32, i32* %10, align 4, !tbaa !91
  %297 = sitofp i32 %296 to double
  %298 = fdiv contract double %295, %297
  %299 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 3
  store double %298, double* %299, align 8, !tbaa !95
  %300 = load i8*, i8** %18, align 8, !tbaa !31
  %301 = load i8*, i8** %20, align 8, !tbaa !57
  %302 = load i32, i32* %15, align 8, !tbaa !23
  %303 = load i32, i32* %16, align 4, !tbaa !24
  %304 = mul nsw i32 %303, %302
  %305 = sext i32 %304 to i64
  %306 = shl nsw i64 %305, 2
  %307 = call i32 @hipMemcpy(i8* %300, i8* %301, i64 %306, i32 2)
  ret i32 0
}

; Function Attrs: uwtable
define dso_local i32 @_ZN17SimpleConvolution13verifyResultsEv(%class.SimpleConvolution* nocapture nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 33
  %6 = bitcast %"class.appsdk::HIPCommandArgs"** %5 to %"class.appsdk::SDKCmdArgsParser"**
  %7 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %7, i64 0, i32 10
  %9 = load i8, i8* %8, align 1, !tbaa !96, !range !97
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %331, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8, !tbaa !23
  %14 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %15 = load i32, i32* %14, align 4, !tbaa !24
  %16 = mul nsw i32 %15, %13
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call noalias align 16 i8* @malloc(i64 %18) #26
  %20 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 20
  %21 = bitcast i32** %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !98
  %22 = icmp eq i8* %19, null
  br i1 %22, label %23, label %80

23:                                               ; preds = %11
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %25 unwind label %78

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !26
  %28 = getelementptr inbounds i8, i8* %27, i64 -24
  %29 = bitcast i8* %28 to %"struct.std::basic_string<char>::_Rep"*
  %30 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %30) #26
  %31 = icmp eq i8* %28, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %31, label %44, label %32, !prof !29

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, i8* %27, i64 -8
  %34 = bitcast i8* %33 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %35, label %37

35:                                               ; preds = %32
  %36 = atomicrmw volatile add i32* %34, i32 -1 acq_rel, align 4
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %34, align 8, !tbaa !7
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %34, align 8, !tbaa !7
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %29, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %44

44:                                               ; preds = %25, %40, %43
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #26
  %45 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 11)
  %46 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 39)
  %47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %48 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 797)
  %49 = bitcast %"class.std::basic_ostream"* %48 to i8**
  %50 = load i8*, i8** %49, align 8, !tbaa !12
  %51 = getelementptr i8, i8* %50, i64 -24
  %52 = bitcast i8* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %"class.std::basic_ostream"* %48 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  %56 = getelementptr inbounds i8, i8* %55, i64 240
  %57 = bitcast i8* %56 to %"class.std::ctype"**
  %58 = load %"class.std::ctype"*, %"class.std::ctype"** %57, align 8, !tbaa !14
  %59 = icmp eq %"class.std::ctype"* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

61:                                               ; preds = %44
  %62 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %58, i64 0, i32 8
  %63 = load i8, i8* %62, align 8, !tbaa !17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %58, i64 0, i32 9, i64 10
  %67 = load i8, i8* %66, align 1, !tbaa !19
  br label %74

68:                                               ; preds = %61
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %58)
  %69 = bitcast %"class.std::ctype"* %58 to i8 (%"class.std::ctype"*, i8)***
  %70 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %69, align 8, !tbaa !12
  %71 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %70, i64 6
  %72 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %71, align 8
  %73 = call signext i8 %72(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %58, i8 signext 10)
  br label %74

74:                                               ; preds = %65, %68
  %75 = phi i8 [ %67, %65 ], [ %73, %68 ]
  %76 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %48, i8 signext %75)
  %77 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %76)
  br label %331

78:                                               ; preds = %23
  %79 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #26
  resume { i8*, i32 } %79

80:                                               ; preds = %11
  %81 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 18
  %82 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 6
  %83 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 9
  %84 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 13
  %85 = icmp sgt i32 %15, 0
  %86 = icmp sgt i32 %13, 0
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %190

88:                                               ; preds = %80
  %89 = bitcast i8* %19 to i32*
  br label %90

90:                                               ; preds = %88, %117
  %91 = phi i32* [ %118, %117 ], [ %89, %88 ]
  %92 = phi i32 [ %113, %117 ], [ %15, %88 ]
  %93 = phi i32 [ %114, %117 ], [ %13, %88 ]
  %94 = phi i32 [ %115, %117 ], [ 0, %88 ]
  %95 = icmp sgt i32 %93, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %90, %126
  %97 = phi i32 [ %135, %126 ], [ %93, %90 ]
  %98 = phi i32 [ %134, %126 ], [ 0, %90 ]
  %99 = load i32, i32* %81, align 8, !tbaa !32
  %100 = load i32, i32* %82, align 8
  %101 = load i32*, i32** %83, align 8
  %102 = load float*, float** %84, align 8
  %103 = icmp eq i32 %99, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %96
  %105 = zext i32 %99 to i64
  %106 = and i64 %105, 1
  %107 = icmp eq i32 %99, 1
  %108 = and i64 %105, 4294967294
  %109 = icmp eq i64 %106, 0
  br label %119

110:                                              ; preds = %126
  %111 = load i32, i32* %14, align 4, !tbaa !24
  br label %112

112:                                              ; preds = %110, %90
  %113 = phi i32 [ %111, %110 ], [ %92, %90 ]
  %114 = phi i32 [ %135, %110 ], [ %93, %90 ]
  %115 = add nuw nsw i32 %94, 1
  %116 = icmp slt i32 %115, %113
  br i1 %116, label %117, label %190, !llvm.loop !58

117:                                              ; preds = %112
  %118 = load i32*, i32** %20, align 8
  br label %90

119:                                              ; preds = %154, %104
  %120 = phi i32 [ %156, %154 ], [ 0, %104 ]
  %121 = phi float [ %155, %154 ], [ 0.000000e+00, %104 ]
  %122 = mul i32 %120, %99
  %123 = add i32 %120, %94
  %124 = mul i32 %123, %100
  %125 = add i32 %124, %98
  br i1 %107, label %137, label %158

126:                                              ; preds = %154, %96
  %127 = phi float [ 0.000000e+00, %96 ], [ %155, %154 ]
  %128 = fadd contract float %127, 5.000000e-01
  %129 = fptosi float %128 to i32
  %130 = mul nsw i32 %97, %94
  %131 = add nsw i32 %130, %98
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %91, i64 %132
  store i32 %129, i32* %133, align 4, !tbaa !7
  %134 = add nuw nsw i32 %98, 1
  %135 = load i32, i32* %12, align 8, !tbaa !23
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %96, label %110, !llvm.loop !59

137:                                              ; preds = %158, %119
  %138 = phi float [ undef, %119 ], [ %186, %158 ]
  %139 = phi i64 [ 0, %119 ], [ %187, %158 ]
  %140 = phi float [ %121, %119 ], [ %186, %158 ]
  br i1 %109, label %154, label %141

141:                                              ; preds = %137
  %142 = trunc i64 %139 to i32
  %143 = add i32 %122, %142
  %144 = add i32 %125, %142
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %101, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !7
  %148 = uitofp i32 %147 to float
  %149 = zext i32 %143 to i64
  %150 = getelementptr inbounds float, float* %102, i64 %149
  %151 = load float, float* %150, align 4, !tbaa !60
  %152 = fmul contract float %151, %148
  %153 = fadd contract float %140, %152
  br label %154

154:                                              ; preds = %137, %141
  %155 = phi float [ %138, %137 ], [ %153, %141 ]
  %156 = add nuw i32 %120, 1
  %157 = icmp eq i32 %156, %99
  br i1 %157, label %126, label %119, !llvm.loop !62

158:                                              ; preds = %119, %158
  %159 = phi i64 [ %187, %158 ], [ 0, %119 ]
  %160 = phi float [ %186, %158 ], [ %121, %119 ]
  %161 = phi i64 [ %188, %158 ], [ 0, %119 ]
  %162 = trunc i64 %159 to i32
  %163 = add i32 %122, %162
  %164 = add i32 %125, %162
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %101, i64 %165
  %167 = load i32, i32* %166, align 4, !tbaa !7
  %168 = uitofp i32 %167 to float
  %169 = zext i32 %163 to i64
  %170 = getelementptr inbounds float, float* %102, i64 %169
  %171 = load float, float* %170, align 4, !tbaa !60
  %172 = fmul contract float %171, %168
  %173 = fadd contract float %160, %172
  %174 = trunc i64 %159 to i32
  %175 = or i32 %174, 1
  %176 = add i32 %122, %175
  %177 = add i32 %125, %175
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %101, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !7
  %181 = uitofp i32 %180 to float
  %182 = zext i32 %176 to i64
  %183 = getelementptr inbounds float, float* %102, i64 %182
  %184 = load float, float* %183, align 4, !tbaa !60
  %185 = fmul contract float %184, %181
  %186 = fadd contract float %173, %185
  %187 = add nuw nsw i64 %159, 2
  %188 = add i64 %161, 2
  %189 = icmp eq i64 %188, %108
  br i1 %189, label %137, label %158, !llvm.loop !63

190:                                              ; preds = %112, %80
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i64 0, i64 0), i64 52)
  %192 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 11
  %193 = bitcast i32** %192 to i8**
  %194 = load i8*, i8** %193, align 8, !tbaa !30
  %195 = load i8*, i8** %21, align 8, !tbaa !98
  %196 = load i32, i32* %14, align 4, !tbaa !24
  %197 = load i32, i32* %12, align 8, !tbaa !23
  %198 = mul nsw i32 %197, %196
  %199 = sext i32 %198 to i64
  %200 = shl nsw i64 %199, 2
  %201 = tail call i32 @bcmp(i8* %194, i8* %195, i64 %200)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %244

203:                                              ; preds = %190
  %204 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i64 8)
  %205 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %206 = getelementptr i8, i8* %205, i64 -24
  %207 = bitcast i8* %206 to i64*
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %208
  %210 = getelementptr inbounds i8, i8* %209, i64 240
  %211 = bitcast i8* %210 to %"class.std::ctype"**
  %212 = load %"class.std::ctype"*, %"class.std::ctype"** %211, align 8, !tbaa !14
  %213 = icmp eq %"class.std::ctype"* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %203
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

215:                                              ; preds = %203
  %216 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %212, i64 0, i32 8
  %217 = load i8, i8* %216, align 8, !tbaa !17
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %212, i64 0, i32 9, i64 10
  %221 = load i8, i8* %220, align 1, !tbaa !19
  br label %228

222:                                              ; preds = %215
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %212)
  %223 = bitcast %"class.std::ctype"* %212 to i8 (%"class.std::ctype"*, i8)***
  %224 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %223, align 8, !tbaa !12
  %225 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %224, i64 6
  %226 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %225, align 8
  %227 = tail call signext i8 %226(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %212, i8 signext 10)
  br label %228

228:                                              ; preds = %219, %222
  %229 = phi i8 [ %221, %219 ], [ %227, %222 ]
  %230 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %229)
  %231 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %230)
  %232 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i64 48)
  %233 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 12
  %234 = bitcast i32** %233 to i8**
  %235 = load i8*, i8** %234, align 8, !tbaa !31
  %236 = load i8*, i8** %21, align 8, !tbaa !98
  %237 = load i32, i32* %14, align 4, !tbaa !24
  %238 = load i32, i32* %12, align 8, !tbaa !23
  %239 = mul nsw i32 %238, %237
  %240 = sext i32 %239 to i64
  %241 = shl nsw i64 %240, 2
  %242 = tail call i32 @bcmp(i8* %235, i8* %236, i64 %241)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %273, label %302

244:                                              ; preds = %190
  %245 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i64 7)
  %246 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %247 = getelementptr i8, i8* %246, i64 -24
  %248 = bitcast i8* %247 to i64*
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %249
  %251 = getelementptr inbounds i8, i8* %250, i64 240
  %252 = bitcast i8* %251 to %"class.std::ctype"**
  %253 = load %"class.std::ctype"*, %"class.std::ctype"** %252, align 8, !tbaa !14
  %254 = icmp eq %"class.std::ctype"* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %244
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

256:                                              ; preds = %244
  %257 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %253, i64 0, i32 8
  %258 = load i8, i8* %257, align 8, !tbaa !17
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %253, i64 0, i32 9, i64 10
  %262 = load i8, i8* %261, align 1, !tbaa !19
  br label %269

263:                                              ; preds = %256
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %253)
  %264 = bitcast %"class.std::ctype"* %253 to i8 (%"class.std::ctype"*, i8)***
  %265 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %264, align 8, !tbaa !12
  %266 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %265, i64 6
  %267 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %266, align 8
  %268 = tail call signext i8 %267(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %253, i8 signext 10)
  br label %269

269:                                              ; preds = %260, %263
  %270 = phi i8 [ %262, %260 ], [ %268, %263 ]
  %271 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %270)
  %272 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %271)
  br label %331

273:                                              ; preds = %228
  %274 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i64 8)
  %275 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %276 = getelementptr i8, i8* %275, i64 -24
  %277 = bitcast i8* %276 to i64*
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %278
  %280 = getelementptr inbounds i8, i8* %279, i64 240
  %281 = bitcast i8* %280 to %"class.std::ctype"**
  %282 = load %"class.std::ctype"*, %"class.std::ctype"** %281, align 8, !tbaa !14
  %283 = icmp eq %"class.std::ctype"* %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %273
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

285:                                              ; preds = %273
  %286 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %282, i64 0, i32 8
  %287 = load i8, i8* %286, align 8, !tbaa !17
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %282, i64 0, i32 9, i64 10
  %291 = load i8, i8* %290, align 1, !tbaa !19
  br label %298

292:                                              ; preds = %285
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %282)
  %293 = bitcast %"class.std::ctype"* %282 to i8 (%"class.std::ctype"*, i8)***
  %294 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %293, align 8, !tbaa !12
  %295 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %294, i64 6
  %296 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %295, align 8
  %297 = tail call signext i8 %296(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %282, i8 signext 10)
  br label %298

298:                                              ; preds = %289, %292
  %299 = phi i8 [ %291, %289 ], [ %297, %292 ]
  %300 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %299)
  %301 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %300)
  br label %331

302:                                              ; preds = %228
  %303 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i64 7)
  %304 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %305 = getelementptr i8, i8* %304, i64 -24
  %306 = bitcast i8* %305 to i64*
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %307
  %309 = getelementptr inbounds i8, i8* %308, i64 240
  %310 = bitcast i8* %309 to %"class.std::ctype"**
  %311 = load %"class.std::ctype"*, %"class.std::ctype"** %310, align 8, !tbaa !14
  %312 = icmp eq %"class.std::ctype"* %311, null
  br i1 %312, label %313, label %314

313:                                              ; preds = %302
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

314:                                              ; preds = %302
  %315 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %311, i64 0, i32 8
  %316 = load i8, i8* %315, align 8, !tbaa !17
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %311, i64 0, i32 9, i64 10
  %320 = load i8, i8* %319, align 1, !tbaa !19
  br label %327

321:                                              ; preds = %314
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %311)
  %322 = bitcast %"class.std::ctype"* %311 to i8 (%"class.std::ctype"*, i8)***
  %323 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %322, align 8, !tbaa !12
  %324 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %323, i64 6
  %325 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %324, align 8
  %326 = tail call signext i8 %325(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %311, i8 signext 10)
  br label %327

327:                                              ; preds = %318, %321
  %328 = phi i8 [ %320, %318 ], [ %326, %321 ]
  %329 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %328)
  %330 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %329)
  br label %331

331:                                              ; preds = %1, %327, %298, %269, %74
  %332 = phi i32 [ 1, %74 ], [ 0, %298 ], [ 1, %327 ], [ 1, %269 ], [ 0, %1 ]
  ret i32 %332
}

; Function Attrs: uwtable
define dso_local void @_ZN17SimpleConvolution10printStatsEv(%class.SimpleConvolution* nocapture nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %16 = alloca %"class.std::allocator.0", align 1
  %17 = alloca %"class.std::allocator.0", align 1
  %18 = alloca %"class.std::basic_ostringstream", align 8
  %19 = alloca %"class.std::allocator.0", align 1
  %20 = alloca %"class.std::allocator.0", align 1
  %21 = alloca %"class.std::basic_ostringstream", align 8
  %22 = alloca %"class.std::allocator.0", align 1
  %23 = alloca %"class.std::allocator.0", align 1
  %24 = alloca %"class.std::basic_ostringstream", align 8
  %25 = alloca %"class.std::allocator.0", align 1
  %26 = alloca %"class.std::allocator.0", align 1
  %27 = alloca %"class.std::basic_ostringstream", align 8
  %28 = alloca [4 x %"class.std::basic_string"], align 16
  %29 = alloca %"class.std::allocator.0", align 1
  %30 = alloca %"class.std::allocator.0", align 1
  %31 = alloca %"class.std::allocator.0", align 1
  %32 = alloca %"class.std::allocator.0", align 1
  %33 = alloca [4 x %"class.std::basic_string"], align 16
  %34 = alloca %"class.std::basic_string", align 8
  %35 = alloca %"class.std::basic_string", align 8
  %36 = alloca %"class.std::basic_string", align 8
  %37 = alloca %"class.std::basic_string", align 8
  %38 = alloca %"class.std::basic_string", align 8
  %39 = alloca %"class.std::basic_string", align 8
  %40 = alloca %"class.std::basic_string", align 8
  %41 = alloca %"class.std::basic_string", align 8
  %42 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 33
  %43 = bitcast %"class.appsdk::HIPCommandArgs"** %42 to %"class.appsdk::SDKCmdArgsParser"**
  %44 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %43, align 8, !tbaa !64
  %45 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %44, i64 0, i32 11
  %46 = load i8, i8* %45, align 2, !tbaa !99, !range !97
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %917, label %48

48:                                               ; preds = %1
  %49 = bitcast [4 x %"class.std::basic_string"]* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %49) #26
  %50 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 0
  %51 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %29, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %51) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %29)
  %52 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 1
  %53 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %30, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %53) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %30)
          to label %54 unwind label %839

54:                                               ; preds = %48
  %55 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 2
  %56 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %31, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %56) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %31)
          to label %57 unwind label %841

57:                                               ; preds = %54
  %58 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 3
  %59 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %32, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %59) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %32)
          to label %60 unwind label %843

60:                                               ; preds = %57
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %59) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %56) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %53) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #26
  %61 = bitcast [4 x %"class.std::basic_string"]* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %61) #26
  %62 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 0
  %63 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %63, align 16, !tbaa !65
  %64 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %64, align 8, !tbaa !65
  %65 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %65, align 16, !tbaa !65
  %66 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %66, align 8, !tbaa !65
  %67 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i64 42)
          to label %68 unwind label %855

68:                                               ; preds = %60
  %69 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %70 = getelementptr i8, i8* %69, i64 -24
  %71 = bitcast i8* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 240
  %75 = bitcast i8* %74 to %"class.std::ctype"**
  %76 = load %"class.std::ctype"*, %"class.std::ctype"** %75, align 8, !tbaa !14
  %77 = icmp eq %"class.std::ctype"* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %79 unwind label %855

79:                                               ; preds = %78
  unreachable

80:                                               ; preds = %68
  %81 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %76, i64 0, i32 8
  %82 = load i8, i8* %81, align 8, !tbaa !17
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %76, i64 0, i32 9, i64 10
  %86 = load i8, i8* %85, align 1, !tbaa !19
  br label %94

87:                                               ; preds = %80
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %76)
          to label %88 unwind label %855

88:                                               ; preds = %87
  %89 = bitcast %"class.std::ctype"* %76 to i8 (%"class.std::ctype"*, i8)***
  %90 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %89, align 8, !tbaa !12
  %91 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %90, i64 6
  %92 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %91, align 8
  %93 = invoke signext i8 %92(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %76, i8 signext 10)
          to label %94 unwind label %855

94:                                               ; preds = %88, %84
  %95 = phi i8 [ %86, %84 ], [ %93, %88 ]
  %96 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %95)
          to label %97 unwind label %855

97:                                               ; preds = %94
  %98 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %96)
          to label %99 unwind label %855

99:                                               ; preds = %97
  %100 = bitcast %"class.std::basic_string"* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %100) #26
  %101 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 4
  %102 = load i32, i32* %101, align 8, !tbaa !23
  %103 = bitcast %"class.std::basic_ostringstream"* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %103) #26, !noalias !100
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %27, i32 16)
          to label %104 unwind label %857

104:                                              ; preds = %99
  %105 = bitcast %"class.std::basic_ostringstream"* %27 to i8**
  %106 = load i8*, i8** %105, align 8, !tbaa !12, !noalias !100
  %107 = getelementptr i8, i8* %106, i64 -24
  %108 = bitcast i8* %107 to i64*
  %109 = load i64, i64* %108, align 8, !noalias !100
  %110 = getelementptr inbounds i8, i8* %103, i64 %109
  %111 = getelementptr inbounds i8, i8* %110, i64 24
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %112, align 8, !tbaa !103, !noalias !100
  %114 = and i32 %113, -75
  %115 = or i32 %114, 2
  store i32 %115, i32* %112, align 8, !tbaa !109, !noalias !100
  %116 = bitcast %"class.std::basic_ostringstream"* %27 to %"class.std::basic_ostream"*
  %117 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %116, i32 %102)
          to label %118 unwind label %148, !noalias !100

118:                                              ; preds = %104
  %119 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %27, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %34, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %119)
          to label %120 unwind label %148

120:                                              ; preds = %118
  %121 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %122 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %27, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %122, align 8, !tbaa !12, !noalias !100
  %123 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %124 = getelementptr i32 (...)*, i32 (...)** %121, i64 -3
  %125 = bitcast i32 (...)** %124 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8, i8* %103, i64 %126
  %128 = bitcast i8* %127 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %128, align 8, !tbaa !12, !noalias !100
  %129 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %27, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %129, align 8, !tbaa !12, !noalias !100
  %130 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %27, i64 0, i32 1, i32 2, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8, !tbaa !26, !noalias !100
  %132 = getelementptr inbounds i8, i8* %131, i64 -24
  %133 = bitcast i8* %132 to %"struct.std::basic_string<char>::_Rep"*
  %134 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %26, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %134) #26, !noalias !100
  %135 = icmp eq i8* %132, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %135, label %150, label %136, !prof !29

136:                                              ; preds = %120
  %137 = getelementptr inbounds i8, i8* %131, i64 -8
  %138 = bitcast i8* %137 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %139, label %141

139:                                              ; preds = %136
  %140 = atomicrmw volatile add i32* %138, i32 -1 acq_rel, align 4
  br label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %138, align 8, !tbaa !7
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %138, align 8, !tbaa !7
  br label %144

144:                                              ; preds = %141, %139
  %145 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %133, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %26) #26
  br label %150

148:                                              ; preds = %118, %104
  %149 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %27) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %103) #26, !noalias !100
  br label %861

150:                                              ; preds = %147, %144, %120
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %134) #26, !noalias !100
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %129, align 8, !tbaa !12, !noalias !100
  %151 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %27, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %151) #26
  %152 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %27, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %152) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %103) #26, !noalias !100
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %62, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34)
          to label %153 unwind label %859

153:                                              ; preds = %150
  %154 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %34, i64 0, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8, !tbaa !26
  %156 = getelementptr inbounds i8, i8* %155, i64 -24
  %157 = bitcast i8* %156 to %"struct.std::basic_string<char>::_Rep"*
  %158 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %25, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %158) #26
  %159 = icmp eq i8* %156, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %159, label %172, label %160, !prof !29

160:                                              ; preds = %153
  %161 = getelementptr inbounds i8, i8* %155, i64 -8
  %162 = bitcast i8* %161 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %163, label %165

163:                                              ; preds = %160
  %164 = atomicrmw volatile add i32* %162, i32 -1 acq_rel, align 4
  br label %168

165:                                              ; preds = %160
  %166 = load i32, i32* %162, align 8, !tbaa !7
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %162, align 8, !tbaa !7
  br label %168

168:                                              ; preds = %165, %163
  %169 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %157, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %25) #26
  br label %172

172:                                              ; preds = %153, %168, %171
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %158) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #26
  %173 = bitcast %"class.std::basic_string"* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %173) #26
  %174 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 5
  %175 = load i32, i32* %174, align 4, !tbaa !24
  %176 = bitcast %"class.std::basic_ostringstream"* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %176) #26, !noalias !110
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %24, i32 16)
          to label %177 unwind label %863

177:                                              ; preds = %172
  %178 = bitcast %"class.std::basic_ostringstream"* %24 to i8**
  %179 = load i8*, i8** %178, align 8, !tbaa !12, !noalias !110
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8, !noalias !110
  %183 = getelementptr inbounds i8, i8* %176, i64 %182
  %184 = getelementptr inbounds i8, i8* %183, i64 24
  %185 = bitcast i8* %184 to i32*
  %186 = load i32, i32* %185, align 8, !tbaa !103, !noalias !110
  %187 = and i32 %186, -75
  %188 = or i32 %187, 2
  store i32 %188, i32* %185, align 8, !tbaa !109, !noalias !110
  %189 = bitcast %"class.std::basic_ostringstream"* %24 to %"class.std::basic_ostream"*
  %190 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %189, i32 %175)
          to label %191 unwind label %217, !noalias !110

191:                                              ; preds = %177
  %192 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %24, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %35, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %192)
          to label %193 unwind label %217

193:                                              ; preds = %191
  %194 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %24, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %194, align 8, !tbaa !12, !noalias !110
  %195 = load i64, i64* %125, align 8
  %196 = getelementptr inbounds i8, i8* %176, i64 %195
  %197 = bitcast i8* %196 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %197, align 8, !tbaa !12, !noalias !110
  %198 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %24, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %198, align 8, !tbaa !12, !noalias !110
  %199 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %24, i64 0, i32 1, i32 2, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8, !tbaa !26, !noalias !110
  %201 = getelementptr inbounds i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to %"struct.std::basic_string<char>::_Rep"*
  %203 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %23, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %203) #26, !noalias !110
  %204 = icmp eq i8* %201, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %204, label %219, label %205, !prof !29

205:                                              ; preds = %193
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
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %202, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %23) #26
  br label %219

217:                                              ; preds = %191, %177
  %218 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %24) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %176) #26, !noalias !110
  br label %867

219:                                              ; preds = %216, %213, %193
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %203) #26, !noalias !110
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %198, align 8, !tbaa !12, !noalias !110
  %220 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %24, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %220) #26
  %221 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %24, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %221) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %176) #26, !noalias !110
  %222 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %222, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %35)
          to label %223 unwind label %865

223:                                              ; preds = %219
  %224 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %35, i64 0, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8, !tbaa !26
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to %"struct.std::basic_string<char>::_Rep"*
  %228 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %22, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %228) #26
  %229 = icmp eq i8* %226, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %229, label %242, label %230, !prof !29

230:                                              ; preds = %223
  %231 = getelementptr inbounds i8, i8* %225, i64 -8
  %232 = bitcast i8* %231 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %233, label %235

233:                                              ; preds = %230
  %234 = atomicrmw volatile add i32* %232, i32 -1 acq_rel, align 4
  br label %238

235:                                              ; preds = %230
  %236 = load i32, i32* %232, align 8, !tbaa !7
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %232, align 8, !tbaa !7
  br label %238

238:                                              ; preds = %235, %233
  %239 = phi i32 [ %234, %233 ], [ %236, %235 ]
  %240 = icmp slt i32 %239, 1
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %227, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %22) #26
  br label %242

242:                                              ; preds = %223, %238, %241
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %228) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %173) #26
  %243 = bitcast %"class.std::basic_string"* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %243) #26
  %244 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 14
  %245 = load i32, i32* %244, align 8, !tbaa !9
  %246 = bitcast %"class.std::basic_ostringstream"* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %246) #26, !noalias !113
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %21, i32 16)
          to label %247 unwind label %869

247:                                              ; preds = %242
  %248 = bitcast %"class.std::basic_ostringstream"* %21 to i8**
  %249 = load i8*, i8** %248, align 8, !tbaa !12, !noalias !113
  %250 = getelementptr i8, i8* %249, i64 -24
  %251 = bitcast i8* %250 to i64*
  %252 = load i64, i64* %251, align 8, !noalias !113
  %253 = getelementptr inbounds i8, i8* %246, i64 %252
  %254 = getelementptr inbounds i8, i8* %253, i64 24
  %255 = bitcast i8* %254 to i32*
  %256 = load i32, i32* %255, align 8, !tbaa !103, !noalias !113
  %257 = and i32 %256, -75
  %258 = or i32 %257, 2
  store i32 %258, i32* %255, align 8, !tbaa !109, !noalias !113
  %259 = bitcast %"class.std::basic_ostringstream"* %21 to %"class.std::basic_ostream"*
  %260 = zext i32 %245 to i64
  %261 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %259, i64 %260)
          to label %262 unwind label %288, !noalias !113

262:                                              ; preds = %247
  %263 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %21, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %36, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %263)
          to label %264 unwind label %288

264:                                              ; preds = %262
  %265 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %21, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %265, align 8, !tbaa !12, !noalias !113
  %266 = load i64, i64* %125, align 8
  %267 = getelementptr inbounds i8, i8* %246, i64 %266
  %268 = bitcast i8* %267 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %268, align 8, !tbaa !12, !noalias !113
  %269 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %21, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %269, align 8, !tbaa !12, !noalias !113
  %270 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %21, i64 0, i32 1, i32 2, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8, !tbaa !26, !noalias !113
  %272 = getelementptr inbounds i8, i8* %271, i64 -24
  %273 = bitcast i8* %272 to %"struct.std::basic_string<char>::_Rep"*
  %274 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %274) #26, !noalias !113
  %275 = icmp eq i8* %272, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %275, label %290, label %276, !prof !29

276:                                              ; preds = %264
  %277 = getelementptr inbounds i8, i8* %271, i64 -8
  %278 = bitcast i8* %277 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %279, label %281

279:                                              ; preds = %276
  %280 = atomicrmw volatile add i32* %278, i32 -1 acq_rel, align 4
  br label %284

281:                                              ; preds = %276
  %282 = load i32, i32* %278, align 8, !tbaa !7
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %278, align 8, !tbaa !7
  br label %284

284:                                              ; preds = %281, %279
  %285 = phi i32 [ %280, %279 ], [ %282, %281 ]
  %286 = icmp slt i32 %285, 1
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %273, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20) #26
  br label %290

288:                                              ; preds = %262, %247
  %289 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %21) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %246) #26, !noalias !113
  br label %873

290:                                              ; preds = %287, %284, %264
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %274) #26, !noalias !113
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %269, align 8, !tbaa !12, !noalias !113
  %291 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %21, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %291) #26
  %292 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %21, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %292) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %246) #26, !noalias !113
  %293 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %293, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36)
          to label %294 unwind label %871

294:                                              ; preds = %290
  %295 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %36, i64 0, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8, !tbaa !26
  %297 = getelementptr inbounds i8, i8* %296, i64 -24
  %298 = bitcast i8* %297 to %"struct.std::basic_string<char>::_Rep"*
  %299 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %299) #26
  %300 = icmp eq i8* %297, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %300, label %313, label %301, !prof !29

301:                                              ; preds = %294
  %302 = getelementptr inbounds i8, i8* %296, i64 -8
  %303 = bitcast i8* %302 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %304, label %306

304:                                              ; preds = %301
  %305 = atomicrmw volatile add i32* %303, i32 -1 acq_rel, align 4
  br label %309

306:                                              ; preds = %301
  %307 = load i32, i32* %303, align 8, !tbaa !7
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %303, align 8, !tbaa !7
  br label %309

309:                                              ; preds = %306, %304
  %310 = phi i32 [ %305, %304 ], [ %307, %306 ]
  %311 = icmp slt i32 %310, 1
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %298, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19) #26
  br label %313

313:                                              ; preds = %294, %309, %312
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %299) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %243) #26
  %314 = bitcast %"class.std::basic_string"* %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %314) #26
  %315 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 2
  %316 = load double, double* %315, align 8, !tbaa !93
  %317 = bitcast %"class.std::basic_ostringstream"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %317) #26, !noalias !116
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %18, i32 16)
          to label %318 unwind label %875

318:                                              ; preds = %313
  %319 = bitcast %"class.std::basic_ostringstream"* %18 to i8**
  %320 = load i8*, i8** %319, align 8, !tbaa !12, !noalias !116
  %321 = getelementptr i8, i8* %320, i64 -24
  %322 = bitcast i8* %321 to i64*
  %323 = load i64, i64* %322, align 8, !noalias !116
  %324 = getelementptr inbounds i8, i8* %317, i64 %323
  %325 = getelementptr inbounds i8, i8* %324, i64 24
  %326 = bitcast i8* %325 to i32*
  %327 = load i32, i32* %326, align 8, !tbaa !103, !noalias !116
  %328 = and i32 %327, -75
  %329 = or i32 %328, 2
  store i32 %329, i32* %326, align 8, !tbaa !109, !noalias !116
  %330 = bitcast %"class.std::basic_ostringstream"* %18 to %"class.std::basic_ostream"*
  %331 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %330, double %316)
          to label %332 unwind label %358, !noalias !116

332:                                              ; preds = %318
  %333 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %37, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %333)
          to label %334 unwind label %358

334:                                              ; preds = %332
  %335 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %335, align 8, !tbaa !12, !noalias !116
  %336 = load i64, i64* %125, align 8
  %337 = getelementptr inbounds i8, i8* %317, i64 %336
  %338 = bitcast i8* %337 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %338, align 8, !tbaa !12, !noalias !116
  %339 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %339, align 8, !tbaa !12, !noalias !116
  %340 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1, i32 2, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8, !tbaa !26, !noalias !116
  %342 = getelementptr inbounds i8, i8* %341, i64 -24
  %343 = bitcast i8* %342 to %"struct.std::basic_string<char>::_Rep"*
  %344 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %344) #26, !noalias !116
  %345 = icmp eq i8* %342, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %345, label %360, label %346, !prof !29

346:                                              ; preds = %334
  %347 = getelementptr inbounds i8, i8* %341, i64 -8
  %348 = bitcast i8* %347 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %349, label %351

349:                                              ; preds = %346
  %350 = atomicrmw volatile add i32* %348, i32 -1 acq_rel, align 4
  br label %354

351:                                              ; preds = %346
  %352 = load i32, i32* %348, align 8, !tbaa !7
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %348, align 8, !tbaa !7
  br label %354

354:                                              ; preds = %351, %349
  %355 = phi i32 [ %350, %349 ], [ %352, %351 ]
  %356 = icmp slt i32 %355, 1
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %343, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17) #26
  br label %360

358:                                              ; preds = %332, %318
  %359 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %18) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %317) #26, !noalias !116
  br label %879

360:                                              ; preds = %357, %354, %334
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %344) #26, !noalias !116
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %339, align 8, !tbaa !12, !noalias !116
  %361 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %361) #26
  %362 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %362) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %317) #26, !noalias !116
  %363 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %363, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %37)
          to label %364 unwind label %877

364:                                              ; preds = %360
  %365 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %37, i64 0, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8, !tbaa !26
  %367 = getelementptr inbounds i8, i8* %366, i64 -24
  %368 = bitcast i8* %367 to %"struct.std::basic_string<char>::_Rep"*
  %369 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %16, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %369) #26
  %370 = icmp eq i8* %367, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %370, label %383, label %371, !prof !29

371:                                              ; preds = %364
  %372 = getelementptr inbounds i8, i8* %366, i64 -8
  %373 = bitcast i8* %372 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %374, label %376

374:                                              ; preds = %371
  %375 = atomicrmw volatile add i32* %373, i32 -1 acq_rel, align 4
  br label %379

376:                                              ; preds = %371
  %377 = load i32, i32* %373, align 8, !tbaa !7
  %378 = add nsw i32 %377, -1
  store i32 %378, i32* %373, align 8, !tbaa !7
  br label %379

379:                                              ; preds = %376, %374
  %380 = phi i32 [ %375, %374 ], [ %377, %376 ]
  %381 = icmp slt i32 %380, 1
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %368, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %16) #26
  br label %383

383:                                              ; preds = %364, %379, %382
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %369) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %314) #26
  invoke fastcc void @_ZN6appsdkL15printStatisticsEPSsS0_i(%"class.std::basic_string"* nonnull %50, %"class.std::basic_string"* nonnull %62)
          to label %384 unwind label %855

384:                                              ; preds = %383
  %385 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i64 38)
          to label %386 unwind label %855

386:                                              ; preds = %384
  %387 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %388 = getelementptr i8, i8* %387, i64 -24
  %389 = bitcast i8* %388 to i64*
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %390
  %392 = getelementptr inbounds i8, i8* %391, i64 240
  %393 = bitcast i8* %392 to %"class.std::ctype"**
  %394 = load %"class.std::ctype"*, %"class.std::ctype"** %393, align 8, !tbaa !14
  %395 = icmp eq %"class.std::ctype"* %394, null
  br i1 %395, label %396, label %398

396:                                              ; preds = %386
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %397 unwind label %855

397:                                              ; preds = %396
  unreachable

398:                                              ; preds = %386
  %399 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %394, i64 0, i32 8
  %400 = load i8, i8* %399, align 8, !tbaa !17
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %394, i64 0, i32 9, i64 10
  %404 = load i8, i8* %403, align 1, !tbaa !19
  br label %412

405:                                              ; preds = %398
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %394)
          to label %406 unwind label %855

406:                                              ; preds = %405
  %407 = bitcast %"class.std::ctype"* %394 to i8 (%"class.std::ctype"*, i8)***
  %408 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %407, align 8, !tbaa !12
  %409 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %408, i64 6
  %410 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %409, align 8
  %411 = invoke signext i8 %410(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %394, i8 signext 10)
          to label %412 unwind label %855

412:                                              ; preds = %406, %402
  %413 = phi i8 [ %404, %402 ], [ %411, %406 ]
  %414 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %413)
          to label %415 unwind label %855

415:                                              ; preds = %412
  %416 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %414)
          to label %417 unwind label %855

417:                                              ; preds = %415
  %418 = bitcast %"class.std::basic_string"* %38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %418) #26
  %419 = load i32, i32* %101, align 8, !tbaa !23
  %420 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %420) #26, !noalias !119
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %421 unwind label %881

421:                                              ; preds = %417
  %422 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %423 = load i8*, i8** %422, align 8, !tbaa !12, !noalias !119
  %424 = getelementptr i8, i8* %423, i64 -24
  %425 = bitcast i8* %424 to i64*
  %426 = load i64, i64* %425, align 8, !noalias !119
  %427 = getelementptr inbounds i8, i8* %420, i64 %426
  %428 = getelementptr inbounds i8, i8* %427, i64 24
  %429 = bitcast i8* %428 to i32*
  %430 = load i32, i32* %429, align 8, !tbaa !103, !noalias !119
  %431 = and i32 %430, -75
  %432 = or i32 %431, 2
  store i32 %432, i32* %429, align 8, !tbaa !109, !noalias !119
  %433 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %434 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %433, i32 %419)
          to label %435 unwind label %461, !noalias !119

435:                                              ; preds = %421
  %436 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %38, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %436)
          to label %437 unwind label %461

437:                                              ; preds = %435
  %438 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %438, align 8, !tbaa !12, !noalias !119
  %439 = load i64, i64* %125, align 8
  %440 = getelementptr inbounds i8, i8* %420, i64 %439
  %441 = bitcast i8* %440 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %441, align 8, !tbaa !12, !noalias !119
  %442 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %442, align 8, !tbaa !12, !noalias !119
  %443 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %444 = load i8*, i8** %443, align 8, !tbaa !26, !noalias !119
  %445 = getelementptr inbounds i8, i8* %444, i64 -24
  %446 = bitcast i8* %445 to %"struct.std::basic_string<char>::_Rep"*
  %447 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %447) #26, !noalias !119
  %448 = icmp eq i8* %445, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %448, label %463, label %449, !prof !29

449:                                              ; preds = %437
  %450 = getelementptr inbounds i8, i8* %444, i64 -8
  %451 = bitcast i8* %450 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %452, label %454

452:                                              ; preds = %449
  %453 = atomicrmw volatile add i32* %451, i32 -1 acq_rel, align 4
  br label %457

454:                                              ; preds = %449
  %455 = load i32, i32* %451, align 8, !tbaa !7
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %451, align 8, !tbaa !7
  br label %457

457:                                              ; preds = %454, %452
  %458 = phi i32 [ %453, %452 ], [ %455, %454 ]
  %459 = icmp slt i32 %458, 1
  br i1 %459, label %460, label %463

460:                                              ; preds = %457
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %446, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14) #26
  br label %463

461:                                              ; preds = %435, %421
  %462 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %420) #26, !noalias !119
  br label %885

463:                                              ; preds = %460, %457, %437
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %447) #26, !noalias !119
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %442, align 8, !tbaa !12, !noalias !119
  %464 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %464) #26
  %465 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %465) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %420) #26, !noalias !119
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %62, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %38)
          to label %466 unwind label %883

466:                                              ; preds = %463
  %467 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %38, i64 0, i32 0, i32 0
  %468 = load i8*, i8** %467, align 8, !tbaa !26
  %469 = getelementptr inbounds i8, i8* %468, i64 -24
  %470 = bitcast i8* %469 to %"struct.std::basic_string<char>::_Rep"*
  %471 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %471) #26
  %472 = icmp eq i8* %469, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %472, label %485, label %473, !prof !29

473:                                              ; preds = %466
  %474 = getelementptr inbounds i8, i8* %468, i64 -8
  %475 = bitcast i8* %474 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %476, label %478

476:                                              ; preds = %473
  %477 = atomicrmw volatile add i32* %475, i32 -1 acq_rel, align 4
  br label %481

478:                                              ; preds = %473
  %479 = load i32, i32* %475, align 8, !tbaa !7
  %480 = add nsw i32 %479, -1
  store i32 %480, i32* %475, align 8, !tbaa !7
  br label %481

481:                                              ; preds = %478, %476
  %482 = phi i32 [ %477, %476 ], [ %479, %478 ]
  %483 = icmp slt i32 %482, 1
  br i1 %483, label %484, label %485

484:                                              ; preds = %481
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %470, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #26
  br label %485

485:                                              ; preds = %466, %481, %484
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %471) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %418) #26
  %486 = bitcast %"class.std::basic_string"* %39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %486) #26
  %487 = load i32, i32* %174, align 4, !tbaa !24
  %488 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %488) #26, !noalias !122
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %489 unwind label %887

489:                                              ; preds = %485
  %490 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %491 = load i8*, i8** %490, align 8, !tbaa !12, !noalias !122
  %492 = getelementptr i8, i8* %491, i64 -24
  %493 = bitcast i8* %492 to i64*
  %494 = load i64, i64* %493, align 8, !noalias !122
  %495 = getelementptr inbounds i8, i8* %488, i64 %494
  %496 = getelementptr inbounds i8, i8* %495, i64 24
  %497 = bitcast i8* %496 to i32*
  %498 = load i32, i32* %497, align 8, !tbaa !103, !noalias !122
  %499 = and i32 %498, -75
  %500 = or i32 %499, 2
  store i32 %500, i32* %497, align 8, !tbaa !109, !noalias !122
  %501 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %502 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %501, i32 %487)
          to label %503 unwind label %529, !noalias !122

503:                                              ; preds = %489
  %504 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %39, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %504)
          to label %505 unwind label %529

505:                                              ; preds = %503
  %506 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %506, align 8, !tbaa !12, !noalias !122
  %507 = load i64, i64* %125, align 8
  %508 = getelementptr inbounds i8, i8* %488, i64 %507
  %509 = bitcast i8* %508 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %509, align 8, !tbaa !12, !noalias !122
  %510 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %510, align 8, !tbaa !12, !noalias !122
  %511 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %512 = load i8*, i8** %511, align 8, !tbaa !26, !noalias !122
  %513 = getelementptr inbounds i8, i8* %512, i64 -24
  %514 = bitcast i8* %513 to %"struct.std::basic_string<char>::_Rep"*
  %515 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %515) #26, !noalias !122
  %516 = icmp eq i8* %513, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %516, label %531, label %517, !prof !29

517:                                              ; preds = %505
  %518 = getelementptr inbounds i8, i8* %512, i64 -8
  %519 = bitcast i8* %518 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %520, label %522

520:                                              ; preds = %517
  %521 = atomicrmw volatile add i32* %519, i32 -1 acq_rel, align 4
  br label %525

522:                                              ; preds = %517
  %523 = load i32, i32* %519, align 8, !tbaa !7
  %524 = add nsw i32 %523, -1
  store i32 %524, i32* %519, align 8, !tbaa !7
  br label %525

525:                                              ; preds = %522, %520
  %526 = phi i32 [ %521, %520 ], [ %523, %522 ]
  %527 = icmp slt i32 %526, 1
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %514, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #26
  br label %531

529:                                              ; preds = %503, %489
  %530 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %488) #26, !noalias !122
  br label %891

531:                                              ; preds = %528, %525, %505
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %515) #26, !noalias !122
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %510, align 8, !tbaa !12, !noalias !122
  %532 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %532) #26
  %533 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %533) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %488) #26, !noalias !122
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %222, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %39)
          to label %534 unwind label %889

534:                                              ; preds = %531
  %535 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %39, i64 0, i32 0, i32 0
  %536 = load i8*, i8** %535, align 8, !tbaa !26
  %537 = getelementptr inbounds i8, i8* %536, i64 -24
  %538 = bitcast i8* %537 to %"struct.std::basic_string<char>::_Rep"*
  %539 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %539) #26
  %540 = icmp eq i8* %537, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %540, label %553, label %541, !prof !29

541:                                              ; preds = %534
  %542 = getelementptr inbounds i8, i8* %536, i64 -8
  %543 = bitcast i8* %542 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %544, label %546

544:                                              ; preds = %541
  %545 = atomicrmw volatile add i32* %543, i32 -1 acq_rel, align 4
  br label %549

546:                                              ; preds = %541
  %547 = load i32, i32* %543, align 8, !tbaa !7
  %548 = add nsw i32 %547, -1
  store i32 %548, i32* %543, align 8, !tbaa !7
  br label %549

549:                                              ; preds = %546, %544
  %550 = phi i32 [ %545, %544 ], [ %547, %546 ]
  %551 = icmp slt i32 %550, 1
  br i1 %551, label %552, label %553

552:                                              ; preds = %549
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %538, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #26
  br label %553

553:                                              ; preds = %534, %549, %552
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %539) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %486) #26
  %554 = bitcast %"class.std::basic_string"* %40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %554) #26
  %555 = load i32, i32* %244, align 8, !tbaa !9
  %556 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %556) #26, !noalias !125
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %557 unwind label %893

557:                                              ; preds = %553
  %558 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %559 = load i8*, i8** %558, align 8, !tbaa !12, !noalias !125
  %560 = getelementptr i8, i8* %559, i64 -24
  %561 = bitcast i8* %560 to i64*
  %562 = load i64, i64* %561, align 8, !noalias !125
  %563 = getelementptr inbounds i8, i8* %556, i64 %562
  %564 = getelementptr inbounds i8, i8* %563, i64 24
  %565 = bitcast i8* %564 to i32*
  %566 = load i32, i32* %565, align 8, !tbaa !103, !noalias !125
  %567 = and i32 %566, -75
  %568 = or i32 %567, 2
  store i32 %568, i32* %565, align 8, !tbaa !109, !noalias !125
  %569 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %570 = zext i32 %555 to i64
  %571 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %569, i64 %570)
          to label %572 unwind label %598, !noalias !125

572:                                              ; preds = %557
  %573 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %40, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %573)
          to label %574 unwind label %598

574:                                              ; preds = %572
  %575 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %575, align 8, !tbaa !12, !noalias !125
  %576 = load i64, i64* %125, align 8
  %577 = getelementptr inbounds i8, i8* %556, i64 %576
  %578 = bitcast i8* %577 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %578, align 8, !tbaa !12, !noalias !125
  %579 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %579, align 8, !tbaa !12, !noalias !125
  %580 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %581 = load i8*, i8** %580, align 8, !tbaa !26, !noalias !125
  %582 = getelementptr inbounds i8, i8* %581, i64 -24
  %583 = bitcast i8* %582 to %"struct.std::basic_string<char>::_Rep"*
  %584 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %584) #26, !noalias !125
  %585 = icmp eq i8* %582, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %585, label %600, label %586, !prof !29

586:                                              ; preds = %574
  %587 = getelementptr inbounds i8, i8* %581, i64 -8
  %588 = bitcast i8* %587 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %589, label %591

589:                                              ; preds = %586
  %590 = atomicrmw volatile add i32* %588, i32 -1 acq_rel, align 4
  br label %594

591:                                              ; preds = %586
  %592 = load i32, i32* %588, align 8, !tbaa !7
  %593 = add nsw i32 %592, -1
  store i32 %593, i32* %588, align 8, !tbaa !7
  br label %594

594:                                              ; preds = %591, %589
  %595 = phi i32 [ %590, %589 ], [ %592, %591 ]
  %596 = icmp slt i32 %595, 1
  br i1 %596, label %597, label %600

597:                                              ; preds = %594
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %583, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #26
  br label %600

598:                                              ; preds = %572, %557
  %599 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %556) #26, !noalias !125
  br label %897

600:                                              ; preds = %597, %594, %574
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %584) #26, !noalias !125
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %579, align 8, !tbaa !12, !noalias !125
  %601 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %601) #26
  %602 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %602) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %556) #26, !noalias !125
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %293, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %40)
          to label %603 unwind label %895

603:                                              ; preds = %600
  %604 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %40, i64 0, i32 0, i32 0
  %605 = load i8*, i8** %604, align 8, !tbaa !26
  %606 = getelementptr inbounds i8, i8* %605, i64 -24
  %607 = bitcast i8* %606 to %"struct.std::basic_string<char>::_Rep"*
  %608 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %608) #26
  %609 = icmp eq i8* %606, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %609, label %622, label %610, !prof !29

610:                                              ; preds = %603
  %611 = getelementptr inbounds i8, i8* %605, i64 -8
  %612 = bitcast i8* %611 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %613, label %615

613:                                              ; preds = %610
  %614 = atomicrmw volatile add i32* %612, i32 -1 acq_rel, align 4
  br label %618

615:                                              ; preds = %610
  %616 = load i32, i32* %612, align 8, !tbaa !7
  %617 = add nsw i32 %616, -1
  store i32 %617, i32* %612, align 8, !tbaa !7
  br label %618

618:                                              ; preds = %615, %613
  %619 = phi i32 [ %614, %613 ], [ %616, %615 ]
  %620 = icmp slt i32 %619, 1
  br i1 %620, label %621, label %622

621:                                              ; preds = %618
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %607, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %622

622:                                              ; preds = %603, %618, %621
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %608) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %554) #26
  %623 = bitcast %"class.std::basic_string"* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %623) #26
  %624 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 3
  %625 = load double, double* %624, align 8, !tbaa !95
  %626 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %626) #26, !noalias !128
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %627 unwind label %899

627:                                              ; preds = %622
  %628 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %629 = load i8*, i8** %628, align 8, !tbaa !12, !noalias !128
  %630 = getelementptr i8, i8* %629, i64 -24
  %631 = bitcast i8* %630 to i64*
  %632 = load i64, i64* %631, align 8, !noalias !128
  %633 = getelementptr inbounds i8, i8* %626, i64 %632
  %634 = getelementptr inbounds i8, i8* %633, i64 24
  %635 = bitcast i8* %634 to i32*
  %636 = load i32, i32* %635, align 8, !tbaa !103, !noalias !128
  %637 = and i32 %636, -75
  %638 = or i32 %637, 2
  store i32 %638, i32* %635, align 8, !tbaa !109, !noalias !128
  %639 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %640 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %639, double %625)
          to label %641 unwind label %667, !noalias !128

641:                                              ; preds = %627
  %642 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %41, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %642)
          to label %643 unwind label %667

643:                                              ; preds = %641
  %644 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %121, i32 (...)*** %644, align 8, !tbaa !12, !noalias !128
  %645 = load i64, i64* %125, align 8
  %646 = getelementptr inbounds i8, i8* %626, i64 %645
  %647 = bitcast i8* %646 to i32 (...)***
  store i32 (...)** %123, i32 (...)*** %647, align 8, !tbaa !12, !noalias !128
  %648 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %648, align 8, !tbaa !12, !noalias !128
  %649 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %650 = load i8*, i8** %649, align 8, !tbaa !26, !noalias !128
  %651 = getelementptr inbounds i8, i8* %650, i64 -24
  %652 = bitcast i8* %651 to %"struct.std::basic_string<char>::_Rep"*
  %653 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %653) #26, !noalias !128
  %654 = icmp eq i8* %651, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %654, label %669, label %655, !prof !29

655:                                              ; preds = %643
  %656 = getelementptr inbounds i8, i8* %650, i64 -8
  %657 = bitcast i8* %656 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %658, label %660

658:                                              ; preds = %655
  %659 = atomicrmw volatile add i32* %657, i32 -1 acq_rel, align 4
  br label %663

660:                                              ; preds = %655
  %661 = load i32, i32* %657, align 8, !tbaa !7
  %662 = add nsw i32 %661, -1
  store i32 %662, i32* %657, align 8, !tbaa !7
  br label %663

663:                                              ; preds = %660, %658
  %664 = phi i32 [ %659, %658 ], [ %661, %660 ]
  %665 = icmp slt i32 %664, 1
  br i1 %665, label %666, label %669

666:                                              ; preds = %663
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %652, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %669

667:                                              ; preds = %641, %627
  %668 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %626) #26, !noalias !128
  br label %903

669:                                              ; preds = %666, %663, %643
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %653) #26, !noalias !128
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %648, align 8, !tbaa !12, !noalias !128
  %670 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %670) #26
  %671 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %671) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %626) #26, !noalias !128
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %363, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %41)
          to label %672 unwind label %901

672:                                              ; preds = %669
  %673 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %41, i64 0, i32 0, i32 0
  %674 = load i8*, i8** %673, align 8, !tbaa !26
  %675 = getelementptr inbounds i8, i8* %674, i64 -24
  %676 = bitcast i8* %675 to %"struct.std::basic_string<char>::_Rep"*
  %677 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %677) #26
  %678 = icmp eq i8* %675, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %678, label %691, label %679, !prof !29

679:                                              ; preds = %672
  %680 = getelementptr inbounds i8, i8* %674, i64 -8
  %681 = bitcast i8* %680 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %682, label %684

682:                                              ; preds = %679
  %683 = atomicrmw volatile add i32* %681, i32 -1 acq_rel, align 4
  br label %687

684:                                              ; preds = %679
  %685 = load i32, i32* %681, align 8, !tbaa !7
  %686 = add nsw i32 %685, -1
  store i32 %686, i32* %681, align 8, !tbaa !7
  br label %687

687:                                              ; preds = %684, %682
  %688 = phi i32 [ %683, %682 ], [ %685, %684 ]
  %689 = icmp slt i32 %688, 1
  br i1 %689, label %690, label %691

690:                                              ; preds = %687
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %676, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %691

691:                                              ; preds = %672, %687, %690
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %677) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %623) #26
  invoke fastcc void @_ZN6appsdkL15printStatisticsEPSsS0_i(%"class.std::basic_string"* nonnull %50, %"class.std::basic_string"* nonnull %62)
          to label %692 unwind label %855

692:                                              ; preds = %691
  %693 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %694 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 3, i32 0, i32 0
  %695 = load i8*, i8** %694, align 8, !tbaa !26
  %696 = getelementptr inbounds i8, i8* %695, i64 -24
  %697 = bitcast i8* %696 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %693) #26
  %698 = icmp eq i8* %696, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %698, label %711, label %699, !prof !29

699:                                              ; preds = %692
  %700 = getelementptr inbounds i8, i8* %695, i64 -8
  %701 = bitcast i8* %700 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %702, label %704

702:                                              ; preds = %699
  %703 = atomicrmw volatile add i32* %701, i32 -1 acq_rel, align 4
  br label %707

704:                                              ; preds = %699
  %705 = load i32, i32* %701, align 8, !tbaa !7
  %706 = add nsw i32 %705, -1
  store i32 %706, i32* %701, align 8, !tbaa !7
  br label %707

707:                                              ; preds = %704, %702
  %708 = phi i32 [ %703, %702 ], [ %705, %704 ]
  %709 = icmp slt i32 %708, 1
  br i1 %709, label %710, label %711

710:                                              ; preds = %707
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %697, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %711

711:                                              ; preds = %692, %707, %710
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %693) #26
  %712 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 2, i32 0, i32 0
  %713 = load i8*, i8** %712, align 16, !tbaa !26
  %714 = getelementptr inbounds i8, i8* %713, i64 -24
  %715 = bitcast i8* %714 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %693) #26
  %716 = icmp eq i8* %714, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %716, label %729, label %717, !prof !29

717:                                              ; preds = %711
  %718 = getelementptr inbounds i8, i8* %713, i64 -8
  %719 = bitcast i8* %718 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %723, label %720

720:                                              ; preds = %717
  %721 = load i32, i32* %719, align 8, !tbaa !7
  %722 = add nsw i32 %721, -1
  store i32 %722, i32* %719, align 8, !tbaa !7
  br label %725

723:                                              ; preds = %717
  %724 = atomicrmw volatile add i32* %719, i32 -1 acq_rel, align 4
  br label %725

725:                                              ; preds = %723, %720
  %726 = phi i32 [ %724, %723 ], [ %721, %720 ]
  %727 = icmp slt i32 %726, 1
  br i1 %727, label %728, label %729

728:                                              ; preds = %725
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %715, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %729

729:                                              ; preds = %728, %725, %711
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %693) #26
  %730 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 1, i32 0, i32 0
  %731 = load i8*, i8** %730, align 8, !tbaa !26
  %732 = getelementptr inbounds i8, i8* %731, i64 -24
  %733 = bitcast i8* %732 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %693) #26
  %734 = icmp eq i8* %732, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %734, label %747, label %735, !prof !29

735:                                              ; preds = %729
  %736 = getelementptr inbounds i8, i8* %731, i64 -8
  %737 = bitcast i8* %736 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %741, label %738

738:                                              ; preds = %735
  %739 = load i32, i32* %737, align 8, !tbaa !7
  %740 = add nsw i32 %739, -1
  store i32 %740, i32* %737, align 8, !tbaa !7
  br label %743

741:                                              ; preds = %735
  %742 = atomicrmw volatile add i32* %737, i32 -1 acq_rel, align 4
  br label %743

743:                                              ; preds = %741, %738
  %744 = phi i32 [ %742, %741 ], [ %739, %738 ]
  %745 = icmp slt i32 %744, 1
  br i1 %745, label %746, label %747

746:                                              ; preds = %743
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %733, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %747

747:                                              ; preds = %746, %743, %729
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %693) #26
  %748 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 0, i32 0, i32 0
  %749 = load i8*, i8** %748, align 16, !tbaa !26
  %750 = getelementptr inbounds i8, i8* %749, i64 -24
  %751 = bitcast i8* %750 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %693) #26
  %752 = icmp eq i8* %750, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %752, label %765, label %753, !prof !29

753:                                              ; preds = %747
  %754 = getelementptr inbounds i8, i8* %749, i64 -8
  %755 = bitcast i8* %754 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %759, label %756

756:                                              ; preds = %753
  %757 = load i32, i32* %755, align 8, !tbaa !7
  %758 = add nsw i32 %757, -1
  store i32 %758, i32* %755, align 8, !tbaa !7
  br label %761

759:                                              ; preds = %753
  %760 = atomicrmw volatile add i32* %755, i32 -1 acq_rel, align 4
  br label %761

761:                                              ; preds = %759, %756
  %762 = phi i32 [ %760, %759 ], [ %757, %756 ]
  %763 = icmp slt i32 %762, 1
  br i1 %763, label %764, label %765

764:                                              ; preds = %761
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %751, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %765

765:                                              ; preds = %764, %761, %747
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %693) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %61) #26
  %766 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %767 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 3, i32 0, i32 0
  %768 = load i8*, i8** %767, align 8, !tbaa !26
  %769 = getelementptr inbounds i8, i8* %768, i64 -24
  %770 = bitcast i8* %769 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %766) #26
  %771 = icmp eq i8* %769, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %771, label %784, label %772, !prof !29

772:                                              ; preds = %765
  %773 = getelementptr inbounds i8, i8* %768, i64 -8
  %774 = bitcast i8* %773 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %775, label %777

775:                                              ; preds = %772
  %776 = atomicrmw volatile add i32* %774, i32 -1 acq_rel, align 4
  br label %780

777:                                              ; preds = %772
  %778 = load i32, i32* %774, align 8, !tbaa !7
  %779 = add nsw i32 %778, -1
  store i32 %779, i32* %774, align 8, !tbaa !7
  br label %780

780:                                              ; preds = %777, %775
  %781 = phi i32 [ %776, %775 ], [ %778, %777 ]
  %782 = icmp slt i32 %781, 1
  br i1 %782, label %783, label %784

783:                                              ; preds = %780
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %770, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %784

784:                                              ; preds = %765, %780, %783
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %766) #26
  %785 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 2, i32 0, i32 0
  %786 = load i8*, i8** %785, align 16, !tbaa !26
  %787 = getelementptr inbounds i8, i8* %786, i64 -24
  %788 = bitcast i8* %787 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %766) #26
  %789 = icmp eq i8* %787, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %789, label %802, label %790, !prof !29

790:                                              ; preds = %784
  %791 = getelementptr inbounds i8, i8* %786, i64 -8
  %792 = bitcast i8* %791 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %796, label %793

793:                                              ; preds = %790
  %794 = load i32, i32* %792, align 8, !tbaa !7
  %795 = add nsw i32 %794, -1
  store i32 %795, i32* %792, align 8, !tbaa !7
  br label %798

796:                                              ; preds = %790
  %797 = atomicrmw volatile add i32* %792, i32 -1 acq_rel, align 4
  br label %798

798:                                              ; preds = %796, %793
  %799 = phi i32 [ %797, %796 ], [ %794, %793 ]
  %800 = icmp slt i32 %799, 1
  br i1 %800, label %801, label %802

801:                                              ; preds = %798
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %788, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %802

802:                                              ; preds = %801, %798, %784
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %766) #26
  %803 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 1, i32 0, i32 0
  %804 = load i8*, i8** %803, align 8, !tbaa !26
  %805 = getelementptr inbounds i8, i8* %804, i64 -24
  %806 = bitcast i8* %805 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %766) #26
  %807 = icmp eq i8* %805, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %807, label %820, label %808, !prof !29

808:                                              ; preds = %802
  %809 = getelementptr inbounds i8, i8* %804, i64 -8
  %810 = bitcast i8* %809 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %814, label %811

811:                                              ; preds = %808
  %812 = load i32, i32* %810, align 8, !tbaa !7
  %813 = add nsw i32 %812, -1
  store i32 %813, i32* %810, align 8, !tbaa !7
  br label %816

814:                                              ; preds = %808
  %815 = atomicrmw volatile add i32* %810, i32 -1 acq_rel, align 4
  br label %816

816:                                              ; preds = %814, %811
  %817 = phi i32 [ %815, %814 ], [ %812, %811 ]
  %818 = icmp slt i32 %817, 1
  br i1 %818, label %819, label %820

819:                                              ; preds = %816
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %806, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %820

820:                                              ; preds = %819, %816, %802
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %766) #26
  %821 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 0, i32 0, i32 0
  %822 = load i8*, i8** %821, align 16, !tbaa !26
  %823 = getelementptr inbounds i8, i8* %822, i64 -24
  %824 = bitcast i8* %823 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %766) #26
  %825 = icmp eq i8* %823, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %825, label %838, label %826, !prof !29

826:                                              ; preds = %820
  %827 = getelementptr inbounds i8, i8* %822, i64 -8
  %828 = bitcast i8* %827 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %832, label %829

829:                                              ; preds = %826
  %830 = load i32, i32* %828, align 8, !tbaa !7
  %831 = add nsw i32 %830, -1
  store i32 %831, i32* %828, align 8, !tbaa !7
  br label %834

832:                                              ; preds = %826
  %833 = atomicrmw volatile add i32* %828, i32 -1 acq_rel, align 4
  br label %834

834:                                              ; preds = %832, %829
  %835 = phi i32 [ %833, %832 ], [ %830, %829 ]
  %836 = icmp slt i32 %835, 1
  br i1 %836, label %837, label %838

837:                                              ; preds = %834
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %824, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %838

838:                                              ; preds = %837, %834, %820
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %766) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %49) #26
  br label %917

839:                                              ; preds = %48
  %840 = landingpad { i8*, i32 }
          cleanup
  br label %848

841:                                              ; preds = %54
  %842 = landingpad { i8*, i32 }
          cleanup
  br label %845

843:                                              ; preds = %57
  %844 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %59) #26
  br label %845

845:                                              ; preds = %843, %841
  %846 = phi %"class.std::basic_string"* [ %58, %843 ], [ %55, %841 ]
  %847 = phi { i8*, i32 } [ %844, %843 ], [ %842, %841 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %56) #26
  br label %848

848:                                              ; preds = %839, %845
  %849 = phi %"class.std::basic_string"* [ %846, %845 ], [ %52, %839 ]
  %850 = phi { i8*, i32 } [ %847, %845 ], [ %840, %839 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %53) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #26
  br label %851

851:                                              ; preds = %848, %851
  %852 = phi %"class.std::basic_string"* [ %853, %851 ], [ %849, %848 ]
  %853 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %852, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %853) #26
  %854 = icmp eq %"class.std::basic_string"* %853, %50
  br i1 %854, label %915, label %851

855:                                              ; preds = %415, %412, %406, %405, %396, %97, %94, %88, %87, %78, %384, %60, %383, %691
  %856 = landingpad { i8*, i32 }
          cleanup
  br label %905

857:                                              ; preds = %99
  %858 = landingpad { i8*, i32 }
          cleanup
  br label %861

859:                                              ; preds = %150
  %860 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34) #26
  br label %861

861:                                              ; preds = %857, %148, %859
  %862 = phi { i8*, i32 } [ %860, %859 ], [ %858, %857 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #26
  br label %905

863:                                              ; preds = %172
  %864 = landingpad { i8*, i32 }
          cleanup
  br label %867

865:                                              ; preds = %219
  %866 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %35) #26
  br label %867

867:                                              ; preds = %863, %217, %865
  %868 = phi { i8*, i32 } [ %866, %865 ], [ %864, %863 ], [ %218, %217 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %173) #26
  br label %905

869:                                              ; preds = %242
  %870 = landingpad { i8*, i32 }
          cleanup
  br label %873

871:                                              ; preds = %290
  %872 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36) #26
  br label %873

873:                                              ; preds = %869, %288, %871
  %874 = phi { i8*, i32 } [ %872, %871 ], [ %870, %869 ], [ %289, %288 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %243) #26
  br label %905

875:                                              ; preds = %313
  %876 = landingpad { i8*, i32 }
          cleanup
  br label %879

877:                                              ; preds = %360
  %878 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %37) #26
  br label %879

879:                                              ; preds = %875, %358, %877
  %880 = phi { i8*, i32 } [ %878, %877 ], [ %876, %875 ], [ %359, %358 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %314) #26
  br label %905

881:                                              ; preds = %417
  %882 = landingpad { i8*, i32 }
          cleanup
  br label %885

883:                                              ; preds = %463
  %884 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %38) #26
  br label %885

885:                                              ; preds = %881, %461, %883
  %886 = phi { i8*, i32 } [ %884, %883 ], [ %882, %881 ], [ %462, %461 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %418) #26
  br label %905

887:                                              ; preds = %485
  %888 = landingpad { i8*, i32 }
          cleanup
  br label %891

889:                                              ; preds = %531
  %890 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %39) #26
  br label %891

891:                                              ; preds = %887, %529, %889
  %892 = phi { i8*, i32 } [ %890, %889 ], [ %888, %887 ], [ %530, %529 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %486) #26
  br label %905

893:                                              ; preds = %553
  %894 = landingpad { i8*, i32 }
          cleanup
  br label %897

895:                                              ; preds = %600
  %896 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %40) #26
  br label %897

897:                                              ; preds = %893, %598, %895
  %898 = phi { i8*, i32 } [ %896, %895 ], [ %894, %893 ], [ %599, %598 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %554) #26
  br label %905

899:                                              ; preds = %622
  %900 = landingpad { i8*, i32 }
          cleanup
  br label %903

901:                                              ; preds = %669
  %902 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %41) #26
  br label %903

903:                                              ; preds = %899, %667, %901
  %904 = phi { i8*, i32 } [ %902, %901 ], [ %900, %899 ], [ %668, %667 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %623) #26
  br label %905

905:                                              ; preds = %903, %897, %891, %885, %879, %873, %867, %861, %855
  %906 = phi { i8*, i32 } [ %856, %855 ], [ %904, %903 ], [ %898, %897 ], [ %892, %891 ], [ %886, %885 ], [ %880, %879 ], [ %874, %873 ], [ %868, %867 ], [ %862, %861 ]
  %907 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %907) #26
  %908 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %908) #26
  %909 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %909) #26
  %910 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %33, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %910) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %61) #26
  %911 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %911) #26
  %912 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %912) #26
  %913 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %913) #26
  %914 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %28, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %914) #26
  br label %915

915:                                              ; preds = %851, %905
  %916 = phi { i8*, i32 } [ %906, %905 ], [ %850, %851 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %49) #26
  resume { i8*, i32 } %916

917:                                              ; preds = %838, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL15printStatisticsEPSsS0_i(%"class.std::basic_string"* nocapture readonly %0, %"class.std::basic_string"* nocapture readonly %1) unnamed_addr #9 {
  %3 = tail call noalias nonnull dereferenceable(16) i8* @_Znam(i64 16) #27
  %4 = bitcast i8* %3 to i32*
  %5 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %6 = getelementptr i8, i8* %5, i64 -24
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 240
  %11 = bitcast i8* %10 to %"class.std::ctype"**
  %12 = load %"class.std::ctype"*, %"class.std::ctype"** %11, align 8, !tbaa !14
  %13 = icmp eq %"class.std::ctype"* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %12, i64 0, i32 8
  %17 = load i8, i8* %16, align 8, !tbaa !17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %12, i64 0, i32 9, i64 10
  %21 = load i8, i8* %20, align 1, !tbaa !19
  br label %28

22:                                               ; preds = %15
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %12)
  %23 = bitcast %"class.std::ctype"* %12 to i8 (%"class.std::ctype"*, i8)***
  %24 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %23, align 8, !tbaa !12
  %25 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %24, i64 6
  %26 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %25, align 8
  %27 = tail call signext i8 %26(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %12, i8 signext 10)
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi i8 [ %21, %19 ], [ %27, %22 ]
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %29)
  %31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %30)
  %32 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %31, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %33 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8, !tbaa !26
  %35 = getelementptr inbounds i8, i8* %34, i64 -24
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !42
  %38 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !26
  %40 = getelementptr inbounds i8, i8* %39, i64 -24
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !42
  %43 = icmp ugt i64 %37, %42
  %44 = select i1 %43, i64 %37, i64 %42
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4, !tbaa !7
  %46 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %47 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %48 = getelementptr i8, i8* %47, i64 -24
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %50
  %52 = shl i64 %44, 32
  %53 = add i64 %52, 4294967296
  %54 = ashr exact i64 %53, 32
  %55 = getelementptr inbounds i8, i8* %51, i64 16
  %56 = bitcast i8* %55 to i64*
  store i64 %54, i64* %56, align 8, !tbaa !131
  %57 = load i64, i64* %49, align 8
  %58 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 24
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 8, !tbaa !103
  %62 = and i32 %61, -177
  %63 = or i32 %62, 32
  store i32 %63, i32* %60, align 8, !tbaa !109
  %64 = load i8*, i8** %33, align 8, !tbaa !26
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !42
  %68 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %64, i64 %67)
  %69 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %68, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %70 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 1, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8, !tbaa !26
  %72 = getelementptr inbounds i8, i8* %71, i64 -24
  %73 = bitcast i8* %72 to i64*
  %74 = load i64, i64* %73, align 8, !tbaa !42
  %75 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 1, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8, !tbaa !26
  %77 = getelementptr inbounds i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !42
  %80 = icmp ugt i64 %74, %79
  %81 = select i1 %80, i64 %74, i64 %79
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %82, i32* %83, align 4, !tbaa !7
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %85 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %86 = getelementptr i8, i8* %85, i64 -24
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %88
  %90 = shl i64 %81, 32
  %91 = add i64 %90, 4294967296
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds i8, i8* %89, i64 16
  %94 = bitcast i8* %93 to i64*
  store i64 %92, i64* %94, align 8, !tbaa !131
  %95 = load i64, i64* %87, align 8
  %96 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 24
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* %98, align 8, !tbaa !103
  %100 = and i32 %99, -177
  %101 = or i32 %100, 32
  store i32 %101, i32* %98, align 8, !tbaa !109
  %102 = load i8*, i8** %70, align 8, !tbaa !26
  %103 = getelementptr inbounds i8, i8* %102, i64 -24
  %104 = bitcast i8* %103 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !42
  %106 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %102, i64 %105)
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %106, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %108 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 2, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8, !tbaa !26
  %110 = getelementptr inbounds i8, i8* %109, i64 -24
  %111 = bitcast i8* %110 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !42
  %113 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 2, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8, !tbaa !26
  %115 = getelementptr inbounds i8, i8* %114, i64 -24
  %116 = bitcast i8* %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !42
  %118 = icmp ugt i64 %112, %117
  %119 = select i1 %118, i64 %112, i64 %117
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %120, i32* %121, align 4, !tbaa !7
  %122 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %123 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %124 = getelementptr i8, i8* %123, i64 -24
  %125 = bitcast i8* %124 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %126
  %128 = shl i64 %119, 32
  %129 = add i64 %128, 4294967296
  %130 = ashr exact i64 %129, 32
  %131 = getelementptr inbounds i8, i8* %127, i64 16
  %132 = bitcast i8* %131 to i64*
  store i64 %130, i64* %132, align 8, !tbaa !131
  %133 = load i64, i64* %125, align 8
  %134 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %133
  %135 = getelementptr inbounds i8, i8* %134, i64 24
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 8, !tbaa !103
  %138 = and i32 %137, -177
  %139 = or i32 %138, 32
  store i32 %139, i32* %136, align 8, !tbaa !109
  %140 = load i8*, i8** %108, align 8, !tbaa !26
  %141 = getelementptr inbounds i8, i8* %140, i64 -24
  %142 = bitcast i8* %141 to i64*
  %143 = load i64, i64* %142, align 8, !tbaa !42
  %144 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %140, i64 %143)
  %145 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %144, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %146 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 3, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !26
  %148 = getelementptr inbounds i8, i8* %147, i64 -24
  %149 = bitcast i8* %148 to i64*
  %150 = load i64, i64* %149, align 8, !tbaa !42
  %151 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 3, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !26
  %153 = getelementptr inbounds i8, i8* %152, i64 -24
  %154 = bitcast i8* %153 to i64*
  %155 = load i64, i64* %154, align 8, !tbaa !42
  %156 = icmp ugt i64 %150, %155
  %157 = select i1 %156, i64 %150, i64 %155
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 %158, i32* %159, align 4, !tbaa !7
  %160 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %161 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %162 = getelementptr i8, i8* %161, i64 -24
  %163 = bitcast i8* %162 to i64*
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %164
  %166 = shl i64 %157, 32
  %167 = add i64 %166, 4294967296
  %168 = ashr exact i64 %167, 32
  %169 = getelementptr inbounds i8, i8* %165, i64 16
  %170 = bitcast i8* %169 to i64*
  store i64 %168, i64* %170, align 8, !tbaa !131
  %171 = load i64, i64* %163, align 8
  %172 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %171
  %173 = getelementptr inbounds i8, i8* %172, i64 24
  %174 = bitcast i8* %173 to i32*
  %175 = load i32, i32* %174, align 8, !tbaa !103
  %176 = and i32 %175, -177
  %177 = or i32 %176, 32
  store i32 %177, i32* %174, align 8, !tbaa !109
  %178 = load i8*, i8** %146, align 8, !tbaa !26
  %179 = getelementptr inbounds i8, i8* %178, i64 -24
  %180 = bitcast i8* %179 to i64*
  %181 = load i64, i64* %180, align 8, !tbaa !42
  %182 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %178, i64 %181)
  %183 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %182, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %184 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %185 = getelementptr i8, i8* %184, i64 -24
  %186 = bitcast i8* %185 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %187
  %189 = getelementptr inbounds i8, i8* %188, i64 240
  %190 = bitcast i8* %189 to %"class.std::ctype"**
  %191 = load %"class.std::ctype"*, %"class.std::ctype"** %190, align 8, !tbaa !14
  %192 = icmp eq %"class.std::ctype"* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %28
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

194:                                              ; preds = %28
  %195 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %191, i64 0, i32 8
  %196 = load i8, i8* %195, align 8, !tbaa !17
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %191, i64 0, i32 9, i64 10
  %200 = load i8, i8* %199, align 1, !tbaa !19
  br label %207

201:                                              ; preds = %194
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %191)
  %202 = bitcast %"class.std::ctype"* %191 to i8 (%"class.std::ctype"*, i8)***
  %203 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %202, align 8, !tbaa !12
  %204 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %203, i64 6
  %205 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %204, align 8
  %206 = tail call signext i8 %205(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %191, i8 signext 10)
  br label %207

207:                                              ; preds = %198, %201
  %208 = phi i8 [ %200, %198 ], [ %206, %201 ]
  %209 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %208)
  %210 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %209)
  %211 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %210, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %212 = load i32, i32* %4, align 4, !tbaa !7
  %213 = icmp sgt i32 %212, -2
  br i1 %213, label %366, label %330

214:                                              ; preds = %355
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

215:                                              ; preds = %355
  %216 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %364, i64 0, i32 8
  %217 = load i8, i8* %216, align 8, !tbaa !17
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %364, i64 0, i32 9, i64 10
  %221 = load i8, i8* %220, align 1, !tbaa !19
  br label %228

222:                                              ; preds = %215
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %364)
  %223 = bitcast %"class.std::ctype"* %364 to i8 (%"class.std::ctype"*, i8)***
  %224 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %223, align 8, !tbaa !12
  %225 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %224, i64 6
  %226 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %225, align 8
  %227 = tail call signext i8 %226(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %364, i8 signext 10)
  br label %228

228:                                              ; preds = %219, %222
  %229 = phi i8 [ %221, %219 ], [ %227, %222 ]
  %230 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %229)
  %231 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %230)
  %232 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %231, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %233 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %234 = add nsw i32 %212, 1
  %235 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %236 = getelementptr i8, i8* %235, i64 -24
  %237 = bitcast i8* %236 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %238
  %240 = sext i32 %234 to i64
  %241 = getelementptr inbounds i8, i8* %239, i64 16
  %242 = bitcast i8* %241 to i64*
  store i64 %240, i64* %242, align 8, !tbaa !131
  %243 = load i64, i64* %237, align 8
  %244 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %243
  %245 = getelementptr inbounds i8, i8* %244, i64 24
  %246 = bitcast i8* %245 to i32*
  %247 = load i32, i32* %246, align 8, !tbaa !103
  %248 = and i32 %247, -177
  %249 = or i32 %248, 32
  store i32 %249, i32* %246, align 8, !tbaa !109
  %250 = load i8*, i8** %38, align 8, !tbaa !26
  %251 = getelementptr inbounds i8, i8* %250, i64 -24
  %252 = bitcast i8* %251 to i64*
  %253 = load i64, i64* %252, align 8, !tbaa !42
  %254 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %250, i64 %253)
  %255 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %254, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %256 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %257 = add nsw i32 %332, 1
  %258 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %259 = getelementptr i8, i8* %258, i64 -24
  %260 = bitcast i8* %259 to i64*
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %261
  %263 = sext i32 %257 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 16
  %265 = bitcast i8* %264 to i64*
  store i64 %263, i64* %265, align 8, !tbaa !131
  %266 = load i64, i64* %260, align 8
  %267 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %266
  %268 = getelementptr inbounds i8, i8* %267, i64 24
  %269 = bitcast i8* %268 to i32*
  %270 = load i32, i32* %269, align 8, !tbaa !103
  %271 = and i32 %270, -177
  %272 = or i32 %271, 32
  store i32 %272, i32* %269, align 8, !tbaa !109
  %273 = load i8*, i8** %75, align 8, !tbaa !26
  %274 = getelementptr inbounds i8, i8* %273, i64 -24
  %275 = bitcast i8* %274 to i64*
  %276 = load i64, i64* %275, align 8, !tbaa !42
  %277 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %273, i64 %276)
  %278 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %277, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %279 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %280 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %281 = getelementptr i8, i8* %280, i64 -24
  %282 = bitcast i8* %281 to i64*
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %283
  %285 = getelementptr inbounds i8, i8* %284, i64 16
  %286 = bitcast i8* %285 to i64*
  store i64 %130, i64* %286, align 8, !tbaa !131
  %287 = load i64, i64* %282, align 8
  %288 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %287
  %289 = getelementptr inbounds i8, i8* %288, i64 24
  %290 = bitcast i8* %289 to i32*
  %291 = load i32, i32* %290, align 8, !tbaa !103
  %292 = and i32 %291, -177
  %293 = or i32 %292, 32
  store i32 %293, i32* %290, align 8, !tbaa !109
  %294 = load i8*, i8** %113, align 8, !tbaa !26
  %295 = getelementptr inbounds i8, i8* %294, i64 -24
  %296 = bitcast i8* %295 to i64*
  %297 = load i64, i64* %296, align 8, !tbaa !42
  %298 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %294, i64 %297)
  %299 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %298, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %300 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %301 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %302 = getelementptr i8, i8* %301, i64 -24
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %304
  %306 = getelementptr inbounds i8, i8* %305, i64 16
  %307 = bitcast i8* %306 to i64*
  store i64 %168, i64* %307, align 8, !tbaa !131
  %308 = load i64, i64* %303, align 8
  %309 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %308
  %310 = getelementptr inbounds i8, i8* %309, i64 24
  %311 = bitcast i8* %310 to i32*
  %312 = load i32, i32* %311, align 8, !tbaa !103
  %313 = and i32 %312, -177
  %314 = or i32 %313, 32
  store i32 %314, i32* %311, align 8, !tbaa !109
  %315 = load i8*, i8** %151, align 8, !tbaa !26
  %316 = getelementptr inbounds i8, i8* %315, i64 -24
  %317 = bitcast i8* %316 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !42
  %319 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %315, i64 %318)
  %320 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %319, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %321 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %322 = getelementptr i8, i8* %321, i64 -24
  %323 = bitcast i8* %322 to i64*
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %324
  %326 = getelementptr inbounds i8, i8* %325, i64 240
  %327 = bitcast i8* %326 to %"class.std::ctype"**
  %328 = load %"class.std::ctype"*, %"class.std::ctype"** %327, align 8, !tbaa !14
  %329 = icmp eq %"class.std::ctype"* %328, null
  br i1 %329, label %371, label %372

330:                                              ; preds = %366, %207
  %331 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %332 = load i32, i32* %83, align 4, !tbaa !7
  %333 = icmp sgt i32 %332, -2
  br i1 %333, label %334, label %339

334:                                              ; preds = %330, %334
  %335 = phi i32 [ %337, %334 ], [ 0, %330 ]
  %336 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %337 = add nuw nsw i32 %335, 1
  %338 = icmp sgt i32 %335, %332
  br i1 %338, label %339, label %334, !llvm.loop !132

339:                                              ; preds = %334, %330
  %340 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %341 = icmp sgt i32 %120, -2
  br i1 %341, label %342, label %347

342:                                              ; preds = %339, %342
  %343 = phi i32 [ %345, %342 ], [ 0, %339 ]
  %344 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %345 = add nuw nsw i32 %343, 1
  %346 = icmp sgt i32 %343, %120
  br i1 %346, label %347, label %342, !llvm.loop !132

347:                                              ; preds = %342, %339
  %348 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %349 = icmp sgt i32 %158, -2
  br i1 %349, label %350, label %355

350:                                              ; preds = %347, %350
  %351 = phi i32 [ %353, %350 ], [ 0, %347 ]
  %352 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %353 = add nuw nsw i32 %351, 1
  %354 = icmp sgt i32 %351, %158
  br i1 %354, label %355, label %350, !llvm.loop !132

355:                                              ; preds = %350, %347
  %356 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
  %357 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %358 = getelementptr i8, i8* %357, i64 -24
  %359 = bitcast i8* %358 to i64*
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %360
  %362 = getelementptr inbounds i8, i8* %361, i64 240
  %363 = bitcast i8* %362 to %"class.std::ctype"**
  %364 = load %"class.std::ctype"*, %"class.std::ctype"** %363, align 8, !tbaa !14
  %365 = icmp eq %"class.std::ctype"* %364, null
  br i1 %365, label %214, label %215

366:                                              ; preds = %207, %366
  %367 = phi i32 [ %369, %366 ], [ 0, %207 ]
  %368 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %369 = add nuw nsw i32 %367, 1
  %370 = icmp sgt i32 %367, %212
  br i1 %370, label %330, label %366, !llvm.loop !132

371:                                              ; preds = %228
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

372:                                              ; preds = %228
  %373 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %328, i64 0, i32 8
  %374 = load i8, i8* %373, align 8, !tbaa !17
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %328, i64 0, i32 9, i64 10
  %378 = load i8, i8* %377, align 1, !tbaa !19
  br label %385

379:                                              ; preds = %372
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %328)
  %380 = bitcast %"class.std::ctype"* %328 to i8 (%"class.std::ctype"*, i8)***
  %381 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %380, align 8, !tbaa !12
  %382 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %381, i64 6
  %383 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %382, align 8
  %384 = tail call signext i8 %383(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %328, i8 signext 10)
  br label %385

385:                                              ; preds = %376, %379
  %386 = phi i8 [ %378, %376 ], [ %384, %379 ]
  %387 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %386)
  %388 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %387)
  tail call void @_ZdaPv(i8* nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN17SimpleConvolution7cleanupEv(%class.SimpleConvolution* nocapture nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 21
  %3 = bitcast i32** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !47
  %5 = tail call i32 @hipFree(i8* %4)
  %6 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 22
  %7 = bitcast float** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !56
  %9 = tail call i32 @hipFree(i8* %8)
  %10 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 23
  %11 = bitcast i32** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !55
  %13 = tail call i32 @hipFree(i8* %12)
  %14 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 25
  %15 = bitcast float** %14 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !49
  %17 = tail call i32 @hipFree(i8* %16)
  %18 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 26
  %19 = bitcast float** %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !50
  %21 = tail call i32 @hipFree(i8* %20)
  %22 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 27
  %23 = bitcast float** %22 to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !51
  %25 = tail call i32 @hipFree(i8* %24)
  %26 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 8
  %27 = load i32*, i32** %26, align 8, !tbaa !25
  %28 = icmp eq i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = bitcast i32* %27 to i8*
  tail call void @free(i8* %30) #26
  store i32* null, i32** %26, align 8, !tbaa !25
  br label %31

31:                                               ; preds = %29, %1
  %32 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 9
  %33 = load i32*, i32** %32, align 8, !tbaa !36
  %34 = icmp eq i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = bitcast i32* %33 to i8*
  tail call void @free(i8* %36) #26
  store i32* null, i32** %32, align 8, !tbaa !36
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 11
  %39 = load i32*, i32** %38, align 8, !tbaa !30
  %40 = icmp eq i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = bitcast i32* %39 to i8*
  tail call void @free(i8* %42) #26
  store i32* null, i32** %38, align 8, !tbaa !30
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %0, i64 0, i32 20
  %45 = load i32*, i32** %44, align 8, !tbaa !98
  %46 = icmp eq i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = bitcast i32* %45 to i8*
  tail call void @free(i8* %48) #26
  store i32* null, i32** %44, align 8, !tbaa !98
  br label %49

49:                                               ; preds = %47, %43
  ret i32 0
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #15

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %class.SimpleConvolution, align 8
  %4 = bitcast %class.SimpleConvolution* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %4) #26
  %5 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #27
  %6 = bitcast i8* %5 to %"class.appsdk::HIPCommandArgs"*
  %7 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %8, align 8, !tbaa !65
  %9 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 8, i32 0
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %10, align 8, !tbaa !7
  %11 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %11, align 8, !tbaa !133
  %12 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 1
  store i32 0, i32* %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 2
  store i32 0, i32* %14, align 4, !tbaa !134
  %15 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 4
  %16 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 3
  %17 = bitcast i8*** %15 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store i32 123, i32* %16, align 8, !tbaa !135
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 9
  store i8 0, i8* %18, align 4, !tbaa !136
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 10
  store i8 0, i8* %19, align 1, !tbaa !96
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 11
  store i8 0, i8* %20, align 2, !tbaa !99
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !12
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 1
  store i32 0, i32* %21, align 8, !tbaa !137
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 2
  store i8 0, i8* %22, align 4, !tbaa !139
  %23 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 33
  %24 = bitcast %"class.appsdk::HIPCommandArgs"** %23 to i8**
  store i8* %5, i8** %24, align 8, !tbaa !64
  %25 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false) #26
  %26 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 32
  %27 = bitcast %"class.appsdk::SDKTimer"** %26 to i8**
  store i8* %25, i8** %27, align 8, !tbaa !76
  %28 = bitcast i8* %5 to %"class.appsdk::SDKCmdArgsParser"*
  %29 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %28, i64 0, i32 12
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i64 20)
  %31 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 0
  store i32 123, i32* %31, align 8, !tbaa !140
  %32 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 8
  store i32* null, i32** %32, align 8, !tbaa !25
  %33 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 10
  %34 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 20
  store i32* null, i32** %34, align 8, !tbaa !98
  %35 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 4
  %36 = bitcast float** %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %36, i8 0, i64 32, i1 false)
  store i32 512, i32* %35, align 8, !tbaa !23
  %37 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 5
  store i32 512, i32* %37, align 4, !tbaa !24
  %38 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 1
  %39 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 31
  %40 = bitcast double* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  store i32 1, i32* %39, align 4, !tbaa !91
  %41 = getelementptr inbounds %class.SimpleConvolution, %class.SimpleConvolution* %3, i64 0, i32 30
  store i32 256, i32* %41, align 8, !tbaa !52
  %42 = call i32 @_ZN17SimpleConvolution10initializeEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %2
  %45 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %23, align 8, !tbaa !64
  %46 = bitcast %"class.appsdk::HIPCommandArgs"* %45 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %47 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %46, align 8, !tbaa !12
  %48 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %47, align 8
  %49 = call i32 %48(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %45, i32 %0, i8** %1)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = call i32 @_ZN17SimpleConvolution5setupEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %3)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = call i32 @_ZN17SimpleConvolution3runEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %3)
  %56 = call i32 @_ZN17SimpleConvolution13verifyResultsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %3)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @_ZN17SimpleConvolution7cleanupEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %3)
  call void @_ZN17SimpleConvolution10printStatsEv(%class.SimpleConvolution* nonnull align 8 dereferenceable(224) %3)
  br label %60

60:                                               ; preds = %58, %51, %54, %44, %2
  %61 = phi i32 [ 1, %2 ], [ 1, %44 ], [ 0, %58 ], [ %52, %51 ], [ 1, %54 ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %4) #26
  ret i32 %61
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #13

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #17

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
  store i32 %1, i32* %23, align 4, !tbaa !134
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !141
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
  br i1 %37, label %28, label %38, !llvm.loop !142

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !134
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !141
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !19
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #26
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !134
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !143

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !26
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #26
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !29

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
  call void @exit(i32 0) #30
  unreachable

86:                                               ; preds = %3, %38
  %87 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %87) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !134
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !141
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !19
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #26
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !134
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !143

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !26
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #26
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !29

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
  call void @exit(i32 0) #30
  unreachable

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %132) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !134
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !141
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !19
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #26
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !134
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !143

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !134
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !141
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !19
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !19
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #26
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !134
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !143

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !26
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #26
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !29

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
  %207 = load i8*, i8** %206, align 8, !tbaa !26
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #26
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !29

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
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !26
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
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !134
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !141
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !19
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #26
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !134
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !143

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !134
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !141
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !19
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !19
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #26
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !134
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !143

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !26
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #26
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !29

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
  %313 = load i8*, i8** %312, align 8, !tbaa !26
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #26
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !29

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
  store i8 1, i8* %332, align 4, !tbaa !139
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
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !12
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !73
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
  tail call void @_ZdaPv(i8* nonnull %10) #28
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 12, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !26
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #26
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !29

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
  %42 = load i8*, i8** %41, align 8, !tbaa !26
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #26
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !29

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
define linkonce_odr dso_local void @_ZN6appsdk14HIPCommandArgsD0Ev(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  tail call void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(93) %2) #26
  %3 = bitcast %"class.appsdk::HIPCommandArgs"* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %3) #28
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #18

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !19
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !19
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !70
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !73
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !70
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !144

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !73
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !73
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !66
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !69
  store i8 1, i8* %44, align 1, !tbaa !145
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !69
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), float* %52) #26
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %62
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = getelementptr inbounds i8, i8* %63, i64 32
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !146
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #26
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !69
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), double* %81) #26
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %91
  %93 = bitcast i8* %92 to %"class.std::basic_ios"*
  %94 = getelementptr inbounds i8, i8* %92, i64 32
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !146
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #26
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !69
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i32* %110) #26
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = bitcast i8* %121 to %"class.std::basic_ios"*
  %123 = getelementptr inbounds i8, i8* %121, i64 32
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !146
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #26
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !69
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !26
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !26
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #26
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !29

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
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !26
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !29

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !147
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !42
  store i8 0, i8* %144, align 1, !tbaa !19
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #26
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %182
  %184 = bitcast i8* %183 to %"class.std::basic_ios"*
  %185 = getelementptr inbounds i8, i8* %183, i64 32
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 8, !tbaa !146
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #26
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !70
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !144

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nounwind
declare dso_local void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #19

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !103
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !109
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !131
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !103
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !109
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !131
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !70
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !73
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !26
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !42
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !103
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !109
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #26
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !65, !alias.scope !148
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !65, !noalias !151
  store i8* %95, i8** %47, align 8, !tbaa !65, !alias.scope !151
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !26, !noalias !151
  %96 = load i8*, i8** %47, align 8, !tbaa !26
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !42
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !29

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
  %117 = load i8*, i8** %46, align 8, !tbaa !26
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #26
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !29

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
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !103
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !109
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #26
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !73
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !65, !alias.scope !154
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !26, !noalias !154
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !42, !noalias !154
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 2)
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
  %170 = load i8*, i8** %51, align 8, !tbaa !26
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !42
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !26
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #26
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !29

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
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !73
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !26
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !42
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !12
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !103
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !109
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !131
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
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.83, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #26
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !73
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #26
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !26
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !42
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !26
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #26
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !29

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
  %249 = load i32, i32* %42, align 8, !tbaa !70
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !157

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
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #20

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88), i32) unnamed_addr #5 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88)) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80)) local_unnamed_addr #5 align 2

declare dso_local void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_simpleconvolution.cpp() #5 section ".text.startup" {
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, float*, i32*, i64, i64, i32)** @_Z29simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, float*, float*, i64, i32, i64)** @_Z31simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_ to i8*), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32*, i64, i32, i64)** @_Z31simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_ to i8*), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #21

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
attributes #7 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
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
!9 = !{!10, !8, i64 96}
!10 = !{!"_ZTS17SimpleConvolution", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !8, i64 96, !8, i64 100, !4, i64 104, !4, i64 112, !8, i64 120, !8, i64 124, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !4, i64 208, !4, i64 216}
!11 = !{!"double", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = !{!15, !4, i64 240}
!15 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !16, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!16 = !{!"bool", !5, i64 0}
!17 = !{!18, !5, i64 56}
!18 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !16, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!19 = !{!5, !5, i64 0}
!20 = !{!10, !4, i64 88}
!21 = !{!10, !4, i64 104}
!22 = !{!10, !4, i64 112}
!23 = !{!10, !8, i64 32}
!24 = !{!10, !8, i64 36}
!25 = !{!10, !4, i64 48}
!26 = !{!27, !4, i64 0}
!27 = !{!"_ZTSSs", !28, i64 0}
!28 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!10, !4, i64 72}
!31 = !{!10, !4, i64 80}
!32 = !{!10, !8, i64 120}
!33 = !{!10, !8, i64 124}
!34 = !{!10, !8, i64 44}
!35 = !{!10, !8, i64 40}
!36 = !{!10, !4, i64 56}
!37 = !{!10, !4, i64 64}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unswitch.partial.disable"}
!41 = distinct !{!41, !39}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSNSs9_Rep_baseE", !44, i64 0, !44, i64 8, !8, i64 16}
!44 = !{!"long", !5, i64 0}
!45 = distinct !{!45, !39}
!46 = distinct !{!46, !39}
!47 = !{!10, !4, i64 136}
!48 = !{!10, !8, i64 100}
!49 = !{!10, !4, i64 168}
!50 = !{!10, !4, i64 176}
!51 = !{!10, !4, i64 184}
!52 = !{!10, !8, i64 200}
!53 = !{!10, !8, i64 196}
!54 = !{!10, !8, i64 192}
!55 = !{!10, !4, i64 152}
!56 = !{!10, !4, i64 144}
!57 = !{!10, !4, i64 160}
!58 = distinct !{!58, !39, !40}
!59 = distinct !{!59, !39}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !5, i64 0}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39}
!64 = !{!10, !4, i64 216}
!65 = !{!28, !4, i64 0}
!66 = !{!67, !68, i64 32}
!67 = !{!"_ZTSN6appsdk6OptionE", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !68, i64 32, !4, i64 40}
!68 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!69 = !{!67, !4, i64 40}
!70 = !{!71, !8, i64 8}
!71 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !16, i64 40, !27, i64 48, !72, i64 56, !16, i64 76, !16, i64 77, !16, i64 78, !27, i64 80}
!72 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!73 = !{!71, !4, i64 32}
!74 = distinct !{!74, !39}
!75 = !{i64 0, i64 65}
!76 = !{!10, !4, i64 208}
!77 = !{!78, !4, i64 8}
!78 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!80 = !{!78, !4, i64 0}
!81 = !{!10, !11, i64 8}
!82 = !{!83, !84, i64 8}
!83 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !27, i64 0, !84, i64 8, !84, i64 16, !84, i64 24}
!84 = !{!"long long", !5, i64 0}
!85 = !{!78, !4, i64 16}
!86 = !{!87, !44, i64 0}
!87 = !{!"_ZTS7timeval", !44, i64 0, !44, i64 8}
!88 = !{!87, !44, i64 8}
!89 = !{!83, !84, i64 24}
!90 = !{!83, !84, i64 16}
!91 = !{!10, !8, i64 204}
!92 = distinct !{!92, !39}
!93 = !{!10, !11, i64 16}
!94 = distinct !{!94, !39}
!95 = !{!10, !11, i64 24}
!96 = !{!71, !16, i64 77}
!97 = !{i8 0, i8 2}
!98 = !{!10, !4, i64 128}
!99 = !{!71, !16, i64 78}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!102 = distinct !{!102, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!103 = !{!104, !105, i64 24}
!104 = !{!"_ZTSSt8ios_base", !44, i64 8, !44, i64 16, !105, i64 24, !106, i64 28, !106, i64 32, !4, i64 40, !107, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !108, i64 208}
!105 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!106 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!107 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !44, i64 8}
!108 = !{!"_ZTSSt6locale", !4, i64 0}
!109 = !{!105, !105, i64 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!112 = distinct !{!112, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!115 = distinct !{!115, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!118 = distinct !{!118, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!121 = distinct !{!121, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!124 = distinct !{!124, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!127 = distinct !{!127, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!130 = distinct !{!130, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!131 = !{!104, !44, i64 16}
!132 = distinct !{!132, !39}
!133 = !{!72, !8, i64 16}
!134 = !{!71, !8, i64 12}
!135 = !{!71, !8, i64 16}
!136 = !{!71, !16, i64 76}
!137 = !{!138, !8, i64 88}
!138 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !16, i64 92}
!139 = !{!138, !16, i64 92}
!140 = !{!10, !8, i64 0}
!141 = !{!71, !4, i64 24}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = distinct !{!144, !39}
!145 = !{!16, !16, i64 0}
!146 = !{!104, !106, i64 32}
!147 = !{!43, !8, i64 16}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!150 = distinct !{!150, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!153 = distinct !{!153, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!156 = distinct !{!156, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!157 = distinct !{!157, !39}
