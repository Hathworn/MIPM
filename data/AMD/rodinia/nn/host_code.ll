; ModuleID = 'nn_hip.cu'
source_filename = "nn_hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.latLong = type { float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl" }
%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl" = type { %struct.record*, %struct.record*, %struct.record* }
%struct.record = type { [53 x i8], float }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl" }
%"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl" = type { %struct.latLong*, %struct.latLong*, %struct.latLong* }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%"class.std::allocator.2" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { %struct.latLong* }
%"class.__gnu_cxx::__normal_iterator.5" = type { %struct.record* }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%"class.std::move_iterator" = type { %struct.latLong* }
%"class.std::move_iterator.6" = type { %struct.record* }

$_ZNSt6vectorI6recordSaIS0_EEC2Ev = comdat any

$_ZNSt6vectorI7latLongSaIS0_EEC2Ev = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_ZNSt6vectorI7latLongSaIS0_EEixEm = comdat any

$_ZSt4sqrtf = comdat any

$_ZNSt6vectorI6recordSaIS0_EEixEm = comdat any

$_ZNSt6vectorI7latLongSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI6recordSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI7latLongSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt6vectorI6recordSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI6recordEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI6recordEC2Ev = comdat any

$_ZSt8_DestroyIP6recordS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP6recordEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP6recordEEvT_S4_ = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaI6recordEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6recordE10deallocateEPS1_m = comdat any

$_ZNSaI6recordED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI6recordED2Ev = comdat any

$_ZNSt12_Vector_baseI7latLongSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI7latLongSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI7latLongEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI7latLongEC2Ev = comdat any

$_ZSt8_DestroyIP7latLongS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7latLongSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7latLongEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP7latLongEEvT_S4_ = comdat any

$_ZNSt12_Vector_baseI7latLongSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseI7latLongSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaI7latLongEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI7latLongE10deallocateEPS1_m = comdat any

$_ZNSaI7latLongED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI7latLongED2Ev = comdat any

$_ZNSt16allocator_traitsISaI7latLongEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt6vectorI7latLongSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI7latLongSaIS0_EE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI7latLongE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorI7latLongSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIP7latLongSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt6vectorI7latLongSaIS0_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI7latLongSaIS0_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP7latLongS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaI7latLongEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv = comdat any

$_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv = comdat any

$_ZSt3maxImEUa9enable_ifILb1EERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaI7latLongEE8max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI7latLongE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaI7latLongEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI7latLongE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIP7latLongES2_S1_ET0_T_S5_S4_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorI7latLongSt13move_iteratorIPS0_EET0_PT_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP7latLongES4_EET0_T_S7_S6_ = comdat any

$_ZSt4copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb1EP7latLongS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP7latLongEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt13__copy_move_aILb1EP7latLongS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP7latLongET_S2_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI7latLongEEPT_PKS4_S7_S5_ = comdat any

$_ZSt12__miter_baseIP7latLongET_S2_ = comdat any

$_ZNKSt13move_iteratorIP7latLongE4baseEv = comdat any

$_ZNSt13move_iteratorIP7latLongEC2ES1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI7latLongE7destroyIS1_EEvPT_ = comdat any

$_ZNSt16allocator_traitsISaI6recordEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt6vectorI6recordSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI6recordSaIS0_EE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI6recordE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorI6recordSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIP6recordSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt6vectorI6recordSaIS0_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP6recordS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaI6recordEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv = comdat any

$_ZNKSt6vectorI6recordSaIS0_EE4sizeEv = comdat any

$_ZNSt16allocator_traitsISaI6recordEE8max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI6recordE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaI6recordEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6recordE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIP6recordES2_S1_ET0_T_S5_S4_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorI6recordSt13move_iteratorIPS0_EET0_PT_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6recordES4_EET0_T_S7_S6_ = comdat any

$_ZSt4copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb1EP6recordS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP6recordEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt13__copy_move_aILb1EP6recordS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP6recordET_S2_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6recordEEPT_PKS4_S7_S5_ = comdat any

$_ZSt12__miter_baseIP6recordET_S2_ = comdat any

$_ZNKSt13move_iteratorIP6recordE4baseEv = comdat any

$_ZNSt13move_iteratorIP6recordEC2ES1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI6recordE7destroyIS1_EEvPT_ = comdat any

$__hip_gpubin_handle = comdat any

@_Z6euclidP7latLongPfiff = constant void (%struct.latLong*, float*, i32, float, float)* @_Z21__device_stub__euclidP7latLongPfiff, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [25 x i8] c"Error: Input too large.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed results %f   %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s --> Distance=%f\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"error reading filelist\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"error opening a db\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Nearest Neighbor Usage\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"nearestNeighbor [filename] -r [int] -lat [float] -lng [float] [-hqt] [-p [int] -d [int]]\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"example:\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"$ ./nearestNeighbor filelist.txt -r 5 -lat 30 -lng 90\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"filename     the filename that lists the data input files\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"-r [int]     the number of records to return (default: 10)\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"-lat [float] the latitude for nearest neighbors (default: 0)\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"-lng [float] the longitude for nearest neighbors (default: 0)\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"-h, --help   Display the help file\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"-q           Quiet mode. Suppress all text output.\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"-t           Print timing information.\0A\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"-p [int]     Choose the platform (must choose both platform and device)\0A\00", align 1
@.str.20 = private unnamed_addr constant [71 x i8] c"-d [int]     Choose the device (must choose both platform and device)\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Notes: 1. The filename is required as the first parameter.\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"       2. If you declare either the device or the platform,\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"          you must declare both.\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@0 = private unnamed_addr constant [24 x i8] c"_Z6euclidP7latLongPfiff\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z21__device_stub__euclidP7latLongPfiff(%struct.latLong* noundef %0, float* noundef %1, i32 noundef %2, float noundef %3, float noundef %4) #0 {
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store %struct.latLong* %0, %struct.latLong** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast %struct.latLong** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast float* %9 to i8*
  %25 = getelementptr i8*, i8** %17, i32 3
  store i8* %24, i8** %25, align 8
  %26 = bitcast float* %10 to i8*
  %27 = getelementptr i8*, i8** %17, i32 4
  store i8* %26, i8** %27, align 8
  %28 = call i32 @__hipPopCallConfiguration(%struct.dim3* %11, %struct.dim3* %12, i64* %13, i8** %14)
  %29 = load i64, i64* %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = bitcast { i64, i32 }* %15 to i8*
  %32 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 12, i1 false)
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = bitcast { i64, i32 }* %16 to i8*
  %38 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast i8* %30 to %struct.ihipStream_t*
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct.latLong*, float*, i32, float, float)** @_Z6euclidP7latLongPfiff to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %"class.std::vector", align 8
  %20 = alloca %"class.std::vector.0", align 8
  %21 = alloca [100 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca %struct.latLong*, align 8
  %30 = alloca float*, align 8
  %31 = alloca %struct.hipDeviceProp_t, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.dim3, align 4
  %42 = alloca %struct.dim3, align 4
  %43 = alloca %struct.dim3, align 4
  %44 = alloca { i64, i32 }, align 4
  %45 = alloca { i64, i32 }, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  call void @_ZNSt6vectorI6recordSaIS0_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #16
  call void @_ZNSt6vectorI7latLongSaIS0_EEC2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20) #16
  store i32 10, i32* %22, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %49 = invoke noundef i32 @_Z16parseCommandlineiPPcS_PiPfS2_S1_S1_S1_S1_(i32 noundef %46, i8** noundef %47, i8* noundef %48, i32* noundef %22, float* noundef %7, float* noundef %8, i32* noundef %9, i32* noundef %10, i32* noundef %11, i32* noundef %12)
          to label %50 unwind label %54

50:                                               ; preds = %2
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  invoke void @_Z10printUsagev()
          to label %53 unwind label %54

53:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %340

54:                                               ; preds = %334, %326, %308, %296, %277, %205, %191, %189, %180, %164, %159, %144, %138, %127, %103, %99, %87, %83, %69, %67, %58, %52, %2
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %23, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %24, align 4
  call void @_ZNSt6vectorI7latLongSaIS0_EED2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20) #16
  call void @_ZNSt6vectorI6recordSaIS0_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #16
  br label %342

58:                                               ; preds = %50
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %60 = invoke noundef i32 @_Z8loadDataPcRSt6vectorI6recordSaIS1_EERS0_I7latLongSaIS5_EE(i8* noundef %59, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, %"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20)
          to label %61 unwind label %54

61:                                               ; preds = %58
  store i32 %60, i32* %26, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %26, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %26, align 4
  store i32 %66, i32* %22, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = invoke i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef %31, i32 noundef 0)
          to label %69 unwind label %54

69:                                               ; preds = %67
  %70 = invoke i32 @hipDeviceSynchronize()
          to label %71 unwind label %54

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %31, i32 0, i32 7
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 0, i64 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %32, align 8
  %76 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %31, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 256
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %83

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %31, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi i32 [ 256, %79 ], [ %82, %80 ]
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %33, align 8
  %86 = invoke i32 @hipMemGetInfo(i64* noundef %35, i64* noundef %34)
          to label %87 unwind label %54

87:                                               ; preds = %83
  %88 = invoke i32 @hipDeviceSynchronize()
          to label %89 unwind label %54

89:                                               ; preds = %87
  %90 = load i64, i64* %35, align 8
  %91 = mul i64 %90, 85
  %92 = udiv i64 %91, 100
  store i64 %92, i64* %36, align 8
  %93 = load i64, i64* %36, align 8
  %94 = udiv i64 %93, 12
  store i64 %94, i64* %37, align 8
  %95 = load i32, i32* %26, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %37, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %101 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
          to label %102 unwind label %54

102:                                              ; preds = %99
  call void @exit(i32 noundef 1) #17
  unreachable

103:                                              ; preds = %89
  %104 = load i32, i32* %26, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %33, align 8
  %107 = add i64 %105, %106
  %108 = sub i64 %107, 1
  %109 = load i64, i64* %33, align 8
  %110 = udiv i64 %108, %109
  store i64 %110, i64* %38, align 8
  %111 = load i64, i64* %38, align 8
  %112 = load i64, i64* %32, align 8
  %113 = add i64 %111, %112
  %114 = sub i64 %113, 1
  %115 = load i64, i64* %32, align 8
  %116 = udiv i64 %114, %115
  store i64 %116, i64* %39, align 8
  %117 = load i64, i64* %38, align 8
  %118 = load i64, i64* %39, align 8
  %119 = add i64 %117, %118
  %120 = sub i64 %119, 1
  %121 = load i64, i64* %39, align 8
  %122 = udiv i64 %120, %121
  store i64 %122, i64* %40, align 8
  %123 = load i64, i64* %40, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i64, i64* %39, align 8
  %126 = trunc i64 %125 to i32
  invoke void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %41, i32 noundef %124, i32 noundef %126, i32 noundef 1)
          to label %127 unwind label %54

127:                                              ; preds = %103
  %128 = load i32, i32* %26, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 4, %129
  %131 = call noalias i8* @malloc(i64 noundef %130) #18
  %132 = bitcast i8* %131 to float*
  store float* %132, float** %27, align 8
  %133 = bitcast %struct.latLong** %29 to i8**
  %134 = load i32, i32* %26, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 8, %135
  %137 = invoke i32 @hipMalloc(i8** noundef %133, i64 noundef %136)
          to label %138 unwind label %54

