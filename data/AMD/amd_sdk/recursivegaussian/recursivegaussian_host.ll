; ModuleID = 'recursivegaussian/recursivegaussian.cpp'
source_filename = "recursivegaussian/recursivegaussian.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i8> }
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
%class.RecursiveGaussian = type { double, double, %struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, %"class.appsdk::SDKBitMap", %struct.HIP_vector_type*, i32, %struct._GaussParms, i32, i32, i64, i64, i64, i32, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"* }
%"class.appsdk::SDKBitMap" = type <{ %"struct.appsdk::BitMapHeader", %"struct.appsdk::BitMapInfoHeader", %struct.HIP_vector_type*, i32, %struct.HIP_vector_type*, i8 }>
%"struct.appsdk::BitMapHeader" = type <{ i16, i32, i16, i16, i32 }>
%"struct.appsdk::BitMapInfoHeader" = type { i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._GaussParms = type { float, float, float, float, float, float, float, float, float, float, float, float }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ihipEvent_t = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%"class.std::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::basic_string" }

$_ZN6appsdk9SDKBitMap4loadEPKc = comdat any

$_ZN6appsdk9SDKBitMap5writeEPKc = comdat any

$_ZN6appsdk14HIPCommandArgs10initializeEv = comdat any

$_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE = comdat any

$_ZN6appsdk6OptionD2Ev = comdat any

$_ZN6appsdk8SDKTimer11createTimerEv = comdat any

$_ZN6appsdk8SDKTimer10startTimerEi = comdat any

$_ZN6appsdk8SDKTimer9stopTimerEi = comdat any

$_ZN6appsdk8SDKTimer9readTimerEi = comdat any

$_ZN17RecursiveGaussianC2Ev = comdat any

$_ZN17RecursiveGaussianD2Ev = comdat any

$_ZN6appsdk9SDKBitMapD2Ev = comdat any

$_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc = comdat any

$_ZN6appsdk16SDKCmdArgsParserD2Ev = comdat any

$_ZN6appsdk14HIPCommandArgsD0Ev = comdat any

$_ZN6appsdk16SDKCmdArgsParser5usageEv = comdat any

$_ZN6appsdk16SDKCmdArgsParser5matchEPPci = comdat any

$_ZN6appsdk16SDKCmdArgsParser4helpEv = comdat any

$_ZTSSs = comdat any

$_ZTISs = comdat any

$_ZTVN6appsdk14HIPCommandArgsE = comdat any

$_ZTSN6appsdk14HIPCommandArgsE = comdat any

$_ZTSN6appsdk16SDKCmdArgsParserE = comdat any

$_ZTIN6appsdk16SDKCmdArgsParserE = comdat any

$_ZTIN6appsdk14HIPCommandArgsE = comdat any

$_ZTVN6appsdk16SDKCmdArgsParserE = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_Z16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj = dso_local constant void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32)* @_Z31__device_stub__transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj, align 8
@_Z24RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff = dso_local constant void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, float, float, float, float, float, float, float, float)* @_Z39__device_stub__RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff, align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to load input image!\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"width = %d, height = %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Width should be a multiple of %d \0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory! (inputImageData)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"recursivegaussian/recursivegaussian.cpp\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Failed to allocate memory! (verificationInput)\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Failed to allocate memory! (outputImageData)\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed to read pixel Data!\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Failed to allocate memory! (verificationOutput)\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Number of iterations to execute kernel\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"RecursiveGaussian_Input.bmp\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"Searching for input Image at following location : \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Read Input Image Failed\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"RecursiveGaussian_Output.bmp\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Write Output Image Failed\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Failed to allocate host memory! (temp)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Time(sec)\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"[Transfer+Kernel]Time(sec)\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.52 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"readlink() failed!\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSSs = linkonce_odr dso_local constant [3 x i8] c"Ss\00", comdat, align 1
@_ZTISs = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTSSs, i32 0, i32 0) }, comdat, align 8
@.str.61 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"HIP-Examples-Applications-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.67 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.74 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.81 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [52 x i8] c"_Z16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj\00", align 1
@1 = private unnamed_addr constant [69 x i8] c"_Z24RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_recursivegaussian.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z31__device_stub__transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj(%struct.HIP_vector_type* %0, %struct.HIP_vector_type* %1, i32 %2, i32 %3, i32 %4) #3 {
  %6 = alloca %struct.HIP_vector_type*, align 8
  %7 = alloca %struct.HIP_vector_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %6, align 8, !tbaa !3
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %7, align 8, !tbaa !3
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  store i32 %4, i32* %10, align 4, !tbaa !7
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %6, %struct.HIP_vector_type*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %7, %struct.HIP_vector_type*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 3
  %23 = bitcast i8** %22 to i32**
  store i32* %9, i32** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 4
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 16
  %26 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %11, %struct.dim3* nonnull %12, i64* nonnull %13, i8** nonnull %14)
  %27 = load i64, i64* %13, align 8
  %28 = bitcast i8** %14 to %struct.ihipStream_t**
  %29 = load %struct.ihipStream_t*, %struct.ihipStream_t** %28, align 8
  %30 = bitcast %struct.dim3* %11 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %struct.dim3* %12 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32)** @_Z16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: norecurse uwtable
define dso_local void @_Z39__device_stub__RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff(%struct.HIP_vector_type* %0, %struct.HIP_vector_type* %1, i32 %2, i32 %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11) #3 {
  %13 = alloca %struct.HIP_vector_type*, align 8
  %14 = alloca %struct.HIP_vector_type*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca %struct.dim3, align 8
  %26 = alloca %struct.dim3, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %13, align 8, !tbaa !3
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %14, align 8, !tbaa !3
  store i32 %2, i32* %15, align 4, !tbaa !7
  store i32 %3, i32* %16, align 4, !tbaa !7
  store float %4, float* %17, align 4, !tbaa !9
  store float %5, float* %18, align 4, !tbaa !9
  store float %6, float* %19, align 4, !tbaa !9
  store float %7, float* %20, align 4, !tbaa !9
  store float %8, float* %21, align 4, !tbaa !9
  store float %9, float* %22, align 4, !tbaa !9
  store float %10, float* %23, align 4, !tbaa !9
  store float %11, float* %24, align 4, !tbaa !9
  %29 = alloca [12 x i8*], align 16
  %30 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 0
  %31 = bitcast [12 x i8*]* %29 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %13, %struct.HIP_vector_type*** %31, align 16
  %32 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 1
  %33 = bitcast i8** %32 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %14, %struct.HIP_vector_type*** %33, align 8
  %34 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 2
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 16
  %36 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 3
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
  %38 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 4
  %39 = bitcast i8** %38 to float**
  store float* %17, float** %39, align 16
  %40 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 5
  %41 = bitcast i8** %40 to float**
  store float* %18, float** %41, align 8
  %42 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 6
  %43 = bitcast i8** %42 to float**
  store float* %19, float** %43, align 16
  %44 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 7
  %45 = bitcast i8** %44 to float**
  store float* %20, float** %45, align 8
  %46 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 8
  %47 = bitcast i8** %46 to float**
  store float* %21, float** %47, align 16
  %48 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 9
  %49 = bitcast i8** %48 to float**
  store float* %22, float** %49, align 8
  %50 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 10
  %51 = bitcast i8** %50 to float**
  store float* %23, float** %51, align 16
  %52 = getelementptr inbounds [12 x i8*], [12 x i8*]* %29, i64 0, i64 11
  %53 = bitcast i8** %52 to float**
  store float* %24, float** %53, align 8
  %54 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %25, %struct.dim3* nonnull %26, i64* nonnull %27, i8** nonnull %28)
  %55 = load i64, i64* %27, align 8
  %56 = bitcast i8** %28 to %struct.ihipStream_t**
  %57 = load %struct.ihipStream_t*, %struct.ihipStream_t** %56, align 8
  %58 = bitcast %struct.dim3* %25 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.dim3, %struct.dim3* %25, i64 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = bitcast %struct.dim3* %26 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.dim3, %struct.dim3* %26, i64 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, float, float, float, float, float, float, float, float)** @_Z24RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff to i8*), i64 %59, i32 %61, i64 %63, i32 %65, i8** nonnull %30, i64 %55, %struct.ihipStream_t* %57)
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN17RecursiveGaussian14readInputImageESs(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0, %"class.std::basic_string"* nocapture readonly %1) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca [2048 x i8], align 16
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::allocator.0", align 1
  %13 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !11
  tail call void @_ZN6appsdk9SDKBitMap4loadEPKc(%"class.appsdk::SDKBitMap"* nonnull align 1 dereferenceable(75) %13, i8* %15)
  %16 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 5
  %17 = load i8, i8* %16, align 2, !tbaa !14, !range !17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 27)
  br label %180

21:                                               ; preds = %2
  %22 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 1, i32 2
  %23 = load i32, i32* %22, align 2
  %24 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  store i32 %23, i32* %24, align 8, !tbaa !18
  %25 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 1, i32 1
  %26 = load i32, i32* %25, align 2
  %27 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  store i32 %26, i32* %27, align 4, !tbaa !23
  %28 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %23)
  %29 = load i32, i32* %27, align 4, !tbaa !23
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* %24, align 8, !tbaa !18
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %21
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %37) #28
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %37, i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 256) #28
  %39 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %37) #28
  %40 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %37, i64 %39)
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %37) #28
  br label %180

41:                                               ; preds = %32
  %42 = mul i32 %33, %29
  %43 = zext i32 %42 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = tail call noalias align 16 i8* @malloc(i64 %44) #28
  %46 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 2
  %47 = bitcast %struct.HIP_vector_type** %46 to i8**
  store i8* %45, i8** %47, align 8, !tbaa !24
  %48 = icmp eq i8* %45, null
  br i1 %48, label %49, label %111

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %50) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6)
          to label %51 unwind label %105

51:                                               ; preds = %49
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %5)
          to label %52 unwind label %107

52:                                               ; preds = %51
  %53 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %5, i64 0, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8, !tbaa !11
  %55 = getelementptr inbounds i8, i8* %54, i64 -24
  %56 = bitcast i8* %55 to %"struct.std::basic_string<char>::_Rep"*
  %57 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %57) #28
  %58 = icmp eq i8* %55, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %58, label %71, label %59, !prof !25

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, i8* %54, i64 -8
  %61 = bitcast i8* %60 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %62, label %64

62:                                               ; preds = %59
  %63 = atomicrmw volatile add i32* %61, i32 -1 acq_rel, align 4
  br label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %61, align 8, !tbaa !7
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %61, align 8, !tbaa !7
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %56, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %71

71:                                               ; preds = %52, %67, %70
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %57) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %50) #28
  %72 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 11)
  %73 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 39)
  %74 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1)
  %75 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 426)
  %76 = bitcast %"class.std::basic_ostream"* %75 to i8**
  %77 = load i8*, i8** %76, align 8, !tbaa !26
  %78 = getelementptr i8, i8* %77, i64 -24
  %79 = bitcast i8* %78 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = bitcast %"class.std::basic_ostream"* %75 to i8*
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  %83 = getelementptr inbounds i8, i8* %82, i64 240
  %84 = bitcast i8* %83 to %"class.std::ctype"**
  %85 = load %"class.std::ctype"*, %"class.std::ctype"** %84, align 8, !tbaa !28
  %86 = icmp eq %"class.std::ctype"* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  call void @_ZSt16__throw_bad_castv() #29
  unreachable

88:                                               ; preds = %71
  %89 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %85, i64 0, i32 8
  %90 = load i8, i8* %89, align 8, !tbaa !30
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %85, i64 0, i32 9, i64 10
  %94 = load i8, i8* %93, align 1, !tbaa !32
  br label %101

95:                                               ; preds = %88
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %85)
  %96 = bitcast %"class.std::ctype"* %85 to i8 (%"class.std::ctype"*, i8)***
  %97 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %96, align 8, !tbaa !26
  %98 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %97, i64 6
  %99 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %98, align 8
  %100 = call signext i8 %99(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %85, i8 signext 10)
  br label %101

101:                                              ; preds = %92, %95
  %102 = phi i8 [ %94, %92 ], [ %100, %95 ]
  %103 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %75, i8 signext %102)
  %104 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %103)
  br label %180

105:                                              ; preds = %49
  %106 = landingpad { i8*, i32 }
          cleanup
  br label %109

107:                                              ; preds = %51
  %108 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %5) #28
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi { i8*, i32 } [ %108, %107 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %50) #28
  br label %182

111:                                              ; preds = %41
  %112 = tail call noalias align 16 i8* @malloc(i64 %44) #28
  %113 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 7
  %114 = bitcast %struct.HIP_vector_type** %113 to i8**
  store i8* %112, i8** %114, align 8, !tbaa !33
  %115 = icmp eq i8* %112, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %117) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8)
          to label %118 unwind label %125

118:                                              ; preds = %116
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %7)
          to label %119 unwind label %127

119:                                              ; preds = %118
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #28
  %120 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 11)
  %121 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 39)
  %122 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1)
  %123 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 429)
  %124 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %123)
  br label %180

125:                                              ; preds = %116
  %126 = landingpad { i8*, i32 }
          cleanup
  br label %129

127:                                              ; preds = %118
  %128 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #28
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi { i8*, i32 } [ %128, %127 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %117) #28
  br label %182

131:                                              ; preds = %111
  %132 = call i8* @calloc(i64 1, i64 %44)
  %133 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 3
  %134 = bitcast %struct.HIP_vector_type** %133 to i8**
  store i8* %132, i8** %134, align 8, !tbaa !34
  %135 = icmp eq i8* %132, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %137) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10)
          to label %138 unwind label %145

138:                                              ; preds = %136
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %9)
          to label %139 unwind label %147

139:                                              ; preds = %138
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %137) #28
  %140 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 11)
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 39)
  %142 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1)
  %143 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 434)
  %144 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %143)
  br label %180

145:                                              ; preds = %136
  %146 = landingpad { i8*, i32 }
          cleanup
  br label %149

147:                                              ; preds = %138
  %148 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #28
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi { i8*, i32 } [ %148, %147 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %137) #28
  br label %182

151:                                              ; preds = %131
  %152 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 2
  %153 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %152, align 2, !tbaa !35
  %154 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 10
  store %struct.HIP_vector_type* %153, %struct.HIP_vector_type** %154, align 8, !tbaa !36
  %155 = icmp eq %struct.HIP_vector_type* %153, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 26)
  br label %180

158:                                              ; preds = %151
  %159 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %153, i64 0, i32 0, i32 0, i32 0, i64 0
  %160 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %153, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %45, i8* align 4 %160, i64 %44, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %112, i8* align 4 %159, i64 %44, i1 false)
  %161 = call i8* @calloc(i64 1, i64 %44)
  %162 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 8
  %163 = bitcast %struct.HIP_vector_type** %162 to i8**
  store i8* %161, i8** %163, align 8, !tbaa !37
  %164 = icmp eq i8* %161, null
  br i1 %164, label %165, label %180

165:                                              ; preds = %158
  %166 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %12, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %166) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %12)
          to label %167 unwind label %174

167:                                              ; preds = %165
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %11)
          to label %168 unwind label %176

168:                                              ; preds = %167
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %11) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %166) #28
  %169 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 11)
  %170 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 39)
  %171 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1)
  %172 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 454)
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %172)
  br label %180

174:                                              ; preds = %165
  %175 = landingpad { i8*, i32 }
          cleanup
  br label %178

176:                                              ; preds = %167
  %177 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %11) #28
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi { i8*, i32 } [ %177, %176 ], [ %175, %174 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %166) #28
  br label %182

180:                                              ; preds = %158, %168, %156, %139, %119, %101, %36, %19
  %181 = phi i32 [ 1, %36 ], [ 1, %101 ], [ 1, %119 ], [ 1, %139 ], [ 1, %156 ], [ 1, %168 ], [ 1, %19 ], [ 0, %158 ]
  ret i32 %181

182:                                              ; preds = %178, %149, %129, %109
  %183 = phi { i8*, i32 } [ %110, %109 ], [ %130, %129 ], [ %150, %149 ], [ %179, %178 ]
  resume { i8*, i32 } %183
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6appsdk9SDKBitMap4loadEPKc(%"class.appsdk::SDKBitMap"* nonnull align 1 dereferenceable(75) %0, i8* %1) local_unnamed_addr #5 comdat align 2 {
  %3 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 2
  %4 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %3, align 1, !tbaa !35
  %5 = icmp eq %struct.HIP_vector_type* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @_ZdaPv(i8* %7) #30
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 4
  %10 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %9, align 1, !tbaa !38
  %11 = icmp eq %struct.HIP_vector_type* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @_ZdaPv(i8* %13) #30
  br label %14

14:                                               ; preds = %8, %12
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %3, align 1, !tbaa !35
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %9, align 1, !tbaa !38
  %15 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 5
  store i8 0, i8* %15, align 1, !tbaa !14
  %16 = tail call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %176, label %18

18:                                               ; preds = %14
  %19 = bitcast %"class.appsdk::SDKBitMap"* %0 to i8*
  %20 = tail call i64 @fread(i8* nonnull %19, i64 14, i64 1, %struct._IO_FILE* nonnull %16)
  %21 = tail call i32 @ferror(%struct._IO_FILE* nonnull %16) #28
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  br label %176

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 0, i32 0
  %27 = load i16, i16* %26, align 1, !tbaa !39
  %28 = icmp eq i16 %27, 19778
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  br label %176

31:                                               ; preds = %25
  %32 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1
  %33 = bitcast %"struct.appsdk::BitMapInfoHeader"* %32 to i8*
  %34 = tail call i64 @fread(i8* nonnull %33, i64 40, i64 1, %struct._IO_FILE* nonnull %16)
  %35 = tail call i32 @ferror(%struct._IO_FILE* nonnull %16) #28
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  br label %176

39:                                               ; preds = %31
  %40 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1, i32 5
  %41 = load i32, i32* %40, align 1, !tbaa !42
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  br label %176

45:                                               ; preds = %39
  %46 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1, i32 4
  %47 = load i16, i16* %46, align 1, !tbaa !44
  %48 = icmp slt i16 %47, 8
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  br label %176

51:                                               ; preds = %45
  %52 = zext i16 %47 to i32
  %53 = shl nuw i32 1, %52
  %54 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 3
  store i32 %53, i32* %54, align 1, !tbaa !45
  %55 = icmp eq i16 %47, 8
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = sext i32 %53 to i64
  %58 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %57, i64 4)
  %59 = extractvalue { i64, i1 } %58, 1
  %60 = extractvalue { i64, i1 } %58, 0
  %61 = select i1 %59, i64 -1, i64 %60
  %62 = tail call noalias nonnull i8* @_Znam(i64 %61) #31
  %63 = bitcast %struct.HIP_vector_type** %9 to i8**
  store i8* %62, i8** %63, align 1, !tbaa !38
  %64 = shl nsw i64 %57, 2
  %65 = tail call i64 @fread(i8* nonnull %62, i64 %64, i64 1, %struct._IO_FILE* nonnull %16)
  %66 = tail call i32 @ferror(%struct._IO_FILE* nonnull %16) #28
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %56
  %69 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  br label %176

70:                                               ; preds = %56, %51
  %71 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 0, i32 1
  %72 = load i32, i32* %71, align 1, !tbaa !46
  %73 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 0, i32 4
  %74 = load i32, i32* %73, align 1, !tbaa !47
  %75 = sub nsw i32 %72, %74
  %76 = zext i32 %75 to i64
  %77 = tail call noalias nonnull i8* @_Znam(i64 %76) #31
  %78 = tail call i64 @fread(i8* nonnull %77, i64 %76, i64 1, %struct._IO_FILE* nonnull %16)
  %79 = tail call i32 @ferror(%struct._IO_FILE* nonnull %16) #28
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %70
  %82 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %9, align 1, !tbaa !38
  %83 = icmp eq %struct.HIP_vector_type* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %82, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @_ZdlPv(i8* %85) #30
  br label %86

86:                                               ; preds = %84, %81
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %9, align 1, !tbaa !38
  tail call void @_ZdlPv(i8* nonnull %77) #30
  %87 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  br label %176

88:                                               ; preds = %70
  %89 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1, i32 1
  %90 = load i32, i32* %89, align 1, !tbaa !48
  %91 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1, i32 2
  %92 = load i32, i32* %91, align 1, !tbaa !49
  %93 = mul nsw i32 %92, %90
  %94 = sext i32 %93 to i64
  %95 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %94, i64 4)
  %96 = extractvalue { i64, i1 } %95, 1
  %97 = extractvalue { i64, i1 } %95, 0
  %98 = select i1 %96, i64 -1, i64 %97
  %99 = tail call noalias nonnull i8* @_Znam(i64 %98) #31
  %100 = bitcast %struct.HIP_vector_type** %3 to i8**
  store i8* %99, i8** %100, align 1, !tbaa !35
  %101 = shl nsw i64 %94, 2
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %99, i8 -1, i64 %101, i1 false)
  %102 = icmp sgt i32 %92, 0
  %103 = icmp sgt i32 %90, 0
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %110

105:                                              ; preds = %88, %112
  %106 = phi i32 [ %113, %112 ], [ %90, %88 ]
  %107 = phi i32 [ %118, %112 ], [ 0, %88 ]
  %108 = phi i32 [ %117, %112 ], [ 0, %88 ]
  %109 = icmp sgt i32 %106, 0
  br i1 %109, label %121, label %112

110:                                              ; preds = %112, %88
  %111 = tail call i32 @fclose(%struct._IO_FILE* nonnull %16)
  tail call void @_ZdaPv(i8* nonnull %77) #30
  store i8 1, i8* %15, align 1, !tbaa !14
  br label %176

112:                                              ; preds = %171, %105
  %113 = phi i32 [ %106, %105 ], [ %174, %171 ]
  %114 = phi i32 [ %108, %105 ], [ %172, %171 ]
  %115 = mul i32 %113, 253
  %116 = and i32 %115, 3
  %117 = add i32 %114, %116
  %118 = add nuw nsw i32 %107, 1
  %119 = load i32, i32* %91, align 1, !tbaa !49
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %105, label %110, !llvm.loop !50

121:                                              ; preds = %105, %171
  %122 = phi i32 [ %174, %171 ], [ %106, %105 ]
  %123 = phi i32 [ %173, %171 ], [ 0, %105 ]
  %124 = phi i32 [ %172, %171 ], [ %108, %105 ]
  %125 = load i16, i16* %46, align 1, !tbaa !44
  %126 = icmp eq i16 %125, 8
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %9, align 1, !tbaa !38
  %129 = add i32 %124, 1
  %130 = zext i32 %124 to i64
  %131 = getelementptr inbounds i8, i8* %77, i64 %130
  %132 = load i8, i8* %131, align 1, !tbaa !32
  %133 = zext i8 %132 to i64
  %134 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %3, align 1, !tbaa !35
  %135 = mul nsw i32 %122, %107
  %136 = add nsw i32 %135, %123
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %128, i64 %133, i32 0, i32 0, i32 0
  %139 = load <4 x i8>, <4 x i8>* %138, align 4, !tbaa !32
  %140 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %134, i64 %137, i32 0, i32 0, i32 0
  store <4 x i8> %139, <4 x i8>* %140, align 4, !tbaa !32
  br label %171

141:                                              ; preds = %121
  %142 = add i32 %124, 1
  %143 = zext i32 %124 to i64
  %144 = getelementptr inbounds i8, i8* %77, i64 %143
  %145 = load i8, i8* %144, align 1, !tbaa !32
  %146 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %3, align 1, !tbaa !35
  %147 = mul nsw i32 %122, %107
  %148 = add nsw i32 %147, %123
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %146, i64 %149, i32 0, i32 0, i32 0, i64 2
  store i8 %145, i8* %150, align 2, !tbaa !32
  %151 = add i32 %124, 2
  %152 = zext i32 %142 to i64
  %153 = getelementptr inbounds i8, i8* %77, i64 %152
  %154 = load i8, i8* %153, align 1, !tbaa !32
  %155 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %3, align 1, !tbaa !35
  %156 = load i32, i32* %89, align 1, !tbaa !48
  %157 = mul nsw i32 %156, %107
  %158 = add nsw i32 %157, %123
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %155, i64 %159, i32 0, i32 0, i32 0, i64 1
  store i8 %154, i8* %160, align 1, !tbaa !32
  %161 = add i32 %124, 3
  %162 = zext i32 %151 to i64
  %163 = getelementptr inbounds i8, i8* %77, i64 %162
  %164 = load i8, i8* %163, align 1, !tbaa !32
  %165 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %3, align 1, !tbaa !35
  %166 = load i32, i32* %89, align 1, !tbaa !48
  %167 = mul nsw i32 %166, %107
  %168 = add nsw i32 %167, %123
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %165, i64 %169, i32 0, i32 0, i32 0, i64 0
  store i8 %164, i8* %170, align 4, !tbaa !32
  br label %171

171:                                              ; preds = %127, %141
  %172 = phi i32 [ %129, %127 ], [ %161, %141 ]
  %173 = add nuw nsw i32 %123, 1
  %174 = load i32, i32* %89, align 1, !tbaa !48
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %121, label %112, !llvm.loop !53

176:                                              ; preds = %86, %110, %14, %68, %49, %43, %37, %29, %23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #10 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !11
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !54
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !26
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !28
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !30
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !32
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !26
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
declare dso_local void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #11 align 2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN17RecursiveGaussian16writeOutputImageESs(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0, %"class.std::basic_string"* nocapture readonly %1) local_unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 10
  %4 = bitcast %struct.HIP_vector_type** %3 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 3
  %7 = bitcast %struct.HIP_vector_type** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %10 = load i32, i32* %9, align 4, !tbaa !23
  %11 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %12 = load i32, i32* %11, align 8, !tbaa !18
  %13 = mul i32 %12, %10
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %8, i64 %15, i1 false)
  %16 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9
  %17 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 0, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !11
  %19 = tail call zeroext i1 @_ZN6appsdk9SDKBitMap5writeEPKc(%"class.appsdk::SDKBitMap"* nonnull align 1 dereferenceable(75) %16, i8* %18)
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6appsdk9SDKBitMap5writeEPKc(%"class.appsdk::SDKBitMap"* nonnull align 1 dereferenceable(75) %0, i8* %1) local_unnamed_addr #10 comdat align 2 {
  %3 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 5
  %4 = load i8, i8* %3, align 1, !tbaa !14, !range !17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %148, label %6

6:                                                ; preds = %2
  %7 = tail call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0))
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %148, label %9

9:                                                ; preds = %6
  %10 = bitcast %"class.appsdk::SDKBitMap"* %0 to i8*
  %11 = tail call i64 @fwrite(i8* nonnull %10, i64 14, i64 1, %struct._IO_FILE* nonnull %7)
  %12 = tail call i32 @ferror(%struct._IO_FILE* nonnull %7) #28
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %146

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1
  %16 = bitcast %"struct.appsdk::BitMapInfoHeader"* %15 to i8*
  %17 = tail call i64 @fwrite(i8* nonnull %16, i64 40, i64 1, %struct._IO_FILE* nonnull %7)
  %18 = tail call i32 @ferror(%struct._IO_FILE* nonnull %7) #28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %146

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1, i32 4
  %22 = load i16, i16* %21, align 1, !tbaa !44
  %23 = icmp eq i16 %22, 8
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 4
  %26 = bitcast %struct.HIP_vector_type** %25 to i8**
  %27 = load i8*, i8** %26, align 1, !tbaa !38
  %28 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 3
  %29 = load i32, i32* %28, align 1, !tbaa !45
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call i64 @fwrite(i8* %27, i64 %31, i64 1, %struct._IO_FILE* nonnull %7)
  %33 = tail call i32 @ferror(%struct._IO_FILE* nonnull %7) #28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %146

