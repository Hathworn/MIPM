; ModuleID = 'matrixmultiplication/matrixmulplication.cpp'
source_filename = "matrixmultiplication/matrixmulplication.cpp"
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
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%class.MatrixMultiplication = type { i32, double, double, double, float*, i32, i32, float*, i32, i32, float*, float*, i32, float*, float*, float*, i8, i32, i32, i32, [2 x i64], [2 x i64], i64, i64, i32, i8, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"* }
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
@_Z9mmmKernelP15HIP_vector_typeIfLj4EES1_S1_jj = dso_local constant void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32)* @_Z24__device_stub__mmmKernelP15HIP_vector_typeIfLj4EES1_S1_jj, align 8
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (input0)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"matrixmultiplication/matrixmulplication.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (input1)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (output)\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Failed to allocate host memory. (verificationOutput)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Input0\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Input1\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"height0\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"height of matrix A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"width0\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"width of matrix A and Height of matrix B\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"width1\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"width of matrix B\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"blockSize\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"Use local memory of dimensions blockSize x blockSize\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"eAppGflops\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"Prints GFLOPS calculated from transfer + kernel time\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Error: Matrix dimensions can not be 0\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"MatrixA\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"MatrixB\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"Time(sec)\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"[Transfer+kernel]Time(sec)\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"GFlops achieved : \00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"kernelTime(sec)\00", align 1
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
@.str.69 = private unnamed_addr constant [30 x i8] c"HIP-Examples-Application-v1.0\00", align 1
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
@.str.87 = private unnamed_addr constant [33 x i8] c"Cannot fill array. NULL pointer.\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [46 x i8] c"_Z9mmmKernelP15HIP_vector_typeIfLj4EES1_S1_jj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_matrixmulplication.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__mmmKernelP15HIP_vector_typeIfLj4EES1_S1_jj(%struct.HIP_vector_type* %0, %struct.HIP_vector_type* %1, %struct.HIP_vector_type* %2, i32 %3, i32 %4) #3 {
  %6 = alloca %struct.HIP_vector_type*, align 8
  %7 = alloca %struct.HIP_vector_type*, align 8
  %8 = alloca %struct.HIP_vector_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %6, align 8, !tbaa !3
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %7, align 8, !tbaa !3
  store %struct.HIP_vector_type* %2, %struct.HIP_vector_type** %8, align 8, !tbaa !3
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
  %21 = bitcast i8** %20 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %8, %struct.HIP_vector_type*** %21, align 16
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32)** @_Z9mmmKernelP15HIP_vector_typeIfLj4EES1_S1_jj to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local i32 @_ZN20MatrixMultiplication25setupMatrixMultiplicationEv(%class.MatrixMultiplication* nocapture nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %20 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 5
  %21 = load i32, i32* %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 6
  %23 = load i32, i32* %22, align 4, !tbaa !14
  %24 = shl i32 %21, 2
  %25 = mul i32 %24, %23
  %26 = zext i32 %25 to i64
  %27 = tail call noalias align 16 i8* @malloc(i64 %26) #26
  %28 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 4
  %29 = bitcast float** %28 to i8**
  store i8* %27, i8** %29, align 8, !tbaa !15
  %30 = icmp eq i8* %27, null
  %31 = bitcast i8* %27 to float*
  br i1 %30, label %32, label %94

32:                                               ; preds = %1
  %33 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %33) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
          to label %34 unwind label %88

34:                                               ; preds = %32
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %35 unwind label %90

35:                                               ; preds = %34
  %36 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !16
  %38 = getelementptr inbounds i8, i8* %37, i64 -24
  %39 = bitcast i8* %38 to %"struct.std::basic_string<char>::_Rep"*
  %40 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %40) #26
  %41 = icmp eq i8* %38, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %41, label %54, label %42, !prof !19

42:                                               ; preds = %35
  %43 = getelementptr inbounds i8, i8* %37, i64 -8
  %44 = bitcast i8* %43 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %45, label %47

45:                                               ; preds = %42
  %46 = atomicrmw volatile add i32* %44, i32 -1 acq_rel, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %44, align 8, !tbaa !7
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %44, align 8, !tbaa !7
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %39, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %54

54:                                               ; preds = %35, %50, %53
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %33) #26
  %55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 43)
  %57 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %58 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 264)
  %59 = bitcast %"class.std::basic_ostream"* %58 to i8**
  %60 = load i8*, i8** %59, align 8, !tbaa !20
  %61 = getelementptr i8, i8* %60, i64 -24
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = bitcast %"class.std::basic_ostream"* %58 to i8*
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  %66 = getelementptr inbounds i8, i8* %65, i64 240
  %67 = bitcast i8* %66 to %"class.std::ctype"**
  %68 = load %"class.std::ctype"*, %"class.std::ctype"** %67, align 8, !tbaa !22
  %69 = icmp eq %"class.std::ctype"* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

71:                                               ; preds = %54
  %72 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %68, i64 0, i32 8
  %73 = load i8, i8* %72, align 8, !tbaa !24
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %68, i64 0, i32 9, i64 10
  %77 = load i8, i8* %76, align 1, !tbaa !26
  br label %84

78:                                               ; preds = %71
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %68)
  %79 = bitcast %"class.std::ctype"* %68 to i8 (%"class.std::ctype"*, i8)***
  %80 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %79, align 8, !tbaa !20
  %81 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %80, i64 6
  %82 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %81, align 8
  %83 = call signext i8 %82(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %68, i8 signext 10)
  br label %84

84:                                               ; preds = %75, %78
  %85 = phi i8 [ %77, %75 ], [ %83, %78 ]
  %86 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %58, i8 signext %85)
  %87 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %86)
  br label %384

88:                                               ; preds = %32
  %89 = landingpad { i8*, i32 }
          cleanup
  br label %92

90:                                               ; preds = %34
  %91 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #26
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { i8*, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %33) #26
  br label %386

94:                                               ; preds = %1
  %95 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 8
  %96 = load i32, i32* %95, align 8, !tbaa !27
  %97 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 9
  %98 = load i32, i32* %97, align 4, !tbaa !28
  %99 = shl i32 %96, 2
  %100 = mul i32 %99, %98
  %101 = zext i32 %100 to i64
  %102 = tail call noalias align 16 i8* @malloc(i64 %101) #26
  %103 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 7
  %104 = bitcast float** %103 to i8**
  store i8* %102, i8** %104, align 8, !tbaa !29
  %105 = icmp eq i8* %102, null
  br i1 %105, label %106, label %168

106:                                              ; preds = %94
  %107 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %107) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
          to label %108 unwind label %162

108:                                              ; preds = %106
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %10)
          to label %109 unwind label %164

109:                                              ; preds = %108
  %110 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8, !tbaa !16
  %112 = getelementptr inbounds i8, i8* %111, i64 -24
  %113 = bitcast i8* %112 to %"struct.std::basic_string<char>::_Rep"*
  %114 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %114) #26
  %115 = icmp eq i8* %112, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %115, label %128, label %116, !prof !19

116:                                              ; preds = %109
  %117 = getelementptr inbounds i8, i8* %111, i64 -8
  %118 = bitcast i8* %117 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %119, label %121

119:                                              ; preds = %116
  %120 = atomicrmw volatile add i32* %118, i32 -1 acq_rel, align 4
  br label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %118, align 8, !tbaa !7
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %118, align 8, !tbaa !7
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %113, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #26
  br label %128

128:                                              ; preds = %109, %124, %127
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %114) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %107) #26
  %129 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %130 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 43)
  %131 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %132 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 270)
  %133 = bitcast %"class.std::basic_ostream"* %132 to i8**
  %134 = load i8*, i8** %133, align 8, !tbaa !20
  %135 = getelementptr i8, i8* %134, i64 -24
  %136 = bitcast i8* %135 to i64*
  %137 = load i64, i64* %136, align 8
  %138 = bitcast %"class.std::basic_ostream"* %132 to i8*
  %139 = getelementptr inbounds i8, i8* %138, i64 %137
  %140 = getelementptr inbounds i8, i8* %139, i64 240
  %141 = bitcast i8* %140 to %"class.std::ctype"**
  %142 = load %"class.std::ctype"*, %"class.std::ctype"** %141, align 8, !tbaa !22
  %143 = icmp eq %"class.std::ctype"* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %128
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

145:                                              ; preds = %128
  %146 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %142, i64 0, i32 8
  %147 = load i8, i8* %146, align 8, !tbaa !24
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %142, i64 0, i32 9, i64 10
  %151 = load i8, i8* %150, align 1, !tbaa !26
  br label %158

152:                                              ; preds = %145
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %142)
  %153 = bitcast %"class.std::ctype"* %142 to i8 (%"class.std::ctype"*, i8)***
  %154 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %153, align 8, !tbaa !20
  %155 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %154, i64 6
  %156 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %155, align 8
  %157 = call signext i8 %156(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %142, i8 signext 10)
  br label %158

158:                                              ; preds = %149, %152
  %159 = phi i8 [ %151, %149 ], [ %157, %152 ]
  %160 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %132, i8 signext %159)
  %161 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %160)
  br label %384

162:                                              ; preds = %106
  %163 = landingpad { i8*, i32 }
          cleanup
  br label %166

164:                                              ; preds = %108
  %165 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10) #26
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi { i8*, i32 } [ %165, %164 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %107) #26
  br label %386

168:                                              ; preds = %94
  %169 = tail call i32 @_ZN6appsdk10fillRandomIfEEiPT_iiS1_S1_j(float* nonnull %31, i32 %21, i32 %23, float 0.000000e+00, float 1.000000e+01, i32 123)
  %170 = load float*, float** %103, align 8, !tbaa !29
  %171 = load i32, i32* %95, align 8, !tbaa !27
  %172 = load i32, i32* %97, align 4, !tbaa !28
  %173 = tail call i32 @_ZN6appsdk10fillRandomIfEEiPT_iiS1_S1_j(float* %170, i32 %171, i32 %172, float 0.000000e+00, float 1.000000e+01, i32 123)
  %174 = load i32, i32* %22, align 4, !tbaa !14
  %175 = load i32, i32* %95, align 8, !tbaa !27
  %176 = shl i32 %174, 2
  %177 = mul i32 %176, %175
  %178 = zext i32 %177 to i64
  %179 = tail call noalias align 16 i8* @malloc(i64 %178) #26
  %180 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 10
  %181 = bitcast float** %180 to i8**
  store i8* %179, i8** %181, align 8, !tbaa !30
  %182 = icmp eq i8* %179, null
  br i1 %182, label %183, label %245

183:                                              ; preds = %168
  %184 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %184) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
          to label %185 unwind label %239

185:                                              ; preds = %183
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %12)
          to label %186 unwind label %241

186:                                              ; preds = %185
  %187 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8, !tbaa !16
  %189 = getelementptr inbounds i8, i8* %188, i64 -24
  %190 = bitcast i8* %189 to %"struct.std::basic_string<char>::_Rep"*
  %191 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %191) #26
  %192 = icmp eq i8* %189, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %192, label %205, label %193, !prof !19

193:                                              ; preds = %186
  %194 = getelementptr inbounds i8, i8* %188, i64 -8
  %195 = bitcast i8* %194 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %196, label %198

196:                                              ; preds = %193
  %197 = atomicrmw volatile add i32* %195, i32 -1 acq_rel, align 4
  br label %201

198:                                              ; preds = %193
  %199 = load i32, i32* %195, align 8, !tbaa !7
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %195, align 8, !tbaa !7
  br label %201

201:                                              ; preds = %198, %196
  %202 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %190, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %205

205:                                              ; preds = %186, %201, %204
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %191) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %184) #26
  %206 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %207 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 43)
  %208 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %209 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 280)
  %210 = bitcast %"class.std::basic_ostream"* %209 to i8**
  %211 = load i8*, i8** %210, align 8, !tbaa !20
  %212 = getelementptr i8, i8* %211, i64 -24
  %213 = bitcast i8* %212 to i64*
  %214 = load i64, i64* %213, align 8
  %215 = bitcast %"class.std::basic_ostream"* %209 to i8*
  %216 = getelementptr inbounds i8, i8* %215, i64 %214
  %217 = getelementptr inbounds i8, i8* %216, i64 240
  %218 = bitcast i8* %217 to %"class.std::ctype"**
  %219 = load %"class.std::ctype"*, %"class.std::ctype"** %218, align 8, !tbaa !22
  %220 = icmp eq %"class.std::ctype"* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %205
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

222:                                              ; preds = %205
  %223 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %219, i64 0, i32 8
  %224 = load i8, i8* %223, align 8, !tbaa !24
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %219, i64 0, i32 9, i64 10
  %228 = load i8, i8* %227, align 1, !tbaa !26
  br label %235

229:                                              ; preds = %222
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %219)
  %230 = bitcast %"class.std::ctype"* %219 to i8 (%"class.std::ctype"*, i8)***
  %231 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %230, align 8, !tbaa !20
  %232 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %231, i64 6
  %233 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %232, align 8
  %234 = call signext i8 %233(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %219, i8 signext 10)
  br label %235

235:                                              ; preds = %226, %229
  %236 = phi i8 [ %228, %226 ], [ %234, %229 ]
  %237 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %209, i8 signext %236)
  %238 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %237)
  br label %384

239:                                              ; preds = %183
  %240 = landingpad { i8*, i32 }
          cleanup
  br label %243

241:                                              ; preds = %185
  %242 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12) #26
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi { i8*, i32 } [ %242, %241 ], [ %240, %239 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %184) #26
  br label %386

245:                                              ; preds = %168
  %246 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 27
  %247 = bitcast %"class.appsdk::HIPCommandArgs"** %246 to %"class.appsdk::SDKCmdArgsParser"**
  %248 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %247, align 8, !tbaa !31
  %249 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %248, i64 0, i32 10
  %250 = load i8, i8* %249, align 1, !tbaa !32, !range !35
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %319, label %252

252:                                              ; preds = %245
  %253 = call i8* @calloc(i64 1, i64 %178)
  %254 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 11
  %255 = bitcast float** %254 to i8**
  store i8* %253, i8** %255, align 8, !tbaa !36
  %256 = icmp eq i8* %253, null
  br i1 %256, label %257, label %319

257:                                              ; preds = %252
  %258 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %258) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %259 unwind label %313

259:                                              ; preds = %257
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %14)
          to label %260 unwind label %315

260:                                              ; preds = %259
  %261 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8, !tbaa !16
  %263 = getelementptr inbounds i8, i8* %262, i64 -24
  %264 = bitcast i8* %263 to %"struct.std::basic_string<char>::_Rep"*
  %265 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %265) #26
  %266 = icmp eq i8* %263, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %266, label %279, label %267, !prof !19

267:                                              ; preds = %260
  %268 = getelementptr inbounds i8, i8* %262, i64 -8
  %269 = bitcast i8* %268 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %270, label %272

270:                                              ; preds = %267
  %271 = atomicrmw volatile add i32* %269, i32 -1 acq_rel, align 4
  br label %275

272:                                              ; preds = %267
  %273 = load i32, i32* %269, align 8, !tbaa !7
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %269, align 8, !tbaa !7
  br label %275

275:                                              ; preds = %272, %270
  %276 = phi i32 [ %271, %270 ], [ %273, %272 ]
  %277 = icmp slt i32 %276, 1
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %264, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %279

279:                                              ; preds = %260, %275, %278
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %265) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %258) #26
  %280 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %281 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 43)
  %282 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %283 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 287)
  %284 = bitcast %"class.std::basic_ostream"* %283 to i8**
  %285 = load i8*, i8** %284, align 8, !tbaa !20
  %286 = getelementptr i8, i8* %285, i64 -24
  %287 = bitcast i8* %286 to i64*
  %288 = load i64, i64* %287, align 8
  %289 = bitcast %"class.std::basic_ostream"* %283 to i8*
  %290 = getelementptr inbounds i8, i8* %289, i64 %288
  %291 = getelementptr inbounds i8, i8* %290, i64 240
  %292 = bitcast i8* %291 to %"class.std::ctype"**
  %293 = load %"class.std::ctype"*, %"class.std::ctype"** %292, align 8, !tbaa !22
  %294 = icmp eq %"class.std::ctype"* %293, null
  br i1 %294, label %295, label %296

295:                                              ; preds = %279
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

296:                                              ; preds = %279
  %297 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %293, i64 0, i32 8
  %298 = load i8, i8* %297, align 8, !tbaa !24
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %293, i64 0, i32 9, i64 10
  %302 = load i8, i8* %301, align 1, !tbaa !26
  br label %309

303:                                              ; preds = %296
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %293)
  %304 = bitcast %"class.std::ctype"* %293 to i8 (%"class.std::ctype"*, i8)***
  %305 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %304, align 8, !tbaa !20
  %306 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %305, i64 6
  %307 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %306, align 8
  %308 = call signext i8 %307(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %293, i8 signext 10)
  br label %309

309:                                              ; preds = %300, %303
  %310 = phi i8 [ %302, %300 ], [ %308, %303 ]
  %311 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %283, i8 signext %310)
  %312 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %311)
  br label %384

313:                                              ; preds = %257
  %314 = landingpad { i8*, i32 }
          cleanup
  br label %317

315:                                              ; preds = %259
  %316 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #26
  br label %317

317:                                              ; preds = %315, %313
  %318 = phi { i8*, i32 } [ %316, %315 ], [ %314, %313 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %258) #26
  br label %386

319:                                              ; preds = %252, %245
  %320 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %248, i64 0, i32 9
  %321 = load i8, i8* %320, align 4, !tbaa !37, !range !35
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %384

323:                                              ; preds = %319
  %324 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %324) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %325 unwind label %372

325:                                              ; preds = %323
  %326 = load float*, float** %28, align 8, !tbaa !15
  %327 = load i32, i32* %20, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %16, float* %326, i32 %327, i32 1)
          to label %328 unwind label %374

328:                                              ; preds = %325
  %329 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8, !tbaa !16
  %331 = getelementptr inbounds i8, i8* %330, i64 -24
  %332 = bitcast i8* %331 to %"struct.std::basic_string<char>::_Rep"*
  %333 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %333) #26
  %334 = icmp eq i8* %331, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %334, label %347, label %335, !prof !19

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %332, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %347

347:                                              ; preds = %328, %343, %346
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %333) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %324) #26
  %348 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %348) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %349 unwind label %378

349:                                              ; preds = %347
  %350 = load float*, float** %103, align 8, !tbaa !29
  %351 = load i32, i32* %95, align 8, !tbaa !27
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %18, float* %350, i32 %351, i32 1)
          to label %352 unwind label %380

352:                                              ; preds = %349
  %353 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %354 = load i8*, i8** %353, align 8, !tbaa !16
  %355 = getelementptr inbounds i8, i8* %354, i64 -24
  %356 = bitcast i8* %355 to %"struct.std::basic_string<char>::_Rep"*
  %357 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %357) #26
  %358 = icmp eq i8* %355, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %358, label %371, label %359, !prof !19

359:                                              ; preds = %352
  %360 = getelementptr inbounds i8, i8* %354, i64 -8
  %361 = bitcast i8* %360 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %362, label %364

362:                                              ; preds = %359
  %363 = atomicrmw volatile add i32* %361, i32 -1 acq_rel, align 4
  br label %367

364:                                              ; preds = %359
  %365 = load i32, i32* %361, align 8, !tbaa !7
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* %361, align 8, !tbaa !7
  br label %367

367:                                              ; preds = %364, %362
  %368 = phi i32 [ %363, %362 ], [ %365, %364 ]
  %369 = icmp slt i32 %368, 1
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %356, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %371

371:                                              ; preds = %352, %367, %370
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %357) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %348) #26
  br label %384

372:                                              ; preds = %323
  %373 = landingpad { i8*, i32 }
          cleanup
  br label %376

374:                                              ; preds = %325
  %375 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16) #26
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi { i8*, i32 } [ %375, %374 ], [ %373, %372 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %324) #26
  br label %386

378:                                              ; preds = %347
  %379 = landingpad { i8*, i32 }
          cleanup
  br label %382

380:                                              ; preds = %349
  %381 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #26
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi { i8*, i32 } [ %381, %380 ], [ %379, %378 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %348) #26
  br label %386

384:                                              ; preds = %158, %319, %371, %309, %235, %84
  %385 = phi i32 [ 1, %84 ], [ 1, %158 ], [ 1, %235 ], [ 1, %309 ], [ 0, %371 ], [ 0, %319 ]
  ret i32 %385

386:                                              ; preds = %166, %382, %376, %317, %243, %92
  %387 = phi { i8*, i32 } [ %93, %92 ], [ %167, %166 ], [ %244, %243 ], [ %318, %317 ], [ %383, %382 ], [ %377, %376 ]
  resume { i8*, i32 } %387
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #8 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !16
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !38
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !20
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !22
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !24
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !26
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !20
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
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.87, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %13 unwind label %33

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !16
  %16 = getelementptr inbounds i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  %19 = icmp eq i8* %16, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %19, label %32, label %20, !prof !19

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
  %58 = tail call i32 @rand() #26
  %59 = sitofp i32 %58 to double
  %60 = fmul contract double %44, %59
  %61 = fmul contract double %60, 0x3E00000000000000
  %62 = fptrunc double %61 to float
  %63 = fadd contract float %62, %3
  %64 = getelementptr inbounds float, float* %0, i64 %57
  store float %63, float* %64, align 4, !tbaa !40
  %65 = add nuw nsw i64 %56, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %67, label %55, !llvm.loop !42

67:                                               ; preds = %55
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %50
  br i1 %69, label %70, label %52, !llvm.loop !44

70:                                               ; preds = %67, %40, %32
  %71 = phi i32 [ 1, %32 ], [ 0, %40 ], [ 0, %67 ]
  ret i32 %71
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* %0, float* %1, i32 %2, i32 %3) local_unnamed_addr #8 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !16
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !38
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
  %26 = getelementptr inbounds float, float* %1, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !40
  %28 = fpext float %27 to double
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !45

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !46

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !46

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @_ZN20MatrixMultiplication8setupHIPEv(%class.MatrixMultiplication* nocapture nonnull readnone align 8 %0) local_unnamed_addr #12 align 2 {
  ret i32 0
}

; Function Attrs: uwtable
define dso_local i32 @_ZN20MatrixMultiplication10runKernelsEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca %struct.HIP_vector_type*, align 8
  %3 = alloca %struct.HIP_vector_type*, align 8
  %4 = alloca %struct.HIP_vector_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [5 x i8*], align 16
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = bitcast float** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #26
  %16 = bitcast float** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #26
  %17 = bitcast float** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #26
  %18 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 13
  %19 = bitcast float** %18 to i8**
  %20 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 5
  %21 = load i32, i32* %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 6
  %23 = load i32, i32* %22, align 4, !tbaa !14
  %24 = mul nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call i32 @hipHostMalloc(i8** nonnull %19, i64 %26, i32 0)
  %28 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 14
  %29 = bitcast float** %28 to i8**
  %30 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 8
  %31 = load i32, i32* %30, align 8, !tbaa !27
  %32 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 9
  %33 = load i32, i32* %32, align 4, !tbaa !28
  %34 = mul nsw i32 %33, %31
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 2
  %37 = tail call i32 @hipHostMalloc(i8** nonnull %29, i64 %36, i32 0)
  %38 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 15
  %39 = bitcast float** %38 to i8**
  %40 = load i32, i32* %30, align 8, !tbaa !27
  %41 = load i32, i32* %22, align 4, !tbaa !14
  %42 = mul nsw i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  %45 = tail call i32 @hipHostMalloc(i8** nonnull %39, i64 %44, i32 0)
  %46 = bitcast float** %12 to i8**
  %47 = load i8*, i8** %19, align 8, !tbaa !47
  %48 = call i32 @hipHostGetDevicePointer(i8** nonnull %46, i8* %47, i32 0)
  %49 = bitcast float** %13 to i8**
  %50 = load i8*, i8** %29, align 8, !tbaa !48
  %51 = call i32 @hipHostGetDevicePointer(i8** nonnull %49, i8* %50, i32 0)
  %52 = bitcast float** %14 to i8**
  %53 = load i8*, i8** %39, align 8, !tbaa !49
  %54 = call i32 @hipHostGetDevicePointer(i8** nonnull %52, i8* %53, i32 0)
  %55 = load i8*, i8** %46, align 8, !tbaa !3
  %56 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 4
  %57 = bitcast float** %56 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !15
  %59 = load i32, i32* %20, align 8, !tbaa !9
  %60 = load i32, i32* %22, align 4, !tbaa !14
  %61 = mul nsw i32 %60, %59
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 2
  %64 = call i32 @hipMemcpy(i8* %55, i8* %58, i64 %63, i32 1)
  %65 = load i8*, i8** %49, align 8, !tbaa !3
  %66 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 7
  %67 = bitcast float** %66 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !29
  %69 = load i32, i32* %30, align 8, !tbaa !27
  %70 = load i32, i32* %32, align 4, !tbaa !28
  %71 = mul nsw i32 %70, %69
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 2
  %74 = call i32 @hipMemcpy(i8* %65, i8* %68, i64 %73, i32 1)
  %75 = load i32, i32* %30, align 8, !tbaa !27
  %76 = sdiv i32 %75, 4
  %77 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 12
  %78 = load i32, i32* %77, align 8, !tbaa !50
  %79 = udiv i32 %76, %78
  %80 = load i32, i32* %22, align 4, !tbaa !14
  %81 = sdiv i32 %80, 4
  %82 = udiv i32 %81, %78
  %83 = zext i32 %82 to i64
  %84 = shl nuw i64 %83, 32
  %85 = zext i32 %79 to i64
  %86 = or i64 %84, %85
  %87 = zext i32 %78 to i64
  %88 = shl nuw i64 %87, 32
  %89 = or i64 %88, %87
  %90 = call i32 @__hipPushCallConfiguration(i64 %86, i32 1, i64 %89, i32 1, i64 0, %struct.ihipStream_t* null)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %1
  %93 = bitcast float** %18 to %struct.HIP_vector_type**
  %94 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %93, align 8, !tbaa !47
  %95 = bitcast float** %28 to %struct.HIP_vector_type**
  %96 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %95, align 8, !tbaa !48
  %97 = bitcast float** %38 to %struct.HIP_vector_type**
  %98 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %97, align 8, !tbaa !49
  %99 = load i32, i32* %20, align 8, !tbaa !9
  %100 = load i32, i32* %30, align 8, !tbaa !27
  %101 = bitcast %struct.HIP_vector_type** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %101)
  %102 = bitcast %struct.HIP_vector_type** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %102)
  %103 = bitcast %struct.HIP_vector_type** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %103)
  %104 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %104)
  %105 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %105)
  %106 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %106)
  %107 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %107)
  %108 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108)
  %109 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109)
  %110 = bitcast [5 x i8*]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %110)
  store %struct.HIP_vector_type* %94, %struct.HIP_vector_type** %2, align 8, !tbaa !3
  store %struct.HIP_vector_type* %96, %struct.HIP_vector_type** %3, align 8, !tbaa !3
  store %struct.HIP_vector_type* %98, %struct.HIP_vector_type** %4, align 8, !tbaa !3
  store i32 %99, i32* %5, align 4, !tbaa !7
  store i32 %100, i32* %6, align 4, !tbaa !7
  %111 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %112 = bitcast [5 x i8*]* %11 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %2, %struct.HIP_vector_type*** %112, align 16
  %113 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 1
  %114 = bitcast i8** %113 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %3, %struct.HIP_vector_type*** %114, align 8
  %115 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 2
  %116 = bitcast i8** %115 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %4, %struct.HIP_vector_type*** %116, align 16
  %117 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 3
  %118 = bitcast i8** %117 to i32**
  store i32* %5, i32** %118, align 8
  %119 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 4
  %120 = bitcast i8** %119 to i32**
  store i32* %6, i32** %120, align 16
  %121 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %122 = load i64, i64* %9, align 8
  %123 = bitcast i8** %10 to %struct.ihipStream_t**
  %124 = load %struct.ihipStream_t*, %struct.ihipStream_t** %123, align 8
  %125 = bitcast %struct.dim3* %7 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = bitcast %struct.dim3* %8 to i64*
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32)** @_Z9mmmKernelP15HIP_vector_typeIfLj4EES1_S1_jj to i8*), i64 %126, i32 %128, i64 %130, i32 %132, i8** nonnull %111, i64 %122, %struct.ihipStream_t* %124)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %101)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %102)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %103)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %104)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %105)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %106)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %107)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %110)
  br label %134