138:                                              ; preds = %127
  %139 = bitcast float** %30 to i8**
  %140 = load i32, i32* %26, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 4, %141
  %143 = invoke i32 @hipMalloc(i8** noundef %139, i64 noundef %142)
          to label %144 unwind label %54

144:                                              ; preds = %138
  %145 = load i32, i32* %26, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 4, %146
  %148 = call noalias i8* @malloc(i64 noundef %147) #18
  %149 = bitcast i8* %148 to float*
  store float* %149, float** %28, align 8
  %150 = load %struct.latLong*, %struct.latLong** %29, align 8
  %151 = bitcast %struct.latLong* %150 to i8*
  %152 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #16
  %153 = bitcast %struct.latLong* %152 to i8*
  %154 = load i32, i32* %26, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 8, %155
  %157 = invoke i32 @hipMemcpy(i8* noundef %151, i8* noundef %153, i64 noundef %156, i32 noundef 1)
          to label %158 unwind label %54

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158
  %160 = bitcast %struct.dim3* %42 to i8*
  %161 = bitcast %struct.dim3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 4 %161, i64 12, i1 false)
  %162 = load i64, i64* %33, align 8
  %163 = trunc i64 %162 to i32
  invoke void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %43, i32 noundef %163, i32 noundef 1, i32 noundef 1)
          to label %164 unwind label %54

164:                                              ; preds = %159
  %165 = bitcast { i64, i32 }* %44 to i8*
  %166 = bitcast %struct.dim3* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 12, i1 false)
  %167 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %168 = load i64, i64* %167, align 4
  %169 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = bitcast { i64, i32 }* %45 to i8*
  %172 = bitcast %struct.dim3* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 12, i1 false)
  %173 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 0
  %174 = load i64, i64* %173, align 4
  %175 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = invoke i32 @__hipPushCallConfiguration(i64 %168, i32 %170, i64 %174, i32 %176, i64 noundef 0, %struct.ihipStream_t* noundef null)
          to label %178 unwind label %54

178:                                              ; preds = %164
  %179 = icmp ne i32 %177, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %178
  %181 = load %struct.latLong*, %struct.latLong** %29, align 8
  %182 = load float*, float** %30, align 8
  %183 = load i32, i32* %26, align 4
  %184 = load float, float* %7, align 4
  %185 = load float, float* %8, align 4
  invoke void @_Z21__device_stub__euclidP7latLongPfiff(%struct.latLong* noundef %181, float* noundef %182, i32 noundef %183, float noundef %184, float noundef %185)
          to label %186 unwind label %54

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %178
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  %190 = invoke i32 @hipDeviceSynchronize()
          to label %191 unwind label %54

191:                                              ; preds = %189
  %192 = load float*, float** %27, align 8
  %193 = bitcast float* %192 to i8*
  %194 = load float*, float** %30, align 8
  %195 = bitcast float* %194 to i8*
  %196 = load i32, i32* %26, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 4, %197
  %199 = invoke i32 @hipMemcpy(i8* noundef %193, i8* noundef %195, i64 noundef %198, i32 noundef 2)
          to label %200 unwind label %54

200:                                              ; preds = %191
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %243, %200
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %26, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %246

205:                                              ; preds = %201
  %206 = load float, float* %7, align 4
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %208) #16
  %210 = getelementptr inbounds %struct.latLong, %struct.latLong* %209, i32 0, i32 0
  %211 = load float, float* %210, align 4
  %212 = fsub contract float %206, %211
  %213 = load float, float* %7, align 4
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %215) #16
  %217 = getelementptr inbounds %struct.latLong, %struct.latLong* %216, i32 0, i32 0
  %218 = load float, float* %217, align 4
  %219 = fsub contract float %213, %218
  %220 = fmul contract float %212, %219
  %221 = load float, float* %8, align 4
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %223) #16
  %225 = getelementptr inbounds %struct.latLong, %struct.latLong* %224, i32 0, i32 1
  %226 = load float, float* %225, align 4
  %227 = fsub contract float %221, %226
  %228 = load float, float* %8, align 4
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %230) #16
  %232 = getelementptr inbounds %struct.latLong, %struct.latLong* %231, i32 0, i32 1
  %233 = load float, float* %232, align 4
  %234 = fsub contract float %228, %233
  %235 = fmul contract float %227, %234
  %236 = fadd contract float %220, %235
  %237 = invoke noundef float @_ZSt4sqrtf(float noundef %236)
          to label %238 unwind label %54

238:                                              ; preds = %205
  %239 = load float*, float** %28, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  store float %237, float* %242, align 4
  br label %243

243:                                              ; preds = %238
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %201, !llvm.loop !6

246:                                              ; preds = %201
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %293, %246
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %26, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %296

251:                                              ; preds = %247
  %252 = load float*, float** %28, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  %256 = load float, float* %255, align 4
  %257 = load float*, float** %27, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %257, i64 %259
  %261 = load float, float* %260, align 4
  %262 = fsub contract float %256, %261
  %263 = load float*, float** %28, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %263, i64 %265
  %267 = load float, float* %266, align 4
  %268 = load float*, float** %27, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  %272 = load float, float* %271, align 4
  %273 = fsub contract float %267, %272
  %274 = fmul contract float %262, %273
  %275 = fpext float %274 to double
  %276 = fcmp contract ogt double %275, 1.000000e-03
  br i1 %276, label %277, label %292

277:                                              ; preds = %251
  %278 = load float*, float** %28, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %278, i64 %280
  %282 = load float, float* %281, align 4
  %283 = fpext float %282 to double
  %284 = load float*, float** %27, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %284, i64 %286
  %288 = load float, float* %287, align 4
  %289 = fpext float %288 to double
  %290 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), double noundef %283, double noundef %289)
          to label %291 unwind label %54

291:                                              ; preds = %277
  store i32 1, i32* %13, align 4
  br label %296

292:                                              ; preds = %251
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %6, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %6, align 4
  br label %247, !llvm.loop !8

296:                                              ; preds = %291, %247
  %297 = load float*, float** %27, align 8
  %298 = load i32, i32* %26, align 4
  %299 = load i32, i32* %22, align 4
  invoke void @_Z10findLowestRSt6vectorI6recordSaIS0_EEPfii(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, float* noundef %297, i32 noundef %298, i32 noundef %299)
          to label %300 unwind label %54

300:                                              ; preds = %296
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %326, label %303

303:                                              ; preds = %300
  store i32 0, i32* %6, align 4
  br label %304

304:                                              ; preds = %322, %303
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* %22, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %325

308:                                              ; preds = %304
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %310) #16
  %312 = getelementptr inbounds %struct.record, %struct.record* %311, i32 0, i32 0
  %313 = getelementptr inbounds [53 x i8], [53 x i8]* %312, i64 0, i64 0
  %314 = load i32, i32* %6, align 4
  %315 = sext i32 %314 to i64
  %316 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %315) #16
  %317 = getelementptr inbounds %struct.record, %struct.record* %316, i32 0, i32 1
  %318 = load float, float* %317, align 4
  %319 = fpext float %318 to double
  %320 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef %313, double noundef %319)
          to label %321 unwind label %54

321:                                              ; preds = %308
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %6, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %6, align 4
  br label %304, !llvm.loop !9

325:                                              ; preds = %304
  br label %326

326:                                              ; preds = %325, %300
  %327 = load float*, float** %27, align 8
  %328 = bitcast float* %327 to i8*
  call void @free(i8* noundef %328) #16
  %329 = load float*, float** %28, align 8
  %330 = bitcast float* %329 to i8*
  call void @free(i8* noundef %330) #16
  %331 = load %struct.latLong*, %struct.latLong** %29, align 8
  %332 = bitcast %struct.latLong* %331 to i8*
  %333 = invoke i32 @hipFree(i8* noundef %332)
          to label %334 unwind label %54

334:                                              ; preds = %326
  %335 = load float*, float** %30, align 8
  %336 = bitcast float* %335 to i8*
  %337 = invoke i32 @hipFree(i8* noundef %336)
          to label %338 unwind label %54

338:                                              ; preds = %334
  %339 = load i32, i32* %13, align 4
  store i32 %339, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %340

340:                                              ; preds = %338, %53
  call void @_ZNSt6vectorI7latLongSaIS0_EED2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20) #16
  call void @_ZNSt6vectorI6recordSaIS0_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #16
  %341 = load i32, i32* %3, align 4
  ret i32 %341

342:                                              ; preds = %54
  %343 = load i8*, i8** %23, align 8
  %344 = load i32, i32* %24, align 4
  %345 = insertvalue { i8*, i32 } undef, i8* %343, 0
  %346 = insertvalue { i8*, i32 } %345, i32 %344, 1
  resume { i8*, i32 } %346
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6recordSaIS0_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseI6recordSaIS0_EEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7latLongSaIS0_EEC2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseI7latLongSaIS0_EEC2Ev(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z16parseCommandlineiPPcS_PiPfS2_S1_S1_S1_S1_(i32 noundef %0, i8** noundef %1, i8* noundef %2, i32* noundef %3, float* noundef %4, float* noundef %5, i32* noundef %6, i32* noundef %7, i32* noundef %8, i32* noundef %9) #4 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  store i32 %0, i32* %12, align 4
  store i8** %1, i8*** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store float* %4, float** %16, align 8
  store float* %5, float** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  store i32 1, i32* %11, align 4
  br label %148

27:                                               ; preds = %10
  %28 = load i8*, i8** %14, align 8
  %29 = load i8**, i8*** %13, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strncpy(i8* noundef %28, i8* noundef %31, i64 noundef 100) #16
  store i32 1, i32* %22, align 4
  br label %33

33:                                               ; preds = %127, %27
  %34 = load i32, i32* %22, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %130

37:                                               ; preds = %33
  %38 = load i8**, i8*** %13, align 8
  %39 = load i32, i32* %22, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %126

47:                                               ; preds = %37
  %48 = load i8**, i8*** %13, align 8
  %49 = load i32, i32* %22, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %23, align 1
  %55 = load i8, i8* %23, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %125 [
    i32 114, label %57
    i32 108, label %67
    i32 104, label %100
    i32 113, label %101
    i32 116, label %103
    i32 112, label %105
    i32 100, label %115
  ]

57:                                               ; preds = %47
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %22, align 4
  %60 = load i8**, i8*** %13, align 8
  %61 = load i32, i32* %22, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @atoi(i8* noundef %64) #19
  %66 = load i32*, i32** %15, align 8
  store i32 %65, i32* %66, align 4
  br label %125

67:                                               ; preds = %47
  %68 = load i8**, i8*** %13, align 8
  %69 = load i32, i32* %22, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 97
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load i8**, i8*** %13, align 8
  %79 = load i32, i32* %22, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call contract double @atof(i8* noundef %83) #19
  %85 = fptrunc double %84 to float
  %86 = load float*, float** %16, align 8
  store float %85, float* %86, align 4
  br label %97

87:                                               ; preds = %67
  %88 = load i8**, i8*** %13, align 8
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call contract double @atof(i8* noundef %93) #19
  %95 = fptrunc double %94 to float
  %96 = load float*, float** %17, align 8
  store float %95, float* %96, align 4
  br label %97

97:                                               ; preds = %87, %77
  %98 = load i32, i32* %22, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %22, align 4
  br label %125

100:                                              ; preds = %47
  store i32 1, i32* %11, align 4
  br label %148

101:                                              ; preds = %47
  %102 = load i32*, i32** %18, align 8
  store i32 1, i32* %102, align 4
  br label %125

103:                                              ; preds = %47
  %104 = load i32*, i32** %19, align 8
  store i32 1, i32* %104, align 4
  br label %125

105:                                              ; preds = %47
  %106 = load i32, i32* %22, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %22, align 4
  %108 = load i8**, i8*** %13, align 8
  %109 = load i32, i32* %22, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @atoi(i8* noundef %112) #19
  %114 = load i32*, i32** %20, align 8
  store i32 %113, i32* %114, align 4
  br label %125

115:                                              ; preds = %47
  %116 = load i32, i32* %22, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %22, align 4
  %118 = load i8**, i8*** %13, align 8
  %119 = load i32, i32* %22, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @atoi(i8* noundef %122) #19
  %124 = load i32*, i32** %21, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %47, %115, %105, %103, %101, %97, %57
  br label %126

126:                                              ; preds = %125, %37
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %22, align 4
  br label %33, !llvm.loop !10

130:                                              ; preds = %33
  %131 = load i32*, i32** %21, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32*, i32** %20, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134, %130
  %139 = load i32*, i32** %20, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32*, i32** %21, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142, %134
  store i32 1, i32* %11, align 4
  br label %148

147:                                              ; preds = %142, %138
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %147, %146, %100, %26
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10printUsagev() #5 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.9, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.19, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z8loadDataPcRSt6vectorI6recordSaIS1_EERS0_I7latLongSaIS5_EE(i8* noundef %0, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %1, %"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %2) #5 {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca %"class.std::vector.0"*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.record, align 4
  %13 = alloca %struct.latLong, align 4
  %14 = alloca [6 x i8], align 1
  store i8* %0, i8** %4, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %5, align 8
  store %"class.std::vector.0"* %2, %"class.std::vector.0"** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct._IO_FILE* @fopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %7, align 8
  br label %17

17:                                               ; preds = %105, %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %19 = call i32 @feof(%struct._IO_FILE* noundef %18) #16
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %108

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 0) #17
  unreachable

