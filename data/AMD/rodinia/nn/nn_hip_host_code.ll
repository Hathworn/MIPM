; ModuleID = 'hip/nn/nn_hip.cu'
source_filename = "hip/nn/nn_hip.cu"
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
%class.RDTimerCPU = type { %class.RDTimer }
%class.RDTimer = type { i32 (...)**, i8, %"class.std::basic_string", %"class.std::basic_string", i64, i64, float, float }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator.5" = type { i8 }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%class.SimplePerfSerializer = type { %class.PerfSerializer.base, i32, i64, i8*, i64, i8* }
%class.PerfSerializer.base = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8] }>
%class.PerfSerializer = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8], [7 x i8] }>
%"class.std::allocator.2" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { %struct.latLong* }
%"class.__gnu_cxx::__normal_iterator.8" = type { %struct.record* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%"class.std::move_iterator" = type { %struct.latLong* }
%"class.std::move_iterator.9" = type { %struct.record* }

$_ZNSt6vectorI6recordSaIS0_EEC2Ev = comdat any

$_ZNSt6vectorI7latLongSaIS0_EEC2Ev = comdat any

$_ZN10RDTimerCPUC2ESs = comdat any

$_ZN7RDTimer5ResetESs = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_ZN20SimplePerfSerializerC2EPc = comdat any

$_ZNSt6vectorI7latLongSaIS0_EEixEm = comdat any

$_ZSt4sqrtf = comdat any

$_ZNSt6vectorI6recordSaIS0_EEixEm = comdat any

$_ZNSt6vectorI7latLongSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI6recordSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI7latLongSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt6vectorI6recordSaIS0_EE9push_backERKS0_ = comdat any

$_ZN7RDTimerC2ESs = comdat any

$_ZN10RDTimerCPUD2Ev = comdat any

$_ZN10RDTimerCPUD0Ev = comdat any

$_ZN10RDTimerCPU5StartEv = comdat any

$_ZN10RDTimerCPU4StopEv = comdat any

$_ZN10RDTimerCPU10AccumulateEv = comdat any

$_ZN7RDTimerD2Ev = comdat any

$_ZN7RDTimerD0Ev = comdat any

$_Z8get_timev = comdat any

$_Z12elapsed_timexx = comdat any

$_ZN7RDTimer5ResetEv = comdat any

$_ZN14PerfSerializerC2EPc = comdat any

$_ZN20SimplePerfSerializerD2Ev = comdat any

$_ZN20SimplePerfSerializerD0Ev = comdat any

$_ZN20SimplePerfSerializer9SerializeEPK7RDTimer = comdat any

$_ZN14PerfSerializerD2Ev = comdat any

$_ZN14PerfSerializerD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK7RDTimer4TypeEv = comdat any

$_ZNK7RDTimer3MsgEv = comdat any

$_ZNK7RDTimer12AccumulatingEv = comdat any

$_ZNK7RDTimer4TimeEv = comdat any

$_ZNSt12_Vector_baseI6recordSaIS0_EEC2Ev = comdat any

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

$_ZTV10RDTimerCPU = comdat any

$_ZTS10RDTimerCPU = comdat any

$_ZTS7RDTimer = comdat any

$_ZTI7RDTimer = comdat any

$_ZTI10RDTimerCPU = comdat any

$_ZTV7RDTimer = comdat any

$_ZTV20SimplePerfSerializer = comdat any

$_ZTS20SimplePerfSerializer = comdat any

$_ZTS14PerfSerializer = comdat any

$_ZTI14PerfSerializer = comdat any

$_ZTI20SimplePerfSerializer = comdat any

$_ZTV14PerfSerializer = comdat any

$__hip_gpubin_handle = comdat any

@_Z6euclidP7latLongPfiff = constant void (%struct.latLong*, float*, i32, float, float)* @_Z21__device_stub__euclidP7latLongPfiff, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Overall CPU Time\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Error: Input too large.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Malloc Time\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"CPU to GPU Transfer Time\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"COMPUTE:Kernel Execution Time\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GPU to CPU Transfer Time\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed results %f   %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%s --> Distance=%f\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"time CPU to GPU memory copy = %lfs\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"time GPU to CPU memory copy back = %lfs\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"time GPU malloc = %lfs\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"time kernel = %lfs\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Overall CPU time = %lfs\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"error reading filelist\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"error opening a db\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Nearest Neighbor Usage\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [90 x i8] c"nearestNeighbor [filename] -r [int] -lat [float] -lng [float] [-hqt] [-p [int] -d [int]]\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"example:\0A\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"$ ./nearestNeighbor filelist.txt -r 5 -lat 30 -lng 90\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"filename     the filename that lists the data input files\0A\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"-r [int]     the number of records to return (default: 10)\0A\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"-lat [float] the latitude for nearest neighbors (default: 0)\0A\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"-lng [float] the longitude for nearest neighbors (default: 0)\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"-h, --help   Display the help file\0A\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"-q           Quiet mode. Suppress all text output.\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"-t           Print timing information.\0A\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"-p [int]     Choose the platform (must choose both platform and device)\0A\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"-d [int]     Choose the device (must choose both platform and device)\0A\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"Notes: 1. The filename is required as the first parameter.\0A\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"       2. If you declare either the device or the platform,\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"          you must declare both.\0A\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.35 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.37 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.43 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.69 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
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
  %23 = alloca %class.RDTimerCPU*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %"class.std::basic_string", align 8
  %27 = alloca %"class.std::allocator.5", align 1
  %28 = alloca i1, align 1
  %29 = alloca %"class.std::basic_string", align 8
  %30 = alloca %"class.std::allocator.5", align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca float*, align 8
  %34 = alloca float*, align 8
  %35 = alloca %struct.latLong*, align 8
  %36 = alloca float*, align 8
  %37 = alloca %struct.hipDeviceProp_t, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca %struct.dim3, align 4
  %48 = alloca %class.SimplePerfSerializer*, align 8
  %49 = alloca %class.RDTimerCPU*, align 8
  %50 = alloca %"class.std::basic_string", align 8
  %51 = alloca %"class.std::allocator.5", align 1
  %52 = alloca i1, align 1
  %53 = alloca %"class.std::basic_string", align 8
  %54 = alloca %"class.std::allocator.5", align 1
  %55 = alloca %"class.std::basic_string", align 8
  %56 = alloca %"class.std::allocator.5", align 1
  %57 = alloca %"class.std::basic_string", align 8
  %58 = alloca %"class.std::allocator.5", align 1
  %59 = alloca %struct.dim3, align 4
  %60 = alloca %struct.dim3, align 4
  %61 = alloca { i64, i32 }, align 4
  %62 = alloca { i64, i32 }, align 4
  %63 = alloca %"class.std::basic_string", align 8
  %64 = alloca %"class.std::allocator.5", align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  call void @_ZNSt6vectorI6recordSaIS0_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #17
  call void @_ZNSt6vectorI7latLongSaIS0_EEC2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20) #17
  store i32 10, i32* %22, align 4
  %65 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #18
          to label %66 unwind label %88

66:                                               ; preds = %2
  store i1 true, i1* %28, align 1
  %67 = bitcast i8* %65 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %27) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %26, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %27)
          to label %68 unwind label %92

68:                                               ; preds = %66
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %67, %"class.std::basic_string"* noundef %26)
          to label %69 unwind label %96

69:                                               ; preds = %68
  store i1 false, i1* %28, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %26) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %27) #17
  store %class.RDTimerCPU* %67, %class.RDTimerCPU** %23, align 8
  %70 = load %class.RDTimerCPU*, %class.RDTimerCPU** %23, align 8
  %71 = bitcast %class.RDTimerCPU* %70 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %30) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %29, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %30)
          to label %72 unwind label %104

72:                                               ; preds = %69
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %71, %"class.std::basic_string"* noundef %29)
          to label %73 unwind label %108

73:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %29) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %30) #17
  %74 = load %class.RDTimerCPU*, %class.RDTimerCPU** %23, align 8
  %75 = bitcast %class.RDTimerCPU* %74 to void (%class.RDTimerCPU*)***
  %76 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %75, align 8
  %77 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %76, i64 2
  %78 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %77, align 8
  invoke void %78(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %74)
          to label %79 unwind label %88

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %83 = invoke noundef i32 @_Z16parseCommandlineiPPcS_PiPfS2_S1_S1_S1_S1_(i32 noundef %80, i8** noundef %81, i8* noundef %82, i32* noundef %22, float* noundef %7, float* noundef %8, i32* noundef %9, i32* noundef %10, i32* noundef %11, i32* noundef %12)
          to label %84 unwind label %88

84:                                               ; preds = %79
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %84
  invoke void @_Z10printUsagev()
          to label %87 unwind label %88

87:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  store i32 1, i32* %31, align 4
  br label %618

88:                                               ; preds = %612, %604, %577, %574, %571, %568, %565, %556, %549, %531, %519, %500, %419, %405, %398, %389, %383, %370, %363, %311, %295, %290, %283, %281, %268, %261, %252, %246, %233, %221, %215, %204, %198, %189, %182, %158, %154, %142, %138, %124, %122, %113, %86, %79, %73, %2
  %89 = landingpad { i8*, i32 }
          cleanup
  %90 = extractvalue { i8*, i32 } %89, 0
  store i8* %90, i8** %24, align 8
  %91 = extractvalue { i8*, i32 } %89, 1
  store i32 %91, i32* %25, align 4
  br label %620

92:                                               ; preds = %66
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = extractvalue { i8*, i32 } %93, 0
  store i8* %94, i8** %24, align 8
  %95 = extractvalue { i8*, i32 } %93, 1
  store i32 %95, i32* %25, align 4
  br label %100

96:                                               ; preds = %68
  %97 = landingpad { i8*, i32 }
          cleanup
  %98 = extractvalue { i8*, i32 } %97, 0
  store i8* %98, i8** %24, align 8
  %99 = extractvalue { i8*, i32 } %97, 1
  store i32 %99, i32* %25, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %26) #17
  br label %100