35:                                               ; preds = %24, %20
  %36 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1, i32 2
  %37 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 1, i32 1
  %38 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 2
  %39 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 3
  %40 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 4
  %41 = load i32, i32* %36, align 1, !tbaa !49
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %148

43:                                               ; preds = %35
  %44 = load i32, i32* %37, align 1, !tbaa !48
  br label %45

45:                                               ; preds = %43, %133
  %46 = phi i32 [ %134, %133 ], [ %44, %43 ]
  %47 = phi i32 [ %135, %133 ], [ 0, %43 ]
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %129, %45
  %50 = phi i32 [ %46, %45 ], [ %131, %129 ]
  %51 = mul i32 %50, 253
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %133, label %138

54:                                               ; preds = %45, %129
  %55 = phi i32 [ %131, %129 ], [ %46, %45 ]
  %56 = phi i32 [ %130, %129 ], [ 0, %45 ]
  %57 = load i16, i16* %21, align 1, !tbaa !44
  %58 = icmp eq i16 %57, 8
  %59 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %38, align 1, !tbaa !35
  %60 = mul nsw i32 %55, %47
  %61 = add nsw i32 %60, %56
  %62 = sext i32 %61 to i64
  br i1 %58, label %63, label %104

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %59, i64 %62
  %65 = bitcast %struct.HIP_vector_type* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = lshr i32 %66, 8
  %68 = lshr i32 %66, 16
  %69 = lshr i32 %66, 24
  %70 = load i32, i32* %39, align 1, !tbaa !45
  %71 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %40, align 1
  %72 = trunc i32 %66 to i8
  %73 = trunc i32 %67 to i8
  %74 = trunc i32 %68 to i8
  %75 = icmp sgt i32 %70, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %63
  %77 = zext i32 %70 to i64
  br label %78

78:                                               ; preds = %96, %76
  %79 = phi i64 [ 0, %76 ], [ %97, %96 ]
  %80 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %71, i64 %79, i32 0, i32 0, i32 0, i64 0
  %81 = load i8, i8* %80, align 4, !tbaa !32
  %82 = icmp eq i8 %81, %72
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %71, i64 %79, i32 0, i32 0, i32 0, i64 1
  %85 = load i8, i8* %84, align 1, !tbaa !32
  %86 = icmp eq i8 %85, %73
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %71, i64 %79, i32 0, i32 0, i32 0, i64 2
  %89 = load i8, i8* %88, align 2, !tbaa !32
  %90 = icmp eq i8 %89, %74
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %71, i64 %79, i32 0, i32 0, i32 0, i64 3
  %93 = load i8, i8* %92, align 1, !tbaa !32
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %69, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %91, %87, %83, %78
  %97 = add nuw nsw i64 %79, 1
  %98 = icmp eq i64 %97, %77
  br i1 %98, label %101, label %78, !llvm.loop !56

99:                                               ; preds = %91
  %100 = trunc i64 %79 to i32
  br label %101

101:                                              ; preds = %96, %63, %99
  %102 = phi i32 [ 0, %63 ], [ %100, %99 ], [ 0, %96 ]
  %103 = tail call i32 @fputc(i32 %102, %struct._IO_FILE* nonnull %7)
  br label %129

104:                                              ; preds = %54
  %105 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %59, i64 %62, i32 0, i32 0, i32 0, i64 2
  %106 = load i8, i8* %105, align 2, !tbaa !32
  %107 = zext i8 %106 to i32
  %108 = tail call i32 @fputc(i32 %107, %struct._IO_FILE* nonnull %7)
  %109 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %38, align 1, !tbaa !35
  %110 = load i32, i32* %37, align 1, !tbaa !48
  %111 = mul nsw i32 %110, %47
  %112 = add nsw i32 %111, %56
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %109, i64 %113, i32 0, i32 0, i32 0, i64 1
  %115 = load i8, i8* %114, align 1, !tbaa !32
  %116 = zext i8 %115 to i32
  %117 = tail call i32 @fputc(i32 %116, %struct._IO_FILE* nonnull %7)
  %118 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %38, align 1, !tbaa !35
  %119 = load i32, i32* %37, align 1, !tbaa !48
  %120 = mul nsw i32 %119, %47
  %121 = add nsw i32 %120, %56
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %118, i64 %122, i32 0, i32 0, i32 0, i64 0
  %124 = load i8, i8* %123, align 4, !tbaa !32
  %125 = zext i8 %124 to i32
  %126 = tail call i32 @fputc(i32 %125, %struct._IO_FILE* nonnull %7)
  %127 = tail call i32 @ferror(%struct._IO_FILE* nonnull %7) #28
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %101, %104
  %130 = add nuw nsw i32 %56, 1
  %131 = load i32, i32* %37, align 1, !tbaa !48
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %54, label %49, !llvm.loop !57

133:                                              ; preds = %138, %49
  %134 = phi i32 [ %50, %49 ], [ %142, %138 ]
  %135 = add nuw nsw i32 %47, 1
  %136 = load i32, i32* %36, align 1, !tbaa !49
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %45, label %148, !llvm.loop !58

138:                                              ; preds = %49, %138
  %139 = phi i32 [ %141, %138 ], [ 0, %49 ]
  %140 = tail call i32 @fputc(i32 0, %struct._IO_FILE* nonnull %7)
  %141 = add nuw nsw i32 %139, 1
  %142 = load i32, i32* %37, align 1, !tbaa !48
  %143 = mul i32 %142, 253
  %144 = and i32 %143, 3
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %138, label %133, !llvm.loop !59

146:                                              ; preds = %104, %24, %14, %9
  %147 = tail call i32 @fclose(%struct._IO_FILE* nonnull %7)
  br label %148

148:                                              ; preds = %133, %146, %35, %6, %2
  %149 = phi i1 [ false, %2 ], [ false, %6 ], [ true, %35 ], [ false, %146 ], [ true, %133 ]
  ret i1 %149
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @_ZN17RecursiveGaussian17computeGaussParmsEfiP11_GaussParms(%class.RecursiveGaussian* nocapture nonnull readnone align 8 %0, float %1, i32 %2, %struct._GaussParms* nocapture %3) local_unnamed_addr #13 align 2 {
  %5 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 0
  store float %1, float* %5, align 4, !tbaa !60
  %6 = fdiv contract float 0x3FFB1EB860000000, %1
  %7 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 1
  store float %6, float* %7, align 4, !tbaa !61
  %8 = fneg contract float %6
  %9 = tail call contract float @expf(float %8) #28
  %10 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 2
  store float %9, float* %10, align 4, !tbaa !62
  %11 = load float, float* %7, align 4, !tbaa !61
  %12 = fmul contract float %11, -2.000000e+00
  %13 = tail call contract float @expf(float %12) #28
  %14 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 3
  store float %13, float* %14, align 4, !tbaa !63
  %15 = load float, float* %10, align 4, !tbaa !62
  %16 = fmul contract float %15, -2.000000e+00
  %17 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 4
  store float %16, float* %17, align 4, !tbaa !64
  %18 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 5
  store float %13, float* %18, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 6
  %20 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 7
  %21 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 8
  %22 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 9
  %23 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 10
  %24 = getelementptr inbounds %struct._GaussParms, %struct._GaussParms* %3, i64 0, i32 11
  %25 = bitcast float* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  switch i32 %2, label %95 [
    i32 0, label %26
    i32 1, label %43
    i32 2, label %47
  ]

26:                                               ; preds = %4
  %27 = fsub contract float 1.000000e+00, %15
  %28 = fmul contract float %27, %27
  %29 = load float, float* %7, align 4, !tbaa !61
  %30 = fmul contract float %29, 2.000000e+00
  %31 = fmul contract float %15, %30
  %32 = fadd contract float %31, 1.000000e+00
  %33 = fsub contract float %32, %13
  %34 = fdiv contract float %28, %33
  store float %34, float* %19, align 4, !tbaa !66
  %35 = fadd contract float %29, -1.000000e+00
  %36 = fmul contract float %35, %34
  %37 = fmul contract float %15, %36
  store float %37, float* %20, align 4, !tbaa !67
  %38 = fadd contract float %29, 1.000000e+00
  %39 = fmul contract float %38, %34
  %40 = fmul contract float %15, %39
  store float %40, float* %21, align 4, !tbaa !68
  %41 = fneg contract float %34
  %42 = fmul contract float %13, %41
  store float %42, float* %22, align 4, !tbaa !69
  br label %82

43:                                               ; preds = %4
  %44 = fsub contract float 1.000000e+00, %15
  %45 = fmul contract float %44, %44
  store float %45, float* %19, align 4, !tbaa !66
  %46 = fneg contract float %45
  store float %46, float* %21, align 4, !tbaa !68
  br label %82

47:                                               ; preds = %4
  %48 = load float, float* %7, align 4, !tbaa !61
  %49 = fneg contract float %48
  %50 = tail call contract float @expf(float %49) #28
  %51 = load float, float* %14, align 4, !tbaa !63
  %52 = fadd contract float %51, -1.000000e+00
  %53 = fneg contract float %52
  %54 = load float, float* %7, align 4, !tbaa !61
  %55 = fmul contract float %54, 2.000000e+00
  %56 = load float, float* %10, align 4, !tbaa !62
  %57 = fmul contract float %55, %56
  %58 = fdiv contract float %53, %57
  %59 = fmul contract float %50, 3.000000e+00
  %60 = fadd contract float %59, -1.000000e+00
  %61 = fmul contract float %50, %59
  %62 = fsub contract float %60, %61
  %63 = fmul contract float %50, %50
  %64 = fmul contract float %50, %63
  %65 = fadd contract float %64, %62
  %66 = fmul contract float %65, -2.000000e+00
  %67 = fadd contract float %59, 1.000000e+00
  %68 = fadd contract float %67, %61
  %69 = fadd contract float %64, %68
  %70 = fdiv contract float %66, %69
  store float %70, float* %19, align 4, !tbaa !66
  %71 = fneg contract float %70
  %72 = fmul contract float %54, %58
  %73 = fadd contract float %72, 1.000000e+00
  %74 = fmul contract float %73, %71
  %75 = fmul contract float %56, %74
  store float %75, float* %20, align 4, !tbaa !67
  %76 = fsub contract float 1.000000e+00, %72
  %77 = fmul contract float %70, %76
  %78 = fmul contract float %56, %77
  store float %78, float* %21, align 4, !tbaa !68
  %79 = fmul contract float %51, %71
  store float %79, float* %22, align 4, !tbaa !69
  %80 = load float, float* %17, align 4, !tbaa !64
  %81 = load float, float* %18, align 4, !tbaa !65
  br label %82

82:                                               ; preds = %47, %43, %26
  %83 = phi float [ %79, %47 ], [ 0.000000e+00, %43 ], [ %42, %26 ]
  %84 = phi float [ %78, %47 ], [ %46, %43 ], [ %40, %26 ]
  %85 = phi float [ %81, %47 ], [ %13, %43 ], [ %13, %26 ]
  %86 = phi float [ %80, %47 ], [ %16, %43 ], [ %16, %26 ]
  %87 = phi float [ %75, %47 ], [ 0.000000e+00, %43 ], [ %37, %26 ]
  %88 = phi float [ %70, %47 ], [ %45, %43 ], [ %34, %26 ]
  %89 = fadd contract float %88, %87
  %90 = fadd contract float %86, 1.000000e+00
  %91 = fadd contract float %90, %85
  %92 = fdiv contract float %89, %91
  store float %92, float* %23, align 4, !tbaa !70
  %93 = fadd contract float %84, %83
  %94 = fdiv contract float %93, %91
  store float %94, float* %24, align 4, !tbaa !71
  br label %95

95:                                               ; preds = %4, %82
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN17RecursiveGaussian8setupHIPEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 4
  %3 = bitcast %struct.HIP_vector_type** %2 to i8**
  %4 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %5 = load i32, i32* %4, align 4, !tbaa !23
  %6 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %7 = load i32, i32* %6, align 8, !tbaa !18
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 11
  %10 = load i32, i32* %9, align 8, !tbaa !72
  %11 = mul i32 %8, %10
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @hipMalloc(i8** nonnull %3, i64 %12)
  %14 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 6
  %15 = bitcast %struct.HIP_vector_type** %14 to i8**
  %16 = load i32, i32* %4, align 4, !tbaa !23
  %17 = load i32, i32* %6, align 8, !tbaa !18
  %18 = mul i32 %17, %16
  %19 = load i32, i32* %9, align 8, !tbaa !72
  %20 = mul i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = tail call i32 @hipMalloc(i8** nonnull %15, i64 %21)
  %23 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 5
  %24 = bitcast %struct.HIP_vector_type** %23 to i8**
  %25 = load i32, i32* %4, align 4, !tbaa !23
  %26 = load i32, i32* %6, align 8, !tbaa !18
  %27 = mul i32 %26, %25
  %28 = load i32, i32* %9, align 8, !tbaa !72
  %29 = mul i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = tail call i32 @hipMalloc(i8** nonnull %24, i64 %30)
  %32 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 17
  store i64 16, i64* %32, align 8, !tbaa !73
  ret i32 0
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN17RecursiveGaussian10runKernelsEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca %struct.HIP_vector_type*, align 8
  %3 = alloca %struct.HIP_vector_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [5 x i8*], align 16
  %12 = alloca %struct.HIP_vector_type*, align 8
  %13 = alloca %struct.HIP_vector_type*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.dim3, align 8
  %25 = alloca %struct.dim3, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [12 x i8*], align 16
  %29 = alloca %struct.HIP_vector_type*, align 8
  %30 = alloca %struct.HIP_vector_type*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.dim3, align 8
  %35 = alloca %struct.dim3, align 8
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca [5 x i8*], align 16
  %39 = alloca %struct.HIP_vector_type*, align 8
  %40 = alloca %struct.HIP_vector_type*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca %struct.dim3, align 8
  %52 = alloca %struct.dim3, align 8
  %53 = alloca i64, align 8
  %54 = alloca i8*, align 8
  %55 = alloca [12 x i8*], align 16
  %56 = alloca %struct.ihipEvent_t*, align 8
  %57 = alloca %struct.ihipEvent_t*, align 8
  %58 = alloca float, align 4
  %59 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 0
  %60 = bitcast float* %59 to <4 x float>*
  store <4 x float> <float 1.000000e+01, float 0x3FC5B22D20000000, float 0x3FEB02C240000000, float 0x3FE6CCA800000000>, <4 x float>* %60, align 4, !tbaa !9
  %61 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 4
  %62 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 5
  %63 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 6
  %64 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 7
  %65 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 8
  %66 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 9
  %67 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 10
  %68 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 11
  %69 = bitcast float* %61 to <4 x float>*
  store <4 x float> <float 0xBFFB02C240000000, float 0x3FE6CCA800000000, float 0x3FA5B22B20000000, float 0xBF9E6B19A0000000>, <4 x float>* %69, align 4, !tbaa !9
  %70 = bitcast float* %65 to <4 x float>*
  store <4 x float> <float 0x3FA56AD9A0000000, float 0xBF9EEA7EC0000000, float 0x3FE0AD9220000000, float 0x3FDEA4DEC0000000>, <4 x float>* %70, align 4, !tbaa !9
  %71 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 4
  %72 = bitcast %struct.HIP_vector_type** %71 to i8**
  %73 = load i8*, i8** %72, align 8, !tbaa !74
  %74 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 2
  %75 = bitcast %struct.HIP_vector_type** %74 to i8**
  %76 = load i8*, i8** %75, align 8, !tbaa !24
  %77 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %78 = load i32, i32* %77, align 4, !tbaa !23
  %79 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %80 = load i32, i32* %79, align 8, !tbaa !18
  %81 = mul i32 %80, %78
  %82 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 11
  %83 = load i32, i32* %82, align 8, !tbaa !72
  %84 = mul i32 %81, %83
  %85 = zext i32 %84 to i64
  %86 = tail call i32 @hipMemcpy(i8* %73, i8* %76, i64 %85, i32 1)
  %87 = bitcast %struct.ihipEvent_t** %56 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #28
  %88 = bitcast %struct.ihipEvent_t** %57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #28
  %89 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %56)
  %90 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %57)
  %91 = bitcast float* %58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %91) #28
  store float 1.000000e+00, float* %58, align 4, !tbaa !9
  %92 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %93 = call i32 @hipEventRecord(%struct.ihipEvent_t* %92, %struct.ihipStream_t* null)
  %94 = load i32, i32* %77, align 4, !tbaa !23
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 15
  %97 = load i64, i64* %96, align 8, !tbaa !75
  %98 = udiv i64 %95, %97
  %99 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 16
  %100 = load i64, i64* %99, align 8, !tbaa !76
  %101 = icmp eq i64 %100, 1
  %102 = select i1 %101, i64 4294967296, i64 0
  %103 = or i64 %102, %98
  %104 = shl i64 %100, 32
  %105 = and i64 %97, 4294967295
  %106 = or i64 %104, %105
  %107 = call i32 @__hipPushCallConfiguration(i64 %103, i32 1, i64 %106, i32 1, i64 0, %struct.ihipStream_t* null)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %177

109:                                              ; preds = %1
  %110 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %71, align 8, !tbaa !74
  %111 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 5
  %112 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %111, align 8, !tbaa !77
  %113 = load i32, i32* %77, align 4, !tbaa !23
  %114 = load i32, i32* %79, align 8, !tbaa !18
  %115 = load float, float* %63, align 4, !tbaa !78
  %116 = load float, float* %64, align 8, !tbaa !79
  %117 = load float, float* %65, align 4, !tbaa !80
  %118 = load float, float* %66, align 8, !tbaa !81
  %119 = load float, float* %61, align 4, !tbaa !82
  %120 = load float, float* %62, align 8, !tbaa !83
  %121 = load float, float* %67, align 4, !tbaa !84
  %122 = load float, float* %68, align 8, !tbaa !85
  %123 = bitcast %struct.HIP_vector_type** %39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123)
  %124 = bitcast %struct.HIP_vector_type** %40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %124)
  %125 = bitcast i32* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %125)
  %126 = bitcast i32* %42 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %126)
  %127 = bitcast float* %43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %127)
  %128 = bitcast float* %44 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %128)
  %129 = bitcast float* %45 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %129)
  %130 = bitcast float* %46 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %130)
  %131 = bitcast float* %47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %131)
  %132 = bitcast float* %48 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %132)
  %133 = bitcast float* %49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %133)
  %134 = bitcast float* %50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %134)
  %135 = bitcast %struct.dim3* %51 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %135)
  %136 = bitcast %struct.dim3* %52 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %136)
  %137 = bitcast i64* %53 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137)
  %138 = bitcast i8** %54 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %138)
  %139 = bitcast [12 x i8*]* %55 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %139)
  store %struct.HIP_vector_type* %110, %struct.HIP_vector_type** %39, align 8, !tbaa !3
  store %struct.HIP_vector_type* %112, %struct.HIP_vector_type** %40, align 8, !tbaa !3
  store i32 %113, i32* %41, align 4, !tbaa !7
  store i32 %114, i32* %42, align 4, !tbaa !7
  store float %115, float* %43, align 4, !tbaa !9
  store float %116, float* %44, align 4, !tbaa !9
  store float %117, float* %45, align 4, !tbaa !9
  store float %118, float* %46, align 4, !tbaa !9
  store float %119, float* %47, align 4, !tbaa !9
  store float %120, float* %48, align 4, !tbaa !9
  store float %121, float* %49, align 4, !tbaa !9
  store float %122, float* %50, align 4, !tbaa !9
  %140 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 0
  %141 = bitcast [12 x i8*]* %55 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %39, %struct.HIP_vector_type*** %141, align 16
  %142 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 1
  %143 = bitcast i8** %142 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %40, %struct.HIP_vector_type*** %143, align 8
  %144 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 2
  %145 = bitcast i8** %144 to i32**
  store i32* %41, i32** %145, align 16
  %146 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 3
  %147 = bitcast i8** %146 to i32**
  store i32* %42, i32** %147, align 8
  %148 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 4
  %149 = bitcast i8** %148 to float**
  store float* %43, float** %149, align 16
  %150 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 5
  %151 = bitcast i8** %150 to float**
  store float* %44, float** %151, align 8
  %152 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 6
  %153 = bitcast i8** %152 to float**
  store float* %45, float** %153, align 16
  %154 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 7
  %155 = bitcast i8** %154 to float**
  store float* %46, float** %155, align 8
  %156 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 8
  %157 = bitcast i8** %156 to float**
  store float* %47, float** %157, align 16
  %158 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 9
  %159 = bitcast i8** %158 to float**
  store float* %48, float** %159, align 8
  %160 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 10
  %161 = bitcast i8** %160 to float**
  store float* %49, float** %161, align 16
  %162 = getelementptr inbounds [12 x i8*], [12 x i8*]* %55, i64 0, i64 11
  %163 = bitcast i8** %162 to float**
  store float* %50, float** %163, align 8
  %164 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %51, %struct.dim3* nonnull %52, i64* nonnull %53, i8** nonnull %54)
  %165 = load i64, i64* %53, align 8
  %166 = bitcast i8** %54 to %struct.ihipStream_t**
  %167 = load %struct.ihipStream_t*, %struct.ihipStream_t** %166, align 8
  %168 = bitcast %struct.dim3* %51 to i64*
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.dim3, %struct.dim3* %51, i64 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = bitcast %struct.dim3* %52 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.dim3, %struct.dim3* %52, i64 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, float, float, float, float, float, float, float, float)** @_Z24RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff to i8*), i64 %169, i32 %171, i64 %173, i32 %175, i8** nonnull %140, i64 %165, %struct.ihipStream_t* %167)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %125)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %126)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %127)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %128)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %129)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %130)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %131)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %132)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %133)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %135)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %136)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %137)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %138)
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %139)
  br label %177

177:                                              ; preds = %109, %1
  %178 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %179 = call i32 @hipEventRecord(%struct.ihipEvent_t* %178, %struct.ihipStream_t* null)
  %180 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %181 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %180)
  %182 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %183 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %184 = call i32 @hipEventElapsedTime(float* nonnull %58, %struct.ihipEvent_t* %182, %struct.ihipEvent_t* %183)
  %185 = load float, float* %58, align 4, !tbaa !9
  %186 = fpext float %185 to double
  %187 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), double %186)
  %188 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %189 = call i32 @hipEventRecord(%struct.ihipEvent_t* %188, %struct.ihipStream_t* null)
  %190 = load i32, i32* %77, align 4, !tbaa !23
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 17
  %193 = load i64, i64* %192, align 8, !tbaa !73
  %194 = udiv i64 %191, %193
  %195 = load i32, i32* %79, align 8, !tbaa !18
  %196 = zext i32 %195 to i64
  %197 = udiv i64 %196, %193
  %198 = shl nuw i64 %197, 32
  %199 = or i64 %198, %194
  %200 = and i64 %193, 4294967295
  %201 = mul nuw i64 %200, 4294967297
  %202 = call i32 @__hipPushCallConfiguration(i64 %199, i32 1, i64 %201, i32 1, i64 0, %struct.ihipStream_t* null)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %245

204:                                              ; preds = %177
  %205 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %71, align 8, !tbaa !74
  %206 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 5
  %207 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %206, align 8, !tbaa !77
  %208 = load i32, i32* %77, align 4, !tbaa !23
  %209 = load i32, i32* %79, align 8, !tbaa !18
  %210 = load i64, i64* %192, align 8, !tbaa !73
  %211 = trunc i64 %210 to i32
  %212 = bitcast %struct.HIP_vector_type** %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %212)
  %213 = bitcast %struct.HIP_vector_type** %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %213)
  %214 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %214)
  %215 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %215)
  %216 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %216)
  %217 = bitcast %struct.dim3* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %217)
  %218 = bitcast %struct.dim3* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %218)
  %219 = bitcast i64* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %219)
  %220 = bitcast i8** %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %220)
  %221 = bitcast [5 x i8*]* %38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %221)
  store %struct.HIP_vector_type* %205, %struct.HIP_vector_type** %29, align 8, !tbaa !3
  store %struct.HIP_vector_type* %207, %struct.HIP_vector_type** %30, align 8, !tbaa !3
  store i32 %208, i32* %31, align 4, !tbaa !7
  store i32 %209, i32* %32, align 4, !tbaa !7
  store i32 %211, i32* %33, align 4, !tbaa !7
  %222 = getelementptr inbounds [5 x i8*], [5 x i8*]* %38, i64 0, i64 0
  %223 = bitcast [5 x i8*]* %38 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %29, %struct.HIP_vector_type*** %223, align 16
  %224 = getelementptr inbounds [5 x i8*], [5 x i8*]* %38, i64 0, i64 1
  %225 = bitcast i8** %224 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %30, %struct.HIP_vector_type*** %225, align 8
  %226 = getelementptr inbounds [5 x i8*], [5 x i8*]* %38, i64 0, i64 2
  %227 = bitcast i8** %226 to i32**
  store i32* %31, i32** %227, align 16
  %228 = getelementptr inbounds [5 x i8*], [5 x i8*]* %38, i64 0, i64 3
  %229 = bitcast i8** %228 to i32**
  store i32* %32, i32** %229, align 8
  %230 = getelementptr inbounds [5 x i8*], [5 x i8*]* %38, i64 0, i64 4
  %231 = bitcast i8** %230 to i32**
  store i32* %33, i32** %231, align 16
  %232 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %34, %struct.dim3* nonnull %35, i64* nonnull %36, i8** nonnull %37)
  %233 = load i64, i64* %36, align 8
  %234 = bitcast i8** %37 to %struct.ihipStream_t**
  %235 = load %struct.ihipStream_t*, %struct.ihipStream_t** %234, align 8
  %236 = bitcast %struct.dim3* %34 to i64*
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.dim3, %struct.dim3* %34, i64 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = bitcast %struct.dim3* %35 to i64*
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.dim3, %struct.dim3* %35, i64 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32)** @_Z16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj to i8*), i64 %237, i32 %239, i64 %241, i32 %243, i8** nonnull %222, i64 %233, %struct.ihipStream_t* %235)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %212)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %213)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %214)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %215)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %216)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %217)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %218)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %219)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %220)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %221)
  br label %245

245:                                              ; preds = %204, %177
  %246 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %247 = call i32 @hipEventRecord(%struct.ihipEvent_t* %246, %struct.ihipStream_t* null)
  %248 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %249 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %248)
  %250 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %251 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %252 = call i32 @hipEventElapsedTime(float* nonnull %58, %struct.ihipEvent_t* %250, %struct.ihipEvent_t* %251)
  %253 = load float, float* %58, align 4, !tbaa !9
  %254 = fpext float %253 to double
  %255 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), double %254)
  %256 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %257 = call i32 @hipEventRecord(%struct.ihipEvent_t* %256, %struct.ihipStream_t* null)
  %258 = load i32, i32* %79, align 8, !tbaa !18
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* %96, align 8, !tbaa !75
  %261 = udiv i64 %259, %260
  %262 = load i64, i64* %99, align 8, !tbaa !76
  %263 = icmp eq i64 %262, 1
  %264 = select i1 %263, i64 4294967296, i64 0
  %265 = or i64 %264, %261
  %266 = shl i64 %262, 32
  %267 = and i64 %260, 4294967295
  %268 = or i64 %266, %267
  %269 = call i32 @__hipPushCallConfiguration(i64 %265, i32 1, i64 %268, i32 1, i64 0, %struct.ihipStream_t* null)
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %339