134:                                              ; preds = %92, %1
  %135 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 10
  %136 = bitcast float** %135 to i8**
  %137 = load i8*, i8** %136, align 8, !tbaa !30
  %138 = load i8*, i8** %52, align 8, !tbaa !3
  %139 = load i32, i32* %30, align 8, !tbaa !27
  %140 = load i32, i32* %22, align 4, !tbaa !14
  %141 = mul nsw i32 %140, %139
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 2
  %144 = call i32 @hipMemcpy(i8* %137, i8* %138, i64 %143, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #26
  ret i32 0
}

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN20MatrixMultiplication32matrixMultiplicationCPUReferenceEPfS0_S0_jjj(%class.MatrixMultiplication* nocapture nonnull readnone align 8 %0, float* nocapture %1, float* nocapture readonly %2, float* nocapture readonly %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #13 align 2 {
  %8 = icmp eq i32 %5, 0
  %9 = icmp eq i32 %4, 0
  %10 = icmp eq i32 %6, 0
  %11 = select i1 %9, i1 true, i1 %10
  %12 = select i1 %11, i1 true, i1 %8
  br i1 %12, label %85, label %13

13:                                               ; preds = %7
  %14 = zext i32 %6 to i64
  %15 = zext i32 %5 to i64
  %16 = and i64 %15, 1
  %17 = icmp eq i32 %5, 1
  %18 = and i64 %15, 4294967294
  %19 = icmp eq i64 %16, 0
  br label %20

20:                                               ; preds = %13, %82
  %21 = phi i32 [ %83, %82 ], [ 0, %13 ]
  %22 = mul i32 %21, %5
  %23 = mul i32 %21, %6
  br label %24

24:                                               ; preds = %79, %20
  %25 = phi i64 [ %80, %79 ], [ 0, %20 ]
  %26 = trunc i64 %25 to i32
  %27 = add i32 %23, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %1, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !40
  br i1 %17, label %63, label %31

31:                                               ; preds = %24, %31
  %32 = phi float [ %59, %31 ], [ %30, %24 ]
  %33 = phi i64 [ %60, %31 ], [ 0, %24 ]
  %34 = phi i64 [ %61, %31 ], [ 0, %24 ]
  %35 = trunc i64 %33 to i32
  %36 = add i32 %22, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %2, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !40
  %40 = mul i32 %35, %6
  %41 = add i32 %40, %26
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %3, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !40
  %45 = fmul contract float %39, %44
  %46 = fadd contract float %32, %45
  store float %46, float* %29, align 4, !tbaa !40
  %47 = trunc i64 %33 to i32
  %48 = or i32 %47, 1
  %49 = add i32 %22, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %2, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !40
  %53 = mul i32 %48, %6
  %54 = add i32 %53, %26
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %3, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !40
  %58 = fmul contract float %52, %57
  %59 = fadd contract float %46, %58
  store float %59, float* %29, align 4, !tbaa !40
  %60 = add nuw nsw i64 %33, 2
  %61 = add i64 %34, 2
  %62 = icmp eq i64 %61, %18
  br i1 %62, label %63, label %31, !llvm.loop !51

63:                                               ; preds = %31, %24
  %64 = phi float [ %30, %24 ], [ %59, %31 ]
  %65 = phi i64 [ 0, %24 ], [ %60, %31 ]
  br i1 %19, label %79, label %66

66:                                               ; preds = %63
  %67 = trunc i64 %65 to i32
  %68 = add i32 %22, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %2, i64 %69
  %71 = load float, float* %70, align 4, !tbaa !40
  %72 = mul i32 %67, %6
  %73 = add i32 %72, %26
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %3, i64 %74
  %76 = load float, float* %75, align 4, !tbaa !40
  %77 = fmul contract float %71, %76
  %78 = fadd contract float %64, %77
  store float %78, float* %29, align 4, !tbaa !40
  br label %79

79:                                               ; preds = %63, %66
  %80 = add nuw nsw i64 %25, 1
  %81 = icmp eq i64 %80, %14
  br i1 %81, label %82, label %24, !llvm.loop !52

82:                                               ; preds = %79
  %83 = add nuw i32 %21, 1
  %84 = icmp eq i32 %83, %4
  br i1 %84, label %85, label %20, !llvm.loop !53

85:                                               ; preds = %82, %7
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN20MatrixMultiplication10initializeEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 27
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !31
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %115

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 7)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i64 18)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !55
  %20 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 17
  %21 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %22 = bitcast i8** %21 to i32**
  store i32* %20, i32** %22, align 8, !tbaa !58
  %23 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %24 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !31
  %25 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %24, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #26
  tail call void @_ZdlPv(i8* nonnull %7) #29
  %26 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %27 = bitcast i8* %26 to %"struct.appsdk::Option"*
  %28 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %28, align 8, !tbaa !54
  %29 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !54
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !54
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !54
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0
  %33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 1)
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1
  %35 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %36 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i64 40)
  %38 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 4
  store i32 0, i32* %38, align 8, !tbaa !55
  %39 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 18
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 5
  %41 = bitcast i8** %40 to i32**
  store i32* %39, i32** %41, align 8, !tbaa !58
  %42 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !31
  %43 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %42, %"struct.appsdk::Option"* nonnull %27)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %27) #26
  tail call void @_ZdlPv(i8* nonnull %26) #29
  %44 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %45 = bitcast i8* %44 to %"struct.appsdk::Option"*
  %46 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !54
  %47 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %47, align 8, !tbaa !54
  %48 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %48, align 8, !tbaa !54
  %49 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %49, align 8, !tbaa !54
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 0
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 1)
  %52 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 1
  %53 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i64 6)
  %54 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 2
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i64 17)
  %56 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 4
  store i32 0, i32* %56, align 8, !tbaa !55
  %57 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 19
  %58 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %45, i64 0, i32 5
  %59 = bitcast i8** %58 to i32**
  store i32* %57, i32** %59, align 8, !tbaa !58
  %60 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !31
  %61 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %60, %"struct.appsdk::Option"* nonnull %45)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %45) #26
  tail call void @_ZdlPv(i8* nonnull %44) #29
  %62 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %63 = bitcast i8* %62 to %"struct.appsdk::Option"*
  %64 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %64, align 8, !tbaa !54
  %65 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %65, align 8, !tbaa !54
  %66 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %66, align 8, !tbaa !54
  %67 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %67, align 8, !tbaa !54
  %68 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 0
  %69 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %70 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 1
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 9)
  %72 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 2
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0), i64 52)
  %74 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 4
  store i32 0, i32* %74, align 8, !tbaa !55
  %75 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 12
  %76 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %63, i64 0, i32 5
  %77 = bitcast i8** %76 to i32**
  store i32* %75, i32** %77, align 8, !tbaa !58
  %78 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !31
  %79 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %78, %"struct.appsdk::Option"* nonnull %63)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %63) #26
  tail call void @_ZdlPv(i8* nonnull %62) #29
  %80 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %81 = bitcast i8* %80 to %"struct.appsdk::Option"*
  %82 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %82, align 8, !tbaa !54
  %83 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %83, align 8, !tbaa !54
  %84 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %84, align 8, !tbaa !54
  %85 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %85, align 8, !tbaa !54
  %86 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 0
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 1
  %89 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i64 10)
  %90 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 2
  %91 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i64 41)
  %92 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 4
  store i32 0, i32* %92, align 8, !tbaa !55
  %93 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 24
  %94 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %81, i64 0, i32 5
  %95 = bitcast i8** %94 to i32**
  store i32* %93, i32** %95, align 8, !tbaa !58
  %96 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !31
  %97 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %96, %"struct.appsdk::Option"* nonnull %81)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %81) #26
  tail call void @_ZdlPv(i8* nonnull %80) #29
  %98 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #28
  %99 = bitcast i8* %98 to %"struct.appsdk::Option"*
  %100 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %100, align 8, !tbaa !54
  %101 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %101, align 8, !tbaa !54
  %102 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %102, align 8, !tbaa !54
  %103 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %103, align 8, !tbaa !54
  %104 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 0
  %105 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), i64 0)
  %106 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 1
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i64 10)
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 2
  %109 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %108, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0), i64 52)
  %110 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 4
  store i32 4, i32* %110, align 8, !tbaa !55
  %111 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 25
  %112 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %99, i64 0, i32 5
  store i8* %111, i8** %112, align 8, !tbaa !58
  %113 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !31
  %114 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %113, %"struct.appsdk::Option"* nonnull %99)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %99) #26
  tail call void @_ZdlPv(i8* nonnull %98) #29
  br label %115

115:                                              ; preds = %1, %6
  %116 = phi i32 [ 0, %6 ], [ 1, %1 ]
  ret i32 %116
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #28
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !54
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !54
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !54
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !54
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !54
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !54
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !54
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !54
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !54
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !54
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !54
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !54
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !54
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !54
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !54
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !54
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !54
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !54
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !54
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !54
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
  store i32 4, i32* %53, align 8, !tbaa !55
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !58
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
  store i32 4, i32* %67, align 8, !tbaa !55
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !58
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
  store i32 4, i32* %81, align 8, !tbaa !55
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !58
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
  store i32 4, i32* %95, align 8, !tbaa !55
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !58
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
  store i32 0, i32* %109, align 8, !tbaa !55
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !58
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !59
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !60
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
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !60
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !59
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
  store i8* %21, i8** %25, align 8, !tbaa !60
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !54
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !54
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !54
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !54
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !60
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
  %59 = load i32, i32* %10, align 8, !tbaa !59
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !60
  br i1 %61, label %39, label %63, !llvm.loop !61

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
  %83 = load i32, i32* %10, align 8, !tbaa !59
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !59
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
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 3, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !16
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #26
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !19

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
  %26 = load i8*, i8** %25, align 8, !tbaa !16
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #26
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !19

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
  %45 = load i8*, i8** %44, align 8, !tbaa !16
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !19

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
  %64 = load i8*, i8** %63, align 8, !tbaa !16
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #26
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !19

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
define dso_local i32 @_ZN20MatrixMultiplication5setupEv(%class.MatrixMultiplication* nocapture nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 17
  %6 = load i32, i32* %5, align 4, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 18
  %10 = load i32, i32* %9, align 8, !tbaa !63
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 19
  %14 = load i32, i32* %13, align 4, !tbaa !64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %12, %8, %1
  %17 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), i64 37)
  %18 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %19 = getelementptr i8, i8* %18, i64 -24
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 240
  %24 = bitcast i8* %23 to %"class.std::ctype"**
  %25 = load %"class.std::ctype"*, %"class.std::ctype"** %24, align 8, !tbaa !22
  %26 = icmp eq %"class.std::ctype"* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

28:                                               ; preds = %16
  %29 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 8
  %30 = load i8, i8* %29, align 8, !tbaa !24
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i64 0, i32 9, i64 10
  %34 = load i8, i8* %33, align 1, !tbaa !26
  br label %41

35:                                               ; preds = %28
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25)
  %36 = bitcast %"class.std::ctype"* %25 to i8 (%"class.std::ctype"*, i8)***
  %37 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %36, align 8, !tbaa !20
  %38 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %37, i64 6
  %39 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %38, align 8
  %40 = tail call signext i8 %39(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %25, i8 signext 10)
  br label %41

41:                                               ; preds = %32, %35
  %42 = phi i8 [ %34, %32 ], [ %40, %35 ]
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %42)
  %44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %43)
  br label %133

45:                                               ; preds = %12
  %46 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 12
  %47 = load i32, i32* %46, align 8, !tbaa !50
  %48 = shl i32 %47, 2
  %49 = urem i32 %6, %48
  %50 = udiv i32 %6, %48
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = add i32 %50, 1
  %54 = mul i32 %53, %48
  store i32 %54, i32* %5, align 4, !tbaa !62
  br label %55

55:                                               ; preds = %52, %45
  %56 = phi i32 [ %54, %52 ], [ %6, %45 ]
  %57 = urem i32 %10, %48
  %58 = udiv i32 %10, %48
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = add i32 %58, 1
  %62 = mul i32 %61, %48
  store i32 %62, i32* %9, align 8, !tbaa !63
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %62, %60 ], [ %10, %55 ]
  %65 = urem i32 %14, %48
  %66 = udiv i32 %14, %48
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = add i32 %66, 1
  %70 = mul i32 %69, %48
  store i32 %70, i32* %13, align 4, !tbaa !64
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %70, %68 ], [ %14, %63 ]
  %73 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 5
  store i32 %64, i32* %73, align 8, !tbaa !9
  %74 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 6
  store i32 %56, i32* %74, align 4, !tbaa !14
  %75 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 8
  store i32 %72, i32* %75, align 8, !tbaa !27
  %76 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 9
  store i32 %64, i32* %76, align 4, !tbaa !28
  %77 = tail call i32 @_ZN20MatrixMultiplication25setupMatrixMultiplicationEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %0)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %71
  %80 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 26
  %81 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %80, align 8, !tbaa !65
  %82 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %81)
  %83 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %80, align 8, !tbaa !65
  %84 = bitcast %"class.std::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84)
  %85 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %83, i64 0, i32 0, i32 0, i32 0, i32 1
  %86 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %85, align 8, !tbaa !66
  %87 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %83, i64 0, i32 0, i32 0, i32 0, i32 0
  %88 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %87, align 8, !tbaa !69
  %89 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %86 to i64
  %90 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %88 to i64
  %91 = sub i64 %89, %90
  %92 = lshr exact i64 %91, 3
  %93 = trunc i64 %92 to i32
  %94 = icmp slt i32 %82, %93
  br i1 %94, label %119, label %95

95:                                               ; preds = %79
  %96 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %96) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %3)
          to label %97 unwind label %117

97:                                               ; preds = %95
  %98 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8, !tbaa !16
  %100 = getelementptr inbounds i8, i8* %99, i64 -24
  %101 = bitcast i8* %100 to %"struct.std::basic_string<char>::_Rep"*
  %102 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %102) #26
  %103 = icmp eq i8* %100, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !19

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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %101, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %116

116:                                              ; preds = %115, %112, %97
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %102) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %96) #26
  br label %125

117:                                              ; preds = %95
  %118 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %96) #26
  resume { i8*, i32 } %118

119:                                              ; preds = %79
  %120 = sext i32 %82 to i64
  %121 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %88, i64 %120
  %122 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %121, align 8, !tbaa !3
  %123 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %122, i64 0, i32 2
  %124 = bitcast i64* %123 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %124, i8 0, i64 16, i1 false)
  br label %125

125:                                              ; preds = %116, %119
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84)
  %126 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %80, align 8, !tbaa !65
  %127 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %126, i32 %82)
  %128 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %80, align 8, !tbaa !65
  %129 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %128, i32 %82)
  %130 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %80, align 8, !tbaa !65
  %131 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %130, i32 %82)
  %132 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 1
  store double %131, double* %132, align 8, !tbaa !70
  br label %133

133:                                              ; preds = %125, %71, %41
  %134 = phi i32 [ 1, %41 ], [ 0, %125 ], [ 1, %71 ]
  ret i32 %134
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #28
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !54
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
  %36 = tail call noalias nonnull i8* @_Znwm(i64 %35) #30
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
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
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
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !19

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
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
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
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !16
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #26
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !19

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
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
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
  %17 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !16
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #26
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !19

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
define dso_local i32 @_ZN20MatrixMultiplication3runEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 24
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @_ZN20MatrixMultiplication10runKernelsEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %0)
  %13 = load i32, i32* %8, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_ZN20MatrixMultiplication10runKernelsEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %0)
  br label %17

17:                                               ; preds = %11, %15, %1
  %18 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 26
  %19 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %18, align 8, !tbaa !65
  %20 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %19)
  %21 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %18, align 8, !tbaa !65
  %22 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22)
  %23 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %21, i64 0, i32 0, i32 0, i32 0, i32 1
  %24 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %23, align 8, !tbaa !66
  %25 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %21, i64 0, i32 0, i32 0, i32 0, i32 0
  %26 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %25, align 8, !tbaa !69
  %27 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %24 to i64
  %28 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %26 to i64
  %29 = sub i64 %27, %28
  %30 = lshr exact i64 %29, 3
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %20, %31
  br i1 %32, label %59, label %33

33:                                               ; preds = %17
  %34 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %34) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %35 unwind label %57

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !16
  %38 = getelementptr inbounds i8, i8* %37, i64 -24
  %39 = bitcast i8* %38 to %"struct.std::basic_string<char>::_Rep"*
  %40 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %40) #26
  %41 = icmp eq i8* %38, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %41, label %54, label %42, !prof !19

42:                                               ; preds = %35
  %43 = getelementptr inbounds i8, i8* %37, i64 -8
  %44 = bitcast i8* %43 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %45, label %47

45:                                               ; preds = %42
  %46 = atomicrmw volatile add i32* %44, i32 -1 acq_rel, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %44, align 8, !tbaa !7
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %44, align 8, !tbaa !7
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %39, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %54

54:                                               ; preds = %53, %50, %35
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %40) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %34) #26
  br label %65

55:                                               ; preds = %190, %57
  %56 = phi { i8*, i32 } [ %58, %57 ], [ %191, %190 ]
  resume { i8*, i32 } %56

57:                                               ; preds = %33
  %58 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %34) #26
  br label %55

59:                                               ; preds = %17
  %60 = sext i32 %20 to i64
  %61 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %26, i64 %60
  %62 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %61, align 8, !tbaa !3
  %63 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %62, i64 0, i32 2
  %64 = bitcast i64* %63 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  br label %65

65:                                               ; preds = %54, %59
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22)
  %66 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %18, align 8, !tbaa !65
  %67 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %66, i32 %20)
  %68 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i64 21)
  %69 = load i32, i32* %8, align 8, !tbaa !80
  %70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %69)
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %70, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i64 11)
  %72 = bitcast %"class.std::basic_ostream"* %70 to i8**
  %73 = load i8*, i8** %72, align 8, !tbaa !20
  %74 = getelementptr i8, i8* %73, i64 -24
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = bitcast %"class.std::basic_ostream"* %70 to i8*
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  %79 = getelementptr inbounds i8, i8* %78, i64 240
  %80 = bitcast i8* %79 to %"class.std::ctype"**
  %81 = load %"class.std::ctype"*, %"class.std::ctype"** %80, align 8, !tbaa !22
  %82 = icmp eq %"class.std::ctype"* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

84:                                               ; preds = %65
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !24
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 9, i64 10
  %90 = load i8, i8* %89, align 1, !tbaa !26
  br label %97

91:                                               ; preds = %84
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81)
  %92 = bitcast %"class.std::ctype"* %81 to i8 (%"class.std::ctype"*, i8)***
  %93 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %92, align 8, !tbaa !20
  %94 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %93, i64 6
  %95 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %94, align 8
  %96 = call signext i8 %95(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81, i8 signext 10)
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi i8 [ %90, %88 ], [ %96, %91 ]
  %99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %70, i8 signext %98)
  %100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %99)
  %101 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i64 43)
  %102 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %103 = getelementptr i8, i8* %102, i64 -24
  %104 = bitcast i8* %103 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %105
  %107 = getelementptr inbounds i8, i8* %106, i64 240
  %108 = bitcast i8* %107 to %"class.std::ctype"**
  %109 = load %"class.std::ctype"*, %"class.std::ctype"** %108, align 8, !tbaa !22
  %110 = icmp eq %"class.std::ctype"* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

112:                                              ; preds = %97
  %113 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %109, i64 0, i32 8
  %114 = load i8, i8* %113, align 8, !tbaa !24
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %109, i64 0, i32 9, i64 10
  %118 = load i8, i8* %117, align 1, !tbaa !26
  br label %125

119:                                              ; preds = %112
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %109)
  %120 = bitcast %"class.std::ctype"* %109 to i8 (%"class.std::ctype"*, i8)***
  %121 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %120, align 8, !tbaa !20
  %122 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %121, i64 6
  %123 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %122, align 8
  %124 = call signext i8 %123(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %109, i8 signext 10)
  br label %125

125:                                              ; preds = %116, %119
  %126 = phi i8 [ %118, %116 ], [ %124, %119 ]
  %127 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %126)
  %128 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %127)
  %129 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 3
  store double 0.000000e+00, double* %129, align 8, !tbaa !81
  %130 = load i32, i32* %8, align 8, !tbaa !80
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125, %132
  %133 = phi i32 [ %135, %132 ], [ 0, %125 ]
  %134 = call i32 @_ZN20MatrixMultiplication10runKernelsEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %0)
  %135 = add nuw nsw i32 %133, 1
  %136 = load i32, i32* %8, align 8, !tbaa !80
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %132, label %138, !llvm.loop !82

138:                                              ; preds = %132, %125
  %139 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %18, align 8, !tbaa !65
  %140 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %139, i32 %20)
  %141 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %18, align 8, !tbaa !65
  %142 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %141, i32 %20)
  %143 = load i32, i32* %8, align 8, !tbaa !80
  %144 = sitofp i32 %143 to double
  %145 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 2
  %146 = load double, double* %129, align 8, !tbaa !81
  %147 = insertelement <2 x double> poison, double %142, i64 0
  %148 = insertelement <2 x double> %147, double %146, i64 1
  %149 = insertelement <2 x double> poison, double %144, i64 0
  %150 = shufflevector <2 x double> %149, <2 x double> poison, <2 x i32> zeroinitializer
  %151 = fdiv contract <2 x double> %148, %150
  %152 = bitcast double* %145 to <2 x double>*
  store <2 x double> %151, <2 x double>* %152, align 8, !tbaa !83
  %153 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 27
  %154 = bitcast %"class.appsdk::HIPCommandArgs"** %153 to %"class.appsdk::SDKCmdArgsParser"**
  %155 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %154, align 8, !tbaa !31
  %156 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %155, i64 0, i32 9
  %157 = load i8, i8* %156, align 4, !tbaa !37, !range !35
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %138
  %160 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %160) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %161 unwind label %186

161:                                              ; preds = %159
  %162 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 10
  %163 = load float*, float** %162, align 8, !tbaa !30
  %164 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 8
  %165 = load i32, i32* %164, align 8, !tbaa !27
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %6, float* %163, i32 %165, i32 1)
          to label %166 unwind label %188

166:                                              ; preds = %161
  %167 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8, !tbaa !16
  %169 = getelementptr inbounds i8, i8* %168, i64 -24
  %170 = bitcast i8* %169 to %"struct.std::basic_string<char>::_Rep"*
  %171 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %171) #26
  %172 = icmp eq i8* %169, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %172, label %185, label %173, !prof !19

173:                                              ; preds = %166
  %174 = getelementptr inbounds i8, i8* %168, i64 -8
  %175 = bitcast i8* %174 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %176, label %178

176:                                              ; preds = %173
  %177 = atomicrmw volatile add i32* %175, i32 -1 acq_rel, align 4
  br label %181

178:                                              ; preds = %173
  %179 = load i32, i32* %175, align 8, !tbaa !7
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %175, align 8, !tbaa !7
  br label %181

181:                                              ; preds = %178, %176
  %182 = phi i32 [ %177, %176 ], [ %179, %178 ]
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %170, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %185

185:                                              ; preds = %166, %181, %184
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %171) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %160) #26
  br label %192

186:                                              ; preds = %159
  %187 = landingpad { i8*, i32 }
          cleanup
  br label %190

188:                                              ; preds = %161
  %189 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #26
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi { i8*, i32 } [ %189, %188 ], [ %187, %186 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %160) #26
  br label %55