30:                                               ; preds = %22
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %32 = call %struct._IO_FILE* @fopen(i8* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %32, %struct._IO_FILE** %8, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %34 = icmp ne %struct._IO_FILE* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %95, %37
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %40 = call i32 @feof(%struct._IO_FILE* noundef %39) #16
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %105

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.record, %struct.record* %12, i32 0, i32 0
  %45 = getelementptr inbounds [53 x i8], [53 x i8]* %44, i64 0, i64 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %47 = call i8* @fgets(i8* noundef %45, i32 noundef 49, %struct._IO_FILE* noundef %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %49 = call i32 @fgetc(%struct._IO_FILE* noundef %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %51 = call i32 @feof(%struct._IO_FILE* noundef %50) #16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %105

54:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 5
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.record, %struct.record* %12, i32 0, i32 0
  %60 = getelementptr inbounds [53 x i8], [53 x i8]* %59, i64 0, i64 0
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 28
  %65 = load i8, i8* %64, align 1
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 %67
  store i8 %65, i8* %68, align 1
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %55, !llvm.loop !11

72:                                               ; preds = %55
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 5
  store i8 0, i8* %73, align 1
  %74 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %75 = call contract double @atof(i8* noundef %74) #19
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds %struct.latLong, %struct.latLong* %13, i32 0, i32 0
  store float %76, float* %77, align 4
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %92, %72
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 5
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.record, %struct.record* %12, i32 0, i32 0
  %83 = getelementptr inbounds [53 x i8], [53 x i8]* %82, i64 0, i64 0
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 33
  %88 = load i8, i8* %87, align 1
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 %90
  store i8 %88, i8* %91, align 1
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %78, !llvm.loop !12

95:                                               ; preds = %78
  %96 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 5
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %98 = call contract double @atof(i8* noundef %97) #19
  %99 = fptrunc double %98 to float
  %100 = getelementptr inbounds %struct.latLong, %struct.latLong* %13, i32 0, i32 1
  store float %99, float* %100, align 4
  %101 = load %"class.std::vector.0"*, %"class.std::vector.0"** %6, align 8
  call void @_ZNSt6vectorI7latLongSaIS0_EE9push_backERKS0_(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %101, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %13)
  %102 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  call void @_ZNSt6vectorI6recordSaIS0_EE9push_backERKS0_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %102, %struct.record* noundef nonnull align 4 dereferenceable(60) %12)
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %38, !llvm.loop !13

105:                                              ; preds = %53, %38
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %107 = call i32 @fclose(%struct._IO_FILE* noundef %106)
  br label %17, !llvm.loop !14

108:                                              ; preds = %17
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %110 = call i32 @fclose(%struct._IO_FILE* noundef %109)
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef, i32 noundef) #6

declare i32 @hipDeviceSynchronize() #6

declare i32 @hipMemGetInfo(i64* noundef, i64* noundef) #6

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 {
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

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #8

declare i32 @hipMalloc(i8** noundef, i64 noundef) #6

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.std::vector.0"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector.0"*, %"class.std::vector.0"** %3, align 8
  %6 = bitcast %"class.std::vector.0"* %5 to %"struct.std::_Vector_base.1"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %7, i32 0, i32 0
  %9 = load %struct.latLong*, %struct.latLong** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.latLong, %struct.latLong* %9, i64 %10
  ret %struct.latLong* %11
}

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt4sqrtf(float noundef %0) #4 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @sqrtf(float noundef %3) #16
  ret float %4
}

declare i32 @printf(i8* noundef, ...) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z10findLowestRSt6vectorI6recordSaIS0_EEPfii(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, float* noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.record*, align 8
  %14 = alloca float, align 4
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %96, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %99

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %42, %19
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load float*, float** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  store float %31, float* %11, align 4
  %32 = load float, float* %11, align 4
  %33 = load float*, float** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fcmp contract olt float %32, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %39, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %22, !llvm.loop !15

45:                                               ; preds = %22
  %46 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %46, i64 noundef %48) #16
  store %struct.record* %49, %struct.record** %13, align 8
  %50 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %50, i64 noundef %52) #16
  %54 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %54, i64 noundef %56) #16
  %58 = bitcast %struct.record* %57 to i8*
  %59 = bitcast %struct.record* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 60, i1 false)
  %60 = load %struct.record*, %struct.record** %13, align 8
  %61 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %63) #16
  %65 = bitcast %struct.record* %64 to i8*
  %66 = bitcast %struct.record* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 60, i1 false)
  %67 = load float*, float** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  store float %71, float* %14, align 4
  %72 = load float*, float** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  store float %76, float* %80, align 4
  %81 = load float, float* %14, align 4
  %82 = load float*, float** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  store float %81, float* %85, align 4
  %86 = load float*, float** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %91, i64 noundef %93) #16
  %95 = getelementptr inbounds %struct.record, %struct.record* %94, i32 0, i32 1
  store float %90, float* %95, align 4
  br label %96

96:                                               ; preds = %45
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %15, !llvm.loop !16

99:                                               ; preds = %15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %7, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.record, %struct.record* %9, i64 %10
  ret %struct.record* %11
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #9

declare i32 @hipFree(i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7latLongSaIS0_EED2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %struct.latLong*, %struct.latLong** %6, align 8
  %8 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %9, i32 0, i32 1
  %11 = load %struct.latLong*, %struct.latLong** %10, align 8
  %12 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %13 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %12) #16
  invoke void @_ZSt8_DestroyIP7latLongS0_EvT_S2_RSaIT0_E(%struct.latLong* noundef %7, %struct.latLong* noundef %11, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %13)
          to label %14 unwind label %16

14:                                               ; preds = %1
  %15 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseI7latLongSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %15) #16
  ret void

16:                                               ; preds = %1
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6recordSaIS0_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %struct.record*, %struct.record** %6, align 8
  %8 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %9, i32 0, i32 1
  %11 = load %struct.record*, %struct.record** %10, align 8
  %12 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %13 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %12) #16
  invoke void @_ZSt8_DestroyIP6recordS0_EvT_S2_RSaIT0_E(%struct.record* noundef %7, %struct.record* noundef %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13)
          to label %14 unwind label %16

14:                                               ; preds = %1
  %15 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI6recordSaIS0_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %15) #16
  ret void

16:                                               ; preds = %1
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #17
  unreachable
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #6

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #9

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #6

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #6

declare i32 @fgetc(%struct._IO_FILE* noundef) #6

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7latLongSaIS0_EE9push_backERKS0_(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %1) #5 comdat align 2 {
  %3 = alloca %"class.std::vector.0"*, align 8
  %4 = alloca %struct.latLong*, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  %6 = load %"class.std::vector.0"*, %"class.std::vector.0"** %3, align 8
  %7 = bitcast %"class.std::vector.0"* %6 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %8, i32 0, i32 1
  %10 = load %struct.latLong*, %struct.latLong** %9, align 8
  %11 = bitcast %"class.std::vector.0"* %6 to %"struct.std::_Vector_base.1"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %12, i32 0, i32 2
  %14 = load %struct.latLong*, %struct.latLong** %13, align 8
  %15 = icmp ne %struct.latLong* %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = bitcast %"class.std::vector.0"* %6 to %"struct.std::_Vector_base.1"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %17, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %18 to %"class.std::allocator.2"*
  %20 = bitcast %"class.std::vector.0"* %6 to %"struct.std::_Vector_base.1"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %21, i32 0, i32 1
  %23 = load %struct.latLong*, %struct.latLong** %22, align 8
  %24 = load %struct.latLong*, %struct.latLong** %4, align 8
  call void @_ZNSt16allocator_traitsISaI7latLongEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %19, %struct.latLong* noundef %23, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %24)
  %25 = bitcast %"class.std::vector.0"* %6 to %"struct.std::_Vector_base.1"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %26, i32 0, i32 1
  %28 = load %struct.latLong*, %struct.latLong** %27, align 8
  %29 = getelementptr inbounds %struct.latLong, %struct.latLong* %28, i32 1
  store %struct.latLong* %29, %struct.latLong** %27, align 8
  br label %36

30:                                               ; preds = %2
  %31 = call %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE3endEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %6) #16
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.latLong* %31, %struct.latLong** %32, align 8
  %33 = load %struct.latLong*, %struct.latLong** %4, align 8
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %35 = load %struct.latLong*, %struct.latLong** %34, align 8
  call void @_ZNSt6vectorI7latLongSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %6, %struct.latLong* %35, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %33)
  br label %36

