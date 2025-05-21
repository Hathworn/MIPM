; ModuleID = 'hip/hybridsort/main.hip.cu'
source_filename = "hip/hybridsort/main.hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.StopWatchInterface = type { i32 (...)** }
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
%class.StopWatchLinux = type { %class.StopWatchInterface, %struct.timeval, float, float, i8, i32 }
%struct.timeval = type { i64, i64 }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x float> }
%struct.timezone = type { i32, i32 }

$_Z14sdkCreateTimerPP18StopWatchInterface = comdat any

$_Z14sdkDeleteTimerPP18StopWatchInterface = comdat any

$_Z13sdkStartTimerPP18StopWatchInterface = comdat any

$_Z12sdkStopTimerPP18StopWatchInterface = comdat any

$_ZN14StopWatchLinuxC2Ev = comdat any

$_ZN18StopWatchInterfaceC2Ev = comdat any

$_ZN14StopWatchLinuxD2Ev = comdat any

$_ZN14StopWatchLinuxD0Ev = comdat any

$_ZN14StopWatchLinux5startEv = comdat any

$_ZN14StopWatchLinux4stopEv = comdat any

$_ZN14StopWatchLinux5resetEv = comdat any

$_ZN14StopWatchLinux7getTimeEv = comdat any

$_ZN14StopWatchLinux14getAverageTimeEv = comdat any

$_ZN18StopWatchInterfaceD2Ev = comdat any

$_ZN18StopWatchInterfaceD0Ev = comdat any

$_ZN14StopWatchLinux11getDiffTimeEv = comdat any

$_ZTV14StopWatchLinux = comdat any

$_ZTS14StopWatchLinux = comdat any

$_ZTS18StopWatchInterface = comdat any

$_ZTI18StopWatchInterface = comdat any

$_ZTI14StopWatchLinux = comdat any

$_ZTV18StopWatchInterface = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@uploadTimer = dso_local global %class.StopWatchInterface* null, align 8
@downloadTimer = dso_local global %class.StopWatchInterface* null, align 8
@bucketTimer = dso_local global %class.StopWatchInterface* null, align 8
@mergeTimer = dso_local global %class.StopWatchInterface* null, align 8
@totalTimer = dso_local global %class.StopWatchInterface* null, align 8
@cpuTimer = dso_local global %class.StopWatchInterface* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Error reading file\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Sorting list of \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" floats\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Sorting on GPU...\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GPU iterations: %d\0A\00", align 1
@_ZTV14StopWatchLinux = linkonce_odr dso_local unnamed_addr constant { [9 x i8*] } { [9 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI14StopWatchLinux to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinuxD2Ev to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinuxD0Ev to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux5startEv to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux4stopEv to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux5resetEv to i8*), i8* bitcast (float (%class.StopWatchLinux*)* @_ZN14StopWatchLinux7getTimeEv to i8*), i8* bitcast (float (%class.StopWatchLinux*)* @_ZN14StopWatchLinux14getAverageTimeEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS14StopWatchLinux = linkonce_odr dso_local constant [17 x i8] c"14StopWatchLinux\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS18StopWatchInterface = linkonce_odr dso_local constant [21 x i8] c"18StopWatchInterface\00", comdat, align 1
@_ZTI18StopWatchInterface = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_ZTS18StopWatchInterface, i32 0, i32 0) }, comdat, align 8
@_ZTI14StopWatchLinux = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14StopWatchLinux, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI18StopWatchInterface to i8*) }, comdat, align 8
@_ZTV18StopWatchInterface = linkonce_odr dso_local unnamed_addr constant { [9 x i8*] } { [9 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI18StopWatchInterface to i8*), i8* bitcast (void (%class.StopWatchInterface*)* @_ZN18StopWatchInterfaceD2Ev to i8*), i8* bitcast (void (%class.StopWatchInterface*)* @_ZN18StopWatchInterfaceD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.hip.cu, i8* null }]

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

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._IO_FILE*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = call noundef zeroext i1 @_Z14sdkCreateTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @uploadTimer)
  %21 = call noundef zeroext i1 @_Z14sdkCreateTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @downloadTimer)
  %22 = call noundef zeroext i1 @_Z14sdkCreateTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @bucketTimer)
  %23 = call noundef zeroext i1 @_Z14sdkCreateTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @mergeTimer)
  %24 = call noundef zeroext i1 @_Z14sdkCreateTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @totalTimer)
  %25 = call noundef zeroext i1 @_Z14sdkCreateTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @cpuTimer)
  store i32 0, i32* %6, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 5000000, i32* %6, align 4
  br label %54

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call %struct._IO_FILE* @fopen(i8* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %36, %struct._IO_FILE** %7, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %38 = icmp eq %struct._IO_FILE* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %41 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %40, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @exit(i32 noundef 1) #17
  unreachable

42:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %47, %42
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* noundef %9)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %43, !llvm.loop !6

