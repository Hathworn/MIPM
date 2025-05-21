; ModuleID = 'histogram/histogram.cpp'
source_filename = "histogram/histogram.cpp"
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
%class.Histogram = type { i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*, double, double, i64, i64, i32*, i32*, i32, i8, i8, i32, i32, i32, i32, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"* }
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

$_ZN6appsdk14HIPCommandArgs10initializeEv = comdat any

$_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE = comdat any

$_ZN6appsdk6OptionD2Ev = comdat any

$_ZN6appsdk8SDKTimer11createTimerEv = comdat any

$_ZN6appsdk8SDKTimer10startTimerEi = comdat any

$_ZN6appsdk8SDKTimer9stopTimerEi = comdat any

$_ZN6appsdk8SDKTimer9readTimerEi = comdat any

$_ZN6appsdk10printArrayIjEEvSsPKT_ii = comdat any

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
@_Z12histogram256PjS_ = dso_local constant void (i32*, i32*)* @_Z27__device_stub__histogram256PjS_, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate host memory. (hostBin)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"histogram/histogram.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to allocate host memory. (deviceBin)\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"Ignoring --scalar and --vector option and using the default vector width of 4\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Selecting scalar kernel\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Selecting vector kernel\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Width of the input\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Height of the input\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Number of iterations to execute kernel\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.25 = private unnamed_addr constant [88 x i8] c"Run scalar version of the kernel (--scalar and --vector options are mutually exclusive)\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.27 = private unnamed_addr constant [88 x i8] c"Run vector version of the kernel (--scalar and --vector options are mutually exclusive)\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"Error, iterations cannot be 0 or negative. Exiting..\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Sample Resource Setup Failed\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"deviceBin\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"hostBin\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"Setup Time(sec)\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"Avg. Kernel Time (sec)\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Elements/sec\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.59 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"HIP-Examples-Applications-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.70 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [21 x i8] c"_Z12histogram256PjS_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_histogram.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z27__device_stub__histogram256PjS_(i32* %0, i32* %1) #3 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to i32***
  store i32** %3, i32*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to i32***
  store i32** %4, i32*** %13, align 8
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
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*)** @_Z12histogram256PjS_ to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local i32 @_ZN9Histogram16calculateHostBinEv(%class.Histogram* nocapture nonnull readonly align 8 dereferenceable(144) %0) local_unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 5
  %3 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 4
  %4 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 6
  %5 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 3
  %6 = load i32, i32* %2, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, 0
  %8 = load i32, i32* %3, align 8
  %9 = icmp sgt i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %18

11:                                               ; preds = %1, %21
  %12 = phi i32 [ %22, %21 ], [ %6, %1 ]
  %13 = phi i32 [ %23, %21 ], [ %8, %1 ]
  %14 = phi i32 [ %24, %21 ], [ 0, %1 ]
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp sgt i32 %13, 0
  br i1 %17, label %26, label %21

18:                                               ; preds = %21, %1
  ret i32 0

19:                                               ; preds = %26
  %20 = load i32, i32* %2, align 4, !tbaa !7
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi i32 [ %20, %19 ], [ %12, %11 ]
  %23 = phi i32 [ %39, %19 ], [ %13, %11 ]
  %24 = add nuw nsw i32 %14, 1
  %25 = icmp slt i32 %24, %22
  br i1 %25, label %11, label %18, !llvm.loop !13

26:                                               ; preds = %11, %26
  %27 = phi i32 [ %39, %26 ], [ %13, %11 ]
  %28 = phi i32 [ %38, %26 ], [ 0, %11 ]
  %29 = mul nsw i32 %27, %14
  %30 = add nsw i32 %29, %28
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %16, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !16
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %15, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !16
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4, !tbaa !16
  %38 = add nuw nsw i32 %28, 1
  %39 = load i32, i32* %3, align 8, !tbaa !17
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %26, label %19, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: uwtable
define dso_local i32 @_ZN9Histogram14setupHistogramEv(%class.Histogram* nocapture nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !17
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 5
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = mul i64 %11, %14
  %16 = tail call noalias align 16 i8* @malloc(i64 %15) #24
  %17 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 3
  %18 = bitcast i32** %17 to i8**
  store i8* %16, i8** %18, align 8, !tbaa !19
  %19 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 0
  %20 = mul nsw i32 %13, %9
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1, %22
  %23 = phi i64 [ %29, %22 ], [ 0, %1 ]
  %24 = tail call i32 @rand() #24
  %25 = load i32, i32* %19, align 8, !tbaa !20
  %26 = urem i32 %24, %25
  %27 = load i32*, i32** %17, align 8, !tbaa !19
  %28 = getelementptr inbounds i32, i32* %27, i64 %23
  store i32 %26, i32* %28, align 4, !tbaa !16
  %29 = add nuw nsw i64 %23, 1
  %30 = load i32, i32* %8, align 8, !tbaa !17
  %31 = load i32, i32* %12, align 4, !tbaa !7
  %32 = mul nsw i32 %31, %30
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %22, label %35, !llvm.loop !21

35:                                               ; preds = %22, %1
  %36 = load i32, i32* %19, align 8, !tbaa !20
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = call i8* @calloc(i64 1, i64 %38)
  %40 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 6
  %41 = bitcast i32** %40 to i8**
  store i8* %39, i8** %41, align 8, !tbaa !22
  %42 = icmp eq i8* %39, null
  br i1 %42, label %43, label %105

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %44) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
          to label %45 unwind label %99

45:                                               ; preds = %43
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %46 unwind label %101

46:                                               ; preds = %45
  %47 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8, !tbaa !23
  %49 = getelementptr inbounds i8, i8* %48, i64 -24
  %50 = bitcast i8* %49 to %"struct.std::basic_string<char>::_Rep"*
  %51 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %51) #24
  %52 = icmp eq i8* %49, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %52, label %65, label %53, !prof !26

53:                                               ; preds = %46
  %54 = getelementptr inbounds i8, i8* %48, i64 -8
  %55 = bitcast i8* %54 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %56, label %58

56:                                               ; preds = %53
  %57 = atomicrmw volatile add i32* %55, i32 -1 acq_rel, align 4
  br label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %55, align 8, !tbaa !16
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %55, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %50, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %65

65:                                               ; preds = %46, %61, %64
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %44) #24
  %66 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %67 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %68 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 309)
  %70 = bitcast %"class.std::basic_ostream"* %69 to i8**
  %71 = load i8*, i8** %70, align 8, !tbaa !27
  %72 = getelementptr i8, i8* %71, i64 -24
  %73 = bitcast i8* %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = bitcast %"class.std::basic_ostream"* %69 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  %77 = getelementptr inbounds i8, i8* %76, i64 240
  %78 = bitcast i8* %77 to %"class.std::ctype"**
  %79 = load %"class.std::ctype"*, %"class.std::ctype"** %78, align 8, !tbaa !29
  %80 = icmp eq %"class.std::ctype"* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

82:                                               ; preds = %65
  %83 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %79, i64 0, i32 8
  %84 = load i8, i8* %83, align 8, !tbaa !31
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %79, i64 0, i32 9, i64 10
  %88 = load i8, i8* %87, align 1, !tbaa !33
  br label %95

89:                                               ; preds = %82
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %79)
  %90 = bitcast %"class.std::ctype"* %79 to i8 (%"class.std::ctype"*, i8)***
  %91 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %90, align 8, !tbaa !27
  %92 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %91, i64 6
  %93 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %92, align 8
  %94 = call signext i8 %93(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %79, i8 signext 10)
  br label %95

95:                                               ; preds = %86, %89
  %96 = phi i8 [ %88, %86 ], [ %94, %89 ]
  %97 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %69, i8 signext %96)
  %98 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %97)
  br label %291

99:                                               ; preds = %43
  %100 = landingpad { i8*, i32 }
          cleanup
  br label %103

101:                                              ; preds = %45
  %102 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #24
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi { i8*, i32 } [ %102, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %44) #24
  br label %293

105:                                              ; preds = %35
  %106 = call i8* @calloc(i64 1, i64 %38)
  %107 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 8
  %108 = bitcast i32** %107 to i8**
  store i8* %106, i8** %108, align 8, !tbaa !34
  %109 = icmp eq i8* %106, null
  br i1 %109, label %110, label %172

110:                                              ; preds = %105
  %111 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %111) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %112 unwind label %166

112:                                              ; preds = %110
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %113 unwind label %168

113:                                              ; preds = %112
  %114 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8, !tbaa !23
  %116 = getelementptr inbounds i8, i8* %115, i64 -24
  %117 = bitcast i8* %116 to %"struct.std::basic_string<char>::_Rep"*
  %118 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %118) #24
  %119 = icmp eq i8* %116, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %119, label %132, label %120, !prof !26

120:                                              ; preds = %113
  %121 = getelementptr inbounds i8, i8* %115, i64 -8
  %122 = bitcast i8* %121 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %123, label %125

123:                                              ; preds = %120
  %124 = atomicrmw volatile add i32* %122, i32 -1 acq_rel, align 4
  br label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %122, align 8, !tbaa !16
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %122, align 8, !tbaa !16
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %117, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %132

132:                                              ; preds = %113, %128, %131
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %118) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %111) #24
  %133 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %134 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %135 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %136 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 314)
  %137 = bitcast %"class.std::basic_ostream"* %136 to i8**
  %138 = load i8*, i8** %137, align 8, !tbaa !27
  %139 = getelementptr i8, i8* %138, i64 -24
  %140 = bitcast i8* %139 to i64*
  %141 = load i64, i64* %140, align 8
  %142 = bitcast %"class.std::basic_ostream"* %136 to i8*
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  %144 = getelementptr inbounds i8, i8* %143, i64 240
  %145 = bitcast i8* %144 to %"class.std::ctype"**
  %146 = load %"class.std::ctype"*, %"class.std::ctype"** %145, align 8, !tbaa !29
  %147 = icmp eq %"class.std::ctype"* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %132
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

149:                                              ; preds = %132
  %150 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %146, i64 0, i32 8
  %151 = load i8, i8* %150, align 8, !tbaa !31
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %146, i64 0, i32 9, i64 10
  %155 = load i8, i8* %154, align 1, !tbaa !33
  br label %162

156:                                              ; preds = %149
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %146)
  %157 = bitcast %"class.std::ctype"* %146 to i8 (%"class.std::ctype"*, i8)***
  %158 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %157, align 8, !tbaa !27
  %159 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %158, i64 6
  %160 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %159, align 8
  %161 = call signext i8 %160(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %146, i8 signext 10)
  br label %162

162:                                              ; preds = %153, %156
  %163 = phi i8 [ %155, %153 ], [ %161, %156 ]
  %164 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %136, i8 signext %163)
  %165 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %164)
  br label %291

166:                                              ; preds = %110
  %167 = landingpad { i8*, i32 }
          cleanup
  br label %170

168:                                              ; preds = %112
  %169 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #24
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi { i8*, i32 } [ %169, %168 ], [ %167, %166 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %111) #24
  br label %293

172:                                              ; preds = %105
  %173 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 2
  %174 = load i32, i32* %173, align 8, !tbaa !35
  %175 = sext i32 %174 to i64
  %176 = mul i64 %38, %175
  %177 = tail call noalias align 16 i8* @malloc(i64 %176) #24
  %178 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 7
  %179 = bitcast i32** %178 to i8**
  store i8* %177, i8** %179, align 8, !tbaa !36
  %180 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 16
  %181 = load i8, i8* %180, align 4, !tbaa !37, !range !38
  %182 = icmp eq i8 %181, 0
  %183 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 17
  %184 = load i8, i8* %183, align 1
  %185 = icmp eq i8 %184, 0
  %186 = select i1 %182, i1 true, i1 %185
  br i1 %186, label %216, label %187

187:                                              ; preds = %172
  %188 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i64 77)
  %189 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %190 = getelementptr i8, i8* %189, i64 -24
  %191 = bitcast i8* %190 to i64*
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %192
  %194 = getelementptr inbounds i8, i8* %193, i64 240
  %195 = bitcast i8* %194 to %"class.std::ctype"**
  %196 = load %"class.std::ctype"*, %"class.std::ctype"** %195, align 8, !tbaa !29
  %197 = icmp eq %"class.std::ctype"* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %187
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

199:                                              ; preds = %187
  %200 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %196, i64 0, i32 8
  %201 = load i8, i8* %200, align 8, !tbaa !31
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %196, i64 0, i32 9, i64 10
  %205 = load i8, i8* %204, align 1, !tbaa !33
  br label %212

206:                                              ; preds = %199
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %196)
  %207 = bitcast %"class.std::ctype"* %196 to i8 (%"class.std::ctype"*, i8)***
  %208 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %207, align 8, !tbaa !27
  %209 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %208, i64 6
  %210 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %209, align 8
  %211 = tail call signext i8 %210(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %196, i8 signext 10)
  br label %212

212:                                              ; preds = %203, %206
  %213 = phi i8 [ %205, %203 ], [ %211, %206 ]
  %214 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %213)
  %215 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %214)
  br label %222

216:                                              ; preds = %172
  %217 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 18
  br i1 %182, label %219, label %218

218:                                              ; preds = %216
  store i32 1, i32* %217, align 8, !tbaa !39
  br label %222

219:                                              ; preds = %216
  br i1 %185, label %221, label %220

220:                                              ; preds = %219
  store i32 4, i32* %217, align 8, !tbaa !39
  br label %222

221:                                              ; preds = %219
  store i32 1, i32* %217, align 8, !tbaa !39
  br label %222

222:                                              ; preds = %218, %221, %220, %212
  %223 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 23
  %224 = bitcast %"class.appsdk::HIPCommandArgs"** %223 to %"class.appsdk::SDKCmdArgsParser"**
  %225 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %224, align 8, !tbaa !40
  %226 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %225, i64 0, i32 9
  %227 = load i8, i8* %226, align 4, !tbaa !41, !range !38
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %291

229:                                              ; preds = %222
  %230 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 18
  %231 = load i32, i32* %230, align 8, !tbaa !39
  %232 = icmp eq i32 %231, 4
  br i1 %232, label %233, label %262

233:                                              ; preds = %229
  %234 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 24)
  %235 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %236 = getelementptr i8, i8* %235, i64 -24
  %237 = bitcast i8* %236 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %238
  %240 = getelementptr inbounds i8, i8* %239, i64 240
  %241 = bitcast i8* %240 to %"class.std::ctype"**
  %242 = load %"class.std::ctype"*, %"class.std::ctype"** %241, align 8, !tbaa !29
  %243 = icmp eq %"class.std::ctype"* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %233
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

245:                                              ; preds = %233
  %246 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %242, i64 0, i32 8
  %247 = load i8, i8* %246, align 8, !tbaa !31
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %242, i64 0, i32 9, i64 10
  %251 = load i8, i8* %250, align 1, !tbaa !33
  br label %258

252:                                              ; preds = %245
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %242)
  %253 = bitcast %"class.std::ctype"* %242 to i8 (%"class.std::ctype"*, i8)***
  %254 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %253, align 8, !tbaa !27
  %255 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %254, i64 6
  %256 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %255, align 8
  %257 = tail call signext i8 %256(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %242, i8 signext 10)
  br label %258

258:                                              ; preds = %249, %252
  %259 = phi i8 [ %251, %249 ], [ %257, %252 ]
  %260 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %259)
  %261 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %260)
  br label %291

262:                                              ; preds = %229
  %263 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 24)
  %264 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %265 = getelementptr i8, i8* %264, i64 -24
  %266 = bitcast i8* %265 to i64*
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %267
  %269 = getelementptr inbounds i8, i8* %268, i64 240
  %270 = bitcast i8* %269 to %"class.std::ctype"**
  %271 = load %"class.std::ctype"*, %"class.std::ctype"** %270, align 8, !tbaa !29
  %272 = icmp eq %"class.std::ctype"* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %262
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

274:                                              ; preds = %262
  %275 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %271, i64 0, i32 8
  %276 = load i8, i8* %275, align 8, !tbaa !31
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %271, i64 0, i32 9, i64 10
  %280 = load i8, i8* %279, align 1, !tbaa !33
  br label %287

281:                                              ; preds = %274
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %271)
  %282 = bitcast %"class.std::ctype"* %271 to i8 (%"class.std::ctype"*, i8)***
  %283 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %282, align 8, !tbaa !27
  %284 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %283, i64 6
  %285 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %284, align 8
  %286 = tail call signext i8 %285(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %271, i8 signext 10)
  br label %287

287:                                              ; preds = %278, %281
  %288 = phi i8 [ %280, %278 ], [ %286, %281 ]
  %289 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %288)
  %290 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %289)
  br label %291

291:                                              ; preds = %222, %287, %258, %162, %95
  %292 = phi i32 [ 1, %95 ], [ 1, %162 ], [ 0, %258 ], [ 0, %287 ], [ 0, %222 ]
  ret i32 %292

293:                                              ; preds = %170, %103
  %294 = phi { i8*, i32 } [ %104, %103 ], [ %171, %170 ]
  resume { i8*, i32 } %294
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #9 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !23
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !44
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !27
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !29
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !33
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !27
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

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #11

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN9Histogram8setupHIPEv(%class.Histogram* nocapture nonnull readnone align 8 %0) local_unnamed_addr #9 align 2 {
  %2 = alloca %struct.hipDeviceProp_t, align 8
  %3 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %3) #24
  %4 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %2, i32 0)
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i64 14)
  %6 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 13
  %7 = load i32, i32* %6, align 4, !tbaa !46
  %8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !27
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !29
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !33
  br label %34

28:                                               ; preds = %21
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !27
  %31 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %30, i64 6
  %32 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %31, align 8
  %33 = call signext i8 %32(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18, i8 signext 10)
  br label %34

34:                                               ; preds = %25, %28
  %35 = phi i8 [ %27, %25 ], [ %33, %28 ]
  %36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, i8 signext %35)
  %37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %36)
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i64 14)
  %39 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 12
  %40 = load i32, i32* %39, align 8, !tbaa !49
  %41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %40)
  %42 = bitcast %"class.std::basic_ostream"* %41 to i8**
  %43 = load i8*, i8** %42, align 8, !tbaa !27
  %44 = getelementptr i8, i8* %43, i64 -24
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %"class.std::basic_ostream"* %41 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  %49 = getelementptr inbounds i8, i8* %48, i64 240
  %50 = bitcast i8* %49 to %"class.std::ctype"**
  %51 = load %"class.std::ctype"*, %"class.std::ctype"** %50, align 8, !tbaa !29
  %52 = icmp eq %"class.std::ctype"* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

54:                                               ; preds = %34
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !31
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 9, i64 10
  %60 = load i8, i8* %59, align 1, !tbaa !33
  br label %67

