; ModuleID = 'euler3d.cu'
source_filename = "euler3d.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon.0 }
%union.anon.0 = type { %"struct.HIP_vector_base<float, 3>::Native_vec_" }
%"struct.HIP_vector_base<float, 3>::Native_vec_" = type { [3 x float] }
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
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%struct.anon = type { float, float, float }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

$_Z8downloadIfEvPT_S1_i = comdat any

$_ZStorSt13_Ios_OpenmodeS_ = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_Z5allocIfEPT_i = comdat any

$_Z5allocI15HIP_vector_typeIfLj3EEEPT_i = comdat any

$_Z25compute_flux_contributionRfR15HIP_vector_typeIfLj3EES_S_S2_S2_S2_S2_S2_ = comdat any

$_Z6uploadIfEvPT_S1_i = comdat any

$_Z6uploadI15HIP_vector_typeIfLj3EEEvPT_S3_i = comdat any

$_ZSt3minIiEUa9enable_ifILb1EERKT_S2_S2_ = comdat any

$_Z5allocIiEPT_i = comdat any

$_Z6uploadIiEvPT_S1_i = comdat any

$_Z4copyIfEvPT_S1_i = comdat any

$_Z7deallocIfEvPT_ = comdat any

$_Z7deallocIiEvPT_ = comdat any

$_Z7deallocI15HIP_vector_typeIfLj3EEEvPT_ = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"momentum\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"density_energy\00", align 1
@_Z25cuda_initialize_variablesiPfS_ = constant void (i32, float*, float*)* @_Z40__device_stub__cuda_initialize_variablesiPfS_, align 8
@_Z24cuda_compute_step_factoriPfS_S_ = constant void (i32, float*, float*, float*)* @_Z39__device_stub__cuda_compute_step_factoriPfS_S_, align 8
@_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_ = constant void (i32, i32*, float*, float*, float*, float*, %struct.HIP_vector_type*, %struct.HIP_vector_type*)* @_Z32__device_stub__cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_, align 8
@_Z14cuda_time_stepiiPfS_S_S_ = constant void (i32, i32, float*, float*, float*, float*)* @_Z29__device_stub__cuda_time_stepiiPfS_S_S_, align 8
@.str.4 = private unnamed_addr constant [150 x i8] c"WG size of kernel:initialize = %d, WG size of kernel:compute_step_factor = %d, WG size of kernel:compute_flux = %d, WG size of kernel:time_step = %d\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"specify data file name\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Name:                     %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Starting...\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Saving solution...\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Saved solution...\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Cleaning up...\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Done...\00", align 1
@0 = private unnamed_addr constant [35 x i8] c"_Z25cuda_initialize_variablesiPfS_\00", align 1
@1 = private unnamed_addr constant [36 x i8] c"_Z24cuda_compute_step_factoriPfS_S_\00", align 1
@2 = private unnamed_addr constant [64 x i8] c"_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_\00", align 1
@3 = private unnamed_addr constant [29 x i8] c"_Z14cuda_time_stepiiPfS_S_S_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_euler3d.cu, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4dumpPfii(float* noundef %0, i32 noundef %1, i32 noundef %2) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca %"class.std::basic_ofstream", align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::basic_ofstream", align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %"class.std::basic_ofstream", align 8
  %16 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 5
  %19 = sext i32 %18 to i64
  %20 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %19, i64 4)
  %21 = extractvalue { i64, i1 } %20, 1
  %22 = extractvalue { i64, i1 } %20, 0
  %23 = select i1 %21, i64 -1, i64 %22
  %24 = call noalias noundef nonnull i8* @_Znam(i64 noundef %23) #13
  %25 = bitcast i8* %24 to float*
  store float* %25, float** %7, align 8
  %26 = load float*, float** %7, align 8
  %27 = load float*, float** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 5
  call void @_Z8downloadIfEvPT_S1_i(float* noundef %26, float* noundef %27, i32 noundef %29)
  %30 = call noundef i32 @_ZStorSt13_Ios_OpenmodeS_(i32 noundef 16, i32 noundef 32)
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %30)
  %31 = bitcast %"class.std::basic_ofstream"* %8 to %"class.std::basic_ostream"*
  %32 = load i32, i32* %5, align 4
  %33 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %31, i32 noundef %32)
          to label %34 unwind label %63

34:                                               ; preds = %3
  %35 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %36 unwind label %63

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %35, i32 noundef %37)
          to label %39 unwind label %63

39:                                               ; preds = %36
  %40 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %38, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %41 unwind label %63

41:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = bitcast %"class.std::basic_ofstream"* %8 to %"class.std::basic_ostream"*
  %48 = load float*, float** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 0, %50
  %52 = add nsw i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %48, i64 %53
  %55 = load float, float* %54, align 4
  %56 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %47, float noundef %55)
          to label %57 unwind label %63

57:                                               ; preds = %46
  %58 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %56, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %59 unwind label %63

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %42, !llvm.loop !6

63:                                               ; preds = %57, %46, %39, %36, %34, %3
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  store i8* %65, i8** %9, align 8
  %66 = extractvalue { i8*, i32 } %64, 1
  store i32 %66, i32* %10, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %8) #3
  br label %162

67:                                               ; preds = %42
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %8) #3
  %68 = call noundef i32 @_ZStorSt13_Ios_OpenmodeS_(i32 noundef 16, i32 noundef 32)
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef %68)
  %69 = bitcast %"class.std::basic_ofstream"* %12 to %"class.std::basic_ostream"*
  %70 = load i32, i32* %5, align 4
  %71 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %69, i32 noundef %70)
          to label %72 unwind label %107

72:                                               ; preds = %67
  %73 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %71, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %74 unwind label %107

74:                                               ; preds = %72
  %75 = load i32, i32* %6, align 4
  %76 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %73, i32 noundef %75)
          to label %77 unwind label %107

77:                                               ; preds = %74
  %78 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %76, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %79 unwind label %107

79:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %115, %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %104, %84
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %88, label %111

88:                                               ; preds = %85
  %89 = bitcast %"class.std::basic_ofstream"* %12 to %"class.std::basic_ostream"*
  %90 = load float*, float** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 1, %92
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %91, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %90, i64 %97
  %99 = load float, float* %98, align 4
  %100 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %89, float noundef %99)
          to label %101 unwind label %107

101:                                              ; preds = %88
  %102 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %100, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %103 unwind label %107

103:                                              ; preds = %101
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %85, !llvm.loop !8

107:                                              ; preds = %111, %101, %88, %77, %74, %72, %67
  %108 = landingpad { i8*, i32 }
          cleanup
  %109 = extractvalue { i8*, i32 } %108, 0
  store i8* %109, i8** %9, align 8
  %110 = extractvalue { i8*, i32 } %108, 1
  store i32 %110, i32* %10, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %12) #3
  br label %162

111:                                              ; preds = %85
  %112 = bitcast %"class.std::basic_ofstream"* %12 to %"class.std::basic_ostream"*
  %113 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %112, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %114 unwind label %107

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %80, !llvm.loop !9

118:                                              ; preds = %80
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %12) #3
  %119 = call noundef i32 @_ZStorSt13_Ios_OpenmodeS_(i32 noundef 16, i32 noundef 32)
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef %119)
  %120 = bitcast %"class.std::basic_ofstream"* %15 to %"class.std::basic_ostream"*
  %121 = load i32, i32* %5, align 4
  %122 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %120, i32 noundef %121)
          to label %123 unwind label %152

123:                                              ; preds = %118
  %124 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %122, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %125 unwind label %152

125:                                              ; preds = %123
  %126 = load i32, i32* %6, align 4
  %127 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %124, i32 noundef %126)
          to label %128 unwind label %152

128:                                              ; preds = %125
  %129 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %127, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %130 unwind label %152

130:                                              ; preds = %128
  store i32 0, i32* %16, align 4
  br label %131

131:                                              ; preds = %149, %130
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %131
  %136 = bitcast %"class.std::basic_ofstream"* %15 to %"class.std::basic_ostream"*
  %137 = load float*, float** %7, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %6, align 4
  %140 = mul nsw i32 4, %139
  %141 = add nsw i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %137, i64 %142
  %144 = load float, float* %143, align 4
  %145 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %136, float noundef %144)
          to label %146 unwind label %152

146:                                              ; preds = %135
  %147 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %145, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %148 unwind label %152

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %131, !llvm.loop !10