271:                                              ; preds = %245
  %272 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %71, align 8, !tbaa !74
  %273 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 5
  %274 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %273, align 8, !tbaa !77
  %275 = load i32, i32* %79, align 8, !tbaa !18
  %276 = load i32, i32* %77, align 4, !tbaa !23
  %277 = load float, float* %63, align 4, !tbaa !78
  %278 = load float, float* %64, align 8, !tbaa !79
  %279 = load float, float* %65, align 4, !tbaa !80
  %280 = load float, float* %66, align 8, !tbaa !81
  %281 = load float, float* %61, align 4, !tbaa !82
  %282 = load float, float* %62, align 8, !tbaa !83
  %283 = load float, float* %67, align 4, !tbaa !84
  %284 = load float, float* %68, align 8, !tbaa !85
  %285 = bitcast %struct.HIP_vector_type** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %285)
  %286 = bitcast %struct.HIP_vector_type** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %286)
  %287 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %287)
  %288 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %288)
  %289 = bitcast float* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %289)
  %290 = bitcast float* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %290)
  %291 = bitcast float* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %291)
  %292 = bitcast float* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %292)
  %293 = bitcast float* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %293)
  %294 = bitcast float* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %294)
  %295 = bitcast float* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %295)
  %296 = bitcast float* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %296)
  %297 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %297)
  %298 = bitcast %struct.dim3* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %298)
  %299 = bitcast i64* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %299)
  %300 = bitcast i8** %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %300)
  %301 = bitcast [12 x i8*]* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %301)
  store %struct.HIP_vector_type* %272, %struct.HIP_vector_type** %12, align 8, !tbaa !3
  store %struct.HIP_vector_type* %274, %struct.HIP_vector_type** %13, align 8, !tbaa !3
  store i32 %275, i32* %14, align 4, !tbaa !7
  store i32 %276, i32* %15, align 4, !tbaa !7
  store float %277, float* %16, align 4, !tbaa !9
  store float %278, float* %17, align 4, !tbaa !9
  store float %279, float* %18, align 4, !tbaa !9
  store float %280, float* %19, align 4, !tbaa !9
  store float %281, float* %20, align 4, !tbaa !9
  store float %282, float* %21, align 4, !tbaa !9
  store float %283, float* %22, align 4, !tbaa !9
  store float %284, float* %23, align 4, !tbaa !9
  %302 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 0
  %303 = bitcast [12 x i8*]* %28 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %12, %struct.HIP_vector_type*** %303, align 16
  %304 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 1
  %305 = bitcast i8** %304 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %13, %struct.HIP_vector_type*** %305, align 8
  %306 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 2
  %307 = bitcast i8** %306 to i32**
  store i32* %14, i32** %307, align 16
  %308 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 3
  %309 = bitcast i8** %308 to i32**
  store i32* %15, i32** %309, align 8
  %310 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 4
  %311 = bitcast i8** %310 to float**
  store float* %16, float** %311, align 16
  %312 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 5
  %313 = bitcast i8** %312 to float**
  store float* %17, float** %313, align 8
  %314 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 6
  %315 = bitcast i8** %314 to float**
  store float* %18, float** %315, align 16
  %316 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 7
  %317 = bitcast i8** %316 to float**
  store float* %19, float** %317, align 8
  %318 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 8
  %319 = bitcast i8** %318 to float**
  store float* %20, float** %319, align 16
  %320 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 9
  %321 = bitcast i8** %320 to float**
  store float* %21, float** %321, align 8
  %322 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 10
  %323 = bitcast i8** %322 to float**
  store float* %22, float** %323, align 16
  %324 = getelementptr inbounds [12 x i8*], [12 x i8*]* %28, i64 0, i64 11
  %325 = bitcast i8** %324 to float**
  store float* %23, float** %325, align 8
  %326 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %24, %struct.dim3* nonnull %25, i64* nonnull %26, i8** nonnull %27)
  %327 = load i64, i64* %26, align 8
  %328 = bitcast i8** %27 to %struct.ihipStream_t**
  %329 = load %struct.ihipStream_t*, %struct.ihipStream_t** %328, align 8
  %330 = bitcast %struct.dim3* %24 to i64*
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i64 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = bitcast %struct.dim3* %25 to i64*
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds %struct.dim3, %struct.dim3* %25, i64 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, float, float, float, float, float, float, float, float)** @_Z24RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff to i8*), i64 %331, i32 %333, i64 %335, i32 %337, i8** nonnull %302, i64 %327, %struct.ihipStream_t* %329)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %285)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %286)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %287)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %288)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %289)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %290)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %291)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %292)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %293)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %294)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %295)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %296)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %297)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %298)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %299)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %300)
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %301)
  br label %339

339:                                              ; preds = %271, %245
  %340 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %341 = call i32 @hipEventRecord(%struct.ihipEvent_t* %340, %struct.ihipStream_t* null)
  %342 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %343 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %342)
  %344 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %345 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %346 = call i32 @hipEventElapsedTime(float* nonnull %58, %struct.ihipEvent_t* %344, %struct.ihipEvent_t* %345)
  %347 = load float, float* %58, align 4, !tbaa !9
  %348 = fpext float %347 to double
  %349 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), double %348)
  %350 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %351 = call i32 @hipEventRecord(%struct.ihipEvent_t* %350, %struct.ihipStream_t* null)
  %352 = load i32, i32* %79, align 8, !tbaa !18
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %192, align 8, !tbaa !73
  %355 = udiv i64 %353, %354
  %356 = load i32, i32* %77, align 4, !tbaa !23
  %357 = zext i32 %356 to i64
  %358 = udiv i64 %357, %354
  %359 = shl nuw i64 %358, 32
  %360 = or i64 %359, %355
  %361 = and i64 %354, 4294967295
  %362 = mul nuw i64 %361, 4294967297
  %363 = call i32 @__hipPushCallConfiguration(i64 %360, i32 1, i64 %362, i32 1, i64 0, %struct.ihipStream_t* null)
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %407

365:                                              ; preds = %339
  %366 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 6
  %367 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %366, align 8, !tbaa !86
  %368 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 5
  %369 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %368, align 8, !tbaa !77
  %370 = load i32, i32* %79, align 8, !tbaa !18
  %371 = load i32, i32* %77, align 4, !tbaa !23
  %372 = load i64, i64* %192, align 8, !tbaa !73
  %373 = trunc i64 %372 to i32
  %374 = bitcast %struct.HIP_vector_type** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %374)
  %375 = bitcast %struct.HIP_vector_type** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %375)
  %376 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %376)
  %377 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %377)
  %378 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %378)
  %379 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %379)
  %380 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %380)
  %381 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %381)
  %382 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %382)
  %383 = bitcast [5 x i8*]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %383)
  store %struct.HIP_vector_type* %367, %struct.HIP_vector_type** %2, align 8, !tbaa !3
  store %struct.HIP_vector_type* %369, %struct.HIP_vector_type** %3, align 8, !tbaa !3
  store i32 %370, i32* %4, align 4, !tbaa !7
  store i32 %371, i32* %5, align 4, !tbaa !7
  store i32 %373, i32* %6, align 4, !tbaa !7
  %384 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %385 = bitcast [5 x i8*]* %11 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %2, %struct.HIP_vector_type*** %385, align 16
  %386 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 1
  %387 = bitcast i8** %386 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %3, %struct.HIP_vector_type*** %387, align 8
  %388 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 2
  %389 = bitcast i8** %388 to i32**
  store i32* %4, i32** %389, align 16
  %390 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 3
  %391 = bitcast i8** %390 to i32**
  store i32* %5, i32** %391, align 8
  %392 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 4
  %393 = bitcast i8** %392 to i32**
  store i32* %6, i32** %393, align 16
  %394 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %395 = load i64, i64* %9, align 8
  %396 = bitcast i8** %10 to %struct.ihipStream_t**
  %397 = load %struct.ihipStream_t*, %struct.ihipStream_t** %396, align 8
  %398 = bitcast %struct.dim3* %7 to i64*
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = bitcast %struct.dim3* %8 to i64*
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32)** @_Z16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj to i8*), i64 %399, i32 %401, i64 %403, i32 %405, i8** nonnull %384, i64 %395, %struct.ihipStream_t* %397)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %374)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %375)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %376)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %377)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %378)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %379)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %380)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %381)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %382)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %383)
  br label %407

407:                                              ; preds = %365, %339
  %408 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %409 = call i32 @hipEventRecord(%struct.ihipEvent_t* %408, %struct.ihipStream_t* null)
  %410 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %411 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %410)
  %412 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %56, align 8, !tbaa !3
  %413 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %57, align 8, !tbaa !3
  %414 = call i32 @hipEventElapsedTime(float* nonnull %58, %struct.ihipEvent_t* %412, %struct.ihipEvent_t* %413)
  %415 = load float, float* %58, align 4, !tbaa !9
  %416 = fpext float %415 to double
  %417 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), double %416)
  %418 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 3
  %419 = bitcast %struct.HIP_vector_type** %418 to i8**
  %420 = load i8*, i8** %419, align 8, !tbaa !34
  %421 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 6
  %422 = bitcast %struct.HIP_vector_type** %421 to i8**
  %423 = load i8*, i8** %422, align 8, !tbaa !86
  %424 = load i32, i32* %77, align 4, !tbaa !23
  %425 = load i32, i32* %79, align 8, !tbaa !18
  %426 = mul i32 %425, %424
  %427 = zext i32 %426 to i64
  %428 = shl nuw nsw i64 %427, 2
  %429 = call i32 @hipMemcpy(i8* %420, i8* %423, i64 %428, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %91) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #28
  ret i32 0
}

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN17RecursiveGaussian10initializeEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 20
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !87
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #31
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !88
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !88
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 10)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i64 38)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !89
  %20 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 18
  %21 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %22 = bitcast i8** %21 to i32**
  store i32* %20, i32** %22, align 8, !tbaa !92
  %23 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %24 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !87
  %25 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %24, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #28
  tail call void @_ZdlPv(i8* nonnull %7) #30
  br label %26

26:                                               ; preds = %1, %6
  %27 = phi i32 [ 0, %6 ], [ 1, %1 ]
  ret i32 %27
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #31
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !88
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !88
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !88
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !88
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !88
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !88
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !88
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !88
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !88
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !88
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !88
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !88
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !88
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !88
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !88
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !88
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !88
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !88
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !88
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !88
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !89
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !92
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.43, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !89
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !92
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !89
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !92
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !89
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !92
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.52, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !89
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !92
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !93
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !96
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
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !96
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !93
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 48)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = or i64 %16, 8
  %18 = select i1 %15, i64 -1, i64 %17
  %19 = tail call noalias nonnull i8* @_Znam(i64 %18) #31
  %20 = bitcast i8* %19 to i64*
  store i64 %13, i64* %20, align 16
  %21 = getelementptr inbounds i8, i8* %19, i64 8
  %22 = bitcast i8* %21 to %"struct.appsdk::Option"*
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %25, align 8, !tbaa !96
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !88
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !88
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !88
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !88
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !96
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
  %59 = load i32, i32* %10, align 8, !tbaa !93
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !96
  br i1 %61, label %39, label %63, !llvm.loop !97

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
  %83 = load i32, i32* %10, align 8, !tbaa !93
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !93
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %95) #28
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
  %7 = load i8*, i8** %6, align 8, !tbaa !11
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #28
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %9, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #28
  br label %24

24:                                               ; preds = %1, %20, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #28
  %25 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !11
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #28
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %28, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #28
  br label %43

43:                                               ; preds = %24, %39, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #28
  %44 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !11
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #28
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %62

62:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #28
  %63 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !11
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #28
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %81

81:                                               ; preds = %62, %77, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #28
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN17RecursiveGaussian5setupEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = alloca [4097 x i8], align 16
  %12 = alloca %"class.std::allocator.0", align 1
  %13 = alloca %"class.std::basic_string", align 8
  %14 = alloca %"class.std::allocator.0", align 1
  %15 = alloca %"class.std::basic_string", align 8
  %16 = alloca %"class.std::basic_string", align 8
  %17 = alloca %"class.std::basic_string", align 8
  %18 = alloca %"class.std::allocator.0", align 1
  %19 = alloca %"class.std::basic_string", align 8
  %20 = alloca %"class.std::basic_string", align 8
  %21 = alloca %"class.std::allocator.0", align 1
  %22 = bitcast %"class.std::basic_string"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #28
  %23 = bitcast %"class.std::basic_string"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28
  %24 = getelementptr inbounds [4097 x i8], [4097 x i8]* %11, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4097, i8* nonnull %24) #28, !noalias !98
  %25 = call i64 @readlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %24, i64 4096) #28, !noalias !98
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = tail call i8* @__cxa_allocate_exception(i64 8) #28, !noalias !98
  %29 = bitcast i8* %28 to %"class.std::basic_string"*
  %30 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %12, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %30) #28, !noalias !98
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %12)
          to label %31 unwind label %32, !noalias !98

31:                                               ; preds = %27
  call void @__cxa_throw(i8* %28, i8* bitcast ({ i8*, i8* }* @_ZTISs to i8*), i8* bitcast (void (%"class.std::basic_string"*)* @_ZNSsD2Ev to i8*)) #29, !noalias !98
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #28, !noalias !98
  call void @__cxa_free_exception(i8* %28) #28, !noalias !98
  br label %70

34:                                               ; preds = %1
  %35 = getelementptr inbounds [4097 x i8], [4097 x i8]* %11, i64 0, i64 %25
  store i8 0, i8* %35, align 1, !tbaa !32, !noalias !98
  %36 = bitcast %"class.std::basic_string"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #28, !noalias !98
  %37 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %37) #28, !noalias !98
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* nonnull %24, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14)
          to label %38 unwind label %62, !noalias !98

38:                                               ; preds = %34
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #28, !noalias !98
  %39 = call i64 @_ZNKSs5rfindEcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8 signext 47, i64 -1) #28, !noalias !98
  %40 = shl i64 %39, 32
  %41 = add i64 %40, 4294967296
  %42 = ashr exact i64 %41, 32
  invoke void @_ZNSsC1ERKSsmm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i64 0, i64 %42)
          to label %43 unwind label %64

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %13, i64 0, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !11, !noalias !98
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #28, !noalias !98
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %72, label %50, !prof !25

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
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #28
  br label %72

62:                                               ; preds = %34
  %63 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #28, !noalias !98
  br label %66

64:                                               ; preds = %38
  %65 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13) #28
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi { i8*, i32 } [ %65, %64 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #28, !noalias !98
  br label %70

68:                                               ; preds = %403, %70
  %69 = phi { i8*, i32 } [ %71, %70 ], [ %404, %403 ]
  resume { i8*, i32 } %69

70:                                               ; preds = %66, %32
  %71 = phi { i8*, i32 } [ %33, %32 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0i8(i64 4097, i8* nonnull %24) #28, !noalias !98
  br label %68

72:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #28, !noalias !98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #28, !noalias !98
  call void @llvm.lifetime.end.p0i8(i64 4097, i8* nonnull %24) #28, !noalias !98
  %73 = bitcast %"class.std::basic_string"* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73) #28
  %74 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %74) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %18)
          to label %75 unwind label %268

75:                                               ; preds = %72
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %76 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8, !tbaa !11, !noalias !101
  %78 = getelementptr inbounds i8, i8* %77, i64 -24
  %79 = bitcast i8* %78 to i64*
  %80 = load i64, i64* %79, align 8, !tbaa !54, !noalias !101
  %81 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %17, i64 0, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !11, !noalias !101
  %83 = getelementptr inbounds i8, i8* %82, i64 -24
  %84 = bitcast i8* %83 to i64*
  %85 = load i64, i64* %84, align 8, !tbaa !54, !noalias !101
  %86 = add i64 %85, %80
  %87 = getelementptr inbounds i8, i8* %77, i64 -16
  %88 = bitcast i8* %87 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !104, !noalias !101
  %90 = icmp ugt i64 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %75
  %92 = getelementptr inbounds i8, i8* %82, i64 -16
  %93 = bitcast i8* %92 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !104, !noalias !101
  %95 = icmp ugt i64 %86, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i64 0, i8* nonnull %77, i64 %80)
          to label %100 unwind label %270

98:                                               ; preds = %91, %75
  %99 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17)
          to label %100 unwind label %270

100:                                              ; preds = %96, %98
  %101 = phi %"class.std::basic_string"* [ %97, %96 ], [ %99, %98 ]
  %102 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %15, i64 0, i32 0, i32 0
  %103 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %101, i64 0, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8, !tbaa !88, !noalias !101
  store i8* %104, i8** %102, align 8, !tbaa !88, !alias.scope !101
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %103, align 8, !tbaa !11, !noalias !101
  %105 = load i8*, i8** %81, align 8, !tbaa !11
  %106 = getelementptr inbounds i8, i8* %105, i64 -24
  %107 = bitcast i8* %106 to %"struct.std::basic_string<char>::_Rep"*
  %108 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %108) #28
  %109 = icmp eq i8* %106, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %109, label %122, label %110, !prof !25

110:                                              ; preds = %100
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %107, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #28
  br label %122

122:                                              ; preds = %100, %118, %121
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %108) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %74) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #28
  %123 = load i8*, i8** %76, align 8, !tbaa !11
  %124 = getelementptr inbounds i8, i8* %123, i64 -24
  %125 = bitcast i8* %124 to %"struct.std::basic_string<char>::_Rep"*
  %126 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %126) #28
  %127 = icmp eq i8* %124, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %127, label %140, label %128, !prof !25

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, i8* %123, i64 -8
  %130 = bitcast i8* %129 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %131, label %133

131:                                              ; preds = %128
  %132 = atomicrmw volatile add i32* %130, i32 -1 acq_rel, align 4
  br label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %130, align 8, !tbaa !7
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %130, align 8, !tbaa !7
  br label %136

136:                                              ; preds = %133, %131
  %137 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %125, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #28
  br label %140

140:                                              ; preds = %122, %136, %139
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %126) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28
  %141 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i64 50)
          to label %142 unwind label %274

142:                                              ; preds = %140
  %143 = load i8*, i8** %102, align 8, !tbaa !11
  %144 = getelementptr inbounds i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8, !tbaa !54
  %147 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %143, i64 %146)
          to label %148 unwind label %274

148:                                              ; preds = %142
  %149 = bitcast %"class.std::basic_ostream"* %147 to i8**
  %150 = load i8*, i8** %149, align 8, !tbaa !26
  %151 = getelementptr i8, i8* %150, i64 -24
  %152 = bitcast i8* %151 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = bitcast %"class.std::basic_ostream"* %147 to i8*
  %155 = getelementptr inbounds i8, i8* %154, i64 %153
  %156 = getelementptr inbounds i8, i8* %155, i64 240
  %157 = bitcast i8* %156 to %"class.std::ctype"**
  %158 = load %"class.std::ctype"*, %"class.std::ctype"** %157, align 8, !tbaa !28
  %159 = icmp eq %"class.std::ctype"* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %161 unwind label %274

161:                                              ; preds = %160
  unreachable

162:                                              ; preds = %148
  %163 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %158, i64 0, i32 8
  %164 = load i8, i8* %163, align 8, !tbaa !30
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %158, i64 0, i32 9, i64 10
  %168 = load i8, i8* %167, align 1, !tbaa !32
  br label %176

169:                                              ; preds = %162
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %158)
          to label %170 unwind label %274

170:                                              ; preds = %169
  %171 = bitcast %"class.std::ctype"* %158 to i8 (%"class.std::ctype"*, i8)***
  %172 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %171, align 8, !tbaa !26
  %173 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %172, i64 6
  %174 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %173, align 8
  %175 = invoke signext i8 %174(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %158, i8 signext 10)
          to label %176 unwind label %274

176:                                              ; preds = %170, %166
  %177 = phi i8 [ %168, %166 ], [ %175, %170 ]
  %178 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %147, i8 signext %177)
          to label %179 unwind label %274

179:                                              ; preds = %176
  %180 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %178)
          to label %181 unwind label %274

181:                                              ; preds = %179
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15)
          to label %182 unwind label %276

182:                                              ; preds = %181
  %183 = invoke i32 @_ZN17RecursiveGaussian14readInputImageESs(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0, %"class.std::basic_string"* nonnull %19)
          to label %184 unwind label %278

184:                                              ; preds = %182
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %19, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !11
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #28
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #28
  br label %203

203:                                              ; preds = %184, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #28
  %204 = icmp eq i32 %183, 0
  br i1 %204, label %286, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %206) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %207 unwind label %280

207:                                              ; preds = %205
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %20)
          to label %208 unwind label %282

208:                                              ; preds = %207
  %209 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8, !tbaa !11
  %211 = getelementptr inbounds i8, i8* %210, i64 -24
  %212 = bitcast i8* %211 to %"struct.std::basic_string<char>::_Rep"*
  %213 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %213) #28
  %214 = icmp eq i8* %211, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %214, label %227, label %215, !prof !25

215:                                              ; preds = %208
  %216 = getelementptr inbounds i8, i8* %210, i64 -8
  %217 = bitcast i8* %216 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %218, label %220

218:                                              ; preds = %215
  %219 = atomicrmw volatile add i32* %217, i32 -1 acq_rel, align 4
  br label %223

220:                                              ; preds = %215
  %221 = load i32, i32* %217, align 8, !tbaa !7
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %217, align 8, !tbaa !7
  br label %223

223:                                              ; preds = %220, %218
  %224 = phi i32 [ %219, %218 ], [ %221, %220 ]
  %225 = icmp slt i32 %224, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %212, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #28
  br label %227

227:                                              ; preds = %208, %223, %226
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %213) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %206) #28
  %228 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 11)
          to label %229 unwind label %276

229:                                              ; preds = %227
  %230 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 39)
          to label %231 unwind label %276

231:                                              ; preds = %229
  %232 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1)
          to label %233 unwind label %276

233:                                              ; preds = %231
  %234 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 669)
          to label %235 unwind label %276

235:                                              ; preds = %233
  %236 = bitcast %"class.std::basic_ostream"* %234 to i8**
  %237 = load i8*, i8** %236, align 8, !tbaa !26
  %238 = getelementptr i8, i8* %237, i64 -24
  %239 = bitcast i8* %238 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = bitcast %"class.std::basic_ostream"* %234 to i8*
  %242 = getelementptr inbounds i8, i8* %241, i64 %240
  %243 = getelementptr inbounds i8, i8* %242, i64 240
  %244 = bitcast i8* %243 to %"class.std::ctype"**
  %245 = load %"class.std::ctype"*, %"class.std::ctype"** %244, align 8, !tbaa !28
  %246 = icmp eq %"class.std::ctype"* %245, null
  br i1 %246, label %247, label %249

247:                                              ; preds = %235
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %248 unwind label %276

248:                                              ; preds = %247
  unreachable

249:                                              ; preds = %235
  %250 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %245, i64 0, i32 8
  %251 = load i8, i8* %250, align 8, !tbaa !30
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %245, i64 0, i32 9, i64 10
  %255 = load i8, i8* %254, align 1, !tbaa !32
  br label %263

256:                                              ; preds = %249
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %245)
          to label %257 unwind label %276

257:                                              ; preds = %256
  %258 = bitcast %"class.std::ctype"* %245 to i8 (%"class.std::ctype"*, i8)***
  %259 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %258, align 8, !tbaa !26
  %260 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %259, i64 6
  %261 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %260, align 8
  %262 = invoke signext i8 %261(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %245, i8 signext 10)
          to label %263 unwind label %276

263:                                              ; preds = %257, %253
  %264 = phi i8 [ %255, %253 ], [ %262, %257 ]
  %265 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %234, i8 signext %264)
          to label %266 unwind label %276

266:                                              ; preds = %263
  %267 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %265)
          to label %381 unwind label %276

268:                                              ; preds = %72
  %269 = landingpad { i8*, i32 }
          cleanup
  br label %272

270:                                              ; preds = %98, %96
  %271 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17) #28
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi { i8*, i32 } [ %271, %270 ], [ %269, %268 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %74) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #28
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28
  br label %403

274:                                              ; preds = %179, %176, %170, %169, %160, %142, %140
  %275 = landingpad { i8*, i32 }
          cleanup
  br label %401

276:                                              ; preds = %266, %263, %257, %256, %247, %231, %229, %227, %233, %181
  %277 = landingpad { i8*, i32 }
          cleanup
  br label %401

278:                                              ; preds = %182
  %279 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19) #28
  br label %401

280:                                              ; preds = %205
  %281 = landingpad { i8*, i32 }
          cleanup
  br label %284

282:                                              ; preds = %207
  %283 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20) #28
  br label %284

284:                                              ; preds = %282, %280
  %285 = phi { i8*, i32 } [ %283, %282 ], [ %281, %280 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %206) #28
  br label %401

286:                                              ; preds = %203
  %287 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 19
  %288 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %287, align 8, !tbaa !105
  %289 = invoke i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %288)
          to label %290 unwind label %370

290:                                              ; preds = %286
  %291 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %287, align 8, !tbaa !105
  %292 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %292)
  %293 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %291, i64 0, i32 0, i32 0, i32 0, i32 1
  %294 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %293, align 8, !tbaa !106
  %295 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %291, i64 0, i32 0, i32 0, i32 0, i32 0
  %296 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %295, align 8, !tbaa !109
  %297 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %294 to i64
  %298 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %296 to i64
  %299 = sub i64 %297, %298
  %300 = lshr exact i64 %299, 3
  %301 = trunc i64 %300 to i32
  %302 = icmp slt i32 %289, %301
  br i1 %302, label %328, label %303

303:                                              ; preds = %290
  %304 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %304) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
          to label %305 unwind label %370

305:                                              ; preds = %303
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %306 unwind label %326

306:                                              ; preds = %305
  %307 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8, !tbaa !11
  %309 = getelementptr inbounds i8, i8* %308, i64 -24
  %310 = bitcast i8* %309 to %"struct.std::basic_string<char>::_Rep"*
  %311 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %311) #28
  %312 = icmp eq i8* %309, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %312, label %325, label %313, !prof !25

313:                                              ; preds = %306
  %314 = getelementptr inbounds i8, i8* %308, i64 -8
  %315 = bitcast i8* %314 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %316, label %318

316:                                              ; preds = %313
  %317 = atomicrmw volatile add i32* %315, i32 -1 acq_rel, align 4
  br label %321

318:                                              ; preds = %313
  %319 = load i32, i32* %315, align 8, !tbaa !7
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %315, align 8, !tbaa !7
  br label %321

321:                                              ; preds = %318, %316
  %322 = phi i32 [ %317, %316 ], [ %319, %318 ]
  %323 = icmp slt i32 %322, 1
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %310, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %325