50:                                               ; preds = %43
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %52 = call i32 @fclose(%struct._IO_FILE* noundef %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %31
  %55 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  %57 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %55, i32 noundef %56)
  %58 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %57, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = call noalias i8* @malloc(i64 noundef %64) #18
  %66 = bitcast i8* %65 to float*
  store float* %66, float** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = call noalias i8* @malloc(i64 noundef %68) #18
  %70 = bitcast i8* %69 to float*
  store float* %70, float** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = call noalias i8* @malloc(i64 noundef %72) #18
  %74 = bitcast i8* %73 to float*
  store float* %74, float** %13, align 8
  store float 0x47EFFFFFE0000000, float* %14, align 4
  store float 0xC7EFFFFFE0000000, float* %15, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %121, %80
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %81
  %86 = call i32 @rand() #3
  %87 = sitofp i32 %86 to float
  %88 = fdiv contract float %87, 0x41E0000000000000
  %89 = load float*, float** %11, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  store float %88, float* %92, align 4
  %93 = load float*, float** %11, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load float, float* %14, align 4
  %99 = fcmp contract olt float %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %85
  %101 = load float*, float** %11, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  %105 = load float, float* %104, align 4
  store float %105, float* %14, align 4
  br label %106

106:                                              ; preds = %100, %85
  %107 = load float*, float** %11, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  %111 = load float, float* %110, align 4
  %112 = load float, float* %15, align 4
  %113 = fcmp contract ogt float %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load float*, float** %11, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  store float %119, float* %15, align 4
  br label %120

120:                                              ; preds = %114, %106
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %81, !llvm.loop !8

124:                                              ; preds = %81
  br label %173

125:                                              ; preds = %54
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  %128 = load i8*, i8** %127, align 8
  %129 = call %struct._IO_FILE* @fopen(i8* noundef %128, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %129, %struct._IO_FILE** %17, align 8
  store i32 0, i32* %18, align 4
  br label %130

130:                                              ; preds = %169, %125
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %172

134:                                              ; preds = %130
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %136 = load float*, float** %11, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* noundef %139)
  %141 = load float*, float** %11, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float, float* %14, align 4
  %147 = fcmp contract olt float %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %134
  %149 = load float*, float** %11, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  %153 = load float, float* %152, align 4
  store float %153, float* %14, align 4
  br label %154

154:                                              ; preds = %148, %134
  %155 = load float*, float** %11, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  %159 = load float, float* %158, align 4
  %160 = load float, float* %15, align 4
  %161 = fcmp contract ogt float %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load float*, float** %11, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  %167 = load float, float* %166, align 4
  store float %167, float* %15, align 4
  br label %168

168:                                              ; preds = %162, %154
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %130, !llvm.loop !9

172:                                              ; preds = %130
  br label %173

173:                                              ; preds = %172, %124
  %174 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %175 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %174, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %19, align 4
  br label %176