36:                                               ; preds = %30, %16
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6recordSaIS0_EE9push_backERKS0_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %struct.record* noundef nonnull align 4 dereferenceable(60) %1) #5 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %struct.record*, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  %6 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %7 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %8, i32 0, i32 1
  %10 = load %struct.record*, %struct.record** %9, align 8
  %11 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %12, i32 0, i32 2
  %14 = load %struct.record*, %struct.record** %13, align 8
  %15 = icmp ne %struct.record* %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %18 to %"class.std::allocator"*
  %20 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %21, i32 0, i32 1
  %23 = load %struct.record*, %struct.record** %22, align 8
  %24 = load %struct.record*, %struct.record** %4, align 8
  call void @_ZNSt16allocator_traitsISaI6recordEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19, %struct.record* noundef %23, %struct.record* noundef nonnull align 4 dereferenceable(60) %24)
  %25 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %26, i32 0, i32 1
  %28 = load %struct.record*, %struct.record** %27, align 8
  %29 = getelementptr inbounds %struct.record, %struct.record* %28, i32 1
  store %struct.record* %29, %struct.record** %27, align 8
  br label %36

30:                                               ; preds = %2
  %31 = call %struct.record* @_ZNSt6vectorI6recordSaIS0_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %6) #16
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %5, i32 0, i32 0
  store %struct.record* %31, %struct.record** %32, align 8
  %33 = load %struct.record*, %struct.record** %4, align 8
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %5, i32 0, i32 0
  %35 = load %struct.record*, %struct.record** %34, align 8
  call void @_ZNSt6vectorI6recordSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %6, %struct.record* %35, %struct.record* noundef nonnull align 4 dereferenceable(60) %33)
  br label %36

36:                                               ; preds = %30, %16
  ret void
}

declare i32 @fclose(%struct._IO_FILE* noundef) #6

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #9

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #10

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #9

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %4)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #16
  call void @_ZSt9terminatev() #17
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %0, %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"*, %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaI6recordEC2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  %5 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %3, i32 0, i32 0
  store %struct.record* null, %struct.record** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %3, i32 0, i32 1
  store %struct.record* null, %struct.record** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %3, i32 0, i32 2
  store %struct.record* null, %struct.record** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI6recordEC2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI6recordEC2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordEC2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP6recordS0_EvT_S2_RSaIT0_E(%struct.record* noundef %0, %struct.record* noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #5 comdat {
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %struct.record* %0, %struct.record** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %struct.record*, %struct.record** %4, align 8
  %8 = load %struct.record*, %struct.record** %5, align 8
  call void @_ZSt8_DestroyIP6recordEvT_S2_(%struct.record* noundef %7, %struct.record* noundef %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %4, i32 0, i32 0
  %6 = load %struct.record*, %struct.record** %5, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %7, i32 0, i32 2
  %9 = load %struct.record*, %struct.record** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %10, i32 0, i32 0
  %12 = load %struct.record*, %struct.record** %11, align 8
  %13 = ptrtoint %struct.record* %9 to i64
  %14 = ptrtoint %struct.record* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 60
  invoke void @_ZNSt12_Vector_baseI6recordSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %3, %struct.record* noundef %6, i64 noundef %16)
          to label %17 unwind label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %18) #16
  ret void

19:                                               ; preds = %1
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP6recordEvT_S2_(%struct.record* noundef %0, %struct.record* noundef %1) #5 comdat {
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  %5 = load %struct.record*, %struct.record** %3, align 8
  %6 = load %struct.record*, %struct.record** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6recordEEvT_S4_(%struct.record* noundef %5, %struct.record* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6recordEEvT_S4_(%struct.record* noundef %0, %struct.record* noundef %1) #4 comdat align 2 {
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, %struct.record* noundef %1, i64 noundef %2) #5 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %8 = load %struct.record*, %struct.record** %5, align 8
  %9 = icmp ne %struct.record* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %11 to %"class.std::allocator"*
  %13 = load %struct.record*, %struct.record** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZNSt16allocator_traitsISaI6recordEE10deallocateERS1_PS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12, %struct.record* noundef %13, i64 noundef %14)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %0, %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"*, %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaI6recordED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI6recordEE10deallocateERS1_PS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, i64 noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %struct.record*, %struct.record** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6recordE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %8, %struct.record* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %struct.record*, %struct.record** %5, align 8
  %9 = bitcast %struct.record* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI6recordED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI6recordED2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordED2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7latLongSaIS0_EEC2Ev(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %0, %"struct.std::_Vector_base.1"** %2, align 8
  %3 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI7latLongSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7latLongSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %0, %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"*, %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %3 to %"class.std::allocator.2"*
  call void @_ZNSaI7latLongEC2Ev(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %4) #16
  %5 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %3, i32 0, i32 0
  store %struct.latLong* null, %struct.latLong** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %3, i32 0, i32 1
  store %struct.latLong* null, %struct.latLong** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %3, i32 0, i32 2
  store %struct.latLong* null, %struct.latLong** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI7latLongEC2Ev(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %2, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorI7latLongEC2Ev(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongEC2Ev(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7latLongS0_EvT_S2_RSaIT0_E(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %2) #5 comdat {
  %4 = alloca %struct.latLong*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca %"class.std::allocator.2"*, align 8
  store %struct.latLong* %0, %struct.latLong** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store %"class.std::allocator.2"* %2, %"class.std::allocator.2"** %6, align 8
  %7 = load %struct.latLong*, %struct.latLong** %4, align 8
  %8 = load %struct.latLong*, %struct.latLong** %5, align 8
  call void @_ZSt8_DestroyIP7latLongEvT_S2_(%struct.latLong* noundef %7, %struct.latLong* noundef %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %0, %"struct.std::_Vector_base.1"** %2, align 8
  %3 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %4 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7latLongSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %0, %"struct.std::_Vector_base.1"** %2, align 8
  %3 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %4, i32 0, i32 0
  %6 = load %struct.latLong*, %struct.latLong** %5, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %7, i32 0, i32 2
  %9 = load %struct.latLong*, %struct.latLong** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %10, i32 0, i32 0
  %12 = load %struct.latLong*, %struct.latLong** %11, align 8
  %13 = ptrtoint %struct.latLong* %9 to i64
  %14 = ptrtoint %struct.latLong* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  invoke void @_ZNSt12_Vector_baseI7latLongSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %3, %struct.latLong* noundef %6, i64 noundef %16)
          to label %17 unwind label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI7latLongSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %18) #16
  ret void

19:                                               ; preds = %1
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7latLongEvT_S2_(%struct.latLong* noundef %0, %struct.latLong* noundef %1) #5 comdat {
  %3 = alloca %struct.latLong*, align 8
  %4 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  %5 = load %struct.latLong*, %struct.latLong** %3, align 8
  %6 = load %struct.latLong*, %struct.latLong** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP7latLongEEvT_S4_(%struct.latLong* noundef %5, %struct.latLong* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP7latLongEEvT_S4_(%struct.latLong* noundef %0, %struct.latLong* noundef %1) #4 comdat align 2 {
  %3 = alloca %struct.latLong*, align 8
  %4 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7latLongSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0, %struct.latLong* noundef %1, i64 noundef %2) #5 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.1"*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %0, %"struct.std::_Vector_base.1"** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %4, align 8
  %8 = load %struct.latLong*, %struct.latLong** %5, align 8
  %9 = icmp ne %struct.latLong* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %11 to %"class.std::allocator.2"*
  %13 = load %struct.latLong*, %struct.latLong** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZNSt16allocator_traitsISaI7latLongEE10deallocateERS1_PS0_m(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %12, %struct.latLong* noundef %13, i64 noundef %14)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7latLongSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %0, %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"*, %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %3 to %"class.std::allocator.2"*
  call void @_ZNSaI7latLongED2Ev(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7latLongEE10deallocateERS1_PS0_m(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, i64 noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.std::allocator.2"*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %4, align 8
  %8 = bitcast %"class.std::allocator.2"* %7 to %"class.__gnu_cxx::new_allocator.3"*
  %9 = load %struct.latLong*, %struct.latLong** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI7latLongE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %8, %struct.latLong* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  %8 = load %struct.latLong*, %struct.latLong** %5, align 8
  %9 = bitcast %struct.latLong* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI7latLongED2Ev(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %2, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorI7latLongED2Ev(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongED2Ev(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7latLongEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %2) #5 comdat align 2 {
  %4 = alloca %"class.std::allocator.2"*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca %struct.latLong*, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  %7 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %4, align 8
  %8 = bitcast %"class.std::allocator.2"* %7 to %"class.__gnu_cxx::new_allocator.3"*
  %9 = load %struct.latLong*, %struct.latLong** %5, align 8
  %10 = load %struct.latLong*, %struct.latLong** %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI7latLongE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %8, %struct.latLong* noundef %9, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %10)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7latLongSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, %struct.latLong* %1, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %2) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.std::vector.0"*, align 8
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %struct.latLong*, align 8
  %11 = alloca %struct.latLong*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.latLong* %1, %struct.latLong** %14, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %5, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  %15 = load %"class.std::vector.0"*, %"class.std::vector.0"** %5, align 8
  %16 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  store i64 %16, i64* %7, align 8
  %17 = call %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE5beginEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %15) #16
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  store %struct.latLong* %17, %struct.latLong** %18, align 8
  %19 = call noundef i64 @_ZN9__gnu_cxxmiIP7latLongSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %9) #16
  store i64 %19, i64* %8, align 8
  %20 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %21 = load i64, i64* %7, align 8
  %22 = call noundef %struct.latLong* @_ZNSt12_Vector_baseI7latLongSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %21)
  store %struct.latLong* %22, %struct.latLong** %10, align 8
  %23 = load %struct.latLong*, %struct.latLong** %10, align 8
  store %struct.latLong* %23, %struct.latLong** %11, align 8
  %24 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %25 to %"class.std::allocator.2"*
  %27 = load %struct.latLong*, %struct.latLong** %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.latLong, %struct.latLong* %27, i64 %28
  %30 = load %struct.latLong*, %struct.latLong** %6, align 8
  invoke void @_ZNSt16allocator_traitsISaI7latLongEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %26, %struct.latLong* noundef %29, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %30)
          to label %31 unwind label %56

31:                                               ; preds = %3
  store %struct.latLong* null, %struct.latLong** %11, align 8
  %32 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %33 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %33, i32 0, i32 0
  %35 = load %struct.latLong*, %struct.latLong** %34, align 8
  %36 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #16
  %37 = load %struct.latLong*, %struct.latLong** %36, align 8
  %38 = load %struct.latLong*, %struct.latLong** %10, align 8
  %39 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %40 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %39) #16
  %41 = invoke noundef %struct.latLong* @_ZSt34__uninitialized_move_if_noexcept_aIP7latLongS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.latLong* noundef %35, %struct.latLong* noundef %37, %struct.latLong* noundef %38, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %40)
          to label %42 unwind label %56

42:                                               ; preds = %31
  store %struct.latLong* %41, %struct.latLong** %11, align 8
  %43 = load %struct.latLong*, %struct.latLong** %11, align 8
  %44 = getelementptr inbounds %struct.latLong, %struct.latLong* %43, i32 1
  store %struct.latLong* %44, %struct.latLong** %11, align 8
  %45 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #16
  %46 = load %struct.latLong*, %struct.latLong** %45, align 8
  %47 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %48, i32 0, i32 1
  %50 = load %struct.latLong*, %struct.latLong** %49, align 8
  %51 = load %struct.latLong*, %struct.latLong** %11, align 8
  %52 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %53 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %52) #16
  %54 = invoke noundef %struct.latLong* @_ZSt34__uninitialized_move_if_noexcept_aIP7latLongS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.latLong* noundef %46, %struct.latLong* noundef %50, %struct.latLong* noundef %51, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %53)
          to label %55 unwind label %56