61:                                               ; preds = %54
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51)
  %62 = bitcast %"class.std::ctype"* %51 to i8 (%"class.std::ctype"*, i8)***
  %63 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %62, align 8, !tbaa !27
  %64 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %63, i64 6
  %65 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %64, align 8
  %66 = call signext i8 %65(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51, i8 signext 10)
  br label %67

67:                                               ; preds = %58, %61
  %68 = phi i8 [ %60, %58 ], [ %66, %61 ]
  %69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %41, i8 signext %68)
  %70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %69)
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 17)
  %72 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #24
  %73 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %3, i64 %72)
  %74 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %75 = getelementptr i8, i8* %74, i64 -24
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 240
  %80 = bitcast i8* %79 to %"class.std::ctype"**
  %81 = load %"class.std::ctype"*, %"class.std::ctype"** %80, align 8, !tbaa !29
  %82 = icmp eq %"class.std::ctype"* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

84:                                               ; preds = %67
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !31
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 9, i64 10
  %90 = load i8, i8* %89, align 1, !tbaa !33
  br label %97

91:                                               ; preds = %84
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81)
  %92 = bitcast %"class.std::ctype"* %81 to i8 (%"class.std::ctype"*, i8)***
  %93 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %92, align 8, !tbaa !27
  %94 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %93, i64 6
  %95 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %94, align 8
  %96 = call signext i8 %95(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81, i8 signext 10)
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi i8 [ %90, %88 ], [ %96, %91 ]
  %99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %98)
  %100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %99)
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %3) #24
  ret i32 0
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN9Histogram10runKernelsEv(%class.Histogram* nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #7 align 2 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dim3, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca %struct.ihipEvent_t*, align 8
  %10 = alloca %struct.ihipEvent_t*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = bitcast %struct.ihipEvent_t** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #24
  %14 = bitcast %struct.ihipEvent_t** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #24
  %15 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %9)
  %16 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %10)
  %17 = bitcast float* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #24
  store float 1.000000e+00, float* %11, align 4, !tbaa !50
  %18 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 1
  store i32 128, i32* %18, align 4, !tbaa !52
  %19 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 4
  %20 = load i32, i32* %19, align 8, !tbaa !17
  %21 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 5
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = mul nsw i32 %22, %20
  %24 = sdiv i32 %23, 128
  %25 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 19
  store i32 %24, i32* %25, align 4, !tbaa !53
  %26 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 20
  store i32 128, i32* %26, align 8, !tbaa !54
  %27 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 13
  %28 = bitcast i32** %27 to i8**
  %29 = sext i32 %20 to i64
  %30 = shl nsw i64 %29, 2
  %31 = sext i32 %22 to i64
  %32 = mul i64 %30, %31
  %33 = call i32 @hipHostMalloc(i8** nonnull %28, i64 %32, i32 0)
  %34 = bitcast i32** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #24
  %35 = bitcast i32** %12 to i8**
  %36 = load i8*, i8** %28, align 8, !tbaa !55
  %37 = call i32 @hipHostGetDevicePointer(i8** nonnull %35, i8* %36, i32 0)
  %38 = load i8*, i8** %35, align 8, !tbaa !3
  %39 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 3
  %40 = bitcast i32** %39 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !19
  %42 = load i32, i32* %19, align 8, !tbaa !17
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  %45 = load i32, i32* %21, align 4, !tbaa !7
  %46 = sext i32 %45 to i64
  %47 = mul i64 %44, %46
  %48 = call i32 @hipMemcpy(i8* %38, i8* %41, i64 %47, i32 1)
  %49 = load i32, i32* %19, align 8, !tbaa !17
  %50 = load i32, i32* %21, align 4, !tbaa !7
  %51 = mul nsw i32 %50, %49
  %52 = load i32, i32* %18, align 4, !tbaa !52
  %53 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 21
  %54 = load i32, i32* %53, align 4, !tbaa !56
  %55 = mul nsw i32 %54, %52
  %56 = sdiv i32 %51, %55
  %57 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 2
  store i32 %56, i32* %57, align 8, !tbaa !35
  %58 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 14
  %59 = bitcast i32** %58 to i8**
  %60 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 0
  %61 = load i32, i32* %60, align 8, !tbaa !20
  %62 = sext i32 %61 to i64
  %63 = sext i32 %56 to i64
  %64 = shl nsw i64 %63, 2
  %65 = mul i64 %64, %62
  %66 = call i32 @hipHostMalloc(i8** nonnull %59, i64 %65, i32 0)
  %67 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %9, align 8, !tbaa !3
  %68 = call i32 @hipEventRecord(%struct.ihipEvent_t* %67, %struct.ihipStream_t* null)
  %69 = load i32, i32* %25, align 4, !tbaa !53
  %70 = load i32, i32* %26, align 8, !tbaa !54
  %71 = udiv i32 %69, %70
  %72 = load i32, i32* %18, align 4, !tbaa !52
  %73 = load i32, i32* %60, align 8, !tbaa !20
  %74 = mul nsw i32 %73, %72
  %75 = sext i32 %74 to i64
  %76 = zext i32 %71 to i64
  %77 = or i64 %76, 4294967296
  %78 = zext i32 %70 to i64
  %79 = or i64 %78, 4294967296
  %80 = call i32 @__hipPushCallConfiguration(i64 %77, i32 1, i64 %79, i32 1, i64 %75, %struct.ihipStream_t* null)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %1
  %83 = load i32*, i32** %27, align 8, !tbaa !55
  %84 = load i32*, i32** %58, align 8, !tbaa !57
  %85 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85)
  %86 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86)
  %87 = bitcast %struct.dim3* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %87)
  %88 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %88)
  %89 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %89)
  %90 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %90)
  %91 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %91)
  store i32* %83, i32** %2, align 8, !tbaa !3
  store i32* %84, i32** %3, align 8, !tbaa !3
  %92 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %93 = bitcast [2 x i8*]* %8 to i32***
  store i32** %2, i32*** %93, align 16
  %94 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %95 = bitcast i8** %94 to i32***
  store i32** %3, i32*** %95, align 8
  %96 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %4, %struct.dim3* nonnull %5, i64* nonnull %6, i8** nonnull %7)
  %97 = load i64, i64* %6, align 8
  %98 = bitcast i8** %7 to %struct.ihipStream_t**
  %99 = load %struct.ihipStream_t*, %struct.ihipStream_t** %98, align 8
  %100 = bitcast %struct.dim3* %4 to i64*
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.dim3, %struct.dim3* %4, i64 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = bitcast %struct.dim3* %5 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*)** @_Z12histogram256PjS_ to i8*), i64 %101, i32 %103, i64 %105, i32 %107, i8** nonnull %92, i64 %97, %struct.ihipStream_t* %99)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %87)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %88)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %90)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %91)
  br label %109

109:                                              ; preds = %82, %1
  %110 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !3
  %111 = call i32 @hipEventRecord(%struct.ihipEvent_t* %110, %struct.ihipStream_t* null)
  %112 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !3
  %113 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %112)
  %114 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %9, align 8, !tbaa !3
  %115 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !3
  %116 = call i32 @hipEventElapsedTime(float* nonnull %11, %struct.ihipEvent_t* %114, %struct.ihipEvent_t* %115)
  %117 = load float, float* %11, align 4, !tbaa !50
  %118 = fpext float %117 to double
  %119 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), double %118)
  %120 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 7
  %121 = bitcast i32** %120 to i8**
  %122 = load i8*, i8** %121, align 8, !tbaa !36
  %123 = load i8*, i8** %59, align 8, !tbaa !57
  %124 = load i32, i32* %60, align 8, !tbaa !20
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 2
  %127 = load i32, i32* %57, align 8, !tbaa !35
  %128 = sext i32 %127 to i64
  %129 = mul i64 %126, %128
  %130 = call i32 @hipMemcpy(i8* %122, i8* %123, i64 %129, i32 2)
  %131 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 8
  %132 = bitcast i32** %131 to i8**
  %133 = load i8*, i8** %132, align 8, !tbaa !34
  %134 = load i32, i32* %60, align 8, !tbaa !20
  %135 = sext i32 %134 to i64
  %136 = shl nsw i64 %135, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %133, i8 0, i64 %136, i1 false)
  %137 = load i32, i32* %57, align 8, !tbaa !35
  %138 = icmp sgt i32 %137, 0
  %139 = load i32, i32* %60, align 8
  %140 = icmp sgt i32 %139, 0
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %149

142:                                              ; preds = %109, %152
  %143 = phi i32 [ %153, %152 ], [ %137, %109 ]
  %144 = phi i32 [ %154, %152 ], [ %139, %109 ]
  %145 = phi i32 [ %155, %152 ], [ 0, %109 ]
  %146 = load i32*, i32** %120, align 8
  %147 = load i32*, i32** %131, align 8
  %148 = icmp sgt i32 %144, 0
  br i1 %148, label %157, label %152

149:                                              ; preds = %152, %109
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #24
  ret i32 0

150:                                              ; preds = %157
  %151 = load i32, i32* %57, align 8, !tbaa !35
  br label %152

152:                                              ; preds = %150, %142
  %153 = phi i32 [ %151, %150 ], [ %143, %142 ]
  %154 = phi i32 [ %170, %150 ], [ %144, %142 ]
  %155 = add nuw nsw i32 %145, 1
  %156 = icmp slt i32 %155, %153
  br i1 %156, label %142, label %149, !llvm.loop !58

157:                                              ; preds = %142, %157
  %158 = phi i64 [ %169, %157 ], [ 0, %142 ]
  %159 = phi i32 [ %170, %157 ], [ %144, %142 ]
  %160 = mul nsw i32 %159, %145
  %161 = trunc i64 %158 to i32
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %146, i64 %163
  %165 = load i32, i32* %164, align 4, !tbaa !16
  %166 = getelementptr inbounds i32, i32* %147, i64 %158
  %167 = load i32, i32* %166, align 4, !tbaa !16
  %168 = add i32 %167, %165
  store i32 %168, i32* %166, align 4, !tbaa !16
  %169 = add nuw nsw i64 %158, 1
  %170 = load i32, i32* %60, align 8, !tbaa !20
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %157, label %150, !llvm.loop !59
}

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: uwtable
define dso_local i32 @_ZN9Histogram10initializeEv(%class.Histogram* nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 23
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !40
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %96

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #26
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 5)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 18)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !61
  %20 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 4
  %21 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %22 = bitcast i8** %21 to i32**
  store i32* %20, i32** %22, align 8, !tbaa !64
  %23 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %24 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !40
  %25 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %24, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #24
  tail call void @_ZdlPv(i8* nonnull %7) #27
  %26 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #26
  %27 = bitcast i8* %26 to %"struct.appsdk::Option"*
  %28 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %28, align 8, !tbaa !60
  %29 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !60
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !60
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0
  %33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1)
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1
  %35 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i64 6)
  %36 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i64 19)
  %38 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 4
  store i32 0, i32* %38, align 8, !tbaa !61
  %39 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 5
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 5
  %41 = bitcast i8** %40 to i32**
  store i32* %39, i32** %41, align 8, !tbaa !64
  %42 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !40
  %43 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %42, %"struct.appsdk::Option"* nonnull %27)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %27) #24
  tail call void @_ZdlPv(i8* nonnull %26) #27
  %44 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #26
  %45 = bitcast i8* %44 to %"struct.appsdk::Option"*
  %46 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !60
  %47 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 8, !tbaa !60
  %48 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !60
  %49 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 8, !tbaa !60
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 0
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %52 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 1
  %53 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i64 10)
  %54 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 2
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i64 38)
  %56 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 4
  store i32 0, i32* %56, align 8, !tbaa !61
  %57 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 15
  %58 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 5
  %59 = bitcast i8** %58 to i32**
  store i32* %57, i32** %59, align 8, !tbaa !64
  %60 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !40
  %61 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %60, %"struct.appsdk::Option"* nonnull %45)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %45) #24
  tail call void @_ZdlPv(i8* nonnull %44) #27
  %62 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #26
  %63 = bitcast i8* %62 to %"struct.appsdk::Option"*
  %64 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %64, align 8, !tbaa !60
  %65 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %65, align 8, !tbaa !60
  %66 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %66, align 8, !tbaa !60
  %67 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %67, align 8, !tbaa !60
  %68 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 0
  %69 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i64 0)
  %70 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 1
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i64 6)
  %72 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 2
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.25, i64 0, i64 0), i64 87)
  %74 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 4
  store i32 4, i32* %74, align 8, !tbaa !61
  %75 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 16
  %76 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 5
  store i8* %75, i8** %76, align 8, !tbaa !64
  %77 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !40
  %78 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %77, %"struct.appsdk::Option"* nonnull %63)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %63) #24
  tail call void @_ZdlPv(i8* nonnull %62) #27
  %79 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #26
  %80 = bitcast i8* %79 to %"struct.appsdk::Option"*
  %81 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %81, align 8, !tbaa !60
  %82 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %82, align 8, !tbaa !60
  %83 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %83, align 8, !tbaa !60
  %84 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %84, align 8, !tbaa !60
  %85 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 0
  %86 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i64 0)
  %87 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 1
  %88 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i64 6)
  %89 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 2
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.27, i64 0, i64 0), i64 87)
  %91 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 4
  store i32 4, i32* %91, align 8, !tbaa !61
  %92 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 17
  %93 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %80, i64 0, i32 5
  store i8* %92, i8** %93, align 8, !tbaa !64
  %94 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !40
  %95 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %94, %"struct.appsdk::Option"* nonnull %80)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %80) #24
  tail call void @_ZdlPv(i8* nonnull %79) #27
  br label %96

96:                                               ; preds = %1, %6
  %97 = phi i32 [ 0, %6 ], [ 1, %1 ]
  ret i32 %97
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #26
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !60
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !60
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !60
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !60
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !60
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !60
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !60
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !60
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !60
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !60
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !60
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !60
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !60
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !60
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !60
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !60
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !60
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !60
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !60
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !60
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !61
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !64
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !61
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !64
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !61
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !64
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !61
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !64
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.59, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !61
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !64
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !65
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !66
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #15

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, %"struct.appsdk::Option"* %1) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"struct.appsdk::Option"* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !66
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !65
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 48)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = or i64 %16, 8
  %18 = select i1 %15, i64 -1, i64 %17
  %19 = tail call noalias nonnull i8* @_Znam(i64 %18) #26
  %20 = bitcast i8* %19 to i64*
  store i64 %13, i64* %20, align 16
  %21 = getelementptr inbounds i8, i8* %19, i64 8
  %22 = bitcast i8* %21 to %"struct.appsdk::Option"*
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %25, align 8, !tbaa !66
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !60
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !60
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !60
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !60
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !66
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
  %59 = load i32, i32* %10, align 8, !tbaa !65
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !66
  br i1 %61, label %39, label %63, !llvm.loop !67

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
  %83 = load i32, i32* %10, align 8, !tbaa !65
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !65
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %95) #24
  %96 = icmp eq %"struct.appsdk::Option"* %95, %8
  br i1 %96, label %97, label %93

97:                                               ; preds = %93, %85
  tail call void @_ZdaPv(i8* nonnull %87) #27
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
  %7 = load i8*, i8** %6, align 8, !tbaa !23
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #24
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !26

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, i8* %7, i64 -8
  %14 = bitcast i8* %13 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %15, label %17

15:                                               ; preds = %12
  %16 = atomicrmw volatile add i32* %14, i32 -1 acq_rel, align 4
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %14, align 8, !tbaa !16
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %14, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %9, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #24
  br label %24

24:                                               ; preds = %1, %20, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #24
  %25 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !23
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #24
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !26

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, i8* %26, i64 -8
  %33 = bitcast i8* %32 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %34, label %36

34:                                               ; preds = %31
  %35 = atomicrmw volatile add i32* %33, i32 -1 acq_rel, align 4
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %33, align 8, !tbaa !16
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %33, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %28, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #24
  br label %43

43:                                               ; preds = %24, %39, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #24
  %44 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !23
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #24
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !26

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, i8* %45, i64 -8
  %52 = bitcast i8* %51 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %53, label %55

53:                                               ; preds = %50
  %54 = atomicrmw volatile add i32* %52, i32 -1 acq_rel, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %52, align 8, !tbaa !16
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %52, align 8, !tbaa !16
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %62

62:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #24
  %63 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !23
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #24
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !26

69:                                               ; preds = %62
  %70 = getelementptr inbounds i8, i8* %64, i64 -8
  %71 = bitcast i8* %70 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %72, label %74

72:                                               ; preds = %69
  %73 = atomicrmw volatile add i32* %71, i32 -1 acq_rel, align 4
  br label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %71, align 8, !tbaa !16
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %71, align 8, !tbaa !16
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %81

81:                                               ; preds = %62, %77, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #24
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9Histogram5setupEv(%class.Histogram* nocapture nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 15
  %9 = load i32, i32* %8, align 8, !tbaa !68
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i64 0, i64 0))
  tail call void @exit(i32 0) #28
  unreachable

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 4
  %15 = load i32, i32* %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !20
  %18 = sdiv i32 %15, %17
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 %18
  %21 = mul nsw i32 %20, %17
  store i32 %21, i32* %14, align 8, !tbaa !17
  %22 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 5
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 1
  %25 = load i32, i32* %24, align 4, !tbaa !52
  %26 = sdiv i32 %23, %25
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 %26
  %29 = mul nsw i32 %28, %25
  store i32 %29, i32* %22, align 4, !tbaa !7
  %30 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 22
  %31 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %30, align 8, !tbaa !69
  %32 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %31)
  %33 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %30, align 8, !tbaa !69
  %34 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34)
  %35 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %33, i64 0, i32 0, i32 0, i32 0, i32 1
  %36 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %35, align 8, !tbaa !70
  %37 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %33, i64 0, i32 0, i32 0, i32 0, i32 0
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %37, align 8, !tbaa !73
  %39 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %36 to i64
  %40 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %38 to i64
  %41 = sub i64 %39, %40
  %42 = lshr exact i64 %41, 3
  %43 = trunc i64 %42 to i32
  %44 = icmp slt i32 %32, %43
  br i1 %44, label %71, label %45

45:                                               ; preds = %13
  %46 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %46) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %47 unwind label %69

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !23
  %50 = getelementptr inbounds i8, i8* %49, i64 -24
  %51 = bitcast i8* %50 to %"struct.std::basic_string<char>::_Rep"*
  %52 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #24
  %53 = icmp eq i8* %50, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %53, label %66, label %54, !prof !26

54:                                               ; preds = %47
  %55 = getelementptr inbounds i8, i8* %49, i64 -8
  %56 = bitcast i8* %55 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %57, label %59