100:                                              ; preds = %96, %92
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %27) #17
  %101 = load i1, i1* %28, align 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  call void @_ZdlPv(i8* noundef %65) #19
  br label %103

103:                                              ; preds = %102, %100
  br label %620

104:                                              ; preds = %69
  %105 = landingpad { i8*, i32 }
          cleanup
  %106 = extractvalue { i8*, i32 } %105, 0
  store i8* %106, i8** %24, align 8
  %107 = extractvalue { i8*, i32 } %105, 1
  store i32 %107, i32* %25, align 4
  br label %112

108:                                              ; preds = %72
  %109 = landingpad { i8*, i32 }
          cleanup
  %110 = extractvalue { i8*, i32 } %109, 0
  store i8* %110, i8** %24, align 8
  %111 = extractvalue { i8*, i32 } %109, 1
  store i32 %111, i32* %25, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %29) #17
  br label %112

112:                                              ; preds = %108, %104
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %30) #17
  br label %620

113:                                              ; preds = %84
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %115 = invoke noundef i32 @_Z8loadDataPcRSt6vectorI6recordSaIS1_EERS0_I7latLongSaIS5_EE(i8* noundef %114, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, %"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20)
          to label %116 unwind label %88

116:                                              ; preds = %113
  store i32 %115, i32* %32, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %32, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %32, align 4
  store i32 %121, i32* %22, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = invoke i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef %37, i32 noundef 0)
          to label %124 unwind label %88

124:                                              ; preds = %122
  %125 = invoke i32 @hipDeviceSynchronize()
          to label %126 unwind label %88

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %37, i32 0, i32 7
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %127, i64 0, i64 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %38, align 8
  %131 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %37, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %132, 256
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %138

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %37, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  br label %138

138:                                              ; preds = %135, %134
  %139 = phi i32 [ 256, %134 ], [ %137, %135 ]
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %39, align 8
  %141 = invoke i32 @hipMemGetInfo(i64* noundef %41, i64* noundef %40)
          to label %142 unwind label %88

142:                                              ; preds = %138
  %143 = invoke i32 @hipDeviceSynchronize()
          to label %144 unwind label %88

144:                                              ; preds = %142
  %145 = load i64, i64* %41, align 8
  %146 = mul i64 %145, 85
  %147 = udiv i64 %146, 100
  store i64 %147, i64* %42, align 8
  %148 = load i64, i64* %42, align 8
  %149 = udiv i64 %148, 12
  store i64 %149, i64* %43, align 8
  %150 = load i32, i32* %32, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %43, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %144
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %156 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
          to label %157 unwind label %88

157:                                              ; preds = %154
  call void @exit(i32 noundef 1) #20
  unreachable

158:                                              ; preds = %144
  %159 = load i32, i32* %32, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %39, align 8
  %162 = add i64 %160, %161
  %163 = sub i64 %162, 1
  %164 = load i64, i64* %39, align 8
  %165 = udiv i64 %163, %164
  store i64 %165, i64* %44, align 8
  %166 = load i64, i64* %44, align 8
  %167 = load i64, i64* %38, align 8
  %168 = add i64 %166, %167
  %169 = sub i64 %168, 1
  %170 = load i64, i64* %38, align 8
  %171 = udiv i64 %169, %170
  store i64 %171, i64* %45, align 8
  %172 = load i64, i64* %44, align 8
  %173 = load i64, i64* %45, align 8
  %174 = add i64 %172, %173
  %175 = sub i64 %174, 1
  %176 = load i64, i64* %45, align 8
  %177 = udiv i64 %175, %176
  store i64 %177, i64* %46, align 8
  %178 = load i64, i64* %46, align 8
  %179 = trunc i64 %178 to i32
  %180 = load i64, i64* %45, align 8
  %181 = trunc i64 %180 to i32
  invoke void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %47, i32 noundef %179, i32 noundef %181, i32 noundef 1)
          to label %182 unwind label %88

182:                                              ; preds = %158
  %183 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #18
          to label %184 unwind label %88

184:                                              ; preds = %182
  %185 = bitcast i8* %183 to %class.SimplePerfSerializer*
  %186 = load i8**, i8*** %5, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 0
  %188 = load i8*, i8** %187, align 8
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %185, i8* noundef %188)
          to label %189 unwind label %318

189:                                              ; preds = %184
  store %class.SimplePerfSerializer* %185, %class.SimplePerfSerializer** %48, align 8
  %190 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #18
          to label %191 unwind label %88

191:                                              ; preds = %189
  store i1 true, i1* %52, align 1
  %192 = bitcast i8* %190 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %51) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %50, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %51)
          to label %193 unwind label %322

193:                                              ; preds = %191
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %192, %"class.std::basic_string"* noundef %50)
          to label %194 unwind label %326

194:                                              ; preds = %193
  store i1 false, i1* %52, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %50) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %51) #17
  store %class.RDTimerCPU* %192, %class.RDTimerCPU** %49, align 8
  %195 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %196 = bitcast %class.RDTimerCPU* %195 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %54) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %54)
          to label %197 unwind label %334

197:                                              ; preds = %194
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %196, %"class.std::basic_string"* noundef %53)
          to label %198 unwind label %338

198:                                              ; preds = %197
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %54) #17
  %199 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %200 = bitcast %class.RDTimerCPU* %199 to void (%class.RDTimerCPU*)***
  %201 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %200, align 8
  %202 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %201, i64 2
  %203 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %202, align 8
  invoke void %203(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %199)
          to label %204 unwind label %88

204:                                              ; preds = %198
  %205 = load i32, i32* %32, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 4, %206
  %208 = call noalias i8* @malloc(i64 noundef %207) #21
  %209 = bitcast i8* %208 to float*
  store float* %209, float** %33, align 8
  %210 = bitcast %struct.latLong** %35 to i8**
  %211 = load i32, i32* %32, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 8, %212
  %214 = invoke i32 @hipMalloc(i8** noundef %210, i64 noundef %213)
          to label %215 unwind label %88

215:                                              ; preds = %204
  %216 = bitcast float** %36 to i8**
  %217 = load i32, i32* %32, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 4, %218
  %220 = invoke i32 @hipMalloc(i8** noundef %216, i64 noundef %219)
          to label %221 unwind label %88

221:                                              ; preds = %215
  %222 = load i32, i32* %32, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 4, %223
  %225 = call noalias i8* @malloc(i64 noundef %224) #21
  %226 = bitcast i8* %225 to float*
  store float* %226, float** %34, align 8
  %227 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %228 = bitcast %class.RDTimerCPU* %227 to float (%class.RDTimerCPU*)***
  %229 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %228, align 8
  %230 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %229, i64 3
  %231 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %230, align 8
  %232 = invoke noundef float %231(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %227)
          to label %233 unwind label %88

233:                                              ; preds = %221
  %234 = fpext float %232 to double
  store double %234, double* %15, align 8
  %235 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %48, align 8
  %236 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %237 = bitcast %class.RDTimerCPU* %236 to %class.RDTimer*
  %238 = bitcast %class.SimplePerfSerializer* %235 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %239 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %238, align 8
  %240 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %239, i64 2
  %241 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %240, align 8
  invoke void %241(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %235, %class.RDTimer* noundef %237)
          to label %242 unwind label %88

242:                                              ; preds = %233
  %243 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %244 = bitcast %class.RDTimerCPU* %243 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %56) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %55, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %56)
          to label %245 unwind label %343

245:                                              ; preds = %242
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %244, %"class.std::basic_string"* noundef %55)
          to label %246 unwind label %347

246:                                              ; preds = %245
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %55) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %56) #17
  %247 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %248 = bitcast %class.RDTimerCPU* %247 to void (%class.RDTimerCPU*)***
  %249 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %248, align 8
  %250 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %249, i64 2
  %251 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %250, align 8
  invoke void %251(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %247)
          to label %252 unwind label %88

252:                                              ; preds = %246
  %253 = load %struct.latLong*, %struct.latLong** %35, align 8
  %254 = bitcast %struct.latLong* %253 to i8*
  %255 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #17
  %256 = bitcast %struct.latLong* %255 to i8*
  %257 = load i32, i32* %32, align 4
  %258 = sext i32 %257 to i64
  %259 = mul i64 8, %258
  %260 = invoke i32 @hipMemcpy(i8* noundef %254, i8* noundef %256, i64 noundef %259, i32 noundef 1)
          to label %261 unwind label %88

261:                                              ; preds = %252
  %262 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %263 = bitcast %class.RDTimerCPU* %262 to float (%class.RDTimerCPU*)***
  %264 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %263, align 8
  %265 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %264, i64 3
  %266 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %265, align 8
  %267 = invoke noundef float %266(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %262)
          to label %268 unwind label %88

268:                                              ; preds = %261
  %269 = fpext float %267 to double
  store double %269, double* %16, align 8
  %270 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %48, align 8
  %271 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %272 = bitcast %class.RDTimerCPU* %271 to %class.RDTimer*
  %273 = bitcast %class.SimplePerfSerializer* %270 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %274 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %273, align 8
  %275 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %274, i64 2
  %276 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %275, align 8
  invoke void %276(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %270, %class.RDTimer* noundef %272)
          to label %277 unwind label %88

277:                                              ; preds = %268
  %278 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %279 = bitcast %class.RDTimerCPU* %278 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %58) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %57, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %58)
          to label %280 unwind label %352

280:                                              ; preds = %277
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %279, %"class.std::basic_string"* noundef %57)
          to label %281 unwind label %356

281:                                              ; preds = %280
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %57) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %58) #17
  %282 = invoke i32 @hipDeviceSynchronize()
          to label %283 unwind label %88

283:                                              ; preds = %281
  %284 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %285 = bitcast %class.RDTimerCPU* %284 to void (%class.RDTimerCPU*)***
  %286 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %285, align 8
  %287 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %286, i64 2
  %288 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %287, align 8
  invoke void %288(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %284)
          to label %289 unwind label %88

289:                                              ; preds = %283
  br label %290

