; ModuleID = 'vectoradd/vectoradd.cpp'
source_filename = "vectoradd/vectoradd.cpp"
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
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_Z15vectoradd_floatPfPKfS1_ii = dso_local constant void (float*, float*, float*, i32, i32)* @_Z30__device_stub__vectoradd_floatPfPKfS1_ii, align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"hip Device prop succeeded \00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"(hipMalloc((void**)&deviceA, (1024*1024) * sizeof(float)))==hipSuccess\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"vectoradd/vectoradd.cpp\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"(hipMalloc((void**)&deviceB, (1024*1024) * sizeof(float)))==hipSuccess\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"(hipMalloc((void**)&deviceC, (1024*1024) * sizeof(float)))==hipSuccess\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"(hipMemcpy(deviceB, hostB, (1024*1024)*sizeof(float), hipMemcpyHostToDevice))==hipSuccess\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"(hipMemcpy(deviceC, hostC, (1024*1024)*sizeof(float), hipMemcpyHostToDevice))==hipSuccess\00", align 1
@.str.10 = private unnamed_addr constant [90 x i8] c"(hipMemcpy(hostA, deviceA, (1024*1024)*sizeof(float), hipMemcpyDeviceToHost))==hipSuccess\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"FAILED: %d errors\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"(hipFree(deviceA))==hipSuccess\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"(hipFree(deviceB))==hipSuccess\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"(hipFree(deviceC))==hipSuccess\00", align 1
@0 = private unnamed_addr constant [30 x i8] c"_Z15vectoradd_floatPfPKfS1_ii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_vectoradd.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [8 x i8] c"PASSED!\00", align 1

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z30__device_stub__vectoradd_floatPfPKfS1_ii(float* noalias %0, float* noalias %1, float* noalias %2, i32 %3, i32 %4) #3 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store float* %0, float** %6, align 8, !tbaa !3
  store float* %1, float** %7, align 8, !tbaa !3
  store float* %2, float** %8, align 8, !tbaa !3
  store i32 %3, i32* %9, align 4, !tbaa !7
  store i32 %4, i32* %10, align 4, !tbaa !7
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to float***
  store float** %6, float*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to float***
  store float** %7, float*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to float***
  store float** %8, float*** %21, align 16
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z15vectoradd_floatPfPKfS1_ii to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim3, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [5 x i8*], align 16
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca %struct.hipDeviceProp_t, align 8
  %15 = bitcast float** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #13
  %16 = bitcast float** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #13
  %17 = bitcast float** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #13
  %18 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %14, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %18) #13
  %19 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %14, i32 0)
  %20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14)
  %21 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %14, i64 0, i32 13
  %22 = load i32, i32* %21, align 4, !tbaa !9
  %23 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %22)
  %24 = bitcast %"class.std::basic_ostream"* %23 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !13
  %26 = getelementptr i8, i8* %25, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %"class.std::basic_ostream"* %23 to i8*
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  %31 = getelementptr inbounds i8, i8* %30, i64 240
  %32 = bitcast i8* %31 to %"class.std::ctype"**
  %33 = load %"class.std::ctype"*, %"class.std::ctype"** %32, align 8, !tbaa !15
  %34 = icmp eq %"class.std::ctype"* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %0
  call void @_ZSt16__throw_bad_castv() #14
  unreachable

36:                                               ; preds = %0
  %37 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %33, i64 0, i32 8
  %38 = load i8, i8* %37, align 8, !tbaa !18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %33, i64 0, i32 9, i64 10
  %42 = load i8, i8* %41, align 1, !tbaa !20
  br label %49

43:                                               ; preds = %36
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %33)
  %44 = bitcast %"class.std::ctype"* %33 to i8 (%"class.std::ctype"*, i8)***
  %45 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !13
  %46 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %45, i64 6
  %47 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %46, align 8
  %48 = call signext i8 %47(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %33, i8 signext 10)
  br label %49