57:                                               ; preds = %54
  %58 = atomicrmw volatile add i32* %56, i32 -1 acq_rel, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %56, align 8, !tbaa !16
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %56, align 8, !tbaa !16
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %51, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %66

66:                                               ; preds = %65, %62, %47
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %46) #24
  br label %77

67:                                               ; preds = %143, %69
  %68 = phi { i8*, i32 } [ %70, %69 ], [ %144, %143 ]
  resume { i8*, i32 } %68

69:                                               ; preds = %45
  %70 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %46) #24
  br label %67

71:                                               ; preds = %13
  %72 = sext i32 %32 to i64
  %73 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %38, i64 %72
  %74 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %73, align 8, !tbaa !3
  %75 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %74, i64 0, i32 2
  %76 = bitcast i64* %75 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  br label %77

77:                                               ; preds = %66, %71
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34)
  %78 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %30, align 8, !tbaa !69
  %79 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %78, i32 %32)
  %80 = call i32 @_ZN9Histogram8setupHIPEv(%class.Histogram* nonnull align 8 undef)
  %81 = call i32 @_ZN9Histogram14setupHistogramEv(%class.Histogram* nonnull align 8 dereferenceable(144) %0)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %145, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %84) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %85 unwind label %139

85:                                               ; preds = %83
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %86 unwind label %141

86:                                               ; preds = %85
  %87 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8, !tbaa !23
  %89 = getelementptr inbounds i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to %"struct.std::basic_string<char>::_Rep"*
  %91 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %91) #24
  %92 = icmp eq i8* %89, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %92, label %105, label %93, !prof !26

93:                                               ; preds = %86
  %94 = getelementptr inbounds i8, i8* %88, i64 -8
  %95 = bitcast i8* %94 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %96, label %98

96:                                               ; preds = %93
  %97 = atomicrmw volatile add i32* %95, i32 -1 acq_rel, align 4
  br label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %95, align 8, !tbaa !16
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %95, align 8, !tbaa !16
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %90, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %105

105:                                              ; preds = %86, %101, %104
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %91) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %84) #24
  %106 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %107 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23)
  %108 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %109 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 527)
  %110 = bitcast %"class.std::basic_ostream"* %109 to i8**
  %111 = load i8*, i8** %110, align 8, !tbaa !27
  %112 = getelementptr i8, i8* %111, i64 -24
  %113 = bitcast i8* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = bitcast %"class.std::basic_ostream"* %109 to i8*
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  %117 = getelementptr inbounds i8, i8* %116, i64 240
  %118 = bitcast i8* %117 to %"class.std::ctype"**
  %119 = load %"class.std::ctype"*, %"class.std::ctype"** %118, align 8, !tbaa !29
  %120 = icmp eq %"class.std::ctype"* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %105
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

122:                                              ; preds = %105
  %123 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %119, i64 0, i32 8
  %124 = load i8, i8* %123, align 8, !tbaa !31
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %119, i64 0, i32 9, i64 10
  %128 = load i8, i8* %127, align 1, !tbaa !33
  br label %135

129:                                              ; preds = %122
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %119)
  %130 = bitcast %"class.std::ctype"* %119 to i8 (%"class.std::ctype"*, i8)***
  %131 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %130, align 8, !tbaa !27
  %132 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %131, i64 6
  %133 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %132, align 8
  %134 = call signext i8 %133(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %119, i8 signext 10)
  br label %135

135:                                              ; preds = %126, %129
  %136 = phi i8 [ %128, %126 ], [ %134, %129 ]
  %137 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %109, i8 signext %136)
  %138 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %137)
  br label %151

139:                                              ; preds = %83
  %140 = landingpad { i8*, i32 }
          cleanup
  br label %143

141:                                              ; preds = %85
  %142 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #24
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi { i8*, i32 } [ %142, %141 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %84) #24
  br label %67

145:                                              ; preds = %77
  %146 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %30, align 8, !tbaa !69
  %147 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %146, i32 %32)
  %148 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %30, align 8, !tbaa !69
  %149 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %148, i32 %32)
  %150 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 9
  store double %149, double* %150, align 8, !tbaa !74
  br label %151

151:                                              ; preds = %145, %135
  %152 = phi i32 [ 1, %135 ], [ 0, %145 ]
  ret i32 %152
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #17

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #26
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !78
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !70
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !70
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !73
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !73
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
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !73
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 %42, i1 false) #24
  br label %51

51:                                               ; preds = %48, %41
  %52 = ashr exact i64 %42, 3
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %52
  %54 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, i64 1
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !70
  %56 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %55 to i64
  %57 = sub i64 %56, %22
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = bitcast %"struct.appsdk::SDKTimer::Timer"** %54 to i8*
  %61 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %60, i8* align 8 %61, i64 %57, i1 false) #24
  br label %62

62:                                               ; preds = %59, %51
  %63 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %43, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = bitcast %"struct.appsdk::SDKTimer::Timer"** %43 to i8*
  tail call void @_ZdlPv(i8* nonnull %65) #24
  br label %66

66:                                               ; preds = %64, %62
  %67 = ashr exact i64 %57, 3
  %68 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %54, i64 %67
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !73
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !70
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !78
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !73
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !23
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #24
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !26

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, i8* %21, i64 -8
  %28 = bitcast i8* %27 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %29, label %31

29:                                               ; preds = %26
  %30 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %28, align 8, !tbaa !16
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %28, align 8, !tbaa !16
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #24
  br label %56

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #24
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #24
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #24
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !79
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !81
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !73
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #24
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
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !73
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !23
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #24
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !26

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, i8* %21, i64 -8
  %28 = bitcast i8* %27 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %29, label %31

29:                                               ; preds = %26
  %30 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %28, align 8, !tbaa !16
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %28, align 8, !tbaa !16
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #24
  br label %61

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #24
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #24
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #24
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !79
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !81
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !73
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !82
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !82
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !83
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #24
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
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !70
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !73
  %10 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %7 to i64
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !23
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #24
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !26

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, i8* %20, i64 -8
  %27 = bitcast i8* %26 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %28, label %30

28:                                               ; preds = %25
  %29 = atomicrmw volatile add i32* %27, i32 -1 acq_rel, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %27, align 8, !tbaa !16
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %27, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %22, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %37

37:                                               ; preds = %18, %33, %36
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %23) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #24
  br label %51

38:                                               ; preds = %16
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #24
  resume { i8*, i32 } %39

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %9, i64 %41
  %43 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %42, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 2
  %45 = load i64, i64* %44, align 8, !tbaa !83
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !75
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9Histogram3runEv(%class.Histogram* nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 15
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @_ZN9Histogram10runKernelsEv(%class.Histogram* nonnull align 8 dereferenceable(144) %0)
  %13 = load i32, i32* %8, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_ZN9Histogram10runKernelsEv(%class.Histogram* nonnull align 8 dereferenceable(144) %0)
  br label %17

17:                                               ; preds = %11, %15, %1
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i64 21)
  %19 = load i32, i32* %8, align 8, !tbaa !68
  %20 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %19)
  %21 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i64 11)
  %22 = bitcast %"class.std::basic_ostream"* %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !27
  %24 = getelementptr i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %"class.std::basic_ostream"* %20 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  %29 = getelementptr inbounds i8, i8* %28, i64 240
  %30 = bitcast i8* %29 to %"class.std::ctype"**
  %31 = load %"class.std::ctype"*, %"class.std::ctype"** %30, align 8, !tbaa !29
  %32 = icmp eq %"class.std::ctype"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

34:                                               ; preds = %17
  %35 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 8
  %36 = load i8, i8* %35, align 8, !tbaa !31
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 9, i64 10
  %40 = load i8, i8* %39, align 1, !tbaa !33
  br label %47

41:                                               ; preds = %34
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31)
  %42 = bitcast %"class.std::ctype"* %31 to i8 (%"class.std::ctype"*, i8)***
  %43 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %42, align 8, !tbaa !27
  %44 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %43, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %44, align 8
  %46 = tail call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31, i8 signext 10)
  br label %47

47:                                               ; preds = %38, %41
  %48 = phi i8 [ %40, %38 ], [ %46, %41 ]
  %49 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8 signext %48)
  %50 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49)
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i64 43)
  %52 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %53 = getelementptr i8, i8* %52, i64 -24
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 240
  %58 = bitcast i8* %57 to %"class.std::ctype"**
  %59 = load %"class.std::ctype"*, %"class.std::ctype"** %58, align 8, !tbaa !29
  %60 = icmp eq %"class.std::ctype"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

62:                                               ; preds = %47
  %63 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 8
  %64 = load i8, i8* %63, align 8, !tbaa !31
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 9, i64 10
  %68 = load i8, i8* %67, align 1, !tbaa !33
  br label %75

69:                                               ; preds = %62
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59)
  %70 = bitcast %"class.std::ctype"* %59 to i8 (%"class.std::ctype"*, i8)***
  %71 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %70, align 8, !tbaa !27
  %72 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %71, i64 6
  %73 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %72, align 8
  %74 = tail call signext i8 %73(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59, i8 signext 10)
  br label %75

75:                                               ; preds = %66, %69
  %76 = phi i8 [ %68, %66 ], [ %74, %69 ]
  %77 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %76)
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %77)
  %79 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 22
  %80 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !69
  %81 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %80)
  %82 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !69
  %83 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83)
  %84 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 1
  %85 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %84, align 8, !tbaa !70
  %86 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 0
  %87 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %86, align 8, !tbaa !73
  %88 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %85 to i64
  %89 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %87 to i64
  %90 = sub i64 %88, %89
  %91 = lshr exact i64 %90, 3
  %92 = trunc i64 %91 to i32
  %93 = icmp slt i32 %81, %92
  br i1 %93, label %120, label %94

94:                                               ; preds = %75
  %95 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %95) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %96 unwind label %118

96:                                               ; preds = %94
  %97 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !23
  %99 = getelementptr inbounds i8, i8* %98, i64 -24
  %100 = bitcast i8* %99 to %"struct.std::basic_string<char>::_Rep"*
  %101 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %101) #24
  %102 = icmp eq i8* %99, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %102, label %115, label %103, !prof !26

103:                                              ; preds = %96
  %104 = getelementptr inbounds i8, i8* %98, i64 -8
  %105 = bitcast i8* %104 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %106, label %108

106:                                              ; preds = %103
  %107 = atomicrmw volatile add i32* %105, i32 -1 acq_rel, align 4
  br label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %105, align 8, !tbaa !16
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %105, align 8, !tbaa !16
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %100, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %115

115:                                              ; preds = %114, %111, %96
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %101) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #24
  br label %126

116:                                              ; preds = %180, %118
  %117 = phi { i8*, i32 } [ %119, %118 ], [ %181, %180 ]
  resume { i8*, i32 } %117

118:                                              ; preds = %94
  %119 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #24
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
  %127 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !69
  %128 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %127, i32 %81)
  %129 = load i32, i32* %8, align 8, !tbaa !68
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %131
  %132 = phi i32 [ %134, %131 ], [ 0, %126 ]
  %133 = call i32 @_ZN9Histogram10runKernelsEv(%class.Histogram* nonnull align 8 dereferenceable(144) %0)
  %134 = add nuw nsw i32 %132, 1
  %135 = load i32, i32* %8, align 8, !tbaa !68
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %131, label %137, !llvm.loop !84

137:                                              ; preds = %131, %126
  %138 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !69
  %139 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %138, i32 %81)
  %140 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !69
  %141 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %140, i32 %81)
  %142 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 10
  store double %141, double* %142, align 8, !tbaa !85
  %143 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 23
  %144 = bitcast %"class.appsdk::HIPCommandArgs"** %143 to %"class.appsdk::SDKCmdArgsParser"**
  %145 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %144, align 8, !tbaa !40
  %146 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %145, i64 0, i32 9
  %147 = load i8, i8* %146, align 4, !tbaa !41, !range !38
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %182

149:                                              ; preds = %137
  %150 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %150) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %151 unwind label %176

151:                                              ; preds = %149
  %152 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 8
  %153 = load i32*, i32** %152, align 8, !tbaa !34
  %154 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 0
  %155 = load i32, i32* %154, align 8, !tbaa !20
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %6, i32* %153, i32 %155, i32 1)
          to label %156 unwind label %178

156:                                              ; preds = %151
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !23
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to %"struct.std::basic_string<char>::_Rep"*
  %161 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %161) #24
  %162 = icmp eq i8* %159, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %162, label %175, label %163, !prof !26

163:                                              ; preds = %156
  %164 = getelementptr inbounds i8, i8* %158, i64 -8
  %165 = bitcast i8* %164 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %166, label %168

166:                                              ; preds = %163
  %167 = atomicrmw volatile add i32* %165, i32 -1 acq_rel, align 4
  br label %171

168:                                              ; preds = %163
  %169 = load i32, i32* %165, align 8, !tbaa !16
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %165, align 8, !tbaa !16
  br label %171

171:                                              ; preds = %168, %166
  %172 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %160, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %175

175:                                              ; preds = %156, %171, %174
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %161) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %150) #24
  br label %182

176:                                              ; preds = %149
  %177 = landingpad { i8*, i32 }
          cleanup
  br label %180

178:                                              ; preds = %151
  %179 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #24
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi { i8*, i32 } [ %179, %178 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %150) #24
  br label %116

182:                                              ; preds = %175, %137
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* %0, i32* %1, i32 %2, i32 %3) local_unnamed_addr #9 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !23
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !44
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %7, i64 %10)
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
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
  %27 = load i32, i32* %26, align 4, !tbaa !16
  %28 = zext i32 %27 to i64
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !86

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !87

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !87

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN9Histogram13verifyResultsEv(%class.Histogram* nocapture nonnull readonly align 8 dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 23
  %6 = bitcast %"class.appsdk::HIPCommandArgs"** %5 to %"class.appsdk::SDKCmdArgsParser"**
  %7 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %7, i64 0, i32 10
  %9 = load i8, i8* %8, align 1, !tbaa !88, !range !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %149, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 5
  %13 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 4
  %14 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 6
  %15 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 3
  %16 = load i32, i32* %12, align 4, !tbaa !7
  %17 = icmp sgt i32 %16, 0
  %18 = load i32, i32* %13, align 8
  %19 = icmp sgt i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %50

21:                                               ; preds = %11, %30
  %22 = phi i32 [ %31, %30 ], [ %16, %11 ]
  %23 = phi i32 [ %32, %30 ], [ %18, %11 ]
  %24 = phi i32 [ %33, %30 ], [ 0, %11 ]
  %25 = load i32*, i32** %14, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp sgt i32 %23, 0
  br i1 %27, label %35, label %30

28:                                               ; preds = %35
  %29 = load i32, i32* %12, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %29, %28 ], [ %22, %21 ]
  %32 = phi i32 [ %48, %28 ], [ %23, %21 ]
  %33 = add nuw nsw i32 %24, 1
  %34 = icmp slt i32 %33, %31
  br i1 %34, label %21, label %50, !llvm.loop !13

35:                                               ; preds = %21, %35
  %36 = phi i32 [ %48, %35 ], [ %23, %21 ]
  %37 = phi i32 [ %47, %35 ], [ 0, %21 ]
  %38 = mul nsw i32 %36, %24
  %39 = add nsw i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %26, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !16
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %25, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !16
  %46 = add i32 %45, 1
  store i32 %46, i32* %44, align 4, !tbaa !16
  %47 = add nuw nsw i32 %37, 1
  %48 = load i32, i32* %13, align 8, !tbaa !17
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %35, label %28, !llvm.loop !18

50:                                               ; preds = %30, %11
  %51 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %51) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  %52 = load i32*, i32** %14, align 8, !tbaa !22
  %53 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 0
  %54 = load i32, i32* %53, align 8, !tbaa !20
  invoke void @_ZN6appsdk10printArrayIjEEvSsPKT_ii(%"class.std::basic_string"* nonnull %3, i32* %52, i32 %54, i32 1)
          to label %55 unwind label %84

55:                                               ; preds = %50
  %56 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8, !tbaa !23
  %58 = getelementptr inbounds i8, i8* %57, i64 -24
  %59 = bitcast i8* %58 to %"struct.std::basic_string<char>::_Rep"*
  %60 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %60) #24
  %61 = icmp eq i8* %58, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %61, label %74, label %62, !prof !26

62:                                               ; preds = %55
  %63 = getelementptr inbounds i8, i8* %57, i64 -8
  %64 = bitcast i8* %63 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %65, label %67

65:                                               ; preds = %62
  %66 = atomicrmw volatile add i32* %64, i32 -1 acq_rel, align 4
  br label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %64, align 8, !tbaa !16
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %64, align 8, !tbaa !16
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %59, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %74

74:                                               ; preds = %55, %70, %73
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %60) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #24
  %75 = load i32, i32* %53, align 8, !tbaa !20
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 8
  %78 = load i32*, i32** %77, align 8
  %79 = icmp sgt i32 %75, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = zext i32 %75 to i64
  br label %86

82:                                               ; preds = %86
  %83 = icmp eq i64 %93, %81
  br i1 %83, label %94, label %86, !llvm.loop !89

84:                                               ; preds = %50
  %85 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #24
  resume { i8*, i32 } %85

86:                                               ; preds = %80, %82
  %87 = phi i64 [ 0, %80 ], [ %93, %82 ]
  %88 = getelementptr inbounds i32, i32* %76, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !16
  %90 = getelementptr inbounds i32, i32* %78, i64 %87
  %91 = load i32, i32* %90, align 4, !tbaa !16
  %92 = icmp eq i32 %89, %91
  %93 = add nuw nsw i64 %87, 1
  br i1 %92, label %82, label %119

94:                                               ; preds = %82, %74
  %95 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i64 8)
  %96 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %97 = getelementptr i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %99
  %101 = getelementptr inbounds i8, i8* %100, i64 240
  %102 = bitcast i8* %101 to %"class.std::ctype"**
  %103 = load %"class.std::ctype"*, %"class.std::ctype"** %102, align 8, !tbaa !29
  %104 = icmp eq %"class.std::ctype"* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

106:                                              ; preds = %94
  %107 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %103, i64 0, i32 8
  %108 = load i8, i8* %107, align 8, !tbaa !31
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %103, i64 0, i32 9, i64 10
  %112 = load i8, i8* %111, align 1, !tbaa !33
  br label %144

113:                                              ; preds = %106
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %103)
  %114 = bitcast %"class.std::ctype"* %103 to i8 (%"class.std::ctype"*, i8)***
  %115 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %114, align 8, !tbaa !27
  %116 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %115, i64 6
  %117 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %116, align 8
  %118 = call signext i8 %117(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %103, i8 signext 10)
  br label %144