290:                                              ; preds = %289
  %291 = bitcast %struct.dim3* %59 to i8*
  %292 = bitcast %struct.dim3* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %291, i8* align 4 %292, i64 12, i1 false)
  %293 = load i64, i64* %39, align 8
  %294 = trunc i64 %293 to i32
  invoke void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %60, i32 noundef %294, i32 noundef 1, i32 noundef 1)
          to label %295 unwind label %88

295:                                              ; preds = %290
  %296 = bitcast { i64, i32 }* %61 to i8*
  %297 = bitcast %struct.dim3* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %296, i8* align 4 %297, i64 12, i1 false)
  %298 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %299 = load i64, i64* %298, align 4
  %300 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = bitcast { i64, i32 }* %62 to i8*
  %303 = bitcast %struct.dim3* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %302, i8* align 4 %303, i64 12, i1 false)
  %304 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %305 = load i64, i64* %304, align 4
  %306 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = invoke i32 @__hipPushCallConfiguration(i64 %299, i32 %301, i64 %305, i32 %307, i64 noundef 0, %struct.ihipStream_t* noundef null)
          to label %309 unwind label %88

309:                                              ; preds = %295
  %310 = icmp ne i32 %308, 0
  br i1 %310, label %361, label %311

311:                                              ; preds = %309
  %312 = load %struct.latLong*, %struct.latLong** %35, align 8
  %313 = load float*, float** %36, align 8
  %314 = load i32, i32* %32, align 4
  %315 = load float, float* %7, align 4
  %316 = load float, float* %8, align 4
  invoke void @_Z21__device_stub__euclidP7latLongPfiff(%struct.latLong* noundef %312, float* noundef %313, i32 noundef %314, float noundef %315, float noundef %316)
          to label %317 unwind label %88

317:                                              ; preds = %311
  br label %361

318:                                              ; preds = %184
  %319 = landingpad { i8*, i32 }
          cleanup
  %320 = extractvalue { i8*, i32 } %319, 0
  store i8* %320, i8** %24, align 8
  %321 = extractvalue { i8*, i32 } %319, 1
  store i32 %321, i32* %25, align 4
  call void @_ZdlPv(i8* noundef %183) #19
  br label %620

322:                                              ; preds = %191
  %323 = landingpad { i8*, i32 }
          cleanup
  %324 = extractvalue { i8*, i32 } %323, 0
  store i8* %324, i8** %24, align 8
  %325 = extractvalue { i8*, i32 } %323, 1
  store i32 %325, i32* %25, align 4
  br label %330

326:                                              ; preds = %193
  %327 = landingpad { i8*, i32 }
          cleanup
  %328 = extractvalue { i8*, i32 } %327, 0
  store i8* %328, i8** %24, align 8
  %329 = extractvalue { i8*, i32 } %327, 1
  store i32 %329, i32* %25, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %50) #17
  br label %330

330:                                              ; preds = %326, %322
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %51) #17
  %331 = load i1, i1* %52, align 1
  br i1 %331, label %332, label %333

332:                                              ; preds = %330
  call void @_ZdlPv(i8* noundef %190) #19
  br label %333

333:                                              ; preds = %332, %330
  br label %620

334:                                              ; preds = %194
  %335 = landingpad { i8*, i32 }
          cleanup
  %336 = extractvalue { i8*, i32 } %335, 0
  store i8* %336, i8** %24, align 8
  %337 = extractvalue { i8*, i32 } %335, 1
  store i32 %337, i32* %25, align 4
  br label %342

338:                                              ; preds = %197
  %339 = landingpad { i8*, i32 }
          cleanup
  %340 = extractvalue { i8*, i32 } %339, 0
  store i8* %340, i8** %24, align 8
  %341 = extractvalue { i8*, i32 } %339, 1
  store i32 %341, i32* %25, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #17
  br label %342

342:                                              ; preds = %338, %334
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %54) #17
  br label %620

343:                                              ; preds = %242
  %344 = landingpad { i8*, i32 }
          cleanup
  %345 = extractvalue { i8*, i32 } %344, 0
  store i8* %345, i8** %24, align 8
  %346 = extractvalue { i8*, i32 } %344, 1
  store i32 %346, i32* %25, align 4
  br label %351

347:                                              ; preds = %245
  %348 = landingpad { i8*, i32 }
          cleanup
  %349 = extractvalue { i8*, i32 } %348, 0
  store i8* %349, i8** %24, align 8
  %350 = extractvalue { i8*, i32 } %348, 1
  store i32 %350, i32* %25, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %55) #17
  br label %351

351:                                              ; preds = %347, %343
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %56) #17
  br label %620

352:                                              ; preds = %277
  %353 = landingpad { i8*, i32 }
          cleanup
  %354 = extractvalue { i8*, i32 } %353, 0
  store i8* %354, i8** %24, align 8
  %355 = extractvalue { i8*, i32 } %353, 1
  store i32 %355, i32* %25, align 4
  br label %360

356:                                              ; preds = %280
  %357 = landingpad { i8*, i32 }
          cleanup
  %358 = extractvalue { i8*, i32 } %357, 0
  store i8* %358, i8** %24, align 8
  %359 = extractvalue { i8*, i32 } %357, 1
  store i32 %359, i32* %25, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %57) #17
  br label %360

360:                                              ; preds = %356, %352
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %58) #17
  br label %620

361:                                              ; preds = %317, %309
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  %364 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %365 = bitcast %class.RDTimerCPU* %364 to float (%class.RDTimerCPU*)***
  %366 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %365, align 8
  %367 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %366, i64 3
  %368 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %367, align 8
  %369 = invoke noundef float %368(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %364)
          to label %370 unwind label %88

370:                                              ; preds = %363
  %371 = fpext float %369 to double
  store double %371, double* %14, align 8
  %372 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %48, align 8
  %373 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %374 = bitcast %class.RDTimerCPU* %373 to %class.RDTimer*
  %375 = bitcast %class.SimplePerfSerializer* %372 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %376 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %375, align 8
  %377 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %376, i64 2
  %378 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %377, align 8
  invoke void %378(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %372, %class.RDTimer* noundef %374)
          to label %379 unwind label %88

379:                                              ; preds = %370
  %380 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %381 = bitcast %class.RDTimerCPU* %380 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %64) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %63, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %64)
          to label %382 unwind label %460

382:                                              ; preds = %379
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %381, %"class.std::basic_string"* noundef %63)
          to label %383 unwind label %464

383:                                              ; preds = %382
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %63) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %64) #17
  %384 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %385 = bitcast %class.RDTimerCPU* %384 to void (%class.RDTimerCPU*)***
  %386 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %385, align 8
  %387 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %386, i64 2
  %388 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %387, align 8
  invoke void %388(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %384)
          to label %389 unwind label %88

389:                                              ; preds = %383
  %390 = load float*, float** %33, align 8
  %391 = bitcast float* %390 to i8*
  %392 = load float*, float** %36, align 8
  %393 = bitcast float* %392 to i8*
  %394 = load i32, i32* %32, align 4
  %395 = sext i32 %394 to i64
  %396 = mul i64 4, %395
  %397 = invoke i32 @hipMemcpy(i8* noundef %391, i8* noundef %393, i64 noundef %396, i32 noundef 2)
          to label %398 unwind label %88

398:                                              ; preds = %389
  %399 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %400 = bitcast %class.RDTimerCPU* %399 to float (%class.RDTimerCPU*)***
  %401 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %400, align 8
  %402 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %401, i64 3
  %403 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %402, align 8
  %404 = invoke noundef float %403(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %399)
          to label %405 unwind label %88

405:                                              ; preds = %398
  %406 = fpext float %404 to double
  store double %406, double* %17, align 8
  %407 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %48, align 8
  %408 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %409 = bitcast %class.RDTimerCPU* %408 to %class.RDTimer*
  %410 = bitcast %class.SimplePerfSerializer* %407 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %411 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %410, align 8
  %412 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %411, i64 2
  %413 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %412, align 8
  invoke void %413(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %407, %class.RDTimer* noundef %409)
          to label %414 unwind label %88

414:                                              ; preds = %405
  store i32 0, i32* %6, align 4
  br label %415

415:                                              ; preds = %457, %414
  %416 = load i32, i32* %6, align 4
  %417 = load i32, i32* %32, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %469

419:                                              ; preds = %415
  %420 = load float, float* %7, align 4
  %421 = load i32, i32* %6, align 4
  %422 = sext i32 %421 to i64
  %423 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %422) #17
  %424 = getelementptr inbounds %struct.latLong, %struct.latLong* %423, i32 0, i32 0
  %425 = load float, float* %424, align 4
  %426 = fsub contract float %420, %425
  %427 = load float, float* %7, align 4
  %428 = load i32, i32* %6, align 4
  %429 = sext i32 %428 to i64
  %430 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %429) #17
  %431 = getelementptr inbounds %struct.latLong, %struct.latLong* %430, i32 0, i32 0
  %432 = load float, float* %431, align 4
  %433 = fsub contract float %427, %432
  %434 = fmul contract float %426, %433
  %435 = load float, float* %8, align 4
  %436 = load i32, i32* %6, align 4
  %437 = sext i32 %436 to i64
  %438 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %437) #17
  %439 = getelementptr inbounds %struct.latLong, %struct.latLong* %438, i32 0, i32 1
  %440 = load float, float* %439, align 4
  %441 = fsub contract float %435, %440
  %442 = load float, float* %8, align 4
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = call noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %444) #17
  %446 = getelementptr inbounds %struct.latLong, %struct.latLong* %445, i32 0, i32 1
  %447 = load float, float* %446, align 4
  %448 = fsub contract float %442, %447
  %449 = fmul contract float %441, %448
  %450 = fadd contract float %434, %449
  %451 = invoke noundef float @_ZSt4sqrtf(float noundef %450)
          to label %452 unwind label %88

452:                                              ; preds = %419
  %453 = load float*, float** %34, align 8
  %454 = load i32, i32* %6, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds float, float* %453, i64 %455
  store float %451, float* %456, align 4
  br label %457