49:                                               ; preds = %40, %43
  %50 = phi i8 [ %42, %40 ], [ %48, %43 ]
  %51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %23, i8 signext %50)
  %52 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %51)
  %53 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 14)
  %54 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %14, i64 0, i32 12
  %55 = load i32, i32* %54, align 8, !tbaa !21
  %56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %55)
  %57 = bitcast %"class.std::basic_ostream"* %56 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !13
  %59 = getelementptr i8, i8* %58, i64 -24
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = bitcast %"class.std::basic_ostream"* %56 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  %64 = getelementptr inbounds i8, i8* %63, i64 240
  %65 = bitcast i8* %64 to %"class.std::ctype"**
  %66 = load %"class.std::ctype"*, %"class.std::ctype"** %65, align 8, !tbaa !15
  %67 = icmp eq %"class.std::ctype"* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  call void @_ZSt16__throw_bad_castv() #14
  unreachable

69:                                               ; preds = %49
  %70 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %66, i64 0, i32 8
  %71 = load i8, i8* %70, align 8, !tbaa !18
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %66, i64 0, i32 9, i64 10
  %75 = load i8, i8* %74, align 1, !tbaa !20
  br label %82

76:                                               ; preds = %69
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %66)
  %77 = bitcast %"class.std::ctype"* %66 to i8 (%"class.std::ctype"*, i8)***
  %78 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %77, align 8, !tbaa !13
  %79 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %78, i64 6
  %80 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %79, align 8
  %81 = call signext i8 %80(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %66, i8 signext 10)
  br label %82

82:                                               ; preds = %73, %76
  %83 = phi i8 [ %75, %73 ], [ %81, %76 ]
  %84 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %56, i8 signext %83)
  %85 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %84)
  %86 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17)
  %87 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %18) #13
  %88 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %18, i64 %87)
  %89 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !13
  %90 = getelementptr i8, i8* %89, i64 -24
  %91 = bitcast i8* %90 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 240
  %95 = bitcast i8* %94 to %"class.std::ctype"**
  %96 = load %"class.std::ctype"*, %"class.std::ctype"** %95, align 8, !tbaa !15
  %97 = icmp eq %"class.std::ctype"* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  call void @_ZSt16__throw_bad_castv() #14
  unreachable

99:                                               ; preds = %82
  %100 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %96, i64 0, i32 8
  %101 = load i8, i8* %100, align 8, !tbaa !18
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %96, i64 0, i32 9, i64 10
  %105 = load i8, i8* %104, align 1, !tbaa !20
  br label %112

106:                                              ; preds = %99
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %96)
  %107 = bitcast %"class.std::ctype"* %96 to i8 (%"class.std::ctype"*, i8)***
  %108 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %107, align 8, !tbaa !13
  %109 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %108, i64 6
  %110 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %109, align 8
  %111 = call signext i8 %110(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %96, i8 signext 10)
  br label %112

112:                                              ; preds = %103, %106
  %113 = phi i8 [ %105, %103 ], [ %111, %106 ]
  %114 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %113)
  %115 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %114)
  %116 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 26)
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !13
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 240
  %123 = bitcast i8* %122 to %"class.std::ctype"**
  %124 = load %"class.std::ctype"*, %"class.std::ctype"** %123, align 8, !tbaa !15
  %125 = icmp eq %"class.std::ctype"* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  call void @_ZSt16__throw_bad_castv() #14
  unreachable

127:                                              ; preds = %112
  %128 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %124, i64 0, i32 8
  %129 = load i8, i8* %128, align 8, !tbaa !18
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %124, i64 0, i32 9, i64 10
  %133 = load i8, i8* %132, align 1, !tbaa !20
  br label %140

134:                                              ; preds = %127
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %124)
  %135 = bitcast %"class.std::ctype"* %124 to i8 (%"class.std::ctype"*, i8)***
  %136 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %135, align 8, !tbaa !13
  %137 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %136, i64 6
  %138 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %137, align 8
  %139 = call signext i8 %138(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %124, i8 signext 10)
  br label %140