119:                                              ; preds = %86
  %120 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i64 7)
  %121 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %122 = getelementptr i8, i8* %121, i64 -24
  %123 = bitcast i8* %122 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %124
  %126 = getelementptr inbounds i8, i8* %125, i64 240
  %127 = bitcast i8* %126 to %"class.std::ctype"**
  %128 = load %"class.std::ctype"*, %"class.std::ctype"** %127, align 8, !tbaa !29
  %129 = icmp eq %"class.std::ctype"* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

131:                                              ; preds = %119
  %132 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %128, i64 0, i32 8
  %133 = load i8, i8* %132, align 8, !tbaa !31
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %128, i64 0, i32 9, i64 10
  %137 = load i8, i8* %136, align 1, !tbaa !33
  br label %144

138:                                              ; preds = %131
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %128)
  %139 = bitcast %"class.std::ctype"* %128 to i8 (%"class.std::ctype"*, i8)***
  %140 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %139, align 8, !tbaa !27
  %141 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %140, i64 6
  %142 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %141, align 8
  %143 = call signext i8 %142(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %128, i8 signext 10)
  br label %144

144:                                              ; preds = %138, %135, %113, %110
  %145 = phi i8 [ %112, %110 ], [ %118, %113 ], [ %137, %135 ], [ %143, %138 ]
  %146 = phi i32 [ 0, %110 ], [ 0, %113 ], [ 1, %135 ], [ 1, %138 ]
  %147 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %145)
  %148 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %147)
  br label %149

149:                                              ; preds = %144, %1
  %150 = phi i32 [ 0, %1 ], [ %146, %144 ]
  ret i32 %150
}

; Function Attrs: uwtable
define dso_local void @_ZN9Histogram10printStatsEv(%class.Histogram* nocapture nonnull readonly align 8 dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %19 = alloca [5 x %"class.std::basic_string"], align 16
  %20 = alloca %"class.std::allocator.0", align 1
  %21 = alloca %"class.std::allocator.0", align 1
  %22 = alloca %"class.std::allocator.0", align 1
  %23 = alloca %"class.std::allocator.0", align 1
  %24 = alloca %"class.std::allocator.0", align 1
  %25 = alloca [5 x %"class.std::basic_string"], align 16
  %26 = alloca %"class.std::basic_string", align 8
  %27 = alloca %"class.std::basic_string", align 8
  %28 = alloca %"class.std::basic_string", align 8
  %29 = alloca %"class.std::basic_string", align 8
  %30 = alloca %"class.std::basic_string", align 8
  %31 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 23
  %32 = bitcast %"class.appsdk::HIPCommandArgs"** %31 to %"class.appsdk::SDKCmdArgsParser"**
  %33 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %32, align 8, !tbaa !40
  %34 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %33, i64 0, i32 11
  %35 = load i8, i8* %34, align 2, !tbaa !90, !range !38
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %1208, label %37

37:                                               ; preds = %1
  %38 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 10
  %39 = load double, double* %38, align 8, !tbaa !85
  %40 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 15
  %41 = load i32, i32* %40, align 8, !tbaa !68
  %42 = sitofp i32 %41 to double
  %43 = fdiv contract double %39, %42
  %44 = bitcast [5 x %"class.std::basic_string"]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %44) #24
  %45 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 0
  %46 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %46) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20)
  %47 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 1
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %49 unwind label %1131

49:                                               ; preds = %37
  %50 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 2
  %51 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %22, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %51) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %22)
          to label %52 unwind label %1133

52:                                               ; preds = %49
  %53 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 3
  %54 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %23, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %54) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %23)
          to label %55 unwind label %1135

55:                                               ; preds = %52
  %56 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 4
  %57 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %24, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %57) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %24)
          to label %58 unwind label %1137

58:                                               ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %57) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %54) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %46) #24
  %59 = bitcast [5 x %"class.std::basic_string"]* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %59) #24
  %60 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 0
  %61 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %61, align 16, !tbaa !60
  %62 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %62, align 8, !tbaa !60
  %63 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %63, align 16, !tbaa !60
  %64 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %64, align 8, !tbaa !60
  %65 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 4, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %65, align 16, !tbaa !60
  %66 = bitcast %"class.std::basic_string"* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #24
  %67 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 4
  %68 = load i32, i32* %67, align 8, !tbaa !17
  %69 = bitcast %"class.std::basic_ostringstream"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %69) #24, !noalias !91
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %18, i32 16)
          to label %70 unwind label %1152

70:                                               ; preds = %58
  %71 = bitcast %"class.std::basic_ostringstream"* %18 to i8**
  %72 = load i8*, i8** %71, align 8, !tbaa !27, !noalias !91
  %73 = getelementptr i8, i8* %72, i64 -24
  %74 = bitcast i8* %73 to i64*
  %75 = load i64, i64* %74, align 8, !noalias !91
  %76 = getelementptr inbounds i8, i8* %69, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 24
  %78 = bitcast i8* %77 to i32*
  %79 = load i32, i32* %78, align 8, !tbaa !94, !noalias !91
  %80 = and i32 %79, -75
  %81 = or i32 %80, 2
  store i32 %81, i32* %78, align 8, !tbaa !100, !noalias !91
  %82 = bitcast %"class.std::basic_ostringstream"* %18 to %"class.std::basic_ostream"*
  %83 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %82, i32 %68)
          to label %84 unwind label %114, !noalias !91

84:                                               ; preds = %70
  %85 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %26, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %85)
          to label %86 unwind label %114

86:                                               ; preds = %84
  %87 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %88 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 0, i32 0
  store i32 (...)** %87, i32 (...)*** %88, align 8, !tbaa !27, !noalias !91
  %89 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %90 = getelementptr i32 (...)*, i32 (...)** %87, i64 -3
  %91 = bitcast i32 (...)** %90 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* %69, i64 %92
  %94 = bitcast i8* %93 to i32 (...)***
  store i32 (...)** %89, i32 (...)*** %94, align 8, !tbaa !27, !noalias !91
  %95 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %95, align 8, !tbaa !27, !noalias !91
  %96 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1, i32 2, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8, !tbaa !23, !noalias !91
  %98 = getelementptr inbounds i8, i8* %97, i64 -24
  %99 = bitcast i8* %98 to %"struct.std::basic_string<char>::_Rep"*
  %100 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %100) #24, !noalias !91
  %101 = icmp eq i8* %98, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %101, label %116, label %102, !prof !26

102:                                              ; preds = %86
  %103 = getelementptr inbounds i8, i8* %97, i64 -8
  %104 = bitcast i8* %103 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %105, label %107

105:                                              ; preds = %102
  %106 = atomicrmw volatile add i32* %104, i32 -1 acq_rel, align 4
  br label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %104, align 8, !tbaa !16
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %104, align 8, !tbaa !16
  br label %110

110:                                              ; preds = %107, %105
  %111 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %99, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17) #24
  br label %116

114:                                              ; preds = %84, %70
  %115 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %18) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %69) #24, !noalias !91
  br label %1156

116:                                              ; preds = %113, %110, %86
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %100) #24, !noalias !91
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %95, align 8, !tbaa !27, !noalias !91
  %117 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %117) #24
  %118 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %18, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %118) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %69) #24, !noalias !91
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %60, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %26)
          to label %119 unwind label %1154

119:                                              ; preds = %116
  %120 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %26, i64 0, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8, !tbaa !23
  %122 = getelementptr inbounds i8, i8* %121, i64 -24
  %123 = bitcast i8* %122 to %"struct.std::basic_string<char>::_Rep"*
  %124 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %16, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %124) #24
  %125 = icmp eq i8* %122, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %125, label %138, label %126, !prof !26

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, i8* %121, i64 -8
  %128 = bitcast i8* %127 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %129, label %131

129:                                              ; preds = %126
  %130 = atomicrmw volatile add i32* %128, i32 -1 acq_rel, align 4
  br label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %128, align 8, !tbaa !16
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %128, align 8, !tbaa !16
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %123, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %16) #24
  br label %138

138:                                              ; preds = %119, %134, %137
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %124) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #24
  %139 = bitcast %"class.std::basic_string"* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %139) #24
  %140 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 5
  %141 = load i32, i32* %140, align 4, !tbaa !7
  %142 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %142) #24, !noalias !101
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %143 unwind label %1158

143:                                              ; preds = %138
  %144 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %145 = load i8*, i8** %144, align 8, !tbaa !27, !noalias !101
  %146 = getelementptr i8, i8* %145, i64 -24
  %147 = bitcast i8* %146 to i64*
  %148 = load i64, i64* %147, align 8, !noalias !101
  %149 = getelementptr inbounds i8, i8* %142, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 24
  %151 = bitcast i8* %150 to i32*
  %152 = load i32, i32* %151, align 8, !tbaa !94, !noalias !101
  %153 = and i32 %152, -75
  %154 = or i32 %153, 2
  store i32 %154, i32* %151, align 8, !tbaa !100, !noalias !101
  %155 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %156 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %155, i32 %141)
          to label %157 unwind label %183, !noalias !101

157:                                              ; preds = %143
  %158 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %27, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %158)
          to label %159 unwind label %183

159:                                              ; preds = %157
  %160 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %87, i32 (...)*** %160, align 8, !tbaa !27, !noalias !101
  %161 = load i64, i64* %91, align 8
  %162 = getelementptr inbounds i8, i8* %142, i64 %161
  %163 = bitcast i8* %162 to i32 (...)***
  store i32 (...)** %89, i32 (...)*** %163, align 8, !tbaa !27, !noalias !101
  %164 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %164, align 8, !tbaa !27, !noalias !101
  %165 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8, !tbaa !23, !noalias !101
  %167 = getelementptr inbounds i8, i8* %166, i64 -24
  %168 = bitcast i8* %167 to %"struct.std::basic_string<char>::_Rep"*
  %169 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %169) #24, !noalias !101
  %170 = icmp eq i8* %167, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %170, label %185, label %171, !prof !26

171:                                              ; preds = %159
  %172 = getelementptr inbounds i8, i8* %166, i64 -8
  %173 = bitcast i8* %172 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %174, label %176

174:                                              ; preds = %171
  %175 = atomicrmw volatile add i32* %173, i32 -1 acq_rel, align 4
  br label %179

176:                                              ; preds = %171
  %177 = load i32, i32* %173, align 8, !tbaa !16
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %173, align 8, !tbaa !16
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %168, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14) #24
  br label %185

183:                                              ; preds = %157, %143
  %184 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %142) #24, !noalias !101
  br label %1162

185:                                              ; preds = %182, %179, %159
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %169) #24, !noalias !101
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %164, align 8, !tbaa !27, !noalias !101
  %186 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %186) #24
  %187 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %187) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %142) #24, !noalias !101
  %188 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %188, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %27)
          to label %189 unwind label %1160

189:                                              ; preds = %185
  %190 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %27, i64 0, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8, !tbaa !23
  %192 = getelementptr inbounds i8, i8* %191, i64 -24
  %193 = bitcast i8* %192 to %"struct.std::basic_string<char>::_Rep"*
  %194 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %194) #24
  %195 = icmp eq i8* %192, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %195, label %208, label %196, !prof !26

196:                                              ; preds = %189
  %197 = getelementptr inbounds i8, i8* %191, i64 -8
  %198 = bitcast i8* %197 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %199, label %201

199:                                              ; preds = %196
  %200 = atomicrmw volatile add i32* %198, i32 -1 acq_rel, align 4
  br label %204

201:                                              ; preds = %196
  %202 = load i32, i32* %198, align 8, !tbaa !16
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %198, align 8, !tbaa !16
  br label %204

204:                                              ; preds = %201, %199
  %205 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %193, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #24
  br label %208

208:                                              ; preds = %189, %204, %207
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %194) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %139) #24
  %209 = bitcast %"class.std::basic_string"* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %209) #24
  %210 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 9
  %211 = load double, double* %210, align 8, !tbaa !74
  %212 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %212) #24, !noalias !104
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %213 unwind label %1164

213:                                              ; preds = %208
  %214 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %215 = load i8*, i8** %214, align 8, !tbaa !27, !noalias !104
  %216 = getelementptr i8, i8* %215, i64 -24
  %217 = bitcast i8* %216 to i64*
  %218 = load i64, i64* %217, align 8, !noalias !104
  %219 = getelementptr inbounds i8, i8* %212, i64 %218
  %220 = getelementptr inbounds i8, i8* %219, i64 24
  %221 = bitcast i8* %220 to i32*
  %222 = load i32, i32* %221, align 8, !tbaa !94, !noalias !104
  %223 = and i32 %222, -75
  %224 = or i32 %223, 2
  store i32 %224, i32* %221, align 8, !tbaa !100, !noalias !104
  %225 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %226 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %225, double %211)
          to label %227 unwind label %253, !noalias !104

227:                                              ; preds = %213
  %228 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %28, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %228)
          to label %229 unwind label %253

229:                                              ; preds = %227
  %230 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %87, i32 (...)*** %230, align 8, !tbaa !27, !noalias !104
  %231 = load i64, i64* %91, align 8
  %232 = getelementptr inbounds i8, i8* %212, i64 %231
  %233 = bitcast i8* %232 to i32 (...)***
  store i32 (...)** %89, i32 (...)*** %233, align 8, !tbaa !27, !noalias !104
  %234 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %234, align 8, !tbaa !27, !noalias !104
  %235 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8, !tbaa !23, !noalias !104
  %237 = getelementptr inbounds i8, i8* %236, i64 -24
  %238 = bitcast i8* %237 to %"struct.std::basic_string<char>::_Rep"*
  %239 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %239) #24, !noalias !104
  %240 = icmp eq i8* %237, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %240, label %255, label %241, !prof !26

241:                                              ; preds = %229
  %242 = getelementptr inbounds i8, i8* %236, i64 -8
  %243 = bitcast i8* %242 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %244, label %246

244:                                              ; preds = %241
  %245 = atomicrmw volatile add i32* %243, i32 -1 acq_rel, align 4
  br label %249

246:                                              ; preds = %241
  %247 = load i32, i32* %243, align 8, !tbaa !16
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %243, align 8, !tbaa !16
  br label %249

249:                                              ; preds = %246, %244
  %250 = phi i32 [ %245, %244 ], [ %247, %246 ]
  %251 = icmp slt i32 %250, 1
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %238, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #24
  br label %255

253:                                              ; preds = %227, %213
  %254 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %212) #24, !noalias !104
  br label %1168

255:                                              ; preds = %252, %249, %229
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %239) #24, !noalias !104
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %234, align 8, !tbaa !27, !noalias !104
  %256 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %256) #24
  %257 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %257) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %212) #24, !noalias !104
  %258 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %258, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %28)
          to label %259 unwind label %1166

259:                                              ; preds = %255
  %260 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %28, i64 0, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8, !tbaa !23
  %262 = getelementptr inbounds i8, i8* %261, i64 -24
  %263 = bitcast i8* %262 to %"struct.std::basic_string<char>::_Rep"*
  %264 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %264) #24
  %265 = icmp eq i8* %262, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %265, label %278, label %266, !prof !26

266:                                              ; preds = %259
  %267 = getelementptr inbounds i8, i8* %261, i64 -8
  %268 = bitcast i8* %267 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %269, label %271

269:                                              ; preds = %266
  %270 = atomicrmw volatile add i32* %268, i32 -1 acq_rel, align 4
  br label %274

271:                                              ; preds = %266
  %272 = load i32, i32* %268, align 8, !tbaa !16
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %268, align 8, !tbaa !16
  br label %274

274:                                              ; preds = %271, %269
  %275 = phi i32 [ %270, %269 ], [ %272, %271 ]
  %276 = icmp slt i32 %275, 1
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %263, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #24
  br label %278

278:                                              ; preds = %259, %274, %277
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %264) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %209) #24
  %279 = bitcast %"class.std::basic_string"* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %279) #24
  %280 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %280) #24, !noalias !107
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %281 unwind label %1170

281:                                              ; preds = %278
  %282 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %283 = load i8*, i8** %282, align 8, !tbaa !27, !noalias !107
  %284 = getelementptr i8, i8* %283, i64 -24
  %285 = bitcast i8* %284 to i64*
  %286 = load i64, i64* %285, align 8, !noalias !107
  %287 = getelementptr inbounds i8, i8* %280, i64 %286
  %288 = getelementptr inbounds i8, i8* %287, i64 24
  %289 = bitcast i8* %288 to i32*
  %290 = load i32, i32* %289, align 8, !tbaa !94, !noalias !107
  %291 = and i32 %290, -75
  %292 = or i32 %291, 2
  store i32 %292, i32* %289, align 8, !tbaa !100, !noalias !107
  %293 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %294 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %293, double %43)
          to label %295 unwind label %321, !noalias !107

295:                                              ; preds = %281
  %296 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %29, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %296)
          to label %297 unwind label %321

297:                                              ; preds = %295
  %298 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %87, i32 (...)*** %298, align 8, !tbaa !27, !noalias !107
  %299 = load i64, i64* %91, align 8
  %300 = getelementptr inbounds i8, i8* %280, i64 %299
  %301 = bitcast i8* %300 to i32 (...)***
  store i32 (...)** %89, i32 (...)*** %301, align 8, !tbaa !27, !noalias !107
  %302 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %302, align 8, !tbaa !27, !noalias !107
  %303 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8, !tbaa !23, !noalias !107
  %305 = getelementptr inbounds i8, i8* %304, i64 -24
  %306 = bitcast i8* %305 to %"struct.std::basic_string<char>::_Rep"*
  %307 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %307) #24, !noalias !107
  %308 = icmp eq i8* %305, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %308, label %323, label %309, !prof !26

309:                                              ; preds = %297
  %310 = getelementptr inbounds i8, i8* %304, i64 -8
  %311 = bitcast i8* %310 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %312, label %314

312:                                              ; preds = %309
  %313 = atomicrmw volatile add i32* %311, i32 -1 acq_rel, align 4
  br label %317

314:                                              ; preds = %309
  %315 = load i32, i32* %311, align 8, !tbaa !16
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %311, align 8, !tbaa !16
  br label %317

317:                                              ; preds = %314, %312
  %318 = phi i32 [ %313, %312 ], [ %315, %314 ]
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %306, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #24
  br label %323

321:                                              ; preds = %295, %281
  %322 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %280) #24, !noalias !107
  br label %1174

323:                                              ; preds = %320, %317, %297
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %307) #24, !noalias !107
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %302, align 8, !tbaa !27, !noalias !107
  %324 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %324) #24
  %325 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %325) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %280) #24, !noalias !107
  %326 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %326, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29)
          to label %327 unwind label %1172

327:                                              ; preds = %323
  %328 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %29, i64 0, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8, !tbaa !23
  %330 = getelementptr inbounds i8, i8* %329, i64 -24
  %331 = bitcast i8* %330 to %"struct.std::basic_string<char>::_Rep"*
  %332 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %332) #24
  %333 = icmp eq i8* %330, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %333, label %346, label %334, !prof !26

