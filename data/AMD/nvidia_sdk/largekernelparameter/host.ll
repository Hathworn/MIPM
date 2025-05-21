; ModuleID = 'largekernelparameter.cpp'
source_filename = "largekernelparameter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.param_t = type { [1024 x i32] }
%struct.param_large_t = type { [8000 x i32] }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@excess_params = internal global [6976 x i32] undef, align 16
@_Z13kernelDefault7param_tPi = dso_local constant void (%struct.param_t*, i32*)* @_Z28__device_stub__kernelDefault7param_tPi, align 8
@_Z16kernelLargeParam13param_large_tPi = dso_local constant void (%struct.param_large_t*, i32*)* @_Z31__device_stub__kernelLargeParam13param_large_tPi, align 8
@.str = private unnamed_addr constant [14 x i8] c"copied_params\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"largekernelparameter.cpp\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"hipMalloc(&d_result, sizeof(int))\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"hipMemcpyToSymbol(HIP_SYMBOL(excess_params), copied_params, CONST_COPIED_PARAMS * sizeof(int), 0, hipMemcpyHostToDevice)\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"hipMemcpy(&h_result, d_result, sizeof(int), hipMemcpyDeviceToHost)\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"hipDeviceSynchronize()\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"Test failed\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Kernel 4KB parameter limit - time (us):\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Kernel 32,764 byte parameter limit - time (us):\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Test passed!\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"CUDA error at %s:%d code=%d(%s) \22%s\22 \0A\00", align 1
@0 = private unnamed_addr constant [28 x i8] c"_Z13kernelDefault7param_tPi\00", align 1
@1 = private unnamed_addr constant [38 x i8] c"_Z16kernelLargeParam13param_large_tPi\00", align 1
@2 = private unnamed_addr constant [14 x i8] c"excess_params\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_largekernelparameter.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z28__device_stub__kernelDefault7param_tPi(%struct.param_t* byval(%struct.param_t) align 8 %0, i32* %1) #3 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dim3, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %1, i32** %3, align 8, !tbaa !3
  %8 = alloca [2 x i8*], align 16
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %10 = bitcast [2 x i8*]* %8 to %struct.param_t**
  store %struct.param_t* %0, %struct.param_t** %10, align 16
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %12 = bitcast i8** %11 to i32***
  store i32** %3, i32*** %12, align 8
  %13 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %4, %struct.dim3* nonnull %5, i64* nonnull %6, i8** nonnull %7)
  %14 = load i64, i64* %6, align 8
  %15 = bitcast i8** %7 to %struct.ihipStream_t**
  %16 = load %struct.ihipStream_t*, %struct.ihipStream_t** %15, align 8
  %17 = bitcast %struct.dim3* %4 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.dim3, %struct.dim3* %4, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = bitcast %struct.dim3* %5 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.param_t*, i32*)** @_Z13kernelDefault7param_tPi to i8*), i64 %18, i32 %20, i64 %22, i32 %24, i8** nonnull %9, i64 %14, %struct.ihipStream_t* %16)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: norecurse uwtable