176:                                              ; preds = %185, %173
  %177 = load i32, i32* %19, align 4
  %178 = icmp slt i32 %177, 4
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load float*, float** %11, align 8
  %181 = load float, float* %14, align 4
  %182 = load float, float* %15, align 4
  %183 = load float*, float** %13, align 8
  %184 = load i32, i32* %6, align 4
  call void @_Z8cudaSortPfffS_i(float* noundef %180, float noundef %181, float noundef %182, float* noundef %183, i32 noundef %184)
  br label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %19, align 4
  br label %176, !llvm.loop !10

188:                                              ; preds = %176
  %189 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %190 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 noundef 4)
  %191 = call noundef zeroext i1 @_Z14sdkDeleteTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @uploadTimer)
  %192 = call noundef zeroext i1 @_Z14sdkDeleteTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @downloadTimer)
  %193 = call noundef zeroext i1 @_Z14sdkDeleteTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @bucketTimer)
  %194 = call noundef zeroext i1 @_Z14sdkDeleteTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @mergeTimer)
  %195 = call noundef zeroext i1 @_Z14sdkDeleteTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @totalTimer)
  %196 = call noundef zeroext i1 @_Z14sdkDeleteTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @cpuTimer)
  %197 = load float*, float** %11, align 8
  %198 = bitcast float* %197 to i8*
  call void @free(i8* noundef %198) #3
  %199 = load float*, float** %12, align 8
  %200 = bitcast float* %199 to i8*
  call void @free(i8* noundef %200) #3
  %201 = load float*, float** %13, align 8
  %202 = bitcast float* %201 to i8*
  call void @free(i8* noundef %202) #3
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z14sdkCreateTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef %0) #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.StopWatchInterface**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %class.StopWatchInterface** %0, %class.StopWatchInterface*** %2, align 8
  %5 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 40) #19
  %6 = bitcast i8* %5 to %class.StopWatchLinux*
  invoke void @_ZN14StopWatchLinuxC2Ev(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %6)
          to label %7 unwind label %15

7:                                                ; preds = %1
  %8 = bitcast %class.StopWatchLinux* %6 to %class.StopWatchInterface*
  %9 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  store %class.StopWatchInterface* %8, %class.StopWatchInterface** %9, align 8
  %10 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  %11 = load %class.StopWatchInterface*, %class.StopWatchInterface** %10, align 8
  %12 = icmp ne %class.StopWatchInterface* %11, null
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i1 true, i1 false
  ret i1 %14

15:                                               ; preds = %1
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %3, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %4, align 4
  call void @_ZdlPv(i8* noundef %5) #20
  br label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #6

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #8

; Function Attrs: nounwind
declare i32 @rand() #2

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8cudaSortPfffS_i(float* noundef %0, float noundef %1, float noundef %2, float* noundef %3, i32 noundef %4) #5 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.HIP_vector_type*, align 8
  %18 = alloca %struct.HIP_vector_type*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.HIP_vector_type*, align 8
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  store float* null, float** %11, align 8
  store float* null, float** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 4096
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = call noundef zeroext i1 @_Z13sdkStartTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @uploadTimer)
  %28 = bitcast float** %11 to i8**
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = call i32 @hipMalloc(i8** noundef %28, i64 noundef %30)
  %32 = bitcast float** %12 to i8**
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @hipMalloc(i8** noundef %32, i64 noundef %34)
  %36 = load float*, float** %11, align 8
  %37 = bitcast float* %36 to i8*
  %38 = load float*, float** %6, align 8
  %39 = bitcast float* %38 to i8*
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = call i32 @hipMemcpy(i8* noundef %37, i8* noundef %39, i64 noundef %42, i32 noundef 1)
  %44 = load i32, i32* %10, align 4
  call void @_Z15init_bucketsorti(i32 noundef %44)
  %45 = call noundef zeroext i1 @_Z12sdkStopTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @uploadTimer)
  %46 = call noundef zeroext i1 @_Z13sdkStartTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @totalTimer)
  %47 = call noundef zeroext i1 @_Z13sdkStartTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @bucketTimer)
  %48 = call noalias i8* @malloc(i64 noundef 4096) #18
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %14, align 8
  %50 = call noalias i8* @malloc(i64 noundef 4096) #18
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %15, align 8
  %52 = call noalias i8* @malloc(i64 noundef 4100) #18
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %16, align 8
  %54 = load float*, float** %11, align 8
  %55 = load float*, float** %12, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load float, float* %7, align 4
  %60 = load float, float* %8, align 4
  %61 = load i32*, i32** %16, align 8
  call void @_Z10bucketSortPfS_iPiS0_ffPj(float* noundef %54, float* noundef %55, i32 noundef %56, i32* noundef %57, i32* noundef %58, float noundef %59, float noundef %60, i32* noundef %61)
  %62 = call noundef zeroext i1 @_Z12sdkStopTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @bucketTimer)
  %63 = call noundef zeroext i1 @_Z13sdkStartTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @mergeTimer)
  %64 = load float*, float** %12, align 8
  %65 = bitcast float* %64 to %struct.HIP_vector_type*
  store %struct.HIP_vector_type* %65, %struct.HIP_vector_type** %17, align 8
  %66 = load float*, float** %11, align 8
  %67 = bitcast float* %66 to %struct.HIP_vector_type*
  store %struct.HIP_vector_type* %67, %struct.HIP_vector_type** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %68