334:                                              ; preds = %327
  %335 = getelementptr inbounds i8, i8* %329, i64 -8
  %336 = bitcast i8* %335 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %337, label %339

337:                                              ; preds = %334
  %338 = atomicrmw volatile add i32* %336, i32 -1 acq_rel, align 4
  br label %342

339:                                              ; preds = %334
  %340 = load i32, i32* %336, align 8, !tbaa !16
  %341 = add nsw i32 %340, -1
  store i32 %341, i32* %336, align 8, !tbaa !16
  br label %342

342:                                              ; preds = %339, %337
  %343 = phi i32 [ %338, %337 ], [ %340, %339 ]
  %344 = icmp slt i32 %343, 1
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %331, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #24
  br label %346

346:                                              ; preds = %327, %342, %345
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %332) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %279) #24
  %347 = bitcast %"class.std::basic_string"* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %347) #24
  %348 = load i32, i32* %67, align 8, !tbaa !17
  %349 = load i32, i32* %140, align 4, !tbaa !7
  %350 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %350) #24, !noalias !110
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %351 unwind label %1176

351:                                              ; preds = %346
  %352 = mul nsw i32 %349, %348
  %353 = sitofp i32 %352 to double
  %354 = fdiv contract double %353, %43
  %355 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %356 = load i8*, i8** %355, align 8, !tbaa !27, !noalias !110
  %357 = getelementptr i8, i8* %356, i64 -24
  %358 = bitcast i8* %357 to i64*
  %359 = load i64, i64* %358, align 8, !noalias !110
  %360 = getelementptr inbounds i8, i8* %350, i64 %359
  %361 = getelementptr inbounds i8, i8* %360, i64 24
  %362 = bitcast i8* %361 to i32*
  %363 = load i32, i32* %362, align 8, !tbaa !94, !noalias !110
  %364 = and i32 %363, -75
  %365 = or i32 %364, 2
  store i32 %365, i32* %362, align 8, !tbaa !100, !noalias !110
  %366 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %367 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %366, double %354)
          to label %368 unwind label %394, !noalias !110

368:                                              ; preds = %351
  %369 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %30, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %369)
          to label %370 unwind label %394

370:                                              ; preds = %368
  %371 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %87, i32 (...)*** %371, align 8, !tbaa !27, !noalias !110
  %372 = load i64, i64* %91, align 8
  %373 = getelementptr inbounds i8, i8* %350, i64 %372
  %374 = bitcast i8* %373 to i32 (...)***
  store i32 (...)** %89, i32 (...)*** %374, align 8, !tbaa !27, !noalias !110
  %375 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %375, align 8, !tbaa !27, !noalias !110
  %376 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %377 = load i8*, i8** %376, align 8, !tbaa !23, !noalias !110
  %378 = getelementptr inbounds i8, i8* %377, i64 -24
  %379 = bitcast i8* %378 to %"struct.std::basic_string<char>::_Rep"*
  %380 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %380) #24, !noalias !110
  %381 = icmp eq i8* %378, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %381, label %396, label %382, !prof !26

382:                                              ; preds = %370
  %383 = getelementptr inbounds i8, i8* %377, i64 -8
  %384 = bitcast i8* %383 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %385, label %387

385:                                              ; preds = %382
  %386 = atomicrmw volatile add i32* %384, i32 -1 acq_rel, align 4
  br label %390

387:                                              ; preds = %382
  %388 = load i32, i32* %384, align 8, !tbaa !16
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* %384, align 8, !tbaa !16
  br label %390

390:                                              ; preds = %387, %385
  %391 = phi i32 [ %386, %385 ], [ %388, %387 ]
  %392 = icmp slt i32 %391, 1
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %379, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #24
  br label %396

394:                                              ; preds = %368, %351
  %395 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %350) #24, !noalias !110
  br label %1180

396:                                              ; preds = %393, %390, %370
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %380) #24, !noalias !110
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %375, align 8, !tbaa !27, !noalias !110
  %397 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %397) #24
  %398 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %398) #24
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %350) #24, !noalias !110
  %399 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 4
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %399, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %30)
          to label %400 unwind label %1178

400:                                              ; preds = %396
  %401 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %30, i64 0, i32 0, i32 0
  %402 = load i8*, i8** %401, align 8, !tbaa !23
  %403 = getelementptr inbounds i8, i8* %402, i64 -24
  %404 = bitcast i8* %403 to %"struct.std::basic_string<char>::_Rep"*
  %405 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %405) #24
  %406 = icmp eq i8* %403, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %406, label %419, label %407, !prof !26

407:                                              ; preds = %400
  %408 = getelementptr inbounds i8, i8* %402, i64 -8
  %409 = bitcast i8* %408 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %410, label %412

410:                                              ; preds = %407
  %411 = atomicrmw volatile add i32* %409, i32 -1 acq_rel, align 4
  br label %415

412:                                              ; preds = %407
  %413 = load i32, i32* %409, align 8, !tbaa !16
  %414 = add nsw i32 %413, -1
  store i32 %414, i32* %409, align 8, !tbaa !16
  br label %415

415:                                              ; preds = %412, %410
  %416 = phi i32 [ %411, %410 ], [ %413, %412 ]
  %417 = icmp slt i32 %416, 1
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %404, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #24
  br label %419

419:                                              ; preds = %400, %415, %418
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %405) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %347) #24
  %420 = invoke noalias nonnull dereferenceable(20) i8* @_Znam(i64 20) #26
          to label %421 unwind label %1192

421:                                              ; preds = %419
  %422 = bitcast i8* %420 to i32*
  %423 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %424 = getelementptr i8, i8* %423, i64 -24
  %425 = bitcast i8* %424 to i64*
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %426
  %428 = getelementptr inbounds i8, i8* %427, i64 240
  %429 = bitcast i8* %428 to %"class.std::ctype"**
  %430 = load %"class.std::ctype"*, %"class.std::ctype"** %429, align 8, !tbaa !29
  %431 = icmp eq %"class.std::ctype"* %430, null
  br i1 %431, label %432, label %434

432:                                              ; preds = %421
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %433 unwind label %1192

433:                                              ; preds = %432
  unreachable

434:                                              ; preds = %421
  %435 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %430, i64 0, i32 8
  %436 = load i8, i8* %435, align 8, !tbaa !31
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %430, i64 0, i32 9, i64 10
  %440 = load i8, i8* %439, align 1, !tbaa !33
  br label %448

441:                                              ; preds = %434
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %430)
          to label %442 unwind label %1192

442:                                              ; preds = %441
  %443 = bitcast %"class.std::ctype"* %430 to i8 (%"class.std::ctype"*, i8)***
  %444 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %443, align 8, !tbaa !27
  %445 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %444, i64 6
  %446 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %445, align 8
  %447 = invoke signext i8 %446(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %430, i8 signext 10)
          to label %448 unwind label %1192

448:                                              ; preds = %442, %438
  %449 = phi i8 [ %440, %438 ], [ %447, %442 ]
  %450 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %449)
          to label %451 unwind label %1192

451:                                              ; preds = %448
  %452 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %450)
          to label %453 unwind label %1192

453:                                              ; preds = %451
  %454 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %452, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %455 unwind label %1192

455:                                              ; preds = %453
  %456 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 0, i32 0, i32 0
  %457 = load i8*, i8** %456, align 16, !tbaa !23
  %458 = getelementptr inbounds i8, i8* %457, i64 -24
  %459 = bitcast i8* %458 to i64*
  %460 = load i64, i64* %459, align 8, !tbaa !44
  %461 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 0, i32 0, i32 0
  %462 = load i8*, i8** %461, align 16, !tbaa !23
  %463 = getelementptr inbounds i8, i8* %462, i64 -24
  %464 = bitcast i8* %463 to i64*
  %465 = load i64, i64* %464, align 8, !tbaa !44
  %466 = icmp ugt i64 %460, %465
  %467 = select i1 %466, i64 %460, i64 %465
  %468 = trunc i64 %467 to i32
  store i32 %468, i32* %422, align 4, !tbaa !16
  %469 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %470 unwind label %1192

470:                                              ; preds = %455
  %471 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %472 = getelementptr i8, i8* %471, i64 -24
  %473 = bitcast i8* %472 to i64*
  %474 = load i64, i64* %473, align 8
  %475 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %474
  %476 = shl i64 %467, 32
  %477 = add i64 %476, 4294967296
  %478 = ashr exact i64 %477, 32
  %479 = getelementptr inbounds i8, i8* %475, i64 16
  %480 = bitcast i8* %479 to i64*
  store i64 %478, i64* %480, align 8, !tbaa !113
  %481 = load i64, i64* %473, align 8
  %482 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %481
  %483 = getelementptr inbounds i8, i8* %482, i64 24
  %484 = bitcast i8* %483 to i32*
  %485 = load i32, i32* %484, align 8, !tbaa !94
  %486 = and i32 %485, -177
  %487 = or i32 %486, 32
  store i32 %487, i32* %484, align 8, !tbaa !100
  %488 = load i8*, i8** %456, align 16, !tbaa !23
  %489 = getelementptr inbounds i8, i8* %488, i64 -24
  %490 = bitcast i8* %489 to i64*
  %491 = load i64, i64* %490, align 8, !tbaa !44
  %492 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %488, i64 %491)
          to label %493 unwind label %1192

493:                                              ; preds = %470
  %494 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %492, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %495 unwind label %1192

495:                                              ; preds = %493
  %496 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 1, i32 0, i32 0
  %497 = load i8*, i8** %496, align 8, !tbaa !23
  %498 = getelementptr inbounds i8, i8* %497, i64 -24
  %499 = bitcast i8* %498 to i64*
  %500 = load i64, i64* %499, align 8, !tbaa !44
  %501 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 1, i32 0, i32 0
  %502 = load i8*, i8** %501, align 8, !tbaa !23
  %503 = getelementptr inbounds i8, i8* %502, i64 -24
  %504 = bitcast i8* %503 to i64*
  %505 = load i64, i64* %504, align 8, !tbaa !44
  %506 = icmp ugt i64 %500, %505
  %507 = select i1 %506, i64 %500, i64 %505
  %508 = trunc i64 %507 to i32
  %509 = getelementptr inbounds i32, i32* %422, i64 1
  store i32 %508, i32* %509, align 4, !tbaa !16
  %510 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %511 unwind label %1192

511:                                              ; preds = %495
  %512 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %513 = getelementptr i8, i8* %512, i64 -24
  %514 = bitcast i8* %513 to i64*
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %515
  %517 = shl i64 %507, 32
  %518 = add i64 %517, 4294967296
  %519 = ashr exact i64 %518, 32
  %520 = getelementptr inbounds i8, i8* %516, i64 16
  %521 = bitcast i8* %520 to i64*
  store i64 %519, i64* %521, align 8, !tbaa !113
  %522 = load i64, i64* %514, align 8
  %523 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %522
  %524 = getelementptr inbounds i8, i8* %523, i64 24
  %525 = bitcast i8* %524 to i32*
  %526 = load i32, i32* %525, align 8, !tbaa !94
  %527 = and i32 %526, -177
  %528 = or i32 %527, 32
  store i32 %528, i32* %525, align 8, !tbaa !100
  %529 = load i8*, i8** %496, align 8, !tbaa !23
  %530 = getelementptr inbounds i8, i8* %529, i64 -24
  %531 = bitcast i8* %530 to i64*
  %532 = load i64, i64* %531, align 8, !tbaa !44
  %533 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %529, i64 %532)
          to label %534 unwind label %1192

534:                                              ; preds = %511
  %535 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %533, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %536 unwind label %1192

536:                                              ; preds = %534
  %537 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 2, i32 0, i32 0
  %538 = load i8*, i8** %537, align 16, !tbaa !23
  %539 = getelementptr inbounds i8, i8* %538, i64 -24
  %540 = bitcast i8* %539 to i64*
  %541 = load i64, i64* %540, align 8, !tbaa !44
  %542 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 2, i32 0, i32 0
  %543 = load i8*, i8** %542, align 16, !tbaa !23
  %544 = getelementptr inbounds i8, i8* %543, i64 -24
  %545 = bitcast i8* %544 to i64*
  %546 = load i64, i64* %545, align 8, !tbaa !44
  %547 = icmp ugt i64 %541, %546
  %548 = select i1 %547, i64 %541, i64 %546
  %549 = trunc i64 %548 to i32
  %550 = getelementptr inbounds i32, i32* %422, i64 2
  store i32 %549, i32* %550, align 4, !tbaa !16
  %551 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %552 unwind label %1192

552:                                              ; preds = %536
  %553 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %554 = getelementptr i8, i8* %553, i64 -24
  %555 = bitcast i8* %554 to i64*
  %556 = load i64, i64* %555, align 8
  %557 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %556
  %558 = shl i64 %548, 32
  %559 = add i64 %558, 4294967296
  %560 = ashr exact i64 %559, 32
  %561 = getelementptr inbounds i8, i8* %557, i64 16
  %562 = bitcast i8* %561 to i64*
  store i64 %560, i64* %562, align 8, !tbaa !113
  %563 = load i64, i64* %555, align 8
  %564 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %563
  %565 = getelementptr inbounds i8, i8* %564, i64 24
  %566 = bitcast i8* %565 to i32*
  %567 = load i32, i32* %566, align 8, !tbaa !94
  %568 = and i32 %567, -177
  %569 = or i32 %568, 32
  store i32 %569, i32* %566, align 8, !tbaa !100
  %570 = load i8*, i8** %537, align 16, !tbaa !23
  %571 = getelementptr inbounds i8, i8* %570, i64 -24
  %572 = bitcast i8* %571 to i64*
  %573 = load i64, i64* %572, align 8, !tbaa !44
  %574 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %570, i64 %573)
          to label %575 unwind label %1192

575:                                              ; preds = %552
  %576 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %574, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %577 unwind label %1192

577:                                              ; preds = %575
  %578 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 3, i32 0, i32 0
  %579 = load i8*, i8** %578, align 8, !tbaa !23
  %580 = getelementptr inbounds i8, i8* %579, i64 -24
  %581 = bitcast i8* %580 to i64*
  %582 = load i64, i64* %581, align 8, !tbaa !44
  %583 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 3, i32 0, i32 0
  %584 = load i8*, i8** %583, align 8, !tbaa !23
  %585 = getelementptr inbounds i8, i8* %584, i64 -24
  %586 = bitcast i8* %585 to i64*
  %587 = load i64, i64* %586, align 8, !tbaa !44
  %588 = icmp ugt i64 %582, %587
  %589 = select i1 %588, i64 %582, i64 %587
  %590 = trunc i64 %589 to i32
  %591 = getelementptr inbounds i32, i32* %422, i64 3
  store i32 %590, i32* %591, align 4, !tbaa !16
  %592 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %593 unwind label %1192

593:                                              ; preds = %577
  %594 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %595 = getelementptr i8, i8* %594, i64 -24
  %596 = bitcast i8* %595 to i64*
  %597 = load i64, i64* %596, align 8
  %598 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %597
  %599 = shl i64 %589, 32
  %600 = add i64 %599, 4294967296
  %601 = ashr exact i64 %600, 32
  %602 = getelementptr inbounds i8, i8* %598, i64 16
  %603 = bitcast i8* %602 to i64*
  store i64 %601, i64* %603, align 8, !tbaa !113
  %604 = load i64, i64* %596, align 8
  %605 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %604
  %606 = getelementptr inbounds i8, i8* %605, i64 24
  %607 = bitcast i8* %606 to i32*
  %608 = load i32, i32* %607, align 8, !tbaa !94
  %609 = and i32 %608, -177
  %610 = or i32 %609, 32
  store i32 %610, i32* %607, align 8, !tbaa !100
  %611 = load i8*, i8** %578, align 8, !tbaa !23
  %612 = getelementptr inbounds i8, i8* %611, i64 -24
  %613 = bitcast i8* %612 to i64*
  %614 = load i64, i64* %613, align 8, !tbaa !44
  %615 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %611, i64 %614)
          to label %616 unwind label %1192

616:                                              ; preds = %593
  %617 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %615, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %618 unwind label %1192

618:                                              ; preds = %616
  %619 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 4, i32 0, i32 0
  %620 = load i8*, i8** %619, align 16, !tbaa !23
  %621 = getelementptr inbounds i8, i8* %620, i64 -24
  %622 = bitcast i8* %621 to i64*
  %623 = load i64, i64* %622, align 8, !tbaa !44
  %624 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 4, i32 0, i32 0
  %625 = load i8*, i8** %624, align 16, !tbaa !23
  %626 = getelementptr inbounds i8, i8* %625, i64 -24
  %627 = bitcast i8* %626 to i64*
  %628 = load i64, i64* %627, align 8, !tbaa !44
  %629 = icmp ugt i64 %623, %628
  %630 = select i1 %629, i64 %623, i64 %628
  %631 = trunc i64 %630 to i32
  %632 = getelementptr inbounds i32, i32* %422, i64 4
  store i32 %631, i32* %632, align 4, !tbaa !16
  %633 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %634 unwind label %1192

634:                                              ; preds = %618
  %635 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %636 = getelementptr i8, i8* %635, i64 -24
  %637 = bitcast i8* %636 to i64*
  %638 = load i64, i64* %637, align 8
  %639 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %638
  %640 = shl i64 %630, 32
  %641 = add i64 %640, 4294967296
  %642 = ashr exact i64 %641, 32
  %643 = getelementptr inbounds i8, i8* %639, i64 16
  %644 = bitcast i8* %643 to i64*
  store i64 %642, i64* %644, align 8, !tbaa !113
  %645 = load i64, i64* %637, align 8
  %646 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %645
  %647 = getelementptr inbounds i8, i8* %646, i64 24
  %648 = bitcast i8* %647 to i32*
  %649 = load i32, i32* %648, align 8, !tbaa !94
  %650 = and i32 %649, -177
  %651 = or i32 %650, 32
  store i32 %651, i32* %648, align 8, !tbaa !100
  %652 = load i8*, i8** %619, align 16, !tbaa !23
  %653 = getelementptr inbounds i8, i8* %652, i64 -24
  %654 = bitcast i8* %653 to i64*
  %655 = load i64, i64* %654, align 8, !tbaa !44
  %656 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %652, i64 %655)
          to label %657 unwind label %1192

657:                                              ; preds = %634
  %658 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %656, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %659 unwind label %1192