55:                                               ; preds = %42
  store %struct.latLong* %54, %struct.latLong** %11, align 8
  br label %89

56:                                               ; preds = %42, %31, %3
  %57 = landingpad { i8*, i32 }
          catch i8* null
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %12, align 8
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %12, align 8
  %62 = call i8* @__cxa_begin_catch(i8* %61) #16
  %63 = load %struct.latLong*, %struct.latLong** %11, align 8
  %64 = icmp ne %struct.latLong* %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %67 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %66, i32 0, i32 0
  %68 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %67 to %"class.std::allocator.2"*
  %69 = load %struct.latLong*, %struct.latLong** %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.latLong, %struct.latLong* %69, i64 %70
  invoke void @_ZNSt16allocator_traitsISaI7latLongEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %68, %struct.latLong* noundef %71)
          to label %72 unwind label %73

72:                                               ; preds = %65
  br label %83

73:                                               ; preds = %87, %83, %77, %65
  %74 = landingpad { i8*, i32 }
          cleanup
  %75 = extractvalue { i8*, i32 } %74, 0
  store i8* %75, i8** %12, align 8
  %76 = extractvalue { i8*, i32 } %74, 1
  store i32 %76, i32* %13, align 4
  invoke void @__cxa_end_catch()
          to label %88 unwind label %136

77:                                               ; preds = %60
  %78 = load %struct.latLong*, %struct.latLong** %10, align 8
  %79 = load %struct.latLong*, %struct.latLong** %11, align 8
  %80 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %81 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %80) #16
  invoke void @_ZSt8_DestroyIP7latLongS0_EvT_S2_RSaIT0_E(%struct.latLong* noundef %78, %struct.latLong* noundef %79, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %81)
          to label %82 unwind label %73

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %72
  %84 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %85 = load %struct.latLong*, %struct.latLong** %10, align 8
  %86 = load i64, i64* %7, align 8
  invoke void @_ZNSt12_Vector_baseI7latLongSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %84, %struct.latLong* noundef %85, i64 noundef %86)
          to label %87 unwind label %73

87:                                               ; preds = %83
  invoke void @__cxa_rethrow() #20
          to label %139 unwind label %73

88:                                               ; preds = %73
  br label %131

89:                                               ; preds = %55
  %90 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %91 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %90, i32 0, i32 0
  %92 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %91, i32 0, i32 0
  %93 = load %struct.latLong*, %struct.latLong** %92, align 8
  %94 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %95 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %94, i32 0, i32 0
  %96 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %95, i32 0, i32 1
  %97 = load %struct.latLong*, %struct.latLong** %96, align 8
  %98 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %99 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %98) #16
  call void @_ZSt8_DestroyIP7latLongS0_EvT_S2_RSaIT0_E(%struct.latLong* noundef %93, %struct.latLong* noundef %97, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %99)
  %100 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %101 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %102 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %101, i32 0, i32 0
  %103 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %102, i32 0, i32 0
  %104 = load %struct.latLong*, %struct.latLong** %103, align 8
  %105 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %106 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %105, i32 0, i32 0
  %107 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %106, i32 0, i32 2
  %108 = load %struct.latLong*, %struct.latLong** %107, align 8
  %109 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %110 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %109, i32 0, i32 0
  %111 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %110, i32 0, i32 0
  %112 = load %struct.latLong*, %struct.latLong** %111, align 8
  %113 = ptrtoint %struct.latLong* %108 to i64
  %114 = ptrtoint %struct.latLong* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 8
  call void @_ZNSt12_Vector_baseI7latLongSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %100, %struct.latLong* noundef %104, i64 noundef %116)
  %117 = load %struct.latLong*, %struct.latLong** %10, align 8
  %118 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %119 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %118, i32 0, i32 0
  %120 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %119, i32 0, i32 0
  store %struct.latLong* %117, %struct.latLong** %120, align 8
  %121 = load %struct.latLong*, %struct.latLong** %11, align 8
  %122 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %123 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %122, i32 0, i32 0
  %124 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %123, i32 0, i32 1
  store %struct.latLong* %121, %struct.latLong** %124, align 8
  %125 = load %struct.latLong*, %struct.latLong** %10, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.latLong, %struct.latLong* %125, i64 %126
  %128 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %129 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %128, i32 0, i32 0
  %130 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %129, i32 0, i32 2
  store %struct.latLong* %127, %struct.latLong** %130, align 8
  ret void

131:                                              ; preds = %88
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* %13, align 4
  %134 = insertvalue { i8*, i32 } undef, i8* %132, 0
  %135 = insertvalue { i8*, i32 } %134, i32 %133, 1
  resume { i8*, i32 } %135

136:                                              ; preds = %73
  %137 = landingpad { i8*, i32 }
          catch i8* null
  %138 = extractvalue { i8*, i32 } %137, 0
  call void @__clang_call_terminate(i8* %138) #17
  unreachable