68:                                               ; preds = %80, %5
  %69 = load i32, i32* %20, align 4
  %70 = icmp slt i32 %69, 1024
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 4
  %78 = load i32, i32* %19, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %20, align 4
  br label %68, !llvm.loop !11

83:                                               ; preds = %68
  %84 = load i32, i32* %19, align 4
  %85 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %17, align 8
  %86 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %18, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = call noundef %struct.HIP_vector_type* @_Z12runMergeSortiiP15HIP_vector_typeIfLj4EES1_PiS2_Pj(i32 noundef %84, i32 noundef 1024, %struct.HIP_vector_type* noundef %85, %struct.HIP_vector_type* noundef %86, i32* noundef %87, i32* noundef %88, i32* noundef %89)
  store %struct.HIP_vector_type* %90, %struct.HIP_vector_type** %21, align 8
  %91 = call i32 @hipDeviceSynchronize()
  %92 = call noundef zeroext i1 @_Z12sdkStopTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @mergeTimer)
  %93 = call noundef zeroext i1 @_Z12sdkStopTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @totalTimer)
  %94 = call noundef zeroext i1 @_Z13sdkStartTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @downloadTimer)
  %95 = load float*, float** %9, align 8
  %96 = bitcast float* %95 to i8*
  %97 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %21, align 8
  %98 = bitcast %struct.HIP_vector_type* %97 to i8*
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = call i32 @hipMemcpy(i8* noundef %96, i8* noundef %98, i64 noundef %101, i32 noundef 2)
  %103 = call noundef zeroext i1 @_Z12sdkStopTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef @downloadTimer)
  call void @_Z17finish_bucketsortv()
  %104 = load float*, float** %11, align 8
  %105 = bitcast float* %104 to i8*
  %106 = call i32 @hipFree(i8* noundef %105)
  %107 = load float*, float** %12, align 8
  %108 = bitcast float* %107 to i8*
  %109 = call i32 @hipFree(i8* noundef %108)
  %110 = load i32*, i32** %15, align 8
  %111 = bitcast i32* %110 to i8*
  call void @free(i8* noundef %111) #3
  %112 = load i32*, i32** %14, align 8
  %113 = bitcast i32* %112 to i8*
  call void @free(i8* noundef %113) #3
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z14sdkDeleteTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef %0) #9 comdat {
  %2 = alloca %class.StopWatchInterface**, align 8
  store %class.StopWatchInterface** %0, %class.StopWatchInterface*** %2, align 8
  %3 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  %4 = load %class.StopWatchInterface*, %class.StopWatchInterface** %3, align 8
  %5 = icmp ne %class.StopWatchInterface* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  %8 = load %class.StopWatchInterface*, %class.StopWatchInterface** %7, align 8
  %9 = icmp eq %class.StopWatchInterface* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = bitcast %class.StopWatchInterface* %8 to void (%class.StopWatchInterface*)***
  %12 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %11, align 8
  %13 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %12, i64 1
  %14 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %13, align 8
  call void %14(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %8) #3
  br label %15