325:                                              ; preds = %324, %321, %306
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %311) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %304) #28
  br label %334

326:                                              ; preds = %305
  %327 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %304) #28
  br label %401

328:                                              ; preds = %290
  %329 = sext i32 %289 to i64
  %330 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %296, i64 %329
  %331 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %330, align 8, !tbaa !3
  %332 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %331, i64 0, i32 2
  %333 = bitcast i64* %332 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %333, i8 0, i64 16, i1 false)
  br label %334

334:                                              ; preds = %328, %325
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %292)
  %335 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %287, align 8, !tbaa !105
  %336 = invoke i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %335, i32 %289)
          to label %337 unwind label %370

337:                                              ; preds = %334
  %338 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 4
  %339 = bitcast %struct.HIP_vector_type** %338 to i8**
  %340 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %341 = load i32, i32* %340, align 4, !tbaa !23
  %342 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %343 = load i32, i32* %342, align 8, !tbaa !18
  %344 = mul i32 %343, %341
  %345 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 11
  %346 = load i32, i32* %345, align 8, !tbaa !72
  %347 = mul i32 %344, %346
  %348 = zext i32 %347 to i64
  %349 = invoke i32 @hipMalloc(i8** nonnull %339, i64 %348)
          to label %350 unwind label %370

350:                                              ; preds = %337
  %351 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 6
  %352 = bitcast %struct.HIP_vector_type** %351 to i8**
  %353 = load i32, i32* %340, align 4, !tbaa !23
  %354 = load i32, i32* %342, align 8, !tbaa !18
  %355 = mul i32 %354, %353
  %356 = load i32, i32* %345, align 8, !tbaa !72
  %357 = mul i32 %355, %356
  %358 = zext i32 %357 to i64
  %359 = invoke i32 @hipMalloc(i8** nonnull %352, i64 %358)
          to label %360 unwind label %370

360:                                              ; preds = %350
  %361 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 5
  %362 = bitcast %struct.HIP_vector_type** %361 to i8**
  %363 = load i32, i32* %340, align 4, !tbaa !23
  %364 = load i32, i32* %342, align 8, !tbaa !18
  %365 = mul i32 %364, %363
  %366 = load i32, i32* %345, align 8, !tbaa !72
  %367 = mul i32 %365, %366
  %368 = zext i32 %367 to i64
  %369 = invoke i32 @hipMalloc(i8** nonnull %362, i64 %368)
          to label %372 unwind label %370

370:                                              ; preds = %360, %350, %337, %303, %376, %372, %334, %286
  %371 = landingpad { i8*, i32 }
          cleanup
  br label %401

372:                                              ; preds = %360
  %373 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 17
  store i64 16, i64* %373, align 8, !tbaa !73
  %374 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %287, align 8, !tbaa !105
  %375 = invoke i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %374, i32 %289)
          to label %376 unwind label %370

376:                                              ; preds = %372
  %377 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %287, align 8, !tbaa !105
  %378 = invoke double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %377, i32 %289)
          to label %379 unwind label %370

379:                                              ; preds = %376
  %380 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 0
  store double %378, double* %380, align 8, !tbaa !110
  br label %381

381:                                              ; preds = %266, %379
  %382 = phi i32 [ 0, %379 ], [ 1, %266 ]
  %383 = load i8*, i8** %102, align 8, !tbaa !11
  %384 = getelementptr inbounds i8, i8* %383, i64 -24
  %385 = bitcast i8* %384 to %"struct.std::basic_string<char>::_Rep"*
  %386 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %386) #28
  %387 = icmp eq i8* %384, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %387, label %400, label %388, !prof !25

388:                                              ; preds = %381
  %389 = getelementptr inbounds i8, i8* %383, i64 -8
  %390 = bitcast i8* %389 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %391, label %393

391:                                              ; preds = %388
  %392 = atomicrmw volatile add i32* %390, i32 -1 acq_rel, align 4
  br label %396

393:                                              ; preds = %388
  %394 = load i32, i32* %390, align 8, !tbaa !7
  %395 = add nsw i32 %394, -1
  store i32 %395, i32* %390, align 8, !tbaa !7
  br label %396

396:                                              ; preds = %393, %391
  %397 = phi i32 [ %392, %391 ], [ %394, %393 ]
  %398 = icmp slt i32 %397, 1
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %385, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %400

400:                                              ; preds = %381, %396, %399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %386) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #28
  ret i32 %382

401:                                              ; preds = %370, %326, %276, %278, %284, %274
  %402 = phi { i8*, i32 } [ %275, %274 ], [ %277, %276 ], [ %285, %284 ], [ %279, %278 ], [ %371, %370 ], [ %327, %326 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15) #28
  br label %403

403:                                              ; preds = %401, %272
  %404 = phi { i8*, i32 } [ %402, %401 ], [ %273, %272 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #28
  br label %68
}

declare dso_local void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #31
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !114
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !106
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !106
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !109
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !109
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
  %36 = tail call noalias nonnull i8* @_Znwm(i64 %35) #32
  %37 = bitcast i8* %36 to %"struct.appsdk::SDKTimer::Timer"**
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !109
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 %42, i1 false) #28
  br label %51

51:                                               ; preds = %48, %41
  %52 = ashr exact i64 %42, 3
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %52
  %54 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, i64 1
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !106
  %56 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %55 to i64
  %57 = sub i64 %56, %22
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = bitcast %"struct.appsdk::SDKTimer::Timer"** %54 to i8*
  %61 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %60, i8* align 8 %61, i64 %57, i1 false) #28
  br label %62

62:                                               ; preds = %59, %51
  %63 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %43, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = bitcast %"struct.appsdk::SDKTimer::Timer"** %43 to i8*
  tail call void @_ZdlPv(i8* nonnull %65) #28
  br label %66

66:                                               ; preds = %64, %62
  %67 = ashr exact i64 %57, 3
  %68 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %54, i64 %67
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !109
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !106
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !114
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !106
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !109
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #28
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !11
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #28
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #28
  br label %56

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #28
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #28
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #28
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !115
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !117
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !109
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #28
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !106
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !109
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #28
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !11
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #28
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #28
  br label %61

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #28
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #28
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #28
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !115
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !117
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !109
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !118
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !118
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !119
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #28
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
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !109
  %10 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %7 to i64
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #28
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !11
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #28
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %22, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %37

37:                                               ; preds = %18, %33, %36
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %23) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #28
  br label %51

38:                                               ; preds = %16
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #28
  resume { i8*, i32 } %39

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %9, i64 %41
  %43 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %42, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 2
  %45 = load i64, i64* %44, align 8, !tbaa !119
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !111
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN17RecursiveGaussian3runEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::allocator.0", align 1
  %13 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 18
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = tail call i32 @_ZN17RecursiveGaussian10runKernelsEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0)
  %18 = load i32, i32* %13, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @_ZN17RecursiveGaussian10runKernelsEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0)
  br label %22

22:                                               ; preds = %16, %20, %1
  %23 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i64 21)
  %24 = load i32, i32* %13, align 8, !tbaa !120
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %24)
  %26 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %25, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11)
  %27 = bitcast %"class.std::basic_ostream"* %25 to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !26
  %29 = getelementptr i8, i8* %28, i64 -24
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = bitcast %"class.std::basic_ostream"* %25 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  %34 = getelementptr inbounds i8, i8* %33, i64 240
  %35 = bitcast i8* %34 to %"class.std::ctype"**
  %36 = load %"class.std::ctype"*, %"class.std::ctype"** %35, align 8, !tbaa !28
  %37 = icmp eq %"class.std::ctype"* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

39:                                               ; preds = %22
  %40 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %36, i64 0, i32 8
  %41 = load i8, i8* %40, align 8, !tbaa !30
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %36, i64 0, i32 9, i64 10
  %45 = load i8, i8* %44, align 1, !tbaa !32
  br label %52

46:                                               ; preds = %39
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %36)
  %47 = bitcast %"class.std::ctype"* %36 to i8 (%"class.std::ctype"*, i8)***
  %48 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %47, align 8, !tbaa !26
  %49 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %48, i64 6
  %50 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %49, align 8
  %51 = tail call signext i8 %50(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %36, i8 signext 10)
  br label %52

52:                                               ; preds = %43, %46
  %53 = phi i8 [ %45, %43 ], [ %51, %46 ]
  %54 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %25, i8 signext %53)
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %54)
  %56 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i64 43)
  %57 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %58 = getelementptr i8, i8* %57, i64 -24
  %59 = bitcast i8* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 240
  %63 = bitcast i8* %62 to %"class.std::ctype"**
  %64 = load %"class.std::ctype"*, %"class.std::ctype"** %63, align 8, !tbaa !28
  %65 = icmp eq %"class.std::ctype"* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

67:                                               ; preds = %52
  %68 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %64, i64 0, i32 8
  %69 = load i8, i8* %68, align 8, !tbaa !30
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %64, i64 0, i32 9, i64 10
  %73 = load i8, i8* %72, align 1, !tbaa !32
  br label %80

74:                                               ; preds = %67
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %64)
  %75 = bitcast %"class.std::ctype"* %64 to i8 (%"class.std::ctype"*, i8)***
  %76 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %75, align 8, !tbaa !26
  %77 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %76, i64 6
  %78 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %77, align 8
  %79 = tail call signext i8 %78(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %64, i8 signext 10)
  br label %80

80:                                               ; preds = %71, %74
  %81 = phi i8 [ %73, %71 ], [ %79, %74 ]
  %82 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %81)
  %83 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %82)
  %84 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 19
  %85 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %84, align 8, !tbaa !105
  %86 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %85)
  %87 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %84, align 8, !tbaa !105
  %88 = bitcast %"class.std::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88)
  %89 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %87, i64 0, i32 0, i32 0, i32 0, i32 1
  %90 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %89, align 8, !tbaa !106
  %91 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %87, i64 0, i32 0, i32 0, i32 0, i32 0
  %92 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %91, align 8, !tbaa !109
  %93 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %90 to i64
  %94 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %92 to i64
  %95 = sub i64 %93, %94
  %96 = lshr exact i64 %95, 3
  %97 = trunc i64 %96 to i32
  %98 = icmp slt i32 %86, %97
  br i1 %98, label %125, label %99

99:                                               ; preds = %80
  %100 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %100) #28
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %101 unwind label %123

101:                                              ; preds = %99
  %102 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8, !tbaa !11
  %104 = getelementptr inbounds i8, i8* %103, i64 -24
  %105 = bitcast i8* %104 to %"struct.std::basic_string<char>::_Rep"*
  %106 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %106) #28
  %107 = icmp eq i8* %104, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %107, label %120, label %108, !prof !25

108:                                              ; preds = %101
  %109 = getelementptr inbounds i8, i8* %103, i64 -8
  %110 = bitcast i8* %109 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %111, label %113

111:                                              ; preds = %108
  %112 = atomicrmw volatile add i32* %110, i32 -1 acq_rel, align 4
  br label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %110, align 8, !tbaa !7
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %110, align 8, !tbaa !7
  br label %116

116:                                              ; preds = %113, %111
  %117 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %105, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #28
  br label %120

120:                                              ; preds = %119, %116, %101
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %106) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %100) #28
  br label %131

121:                                              ; preds = %289, %123
  %122 = phi { i8*, i32 } [ %124, %123 ], [ %290, %289 ]
  resume { i8*, i32 } %122

123:                                              ; preds = %99
  %124 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %100) #28
  br label %121

125:                                              ; preds = %80
  %126 = sext i32 %86 to i64
  %127 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %92, i64 %126
  %128 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %127, align 8, !tbaa !3
  %129 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %128, i64 0, i32 2
  %130 = bitcast i64* %129 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %130, i8 0, i64 16, i1 false)
  br label %131

131:                                              ; preds = %120, %125
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88)
  %132 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %84, align 8, !tbaa !105
  %133 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %132, i32 %86)
  %134 = load i32, i32* %13, align 8, !tbaa !120
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131, %136
  %137 = phi i32 [ %139, %136 ], [ 0, %131 ]
  %138 = call i32 @_ZN17RecursiveGaussian10runKernelsEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0)
  %139 = add nuw nsw i32 %137, 1
  %140 = load i32, i32* %13, align 8, !tbaa !120
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %136, label %142, !llvm.loop !121

142:                                              ; preds = %136, %131
  %143 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %84, align 8, !tbaa !105
  %144 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %143, i32 %86)
  %145 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %84, align 8, !tbaa !105
  %146 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %145, i32 %86)
  %147 = load i32, i32* %13, align 8, !tbaa !120
  %148 = sitofp i32 %147 to double
  %149 = fdiv contract double %146, %148
  %150 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 1
  store double %149, double* %150, align 8, !tbaa !122
  %151 = bitcast %"class.std::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %151) #28
  %152 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %152) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
          to label %153 unwind label %254

153:                                              ; preds = %142
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %152) #28
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8)
          to label %154 unwind label %256

154:                                              ; preds = %153
  %155 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 10
  %156 = bitcast %struct.HIP_vector_type** %155 to i8**
  %157 = load i8*, i8** %156, align 8, !tbaa !36
  %158 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 3
  %159 = bitcast %struct.HIP_vector_type** %158 to i8**
  %160 = load i8*, i8** %159, align 8, !tbaa !34
  %161 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %162 = load i32, i32* %161, align 4, !tbaa !23
  %163 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %164 = load i32, i32* %163, align 8, !tbaa !18
  %165 = mul i32 %164, %162
  %166 = zext i32 %165 to i64
  %167 = shl nuw nsw i64 %166, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %160, i64 %167, i1 false)
  %168 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9
  %169 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8, !tbaa !11
  %171 = invoke zeroext i1 @_ZN6appsdk9SDKBitMap5writeEPKc(%"class.appsdk::SDKBitMap"* nonnull align 1 dereferenceable(75) %168, i8* %170)
          to label %172 unwind label %258

172:                                              ; preds = %154
  %173 = load i8*, i8** %169, align 8, !tbaa !11
  %174 = getelementptr inbounds i8, i8* %173, i64 -24
  %175 = bitcast i8* %174 to %"struct.std::basic_string<char>::_Rep"*
  %176 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %176) #28
  %177 = icmp eq i8* %174, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %177, label %190, label %178, !prof !25

178:                                              ; preds = %172
  %179 = getelementptr inbounds i8, i8* %173, i64 -8
  %180 = bitcast i8* %179 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %181, label %183

181:                                              ; preds = %178
  %182 = atomicrmw volatile add i32* %180, i32 -1 acq_rel, align 4
  br label %186

183:                                              ; preds = %178
  %184 = load i32, i32* %180, align 8, !tbaa !7
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %180, align 8, !tbaa !7
  br label %186

186:                                              ; preds = %183, %181
  %187 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %188 = icmp slt i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %175, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #28
  br label %190

190:                                              ; preds = %172, %186, %189
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %176) #28
  br i1 %171, label %266, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %12, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %192) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %12)
          to label %193 unwind label %260

193:                                              ; preds = %191
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %11)
          to label %194 unwind label %262

194:                                              ; preds = %193
  %195 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %11, i64 0, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8, !tbaa !11
  %197 = getelementptr inbounds i8, i8* %196, i64 -24
  %198 = bitcast i8* %197 to %"struct.std::basic_string<char>::_Rep"*
  %199 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %199) #28
  %200 = icmp eq i8* %197, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %200, label %213, label %201, !prof !25

201:                                              ; preds = %194
  %202 = getelementptr inbounds i8, i8* %196, i64 -8
  %203 = bitcast i8* %202 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %204, label %206

204:                                              ; preds = %201
  %205 = atomicrmw volatile add i32* %203, i32 -1 acq_rel, align 4
  br label %209

206:                                              ; preds = %201
  %207 = load i32, i32* %203, align 8, !tbaa !7
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %203, align 8, !tbaa !7
  br label %209

209:                                              ; preds = %206, %204
  %210 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %211 = icmp slt i32 %210, 1
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %198, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %213

213:                                              ; preds = %194, %209, %212
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %199) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %192) #28
  %214 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 11)
          to label %215 unwind label %256

215:                                              ; preds = %213
  %216 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 39)
          to label %217 unwind label %256

217:                                              ; preds = %215
  %218 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1)
          to label %219 unwind label %256

219:                                              ; preds = %217
  %220 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 728)
          to label %221 unwind label %256

221:                                              ; preds = %219
  %222 = bitcast %"class.std::basic_ostream"* %220 to i8**
  %223 = load i8*, i8** %222, align 8, !tbaa !26
  %224 = getelementptr i8, i8* %223, i64 -24
  %225 = bitcast i8* %224 to i64*
  %226 = load i64, i64* %225, align 8
  %227 = bitcast %"class.std::basic_ostream"* %220 to i8*
  %228 = getelementptr inbounds i8, i8* %227, i64 %226
  %229 = getelementptr inbounds i8, i8* %228, i64 240
  %230 = bitcast i8* %229 to %"class.std::ctype"**
  %231 = load %"class.std::ctype"*, %"class.std::ctype"** %230, align 8, !tbaa !28
  %232 = icmp eq %"class.std::ctype"* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %221
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %234 unwind label %256

234:                                              ; preds = %233
  unreachable

235:                                              ; preds = %221
  %236 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %231, i64 0, i32 8
  %237 = load i8, i8* %236, align 8, !tbaa !30
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %231, i64 0, i32 9, i64 10
  %241 = load i8, i8* %240, align 1, !tbaa !32
  br label %249

242:                                              ; preds = %235
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %231)
          to label %243 unwind label %256

243:                                              ; preds = %242
  %244 = bitcast %"class.std::ctype"* %231 to i8 (%"class.std::ctype"*, i8)***
  %245 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %244, align 8, !tbaa !26
  %246 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %245, i64 6
  %247 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %246, align 8
  %248 = invoke signext i8 %247(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %231, i8 signext 10)
          to label %249 unwind label %256

249:                                              ; preds = %243, %239
  %250 = phi i8 [ %241, %239 ], [ %248, %243 ]
  %251 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %220, i8 signext %250)
          to label %252 unwind label %256

252:                                              ; preds = %249
  %253 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %251)
          to label %266 unwind label %256

254:                                              ; preds = %142
  %255 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %152) #28
  br label %289

256:                                              ; preds = %252, %249, %243, %242, %233, %217, %215, %213, %219, %153
  %257 = landingpad { i8*, i32 }
          cleanup
  br label %287

258:                                              ; preds = %154
  %259 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10) #28
  br label %287

260:                                              ; preds = %191
  %261 = landingpad { i8*, i32 }
          cleanup
  br label %264

262:                                              ; preds = %193
  %263 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %11) #28
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi { i8*, i32 } [ %263, %262 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %192) #28
  br label %287

266:                                              ; preds = %252, %190
  %267 = phi i32 [ 0, %190 ], [ 1, %252 ]
  %268 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8, !tbaa !11
  %270 = getelementptr inbounds i8, i8* %269, i64 -24
  %271 = bitcast i8* %270 to %"struct.std::basic_string<char>::_Rep"*
  %272 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %272) #28
  %273 = icmp eq i8* %270, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %273, label %286, label %274, !prof !25

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %269, i64 -8
  %276 = bitcast i8* %275 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %277, label %279

277:                                              ; preds = %274
  %278 = atomicrmw volatile add i32* %276, i32 -1 acq_rel, align 4
  br label %282

279:                                              ; preds = %274
  %280 = load i32, i32* %276, align 8, !tbaa !7
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %276, align 8, !tbaa !7
  br label %282

282:                                              ; preds = %279, %277
  %283 = phi i32 [ %278, %277 ], [ %280, %279 ]
  %284 = icmp slt i32 %283, 1
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %271, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %286

286:                                              ; preds = %266, %282, %285
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %272) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %151) #28
  ret i32 %267

287:                                              ; preds = %264, %258, %256
  %288 = phi { i8*, i32 } [ %257, %256 ], [ %265, %264 ], [ %259, %258 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #28
  br label %289

289:                                              ; preds = %287, %254
  %290 = phi { i8*, i32 } [ %288, %287 ], [ %255, %254 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %151) #28
  br label %121
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN17RecursiveGaussian7cleanupEv(%class.RecursiveGaussian* nocapture nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 4
  %3 = bitcast %struct.HIP_vector_type** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !74
  %5 = tail call i32 @hipFree(i8* %4)
  %6 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 6
  %7 = bitcast %struct.HIP_vector_type** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !86
  %9 = tail call i32 @hipFree(i8* %8)
  %10 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 5
  %11 = bitcast %struct.HIP_vector_type** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !77
  %13 = tail call i32 @hipFree(i8* %12)
  %14 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 2
  %15 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8, !tbaa !24
  %16 = icmp eq %struct.HIP_vector_type* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %15, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @free(i8* %18) #28
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %14, align 8, !tbaa !24
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 3
  %21 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %20, align 8, !tbaa !34
  %22 = icmp eq %struct.HIP_vector_type* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %21, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @free(i8* %24) #28
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %20, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 7
  %27 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %26, align 8, !tbaa !33
  %28 = icmp eq %struct.HIP_vector_type* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %27, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @free(i8* %30) #28
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %26, align 8, !tbaa !33
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 8
  %33 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %32, align 8, !tbaa !37
  %34 = icmp eq %struct.HIP_vector_type* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %33, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @free(i8* %36) #28
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %32, align 8, !tbaa !37
  br label %37

37:                                               ; preds = %35, %31
  ret i32 0
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_ZN17RecursiveGaussian20recursiveGaussianCPUEP15HIP_vector_typeIhLj4EES2_iiffffffff(%class.RecursiveGaussian* nocapture nonnull readnone align 8 %0, %struct.HIP_vector_type* nocapture readonly %1, %struct.HIP_vector_type* nocapture %2, i32 %3, i32 %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11, float %12) local_unnamed_addr #18 align 2 {
  %14 = icmp sgt i32 %4, 0
  %15 = icmp sgt i32 %3, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = zext i32 %3 to i64
  %18 = sext i32 %4 to i64
  %19 = zext i32 %3 to i64
  %20 = zext i32 %4 to i64
  %21 = insertelement <4 x float> poison, float %5, i64 0
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %23 = insertelement <4 x float> poison, float %6, i64 0
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %25 = insertelement <4 x float> poison, float %9, i64 0
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %27 = insertelement <4 x float> poison, float %10, i64 0
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  br label %30

29:                                               ; preds = %65, %13
  ret void

30:                                               ; preds = %16, %65
  %31 = phi i64 [ 0, %16 ], [ %66, %65 ]
  br i1 %14, label %33, label %65

32:                                               ; preds = %33
  br i1 %14, label %68, label %65

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %63, %33 ], [ 0, %30 ]
  %35 = phi <4 x float> [ %36, %33 ], [ zeroinitializer, %30 ]
  %36 = phi <4 x float> [ %50, %33 ], [ zeroinitializer, %30 ]
  %37 = phi <4 x float> [ %43, %33 ], [ zeroinitializer, %30 ]
  %38 = mul nsw i64 %34, %17
  %39 = add nuw nsw i64 %38, %31
  %40 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %1, i64 %39, i32 0, i32 0, i32 0, i64 0
  %41 = bitcast i8* %40 to <4 x i8>*
  %42 = load <4 x i8>, <4 x i8>* %41, align 4, !tbaa !32
  %43 = uitofp <4 x i8> %42 to <4 x float>
  %44 = fmul contract <4 x float> %22, %43
  %45 = fmul contract <4 x float> %37, %24
  %46 = fadd contract <4 x float> %44, %45
  %47 = fmul contract <4 x float> %36, %26
  %48 = fsub contract <4 x float> %46, %47
  %49 = fmul contract <4 x float> %35, %28
  %50 = fsub contract <4 x float> %48, %49
  %51 = extractelement <4 x float> %50, i64 0
  %52 = fptoui float %51 to i8
  %53 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %39, i32 0, i32 0, i32 0, i64 0
  store i8 %52, i8* %53, align 4, !tbaa !32
  %54 = extractelement <4 x float> %50, i64 1
  %55 = fptoui float %54 to i8
  %56 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %39, i32 0, i32 0, i32 0, i64 1
  store i8 %55, i8* %56, align 1, !tbaa !32
  %57 = extractelement <4 x float> %50, i64 2
  %58 = fptoui float %57 to i8
  %59 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %39, i32 0, i32 0, i32 0, i64 2
  store i8 %58, i8* %59, align 2, !tbaa !32
  %60 = extractelement <4 x float> %50, i64 3
  %61 = fptoui float %60 to i8
  %62 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %39, i32 0, i32 0, i32 0, i64 3
  store i8 %61, i8* %62, align 1, !tbaa !32
  %63 = add nuw nsw i64 %34, 1
  %64 = icmp eq i64 %63, %20
  br i1 %64, label %32, label %33, !llvm.loop !123

65:                                               ; preds = %68, %30, %32
  %66 = add nuw nsw i64 %31, 1
  %67 = icmp eq i64 %66, %19
  br i1 %67, label %29, label %30, !llvm.loop !124

68:                                               ; preds = %32, %68
  %69 = phi float [ %95, %68 ], [ 0.000000e+00, %32 ]
  %70 = phi float [ %104, %68 ], [ 0.000000e+00, %32 ]
  %71 = phi float [ %113, %68 ], [ 0.000000e+00, %32 ]
  %72 = phi float [ %122, %68 ], [ 0.000000e+00, %32 ]
  %73 = phi float [ %69, %68 ], [ 0.000000e+00, %32 ]
  %74 = phi float [ %70, %68 ], [ 0.000000e+00, %32 ]
  %75 = phi float [ %71, %68 ], [ 0.000000e+00, %32 ]
  %76 = phi float [ %72, %68 ], [ 0.000000e+00, %32 ]
  %77 = phi i64 [ %80, %68 ], [ %18, %32 ]
  %78 = phi <4 x float> [ %79, %68 ], [ zeroinitializer, %32 ]
  %79 = phi <4 x float> [ %86, %68 ], [ zeroinitializer, %32 ]
  %80 = add nsw i64 %77, -1
  %81 = mul nsw i64 %80, %17
  %82 = add nsw i64 %81, %31
  %83 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %1, i64 %82, i32 0, i32 0, i32 0, i64 0
  %84 = bitcast i8* %83 to <4 x i8>*
  %85 = load <4 x i8>, <4 x i8>* %84, align 4, !tbaa !32
  %86 = uitofp <4 x i8> %85 to <4 x float>
  %87 = extractelement <4 x float> %79, i64 0
  %88 = fmul contract float %87, %7
  %89 = extractelement <4 x float> %78, i64 0
  %90 = fmul contract float %89, %8
  %91 = fadd contract float %88, %90
  %92 = fmul contract float %69, %9
  %93 = fsub contract float %91, %92
  %94 = fmul contract float %73, %10
  %95 = fsub contract float %93, %94
  %96 = extractelement <4 x float> %79, i64 1
  %97 = fmul contract float %96, %7
  %98 = extractelement <4 x float> %78, i64 1
  %99 = fmul contract float %98, %8
  %100 = fadd contract float %97, %99
  %101 = fmul contract float %70, %9
  %102 = fsub contract float %100, %101
  %103 = fmul contract float %74, %10
  %104 = fsub contract float %102, %103
  %105 = extractelement <4 x float> %79, i64 2
  %106 = fmul contract float %105, %7
  %107 = extractelement <4 x float> %78, i64 2
  %108 = fmul contract float %107, %8
  %109 = fadd contract float %106, %108
  %110 = fmul contract float %71, %9
  %111 = fsub contract float %109, %110
  %112 = fmul contract float %75, %10
  %113 = fsub contract float %111, %112
  %114 = extractelement <4 x float> %79, i64 3
  %115 = fmul contract float %114, %7
  %116 = extractelement <4 x float> %78, i64 3
  %117 = fmul contract float %116, %8
  %118 = fadd contract float %115, %117
  %119 = fmul contract float %72, %9
  %120 = fsub contract float %118, %119
  %121 = fmul contract float %76, %10
  %122 = fsub contract float %120, %121
  %123 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %82, i32 0, i32 0, i32 0, i64 0
  %124 = load i8, i8* %123, align 4, !tbaa !32
  %125 = uitofp i8 %124 to float
  %126 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %82, i32 0, i32 0, i32 0, i64 1
  %127 = load i8, i8* %126, align 1, !tbaa !32
  %128 = uitofp i8 %127 to float
  %129 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %82, i32 0, i32 0, i32 0, i64 2
  %130 = load i8, i8* %129, align 2, !tbaa !32
  %131 = uitofp i8 %130 to float
  %132 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %82, i32 0, i32 0, i32 0, i64 3
  %133 = load i8, i8* %132, align 1, !tbaa !32
  %134 = uitofp i8 %133 to float
  %135 = fadd contract float %95, %125
  %136 = fadd contract float %104, %128
  %137 = fadd contract float %113, %131
  %138 = fadd contract float %122, %134
  %139 = fptoui float %135 to i8
  store i8 %139, i8* %123, align 4, !tbaa !32
  %140 = fptoui float %136 to i8
  store i8 %140, i8* %126, align 1, !tbaa !32
  %141 = fptoui float %137 to i8
  store i8 %141, i8* %129, align 2, !tbaa !32
  %142 = fptoui float %138 to i8
  store i8 %142, i8* %132, align 1, !tbaa !32
  %143 = icmp sgt i64 %77, 1
  br i1 %143, label %68, label %65, !llvm.loop !125
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN17RecursiveGaussian12transposeCPUEP15HIP_vector_typeIhLj4EES2_ii(%class.RecursiveGaussian* nocapture nonnull readnone align 8 %0, %struct.HIP_vector_type* nocapture readonly %1, %struct.HIP_vector_type* nocapture writeonly %2, i32 %3, i32 %4) local_unnamed_addr #19 align 2 {
  %6 = icmp sgt i32 %4, 0
  %7 = icmp sgt i32 %3, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %52

9:                                                ; preds = %5
  %10 = zext i32 %4 to i64
  %11 = zext i32 %3 to i64
  %12 = zext i32 %4 to i64
  %13 = zext i32 %3 to i64
  %14 = and i64 %13, 1
  %15 = icmp eq i32 %3, 1
  %16 = and i64 %13, 4294967294
  %17 = icmp eq i64 %14, 0
  br label %18

18:                                               ; preds = %9, %49
  %19 = phi i64 [ 0, %9 ], [ %50, %49 ]
  %20 = mul nsw i64 %19, %11
  br i1 %15, label %40, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %37, %21 ], [ 0, %18 ]
  %23 = phi i64 [ %38, %21 ], [ 0, %18 ]
  %24 = add nuw nsw i64 %22, %20
  %25 = mul nsw i64 %22, %10
  %26 = add nuw nsw i64 %25, %19
  %27 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %1, i64 %24, i32 0, i32 0, i32 0
  %28 = load <4 x i8>, <4 x i8>* %27, align 4, !tbaa !32
  %29 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %26, i32 0, i32 0, i32 0
  store <4 x i8> %28, <4 x i8>* %29, align 4, !tbaa !32
  %30 = or i64 %22, 1
  %31 = add nuw nsw i64 %30, %20
  %32 = mul nsw i64 %30, %10
  %33 = add nuw nsw i64 %32, %19
  %34 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %1, i64 %31, i32 0, i32 0, i32 0
  %35 = load <4 x i8>, <4 x i8>* %34, align 4, !tbaa !32
  %36 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %33, i32 0, i32 0, i32 0
  store <4 x i8> %35, <4 x i8>* %36, align 4, !tbaa !32
  %37 = add nuw nsw i64 %22, 2
  %38 = add i64 %23, 2
  %39 = icmp eq i64 %38, %16
  br i1 %39, label %40, label %21, !llvm.loop !126