192:                                              ; preds = %185, %138
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN20MatrixMultiplication13verifyResultsEv(%class.MatrixMultiplication* nocapture nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 27
  %3 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %4 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %4, i64 0, i32 10
  %6 = load i8, i8* %5, align 1, !tbaa !32, !range !35
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %217, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 11
  %10 = load float*, float** %9, align 8, !tbaa !36
  %11 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 4
  %12 = load float*, float** %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 7
  %14 = load float*, float** %13, align 8, !tbaa !29
  %15 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 6
  %16 = load i32, i32* %15, align 4, !tbaa !14
  %17 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 5
  %18 = load i32, i32* %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 8
  %20 = load i32, i32* %19, align 8, !tbaa !27
  %21 = icmp eq i32 %18, 0
  %22 = icmp eq i32 %16, 0
  %23 = icmp eq i32 %20, 0
  %24 = select i1 %22, i1 true, i1 %23
  %25 = select i1 %24, i1 true, i1 %21
  br i1 %25, label %98, label %26

26:                                               ; preds = %8
  %27 = zext i32 %20 to i64
  %28 = zext i32 %18 to i64
  %29 = and i64 %28, 1
  %30 = icmp eq i32 %18, 1
  %31 = and i64 %28, 4294967294
  %32 = icmp eq i64 %29, 0
  br label %33

33:                                               ; preds = %95, %26
  %34 = phi i32 [ %96, %95 ], [ 0, %26 ]
  %35 = mul i32 %34, %18
  %36 = mul i32 %34, %20
  br label %37

37:                                               ; preds = %92, %33
  %38 = phi i64 [ %93, %92 ], [ 0, %33 ]
  %39 = trunc i64 %38 to i32
  %40 = add i32 %36, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %10, i64 %41
  %43 = load float, float* %42, align 4, !tbaa !40
  br i1 %30, label %76, label %44

44:                                               ; preds = %37, %44
  %45 = phi float [ %72, %44 ], [ %43, %37 ]
  %46 = phi i64 [ %73, %44 ], [ 0, %37 ]
  %47 = phi i64 [ %74, %44 ], [ 0, %37 ]
  %48 = trunc i64 %46 to i32
  %49 = add i32 %35, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %12, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !40
  %53 = mul i32 %20, %48
  %54 = add i32 %53, %39
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %14, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !40
  %58 = fmul contract float %52, %57
  %59 = fadd contract float %45, %58
  store float %59, float* %42, align 4, !tbaa !40
  %60 = trunc i64 %46 to i32
  %61 = or i32 %60, 1
  %62 = add i32 %35, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %12, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !40
  %66 = mul i32 %20, %61
  %67 = add i32 %66, %39
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %14, i64 %68
  %70 = load float, float* %69, align 4, !tbaa !40
  %71 = fmul contract float %65, %70
  %72 = fadd contract float %59, %71
  store float %72, float* %42, align 4, !tbaa !40
  %73 = add nuw nsw i64 %46, 2
  %74 = add i64 %47, 2
  %75 = icmp eq i64 %74, %31
  br i1 %75, label %76, label %44, !llvm.loop !51

76:                                               ; preds = %44, %37
  %77 = phi float [ %43, %37 ], [ %72, %44 ]
  %78 = phi i64 [ 0, %37 ], [ %73, %44 ]
  br i1 %32, label %92, label %79

79:                                               ; preds = %76
  %80 = trunc i64 %78 to i32
  %81 = add i32 %35, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %12, i64 %82
  %84 = load float, float* %83, align 4, !tbaa !40
  %85 = mul i32 %20, %80
  %86 = add i32 %85, %39
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %14, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !40
  %90 = fmul contract float %84, %89
  %91 = fadd contract float %77, %90
  store float %91, float* %42, align 4, !tbaa !40
  br label %92

92:                                               ; preds = %76, %79
  %93 = add nuw nsw i64 %38, 1
  %94 = icmp eq i64 %93, %27
  br i1 %94, label %95, label %37, !llvm.loop !52

95:                                               ; preds = %92
  %96 = add nuw i32 %34, 1
  %97 = icmp eq i32 %96, %16
  br i1 %97, label %98, label %33, !llvm.loop !53

98:                                               ; preds = %95, %8
  %99 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 10
  %100 = load float*, float** %99, align 8, !tbaa !30
  %101 = mul nsw i32 %20, %16
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = zext i32 %101 to i64
  %105 = add nsw i64 %104, -1
  %106 = and i64 %105, 1
  %107 = icmp eq i32 %101, 2
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = and i64 %105, -2
  br label %131

110:                                              ; preds = %131, %103
  %111 = phi <2 x float> [ undef, %103 ], [ %153, %131 ]
  %112 = phi i64 [ 1, %103 ], [ %154, %131 ]
  %113 = phi <2 x float> [ zeroinitializer, %103 ], [ %153, %131 ]
  %114 = icmp eq i64 %106, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds float, float* %100, i64 %112
  %117 = load float, float* %116, align 4, !tbaa !40
  %118 = getelementptr inbounds float, float* %10, i64 %112
  %119 = load float, float* %118, align 4, !tbaa !40
  %120 = fsub contract float %117, %119
  %121 = insertelement <2 x float> poison, float %117, i64 0
  %122 = insertelement <2 x float> %121, float %120, i64 1
  %123 = fmul contract <2 x float> %122, %122
  %124 = fadd contract <2 x float> %113, %123
  br label %125

125:                                              ; preds = %115, %110, %98
  %126 = phi <2 x float> [ zeroinitializer, %98 ], [ %111, %110 ], [ %124, %115 ]
  %127 = extractelement <2 x float> %126, i64 0
  %128 = tail call contract float @sqrtf(float %127) #26
  %129 = tail call contract float @llvm.fabs.f32(float %127) #26
  %130 = fcmp contract olt float %129, 0x3E7AD7F2A0000000
  br i1 %130, label %187, label %157

131:                                              ; preds = %131, %108
  %132 = phi i64 [ 1, %108 ], [ %154, %131 ]
  %133 = phi <2 x float> [ zeroinitializer, %108 ], [ %153, %131 ]
  %134 = phi i64 [ 0, %108 ], [ %155, %131 ]
  %135 = getelementptr inbounds float, float* %100, i64 %132
  %136 = load float, float* %135, align 4, !tbaa !40
  %137 = getelementptr inbounds float, float* %10, i64 %132
  %138 = load float, float* %137, align 4, !tbaa !40
  %139 = fsub contract float %136, %138
  %140 = insertelement <2 x float> poison, float %136, i64 0
  %141 = insertelement <2 x float> %140, float %139, i64 1
  %142 = fmul contract <2 x float> %141, %141
  %143 = fadd contract <2 x float> %133, %142
  %144 = add nuw nsw i64 %132, 1
  %145 = getelementptr inbounds float, float* %100, i64 %144
  %146 = load float, float* %145, align 4, !tbaa !40
  %147 = getelementptr inbounds float, float* %10, i64 %144
  %148 = load float, float* %147, align 4, !tbaa !40
  %149 = fsub contract float %146, %148
  %150 = insertelement <2 x float> poison, float %146, i64 0
  %151 = insertelement <2 x float> %150, float %149, i64 1
  %152 = fmul contract <2 x float> %151, %151
  %153 = fadd contract <2 x float> %143, %152
  %154 = add nuw nsw i64 %132, 2
  %155 = add i64 %134, 2
  %156 = icmp eq i64 %155, %109
  br i1 %156, label %110, label %131, !llvm.loop !84

157:                                              ; preds = %125
  %158 = extractelement <2 x float> %126, i64 1
  %159 = tail call contract float @sqrtf(float %158) #26
  %160 = fdiv contract float %159, %128
  %161 = fcmp contract olt float %160, 0x3EB0C6F7A0000000
  br i1 %161, label %162, label %187

162:                                              ; preds = %157
  %163 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i64 8)
  %164 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %165 = getelementptr i8, i8* %164, i64 -24
  %166 = bitcast i8* %165 to i64*
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %167
  %169 = getelementptr inbounds i8, i8* %168, i64 240
  %170 = bitcast i8* %169 to %"class.std::ctype"**
  %171 = load %"class.std::ctype"*, %"class.std::ctype"** %170, align 8, !tbaa !22
  %172 = icmp eq %"class.std::ctype"* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

174:                                              ; preds = %162
  %175 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %171, i64 0, i32 8
  %176 = load i8, i8* %175, align 8, !tbaa !24
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %171, i64 0, i32 9, i64 10
  %180 = load i8, i8* %179, align 1, !tbaa !26
  br label %212

181:                                              ; preds = %174
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %171)
  %182 = bitcast %"class.std::ctype"* %171 to i8 (%"class.std::ctype"*, i8)***
  %183 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %182, align 8, !tbaa !20
  %184 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %183, i64 6
  %185 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %184, align 8
  %186 = tail call signext i8 %185(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %171, i8 signext 10)
  br label %212

187:                                              ; preds = %125, %157
  %188 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i64 7)
  %189 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %190 = getelementptr i8, i8* %189, i64 -24
  %191 = bitcast i8* %190 to i64*
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %192
  %194 = getelementptr inbounds i8, i8* %193, i64 240
  %195 = bitcast i8* %194 to %"class.std::ctype"**
  %196 = load %"class.std::ctype"*, %"class.std::ctype"** %195, align 8, !tbaa !22
  %197 = icmp eq %"class.std::ctype"* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %187
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

199:                                              ; preds = %187
  %200 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %196, i64 0, i32 8
  %201 = load i8, i8* %200, align 8, !tbaa !24
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %196, i64 0, i32 9, i64 10
  %205 = load i8, i8* %204, align 1, !tbaa !26
  br label %212

206:                                              ; preds = %199
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %196)
  %207 = bitcast %"class.std::ctype"* %196 to i8 (%"class.std::ctype"*, i8)***
  %208 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %207, align 8, !tbaa !20
  %209 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %208, i64 6
  %210 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %209, align 8
  %211 = tail call signext i8 %210(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %196, i8 signext 10)
  br label %212

212:                                              ; preds = %206, %203, %181, %178
  %213 = phi i8 [ %180, %178 ], [ %186, %181 ], [ %205, %203 ], [ %211, %206 ]
  %214 = phi i32 [ 0, %178 ], [ 0, %181 ], [ 1, %203 ], [ 1, %206 ]
  %215 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %213)
  %216 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %215)
  br label %217

217:                                              ; preds = %212, %1
  %218 = phi i32 [ 0, %1 ], [ %214, %212 ]
  ret i32 %218
}

; Function Attrs: uwtable
define dso_local void @_ZN20MatrixMultiplication10printStatsEv(%class.MatrixMultiplication* nocapture nonnull readonly align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %12 = alloca %"class.std::allocator.0", align 1
  %13 = alloca %"class.std::allocator.0", align 1
  %14 = alloca %"class.std::allocator.0", align 1
  %15 = alloca %"class.std::basic_ostringstream", align 8
  %16 = alloca %"class.std::allocator.0", align 1
  %17 = alloca %"class.std::basic_ostringstream", align 8
  %18 = alloca %"class.std::allocator.0", align 1
  %19 = alloca %"class.std::allocator.0", align 1
  %20 = alloca %"class.std::allocator.0", align 1
  %21 = alloca %"class.std::allocator.0", align 1
  %22 = alloca %"class.std::allocator.0", align 1
  %23 = alloca %"class.std::basic_ostringstream", align 8
  %24 = alloca %"class.std::allocator.0", align 1
  %25 = alloca %"class.std::basic_ostringstream", align 8
  %26 = alloca %"class.std::allocator.0", align 1
  %27 = alloca %"class.std::allocator.0", align 1
  %28 = alloca %"class.std::allocator.0", align 1
  %29 = alloca %"class.std::allocator.0", align 1
  %30 = alloca %"class.std::basic_ostringstream", align 8
  %31 = alloca %"class.std::allocator.0", align 1
  %32 = alloca %"class.std::allocator.0", align 1
  %33 = alloca %"class.std::basic_ostringstream", align 8
  %34 = alloca %"class.std::allocator.0", align 1
  %35 = alloca %"class.std::allocator.0", align 1
  %36 = alloca %"class.std::allocator.0", align 1
  %37 = alloca %"class.std::allocator.0", align 1
  %38 = alloca %"class.std::allocator.0", align 1
  %39 = alloca %"class.std::basic_ostringstream", align 8
  %40 = alloca %"class.std::allocator.0", align 1
  %41 = alloca %"class.std::basic_ostringstream", align 8
  %42 = alloca %"class.std::allocator.0", align 1
  %43 = alloca %"class.std::allocator.0", align 1
  %44 = alloca %"class.std::allocator.0", align 1
  %45 = alloca %"class.std::allocator.0", align 1
  %46 = alloca %"class.std::allocator.0", align 1
  %47 = alloca %"class.std::basic_ostringstream", align 8
  %48 = alloca %"class.std::allocator.0", align 1
  %49 = alloca %"class.std::basic_ostringstream", align 8
  %50 = alloca [4 x %"class.std::basic_string"], align 16
  %51 = alloca %"class.std::allocator.0", align 1
  %52 = alloca %"class.std::allocator.0", align 1
  %53 = alloca %"class.std::allocator.0", align 1
  %54 = alloca %"class.std::allocator.0", align 1
  %55 = alloca [4 x %"class.std::basic_string"], align 16
  %56 = alloca %"class.std::basic_string", align 8
  %57 = alloca %"class.std::basic_string", align 8
  %58 = alloca %"class.std::basic_string", align 8
  %59 = alloca %"class.std::basic_string", align 8
  %60 = alloca %"class.std::basic_string", align 8
  %61 = alloca %"class.std::basic_string", align 8
  %62 = alloca %"class.std::basic_string", align 8
  %63 = alloca %"class.std::basic_string", align 8
  %64 = alloca %"class.std::basic_string", align 8
  %65 = alloca %"class.std::basic_string", align 8
  %66 = alloca [4 x %"class.std::basic_string"], align 16
  %67 = alloca %"class.std::allocator.0", align 1
  %68 = alloca %"class.std::allocator.0", align 1
  %69 = alloca %"class.std::allocator.0", align 1
  %70 = alloca %"class.std::allocator.0", align 1
  %71 = alloca [4 x %"class.std::basic_string"], align 16
  %72 = alloca %"class.std::basic_string", align 8
  %73 = alloca %"class.std::basic_string", align 8
  %74 = alloca %"class.std::basic_string", align 8
  %75 = alloca %"class.std::basic_string", align 8
  %76 = alloca %"class.std::basic_string", align 8
  %77 = alloca %"class.std::basic_string", align 8
  %78 = alloca %"class.std::basic_string", align 8
  %79 = alloca %"class.std::basic_string", align 8
  %80 = alloca %"class.std::basic_string", align 8
  %81 = alloca %"class.std::basic_string", align 8
  %82 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 27
  %83 = bitcast %"class.appsdk::HIPCommandArgs"** %82 to %"class.appsdk::SDKCmdArgsParser"**
  %84 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !31
  %85 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %84, i64 0, i32 11
  %86 = load i8, i8* %85, align 2, !tbaa !85, !range !35
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %1898, label %88

88:                                               ; preds = %1
  %89 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 25
  %90 = load i8, i8* %89, align 4, !tbaa !86, !range !35
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %995, label %92

92:                                               ; preds = %88
  %93 = bitcast [4 x %"class.std::basic_string"]* %50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %93) #26
  %94 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 0
  %95 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %51, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %95) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %51)
          to label %96 unwind label %204

96:                                               ; preds = %92
  %97 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 1
  %98 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %52, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %98) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %52)
          to label %99 unwind label %206

99:                                               ; preds = %96
  %100 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 2
  %101 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %53, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %101) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %53)
          to label %102 unwind label %208

102:                                              ; preds = %99
  %103 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 3
  %104 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %54, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %104) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %54)
          to label %105 unwind label %210

105:                                              ; preds = %102
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %104) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %101) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #26
  %106 = bitcast [4 x %"class.std::basic_string"]* %55 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %106) #26
  %107 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 0
  %108 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %108, align 16, !tbaa !54
  %109 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %109, align 8, !tbaa !54
  %110 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %110, align 16, !tbaa !54
  %111 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %111, align 8, !tbaa !54
  %112 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 5
  %113 = load i32, i32* %112, align 8, !tbaa !9
  %114 = shl nsw i32 %113, 1
  %115 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 8
  %116 = load i32, i32* %115, align 8, !tbaa !27
  %117 = mul nsw i32 %114, %116
  %118 = sitofp i32 %117 to double
  %119 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 2
  %120 = load double, double* %119, align 8, !tbaa !87
  %121 = fdiv contract double %118, %120
  %122 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 6
  %123 = load i32, i32* %122, align 4, !tbaa !14
  %124 = sitofp i32 %123 to double
  %125 = fmul contract double %121, %124
  %126 = fmul contract double %125, 1.000000e-09
  %127 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !31
  %128 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %127, i64 0, i32 11
  %129 = load i8, i8* %128, align 2, !tbaa !85, !range !35
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %224, label %131

131:                                              ; preds = %105
  %132 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0), i64 18)
          to label %133 unwind label %222

133:                                              ; preds = %131
  %134 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %126)
          to label %135 unwind label %222

135:                                              ; preds = %133
  %136 = bitcast %"class.std::basic_ostream"* %134 to i8**
  %137 = load i8*, i8** %136, align 8, !tbaa !20
  %138 = getelementptr i8, i8* %137, i64 -24
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = bitcast %"class.std::basic_ostream"* %134 to i8*
  %142 = getelementptr inbounds i8, i8* %141, i64 %140
  %143 = getelementptr inbounds i8, i8* %142, i64 240
  %144 = bitcast i8* %143 to %"class.std::ctype"**
  %145 = load %"class.std::ctype"*, %"class.std::ctype"** %144, align 8, !tbaa !22
  %146 = icmp eq %"class.std::ctype"* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %135
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %148 unwind label %222

148:                                              ; preds = %147
  unreachable

149:                                              ; preds = %135
  %150 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %145, i64 0, i32 8
  %151 = load i8, i8* %150, align 8, !tbaa !24
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %145, i64 0, i32 9, i64 10
  %155 = load i8, i8* %154, align 1, !tbaa !26
  br label %163

156:                                              ; preds = %149
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %145)
          to label %157 unwind label %222

157:                                              ; preds = %156
  %158 = bitcast %"class.std::ctype"* %145 to i8 (%"class.std::ctype"*, i8)***
  %159 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %158, align 8, !tbaa !20
  %160 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %159, i64 6
  %161 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %160, align 8
  %162 = invoke signext i8 %161(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %145, i8 signext 10)
          to label %163 unwind label %222

163:                                              ; preds = %157, %153
  %164 = phi i8 [ %155, %153 ], [ %162, %157 ]
  %165 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %134, i8 signext %164)
          to label %166 unwind label %222

166:                                              ; preds = %163
  %167 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %165)
          to label %168 unwind label %222

168:                                              ; preds = %166
  %169 = bitcast %"class.std::basic_ostream"* %167 to i8**
  %170 = load i8*, i8** %169, align 8, !tbaa !20
  %171 = getelementptr i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = bitcast %"class.std::basic_ostream"* %167 to i8*
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  %176 = getelementptr inbounds i8, i8* %175, i64 240
  %177 = bitcast i8* %176 to %"class.std::ctype"**
  %178 = load %"class.std::ctype"*, %"class.std::ctype"** %177, align 8, !tbaa !22
  %179 = icmp eq %"class.std::ctype"* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %181 unwind label %222

181:                                              ; preds = %180
  unreachable

182:                                              ; preds = %168
  %183 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %178, i64 0, i32 8
  %184 = load i8, i8* %183, align 8, !tbaa !24
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %178, i64 0, i32 9, i64 10
  %188 = load i8, i8* %187, align 1, !tbaa !26
  br label %196

189:                                              ; preds = %182
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %178)
          to label %190 unwind label %222

190:                                              ; preds = %189
  %191 = bitcast %"class.std::ctype"* %178 to i8 (%"class.std::ctype"*, i8)***
  %192 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %191, align 8, !tbaa !20
  %193 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %192, i64 6
  %194 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %193, align 8
  %195 = invoke signext i8 %194(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %178, i8 signext 10)
          to label %196 unwind label %222

196:                                              ; preds = %190, %186
  %197 = phi i8 [ %188, %186 ], [ %195, %190 ]
  %198 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %167, i8 signext %197)
          to label %199 unwind label %222

199:                                              ; preds = %196
  %200 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %198)
          to label %201 unwind label %222

201:                                              ; preds = %199
  %202 = load double, double* %119, align 8, !tbaa !87
  %203 = load i32, i32* %122, align 4, !tbaa !14
  br label %224

204:                                              ; preds = %92
  %205 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #26
  br label %993

206:                                              ; preds = %96
  %207 = landingpad { i8*, i32 }
          cleanup
  br label %215

208:                                              ; preds = %99
  %209 = landingpad { i8*, i32 }
          cleanup
  br label %212

210:                                              ; preds = %102
  %211 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %104) #26
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi { i8*, i32 } [ %211, %210 ], [ %209, %208 ]
  %214 = phi %"class.std::basic_string"* [ %103, %210 ], [ %100, %208 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %101) #26
  br label %215

215:                                              ; preds = %206, %212
  %216 = phi { i8*, i32 } [ %213, %212 ], [ %207, %206 ]
  %217 = phi %"class.std::basic_string"* [ %214, %212 ], [ %97, %206 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %98) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #26
  br label %218

218:                                              ; preds = %215, %218
  %219 = phi %"class.std::basic_string"* [ %220, %218 ], [ %217, %215 ]
  %220 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %219, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220) #26
  %221 = icmp eq %"class.std::basic_string"* %220, %94
  br i1 %221, label %993, label %218

222:                                              ; preds = %199, %196, %190, %189, %180, %166, %163, %157, %156, %147, %133, %131, %787
  %223 = landingpad { i8*, i32 }
          cleanup
  br label %983

224:                                              ; preds = %201, %105
  %225 = phi i32 [ %203, %201 ], [ %123, %105 ]
  %226 = phi double [ %202, %201 ], [ %120, %105 ]
  %227 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 1
  %228 = load double, double* %227, align 8, !tbaa !70
  %229 = fadd contract double %228, %226
  %230 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 26
  %231 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %230, align 8, !tbaa !65
  %232 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %231, i64 0, i32 1
  store double %229, double* %232, align 8, !tbaa !88
  %233 = bitcast %"class.std::basic_string"* %56 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %233) #26
  %234 = bitcast %"class.std::basic_string"* %57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %234) #26
  %235 = bitcast %"class.std::basic_string"* %58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %235) #26
  %236 = bitcast %"class.std::basic_ostringstream"* %49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %236) #26, !noalias !91
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %49, i32 16)
          to label %237 unwind label %935

237:                                              ; preds = %224
  %238 = bitcast %"class.std::basic_ostringstream"* %49 to i8**
  %239 = load i8*, i8** %238, align 8, !tbaa !20, !noalias !91
  %240 = getelementptr i8, i8* %239, i64 -24
  %241 = bitcast i8* %240 to i64*
  %242 = load i64, i64* %241, align 8, !noalias !91
  %243 = getelementptr inbounds i8, i8* %236, i64 %242
  %244 = getelementptr inbounds i8, i8* %243, i64 24
  %245 = bitcast i8* %244 to i32*
  %246 = load i32, i32* %245, align 8, !tbaa !94, !noalias !91
  %247 = and i32 %246, -75
  %248 = or i32 %247, 2
  store i32 %248, i32* %245, align 8, !tbaa !100, !noalias !91
  %249 = bitcast %"class.std::basic_ostringstream"* %49 to %"class.std::basic_ostream"*
  %250 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %249, i32 %225)
          to label %251 unwind label %281, !noalias !91

251:                                              ; preds = %237
  %252 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %49, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %58, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %252)
          to label %253 unwind label %281

253:                                              ; preds = %251
  %254 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %255 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %49, i64 0, i32 0, i32 0
  store i32 (...)** %254, i32 (...)*** %255, align 8, !tbaa !20, !noalias !91
  %256 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %257 = getelementptr i32 (...)*, i32 (...)** %254, i64 -3
  %258 = bitcast i32 (...)** %257 to i64*
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i8, i8* %236, i64 %259
  %261 = bitcast i8* %260 to i32 (...)***
  store i32 (...)** %256, i32 (...)*** %261, align 8, !tbaa !20, !noalias !91
  %262 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %49, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %262, align 8, !tbaa !20, !noalias !91
  %263 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %49, i64 0, i32 1, i32 2, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8, !tbaa !16, !noalias !91
  %265 = getelementptr inbounds i8, i8* %264, i64 -24
  %266 = bitcast i8* %265 to %"struct.std::basic_string<char>::_Rep"*
  %267 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %48, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %267) #26, !noalias !91
  %268 = icmp eq i8* %265, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %268, label %283, label %269, !prof !19

269:                                              ; preds = %253
  %270 = getelementptr inbounds i8, i8* %264, i64 -8
  %271 = bitcast i8* %270 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %272, label %274

272:                                              ; preds = %269
  %273 = atomicrmw volatile add i32* %271, i32 -1 acq_rel, align 4
  br label %277

274:                                              ; preds = %269
  %275 = load i32, i32* %271, align 8, !tbaa !7
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %271, align 8, !tbaa !7
  br label %277

277:                                              ; preds = %274, %272
  %278 = phi i32 [ %273, %272 ], [ %275, %274 ]
  %279 = icmp slt i32 %278, 1
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %266, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %48) #26
  br label %283

281:                                              ; preds = %251, %237
  %282 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %49) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %236) #26, !noalias !91
  br label %951

283:                                              ; preds = %280, %277, %253
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %267) #26, !noalias !91
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %262, align 8, !tbaa !20, !noalias !91
  %284 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %49, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %284) #26
  %285 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %49, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %285) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %236) #26, !noalias !91
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %286 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1)
          to label %287 unwind label %937

287:                                              ; preds = %283
  %288 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %57, i64 0, i32 0, i32 0
  %289 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %286, i64 0, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8, !tbaa !54, !noalias !101
  store i8* %290, i8** %288, align 8, !tbaa !54, !alias.scope !101
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %289, align 8, !tbaa !16, !noalias !101
  %291 = bitcast %"class.std::basic_string"* %59 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %291) #26
  %292 = load i32, i32* %112, align 8, !tbaa !9
  %293 = bitcast %"class.std::basic_ostringstream"* %47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %293) #26, !noalias !104
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %47, i32 16)
          to label %294 unwind label %939

294:                                              ; preds = %287
  %295 = bitcast %"class.std::basic_ostringstream"* %47 to i8**
  %296 = load i8*, i8** %295, align 8, !tbaa !20, !noalias !104
  %297 = getelementptr i8, i8* %296, i64 -24
  %298 = bitcast i8* %297 to i64*
  %299 = load i64, i64* %298, align 8, !noalias !104
  %300 = getelementptr inbounds i8, i8* %293, i64 %299
  %301 = getelementptr inbounds i8, i8* %300, i64 24
  %302 = bitcast i8* %301 to i32*
  %303 = load i32, i32* %302, align 8, !tbaa !94, !noalias !104
  %304 = and i32 %303, -75
  %305 = or i32 %304, 2
  store i32 %305, i32* %302, align 8, !tbaa !100, !noalias !104
  %306 = bitcast %"class.std::basic_ostringstream"* %47 to %"class.std::basic_ostream"*
  %307 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %306, i32 %292)
          to label %308 unwind label %334, !noalias !104

308:                                              ; preds = %294
  %309 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %47, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %59, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %309)
          to label %310 unwind label %334

310:                                              ; preds = %308
  %311 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %47, i64 0, i32 0, i32 0
  store i32 (...)** %254, i32 (...)*** %311, align 8, !tbaa !20, !noalias !104
  %312 = load i64, i64* %258, align 8
  %313 = getelementptr inbounds i8, i8* %293, i64 %312
  %314 = bitcast i8* %313 to i32 (...)***
  store i32 (...)** %256, i32 (...)*** %314, align 8, !tbaa !20, !noalias !104
  %315 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %47, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %315, align 8, !tbaa !20, !noalias !104
  %316 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %47, i64 0, i32 1, i32 2, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8, !tbaa !16, !noalias !104
  %318 = getelementptr inbounds i8, i8* %317, i64 -24
  %319 = bitcast i8* %318 to %"struct.std::basic_string<char>::_Rep"*
  %320 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %46, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %320) #26, !noalias !104
  %321 = icmp eq i8* %318, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %321, label %336, label %322, !prof !19

322:                                              ; preds = %310
  %323 = getelementptr inbounds i8, i8* %317, i64 -8
  %324 = bitcast i8* %323 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %325, label %327

325:                                              ; preds = %322
  %326 = atomicrmw volatile add i32* %324, i32 -1 acq_rel, align 4
  br label %330

327:                                              ; preds = %322
  %328 = load i32, i32* %324, align 8, !tbaa !7
  %329 = add nsw i32 %328, -1
  store i32 %329, i32* %324, align 8, !tbaa !7
  br label %330

330:                                              ; preds = %327, %325
  %331 = phi i32 [ %326, %325 ], [ %328, %327 ]
  %332 = icmp slt i32 %331, 1
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %319, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %46) #26
  br label %336

334:                                              ; preds = %308, %294
  %335 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %47) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %293) #26, !noalias !104
  br label %947

336:                                              ; preds = %333, %330, %310
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %320) #26, !noalias !104
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %315, align 8, !tbaa !20, !noalias !104
  %337 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %47, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %337) #26
  %338 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %47, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %338) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %293) #26, !noalias !104
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %339 = load i8*, i8** %288, align 8, !tbaa !16, !noalias !107
  %340 = getelementptr inbounds i8, i8* %339, i64 -24
  %341 = bitcast i8* %340 to i64*
  %342 = load i64, i64* %341, align 8, !tbaa !38, !noalias !107
  %343 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %59, i64 0, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8, !tbaa !16, !noalias !107
  %345 = getelementptr inbounds i8, i8* %344, i64 -24
  %346 = bitcast i8* %345 to i64*
  %347 = load i64, i64* %346, align 8, !tbaa !38, !noalias !107
  %348 = add i64 %347, %342
  %349 = getelementptr inbounds i8, i8* %339, i64 -16
  %350 = bitcast i8* %349 to i64*
  %351 = load i64, i64* %350, align 8, !tbaa !110, !noalias !107
  %352 = icmp ugt i64 %348, %351
  br i1 %352, label %353, label %360

353:                                              ; preds = %336
  %354 = getelementptr inbounds i8, i8* %344, i64 -16
  %355 = bitcast i8* %354 to i64*
  %356 = load i64, i64* %355, align 8, !tbaa !110, !noalias !107
  %357 = icmp ugt i64 %348, %356
  br i1 %357, label %360, label %358

358:                                              ; preds = %353
  %359 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %59, i64 0, i8* nonnull %339, i64 %342)
          to label %362 unwind label %941

360:                                              ; preds = %353, %336
  %361 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %57, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %59)
          to label %362 unwind label %941

362:                                              ; preds = %358, %360
  %363 = phi %"class.std::basic_string"* [ %359, %358 ], [ %361, %360 ]
  %364 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %56, i64 0, i32 0, i32 0
  %365 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %363, i64 0, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8, !tbaa !54, !noalias !107
  store i8* %366, i8** %364, align 8, !tbaa !54, !alias.scope !107
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %365, align 8, !tbaa !16, !noalias !107
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %107, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %56)
          to label %367 unwind label %943