659:                                              ; preds = %657
  %660 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %661 = getelementptr i8, i8* %660, i64 -24
  %662 = bitcast i8* %661 to i64*
  %663 = load i64, i64* %662, align 8
  %664 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %663
  %665 = getelementptr inbounds i8, i8* %664, i64 240
  %666 = bitcast i8* %665 to %"class.std::ctype"**
  %667 = load %"class.std::ctype"*, %"class.std::ctype"** %666, align 8, !tbaa !29
  %668 = icmp eq %"class.std::ctype"* %667, null
  br i1 %668, label %669, label %671

669:                                              ; preds = %659
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %670 unwind label %1192

670:                                              ; preds = %669
  unreachable

671:                                              ; preds = %659
  %672 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %667, i64 0, i32 8
  %673 = load i8, i8* %672, align 8, !tbaa !31
  %674 = icmp eq i8 %673, 0
  br i1 %674, label %678, label %675

675:                                              ; preds = %671
  %676 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %667, i64 0, i32 9, i64 10
  %677 = load i8, i8* %676, align 1, !tbaa !33
  br label %685

678:                                              ; preds = %671
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %667)
          to label %679 unwind label %1192

679:                                              ; preds = %678
  %680 = bitcast %"class.std::ctype"* %667 to i8 (%"class.std::ctype"*, i8)***
  %681 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %680, align 8, !tbaa !27
  %682 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %681, i64 6
  %683 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %682, align 8
  %684 = invoke signext i8 %683(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %667, i8 signext 10)
          to label %685 unwind label %1192

685:                                              ; preds = %679, %675
  %686 = phi i8 [ %677, %675 ], [ %684, %679 ]
  %687 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %686)
          to label %688 unwind label %1192

688:                                              ; preds = %685
  %689 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %687)
          to label %690 unwind label %1192

690:                                              ; preds = %688
  %691 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %689, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %692 unwind label %1192

692:                                              ; preds = %690
  %693 = load i32, i32* %422, align 4, !tbaa !16
  %694 = icmp sgt i32 %693, -2
  br i1 %694, label %695, label %859

695:                                              ; preds = %692
  %696 = add i32 %693, 1
  br label %921

697:                                              ; preds = %911
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %698 unwind label %1192

698:                                              ; preds = %697
  unreachable

699:                                              ; preds = %911
  %700 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %919, i64 0, i32 8
  %701 = load i8, i8* %700, align 8, !tbaa !31
  %702 = icmp eq i8 %701, 0
  br i1 %702, label %706, label %703

703:                                              ; preds = %699
  %704 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %919, i64 0, i32 9, i64 10
  %705 = load i8, i8* %704, align 1, !tbaa !33
  br label %713

706:                                              ; preds = %699
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %919)
          to label %707 unwind label %1192

707:                                              ; preds = %706
  %708 = bitcast %"class.std::ctype"* %919 to i8 (%"class.std::ctype"*, i8)***
  %709 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %708, align 8, !tbaa !27
  %710 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %709, i64 6
  %711 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %710, align 8
  %712 = invoke signext i8 %711(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %919, i8 signext 10)
          to label %713 unwind label %1192

713:                                              ; preds = %707, %703
  %714 = phi i8 [ %705, %703 ], [ %712, %707 ]
  %715 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %714)
          to label %716 unwind label %1192

716:                                              ; preds = %713
  %717 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %715)
          to label %718 unwind label %1192

718:                                              ; preds = %716
  %719 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %717, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %720 unwind label %1192

720:                                              ; preds = %718
  %721 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %722 unwind label %1192

722:                                              ; preds = %720
  %723 = add nsw i32 %693, 1
  %724 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %725 = getelementptr i8, i8* %724, i64 -24
  %726 = bitcast i8* %725 to i64*
  %727 = load i64, i64* %726, align 8
  %728 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %727
  %729 = sext i32 %723 to i64
  %730 = getelementptr inbounds i8, i8* %728, i64 16
  %731 = bitcast i8* %730 to i64*
  store i64 %729, i64* %731, align 8, !tbaa !113
  %732 = load i64, i64* %726, align 8
  %733 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %732
  %734 = getelementptr inbounds i8, i8* %733, i64 24
  %735 = bitcast i8* %734 to i32*
  %736 = load i32, i32* %735, align 8, !tbaa !94
  %737 = and i32 %736, -177
  %738 = or i32 %737, 32
  store i32 %738, i32* %735, align 8, !tbaa !100
  %739 = load i8*, i8** %461, align 16, !tbaa !23
  %740 = getelementptr inbounds i8, i8* %739, i64 -24
  %741 = bitcast i8* %740 to i64*
  %742 = load i64, i64* %741, align 8, !tbaa !44
  %743 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %739, i64 %742)
          to label %744 unwind label %1192

744:                                              ; preds = %722
  %745 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %743, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %746 unwind label %1192

746:                                              ; preds = %744
  %747 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %748 unwind label %1192

748:                                              ; preds = %746
  %749 = add nsw i32 %862, 1
  %750 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %751 = getelementptr i8, i8* %750, i64 -24
  %752 = bitcast i8* %751 to i64*
  %753 = load i64, i64* %752, align 8
  %754 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %753
  %755 = sext i32 %749 to i64
  %756 = getelementptr inbounds i8, i8* %754, i64 16
  %757 = bitcast i8* %756 to i64*
  store i64 %755, i64* %757, align 8, !tbaa !113
  %758 = load i64, i64* %752, align 8
  %759 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %758
  %760 = getelementptr inbounds i8, i8* %759, i64 24
  %761 = bitcast i8* %760 to i32*
  %762 = load i32, i32* %761, align 8, !tbaa !94
  %763 = and i32 %762, -177
  %764 = or i32 %763, 32
  store i32 %764, i32* %761, align 8, !tbaa !100
  %765 = load i8*, i8** %501, align 8, !tbaa !23
  %766 = getelementptr inbounds i8, i8* %765, i64 -24
  %767 = bitcast i8* %766 to i64*
  %768 = load i64, i64* %767, align 8, !tbaa !44
  %769 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %765, i64 %768)
          to label %770 unwind label %1192

770:                                              ; preds = %748
  %771 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %769, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %772 unwind label %1192

772:                                              ; preds = %770
  %773 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %774 unwind label %1192

774:                                              ; preds = %772
  %775 = add nsw i32 %875, 1
  %776 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %777 = getelementptr i8, i8* %776, i64 -24
  %778 = bitcast i8* %777 to i64*
  %779 = load i64, i64* %778, align 8
  %780 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %779
  %781 = sext i32 %775 to i64
  %782 = getelementptr inbounds i8, i8* %780, i64 16
  %783 = bitcast i8* %782 to i64*
  store i64 %781, i64* %783, align 8, !tbaa !113
  %784 = load i64, i64* %778, align 8
  %785 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %784
  %786 = getelementptr inbounds i8, i8* %785, i64 24
  %787 = bitcast i8* %786 to i32*
  %788 = load i32, i32* %787, align 8, !tbaa !94
  %789 = and i32 %788, -177
  %790 = or i32 %789, 32
  store i32 %790, i32* %787, align 8, !tbaa !100
  %791 = load i8*, i8** %542, align 16, !tbaa !23
  %792 = getelementptr inbounds i8, i8* %791, i64 -24
  %793 = bitcast i8* %792 to i64*
  %794 = load i64, i64* %793, align 8, !tbaa !44
  %795 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %791, i64 %794)
          to label %796 unwind label %1192

796:                                              ; preds = %774
  %797 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %795, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %798 unwind label %1192

798:                                              ; preds = %796
  %799 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %800 unwind label %1192

800:                                              ; preds = %798
  %801 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %802 = getelementptr i8, i8* %801, i64 -24
  %803 = bitcast i8* %802 to i64*
  %804 = load i64, i64* %803, align 8
  %805 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %804
  %806 = getelementptr inbounds i8, i8* %805, i64 16
  %807 = bitcast i8* %806 to i64*
  store i64 %601, i64* %807, align 8, !tbaa !113
  %808 = load i64, i64* %803, align 8
  %809 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %808
  %810 = getelementptr inbounds i8, i8* %809, i64 24
  %811 = bitcast i8* %810 to i32*
  %812 = load i32, i32* %811, align 8, !tbaa !94
  %813 = and i32 %812, -177
  %814 = or i32 %813, 32
  store i32 %814, i32* %811, align 8, !tbaa !100
  %815 = load i8*, i8** %583, align 8, !tbaa !23
  %816 = getelementptr inbounds i8, i8* %815, i64 -24
  %817 = bitcast i8* %816 to i64*
  %818 = load i64, i64* %817, align 8, !tbaa !44
  %819 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %815, i64 %818)
          to label %820 unwind label %1192

820:                                              ; preds = %800
  %821 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %819, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %822 unwind label %1192

822:                                              ; preds = %820
  %823 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
          to label %824 unwind label %1192

824:                                              ; preds = %822
  %825 = load i32, i32* %632, align 4, !tbaa !16
  %826 = add nsw i32 %825, 1
  %827 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %828 = getelementptr i8, i8* %827, i64 -24
  %829 = bitcast i8* %828 to i64*
  %830 = load i64, i64* %829, align 8
  %831 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %830
  %832 = sext i32 %826 to i64
  %833 = getelementptr inbounds i8, i8* %831, i64 16
  %834 = bitcast i8* %833 to i64*
  store i64 %832, i64* %834, align 8, !tbaa !113
  %835 = load i64, i64* %829, align 8
  %836 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %835
  %837 = getelementptr inbounds i8, i8* %836, i64 24
  %838 = bitcast i8* %837 to i32*
  %839 = load i32, i32* %838, align 8, !tbaa !94
  %840 = and i32 %839, -177
  %841 = or i32 %840, 32
  store i32 %841, i32* %838, align 8, !tbaa !100
  %842 = load i8*, i8** %624, align 16, !tbaa !23
  %843 = getelementptr inbounds i8, i8* %842, i64 -24
  %844 = bitcast i8* %843 to i64*
  %845 = load i64, i64* %844, align 8, !tbaa !44
  %846 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %842, i64 %845)
          to label %847 unwind label %1192

847:                                              ; preds = %824
  %848 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %846, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %849 unwind label %1192

849:                                              ; preds = %847
  %850 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %851 = getelementptr i8, i8* %850, i64 -24
  %852 = bitcast i8* %851 to i64*
  %853 = load i64, i64* %852, align 8
  %854 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %853
  %855 = getelementptr inbounds i8, i8* %854, i64 240
  %856 = bitcast i8* %855 to %"class.std::ctype"**
  %857 = load %"class.std::ctype"*, %"class.std::ctype"** %856, align 8, !tbaa !29
  %858 = icmp eq %"class.std::ctype"* %857, null
  br i1 %858, label %927, label %929

859:                                              ; preds = %924, %692
  %860 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %861 unwind label %1192

861:                                              ; preds = %859
  %862 = load i32, i32* %509, align 4, !tbaa !16
  %863 = icmp sgt i32 %862, -2
  br i1 %863, label %864, label %872

864:                                              ; preds = %861
  %865 = add i32 %862, 1
  br label %866

866:                                              ; preds = %864, %869
  %867 = phi i32 [ %870, %869 ], [ 0, %864 ]
  %868 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
          to label %869 unwind label %1188

869:                                              ; preds = %866
  %870 = add nuw i32 %867, 1
  %871 = icmp eq i32 %867, %865
  br i1 %871, label %872, label %866, !llvm.loop !114

872:                                              ; preds = %869, %861
  %873 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %874 unwind label %1192

874:                                              ; preds = %872
  %875 = load i32, i32* %550, align 4, !tbaa !16
  %876 = icmp sgt i32 %875, -2
  br i1 %876, label %877, label %885

877:                                              ; preds = %874
  %878 = add i32 %875, 1
  br label %879

879:                                              ; preds = %877, %882
  %880 = phi i32 [ %883, %882 ], [ 0, %877 ]
  %881 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
          to label %882 unwind label %1186

882:                                              ; preds = %879
  %883 = add nuw i32 %880, 1
  %884 = icmp eq i32 %880, %878
  br i1 %884, label %885, label %879, !llvm.loop !114

885:                                              ; preds = %882, %874
  %886 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %887 unwind label %1192

887:                                              ; preds = %885
  %888 = icmp sgt i32 %590, -2
  br i1 %888, label %889, label %897

889:                                              ; preds = %887
  %890 = add i32 %590, 1
  br label %891

891:                                              ; preds = %889, %894
  %892 = phi i32 [ %895, %894 ], [ 0, %889 ]
  %893 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
          to label %894 unwind label %1184

894:                                              ; preds = %891
  %895 = add nuw i32 %892, 1
  %896 = icmp eq i32 %892, %890
  br i1 %896, label %897, label %891, !llvm.loop !114

897:                                              ; preds = %894, %887
  %898 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %899 unwind label %1192

899:                                              ; preds = %897
  %900 = icmp sgt i32 %631, -2
  br i1 %900, label %901, label %909

901:                                              ; preds = %899
  %902 = add i32 %631, 1
  br label %903

903:                                              ; preds = %901, %906
  %904 = phi i32 [ %907, %906 ], [ 0, %901 ]
  %905 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
          to label %906 unwind label %1182

906:                                              ; preds = %903
  %907 = add nuw i32 %904, 1
  %908 = icmp eq i32 %904, %902
  br i1 %908, label %909, label %903, !llvm.loop !114

909:                                              ; preds = %906, %899
  %910 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
          to label %911 unwind label %1192

911:                                              ; preds = %909
  %912 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %913 = getelementptr i8, i8* %912, i64 -24
  %914 = bitcast i8* %913 to i64*
  %915 = load i64, i64* %914, align 8
  %916 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %915
  %917 = getelementptr inbounds i8, i8* %916, i64 240
  %918 = bitcast i8* %917 to %"class.std::ctype"**
  %919 = load %"class.std::ctype"*, %"class.std::ctype"** %918, align 8, !tbaa !29
  %920 = icmp eq %"class.std::ctype"* %919, null
  br i1 %920, label %697, label %699

921:                                              ; preds = %695, %924
  %922 = phi i32 [ %925, %924 ], [ 0, %695 ]
  %923 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
          to label %924 unwind label %1190

924:                                              ; preds = %921
  %925 = add nuw i32 %922, 1
  %926 = icmp eq i32 %922, %696
  br i1 %926, label %859, label %921, !llvm.loop !114

927:                                              ; preds = %849
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %928 unwind label %1192

928:                                              ; preds = %927
  unreachable

929:                                              ; preds = %849
  %930 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %857, i64 0, i32 8
  %931 = load i8, i8* %930, align 8, !tbaa !31
  %932 = icmp eq i8 %931, 0
  br i1 %932, label %936, label %933

933:                                              ; preds = %929
  %934 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %857, i64 0, i32 9, i64 10
  %935 = load i8, i8* %934, align 1, !tbaa !33
  br label %943

936:                                              ; preds = %929
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %857)
          to label %937 unwind label %1192

937:                                              ; preds = %936
  %938 = bitcast %"class.std::ctype"* %857 to i8 (%"class.std::ctype"*, i8)***
  %939 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %938, align 8, !tbaa !27
  %940 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %939, i64 6
  %941 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %940, align 8
  %942 = invoke signext i8 %941(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %857, i8 signext 10)
          to label %943 unwind label %1192

943:                                              ; preds = %937, %933
  %944 = phi i8 [ %935, %933 ], [ %942, %937 ]
  %945 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %944)
          to label %946 unwind label %1192

946:                                              ; preds = %943
  %947 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %945)
          to label %948 unwind label %1192

948:                                              ; preds = %946
  call void @_ZdaPv(i8* nonnull %420) #27
  %949 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %950 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 4, i32 0, i32 0
  %951 = load i8*, i8** %950, align 16, !tbaa !23
  %952 = getelementptr inbounds i8, i8* %951, i64 -24
  %953 = bitcast i8* %952 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %949) #24
  %954 = icmp eq i8* %952, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %954, label %967, label %955, !prof !26

955:                                              ; preds = %948
  %956 = getelementptr inbounds i8, i8* %951, i64 -8
  %957 = bitcast i8* %956 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %958, label %960

958:                                              ; preds = %955
  %959 = atomicrmw volatile add i32* %957, i32 -1 acq_rel, align 4
  br label %963

960:                                              ; preds = %955
  %961 = load i32, i32* %957, align 8, !tbaa !16
  %962 = add nsw i32 %961, -1
  store i32 %962, i32* %957, align 8, !tbaa !16
  br label %963

963:                                              ; preds = %960, %958
  %964 = phi i32 [ %959, %958 ], [ %961, %960 ]
  %965 = icmp slt i32 %964, 1
  br i1 %965, label %966, label %967

966:                                              ; preds = %963
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %953, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %967

967:                                              ; preds = %948, %963, %966
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %949) #24
  %968 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 3, i32 0, i32 0
  %969 = load i8*, i8** %968, align 8, !tbaa !23
  %970 = getelementptr inbounds i8, i8* %969, i64 -24
  %971 = bitcast i8* %970 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %949) #24
  %972 = icmp eq i8* %970, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %972, label %985, label %973, !prof !26

973:                                              ; preds = %967
  %974 = getelementptr inbounds i8, i8* %969, i64 -8
  %975 = bitcast i8* %974 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %979, label %976

976:                                              ; preds = %973
  %977 = load i32, i32* %975, align 8, !tbaa !16
  %978 = add nsw i32 %977, -1
  store i32 %978, i32* %975, align 8, !tbaa !16
  br label %981

979:                                              ; preds = %973
  %980 = atomicrmw volatile add i32* %975, i32 -1 acq_rel, align 4
  br label %981

981:                                              ; preds = %979, %976
  %982 = phi i32 [ %980, %979 ], [ %977, %976 ]
  %983 = icmp slt i32 %982, 1
  br i1 %983, label %984, label %985

984:                                              ; preds = %981
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %971, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %985

985:                                              ; preds = %984, %981, %967
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %949) #24
  %986 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 2, i32 0, i32 0
  %987 = load i8*, i8** %986, align 16, !tbaa !23
  %988 = getelementptr inbounds i8, i8* %987, i64 -24
  %989 = bitcast i8* %988 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %949) #24
  %990 = icmp eq i8* %988, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %990, label %1003, label %991, !prof !26

991:                                              ; preds = %985
  %992 = getelementptr inbounds i8, i8* %987, i64 -8
  %993 = bitcast i8* %992 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %997, label %994

994:                                              ; preds = %991
  %995 = load i32, i32* %993, align 8, !tbaa !16
  %996 = add nsw i32 %995, -1
  store i32 %996, i32* %993, align 8, !tbaa !16
  br label %999

997:                                              ; preds = %991
  %998 = atomicrmw volatile add i32* %993, i32 -1 acq_rel, align 4
  br label %999

999:                                              ; preds = %997, %994
  %1000 = phi i32 [ %998, %997 ], [ %995, %994 ]
  %1001 = icmp slt i32 %1000, 1
  br i1 %1001, label %1002, label %1003