139:                                              ; preds = %87
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE3endEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %3, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %6, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %struct.latLong** noundef nonnull align 8 dereferenceable(8) %7) #16
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %9 = load %struct.latLong*, %struct.latLong** %8, align 8
  ret %struct.latLong* %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca %struct.latLong*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  %8 = load %struct.latLong*, %struct.latLong** %5, align 8
  %9 = bitcast %struct.latLong* %8 to i8*
  %10 = bitcast i8* %9 to %struct.latLong*
  %11 = load %struct.latLong*, %struct.latLong** %6, align 8
  %12 = bitcast %struct.latLong* %10 to i8*
  %13 = bitcast %struct.latLong* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i8* noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.std::vector.0"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector.0"*, %"class.std::vector.0"** %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %11 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* noundef %16) #20
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %19 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #16
  store i64 %19, i64* %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImEUa9enable_ifILb1EERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP7latLongSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #16
  %7 = load %struct.latLong*, %struct.latLong** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #16
  %10 = load %struct.latLong*, %struct.latLong** %9, align 8
  %11 = ptrtoint %struct.latLong* %7 to i64
  %12 = ptrtoint %struct.latLong* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE5beginEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %3, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %6, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %struct.latLong** noundef nonnull align 8 dereferenceable(8) %7) #16
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %9 = load %struct.latLong*, %struct.latLong** %8, align 8
  ret %struct.latLong* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt12_Vector_baseI7latLongSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #5 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base.1"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %0, %"struct.std::_Vector_base.1"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %9 to %"class.std::allocator.2"*
  %11 = load i64, i64* %4, align 8
  %12 = call noundef %struct.latLong* @_ZNSt16allocator_traitsISaI7latLongEE8allocateERS1_m(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %10, i64 noundef %11)
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi %struct.latLong* [ %12, %8 ], [ null, %13 ]
  ret %struct.latLong* %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt34__uninitialized_move_if_noexcept_aIP7latLongS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %3) #5 comdat {
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca %struct.latLong*, align 8
  %8 = alloca %"class.std::allocator.2"*, align 8
  %9 = alloca %"class.std::move_iterator", align 8
  %10 = alloca %"class.std::move_iterator", align 8
  store %struct.latLong* %0, %struct.latLong** %5, align 8
  store %struct.latLong* %1, %struct.latLong** %6, align 8
  store %struct.latLong* %2, %struct.latLong** %7, align 8
  store %"class.std::allocator.2"* %3, %"class.std::allocator.2"** %8, align 8
  %11 = load %struct.latLong*, %struct.latLong** %5, align 8
  %12 = call %struct.latLong* @_ZSt32__make_move_if_noexcept_iteratorI7latLongSt13move_iteratorIPS0_EET0_PT_(%struct.latLong* noundef %11)
  %13 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %9, i32 0, i32 0
  store %struct.latLong* %12, %struct.latLong** %13, align 8
  %14 = load %struct.latLong*, %struct.latLong** %6, align 8
  %15 = call %struct.latLong* @_ZSt32__make_move_if_noexcept_iteratorI7latLongSt13move_iteratorIPS0_EET0_PT_(%struct.latLong* noundef %14)
  %16 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %10, i32 0, i32 0
  store %struct.latLong* %15, %struct.latLong** %16, align 8
  %17 = load %struct.latLong*, %struct.latLong** %7, align 8
  %18 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %8, align 8
  %19 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %9, i32 0, i32 0
  %20 = load %struct.latLong*, %struct.latLong** %19, align 8
  %21 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %10, i32 0, i32 0
  %22 = load %struct.latLong*, %struct.latLong** %21, align 8
  %23 = call noundef %struct.latLong* @_ZSt22__uninitialized_copy_aISt13move_iteratorIP7latLongES2_S1_ET0_T_S5_S4_RSaIT1_E(%struct.latLong* %20, %struct.latLong* %22, %struct.latLong* noundef %17, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %18)
  ret %struct.latLong* %23
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  ret %struct.latLong** %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7latLongEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1) #5 comdat align 2 {
  %3 = alloca %"class.std::allocator.2"*, align 8
  %4 = alloca %struct.latLong*, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  %5 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %3, align 8
  %6 = bitcast %"class.std::allocator.2"* %5 to %"class.__gnu_cxx::new_allocator.3"*
  %7 = load %struct.latLong*, %struct.latLong** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI7latLongE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %6, %struct.latLong* noundef %7)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %4) #16
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI7latLongEE8max_sizeERKS1_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %5) #16
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %5, i32 0, i32 1
  %7 = load %struct.latLong*, %struct.latLong** %6, align 8
  %8 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %9, i32 0, i32 0
  %11 = load %struct.latLong*, %struct.latLong** %10, align 8
  %12 = ptrtoint %struct.latLong* %7 to i64
  %13 = ptrtoint %struct.latLong* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  ret i64 %15
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) #14

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImEUa9enable_ifILb1EERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64*, i64** %4, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i64*, i64** %3, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64* [ %11, %10 ], [ %13, %12 ]
  ret i64* %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI7latLongEE8max_sizeERKS1_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %2, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7latLongE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %0, %"struct.std::_Vector_base.1"** %2, align 8
  %3 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %4 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7latLongE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %struct.latLong** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %struct.latLong**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %struct.latLong** %1, %struct.latLong*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %7 = load %struct.latLong**, %struct.latLong*** %4, align 8
  %8 = load %struct.latLong*, %struct.latLong** %7, align 8
  store %struct.latLong* %8, %struct.latLong** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt16allocator_traitsISaI7latLongEE8allocateERS1_m(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #5 comdat align 2 {
  %3 = alloca %"class.std::allocator.2"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %3, align 8
  %6 = bitcast %"class.std::allocator.2"* %5 to %"class.__gnu_cxx::new_allocator.3"*
  %7 = load i64, i64* %4, align 8
  %8 = call noundef %struct.latLong* @_ZN9__gnu_cxx13new_allocatorI7latLongE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %6, i64 noundef %7, i8* noundef null)
  ret %struct.latLong* %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZN9__gnu_cxx13new_allocatorI7latLongE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7latLongE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %7) #16
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 8
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #21
  %16 = bitcast i8* %15 to %struct.latLong*
  ret %struct.latLong* %16
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #15

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt22__uninitialized_copy_aISt13move_iteratorIP7latLongES2_S1_ET0_T_S5_S4_RSaIT1_E(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %3) #5 comdat {
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %"class.std::move_iterator", align 8
  %7 = alloca %struct.latLong*, align 8
  %8 = alloca %"class.std::allocator.2"*, align 8
  %9 = alloca %"class.std::move_iterator", align 8
  %10 = alloca %"class.std::move_iterator", align 8
  %11 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %5, i32 0, i32 0
  store %struct.latLong* %0, %struct.latLong** %11, align 8
  %12 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %6, i32 0, i32 0
  store %struct.latLong* %1, %struct.latLong** %12, align 8
  store %struct.latLong* %2, %struct.latLong** %7, align 8
  store %"class.std::allocator.2"* %3, %"class.std::allocator.2"** %8, align 8
  %13 = bitcast %"class.std::move_iterator"* %9 to i8*
  %14 = bitcast %"class.std::move_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.std::move_iterator"* %10 to i8*
  %16 = bitcast %"class.std::move_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.latLong*, %struct.latLong** %7, align 8
  %18 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %9, i32 0, i32 0
  %19 = load %struct.latLong*, %struct.latLong** %18, align 8
  %20 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %10, i32 0, i32 0
  %21 = load %struct.latLong*, %struct.latLong** %20, align 8
  %22 = call noundef %struct.latLong* @_ZSt18uninitialized_copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_(%struct.latLong* %19, %struct.latLong* %21, %struct.latLong* noundef %17)
  ret %struct.latLong* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %struct.latLong* @_ZSt32__make_move_if_noexcept_iteratorI7latLongSt13move_iteratorIPS0_EET0_PT_(%struct.latLong* noundef %0) #5 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %3, align 8
  %4 = load %struct.latLong*, %struct.latLong** %3, align 8
  call void @_ZNSt13move_iteratorIP7latLongEC2ES1_(%"class.std::move_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %struct.latLong* noundef %4)
  %5 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %2, i32 0, i32 0
  %6 = load %struct.latLong*, %struct.latLong** %5, align 8
  ret %struct.latLong* %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt18uninitialized_copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2) #5 comdat {
  %4 = alloca %"class.std::move_iterator", align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.std::move_iterator", align 8
  %9 = alloca %"class.std::move_iterator", align 8
  %10 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %4, i32 0, i32 0
  store %struct.latLong* %0, %struct.latLong** %10, align 8
  %11 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %5, i32 0, i32 0
  store %struct.latLong* %1, %struct.latLong** %11, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  store i8 1, i8* %7, align 1
  %12 = bitcast %"class.std::move_iterator"* %8 to i8*
  %13 = bitcast %"class.std::move_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = bitcast %"class.std::move_iterator"* %9 to i8*
  %15 = bitcast %"class.std::move_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.latLong*, %struct.latLong** %6, align 8
  %17 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %8, i32 0, i32 0
  %18 = load %struct.latLong*, %struct.latLong** %17, align 8
  %19 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %9, i32 0, i32 0
  %20 = load %struct.latLong*, %struct.latLong** %19, align 8
  %21 = call noundef %struct.latLong* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP7latLongES4_EET0_T_S7_S6_(%struct.latLong* %18, %struct.latLong* %20, %struct.latLong* noundef %16)
  ret %struct.latLong* %21
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP7latLongES4_EET0_T_S7_S6_(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.std::move_iterator", align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca %"class.std::move_iterator", align 8
  %8 = alloca %"class.std::move_iterator", align 8
  %9 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %4, i32 0, i32 0
  store %struct.latLong* %0, %struct.latLong** %9, align 8
  %10 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %5, i32 0, i32 0
  store %struct.latLong* %1, %struct.latLong** %10, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  %11 = bitcast %"class.std::move_iterator"* %7 to i8*
  %12 = bitcast %"class.std::move_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %"class.std::move_iterator"* %8 to i8*
  %14 = bitcast %"class.std::move_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct.latLong*, %struct.latLong** %6, align 8
  %16 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %7, i32 0, i32 0
  %17 = load %struct.latLong*, %struct.latLong** %16, align 8
  %18 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %8, i32 0, i32 0
  %19 = load %struct.latLong*, %struct.latLong** %18, align 8
  %20 = call noundef %struct.latLong* @_ZSt4copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_(%struct.latLong* %17, %struct.latLong* %19, %struct.latLong* noundef %15)
  ret %struct.latLong* %20
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt4copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2) #5 comdat {
  %4 = alloca %"class.std::move_iterator", align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca %"class.std::move_iterator", align 8
  %8 = alloca %"class.std::move_iterator", align 8
  %9 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %4, i32 0, i32 0
  store %struct.latLong* %0, %struct.latLong** %9, align 8
  %10 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %5, i32 0, i32 0
  store %struct.latLong* %1, %struct.latLong** %10, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  %11 = bitcast %"class.std::move_iterator"* %7 to i8*
  %12 = bitcast %"class.std::move_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %7, i32 0, i32 0
  %14 = load %struct.latLong*, %struct.latLong** %13, align 8
  %15 = call noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.latLong* %14)
  %16 = bitcast %"class.std::move_iterator"* %8 to i8*
  %17 = bitcast %"class.std::move_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %8, i32 0, i32 0
  %19 = load %struct.latLong*, %struct.latLong** %18, align 8
  %20 = call noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.latLong* %19)
  %21 = load %struct.latLong*, %struct.latLong** %6, align 8
  %22 = call noundef %struct.latLong* @_ZSt14__copy_move_a2ILb1EP7latLongS1_ET1_T0_S3_S2_(%struct.latLong* noundef %15, %struct.latLong* noundef %20, %struct.latLong* noundef %21)
  ret %struct.latLong* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt14__copy_move_a2ILb1EP7latLongS1_ET1_T0_S3_S2_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2) #5 comdat {
  %4 = alloca %struct.latLong*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  %7 = load %struct.latLong*, %struct.latLong** %4, align 8
  %8 = call noundef %struct.latLong* @_ZSt12__niter_baseIP7latLongET_S2_(%struct.latLong* noundef %7)
  %9 = load %struct.latLong*, %struct.latLong** %5, align 8
  %10 = call noundef %struct.latLong* @_ZSt12__niter_baseIP7latLongET_S2_(%struct.latLong* noundef %9)
  %11 = load %struct.latLong*, %struct.latLong** %6, align 8
  %12 = call noundef %struct.latLong* @_ZSt12__niter_baseIP7latLongET_S2_(%struct.latLong* noundef %11)
  %13 = call noundef %struct.latLong* @_ZSt13__copy_move_aILb1EP7latLongS1_ET1_T0_S3_S2_(%struct.latLong* noundef %8, %struct.latLong* noundef %10, %struct.latLong* noundef %12)
  ret %struct.latLong* %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.latLong* %0) #5 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %2, i32 0, i32 0
  store %struct.latLong* %0, %struct.latLong** %3, align 8
  %4 = call noundef %struct.latLong* @_ZNKSt13move_iteratorIP7latLongE4baseEv(%"class.std::move_iterator"* noundef nonnull align 8 dereferenceable(8) %2)
  %5 = call noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongET_S2_(%struct.latLong* noundef %4)
  ret %struct.latLong* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt13__copy_move_aILb1EP7latLongS1_ET1_T0_S3_S2_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2) #5 comdat {
  %4 = alloca %struct.latLong*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca i8, align 1
  store %struct.latLong* %0, %struct.latLong** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %struct.latLong*, %struct.latLong** %4, align 8
  %9 = load %struct.latLong*, %struct.latLong** %5, align 8
  %10 = load %struct.latLong*, %struct.latLong** %6, align 8
  %11 = call noundef %struct.latLong* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI7latLongEEPT_PKS4_S7_S5_(%struct.latLong* noundef %8, %struct.latLong* noundef %9, %struct.latLong* noundef %10)
  ret %struct.latLong* %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt12__niter_baseIP7latLongET_S2_(%struct.latLong* noundef %0) #4 comdat {
  %2 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %2, align 8
  %3 = load %struct.latLong*, %struct.latLong** %2, align 8
  ret %struct.latLong* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI7latLongEEPT_PKS4_S7_S5_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2) #4 comdat align 2 {
  %4 = alloca %struct.latLong*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca %struct.latLong*, align 8
  %7 = alloca i64, align 8
  store %struct.latLong* %0, %struct.latLong** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store %struct.latLong* %2, %struct.latLong** %6, align 8
  %8 = load %struct.latLong*, %struct.latLong** %5, align 8
  %9 = load %struct.latLong*, %struct.latLong** %4, align 8
  %10 = ptrtoint %struct.latLong* %8 to i64
  %11 = ptrtoint %struct.latLong* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.latLong*, %struct.latLong** %6, align 8
  %18 = bitcast %struct.latLong* %17 to i8*
  %19 = load %struct.latLong*, %struct.latLong** %4, align 8
  %20 = bitcast %struct.latLong* %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 8, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.latLong*, %struct.latLong** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.latLong, %struct.latLong* %24, i64 %25
  ret %struct.latLong* %26
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongET_S2_(%struct.latLong* noundef %0) #4 comdat {
  %2 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %2, align 8
  %3 = load %struct.latLong*, %struct.latLong** %2, align 8
  ret %struct.latLong* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNKSt13move_iteratorIP7latLongE4baseEv(%"class.std::move_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %0, %"class.std::move_iterator"** %2, align 8
  %3 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %3, i32 0, i32 0
  %5 = load %struct.latLong*, %struct.latLong** %4, align 8
  ret %struct.latLong* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIP7latLongEC2ES1_(%"class.std::move_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %struct.latLong* noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"class.std::move_iterator"*, align 8
  %4 = alloca %struct.latLong*, align 8
  store %"class.std::move_iterator"* %0, %"class.std::move_iterator"** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  %5 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %5, i32 0, i32 0
  %7 = load %struct.latLong*, %struct.latLong** %4, align 8
  store %struct.latLong* %7, %struct.latLong** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %4 = alloca %struct.latLong*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %3, align 8
  %6 = load %struct.latLong*, %struct.latLong** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI6recordEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, %struct.record* noundef nonnull align 4 dereferenceable(60) %2) #5 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca %struct.record*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %struct.record*, %struct.record** %5, align 8
  %10 = load %struct.record*, %struct.record** %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6recordE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %8, %struct.record* noundef %9, %struct.record* noundef nonnull align 4 dereferenceable(60) %10)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6recordSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %struct.record* %1, %struct.record* noundef nonnull align 4 dereferenceable(60) %2) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %10 = alloca %struct.record*, align 8
  %11 = alloca %struct.record*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %4, i32 0, i32 0
  store %struct.record* %1, %struct.record** %14, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %15 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %16 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  store i64 %16, i64* %7, align 8
  %17 = call %struct.record* @_ZNSt6vectorI6recordSaIS0_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %15) #16
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %9, i32 0, i32 0
  store %struct.record* %17, %struct.record** %18, align 8
  %19 = call noundef i64 @_ZN9__gnu_cxxmiIP6recordSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %9) #16
  store i64 %19, i64* %8, align 8
  %20 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %21 = load i64, i64* %7, align 8
  %22 = call noundef %struct.record* @_ZNSt12_Vector_baseI6recordSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %21)
  store %struct.record* %22, %struct.record** %10, align 8
  %23 = load %struct.record*, %struct.record** %10, align 8
  store %struct.record* %23, %struct.record** %11, align 8
  %24 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %25 to %"class.std::allocator"*
  %27 = load %struct.record*, %struct.record** %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.record, %struct.record* %27, i64 %28
  %30 = load %struct.record*, %struct.record** %6, align 8
  invoke void @_ZNSt16allocator_traitsISaI6recordEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %26, %struct.record* noundef %29, %struct.record* noundef nonnull align 4 dereferenceable(60) %30)
          to label %31 unwind label %56