15:                                               ; preds = %10, %6
  %16 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  store %class.StopWatchInterface* null, %class.StopWatchInterface** %16, align 8
  br label %17

17:                                               ; preds = %15, %1
  ret i1 true
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z13sdkStartTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef %0) #5 comdat {
  %2 = alloca %class.StopWatchInterface**, align 8
  store %class.StopWatchInterface** %0, %class.StopWatchInterface*** %2, align 8
  %3 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  %4 = load %class.StopWatchInterface*, %class.StopWatchInterface** %3, align 8
  %5 = icmp ne %class.StopWatchInterface* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  %8 = load %class.StopWatchInterface*, %class.StopWatchInterface** %7, align 8
  %9 = bitcast %class.StopWatchInterface* %8 to void (%class.StopWatchInterface*)***
  %10 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %9, align 8
  %11 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %10, i64 2
  %12 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %11, align 8
  call void %12(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %8)
  br label %13

13:                                               ; preds = %6, %1
  ret i1 true
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #1

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare void @_Z15init_bucketsorti(i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z12sdkStopTimerPP18StopWatchInterface(%class.StopWatchInterface** noundef %0) #5 comdat {
  %2 = alloca %class.StopWatchInterface**, align 8
  store %class.StopWatchInterface** %0, %class.StopWatchInterface*** %2, align 8
  %3 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  %4 = load %class.StopWatchInterface*, %class.StopWatchInterface** %3, align 8
  %5 = icmp ne %class.StopWatchInterface* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %class.StopWatchInterface**, %class.StopWatchInterface*** %2, align 8
  %8 = load %class.StopWatchInterface*, %class.StopWatchInterface** %7, align 8
  %9 = bitcast %class.StopWatchInterface* %8 to void (%class.StopWatchInterface*)***
  %10 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %9, align 8
  %11 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %10, i64 3
  %12 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %11, align 8
  call void %12(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %8)
  br label %13

13:                                               ; preds = %6, %1
  ret i1 true
}

declare void @_Z10bucketSortPfS_iPiS0_ffPj(float* noundef, float* noundef, i32 noundef, i32* noundef, i32* noundef, float noundef, float noundef, i32* noundef) #1

declare noundef %struct.HIP_vector_type* @_Z12runMergeSortiiP15HIP_vector_typeIfLj4EES1_PiS2_Pj(i32 noundef, i32 noundef, %struct.HIP_vector_type* noundef, %struct.HIP_vector_type* noundef, i32* noundef, i32* noundef, i32* noundef) #1

declare i32 @hipDeviceSynchronize() #1

declare void @_Z17finish_bucketsortv() #1