457:                                              ; preds = %452
  %458 = load i32, i32* %6, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %6, align 4
  br label %415, !llvm.loop !6

460:                                              ; preds = %379
  %461 = landingpad { i8*, i32 }
          cleanup
  %462 = extractvalue { i8*, i32 } %461, 0
  store i8* %462, i8** %24, align 8
  %463 = extractvalue { i8*, i32 } %461, 1
  store i32 %463, i32* %25, align 4
  br label %468

464:                                              ; preds = %382
  %465 = landingpad { i8*, i32 }
          cleanup
  %466 = extractvalue { i8*, i32 } %465, 0
  store i8* %466, i8** %24, align 8
  %467 = extractvalue { i8*, i32 } %465, 1
  store i32 %467, i32* %25, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %63) #17
  br label %468

468:                                              ; preds = %464, %460
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %64) #17
  br label %620

469:                                              ; preds = %415
  store i32 0, i32* %6, align 4
  br label %470

470:                                              ; preds = %516, %469
  %471 = load i32, i32* %6, align 4
  %472 = load i32, i32* %32, align 4
  %473 = icmp slt i32 %471, %472
  br i1 %473, label %474, label %519

474:                                              ; preds = %470
  %475 = load float*, float** %34, align 8
  %476 = load i32, i32* %6, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %475, i64 %477
  %479 = load float, float* %478, align 4
  %480 = load float*, float** %33, align 8
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds float, float* %480, i64 %482
  %484 = load float, float* %483, align 4
  %485 = fsub contract float %479, %484
  %486 = load float*, float** %34, align 8
  %487 = load i32, i32* %6, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds float, float* %486, i64 %488
  %490 = load float, float* %489, align 4
  %491 = load float*, float** %33, align 8
  %492 = load i32, i32* %6, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds float, float* %491, i64 %493
  %495 = load float, float* %494, align 4
  %496 = fsub contract float %490, %495
  %497 = fmul contract float %485, %496
  %498 = fpext float %497 to double
  %499 = fcmp contract ogt double %498, 1.000000e-03
  br i1 %499, label %500, label %515

500:                                              ; preds = %474
  %501 = load float*, float** %34, align 8
  %502 = load i32, i32* %6, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds float, float* %501, i64 %503
  %505 = load float, float* %504, align 4
  %506 = fpext float %505 to double
  %507 = load float*, float** %33, align 8
  %508 = load i32, i32* %6, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds float, float* %507, i64 %509
  %511 = load float, float* %510, align 4
  %512 = fpext float %511 to double
  %513 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), double noundef %506, double noundef %512)
          to label %514 unwind label %88

514:                                              ; preds = %500
  store i32 1, i32* %13, align 4
  br label %519

515:                                              ; preds = %474
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %6, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %6, align 4
  br label %470, !llvm.loop !8

519:                                              ; preds = %514, %470
  %520 = load float*, float** %33, align 8
  %521 = load i32, i32* %32, align 4
  %522 = load i32, i32* %22, align 4
  invoke void @_Z10findLowestRSt6vectorI6recordSaIS0_EEPfii(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, float* noundef %520, i32 noundef %521, i32 noundef %522)
          to label %523 unwind label %88

523:                                              ; preds = %519
  %524 = load i32, i32* %9, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %549, label %526

526:                                              ; preds = %523
  store i32 0, i32* %6, align 4
  br label %527

527:                                              ; preds = %545, %526
  %528 = load i32, i32* %6, align 4
  %529 = load i32, i32* %22, align 4
  %530 = icmp slt i32 %528, %529
  br i1 %530, label %531, label %548

531:                                              ; preds = %527
  %532 = load i32, i32* %6, align 4
  %533 = sext i32 %532 to i64
  %534 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %533) #17
  %535 = getelementptr inbounds %struct.record, %struct.record* %534, i32 0, i32 0
  %536 = getelementptr inbounds [53 x i8], [53 x i8]* %535, i64 0, i64 0
  %537 = load i32, i32* %6, align 4
  %538 = sext i32 %537 to i64
  %539 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %538) #17
  %540 = getelementptr inbounds %struct.record, %struct.record* %539, i32 0, i32 1
  %541 = load float, float* %540, align 4
  %542 = fpext float %541 to double
  %543 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* noundef %536, double noundef %542)
          to label %544 unwind label %88

544:                                              ; preds = %531
  br label %545

545:                                              ; preds = %544
  %546 = load i32, i32* %6, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %6, align 4
  br label %527, !llvm.loop !9

548:                                              ; preds = %527
  br label %549

549:                                              ; preds = %548, %523
  %550 = load %class.RDTimerCPU*, %class.RDTimerCPU** %23, align 8
  %551 = bitcast %class.RDTimerCPU* %550 to float (%class.RDTimerCPU*)***
  %552 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %551, align 8
  %553 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %552, i64 3
  %554 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %553, align 8
  %555 = invoke noundef float %554(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %550)
          to label %556 unwind label %88

556:                                              ; preds = %549
  %557 = fpext float %555 to double
  store double %557, double* %18, align 8
  %558 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %48, align 8
  %559 = load %class.RDTimerCPU*, %class.RDTimerCPU** %23, align 8
  %560 = bitcast %class.RDTimerCPU* %559 to %class.RDTimer*
  %561 = bitcast %class.SimplePerfSerializer* %558 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %562 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %561, align 8
  %563 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %562, i64 2
  %564 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %563, align 8
  invoke void %564(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %558, %class.RDTimer* noundef %560)
          to label %565 unwind label %88

565:                                              ; preds = %556
  %566 = load double, double* %16, align 8
  %567 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), double noundef %566)
          to label %568 unwind label %88

568:                                              ; preds = %565
  %569 = load double, double* %17, align 8
  %570 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), double noundef %569)
          to label %571 unwind label %88

571:                                              ; preds = %568
  %572 = load double, double* %15, align 8
  %573 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), double noundef %572)
          to label %574 unwind label %88

574:                                              ; preds = %571
  %575 = load double, double* %14, align 8
  %576 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), double noundef %575)
          to label %577 unwind label %88

577:                                              ; preds = %574
  %578 = load double, double* %18, align 8
  %579 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), double noundef %578)
          to label %580 unwind label %88

580:                                              ; preds = %577
  %581 = load %class.RDTimerCPU*, %class.RDTimerCPU** %49, align 8
  %582 = icmp eq %class.RDTimerCPU* %581, null
  br i1 %582, label %588, label %583

583:                                              ; preds = %580
  %584 = bitcast %class.RDTimerCPU* %581 to void (%class.RDTimerCPU*)***
  %585 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %584, align 8
  %586 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %585, i64 1
  %587 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %586, align 8
  call void %587(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %581) #17
  br label %588

588:                                              ; preds = %583, %580
  %589 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %48, align 8
  %590 = icmp eq %class.SimplePerfSerializer* %589, null
  br i1 %590, label %596, label %591

591:                                              ; preds = %588
  %592 = bitcast %class.SimplePerfSerializer* %589 to void (%class.SimplePerfSerializer*)***
  %593 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %592, align 8
  %594 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %593, i64 1
  %595 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %594, align 8
  call void %595(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %589) #17
  br label %596

596:                                              ; preds = %591, %588
  %597 = load %class.RDTimerCPU*, %class.RDTimerCPU** %23, align 8
  %598 = icmp eq %class.RDTimerCPU* %597, null
  br i1 %598, label %604, label %599

599:                                              ; preds = %596
  %600 = bitcast %class.RDTimerCPU* %597 to void (%class.RDTimerCPU*)***
  %601 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %600, align 8
  %602 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %601, i64 1
  %603 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %602, align 8
  call void %603(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %597) #17
  br label %604

604:                                              ; preds = %599, %596
  %605 = load float*, float** %33, align 8
  %606 = bitcast float* %605 to i8*
  call void @free(i8* noundef %606) #17
  %607 = load float*, float** %34, align 8
  %608 = bitcast float* %607 to i8*
  call void @free(i8* noundef %608) #17
  %609 = load %struct.latLong*, %struct.latLong** %35, align 8
  %610 = bitcast %struct.latLong* %609 to i8*
  %611 = invoke i32 @hipFree(i8* noundef %610)
          to label %612 unwind label %88

612:                                              ; preds = %604
  %613 = load float*, float** %36, align 8
  %614 = bitcast float* %613 to i8*
  %615 = invoke i32 @hipFree(i8* noundef %614)
          to label %616 unwind label %88

616:                                              ; preds = %612
  %617 = load i32, i32* %13, align 4
  store i32 %617, i32* %3, align 4
  store i32 1, i32* %31, align 4
  br label %618

618:                                              ; preds = %616, %87
  call void @_ZNSt6vectorI7latLongSaIS0_EED2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20) #17
  call void @_ZNSt6vectorI6recordSaIS0_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #17
  %619 = load i32, i32* %3, align 4
  ret i32 %619

620:                                              ; preds = %468, %360, %351, %342, %333, %318, %112, %103, %88
  call void @_ZNSt6vectorI7latLongSaIS0_EED2Ev(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %20) #17
  call void @_ZNSt6vectorI6recordSaIS0_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #17
  br label %621

621:                                              ; preds = %620
  %622 = load i8*, i8** %24, align 8
  %623 = load i32, i32* %25, align 4
  %624 = insertvalue { i8*, i32 } undef, i8* %622, 0
  %625 = insertvalue { i8*, i32 } %624, i32 %623, 1
  resume { i8*, i32 } %625
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
  call void @__clang_call_terminate(i8* %8) #20
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
  call void @__clang_call_terminate(i8* %8) #20
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RDTimerCPU*, align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %3, align 8
  %7 = load %class.RDTimerCPU*, %class.RDTimerCPU** %3, align 8
  %8 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %8, %"class.std::basic_string"* noundef %4)
          to label %9 unwind label %15

9:                                                ; preds = %2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #17
  %10 = bitcast %class.RDTimerCPU* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10RDTimerCPU, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 3
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
          to label %14 unwind label %19