define dso_local void @_Z31__device_stub__kernelLargeParam13param_large_tPi(%struct.param_large_t* byval(%struct.param_large_t) align 8 %0, i32* %1) #3 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dim3, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %1, i32** %3, align 8, !tbaa !3
  %8 = alloca [2 x i8*], align 16
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %10 = bitcast [2 x i8*]* %8 to %struct.param_large_t**
  store %struct.param_large_t* %0, %struct.param_large_t** %10, align 16
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %12 = bitcast i8** %11 to i32***
  store i32** %3, i32*** %12, align 8
  %13 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %4, %struct.dim3* nonnull %5, i64* nonnull %6, i8** nonnull %7)
  %14 = load i64, i64* %6, align 8
  %15 = bitcast i8** %7 to %struct.ihipStream_t**
  %16 = load %struct.ihipStream_t*, %struct.ihipStream_t** %15, align 8
  %17 = bitcast %struct.dim3* %4 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.dim3, %struct.dim3* %4, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = bitcast %struct.dim3* %5 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.param_large_t*, i32*)** @_Z16kernelLargeParam13param_large_tPi to i8*), i64 %18, i32 %20, i64 %22, i32 %24, i8** nonnull %9, i64 %14, %struct.ihipStream_t* %16)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dim3, align 8
  %3 = alloca %struct.dim3, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca %struct.param_large_t, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i8*], align 16
  %14 = alloca %struct.param_t, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca %struct.dim3, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [2 x i8*], align 16
  %21 = alloca %struct.param_large_t, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.dim3, align 8
  %24 = alloca %struct.dim3, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca [2 x i8*], align 16
  %28 = alloca %struct.param_t, align 8
  %29 = alloca %struct.param_t, align 4
  %30 = alloca %struct.param_large_t, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = tail call i32 @hipFree(i8* null)
  %34 = bitcast %struct.param_t* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %34) #14
  %35 = bitcast %struct.param_large_t* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32000, i8* nonnull %35) #14
  %36 = tail call noalias align 16 dereferenceable_or_null(27904) i8* @malloc(i64 27904) #14
  %37 = bitcast i8* %36 to i32*
  %38 = icmp eq i8* %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %0
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

40:                                               ; preds = %0
  %41 = bitcast i32** %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #14
  %42 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #14
  %43 = bitcast i32** %31 to i8**
  %44 = call i32 @hipMalloc(i8** nonnull %43, i64 4)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %40, %46
  %47 = phi i64 [ %65, %46 ], [ 0, %40 ]
  %48 = phi <4 x i32> [ %66, %46 ], [ <i32 0, i32 1, i32 2, i32 3>, %40 ]
  %49 = add <4 x i32> %48, <i32 4, i32 4, i32 4, i32 4>
  %50 = and <4 x i32> %48, <i32 255, i32 255, i32 255, i32 255>
  %51 = and <4 x i32> %49, <i32 255, i32 255, i32 255, i32 255>
  %52 = getelementptr inbounds %struct.param_t, %struct.param_t* %29, i64 0, i32 0, i64 %47
  %53 = bitcast i32* %52 to <4 x i32>*
  store <4 x i32> %50, <4 x i32>* %53, align 4, !tbaa !7
  %54 = getelementptr inbounds i32, i32* %52, i64 4
  %55 = bitcast i32* %54 to <4 x i32>*
  store <4 x i32> %51, <4 x i32>* %55, align 4, !tbaa !7
  %56 = or i64 %47, 8
  %57 = add <4 x i32> %48, <i32 8, i32 8, i32 8, i32 8>
  %58 = add <4 x i32> %48, <i32 12, i32 12, i32 12, i32 12>
  %59 = and <4 x i32> %57, <i32 255, i32 255, i32 255, i32 255>
  %60 = and <4 x i32> %58, <i32 255, i32 255, i32 255, i32 255>
  %61 = getelementptr inbounds %struct.param_t, %struct.param_t* %29, i64 0, i32 0, i64 %56
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %59, <4 x i32>* %62, align 4, !tbaa !7
  %63 = getelementptr inbounds i32, i32* %61, i64 4
  %64 = bitcast i32* %63 to <4 x i32>*
  store <4 x i32> %60, <4 x i32>* %64, align 4, !tbaa !7
  %65 = add nuw nsw i64 %47, 16
  %66 = add <4 x i32> %48, <i32 16, i32 16, i32 16, i32 16>
  %67 = icmp eq i64 %65, 1024
  br i1 %67, label %72, label %46, !llvm.loop !9

68:                                               ; preds = %40
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %70 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %44)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 109, i32 %44, i8* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