367:                                              ; preds = %362
  %368 = load i8*, i8** %364, align 8, !tbaa !16
  %369 = getelementptr inbounds i8, i8* %368, i64 -24
  %370 = bitcast i8* %369 to %"struct.std::basic_string<char>::_Rep"*
  %371 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %45, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %371) #26
  %372 = icmp eq i8* %369, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %372, label %385, label %373, !prof !19

373:                                              ; preds = %367
  %374 = getelementptr inbounds i8, i8* %368, i64 -8
  %375 = bitcast i8* %374 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %376, label %378

376:                                              ; preds = %373
  %377 = atomicrmw volatile add i32* %375, i32 -1 acq_rel, align 4
  br label %381

378:                                              ; preds = %373
  %379 = load i32, i32* %375, align 8, !tbaa !7
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %375, align 8, !tbaa !7
  br label %381

381:                                              ; preds = %378, %376
  %382 = phi i32 [ %377, %376 ], [ %379, %378 ]
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %370, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %45) #26
  br label %385

385:                                              ; preds = %367, %381, %384
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %371) #26
  %386 = load i8*, i8** %343, align 8, !tbaa !16
  %387 = getelementptr inbounds i8, i8* %386, i64 -24
  %388 = bitcast i8* %387 to %"struct.std::basic_string<char>::_Rep"*
  %389 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %44, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %389) #26
  %390 = icmp eq i8* %387, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %390, label %403, label %391, !prof !19

391:                                              ; preds = %385
  %392 = getelementptr inbounds i8, i8* %386, i64 -8
  %393 = bitcast i8* %392 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %394, label %396

394:                                              ; preds = %391
  %395 = atomicrmw volatile add i32* %393, i32 -1 acq_rel, align 4
  br label %399

396:                                              ; preds = %391
  %397 = load i32, i32* %393, align 8, !tbaa !7
  %398 = add nsw i32 %397, -1
  store i32 %398, i32* %393, align 8, !tbaa !7
  br label %399

399:                                              ; preds = %396, %394
  %400 = phi i32 [ %395, %394 ], [ %397, %396 ]
  %401 = icmp slt i32 %400, 1
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %388, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %44) #26
  br label %403

403:                                              ; preds = %385, %399, %402
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %389) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %291) #26
  %404 = load i8*, i8** %288, align 8, !tbaa !16
  %405 = getelementptr inbounds i8, i8* %404, i64 -24
  %406 = bitcast i8* %405 to %"struct.std::basic_string<char>::_Rep"*
  %407 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %43, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %407) #26
  %408 = icmp eq i8* %405, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %408, label %421, label %409, !prof !19

409:                                              ; preds = %403
  %410 = getelementptr inbounds i8, i8* %404, i64 -8
  %411 = bitcast i8* %410 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %412, label %414

412:                                              ; preds = %409
  %413 = atomicrmw volatile add i32* %411, i32 -1 acq_rel, align 4
  br label %417

414:                                              ; preds = %409
  %415 = load i32, i32* %411, align 8, !tbaa !7
  %416 = add nsw i32 %415, -1
  store i32 %416, i32* %411, align 8, !tbaa !7
  br label %417

417:                                              ; preds = %414, %412
  %418 = phi i32 [ %413, %412 ], [ %415, %414 ]
  %419 = icmp slt i32 %418, 1
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %406, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %43) #26
  br label %421

421:                                              ; preds = %403, %417, %420
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %407) #26
  %422 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %58, i64 0, i32 0, i32 0
  %423 = load i8*, i8** %422, align 8, !tbaa !16
  %424 = getelementptr inbounds i8, i8* %423, i64 -24
  %425 = bitcast i8* %424 to %"struct.std::basic_string<char>::_Rep"*
  %426 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %42, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %426) #26
  %427 = icmp eq i8* %424, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %427, label %440, label %428, !prof !19

428:                                              ; preds = %421
  %429 = getelementptr inbounds i8, i8* %423, i64 -8
  %430 = bitcast i8* %429 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %431, label %433

431:                                              ; preds = %428
  %432 = atomicrmw volatile add i32* %430, i32 -1 acq_rel, align 4
  br label %436

433:                                              ; preds = %428
  %434 = load i32, i32* %430, align 8, !tbaa !7
  %435 = add nsw i32 %434, -1
  store i32 %435, i32* %430, align 8, !tbaa !7
  br label %436

436:                                              ; preds = %433, %431
  %437 = phi i32 [ %432, %431 ], [ %434, %433 ]
  %438 = icmp slt i32 %437, 1
  br i1 %438, label %439, label %440

439:                                              ; preds = %436
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %425, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %42) #26
  br label %440

440:                                              ; preds = %421, %436, %439
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %426) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %235) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %234) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %233) #26
  %441 = bitcast %"class.std::basic_string"* %60 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %441) #26
  %442 = bitcast %"class.std::basic_string"* %61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %442) #26
  %443 = bitcast %"class.std::basic_string"* %62 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %443) #26
  %444 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 9
  %445 = load i32, i32* %444, align 4, !tbaa !28
  %446 = bitcast %"class.std::basic_ostringstream"* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %446) #26, !noalias !111
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %41, i32 16)
          to label %447 unwind label %953

447:                                              ; preds = %440
  %448 = bitcast %"class.std::basic_ostringstream"* %41 to i8**
  %449 = load i8*, i8** %448, align 8, !tbaa !20, !noalias !111
  %450 = getelementptr i8, i8* %449, i64 -24
  %451 = bitcast i8* %450 to i64*
  %452 = load i64, i64* %451, align 8, !noalias !111
  %453 = getelementptr inbounds i8, i8* %446, i64 %452
  %454 = getelementptr inbounds i8, i8* %453, i64 24
  %455 = bitcast i8* %454 to i32*
  %456 = load i32, i32* %455, align 8, !tbaa !94, !noalias !111
  %457 = and i32 %456, -75
  %458 = or i32 %457, 2
  store i32 %458, i32* %455, align 8, !tbaa !100, !noalias !111
  %459 = bitcast %"class.std::basic_ostringstream"* %41 to %"class.std::basic_ostream"*
  %460 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %459, i32 %445)
          to label %461 unwind label %487, !noalias !111

461:                                              ; preds = %447
  %462 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %41, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %62, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %462)
          to label %463 unwind label %487

463:                                              ; preds = %461
  %464 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %41, i64 0, i32 0, i32 0
  store i32 (...)** %254, i32 (...)*** %464, align 8, !tbaa !20, !noalias !111
  %465 = load i64, i64* %258, align 8
  %466 = getelementptr inbounds i8, i8* %446, i64 %465
  %467 = bitcast i8* %466 to i32 (...)***
  store i32 (...)** %256, i32 (...)*** %467, align 8, !tbaa !20, !noalias !111
  %468 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %41, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %468, align 8, !tbaa !20, !noalias !111
  %469 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %41, i64 0, i32 1, i32 2, i32 0, i32 0
  %470 = load i8*, i8** %469, align 8, !tbaa !16, !noalias !111
  %471 = getelementptr inbounds i8, i8* %470, i64 -24
  %472 = bitcast i8* %471 to %"struct.std::basic_string<char>::_Rep"*
  %473 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %40, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %473) #26, !noalias !111
  %474 = icmp eq i8* %471, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %474, label %489, label %475, !prof !19

475:                                              ; preds = %463
  %476 = getelementptr inbounds i8, i8* %470, i64 -8
  %477 = bitcast i8* %476 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %478, label %480

478:                                              ; preds = %475
  %479 = atomicrmw volatile add i32* %477, i32 -1 acq_rel, align 4
  br label %483

480:                                              ; preds = %475
  %481 = load i32, i32* %477, align 8, !tbaa !7
  %482 = add nsw i32 %481, -1
  store i32 %482, i32* %477, align 8, !tbaa !7
  br label %483

483:                                              ; preds = %480, %478
  %484 = phi i32 [ %479, %478 ], [ %481, %480 ]
  %485 = icmp slt i32 %484, 1
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %472, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %40) #26
  br label %489

487:                                              ; preds = %461, %447
  %488 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %41) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %446) #26, !noalias !111
  br label %969

489:                                              ; preds = %486, %483, %463
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %473) #26, !noalias !111
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %468, align 8, !tbaa !20, !noalias !111
  %490 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %41, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %490) #26
  %491 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %41, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %491) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %446) #26, !noalias !111
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %492 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1)
          to label %493 unwind label %955

493:                                              ; preds = %489
  %494 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %61, i64 0, i32 0, i32 0
  %495 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %492, i64 0, i32 0, i32 0
  %496 = load i8*, i8** %495, align 8, !tbaa !54, !noalias !114
  store i8* %496, i8** %494, align 8, !tbaa !54, !alias.scope !114
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %495, align 8, !tbaa !16, !noalias !114
  %497 = bitcast %"class.std::basic_string"* %63 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %497) #26
  %498 = load i32, i32* %115, align 8, !tbaa !27
  %499 = bitcast %"class.std::basic_ostringstream"* %39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %499) #26, !noalias !117
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %39, i32 16)
          to label %500 unwind label %957

500:                                              ; preds = %493
  %501 = bitcast %"class.std::basic_ostringstream"* %39 to i8**
  %502 = load i8*, i8** %501, align 8, !tbaa !20, !noalias !117
  %503 = getelementptr i8, i8* %502, i64 -24
  %504 = bitcast i8* %503 to i64*
  %505 = load i64, i64* %504, align 8, !noalias !117
  %506 = getelementptr inbounds i8, i8* %499, i64 %505
  %507 = getelementptr inbounds i8, i8* %506, i64 24
  %508 = bitcast i8* %507 to i32*
  %509 = load i32, i32* %508, align 8, !tbaa !94, !noalias !117
  %510 = and i32 %509, -75
  %511 = or i32 %510, 2
  store i32 %511, i32* %508, align 8, !tbaa !100, !noalias !117
  %512 = bitcast %"class.std::basic_ostringstream"* %39 to %"class.std::basic_ostream"*
  %513 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %512, i32 %498)
          to label %514 unwind label %540, !noalias !117

514:                                              ; preds = %500
  %515 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %39, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %63, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %515)
          to label %516 unwind label %540

516:                                              ; preds = %514
  %517 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %39, i64 0, i32 0, i32 0
  store i32 (...)** %254, i32 (...)*** %517, align 8, !tbaa !20, !noalias !117
  %518 = load i64, i64* %258, align 8
  %519 = getelementptr inbounds i8, i8* %499, i64 %518
  %520 = bitcast i8* %519 to i32 (...)***
  store i32 (...)** %256, i32 (...)*** %520, align 8, !tbaa !20, !noalias !117
  %521 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %39, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %521, align 8, !tbaa !20, !noalias !117
  %522 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %39, i64 0, i32 1, i32 2, i32 0, i32 0
  %523 = load i8*, i8** %522, align 8, !tbaa !16, !noalias !117
  %524 = getelementptr inbounds i8, i8* %523, i64 -24
  %525 = bitcast i8* %524 to %"struct.std::basic_string<char>::_Rep"*
  %526 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %38, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %526) #26, !noalias !117
  %527 = icmp eq i8* %524, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %527, label %542, label %528, !prof !19

528:                                              ; preds = %516
  %529 = getelementptr inbounds i8, i8* %523, i64 -8
  %530 = bitcast i8* %529 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %531, label %533

531:                                              ; preds = %528
  %532 = atomicrmw volatile add i32* %530, i32 -1 acq_rel, align 4
  br label %536

533:                                              ; preds = %528
  %534 = load i32, i32* %530, align 8, !tbaa !7
  %535 = add nsw i32 %534, -1
  store i32 %535, i32* %530, align 8, !tbaa !7
  br label %536

536:                                              ; preds = %533, %531
  %537 = phi i32 [ %532, %531 ], [ %534, %533 ]
  %538 = icmp slt i32 %537, 1
  br i1 %538, label %539, label %542

539:                                              ; preds = %536
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %525, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %38) #26
  br label %542

540:                                              ; preds = %514, %500
  %541 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %39) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %499) #26, !noalias !117
  br label %965

542:                                              ; preds = %539, %536, %516
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %526) #26, !noalias !117
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %521, align 8, !tbaa !20, !noalias !117
  %543 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %39, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %543) #26
  %544 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %39, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %544) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %499) #26, !noalias !117
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %545 = load i8*, i8** %494, align 8, !tbaa !16, !noalias !120
  %546 = getelementptr inbounds i8, i8* %545, i64 -24
  %547 = bitcast i8* %546 to i64*
  %548 = load i64, i64* %547, align 8, !tbaa !38, !noalias !120
  %549 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %63, i64 0, i32 0, i32 0
  %550 = load i8*, i8** %549, align 8, !tbaa !16, !noalias !120
  %551 = getelementptr inbounds i8, i8* %550, i64 -24
  %552 = bitcast i8* %551 to i64*
  %553 = load i64, i64* %552, align 8, !tbaa !38, !noalias !120
  %554 = add i64 %553, %548
  %555 = getelementptr inbounds i8, i8* %545, i64 -16
  %556 = bitcast i8* %555 to i64*
  %557 = load i64, i64* %556, align 8, !tbaa !110, !noalias !120
  %558 = icmp ugt i64 %554, %557
  br i1 %558, label %559, label %566

559:                                              ; preds = %542
  %560 = getelementptr inbounds i8, i8* %550, i64 -16
  %561 = bitcast i8* %560 to i64*
  %562 = load i64, i64* %561, align 8, !tbaa !110, !noalias !120
  %563 = icmp ugt i64 %554, %562
  br i1 %563, label %566, label %564

564:                                              ; preds = %559
  %565 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %63, i64 0, i8* nonnull %545, i64 %548)
          to label %568 unwind label %959

566:                                              ; preds = %559, %542
  %567 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %63)
          to label %568 unwind label %959

568:                                              ; preds = %564, %566
  %569 = phi %"class.std::basic_string"* [ %565, %564 ], [ %567, %566 ]
  %570 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %60, i64 0, i32 0, i32 0
  %571 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %569, i64 0, i32 0, i32 0
  %572 = load i8*, i8** %571, align 8, !tbaa !54, !noalias !120
  store i8* %572, i8** %570, align 8, !tbaa !54, !alias.scope !120
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %571, align 8, !tbaa !16, !noalias !120
  %573 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %573, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %60)
          to label %574 unwind label %961

574:                                              ; preds = %568
  %575 = load i8*, i8** %570, align 8, !tbaa !16
  %576 = getelementptr inbounds i8, i8* %575, i64 -24
  %577 = bitcast i8* %576 to %"struct.std::basic_string<char>::_Rep"*
  %578 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %37, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %578) #26
  %579 = icmp eq i8* %576, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %579, label %592, label %580, !prof !19

580:                                              ; preds = %574
  %581 = getelementptr inbounds i8, i8* %575, i64 -8
  %582 = bitcast i8* %581 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %583, label %585

583:                                              ; preds = %580
  %584 = atomicrmw volatile add i32* %582, i32 -1 acq_rel, align 4
  br label %588

585:                                              ; preds = %580
  %586 = load i32, i32* %582, align 8, !tbaa !7
  %587 = add nsw i32 %586, -1
  store i32 %587, i32* %582, align 8, !tbaa !7
  br label %588

588:                                              ; preds = %585, %583
  %589 = phi i32 [ %584, %583 ], [ %586, %585 ]
  %590 = icmp slt i32 %589, 1
  br i1 %590, label %591, label %592

591:                                              ; preds = %588
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %577, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %37) #26
  br label %592

592:                                              ; preds = %574, %588, %591
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %578) #26
  %593 = load i8*, i8** %549, align 8, !tbaa !16
  %594 = getelementptr inbounds i8, i8* %593, i64 -24
  %595 = bitcast i8* %594 to %"struct.std::basic_string<char>::_Rep"*
  %596 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %36, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %596) #26
  %597 = icmp eq i8* %594, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %597, label %610, label %598, !prof !19

598:                                              ; preds = %592
  %599 = getelementptr inbounds i8, i8* %593, i64 -8
  %600 = bitcast i8* %599 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %601, label %603

601:                                              ; preds = %598
  %602 = atomicrmw volatile add i32* %600, i32 -1 acq_rel, align 4
  br label %606

603:                                              ; preds = %598
  %604 = load i32, i32* %600, align 8, !tbaa !7
  %605 = add nsw i32 %604, -1
  store i32 %605, i32* %600, align 8, !tbaa !7
  br label %606

606:                                              ; preds = %603, %601
  %607 = phi i32 [ %602, %601 ], [ %604, %603 ]
  %608 = icmp slt i32 %607, 1
  br i1 %608, label %609, label %610

609:                                              ; preds = %606
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %595, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %36) #26
  br label %610

610:                                              ; preds = %592, %606, %609
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %596) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %497) #26
  %611 = load i8*, i8** %494, align 8, !tbaa !16
  %612 = getelementptr inbounds i8, i8* %611, i64 -24
  %613 = bitcast i8* %612 to %"struct.std::basic_string<char>::_Rep"*
  %614 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %35, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %614) #26
  %615 = icmp eq i8* %612, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %615, label %628, label %616, !prof !19

616:                                              ; preds = %610
  %617 = getelementptr inbounds i8, i8* %611, i64 -8
  %618 = bitcast i8* %617 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %619, label %621

619:                                              ; preds = %616
  %620 = atomicrmw volatile add i32* %618, i32 -1 acq_rel, align 4
  br label %624

621:                                              ; preds = %616
  %622 = load i32, i32* %618, align 8, !tbaa !7
  %623 = add nsw i32 %622, -1
  store i32 %623, i32* %618, align 8, !tbaa !7
  br label %624

624:                                              ; preds = %621, %619
  %625 = phi i32 [ %620, %619 ], [ %622, %621 ]
  %626 = icmp slt i32 %625, 1
  br i1 %626, label %627, label %628

627:                                              ; preds = %624
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %613, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %35) #26
  br label %628

628:                                              ; preds = %610, %624, %627
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %614) #26
  %629 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %630 = load i8*, i8** %629, align 8, !tbaa !16
  %631 = getelementptr inbounds i8, i8* %630, i64 -24
  %632 = bitcast i8* %631 to %"struct.std::basic_string<char>::_Rep"*
  %633 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %34, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %633) #26
  %634 = icmp eq i8* %631, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %634, label %647, label %635, !prof !19

635:                                              ; preds = %628
  %636 = getelementptr inbounds i8, i8* %630, i64 -8
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %632, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %34) #26
  br label %647

647:                                              ; preds = %628, %643, %646
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %633) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %443) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %442) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %441) #26
  %648 = bitcast %"class.std::basic_string"* %64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %648) #26
  %649 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %230, align 8, !tbaa !65
  %650 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %649, i64 0, i32 1
  %651 = load double, double* %650, align 8, !tbaa !88
  %652 = bitcast %"class.std::basic_ostringstream"* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %652) #26, !noalias !123
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %33, i32 16)
          to label %653 unwind label %971

653:                                              ; preds = %647
  %654 = bitcast %"class.std::basic_ostringstream"* %33 to i8**
  %655 = load i8*, i8** %654, align 8, !tbaa !20, !noalias !123
  %656 = getelementptr i8, i8* %655, i64 -24
  %657 = bitcast i8* %656 to i64*
  %658 = load i64, i64* %657, align 8, !noalias !123
  %659 = getelementptr inbounds i8, i8* %652, i64 %658
  %660 = getelementptr inbounds i8, i8* %659, i64 24
  %661 = bitcast i8* %660 to i32*
  %662 = load i32, i32* %661, align 8, !tbaa !94, !noalias !123
  %663 = and i32 %662, -75
  %664 = or i32 %663, 2
  store i32 %664, i32* %661, align 8, !tbaa !100, !noalias !123
  %665 = bitcast %"class.std::basic_ostringstream"* %33 to %"class.std::basic_ostream"*
  %666 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %665, double %651)
          to label %667 unwind label %693, !noalias !123

667:                                              ; preds = %653
  %668 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %33, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %64, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %668)
          to label %669 unwind label %693

669:                                              ; preds = %667
  %670 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %33, i64 0, i32 0, i32 0
  store i32 (...)** %254, i32 (...)*** %670, align 8, !tbaa !20, !noalias !123
  %671 = load i64, i64* %258, align 8
  %672 = getelementptr inbounds i8, i8* %652, i64 %671
  %673 = bitcast i8* %672 to i32 (...)***
  store i32 (...)** %256, i32 (...)*** %673, align 8, !tbaa !20, !noalias !123
  %674 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %33, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %674, align 8, !tbaa !20, !noalias !123
  %675 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %33, i64 0, i32 1, i32 2, i32 0, i32 0
  %676 = load i8*, i8** %675, align 8, !tbaa !16, !noalias !123
  %677 = getelementptr inbounds i8, i8* %676, i64 -24
  %678 = bitcast i8* %677 to %"struct.std::basic_string<char>::_Rep"*
  %679 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %32, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %679) #26, !noalias !123
  %680 = icmp eq i8* %677, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %680, label %695, label %681, !prof !19

681:                                              ; preds = %669
  %682 = getelementptr inbounds i8, i8* %676, i64 -8
  %683 = bitcast i8* %682 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %684, label %686

684:                                              ; preds = %681
  %685 = atomicrmw volatile add i32* %683, i32 -1 acq_rel, align 4
  br label %689

686:                                              ; preds = %681
  %687 = load i32, i32* %683, align 8, !tbaa !7
  %688 = add nsw i32 %687, -1
  store i32 %688, i32* %683, align 8, !tbaa !7
  br label %689

689:                                              ; preds = %686, %684
  %690 = phi i32 [ %685, %684 ], [ %687, %686 ]
  %691 = icmp slt i32 %690, 1
  br i1 %691, label %692, label %695

692:                                              ; preds = %689
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %678, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %32) #26
  br label %695

693:                                              ; preds = %667, %653
  %694 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %33) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %652) #26, !noalias !123
  br label %975

695:                                              ; preds = %692, %689, %669
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %679) #26, !noalias !123
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %674, align 8, !tbaa !20, !noalias !123
  %696 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %33, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %696) #26
  %697 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %33, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %697) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %652) #26, !noalias !123
  %698 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %698, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64)
          to label %699 unwind label %973

699:                                              ; preds = %695
  %700 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %64, i64 0, i32 0, i32 0
  %701 = load i8*, i8** %700, align 8, !tbaa !16
  %702 = getelementptr inbounds i8, i8* %701, i64 -24
  %703 = bitcast i8* %702 to %"struct.std::basic_string<char>::_Rep"*
  %704 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %31, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %704) #26
  %705 = icmp eq i8* %702, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %705, label %718, label %706, !prof !19

706:                                              ; preds = %699
  %707 = getelementptr inbounds i8, i8* %701, i64 -8
  %708 = bitcast i8* %707 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %709, label %711

709:                                              ; preds = %706
  %710 = atomicrmw volatile add i32* %708, i32 -1 acq_rel, align 4
  br label %714

711:                                              ; preds = %706
  %712 = load i32, i32* %708, align 8, !tbaa !7
  %713 = add nsw i32 %712, -1
  store i32 %713, i32* %708, align 8, !tbaa !7
  br label %714

714:                                              ; preds = %711, %709
  %715 = phi i32 [ %710, %709 ], [ %712, %711 ]
  %716 = icmp slt i32 %715, 1
  br i1 %716, label %717, label %718

717:                                              ; preds = %714
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %703, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %31) #26
  br label %718

718:                                              ; preds = %699, %714, %717
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %704) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %648) #26
  %719 = bitcast %"class.std::basic_string"* %65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %719) #26
  %720 = load double, double* %119, align 8, !tbaa !87
  %721 = bitcast %"class.std::basic_ostringstream"* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %721) #26, !noalias !126
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %30, i32 16)
          to label %722 unwind label %977

722:                                              ; preds = %718
  %723 = bitcast %"class.std::basic_ostringstream"* %30 to i8**
  %724 = load i8*, i8** %723, align 8, !tbaa !20, !noalias !126
  %725 = getelementptr i8, i8* %724, i64 -24
  %726 = bitcast i8* %725 to i64*
  %727 = load i64, i64* %726, align 8, !noalias !126
  %728 = getelementptr inbounds i8, i8* %721, i64 %727
  %729 = getelementptr inbounds i8, i8* %728, i64 24
  %730 = bitcast i8* %729 to i32*
  %731 = load i32, i32* %730, align 8, !tbaa !94, !noalias !126
  %732 = and i32 %731, -75
  %733 = or i32 %732, 2
  store i32 %733, i32* %730, align 8, !tbaa !100, !noalias !126
  %734 = bitcast %"class.std::basic_ostringstream"* %30 to %"class.std::basic_ostream"*
  %735 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %734, double %720)
          to label %736 unwind label %762, !noalias !126

736:                                              ; preds = %722
  %737 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %30, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %65, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %737)
          to label %738 unwind label %762

738:                                              ; preds = %736
  %739 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %30, i64 0, i32 0, i32 0
  store i32 (...)** %254, i32 (...)*** %739, align 8, !tbaa !20, !noalias !126
  %740 = load i64, i64* %258, align 8
  %741 = getelementptr inbounds i8, i8* %721, i64 %740
  %742 = bitcast i8* %741 to i32 (...)***
  store i32 (...)** %256, i32 (...)*** %742, align 8, !tbaa !20, !noalias !126
  %743 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %30, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %743, align 8, !tbaa !20, !noalias !126
  %744 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %30, i64 0, i32 1, i32 2, i32 0, i32 0
  %745 = load i8*, i8** %744, align 8, !tbaa !16, !noalias !126
  %746 = getelementptr inbounds i8, i8* %745, i64 -24
  %747 = bitcast i8* %746 to %"struct.std::basic_string<char>::_Rep"*
  %748 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %29, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %748) #26, !noalias !126
  %749 = icmp eq i8* %746, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %749, label %764, label %750, !prof !19

750:                                              ; preds = %738
  %751 = getelementptr inbounds i8, i8* %745, i64 -8
  %752 = bitcast i8* %751 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %753, label %755

753:                                              ; preds = %750
  %754 = atomicrmw volatile add i32* %752, i32 -1 acq_rel, align 4
  br label %758

755:                                              ; preds = %750
  %756 = load i32, i32* %752, align 8, !tbaa !7
  %757 = add nsw i32 %756, -1
  store i32 %757, i32* %752, align 8, !tbaa !7
  br label %758

758:                                              ; preds = %755, %753
  %759 = phi i32 [ %754, %753 ], [ %756, %755 ]
  %760 = icmp slt i32 %759, 1
  br i1 %760, label %761, label %764

761:                                              ; preds = %758
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %747, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %29) #26
  br label %764

762:                                              ; preds = %736, %722
  %763 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %30) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %721) #26, !noalias !126
  br label %981

764:                                              ; preds = %761, %758, %738
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %748) #26, !noalias !126
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %743, align 8, !tbaa !20, !noalias !126
  %765 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %30, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %765) #26
  %766 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %30, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %766) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %721) #26, !noalias !126
  %767 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %767, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %65)
          to label %768 unwind label %979

768:                                              ; preds = %764
  %769 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %65, i64 0, i32 0, i32 0
  %770 = load i8*, i8** %769, align 8, !tbaa !16
  %771 = getelementptr inbounds i8, i8* %770, i64 -24
  %772 = bitcast i8* %771 to %"struct.std::basic_string<char>::_Rep"*
  %773 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %28, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %773) #26
  %774 = icmp eq i8* %771, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %774, label %787, label %775, !prof !19

775:                                              ; preds = %768
  %776 = getelementptr inbounds i8, i8* %770, i64 -8
  %777 = bitcast i8* %776 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %778, label %780

778:                                              ; preds = %775
  %779 = atomicrmw volatile add i32* %777, i32 -1 acq_rel, align 4
  br label %783