140:                                              ; preds = %131, %134
  %141 = phi i8 [ %133, %131 ], [ %139, %134 ]
  %142 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %141)
  %143 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %142)
  %144 = call noalias align 16 dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #13
  %145 = call noalias align 16 dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #13
  %146 = bitcast i8* %145 to float*
  %147 = call noalias align 16 dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #13
  %148 = bitcast i8* %147 to float*
  br label %149

149:                                              ; preds = %149, %140
  %150 = phi i64 [ 0, %140 ], [ %180, %149 ]
  %151 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %140 ], [ %181, %149 ]
  %152 = add <4 x i32> %151, <i32 4, i32 4, i32 4, i32 4>
  %153 = sitofp <4 x i32> %151 to <4 x float>
  %154 = sitofp <4 x i32> %152 to <4 x float>
  %155 = getelementptr inbounds float, float* %146, i64 %150
  %156 = bitcast float* %155 to <4 x float>*
  store <4 x float> %153, <4 x float>* %156, align 16, !tbaa !22
  %157 = getelementptr inbounds float, float* %155, i64 4
  %158 = bitcast float* %157 to <4 x float>*
  store <4 x float> %154, <4 x float>* %158, align 16, !tbaa !22
  %159 = fmul contract <4 x float> %153, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %160 = fmul contract <4 x float> %154, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %161 = getelementptr inbounds float, float* %148, i64 %150
  %162 = bitcast float* %161 to <4 x float>*
  store <4 x float> %159, <4 x float>* %162, align 16, !tbaa !22
  %163 = getelementptr inbounds float, float* %161, i64 4
  %164 = bitcast float* %163 to <4 x float>*
  store <4 x float> %160, <4 x float>* %164, align 16, !tbaa !22
  %165 = or i64 %150, 8
  %166 = add <4 x i32> %151, <i32 8, i32 8, i32 8, i32 8>
  %167 = add <4 x i32> %151, <i32 12, i32 12, i32 12, i32 12>
  %168 = sitofp <4 x i32> %166 to <4 x float>
  %169 = sitofp <4 x i32> %167 to <4 x float>
  %170 = getelementptr inbounds float, float* %146, i64 %165
  %171 = bitcast float* %170 to <4 x float>*
  store <4 x float> %168, <4 x float>* %171, align 16, !tbaa !22
  %172 = getelementptr inbounds float, float* %170, i64 4
  %173 = bitcast float* %172 to <4 x float>*
  store <4 x float> %169, <4 x float>* %173, align 16, !tbaa !22
  %174 = fmul contract <4 x float> %168, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %175 = fmul contract <4 x float> %169, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %176 = getelementptr inbounds float, float* %148, i64 %165
  %177 = bitcast float* %176 to <4 x float>*
  store <4 x float> %174, <4 x float>* %177, align 16, !tbaa !22
  %178 = getelementptr inbounds float, float* %176, i64 4
  %179 = bitcast float* %178 to <4 x float>*
  store <4 x float> %175, <4 x float>* %179, align 16, !tbaa !22
  %180 = add nuw nsw i64 %150, 16
  %181 = add <4 x i32> %151, <i32 16, i32 16, i32 16, i32 16>
  %182 = icmp eq i64 %180, 1048576
  br i1 %182, label %183, label %149, !llvm.loop !24

183:                                              ; preds = %149
  %184 = bitcast i8* %144 to float*
  %185 = bitcast float** %11 to i8**
  %186 = call i32 @hipMalloc(i8** nonnull %185, i64 4194304)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

189:                                              ; preds = %183
  %190 = bitcast float** %12 to i8**
  %191 = call i32 @hipMalloc(i8** nonnull %190, i64 4194304)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

194:                                              ; preds = %189
  %195 = bitcast float** %13 to i8**
  %196 = call i32 @hipMalloc(i8** nonnull %195, i64 4194304)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