72:                                               ; preds = %46, %72
  %73 = phi i64 [ %91, %72 ], [ 0, %46 ]
  %74 = phi <4 x i32> [ %92, %72 ], [ <i32 1024, i32 1025, i32 1026, i32 1027>, %46 ]
  %75 = add <4 x i32> %74, <i32 4, i32 4, i32 4, i32 4>
  %76 = and <4 x i32> %74, <i32 255, i32 255, i32 255, i32 255>
  %77 = and <4 x i32> %75, <i32 255, i32 255, i32 255, i32 255>
  %78 = getelementptr inbounds i32, i32* %37, i64 %73
  %79 = bitcast i32* %78 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %79, align 16, !tbaa !7
  %80 = getelementptr inbounds i32, i32* %78, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  store <4 x i32> %77, <4 x i32>* %81, align 16, !tbaa !7
  %82 = or i64 %73, 8
  %83 = add <4 x i32> %74, <i32 8, i32 8, i32 8, i32 8>
  %84 = add <4 x i32> %74, <i32 12, i32 12, i32 12, i32 12>
  %85 = and <4 x i32> %83, <i32 255, i32 255, i32 255, i32 255>
  %86 = and <4 x i32> %84, <i32 255, i32 255, i32 255, i32 255>
  %87 = getelementptr inbounds i32, i32* %37, i64 %82
  %88 = bitcast i32* %87 to <4 x i32>*
  store <4 x i32> %85, <4 x i32>* %88, align 16, !tbaa !7
  %89 = getelementptr inbounds i32, i32* %87, i64 4
  %90 = bitcast i32* %89 to <4 x i32>*
  store <4 x i32> %86, <4 x i32>* %90, align 16, !tbaa !7
  %91 = add nuw nsw i64 %73, 16
  %92 = add <4 x i32> %74, <i32 16, i32 16, i32 16, i32 16>
  %93 = icmp eq i64 %91, 6976
  br i1 %93, label %94, label %72, !llvm.loop !12

94:                                               ; preds = %72, %94
  %95 = phi i64 [ %119, %94 ], [ 0, %72 ]
  %96 = phi <4 x i32> [ %117, %94 ], [ zeroinitializer, %72 ]
  %97 = phi <4 x i32> [ %118, %94 ], [ zeroinitializer, %72 ]
  %98 = phi <4 x i32> [ %120, %94 ], [ <i32 0, i32 1, i32 2, i32 3>, %72 ]
  %99 = add <4 x i32> %98, <i32 4, i32 4, i32 4, i32 4>
  %100 = and <4 x i32> %98, <i32 255, i32 255, i32 255, i32 255>
  %101 = and <4 x i32> %99, <i32 255, i32 255, i32 255, i32 255>
  %102 = getelementptr inbounds %struct.param_large_t, %struct.param_large_t* %30, i64 0, i32 0, i64 %95
  %103 = bitcast i32* %102 to <4 x i32>*
  store <4 x i32> %100, <4 x i32>* %103, align 4, !tbaa !7
  %104 = getelementptr inbounds i32, i32* %102, i64 4
  %105 = bitcast i32* %104 to <4 x i32>*
  store <4 x i32> %101, <4 x i32>* %105, align 4, !tbaa !7
  %106 = add <4 x i32> %96, %100
  %107 = add <4 x i32> %97, %101
  %108 = or i64 %95, 8
  %109 = add <4 x i32> %98, <i32 8, i32 8, i32 8, i32 8>
  %110 = add <4 x i32> %98, <i32 12, i32 12, i32 12, i32 12>
  %111 = and <4 x i32> %109, <i32 255, i32 255, i32 255, i32 255>
  %112 = and <4 x i32> %110, <i32 255, i32 255, i32 255, i32 255>
  %113 = getelementptr inbounds %struct.param_large_t, %struct.param_large_t* %30, i64 0, i32 0, i64 %108
  %114 = bitcast i32* %113 to <4 x i32>*
  store <4 x i32> %111, <4 x i32>* %114, align 4, !tbaa !7
  %115 = getelementptr inbounds i32, i32* %113, i64 4
  %116 = bitcast i32* %115 to <4 x i32>*
  store <4 x i32> %112, <4 x i32>* %116, align 4, !tbaa !7
  %117 = add <4 x i32> %106, %111
  %118 = add <4 x i32> %107, %112
  %119 = add nuw nsw i64 %95, 16
  %120 = add <4 x i32> %98, <i32 16, i32 16, i32 16, i32 16>
  %121 = icmp eq i64 %119, 8000
  br i1 %121, label %122, label %94, !llvm.loop !13