152:                                              ; preds = %146, %135, %128, %125, %123, %118
  %153 = landingpad { i8*, i32 }
          cleanup
  %154 = extractvalue { i8*, i32 } %153, 0
  store i8* %154, i8** %9, align 8
  %155 = extractvalue { i8*, i32 } %153, 1
  store i32 %155, i32* %10, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %15) #3
  br label %162

156:                                              ; preds = %131
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %15) #3
  %157 = load float*, float** %7, align 8
  %158 = icmp eq float* %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = bitcast float* %157 to i8*
  call void @_ZdaPv(i8* noundef %160) #14
  br label %161

161:                                              ; preds = %159, %156
  ret void

162:                                              ; preds = %152, %107, %63
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %10, align 4
  %165 = insertvalue { i8*, i32 } undef, i8* %163, 0
  %166 = insertvalue { i8*, i32 } %165, i32 %164, 1
  resume { i8*, i32 } %166
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #6

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z8downloadIfEvPT_S1_i(float* noundef %0, float* noundef %1, i32 noundef %2) #4 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load float*, float** %4, align 8
  %8 = bitcast float* %7 to i8*
  %9 = load float*, float** %5, align 8
  %10 = bitcast float* %9 to i8*
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call i32 @hipMemcpy(i8* noundef %8, i8* noundef %10, i64 noundef %13, i32 noundef 2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt13_Ios_OpenmodeS_(i32 noundef %0, i32 noundef %1) #7 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = or i32 %5, %6
  ret i32 %7
}

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248), i8* noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), float noundef) #1

; Function Attrs: nounwind
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) #8

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z40__device_stub__cuda_initialize_variablesiPfS_(i32 noundef %0, float* noundef %1, float* noundef %2) #9 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast i32* %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast float** %5 to i8*
  %17 = getelementptr i8*, i8** %13, i32 1
  store i8* %16, i8** %17, align 8
  %18 = bitcast float** %6 to i8*
  %19 = getelementptr i8*, i8** %13, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i32 @__hipPopCallConfiguration(%struct.dim3* %7, %struct.dim3* %8, i64* %9, i8** %10)
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast { i64, i32 }* %11 to i8*
  %24 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = bitcast { i64, i32 }* %12 to i8*
  %30 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = bitcast i8* %22 to %struct.ihipStream_t*
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, float*, float*)** @_Z25cuda_initialize_variablesiPfS_ to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z20initialize_variablesiPfS_(i32 noundef %0, float* noundef %1, float* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.dim3, align 4
  %8 = alloca %struct.dim3, align 4
  %9 = alloca %struct.dim3, align 4
  %10 = alloca %struct.dim3, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 192
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %7, i32 noundef %14, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %8, i32 noundef 192, i32 noundef 1, i32 noundef 1)
  br label %15

15:                                               ; preds = %3
  %16 = bitcast %struct.dim3* %9 to i8*
  %17 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = bitcast %struct.dim3* %10 to i8*
  %19 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast { i64, i32 }* %11 to i8*
  %21 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %12 to i8*
  %27 = bitcast %struct.dim3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__hipPushCallConfiguration(i64 %23, i32 %25, i64 %29, i32 %31, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %4, align 4
  %36 = load float*, float** %5, align 8
  %37 = load float*, float** %6, align 8
  call void @_Z40__device_stub__cuda_initialize_variablesiPfS_(i32 noundef %35, float* noundef %36, float* noundef %37)
  br label %38

38:                                               ; preds = %34, %15
  br label %39

39:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 comdat align 2 {
  %5 = alloca %struct.dim3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dim3* %0, %struct.dim3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dim3*, %struct.dim3** %5, align 8
  %10 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  ret void
}

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z39__device_stub__cuda_compute_step_factoriPfS_S_(i32 noundef %0, float* noundef %1, float* noundef %2, float* noundef %3) #9 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %15 = alloca i8*, i64 4, align 16
  %16 = bitcast i32* %5 to i8*
  %17 = getelementptr i8*, i8** %15, i32 0
  store i8* %16, i8** %17, align 8
  %18 = bitcast float** %6 to i8*
  %19 = getelementptr i8*, i8** %15, i32 1
  store i8* %18, i8** %19, align 8
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %15, i32 2
  store i8* %20, i8** %21, align 8
  %22 = bitcast float** %8 to i8*
  %23 = getelementptr i8*, i8** %15, i32 3
  store i8* %22, i8** %23, align 8
  %24 = call i32 @__hipPopCallConfiguration(%struct.dim3* %9, %struct.dim3* %10, i64* %11, i8** %12)
  %25 = load i64, i64* %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast { i64, i32 }* %13 to i8*
  %28 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = bitcast { i64, i32 }* %14 to i8*
  %34 = bitcast %struct.dim3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = bitcast i8* %26 to %struct.ihipStream_t*
  %40 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, float*, float*, float*)** @_Z24cuda_compute_step_factoriPfS_S_ to i8*), i64 %30, i32 %32, i64 %36, i32 %38, i8** noundef %15, i64 noundef %25, %struct.ihipStream_t* noundef %39)
  br label %41

41:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z19compute_step_factoriPfS_S_(i32 noundef %0, float* noundef %1, float* noundef %2, float* noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.dim3, align 4
  %10 = alloca %struct.dim3, align 4
  %11 = alloca %struct.dim3, align 4
  %12 = alloca %struct.dim3, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 192
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %9, i32 noundef %16, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %10, i32 noundef 192, i32 noundef 1, i32 noundef 1)
  br label %17

17:                                               ; preds = %4
  %18 = bitcast %struct.dim3* %11 to i8*
  %19 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast %struct.dim3* %12 to i8*
  %21 = bitcast %struct.dim3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = bitcast { i64, i32 }* %13 to i8*
  %23 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %25 = load i64, i64* %24, align 4
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = bitcast { i64, i32 }* %14 to i8*
  %29 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__hipPushCallConfiguration(i64 %25, i32 %27, i64 %31, i32 %33, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = load float*, float** %6, align 8
  %39 = load float*, float** %7, align 8
  %40 = load float*, float** %8, align 8
  call void @_Z39__device_stub__cuda_compute_step_factoriPfS_S_(i32 noundef %37, float* noundef %38, float* noundef %39, float* noundef %40)
  br label %41

41:                                               ; preds = %36, %17
  br label %42

42:                                               ; preds = %41
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z32__device_stub__cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_(i32 noundef %0, i32* noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, %struct.HIP_vector_type* noundef %6, %struct.HIP_vector_type* noundef %7) #9 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca %struct.HIP_vector_type*, align 8
  %16 = alloca %struct.HIP_vector_type*, align 8
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store %struct.HIP_vector_type* %6, %struct.HIP_vector_type** %15, align 8
  store %struct.HIP_vector_type* %7, %struct.HIP_vector_type** %16, align 8
  %23 = alloca i8*, i64 8, align 16
  %24 = bitcast i32* %9 to i8*
  %25 = getelementptr i8*, i8** %23, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32** %10 to i8*
  %27 = getelementptr i8*, i8** %23, i32 1
  store i8* %26, i8** %27, align 8
  %28 = bitcast float** %11 to i8*
  %29 = getelementptr i8*, i8** %23, i32 2
  store i8* %28, i8** %29, align 8
  %30 = bitcast float** %12 to i8*
  %31 = getelementptr i8*, i8** %23, i32 3
  store i8* %30, i8** %31, align 8
  %32 = bitcast float** %13 to i8*
  %33 = getelementptr i8*, i8** %23, i32 4
  store i8* %32, i8** %33, align 8
  %34 = bitcast float** %14 to i8*
  %35 = getelementptr i8*, i8** %23, i32 5
  store i8* %34, i8** %35, align 8
  %36 = bitcast %struct.HIP_vector_type** %15 to i8*
  %37 = getelementptr i8*, i8** %23, i32 6
  store i8* %36, i8** %37, align 8
  %38 = bitcast %struct.HIP_vector_type** %16 to i8*
  %39 = getelementptr i8*, i8** %23, i32 7
  store i8* %38, i8** %39, align 8
  %40 = call i32 @__hipPopCallConfiguration(%struct.dim3* %17, %struct.dim3* %18, i64* %19, i8** %20)
  %41 = load i64, i64* %19, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = bitcast { i64, i32 }* %21 to i8*
  %44 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 12, i1 false)
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = bitcast { i64, i32 }* %22 to i8*
  %50 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = bitcast i8* %42 to %struct.ihipStream_t*
  %56 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, i32*, float*, float*, float*, float*, %struct.HIP_vector_type*, %struct.HIP_vector_type*)** @_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_ to i8*), i64 %46, i32 %48, i64 %52, i32 %54, i8** noundef %23, i64 noundef %41, %struct.ihipStream_t* noundef %55)
  br label %57

57:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_(i32 noundef %0, i32* noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, %struct.HIP_vector_type* noundef %6, %struct.HIP_vector_type* noundef %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca %struct.HIP_vector_type*, align 8
  %16 = alloca %struct.HIP_vector_type*, align 8
  %17 = alloca %struct.dim3, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca %struct.dim3, align 4
  %20 = alloca %struct.dim3, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store %struct.HIP_vector_type* %6, %struct.HIP_vector_type** %15, align 8
  store %struct.HIP_vector_type* %7, %struct.HIP_vector_type** %16, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %23, 192
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %17, i32 noundef %24, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %18, i32 noundef 192, i32 noundef 1, i32 noundef 1)
  br label %25

25:                                               ; preds = %8
  %26 = bitcast %struct.dim3* %19 to i8*
  %27 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = bitcast %struct.dim3* %20 to i8*
  %29 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = bitcast { i64, i32 }* %21 to i8*
  %31 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %33 = load i64, i64* %32, align 4
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = bitcast { i64, i32 }* %22 to i8*
  %37 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %39 = load i64, i64* %38, align 4
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__hipPushCallConfiguration(i64 %33, i32 %35, i64 %39, i32 %41, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load float*, float** %11, align 8
  %48 = load float*, float** %12, align 8
  %49 = load float*, float** %13, align 8
  %50 = load float*, float** %14, align 8
  %51 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %15, align 8
  %52 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %16, align 8
  call void @_Z32__device_stub__cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_(i32 noundef %45, i32* noundef %46, float* noundef %47, float* noundef %48, float* noundef %49, float* noundef %50, %struct.HIP_vector_type* noundef %51, %struct.HIP_vector_type* noundef %52)
  br label %53

53:                                               ; preds = %44, %25
  br label %54

54:                                               ; preds = %53
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z29__device_stub__cuda_time_stepiiPfS_S_S_(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5) #9 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast i32* %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast float** %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast float** %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast float** %12 to i8*
  %31 = getelementptr i8*, i8** %19, i32 5
  store i8* %30, i8** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* %13, %struct.dim3* %14, i64* %15, i8** %16)
  %33 = load i64, i64* %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = bitcast { i64, i32 }* %17 to i8*
  %36 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = bitcast { i64, i32 }* %18 to i8*
  %42 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast i8* %34 to %struct.ihipStream_t*
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, i32, float*, float*, float*, float*)** @_Z14cuda_time_stepiiPfS_S_S_ to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9time_stepiiPfS_S_S_(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.dim3, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca %struct.dim3, align 4
  %16 = alloca %struct.dim3, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sdiv i32 %19, 192
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %13, i32 noundef %20, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %14, i32 noundef 192, i32 noundef 1, i32 noundef 1)
  br label %21

21:                                               ; preds = %6
  %22 = bitcast %struct.dim3* %15 to i8*
  %23 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = bitcast %struct.dim3* %16 to i8*
  %25 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  %26 = bitcast { i64, i32 }* %17 to i8*
  %27 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast { i64, i32 }* %18 to i8*
  %33 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__hipPushCallConfiguration(i64 %29, i32 %31, i64 %35, i32 %37, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load float*, float** %9, align 8
  %44 = load float*, float** %10, align 8
  %45 = load float*, float** %11, align 8
  %46 = load float*, float** %12, align 8
  call void @_Z29__device_stub__cuda_time_stepiiPfS_S_S_(i32 noundef %41, i32 noundef %42, float* noundef %43, float* noundef %44, float* noundef %45, float* noundef %46)
  br label %47

47:                                               ; preds = %40, %21
  br label %48

48:                                               ; preds = %47
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hipDeviceProp_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca %struct.HIP_vector_type*, align 8
  %11 = alloca %struct.HIP_vector_type*, align 8
  %12 = alloca [5 x float], align 16
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.HIP_vector_type, align 4
  %18 = alloca %struct.HIP_vector_type, align 4
  %19 = alloca [3 x %struct.HIP_vector_type], align 16
  %20 = alloca %struct.HIP_vector_type, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca float*, align 8
  %26 = alloca %"class.std::basic_ifstream", align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca float*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca float*, align 8
  %42 = alloca float*, align 8
  %43 = alloca float*, align 8
  %44 = alloca float*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([150 x i8], [150 x i8]* @.str.4, i64 0, i64 0), i32 noundef 192, i32 noundef 192, i32 noundef 192, i32 noundef 192)
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %52 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %51, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %3, align 4
  br label %536