31:                                               ; preds = %3
  store %struct.record* null, %struct.record** %11, align 8
  %32 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %33 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %33, i32 0, i32 0
  %35 = load %struct.record*, %struct.record** %34, align 8
  %36 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %4) #16
  %37 = load %struct.record*, %struct.record** %36, align 8
  %38 = load %struct.record*, %struct.record** %10, align 8
  %39 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %40 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %39) #16
  %41 = invoke noundef %struct.record* @_ZSt34__uninitialized_move_if_noexcept_aIP6recordS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.record* noundef %35, %struct.record* noundef %37, %struct.record* noundef %38, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40)
          to label %42 unwind label %56

42:                                               ; preds = %31
  store %struct.record* %41, %struct.record** %11, align 8
  %43 = load %struct.record*, %struct.record** %11, align 8
  %44 = getelementptr inbounds %struct.record, %struct.record* %43, i32 1
  store %struct.record* %44, %struct.record** %11, align 8
  %45 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %4) #16
  %46 = load %struct.record*, %struct.record** %45, align 8
  %47 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %48, i32 0, i32 1
  %50 = load %struct.record*, %struct.record** %49, align 8
  %51 = load %struct.record*, %struct.record** %11, align 8
  %52 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %53 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %52) #16
  %54 = invoke noundef %struct.record* @_ZSt34__uninitialized_move_if_noexcept_aIP6recordS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.record* noundef %46, %struct.record* noundef %50, %struct.record* noundef %51, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %53)
          to label %55 unwind label %56

55:                                               ; preds = %42
  store %struct.record* %54, %struct.record** %11, align 8
  br label %89

56:                                               ; preds = %42, %31, %3
  %57 = landingpad { i8*, i32 }
          catch i8* null
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %12, align 8
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %12, align 8
  %62 = call i8* @__cxa_begin_catch(i8* %61) #16
  %63 = load %struct.record*, %struct.record** %11, align 8
  %64 = icmp ne %struct.record* %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %67 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %66, i32 0, i32 0
  %68 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %67 to %"class.std::allocator"*
  %69 = load %struct.record*, %struct.record** %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.record, %struct.record* %69, i64 %70
  invoke void @_ZNSt16allocator_traitsISaI6recordEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %68, %struct.record* noundef %71)
          to label %72 unwind label %73

72:                                               ; preds = %65
  br label %83

73:                                               ; preds = %87, %83, %77, %65
  %74 = landingpad { i8*, i32 }
          cleanup
  %75 = extractvalue { i8*, i32 } %74, 0
  store i8* %75, i8** %12, align 8
  %76 = extractvalue { i8*, i32 } %74, 1
  store i32 %76, i32* %13, align 4
  invoke void @__cxa_end_catch()
          to label %88 unwind label %136

77:                                               ; preds = %60
  %78 = load %struct.record*, %struct.record** %10, align 8
  %79 = load %struct.record*, %struct.record** %11, align 8
  %80 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %81 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %80) #16
  invoke void @_ZSt8_DestroyIP6recordS0_EvT_S2_RSaIT0_E(%struct.record* noundef %78, %struct.record* noundef %79, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %81)
          to label %82 unwind label %73

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %72
  %84 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %85 = load %struct.record*, %struct.record** %10, align 8
  %86 = load i64, i64* %7, align 8
  invoke void @_ZNSt12_Vector_baseI6recordSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %84, %struct.record* noundef %85, i64 noundef %86)
          to label %87 unwind label %73

87:                                               ; preds = %83
  invoke void @__cxa_rethrow() #20
          to label %139 unwind label %73

88:                                               ; preds = %73
  br label %131

89:                                               ; preds = %55
  %90 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %91 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %90, i32 0, i32 0
  %92 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %91, i32 0, i32 0
  %93 = load %struct.record*, %struct.record** %92, align 8
  %94 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %95 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %94, i32 0, i32 0
  %96 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %95, i32 0, i32 1
  %97 = load %struct.record*, %struct.record** %96, align 8
  %98 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %99 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %98) #16
  call void @_ZSt8_DestroyIP6recordS0_EvT_S2_RSaIT0_E(%struct.record* noundef %93, %struct.record* noundef %97, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %99)
  %100 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %101 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %102 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %101, i32 0, i32 0
  %103 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %102, i32 0, i32 0
  %104 = load %struct.record*, %struct.record** %103, align 8
  %105 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %106 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %105, i32 0, i32 0
  %107 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %106, i32 0, i32 2
  %108 = load %struct.record*, %struct.record** %107, align 8
  %109 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %110 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %109, i32 0, i32 0
  %111 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %110, i32 0, i32 0
  %112 = load %struct.record*, %struct.record** %111, align 8
  %113 = ptrtoint %struct.record* %108 to i64
  %114 = ptrtoint %struct.record* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 60
  call void @_ZNSt12_Vector_baseI6recordSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %100, %struct.record* noundef %104, i64 noundef %116)
  %117 = load %struct.record*, %struct.record** %10, align 8
  %118 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %119 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %118, i32 0, i32 0
  %120 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %119, i32 0, i32 0
  store %struct.record* %117, %struct.record** %120, align 8
  %121 = load %struct.record*, %struct.record** %11, align 8
  %122 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %123 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %122, i32 0, i32 0
  %124 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %123, i32 0, i32 1
  store %struct.record* %121, %struct.record** %124, align 8
  %125 = load %struct.record*, %struct.record** %10, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.record, %struct.record* %125, i64 %126
  %128 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %129 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %128, i32 0, i32 0
  %130 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %129, i32 0, i32 2
  store %struct.record* %127, %struct.record** %130, align 8
  ret void

131:                                              ; preds = %88
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* %13, align 4
  %134 = insertvalue { i8*, i32 } undef, i8* %132, 0
  %135 = insertvalue { i8*, i32 } %134, i32 %133, 1
  resume { i8*, i32 } %135

136:                                              ; preds = %73
  %137 = landingpad { i8*, i32 }
          catch i8* null
  %138 = extractvalue { i8*, i32 } %137, 0
  call void @__clang_call_terminate(i8* %138) #17
  unreachable