122:                                              ; preds = %94
  %123 = add <4 x i32> %118, %117
  %124 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %123)
  %125 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([6976 x i32]* @excess_params to i8*), i8* nonnull %36, i64 27904, i64 0, i32 1)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %129 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %125)
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 126, i32 %125, i8* %129, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

131:                                              ; preds = %122
  %132 = call i32 @__hipPushCallConfiguration(i64 4294967297, i32 1, i64 4294967297, i32 1, i64 0, %struct.ihipStream_t* null)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %131
  %135 = load i32*, i32** %31, align 8, !tbaa !3
  %136 = bitcast %struct.param_t* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %136)
  %137 = bitcast i32** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137)
  %138 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %138)
  %139 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %139)
  %140 = bitcast i64* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %140)
  %141 = bitcast i8** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %141)
  %142 = bitcast [2 x i8*]* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %142)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(4096) %136, i8* noundef nonnull align 4 dereferenceable(4096) %34, i64 4096, i1 false)
  store i32* %135, i32** %22, align 8, !tbaa !3
  %143 = getelementptr inbounds [2 x i8*], [2 x i8*]* %27, i64 0, i64 0
  %144 = bitcast [2 x i8*]* %27 to %struct.param_t**
  store %struct.param_t* %28, %struct.param_t** %144, align 16
  %145 = getelementptr inbounds [2 x i8*], [2 x i8*]* %27, i64 0, i64 1
  %146 = bitcast i8** %145 to i32***
  store i32** %22, i32*** %146, align 8
  %147 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %23, %struct.dim3* nonnull %24, i64* nonnull %25, i8** nonnull %26)
  %148 = load i64, i64* %25, align 8
  %149 = bitcast i8** %26 to %struct.ihipStream_t**
  %150 = load %struct.ihipStream_t*, %struct.ihipStream_t** %149, align 8
  %151 = bitcast %struct.dim3* %23 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.dim3, %struct.dim3* %23, i64 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = bitcast %struct.dim3* %24 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i64 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.param_t*, i32*)** @_Z13kernelDefault7param_tPi to i8*), i64 %152, i32 %154, i64 %156, i32 %158, i8** nonnull %143, i64 %148, %struct.ihipStream_t* %150)
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %136)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %137)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %138)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %139)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %140)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %141)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %142)
  br label %160

160:                                              ; preds = %134, %131
  %161 = load i8*, i8** %43, align 8, !tbaa !3
  %162 = call i32 @hipMemcpy(i8* nonnull %42, i8* %161, i64 4, i32 2)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %166 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %162)
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 128, i32 %162, i8* %166, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

168:                                              ; preds = %160
  %169 = call i32 @hipDeviceSynchronize()
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %173 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %169)
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 129, i32 %169, i8* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

175:                                              ; preds = %168
  %176 = load i32, i32* %32, align 4, !tbaa !7
  %177 = icmp eq i32 %176, %124
  br i1 %177, label %203, label %178

178:                                              ; preds = %175
  %179 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 11)
  %180 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !14
  %181 = getelementptr i8, i8* %180, i64 -24
  %182 = bitcast i8* %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %183
  %185 = getelementptr inbounds i8, i8* %184, i64 240
  %186 = bitcast i8* %185 to %"class.std::ctype"**
  %187 = load %"class.std::ctype"*, %"class.std::ctype"** %186, align 8, !tbaa !16
  %188 = icmp eq %"class.std::ctype"* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

190:                                              ; preds = %178
  %191 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %187, i64 0, i32 8
  %192 = load i8, i8* %191, align 8, !tbaa !19
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %187, i64 0, i32 9, i64 10
  %196 = load i8, i8* %195, align 1, !tbaa !21
  br label %465

197:                                              ; preds = %190
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %187)
  %198 = bitcast %"class.std::ctype"* %187 to i8 (%"class.std::ctype"*, i8)***
  %199 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %198, align 8, !tbaa !14
  %200 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %199, i64 6
  %201 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %200, align 8
  %202 = call signext i8 %201(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %187, i8 signext 10)
  br label %465