53:                                               ; preds = %2
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %6, align 8
  %57 = call i32 @hipSetDevice(i32 noundef 0)
  %58 = call i32 @hipGetDevice(i32* noundef %8)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef %7, i32 noundef %59)
  %61 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %7, i32 0, i32 0
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %61, i64 0, i64 0
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* noundef %62)
  %64 = call noundef float* @_Z5allocIfEPT_i(i32 noundef 5)
  store float* %64, float** %9, align 8
  %65 = call noundef %struct.HIP_vector_type* @_Z5allocI15HIP_vector_typeIfLj3EEEPT_i(i32 noundef 3)
  store %struct.HIP_vector_type* %65, %struct.HIP_vector_type** %10, align 8
  %66 = call noundef %struct.HIP_vector_type* @_Z5allocI15HIP_vector_typeIfLj3EEEPT_i(i32 noundef 1)
  store %struct.HIP_vector_type* %66, %struct.HIP_vector_type** %11, align 8
  store float 0.000000e+00, float* %13, align 4
  %67 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  store float 0x3FF6666660000000, float* %67, align 16
  store float 1.000000e+00, float* %14, align 4
  %68 = load float, float* %14, align 4
  %69 = fmul contract float 0x3FF6666660000000, %68
  %70 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %71 = load float, float* %70, align 16
  %72 = fdiv contract float %69, %71
  %73 = fpext float %72 to double
  %74 = call contract double @sqrt(double noundef %73) #3
  %75 = fptrunc double %74 to float
  store float %75, float* %15, align 4
  %76 = load float, float* %15, align 4
  %77 = fmul contract float 0x3FF3333340000000, %76
  store float %77, float* %16, align 4
  %78 = load float, float* %16, align 4
  %79 = call contract double @cos(double noundef 0.000000e+00) #3
  %80 = fptrunc double %79 to float
  %81 = fmul contract float %78, %80
  %82 = bitcast %struct.HIP_vector_type* %17 to %struct.HIP_vector_base*
  %83 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %82, i32 0, i32 0
  %84 = bitcast %union.anon.0* %83 to %struct.anon*
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 0
  store float %81, float* %85, align 4
  %86 = load float, float* %16, align 4
  %87 = call contract double @sin(double noundef 0.000000e+00) #3
  %88 = fptrunc double %87 to float
  %89 = fmul contract float %86, %88
  %90 = bitcast %struct.HIP_vector_type* %17 to %struct.HIP_vector_base*
  %91 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %90, i32 0, i32 0
  %92 = bitcast %union.anon.0* %91 to %struct.anon*
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 1
  store float %89, float* %93, align 4
  %94 = bitcast %struct.HIP_vector_type* %17 to %struct.HIP_vector_base*
  %95 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %94, i32 0, i32 0
  %96 = bitcast %union.anon.0* %95 to %struct.anon*
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 2
  store float 0.000000e+00, float* %97, align 4
  %98 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %99 = load float, float* %98, align 16
  %100 = bitcast %struct.HIP_vector_type* %17 to %struct.HIP_vector_base*
  %101 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %100, i32 0, i32 0
  %102 = bitcast %union.anon.0* %101 to %struct.anon*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load float, float* %103, align 4
  %105 = fmul contract float %99, %104
  %106 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 1
  store float %105, float* %106, align 4
  %107 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %108 = load float, float* %107, align 16
  %109 = bitcast %struct.HIP_vector_type* %17 to %struct.HIP_vector_base*
  %110 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %109, i32 0, i32 0
  %111 = bitcast %union.anon.0* %110 to %struct.anon*
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 1
  %113 = load float, float* %112, align 4
  %114 = fmul contract float %108, %113
  %115 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 2
  store float %114, float* %115, align 8
  %116 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %117 = load float, float* %116, align 16
  %118 = bitcast %struct.HIP_vector_type* %17 to %struct.HIP_vector_base*
  %119 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %118, i32 0, i32 0
  %120 = bitcast %union.anon.0* %119 to %struct.anon*
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 2
  %122 = load float, float* %121, align 4
  %123 = fmul contract float %117, %122
  %124 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 3
  store float %123, float* %124, align 4
  %125 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %126 = load float, float* %125, align 16
  %127 = load float, float* %16, align 4
  %128 = load float, float* %16, align 4
  %129 = fmul contract float %127, %128
  %130 = fmul contract float 5.000000e-01, %129
  %131 = fmul contract float %126, %130
  %132 = load float, float* %14, align 4
  %133 = fdiv contract float %132, 0x3FD9999980000000
  %134 = fadd contract float %131, %133
  %135 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 4
  store float %134, float* %135, align 16
  %136 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %137 = getelementptr inbounds float, float* %136, i64 1
  %138 = getelementptr inbounds float, float* %137, i64 0
  %139 = load float, float* %138, align 4
  %140 = bitcast %struct.HIP_vector_type* %18 to %struct.HIP_vector_base*
  %141 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %140, i32 0, i32 0
  %142 = bitcast %union.anon.0* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  store float %139, float* %143, align 4
  %144 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %145 = getelementptr inbounds float, float* %144, i64 1
  %146 = getelementptr inbounds float, float* %145, i64 1
  %147 = load float, float* %146, align 4
  %148 = bitcast %struct.HIP_vector_type* %18 to %struct.HIP_vector_base*
  %149 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %148, i32 0, i32 0
  %150 = bitcast %union.anon.0* %149 to %struct.anon*
  %151 = getelementptr inbounds %struct.anon, %struct.anon* %150, i32 0, i32 1
  store float %147, float* %151, align 4
  %152 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %153 = getelementptr inbounds float, float* %152, i64 1
  %154 = getelementptr inbounds float, float* %153, i64 2
  %155 = load float, float* %154, align 4
  %156 = bitcast %struct.HIP_vector_type* %18 to %struct.HIP_vector_base*
  %157 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %156, i32 0, i32 0
  %158 = bitcast %union.anon.0* %157 to %struct.anon*
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 2
  store float %155, float* %159, align 4
  %160 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  %161 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 4
  %162 = getelementptr inbounds [3 x %struct.HIP_vector_type], [3 x %struct.HIP_vector_type]* %19, i64 0, i64 0
  %163 = getelementptr inbounds [3 x %struct.HIP_vector_type], [3 x %struct.HIP_vector_type]* %19, i64 0, i64 1
  %164 = getelementptr inbounds [3 x %struct.HIP_vector_type], [3 x %struct.HIP_vector_type]* %19, i64 0, i64 2
  call void @_Z25compute_flux_contributionRfR15HIP_vector_typeIfLj3EES_S_S2_S2_S2_S2_S2_(float* noundef nonnull align 4 dereferenceable(4) %160, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %18, float* noundef nonnull align 4 dereferenceable(4) %161, float* noundef nonnull align 4 dereferenceable(4) %14, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %17, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %162, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %163, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %164, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %20)
  %165 = load float*, float** %9, align 8
  %166 = getelementptr inbounds [5 x float], [5 x float]* %12, i64 0, i64 0
  call void @_Z6uploadIfEvPT_S1_i(float* noundef %165, float* noundef %166, i32 noundef 5)
  %167 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  %168 = getelementptr inbounds [3 x %struct.HIP_vector_type], [3 x %struct.HIP_vector_type]* %19, i64 0, i64 0
  call void @_Z6uploadI15HIP_vector_typeIfLj3EEEvPT_S3_i(%struct.HIP_vector_type* noundef %167, %struct.HIP_vector_type* noundef %168, i32 noundef 3)
  %169 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  call void @_Z6uploadI15HIP_vector_typeIfLj3EEEvPT_S3_i(%struct.HIP_vector_type* noundef %169, %struct.HIP_vector_type* noundef %20, i32 noundef 1)
  %170 = load i8*, i8** %6, align 8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256) %26, i8* noundef %170, i32 noundef 8)
  %171 = bitcast %"class.std::basic_ifstream"* %26 to %"class.std::basic_istream"*
  %172 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %171, i32* noundef nonnull align 4 dereferenceable(4) %21)
          to label %173 unwind label %259

173:                                              ; preds = %53
  %174 = load i32, i32* %21, align 4
  %175 = sdiv i32 %174, 192
  store i32 1, i32* %29, align 4
  %176 = load i32, i32* %21, align 4
  %177 = srem i32 %176, 192
  store i32 %177, i32* %30, align 4
  %178 = invoke noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiEUa9enable_ifILb1EERKT_S2_S2_(i32* noundef nonnull align 4 dereferenceable(4) %29, i32* noundef nonnull align 4 dereferenceable(4) %30)
          to label %179 unwind label %259

179:                                              ; preds = %173
  %180 = load i32, i32* %178, align 4
  %181 = add nsw i32 %175, %180
  %182 = mul nsw i32 192, %181
  store i32 %182, i32* %22, align 4
  %183 = load i32, i32* %22, align 4
  %184 = sext i32 %183 to i64
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %184, i64 4)
  %186 = extractvalue { i64, i1 } %185, 1
  %187 = extractvalue { i64, i1 } %185, 0
  %188 = select i1 %186, i64 -1, i64 %187
  %189 = invoke noalias noundef nonnull i8* @_Znam(i64 noundef %188) #13
          to label %190 unwind label %259

190:                                              ; preds = %179
  %191 = bitcast i8* %189 to float*
  store float* %191, float** %31, align 8
  %192 = load i32, i32* %22, align 4
  %193 = mul nsw i32 %192, 4
  %194 = sext i32 %193 to i64
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %194, i64 4)
  %196 = extractvalue { i64, i1 } %195, 1
  %197 = extractvalue { i64, i1 } %195, 0
  %198 = select i1 %196, i64 -1, i64 %197
  %199 = invoke noalias noundef nonnull i8* @_Znam(i64 noundef %198) #13
          to label %200 unwind label %259

200:                                              ; preds = %190
  %201 = bitcast i8* %199 to i32*
  store i32* %201, i32** %32, align 8
  %202 = load i32, i32* %22, align 4
  %203 = mul nsw i32 %202, 3
  %204 = mul nsw i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %205, i64 4)
  %207 = extractvalue { i64, i1 } %206, 1
  %208 = extractvalue { i64, i1 } %206, 0
  %209 = select i1 %207, i64 -1, i64 %208
  %210 = invoke noalias noundef nonnull i8* @_Znam(i64 noundef %209) #13
          to label %211 unwind label %259

211:                                              ; preds = %200
  %212 = bitcast i8* %210 to float*
  store float* %212, float** %33, align 8
  store i32 0, i32* %34, align 4
  br label %213

213:                                              ; preds = %324, %211
  %214 = load i32, i32* %34, align 4
  %215 = load i32, i32* %21, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %327

217:                                              ; preds = %213
  %218 = bitcast %"class.std::basic_ifstream"* %26 to %"class.std::basic_istream"*
  %219 = load float*, float** %31, align 8
  %220 = load i32, i32* %34, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %219, i64 %221
  %223 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERf(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %218, float* noundef nonnull align 4 dereferenceable(4) %222)
          to label %224 unwind label %259

224:                                              ; preds = %217
  store i32 0, i32* %35, align 4
  br label %225

225:                                              ; preds = %320, %224
  %226 = load i32, i32* %35, align 4
  %227 = icmp slt i32 %226, 4
  br i1 %227, label %228, label %323

228:                                              ; preds = %225
  %229 = bitcast %"class.std::basic_ifstream"* %26 to %"class.std::basic_istream"*
  %230 = load i32*, i32** %32, align 8
  %231 = load i32, i32* %34, align 4
  %232 = load i32, i32* %35, align 4
  %233 = load i32, i32* %22, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %231, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %230, i64 %236
  %238 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %229, i32* noundef nonnull align 4 dereferenceable(4) %237)
          to label %239 unwind label %259