14:                                               ; preds = %9
  ret void

15:                                               ; preds = %2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %5, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %6, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #17
  br label %24

19:                                               ; preds = %9
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %5, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %6, align 4
  %23 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %23) #17
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28
}

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) #9 comdat align 2 {
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z16parseCommandlineiPPcS_PiPfS2_S1_S1_S1_S1_(i32 noundef %0, i8** noundef %1, i8* noundef %2, i32* noundef %3, float* noundef %4, float* noundef %5, i32* noundef %6, i32* noundef %7, i32* noundef %8, i32* noundef %9) #10 {
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
  %32 = call i8* @strncpy(i8* noundef %28, i8* noundef %31, i64 noundef 100) #17
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
  %65 = call i32 @atoi(i8* noundef %64) #22
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
  %84 = call contract double @atof(i8* noundef %83) #22
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
  %94 = call contract double @atof(i8* noundef %93) #22
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
  %113 = call i32 @atoi(i8* noundef %112) #22
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
  %123 = call i32 @atoi(i8* noundef %122) #22
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

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10printUsagev() #9 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.20, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.24, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.30, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.33, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z8loadDataPcRSt6vectorI6recordSaIS1_EERS0_I7latLongSaIS5_EE(i8* noundef %0, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %1, %"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %2) #9 {
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
  %16 = call %struct._IO_FILE* @fopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %7, align 8
  br label %17

17:                                               ; preds = %105, %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %19 = call i32 @feof(%struct._IO_FILE* noundef %18) #17
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %108

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  call void @exit(i32 noundef 0) #20
  unreachable

30:                                               ; preds = %22
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %32 = call %struct._IO_FILE* @fopen(i8* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %32, %struct._IO_FILE** %8, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %34 = icmp ne %struct._IO_FILE* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 noundef 1) #20
  unreachable

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %95, %37
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %40 = call i32 @feof(%struct._IO_FILE* noundef %39) #17
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
  %51 = call i32 @feof(%struct._IO_FILE* noundef %50) #17
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
  %75 = call contract double @atof(i8* noundef %74) #22
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
  %98 = call contract double @atof(i8* noundef %97) #22
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
declare void @exit(i32 noundef) #11

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

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.SimplePerfSerializer*, align 8
  %4 = alloca i8*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %3, align 8
  %6 = bitcast %class.SimplePerfSerializer* %5 to %class.PerfSerializer*
  %7 = load i8*, i8** %4, align 8
  call void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %6, i8* noundef %7)
  %8 = bitcast %class.SimplePerfSerializer* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV20SimplePerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 2
  store i64 -1, i64* %10, align 8
  %11 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 3
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 5
  store i8* null, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #12

declare i32 @hipMalloc(i8** noundef, i64 noundef) #6

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EEixEm(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #10 comdat align 2 {
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
define linkonce_odr dso_local noundef float @_ZSt4sqrtf(float noundef %0) #10 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @sqrtf(float noundef %3) #17
  ret float %4
}

declare i32 @printf(i8* noundef, ...) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z10findLowestRSt6vectorI6recordSaIS0_EEPfii(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, float* noundef %1, i32 noundef %2, i32 noundef %3) #10 {
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
  %49 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %46, i64 noundef %48) #17
  store %struct.record* %49, %struct.record** %13, align 8
  %50 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %50, i64 noundef %52) #17
  %54 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %54, i64 noundef %56) #17
  %58 = bitcast %struct.record* %57 to i8*
  %59 = bitcast %struct.record* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 60, i1 false)
  %60 = load %struct.record*, %struct.record** %13, align 8
  %61 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %63) #17
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
  %94 = call noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %91, i64 noundef %93) #17
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
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(60) %struct.record* @_ZNSt6vectorI6recordSaIS0_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #10 comdat align 2 {
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
declare void @free(i8* noundef) #5

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
  %13 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %12) #17
  invoke void @_ZSt8_DestroyIP7latLongS0_EvT_S2_RSaIT0_E(%struct.latLong* noundef %7, %struct.latLong* noundef %11, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %13)
          to label %14 unwind label %16

14:                                               ; preds = %1
  %15 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseI7latLongSaIS0_EED2Ev(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %15) #17
  ret void

16:                                               ; preds = %1
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #20
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
  %13 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %12) #17
  invoke void @_ZSt8_DestroyIP6recordS0_EvT_S2_RSaIT0_E(%struct.record* noundef %7, %struct.record* noundef %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13)
          to label %14 unwind label %16

14:                                               ; preds = %1
  %15 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI6recordSaIS0_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %15) #17
  ret void

16:                                               ; preds = %1
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #20
  unreachable
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #6

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #5

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #6

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #6

declare i32 @fgetc(%struct._IO_FILE* noundef) #6

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #13

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7latLongSaIS0_EE9push_backERKS0_(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %1) #9 comdat align 2 {
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
  %31 = call %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE3endEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %6) #17
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
define linkonce_odr dso_local void @_ZNSt6vectorI6recordSaIS0_EE9push_backERKS0_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %struct.record* noundef nonnull align 4 dereferenceable(60) %1) #9 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %struct.record*, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
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
  %31 = call %struct.record* @_ZNSt6vectorI6recordSaIS0_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %6) #17
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %5, i32 0, i32 0
  store %struct.record* %31, %struct.record** %32, align 8
  %33 = load %struct.record*, %struct.record** %4, align 8
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %5, i32 0, i32 0
  %35 = load %struct.record*, %struct.record** %34, align 8
  call void @_ZNSt6vectorI6recordSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %6, %struct.record* %35, %struct.record* noundef nonnull align 4 dereferenceable(60) %33)
  br label %36

36:                                               ; preds = %30, %16
  ret void
}

declare i32 @fclose(%struct._IO_FILE* noundef) #6

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #13

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RDTimer*, align 8
  %4 = alloca %"class.std::allocator.5", align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %7 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %8 = bitcast %class.RDTimer* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 1
  store i8 0, i8* %9, align 8
  %10 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  %11 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %4) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %4) #17
  %13 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 6
  store float 0.000000e+00, float* %15, align 8
  %16 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 7
  store float 0.000000e+00, float* %16, align 4
  ret void

17:                                               ; preds = %2
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %5, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %6, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* noundef nonnull align 1 dereferenceable(1) %4) #17
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10) #17
  br label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD0Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  call void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %3) #17
  %4 = bitcast %class.RDTimerCPU* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPU5StartEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = call noundef i64 @_Z8get_timev()
  %5 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %5, i32 0, i32 4
  store i64 %4, i64* %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU4StopEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  %3 = alloca i64, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %4 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %5 = call noundef i64 @_Z8get_timev()
  store i64 %5, i64* %3, align 8
  %6 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call contract noundef float @_Z12elapsed_timexx(i64 noundef %8, i64 noundef %9)
  %11 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 6
  store float %10, float* %12, align 8
  %13 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %13, i32 0, i32 6
  %15 = load float, float* %14, align 8
  ret float %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU10AccumulateEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  %3 = alloca float, align 4
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %4 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %5 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %5, i32 0, i32 1
  store i8 1, i8* %6, align 8
  %7 = bitcast %class.RDTimerCPU* %4 to float (%class.RDTimerCPU*)***
  %8 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %7, align 8
  %9 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %8, i64 3
  %10 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %9, align 8
  %11 = call contract noundef float %10(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %4)
  store float %11, float* %3, align 4
  %12 = load float, float* %3, align 4
  %13 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %13, i32 0, i32 7
  %15 = load float, float* %14, align 4
  %16 = fadd contract float %15, %12
  store float %16, float* %14, align 4
  %17 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %18 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %17, i32 0, i32 7
  %19 = load float, float* %18, align 4
  ret float %19
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = bitcast %class.RDTimer* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5) #17
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %6) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD0Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  call void @llvm.trap() #20
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #14

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_Z8get_timev() #10 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #17
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #10 comdat {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub nsw i64 %5, %6
  %8 = sitofp i64 %7 to float
  %9 = fdiv contract float %8, 1.000000e+06
  ret float %9
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #10 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  store i8 0, i8* %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 7
  store float 0.000000e+00, float* %5, align 4
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 6
  store float 0.000000e+00, float* %6, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0, i8* noundef %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.PerfSerializer*, align 8
  %4 = alloca i8*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %class.PerfSerializer*, %class.PerfSerializer** %3, align 8
  %6 = bitcast %class.PerfSerializer* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV14PerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 1
  store i8 1, i8* %7, align 8
  %8 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8
  %9 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8
  %10 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 0, i8* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %81

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #17
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0)) #17
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #17
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #17
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8** %57, align 16
  call void @__cxa_throw(i8* %56, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

58:                                               ; preds = %41
  %59 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 0, i8* %59, align 8
  br label %76

60:                                               ; preds = %13
  %61 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %61, align 8
  %62 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %62, i64 0, i64 0
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #17
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8** %73, align 16
  call void @__cxa_throw(i8* %72, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

74:                                               ; preds = %60
  %75 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 1, i8* %75, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %78, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #17
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i8** %83, align 16
  call void @__cxa_throw(i8* %82, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

84:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  %4 = bitcast %class.SimplePerfSerializer* %3 to %class.PerfSerializer*
  call void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %4) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD0Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  call void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %3) #17
  %4 = bitcast %class.SimplePerfSerializer* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, %class.RDTimer* noundef %1) unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SimplePerfSerializer*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string", align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %14 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %3, align 8
  store i32 0, i32* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  %15 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %16 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %15, i32 0, i32 5
  %17 = load i8, i8* %16, align 8
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %150

21:                                               ; preds = %2
  %22 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 3
  %23 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 4
  %24 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %25 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %24, i32 0, i32 3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i64 @getline(i8** noundef %22, i64* noundef %23, %struct._IO_FILE* noundef %26)
  %28 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #17
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #17
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