203:                                              ; preds = %175
  %204 = call i32 @__hipPushCallConfiguration(i64 4294967297, i32 1, i64 4294967297, i32 1, i64 0, %struct.ihipStream_t* null)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %203
  %207 = load i32*, i32** %31, align 8, !tbaa !3
  %208 = bitcast %struct.param_large_t* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32000, i8* nonnull %208)
  %209 = bitcast i32** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %209)
  %210 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %210)
  %211 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %211)
  %212 = bitcast i64* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %212)
  %213 = bitcast i8** %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %213)
  %214 = bitcast [2 x i8*]* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %214)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %208, i8* noundef nonnull align 4 dereferenceable(32000) %35, i64 32000, i1 false)
  store i32* %207, i32** %15, align 8, !tbaa !3
  %215 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  %216 = bitcast [2 x i8*]* %20 to %struct.param_large_t**
  store %struct.param_large_t* %21, %struct.param_large_t** %216, align 16
  %217 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 1
  %218 = bitcast i8** %217 to i32***
  store i32** %15, i32*** %218, align 8
  %219 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %16, %struct.dim3* nonnull %17, i64* nonnull %18, i8** nonnull %19)
  %220 = load i64, i64* %18, align 8
  %221 = bitcast i8** %19 to %struct.ihipStream_t**
  %222 = load %struct.ihipStream_t*, %struct.ihipStream_t** %221, align 8
  %223 = bitcast %struct.dim3* %16 to i64*
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = bitcast %struct.dim3* %17 to i64*
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.param_large_t*, i32*)** @_Z16kernelLargeParam13param_large_tPi to i8*), i64 %224, i32 %226, i64 %228, i32 %230, i8** nonnull %215, i64 %220, %struct.ihipStream_t* %222)
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* nonnull %208)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %209)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %210)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %211)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %212)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %213)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %214)
  br label %232

232:                                              ; preds = %206, %203
  %233 = load i8*, i8** %43, align 8, !tbaa !3
  %234 = call i32 @hipMemcpy(i8* nonnull %42, i8* %233, i64 4, i32 2)
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %238 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %234)
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 137, i32 %234, i8* %238, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

240:                                              ; preds = %232
  %241 = call i32 @hipDeviceSynchronize()
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %240
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %245 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %241)
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 138, i32 %241, i8* %245, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

247:                                              ; preds = %240
  %248 = load i32, i32* %32, align 4, !tbaa !7
  %249 = icmp eq i32 %248, %124
  br i1 %249, label %275, label %250

250:                                              ; preds = %247
  %251 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 11)
  %252 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !14
  %253 = getelementptr i8, i8* %252, i64 -24
  %254 = bitcast i8* %253 to i64*
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %255
  %257 = getelementptr inbounds i8, i8* %256, i64 240
  %258 = bitcast i8* %257 to %"class.std::ctype"**
  %259 = load %"class.std::ctype"*, %"class.std::ctype"** %258, align 8, !tbaa !16
  %260 = icmp eq %"class.std::ctype"* %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %250
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

262:                                              ; preds = %250
  %263 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %259, i64 0, i32 8
  %264 = load i8, i8* %263, align 8, !tbaa !19
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %259, i64 0, i32 9, i64 10
  %268 = load i8, i8* %267, align 1, !tbaa !21
  br label %465

269:                                              ; preds = %262
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %259)
  %270 = bitcast %"class.std::ctype"* %259 to i8 (%"class.std::ctype"*, i8)***
  %271 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %270, align 8, !tbaa !14
  %272 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %271, i64 6
  %273 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %272, align 8
  %274 = call signext i8 %273(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %259, i8 signext 10)
  br label %465

275:                                              ; preds = %247
  %276 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %277 = bitcast %struct.param_t* %14 to i8*
  %278 = bitcast i32** %8 to i8*
  %279 = bitcast %struct.dim3* %9 to i8*
  %280 = bitcast %struct.dim3* %10 to i8*
  %281 = bitcast i64* %11 to i8*
  %282 = bitcast i8** %12 to i8*
  %283 = bitcast [2 x i8*]* %13 to i8*
  %284 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %285 = bitcast [2 x i8*]* %13 to %struct.param_t**
  %286 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 1
  %287 = bitcast i8** %286 to i32***
  %288 = bitcast i8** %12 to %struct.ihipStream_t**
  %289 = bitcast %struct.dim3* %9 to i64*
  %290 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %291 = bitcast %struct.dim3* %10 to i64*
  %292 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  br label %355