declare i32 @hipFree(i8* noundef) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #10

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinuxC2Ev(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %3 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %4 = bitcast %class.StopWatchLinux* %3 to %class.StopWatchInterface*
  call void @_ZN18StopWatchInterfaceC2Ev(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %4)
  %5 = bitcast %class.StopWatchLinux* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [9 x i8*] }, { [9 x i8*] }* @_ZTV14StopWatchLinux, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 1
  %7 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 2
  store float 0.000000e+00, float* %8, align 8
  %9 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 3
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 4
  store i8 0, i8* %10, align 8
  %11 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 5
  store i32 0, i32* %11, align 4
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN18StopWatchInterfaceC2Ev(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
  %2 = alloca %class.StopWatchInterface*, align 8
  store %class.StopWatchInterface* %0, %class.StopWatchInterface** %2, align 8
  %3 = load %class.StopWatchInterface*, %class.StopWatchInterface** %2, align 8
  %4 = bitcast %class.StopWatchInterface* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [9 x i8*] }, { [9 x i8*] }* @_ZTV18StopWatchInterface, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinuxD2Ev(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %3 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %4 = bitcast %class.StopWatchLinux* %3 to %class.StopWatchInterface*
  call void @_ZN18StopWatchInterfaceD2Ev(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinuxD0Ev(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %3 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  call void @_ZN14StopWatchLinuxD2Ev(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %3) #3
  %4 = bitcast %class.StopWatchLinux* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5startEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %3 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 1
  %5 = call i32 @gettimeofday(%struct.timeval* noundef %4, %struct.timezone* noundef null) #3
  %6 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 4
  store i8 1, i8* %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux4stopEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %3 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %4 = call contract noundef float @_ZN14StopWatchLinux11getDiffTimeEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %3)
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 2
  store float %4, float* %5, align 8
  %6 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 2
  %7 = load float, float* %6, align 8
  %8 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 3
  %9 = load float, float* %8, align 4
  %10 = fadd contract float %9, %7
  store float %10, float* %8, align 4
  %11 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 4
  store i8 0, i8* %11, align 8
  %12 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5resetEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %3 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 2
  store float 0.000000e+00, float* %4, align 8
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 3
  store float 0.000000e+00, float* %5, align 4
  %6 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 5
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 4
  %8 = load i8, i8* %7, align 8
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 1
  %12 = call i32 @gettimeofday(%struct.timeval* noundef %11, %struct.timezone* noundef null) #3
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZN14StopWatchLinux7getTimeEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  %3 = alloca float, align 4
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %4 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %4, i32 0, i32 3
  %6 = load float, float* %5, align 4
  store float %6, float* %3, align 4
  %7 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %4, i32 0, i32 4
  %8 = load i8, i8* %7, align 8
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call contract noundef float @_ZN14StopWatchLinux11getDiffTimeEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %4)
  %12 = load float, float* %3, align 4
  %13 = fadd contract float %12, %11
  store float %13, float* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load float, float* %3, align 4
  ret float %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZN14StopWatchLinux14getAverageTimeEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %3 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 3
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %3, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to float
  %13 = fdiv contract float %9, %12
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %7
  %16 = phi contract float [ %13, %7 ], [ 0.000000e+00, %14 ]
  ret float %16
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN18StopWatchInterfaceD2Ev(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
  %2 = alloca %class.StopWatchInterface*, align 8
  store %class.StopWatchInterface* %0, %class.StopWatchInterface** %2, align 8
  %3 = load %class.StopWatchInterface*, %class.StopWatchInterface** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN18StopWatchInterfaceD0Ev(%class.StopWatchInterface* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
  %2 = alloca %class.StopWatchInterface*, align 8
  store %class.StopWatchInterface* %0, %class.StopWatchInterface** %2, align 8
  %3 = load %class.StopWatchInterface*, %class.StopWatchInterface** %2, align 8
  call void @llvm.trap() #17
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #15

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZN14StopWatchLinux11getDiffTimeEv(%class.StopWatchLinux* noundef nonnull align 8 dereferenceable(40) %0) #9 comdat align 2 {
  %2 = alloca %class.StopWatchLinux*, align 8
  %3 = alloca %struct.timeval, align 8
  store %class.StopWatchLinux* %0, %class.StopWatchLinux** %2, align 8
  %4 = load %class.StopWatchLinux*, %class.StopWatchLinux** %2, align 8
  %5 = call i32 @gettimeofday(%struct.timeval* noundef %3, %struct.timezone* noundef null) #3
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = sitofp i64 %11 to double
  %13 = fmul contract double 1.000000e+03, %12
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = sitofp i64 %19 to double
  %21 = fmul contract double 1.000000e-03, %20
  %22 = fadd contract double %13, %21
  %23 = fptrunc double %22 to float
  ret float %23
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.hip.cu() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }

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