41:                                               ; preds = %21
  %42 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %7, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %44)
  %45 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #17
  %46 = call i32 @strcmp(i8* noundef %43, i8* noundef %45) #22
  %47 = icmp ne i32 %46, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #17
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #17
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #17
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #17
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i64 0, i64 0), i8** %63, align 16
  call void @__cxa_throw(i8* %62, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

64:                                               ; preds = %53
  %65 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %8, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %68)
  %69 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #17
  %70 = call i32 @strcmp(i8* noundef %67, i8* noundef %69) #22
  %71 = icmp ne i32 %70, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #17
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %9, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76)
  %77 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #17
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #17
  %80 = call i8* @__cxa_allocate_exception(i64 8) #17
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i64 0, i64 0), i8** %81, align 16
  call void @__cxa_throw(i8* %80, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

82:                                               ; preds = %72
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %10, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #17
  br label %187

86:                                               ; preds = %64
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #17
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #17
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #22
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #17
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #17
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #17
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #23
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #22
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #17
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.69, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %123
  %137 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @atoi(i8* noundef %142) #22
  store i32 %143, i32* %5, align 4
  br label %145

144:                                              ; preds = %136
  store i32 1, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %140
  %146 = load i32, i32* %5, align 4
  %147 = sitofp i32 %146 to float
  %148 = load float, float* %6, align 4
  %149 = fmul contract float %148, %147
  store float %149, float* %6, align 4
  br label %150

150:                                              ; preds = %145, %2
  %151 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %152 = call contract noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %151)
  %153 = load float, float* %6, align 4
  %154 = fadd contract float %152, %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  %157 = sitofp i32 %156 to float
  %158 = fdiv contract float %154, %157
  store float %158, float* %6, align 4
  %159 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %160 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %159, i32 0, i32 4
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %160, align 8
  %162 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %12, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %162)
  %163 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #17
  %164 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  invoke void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %13, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %164)
          to label %165 unwind label %178

165:                                              ; preds = %150
  %166 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #17
  %167 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %168 = invoke noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %167)
          to label %169 unwind label %182

169:                                              ; preds = %165
  %170 = zext i1 %168 to i64
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
          to label %177 unwind label %182

177:                                              ; preds = %169
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #17
  ret void

178:                                              ; preds = %150
  %179 = landingpad { i8*, i32 }
          cleanup
  %180 = extractvalue { i8*, i32 } %179, 0
  store i8* %180, i8** %10, align 8
  %181 = extractvalue { i8*, i32 } %179, 1
  store i32 %181, i32* %11, align 4
  br label %186

182:                                              ; preds = %169, %165
  %183 = landingpad { i8*, i32 }
          cleanup
  %184 = extractvalue { i8*, i32 } %183, 0
  store i8* %184, i8** %10, align 8
  %185 = extractvalue { i8*, i32 } %183, 1
  store i32 %185, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #17
  br label %186

186:                                              ; preds = %182, %178
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %187

187:                                              ; preds = %186, %82
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = insertvalue { i8*, i32 } undef, i8* %188, 0
  %191 = insertvalue { i8*, i32 } %190, i32 %189, 1
  resume { i8*, i32 } %191
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #5

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #5

declare i8* @__cxa_allocate_exception(i64)

declare void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.PerfSerializer*, align 8
  %3 = alloca [200 x i8], align 16
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %4 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  %5 = bitcast %class.PerfSerializer* %4 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV14PerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = invoke i32 @fclose(%struct._IO_FILE* noundef %11)
          to label %13 unwind label %53

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0))
          to label %16 unwind label %53

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = invoke i32 @fclose(%struct._IO_FILE* noundef %23)
          to label %25 unwind label %53

25:                                               ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i64 0, i64 0))
          to label %28 unwind label %53

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %17
  %30 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 5
  %31 = load i8, i8* %30, align 8
  %32 = trunc i8 %31 to i1
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %37, i64 0, i64 0
  %39 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %39, i64 0, i64 0
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #17
  %49 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %50 = invoke i32 @system(i8* noundef %49)
          to label %51 unwind label %53

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %29
  ret void

53:                                               ; preds = %42, %35, %25, %21, %13, %9
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #20
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD0Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %class.PerfSerializer*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %3 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  call void @llvm.trap() #20
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #15 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #17
  call void @_ZSt9terminatev() #20
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @system(i8* noundef) #6

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #6

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #13

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #9 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %6 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 3
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #9 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %6 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #10 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #10 comdat align 2 {
  %2 = alloca float, align 4
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 1
  %6 = load i8, i8* %5, align 8
  %7 = trunc i8 %6 to i1
  %8 = zext i1 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 6
  %12 = load float, float* %11, align 8
  store float %12, float* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 7
  %15 = load float, float* %14, align 4
  store float %15, float* %2, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load float, float* %2, align 4
  ret float %17
}

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %0, %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"*, %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaI6recordEC2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
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
  call void @_ZN9__gnu_cxx13new_allocatorI6recordEC2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
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
define linkonce_odr dso_local void @_ZSt8_DestroyIP6recordS0_EvT_S2_RSaIT0_E(%struct.record* noundef %0, %struct.record* noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #9 comdat {
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
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
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
  call void @_ZNSt12_Vector_baseI6recordSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %18) #17
  ret void

19:                                               ; preds = %1
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #20
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP6recordEvT_S2_(%struct.record* noundef %0, %struct.record* noundef %1) #9 comdat {
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
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP6recordEEvT_S4_(%struct.record* noundef %0, %struct.record* noundef %1) #10 comdat align 2 {
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6recordSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, %struct.record* noundef %1, i64 noundef %2) #9 comdat align 2 {
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
  call void @_ZNSaI6recordED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI6recordEE10deallocateERS1_PS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, i64 noundef %2) #9 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, i64 noundef %2) #10 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %struct.record*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %struct.record* %1, %struct.record** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %struct.record*, %struct.record** %5, align 8
  %9 = bitcast %struct.record* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI6recordED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI6recordED2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
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
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7latLongSaIS0_EEC2Ev(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
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
  call void @_ZNSaI7latLongEC2Ev(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %4) #17
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
  call void @_ZN9__gnu_cxx13new_allocatorI7latLongEC2Ev(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %4) #17
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
define linkonce_odr dso_local void @_ZSt8_DestroyIP7latLongS0_EvT_S2_RSaIT0_E(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %2) #9 comdat {
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
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
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
  call void @_ZNSt12_Vector_baseI7latLongSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %18) #17
  ret void

19:                                               ; preds = %1
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #20
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7latLongEvT_S2_(%struct.latLong* noundef %0, %struct.latLong* noundef %1) #9 comdat {
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
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP7latLongEEvT_S4_(%struct.latLong* noundef %0, %struct.latLong* noundef %1) #10 comdat align 2 {
  %3 = alloca %struct.latLong*, align 8
  %4 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7latLongSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0, %struct.latLong* noundef %1, i64 noundef %2) #9 comdat align 2 {
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
  call void @_ZNSaI7latLongED2Ev(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7latLongEE10deallocateERS1_PS0_m(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, i64 noundef %2) #9 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, i64 noundef %2) #10 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %5 = alloca %struct.latLong*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  store %struct.latLong* %1, %struct.latLong** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  %8 = load %struct.latLong*, %struct.latLong** %5, align 8
  %9 = bitcast %struct.latLong* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI7latLongED2Ev(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %2, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorI7latLongED2Ev(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %4) #17
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
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7latLongEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %2) #9 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt6vectorI7latLongSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, %struct.latLong* %1, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %2) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %16 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0))
  store i64 %16, i64* %7, align 8
  %17 = call %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE5beginEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %15) #17
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  store %struct.latLong* %17, %struct.latLong** %18, align 8
  %19 = call noundef i64 @_ZN9__gnu_cxxmiIP7latLongSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %9) #17
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
  %36 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #17
  %37 = load %struct.latLong*, %struct.latLong** %36, align 8
  %38 = load %struct.latLong*, %struct.latLong** %10, align 8
  %39 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %40 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %39) #17
  %41 = invoke noundef %struct.latLong* @_ZSt34__uninitialized_move_if_noexcept_aIP7latLongS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.latLong* noundef %35, %struct.latLong* noundef %37, %struct.latLong* noundef %38, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %40)
          to label %42 unwind label %56

42:                                               ; preds = %31
  store %struct.latLong* %41, %struct.latLong** %11, align 8
  %43 = load %struct.latLong*, %struct.latLong** %11, align 8
  %44 = getelementptr inbounds %struct.latLong, %struct.latLong* %43, i32 1
  store %struct.latLong* %44, %struct.latLong** %11, align 8
  %45 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #17
  %46 = load %struct.latLong*, %struct.latLong** %45, align 8
  %47 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %48, i32 0, i32 1
  %50 = load %struct.latLong*, %struct.latLong** %49, align 8
  %51 = load %struct.latLong*, %struct.latLong** %11, align 8
  %52 = bitcast %"class.std::vector.0"* %15 to %"struct.std::_Vector_base.1"*
  %53 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %52) #17
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
  %62 = call i8* @__cxa_begin_catch(i8* %61) #17
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
  %81 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %80) #17
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
  invoke void @__cxa_rethrow() #23
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
  %99 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %98) #17
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
  call void @__clang_call_terminate(i8* %138) #20
  unreachable