40:                                               ; preds = %21, %18
  %41 = phi i64 [ 0, %18 ], [ %37, %21 ]
  br i1 %17, label %49, label %42

42:                                               ; preds = %40
  %43 = add nuw nsw i64 %41, %20
  %44 = mul nsw i64 %41, %10
  %45 = add nuw nsw i64 %44, %19
  %46 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %1, i64 %43, i32 0, i32 0, i32 0
  %47 = load <4 x i8>, <4 x i8>* %46, align 4, !tbaa !32
  %48 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %2, i64 %45, i32 0, i32 0, i32 0
  store <4 x i8> %47, <4 x i8>* %48, align 4, !tbaa !32
  br label %49

49:                                               ; preds = %40, %42
  %50 = add nuw nsw i64 %19, 1
  %51 = icmp eq i64 %50, %12
  br i1 %51, label %52, label %18, !llvm.loop !127

52:                                               ; preds = %49, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN17RecursiveGaussian29recursiveGaussianCPUReferenceEv(%class.RecursiveGaussian* nocapture nonnull readonly align 8 dereferenceable(272) %0) local_unnamed_addr #11 align 2 {
  %2 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %3 = load i32, i32* %2, align 4, !tbaa !23
  %4 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %5 = load i32, i32* %4, align 8, !tbaa !18
  %6 = mul i32 %5, %3
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = tail call noalias align 16 i8* @malloc(i64 %8) #28
  %10 = bitcast i8* %9 to %struct.HIP_vector_type*
  %11 = icmp eq i8* %9, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0))
  br label %139

14:                                               ; preds = %1
  %15 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 7
  %16 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %15, align 8, !tbaa !33
  %17 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 6
  %18 = load float, float* %17, align 4, !tbaa !78
  %19 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 7
  %20 = load float, float* %19, align 8, !tbaa !79
  %21 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 8
  %22 = load float, float* %21, align 4, !tbaa !80
  %23 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 9
  %24 = load float, float* %23, align 8, !tbaa !81
  %25 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 4
  %26 = load float, float* %25, align 4, !tbaa !82
  %27 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 12, i32 5
  %28 = load float, float* %27, align 8, !tbaa !83
  tail call void @_ZN17RecursiveGaussian20recursiveGaussianCPUEP15HIP_vector_typeIhLj4EES2_iiffffffff(%class.RecursiveGaussian* nonnull align 8 undef, %struct.HIP_vector_type* %16, %struct.HIP_vector_type* nonnull %10, i32 %3, i32 %5, float %18, float %20, float %22, float %24, float %26, float %28, float undef, float undef)
  %29 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 8
  %30 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %29, align 8, !tbaa !37
  %31 = load i32, i32* %2, align 4, !tbaa !23
  %32 = load i32, i32* %4, align 8, !tbaa !18
  %33 = icmp sgt i32 %32, 0
  %34 = icmp sgt i32 %31, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %81

36:                                               ; preds = %14
  %37 = zext i32 %32 to i64
  %38 = zext i32 %31 to i64
  %39 = and i64 %38, 1
  %40 = icmp eq i32 %31, 1
  %41 = and i64 %38, 4294967294
  %42 = icmp eq i64 %39, 0
  br label %43

43:                                               ; preds = %74, %36
  %44 = phi i64 [ 0, %36 ], [ %75, %74 ]
  %45 = mul nuw nsw i64 %44, %38
  br i1 %40, label %65, label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %62, %46 ], [ 0, %43 ]
  %48 = phi i64 [ %63, %46 ], [ 0, %43 ]
  %49 = add nuw nsw i64 %47, %45
  %50 = mul nuw nsw i64 %47, %37
  %51 = add nuw nsw i64 %50, %44
  %52 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %10, i64 %49, i32 0, i32 0, i32 0
  %53 = load <4 x i8>, <4 x i8>* %52, align 4, !tbaa !32
  %54 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %30, i64 %51, i32 0, i32 0, i32 0
  store <4 x i8> %53, <4 x i8>* %54, align 4, !tbaa !32
  %55 = or i64 %47, 1
  %56 = add nuw nsw i64 %55, %45
  %57 = mul nuw nsw i64 %55, %37
  %58 = add nuw nsw i64 %57, %44
  %59 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %10, i64 %56, i32 0, i32 0, i32 0
  %60 = load <4 x i8>, <4 x i8>* %59, align 4, !tbaa !32
  %61 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %30, i64 %58, i32 0, i32 0, i32 0
  store <4 x i8> %60, <4 x i8>* %61, align 4, !tbaa !32
  %62 = add nuw nsw i64 %47, 2
  %63 = add i64 %48, 2
  %64 = icmp eq i64 %63, %41
  br i1 %64, label %65, label %46, !llvm.loop !126

65:                                               ; preds = %46, %43
  %66 = phi i64 [ 0, %43 ], [ %62, %46 ]
  br i1 %42, label %74, label %67

67:                                               ; preds = %65
  %68 = add nuw nsw i64 %66, %45
  %69 = mul nuw nsw i64 %66, %37
  %70 = add nuw nsw i64 %69, %44
  %71 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %10, i64 %68, i32 0, i32 0, i32 0
  %72 = load <4 x i8>, <4 x i8>* %71, align 4, !tbaa !32
  %73 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %30, i64 %70, i32 0, i32 0, i32 0
  store <4 x i8> %72, <4 x i8>* %73, align 4, !tbaa !32
  br label %74

74:                                               ; preds = %65, %67
  %75 = add nuw nsw i64 %44, 1
  %76 = icmp eq i64 %75, %37
  br i1 %76, label %77, label %43, !llvm.loop !127

77:                                               ; preds = %74
  %78 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %29, align 8, !tbaa !37
  %79 = load i32, i32* %4, align 8, !tbaa !18
  %80 = load i32, i32* %2, align 4, !tbaa !23
  br label %81

81:                                               ; preds = %77, %14
  %82 = phi i32 [ %80, %77 ], [ %31, %14 ]
  %83 = phi i32 [ %79, %77 ], [ %32, %14 ]
  %84 = phi %struct.HIP_vector_type* [ %78, %77 ], [ %30, %14 ]
  %85 = load float, float* %17, align 4, !tbaa !78
  %86 = load float, float* %19, align 8, !tbaa !79
  %87 = load float, float* %21, align 4, !tbaa !80
  %88 = load float, float* %23, align 8, !tbaa !81
  %89 = load float, float* %25, align 4, !tbaa !82
  %90 = load float, float* %27, align 8, !tbaa !83
  tail call void @_ZN17RecursiveGaussian20recursiveGaussianCPUEP15HIP_vector_typeIhLj4EES2_iiffffffff(%class.RecursiveGaussian* nonnull align 8 undef, %struct.HIP_vector_type* %84, %struct.HIP_vector_type* nonnull %10, i32 %83, i32 %82, float %85, float %86, float %87, float %88, float %89, float %90, float undef, float undef)
  %91 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %29, align 8, !tbaa !37
  %92 = load i32, i32* %4, align 8, !tbaa !18
  %93 = load i32, i32* %2, align 4, !tbaa !23
  %94 = icmp sgt i32 %93, 0
  %95 = icmp sgt i32 %92, 0
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %138

97:                                               ; preds = %81
  %98 = zext i32 %93 to i64
  %99 = zext i32 %92 to i64
  %100 = and i64 %99, 1
  %101 = icmp eq i32 %92, 1
  %102 = and i64 %99, 4294967294
  %103 = icmp eq i64 %100, 0
  br label %104

104:                                              ; preds = %135, %97
  %105 = phi i64 [ 0, %97 ], [ %136, %135 ]
  %106 = mul nuw nsw i64 %105, %99
  br i1 %101, label %126, label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %123, %107 ], [ 0, %104 ]
  %109 = phi i64 [ %124, %107 ], [ 0, %104 ]
  %110 = add nuw nsw i64 %108, %106
  %111 = mul nuw nsw i64 %108, %98
  %112 = add nuw nsw i64 %111, %105
  %113 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %10, i64 %110, i32 0, i32 0, i32 0
  %114 = load <4 x i8>, <4 x i8>* %113, align 4, !tbaa !32
  %115 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %91, i64 %112, i32 0, i32 0, i32 0
  store <4 x i8> %114, <4 x i8>* %115, align 4, !tbaa !32
  %116 = or i64 %108, 1
  %117 = add nuw nsw i64 %116, %106
  %118 = mul nuw nsw i64 %116, %98
  %119 = add nuw nsw i64 %118, %105
  %120 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %10, i64 %117, i32 0, i32 0, i32 0
  %121 = load <4 x i8>, <4 x i8>* %120, align 4, !tbaa !32
  %122 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %91, i64 %119, i32 0, i32 0, i32 0
  store <4 x i8> %121, <4 x i8>* %122, align 4, !tbaa !32
  %123 = add nuw nsw i64 %108, 2
  %124 = add i64 %109, 2
  %125 = icmp eq i64 %124, %102
  br i1 %125, label %126, label %107, !llvm.loop !126

126:                                              ; preds = %107, %104
  %127 = phi i64 [ 0, %104 ], [ %123, %107 ]
  br i1 %103, label %135, label %128

128:                                              ; preds = %126
  %129 = add nuw nsw i64 %127, %106
  %130 = mul nuw nsw i64 %127, %98
  %131 = add nuw nsw i64 %130, %105
  %132 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %10, i64 %129, i32 0, i32 0, i32 0
  %133 = load <4 x i8>, <4 x i8>* %132, align 4, !tbaa !32
  %134 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %91, i64 %131, i32 0, i32 0, i32 0
  store <4 x i8> %133, <4 x i8>* %134, align 4, !tbaa !32
  br label %135

135:                                              ; preds = %126, %128
  %136 = add nuw nsw i64 %105, 1
  %137 = icmp eq i64 %136, %98
  br i1 %137, label %138, label %104, !llvm.loop !127

138:                                              ; preds = %135, %81
  tail call void @free(i8* nonnull %9) #28
  br label %139

139:                                              ; preds = %138, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN17RecursiveGaussian13verifyResultsEv(%class.RecursiveGaussian* nocapture nonnull readonly align 8 dereferenceable(272) %0) local_unnamed_addr #10 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 20
  %3 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %4 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %4, i64 0, i32 10
  %6 = load i8, i8* %5, align 1, !tbaa !128, !range !17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %342, label %8

8:                                                ; preds = %1
  tail call void @_ZN17RecursiveGaussian29recursiveGaussianCPUReferenceEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0)
  %9 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %10 = load i32, i32* %9, align 4, !tbaa !23
  %11 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %12 = load i32, i32* %11, align 8, !tbaa !18
  %13 = mul i32 %12, %10
  %14 = shl i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2
  %17 = tail call noalias nonnull i8* @_Znam(i64 %16) #31
  %18 = bitcast i8* %17 to float*
  %19 = tail call noalias nonnull i8* @_Znam(i64 %16) #31
  %20 = bitcast i8* %19 to float*
  %21 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 3
  %22 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %21, align 8
  %23 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 0, i32 0, i32 0, i32 0, i64 0
  %24 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 8
  %25 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %24, align 8
  %26 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 0, i32 0, i32 0, i32 0, i64 0
  %27 = icmp sgt i32 %13, 0
  br i1 %27, label %28, label %210

28:                                               ; preds = %8
  %29 = zext i32 %13 to i64
  %30 = icmp ult i32 %13, 4
  br i1 %30, label %185, label %31

31:                                               ; preds = %28
  %32 = shl nuw nsw i64 %29, 4
  %33 = getelementptr i8, i8* %17, i64 %32
  %34 = getelementptr i8, i8* %19, i64 %32
  %35 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %29, i32 0, i32 0, i32 0, i64 0
  %36 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %29, i32 0, i32 0, i32 0, i64 0
  %37 = icmp ult i8* %17, %34
  %38 = icmp ult i8* %19, %33
  %39 = and i1 %37, %38
  %40 = icmp ult i8* %17, %35
  %41 = icmp ult i8* %23, %33
  %42 = and i1 %40, %41
  %43 = or i1 %39, %42
  %44 = icmp ult i8* %17, %36
  %45 = icmp ult i8* %26, %33
  %46 = and i1 %44, %45
  %47 = or i1 %43, %46
  %48 = icmp ult i8* %19, %35
  %49 = icmp ult i8* %23, %34
  %50 = and i1 %48, %49
  %51 = or i1 %47, %50
  %52 = icmp ult i8* %19, %36
  %53 = icmp ult i8* %26, %34
  %54 = and i1 %52, %53
  %55 = or i1 %51, %54
  br i1 %55, label %185, label %56

56:                                               ; preds = %31
  %57 = and i64 %29, 4294967292
  %58 = getelementptr inbounds float, float* %18, i64 -3
  %59 = getelementptr inbounds float, float* %20, i64 -3
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi i64 [ 0, %56 ], [ %181, %60 ]
  %62 = or i64 %61, 1
  %63 = or i64 %61, 2
  %64 = or i64 %61, 3
  %65 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %61, i32 0, i32 0, i32 0, i64 0
  %66 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %62, i32 0, i32 0, i32 0, i64 0
  %67 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %63, i32 0, i32 0, i32 0, i64 0
  %68 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %64, i32 0, i32 0, i32 0, i64 0
  %69 = load i8, i8* %65, align 4, !tbaa !32, !alias.scope !129
  %70 = load i8, i8* %66, align 4, !tbaa !32, !alias.scope !129
  %71 = load i8, i8* %67, align 4, !tbaa !32, !alias.scope !129
  %72 = load i8, i8* %68, align 4, !tbaa !32, !alias.scope !129
  %73 = insertelement <4 x i8> poison, i8 %69, i64 0
  %74 = insertelement <4 x i8> %73, i8 %70, i64 1
  %75 = insertelement <4 x i8> %74, i8 %71, i64 2
  %76 = insertelement <4 x i8> %75, i8 %72, i64 3
  %77 = uitofp <4 x i8> %76 to <4 x float>
  %78 = shl nsw i64 %61, 2
  %79 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %61, i32 0, i32 0, i32 0, i64 1
  %80 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %62, i32 0, i32 0, i32 0, i64 1
  %81 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %63, i32 0, i32 0, i32 0, i64 1
  %82 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %64, i32 0, i32 0, i32 0, i64 1
  %83 = load i8, i8* %79, align 1, !tbaa !32, !alias.scope !129
  %84 = load i8, i8* %80, align 1, !tbaa !32, !alias.scope !129
  %85 = load i8, i8* %81, align 1, !tbaa !32, !alias.scope !129
  %86 = load i8, i8* %82, align 1, !tbaa !32, !alias.scope !129
  %87 = insertelement <4 x i8> poison, i8 %83, i64 0
  %88 = insertelement <4 x i8> %87, i8 %84, i64 1
  %89 = insertelement <4 x i8> %88, i8 %85, i64 2
  %90 = insertelement <4 x i8> %89, i8 %86, i64 3
  %91 = uitofp <4 x i8> %90 to <4 x float>
  %92 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %61, i32 0, i32 0, i32 0, i64 2
  %93 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %62, i32 0, i32 0, i32 0, i64 2
  %94 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %63, i32 0, i32 0, i32 0, i64 2
  %95 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %64, i32 0, i32 0, i32 0, i64 2
  %96 = load i8, i8* %92, align 2, !tbaa !32, !alias.scope !129
  %97 = load i8, i8* %93, align 2, !tbaa !32, !alias.scope !129
  %98 = load i8, i8* %94, align 2, !tbaa !32, !alias.scope !129
  %99 = load i8, i8* %95, align 2, !tbaa !32, !alias.scope !129
  %100 = insertelement <4 x i8> poison, i8 %96, i64 0
  %101 = insertelement <4 x i8> %100, i8 %97, i64 1
  %102 = insertelement <4 x i8> %101, i8 %98, i64 2
  %103 = insertelement <4 x i8> %102, i8 %99, i64 3
  %104 = uitofp <4 x i8> %103 to <4 x float>
  %105 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %61, i32 0, i32 0, i32 0, i64 3
  %106 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %62, i32 0, i32 0, i32 0, i64 3
  %107 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %63, i32 0, i32 0, i32 0, i64 3
  %108 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %64, i32 0, i32 0, i32 0, i64 3
  %109 = load i8, i8* %105, align 1, !tbaa !32, !alias.scope !129
  %110 = load i8, i8* %106, align 1, !tbaa !32, !alias.scope !129
  %111 = load i8, i8* %107, align 1, !tbaa !32, !alias.scope !129
  %112 = load i8, i8* %108, align 1, !tbaa !32, !alias.scope !129
  %113 = insertelement <4 x i8> poison, i8 %109, i64 0
  %114 = insertelement <4 x i8> %113, i8 %110, i64 1
  %115 = insertelement <4 x i8> %114, i8 %111, i64 2
  %116 = insertelement <4 x i8> %115, i8 %112, i64 3
  %117 = uitofp <4 x i8> %116 to <4 x float>
  %118 = or i64 %78, 3
  %119 = getelementptr inbounds float, float* %58, i64 %118
  %120 = bitcast float* %119 to <16 x float>*
  %121 = shufflevector <4 x float> %77, <4 x float> %91, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %122 = shufflevector <4 x float> %104, <4 x float> %117, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %123 = shufflevector <8 x float> %121, <8 x float> %122, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %123, <16 x float>* %120, align 4, !tbaa !9
  %124 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %61, i32 0, i32 0, i32 0, i64 0
  %125 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %62, i32 0, i32 0, i32 0, i64 0
  %126 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %63, i32 0, i32 0, i32 0, i64 0
  %127 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %64, i32 0, i32 0, i32 0, i64 0
  %128 = load i8, i8* %124, align 4, !tbaa !32, !alias.scope !132
  %129 = load i8, i8* %125, align 4, !tbaa !32, !alias.scope !132
  %130 = load i8, i8* %126, align 4, !tbaa !32, !alias.scope !132
  %131 = load i8, i8* %127, align 4, !tbaa !32, !alias.scope !132
  %132 = insertelement <4 x i8> poison, i8 %128, i64 0
  %133 = insertelement <4 x i8> %132, i8 %129, i64 1
  %134 = insertelement <4 x i8> %133, i8 %130, i64 2
  %135 = insertelement <4 x i8> %134, i8 %131, i64 3
  %136 = uitofp <4 x i8> %135 to <4 x float>
  %137 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %61, i32 0, i32 0, i32 0, i64 1
  %138 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %62, i32 0, i32 0, i32 0, i64 1
  %139 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %63, i32 0, i32 0, i32 0, i64 1
  %140 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %64, i32 0, i32 0, i32 0, i64 1
  %141 = load i8, i8* %137, align 1, !tbaa !32, !alias.scope !132
  %142 = load i8, i8* %138, align 1, !tbaa !32, !alias.scope !132
  %143 = load i8, i8* %139, align 1, !tbaa !32, !alias.scope !132
  %144 = load i8, i8* %140, align 1, !tbaa !32, !alias.scope !132
  %145 = insertelement <4 x i8> poison, i8 %141, i64 0
  %146 = insertelement <4 x i8> %145, i8 %142, i64 1
  %147 = insertelement <4 x i8> %146, i8 %143, i64 2
  %148 = insertelement <4 x i8> %147, i8 %144, i64 3
  %149 = uitofp <4 x i8> %148 to <4 x float>
  %150 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %61, i32 0, i32 0, i32 0, i64 2
  %151 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %62, i32 0, i32 0, i32 0, i64 2
  %152 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %63, i32 0, i32 0, i32 0, i64 2
  %153 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %64, i32 0, i32 0, i32 0, i64 2
  %154 = load i8, i8* %150, align 2, !tbaa !32, !alias.scope !132
  %155 = load i8, i8* %151, align 2, !tbaa !32, !alias.scope !132
  %156 = load i8, i8* %152, align 2, !tbaa !32, !alias.scope !132
  %157 = load i8, i8* %153, align 2, !tbaa !32, !alias.scope !132
  %158 = insertelement <4 x i8> poison, i8 %154, i64 0
  %159 = insertelement <4 x i8> %158, i8 %155, i64 1
  %160 = insertelement <4 x i8> %159, i8 %156, i64 2
  %161 = insertelement <4 x i8> %160, i8 %157, i64 3
  %162 = uitofp <4 x i8> %161 to <4 x float>
  %163 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %61, i32 0, i32 0, i32 0, i64 3
  %164 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %62, i32 0, i32 0, i32 0, i64 3
  %165 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %63, i32 0, i32 0, i32 0, i64 3
  %166 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %64, i32 0, i32 0, i32 0, i64 3
  %167 = load i8, i8* %163, align 1, !tbaa !32, !alias.scope !132
  %168 = load i8, i8* %164, align 1, !tbaa !32, !alias.scope !132
  %169 = load i8, i8* %165, align 1, !tbaa !32, !alias.scope !132
  %170 = load i8, i8* %166, align 1, !tbaa !32, !alias.scope !132
  %171 = insertelement <4 x i8> poison, i8 %167, i64 0
  %172 = insertelement <4 x i8> %171, i8 %168, i64 1
  %173 = insertelement <4 x i8> %172, i8 %169, i64 2
  %174 = insertelement <4 x i8> %173, i8 %170, i64 3
  %175 = uitofp <4 x i8> %174 to <4 x float>
  %176 = getelementptr inbounds float, float* %59, i64 %118
  %177 = bitcast float* %176 to <16 x float>*
  %178 = shufflevector <4 x float> %136, <4 x float> %149, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %179 = shufflevector <4 x float> %162, <4 x float> %175, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %180 = shufflevector <8 x float> %178, <8 x float> %179, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %180, <16 x float>* %177, align 4, !tbaa !9
  %181 = add nuw i64 %61, 4
  %182 = icmp eq i64 %181, %57
  br i1 %182, label %183, label %60, !llvm.loop !134

183:                                              ; preds = %60
  %184 = icmp eq i64 %57, %29
  br i1 %184, label %187, label %185

185:                                              ; preds = %31, %28, %183
  %186 = phi i64 [ 0, %31 ], [ 0, %28 ], [ %57, %183 ]
  br label %247

187:                                              ; preds = %247, %183
  %188 = icmp sgt i32 %13, 1
  br i1 %188, label %189, label %210

189:                                              ; preds = %187
  %190 = add nsw i64 %29, -1
  %191 = and i64 %190, 1
  %192 = icmp eq i32 %13, 2
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = and i64 %190, -2
  br label %216

195:                                              ; preds = %216, %189
  %196 = phi <2 x float> [ undef, %189 ], [ %238, %216 ]
  %197 = phi i64 [ 1, %189 ], [ %239, %216 ]
  %198 = phi <2 x float> [ zeroinitializer, %189 ], [ %238, %216 ]
  %199 = icmp eq i64 %191, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds float, float* %20, i64 %197
  %202 = load float, float* %201, align 4, !tbaa !9
  %203 = getelementptr inbounds float, float* %18, i64 %197
  %204 = load float, float* %203, align 4, !tbaa !9
  %205 = fsub contract float %202, %204
  %206 = insertelement <2 x float> poison, float %202, i64 0
  %207 = insertelement <2 x float> %206, float %205, i64 1
  %208 = fmul contract <2 x float> %207, %207
  %209 = fadd contract <2 x float> %198, %208
  br label %210