780:                                              ; preds = %775
  %781 = load i32, i32* %777, align 8, !tbaa !7
  %782 = add nsw i32 %781, -1
  store i32 %782, i32* %777, align 8, !tbaa !7
  br label %783

783:                                              ; preds = %780, %778
  %784 = phi i32 [ %779, %778 ], [ %781, %780 ]
  %785 = icmp slt i32 %784, 1
  br i1 %785, label %786, label %787

786:                                              ; preds = %783
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %772, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %28) #26
  br label %787

787:                                              ; preds = %768, %783, %786
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %773) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %719) #26
  invoke fastcc void @_ZN6appsdkL15printStatisticsEPSsS0_i(%"class.std::basic_string"* nonnull %94, %"class.std::basic_string"* nonnull %107)
          to label %788 unwind label %222

788:                                              ; preds = %787
  %789 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %27, i64 0, i32 0
  %790 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 3, i32 0, i32 0
  %791 = load i8*, i8** %790, align 8, !tbaa !16
  %792 = getelementptr inbounds i8, i8* %791, i64 -24
  %793 = bitcast i8* %792 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %789) #26
  %794 = icmp eq i8* %792, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %794, label %807, label %795, !prof !19

795:                                              ; preds = %788
  %796 = getelementptr inbounds i8, i8* %791, i64 -8
  %797 = bitcast i8* %796 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %798, label %800

798:                                              ; preds = %795
  %799 = atomicrmw volatile add i32* %797, i32 -1 acq_rel, align 4
  br label %803

800:                                              ; preds = %795
  %801 = load i32, i32* %797, align 8, !tbaa !7
  %802 = add nsw i32 %801, -1
  store i32 %802, i32* %797, align 8, !tbaa !7
  br label %803

803:                                              ; preds = %800, %798
  %804 = phi i32 [ %799, %798 ], [ %801, %800 ]
  %805 = icmp slt i32 %804, 1
  br i1 %805, label %806, label %807

806:                                              ; preds = %803
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %793, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %27) #26
  br label %807

807:                                              ; preds = %788, %803, %806
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %789) #26
  %808 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 2, i32 0, i32 0
  %809 = load i8*, i8** %808, align 16, !tbaa !16
  %810 = getelementptr inbounds i8, i8* %809, i64 -24
  %811 = bitcast i8* %810 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %789) #26
  %812 = icmp eq i8* %810, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %812, label %825, label %813, !prof !19

813:                                              ; preds = %807
  %814 = getelementptr inbounds i8, i8* %809, i64 -8
  %815 = bitcast i8* %814 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %819, label %816

816:                                              ; preds = %813
  %817 = load i32, i32* %815, align 8, !tbaa !7
  %818 = add nsw i32 %817, -1
  store i32 %818, i32* %815, align 8, !tbaa !7
  br label %821

819:                                              ; preds = %813
  %820 = atomicrmw volatile add i32* %815, i32 -1 acq_rel, align 4
  br label %821

821:                                              ; preds = %819, %816
  %822 = phi i32 [ %820, %819 ], [ %817, %816 ]
  %823 = icmp slt i32 %822, 1
  br i1 %823, label %824, label %825

824:                                              ; preds = %821
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %811, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %27) #26
  br label %825

825:                                              ; preds = %824, %821, %807
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %789) #26
  %826 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 1, i32 0, i32 0
  %827 = load i8*, i8** %826, align 8, !tbaa !16
  %828 = getelementptr inbounds i8, i8* %827, i64 -24
  %829 = bitcast i8* %828 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %789) #26
  %830 = icmp eq i8* %828, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %830, label %843, label %831, !prof !19

831:                                              ; preds = %825
  %832 = getelementptr inbounds i8, i8* %827, i64 -8
  %833 = bitcast i8* %832 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %837, label %834

834:                                              ; preds = %831
  %835 = load i32, i32* %833, align 8, !tbaa !7
  %836 = add nsw i32 %835, -1
  store i32 %836, i32* %833, align 8, !tbaa !7
  br label %839

837:                                              ; preds = %831
  %838 = atomicrmw volatile add i32* %833, i32 -1 acq_rel, align 4
  br label %839

839:                                              ; preds = %837, %834
  %840 = phi i32 [ %838, %837 ], [ %835, %834 ]
  %841 = icmp slt i32 %840, 1
  br i1 %841, label %842, label %843

842:                                              ; preds = %839
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %829, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %27) #26
  br label %843

843:                                              ; preds = %842, %839, %825
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %789) #26
  %844 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 0, i32 0, i32 0
  %845 = load i8*, i8** %844, align 16, !tbaa !16
  %846 = getelementptr inbounds i8, i8* %845, i64 -24
  %847 = bitcast i8* %846 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %789) #26
  %848 = icmp eq i8* %846, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %848, label %861, label %849, !prof !19

849:                                              ; preds = %843
  %850 = getelementptr inbounds i8, i8* %845, i64 -8
  %851 = bitcast i8* %850 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %855, label %852

852:                                              ; preds = %849
  %853 = load i32, i32* %851, align 8, !tbaa !7
  %854 = add nsw i32 %853, -1
  store i32 %854, i32* %851, align 8, !tbaa !7
  br label %857

855:                                              ; preds = %849
  %856 = atomicrmw volatile add i32* %851, i32 -1 acq_rel, align 4
  br label %857

857:                                              ; preds = %855, %852
  %858 = phi i32 [ %856, %855 ], [ %853, %852 ]
  %859 = icmp slt i32 %858, 1
  br i1 %859, label %860, label %861

860:                                              ; preds = %857
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %847, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %27) #26
  br label %861

861:                                              ; preds = %860, %857, %843
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %789) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %106) #26
  %862 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %26, i64 0, i32 0
  %863 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 3, i32 0, i32 0
  %864 = load i8*, i8** %863, align 8, !tbaa !16
  %865 = getelementptr inbounds i8, i8* %864, i64 -24
  %866 = bitcast i8* %865 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %862) #26
  %867 = icmp eq i8* %865, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %867, label %880, label %868, !prof !19

868:                                              ; preds = %861
  %869 = getelementptr inbounds i8, i8* %864, i64 -8
  %870 = bitcast i8* %869 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %871, label %873

871:                                              ; preds = %868
  %872 = atomicrmw volatile add i32* %870, i32 -1 acq_rel, align 4
  br label %876

873:                                              ; preds = %868
  %874 = load i32, i32* %870, align 8, !tbaa !7
  %875 = add nsw i32 %874, -1
  store i32 %875, i32* %870, align 8, !tbaa !7
  br label %876

876:                                              ; preds = %873, %871
  %877 = phi i32 [ %872, %871 ], [ %874, %873 ]
  %878 = icmp slt i32 %877, 1
  br i1 %878, label %879, label %880

879:                                              ; preds = %876
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %866, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %26) #26
  br label %880

880:                                              ; preds = %861, %876, %879
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %862) #26
  %881 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 2, i32 0, i32 0
  %882 = load i8*, i8** %881, align 16, !tbaa !16
  %883 = getelementptr inbounds i8, i8* %882, i64 -24
  %884 = bitcast i8* %883 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %862) #26
  %885 = icmp eq i8* %883, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %885, label %898, label %886, !prof !19

886:                                              ; preds = %880
  %887 = getelementptr inbounds i8, i8* %882, i64 -8
  %888 = bitcast i8* %887 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %892, label %889

889:                                              ; preds = %886
  %890 = load i32, i32* %888, align 8, !tbaa !7
  %891 = add nsw i32 %890, -1
  store i32 %891, i32* %888, align 8, !tbaa !7
  br label %894

892:                                              ; preds = %886
  %893 = atomicrmw volatile add i32* %888, i32 -1 acq_rel, align 4
  br label %894

894:                                              ; preds = %892, %889
  %895 = phi i32 [ %893, %892 ], [ %890, %889 ]
  %896 = icmp slt i32 %895, 1
  br i1 %896, label %897, label %898

897:                                              ; preds = %894
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %884, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %26) #26
  br label %898

898:                                              ; preds = %897, %894, %880
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %862) #26
  %899 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 1, i32 0, i32 0
  %900 = load i8*, i8** %899, align 8, !tbaa !16
  %901 = getelementptr inbounds i8, i8* %900, i64 -24
  %902 = bitcast i8* %901 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %862) #26
  %903 = icmp eq i8* %901, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %903, label %916, label %904, !prof !19

904:                                              ; preds = %898
  %905 = getelementptr inbounds i8, i8* %900, i64 -8
  %906 = bitcast i8* %905 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %910, label %907

907:                                              ; preds = %904
  %908 = load i32, i32* %906, align 8, !tbaa !7
  %909 = add nsw i32 %908, -1
  store i32 %909, i32* %906, align 8, !tbaa !7
  br label %912

910:                                              ; preds = %904
  %911 = atomicrmw volatile add i32* %906, i32 -1 acq_rel, align 4
  br label %912

912:                                              ; preds = %910, %907
  %913 = phi i32 [ %911, %910 ], [ %908, %907 ]
  %914 = icmp slt i32 %913, 1
  br i1 %914, label %915, label %916

915:                                              ; preds = %912
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %902, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %26) #26
  br label %916

916:                                              ; preds = %915, %912, %898
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %862) #26
  %917 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 0, i32 0, i32 0
  %918 = load i8*, i8** %917, align 16, !tbaa !16
  %919 = getelementptr inbounds i8, i8* %918, i64 -24
  %920 = bitcast i8* %919 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %862) #26
  %921 = icmp eq i8* %919, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %921, label %934, label %922, !prof !19

922:                                              ; preds = %916
  %923 = getelementptr inbounds i8, i8* %918, i64 -8
  %924 = bitcast i8* %923 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %928, label %925

925:                                              ; preds = %922
  %926 = load i32, i32* %924, align 8, !tbaa !7
  %927 = add nsw i32 %926, -1
  store i32 %927, i32* %924, align 8, !tbaa !7
  br label %930

928:                                              ; preds = %922
  %929 = atomicrmw volatile add i32* %924, i32 -1 acq_rel, align 4
  br label %930

930:                                              ; preds = %928, %925
  %931 = phi i32 [ %929, %928 ], [ %926, %925 ]
  %932 = icmp slt i32 %931, 1
  br i1 %932, label %933, label %934

933:                                              ; preds = %930
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %920, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %26) #26
  br label %934

934:                                              ; preds = %933, %930, %916
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %862) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %93) #26
  br label %1898

935:                                              ; preds = %224
  %936 = landingpad { i8*, i32 }
          cleanup
  br label %951

937:                                              ; preds = %283
  %938 = landingpad { i8*, i32 }
          cleanup
  br label %949

939:                                              ; preds = %287
  %940 = landingpad { i8*, i32 }
          cleanup
  br label %947

941:                                              ; preds = %360, %358
  %942 = landingpad { i8*, i32 }
          cleanup
  br label %945

943:                                              ; preds = %362
  %944 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %56) #26
  br label %945

945:                                              ; preds = %943, %941
  %946 = phi { i8*, i32 } [ %944, %943 ], [ %942, %941 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %59) #26
  br label %947

947:                                              ; preds = %939, %334, %945
  %948 = phi { i8*, i32 } [ %946, %945 ], [ %940, %939 ], [ %335, %334 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %291) #26
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %57) #26
  br label %949

949:                                              ; preds = %947, %937
  %950 = phi { i8*, i32 } [ %948, %947 ], [ %938, %937 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58) #26
  br label %951

951:                                              ; preds = %935, %281, %949
  %952 = phi { i8*, i32 } [ %950, %949 ], [ %936, %935 ], [ %282, %281 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %235) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %234) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %233) #26
  br label %983

953:                                              ; preds = %440
  %954 = landingpad { i8*, i32 }
          cleanup
  br label %969

955:                                              ; preds = %489
  %956 = landingpad { i8*, i32 }
          cleanup
  br label %967

957:                                              ; preds = %493
  %958 = landingpad { i8*, i32 }
          cleanup
  br label %965

959:                                              ; preds = %566, %564
  %960 = landingpad { i8*, i32 }
          cleanup
  br label %963

961:                                              ; preds = %568
  %962 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %60) #26
  br label %963

963:                                              ; preds = %961, %959
  %964 = phi { i8*, i32 } [ %962, %961 ], [ %960, %959 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %63) #26
  br label %965

965:                                              ; preds = %957, %540, %963
  %966 = phi { i8*, i32 } [ %964, %963 ], [ %958, %957 ], [ %541, %540 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %497) #26
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61) #26
  br label %967

967:                                              ; preds = %965, %955
  %968 = phi { i8*, i32 } [ %966, %965 ], [ %956, %955 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %62) #26
  br label %969

969:                                              ; preds = %953, %487, %967
  %970 = phi { i8*, i32 } [ %968, %967 ], [ %954, %953 ], [ %488, %487 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %443) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %442) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %441) #26
  br label %983

971:                                              ; preds = %647
  %972 = landingpad { i8*, i32 }
          cleanup
  br label %975

973:                                              ; preds = %695
  %974 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64) #26
  br label %975

975:                                              ; preds = %971, %693, %973
  %976 = phi { i8*, i32 } [ %974, %973 ], [ %972, %971 ], [ %694, %693 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %648) #26
  br label %983

977:                                              ; preds = %718
  %978 = landingpad { i8*, i32 }
          cleanup
  br label %981

979:                                              ; preds = %764
  %980 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %65) #26
  br label %981

981:                                              ; preds = %977, %762, %979
  %982 = phi { i8*, i32 } [ %980, %979 ], [ %978, %977 ], [ %763, %762 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %719) #26
  br label %983

983:                                              ; preds = %981, %975, %969, %951, %222
  %984 = phi { i8*, i32 } [ %223, %222 ], [ %982, %981 ], [ %976, %975 ], [ %970, %969 ], [ %952, %951 ]
  %985 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %985) #26
  %986 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %986) #26
  %987 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %987) #26
  %988 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %55, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %988) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %106) #26
  %989 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %989) #26
  %990 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %990) #26
  %991 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %991) #26
  %992 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %50, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %992) #26
  br label %993

993:                                              ; preds = %218, %983, %204
  %994 = phi { i8*, i32 } [ %205, %204 ], [ %984, %983 ], [ %216, %218 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %93) #26
  br label %1899

995:                                              ; preds = %88
  %996 = bitcast [4 x %"class.std::basic_string"]* %66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %996) #26
  %997 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 0
  %998 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %67, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %998) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %997, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %67)
          to label %999 unwind label %1107

999:                                              ; preds = %995
  %1000 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 1
  %1001 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %68, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1001) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %68)
          to label %1002 unwind label %1109

1002:                                             ; preds = %999
  %1003 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 2
  %1004 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %69, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1004) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1003, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %69)
          to label %1005 unwind label %1111

1005:                                             ; preds = %1002
  %1006 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 3
  %1007 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %70, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1007) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1006, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %70)
          to label %1008 unwind label %1113

1008:                                             ; preds = %1005
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1007) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1004) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1001) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %998) #26
  %1009 = bitcast [4 x %"class.std::basic_string"]* %71 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1009) #26
  %1010 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 0
  %1011 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1011, align 16, !tbaa !54
  %1012 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1012, align 8, !tbaa !54
  %1013 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1013, align 16, !tbaa !54
  %1014 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1014, align 8, !tbaa !54
  %1015 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 5
  %1016 = load i32, i32* %1015, align 8, !tbaa !9
  %1017 = shl nsw i32 %1016, 1
  %1018 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 8
  %1019 = load i32, i32* %1018, align 8, !tbaa !27
  %1020 = mul nsw i32 %1017, %1019
  %1021 = sitofp i32 %1020 to double
  %1022 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 3
  %1023 = load double, double* %1022, align 8, !tbaa !81
  %1024 = fdiv contract double %1021, %1023
  %1025 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 6
  %1026 = load i32, i32* %1025, align 4, !tbaa !14
  %1027 = sitofp i32 %1026 to double
  %1028 = fmul contract double %1024, %1027
  %1029 = fmul contract double %1028, 1.000000e-09
  %1030 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %83, align 8, !tbaa !31
  %1031 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %1030, i64 0, i32 11
  %1032 = load i8, i8* %1031, align 2, !tbaa !85, !range !35
  %1033 = icmp eq i8 %1032, 0
  br i1 %1033, label %1127, label %1034

1034:                                             ; preds = %1008
  %1035 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0), i64 18)
          to label %1036 unwind label %1125

1036:                                             ; preds = %1034
  %1037 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %1029)
          to label %1038 unwind label %1125

1038:                                             ; preds = %1036
  %1039 = bitcast %"class.std::basic_ostream"* %1037 to i8**
  %1040 = load i8*, i8** %1039, align 8, !tbaa !20
  %1041 = getelementptr i8, i8* %1040, i64 -24
  %1042 = bitcast i8* %1041 to i64*
  %1043 = load i64, i64* %1042, align 8
  %1044 = bitcast %"class.std::basic_ostream"* %1037 to i8*
  %1045 = getelementptr inbounds i8, i8* %1044, i64 %1043
  %1046 = getelementptr inbounds i8, i8* %1045, i64 240
  %1047 = bitcast i8* %1046 to %"class.std::ctype"**
  %1048 = load %"class.std::ctype"*, %"class.std::ctype"** %1047, align 8, !tbaa !22
  %1049 = icmp eq %"class.std::ctype"* %1048, null
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1038
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %1051 unwind label %1125

1051:                                             ; preds = %1050
  unreachable

1052:                                             ; preds = %1038
  %1053 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %1048, i64 0, i32 8
  %1054 = load i8, i8* %1053, align 8, !tbaa !24
  %1055 = icmp eq i8 %1054, 0
  br i1 %1055, label %1059, label %1056

1056:                                             ; preds = %1052
  %1057 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %1048, i64 0, i32 9, i64 10
  %1058 = load i8, i8* %1057, align 1, !tbaa !26
  br label %1066

1059:                                             ; preds = %1052
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %1048)
          to label %1060 unwind label %1125

1060:                                             ; preds = %1059
  %1061 = bitcast %"class.std::ctype"* %1048 to i8 (%"class.std::ctype"*, i8)***
  %1062 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %1061, align 8, !tbaa !20
  %1063 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %1062, i64 6
  %1064 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %1063, align 8
  %1065 = invoke signext i8 %1064(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %1048, i8 signext 10)
          to label %1066 unwind label %1125

1066:                                             ; preds = %1060, %1056
  %1067 = phi i8 [ %1058, %1056 ], [ %1065, %1060 ]
  %1068 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1037, i8 signext %1067)
          to label %1069 unwind label %1125

1069:                                             ; preds = %1066
  %1070 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1068)
          to label %1071 unwind label %1125

1071:                                             ; preds = %1069
  %1072 = bitcast %"class.std::basic_ostream"* %1070 to i8**
  %1073 = load i8*, i8** %1072, align 8, !tbaa !20
  %1074 = getelementptr i8, i8* %1073, i64 -24
  %1075 = bitcast i8* %1074 to i64*
  %1076 = load i64, i64* %1075, align 8
  %1077 = bitcast %"class.std::basic_ostream"* %1070 to i8*
  %1078 = getelementptr inbounds i8, i8* %1077, i64 %1076
  %1079 = getelementptr inbounds i8, i8* %1078, i64 240
  %1080 = bitcast i8* %1079 to %"class.std::ctype"**
  %1081 = load %"class.std::ctype"*, %"class.std::ctype"** %1080, align 8, !tbaa !22
  %1082 = icmp eq %"class.std::ctype"* %1081, null
  br i1 %1082, label %1083, label %1085

1083:                                             ; preds = %1071
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %1084 unwind label %1125

1084:                                             ; preds = %1083
  unreachable

1085:                                             ; preds = %1071
  %1086 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %1081, i64 0, i32 8
  %1087 = load i8, i8* %1086, align 8, !tbaa !24
  %1088 = icmp eq i8 %1087, 0
  br i1 %1088, label %1092, label %1089

1089:                                             ; preds = %1085
  %1090 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %1081, i64 0, i32 9, i64 10
  %1091 = load i8, i8* %1090, align 1, !tbaa !26
  br label %1099

1092:                                             ; preds = %1085
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %1081)
          to label %1093 unwind label %1125

1093:                                             ; preds = %1092
  %1094 = bitcast %"class.std::ctype"* %1081 to i8 (%"class.std::ctype"*, i8)***
  %1095 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %1094, align 8, !tbaa !20
  %1096 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %1095, i64 6
  %1097 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %1096, align 8
  %1098 = invoke signext i8 %1097(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %1081, i8 signext 10)
          to label %1099 unwind label %1125

1099:                                             ; preds = %1093, %1089
  %1100 = phi i8 [ %1091, %1089 ], [ %1098, %1093 ]
  %1101 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1070, i8 signext %1100)
          to label %1102 unwind label %1125

1102:                                             ; preds = %1099
  %1103 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1101)
          to label %1104 unwind label %1125

1104:                                             ; preds = %1102
  %1105 = load double, double* %1022, align 8, !tbaa !81
  %1106 = load i32, i32* %1025, align 4, !tbaa !14
  br label %1127

1107:                                             ; preds = %995
  %1108 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %998) #26
  br label %1896

1109:                                             ; preds = %999
  %1110 = landingpad { i8*, i32 }
          cleanup
  br label %1118

1111:                                             ; preds = %1002
  %1112 = landingpad { i8*, i32 }
          cleanup
  br label %1115

1113:                                             ; preds = %1005
  %1114 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1007) #26
  br label %1115

1115:                                             ; preds = %1113, %1111
  %1116 = phi { i8*, i32 } [ %1114, %1113 ], [ %1112, %1111 ]
  %1117 = phi %"class.std::basic_string"* [ %1006, %1113 ], [ %1003, %1111 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1004) #26
  br label %1118

1118:                                             ; preds = %1109, %1115
  %1119 = phi { i8*, i32 } [ %1116, %1115 ], [ %1110, %1109 ]
  %1120 = phi %"class.std::basic_string"* [ %1117, %1115 ], [ %1000, %1109 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1001) #26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %998) #26
  br label %1121

1121:                                             ; preds = %1118, %1121
  %1122 = phi %"class.std::basic_string"* [ %1123, %1121 ], [ %1120, %1118 ]
  %1123 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1122, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1123) #26
  %1124 = icmp eq %"class.std::basic_string"* %1123, %997
  br i1 %1124, label %1896, label %1121

1125:                                             ; preds = %1102, %1099, %1093, %1092, %1083, %1069, %1066, %1060, %1059, %1050, %1036, %1034, %1690
  %1126 = landingpad { i8*, i32 }
          cleanup
  br label %1886

1127:                                             ; preds = %1104, %1008
  %1128 = phi i32 [ %1106, %1104 ], [ %1026, %1008 ]
  %1129 = phi double [ %1105, %1104 ], [ %1023, %1008 ]
  %1130 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 1
  %1131 = load double, double* %1130, align 8, !tbaa !70
  %1132 = fadd contract double %1131, %1129
  %1133 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 26
  %1134 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %1133, align 8, !tbaa !65
  %1135 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %1134, i64 0, i32 1
  store double %1132, double* %1135, align 8, !tbaa !88
  %1136 = bitcast %"class.std::basic_string"* %72 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1136) #26
  %1137 = bitcast %"class.std::basic_string"* %73 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1137) #26
  %1138 = bitcast %"class.std::basic_string"* %74 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1138) #26
  %1139 = bitcast %"class.std::basic_ostringstream"* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %1139) #26, !noalias !129
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %25, i32 16)
          to label %1140 unwind label %1838

1140:                                             ; preds = %1127
  %1141 = bitcast %"class.std::basic_ostringstream"* %25 to i8**
  %1142 = load i8*, i8** %1141, align 8, !tbaa !20, !noalias !129
  %1143 = getelementptr i8, i8* %1142, i64 -24
  %1144 = bitcast i8* %1143 to i64*
  %1145 = load i64, i64* %1144, align 8, !noalias !129
  %1146 = getelementptr inbounds i8, i8* %1139, i64 %1145
  %1147 = getelementptr inbounds i8, i8* %1146, i64 24
  %1148 = bitcast i8* %1147 to i32*
  %1149 = load i32, i32* %1148, align 8, !tbaa !94, !noalias !129
  %1150 = and i32 %1149, -75
  %1151 = or i32 %1150, 2
  store i32 %1151, i32* %1148, align 8, !tbaa !100, !noalias !129
  %1152 = bitcast %"class.std::basic_ostringstream"* %25 to %"class.std::basic_ostream"*
  %1153 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1152, i32 %1128)
          to label %1154 unwind label %1184, !noalias !129

1154:                                             ; preds = %1140
  %1155 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %25, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %74, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %1155)
          to label %1156 unwind label %1184

1156:                                             ; preds = %1154
  %1157 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %1158 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %25, i64 0, i32 0, i32 0
  store i32 (...)** %1157, i32 (...)*** %1158, align 8, !tbaa !20, !noalias !129
  %1159 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %1160 = getelementptr i32 (...)*, i32 (...)** %1157, i64 -3
  %1161 = bitcast i32 (...)** %1160 to i64*
  %1162 = load i64, i64* %1161, align 8
  %1163 = getelementptr inbounds i8, i8* %1139, i64 %1162
  %1164 = bitcast i8* %1163 to i32 (...)***
  store i32 (...)** %1159, i32 (...)*** %1164, align 8, !tbaa !20, !noalias !129
  %1165 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %25, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1165, align 8, !tbaa !20, !noalias !129
  %1166 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %25, i64 0, i32 1, i32 2, i32 0, i32 0
  %1167 = load i8*, i8** %1166, align 8, !tbaa !16, !noalias !129
  %1168 = getelementptr inbounds i8, i8* %1167, i64 -24
  %1169 = bitcast i8* %1168 to %"struct.std::basic_string<char>::_Rep"*
  %1170 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %24, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1170) #26, !noalias !129
  %1171 = icmp eq i8* %1168, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1171, label %1186, label %1172, !prof !19

1172:                                             ; preds = %1156
  %1173 = getelementptr inbounds i8, i8* %1167, i64 -8
  %1174 = bitcast i8* %1173 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1175, label %1177

1175:                                             ; preds = %1172
  %1176 = atomicrmw volatile add i32* %1174, i32 -1 acq_rel, align 4
  br label %1180

1177:                                             ; preds = %1172
  %1178 = load i32, i32* %1174, align 8, !tbaa !7
  %1179 = add nsw i32 %1178, -1
  store i32 %1179, i32* %1174, align 8, !tbaa !7
  br label %1180

1180:                                             ; preds = %1177, %1175
  %1181 = phi i32 [ %1176, %1175 ], [ %1178, %1177 ]
  %1182 = icmp slt i32 %1181, 1
  br i1 %1182, label %1183, label %1186

1183:                                             ; preds = %1180
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1169, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %24) #26
  br label %1186

1184:                                             ; preds = %1154, %1140
  %1185 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %25) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1139) #26, !noalias !129
  br label %1854

1186:                                             ; preds = %1183, %1180, %1156
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1170) #26, !noalias !129
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1165, align 8, !tbaa !20, !noalias !129
  %1187 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %25, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %1187) #26
  %1188 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %25, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %1188) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1139) #26, !noalias !129
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %1189 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1)
          to label %1190 unwind label %1840

1190:                                             ; preds = %1186
  %1191 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %73, i64 0, i32 0, i32 0
  %1192 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1189, i64 0, i32 0, i32 0
  %1193 = load i8*, i8** %1192, align 8, !tbaa !54, !noalias !132
  store i8* %1193, i8** %1191, align 8, !tbaa !54, !alias.scope !132
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1192, align 8, !tbaa !16, !noalias !132
  %1194 = bitcast %"class.std::basic_string"* %75 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1194) #26
  %1195 = load i32, i32* %1015, align 8, !tbaa !9
  %1196 = bitcast %"class.std::basic_ostringstream"* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %1196) #26, !noalias !135
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %23, i32 16)
          to label %1197 unwind label %1842