139:                                              ; preds = %87
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.record* @_ZNSt6vectorI6recordSaIS0_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %6, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %2, %struct.record** noundef nonnull align 8 dereferenceable(8) %7) #16
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %2, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  ret %struct.record* %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, %struct.record* noundef nonnull align 4 dereferenceable(60) %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca %struct.record*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %struct.record*, %struct.record** %5, align 8
  %9 = bitcast %struct.record* %8 to i8*
  %10 = bitcast i8* %9 to %struct.record*
  %11 = load %struct.record*, %struct.record** %6, align 8
  %12 = bitcast %struct.record* %10 to i8*
  %13 = bitcast %struct.record* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 60, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i8* noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %11 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* noundef %16) #20
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %19 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #16
  store i64 %19, i64* %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImEUa9enable_ifILb1EERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #16
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP6recordSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %0, %"class.__gnu_cxx::__normal_iterator.5"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %1, %"class.__gnu_cxx::__normal_iterator.5"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.5"*, %"class.__gnu_cxx::__normal_iterator.5"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %5) #16
  %7 = load %struct.record*, %struct.record** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.5"*, %"class.__gnu_cxx::__normal_iterator.5"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %8) #16
  %10 = load %struct.record*, %struct.record** %9, align 8
  %11 = ptrtoint %struct.record* %7 to i64
  %12 = ptrtoint %struct.record* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 60
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.record* @_ZNSt6vectorI6recordSaIS0_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.5", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %6, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %2, %struct.record** noundef nonnull align 8 dereferenceable(8) %7) #16
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %2, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  ret %struct.record* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt12_Vector_baseI6recordSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #5 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %9 to %"class.std::allocator"*
  %11 = load i64, i64* %4, align 8
  %12 = call noundef %struct.record* @_ZNSt16allocator_traitsISaI6recordEE8allocateERS1_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %10, i64 noundef %11)
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi %struct.record* [ %12, %8 ], [ null, %13 ]
  ret %struct.record* %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt34__uninitialized_move_if_noexcept_aIP6recordS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #5 comdat {
  %5 = alloca %struct.record*, align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca %struct.record*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.std::move_iterator.6", align 8
  %10 = alloca %"class.std::move_iterator.6", align 8
  store %struct.record* %0, %struct.record** %5, align 8
  store %struct.record* %1, %struct.record** %6, align 8
  store %struct.record* %2, %struct.record** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %11 = load %struct.record*, %struct.record** %5, align 8
  %12 = call %struct.record* @_ZSt32__make_move_if_noexcept_iteratorI6recordSt13move_iteratorIPS0_EET0_PT_(%struct.record* noundef %11)
  %13 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %9, i32 0, i32 0
  store %struct.record* %12, %struct.record** %13, align 8
  %14 = load %struct.record*, %struct.record** %6, align 8
  %15 = call %struct.record* @_ZSt32__make_move_if_noexcept_iteratorI6recordSt13move_iteratorIPS0_EET0_PT_(%struct.record* noundef %14)
  %16 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %10, i32 0, i32 0
  store %struct.record* %15, %struct.record** %16, align 8
  %17 = load %struct.record*, %struct.record** %7, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %19 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %9, i32 0, i32 0
  %20 = load %struct.record*, %struct.record** %19, align 8
  %21 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %10, i32 0, i32 0
  %22 = load %struct.record*, %struct.record** %21, align 8
  %23 = call noundef %struct.record* @_ZSt22__uninitialized_copy_aISt13move_iteratorIP6recordES2_S1_ET0_T_S5_S4_RSaIT1_E(%struct.record* %20, %struct.record* %22, %struct.record* noundef %17, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18)
  ret %struct.record* %23
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %0, %"class.__gnu_cxx::__normal_iterator.5"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.5"*, %"class.__gnu_cxx::__normal_iterator.5"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %3, i32 0, i32 0
  ret %struct.record** %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI6recordEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1) #5 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %struct.record*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load %struct.record*, %struct.record** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6recordE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %6, %struct.record* noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4) #16
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI6recordEE8max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #16
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %5, i32 0, i32 1
  %7 = load %struct.record*, %struct.record** %6, align 8
  %8 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %9, i32 0, i32 0
  %11 = load %struct.record*, %struct.record** %10, align 8
  %12 = ptrtoint %struct.record* %7 to i64
  %13 = ptrtoint %struct.record* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 60
  ret i64 %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI6recordEE8max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI6recordE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI6recordE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 307445734561825860
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.5"* noundef nonnull align 8 dereferenceable(8) %0, %struct.record** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.5"*, align 8
  %4 = alloca %struct.record**, align 8
  store %"class.__gnu_cxx::__normal_iterator.5"* %0, %"class.__gnu_cxx::__normal_iterator.5"** %3, align 8
  store %struct.record** %1, %struct.record*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.5"*, %"class.__gnu_cxx::__normal_iterator.5"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.5", %"class.__gnu_cxx::__normal_iterator.5"* %5, i32 0, i32 0
  %7 = load %struct.record**, %struct.record*** %4, align 8
  %8 = load %struct.record*, %struct.record** %7, align 8
  store %struct.record* %8, %struct.record** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt16allocator_traitsISaI6recordEE8allocateERS1_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #5 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call noundef %struct.record* @_ZN9__gnu_cxx13new_allocatorI6recordE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %6, i64 noundef %7, i8* noundef null)
  ret %struct.record* %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZN9__gnu_cxx13new_allocatorI6recordE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI6recordE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #16
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 60
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #21
  %16 = bitcast i8* %15 to %struct.record*
  ret %struct.record* %16
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt22__uninitialized_copy_aISt13move_iteratorIP6recordES2_S1_ET0_T_S5_S4_RSaIT1_E(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #5 comdat {
  %5 = alloca %"class.std::move_iterator.6", align 8
  %6 = alloca %"class.std::move_iterator.6", align 8
  %7 = alloca %struct.record*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.std::move_iterator.6", align 8
  %10 = alloca %"class.std::move_iterator.6", align 8
  %11 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %5, i32 0, i32 0
  store %struct.record* %0, %struct.record** %11, align 8
  %12 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %6, i32 0, i32 0
  store %struct.record* %1, %struct.record** %12, align 8
  store %struct.record* %2, %struct.record** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %13 = bitcast %"class.std::move_iterator.6"* %9 to i8*
  %14 = bitcast %"class.std::move_iterator.6"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.std::move_iterator.6"* %10 to i8*
  %16 = bitcast %"class.std::move_iterator.6"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.record*, %struct.record** %7, align 8
  %18 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %9, i32 0, i32 0
  %19 = load %struct.record*, %struct.record** %18, align 8
  %20 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %10, i32 0, i32 0
  %21 = load %struct.record*, %struct.record** %20, align 8
  %22 = call noundef %struct.record* @_ZSt18uninitialized_copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %19, %struct.record* %21, %struct.record* noundef %17)
  ret %struct.record* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %struct.record* @_ZSt32__make_move_if_noexcept_iteratorI6recordSt13move_iteratorIPS0_EET0_PT_(%struct.record* noundef %0) #5 comdat {
  %2 = alloca %"class.std::move_iterator.6", align 8
  %3 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  %4 = load %struct.record*, %struct.record** %3, align 8
  call void @_ZNSt13move_iteratorIP6recordEC2ES1_(%"class.std::move_iterator.6"* noundef nonnull align 8 dereferenceable(8) %2, %struct.record* noundef %4)
  %5 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %2, i32 0, i32 0
  %6 = load %struct.record*, %struct.record** %5, align 8
  ret %struct.record* %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt18uninitialized_copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2) #5 comdat {
  %4 = alloca %"class.std::move_iterator.6", align 8
  %5 = alloca %"class.std::move_iterator.6", align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.std::move_iterator.6", align 8
  %9 = alloca %"class.std::move_iterator.6", align 8
  %10 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %4, i32 0, i32 0
  store %struct.record* %0, %struct.record** %10, align 8
  %11 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %5, i32 0, i32 0
  store %struct.record* %1, %struct.record** %11, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  store i8 1, i8* %7, align 1
  %12 = bitcast %"class.std::move_iterator.6"* %8 to i8*
  %13 = bitcast %"class.std::move_iterator.6"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = bitcast %"class.std::move_iterator.6"* %9 to i8*
  %15 = bitcast %"class.std::move_iterator.6"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.record*, %struct.record** %6, align 8
  %17 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %8, i32 0, i32 0
  %18 = load %struct.record*, %struct.record** %17, align 8
  %19 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %9, i32 0, i32 0
  %20 = load %struct.record*, %struct.record** %19, align 8
  %21 = call noundef %struct.record* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6recordES4_EET0_T_S7_S6_(%struct.record* %18, %struct.record* %20, %struct.record* noundef %16)
  ret %struct.record* %21
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6recordES4_EET0_T_S7_S6_(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.std::move_iterator.6", align 8
  %5 = alloca %"class.std::move_iterator.6", align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca %"class.std::move_iterator.6", align 8
  %8 = alloca %"class.std::move_iterator.6", align 8
  %9 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %4, i32 0, i32 0
  store %struct.record* %0, %struct.record** %9, align 8
  %10 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %5, i32 0, i32 0
  store %struct.record* %1, %struct.record** %10, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %11 = bitcast %"class.std::move_iterator.6"* %7 to i8*
  %12 = bitcast %"class.std::move_iterator.6"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %"class.std::move_iterator.6"* %8 to i8*
  %14 = bitcast %"class.std::move_iterator.6"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct.record*, %struct.record** %6, align 8
  %16 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %7, i32 0, i32 0
  %17 = load %struct.record*, %struct.record** %16, align 8
  %18 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %8, i32 0, i32 0
  %19 = load %struct.record*, %struct.record** %18, align 8
  %20 = call noundef %struct.record* @_ZSt4copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %17, %struct.record* %19, %struct.record* noundef %15)
  ret %struct.record* %20
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt4copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2) #5 comdat {
  %4 = alloca %"class.std::move_iterator.6", align 8
  %5 = alloca %"class.std::move_iterator.6", align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca %"class.std::move_iterator.6", align 8
  %8 = alloca %"class.std::move_iterator.6", align 8
  %9 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %4, i32 0, i32 0
  store %struct.record* %0, %struct.record** %9, align 8
  %10 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %5, i32 0, i32 0
  store %struct.record* %1, %struct.record** %10, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %11 = bitcast %"class.std::move_iterator.6"* %7 to i8*
  %12 = bitcast %"class.std::move_iterator.6"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %7, i32 0, i32 0
  %14 = load %struct.record*, %struct.record** %13, align 8
  %15 = call noundef %struct.record* @_ZSt12__miter_baseIP6recordEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.record* %14)
  %16 = bitcast %"class.std::move_iterator.6"* %8 to i8*
  %17 = bitcast %"class.std::move_iterator.6"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %8, i32 0, i32 0
  %19 = load %struct.record*, %struct.record** %18, align 8
  %20 = call noundef %struct.record* @_ZSt12__miter_baseIP6recordEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.record* %19)
  %21 = load %struct.record*, %struct.record** %6, align 8
  %22 = call noundef %struct.record* @_ZSt14__copy_move_a2ILb1EP6recordS1_ET1_T0_S3_S2_(%struct.record* noundef %15, %struct.record* noundef %20, %struct.record* noundef %21)
  ret %struct.record* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt14__copy_move_a2ILb1EP6recordS1_ET1_T0_S3_S2_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2) #5 comdat {
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %7 = load %struct.record*, %struct.record** %4, align 8
  %8 = call noundef %struct.record* @_ZSt12__niter_baseIP6recordET_S2_(%struct.record* noundef %7)
  %9 = load %struct.record*, %struct.record** %5, align 8
  %10 = call noundef %struct.record* @_ZSt12__niter_baseIP6recordET_S2_(%struct.record* noundef %9)
  %11 = load %struct.record*, %struct.record** %6, align 8
  %12 = call noundef %struct.record* @_ZSt12__niter_baseIP6recordET_S2_(%struct.record* noundef %11)
  %13 = call noundef %struct.record* @_ZSt13__copy_move_aILb1EP6recordS1_ET1_T0_S3_S2_(%struct.record* noundef %8, %struct.record* noundef %10, %struct.record* noundef %12)
  ret %struct.record* %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt12__miter_baseIP6recordEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.record* %0) #5 comdat {
  %2 = alloca %"class.std::move_iterator.6", align 8
  %3 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %2, i32 0, i32 0
  store %struct.record* %0, %struct.record** %3, align 8
  %4 = call noundef %struct.record* @_ZNKSt13move_iteratorIP6recordE4baseEv(%"class.std::move_iterator.6"* noundef nonnull align 8 dereferenceable(8) %2)
  %5 = call noundef %struct.record* @_ZSt12__miter_baseIP6recordET_S2_(%struct.record* noundef %4)
  ret %struct.record* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt13__copy_move_aILb1EP6recordS1_ET1_T0_S3_S2_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2) #5 comdat {
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca i8, align 1
  store %struct.record* %0, %struct.record** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %struct.record*, %struct.record** %4, align 8
  %9 = load %struct.record*, %struct.record** %5, align 8
  %10 = load %struct.record*, %struct.record** %6, align 8
  %11 = call noundef %struct.record* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6recordEEPT_PKS4_S7_S5_(%struct.record* noundef %8, %struct.record* noundef %9, %struct.record* noundef %10)
  ret %struct.record* %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt12__niter_baseIP6recordET_S2_(%struct.record* noundef %0) #4 comdat {
  %2 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %2, align 8
  %3 = load %struct.record*, %struct.record** %2, align 8
  ret %struct.record* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6recordEEPT_PKS4_S7_S5_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2) #4 comdat align 2 {
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca i64, align 8
  store %struct.record* %0, %struct.record** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %8 = load %struct.record*, %struct.record** %5, align 8
  %9 = load %struct.record*, %struct.record** %4, align 8
  %10 = ptrtoint %struct.record* %8 to i64
  %11 = ptrtoint %struct.record* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 60
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.record*, %struct.record** %6, align 8
  %18 = bitcast %struct.record* %17 to i8*
  %19 = load %struct.record*, %struct.record** %4, align 8
  %20 = bitcast %struct.record* %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 60, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.record*, %struct.record** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.record, %struct.record* %24, i64 %25
  ret %struct.record* %26
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt12__miter_baseIP6recordET_S2_(%struct.record* noundef %0) #4 comdat {
  %2 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %2, align 8
  %3 = load %struct.record*, %struct.record** %2, align 8
  ret %struct.record* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNKSt13move_iteratorIP6recordE4baseEv(%"class.std::move_iterator.6"* noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::move_iterator.6"*, align 8
  store %"class.std::move_iterator.6"* %0, %"class.std::move_iterator.6"** %2, align 8
  %3 = load %"class.std::move_iterator.6"*, %"class.std::move_iterator.6"** %2, align 8
  %4 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %3, i32 0, i32 0
  %5 = load %struct.record*, %struct.record** %4, align 8
  ret %struct.record* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIP6recordEC2ES1_(%"class.std::move_iterator.6"* noundef nonnull align 8 dereferenceable(8) %0, %struct.record* noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"class.std::move_iterator.6"*, align 8
  %4 = alloca %struct.record*, align 8
  store %"class.std::move_iterator.6"* %0, %"class.std::move_iterator.6"** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  %5 = load %"class.std::move_iterator.6"*, %"class.std::move_iterator.6"** %3, align 8
  %6 = getelementptr inbounds %"class.std::move_iterator.6", %"class.std::move_iterator.6"* %5, i32 0, i32 0
  %7 = load %struct.record*, %struct.record** %4, align 8
  store %struct.record* %7, %struct.record** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca %struct.record*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  %6 = load %struct.record*, %struct.record** %4, align 8
  ret void
}

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (%struct.latLong*, float*, i32, float, float)** @_Z6euclidP7latLongPfiff to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

attributes #0 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { noreturn }
attributes #21 = { allocsize(0) }

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