239:                                              ; preds = %228
  %240 = load i32*, i32** %32, align 8
  %241 = load i32, i32* %34, align 4
  %242 = load i32, i32* %35, align 4
  %243 = load i32, i32* %22, align 4
  %244 = mul nsw i32 %242, %243
  %245 = add nsw i32 %241, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %240, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %239
  %251 = load i32*, i32** %32, align 8
  %252 = load i32, i32* %34, align 4
  %253 = load i32, i32* %35, align 4
  %254 = load i32, i32* %22, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %252, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %251, i64 %257
  store i32 -1, i32* %258, align 4
  br label %263

259:                                              ; preds = %425, %420, %415, %411, %407, %404, %277, %228, %217, %200, %190, %179, %173, %53
  %260 = landingpad { i8*, i32 }
          cleanup
  %261 = extractvalue { i8*, i32 } %260, 0
  store i8* %261, i8** %27, align 8
  %262 = extractvalue { i8*, i32 } %260, 1
  store i32 %262, i32* %28, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256) %26) #3
  br label %538

263:                                              ; preds = %250, %239
  %264 = load i32*, i32** %32, align 8
  %265 = load i32, i32* %34, align 4
  %266 = load i32, i32* %35, align 4
  %267 = load i32, i32* %22, align 4
  %268 = mul nsw i32 %266, %267
  %269 = add nsw i32 %265, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %264, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %271, align 4
  store i32 0, i32* %36, align 4
  br label %274

274:                                              ; preds = %316, %263
  %275 = load i32, i32* %36, align 4
  %276 = icmp slt i32 %275, 3
  br i1 %276, label %277, label %319

277:                                              ; preds = %274
  %278 = bitcast %"class.std::basic_ifstream"* %26 to %"class.std::basic_istream"*
  %279 = load float*, float** %33, align 8
  %280 = load i32, i32* %34, align 4
  %281 = load i32, i32* %35, align 4
  %282 = load i32, i32* %36, align 4
  %283 = mul nsw i32 %282, 4
  %284 = add nsw i32 %281, %283
  %285 = load i32, i32* %22, align 4
  %286 = mul nsw i32 %284, %285
  %287 = add nsw i32 %280, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %279, i64 %288
  %290 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERf(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %278, float* noundef nonnull align 4 dereferenceable(4) %289)
          to label %291 unwind label %259

291:                                              ; preds = %277
  %292 = load float*, float** %33, align 8
  %293 = load i32, i32* %34, align 4
  %294 = load i32, i32* %35, align 4
  %295 = load i32, i32* %36, align 4
  %296 = mul nsw i32 %295, 4
  %297 = add nsw i32 %294, %296
  %298 = load i32, i32* %22, align 4
  %299 = mul nsw i32 %297, %298
  %300 = add nsw i32 %293, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %292, i64 %301
  %303 = load float, float* %302, align 4
  %304 = fneg contract float %303
  %305 = load float*, float** %33, align 8
  %306 = load i32, i32* %34, align 4
  %307 = load i32, i32* %35, align 4
  %308 = load i32, i32* %36, align 4
  %309 = mul nsw i32 %308, 4
  %310 = add nsw i32 %307, %309
  %311 = load i32, i32* %22, align 4
  %312 = mul nsw i32 %310, %311
  %313 = add nsw i32 %306, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %305, i64 %314
  store float %304, float* %315, align 4
  br label %316

316:                                              ; preds = %291
  %317 = load i32, i32* %36, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %36, align 4
  br label %274, !llvm.loop !11

319:                                              ; preds = %274
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %35, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %35, align 4
  br label %225, !llvm.loop !12

323:                                              ; preds = %225
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %34, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %34, align 4
  br label %213, !llvm.loop !13

327:                                              ; preds = %213
  %328 = load i32, i32* %21, align 4
  %329 = sub nsw i32 %328, 1
  store i32 %329, i32* %37, align 4
  %330 = load i32, i32* %21, align 4
  store i32 %330, i32* %38, align 4
  br label %331

331:                                              ; preds = %401, %327
  %332 = load i32, i32* %38, align 4
  %333 = load i32, i32* %22, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %404

335:                                              ; preds = %331
  %336 = load float*, float** %31, align 8
  %337 = load i32, i32* %37, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %336, i64 %338
  %340 = load float, float* %339, align 4
  %341 = load float*, float** %31, align 8
  %342 = load i32, i32* %38, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %341, i64 %343
  store float %340, float* %344, align 4
  store i32 0, i32* %39, align 4
  br label %345

345:                                              ; preds = %397, %335
  %346 = load i32, i32* %39, align 4
  %347 = icmp slt i32 %346, 4
  br i1 %347, label %348, label %400

348:                                              ; preds = %345
  %349 = load i32*, i32** %32, align 8
  %350 = load i32, i32* %37, align 4
  %351 = load i32, i32* %39, align 4
  %352 = load i32, i32* %22, align 4
  %353 = mul nsw i32 %351, %352
  %354 = add nsw i32 %350, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %349, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %32, align 8
  %359 = load i32, i32* %38, align 4
  %360 = load i32, i32* %39, align 4
  %361 = load i32, i32* %22, align 4
  %362 = mul nsw i32 %360, %361
  %363 = add nsw i32 %359, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %358, i64 %364
  store i32 %357, i32* %365, align 4
  store i32 0, i32* %40, align 4
  br label %366

366:                                              ; preds = %393, %348
  %367 = load i32, i32* %40, align 4
  %368 = icmp slt i32 %367, 3
  br i1 %368, label %369, label %396

369:                                              ; preds = %366
  %370 = load float*, float** %33, align 8
  %371 = load i32, i32* %37, align 4
  %372 = load i32, i32* %39, align 4
  %373 = load i32, i32* %40, align 4
  %374 = mul nsw i32 %373, 4
  %375 = add nsw i32 %372, %374
  %376 = load i32, i32* %22, align 4
  %377 = mul nsw i32 %375, %376
  %378 = add nsw i32 %371, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %370, i64 %379
  %381 = load float, float* %380, align 4
  %382 = load float*, float** %33, align 8
  %383 = load i32, i32* %37, align 4
  %384 = load i32, i32* %39, align 4
  %385 = load i32, i32* %40, align 4
  %386 = mul nsw i32 %385, 4
  %387 = add nsw i32 %384, %386
  %388 = load i32, i32* %22, align 4
  %389 = mul nsw i32 %387, %388
  %390 = add nsw i32 %383, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float, float* %382, i64 %391
  store float %381, float* %392, align 4
  br label %393

393:                                              ; preds = %369
  %394 = load i32, i32* %40, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %40, align 4
  br label %366, !llvm.loop !14

396:                                              ; preds = %366
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %39, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %39, align 4
  br label %345, !llvm.loop !15

400:                                              ; preds = %345
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %38, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %38, align 4
  br label %331, !llvm.loop !16

404:                                              ; preds = %331
  %405 = load i32, i32* %22, align 4
  %406 = invoke noundef float* @_Z5allocIfEPT_i(i32 noundef %405)
          to label %407 unwind label %259

407:                                              ; preds = %404
  store float* %406, float** %23, align 8
  %408 = load float*, float** %23, align 8
  %409 = load float*, float** %31, align 8
  %410 = load i32, i32* %22, align 4
  invoke void @_Z6uploadIfEvPT_S1_i(float* noundef %408, float* noundef %409, i32 noundef %410)
          to label %411 unwind label %259

411:                                              ; preds = %407
  %412 = load i32, i32* %22, align 4
  %413 = mul nsw i32 %412, 4
  %414 = invoke noundef i32* @_Z5allocIiEPT_i(i32 noundef %413)
          to label %415 unwind label %259

415:                                              ; preds = %411
  store i32* %414, i32** %24, align 8
  %416 = load i32*, i32** %24, align 8
  %417 = load i32*, i32** %32, align 8
  %418 = load i32, i32* %22, align 4
  %419 = mul nsw i32 %418, 4
  invoke void @_Z6uploadIiEvPT_S1_i(i32* noundef %416, i32* noundef %417, i32 noundef %419)
          to label %420 unwind label %259

420:                                              ; preds = %415
  %421 = load i32, i32* %22, align 4
  %422 = mul nsw i32 %421, 3
  %423 = mul nsw i32 %422, 4
  %424 = invoke noundef float* @_Z5allocIfEPT_i(i32 noundef %423)
          to label %425 unwind label %259