1197:                                             ; preds = %1190
  %1198 = bitcast %"class.std::basic_ostringstream"* %23 to i8**
  %1199 = load i8*, i8** %1198, align 8, !tbaa !20, !noalias !135
  %1200 = getelementptr i8, i8* %1199, i64 -24
  %1201 = bitcast i8* %1200 to i64*
  %1202 = load i64, i64* %1201, align 8, !noalias !135
  %1203 = getelementptr inbounds i8, i8* %1196, i64 %1202
  %1204 = getelementptr inbounds i8, i8* %1203, i64 24
  %1205 = bitcast i8* %1204 to i32*
  %1206 = load i32, i32* %1205, align 8, !tbaa !94, !noalias !135
  %1207 = and i32 %1206, -75
  %1208 = or i32 %1207, 2
  store i32 %1208, i32* %1205, align 8, !tbaa !100, !noalias !135
  %1209 = bitcast %"class.std::basic_ostringstream"* %23 to %"class.std::basic_ostream"*
  %1210 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1209, i32 %1195)
          to label %1211 unwind label %1237, !noalias !135

1211:                                             ; preds = %1197
  %1212 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %23, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %75, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %1212)
          to label %1213 unwind label %1237

1213:                                             ; preds = %1211
  %1214 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %23, i64 0, i32 0, i32 0
  store i32 (...)** %1157, i32 (...)*** %1214, align 8, !tbaa !20, !noalias !135
  %1215 = load i64, i64* %1161, align 8
  %1216 = getelementptr inbounds i8, i8* %1196, i64 %1215
  %1217 = bitcast i8* %1216 to i32 (...)***
  store i32 (...)** %1159, i32 (...)*** %1217, align 8, !tbaa !20, !noalias !135
  %1218 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %23, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1218, align 8, !tbaa !20, !noalias !135
  %1219 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %23, i64 0, i32 1, i32 2, i32 0, i32 0
  %1220 = load i8*, i8** %1219, align 8, !tbaa !16, !noalias !135
  %1221 = getelementptr inbounds i8, i8* %1220, i64 -24
  %1222 = bitcast i8* %1221 to %"struct.std::basic_string<char>::_Rep"*
  %1223 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %22, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1223) #26, !noalias !135
  %1224 = icmp eq i8* %1221, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1224, label %1239, label %1225, !prof !19

1225:                                             ; preds = %1213
  %1226 = getelementptr inbounds i8, i8* %1220, i64 -8
  %1227 = bitcast i8* %1226 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1228, label %1230

1228:                                             ; preds = %1225
  %1229 = atomicrmw volatile add i32* %1227, i32 -1 acq_rel, align 4
  br label %1233

1230:                                             ; preds = %1225
  %1231 = load i32, i32* %1227, align 8, !tbaa !7
  %1232 = add nsw i32 %1231, -1
  store i32 %1232, i32* %1227, align 8, !tbaa !7
  br label %1233

1233:                                             ; preds = %1230, %1228
  %1234 = phi i32 [ %1229, %1228 ], [ %1231, %1230 ]
  %1235 = icmp slt i32 %1234, 1
  br i1 %1235, label %1236, label %1239

1236:                                             ; preds = %1233
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1222, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %22) #26
  br label %1239

1237:                                             ; preds = %1211, %1197
  %1238 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %23) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1196) #26, !noalias !135
  br label %1850

1239:                                             ; preds = %1236, %1233, %1213
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1223) #26, !noalias !135
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1218, align 8, !tbaa !20, !noalias !135
  %1240 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %23, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %1240) #26
  %1241 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %23, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %1241) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1196) #26, !noalias !135
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %1242 = load i8*, i8** %1191, align 8, !tbaa !16, !noalias !138
  %1243 = getelementptr inbounds i8, i8* %1242, i64 -24
  %1244 = bitcast i8* %1243 to i64*
  %1245 = load i64, i64* %1244, align 8, !tbaa !38, !noalias !138
  %1246 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %75, i64 0, i32 0, i32 0
  %1247 = load i8*, i8** %1246, align 8, !tbaa !16, !noalias !138
  %1248 = getelementptr inbounds i8, i8* %1247, i64 -24
  %1249 = bitcast i8* %1248 to i64*
  %1250 = load i64, i64* %1249, align 8, !tbaa !38, !noalias !138
  %1251 = add i64 %1250, %1245
  %1252 = getelementptr inbounds i8, i8* %1242, i64 -16
  %1253 = bitcast i8* %1252 to i64*
  %1254 = load i64, i64* %1253, align 8, !tbaa !110, !noalias !138
  %1255 = icmp ugt i64 %1251, %1254
  br i1 %1255, label %1256, label %1263

1256:                                             ; preds = %1239
  %1257 = getelementptr inbounds i8, i8* %1247, i64 -16
  %1258 = bitcast i8* %1257 to i64*
  %1259 = load i64, i64* %1258, align 8, !tbaa !110, !noalias !138
  %1260 = icmp ugt i64 %1251, %1259
  br i1 %1260, label %1263, label %1261

1261:                                             ; preds = %1256
  %1262 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i64 0, i8* nonnull %1242, i64 %1245)
          to label %1265 unwind label %1844

1263:                                             ; preds = %1256, %1239
  %1264 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %73, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75)
          to label %1265 unwind label %1844

1265:                                             ; preds = %1261, %1263
  %1266 = phi %"class.std::basic_string"* [ %1262, %1261 ], [ %1264, %1263 ]
  %1267 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %72, i64 0, i32 0, i32 0
  %1268 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1266, i64 0, i32 0, i32 0
  %1269 = load i8*, i8** %1268, align 8, !tbaa !54, !noalias !138
  store i8* %1269, i8** %1267, align 8, !tbaa !54, !alias.scope !138
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1268, align 8, !tbaa !16, !noalias !138
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1010, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72)
          to label %1270 unwind label %1846

1270:                                             ; preds = %1265
  %1271 = load i8*, i8** %1267, align 8, !tbaa !16
  %1272 = getelementptr inbounds i8, i8* %1271, i64 -24
  %1273 = bitcast i8* %1272 to %"struct.std::basic_string<char>::_Rep"*
  %1274 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1274) #26
  %1275 = icmp eq i8* %1272, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1275, label %1288, label %1276, !prof !19

1276:                                             ; preds = %1270
  %1277 = getelementptr inbounds i8, i8* %1271, i64 -8
  %1278 = bitcast i8* %1277 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1279, label %1281

1279:                                             ; preds = %1276
  %1280 = atomicrmw volatile add i32* %1278, i32 -1 acq_rel, align 4
  br label %1284

1281:                                             ; preds = %1276
  %1282 = load i32, i32* %1278, align 8, !tbaa !7
  %1283 = add nsw i32 %1282, -1
  store i32 %1283, i32* %1278, align 8, !tbaa !7
  br label %1284

1284:                                             ; preds = %1281, %1279
  %1285 = phi i32 [ %1280, %1279 ], [ %1282, %1281 ]
  %1286 = icmp slt i32 %1285, 1
  br i1 %1286, label %1287, label %1288

1287:                                             ; preds = %1284
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1273, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21) #26
  br label %1288

1288:                                             ; preds = %1270, %1284, %1287
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1274) #26
  %1289 = load i8*, i8** %1246, align 8, !tbaa !16
  %1290 = getelementptr inbounds i8, i8* %1289, i64 -24
  %1291 = bitcast i8* %1290 to %"struct.std::basic_string<char>::_Rep"*
  %1292 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %20, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1292) #26
  %1293 = icmp eq i8* %1290, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1293, label %1306, label %1294, !prof !19

1294:                                             ; preds = %1288
  %1295 = getelementptr inbounds i8, i8* %1289, i64 -8
  %1296 = bitcast i8* %1295 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1297, label %1299

1297:                                             ; preds = %1294
  %1298 = atomicrmw volatile add i32* %1296, i32 -1 acq_rel, align 4
  br label %1302

1299:                                             ; preds = %1294
  %1300 = load i32, i32* %1296, align 8, !tbaa !7
  %1301 = add nsw i32 %1300, -1
  store i32 %1301, i32* %1296, align 8, !tbaa !7
  br label %1302

1302:                                             ; preds = %1299, %1297
  %1303 = phi i32 [ %1298, %1297 ], [ %1300, %1299 ]
  %1304 = icmp slt i32 %1303, 1
  br i1 %1304, label %1305, label %1306

1305:                                             ; preds = %1302
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1291, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %20) #26
  br label %1306

1306:                                             ; preds = %1288, %1302, %1305
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1292) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1194) #26
  %1307 = load i8*, i8** %1191, align 8, !tbaa !16
  %1308 = getelementptr inbounds i8, i8* %1307, i64 -24
  %1309 = bitcast i8* %1308 to %"struct.std::basic_string<char>::_Rep"*
  %1310 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1310) #26
  %1311 = icmp eq i8* %1308, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1311, label %1324, label %1312, !prof !19

1312:                                             ; preds = %1306
  %1313 = getelementptr inbounds i8, i8* %1307, i64 -8
  %1314 = bitcast i8* %1313 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1315, label %1317

1315:                                             ; preds = %1312
  %1316 = atomicrmw volatile add i32* %1314, i32 -1 acq_rel, align 4
  br label %1320

1317:                                             ; preds = %1312
  %1318 = load i32, i32* %1314, align 8, !tbaa !7
  %1319 = add nsw i32 %1318, -1
  store i32 %1319, i32* %1314, align 8, !tbaa !7
  br label %1320

1320:                                             ; preds = %1317, %1315
  %1321 = phi i32 [ %1316, %1315 ], [ %1318, %1317 ]
  %1322 = icmp slt i32 %1321, 1
  br i1 %1322, label %1323, label %1324

1323:                                             ; preds = %1320
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1309, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19) #26
  br label %1324

1324:                                             ; preds = %1306, %1320, %1323
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1310) #26
  %1325 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %74, i64 0, i32 0, i32 0
  %1326 = load i8*, i8** %1325, align 8, !tbaa !16
  %1327 = getelementptr inbounds i8, i8* %1326, i64 -24
  %1328 = bitcast i8* %1327 to %"struct.std::basic_string<char>::_Rep"*
  %1329 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %18, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1329) #26
  %1330 = icmp eq i8* %1327, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1330, label %1343, label %1331, !prof !19

1331:                                             ; preds = %1324
  %1332 = getelementptr inbounds i8, i8* %1326, i64 -8
  %1333 = bitcast i8* %1332 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1334, label %1336

1334:                                             ; preds = %1331
  %1335 = atomicrmw volatile add i32* %1333, i32 -1 acq_rel, align 4
  br label %1339

1336:                                             ; preds = %1331
  %1337 = load i32, i32* %1333, align 8, !tbaa !7
  %1338 = add nsw i32 %1337, -1
  store i32 %1338, i32* %1333, align 8, !tbaa !7
  br label %1339

1339:                                             ; preds = %1336, %1334
  %1340 = phi i32 [ %1335, %1334 ], [ %1337, %1336 ]
  %1341 = icmp slt i32 %1340, 1
  br i1 %1341, label %1342, label %1343

1342:                                             ; preds = %1339
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1328, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %18) #26
  br label %1343

1343:                                             ; preds = %1324, %1339, %1342
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1329) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1138) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1137) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1136) #26
  %1344 = bitcast %"class.std::basic_string"* %76 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1344) #26
  %1345 = bitcast %"class.std::basic_string"* %77 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1345) #26
  %1346 = bitcast %"class.std::basic_string"* %78 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1346) #26
  %1347 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 9
  %1348 = load i32, i32* %1347, align 4, !tbaa !28
  %1349 = bitcast %"class.std::basic_ostringstream"* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %1349) #26, !noalias !141
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %17, i32 16)
          to label %1350 unwind label %1856

1350:                                             ; preds = %1343
  %1351 = bitcast %"class.std::basic_ostringstream"* %17 to i8**
  %1352 = load i8*, i8** %1351, align 8, !tbaa !20, !noalias !141
  %1353 = getelementptr i8, i8* %1352, i64 -24
  %1354 = bitcast i8* %1353 to i64*
  %1355 = load i64, i64* %1354, align 8, !noalias !141
  %1356 = getelementptr inbounds i8, i8* %1349, i64 %1355
  %1357 = getelementptr inbounds i8, i8* %1356, i64 24
  %1358 = bitcast i8* %1357 to i32*
  %1359 = load i32, i32* %1358, align 8, !tbaa !94, !noalias !141
  %1360 = and i32 %1359, -75
  %1361 = or i32 %1360, 2
  store i32 %1361, i32* %1358, align 8, !tbaa !100, !noalias !141
  %1362 = bitcast %"class.std::basic_ostringstream"* %17 to %"class.std::basic_ostream"*
  %1363 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1362, i32 %1348)
          to label %1364 unwind label %1390, !noalias !141

1364:                                             ; preds = %1350
  %1365 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %17, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %78, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %1365)
          to label %1366 unwind label %1390

1366:                                             ; preds = %1364
  %1367 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %17, i64 0, i32 0, i32 0
  store i32 (...)** %1157, i32 (...)*** %1367, align 8, !tbaa !20, !noalias !141
  %1368 = load i64, i64* %1161, align 8
  %1369 = getelementptr inbounds i8, i8* %1349, i64 %1368
  %1370 = bitcast i8* %1369 to i32 (...)***
  store i32 (...)** %1159, i32 (...)*** %1370, align 8, !tbaa !20, !noalias !141
  %1371 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %17, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1371, align 8, !tbaa !20, !noalias !141
  %1372 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %17, i64 0, i32 1, i32 2, i32 0, i32 0
  %1373 = load i8*, i8** %1372, align 8, !tbaa !16, !noalias !141
  %1374 = getelementptr inbounds i8, i8* %1373, i64 -24
  %1375 = bitcast i8* %1374 to %"struct.std::basic_string<char>::_Rep"*
  %1376 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %16, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1376) #26, !noalias !141
  %1377 = icmp eq i8* %1374, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1377, label %1392, label %1378, !prof !19

1378:                                             ; preds = %1366
  %1379 = getelementptr inbounds i8, i8* %1373, i64 -8
  %1380 = bitcast i8* %1379 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1381, label %1383

1381:                                             ; preds = %1378
  %1382 = atomicrmw volatile add i32* %1380, i32 -1 acq_rel, align 4
  br label %1386

1383:                                             ; preds = %1378
  %1384 = load i32, i32* %1380, align 8, !tbaa !7
  %1385 = add nsw i32 %1384, -1
  store i32 %1385, i32* %1380, align 8, !tbaa !7
  br label %1386

1386:                                             ; preds = %1383, %1381
  %1387 = phi i32 [ %1382, %1381 ], [ %1384, %1383 ]
  %1388 = icmp slt i32 %1387, 1
  br i1 %1388, label %1389, label %1392

1389:                                             ; preds = %1386
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1375, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %16) #26
  br label %1392

1390:                                             ; preds = %1364, %1350
  %1391 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %17) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1349) #26, !noalias !141
  br label %1872

1392:                                             ; preds = %1389, %1386, %1366
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1376) #26, !noalias !141
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1371, align 8, !tbaa !20, !noalias !141
  %1393 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %17, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %1393) #26
  %1394 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %17, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %1394) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1349) #26, !noalias !141
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %1395 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1)
          to label %1396 unwind label %1858

1396:                                             ; preds = %1392
  %1397 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %77, i64 0, i32 0, i32 0
  %1398 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1395, i64 0, i32 0, i32 0
  %1399 = load i8*, i8** %1398, align 8, !tbaa !54, !noalias !144
  store i8* %1399, i8** %1397, align 8, !tbaa !54, !alias.scope !144
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1398, align 8, !tbaa !16, !noalias !144
  %1400 = bitcast %"class.std::basic_string"* %79 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1400) #26
  %1401 = load i32, i32* %1018, align 8, !tbaa !27
  %1402 = bitcast %"class.std::basic_ostringstream"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %1402) #26, !noalias !147
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15, i32 16)
          to label %1403 unwind label %1860

1403:                                             ; preds = %1396
  %1404 = bitcast %"class.std::basic_ostringstream"* %15 to i8**
  %1405 = load i8*, i8** %1404, align 8, !tbaa !20, !noalias !147
  %1406 = getelementptr i8, i8* %1405, i64 -24
  %1407 = bitcast i8* %1406 to i64*
  %1408 = load i64, i64* %1407, align 8, !noalias !147
  %1409 = getelementptr inbounds i8, i8* %1402, i64 %1408
  %1410 = getelementptr inbounds i8, i8* %1409, i64 24
  %1411 = bitcast i8* %1410 to i32*
  %1412 = load i32, i32* %1411, align 8, !tbaa !94, !noalias !147
  %1413 = and i32 %1412, -75
  %1414 = or i32 %1413, 2
  store i32 %1414, i32* %1411, align 8, !tbaa !100, !noalias !147
  %1415 = bitcast %"class.std::basic_ostringstream"* %15 to %"class.std::basic_ostream"*
  %1416 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1415, i32 %1401)
          to label %1417 unwind label %1443, !noalias !147

1417:                                             ; preds = %1403
  %1418 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %79, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %1418)
          to label %1419 unwind label %1443

1419:                                             ; preds = %1417
  %1420 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 0, i32 0
  store i32 (...)** %1157, i32 (...)*** %1420, align 8, !tbaa !20, !noalias !147
  %1421 = load i64, i64* %1161, align 8
  %1422 = getelementptr inbounds i8, i8* %1402, i64 %1421
  %1423 = bitcast i8* %1422 to i32 (...)***
  store i32 (...)** %1159, i32 (...)*** %1423, align 8, !tbaa !20, !noalias !147
  %1424 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1424, align 8, !tbaa !20, !noalias !147
  %1425 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 2, i32 0, i32 0
  %1426 = load i8*, i8** %1425, align 8, !tbaa !16, !noalias !147
  %1427 = getelementptr inbounds i8, i8* %1426, i64 -24
  %1428 = bitcast i8* %1427 to %"struct.std::basic_string<char>::_Rep"*
  %1429 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1429) #26, !noalias !147
  %1430 = icmp eq i8* %1427, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1430, label %1445, label %1431, !prof !19

1431:                                             ; preds = %1419
  %1432 = getelementptr inbounds i8, i8* %1426, i64 -8
  %1433 = bitcast i8* %1432 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1434, label %1436

1434:                                             ; preds = %1431
  %1435 = atomicrmw volatile add i32* %1433, i32 -1 acq_rel, align 4
  br label %1439

1436:                                             ; preds = %1431
  %1437 = load i32, i32* %1433, align 8, !tbaa !7
  %1438 = add nsw i32 %1437, -1
  store i32 %1438, i32* %1433, align 8, !tbaa !7
  br label %1439

1439:                                             ; preds = %1436, %1434
  %1440 = phi i32 [ %1435, %1434 ], [ %1437, %1436 ]
  %1441 = icmp slt i32 %1440, 1
  br i1 %1441, label %1442, label %1445

1442:                                             ; preds = %1439
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1428, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14) #26
  br label %1445

1443:                                             ; preds = %1417, %1403
  %1444 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %15) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1402) #26, !noalias !147
  br label %1868

1445:                                             ; preds = %1442, %1439, %1419
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1429) #26, !noalias !147
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1424, align 8, !tbaa !20, !noalias !147
  %1446 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %1446) #26
  %1447 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %15, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %1447) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1402) #26, !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %1448 = load i8*, i8** %1397, align 8, !tbaa !16, !noalias !150
  %1449 = getelementptr inbounds i8, i8* %1448, i64 -24
  %1450 = bitcast i8* %1449 to i64*
  %1451 = load i64, i64* %1450, align 8, !tbaa !38, !noalias !150
  %1452 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %79, i64 0, i32 0, i32 0
  %1453 = load i8*, i8** %1452, align 8, !tbaa !16, !noalias !150
  %1454 = getelementptr inbounds i8, i8* %1453, i64 -24
  %1455 = bitcast i8* %1454 to i64*
  %1456 = load i64, i64* %1455, align 8, !tbaa !38, !noalias !150
  %1457 = add i64 %1456, %1451
  %1458 = getelementptr inbounds i8, i8* %1448, i64 -16
  %1459 = bitcast i8* %1458 to i64*
  %1460 = load i64, i64* %1459, align 8, !tbaa !110, !noalias !150
  %1461 = icmp ugt i64 %1457, %1460
  br i1 %1461, label %1462, label %1469

1462:                                             ; preds = %1445
  %1463 = getelementptr inbounds i8, i8* %1453, i64 -16
  %1464 = bitcast i8* %1463 to i64*
  %1465 = load i64, i64* %1464, align 8, !tbaa !110, !noalias !150
  %1466 = icmp ugt i64 %1457, %1465
  br i1 %1466, label %1469, label %1467

1467:                                             ; preds = %1462
  %1468 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %79, i64 0, i8* nonnull %1448, i64 %1451)
          to label %1471 unwind label %1862

1469:                                             ; preds = %1462, %1445
  %1470 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %77, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %79)
          to label %1471 unwind label %1862

1471:                                             ; preds = %1467, %1469
  %1472 = phi %"class.std::basic_string"* [ %1468, %1467 ], [ %1470, %1469 ]
  %1473 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %76, i64 0, i32 0, i32 0
  %1474 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1472, i64 0, i32 0, i32 0
  %1475 = load i8*, i8** %1474, align 8, !tbaa !54, !noalias !150
  store i8* %1475, i8** %1473, align 8, !tbaa !54, !alias.scope !150
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %1474, align 8, !tbaa !16, !noalias !150
  %1476 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1476, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %76)
          to label %1477 unwind label %1864

1477:                                             ; preds = %1471
  %1478 = load i8*, i8** %1473, align 8, !tbaa !16
  %1479 = getelementptr inbounds i8, i8* %1478, i64 -24
  %1480 = bitcast i8* %1479 to %"struct.std::basic_string<char>::_Rep"*
  %1481 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1481) #26
  %1482 = icmp eq i8* %1479, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1482, label %1495, label %1483, !prof !19

1483:                                             ; preds = %1477
  %1484 = getelementptr inbounds i8, i8* %1478, i64 -8
  %1485 = bitcast i8* %1484 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1486, label %1488

1486:                                             ; preds = %1483
  %1487 = atomicrmw volatile add i32* %1485, i32 -1 acq_rel, align 4
  br label %1491

1488:                                             ; preds = %1483
  %1489 = load i32, i32* %1485, align 8, !tbaa !7
  %1490 = add nsw i32 %1489, -1
  store i32 %1490, i32* %1485, align 8, !tbaa !7
  br label %1491

1491:                                             ; preds = %1488, %1486
  %1492 = phi i32 [ %1487, %1486 ], [ %1489, %1488 ]
  %1493 = icmp slt i32 %1492, 1
  br i1 %1493, label %1494, label %1495

1494:                                             ; preds = %1491
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1480, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13) #26
  br label %1495

1495:                                             ; preds = %1477, %1491, %1494
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1481) #26
  %1496 = load i8*, i8** %1452, align 8, !tbaa !16
  %1497 = getelementptr inbounds i8, i8* %1496, i64 -24
  %1498 = bitcast i8* %1497 to %"struct.std::basic_string<char>::_Rep"*
  %1499 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %12, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1499) #26
  %1500 = icmp eq i8* %1497, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1500, label %1513, label %1501, !prof !19

1501:                                             ; preds = %1495
  %1502 = getelementptr inbounds i8, i8* %1496, i64 -8
  %1503 = bitcast i8* %1502 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1504, label %1506

1504:                                             ; preds = %1501
  %1505 = atomicrmw volatile add i32* %1503, i32 -1 acq_rel, align 4
  br label %1509

1506:                                             ; preds = %1501
  %1507 = load i32, i32* %1503, align 8, !tbaa !7
  %1508 = add nsw i32 %1507, -1
  store i32 %1508, i32* %1503, align 8, !tbaa !7
  br label %1509

1509:                                             ; preds = %1506, %1504
  %1510 = phi i32 [ %1505, %1504 ], [ %1507, %1506 ]
  %1511 = icmp slt i32 %1510, 1
  br i1 %1511, label %1512, label %1513

1512:                                             ; preds = %1509
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1498, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %12) #26
  br label %1513

1513:                                             ; preds = %1495, %1509, %1512
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1499) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1400) #26
  %1514 = load i8*, i8** %1397, align 8, !tbaa !16
  %1515 = getelementptr inbounds i8, i8* %1514, i64 -24
  %1516 = bitcast i8* %1515 to %"struct.std::basic_string<char>::_Rep"*
  %1517 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1517) #26
  %1518 = icmp eq i8* %1515, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1518, label %1531, label %1519, !prof !19

1519:                                             ; preds = %1513
  %1520 = getelementptr inbounds i8, i8* %1514, i64 -8
  %1521 = bitcast i8* %1520 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1522, label %1524

1522:                                             ; preds = %1519
  %1523 = atomicrmw volatile add i32* %1521, i32 -1 acq_rel, align 4
  br label %1527

1524:                                             ; preds = %1519
  %1525 = load i32, i32* %1521, align 8, !tbaa !7
  %1526 = add nsw i32 %1525, -1
  store i32 %1526, i32* %1521, align 8, !tbaa !7
  br label %1527

1527:                                             ; preds = %1524, %1522
  %1528 = phi i32 [ %1523, %1522 ], [ %1525, %1524 ]
  %1529 = icmp slt i32 %1528, 1
  br i1 %1529, label %1530, label %1531

1530:                                             ; preds = %1527
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1516, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #26
  br label %1531

1531:                                             ; preds = %1513, %1527, %1530
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1517) #26
  %1532 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %78, i64 0, i32 0, i32 0
  %1533 = load i8*, i8** %1532, align 8, !tbaa !16
  %1534 = getelementptr inbounds i8, i8* %1533, i64 -24
  %1535 = bitcast i8* %1534 to %"struct.std::basic_string<char>::_Rep"*
  %1536 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1536) #26
  %1537 = icmp eq i8* %1534, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1537, label %1550, label %1538, !prof !19

1538:                                             ; preds = %1531
  %1539 = getelementptr inbounds i8, i8* %1533, i64 -8
  %1540 = bitcast i8* %1539 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1541, label %1543

1541:                                             ; preds = %1538
  %1542 = atomicrmw volatile add i32* %1540, i32 -1 acq_rel, align 4
  br label %1546

1543:                                             ; preds = %1538
  %1544 = load i32, i32* %1540, align 8, !tbaa !7
  %1545 = add nsw i32 %1544, -1
  store i32 %1545, i32* %1540, align 8, !tbaa !7
  br label %1546

1546:                                             ; preds = %1543, %1541
  %1547 = phi i32 [ %1542, %1541 ], [ %1544, %1543 ]
  %1548 = icmp slt i32 %1547, 1
  br i1 %1548, label %1549, label %1550

1549:                                             ; preds = %1546
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1535, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #26
  br label %1550

1550:                                             ; preds = %1531, %1546, %1549
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1536) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1346) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1345) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1344) #26
  %1551 = bitcast %"class.std::basic_string"* %80 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1551) #26
  %1552 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %1133, align 8, !tbaa !65
  %1553 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %1552, i64 0, i32 1
  %1554 = load double, double* %1553, align 8, !tbaa !88
  %1555 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %1555) #26, !noalias !153
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %1556 unwind label %1874

1556:                                             ; preds = %1550
  %1557 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %1558 = load i8*, i8** %1557, align 8, !tbaa !20, !noalias !153
  %1559 = getelementptr i8, i8* %1558, i64 -24
  %1560 = bitcast i8* %1559 to i64*
  %1561 = load i64, i64* %1560, align 8, !noalias !153
  %1562 = getelementptr inbounds i8, i8* %1555, i64 %1561
  %1563 = getelementptr inbounds i8, i8* %1562, i64 24
  %1564 = bitcast i8* %1563 to i32*
  %1565 = load i32, i32* %1564, align 8, !tbaa !94, !noalias !153
  %1566 = and i32 %1565, -75
  %1567 = or i32 %1566, 2
  store i32 %1567, i32* %1564, align 8, !tbaa !100, !noalias !153
  %1568 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %1569 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1568, double %1554)
          to label %1570 unwind label %1596, !noalias !153