199:                                              ; preds = %194
  %200 = load i8*, i8** %190, align 8, !tbaa !3
  %201 = call i32 @hipMemcpy(i8* %200, i8* nonnull %145, i64 4194304, i32 1)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  call void @__assert_fail(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

204:                                              ; preds = %199
  %205 = load i8*, i8** %195, align 8, !tbaa !3
  %206 = call i32 @hipMemcpy(i8* %205, i8* nonnull %147, i64 4194304, i32 1)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @__assert_fail(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

209:                                              ; preds = %204
  %210 = call i32 @__hipPushCallConfiguration(i64 274877907008, i32 1, i64 68719476752, i32 1, i64 0, %struct.ihipStream_t* null)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %249

212:                                              ; preds = %209
  %213 = load float*, float** %11, align 8, !tbaa !3
  %214 = load float*, float** %12, align 8, !tbaa !3
  %215 = load float*, float** %13, align 8, !tbaa !3
  %216 = bitcast float** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %216)
  %217 = bitcast float** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %217)
  %218 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %218)
  %219 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %219)
  %220 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %220)
  %221 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %221)
  %222 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %222)
  %223 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %223)
  %224 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %224)
  %225 = bitcast [5 x i8*]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %225)
  store float* %213, float** %1, align 8, !tbaa !3, !noalias !27
  store float* %214, float** %2, align 8, !tbaa !3, !noalias !27
  store float* %215, float** %3, align 8, !tbaa !3, !noalias !27
  store i32 1024, i32* %4, align 4, !tbaa !7, !noalias !27
  store i32 1024, i32* %5, align 4, !tbaa !7, !noalias !27
  %226 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %227 = bitcast [5 x i8*]* %10 to float***
  store float** %1, float*** %227, align 16, !noalias !27
  %228 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 1
  %229 = bitcast i8** %228 to float***
  store float** %2, float*** %229, align 8, !noalias !27
  %230 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 2
  %231 = bitcast i8** %230 to float***
  store float** %3, float*** %231, align 16, !noalias !27
  %232 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 3
  %233 = bitcast i8** %232 to i32**
  store i32* %4, i32** %233, align 8, !noalias !27
  %234 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 4
  %235 = bitcast i8** %234 to i32**
  store i32* %5, i32** %235, align 16, !noalias !27
  %236 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %6, %struct.dim3* nonnull %7, i64* nonnull %8, i8** nonnull %9)
  %237 = load i64, i64* %8, align 8, !noalias !27
  %238 = bitcast i8** %9 to %struct.ihipStream_t**
  %239 = load %struct.ihipStream_t*, %struct.ihipStream_t** %238, align 8, !noalias !27
  %240 = bitcast %struct.dim3* %6 to i64*
  %241 = load i64, i64* %240, align 8, !noalias !27
  %242 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %243 = load i32, i32* %242, align 8, !noalias !27
  %244 = bitcast %struct.dim3* %7 to i64*
  %245 = load i64, i64* %244, align 8, !noalias !27
  %246 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %247 = load i32, i32* %246, align 8, !noalias !27
  %248 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z15vectoradd_floatPfPKfS1_ii to i8*), i64 %241, i32 %243, i64 %245, i32 %247, i8** nonnull %226, i64 %237, %struct.ihipStream_t* %239)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %216)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %217)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %218)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %219)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %220)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %221)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %222)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %223)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %224)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %225)
  br label %249

249:                                              ; preds = %212, %209
  %250 = load i8*, i8** %185, align 8, !tbaa !3
  %251 = call i32 @hipMemcpy(i8* %144, i8* %250, i64 4194304, i32 2)
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %289