425:                                              ; preds = %420
  store float* %424, float** %25, align 8
  %426 = load float*, float** %25, align 8
  %427 = load float*, float** %33, align 8
  %428 = load i32, i32* %22, align 4
  %429 = mul nsw i32 %428, 3
  %430 = mul nsw i32 %429, 4
  invoke void @_Z6uploadIfEvPT_S1_i(float* noundef %426, float* noundef %427, i32 noundef %430)
          to label %431 unwind label %259

431:                                              ; preds = %425
  %432 = load float*, float** %31, align 8
  %433 = icmp eq float* %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %431
  %435 = bitcast float* %432 to i8*
  call void @_ZdaPv(i8* noundef %435) #14
  br label %436

436:                                              ; preds = %434, %431
  %437 = load i32*, i32** %32, align 8
  %438 = icmp eq i32* %437, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %436
  %440 = bitcast i32* %437 to i8*
  call void @_ZdaPv(i8* noundef %440) #14
  br label %441

441:                                              ; preds = %439, %436
  %442 = load float*, float** %33, align 8
  %443 = icmp eq float* %442, null
  br i1 %443, label %446, label %444

444:                                              ; preds = %441
  %445 = bitcast float* %442 to i8*
  call void @_ZdaPv(i8* noundef %445) #14
  br label %446

446:                                              ; preds = %444, %441
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256) %26) #3
  %447 = load i32, i32* %22, align 4
  %448 = mul nsw i32 %447, 5
  %449 = call noundef float* @_Z5allocIfEPT_i(i32 noundef %448)
  store float* %449, float** %41, align 8
  %450 = load i32, i32* %22, align 4
  %451 = load float*, float** %41, align 8
  %452 = load float*, float** %9, align 8
  call void @_Z20initialize_variablesiPfS_(i32 noundef %450, float* noundef %451, float* noundef %452)
  %453 = load i32, i32* %22, align 4
  %454 = mul nsw i32 %453, 5
  %455 = call noundef float* @_Z5allocIfEPT_i(i32 noundef %454)
  store float* %455, float** %42, align 8
  %456 = load i32, i32* %22, align 4
  %457 = mul nsw i32 %456, 5
  %458 = call noundef float* @_Z5allocIfEPT_i(i32 noundef %457)
  store float* %458, float** %43, align 8
  %459 = load i32, i32* %22, align 4
  %460 = call noundef float* @_Z5allocIfEPT_i(i32 noundef %459)
  store float* %460, float** %44, align 8
  %461 = load i32, i32* %22, align 4
  %462 = load float*, float** %42, align 8
  %463 = load float*, float** %9, align 8
  call void @_Z20initialize_variablesiPfS_(i32 noundef %461, float* noundef %462, float* noundef %463)
  %464 = load i32, i32* %22, align 4
  %465 = load float*, float** %43, align 8
  %466 = load float*, float** %9, align 8
  call void @_Z20initialize_variablesiPfS_(i32 noundef %464, float* noundef %465, float* noundef %466)
  %467 = load float*, float** %44, align 8
  %468 = bitcast float* %467 to i8*
  %469 = load i32, i32* %22, align 4
  %470 = sext i32 %469 to i64
  %471 = mul i64 4, %470
  %472 = call i32 @hipMemset(i8* noundef %468, i32 noundef 0, i64 noundef %471)
  %473 = call i32 @hipDeviceSynchronize()
  %474 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %475 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %474, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %45, align 4
  br label %476

476:                                              ; preds = %510, %446
  %477 = load i32, i32* %45, align 4
  %478 = icmp slt i32 %477, 2000
  br i1 %478, label %479, label %513

479:                                              ; preds = %476
  %480 = load float*, float** %42, align 8
  %481 = load float*, float** %41, align 8
  %482 = load i32, i32* %22, align 4
  %483 = mul nsw i32 %482, 5
  call void @_Z4copyIfEvPT_S1_i(float* noundef %480, float* noundef %481, i32 noundef %483)
  %484 = load i32, i32* %22, align 4
  %485 = load float*, float** %41, align 8
  %486 = load float*, float** %23, align 8
  %487 = load float*, float** %44, align 8
  call void @_Z19compute_step_factoriPfS_S_(i32 noundef %484, float* noundef %485, float* noundef %486, float* noundef %487)
  store i32 0, i32* %46, align 4
  br label %488

488:                                              ; preds = %506, %479
  %489 = load i32, i32* %46, align 4
  %490 = icmp slt i32 %489, 3
  br i1 %490, label %491, label %509

491:                                              ; preds = %488
  %492 = load i32, i32* %22, align 4
  %493 = load i32*, i32** %24, align 8
  %494 = load float*, float** %25, align 8
  %495 = load float*, float** %41, align 8
  %496 = load float*, float** %43, align 8
  %497 = load float*, float** %9, align 8
  %498 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  %499 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  call void @_Z12compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_(i32 noundef %492, i32* noundef %493, float* noundef %494, float* noundef %495, float* noundef %496, float* noundef %497, %struct.HIP_vector_type* noundef %498, %struct.HIP_vector_type* noundef %499)
  %500 = load i32, i32* %46, align 4
  %501 = load i32, i32* %22, align 4
  %502 = load float*, float** %42, align 8
  %503 = load float*, float** %41, align 8
  %504 = load float*, float** %44, align 8
  %505 = load float*, float** %43, align 8
  call void @_Z9time_stepiiPfS_S_S_(i32 noundef %500, i32 noundef %501, float* noundef %502, float* noundef %503, float* noundef %504, float* noundef %505)
  br label %506

506:                                              ; preds = %491
  %507 = load i32, i32* %46, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %46, align 4
  br label %488, !llvm.loop !17

509:                                              ; preds = %488
  br label %510

510:                                              ; preds = %509
  %511 = load i32, i32* %45, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %45, align 4
  br label %476, !llvm.loop !18

513:                                              ; preds = %476
  %514 = call i32 @hipDeviceSynchronize()
  %515 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %516 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %515, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %517 = load float*, float** %41, align 8
  %518 = load i32, i32* %21, align 4
  %519 = load i32, i32* %22, align 4
  call void @_Z4dumpPfii(float* noundef %517, i32 noundef %518, i32 noundef %519)
  %520 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %521 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %520, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %522 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %523 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %522, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %524 = load float*, float** %23, align 8
  call void @_Z7deallocIfEvPT_(float* noundef %524)
  %525 = load i32*, i32** %24, align 8
  call void @_Z7deallocIiEvPT_(i32* noundef %525)
  %526 = load float*, float** %25, align 8
  call void @_Z7deallocIfEvPT_(float* noundef %526)
  %527 = load float*, float** %41, align 8
  call void @_Z7deallocIfEvPT_(float* noundef %527)
  %528 = load float*, float** %42, align 8
  call void @_Z7deallocIfEvPT_(float* noundef %528)
  %529 = load float*, float** %43, align 8
  call void @_Z7deallocIfEvPT_(float* noundef %529)
  %530 = load float*, float** %44, align 8
  call void @_Z7deallocIfEvPT_(float* noundef %530)
  %531 = load float*, float** %9, align 8
  call void @_Z7deallocIfEvPT_(float* noundef %531)
  %532 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  call void @_Z7deallocI15HIP_vector_typeIfLj3EEEvPT_(%struct.HIP_vector_type* noundef %532)
  %533 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  call void @_Z7deallocI15HIP_vector_typeIfLj3EEEvPT_(%struct.HIP_vector_type* noundef %533)
  %534 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %535 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %534, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %3, align 4
  br label %536

536:                                              ; preds = %513, %50
  %537 = load i32, i32* %3, align 4
  ret i32 %537

538:                                              ; preds = %259
  %539 = load i8*, i8** %27, align 8
  %540 = load i32, i32* %28, align 4
  %541 = insertvalue { i8*, i32 } undef, i8* %539, 0
  %542 = insertvalue { i8*, i32 } %541, i32 %540, 1
  resume { i8*, i32 } %542
}

declare i32 @printf(i8* noundef, ...) #1

declare i32 @hipSetDevice(i32 noundef) #1

declare i32 @hipGetDevice(i32* noundef) #1