1570:                                             ; preds = %1556
  %1571 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %80, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %1571)
          to label %1572 unwind label %1596

1572:                                             ; preds = %1570
  %1573 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %1157, i32 (...)*** %1573, align 8, !tbaa !20, !noalias !153
  %1574 = load i64, i64* %1161, align 8
  %1575 = getelementptr inbounds i8, i8* %1555, i64 %1574
  %1576 = bitcast i8* %1575 to i32 (...)***
  store i32 (...)** %1159, i32 (...)*** %1576, align 8, !tbaa !20, !noalias !153
  %1577 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1577, align 8, !tbaa !20, !noalias !153
  %1578 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %1579 = load i8*, i8** %1578, align 8, !tbaa !16, !noalias !153
  %1580 = getelementptr inbounds i8, i8* %1579, i64 -24
  %1581 = bitcast i8* %1580 to %"struct.std::basic_string<char>::_Rep"*
  %1582 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1582) #26, !noalias !153
  %1583 = icmp eq i8* %1580, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1583, label %1598, label %1584, !prof !19

1584:                                             ; preds = %1572
  %1585 = getelementptr inbounds i8, i8* %1579, i64 -8
  %1586 = bitcast i8* %1585 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1587, label %1589

1587:                                             ; preds = %1584
  %1588 = atomicrmw volatile add i32* %1586, i32 -1 acq_rel, align 4
  br label %1592

1589:                                             ; preds = %1584
  %1590 = load i32, i32* %1586, align 8, !tbaa !7
  %1591 = add nsw i32 %1590, -1
  store i32 %1591, i32* %1586, align 8, !tbaa !7
  br label %1592

1592:                                             ; preds = %1589, %1587
  %1593 = phi i32 [ %1588, %1587 ], [ %1590, %1589 ]
  %1594 = icmp slt i32 %1593, 1
  br i1 %1594, label %1595, label %1598

1595:                                             ; preds = %1592
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1581, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #26
  br label %1598

1596:                                             ; preds = %1570, %1556
  %1597 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1555) #26, !noalias !153
  br label %1878

1598:                                             ; preds = %1595, %1592, %1572
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1582) #26, !noalias !153
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1577, align 8, !tbaa !20, !noalias !153
  %1599 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %1599) #26
  %1600 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %1600) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1555) #26, !noalias !153
  %1601 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1601, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %80)
          to label %1602 unwind label %1876

1602:                                             ; preds = %1598
  %1603 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %80, i64 0, i32 0, i32 0
  %1604 = load i8*, i8** %1603, align 8, !tbaa !16
  %1605 = getelementptr inbounds i8, i8* %1604, i64 -24
  %1606 = bitcast i8* %1605 to %"struct.std::basic_string<char>::_Rep"*
  %1607 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1607) #26
  %1608 = icmp eq i8* %1605, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1608, label %1621, label %1609, !prof !19

1609:                                             ; preds = %1602
  %1610 = getelementptr inbounds i8, i8* %1604, i64 -8
  %1611 = bitcast i8* %1610 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1612, label %1614

1612:                                             ; preds = %1609
  %1613 = atomicrmw volatile add i32* %1611, i32 -1 acq_rel, align 4
  br label %1617

1614:                                             ; preds = %1609
  %1615 = load i32, i32* %1611, align 8, !tbaa !7
  %1616 = add nsw i32 %1615, -1
  store i32 %1616, i32* %1611, align 8, !tbaa !7
  br label %1617

1617:                                             ; preds = %1614, %1612
  %1618 = phi i32 [ %1613, %1612 ], [ %1615, %1614 ]
  %1619 = icmp slt i32 %1618, 1
  br i1 %1619, label %1620, label %1621

1620:                                             ; preds = %1617
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1606, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #26
  br label %1621

1621:                                             ; preds = %1602, %1617, %1620
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1607) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1551) #26
  %1622 = bitcast %"class.std::basic_string"* %81 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1622) #26
  %1623 = load double, double* %1022, align 8, !tbaa !81
  %1624 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %1624) #26, !noalias !156
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %1625 unwind label %1880

1625:                                             ; preds = %1621
  %1626 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %1627 = load i8*, i8** %1626, align 8, !tbaa !20, !noalias !156
  %1628 = getelementptr i8, i8* %1627, i64 -24
  %1629 = bitcast i8* %1628 to i64*
  %1630 = load i64, i64* %1629, align 8, !noalias !156
  %1631 = getelementptr inbounds i8, i8* %1624, i64 %1630
  %1632 = getelementptr inbounds i8, i8* %1631, i64 24
  %1633 = bitcast i8* %1632 to i32*
  %1634 = load i32, i32* %1633, align 8, !tbaa !94, !noalias !156
  %1635 = and i32 %1634, -75
  %1636 = or i32 %1635, 2
  store i32 %1636, i32* %1633, align 8, !tbaa !100, !noalias !156
  %1637 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %1638 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1637, double %1623)
          to label %1639 unwind label %1665, !noalias !156

1639:                                             ; preds = %1625
  %1640 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %81, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %1640)
          to label %1641 unwind label %1665

1641:                                             ; preds = %1639
  %1642 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %1157, i32 (...)*** %1642, align 8, !tbaa !20, !noalias !156
  %1643 = load i64, i64* %1161, align 8
  %1644 = getelementptr inbounds i8, i8* %1624, i64 %1643
  %1645 = bitcast i8* %1644 to i32 (...)***
  store i32 (...)** %1159, i32 (...)*** %1645, align 8, !tbaa !20, !noalias !156
  %1646 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1646, align 8, !tbaa !20, !noalias !156
  %1647 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %1648 = load i8*, i8** %1647, align 8, !tbaa !16, !noalias !156
  %1649 = getelementptr inbounds i8, i8* %1648, i64 -24
  %1650 = bitcast i8* %1649 to %"struct.std::basic_string<char>::_Rep"*
  %1651 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1651) #26, !noalias !156
  %1652 = icmp eq i8* %1649, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1652, label %1667, label %1653, !prof !19

1653:                                             ; preds = %1641
  %1654 = getelementptr inbounds i8, i8* %1648, i64 -8
  %1655 = bitcast i8* %1654 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1656, label %1658

1656:                                             ; preds = %1653
  %1657 = atomicrmw volatile add i32* %1655, i32 -1 acq_rel, align 4
  br label %1661

1658:                                             ; preds = %1653
  %1659 = load i32, i32* %1655, align 8, !tbaa !7
  %1660 = add nsw i32 %1659, -1
  store i32 %1660, i32* %1655, align 8, !tbaa !7
  br label %1661

1661:                                             ; preds = %1658, %1656
  %1662 = phi i32 [ %1657, %1656 ], [ %1659, %1658 ]
  %1663 = icmp slt i32 %1662, 1
  br i1 %1663, label %1664, label %1667

1664:                                             ; preds = %1661
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1650, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #26
  br label %1667

1665:                                             ; preds = %1639, %1625
  %1666 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1624) #26, !noalias !156
  br label %1884

1667:                                             ; preds = %1664, %1661, %1641
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1651) #26, !noalias !156
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1646, align 8, !tbaa !20, !noalias !156
  %1668 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %1668) #26
  %1669 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %1669) #26
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %1624) #26, !noalias !156
  %1670 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 3
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1670, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %81)
          to label %1671 unwind label %1882

1671:                                             ; preds = %1667
  %1672 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %81, i64 0, i32 0, i32 0
  %1673 = load i8*, i8** %1672, align 8, !tbaa !16
  %1674 = getelementptr inbounds i8, i8* %1673, i64 -24
  %1675 = bitcast i8* %1674 to %"struct.std::basic_string<char>::_Rep"*
  %1676 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1676) #26
  %1677 = icmp eq i8* %1674, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1677, label %1690, label %1678, !prof !19

1678:                                             ; preds = %1671
  %1679 = getelementptr inbounds i8, i8* %1673, i64 -8
  %1680 = bitcast i8* %1679 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1681, label %1683

1681:                                             ; preds = %1678
  %1682 = atomicrmw volatile add i32* %1680, i32 -1 acq_rel, align 4
  br label %1686

1683:                                             ; preds = %1678
  %1684 = load i32, i32* %1680, align 8, !tbaa !7
  %1685 = add nsw i32 %1684, -1
  store i32 %1685, i32* %1680, align 8, !tbaa !7
  br label %1686

1686:                                             ; preds = %1683, %1681
  %1687 = phi i32 [ %1682, %1681 ], [ %1684, %1683 ]
  %1688 = icmp slt i32 %1687, 1
  br i1 %1688, label %1689, label %1690

1689:                                             ; preds = %1686
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1675, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #26
  br label %1690

1690:                                             ; preds = %1671, %1686, %1689
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1676) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1622) #26
  invoke fastcc void @_ZN6appsdkL15printStatisticsEPSsS0_i(%"class.std::basic_string"* nonnull %997, %"class.std::basic_string"* nonnull %1010)
          to label %1691 unwind label %1125

1691:                                             ; preds = %1690
  %1692 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %1693 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 3, i32 0, i32 0
  %1694 = load i8*, i8** %1693, align 8, !tbaa !16
  %1695 = getelementptr inbounds i8, i8* %1694, i64 -24
  %1696 = bitcast i8* %1695 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1692) #26
  %1697 = icmp eq i8* %1695, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1697, label %1710, label %1698, !prof !19

1698:                                             ; preds = %1691
  %1699 = getelementptr inbounds i8, i8* %1694, i64 -8
  %1700 = bitcast i8* %1699 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1701, label %1703

1701:                                             ; preds = %1698
  %1702 = atomicrmw volatile add i32* %1700, i32 -1 acq_rel, align 4
  br label %1706

1703:                                             ; preds = %1698
  %1704 = load i32, i32* %1700, align 8, !tbaa !7
  %1705 = add nsw i32 %1704, -1
  store i32 %1705, i32* %1700, align 8, !tbaa !7
  br label %1706

1706:                                             ; preds = %1703, %1701
  %1707 = phi i32 [ %1702, %1701 ], [ %1704, %1703 ]
  %1708 = icmp slt i32 %1707, 1
  br i1 %1708, label %1709, label %1710

1709:                                             ; preds = %1706
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1696, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %1710

1710:                                             ; preds = %1691, %1706, %1709
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1692) #26
  %1711 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 2, i32 0, i32 0
  %1712 = load i8*, i8** %1711, align 16, !tbaa !16
  %1713 = getelementptr inbounds i8, i8* %1712, i64 -24
  %1714 = bitcast i8* %1713 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1692) #26
  %1715 = icmp eq i8* %1713, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1715, label %1728, label %1716, !prof !19

1716:                                             ; preds = %1710
  %1717 = getelementptr inbounds i8, i8* %1712, i64 -8
  %1718 = bitcast i8* %1717 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1722, label %1719

1719:                                             ; preds = %1716
  %1720 = load i32, i32* %1718, align 8, !tbaa !7
  %1721 = add nsw i32 %1720, -1
  store i32 %1721, i32* %1718, align 8, !tbaa !7
  br label %1724

1722:                                             ; preds = %1716
  %1723 = atomicrmw volatile add i32* %1718, i32 -1 acq_rel, align 4
  br label %1724

1724:                                             ; preds = %1722, %1719
  %1725 = phi i32 [ %1723, %1722 ], [ %1720, %1719 ]
  %1726 = icmp slt i32 %1725, 1
  br i1 %1726, label %1727, label %1728

1727:                                             ; preds = %1724
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1714, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %1728

1728:                                             ; preds = %1727, %1724, %1710
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1692) #26
  %1729 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 1, i32 0, i32 0
  %1730 = load i8*, i8** %1729, align 8, !tbaa !16
  %1731 = getelementptr inbounds i8, i8* %1730, i64 -24
  %1732 = bitcast i8* %1731 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1692) #26
  %1733 = icmp eq i8* %1731, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1733, label %1746, label %1734, !prof !19

1734:                                             ; preds = %1728
  %1735 = getelementptr inbounds i8, i8* %1730, i64 -8
  %1736 = bitcast i8* %1735 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1740, label %1737

1737:                                             ; preds = %1734
  %1738 = load i32, i32* %1736, align 8, !tbaa !7
  %1739 = add nsw i32 %1738, -1
  store i32 %1739, i32* %1736, align 8, !tbaa !7
  br label %1742

1740:                                             ; preds = %1734
  %1741 = atomicrmw volatile add i32* %1736, i32 -1 acq_rel, align 4
  br label %1742

1742:                                             ; preds = %1740, %1737
  %1743 = phi i32 [ %1741, %1740 ], [ %1738, %1737 ]
  %1744 = icmp slt i32 %1743, 1
  br i1 %1744, label %1745, label %1746

1745:                                             ; preds = %1742
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1732, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %1746

1746:                                             ; preds = %1745, %1742, %1728
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1692) #26
  %1747 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 0, i32 0, i32 0
  %1748 = load i8*, i8** %1747, align 16, !tbaa !16
  %1749 = getelementptr inbounds i8, i8* %1748, i64 -24
  %1750 = bitcast i8* %1749 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1692) #26
  %1751 = icmp eq i8* %1749, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1751, label %1764, label %1752, !prof !19

1752:                                             ; preds = %1746
  %1753 = getelementptr inbounds i8, i8* %1748, i64 -8
  %1754 = bitcast i8* %1753 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1758, label %1755

1755:                                             ; preds = %1752
  %1756 = load i32, i32* %1754, align 8, !tbaa !7
  %1757 = add nsw i32 %1756, -1
  store i32 %1757, i32* %1754, align 8, !tbaa !7
  br label %1760

1758:                                             ; preds = %1752
  %1759 = atomicrmw volatile add i32* %1754, i32 -1 acq_rel, align 4
  br label %1760

1760:                                             ; preds = %1758, %1755
  %1761 = phi i32 [ %1759, %1758 ], [ %1756, %1755 ]
  %1762 = icmp slt i32 %1761, 1
  br i1 %1762, label %1763, label %1764

1763:                                             ; preds = %1760
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1750, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #26
  br label %1764

1764:                                             ; preds = %1763, %1760, %1746
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1692) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1009) #26
  %1765 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %1766 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 3, i32 0, i32 0
  %1767 = load i8*, i8** %1766, align 8, !tbaa !16
  %1768 = getelementptr inbounds i8, i8* %1767, i64 -24
  %1769 = bitcast i8* %1768 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1765) #26
  %1770 = icmp eq i8* %1768, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1770, label %1783, label %1771, !prof !19

1771:                                             ; preds = %1764
  %1772 = getelementptr inbounds i8, i8* %1767, i64 -8
  %1773 = bitcast i8* %1772 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1774, label %1776

1774:                                             ; preds = %1771
  %1775 = atomicrmw volatile add i32* %1773, i32 -1 acq_rel, align 4
  br label %1779

1776:                                             ; preds = %1771
  %1777 = load i32, i32* %1773, align 8, !tbaa !7
  %1778 = add nsw i32 %1777, -1
  store i32 %1778, i32* %1773, align 8, !tbaa !7
  br label %1779

1779:                                             ; preds = %1776, %1774
  %1780 = phi i32 [ %1775, %1774 ], [ %1777, %1776 ]
  %1781 = icmp slt i32 %1780, 1
  br i1 %1781, label %1782, label %1783

1782:                                             ; preds = %1779
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1769, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %1783

1783:                                             ; preds = %1764, %1779, %1782
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1765) #26
  %1784 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 2, i32 0, i32 0
  %1785 = load i8*, i8** %1784, align 16, !tbaa !16
  %1786 = getelementptr inbounds i8, i8* %1785, i64 -24
  %1787 = bitcast i8* %1786 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1765) #26
  %1788 = icmp eq i8* %1786, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1788, label %1801, label %1789, !prof !19

1789:                                             ; preds = %1783
  %1790 = getelementptr inbounds i8, i8* %1785, i64 -8
  %1791 = bitcast i8* %1790 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1795, label %1792

1792:                                             ; preds = %1789
  %1793 = load i32, i32* %1791, align 8, !tbaa !7
  %1794 = add nsw i32 %1793, -1
  store i32 %1794, i32* %1791, align 8, !tbaa !7
  br label %1797

1795:                                             ; preds = %1789
  %1796 = atomicrmw volatile add i32* %1791, i32 -1 acq_rel, align 4
  br label %1797

1797:                                             ; preds = %1795, %1792
  %1798 = phi i32 [ %1796, %1795 ], [ %1793, %1792 ]
  %1799 = icmp slt i32 %1798, 1
  br i1 %1799, label %1800, label %1801

1800:                                             ; preds = %1797
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1787, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %1801

1801:                                             ; preds = %1800, %1797, %1783
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1765) #26
  %1802 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 1, i32 0, i32 0
  %1803 = load i8*, i8** %1802, align 8, !tbaa !16
  %1804 = getelementptr inbounds i8, i8* %1803, i64 -24
  %1805 = bitcast i8* %1804 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1765) #26
  %1806 = icmp eq i8* %1804, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1806, label %1819, label %1807, !prof !19

1807:                                             ; preds = %1801
  %1808 = getelementptr inbounds i8, i8* %1803, i64 -8
  %1809 = bitcast i8* %1808 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1813, label %1810

1810:                                             ; preds = %1807
  %1811 = load i32, i32* %1809, align 8, !tbaa !7
  %1812 = add nsw i32 %1811, -1
  store i32 %1812, i32* %1809, align 8, !tbaa !7
  br label %1815

1813:                                             ; preds = %1807
  %1814 = atomicrmw volatile add i32* %1809, i32 -1 acq_rel, align 4
  br label %1815

1815:                                             ; preds = %1813, %1810
  %1816 = phi i32 [ %1814, %1813 ], [ %1811, %1810 ]
  %1817 = icmp slt i32 %1816, 1
  br i1 %1817, label %1818, label %1819

1818:                                             ; preds = %1815
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1805, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %1819

1819:                                             ; preds = %1818, %1815, %1801
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1765) #26
  %1820 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 0, i32 0, i32 0
  %1821 = load i8*, i8** %1820, align 16, !tbaa !16
  %1822 = getelementptr inbounds i8, i8* %1821, i64 -24
  %1823 = bitcast i8* %1822 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1765) #26
  %1824 = icmp eq i8* %1822, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %1824, label %1837, label %1825, !prof !19

1825:                                             ; preds = %1819
  %1826 = getelementptr inbounds i8, i8* %1821, i64 -8
  %1827 = bitcast i8* %1826 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %1831, label %1828

1828:                                             ; preds = %1825
  %1829 = load i32, i32* %1827, align 8, !tbaa !7
  %1830 = add nsw i32 %1829, -1
  store i32 %1830, i32* %1827, align 8, !tbaa !7
  br label %1833

1831:                                             ; preds = %1825
  %1832 = atomicrmw volatile add i32* %1827, i32 -1 acq_rel, align 4
  br label %1833

1833:                                             ; preds = %1831, %1828
  %1834 = phi i32 [ %1832, %1831 ], [ %1829, %1828 ]
  %1835 = icmp slt i32 %1834, 1
  br i1 %1835, label %1836, label %1837

1836:                                             ; preds = %1833
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %1823, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #26
  br label %1837

1837:                                             ; preds = %1836, %1833, %1819
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1765) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %996) #26
  br label %1898

1838:                                             ; preds = %1127
  %1839 = landingpad { i8*, i32 }
          cleanup
  br label %1854

1840:                                             ; preds = %1186
  %1841 = landingpad { i8*, i32 }
          cleanup
  br label %1852

1842:                                             ; preds = %1190
  %1843 = landingpad { i8*, i32 }
          cleanup
  br label %1850

1844:                                             ; preds = %1263, %1261
  %1845 = landingpad { i8*, i32 }
          cleanup
  br label %1848

1846:                                             ; preds = %1265
  %1847 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72) #26
  br label %1848

1848:                                             ; preds = %1846, %1844
  %1849 = phi { i8*, i32 } [ %1847, %1846 ], [ %1845, %1844 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75) #26
  br label %1850

1850:                                             ; preds = %1842, %1237, %1848
  %1851 = phi { i8*, i32 } [ %1849, %1848 ], [ %1843, %1842 ], [ %1238, %1237 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1194) #26
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %73) #26
  br label %1852

1852:                                             ; preds = %1850, %1840
  %1853 = phi { i8*, i32 } [ %1851, %1850 ], [ %1841, %1840 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %74) #26
  br label %1854

1854:                                             ; preds = %1838, %1184, %1852
  %1855 = phi { i8*, i32 } [ %1853, %1852 ], [ %1839, %1838 ], [ %1185, %1184 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1138) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1137) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1136) #26
  br label %1886

1856:                                             ; preds = %1343
  %1857 = landingpad { i8*, i32 }
          cleanup
  br label %1872

1858:                                             ; preds = %1392
  %1859 = landingpad { i8*, i32 }
          cleanup
  br label %1870

1860:                                             ; preds = %1396
  %1861 = landingpad { i8*, i32 }
          cleanup
  br label %1868

1862:                                             ; preds = %1469, %1467
  %1863 = landingpad { i8*, i32 }
          cleanup
  br label %1866

1864:                                             ; preds = %1471
  %1865 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %76) #26
  br label %1866

1866:                                             ; preds = %1864, %1862
  %1867 = phi { i8*, i32 } [ %1865, %1864 ], [ %1863, %1862 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %79) #26
  br label %1868

1868:                                             ; preds = %1860, %1443, %1866
  %1869 = phi { i8*, i32 } [ %1867, %1866 ], [ %1861, %1860 ], [ %1444, %1443 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1400) #26
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %77) #26
  br label %1870

1870:                                             ; preds = %1868, %1858
  %1871 = phi { i8*, i32 } [ %1869, %1868 ], [ %1859, %1858 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78) #26
  br label %1872

1872:                                             ; preds = %1856, %1390, %1870
  %1873 = phi { i8*, i32 } [ %1871, %1870 ], [ %1857, %1856 ], [ %1391, %1390 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1346) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1345) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1344) #26
  br label %1886

1874:                                             ; preds = %1550
  %1875 = landingpad { i8*, i32 }
          cleanup
  br label %1878

1876:                                             ; preds = %1598
  %1877 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %80) #26
  br label %1878

1878:                                             ; preds = %1874, %1596, %1876
  %1879 = phi { i8*, i32 } [ %1877, %1876 ], [ %1875, %1874 ], [ %1597, %1596 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1551) #26
  br label %1886

1880:                                             ; preds = %1621
  %1881 = landingpad { i8*, i32 }
          cleanup
  br label %1884

1882:                                             ; preds = %1667
  %1883 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %81) #26
  br label %1884

1884:                                             ; preds = %1880, %1665, %1882
  %1885 = phi { i8*, i32 } [ %1883, %1882 ], [ %1881, %1880 ], [ %1666, %1665 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1622) #26
  br label %1886

1886:                                             ; preds = %1884, %1878, %1872, %1854, %1125
  %1887 = phi { i8*, i32 } [ %1126, %1125 ], [ %1885, %1884 ], [ %1879, %1878 ], [ %1873, %1872 ], [ %1855, %1854 ]
  %1888 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1888) #26
  %1889 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1889) #26
  %1890 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1890) #26
  %1891 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %71, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1891) #26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1009) #26
  %1892 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 3
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1892) #26
  %1893 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1893) #26
  %1894 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1894) #26
  %1895 = getelementptr inbounds [4 x %"class.std::basic_string"], [4 x %"class.std::basic_string"]* %66, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %1895) #26
  br label %1896

1896:                                             ; preds = %1121, %1886, %1107
  %1897 = phi { i8*, i32 } [ %1108, %1107 ], [ %1887, %1886 ], [ %1119, %1121 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %996) #26
  br label %1899

1898:                                             ; preds = %934, %1837, %1
  ret void

1899:                                             ; preds = %1896, %993
  %1900 = phi { i8*, i32 } [ %994, %993 ], [ %1897, %1896 ]
  resume { i8*, i32 } %1900
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL15printStatisticsEPSsS0_i(%"class.std::basic_string"* nocapture readonly %0, %"class.std::basic_string"* nocapture readonly %1) unnamed_addr #8 {
  %3 = tail call noalias nonnull dereferenceable(16) i8* @_Znam(i64 16) #28
  %4 = bitcast i8* %3 to i32*
  %5 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %6 = getelementptr i8, i8* %5, i64 -24
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 240
  %11 = bitcast i8* %10 to %"class.std::ctype"**
  %12 = load %"class.std::ctype"*, %"class.std::ctype"** %11, align 8, !tbaa !22
  %13 = icmp eq %"class.std::ctype"* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %12, i64 0, i32 8
  %17 = load i8, i8* %16, align 8, !tbaa !24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %12, i64 0, i32 9, i64 10
  %21 = load i8, i8* %20, align 1, !tbaa !26
  br label %28