293:                                              ; preds = %376
  %294 = call i32 @hipDeviceSynchronize()
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %293
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %298 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %294)
  %299 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 152, i32 %294, i8* %298, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

300:                                              ; preds = %293
  %301 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %302 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 39)
  %303 = sub nsw i64 %301, %276
  %304 = sitofp i64 %303 to float
  %305 = fdiv contract float %304, 1.000000e+03
  %306 = fdiv contract float %305, 1.000000e+03
  %307 = fpext float %306 to double
  %308 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %307)
  %309 = bitcast %"class.std::basic_ostream"* %308 to i8**
  %310 = load i8*, i8** %309, align 8, !tbaa !14
  %311 = getelementptr i8, i8* %310, i64 -24
  %312 = bitcast i8* %311 to i64*
  %313 = load i64, i64* %312, align 8
  %314 = bitcast %"class.std::basic_ostream"* %308 to i8*
  %315 = getelementptr inbounds i8, i8* %314, i64 %313
  %316 = getelementptr inbounds i8, i8* %315, i64 240
  %317 = bitcast i8* %316 to %"class.std::ctype"**
  %318 = load %"class.std::ctype"*, %"class.std::ctype"** %317, align 8, !tbaa !16
  %319 = icmp eq %"class.std::ctype"* %318, null
  br i1 %319, label %320, label %321

320:                                              ; preds = %300
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

321:                                              ; preds = %300
  %322 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %318, i64 0, i32 8
  %323 = load i8, i8* %322, align 8, !tbaa !19
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %318, i64 0, i32 9, i64 10
  %327 = load i8, i8* %326, align 1, !tbaa !21
  br label %334

328:                                              ; preds = %321
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %318)
  %329 = bitcast %"class.std::ctype"* %318 to i8 (%"class.std::ctype"*, i8)***
  %330 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %329, align 8, !tbaa !14
  %331 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %330, i64 6
  %332 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %331, align 8
  %333 = call signext i8 %332(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %318, i8 signext 10)
  br label %334

334:                                              ; preds = %325, %328
  %335 = phi i8 [ %327, %325 ], [ %333, %328 ]
  %336 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %308, i8 signext %335)
  %337 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %336)
  %338 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %339 = bitcast %struct.param_large_t* %7 to i8*
  %340 = bitcast i32** %1 to i8*
  %341 = bitcast %struct.dim3* %2 to i8*
  %342 = bitcast %struct.dim3* %3 to i8*
  %343 = bitcast i64* %4 to i8*
  %344 = bitcast i8** %5 to i8*
  %345 = bitcast [2 x i8*]* %6 to i8*
  %346 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %347 = bitcast [2 x i8*]* %6 to %struct.param_large_t**
  %348 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %349 = bitcast i8** %348 to i32***
  %350 = bitcast i8** %5 to %struct.ihipStream_t**
  %351 = bitcast %struct.dim3* %2 to i64*
  %352 = getelementptr inbounds %struct.dim3, %struct.dim3* %2, i64 0, i32 2
  %353 = bitcast %struct.dim3* %3 to i64*
  %354 = getelementptr inbounds %struct.dim3, %struct.dim3* %3, i64 0, i32 2
  br label %448

355:                                              ; preds = %275, %376
  %356 = phi i32 [ 0, %275 ], [ %377, %376 ]
  %357 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([6976 x i32]* @excess_params to i8*), i8* nonnull %36, i64 27904, i64 0, i32 1)
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %355
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %361 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %357)
  %362 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %360, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 149, i32 %357, i8* %361, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