declare i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef, i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float* @_Z5allocIfEPT_i(i32 noundef %0) #4 comdat {
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast float** %3 to i8**
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 4, %6
  %8 = call i32 @hipMalloc(i8** noundef %4, i64 noundef %7)
  %9 = load float*, float** %3, align 8
  ret float* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.HIP_vector_type* @_Z5allocI15HIP_vector_typeIfLj3EEEPT_i(i32 noundef %0) #4 comdat {
  %2 = alloca i32, align 4
  %3 = alloca %struct.HIP_vector_type*, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast %struct.HIP_vector_type** %3 to i8**
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 12, %6
  %8 = call i32 @hipMalloc(i8** noundef %4, i64 noundef %7)
  %9 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %3, align 8
  ret %struct.HIP_vector_type* %9
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z25compute_flux_contributionRfR15HIP_vector_typeIfLj3EES_S_S2_S2_S2_S2_S2_(float* noundef nonnull align 4 dereferenceable(4) %0, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %1, float* noundef nonnull align 4 dereferenceable(4) %2, float* noundef nonnull align 4 dereferenceable(4) %3, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %4, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %5, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %6, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %7, %struct.HIP_vector_type* noundef nonnull align 4 dereferenceable(12) %8) #7 comdat {
  %10 = alloca float*, align 8
  %11 = alloca %struct.HIP_vector_type*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca %struct.HIP_vector_type*, align 8
  %15 = alloca %struct.HIP_vector_type*, align 8
  %16 = alloca %struct.HIP_vector_type*, align 8
  %17 = alloca %struct.HIP_vector_type*, align 8
  %18 = alloca %struct.HIP_vector_type*, align 8
  %19 = alloca float, align 4
  store float* %0, float** %10, align 8
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store %struct.HIP_vector_type* %4, %struct.HIP_vector_type** %14, align 8
  store %struct.HIP_vector_type* %5, %struct.HIP_vector_type** %15, align 8
  store %struct.HIP_vector_type* %6, %struct.HIP_vector_type** %16, align 8
  store %struct.HIP_vector_type* %7, %struct.HIP_vector_type** %17, align 8
  store %struct.HIP_vector_type* %8, %struct.HIP_vector_type** %18, align 8
  %20 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %21 = bitcast %struct.HIP_vector_type* %20 to %struct.HIP_vector_base*
  %22 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %21, i32 0, i32 0
  %23 = bitcast %union.anon.0* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %27 = bitcast %struct.HIP_vector_type* %26 to %struct.HIP_vector_base*
  %28 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %27, i32 0, i32 0
  %29 = bitcast %union.anon.0* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = fmul contract float %25, %31
  %33 = load float*, float** %13, align 8
  %34 = load float, float* %33, align 4
  %35 = fadd contract float %32, %34
  %36 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %15, align 8
  %37 = bitcast %struct.HIP_vector_type* %36 to %struct.HIP_vector_base*
  %38 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %37, i32 0, i32 0
  %39 = bitcast %union.anon.0* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  store float %35, float* %40, align 4
  %41 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %42 = bitcast %struct.HIP_vector_type* %41 to %struct.HIP_vector_base*
  %43 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %42, i32 0, i32 0
  %44 = bitcast %union.anon.0* %43 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %48 = bitcast %struct.HIP_vector_type* %47 to %struct.HIP_vector_base*
  %49 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %48, i32 0, i32 0
  %50 = bitcast %union.anon.0* %49 to %struct.anon*
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = fmul contract float %46, %52
  %54 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %15, align 8
  %55 = bitcast %struct.HIP_vector_type* %54 to %struct.HIP_vector_base*
  %56 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %55, i32 0, i32 0
  %57 = bitcast %union.anon.0* %56 to %struct.anon*
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  store float %53, float* %58, align 4
  %59 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %60 = bitcast %struct.HIP_vector_type* %59 to %struct.HIP_vector_base*
  %61 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %60, i32 0, i32 0
  %62 = bitcast %union.anon.0* %61 to %struct.anon*
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %66 = bitcast %struct.HIP_vector_type* %65 to %struct.HIP_vector_base*
  %67 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %66, i32 0, i32 0
  %68 = bitcast %union.anon.0* %67 to %struct.anon*
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 2
  %70 = load float, float* %69, align 4
  %71 = fmul contract float %64, %70
  %72 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %15, align 8
  %73 = bitcast %struct.HIP_vector_type* %72 to %struct.HIP_vector_base*
  %74 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %73, i32 0, i32 0
  %75 = bitcast %union.anon.0* %74 to %struct.anon*
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 2
  store float %71, float* %76, align 4
  %77 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %15, align 8
  %78 = bitcast %struct.HIP_vector_type* %77 to %struct.HIP_vector_base*
  %79 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %78, i32 0, i32 0
  %80 = bitcast %union.anon.0* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %16, align 8
  %84 = bitcast %struct.HIP_vector_type* %83 to %struct.HIP_vector_base*
  %85 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %84, i32 0, i32 0
  %86 = bitcast %union.anon.0* %85 to %struct.anon*
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 0
  store float %82, float* %87, align 4
  %88 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %89 = bitcast %struct.HIP_vector_type* %88 to %struct.HIP_vector_base*
  %90 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %89, i32 0, i32 0
  %91 = bitcast %union.anon.0* %90 to %struct.anon*
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 1
  %93 = load float, float* %92, align 4
  %94 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %95 = bitcast %struct.HIP_vector_type* %94 to %struct.HIP_vector_base*
  %96 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %95, i32 0, i32 0
  %97 = bitcast %union.anon.0* %96 to %struct.anon*
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 1
  %99 = load float, float* %98, align 4
  %100 = fmul contract float %93, %99
  %101 = load float*, float** %13, align 8
  %102 = load float, float* %101, align 4
  %103 = fadd contract float %100, %102
  %104 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %16, align 8
  %105 = bitcast %struct.HIP_vector_type* %104 to %struct.HIP_vector_base*
  %106 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %105, i32 0, i32 0
  %107 = bitcast %union.anon.0* %106 to %struct.anon*
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 1
  store float %103, float* %108, align 4
  %109 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %110 = bitcast %struct.HIP_vector_type* %109 to %struct.HIP_vector_base*
  %111 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %110, i32 0, i32 0
  %112 = bitcast %union.anon.0* %111 to %struct.anon*
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 1
  %114 = load float, float* %113, align 4
  %115 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %116 = bitcast %struct.HIP_vector_type* %115 to %struct.HIP_vector_base*
  %117 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %116, i32 0, i32 0
  %118 = bitcast %union.anon.0* %117 to %struct.anon*
  %119 = getelementptr inbounds %struct.anon, %struct.anon* %118, i32 0, i32 2
  %120 = load float, float* %119, align 4
  %121 = fmul contract float %114, %120
  %122 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %16, align 8
  %123 = bitcast %struct.HIP_vector_type* %122 to %struct.HIP_vector_base*
  %124 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %123, i32 0, i32 0
  %125 = bitcast %union.anon.0* %124 to %struct.anon*
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 2
  store float %121, float* %126, align 4
  %127 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %15, align 8
  %128 = bitcast %struct.HIP_vector_type* %127 to %struct.HIP_vector_base*
  %129 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %128, i32 0, i32 0
  %130 = bitcast %union.anon.0* %129 to %struct.anon*
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %130, i32 0, i32 2
  %132 = load float, float* %131, align 4
  %133 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %17, align 8
  %134 = bitcast %struct.HIP_vector_type* %133 to %struct.HIP_vector_base*
  %135 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %134, i32 0, i32 0
  %136 = bitcast %union.anon.0* %135 to %struct.anon*
  %137 = getelementptr inbounds %struct.anon, %struct.anon* %136, i32 0, i32 0
  store float %132, float* %137, align 4
  %138 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %16, align 8
  %139 = bitcast %struct.HIP_vector_type* %138 to %struct.HIP_vector_base*
  %140 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %139, i32 0, i32 0
  %141 = bitcast %union.anon.0* %140 to %struct.anon*
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %141, i32 0, i32 2
  %143 = load float, float* %142, align 4
  %144 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %17, align 8
  %145 = bitcast %struct.HIP_vector_type* %144 to %struct.HIP_vector_base*
  %146 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %145, i32 0, i32 0
  %147 = bitcast %union.anon.0* %146 to %struct.anon*
  %148 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 1
  store float %143, float* %148, align 4
  %149 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %150 = bitcast %struct.HIP_vector_type* %149 to %struct.HIP_vector_base*
  %151 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %150, i32 0, i32 0
  %152 = bitcast %union.anon.0* %151 to %struct.anon*
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 2
  %154 = load float, float* %153, align 4
  %155 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %156 = bitcast %struct.HIP_vector_type* %155 to %struct.HIP_vector_base*
  %157 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %156, i32 0, i32 0
  %158 = bitcast %union.anon.0* %157 to %struct.anon*
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 2
  %160 = load float, float* %159, align 4
  %161 = fmul contract float %154, %160
  %162 = load float*, float** %13, align 8
  %163 = load float, float* %162, align 4
  %164 = fadd contract float %161, %163
  %165 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %17, align 8
  %166 = bitcast %struct.HIP_vector_type* %165 to %struct.HIP_vector_base*
  %167 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %166, i32 0, i32 0
  %168 = bitcast %union.anon.0* %167 to %struct.anon*
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 2
  store float %164, float* %169, align 4
  %170 = load float*, float** %12, align 8
  %171 = load float, float* %170, align 4
  %172 = load float*, float** %13, align 8
  %173 = load float, float* %172, align 4
  %174 = fadd contract float %171, %173
  store float %174, float* %19, align 4
  %175 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %176 = bitcast %struct.HIP_vector_type* %175 to %struct.HIP_vector_base*
  %177 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %176, i32 0, i32 0
  %178 = bitcast %union.anon.0* %177 to %struct.anon*
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0
  %180 = load float, float* %179, align 4
  %181 = load float, float* %19, align 4
  %182 = fmul contract float %180, %181
  %183 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %18, align 8
  %184 = bitcast %struct.HIP_vector_type* %183 to %struct.HIP_vector_base*
  %185 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %184, i32 0, i32 0
  %186 = bitcast %union.anon.0* %185 to %struct.anon*
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 0
  store float %182, float* %187, align 4
  %188 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %189 = bitcast %struct.HIP_vector_type* %188 to %struct.HIP_vector_base*
  %190 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %189, i32 0, i32 0
  %191 = bitcast %union.anon.0* %190 to %struct.anon*
  %192 = getelementptr inbounds %struct.anon, %struct.anon* %191, i32 0, i32 1
  %193 = load float, float* %192, align 4
  %194 = load float, float* %19, align 4
  %195 = fmul contract float %193, %194
  %196 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %18, align 8
  %197 = bitcast %struct.HIP_vector_type* %196 to %struct.HIP_vector_base*
  %198 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %197, i32 0, i32 0
  %199 = bitcast %union.anon.0* %198 to %struct.anon*
  %200 = getelementptr inbounds %struct.anon, %struct.anon* %199, i32 0, i32 1
  store float %195, float* %200, align 4
  %201 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %14, align 8
  %202 = bitcast %struct.HIP_vector_type* %201 to %struct.HIP_vector_base*
  %203 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %202, i32 0, i32 0
  %204 = bitcast %union.anon.0* %203 to %struct.anon*
  %205 = getelementptr inbounds %struct.anon, %struct.anon* %204, i32 0, i32 2
  %206 = load float, float* %205, align 4
  %207 = load float, float* %19, align 4
  %208 = fmul contract float %206, %207
  %209 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %18, align 8
  %210 = bitcast %struct.HIP_vector_type* %209 to %struct.HIP_vector_base*
  %211 = getelementptr inbounds %struct.HIP_vector_base, %struct.HIP_vector_base* %210, i32 0, i32 0
  %212 = bitcast %union.anon.0* %211 to %struct.anon*
  %213 = getelementptr inbounds %struct.anon, %struct.anon* %212, i32 0, i32 2
  store float %208, float* %213, align 4
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z6uploadIfEvPT_S1_i(float* noundef %0, float* noundef %1, i32 noundef %2) #4 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load float*, float** %4, align 8
  %8 = bitcast float* %7 to i8*
  %9 = load float*, float** %5, align 8
  %10 = bitcast float* %9 to i8*
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call i32 @hipMemcpy(i8* noundef %8, i8* noundef %10, i64 noundef %13, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z6uploadI15HIP_vector_typeIfLj3EEEvPT_S3_i(%struct.HIP_vector_type* noundef %0, %struct.HIP_vector_type* noundef %1, i32 noundef %2) #4 comdat {
  %4 = alloca %struct.HIP_vector_type*, align 8
  %5 = alloca %struct.HIP_vector_type*, align 8
  %6 = alloca i32, align 4
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %4, align 8
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %4, align 8
  %8 = bitcast %struct.HIP_vector_type* %7 to i8*
  %9 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %5, align 8
  %10 = bitcast %struct.HIP_vector_type* %9 to i8*
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 12
  %14 = call i32 @hipMemcpy(i8* noundef %8, i8* noundef %10, i64 noundef %13, i32 noundef 1)
  ret void
}

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256), i8* noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), i32* noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiEUa9enable_ifILb1EERKT_S2_S2_(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #7 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32* [ %11, %10 ], [ %13, %12 ]
  ret i32* %15
}