1002:                                             ; preds = %999
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %989, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %1003

1003:                                             ; preds = %1002, %999, %985
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %949) #24
  %1004 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 1, i32 0, i32 0
  %1005 = load i8*, i8** %1004, align 8, !tbaa !23
  %1006 = getelementptr inbounds i8, i8* %1005, i64 -24
  %1007 = bitcast i8* %1006 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %949) #24
  %1008 = icmp eq i8* %1006, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1008, label %1021, label %1009, !prof !26

1009:                                             ; preds = %1003
  %1010 = getelementptr inbounds i8, i8* %1005, i64 -8
  %1011 = bitcast i8* %1010 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1015, label %1012

1012:                                             ; preds = %1009
  %1013 = load i32, i32* %1011, align 8, !tbaa !16
  %1014 = add nsw i32 %1013, -1
  store i32 %1014, i32* %1011, align 8, !tbaa !16
  br label %1017

1015:                                             ; preds = %1009
  %1016 = atomicrmw volatile add i32* %1011, i32 -1 acq_rel, align 4
  br label %1017

1017:                                             ; preds = %1015, %1012
  %1018 = phi i32 [ %1016, %1015 ], [ %1013, %1012 ]
  %1019 = icmp slt i32 %1018, 1
  br i1 %1019, label %1020, label %1021

1020:                                             ; preds = %1017
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1007, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %1021

1021:                                             ; preds = %1020, %1017, %1003
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %949) #24
  %1022 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 0, i32 0, i32 0
  %1023 = load i8*, i8** %1022, align 16, !tbaa !23
  %1024 = getelementptr inbounds i8, i8* %1023, i64 -24
  %1025 = bitcast i8* %1024 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %949) #24
  %1026 = icmp eq i8* %1024, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1026, label %1039, label %1027, !prof !26

1027:                                             ; preds = %1021
  %1028 = getelementptr inbounds i8, i8* %1023, i64 -8
  %1029 = bitcast i8* %1028 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1033, label %1030

1030:                                             ; preds = %1027
  %1031 = load i32, i32* %1029, align 8, !tbaa !16
  %1032 = add nsw i32 %1031, -1
  store i32 %1032, i32* %1029, align 8, !tbaa !16
  br label %1035

1033:                                             ; preds = %1027
  %1034 = atomicrmw volatile add i32* %1029, i32 -1 acq_rel, align 4
  br label %1035

1035:                                             ; preds = %1033, %1030
  %1036 = phi i32 [ %1034, %1033 ], [ %1031, %1030 ]
  %1037 = icmp slt i32 %1036, 1
  br i1 %1037, label %1038, label %1039

1038:                                             ; preds = %1035
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1025, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %1039

1039:                                             ; preds = %1038, %1035, %1021
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %949) #24
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %59) #24
  %1040 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %1041 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 4, i32 0, i32 0
  %1042 = load i8*, i8** %1041, align 16, !tbaa !23
  %1043 = getelementptr inbounds i8, i8* %1042, i64 -24
  %1044 = bitcast i8* %1043 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1040) #24
  %1045 = icmp eq i8* %1043, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1045, label %1058, label %1046, !prof !26

1046:                                             ; preds = %1039
  %1047 = getelementptr inbounds i8, i8* %1042, i64 -8
  %1048 = bitcast i8* %1047 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1049, label %1051

1049:                                             ; preds = %1046
  %1050 = atomicrmw volatile add i32* %1048, i32 -1 acq_rel, align 4
  br label %1054

1051:                                             ; preds = %1046
  %1052 = load i32, i32* %1048, align 8, !tbaa !16
  %1053 = add nsw i32 %1052, -1
  store i32 %1053, i32* %1048, align 8, !tbaa !16
  br label %1054

1054:                                             ; preds = %1051, %1049
  %1055 = phi i32 [ %1050, %1049 ], [ %1052, %1051 ]
  %1056 = icmp slt i32 %1055, 1
  br i1 %1056, label %1057, label %1058

1057:                                             ; preds = %1054
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1044, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %1058

1058:                                             ; preds = %1039, %1054, %1057
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1040) #24
  %1059 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 3, i32 0, i32 0
  %1060 = load i8*, i8** %1059, align 8, !tbaa !23
  %1061 = getelementptr inbounds i8, i8* %1060, i64 -24
  %1062 = bitcast i8* %1061 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1040) #24
  %1063 = icmp eq i8* %1061, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1063, label %1076, label %1064, !prof !26

1064:                                             ; preds = %1058
  %1065 = getelementptr inbounds i8, i8* %1060, i64 -8
  %1066 = bitcast i8* %1065 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1070, label %1067

1067:                                             ; preds = %1064
  %1068 = load i32, i32* %1066, align 8, !tbaa !16
  %1069 = add nsw i32 %1068, -1
  store i32 %1069, i32* %1066, align 8, !tbaa !16
  br label %1072

1070:                                             ; preds = %1064
  %1071 = atomicrmw volatile add i32* %1066, i32 -1 acq_rel, align 4
  br label %1072

1072:                                             ; preds = %1070, %1067
  %1073 = phi i32 [ %1071, %1070 ], [ %1068, %1067 ]
  %1074 = icmp slt i32 %1073, 1
  br i1 %1074, label %1075, label %1076

1075:                                             ; preds = %1072
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1062, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %1076

1076:                                             ; preds = %1075, %1072, %1058
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1040) #24
  %1077 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 2, i32 0, i32 0
  %1078 = load i8*, i8** %1077, align 16, !tbaa !23
  %1079 = getelementptr inbounds i8, i8* %1078, i64 -24
  %1080 = bitcast i8* %1079 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1040) #24
  %1081 = icmp eq i8* %1079, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1081, label %1094, label %1082, !prof !26

1082:                                             ; preds = %1076
  %1083 = getelementptr inbounds i8, i8* %1078, i64 -8
  %1084 = bitcast i8* %1083 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1088, label %1085

1085:                                             ; preds = %1082
  %1086 = load i32, i32* %1084, align 8, !tbaa !16
  %1087 = add nsw i32 %1086, -1
  store i32 %1087, i32* %1084, align 8, !tbaa !16
  br label %1090

1088:                                             ; preds = %1082
  %1089 = atomicrmw volatile add i32* %1084, i32 -1 acq_rel, align 4
  br label %1090

1090:                                             ; preds = %1088, %1085
  %1091 = phi i32 [ %1089, %1088 ], [ %1086, %1085 ]
  %1092 = icmp slt i32 %1091, 1
  br i1 %1092, label %1093, label %1094

1093:                                             ; preds = %1090
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1080, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %1094

1094:                                             ; preds = %1093, %1090, %1076
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1040) #24
  %1095 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 1, i32 0, i32 0
  %1096 = load i8*, i8** %1095, align 8, !tbaa !23
  %1097 = getelementptr inbounds i8, i8* %1096, i64 -24
  %1098 = bitcast i8* %1097 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1040) #24
  %1099 = icmp eq i8* %1097, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1099, label %1112, label %1100, !prof !26

1100:                                             ; preds = %1094
  %1101 = getelementptr inbounds i8, i8* %1096, i64 -8
  %1102 = bitcast i8* %1101 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1106, label %1103

1103:                                             ; preds = %1100
  %1104 = load i32, i32* %1102, align 8, !tbaa !16
  %1105 = add nsw i32 %1104, -1
  store i32 %1105, i32* %1102, align 8, !tbaa !16
  br label %1108

1106:                                             ; preds = %1100
  %1107 = atomicrmw volatile add i32* %1102, i32 -1 acq_rel, align 4
  br label %1108

1108:                                             ; preds = %1106, %1103
  %1109 = phi i32 [ %1107, %1106 ], [ %1104, %1103 ]
  %1110 = icmp slt i32 %1109, 1
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1108
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1098, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %1112

1112:                                             ; preds = %1111, %1108, %1094
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1040) #24
  %1113 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 0, i32 0, i32 0
  %1114 = load i8*, i8** %1113, align 16, !tbaa !23
  %1115 = getelementptr inbounds i8, i8* %1114, i64 -24
  %1116 = bitcast i8* %1115 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1040) #24
  %1117 = icmp eq i8* %1115, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1117, label %1130, label %1118, !prof !26

1118:                                             ; preds = %1112
  %1119 = getelementptr inbounds i8, i8* %1114, i64 -8
  %1120 = bitcast i8* %1119 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1124, label %1121

1121:                                             ; preds = %1118
  %1122 = load i32, i32* %1120, align 8, !tbaa !16
  %1123 = add nsw i32 %1122, -1
  store i32 %1123, i32* %1120, align 8, !tbaa !16
  br label %1126

1124:                                             ; preds = %1118
  %1125 = atomicrmw volatile add i32* %1120, i32 -1 acq_rel, align 4
  br label %1126

1126:                                             ; preds = %1124, %1121
  %1127 = phi i32 [ %1125, %1124 ], [ %1122, %1121 ]
  %1128 = icmp slt i32 %1127, 1
  br i1 %1128, label %1129, label %1130

1129:                                             ; preds = %1126
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1116, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %1130

1130:                                             ; preds = %1129, %1126, %1112
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1040) #24
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %44) #24
  br label %1208

1131:                                             ; preds = %37
  %1132 = landingpad { i8*, i32 }
          cleanup
  br label %1145

1133:                                             ; preds = %49
  %1134 = landingpad { i8*, i32 }
          cleanup
  br label %1142

1135:                                             ; preds = %52
  %1136 = landingpad { i8*, i32 }
          cleanup
  br label %1139

1137:                                             ; preds = %55
  %1138 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %57) #24
  br label %1139

1139:                                             ; preds = %1137, %1135
  %1140 = phi %"class.std::basic_string"* [ %56, %1137 ], [ %53, %1135 ]
  %1141 = phi { i8*, i32 } [ %1138, %1137 ], [ %1136, %1135 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %54) #24
  br label %1142

1142:                                             ; preds = %1139, %1133
  %1143 = phi %"class.std::basic_string"* [ %1140, %1139 ], [ %50, %1133 ]
  %1144 = phi { i8*, i32 } [ %1141, %1139 ], [ %1134, %1133 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #24
  br label %1145

1145:                                             ; preds = %1131, %1142
  %1146 = phi %"class.std::basic_string"* [ %1143, %1142 ], [ %47, %1131 ]
  %1147 = phi { i8*, i32 } [ %1144, %1142 ], [ %1132, %1131 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %46) #24
  br label %1148

1148:                                             ; preds = %1145, %1148
  %1149 = phi %"class.std::basic_string"* [ %1150, %1148 ], [ %1146, %1145 ]
  %1150 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1149, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1150) #24
  %1151 = icmp eq %"class.std::basic_string"* %1150, %45
  br i1 %1151, label %1206, label %1148

1152:                                             ; preds = %58
  %1153 = landingpad { i8*, i32 }
          cleanup
  br label %1156

1154:                                             ; preds = %116
  %1155 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %26) #24
  br label %1156

1156:                                             ; preds = %1152, %114, %1154
  %1157 = phi { i8*, i32 } [ %1155, %1154 ], [ %1153, %1152 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #24
  br label %1194

1158:                                             ; preds = %138
  %1159 = landingpad { i8*, i32 }
          cleanup
  br label %1162

1160:                                             ; preds = %185
  %1161 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %27) #24
  br label %1162

1162:                                             ; preds = %1158, %183, %1160
  %1163 = phi { i8*, i32 } [ %1161, %1160 ], [ %1159, %1158 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %139) #24
  br label %1194

1164:                                             ; preds = %208
  %1165 = landingpad { i8*, i32 }
          cleanup
  br label %1168

1166:                                             ; preds = %255
  %1167 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %28) #24
  br label %1168

1168:                                             ; preds = %1164, %253, %1166
  %1169 = phi { i8*, i32 } [ %1167, %1166 ], [ %1165, %1164 ], [ %254, %253 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %209) #24
  br label %1194

1170:                                             ; preds = %278
  %1171 = landingpad { i8*, i32 }
          cleanup
  br label %1174

1172:                                             ; preds = %323
  %1173 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29) #24
  br label %1174

1174:                                             ; preds = %1170, %321, %1172
  %1175 = phi { i8*, i32 } [ %1173, %1172 ], [ %1171, %1170 ], [ %322, %321 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %279) #24
  br label %1194

1176:                                             ; preds = %346
  %1177 = landingpad { i8*, i32 }
          cleanup
  br label %1180

1178:                                             ; preds = %396
  %1179 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %30) #24
  br label %1180

1180:                                             ; preds = %1176, %394, %1178
  %1181 = phi { i8*, i32 } [ %1179, %1178 ], [ %1177, %1176 ], [ %395, %394 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %347) #24
  br label %1194

1182:                                             ; preds = %903
  %1183 = landingpad { i8*, i32 }
          cleanup
  br label %1194

1184:                                             ; preds = %891
  %1185 = landingpad { i8*, i32 }
          cleanup
  br label %1194

1186:                                             ; preds = %879
  %1187 = landingpad { i8*, i32 }
          cleanup
  br label %1194

1188:                                             ; preds = %866
  %1189 = landingpad { i8*, i32 }
          cleanup
  br label %1194

1190:                                             ; preds = %921
  %1191 = landingpad { i8*, i32 }
          cleanup
  br label %1194

1192:                                             ; preds = %419, %432, %441, %442, %448, %451, %453, %455, %470, %493, %495, %511, %534, %536, %552, %575, %577, %593, %616, %618, %634, %657, %669, %678, %679, %685, %688, %690, %697, %706, %707, %713, %716, %718, %720, %722, %744, %746, %748, %770, %772, %774, %796, %798, %800, %820, %822, %824, %847, %859, %872, %885, %897, %909, %927, %936, %937, %943, %946
  %1193 = landingpad { i8*, i32 }
          cleanup
  br label %1194

1194:                                             ; preds = %1182, %1186, %1190, %1192, %1188, %1184, %1180, %1174, %1168, %1162, %1156
  %1195 = phi { i8*, i32 } [ %1181, %1180 ], [ %1175, %1174 ], [ %1169, %1168 ], [ %1163, %1162 ], [ %1157, %1156 ], [ %1183, %1182 ], [ %1185, %1184 ], [ %1187, %1186 ], [ %1189, %1188 ], [ %1191, %1190 ], [ %1193, %1192 ]
  %1196 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 4
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1196) #24
  %1197 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1197) #24
  %1198 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1198) #24
  %1199 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1199) #24
  %1200 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %25, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1200) #24
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %59) #24
  %1201 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 4
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1201) #24
  %1202 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1202) #24
  %1203 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1203) #24
  %1204 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1204) #24
  %1205 = getelementptr inbounds [5 x %"class.std::basic_string"], [5 x %"class.std::basic_string"]* %19, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1205) #24
  br label %1206

1206:                                             ; preds = %1148, %1194
  %1207 = phi { i8*, i32 } [ %1195, %1194 ], [ %1147, %1148 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %44) #24
  resume { i8*, i32 } %1207

1208:                                             ; preds = %1130, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN9Histogram7cleanupEv(%class.Histogram* nocapture nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 13
  %3 = bitcast i32** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !55
  %5 = tail call i32 @hipFree(i8* %4)
  %6 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 14
  %7 = bitcast i32** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !57
  %9 = tail call i32 @hipFree(i8* %8)
  %10 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 6
  %11 = load i32*, i32** %10, align 8, !tbaa !22
  %12 = icmp eq i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = bitcast i32* %11 to i8*
  tail call void @free(i8* %14) #24
  store i32* null, i32** %10, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %class.Histogram, %class.Histogram* %0, i64 0, i32 8
  %17 = load i32*, i32** %16, align 8, !tbaa !34
  %18 = icmp eq i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = bitcast i32* %17 to i8*
  tail call void @free(i8* %20) #24
  store i32* null, i32** %16, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %19, %15
  ret i32 0
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.Histogram, align 8
  %4 = bitcast %class.Histogram* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %4) #24
  %5 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 0
  store i32 256, i32* %5, align 8, !tbaa !20
  %6 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 1
  store i32 128, i32* %6, align 4, !tbaa !52
  %7 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 2
  store i32 64, i32* %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 3
  store i32* null, i32** %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 6
  %10 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 15
  %11 = bitcast i32** %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  store i32 1, i32* %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 16
  store i8 0, i8* %12, align 4, !tbaa !37
  %13 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 17
  store i8 0, i8* %13, align 1, !tbaa !115
  %14 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 18
  store i32 0, i32* %14, align 8, !tbaa !39
  %15 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 21
  store i32 128, i32* %15, align 4, !tbaa !56
  %16 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 4
  store i32 1024, i32* %16, align 8, !tbaa !17
  %17 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 5
  store i32 1024, i32* %17, align 4, !tbaa !7
  %18 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #26
  %19 = bitcast i8* %18 to %"class.appsdk::HIPCommandArgs"*
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 0
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 8, i32 0
  %23 = bitcast i32* %22 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %24, align 8, !tbaa !116
  %25 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !60
  %26 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 1
  store i32 0, i32* %26, align 8, !tbaa !65
  %27 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 2
  store i32 0, i32* %27, align 4, !tbaa !117
  %28 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 4
  %29 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 3
  %30 = bitcast i8*** %28 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store i32 123, i32* %29, align 8, !tbaa !118
  %31 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 9
  store i8 0, i8* %31, align 4, !tbaa !41
  %32 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 10
  store i8 0, i8* %32, align 1, !tbaa !88
  %33 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 0, i32 11
  store i8 0, i8* %33, align 2, !tbaa !90
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %20, align 8, !tbaa !27
  %34 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 1
  store i32 0, i32* %34, align 8, !tbaa !119
  %35 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %19, i64 0, i32 2
  store i8 0, i8* %35, align 4, !tbaa !121
  %36 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 23
  %37 = bitcast %"class.appsdk::HIPCommandArgs"** %36 to i8**
  store i8* %18, i8** %37, align 8, !tbaa !40
  %38 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #26
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false) #24
  %39 = getelementptr inbounds %class.Histogram, %class.Histogram* %3, i64 0, i32 22
  %40 = bitcast %"class.appsdk::SDKTimer"** %39 to i8**
  store i8* %38, i8** %40, align 8, !tbaa !69
  %41 = bitcast i8* %18 to %"class.appsdk::SDKCmdArgsParser"*
  %42 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %41, i64 0, i32 12
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i64 0, i64 0), i64 30)
  %44 = call i32 @_ZN9Histogram10initializeEv(%class.Histogram* nonnull align 8 dereferenceable(144) %3)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %2
  %47 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %36, align 8, !tbaa !40
  %48 = bitcast %"class.appsdk::HIPCommandArgs"* %47 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %49 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %48, align 8, !tbaa !27
  %50 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %49, align 8
  %51 = call i32 %50(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %47, i32 %0, i8** %1)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = call i32 @_ZN9Histogram5setupEv(%class.Histogram* nonnull align 8 dereferenceable(144) %3)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = icmp ne i32 %54, 2
  %58 = zext i1 %57 to i32
  br label %65