210:                                              ; preds = %200, %195, %8, %187
  %211 = phi <2 x float> [ zeroinitializer, %187 ], [ zeroinitializer, %8 ], [ %196, %195 ], [ %209, %200 ]
  %212 = extractelement <2 x float> %211, i64 0
  %213 = tail call contract float @sqrtf(float %212) #28
  %214 = tail call contract float @llvm.fabs.f32(float %212) #28
  %215 = fcmp contract olt float %214, 0x3E7AD7F2A0000000
  br i1 %215, label %312, label %242

216:                                              ; preds = %216, %193
  %217 = phi i64 [ 1, %193 ], [ %239, %216 ]
  %218 = phi <2 x float> [ zeroinitializer, %193 ], [ %238, %216 ]
  %219 = phi i64 [ 0, %193 ], [ %240, %216 ]
  %220 = getelementptr inbounds float, float* %20, i64 %217
  %221 = load float, float* %220, align 4, !tbaa !9
  %222 = getelementptr inbounds float, float* %18, i64 %217
  %223 = load float, float* %222, align 4, !tbaa !9
  %224 = fsub contract float %221, %223
  %225 = insertelement <2 x float> poison, float %221, i64 0
  %226 = insertelement <2 x float> %225, float %224, i64 1
  %227 = fmul contract <2 x float> %226, %226
  %228 = fadd contract <2 x float> %218, %227
  %229 = add nuw nsw i64 %217, 1
  %230 = getelementptr inbounds float, float* %20, i64 %229
  %231 = load float, float* %230, align 4, !tbaa !9
  %232 = getelementptr inbounds float, float* %18, i64 %229
  %233 = load float, float* %232, align 4, !tbaa !9
  %234 = fsub contract float %231, %233
  %235 = insertelement <2 x float> poison, float %231, i64 0
  %236 = insertelement <2 x float> %235, float %234, i64 1
  %237 = fmul contract <2 x float> %236, %236
  %238 = fadd contract <2 x float> %228, %237
  %239 = add nuw nsw i64 %217, 2
  %240 = add i64 %219, 2
  %241 = icmp eq i64 %240, %194
  br i1 %241, label %195, label %216, !llvm.loop !136

242:                                              ; preds = %210
  %243 = extractelement <2 x float> %211, i64 1
  %244 = tail call contract float @sqrtf(float %243) #28
  %245 = fdiv contract float %244, %213
  %246 = fcmp contract olt float %245, 0x3F1A36E2E0000000
  br i1 %246, label %287, label %312

247:                                              ; preds = %185, %247
  %248 = phi i64 [ %285, %247 ], [ %186, %185 ]
  %249 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %248, i32 0, i32 0, i32 0, i64 0
  %250 = load i8, i8* %249, align 4, !tbaa !32
  %251 = uitofp i8 %250 to float
  %252 = shl nsw i64 %248, 2
  %253 = getelementptr inbounds float, float* %18, i64 %252
  store float %251, float* %253, align 4, !tbaa !9
  %254 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %248, i32 0, i32 0, i32 0, i64 1
  %255 = load i8, i8* %254, align 1, !tbaa !32
  %256 = uitofp i8 %255 to float
  %257 = or i64 %252, 1
  %258 = getelementptr inbounds float, float* %18, i64 %257
  store float %256, float* %258, align 4, !tbaa !9
  %259 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %248, i32 0, i32 0, i32 0, i64 2
  %260 = load i8, i8* %259, align 2, !tbaa !32
  %261 = uitofp i8 %260 to float
  %262 = or i64 %252, 2
  %263 = getelementptr inbounds float, float* %18, i64 %262
  store float %261, float* %263, align 4, !tbaa !9
  %264 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %22, i64 %248, i32 0, i32 0, i32 0, i64 3
  %265 = load i8, i8* %264, align 1, !tbaa !32
  %266 = uitofp i8 %265 to float
  %267 = or i64 %252, 3
  %268 = getelementptr inbounds float, float* %18, i64 %267
  store float %266, float* %268, align 4, !tbaa !9
  %269 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %248, i32 0, i32 0, i32 0, i64 0
  %270 = load i8, i8* %269, align 4, !tbaa !32
  %271 = uitofp i8 %270 to float
  %272 = getelementptr inbounds float, float* %20, i64 %252
  store float %271, float* %272, align 4, !tbaa !9
  %273 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %248, i32 0, i32 0, i32 0, i64 1
  %274 = load i8, i8* %273, align 1, !tbaa !32
  %275 = uitofp i8 %274 to float
  %276 = getelementptr inbounds float, float* %20, i64 %257
  store float %275, float* %276, align 4, !tbaa !9
  %277 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %248, i32 0, i32 0, i32 0, i64 2
  %278 = load i8, i8* %277, align 2, !tbaa !32
  %279 = uitofp i8 %278 to float
  %280 = getelementptr inbounds float, float* %20, i64 %262
  store float %279, float* %280, align 4, !tbaa !9
  %281 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type* %25, i64 %248, i32 0, i32 0, i32 0, i64 3
  %282 = load i8, i8* %281, align 1, !tbaa !32
  %283 = uitofp i8 %282 to float
  %284 = getelementptr inbounds float, float* %20, i64 %267
  store float %283, float* %284, align 4, !tbaa !9
  %285 = add nuw nsw i64 %248, 1
  %286 = icmp eq i64 %285, %29
  br i1 %286, label %187, label %247, !llvm.loop !137

287:                                              ; preds = %242
  %288 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i64 8)
  %289 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %290 = getelementptr i8, i8* %289, i64 -24
  %291 = bitcast i8* %290 to i64*
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %292
  %294 = getelementptr inbounds i8, i8* %293, i64 240
  %295 = bitcast i8* %294 to %"class.std::ctype"**
  %296 = load %"class.std::ctype"*, %"class.std::ctype"** %295, align 8, !tbaa !28
  %297 = icmp eq %"class.std::ctype"* %296, null
  br i1 %297, label %298, label %299

298:                                              ; preds = %287
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

299:                                              ; preds = %287
  %300 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %296, i64 0, i32 8
  %301 = load i8, i8* %300, align 8, !tbaa !30
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %296, i64 0, i32 9, i64 10
  %305 = load i8, i8* %304, align 1, !tbaa !32
  br label %337

306:                                              ; preds = %299
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %296)
  %307 = bitcast %"class.std::ctype"* %296 to i8 (%"class.std::ctype"*, i8)***
  %308 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %307, align 8, !tbaa !26
  %309 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %308, i64 6
  %310 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %309, align 8
  %311 = tail call signext i8 %310(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %296, i8 signext 10)
  br label %337

312:                                              ; preds = %210, %242
  %313 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 7)
  %314 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %315 = getelementptr i8, i8* %314, i64 -24
  %316 = bitcast i8* %315 to i64*
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %317
  %319 = getelementptr inbounds i8, i8* %318, i64 240
  %320 = bitcast i8* %319 to %"class.std::ctype"**
  %321 = load %"class.std::ctype"*, %"class.std::ctype"** %320, align 8, !tbaa !28
  %322 = icmp eq %"class.std::ctype"* %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %312
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

324:                                              ; preds = %312
  %325 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %321, i64 0, i32 8
  %326 = load i8, i8* %325, align 8, !tbaa !30
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %321, i64 0, i32 9, i64 10
  %330 = load i8, i8* %329, align 1, !tbaa !32
  br label %337

331:                                              ; preds = %324
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %321)
  %332 = bitcast %"class.std::ctype"* %321 to i8 (%"class.std::ctype"*, i8)***
  %333 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %332, align 8, !tbaa !26
  %334 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %333, i64 6
  %335 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %334, align 8
  %336 = tail call signext i8 %335(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %321, i8 signext 10)
  br label %337

337:                                              ; preds = %331, %328, %306, %303
  %338 = phi i8 [ %305, %303 ], [ %311, %306 ], [ %330, %328 ], [ %336, %331 ]
  %339 = phi i32 [ 0, %303 ], [ 0, %306 ], [ 1, %328 ], [ 1, %331 ]
  %340 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %338)
  %341 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %340)
  tail call void @_ZdaPv(i8* nonnull %17) #30
  tail call void @_ZdaPv(i8* nonnull %19) #30
  br label %342

342:                                              ; preds = %337, %1
  %343 = phi i32 [ 0, %1 ], [ %339, %337 ]
  ret i32 %343
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #15

; Function Attrs: uwtable
define dso_local void @_ZN17RecursiveGaussian10printStatsEv(%class.RecursiveGaussian* nocapture nonnull readonly align 8 dereferenceable(272) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %26 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 20
  %27 = bitcast %"class.appsdk::HIPCommandArgs"** %26 to %"class.appsdk::SDKCmdArgsParser"**
  %28 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %28, i64 0, i32 11
  %30 = load i8, i8* %29, align 2, !tbaa !138, !range !17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %998, label %32

32:                                               ; preds = %1
  %33 = bitcast [4 x %"class.std::basic_string"]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #28
  %34 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #28
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
  %36 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  %37 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %37) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %18)
          to label %38 unwind label %936

38:                                               ; preds = %32
  %39 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  %40 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %40) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %41 unwind label %938

41:                                               ; preds = %38
  %42 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  %43 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %43) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20)
          to label %44 unwind label %940

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #28
  %45 = bitcast [4 x %"class.std::basic_string"]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %45) #28
  %46 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  %47 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 16, !tbaa !88
  %48 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !88
  %49 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 16, !tbaa !88
  %50 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %50, align 8, !tbaa !88
  %51 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 0
  %52 = load double, double* %51, align 8, !tbaa !110
  %53 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 1
  %54 = load double, double* %53, align 8, !tbaa !122
  %55 = fadd contract double %52, %54
  %56 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 19
  %57 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !105
  %58 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %57, i64 0, i32 1
  store double %55, double* %58, align 8, !tbaa !139
  %59 = bitcast %"class.std::basic_string"* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #28
  %60 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 13
  %61 = load i32, i32* %60, align 4, !tbaa !23
  %62 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %62) #28, !noalias !142
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %63 unwind label %952

63:                                               ; preds = %44
  %64 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %65 = load i8*, i8** %64, align 8, !tbaa !26, !noalias !142
  %66 = getelementptr i8, i8* %65, i64 -24
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8, !noalias !142
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 24
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 8, !tbaa !145, !noalias !142
  %73 = and i32 %72, -75
  %74 = or i32 %73, 2
  store i32 %74, i32* %71, align 8, !tbaa !151, !noalias !142
  %75 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %76 = zext i32 %61 to i64
  %77 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %75, i64 %76)
          to label %78 unwind label %108, !noalias !142

78:                                               ; preds = %63
  %79 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %22, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %79)
          to label %80 unwind label %108

80:                                               ; preds = %78
  %81 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %82 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %81, i32 (...)*** %82, align 8, !tbaa !26, !noalias !142
  %83 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %84 = getelementptr i32 (...)*, i32 (...)** %81, i64 -3
  %85 = bitcast i32 (...)** %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %62, i64 %86
  %88 = bitcast i8* %87 to i32 (...)***
  store i32 (...)** %83, i32 (...)*** %88, align 8, !tbaa !26, !noalias !142
  %89 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %89, align 8, !tbaa !26, !noalias !142
  %90 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8, !tbaa !11, !noalias !142
  %92 = getelementptr inbounds i8, i8* %91, i64 -24
  %93 = bitcast i8* %92 to %"struct.std::basic_string<char>::_Rep"*
  %94 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %94) #28, !noalias !142
  %95 = icmp eq i8* %92, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %95, label %110, label %96, !prof !25

96:                                               ; preds = %80
  %97 = getelementptr inbounds i8, i8* %91, i64 -8
  %98 = bitcast i8* %97 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %99, label %101

99:                                               ; preds = %96
  %100 = atomicrmw volatile add i32* %98, i32 -1 acq_rel, align 4
  br label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %98, align 8, !tbaa !7
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %98, align 8, !tbaa !7
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %93, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14) #28
  br label %110

108:                                              ; preds = %78, %63
  %109 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %62) #28, !noalias !142
  br label %956

110:                                              ; preds = %107, %104, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %94) #28, !noalias !142
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %89, align 8, !tbaa !26, !noalias !142
  %111 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %111) #28
  %112 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %112) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %62) #28, !noalias !142
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %46, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22)
          to label %113 unwind label %954

113:                                              ; preds = %110
  %114 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %22, i64 0, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8, !tbaa !11
  %116 = getelementptr inbounds i8, i8* %115, i64 -24
  %117 = bitcast i8* %116 to %"struct.std::basic_string<char>::_Rep"*
  %118 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %118) #28
  %119 = icmp eq i8* %116, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %119, label %132, label %120, !prof !25

120:                                              ; preds = %113
  %121 = getelementptr inbounds i8, i8* %115, i64 -8
  %122 = bitcast i8* %121 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %123, label %125

123:                                              ; preds = %120
  %124 = atomicrmw volatile add i32* %122, i32 -1 acq_rel, align 4
  br label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %122, align 8, !tbaa !7
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %122, align 8, !tbaa !7
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %117, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #28
  br label %132

132:                                              ; preds = %113, %128, %131
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %118) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #28
  %133 = bitcast %"class.std::basic_string"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %133) #28
  %134 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 14
  %135 = load i32, i32* %134, align 8, !tbaa !18
  %136 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %136) #28, !noalias !152
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %137 unwind label %958

137:                                              ; preds = %132
  %138 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %139 = load i8*, i8** %138, align 8, !tbaa !26, !noalias !152
  %140 = getelementptr i8, i8* %139, i64 -24
  %141 = bitcast i8* %140 to i64*
  %142 = load i64, i64* %141, align 8, !noalias !152
  %143 = getelementptr inbounds i8, i8* %136, i64 %142
  %144 = getelementptr inbounds i8, i8* %143, i64 24
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %145, align 8, !tbaa !145, !noalias !152
  %147 = and i32 %146, -75
  %148 = or i32 %147, 2
  store i32 %148, i32* %145, align 8, !tbaa !151, !noalias !152
  %149 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %150 = zext i32 %135 to i64
  %151 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %149, i64 %150)
          to label %152 unwind label %178, !noalias !152

152:                                              ; preds = %137
  %153 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %23, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %153)
          to label %154 unwind label %178

154:                                              ; preds = %152
  %155 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %81, i32 (...)*** %155, align 8, !tbaa !26, !noalias !152
  %156 = load i64, i64* %85, align 8
  %157 = getelementptr inbounds i8, i8* %136, i64 %156
  %158 = bitcast i8* %157 to i32 (...)***
  store i32 (...)** %83, i32 (...)*** %158, align 8, !tbaa !26, !noalias !152
  %159 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %159, align 8, !tbaa !26, !noalias !152
  %160 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8, !tbaa !11, !noalias !152
  %162 = getelementptr inbounds i8, i8* %161, i64 -24
  %163 = bitcast i8* %162 to %"struct.std::basic_string<char>::_Rep"*
  %164 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %164) #28, !noalias !152
  %165 = icmp eq i8* %162, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %165, label %180, label %166, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %163, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #28
  br label %180

178:                                              ; preds = %152, %137
  %179 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %136) #28, !noalias !152
  br label %962

180:                                              ; preds = %177, %174, %154
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %164) #28, !noalias !152
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %159, align 8, !tbaa !26, !noalias !152
  %181 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %181) #28
  %182 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %182) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %136) #28, !noalias !152
  %183 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %183, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23)
          to label %184 unwind label %960

184:                                              ; preds = %180
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %23, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !11
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #28
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #28
  br label %203

203:                                              ; preds = %184, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #28
  %204 = bitcast %"class.std::basic_string"* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %204) #28
  %205 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %56, align 8, !tbaa !105
  %206 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %205, i64 0, i32 1
  %207 = load double, double* %206, align 8, !tbaa !139
  %208 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %208) #28, !noalias !155
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %209 unwind label %964

209:                                              ; preds = %203
  %210 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %211 = load i8*, i8** %210, align 8, !tbaa !26, !noalias !155
  %212 = getelementptr i8, i8* %211, i64 -24
  %213 = bitcast i8* %212 to i64*
  %214 = load i64, i64* %213, align 8, !noalias !155
  %215 = getelementptr inbounds i8, i8* %208, i64 %214
  %216 = getelementptr inbounds i8, i8* %215, i64 24
  %217 = bitcast i8* %216 to i32*
  %218 = load i32, i32* %217, align 8, !tbaa !145, !noalias !155
  %219 = and i32 %218, -75
  %220 = or i32 %219, 2
  store i32 %220, i32* %217, align 8, !tbaa !151, !noalias !155
  %221 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %222 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %221, double %207)
          to label %223 unwind label %249, !noalias !155

223:                                              ; preds = %209
  %224 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %24, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %224)
          to label %225 unwind label %249

225:                                              ; preds = %223
  %226 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %81, i32 (...)*** %226, align 8, !tbaa !26, !noalias !155
  %227 = load i64, i64* %85, align 8
  %228 = getelementptr inbounds i8, i8* %208, i64 %227
  %229 = bitcast i8* %228 to i32 (...)***
  store i32 (...)** %83, i32 (...)*** %229, align 8, !tbaa !26, !noalias !155
  %230 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %230, align 8, !tbaa !26, !noalias !155
  %231 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8, !tbaa !11, !noalias !155
  %233 = getelementptr inbounds i8, i8* %232, i64 -24
  %234 = bitcast i8* %233 to %"struct.std::basic_string<char>::_Rep"*
  %235 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %235) #28, !noalias !155
  %236 = icmp eq i8* %233, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %236, label %251, label %237, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %234, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #28
  br label %251

249:                                              ; preds = %223, %209
  %250 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %208) #28, !noalias !155
  br label %968

251:                                              ; preds = %248, %245, %225
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %235) #28, !noalias !155
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %230, align 8, !tbaa !26, !noalias !155
  %252 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %252) #28
  %253 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %253) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %208) #28, !noalias !155
  %254 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %254, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24)
          to label %255 unwind label %966

255:                                              ; preds = %251
  %256 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %24, i64 0, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8, !tbaa !11
  %258 = getelementptr inbounds i8, i8* %257, i64 -24
  %259 = bitcast i8* %258 to %"struct.std::basic_string<char>::_Rep"*
  %260 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %260) #28
  %261 = icmp eq i8* %258, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %261, label %274, label %262, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %259, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #28
  br label %274

274:                                              ; preds = %255, %270, %273
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %260) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %204) #28
  %275 = bitcast %"class.std::basic_string"* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %275) #28
  %276 = load double, double* %53, align 8, !tbaa !122
  %277 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %277) #28, !noalias !158
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %278 unwind label %970

278:                                              ; preds = %274
  %279 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %280 = load i8*, i8** %279, align 8, !tbaa !26, !noalias !158
  %281 = getelementptr i8, i8* %280, i64 -24
  %282 = bitcast i8* %281 to i64*
  %283 = load i64, i64* %282, align 8, !noalias !158
  %284 = getelementptr inbounds i8, i8* %277, i64 %283
  %285 = getelementptr inbounds i8, i8* %284, i64 24
  %286 = bitcast i8* %285 to i32*
  %287 = load i32, i32* %286, align 8, !tbaa !145, !noalias !158
  %288 = and i32 %287, -75
  %289 = or i32 %288, 2
  store i32 %289, i32* %286, align 8, !tbaa !151, !noalias !158
  %290 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %291 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %290, double %276)
          to label %292 unwind label %318, !noalias !158

292:                                              ; preds = %278
  %293 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %25, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %293)
          to label %294 unwind label %318

294:                                              ; preds = %292
  %295 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %81, i32 (...)*** %295, align 8, !tbaa !26, !noalias !158
  %296 = load i64, i64* %85, align 8
  %297 = getelementptr inbounds i8, i8* %277, i64 %296
  %298 = bitcast i8* %297 to i32 (...)***
  store i32 (...)** %83, i32 (...)*** %298, align 8, !tbaa !26, !noalias !158
  %299 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %299, align 8, !tbaa !26, !noalias !158
  %300 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8, !tbaa !11, !noalias !158
  %302 = getelementptr inbounds i8, i8* %301, i64 -24
  %303 = bitcast i8* %302 to %"struct.std::basic_string<char>::_Rep"*
  %304 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %304) #28, !noalias !158
  %305 = icmp eq i8* %302, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %305, label %320, label %306, !prof !25

306:                                              ; preds = %294
  %307 = getelementptr inbounds i8, i8* %301, i64 -8
  %308 = bitcast i8* %307 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %309, label %311

309:                                              ; preds = %306
  %310 = atomicrmw volatile add i32* %308, i32 -1 acq_rel, align 4
  br label %314

311:                                              ; preds = %306
  %312 = load i32, i32* %308, align 8, !tbaa !7
  %313 = add nsw i32 %312, -1
  store i32 %313, i32* %308, align 8, !tbaa !7
  br label %314

314:                                              ; preds = %311, %309
  %315 = phi i32 [ %310, %309 ], [ %312, %311 ]
  %316 = icmp slt i32 %315, 1
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %303, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #28
  br label %320

318:                                              ; preds = %292, %278
  %319 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %277) #28, !noalias !158
  br label %974

320:                                              ; preds = %317, %314, %294
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %304) #28, !noalias !158
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %299, align 8, !tbaa !26, !noalias !158
  %321 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %321) #28
  %322 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %322) #28
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %277) #28, !noalias !158
  %323 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %323, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25)
          to label %324 unwind label %972

324:                                              ; preds = %320
  %325 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %25, i64 0, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8, !tbaa !11
  %327 = getelementptr inbounds i8, i8* %326, i64 -24
  %328 = bitcast i8* %327 to %"struct.std::basic_string<char>::_Rep"*
  %329 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %329) #28
  %330 = icmp eq i8* %327, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %330, label %343, label %331, !prof !25

331:                                              ; preds = %324
  %332 = getelementptr inbounds i8, i8* %326, i64 -8
  %333 = bitcast i8* %332 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %334, label %336

334:                                              ; preds = %331
  %335 = atomicrmw volatile add i32* %333, i32 -1 acq_rel, align 4
  br label %339

336:                                              ; preds = %331
  %337 = load i32, i32* %333, align 8, !tbaa !7
  %338 = add nsw i32 %337, -1
  store i32 %338, i32* %333, align 8, !tbaa !7
  br label %339

339:                                              ; preds = %336, %334
  %340 = phi i32 [ %335, %334 ], [ %337, %336 ]
  %341 = icmp slt i32 %340, 1
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %328, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #28
  br label %343

343:                                              ; preds = %324, %339, %342
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %329) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %275) #28
  %344 = invoke noalias nonnull dereferenceable(16) i8* @_Znam(i64 16) #31
          to label %345 unwind label %984

345:                                              ; preds = %343
  %346 = bitcast i8* %344 to i32*
  %347 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %348 = getelementptr i8, i8* %347, i64 -24
  %349 = bitcast i8* %348 to i64*
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %350
  %352 = getelementptr inbounds i8, i8* %351, i64 240
  %353 = bitcast i8* %352 to %"class.std::ctype"**
  %354 = load %"class.std::ctype"*, %"class.std::ctype"** %353, align 8, !tbaa !28
  %355 = icmp eq %"class.std::ctype"* %354, null
  br i1 %355, label %356, label %358

356:                                              ; preds = %345
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %357 unwind label %984

357:                                              ; preds = %356
  unreachable

358:                                              ; preds = %345
  %359 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %354, i64 0, i32 8
  %360 = load i8, i8* %359, align 8, !tbaa !30
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %354, i64 0, i32 9, i64 10
  %364 = load i8, i8* %363, align 1, !tbaa !32
  br label %372

365:                                              ; preds = %358
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %354)
          to label %366 unwind label %984

366:                                              ; preds = %365
  %367 = bitcast %"class.std::ctype"* %354 to i8 (%"class.std::ctype"*, i8)***
  %368 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %367, align 8, !tbaa !26
  %369 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %368, i64 6
  %370 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %369, align 8
  %371 = invoke signext i8 %370(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %354, i8 signext 10)
          to label %372 unwind label %984

372:                                              ; preds = %366, %362
  %373 = phi i8 [ %364, %362 ], [ %371, %366 ]
  %374 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %373)
          to label %375 unwind label %984

375:                                              ; preds = %372
  %376 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %374)
          to label %377 unwind label %984

377:                                              ; preds = %375
  %378 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %376, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %379 unwind label %984

379:                                              ; preds = %377
  %380 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %381 = load i8*, i8** %380, align 16, !tbaa !11
  %382 = getelementptr inbounds i8, i8* %381, i64 -24
  %383 = bitcast i8* %382 to i64*
  %384 = load i64, i64* %383, align 8, !tbaa !54
  %385 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %386 = load i8*, i8** %385, align 16, !tbaa !11
  %387 = getelementptr inbounds i8, i8* %386, i64 -24
  %388 = bitcast i8* %387 to i64*
  %389 = load i64, i64* %388, align 8, !tbaa !54
  %390 = icmp ugt i64 %384, %389
  %391 = select i1 %390, i64 %384, i64 %389
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %346, align 4, !tbaa !7
  %393 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %394 unwind label %984

394:                                              ; preds = %379
  %395 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %396 = getelementptr i8, i8* %395, i64 -24
  %397 = bitcast i8* %396 to i64*
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %398
  %400 = shl i64 %391, 32
  %401 = add i64 %400, 4294967296
  %402 = ashr exact i64 %401, 32
  %403 = getelementptr inbounds i8, i8* %399, i64 16
  %404 = bitcast i8* %403 to i64*
  store i64 %402, i64* %404, align 8, !tbaa !161
  %405 = load i64, i64* %397, align 8
  %406 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %405
  %407 = getelementptr inbounds i8, i8* %406, i64 24
  %408 = bitcast i8* %407 to i32*
  %409 = load i32, i32* %408, align 8, !tbaa !145
  %410 = and i32 %409, -177
  %411 = or i32 %410, 32
  store i32 %411, i32* %408, align 8, !tbaa !151
  %412 = load i8*, i8** %380, align 16, !tbaa !11
  %413 = getelementptr inbounds i8, i8* %412, i64 -24
  %414 = bitcast i8* %413 to i64*
  %415 = load i64, i64* %414, align 8, !tbaa !54
  %416 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %412, i64 %415)
          to label %417 unwind label %984

417:                                              ; preds = %394
  %418 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %416, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %419 unwind label %984

419:                                              ; preds = %417
  %420 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %421 = load i8*, i8** %420, align 8, !tbaa !11
  %422 = getelementptr inbounds i8, i8* %421, i64 -24
  %423 = bitcast i8* %422 to i64*
  %424 = load i64, i64* %423, align 8, !tbaa !54
  %425 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8, !tbaa !11
  %427 = getelementptr inbounds i8, i8* %426, i64 -24
  %428 = bitcast i8* %427 to i64*
  %429 = load i64, i64* %428, align 8, !tbaa !54
  %430 = icmp ugt i64 %424, %429
  %431 = select i1 %430, i64 %424, i64 %429
  %432 = trunc i64 %431 to i32
  %433 = getelementptr inbounds i32, i32* %346, i64 1
  store i32 %432, i32* %433, align 4, !tbaa !7
  %434 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %435 unwind label %984

