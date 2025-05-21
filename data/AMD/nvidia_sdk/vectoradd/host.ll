; ModuleID = 'vectoradd.cpp'
source_filename = "vectoradd.cpp"
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

$_Z5checkI10hipError_tEvT_PKcS3_i = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_Z9vectorAddPKfS0_Pfi = dso_local constant void (float*, float*, float*, i32)* @_Z24__device_stub__vectorAddPKfS0_Pfi, align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [21 x i8] c"[Vector addition of \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" elements]\0A\00", align 1
@_ZSt4cerr = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate host vectors!\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"hipMalloc((void **)&d_A, size)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"vectoradd.cpp\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"hipMalloc((void **)&d_B, size)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"hipMalloc((void **)&d_C, size)\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Copy input data from the host memory to the HIP device\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"hipMemcpy(d_A, h_A, size, hipMemcpyHostToDevice)\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"hipMemcpy(d_B, h_B, size, hipMemcpyHostToDevice)\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"HIP kernel launch with \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" blocks of \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" threads\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"hipGetLastError()\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"Copy output data from the HIP device to the host memory\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"hipMemcpy(h_C, d_C, size, hipMemcpyDeviceToHost)\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Result verification failed at element \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"!\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Test PASSED\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"hipFree(d_A)\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"hipFree(d_B)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"hipFree(d_C)\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"HIP error at: \00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@0 = private unnamed_addr constant [22 x i8] c"_Z9vectorAddPKfS0_Pfi\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_vectoradd.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__vectorAddPKfS0_Pfi(float* %0, float* %1, float* %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store float* %2, float** %7, align 8, !tbaa !3
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to float***
  store float** %7, float*** %19, align 16
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
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32)** @_Z9vectorAddPKfS0_Pfi to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
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
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i8*], align 16
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 20)
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 50000)
  %15 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %14, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 11)
  %16 = tail call noalias align 16 dereferenceable_or_null(200000) i8* @malloc(i64 200000) #12
  %17 = bitcast i8* %16 to float*
  %18 = tail call noalias align 16 dereferenceable_or_null(200000) i8* @malloc(i64 200000) #12
  %19 = bitcast i8* %18 to float*
  %20 = tail call noalias align 16 dereferenceable_or_null(200000) i8* @malloc(i64 200000) #12
  %21 = bitcast i8* %20 to float*
  %22 = icmp eq i8* %16, null
  %23 = icmp eq i8* %18, null
  %24 = or i1 %22, %23
  %25 = icmp eq i8* %20, null
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %0
  %28 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  tail call void @exit(i32 1) #13
  unreachable

29:                                               ; preds = %51
  %30 = bitcast float** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #12
  store float* null, float** %10, align 8, !tbaa !3
  %31 = bitcast float** %10 to i8**
  %32 = call i32 @hipMalloc(i8** nonnull %31, i64 200000)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 63)
  %33 = bitcast float** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #12
  store float* null, float** %11, align 8, !tbaa !3
  %34 = bitcast float** %11 to i8**
  %35 = call i32 @hipMalloc(i8** nonnull %34, i64 200000)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 67)
  %36 = bitcast float** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #12
  store float* null, float** %12, align 8, !tbaa !3
  %37 = bitcast float** %12 to i8**
  %38 = call i32 @hipMalloc(i8** nonnull %37, i64 200000)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 71)
  %39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 55)
  %40 = load i8*, i8** %31, align 8, !tbaa !3
  %41 = call i32 @hipMemcpy(i8* %40, i8* nonnull %16, i64 200000, i32 1)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 75)
  %42 = load i8*, i8** %34, align 8, !tbaa !3
  %43 = call i32 @hipMemcpy(i8* %42, i8* nonnull %18, i64 200000, i32 1)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 76)
  %44 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 23)
  %45 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 196)
  %46 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %45, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 11)
  %47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %45, i32 256)
  %48 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %47, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 9)
  %49 = call i32 @__hipPushCallConfiguration(i64 4294967492, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %97

51:                                               ; preds = %0, %51
  %52 = phi i64 [ %61, %51 ], [ 0, %0 ]
  %53 = tail call i32 @rand() #12
  %54 = sitofp i32 %53 to float
  %55 = fmul contract float %54, 0x3E00000000000000
  %56 = getelementptr inbounds float, float* %17, i64 %52
  store float %55, float* %56, align 4, !tbaa !9
  %57 = tail call i32 @rand() #12
  %58 = sitofp i32 %57 to float
  %59 = fmul contract float %58, 0x3E00000000000000
  %60 = getelementptr inbounds float, float* %19, i64 %52
  store float %59, float* %60, align 4, !tbaa !9
  %61 = add nuw nsw i64 %52, 1
  %62 = icmp eq i64 %61, 50000
  br i1 %62, label %29, label %51, !llvm.loop !11

63:                                               ; preds = %29
  %64 = load float*, float** %10, align 8, !tbaa !3
  %65 = load float*, float** %11, align 8, !tbaa !3
  %66 = load float*, float** %12, align 8, !tbaa !3
  %67 = bitcast float** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67)
  %68 = bitcast float** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68)
  %69 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69)
  %70 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %70)
  %71 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %71)
  %72 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %72)
  %73 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73)
  %74 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74)
  %75 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %75)
  store float* %64, float** %1, align 8, !tbaa !3
  store float* %65, float** %2, align 8, !tbaa !3
  store float* %66, float** %3, align 8, !tbaa !3
  store i32 50000, i32* %4, align 4, !tbaa !7
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %77 = bitcast [4 x i8*]* %9 to float***
  store float** %1, float*** %77, align 16
  %78 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 1
  %79 = bitcast i8** %78 to float***
  store float** %2, float*** %79, align 8
  %80 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 2
  %81 = bitcast i8** %80 to float***
  store float** %3, float*** %81, align 16
  %82 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 3
  %83 = bitcast i8** %82 to i32**
  store i32* %4, i32** %83, align 8
  %84 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %85 = load i64, i64* %7, align 8
  %86 = bitcast i8** %8 to %struct.ihipStream_t**
  %87 = load %struct.ihipStream_t*, %struct.ihipStream_t** %86, align 8
  %88 = bitcast %struct.dim3* %5 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = bitcast %struct.dim3* %6 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32)** @_Z9vectorAddPKfS0_Pfi to i8*), i64 %89, i32 %91, i64 %93, i32 %95, i8** nonnull %76, i64 %85, %struct.ihipStream_t* %87)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %70)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %71)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %72)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %75)
  br label %97