59:                                               ; preds = %53
  %60 = call i32 @_ZN9Histogram3runEv(%class.Histogram* nonnull align 8 dereferenceable(144) %3)
  %61 = call i32 @_ZN9Histogram13verifyResultsEv(%class.Histogram* nonnull align 8 dereferenceable(144) %3)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @_ZN9Histogram7cleanupEv(%class.Histogram* nonnull align 8 dereferenceable(144) %3)
  call void @_ZN9Histogram10printStatsEv(%class.Histogram* nonnull align 8 dereferenceable(144) %3)
  br label %65

65:                                               ; preds = %63, %59, %46, %2, %56
  %66 = phi i32 [ %58, %56 ], [ 1, %2 ], [ 1, %46 ], [ 1, %59 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %4) #24
  ret i32 %66
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
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #13

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
  store i32 %1, i32* %23, align 4, !tbaa !117
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !122
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
  br i1 %37, label %28, label %38, !llvm.loop !123

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !117
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !122
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !33
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #24
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !117
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !124

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !23
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #24
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !26

72:                                               ; preds = %64
  %73 = getelementptr inbounds i8, i8* %67, i64 -8
  %74 = bitcast i8* %73 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %75, label %77

75:                                               ; preds = %72
  %76 = atomicrmw volatile add i32* %74, i32 -1 acq_rel, align 4
  br label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %74, align 8, !tbaa !16
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %74, align 8, !tbaa !16
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %69, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #24
  br label %84

84:                                               ; preds = %64, %80, %83
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %70) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #24
  br i1 %65, label %85, label %339

85:                                               ; preds = %84
  call void @exit(i32 0) #28
  unreachable

86:                                               ; preds = %3, %38
  %87 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %87) #24
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !117
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !122
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !33
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #24
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !117
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !124

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !23
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #24
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !26

117:                                              ; preds = %109
  %118 = getelementptr inbounds i8, i8* %112, i64 -8
  %119 = bitcast i8* %118 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %120, label %122

120:                                              ; preds = %117
  %121 = atomicrmw volatile add i32* %119, i32 -1 acq_rel, align 4
  br label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %119, align 8, !tbaa !16
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %119, align 8, !tbaa !16
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %114, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #24
  br label %129

129:                                              ; preds = %109, %125, %128
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %87) #24
  br i1 %110, label %130, label %131

130:                                              ; preds = %129
  call void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  call void @exit(i32 0) #28
  unreachable

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %132) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !117
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !122
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !33
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #24
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !117
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !124

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !117
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !122
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !33
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !33
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #24
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !117
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !124

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !23
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #24
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !26

191:                                              ; preds = %183
  %192 = getelementptr inbounds i8, i8* %186, i64 -8
  %193 = bitcast i8* %192 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %194, label %196

194:                                              ; preds = %191
  %195 = atomicrmw volatile add i32* %193, i32 -1 acq_rel, align 4
  br label %199

196:                                              ; preds = %191
  %197 = load i32, i32* %193, align 8, !tbaa !16
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %193, align 8, !tbaa !16
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #24
  br label %203

203:                                              ; preds = %183, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #24
  br label %204

204:                                              ; preds = %144, %203
  %205 = phi i1 [ %184, %203 ], [ true, %144 ]
  %206 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8, !tbaa !23
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #24
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !26

212:                                              ; preds = %204
  %213 = getelementptr inbounds i8, i8* %207, i64 -8
  %214 = bitcast i8* %213 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %215, label %217

215:                                              ; preds = %212
  %216 = atomicrmw volatile add i32* %214, i32 -1 acq_rel, align 4
  br label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %214, align 8, !tbaa !16
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %214, align 8, !tbaa !16
  br label %220

220:                                              ; preds = %217, %215
  %221 = phi i32 [ %216, %215 ], [ %218, %217 ]
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %209, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #24
  br label %224

224:                                              ; preds = %204, %220, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %210) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #24
  br i1 %205, label %225, label %237

225:                                              ; preds = %224
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !23
  %229 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %226, i8* %228)
  %230 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %229)
  call void @exit(i32 0) #28
  unreachable

231:                                              ; preds = %131
  %232 = landingpad { i8*, i32 }
          cleanup
  br label %235

233:                                              ; preds = %155
  %234 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #24
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #24
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi { i8*, i32 } [ %234, %233 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #24
  br label %341

237:                                              ; preds = %224
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !117
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !122
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !33
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #24
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !117
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !124

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #24
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !117
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !122
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !33
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !33
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #24
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !117
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !124

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !23
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #24
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !26

297:                                              ; preds = %289
  %298 = getelementptr inbounds i8, i8* %292, i64 -8
  %299 = bitcast i8* %298 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %300, label %302

300:                                              ; preds = %297
  %301 = atomicrmw volatile add i32* %299, i32 -1 acq_rel, align 4
  br label %305

302:                                              ; preds = %297
  %303 = load i32, i32* %299, align 8, !tbaa !16
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %299, align 8, !tbaa !16
  br label %305

305:                                              ; preds = %302, %300
  %306 = phi i32 [ %301, %300 ], [ %303, %302 ]
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %294, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #24
  br label %309

309:                                              ; preds = %289, %305, %308
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %295) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #24
  br label %310

310:                                              ; preds = %250, %309
  %311 = phi i1 [ %290, %309 ], [ true, %250 ]
  %312 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8, !tbaa !23
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #24
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !26

318:                                              ; preds = %310
  %319 = getelementptr inbounds i8, i8* %313, i64 -8
  %320 = bitcast i8* %319 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %321, label %323

321:                                              ; preds = %318
  %322 = atomicrmw volatile add i32* %320, i32 -1 acq_rel, align 4
  br label %326

323:                                              ; preds = %318
  %324 = load i32, i32* %320, align 8, !tbaa !16
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %320, align 8, !tbaa !16
  br label %326

326:                                              ; preds = %323, %321
  %327 = phi i32 [ %322, %321 ], [ %324, %323 ]
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %315, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #24
  br label %330

330:                                              ; preds = %310, %326, %329
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %316) #24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #24
  br i1 %311, label %331, label %339

331:                                              ; preds = %330
  %332 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 2
  store i8 1, i8* %332, align 4, !tbaa !121
  br label %339

333:                                              ; preds = %237
  %334 = landingpad { i8*, i32 }
          cleanup
  br label %337

335:                                              ; preds = %261
  %336 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #24
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #24
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi { i8*, i32 } [ %336, %335 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #24
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !66
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
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %18) #24
  %19 = icmp eq %"struct.appsdk::Option"* %18, %6
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %8
  tail call void @_ZdaPv(i8* nonnull %10) #27
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 12, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !23
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #24
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !26

28:                                               ; preds = %21
  %29 = getelementptr inbounds i8, i8* %23, i64 -8
  %30 = bitcast i8* %29 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %31, label %33

31:                                               ; preds = %28
  %32 = atomicrmw volatile add i32* %30, i32 -1 acq_rel, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %30, align 8, !tbaa !16
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %30, align 8, !tbaa !16
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %25, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %40

40:                                               ; preds = %21, %36, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #24
  %41 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !23
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #24
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !26

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, i8* %42, i64 -8
  %49 = bitcast i8* %48 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %50, label %52

50:                                               ; preds = %47
  %51 = atomicrmw volatile add i32* %49, i32 -1 acq_rel, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %49, align 8, !tbaa !16
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %49, align 8, !tbaa !16
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %44, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %59

59:                                               ; preds = %40, %55, %58
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %45) #24
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk14HIPCommandArgsD0Ev(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  tail call void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(93) %2) #24
  %3 = bitcast %"class.appsdk::HIPCommandArgs"* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %3) #27
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #7 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !33
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !33
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !65
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !66
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !65
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !125

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !66
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !66
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !61
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !64
  store i8 1, i8* %44, align 1, !tbaa !126
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !64
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), float* %52) #24
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %62
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = getelementptr inbounds i8, i8* %63, i64 32
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !127
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #24
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !64
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), double* %81) #24
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %91
  %93 = bitcast i8* %92 to %"class.std::basic_ios"*
  %94 = getelementptr inbounds i8, i8* %92, i64 32
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !127
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #24
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !64
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i32* %110) #24
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = bitcast i8* %121 to %"class.std::basic_ios"*
  %123 = getelementptr inbounds i8, i8* %121, i64 32
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !127
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #24
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !64
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !23
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !23
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #24
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !26

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, i8* %144, i64 -8
  %152 = bitcast i8* %151 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %153, label %155

153:                                              ; preds = %150
  %154 = atomicrmw volatile add i32* %152, i32 -1 acq_rel, align 4
  br label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %152, align 8, !tbaa !16
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %152, align 8, !tbaa !16
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %147, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #24
  br label %162

162:                                              ; preds = %161, %158, %146
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #24
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !23
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !26

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !128
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !44
  store i8 0, i8* %144, align 1, !tbaa !33
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #24
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %182
  %184 = bitcast i8* %183 to %"class.std::basic_ios"*
  %185 = getelementptr inbounds i8, i8* %183, i64 32
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 8, !tbaa !127
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #24
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !65
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !125

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #20

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !94
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !100
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !113
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !94
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !100
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !113
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i64 0, i64 0), i64 25)
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
  %56 = load i32, i32* %42, align 8, !tbaa !65
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !66
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !23
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !44
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !94
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !100
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #24
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #24
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !60, !alias.scope !129
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
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
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #24
  br label %87

91:                                               ; preds = %85
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !60, !noalias !132
  store i8* %95, i8** %47, align 8, !tbaa !60, !alias.scope !132
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !23, !noalias !132
  %96 = load i8*, i8** %47, align 8, !tbaa !23
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !44
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #24
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !26

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %96, i64 -8
  %106 = bitcast i8* %105 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %107, label %109

107:                                              ; preds = %104
  %108 = atomicrmw volatile add i32* %106, i32 -1 acq_rel, align 4
  br label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %106, align 8, !tbaa !16
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %106, align 8, !tbaa !16
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #24
  br label %116

116:                                              ; preds = %101, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #24
  %117 = load i8*, i8** %46, align 8, !tbaa !23
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #24
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !26

121:                                              ; preds = %116
  %122 = getelementptr inbounds i8, i8* %117, i64 -8
  %123 = bitcast i8* %122 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %124, label %126

124:                                              ; preds = %121
  %125 = atomicrmw volatile add i32* %123, i32 -1 acq_rel, align 4
  br label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %123, align 8, !tbaa !16
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %123, align 8, !tbaa !16
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %119, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #24
  br label %133

133:                                              ; preds = %116, %129, %132
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %49) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #24
  br label %142

134:                                              ; preds = %91
  %135 = landingpad { i8*, i32 }
          cleanup
  br label %138

136:                                              ; preds = %93
  %137 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #24
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { i8*, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #24
  br label %87

140:                                              ; preds = %59
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !94
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !100
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #24
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !66
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !60, !alias.scope !135
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !23, !noalias !135
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !44, !noalias !135
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 2)
          to label %165 unwind label %167

165:                                              ; preds = %163
  %166 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %156)
          to label %169 unwind label %167

167:                                              ; preds = %165, %163, %142
  %168 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #24
  br label %87

169:                                              ; preds = %165
  %170 = load i8*, i8** %51, align 8, !tbaa !23
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !44
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !23
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #24
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !26

180:                                              ; preds = %175
  %181 = getelementptr inbounds i8, i8* %176, i64 -8
  %182 = bitcast i8* %181 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %183, label %185

183:                                              ; preds = %180
  %184 = atomicrmw volatile add i32* %182, i32 -1 acq_rel, align 4
  br label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %182, align 8, !tbaa !16
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %182, align 8, !tbaa !16
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #24
  br label %192

192:                                              ; preds = %175, %188, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #24
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !66
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !23
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !44
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !27
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !94
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !100
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !113
  br i1 %199, label %216, label %212

212:                                              ; preds = %192
  %213 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %195, i64 %198)
  br label %218

214:                                              ; preds = %169
  %215 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #24
  br label %87

216:                                              ; preds = %192
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #24
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !66
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #24
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !23
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !44
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !23
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #24
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !26

235:                                              ; preds = %230
  %236 = getelementptr inbounds i8, i8* %231, i64 -8
  %237 = bitcast i8* %236 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %238, label %240

238:                                              ; preds = %235
  %239 = atomicrmw volatile add i32* %237, i32 -1 acq_rel, align 4
  br label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %237, align 8, !tbaa !16
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %237, align 8, !tbaa !16
  br label %243

243:                                              ; preds = %240, %238
  %244 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %233, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #24
  br label %247

247:                                              ; preds = %230, %243, %246
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %55) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #24
  %248 = add nuw nsw i64 %60, 1
  %249 = load i32, i32* %42, align 8, !tbaa !65
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !138

252:                                              ; preds = %224
  %253 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #24
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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_histogram.cpp() #7 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #24
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*)** @_Z12histogram256PjS_ to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inaccessiblememonly nofree nounwind willreturn }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 28}
!8 = !{!"_ZTS9Histogram", !9, i64 0, !9, i64 4, !9, i64 8, !4, i64 16, !9, i64 24, !9, i64 28, !4, i64 32, !4, i64 40, !4, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !11, i64 80, !4, i64 88, !4, i64 96, !9, i64 104, !12, i64 108, !12, i64 109, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !4, i64 128, !4, i64 136}
!9 = !{!"int", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = !{!9, !9, i64 0}
!17 = !{!8, !9, i64 24}
!18 = distinct !{!18, !14}
!19 = !{!8, !4, i64 16}
!20 = !{!8, !9, i64 0}
!21 = distinct !{!21, !14}
!22 = !{!8, !4, i64 32}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSSs", !25, i64 0}
!25 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !6, i64 0}
!29 = !{!30, !4, i64 240}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !12, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!31 = !{!32, !5, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !12, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!33 = !{!5, !5, i64 0}
!34 = !{!8, !4, i64 48}
!35 = !{!8, !9, i64 8}
!36 = !{!8, !4, i64 40}
!37 = !{!8, !12, i64 108}
!38 = !{i8 0, i8 2}
!39 = !{!8, !9, i64 112}
!40 = !{!8, !4, i64 136}
!41 = !{!42, !12, i64 76}
!42 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !9, i64 8, !9, i64 12, !9, i64 16, !4, i64 24, !4, i64 32, !12, i64 40, !24, i64 48, !43, i64 56, !12, i64 76, !12, i64 77, !12, i64 78, !24, i64 80}
!43 = !{!"_ZTSN6appsdk13sdkVersionStrE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16}
!44 = !{!45, !11, i64 0}
!45 = !{!"_ZTSNSs9_Rep_baseE", !11, i64 0, !11, i64 8, !9, i64 16}
!46 = !{!47, !9, i64 332}
!47 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !11, i64 256, !11, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !5, i64 284, !5, i64 296, !9, i64 308, !9, i64 312, !9, i64 316, !11, i64 320, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !9, i64 348, !9, i64 352, !48, i64 356, !9, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !11, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !5, i64 396, !9, i64 652, !9, i64 656, !9, i64 660, !9, i64 664, !9, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !11, i64 712, !11, i64 720, !11, i64 728, !9, i64 736, !9, i64 740, !9, i64 744, !9, i64 748, !9, i64 752, !9, i64 756, !9, i64 760, !9, i64 764, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !9, i64 784, !9, i64 788}
!48 = !{!"_ZTS15hipDeviceArch_t", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 2, !9, i64 2, !9, i64 2}
!49 = !{!47, !9, i64 328}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !5, i64 0}
!52 = !{!8, !9, i64 4}
!53 = !{!8, !9, i64 116}
!54 = !{!8, !9, i64 120}
!55 = !{!8, !4, i64 88}
!56 = !{!8, !9, i64 124}
!57 = !{!8, !4, i64 96}
!58 = distinct !{!58, !14, !15}
!59 = distinct !{!59, !14}
!60 = !{!25, !4, i64 0}
!61 = !{!62, !63, i64 32}
!62 = !{!"_ZTSN6appsdk6OptionE", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !63, i64 32, !4, i64 40}
!63 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!64 = !{!62, !4, i64 40}
!65 = !{!42, !9, i64 8}
!66 = !{!42, !4, i64 32}
!67 = distinct !{!67, !14}
!68 = !{!8, !9, i64 104}
!69 = !{!8, !4, i64 128}
!70 = !{!71, !4, i64 8}
!71 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!73 = !{!71, !4, i64 0}
!74 = !{!8, !10, i64 56}
!75 = !{!76, !77, i64 8}
!76 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !24, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!77 = !{!"long long", !5, i64 0}
!78 = !{!71, !4, i64 16}
!79 = !{!80, !11, i64 0}
!80 = !{!"_ZTS7timeval", !11, i64 0, !11, i64 8}
!81 = !{!80, !11, i64 8}
!82 = !{!76, !77, i64 24}
!83 = !{!76, !77, i64 16}
!84 = distinct !{!84, !14}
!85 = !{!8, !10, i64 64}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = !{!42, !12, i64 77}
!89 = distinct !{!89, !14}
!90 = !{!42, !12, i64 78}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!93 = distinct !{!93, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!94 = !{!95, !96, i64 24}
!95 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !96, i64 24, !97, i64 28, !97, i64 32, !4, i64 40, !98, i64 48, !5, i64 64, !9, i64 192, !4, i64 200, !99, i64 208}
!96 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!97 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!98 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !11, i64 8}
!99 = !{!"_ZTSSt6locale", !4, i64 0}
!100 = !{!96, !96, i64 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!103 = distinct !{!103, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!106 = distinct !{!106, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!109 = distinct !{!109, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!112 = distinct !{!112, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!113 = !{!95, !11, i64 16}
!114 = distinct !{!114, !14}
!115 = !{!8, !12, i64 109}
!116 = !{!43, !9, i64 16}
!117 = !{!42, !9, i64 12}
!118 = !{!42, !9, i64 16}
!119 = !{!120, !9, i64 88}
!120 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !9, i64 88, !12, i64 92}
!121 = !{!120, !12, i64 92}
!122 = !{!42, !4, i64 24}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = !{!12, !12, i64 0}
!127 = !{!95, !97, i64 32}
!128 = !{!45, !9, i64 16}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!131 = distinct !{!131, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!134 = distinct !{!134, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!137 = distinct !{!137, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!138 = distinct !{!138, !14}