435:                                              ; preds = %419
  %436 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %437 = getelementptr i8, i8* %436, i64 -24
  %438 = bitcast i8* %437 to i64*
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %439
  %441 = shl i64 %431, 32
  %442 = add i64 %441, 4294967296
  %443 = ashr exact i64 %442, 32
  %444 = getelementptr inbounds i8, i8* %440, i64 16
  %445 = bitcast i8* %444 to i64*
  store i64 %443, i64* %445, align 8, !tbaa !161
  %446 = load i64, i64* %438, align 8
  %447 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %446
  %448 = getelementptr inbounds i8, i8* %447, i64 24
  %449 = bitcast i8* %448 to i32*
  %450 = load i32, i32* %449, align 8, !tbaa !145
  %451 = and i32 %450, -177
  %452 = or i32 %451, 32
  store i32 %452, i32* %449, align 8, !tbaa !151
  %453 = load i8*, i8** %420, align 8, !tbaa !11
  %454 = getelementptr inbounds i8, i8* %453, i64 -24
  %455 = bitcast i8* %454 to i64*
  %456 = load i64, i64* %455, align 8, !tbaa !54
  %457 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %453, i64 %456)
          to label %458 unwind label %984

458:                                              ; preds = %435
  %459 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %457, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %460 unwind label %984

460:                                              ; preds = %458
  %461 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %462 = load i8*, i8** %461, align 16, !tbaa !11
  %463 = getelementptr inbounds i8, i8* %462, i64 -24
  %464 = bitcast i8* %463 to i64*
  %465 = load i64, i64* %464, align 8, !tbaa !54
  %466 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %467 = load i8*, i8** %466, align 16, !tbaa !11
  %468 = getelementptr inbounds i8, i8* %467, i64 -24
  %469 = bitcast i8* %468 to i64*
  %470 = load i64, i64* %469, align 8, !tbaa !54
  %471 = icmp ugt i64 %465, %470
  %472 = select i1 %471, i64 %465, i64 %470
  %473 = trunc i64 %472 to i32
  %474 = getelementptr inbounds i32, i32* %346, i64 2
  store i32 %473, i32* %474, align 4, !tbaa !7
  %475 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %476 unwind label %984

476:                                              ; preds = %460
  %477 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %478 = getelementptr i8, i8* %477, i64 -24
  %479 = bitcast i8* %478 to i64*
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %480
  %482 = shl i64 %472, 32
  %483 = add i64 %482, 4294967296
  %484 = ashr exact i64 %483, 32
  %485 = getelementptr inbounds i8, i8* %481, i64 16
  %486 = bitcast i8* %485 to i64*
  store i64 %484, i64* %486, align 8, !tbaa !161
  %487 = load i64, i64* %479, align 8
  %488 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %487
  %489 = getelementptr inbounds i8, i8* %488, i64 24
  %490 = bitcast i8* %489 to i32*
  %491 = load i32, i32* %490, align 8, !tbaa !145
  %492 = and i32 %491, -177
  %493 = or i32 %492, 32
  store i32 %493, i32* %490, align 8, !tbaa !151
  %494 = load i8*, i8** %461, align 16, !tbaa !11
  %495 = getelementptr inbounds i8, i8* %494, i64 -24
  %496 = bitcast i8* %495 to i64*
  %497 = load i64, i64* %496, align 8, !tbaa !54
  %498 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %494, i64 %497)
          to label %499 unwind label %984

499:                                              ; preds = %476
  %500 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %498, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %501 unwind label %984

501:                                              ; preds = %499
  %502 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %503 = load i8*, i8** %502, align 8, !tbaa !11
  %504 = getelementptr inbounds i8, i8* %503, i64 -24
  %505 = bitcast i8* %504 to i64*
  %506 = load i64, i64* %505, align 8, !tbaa !54
  %507 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %508 = load i8*, i8** %507, align 8, !tbaa !11
  %509 = getelementptr inbounds i8, i8* %508, i64 -24
  %510 = bitcast i8* %509 to i64*
  %511 = load i64, i64* %510, align 8, !tbaa !54
  %512 = icmp ugt i64 %506, %511
  %513 = select i1 %512, i64 %506, i64 %511
  %514 = trunc i64 %513 to i32
  %515 = getelementptr inbounds i32, i32* %346, i64 3
  store i32 %514, i32* %515, align 4, !tbaa !7
  %516 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %517 unwind label %984

517:                                              ; preds = %501
  %518 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %519 = getelementptr i8, i8* %518, i64 -24
  %520 = bitcast i8* %519 to i64*
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %521
  %523 = shl i64 %513, 32
  %524 = add i64 %523, 4294967296
  %525 = ashr exact i64 %524, 32
  %526 = getelementptr inbounds i8, i8* %522, i64 16
  %527 = bitcast i8* %526 to i64*
  store i64 %525, i64* %527, align 8, !tbaa !161
  %528 = load i64, i64* %520, align 8
  %529 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %528
  %530 = getelementptr inbounds i8, i8* %529, i64 24
  %531 = bitcast i8* %530 to i32*
  %532 = load i32, i32* %531, align 8, !tbaa !145
  %533 = and i32 %532, -177
  %534 = or i32 %533, 32
  store i32 %534, i32* %531, align 8, !tbaa !151
  %535 = load i8*, i8** %502, align 8, !tbaa !11
  %536 = getelementptr inbounds i8, i8* %535, i64 -24
  %537 = bitcast i8* %536 to i64*
  %538 = load i64, i64* %537, align 8, !tbaa !54
  %539 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %535, i64 %538)
          to label %540 unwind label %984

540:                                              ; preds = %517
  %541 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %539, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %542 unwind label %984

542:                                              ; preds = %540
  %543 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %544 = getelementptr i8, i8* %543, i64 -24
  %545 = bitcast i8* %544 to i64*
  %546 = load i64, i64* %545, align 8
  %547 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %546
  %548 = getelementptr inbounds i8, i8* %547, i64 240
  %549 = bitcast i8* %548 to %"class.std::ctype"**
  %550 = load %"class.std::ctype"*, %"class.std::ctype"** %549, align 8, !tbaa !28
  %551 = icmp eq %"class.std::ctype"* %550, null
  br i1 %551, label %552, label %554

552:                                              ; preds = %542
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %553 unwind label %984

553:                                              ; preds = %552
  unreachable

554:                                              ; preds = %542
  %555 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %550, i64 0, i32 8
  %556 = load i8, i8* %555, align 8, !tbaa !30
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %561, label %558

558:                                              ; preds = %554
  %559 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %550, i64 0, i32 9, i64 10
  %560 = load i8, i8* %559, align 1, !tbaa !32
  br label %568

561:                                              ; preds = %554
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %550)
          to label %562 unwind label %984

562:                                              ; preds = %561
  %563 = bitcast %"class.std::ctype"* %550 to i8 (%"class.std::ctype"*, i8)***
  %564 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %563, align 8, !tbaa !26
  %565 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %564, i64 6
  %566 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %565, align 8
  %567 = invoke signext i8 %566(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %550, i8 signext 10)
          to label %568 unwind label %984

568:                                              ; preds = %562, %558
  %569 = phi i8 [ %560, %558 ], [ %567, %562 ]
  %570 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %569)
          to label %571 unwind label %984

571:                                              ; preds = %568
  %572 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %570)
          to label %573 unwind label %984

573:                                              ; preds = %571
  %574 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %572, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %575 unwind label %984

575:                                              ; preds = %573
  %576 = load i32, i32* %346, align 4, !tbaa !7
  %577 = icmp sgt i32 %576, -2
  br i1 %577, label %578, label %713

578:                                              ; preds = %575
  %579 = add i32 %576, 1
  br label %762

580:                                              ; preds = %752
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %581 unwind label %984

581:                                              ; preds = %580
  unreachable

582:                                              ; preds = %752
  %583 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %760, i64 0, i32 8
  %584 = load i8, i8* %583, align 8, !tbaa !30
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %589, label %586

586:                                              ; preds = %582
  %587 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %760, i64 0, i32 9, i64 10
  %588 = load i8, i8* %587, align 1, !tbaa !32
  br label %596

589:                                              ; preds = %582
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %760)
          to label %590 unwind label %984

590:                                              ; preds = %589
  %591 = bitcast %"class.std::ctype"* %760 to i8 (%"class.std::ctype"*, i8)***
  %592 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %591, align 8, !tbaa !26
  %593 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %592, i64 6
  %594 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %593, align 8
  %595 = invoke signext i8 %594(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %760, i8 signext 10)
          to label %596 unwind label %984

596:                                              ; preds = %590, %586
  %597 = phi i8 [ %588, %586 ], [ %595, %590 ]
  %598 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %597)
          to label %599 unwind label %984

599:                                              ; preds = %596
  %600 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %598)
          to label %601 unwind label %984

601:                                              ; preds = %599
  %602 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %600, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %603 unwind label %984

603:                                              ; preds = %601
  %604 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %605 unwind label %984

605:                                              ; preds = %603
  %606 = add nsw i32 %576, 1
  %607 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %608 = getelementptr i8, i8* %607, i64 -24
  %609 = bitcast i8* %608 to i64*
  %610 = load i64, i64* %609, align 8
  %611 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %610
  %612 = sext i32 %606 to i64
  %613 = getelementptr inbounds i8, i8* %611, i64 16
  %614 = bitcast i8* %613 to i64*
  store i64 %612, i64* %614, align 8, !tbaa !161
  %615 = load i64, i64* %609, align 8
  %616 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %615
  %617 = getelementptr inbounds i8, i8* %616, i64 24
  %618 = bitcast i8* %617 to i32*
  %619 = load i32, i32* %618, align 8, !tbaa !145
  %620 = and i32 %619, -177
  %621 = or i32 %620, 32
  store i32 %621, i32* %618, align 8, !tbaa !151
  %622 = load i8*, i8** %385, align 16, !tbaa !11
  %623 = getelementptr inbounds i8, i8* %622, i64 -24
  %624 = bitcast i8* %623 to i64*
  %625 = load i64, i64* %624, align 8, !tbaa !54
  %626 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %622, i64 %625)
          to label %627 unwind label %984

627:                                              ; preds = %605
  %628 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %626, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %629 unwind label %984

629:                                              ; preds = %627
  %630 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %631 unwind label %984

631:                                              ; preds = %629
  %632 = add nsw i32 %716, 1
  %633 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %634 = getelementptr i8, i8* %633, i64 -24
  %635 = bitcast i8* %634 to i64*
  %636 = load i64, i64* %635, align 8
  %637 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %636
  %638 = sext i32 %632 to i64
  %639 = getelementptr inbounds i8, i8* %637, i64 16
  %640 = bitcast i8* %639 to i64*
  store i64 %638, i64* %640, align 8, !tbaa !161
  %641 = load i64, i64* %635, align 8
  %642 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %641
  %643 = getelementptr inbounds i8, i8* %642, i64 24
  %644 = bitcast i8* %643 to i32*
  %645 = load i32, i32* %644, align 8, !tbaa !145
  %646 = and i32 %645, -177
  %647 = or i32 %646, 32
  store i32 %647, i32* %644, align 8, !tbaa !151
  %648 = load i8*, i8** %425, align 8, !tbaa !11
  %649 = getelementptr inbounds i8, i8* %648, i64 -24
  %650 = bitcast i8* %649 to i64*
  %651 = load i64, i64* %650, align 8, !tbaa !54
  %652 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %648, i64 %651)
          to label %653 unwind label %984

653:                                              ; preds = %631
  %654 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %652, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %655 unwind label %984

655:                                              ; preds = %653
  %656 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %657 unwind label %984

657:                                              ; preds = %655
  %658 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %659 = getelementptr i8, i8* %658, i64 -24
  %660 = bitcast i8* %659 to i64*
  %661 = load i64, i64* %660, align 8
  %662 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %661
  %663 = getelementptr inbounds i8, i8* %662, i64 16
  %664 = bitcast i8* %663 to i64*
  store i64 %484, i64* %664, align 8, !tbaa !161
  %665 = load i64, i64* %660, align 8
  %666 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %665
  %667 = getelementptr inbounds i8, i8* %666, i64 24
  %668 = bitcast i8* %667 to i32*
  %669 = load i32, i32* %668, align 8, !tbaa !145
  %670 = and i32 %669, -177
  %671 = or i32 %670, 32
  store i32 %671, i32* %668, align 8, !tbaa !151
  %672 = load i8*, i8** %466, align 16, !tbaa !11
  %673 = getelementptr inbounds i8, i8* %672, i64 -24
  %674 = bitcast i8* %673 to i64*
  %675 = load i64, i64* %674, align 8, !tbaa !54
  %676 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %672, i64 %675)
          to label %677 unwind label %984

677:                                              ; preds = %657
  %678 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %676, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %679 unwind label %984

679:                                              ; preds = %677
  %680 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
          to label %681 unwind label %984

681:                                              ; preds = %679
  %682 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %683 = getelementptr i8, i8* %682, i64 -24
  %684 = bitcast i8* %683 to i64*
  %685 = load i64, i64* %684, align 8
  %686 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %685
  %687 = getelementptr inbounds i8, i8* %686, i64 16
  %688 = bitcast i8* %687 to i64*
  store i64 %525, i64* %688, align 8, !tbaa !161
  %689 = load i64, i64* %684, align 8
  %690 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %689
  %691 = getelementptr inbounds i8, i8* %690, i64 24
  %692 = bitcast i8* %691 to i32*
  %693 = load i32, i32* %692, align 8, !tbaa !145
  %694 = and i32 %693, -177
  %695 = or i32 %694, 32
  store i32 %695, i32* %692, align 8, !tbaa !151
  %696 = load i8*, i8** %507, align 8, !tbaa !11
  %697 = getelementptr inbounds i8, i8* %696, i64 -24
  %698 = bitcast i8* %697 to i64*
  %699 = load i64, i64* %698, align 8, !tbaa !54
  %700 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %696, i64 %699)
          to label %701 unwind label %984

701:                                              ; preds = %681
  %702 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %700, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %703 unwind label %984

703:                                              ; preds = %701
  %704 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %705 = getelementptr i8, i8* %704, i64 -24
  %706 = bitcast i8* %705 to i64*
  %707 = load i64, i64* %706, align 8
  %708 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %707
  %709 = getelementptr inbounds i8, i8* %708, i64 240
  %710 = bitcast i8* %709 to %"class.std::ctype"**
  %711 = load %"class.std::ctype"*, %"class.std::ctype"** %710, align 8, !tbaa !28
  %712 = icmp eq %"class.std::ctype"* %711, null
  br i1 %712, label %768, label %770

713:                                              ; preds = %765, %575
  %714 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %715 unwind label %984

715:                                              ; preds = %713
  %716 = load i32, i32* %433, align 4, !tbaa !7
  %717 = icmp sgt i32 %716, -2
  br i1 %717, label %718, label %726

718:                                              ; preds = %715
  %719 = add i32 %716, 1
  br label %720

720:                                              ; preds = %718, %723
  %721 = phi i32 [ %724, %723 ], [ 0, %718 ]
  %722 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
          to label %723 unwind label %980

723:                                              ; preds = %720
  %724 = add nuw i32 %721, 1
  %725 = icmp eq i32 %721, %719
  br i1 %725, label %726, label %720, !llvm.loop !162

726:                                              ; preds = %723, %715
  %727 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %728 unwind label %984

728:                                              ; preds = %726
  %729 = icmp sgt i32 %473, -2
  br i1 %729, label %730, label %738

730:                                              ; preds = %728
  %731 = add i32 %473, 1
  br label %732

732:                                              ; preds = %730, %735
  %733 = phi i32 [ %736, %735 ], [ 0, %730 ]
  %734 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
          to label %735 unwind label %978

735:                                              ; preds = %732
  %736 = add nuw i32 %733, 1
  %737 = icmp eq i32 %733, %731
  br i1 %737, label %738, label %732, !llvm.loop !162

738:                                              ; preds = %735, %728
  %739 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %740 unwind label %984

740:                                              ; preds = %738
  %741 = icmp sgt i32 %514, -2
  br i1 %741, label %742, label %750

742:                                              ; preds = %740
  %743 = add i32 %514, 1
  br label %744

744:                                              ; preds = %742, %747
  %745 = phi i32 [ %748, %747 ], [ 0, %742 ]
  %746 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
          to label %747 unwind label %976

747:                                              ; preds = %744
  %748 = add nuw i32 %745, 1
  %749 = icmp eq i32 %745, %743
  br i1 %749, label %750, label %744, !llvm.loop !162

750:                                              ; preds = %747, %740
  %751 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 1)
          to label %752 unwind label %984

752:                                              ; preds = %750
  %753 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %754 = getelementptr i8, i8* %753, i64 -24
  %755 = bitcast i8* %754 to i64*
  %756 = load i64, i64* %755, align 8
  %757 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %756
  %758 = getelementptr inbounds i8, i8* %757, i64 240
  %759 = bitcast i8* %758 to %"class.std::ctype"**
  %760 = load %"class.std::ctype"*, %"class.std::ctype"** %759, align 8, !tbaa !28
  %761 = icmp eq %"class.std::ctype"* %760, null
  br i1 %761, label %580, label %582

762:                                              ; preds = %578, %765
  %763 = phi i32 [ %766, %765 ], [ 0, %578 ]
  %764 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
          to label %765 unwind label %982

765:                                              ; preds = %762
  %766 = add nuw i32 %763, 1
  %767 = icmp eq i32 %763, %579
  br i1 %767, label %713, label %762, !llvm.loop !162

768:                                              ; preds = %703
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %769 unwind label %984

769:                                              ; preds = %768
  unreachable

770:                                              ; preds = %703
  %771 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %711, i64 0, i32 8
  %772 = load i8, i8* %771, align 8, !tbaa !30
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %777, label %774

774:                                              ; preds = %770
  %775 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %711, i64 0, i32 9, i64 10
  %776 = load i8, i8* %775, align 1, !tbaa !32
  br label %784

777:                                              ; preds = %770
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %711)
          to label %778 unwind label %984

778:                                              ; preds = %777
  %779 = bitcast %"class.std::ctype"* %711 to i8 (%"class.std::ctype"*, i8)***
  %780 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %779, align 8, !tbaa !26
  %781 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %780, i64 6
  %782 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %781, align 8
  %783 = invoke signext i8 %782(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %711, i8 signext 10)
          to label %784 unwind label %984

784:                                              ; preds = %778, %774
  %785 = phi i8 [ %776, %774 ], [ %783, %778 ]
  %786 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %785)
          to label %787 unwind label %984

787:                                              ; preds = %784
  %788 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %786)
          to label %789 unwind label %984

789:                                              ; preds = %787
  call void @_ZdaPv(i8* nonnull %344) #30
  %790 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %791 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3, i32 0, i32 0
  %792 = load i8*, i8** %791, align 8, !tbaa !11
  %793 = getelementptr inbounds i8, i8* %792, i64 -24
  %794 = bitcast i8* %793 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %790) #28
  %795 = icmp eq i8* %793, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %795, label %808, label %796, !prof !25

796:                                              ; preds = %789
  %797 = getelementptr inbounds i8, i8* %792, i64 -8
  %798 = bitcast i8* %797 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %799, label %801

799:                                              ; preds = %796
  %800 = atomicrmw volatile add i32* %798, i32 -1 acq_rel, align 4
  br label %804

801:                                              ; preds = %796
  %802 = load i32, i32* %798, align 8, !tbaa !7
  %803 = add nsw i32 %802, -1
  store i32 %803, i32* %798, align 8, !tbaa !7
  br label %804

804:                                              ; preds = %801, %799
  %805 = phi i32 [ %800, %799 ], [ %802, %801 ]
  %806 = icmp slt i32 %805, 1
  br i1 %806, label %807, label %808

807:                                              ; preds = %804
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %794, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %808

808:                                              ; preds = %789, %804, %807
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %790) #28
  %809 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2, i32 0, i32 0
  %810 = load i8*, i8** %809, align 16, !tbaa !11
  %811 = getelementptr inbounds i8, i8* %810, i64 -24
  %812 = bitcast i8* %811 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %790) #28
  %813 = icmp eq i8* %811, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %813, label %826, label %814, !prof !25

814:                                              ; preds = %808
  %815 = getelementptr inbounds i8, i8* %810, i64 -8
  %816 = bitcast i8* %815 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %820, label %817

817:                                              ; preds = %814
  %818 = load i32, i32* %816, align 8, !tbaa !7
  %819 = add nsw i32 %818, -1
  store i32 %819, i32* %816, align 8, !tbaa !7
  br label %822

820:                                              ; preds = %814
  %821 = atomicrmw volatile add i32* %816, i32 -1 acq_rel, align 4
  br label %822

822:                                              ; preds = %820, %817
  %823 = phi i32 [ %821, %820 ], [ %818, %817 ]
  %824 = icmp slt i32 %823, 1
  br i1 %824, label %825, label %826

825:                                              ; preds = %822
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %812, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %826

826:                                              ; preds = %825, %822, %808
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %790) #28
  %827 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1, i32 0, i32 0
  %828 = load i8*, i8** %827, align 8, !tbaa !11
  %829 = getelementptr inbounds i8, i8* %828, i64 -24
  %830 = bitcast i8* %829 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %790) #28
  %831 = icmp eq i8* %829, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %831, label %844, label %832, !prof !25

832:                                              ; preds = %826
  %833 = getelementptr inbounds i8, i8* %828, i64 -8
  %834 = bitcast i8* %833 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %838, label %835

835:                                              ; preds = %832
  %836 = load i32, i32* %834, align 8, !tbaa !7
  %837 = add nsw i32 %836, -1
  store i32 %837, i32* %834, align 8, !tbaa !7
  br label %840

838:                                              ; preds = %832
  %839 = atomicrmw volatile add i32* %834, i32 -1 acq_rel, align 4
  br label %840

840:                                              ; preds = %838, %835
  %841 = phi i32 [ %839, %838 ], [ %836, %835 ]
  %842 = icmp slt i32 %841, 1
  br i1 %842, label %843, label %844

843:                                              ; preds = %840
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %830, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %844

844:                                              ; preds = %843, %840, %826
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %790) #28
  %845 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0, i32 0, i32 0
  %846 = load i8*, i8** %845, align 16, !tbaa !11
  %847 = getelementptr inbounds i8, i8* %846, i64 -24
  %848 = bitcast i8* %847 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %790) #28
  %849 = icmp eq i8* %847, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %849, label %862, label %850, !prof !25

850:                                              ; preds = %844
  %851 = getelementptr inbounds i8, i8* %846, i64 -8
  %852 = bitcast i8* %851 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %856, label %853

853:                                              ; preds = %850
  %854 = load i32, i32* %852, align 8, !tbaa !7
  %855 = add nsw i32 %854, -1
  store i32 %855, i32* %852, align 8, !tbaa !7
  br label %858

856:                                              ; preds = %850
  %857 = atomicrmw volatile add i32* %852, i32 -1 acq_rel, align 4
  br label %858

858:                                              ; preds = %856, %853
  %859 = phi i32 [ %857, %856 ], [ %854, %853 ]
  %860 = icmp slt i32 %859, 1
  br i1 %860, label %861, label %862

861:                                              ; preds = %858
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %848, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %862

862:                                              ; preds = %861, %858, %844
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %790) #28
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #28
  %863 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %864 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3, i32 0, i32 0
  %865 = load i8*, i8** %864, align 8, !tbaa !11
  %866 = getelementptr inbounds i8, i8* %865, i64 -24
  %867 = bitcast i8* %866 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %863) #28
  %868 = icmp eq i8* %866, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %868, label %881, label %869, !prof !25

869:                                              ; preds = %862
  %870 = getelementptr inbounds i8, i8* %865, i64 -8
  %871 = bitcast i8* %870 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %872, label %874

872:                                              ; preds = %869
  %873 = atomicrmw volatile add i32* %871, i32 -1 acq_rel, align 4
  br label %877

874:                                              ; preds = %869
  %875 = load i32, i32* %871, align 8, !tbaa !7
  %876 = add nsw i32 %875, -1
  store i32 %876, i32* %871, align 8, !tbaa !7
  br label %877

877:                                              ; preds = %874, %872
  %878 = phi i32 [ %873, %872 ], [ %875, %874 ]
  %879 = icmp slt i32 %878, 1
  br i1 %879, label %880, label %881

880:                                              ; preds = %877
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %867, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %881

881:                                              ; preds = %862, %877, %880
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %863) #28
  %882 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2, i32 0, i32 0
  %883 = load i8*, i8** %882, align 16, !tbaa !11
  %884 = getelementptr inbounds i8, i8* %883, i64 -24
  %885 = bitcast i8* %884 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %863) #28
  %886 = icmp eq i8* %884, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %886, label %899, label %887, !prof !25

887:                                              ; preds = %881
  %888 = getelementptr inbounds i8, i8* %883, i64 -8
  %889 = bitcast i8* %888 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %893, label %890

890:                                              ; preds = %887
  %891 = load i32, i32* %889, align 8, !tbaa !7
  %892 = add nsw i32 %891, -1
  store i32 %892, i32* %889, align 8, !tbaa !7
  br label %895

893:                                              ; preds = %887
  %894 = atomicrmw volatile add i32* %889, i32 -1 acq_rel, align 4
  br label %895

895:                                              ; preds = %893, %890
  %896 = phi i32 [ %894, %893 ], [ %891, %890 ]
  %897 = icmp slt i32 %896, 1
  br i1 %897, label %898, label %899

898:                                              ; preds = %895
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %885, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %899

899:                                              ; preds = %898, %895, %881
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %863) #28
  %900 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1, i32 0, i32 0
  %901 = load i8*, i8** %900, align 8, !tbaa !11
  %902 = getelementptr inbounds i8, i8* %901, i64 -24
  %903 = bitcast i8* %902 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %863) #28
  %904 = icmp eq i8* %902, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %904, label %917, label %905, !prof !25

905:                                              ; preds = %899
  %906 = getelementptr inbounds i8, i8* %901, i64 -8
  %907 = bitcast i8* %906 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %911, label %908

908:                                              ; preds = %905
  %909 = load i32, i32* %907, align 8, !tbaa !7
  %910 = add nsw i32 %909, -1
  store i32 %910, i32* %907, align 8, !tbaa !7
  br label %913

911:                                              ; preds = %905
  %912 = atomicrmw volatile add i32* %907, i32 -1 acq_rel, align 4
  br label %913

913:                                              ; preds = %911, %908
  %914 = phi i32 [ %912, %911 ], [ %909, %908 ]
  %915 = icmp slt i32 %914, 1
  br i1 %915, label %916, label %917

916:                                              ; preds = %913
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %903, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %917

917:                                              ; preds = %916, %913, %899
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %863) #28
  %918 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0, i32 0, i32 0
  %919 = load i8*, i8** %918, align 16, !tbaa !11
  %920 = getelementptr inbounds i8, i8* %919, i64 -24
  %921 = bitcast i8* %920 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %863) #28
  %922 = icmp eq i8* %920, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %922, label %935, label %923, !prof !25

923:                                              ; preds = %917
  %924 = getelementptr inbounds i8, i8* %919, i64 -8
  %925 = bitcast i8* %924 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %929, label %926