139:                                              ; preds = %87
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE3endEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %3, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %6, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %struct.latLong** noundef nonnull align 8 dereferenceable(8) %7) #17
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %9 = load %struct.latLong*, %struct.latLong** %8, align 8
  ret %struct.latLong* %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1, %struct.latLong* noundef nonnull align 4 dereferenceable(8) %2) #10 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i8* noundef %2) #9 comdat align 2 {
  %4 = alloca %"class.std::vector.0"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector.0"*, %"class.std::vector.0"** %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %11 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* noundef %16) #23
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %19 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #17
  store i64 %19, i64* %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImEUa9enable_ifILb1EERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %9) #17
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP7latLongSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #10 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #17
  %7 = load %struct.latLong*, %struct.latLong** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #17
  %10 = load %struct.latLong*, %struct.latLong** %9, align 8
  %11 = ptrtoint %struct.latLong* %7 to i64
  %12 = ptrtoint %struct.latLong* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.latLong* @_ZNSt6vectorI7latLongSaIS0_EE5beginEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %3, align 8
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl", %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %6, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %struct.latLong** noundef nonnull align 8 dereferenceable(8) %7) #17
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %9 = load %struct.latLong*, %struct.latLong** %8, align 8
  ret %struct.latLong* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt12_Vector_baseI7latLongSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #9 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt34__uninitialized_move_if_noexcept_aIP7latLongS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %3) #9 comdat {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %struct.latLong** @_ZNK9__gnu_cxx17__normal_iteratorIP7latLongSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #10 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  ret %struct.latLong** %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7latLongEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1) #9 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE8max_sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %0, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI7latLongEE8max_sizeERKS1_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %5) #17
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7latLongSaIS0_EE4sizeEv(%"class.std::vector.0"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
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
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) #16

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImEUa9enable_ifILb1EERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #10 comdat {
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
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI7latLongEE8max_sizeERKS1_(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0) #10 comdat align 2 {
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"*, %"class.std::allocator.2"** %2, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7latLongE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %4) #17
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseI7latLongSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %0, %"struct.std::_Vector_base.1"** %2, align 8
  %3 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<latLong, std::allocator<latLong>>::_Vector_impl"* %4 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7latLongE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0) #10 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt16allocator_traitsISaI7latLongEE8allocateERS1_m(%"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #9 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZN9__gnu_cxx13new_allocatorI7latLongE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #9 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7latLongE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %7) #17
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 8
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #24
  %16 = bitcast i8* %15 to %struct.latLong*
  ret %struct.latLong* %16
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #16

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt22__uninitialized_copy_aISt13move_iteratorIP7latLongES2_S1_ET0_T_S5_S4_RSaIT1_E(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2, %"class.std::allocator.2"* noundef nonnull align 1 dereferenceable(1) %3) #9 comdat {
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
define linkonce_odr dso_local %struct.latLong* @_ZSt32__make_move_if_noexcept_iteratorI7latLongSt13move_iteratorIPS0_EET0_PT_(%struct.latLong* noundef %0) #9 comdat {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt18uninitialized_copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2) #9 comdat {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP7latLongES4_EET0_T_S7_S6_(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2) #9 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt4copyISt13move_iteratorIP7latLongES2_ET0_T_S5_S4_(%struct.latLong* %0, %struct.latLong* %1, %struct.latLong* noundef %2) #9 comdat {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt14__copy_move_a2ILb1EP7latLongS1_ET1_T0_S3_S2_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2) #9 comdat {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.latLong* %0) #9 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %2, i32 0, i32 0
  store %struct.latLong* %0, %struct.latLong** %3, align 8
  %4 = call noundef %struct.latLong* @_ZNKSt13move_iteratorIP7latLongE4baseEv(%"class.std::move_iterator"* noundef nonnull align 8 dereferenceable(8) %2)
  %5 = call noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongET_S2_(%struct.latLong* noundef %4)
  ret %struct.latLong* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt13__copy_move_aILb1EP7latLongS1_ET1_T0_S3_S2_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2) #9 comdat {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt12__niter_baseIP7latLongET_S2_(%struct.latLong* noundef %0) #10 comdat {
  %2 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %2, align 8
  %3 = load %struct.latLong*, %struct.latLong** %2, align 8
  ret %struct.latLong* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI7latLongEEPT_PKS4_S7_S5_(%struct.latLong* noundef %0, %struct.latLong* noundef %1, %struct.latLong* noundef %2) #10 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.latLong* @_ZSt12__miter_baseIP7latLongET_S2_(%struct.latLong* noundef %0) #10 comdat {
  %2 = alloca %struct.latLong*, align 8
  store %struct.latLong* %0, %struct.latLong** %2, align 8
  %3 = load %struct.latLong*, %struct.latLong** %2, align 8
  ret %struct.latLong* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.latLong* @_ZNKSt13move_iteratorIP7latLongE4baseEv(%"class.std::move_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #10 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7latLongE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator.3"* noundef nonnull align 1 dereferenceable(1) %0, %struct.latLong* noundef %1) #10 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %4 = alloca %struct.latLong*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %3, align 8
  store %struct.latLong* %1, %struct.latLong** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"*, %"class.__gnu_cxx::new_allocator.3"** %3, align 8
  %6 = load %struct.latLong*, %struct.latLong** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI6recordEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, %struct.record* noundef nonnull align 4 dereferenceable(60) %2) #9 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt6vectorI6recordSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %struct.record* %1, %struct.record* noundef nonnull align 4 dereferenceable(60) %2) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %10 = alloca %struct.record*, align 8
  %11 = alloca %struct.record*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %4, i32 0, i32 0
  store %struct.record* %1, %struct.record** %14, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %15 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %16 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0))
  store i64 %16, i64* %7, align 8
  %17 = call %struct.record* @_ZNSt6vectorI6recordSaIS0_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %15) #17
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %9, i32 0, i32 0
  store %struct.record* %17, %struct.record** %18, align 8
  %19 = call noundef i64 @_ZN9__gnu_cxxmiIP6recordSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %9) #17
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
  %36 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %4) #17
  %37 = load %struct.record*, %struct.record** %36, align 8
  %38 = load %struct.record*, %struct.record** %10, align 8
  %39 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %40 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %39) #17
  %41 = invoke noundef %struct.record* @_ZSt34__uninitialized_move_if_noexcept_aIP6recordS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.record* noundef %35, %struct.record* noundef %37, %struct.record* noundef %38, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40)
          to label %42 unwind label %56

42:                                               ; preds = %31
  store %struct.record* %41, %struct.record** %11, align 8
  %43 = load %struct.record*, %struct.record** %11, align 8
  %44 = getelementptr inbounds %struct.record, %struct.record* %43, i32 1
  store %struct.record* %44, %struct.record** %11, align 8
  %45 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %4) #17
  %46 = load %struct.record*, %struct.record** %45, align 8
  %47 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %48, i32 0, i32 1
  %50 = load %struct.record*, %struct.record** %49, align 8
  %51 = load %struct.record*, %struct.record** %11, align 8
  %52 = bitcast %"class.std::vector"* %15 to %"struct.std::_Vector_base"*
  %53 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %52) #17
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
  %62 = call i8* @__cxa_begin_catch(i8* %61) #17
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
  %81 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %80) #17
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
  invoke void @__cxa_rethrow() #23
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
  %99 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %98) #17
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
  call void @__clang_call_terminate(i8* %138) #20
  unreachable