253:                                              ; preds = %249, %253
  %254 = phi i64 [ %283, %253 ], [ 0, %249 ]
  %255 = phi <4 x i32> [ %281, %253 ], [ zeroinitializer, %249 ]
  %256 = phi <4 x i32> [ %282, %253 ], [ zeroinitializer, %249 ]
  %257 = getelementptr inbounds float, float* %184, i64 %254
  %258 = bitcast float* %257 to <4 x float>*
  %259 = load <4 x float>, <4 x float>* %258, align 16, !tbaa !22
  %260 = getelementptr inbounds float, float* %257, i64 4
  %261 = bitcast float* %260 to <4 x float>*
  %262 = load <4 x float>, <4 x float>* %261, align 16, !tbaa !22
  %263 = getelementptr inbounds float, float* %146, i64 %254
  %264 = bitcast float* %263 to <4 x float>*
  %265 = load <4 x float>, <4 x float>* %264, align 16, !tbaa !22
  %266 = getelementptr inbounds float, float* %263, i64 4
  %267 = bitcast float* %266 to <4 x float>*
  %268 = load <4 x float>, <4 x float>* %267, align 16, !tbaa !22
  %269 = getelementptr inbounds float, float* %148, i64 %254
  %270 = bitcast float* %269 to <4 x float>*
  %271 = load <4 x float>, <4 x float>* %270, align 16, !tbaa !22
  %272 = getelementptr inbounds float, float* %269, i64 4
  %273 = bitcast float* %272 to <4 x float>*
  %274 = load <4 x float>, <4 x float>* %273, align 16, !tbaa !22
  %275 = fadd contract <4 x float> %265, %271
  %276 = fadd contract <4 x float> %268, %274
  %277 = fcmp contract une <4 x float> %259, %275
  %278 = fcmp contract une <4 x float> %262, %276
  %279 = zext <4 x i1> %277 to <4 x i32>
  %280 = zext <4 x i1> %278 to <4 x i32>
  %281 = add <4 x i32> %255, %279
  %282 = add <4 x i32> %256, %280
  %283 = add nuw i64 %254, 8
  %284 = icmp eq i64 %283, 1048576
  br i1 %284, label %285, label %253, !llvm.loop !32

285:                                              ; preds = %253
  %286 = add <4 x i32> %282, %281
  %287 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %286)
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %290

289:                                              ; preds = %249
  call void @__assert_fail(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

290:                                              ; preds = %285
  %291 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %287)
  br label %294

292:                                              ; preds = %285
  %293 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %290
  %295 = load i8*, i8** %185, align 8, !tbaa !3
  %296 = call i32 @hipFree(i8* %295)
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %294
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

299:                                              ; preds = %294
  %300 = load i8*, i8** %190, align 8, !tbaa !3
  %301 = call i32 @hipFree(i8* %300)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %299
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

304:                                              ; preds = %299
  %305 = load i8*, i8** %195, align 8, !tbaa !3
  %306 = call i32 @hipFree(i8* %305)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %304
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

309:                                              ; preds = %304
  call void @free(i8* nonnull %144) #13
  call void @free(i8* nonnull %145) #13
  call void @free(i8* nonnull %147) #13
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %18) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #13
  ret i32 %287
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #9

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_vectoradd.cpp() #11 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #13
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z15vectoradd_floatPfPKfS1_ii to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

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
!9 = !{!10, !8, i64 332}
!10 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !11, i64 256, !11, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !11, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !12, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !11, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !11, i64 712, !11, i64 720, !11, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !6, i64 0}
!15 = !{!16, !4, i64 240}
!16 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !17, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!17 = !{!"bool", !5, i64 0}
!18 = !{!19, !5, i64 56}
!19 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !17, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!20 = !{!5, !5, i64 0}
!21 = !{!10, !8, i64 328}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = distinct !{!24, !25, !26}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!28, !30, !31}
!28 = distinct !{!28, !29, !"_Z30__device_stub__vectoradd_floatPfPKfS1_ii: argument 0"}
!29 = distinct !{!29, !"_Z30__device_stub__vectoradd_floatPfPKfS1_ii"}
!30 = distinct !{!30, !29, !"_Z30__device_stub__vectoradd_floatPfPKfS1_ii: argument 1"}
!31 = distinct !{!31, !29, !"_Z30__device_stub__vectoradd_floatPfPKfS1_ii: argument 2"}
!32 = distinct !{!32, !25, !26}