363:                                              ; preds = %355
  %364 = call i32 @__hipPushCallConfiguration(i64 4294967297, i32 1, i64 4294967297, i32 1, i64 0, %struct.ihipStream_t* null)
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %363
  %367 = load i32*, i32** %31, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %277)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %278)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %279)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %280)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %281)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %282)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %283)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(4096) %277, i8* noundef nonnull align 4 dereferenceable(4096) %34, i64 4096, i1 false)
  store i32* %367, i32** %8, align 8, !tbaa !3
  store %struct.param_t* %14, %struct.param_t** %285, align 16
  store i32** %8, i32*** %287, align 8
  %368 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %369 = load i64, i64* %11, align 8
  %370 = load %struct.ihipStream_t*, %struct.ihipStream_t** %288, align 8
  %371 = load i64, i64* %289, align 8
  %372 = load i32, i32* %290, align 8
  %373 = load i64, i64* %291, align 8
  %374 = load i32, i32* %292, align 8
  %375 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.param_t*, i32*)** @_Z13kernelDefault7param_tPi to i8*), i64 %371, i32 %372, i64 %373, i32 %374, i8** nonnull %284, i64 %369, %struct.ihipStream_t* %370)
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %277)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %278)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %279)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %280)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %281)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %282)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %283)
  br label %376

376:                                              ; preds = %363, %366
  %377 = add nuw nsw i32 %356, 1
  %378 = icmp eq i32 %377, 1000
  br i1 %378, label %293, label %355, !llvm.loop !22

379:                                              ; preds = %462
  %380 = call i32 @hipDeviceSynchronize()
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %379
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %384 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %380)
  %385 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %383, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 162, i32 %380, i8* %384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #16
  call void @exit(i32 1) #15
  unreachable

386:                                              ; preds = %379
  %387 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %388 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 47)
  %389 = sub nsw i64 %387, %338
  %390 = sitofp i64 %389 to float
  %391 = fdiv contract float %390, 1.000000e+03
  %392 = fdiv contract float %391, 1.000000e+03
  %393 = fpext float %392 to double
  %394 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %393)
  %395 = bitcast %"class.std::basic_ostream"* %394 to i8**
  %396 = load i8*, i8** %395, align 8, !tbaa !14
  %397 = getelementptr i8, i8* %396, i64 -24
  %398 = bitcast i8* %397 to i64*
  %399 = load i64, i64* %398, align 8
  %400 = bitcast %"class.std::basic_ostream"* %394 to i8*
  %401 = getelementptr inbounds i8, i8* %400, i64 %399
  %402 = getelementptr inbounds i8, i8* %401, i64 240
  %403 = bitcast i8* %402 to %"class.std::ctype"**
  %404 = load %"class.std::ctype"*, %"class.std::ctype"** %403, align 8, !tbaa !16
  %405 = icmp eq %"class.std::ctype"* %404, null
  br i1 %405, label %406, label %407

406:                                              ; preds = %386
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

407:                                              ; preds = %386
  %408 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %404, i64 0, i32 8
  %409 = load i8, i8* %408, align 8, !tbaa !19
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %407
  %412 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %404, i64 0, i32 9, i64 10
  %413 = load i8, i8* %412, align 1, !tbaa !21
  br label %420

414:                                              ; preds = %407
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %404)
  %415 = bitcast %"class.std::ctype"* %404 to i8 (%"class.std::ctype"*, i8)***
  %416 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %415, align 8, !tbaa !14
  %417 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %416, i64 6
  %418 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %417, align 8
  %419 = call signext i8 %418(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %404, i8 signext 10)
  br label %420

420:                                              ; preds = %411, %414
  %421 = phi i8 [ %413, %411 ], [ %419, %414 ]
  %422 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %394, i8 signext %421)
  %423 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %422)
  %424 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 12)
  %425 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !14
  %426 = getelementptr i8, i8* %425, i64 -24
  %427 = bitcast i8* %426 to i64*
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %428
  %430 = getelementptr inbounds i8, i8* %429, i64 240
  %431 = bitcast i8* %430 to %"class.std::ctype"**
  %432 = load %"class.std::ctype"*, %"class.std::ctype"** %431, align 8, !tbaa !16
  %433 = icmp eq %"class.std::ctype"* %432, null
  br i1 %433, label %434, label %435

434:                                              ; preds = %420
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