139:                                              ; preds = %87
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.record* @_ZNSt6vectorI6recordSaIS0_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %6, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %2, %struct.record** noundef nonnull align 8 dereferenceable(8) %7) #17
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %2, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  ret %struct.record* %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1, %struct.record* noundef nonnull align 4 dereferenceable(60) %2) #10 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i8* noundef %2) #9 comdat align 2 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %11 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* noundef %16) #23
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %19 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #17
  store i64 %19, i64* %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImEUa9enable_ifILb1EERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #17
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #17
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP6recordSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %1) #10 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %0, %"class.__gnu_cxx::__normal_iterator.8"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %1, %"class.__gnu_cxx::__normal_iterator.8"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %5) #17
  %7 = load %struct.record*, %struct.record** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %8) #17
  %10 = load %struct.record*, %struct.record** %9, align 8
  %11 = ptrtoint %struct.record* %7 to i64
  %12 = ptrtoint %struct.record* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 60
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct.record* @_ZNSt6vectorI6recordSaIS0_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl", %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %6, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %2, %struct.record** noundef nonnull align 8 dereferenceable(8) %7) #17
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %2, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  ret %struct.record* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt12_Vector_baseI6recordSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #9 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.record* @_ZSt34__uninitialized_move_if_noexcept_aIP6recordS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #9 comdat {
  %5 = alloca %struct.record*, align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca %struct.record*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.std::move_iterator.9", align 8
  %10 = alloca %"class.std::move_iterator.9", align 8
  store %struct.record* %0, %struct.record** %5, align 8
  store %struct.record* %1, %struct.record** %6, align 8
  store %struct.record* %2, %struct.record** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %11 = load %struct.record*, %struct.record** %5, align 8
  %12 = call %struct.record* @_ZSt32__make_move_if_noexcept_iteratorI6recordSt13move_iteratorIPS0_EET0_PT_(%struct.record* noundef %11)
  %13 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %9, i32 0, i32 0
  store %struct.record* %12, %struct.record** %13, align 8
  %14 = load %struct.record*, %struct.record** %6, align 8
  %15 = call %struct.record* @_ZSt32__make_move_if_noexcept_iteratorI6recordSt13move_iteratorIPS0_EET0_PT_(%struct.record* noundef %14)
  %16 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %10, i32 0, i32 0
  store %struct.record* %15, %struct.record** %16, align 8
  %17 = load %struct.record*, %struct.record** %7, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %19 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %9, i32 0, i32 0
  %20 = load %struct.record*, %struct.record** %19, align 8
  %21 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %10, i32 0, i32 0
  %22 = load %struct.record*, %struct.record** %21, align 8
  %23 = call noundef %struct.record* @_ZSt22__uninitialized_copy_aISt13move_iteratorIP6recordES2_S1_ET0_T_S5_S4_RSaIT1_E(%struct.record* %20, %struct.record* %22, %struct.record* noundef %17, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18)
  ret %struct.record* %23
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %struct.record** @_ZNK9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %0) #10 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %0, %"class.__gnu_cxx::__normal_iterator.8"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %3, i32 0, i32 0
  ret %struct.record** %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI6recordEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1) #9 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI6recordEE8max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #17
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6recordSaIS0_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI6recordEE8max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #10 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI6recordE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseI6recordSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #10 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<record, std::allocator<record>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI6recordE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) #10 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 307445734561825860
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP6recordSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.8"* noundef nonnull align 8 dereferenceable(8) %0, %struct.record** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  %4 = alloca %struct.record**, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %0, %"class.__gnu_cxx::__normal_iterator.8"** %3, align 8
  store %struct.record** %1, %struct.record*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %5, i32 0, i32 0
  %7 = load %struct.record**, %struct.record*** %4, align 8
  %8 = load %struct.record*, %struct.record** %7, align 8
  store %struct.record* %8, %struct.record** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt16allocator_traitsISaI6recordEE8allocateERS1_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #9 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.record* @_ZN9__gnu_cxx13new_allocatorI6recordE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #9 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI6recordE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #17
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 60
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #24
  %16 = bitcast i8* %15 to %struct.record*
  ret %struct.record* %16
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt22__uninitialized_copy_aISt13move_iteratorIP6recordES2_S1_ET0_T_S5_S4_RSaIT1_E(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #9 comdat {
  %5 = alloca %"class.std::move_iterator.9", align 8
  %6 = alloca %"class.std::move_iterator.9", align 8
  %7 = alloca %struct.record*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.std::move_iterator.9", align 8
  %10 = alloca %"class.std::move_iterator.9", align 8
  %11 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %5, i32 0, i32 0
  store %struct.record* %0, %struct.record** %11, align 8
  %12 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %6, i32 0, i32 0
  store %struct.record* %1, %struct.record** %12, align 8
  store %struct.record* %2, %struct.record** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %13 = bitcast %"class.std::move_iterator.9"* %9 to i8*
  %14 = bitcast %"class.std::move_iterator.9"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.std::move_iterator.9"* %10 to i8*
  %16 = bitcast %"class.std::move_iterator.9"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.record*, %struct.record** %7, align 8
  %18 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %9, i32 0, i32 0
  %19 = load %struct.record*, %struct.record** %18, align 8
  %20 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %10, i32 0, i32 0
  %21 = load %struct.record*, %struct.record** %20, align 8
  %22 = call noundef %struct.record* @_ZSt18uninitialized_copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %19, %struct.record* %21, %struct.record* noundef %17)
  ret %struct.record* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %struct.record* @_ZSt32__make_move_if_noexcept_iteratorI6recordSt13move_iteratorIPS0_EET0_PT_(%struct.record* noundef %0) #9 comdat {
  %2 = alloca %"class.std::move_iterator.9", align 8
  %3 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  %4 = load %struct.record*, %struct.record** %3, align 8
  call void @_ZNSt13move_iteratorIP6recordEC2ES1_(%"class.std::move_iterator.9"* noundef nonnull align 8 dereferenceable(8) %2, %struct.record* noundef %4)
  %5 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %2, i32 0, i32 0
  %6 = load %struct.record*, %struct.record** %5, align 8
  ret %struct.record* %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt18uninitialized_copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2) #9 comdat {
  %4 = alloca %"class.std::move_iterator.9", align 8
  %5 = alloca %"class.std::move_iterator.9", align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.std::move_iterator.9", align 8
  %9 = alloca %"class.std::move_iterator.9", align 8
  %10 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %4, i32 0, i32 0
  store %struct.record* %0, %struct.record** %10, align 8
  %11 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %5, i32 0, i32 0
  store %struct.record* %1, %struct.record** %11, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  store i8 1, i8* %7, align 1
  %12 = bitcast %"class.std::move_iterator.9"* %8 to i8*
  %13 = bitcast %"class.std::move_iterator.9"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = bitcast %"class.std::move_iterator.9"* %9 to i8*
  %15 = bitcast %"class.std::move_iterator.9"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.record*, %struct.record** %6, align 8
  %17 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %8, i32 0, i32 0
  %18 = load %struct.record*, %struct.record** %17, align 8
  %19 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %9, i32 0, i32 0
  %20 = load %struct.record*, %struct.record** %19, align 8
  %21 = call noundef %struct.record* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6recordES4_EET0_T_S7_S6_(%struct.record* %18, %struct.record* %20, %struct.record* noundef %16)
  ret %struct.record* %21
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP6recordES4_EET0_T_S7_S6_(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2) #9 comdat align 2 {
  %4 = alloca %"class.std::move_iterator.9", align 8
  %5 = alloca %"class.std::move_iterator.9", align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca %"class.std::move_iterator.9", align 8
  %8 = alloca %"class.std::move_iterator.9", align 8
  %9 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %4, i32 0, i32 0
  store %struct.record* %0, %struct.record** %9, align 8
  %10 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %5, i32 0, i32 0
  store %struct.record* %1, %struct.record** %10, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %11 = bitcast %"class.std::move_iterator.9"* %7 to i8*
  %12 = bitcast %"class.std::move_iterator.9"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %"class.std::move_iterator.9"* %8 to i8*
  %14 = bitcast %"class.std::move_iterator.9"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct.record*, %struct.record** %6, align 8
  %16 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %7, i32 0, i32 0
  %17 = load %struct.record*, %struct.record** %16, align 8
  %18 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %8, i32 0, i32 0
  %19 = load %struct.record*, %struct.record** %18, align 8
  %20 = call noundef %struct.record* @_ZSt4copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %17, %struct.record* %19, %struct.record* noundef %15)
  ret %struct.record* %20
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt4copyISt13move_iteratorIP6recordES2_ET0_T_S5_S4_(%struct.record* %0, %struct.record* %1, %struct.record* noundef %2) #9 comdat {
  %4 = alloca %"class.std::move_iterator.9", align 8
  %5 = alloca %"class.std::move_iterator.9", align 8
  %6 = alloca %struct.record*, align 8
  %7 = alloca %"class.std::move_iterator.9", align 8
  %8 = alloca %"class.std::move_iterator.9", align 8
  %9 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %4, i32 0, i32 0
  store %struct.record* %0, %struct.record** %9, align 8
  %10 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %5, i32 0, i32 0
  store %struct.record* %1, %struct.record** %10, align 8
  store %struct.record* %2, %struct.record** %6, align 8
  %11 = bitcast %"class.std::move_iterator.9"* %7 to i8*
  %12 = bitcast %"class.std::move_iterator.9"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %7, i32 0, i32 0
  %14 = load %struct.record*, %struct.record** %13, align 8
  %15 = call noundef %struct.record* @_ZSt12__miter_baseIP6recordEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.record* %14)
  %16 = bitcast %"class.std::move_iterator.9"* %8 to i8*
  %17 = bitcast %"class.std::move_iterator.9"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %8, i32 0, i32 0
  %19 = load %struct.record*, %struct.record** %18, align 8
  %20 = call noundef %struct.record* @_ZSt12__miter_baseIP6recordEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.record* %19)
  %21 = load %struct.record*, %struct.record** %6, align 8
  %22 = call noundef %struct.record* @_ZSt14__copy_move_a2ILb1EP6recordS1_ET1_T0_S3_S2_(%struct.record* noundef %15, %struct.record* noundef %20, %struct.record* noundef %21)
  ret %struct.record* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt14__copy_move_a2ILb1EP6recordS1_ET1_T0_S3_S2_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2) #9 comdat {
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
define linkonce_odr dso_local noundef %struct.record* @_ZSt12__miter_baseIP6recordEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct.record* %0) #9 comdat {
  %2 = alloca %"class.std::move_iterator.9", align 8
  %3 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %2, i32 0, i32 0
  store %struct.record* %0, %struct.record** %3, align 8
  %4 = call noundef %struct.record* @_ZNKSt13move_iteratorIP6recordE4baseEv(%"class.std::move_iterator.9"* noundef nonnull align 8 dereferenceable(8) %2)
  %5 = call noundef %struct.record* @_ZSt12__miter_baseIP6recordET_S2_(%struct.record* noundef %4)
  ret %struct.record* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZSt13__copy_move_aILb1EP6recordS1_ET1_T0_S3_S2_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2) #9 comdat {
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
define linkonce_odr dso_local noundef %struct.record* @_ZSt12__niter_baseIP6recordET_S2_(%struct.record* noundef %0) #10 comdat {
  %2 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %2, align 8
  %3 = load %struct.record*, %struct.record** %2, align 8
  ret %struct.record* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI6recordEEPT_PKS4_S7_S5_(%struct.record* noundef %0, %struct.record* noundef %1, %struct.record* noundef %2) #10 comdat align 2 {
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
define linkonce_odr dso_local noundef %struct.record* @_ZSt12__miter_baseIP6recordET_S2_(%struct.record* noundef %0) #10 comdat {
  %2 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %2, align 8
  %3 = load %struct.record*, %struct.record** %2, align 8
  ret %struct.record* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %struct.record* @_ZNKSt13move_iteratorIP6recordE4baseEv(%"class.std::move_iterator.9"* noundef nonnull align 8 dereferenceable(8) %0) #10 comdat align 2 {
  %2 = alloca %"class.std::move_iterator.9"*, align 8
  store %"class.std::move_iterator.9"* %0, %"class.std::move_iterator.9"** %2, align 8
  %3 = load %"class.std::move_iterator.9"*, %"class.std::move_iterator.9"** %2, align 8
  %4 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %3, i32 0, i32 0
  %5 = load %struct.record*, %struct.record** %4, align 8
  ret %struct.record* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIP6recordEC2ES1_(%"class.std::move_iterator.9"* noundef nonnull align 8 dereferenceable(8) %0, %struct.record* noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"class.std::move_iterator.9"*, align 8
  %4 = alloca %struct.record*, align 8
  store %"class.std::move_iterator.9"* %0, %"class.std::move_iterator.9"** %3, align 8
  store %struct.record* %1, %struct.record** %4, align 8
  %5 = load %"class.std::move_iterator.9"*, %"class.std::move_iterator.9"** %3, align 8
  %6 = getelementptr inbounds %"class.std::move_iterator.9", %"class.std::move_iterator.9"* %5, i32 0, i32 0
  %7 = load %struct.record*, %struct.record** %4, align 8
  store %struct.record* %7, %struct.record** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI6recordE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.record* noundef %1) #10 comdat align 2 {
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
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noinline noreturn nounwind }
attributes #16 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { noreturn }
attributes #24 = { allocsize(0) }

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