97:                                               ; preds = %63, %29
  %98 = call i32 @hipGetLastError()
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 83)
  %99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i64 56)
  %100 = load i8*, i8** %37, align 8, !tbaa !3
  %101 = call i32 @hipMemcpy(i8* %20, i8* %100, i64 200000, i32 2)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %101, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 87)
  br label %111

102:                                              ; preds = %143
  %103 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i64 12)
  %104 = load i8*, i8** %31, align 8, !tbaa !3
  %105 = call i32 @hipFree(i8* %104)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 100)
  %106 = load i8*, i8** %34, align 8, !tbaa !3
  %107 = call i32 @hipFree(i8* %106)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 101)
  %108 = load i8*, i8** %37, align 8, !tbaa !3
  %109 = call i32 @hipFree(i8* %108)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 102)
  call void @free(i8* nonnull %16) #12
  call void @free(i8* nonnull %18) #12
  call void @free(i8* nonnull %20) #12
  %110 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 5)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #12
  ret i32 0

111:                                              ; preds = %143, %97
  %112 = phi i64 [ 0, %97 ], [ %144, %143 ]
  %113 = getelementptr inbounds float, float* %17, i64 %112
  %114 = load float, float* %113, align 8, !tbaa !9
  %115 = getelementptr inbounds float, float* %19, i64 %112
  %116 = load float, float* %115, align 8, !tbaa !9
  %117 = fadd contract float %114, %116
  %118 = getelementptr inbounds float, float* %21, i64 %112
  %119 = load float, float* %118, align 8, !tbaa !9
  %120 = fsub contract float %117, %119
  %121 = call contract float @llvm.fabs.f32(float %120)
  %122 = fpext float %121 to double
  %123 = fcmp contract ogt double %122, 1.000000e-05
  br i1 %123, label %124, label %130

124:                                              ; preds = %130, %111
  %125 = phi i64 [ %112, %111 ], [ %131, %130 ]
  %126 = trunc i64 %125 to i32
  %127 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  %128 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %127, i32 %126)
  %129 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 1) #13
  unreachable

130:                                              ; preds = %111
  %131 = or i64 %112, 1
  %132 = getelementptr inbounds float, float* %17, i64 %131
  %133 = load float, float* %132, align 4, !tbaa !9
  %134 = getelementptr inbounds float, float* %19, i64 %131
  %135 = load float, float* %134, align 4, !tbaa !9
  %136 = fadd contract float %133, %135
  %137 = getelementptr inbounds float, float* %21, i64 %131
  %138 = load float, float* %137, align 4, !tbaa !9
  %139 = fsub contract float %136, %138
  %140 = call contract float @llvm.fabs.f32(float %139)
  %141 = fpext float %140 to double
  %142 = fcmp contract ogt double %141, 1.000000e-05
  br i1 %142, label %124, label %143

143:                                              ; preds = %130
  %144 = add nuw nsw i64 %112, 2
  %145 = icmp eq i64 %144, 50000
  br i1 %145, label %102, label %111, !llvm.loop !13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #5

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #8 comdat {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %7, i8* %2)
  %9 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %9, i32 %3)
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %10)
  %12 = tail call i8* @hipGetErrorString(i32 %0)
  %13 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* %12)
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %15 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %14, i8* %1)
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %15)
  tail call void @exit(i32 1) #13
  unreachable

17:                                               ; preds = %4
  ret void
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipGetLastError() local_unnamed_addr #0

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #9

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_vectoradd.cpp() #10 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #12
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, float*, i32)** @_Z9vectorAddPKfS0_Pfi to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
declare float @llvm.fabs.f32(float) #11

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