22:                                               ; preds = %15
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %12)
  %23 = bitcast %"class.std::ctype"* %12 to i8 (%"class.std::ctype"*, i8)***
  %24 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %23, align 8, !tbaa !20
  %25 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %24, i64 6
  %26 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %25, align 8
  %27 = tail call signext i8 %26(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %12, i8 signext 10)
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi i8 [ %21, %19 ], [ %27, %22 ]
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %29)
  %31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %30)
  %32 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %31, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %33 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8, !tbaa !16
  %35 = getelementptr inbounds i8, i8* %34, i64 -24
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !38
  %38 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !16
  %40 = getelementptr inbounds i8, i8* %39, i64 -24
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !38
  %43 = icmp ugt i64 %37, %42
  %44 = select i1 %43, i64 %37, i64 %42
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4, !tbaa !7
  %46 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %47 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %48 = getelementptr i8, i8* %47, i64 -24
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %50
  %52 = shl i64 %44, 32
  %53 = add i64 %52, 4294967296
  %54 = ashr exact i64 %53, 32
  %55 = getelementptr inbounds i8, i8* %51, i64 16
  %56 = bitcast i8* %55 to i64*
  store i64 %54, i64* %56, align 8, !tbaa !159
  %57 = load i64, i64* %49, align 8
  %58 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 24
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 8, !tbaa !94
  %62 = and i32 %61, -177
  %63 = or i32 %62, 32
  store i32 %63, i32* %60, align 8, !tbaa !100
  %64 = load i8*, i8** %33, align 8, !tbaa !16
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !38
  %68 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %64, i64 %67)
  %69 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %68, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %70 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 1, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8, !tbaa !16
  %72 = getelementptr inbounds i8, i8* %71, i64 -24
  %73 = bitcast i8* %72 to i64*
  %74 = load i64, i64* %73, align 8, !tbaa !38
  %75 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 1, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8, !tbaa !16
  %77 = getelementptr inbounds i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !38
  %80 = icmp ugt i64 %74, %79
  %81 = select i1 %80, i64 %74, i64 %79
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %82, i32* %83, align 4, !tbaa !7
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %85 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %86 = getelementptr i8, i8* %85, i64 -24
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %88
  %90 = shl i64 %81, 32
  %91 = add i64 %90, 4294967296
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds i8, i8* %89, i64 16
  %94 = bitcast i8* %93 to i64*
  store i64 %92, i64* %94, align 8, !tbaa !159
  %95 = load i64, i64* %87, align 8
  %96 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %95
  %97 = getelementptr inbounds i8, i8* %96, i64 24
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* %98, align 8, !tbaa !94
  %100 = and i32 %99, -177
  %101 = or i32 %100, 32
  store i32 %101, i32* %98, align 8, !tbaa !100
  %102 = load i8*, i8** %70, align 8, !tbaa !16
  %103 = getelementptr inbounds i8, i8* %102, i64 -24
  %104 = bitcast i8* %103 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !38
  %106 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %102, i64 %105)
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %106, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %108 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 2, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8, !tbaa !16
  %110 = getelementptr inbounds i8, i8* %109, i64 -24
  %111 = bitcast i8* %110 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !38
  %113 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 2, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8, !tbaa !16
  %115 = getelementptr inbounds i8, i8* %114, i64 -24
  %116 = bitcast i8* %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !38
  %118 = icmp ugt i64 %112, %117
  %119 = select i1 %118, i64 %112, i64 %117
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %120, i32* %121, align 4, !tbaa !7
  %122 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %123 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %124 = getelementptr i8, i8* %123, i64 -24
  %125 = bitcast i8* %124 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %126
  %128 = shl i64 %119, 32
  %129 = add i64 %128, 4294967296
  %130 = ashr exact i64 %129, 32
  %131 = getelementptr inbounds i8, i8* %127, i64 16
  %132 = bitcast i8* %131 to i64*
  store i64 %130, i64* %132, align 8, !tbaa !159
  %133 = load i64, i64* %125, align 8
  %134 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %133
  %135 = getelementptr inbounds i8, i8* %134, i64 24
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 8, !tbaa !94
  %138 = and i32 %137, -177
  %139 = or i32 %138, 32
  store i32 %139, i32* %136, align 8, !tbaa !100
  %140 = load i8*, i8** %108, align 8, !tbaa !16
  %141 = getelementptr inbounds i8, i8* %140, i64 -24
  %142 = bitcast i8* %141 to i64*
  %143 = load i64, i64* %142, align 8, !tbaa !38
  %144 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %140, i64 %143)
  %145 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %144, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %146 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 3, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !16
  %148 = getelementptr inbounds i8, i8* %147, i64 -24
  %149 = bitcast i8* %148 to i64*
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i64 3, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !16
  %153 = getelementptr inbounds i8, i8* %152, i64 -24
  %154 = bitcast i8* %153 to i64*
  %155 = load i64, i64* %154, align 8, !tbaa !38
  %156 = icmp ugt i64 %150, %155
  %157 = select i1 %156, i64 %150, i64 %155
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 %158, i32* %159, align 4, !tbaa !7
  %160 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %161 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %162 = getelementptr i8, i8* %161, i64 -24
  %163 = bitcast i8* %162 to i64*
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %164
  %166 = shl i64 %157, 32
  %167 = add i64 %166, 4294967296
  %168 = ashr exact i64 %167, 32
  %169 = getelementptr inbounds i8, i8* %165, i64 16
  %170 = bitcast i8* %169 to i64*
  store i64 %168, i64* %170, align 8, !tbaa !159
  %171 = load i64, i64* %163, align 8
  %172 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %171
  %173 = getelementptr inbounds i8, i8* %172, i64 24
  %174 = bitcast i8* %173 to i32*
  %175 = load i32, i32* %174, align 8, !tbaa !94
  %176 = and i32 %175, -177
  %177 = or i32 %176, 32
  store i32 %177, i32* %174, align 8, !tbaa !100
  %178 = load i8*, i8** %146, align 8, !tbaa !16
  %179 = getelementptr inbounds i8, i8* %178, i64 -24
  %180 = bitcast i8* %179 to i64*
  %181 = load i64, i64* %180, align 8, !tbaa !38
  %182 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %178, i64 %181)
  %183 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %182, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %184 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %185 = getelementptr i8, i8* %184, i64 -24
  %186 = bitcast i8* %185 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %187
  %189 = getelementptr inbounds i8, i8* %188, i64 240
  %190 = bitcast i8* %189 to %"class.std::ctype"**
  %191 = load %"class.std::ctype"*, %"class.std::ctype"** %190, align 8, !tbaa !22
  %192 = icmp eq %"class.std::ctype"* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %28
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

194:                                              ; preds = %28
  %195 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %191, i64 0, i32 8
  %196 = load i8, i8* %195, align 8, !tbaa !24
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %191, i64 0, i32 9, i64 10
  %200 = load i8, i8* %199, align 1, !tbaa !26
  br label %207

201:                                              ; preds = %194
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %191)
  %202 = bitcast %"class.std::ctype"* %191 to i8 (%"class.std::ctype"*, i8)***
  %203 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %202, align 8, !tbaa !20
  %204 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %203, i64 6
  %205 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %204, align 8
  %206 = tail call signext i8 %205(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %191, i8 signext 10)
  br label %207

207:                                              ; preds = %198, %201
  %208 = phi i8 [ %200, %198 ], [ %206, %201 ]
  %209 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %208)
  %210 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %209)
  %211 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %210, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %212 = load i32, i32* %4, align 4, !tbaa !7
  %213 = icmp sgt i32 %212, -2
  br i1 %213, label %366, label %330

214:                                              ; preds = %355
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

215:                                              ; preds = %355
  %216 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %364, i64 0, i32 8
  %217 = load i8, i8* %216, align 8, !tbaa !24
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %364, i64 0, i32 9, i64 10
  %221 = load i8, i8* %220, align 1, !tbaa !26
  br label %228

222:                                              ; preds = %215
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %364)
  %223 = bitcast %"class.std::ctype"* %364 to i8 (%"class.std::ctype"*, i8)***
  %224 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %223, align 8, !tbaa !20
  %225 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %224, i64 6
  %226 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %225, align 8
  %227 = tail call signext i8 %226(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %364, i8 signext 10)
  br label %228

228:                                              ; preds = %219, %222
  %229 = phi i8 [ %221, %219 ], [ %227, %222 ]
  %230 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %229)
  %231 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %230)
  %232 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %231, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %233 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %234 = add nsw i32 %212, 1
  %235 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %236 = getelementptr i8, i8* %235, i64 -24
  %237 = bitcast i8* %236 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %238
  %240 = sext i32 %234 to i64
  %241 = getelementptr inbounds i8, i8* %239, i64 16
  %242 = bitcast i8* %241 to i64*
  store i64 %240, i64* %242, align 8, !tbaa !159
  %243 = load i64, i64* %237, align 8
  %244 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %243
  %245 = getelementptr inbounds i8, i8* %244, i64 24
  %246 = bitcast i8* %245 to i32*
  %247 = load i32, i32* %246, align 8, !tbaa !94
  %248 = and i32 %247, -177
  %249 = or i32 %248, 32
  store i32 %249, i32* %246, align 8, !tbaa !100
  %250 = load i8*, i8** %38, align 8, !tbaa !16
  %251 = getelementptr inbounds i8, i8* %250, i64 -24
  %252 = bitcast i8* %251 to i64*
  %253 = load i64, i64* %252, align 8, !tbaa !38
  %254 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %250, i64 %253)
  %255 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %254, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %256 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %257 = add nsw i32 %332, 1
  %258 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %259 = getelementptr i8, i8* %258, i64 -24
  %260 = bitcast i8* %259 to i64*
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %261
  %263 = sext i32 %257 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 16
  %265 = bitcast i8* %264 to i64*
  store i64 %263, i64* %265, align 8, !tbaa !159
  %266 = load i64, i64* %260, align 8
  %267 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %266
  %268 = getelementptr inbounds i8, i8* %267, i64 24
  %269 = bitcast i8* %268 to i32*
  %270 = load i32, i32* %269, align 8, !tbaa !94
  %271 = and i32 %270, -177
  %272 = or i32 %271, 32
  store i32 %272, i32* %269, align 8, !tbaa !100
  %273 = load i8*, i8** %75, align 8, !tbaa !16
  %274 = getelementptr inbounds i8, i8* %273, i64 -24
  %275 = bitcast i8* %274 to i64*
  %276 = load i64, i64* %275, align 8, !tbaa !38
  %277 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %273, i64 %276)
  %278 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %277, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %279 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %280 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %281 = getelementptr i8, i8* %280, i64 -24
  %282 = bitcast i8* %281 to i64*
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %283
  %285 = getelementptr inbounds i8, i8* %284, i64 16
  %286 = bitcast i8* %285 to i64*
  store i64 %130, i64* %286, align 8, !tbaa !159
  %287 = load i64, i64* %282, align 8
  %288 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %287
  %289 = getelementptr inbounds i8, i8* %288, i64 24
  %290 = bitcast i8* %289 to i32*
  %291 = load i32, i32* %290, align 8, !tbaa !94
  %292 = and i32 %291, -177
  %293 = or i32 %292, 32
  store i32 %293, i32* %290, align 8, !tbaa !100
  %294 = load i8*, i8** %113, align 8, !tbaa !16
  %295 = getelementptr inbounds i8, i8* %294, i64 -24
  %296 = bitcast i8* %295 to i64*
  %297 = load i64, i64* %296, align 8, !tbaa !38
  %298 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %294, i64 %297)
  %299 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %298, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %300 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1)
  %301 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %302 = getelementptr i8, i8* %301, i64 -24
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %304
  %306 = getelementptr inbounds i8, i8* %305, i64 16
  %307 = bitcast i8* %306 to i64*
  store i64 %168, i64* %307, align 8, !tbaa !159
  %308 = load i64, i64* %303, align 8
  %309 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %308
  %310 = getelementptr inbounds i8, i8* %309, i64 24
  %311 = bitcast i8* %310 to i32*
  %312 = load i32, i32* %311, align 8, !tbaa !94
  %313 = and i32 %312, -177
  %314 = or i32 %313, 32
  store i32 %314, i32* %311, align 8, !tbaa !100
  %315 = load i8*, i8** %151, align 8, !tbaa !16
  %316 = getelementptr inbounds i8, i8* %315, i64 -24
  %317 = bitcast i8* %316 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !38
  %319 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %315, i64 %318)
  %320 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %319, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %321 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %322 = getelementptr i8, i8* %321, i64 -24
  %323 = bitcast i8* %322 to i64*
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %324
  %326 = getelementptr inbounds i8, i8* %325, i64 240
  %327 = bitcast i8* %326 to %"class.std::ctype"**
  %328 = load %"class.std::ctype"*, %"class.std::ctype"** %327, align 8, !tbaa !22
  %329 = icmp eq %"class.std::ctype"* %328, null
  br i1 %329, label %371, label %372

330:                                              ; preds = %366, %207
  %331 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %332 = load i32, i32* %83, align 4, !tbaa !7
  %333 = icmp sgt i32 %332, -2
  br i1 %333, label %334, label %339

334:                                              ; preds = %330, %334
  %335 = phi i32 [ %337, %334 ], [ 0, %330 ]
  %336 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
  %337 = add nuw nsw i32 %335, 1
  %338 = icmp sgt i32 %335, %332
  br i1 %338, label %339, label %334, !llvm.loop !160

339:                                              ; preds = %334, %330
  %340 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %341 = icmp sgt i32 %120, -2
  br i1 %341, label %342, label %347

342:                                              ; preds = %339, %342
  %343 = phi i32 [ %345, %342 ], [ 0, %339 ]
  %344 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
  %345 = add nuw nsw i32 %343, 1
  %346 = icmp sgt i32 %343, %120
  br i1 %346, label %347, label %342, !llvm.loop !160

347:                                              ; preds = %342, %339
  %348 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %349 = icmp sgt i32 %158, -2
  br i1 %349, label %350, label %355

350:                                              ; preds = %347, %350
  %351 = phi i32 [ %353, %350 ], [ 0, %347 ]
  %352 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
  %353 = add nuw nsw i32 %351, 1
  %354 = icmp sgt i32 %351, %158
  br i1 %354, label %355, label %350, !llvm.loop !160

355:                                              ; preds = %350, %347
  %356 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i64 1)
  %357 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %358 = getelementptr i8, i8* %357, i64 -24
  %359 = bitcast i8* %358 to i64*
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %360
  %362 = getelementptr inbounds i8, i8* %361, i64 240
  %363 = bitcast i8* %362 to %"class.std::ctype"**
  %364 = load %"class.std::ctype"*, %"class.std::ctype"** %363, align 8, !tbaa !22
  %365 = icmp eq %"class.std::ctype"* %364, null
  br i1 %365, label %214, label %215

366:                                              ; preds = %207, %366
  %367 = phi i32 [ %369, %366 ], [ 0, %207 ]
  %368 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1)
  %369 = add nuw nsw i32 %367, 1
  %370 = icmp sgt i32 %367, %212
  br i1 %370, label %330, label %366, !llvm.loop !160

371:                                              ; preds = %228
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

372:                                              ; preds = %228
  %373 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %328, i64 0, i32 8
  %374 = load i8, i8* %373, align 8, !tbaa !24
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %328, i64 0, i32 9, i64 10
  %378 = load i8, i8* %377, align 1, !tbaa !26
  br label %385

379:                                              ; preds = %372
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %328)
  %380 = bitcast %"class.std::ctype"* %328 to i8 (%"class.std::ctype"*, i8)***
  %381 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %380, align 8, !tbaa !20
  %382 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %381, i64 6
  %383 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %382, align 8
  %384 = tail call signext i8 %383(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %328, i8 signext 10)
  br label %385

385:                                              ; preds = %376, %379
  %386 = phi i8 [ %378, %376 ], [ %384, %379 ]
  %387 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %386)
  %388 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %387)
  tail call void @_ZdaPv(i8* nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN20MatrixMultiplication7cleanupEv(%class.MatrixMultiplication* nocapture nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 13
  %3 = bitcast float** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !47
  %5 = tail call i32 @hipFree(i8* %4)
  %6 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 14
  %7 = bitcast float** %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !48
  %9 = tail call i32 @hipFree(i8* %8)
  %10 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 15
  %11 = bitcast float** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !49
  %13 = tail call i32 @hipFree(i8* %12)
  %14 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 4
  %15 = load float*, float** %14, align 8, !tbaa !15
  %16 = icmp eq float* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = bitcast float* %15 to i8*
  tail call void @free(i8* %18) #26
  store float* null, float** %14, align 8, !tbaa !15
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 7
  %21 = load float*, float** %20, align 8, !tbaa !29
  %22 = icmp eq float* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = bitcast float* %21 to i8*
  tail call void @free(i8* %24) #26
  store float* null, float** %20, align 8, !tbaa !29
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 10
  %27 = load float*, float** %26, align 8, !tbaa !30
  %28 = icmp eq float* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = bitcast float* %27 to i8*
  tail call void @free(i8* %30) #26
  store float* null, float** %26, align 8, !tbaa !30
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %0, i64 0, i32 11
  %33 = load float*, float** %32, align 8, !tbaa !36
  %34 = icmp eq float* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = bitcast float* %33 to i8*
  tail call void @free(i8* %36) #26
  store float* null, float** %32, align 8, !tbaa !36
  br label %37

37:                                               ; preds = %35, %31
  ret i32 0
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %class.MatrixMultiplication, align 8
  %4 = bitcast %class.MatrixMultiplication* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #26
  %5 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #28
  %6 = bitcast i8* %5 to %"class.appsdk::HIPCommandArgs"*
  %7 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 8, i32 0
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %10, align 8, !tbaa !7
  %11 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %11, align 8, !tbaa !161
  %12 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 1
  store i32 0, i32* %13, align 8, !tbaa !59
  %14 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 2
  store i32 0, i32* %14, align 4, !tbaa !162
  %15 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 4
  %16 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 3
  %17 = bitcast i8*** %15 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store i32 123, i32* %16, align 8, !tbaa !163
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 9
  store i8 0, i8* %18, align 4, !tbaa !37
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 10
  store i8 0, i8* %19, align 1, !tbaa !32
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 0, i32 11
  store i8 0, i8* %20, align 2, !tbaa !85
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 1
  store i32 0, i32* %21, align 8, !tbaa !164
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %6, i64 0, i32 2
  store i8 0, i8* %22, align 4, !tbaa !166
  %23 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 27
  %24 = bitcast %"class.appsdk::HIPCommandArgs"** %23 to i8**
  store i8* %5, i8** %24, align 8, !tbaa !31
  %25 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #28
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false) #26
  %26 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 26
  %27 = bitcast %"class.appsdk::SDKTimer"** %26 to i8**
  store i8* %25, i8** %27, align 8, !tbaa !65
  %28 = bitcast i8* %5 to %"class.appsdk::SDKCmdArgsParser"*
  %29 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %28, i64 0, i32 12
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.69, i64 0, i64 0), i64 29)
  %31 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 0
  store i32 123, i32* %31, align 8, !tbaa !167
  %32 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 4
  store float* null, float** %32, align 8, !tbaa !15
  %33 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 7
  store float* null, float** %33, align 8, !tbaa !29
  %34 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 10
  %35 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 17
  %36 = bitcast float** %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  store i32 64, i32* %35, align 4, !tbaa !62
  %37 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 18
  store i32 64, i32* %37, align 8, !tbaa !63
  %38 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 19
  store i32 64, i32* %38, align 4, !tbaa !64
  %39 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 12
  store i32 8, i32* %39, align 8, !tbaa !50
  %40 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 1
  %41 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 24
  %42 = bitcast double* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  store i32 1, i32* %41, align 8, !tbaa !80
  %43 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 16
  store i8 0, i8* %43, align 8, !tbaa !168
  %44 = getelementptr inbounds %class.MatrixMultiplication, %class.MatrixMultiplication* %3, i64 0, i32 25
  store i8 0, i8* %44, align 4, !tbaa !86
  %45 = call i32 @_ZN20MatrixMultiplication10initializeEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %3)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %2
  %48 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %23, align 8, !tbaa !31
  %49 = bitcast %"class.appsdk::HIPCommandArgs"* %48 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %50 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %49, align 8, !tbaa !20
  %51 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %50, align 8
  %52 = call i32 %51(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %48, i32 %0, i8** %1)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = call i32 @_ZN20MatrixMultiplication5setupEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %3)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = call i32 @_ZN20MatrixMultiplication3runEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %3)
  %59 = call i32 @_ZN20MatrixMultiplication13verifyResultsEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %3)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @_ZN20MatrixMultiplication7cleanupEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %3)
  call void @_ZN20MatrixMultiplication10printStatsEv(%class.MatrixMultiplication* nonnull align 8 dereferenceable(200) %3)
  br label %63

63:                                               ; preds = %57, %54, %47, %2, %61
  %64 = phi i32 [ 0, %61 ], [ 1, %2 ], [ 1, %47 ], [ 1, %54 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #26
  ret i32 %64
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
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #18

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
  store i32 %1, i32* %23, align 4, !tbaa !162
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !169
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
  br i1 %37, label %28, label %38, !llvm.loop !170

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #26
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !162
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !169
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !26
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #26
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !162
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !171

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !16
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #26
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !19

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
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !162
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !169
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !26
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #26
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !162
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !171

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !16
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #26
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !19

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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !162
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !169
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !26
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #26
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !162
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !171

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !162
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !169
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !26
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !26
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #26
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !162
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !171

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !16
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #26
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !19

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
  %207 = load i8*, i8** %206, align 8, !tbaa !16
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #26
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !19

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
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !16
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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !162
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !169
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !26
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #26
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !162
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !171

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #26
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !162
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !169
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !26
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !26
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #26
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !162
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !171

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !16
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #26
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !19

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
  %313 = load i8*, i8** %312, align 8, !tbaa !16
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #26
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !19

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
  store i8 1, i8* %332, align 4, !tbaa !166
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !20
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !60
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
  %23 = load i8*, i8** %22, align 8, !tbaa !16
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #26
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !19

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
  %42 = load i8*, i8** %41, align 8, !tbaa !16
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #26
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !19

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
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #21

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !26
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !26
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !59
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !60
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !59
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !172

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !60
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !60
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !55
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !58
  store i8 1, i8* %44, align 1, !tbaa !173
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !58
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), float* %52) #26
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %62
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = getelementptr inbounds i8, i8* %63, i64 32
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !174
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #26
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
  %81 = load double*, double** %80, align 8, !tbaa !58
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), double* %81) #26
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %91
  %93 = bitcast i8* %92 to %"class.std::basic_ios"*
  %94 = getelementptr inbounds i8, i8* %92, i64 32
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !174
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #26
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
  %110 = load i32*, i32** %109, align 8, !tbaa !58
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i32* %110) #26
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = bitcast i8* %121 to %"class.std::basic_ios"*
  %123 = getelementptr inbounds i8, i8* %121, i64 32
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !174
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #26
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
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !58
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !16
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !16
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #26
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !19

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
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !16
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !19

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !175
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !38
  store i8 0, i8* %144, align 1, !tbaa !26
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #26
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %182
  %184 = bitcast i8* %183 to %"class.std::basic_ios"*
  %185 = getelementptr inbounds i8, i8* %183, i64 32
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 8, !tbaa !174
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #26
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !59
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !172

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #19

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
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
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
  store i64 14, i64* %24, align 8, !tbaa !159
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
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
  store i64 32, i64* %39, align 8, !tbaa !159
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
  %56 = load i32, i32* %42, align 8, !tbaa !59
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !60
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !16
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !38
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
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
  store i64 4, i64* %81, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #26
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !54, !alias.scope !176
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
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #26
  br label %87

91:                                               ; preds = %85
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !54, !noalias !179
  store i8* %95, i8** %47, align 8, !tbaa !54, !alias.scope !179
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !16, !noalias !179
  %96 = load i8*, i8** %47, align 8, !tbaa !16
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !38
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #26
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !19

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
  %117 = load i8*, i8** %46, align 8, !tbaa !16
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #26
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !19

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
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
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
  store i64 14, i64* %154, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #26
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !60
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !54, !alias.scope !182
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !16, !noalias !182
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !38, !noalias !182
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
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #26
  br label %87

169:                                              ; preds = %165
  %170 = load i8*, i8** %51, align 8, !tbaa !16
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !38
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !16
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #26
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !19

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
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !60
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !16
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !38
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !20
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
  store i64 32, i64* %211, align 8, !tbaa !159
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
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #26
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !60
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
  %225 = load i8*, i8** %54, align 8, !tbaa !16
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !38
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !16
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #26
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !19

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
  %249 = load i32, i32* %42, align 8, !tbaa !59
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !185

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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i64, i8*, i64) local_unnamed_addr #0

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #23

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
define internal void @_GLOBAL__sub_I_matrixmulplication.cpp() #5 section ".text.startup" {
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32)** @_Z9mmmKernelP15HIP_vector_typeIfLj4EES1_S1_jj to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !8, i64 40}
!10 = !{!"_ZTS20MatrixMultiplication", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !4, i64 32, !8, i64 40, !8, i64 44, !4, i64 48, !8, i64 56, !8, i64 60, !4, i64 64, !4, i64 72, !8, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !12, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !5, i64 128, !5, i64 144, !13, i64 160, !13, i64 168, !8, i64 176, !12, i64 180, !4, i64 184, !4, i64 192}
!11 = !{!"double", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!10, !8, i64 44}
!15 = !{!10, !4, i64 32}
!16 = !{!17, !4, i64 0}
!17 = !{!"_ZTSSs", !18, i64 0}
!18 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !6, i64 0}
!22 = !{!23, !4, i64 240}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !12, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!24 = !{!25, !5, i64 56}
!25 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !12, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!26 = !{!5, !5, i64 0}
!27 = !{!10, !8, i64 56}
!28 = !{!10, !8, i64 60}
!29 = !{!10, !4, i64 48}
!30 = !{!10, !4, i64 64}
!31 = !{!10, !4, i64 192}
!32 = !{!33, !12, i64 77}
!33 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !12, i64 40, !17, i64 48, !34, i64 56, !12, i64 76, !12, i64 77, !12, i64 78, !17, i64 80}
!34 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!35 = !{i8 0, i8 2}
!36 = !{!10, !4, i64 72}
!37 = !{!33, !12, i64 76}
!38 = !{!39, !13, i64 0}
!39 = !{!"_ZTSNSs9_Rep_baseE", !13, i64 0, !13, i64 8, !8, i64 16}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !5, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = !{!10, !4, i64 88}
!48 = !{!10, !4, i64 96}
!49 = !{!10, !4, i64 104}
!50 = !{!10, !8, i64 80}
!51 = distinct !{!51, !43}
!52 = distinct !{!52, !43}
!53 = distinct !{!53, !43}
!54 = !{!18, !4, i64 0}
!55 = !{!56, !57, i64 32}
!56 = !{!"_ZTSN6appsdk6OptionE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !57, i64 32, !4, i64 40}
!57 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!58 = !{!56, !4, i64 40}
!59 = !{!33, !8, i64 8}
!60 = !{!33, !4, i64 32}
!61 = distinct !{!61, !43}
!62 = !{!10, !8, i64 116}
!63 = !{!10, !8, i64 120}
!64 = !{!10, !8, i64 124}
!65 = !{!10, !4, i64 184}
!66 = !{!67, !4, i64 8}
!67 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!69 = !{!67, !4, i64 0}
!70 = !{!10, !11, i64 8}
!71 = !{!72, !73, i64 8}
!72 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !17, i64 0, !73, i64 8, !73, i64 16, !73, i64 24}
!73 = !{!"long long", !5, i64 0}
!74 = !{!67, !4, i64 16}
!75 = !{!76, !13, i64 0}
!76 = !{!"_ZTS7timeval", !13, i64 0, !13, i64 8}
!77 = !{!76, !13, i64 8}
!78 = !{!72, !73, i64 24}
!79 = !{!72, !73, i64 16}
!80 = !{!10, !8, i64 176}
!81 = !{!10, !11, i64 24}
!82 = distinct !{!82, !43}
!83 = !{!11, !11, i64 0}
!84 = distinct !{!84, !43}
!85 = !{!33, !12, i64 78}
!86 = !{!10, !12, i64 180}
!87 = !{!10, !11, i64 16}
!88 = !{!89, !11, i64 24}
!89 = !{!"_ZTSN6appsdk8SDKTimerE", !90, i64 0, !11, i64 24}
!90 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!93 = distinct !{!93, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!94 = !{!95, !96, i64 24}
!95 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !96, i64 24, !97, i64 28, !97, i64 32, !4, i64 40, !98, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !99, i64 208}
!96 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!97 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!98 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !13, i64 8}
!99 = !{!"_ZTSSt6locale", !4, i64 0}
!100 = !{!96, !96, i64 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!103 = distinct !{!103, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!106 = distinct !{!106, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_: argument 0"}
!109 = distinct !{!109, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_"}
!110 = !{!39, !13, i64 8}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!113 = distinct !{!113, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!116 = distinct !{!116, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!119 = distinct !{!119, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_: argument 0"}
!122 = distinct !{!122, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!125 = distinct !{!125, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!128 = distinct !{!128, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!131 = distinct !{!131, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!134 = distinct !{!134, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!137 = distinct !{!137, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_: argument 0"}
!140 = distinct !{!140, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!143 = distinct !{!143, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!146 = distinct !{!146, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!149 = distinct !{!149, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_: argument 0"}
!152 = distinct !{!152, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_S7_"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!155 = distinct !{!155, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!158 = distinct !{!158, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!159 = !{!95, !13, i64 16}
!160 = distinct !{!160, !43}
!161 = !{!34, !8, i64 16}
!162 = !{!33, !8, i64 12}
!163 = !{!33, !8, i64 16}
!164 = !{!165, !8, i64 88}
!165 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !12, i64 92}
!166 = !{!165, !12, i64 92}
!167 = !{!10, !8, i64 0}
!168 = !{!10, !12, i64 112}
!169 = !{!33, !4, i64 24}
!170 = distinct !{!170, !43}
!171 = distinct !{!171, !43}
!172 = distinct !{!172, !43}
!173 = !{!12, !12, i64 0}
!174 = !{!95, !97, i64 32}
!175 = !{!39, !8, i64 16}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!178 = distinct !{!178, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!181 = distinct !{!181, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!184 = distinct !{!184, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!185 = distinct !{!185, !43}