435:                                              ; preds = %420
  %436 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %432, i64 0, i32 8
  %437 = load i8, i8* %436, align 8, !tbaa !19
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %432, i64 0, i32 9, i64 10
  %441 = load i8, i8* %440, align 1, !tbaa !21
  br label %465

442:                                              ; preds = %435
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %432)
  %443 = bitcast %"class.std::ctype"* %432 to i8 (%"class.std::ctype"*, i8)***
  %444 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %443, align 8, !tbaa !14
  %445 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %444, i64 6
  %446 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %445, align 8
  %447 = call signext i8 %446(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %432, i8 signext 10)
  br label %465

448:                                              ; preds = %334, %462
  %449 = phi i32 [ 0, %334 ], [ %463, %462 ]
  %450 = call i32 @__hipPushCallConfiguration(i64 4294967297, i32 1, i64 4294967297, i32 1, i64 0, %struct.ihipStream_t* null)
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %462

452:                                              ; preds = %448
  %453 = load i32*, i32** %31, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 32000, i8* nonnull %339)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %340)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %341)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %342)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %343)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %344)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %345)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %339, i8* noundef nonnull align 4 dereferenceable(32000) %35, i64 32000, i1 false)
  store i32* %453, i32** %1, align 8, !tbaa !3
  store %struct.param_large_t* %7, %struct.param_large_t** %347, align 16
  store i32** %1, i32*** %349, align 8
  %454 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %2, %struct.dim3* nonnull %3, i64* nonnull %4, i8** nonnull %5)
  %455 = load i64, i64* %4, align 8
  %456 = load %struct.ihipStream_t*, %struct.ihipStream_t** %350, align 8
  %457 = load i64, i64* %351, align 8
  %458 = load i32, i32* %352, align 8
  %459 = load i64, i64* %353, align 8
  %460 = load i32, i32* %354, align 8
  %461 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.param_large_t*, i32*)** @_Z16kernelLargeParam13param_large_tPi to i8*), i64 %457, i32 %458, i64 %459, i32 %460, i8** nonnull %346, i64 %455, %struct.ihipStream_t* %456)
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* nonnull %339)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %340)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %341)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %342)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %343)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %344)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %345)
  br label %462

462:                                              ; preds = %448, %452
  %463 = add nuw nsw i32 %449, 1
  %464 = icmp eq i32 %463, 1000
  br i1 %464, label %379, label %448, !llvm.loop !23

465:                                              ; preds = %442, %439, %269, %266, %197, %194
  %466 = phi i8 [ %196, %194 ], [ %202, %197 ], [ %268, %266 ], [ %274, %269 ], [ %441, %439 ], [ %447, %442 ]
  %467 = phi i32 [ -1, %194 ], [ -1, %197 ], [ -1, %266 ], [ -1, %269 ], [ 0, %439 ], [ 0, %442 ]
  %468 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %466)
  %469 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %468)
  %470 = load i8*, i8** %43, align 8, !tbaa !3
  %471 = call i32 @hipFree(i8* %470)
  call void @free(i8* %36) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #14
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* nonnull %35) #14
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %34) #14
  ret i32 %467
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %0) unnamed_addr #10 {
  %2 = tail call i8* @hipGetErrorName(i32 %0)
  ret i8* %2
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #7

declare dso_local i8* @hipGetErrorName(i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dso_local i32 @hipMemcpyToSymbol(i8*, i8*, i64, i64, i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_largekernelparameter.cpp() #12 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #14
  ret void
}

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local void @__hipRegisterVar(i8**, i8*, i8*, i8*, i32, i64, i32, i32) local_unnamed_addr

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.param_t*, i32*)** @_Z13kernelDefault7param_tPi to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.param_large_t*, i32*)** @_Z16kernelLargeParam13param_large_tPi to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  tail call void @__hipRegisterVar(i8** %7, i8* bitcast ([6976 x i32]* @excess_params to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i64 0, i64 0), i32 0, i64 27904, i32 1, i32 0)
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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !6, i64 0}
!16 = !{!17, !4, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !18, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!18 = !{!"bool", !5, i64 0}
!19 = !{!20, !5, i64 56}
!20 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !18, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!21 = !{!5, !5, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