926:                                              ; preds = %923
  %927 = load i32, i32* %925, align 8, !tbaa !7
  %928 = add nsw i32 %927, -1
  store i32 %928, i32* %925, align 8, !tbaa !7
  br label %931

929:                                              ; preds = %923
  %930 = atomicrmw volatile add i32* %925, i32 -1 acq_rel, align 4
  br label %931

931:                                              ; preds = %929, %926
  %932 = phi i32 [ %930, %929 ], [ %927, %926 ]
  %933 = icmp slt i32 %932, 1
  br i1 %933, label %934, label %935

934:                                              ; preds = %931
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %921, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %935

935:                                              ; preds = %934, %931, %917
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %863) #28
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #28
  br label %998

936:                                              ; preds = %32
  %937 = landingpad { i8*, i32 }
          cleanup
  br label %945

938:                                              ; preds = %38
  %939 = landingpad { i8*, i32 }
          cleanup
  br label %942

940:                                              ; preds = %41
  %941 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #28
  br label %942

942:                                              ; preds = %940, %938
  %943 = phi %"class.std::basic_string"* [ %42, %940 ], [ %39, %938 ]
  %944 = phi { i8*, i32 } [ %941, %940 ], [ %939, %938 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #28
  br label %945

945:                                              ; preds = %936, %942
  %946 = phi %"class.std::basic_string"* [ %943, %942 ], [ %36, %936 ]
  %947 = phi { i8*, i32 } [ %944, %942 ], [ %937, %936 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %37) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #28
  br label %948

948:                                              ; preds = %945, %948
  %949 = phi %"class.std::basic_string"* [ %950, %948 ], [ %946, %945 ]
  %950 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %949, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %950) #28
  %951 = icmp eq %"class.std::basic_string"* %950, %34
  br i1 %951, label %996, label %948

952:                                              ; preds = %44
  %953 = landingpad { i8*, i32 }
          cleanup
  br label %956

954:                                              ; preds = %110
  %955 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22) #28
  br label %956

956:                                              ; preds = %952, %108, %954
  %957 = phi { i8*, i32 } [ %955, %954 ], [ %953, %952 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #28
  br label %986

958:                                              ; preds = %132
  %959 = landingpad { i8*, i32 }
          cleanup
  br label %962

960:                                              ; preds = %180
  %961 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %23) #28
  br label %962

962:                                              ; preds = %958, %178, %960
  %963 = phi { i8*, i32 } [ %961, %960 ], [ %959, %958 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #28
  br label %986

964:                                              ; preds = %203
  %965 = landingpad { i8*, i32 }
          cleanup
  br label %968

966:                                              ; preds = %251
  %967 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %24) #28
  br label %968

968:                                              ; preds = %964, %249, %966
  %969 = phi { i8*, i32 } [ %967, %966 ], [ %965, %964 ], [ %250, %249 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %204) #28
  br label %986

970:                                              ; preds = %274
  %971 = landingpad { i8*, i32 }
          cleanup
  br label %974

972:                                              ; preds = %320
  %973 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %25) #28
  br label %974

974:                                              ; preds = %970, %318, %972
  %975 = phi { i8*, i32 } [ %973, %972 ], [ %971, %970 ], [ %319, %318 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %275) #28
  br label %986

976:                                              ; preds = %744
  %977 = landingpad { i8*, i32 }
          cleanup
  br label %986

978:                                              ; preds = %732
  %979 = landingpad { i8*, i32 }
          cleanup
  br label %986

980:                                              ; preds = %720
  %981 = landingpad { i8*, i32 }
          cleanup
  br label %986

982:                                              ; preds = %762
  %983 = landingpad { i8*, i32 }
          cleanup
  br label %986

984:                                              ; preds = %787, %784, %778, %777, %768, %750, %738, %726, %713, %701, %681, %679, %677, %657, %655, %653, %631, %629, %627, %605, %603, %601, %599, %596, %590, %589, %580, %573, %571, %568, %562, %561, %552, %540, %517, %501, %499, %476, %460, %458, %435, %419, %417, %394, %379, %377, %375, %372, %366, %365, %356, %343
  %985 = landingpad { i8*, i32 }
          cleanup
  br label %986

986:                                              ; preds = %976, %980, %984, %982, %978, %974, %968, %962, %956
  %987 = phi { i8*, i32 } [ %975, %974 ], [ %969, %968 ], [ %963, %962 ], [ %957, %956 ], [ %977, %976 ], [ %979, %978 ], [ %981, %980 ], [ %983, %982 ], [ %985, %984 ]
  %988 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %988) #28
  %989 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %989) #28
  %990 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %990) #28
  %991 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %21, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %991) #28
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #28
  %992 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %992) #28
  %993 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %993) #28
  %994 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %994) #28
  %995 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %16, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %995) #28
  br label %996

996:                                              ; preds = %948, %986
  %997 = phi { i8*, i32 } [ %987, %986 ], [ %947, %948 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #28
  resume { i8*, i32 } %997

998:                                              ; preds = %935, %1
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RecursiveGaussian, align 8
  %4 = bitcast %class.RecursiveGaussian* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 272, i8* nonnull %4) #28
  call void @_ZN17RecursiveGaussianC2Ev(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3)
  %5 = invoke i32 @_ZN17RecursiveGaussian10initializeEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3)
          to label %6 unwind label %8

6:                                                ; preds = %2
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %34

8:                                                ; preds = %33, %31, %27, %23, %19, %10, %2
  %9 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN17RecursiveGaussianD2Ev(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3) #28
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %4) #28
  resume { i8*, i32 } %9

10:                                               ; preds = %6
  %11 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %3, i64 0, i32 20
  %12 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %11, align 8, !tbaa !87
  %13 = bitcast %"class.appsdk::HIPCommandArgs"* %12 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %14 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %13, align 8, !tbaa !26
  %15 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %14, align 8
  %16 = invoke i32 %15(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %12, i32 %0, i8** %1)
          to label %17 unwind label %8

17:                                               ; preds = %10
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %17
  %20 = invoke i32 @_ZN17RecursiveGaussian5setupEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3)
          to label %21 unwind label %8

21:                                               ; preds = %19
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = invoke i32 @_ZN17RecursiveGaussian3runEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3)
          to label %25 unwind label %8

25:                                               ; preds = %23
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = invoke i32 @_ZN17RecursiveGaussian13verifyResultsEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3)
          to label %29 unwind label %8

29:                                               ; preds = %27
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = invoke i32 @_ZN17RecursiveGaussian7cleanupEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3)
          to label %33 unwind label %8

33:                                               ; preds = %31
  invoke void @_ZN17RecursiveGaussian10printStatsEv(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %3)
          to label %34 unwind label %8

34:                                               ; preds = %33, %29, %25, %21, %17, %6
  %35 = phi i32 [ 1, %6 ], [ 1, %17 ], [ 1, %21 ], [ 1, %25 ], [ 1, %29 ], [ 0, %33 ]
  %36 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %3, i64 0, i32 9, i32 2
  %37 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %36, align 2, !tbaa !35
  %38 = icmp eq %struct.HIP_vector_type* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %37, i64 0, i32 0, i32 0, i32 0, i64 0
  call void @_ZdaPv(i8* %40) #30
  br label %41

41:                                               ; preds = %39, %34
  %42 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %3, i64 0, i32 9, i32 4
  %43 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %42, align 2, !tbaa !38
  %44 = icmp eq %struct.HIP_vector_type* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %43, i64 0, i32 0, i32 0, i32 0, i64 0
  call void @_ZdaPv(i8* %46) #30
  br label %47

47:                                               ; preds = %41, %45
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %4) #28
  ret i32 %35
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN17RecursiveGaussianC2Ev(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 8
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %3, align 8, !tbaa !37
  %4 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 2
  %5 = bitcast %struct.HIP_vector_type** %4 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(21) %5, i8 0, i64 21, i1 false) #28
  %6 = bitcast %struct.HIP_vector_type** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = invoke noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #31
          to label %8 unwind label %42

8:                                                ; preds = %1
  %9 = bitcast i8* %7 to %"class.appsdk::HIPCommandArgs"*
  %10 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 0
  %11 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 8, i32 0
  %13 = bitcast i32* %12 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %13, align 8, !tbaa !7
  %14 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %14, align 8, !tbaa !163
  %15 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !88
  %16 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 1
  store i32 0, i32* %16, align 8, !tbaa !93
  %17 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 2
  store i32 0, i32* %17, align 4, !tbaa !164
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 4
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 3
  %20 = bitcast i8*** %18 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store i32 123, i32* %19, align 8, !tbaa !165
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 9
  store i8 0, i8* %21, align 4, !tbaa !166
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 10
  store i8 0, i8* %22, align 1, !tbaa !128
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 0, i32 11
  store i8 0, i8* %23, align 2, !tbaa !138
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %10, align 8, !tbaa !26
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 1
  store i32 0, i32* %24, align 8, !tbaa !167
  %25 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %9, i64 0, i32 2
  store i8 0, i8* %25, align 4, !tbaa !169
  %26 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 20
  %27 = bitcast %"class.appsdk::HIPCommandArgs"** %26 to i8**
  store i8* %7, i8** %27, align 8, !tbaa !87
  %28 = invoke noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #31
          to label %29 unwind label %42

29:                                               ; preds = %8
  %30 = bitcast i8* %7 to %"class.appsdk::SDKCmdArgsParser"*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false) #28
  %31 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 19
  %32 = bitcast %"class.appsdk::SDKTimer"** %31 to i8**
  store i8* %28, i8** %32, align 8, !tbaa !105
  %33 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %30, i64 0, i32 12
  %34 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i64 0, i64 0), i64 30)
          to label %35 unwind label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 11
  store i32 4, i32* %36, align 8, !tbaa !72
  %37 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 10
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %37, align 8, !tbaa !36
  %38 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 15
  %39 = bitcast i64* %38 to <2 x i64>*
  store <2 x i64> <i64 256, i64 1>, <2 x i64>* %39, align 8, !tbaa !170
  %40 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 17
  store i64 1, i64* %40, align 8, !tbaa !73
  %41 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 18
  store i32 1, i32* %41, align 8, !tbaa !120
  ret void

42:                                               ; preds = %29, %8, %1
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9
  tail call void @_ZN6appsdk9SDKBitMapD2Ev(%"class.appsdk::SDKBitMap"* nonnull align 1 dereferenceable(75) %44) #28
  resume { i8*, i32 } %43
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17RecursiveGaussianD2Ev(%class.RecursiveGaussian* nonnull align 8 dereferenceable(272) %0) unnamed_addr #11 comdat align 2 {
  %2 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 2
  %3 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %2, align 2, !tbaa !35
  %4 = icmp eq %struct.HIP_vector_type* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @_ZdaPv(i8* %6) #30
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 4
  %9 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %8, align 2, !tbaa !38
  %10 = icmp eq %struct.HIP_vector_type* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @_ZdaPv(i8* %12) #30
  br label %13

13:                                               ; preds = %7, %11
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %2, align 2, !tbaa !35
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %8, align 2, !tbaa !38
  %14 = getelementptr inbounds %class.RecursiveGaussian, %class.RecursiveGaussian* %0, i64 0, i32 9, i32 5
  store i8 0, i8* %14, align 2, !tbaa !14
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @expf(float) local_unnamed_addr #22

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

declare dso_local i8* @__cxa_allocate_exception(i64) local_unnamed_addr

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare dso_local void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local i64 @_ZNKSs5rfindEcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8 signext, i64) local_unnamed_addr #1

declare dso_local void @_ZNSsC1ERKSsmm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8), i64, i64) unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk9SDKBitMapD2Ev(%"class.appsdk::SDKBitMap"* nonnull align 1 dereferenceable(75) %0) unnamed_addr #11 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 2
  %3 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %2, align 1, !tbaa !35
  %4 = icmp eq %struct.HIP_vector_type* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @_ZdaPv(i8* %6) #30
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 4
  %9 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %8, align 1, !tbaa !38
  %10 = icmp eq %struct.HIP_vector_type* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  tail call void @_ZdaPv(i8* %12) #30
  br label %13

13:                                               ; preds = %7, %11
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %2, align 1, !tbaa !35
  store %struct.HIP_vector_type* null, %struct.HIP_vector_type** %8, align 1, !tbaa !38
  %14 = getelementptr inbounds %"class.appsdk::SDKBitMap", %"class.appsdk::SDKBitMap"* %0, i64 0, i32 5
  store i8 0, i8* %14, align 1, !tbaa !14
  ret void
}

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
  store i32 %1, i32* %23, align 4, !tbaa !164
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !171
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
  br i1 %37, label %28, label %38, !llvm.loop !172

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #28
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !164
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !171
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !32
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #28
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !164
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !173

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !11
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #28
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %69, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #28
  br label %84

84:                                               ; preds = %64, %80, %83
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %70) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #28
  br i1 %65, label %85, label %339

85:                                               ; preds = %84
  call void @exit(i32 0) #33
  unreachable

86:                                               ; preds = %3, %38
  %87 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %87) #28
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !164
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !171
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !32
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #28
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !164
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !173

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !11
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #28
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %114, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #28
  br label %129

129:                                              ; preds = %109, %125, %128
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %87) #28
  br i1 %110, label %130, label %131

130:                                              ; preds = %129
  call void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  call void @exit(i32 0) #33
  unreachable

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %132) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !164
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !171
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !32
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #28
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !164
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !173

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !164
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !171
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !32
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !32
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #28
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !164
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !173

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !11
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #28
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #28
  br label %203

203:                                              ; preds = %183, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #28
  br label %204

204:                                              ; preds = %144, %203
  %205 = phi i1 [ %184, %203 ], [ true, %144 ]
  %206 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8, !tbaa !11
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #28
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %209, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #28
  br label %224

224:                                              ; preds = %204, %220, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %210) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #28
  br i1 %205, label %225, label %237

225:                                              ; preds = %224
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !11
  %229 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %226, i8* %228)
  %230 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %229)
  call void @exit(i32 0) #33
  unreachable

231:                                              ; preds = %131
  %232 = landingpad { i8*, i32 }
          cleanup
  br label %235

233:                                              ; preds = %155
  %234 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #28
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #28
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi { i8*, i32 } [ %234, %233 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #28
  br label %341

237:                                              ; preds = %224
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !164
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !171
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !32
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #28
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !164
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !173

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #28
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !164
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !171
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !32
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !32
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #28
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !164
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !173

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !11
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #28
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %294, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #28
  br label %309

309:                                              ; preds = %289, %305, %308
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %295) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #28
  br label %310

310:                                              ; preds = %250, %309
  %311 = phi i1 [ %290, %309 ], [ true, %250 ]
  %312 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8, !tbaa !11
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #28
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %315, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #28
  br label %330

330:                                              ; preds = %310, %326, %329
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %316) #28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #28
  br i1 %311, label %331, label %339

331:                                              ; preds = %330
  %332 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 2
  store i8 1, i8* %332, align 4, !tbaa !169
  br label %339

333:                                              ; preds = %237
  %334 = landingpad { i8*, i32 }
          cleanup
  br label %337

335:                                              ; preds = %261
  %336 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #28
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #28
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi { i8*, i32 } [ %336, %335 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #28
  br label %341

339:                                              ; preds = %330, %331, %84
  %340 = phi i32 [ 1, %84 ], [ 0, %331 ], [ 0, %330 ]
  ret i32 %340

341:                                              ; preds = %337, %235
  %342 = phi { i8*, i32 } [ %338, %337 ], [ %236, %235 ]
  resume { i8*, i32 } %342
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !26
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !96
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %18) #28
  %19 = icmp eq %"struct.appsdk::Option"* %18, %6
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %8
  tail call void @_ZdaPv(i8* nonnull %10) #30
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 12, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !11
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #28
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %25, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %40

40:                                               ; preds = %21, %36, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #28
  %41 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !11
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #28
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %44, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %59

59:                                               ; preds = %40, %55, %58
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %45) #28
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk14HIPCommandArgsD0Ev(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) unnamed_addr #11 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  tail call void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(93) %2) #28
  %3 = bitcast %"class.appsdk::HIPCommandArgs"* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %3) #30
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #10 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #23

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !32
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !32
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !93
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !96
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #28
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !93
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !174

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !96
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !96
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !89
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !92
  store i8 1, i8* %44, align 1, !tbaa !175
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !92
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), float* %52) #28
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %62
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = getelementptr inbounds i8, i8* %63, i64 32
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !176
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #28
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !92
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), double* %81) #28
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %91
  %93 = bitcast i8* %92 to %"class.std::basic_ios"*
  %94 = getelementptr inbounds i8, i8* %92, i64 32
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !176
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #28
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !92
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i32* %110) #28
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = bitcast i8* %121 to %"class.std::basic_ios"*
  %123 = getelementptr inbounds i8, i8* %121, i64 32
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !176
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #28
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !92
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !11
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !11
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #28
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %147, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #28
  br label %162

162:                                              ; preds = %161, %158, %146
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #28
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !11
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !25

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !177
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !54
  store i8 0, i8* %144, align 1, !tbaa !32
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #28
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %182
  %184 = bitcast i8* %183 to %"class.std::basic_ios"*
  %185 = getelementptr inbounds i8, i8* %183, i64 32
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 8, !tbaa !176
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #28
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !93
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !174

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #24

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !145
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !151
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !161
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !145
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !151
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !161
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !93
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !96
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !11
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !54
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !145
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !151
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #28
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !88, !alias.scope !178
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 1)
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
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #28
  br label %87

91:                                               ; preds = %85
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !88, !noalias !181
  store i8* %95, i8** %47, align 8, !tbaa !88, !alias.scope !181
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !11, !noalias !181
  %96 = load i8*, i8** %47, align 8, !tbaa !11
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !54
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #28
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #28
  br label %116

116:                                              ; preds = %101, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #28
  %117 = load i8*, i8** %46, align 8, !tbaa !11
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #28
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %119, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #28
  br label %133

133:                                              ; preds = %116, %129, %132
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %49) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #28
  br label %142

134:                                              ; preds = %91
  %135 = landingpad { i8*, i32 }
          cleanup
  br label %138

136:                                              ; preds = %93
  %137 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #28
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { i8*, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #28
  br label %87

140:                                              ; preds = %59
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !145
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !151
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #28
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !96
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !88, !alias.scope !184
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !11, !noalias !184
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !54, !noalias !184
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 2)
          to label %165 unwind label %167

165:                                              ; preds = %163
  %166 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %156)
          to label %169 unwind label %167

167:                                              ; preds = %165, %163, %142
  %168 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #28
  br label %87

169:                                              ; preds = %165
  %170 = load i8*, i8** %51, align 8, !tbaa !11
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !54
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !11
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #28
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #28
  br label %192

192:                                              ; preds = %175, %188, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #28
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !96
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !11
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !54
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !145
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !151
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !161
  br i1 %199, label %216, label %212

212:                                              ; preds = %192
  %213 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %195, i64 %198)
  br label %218

214:                                              ; preds = %169
  %215 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #28
  br label %87

216:                                              ; preds = %192
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.81, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #28
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !96
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #28
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !11
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !54
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !11
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #28
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !25

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %233, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #28
  br label %247

247:                                              ; preds = %230, %243, %246
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %55) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #28
  %248 = add nuw nsw i64 %60, 1
  %249 = load i32, i32* %42, align 8, !tbaa !93
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !187

252:                                              ; preds = %224
  %253 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #28
  br label %87
}

declare dso_local void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i64, i8*, i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #25

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: uwtable
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88), i32) unnamed_addr #5 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88)) unnamed_addr #11 align 2

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216)) unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: uwtable
declare dso_local void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80)) local_unnamed_addr #5 align 2

declare dso_local void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_recursivegaussian.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #28
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32)** @_Z16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, float, float, float, float, float, float, float, float)** @_Z24RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff to i8*), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #9 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inaccessiblememonly nofree nounwind willreturn }
attributes #27 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { allocsize(0) }
attributes #33 = { noreturn nounwind }

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
!10 = !{!"float", !5, i64 0}
!11 = !{!12, !4, i64 0}
!12 = !{!"_ZTSSs", !13, i64 0}
!13 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!14 = !{!15, !16, i64 74}
!15 = !{!"_ZTSN6appsdk9SDKBitMapE", !4, i64 54, !8, i64 62, !4, i64 66, !16, i64 74}
!16 = !{!"bool", !5, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{!19, !8, i64 216}
!19 = !{!"_ZTS17RecursiveGaussian", !20, i64 0, !20, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !15, i64 72, !4, i64 152, !8, i64 160, !21, i64 164, !8, i64 212, !8, i64 216, !22, i64 224, !22, i64 232, !22, i64 240, !8, i64 248, !4, i64 256, !4, i64 264}
!20 = !{!"double", !5, i64 0}
!21 = !{!"_ZTS11_GaussParms", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!22 = !{!"long", !5, i64 0}
!23 = !{!19, !8, i64 212}
!24 = !{!19, !4, i64 16}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !6, i64 0}
!28 = !{!29, !4, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !16, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!30 = !{!31, !5, i64 56}
!31 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !16, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!32 = !{!5, !5, i64 0}
!33 = !{!19, !4, i64 56}
!34 = !{!19, !4, i64 24}
!35 = !{!15, !4, i64 54}
!36 = !{!19, !4, i64 152}
!37 = !{!19, !4, i64 64}
!38 = !{!15, !4, i64 66}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSN6appsdk12BitMapHeaderE", !41, i64 0, !8, i64 2, !41, i64 6, !41, i64 8, !8, i64 10}
!41 = !{!"short", !5, i64 0}
!42 = !{!43, !8, i64 16}
!43 = !{!"_ZTSN6appsdk16BitMapInfoHeaderE", !8, i64 0, !8, i64 4, !8, i64 8, !41, i64 12, !41, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!44 = !{!43, !41, i64 14}
!45 = !{!15, !8, i64 62}
!46 = !{!40, !8, i64 2}
!47 = !{!40, !8, i64 10}
!48 = !{!43, !8, i64 4}
!49 = !{!43, !8, i64 8}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unswitch.partial.disable"}
!53 = distinct !{!53, !51}
!54 = !{!55, !22, i64 0}
!55 = !{!"_ZTSNSs9_Rep_baseE", !22, i64 0, !22, i64 8, !8, i64 16}
!56 = distinct !{!56, !51}
!57 = distinct !{!57, !51}
!58 = distinct !{!58, !51}
!59 = distinct !{!59, !51}
!60 = !{!21, !10, i64 0}
!61 = !{!21, !10, i64 4}
!62 = !{!21, !10, i64 8}
!63 = !{!21, !10, i64 12}
!64 = !{!21, !10, i64 16}
!65 = !{!21, !10, i64 20}
!66 = !{!21, !10, i64 24}
!67 = !{!21, !10, i64 28}
!68 = !{!21, !10, i64 32}
!69 = !{!21, !10, i64 36}
!70 = !{!21, !10, i64 40}
!71 = !{!21, !10, i64 44}
!72 = !{!19, !8, i64 160}
!73 = !{!19, !22, i64 240}
!74 = !{!19, !4, i64 32}
!75 = !{!19, !22, i64 224}
!76 = !{!19, !22, i64 232}
!77 = !{!19, !4, i64 40}
!78 = !{!19, !10, i64 188}
!79 = !{!19, !10, i64 192}
!80 = !{!19, !10, i64 196}
!81 = !{!19, !10, i64 200}
!82 = !{!19, !10, i64 180}
!83 = !{!19, !10, i64 184}
!84 = !{!19, !10, i64 204}
!85 = !{!19, !10, i64 208}
!86 = !{!19, !4, i64 48}
!87 = !{!19, !4, i64 264}
!88 = !{!13, !4, i64 0}
!89 = !{!90, !91, i64 32}
!90 = !{!"_ZTSN6appsdk6OptionE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !91, i64 32, !4, i64 40}
!91 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!92 = !{!90, !4, i64 40}
!93 = !{!94, !8, i64 8}
!94 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !16, i64 40, !12, i64 48, !95, i64 56, !16, i64 76, !16, i64 77, !16, i64 78, !12, i64 80}
!95 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!96 = !{!94, !4, i64 32}
!97 = distinct !{!97, !51}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN6appsdkL7getPathEv: argument 0"}
!100 = distinct !{!100, !"_ZN6appsdkL7getPathEv"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_: argument 0"}
!103 = distinct !{!103, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_"}
!104 = !{!55, !22, i64 8}
!105 = !{!19, !4, i64 256}
!106 = !{!107, !4, i64 8}
!107 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!109 = !{!107, !4, i64 0}
!110 = !{!19, !20, i64 0}
!111 = !{!112, !113, i64 8}
!112 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !12, i64 0, !113, i64 8, !113, i64 16, !113, i64 24}
!113 = !{!"long long", !5, i64 0}
!114 = !{!107, !4, i64 16}
!115 = !{!116, !22, i64 0}
!116 = !{!"_ZTS7timeval", !22, i64 0, !22, i64 8}
!117 = !{!116, !22, i64 8}
!118 = !{!112, !113, i64 24}
!119 = !{!112, !113, i64 16}
!120 = !{!19, !8, i64 248}
!121 = distinct !{!121, !51}
!122 = !{!19, !20, i64 8}
!123 = distinct !{!123, !51}
!124 = distinct !{!124, !51}
!125 = distinct !{!125, !51}
!126 = distinct !{!126, !51}
!127 = distinct !{!127, !51}
!128 = !{!94, !16, i64 77}
!129 = !{!130}
!130 = distinct !{!130, !131}
!131 = distinct !{!131, !"LVerDomain"}
!132 = !{!133}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !51, !135}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = distinct !{!136, !51}
!137 = distinct !{!137, !51, !135}
!138 = !{!94, !16, i64 78}
!139 = !{!140, !20, i64 24}
!140 = !{!"_ZTSN6appsdk8SDKTimerE", !141, i64 0, !20, i64 24}
!141 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!144 = distinct !{!144, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!145 = !{!146, !147, i64 24}
!146 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !147, i64 24, !148, i64 28, !148, i64 32, !4, i64 40, !149, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !150, i64 208}
!147 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!148 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!149 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !22, i64 8}
!150 = !{!"_ZTSSt6locale", !4, i64 0}
!151 = !{!147, !147, i64 0}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E: argument 0"}
!154 = distinct !{!154, !"_ZN6appsdk8toStringIjEESsT_PFRSt8ios_baseS3_E"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!157 = distinct !{!157, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!160 = distinct !{!160, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!161 = !{!146, !22, i64 16}
!162 = distinct !{!162, !51}
!163 = !{!95, !8, i64 16}
!164 = !{!94, !8, i64 12}
!165 = !{!94, !8, i64 16}
!166 = !{!94, !16, i64 76}
!167 = !{!168, !8, i64 88}
!168 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !16, i64 92}
!169 = !{!168, !16, i64 92}
!170 = !{!22, !22, i64 0}
!171 = !{!94, !4, i64 24}
!172 = distinct !{!172, !51}
!173 = distinct !{!173, !51}
!174 = distinct !{!174, !51}
!175 = !{!16, !16, i64 0}
!176 = !{!146, !148, i64 32}
!177 = !{!55, !8, i64 16}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!180 = distinct !{!180, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!183 = distinct !{!183, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!186 = distinct !{!186, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!187 = distinct !{!187, !51}