declare noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERf(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), float* noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32* @_Z5allocIiEPT_i(i32 noundef %0) #4 comdat {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32** %3 to i8**
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 4, %6
  %8 = call i32 @hipMalloc(i8** noundef %4, i64 noundef %7)
  %9 = load i32*, i32** %3, align 8
  ret i32* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z6uploadIiEvPT_S1_i(i32* noundef %0, i32* noundef %1, i32 noundef %2) #4 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call i32 @hipMemcpy(i8* noundef %8, i8* noundef %10, i64 noundef %13, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256)) unnamed_addr #2

declare i32 @hipMemset(i8* noundef, i32 noundef, i64 noundef) #1

declare i32 @hipDeviceSynchronize() #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z4copyIfEvPT_S1_i(float* noundef %0, float* noundef %1, i32 noundef %2) #4 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load float*, float** %4, align 8
  %8 = bitcast float* %7 to i8*
  %9 = load float*, float** %5, align 8
  %10 = bitcast float* %9 to i8*
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call i32 @hipMemcpy(i8* noundef %8, i8* noundef %10, i64 noundef %13, i32 noundef 3)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z7deallocIfEvPT_(float* noundef %0) #4 comdat {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = bitcast float* %3 to i8*
  %5 = call i32 @hipFree(i8* noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z7deallocIiEvPT_(i32* noundef %0) #4 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = call i32 @hipFree(i8* noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z7deallocI15HIP_vector_typeIfLj3EEEvPT_(%struct.HIP_vector_type* noundef %0) #4 comdat {
  %2 = alloca %struct.HIP_vector_type*, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %2, align 8
  %3 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %2, align 8
  %4 = bitcast %struct.HIP_vector_type* %3 to i8*
  %5 = call i32 @hipFree(i8* noundef %4)
  ret void
}

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare i32 @hipMalloc(i8** noundef, i64 noundef) #1

declare i32 @hipFree(i8* noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_euler3d.cu() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, float*, float*)** @_Z25cuda_initialize_variablesiPfS_ to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, float*, float*, float*)** @_Z24cuda_compute_step_factoriPfS_S_ to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32*, float*, float*, float*, float*, %struct.HIP_vector_type*, %struct.HIP_vector_type*)** @_Z17cuda_compute_fluxiPiPfS0_S0_S0_P15HIP_vector_typeIfLj3EES3_ to i8*), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %5 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32, float*, float*, float*, float*)** @_Z14cuda_time_stepiiPfS_S_S_ to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  ret void
}

declare i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)

declare void @__hipRegisterVar(i8**, i8*, i8*, i8*, i32, i64, i32, i32)

declare void @__hipRegisterManagedVar(i8**, i8*, i8*, i8*, i64, i32)

declare void @__hipRegisterSurface(i8**, i8*, i8*, i8*, i32, i32)

declare void @__hipRegisterTexture(i8**, i8*, i8*, i8*, i32, i32, i32)

declare i8** @__hipRegisterFatBinary(i8*)

define internal void @__hip_module_ctor() {
  %1 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %2 = icmp eq i8** %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i8** @__hipRegisterFatBinary(i8* bitcast ({ i32, i32, i8*, i8* }* @__hip_fatbin_wrapper to i8*))
  store i8** %4, i8*** @__hip_gpubin_handle, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i8**, i8*** @__hip_gpubin_handle, align 8
  call void @__hip_register_globals(i8** %6)
  %7 = call i32 @atexit(void ()* @__hip_module_dtor)
  ret void
}

declare void @__hipUnregisterFatBinary(i8**)

define internal void @__hip_module_dtor() {
  %1 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %2 = icmp ne i8** %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @__hipUnregisterFatBinary(i8** %1)
  store i8** null, i8*** @__hip_gpubin_handle, align 8
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare i32 @atexit(void ()*)

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nocallback nofree nounwind willreturn }
attributes #11 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
