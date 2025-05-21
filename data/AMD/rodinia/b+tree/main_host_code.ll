; ModuleID = 'hip/b+tree/main.cu'
source_filename = "hip/b+tree/main.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.record = type { i32 }
%struct.node = type { i8**, i32*, %struct.node*, i8, i32, %struct.node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.list_t = type { %struct.list_item*, %struct.list_item*, i32, i32 (i8*, i8*)*, void (i8*)* }
%struct.list_item = type { %struct.list_item*, %struct.list_item*, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%class.SimplePerfSerializer = type { %class.PerfSerializer.base, i32, i64, i8*, i64, i8* }
%class.PerfSerializer.base = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8] }>
%class.RDTimerCPU = type { %class.RDTimer }
%class.RDTimer = type { i32 (...)**, i8, %"class.std::basic_string", %"class.std::basic_string", i64, i64, float, float }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%class.PerfSerializer = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8], [7 x i8] }>

$_ZSt3powIidEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

$_ZSt3logIlEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

$_ZN20SimplePerfSerializerC2EPc = comdat any

$_ZN10RDTimerCPUC2ESs = comdat any

$_ZN7RDTimer5ResetESs = comdat any

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

$_ZTV20SimplePerfSerializer = comdat any

$_ZTS20SimplePerfSerializer = comdat any

$_ZTS14PerfSerializer = comdat any

$_ZTI14PerfSerializer = comdat any

$_ZTI20SimplePerfSerializer = comdat any

$_ZTV14PerfSerializer = comdat any

$_ZTV10RDTimerCPU = comdat any

$_ZTS10RDTimerCPU = comdat any

$_ZTS7RDTimer = comdat any

$_ZTI7RDTimer = comdat any

$_ZTI10RDTimerCPU = comdat any

$_ZTV7RDTimer = comdat any

@knodes = dso_local global %struct.knode* null, align 8
@krecords = dso_local global %struct.record* null, align 8
@mem = dso_local global i8* null, align 8
@freeptr = dso_local global i64 0, align 8
@malloc_size = dso_local global i64 0, align 8
@size = dso_local global i64 0, align 8
@maxheight = dso_local global i64 0, align 8
@order = dso_local global i32 256, align 4
@queue = dso_local global %struct.node* null, align 8
@verbose_output = dso_local global i8 0, align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"Allocation failed at %s:%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"hip/b+tree/main.cu\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Memory Overflow\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Initial malloc error\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Successfully created knode with index %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Is Leaf: %d, Num Keys: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Pointers: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d | \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\0AKeys: \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"\0ANumber of records = %ld, sizeof(record)=%zu, total=%zu\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"Number of knodes = %ld, sizeof(knode)=%zu, total=%zu\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\0ADone Transformation. Mem used: %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Tree transformation took %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"B+ Tree of Order %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"\09Amittai Aviram -- amittai.aviram@yale.edu  Version %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"\09following Silberschatz, Korth, Sidarshan, Database Concepts, 5th ed.\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"To build a B+ tree of a different order, start again and enter the order\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"as an integer argument:  bpt <order>.  \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"3 <= order <=20\0A\00", align 1
@.str.22 = private unnamed_addr constant [86 x i8] c"To start with input from a file of newline-delimited integers, start again and enter\0A\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"the order followed by the filename:  bpt <order> <inputfile>.\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"Enter any of the following commands after the prompt > :\0A\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"\09i <k>  -- Insert <k> (an integer) as both key and value).\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"\09f <k>  -- Find the value under key <k>.\0A\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"\09p <k> -- Print the path from the root to key k and its associated value.\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"\09d <k>  -- Delete key <k> and its associated value.\0A\00", align 1
@.str.29 = private unnamed_addr constant [82 x i8] c"\09x -- Destroy the whole tree.  Start again with an empty tree of the same order.\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"\09t -- Print the B+ tree.\0A\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"\09l -- Print the keys of the leaves (bottom row of the tree).\0A\00", align 1
@.str.32 = private unnamed_addr constant [74 x i8] c"\09v -- Toggle output of pointer addresses (\22verbose\22) in tree and leaves.\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"\09q -- Quit. (Or use Ctl-D.)\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"\09? -- Print this help message.\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Empty tree.\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"(%p)\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%d] \00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%d ->\0A\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Leaf [\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"%d] ->\0A\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Record creation.\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"Node creation.\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"New node keys array.\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"New node pointers array.\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Temporary keys array.\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Temporary pointers array.\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"Temporary pointers array for splitting nodes.\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"Temporary keys array for splitting nodes.\00", align 1
@.str.54 = private unnamed_addr constant [51 x i8] c"Search for nonexistent pointer to node in parent.\0A\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"WG size of kernel 1 & 2  = %d \0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"Selecting device %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"Overall CPU Time\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"ERROR: Missing value to -file parameter\0A\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"ERROR: Missing value to command parameter\0A\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"Usage: ./b+tree file input_file command command_list\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"Input File: %s \0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Command File: %s \0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"Command File error\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Command Buffer memory error\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"Command file reading error\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Command Buffer: \0A\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Fail to open %s !\0A\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"******starting******\0A\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"Getting input from file %s...\0A\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"Failure to open input file.\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"ERROR: Argument -file missing\0A\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"Transforming data to a GPU suitable structure...\0A\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"Waiting for command\0A\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"Record not found under key %d.\0A\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"Record found: %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"\0A ******command: k count=%d \0A\00", align 1
@.str.89 = private unnamed_addr constant [93 x i8] c"ERROR: Number of requested querries should be 65,535 at most. (limited by # of CUDA blocks)\0A\00", align 1
@.str.90 = private unnamed_addr constant [54 x i8] c"records_elem=%d, records_unit_mem=%d, records_mem=%d\0A\00", align 1
@.str.91 = private unnamed_addr constant [51 x i8] c"knodes_elem=%d, knodes_unit_mem=%d, knodes_mem=%d\0A\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"aw+\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"%d    %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"For range %d to %d, \00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"%d records found\0A\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"\0A******command: j count=%d, rSize=%d \0A\00", align 1
@.str.98 = private unnamed_addr constant [52 x i8] c"Search range size is larger than data set size %d.\0A\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"%d    %d    %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"Overall CPU time = %lfs\0A\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.101 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.107 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.110 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.119 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.121 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.122 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.124 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.125 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.129 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.130 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.133 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.135 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.136 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z9list_initP6list_tPFiPKvS2_EPFvPvE(%struct.list_t* noundef %0, i32 (i8*, i8*)* noundef %1, void (i8*)* noundef %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca i32 (i8*, i8*)*, align 8
  %6 = alloca void (i8*)*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %5, align 8
  store void (i8*)* %2, void (i8*)** %6, align 8
  %7 = load %struct.list_t*, %struct.list_t** %4, align 8
  %8 = getelementptr inbounds %struct.list_t, %struct.list_t* %7, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %8, align 8
  %9 = load %struct.list_t*, %struct.list_t** %4, align 8
  %10 = getelementptr inbounds %struct.list_t, %struct.list_t* %9, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %10, align 8
  %11 = load %struct.list_t*, %struct.list_t** %4, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8
  %14 = load %struct.list_t*, %struct.list_t** %4, align 8
  %15 = getelementptr inbounds %struct.list_t, %struct.list_t* %14, i32 0, i32 3
  store i32 (i8*, i8*)* %13, i32 (i8*, i8*)** %15, align 8
  %16 = load void (i8*)*, void (i8*)** %6, align 8
  %17 = load %struct.list_t*, %struct.list_t** %4, align 8
  %18 = getelementptr inbounds %struct.list_t, %struct.list_t* %17, i32 0, i32 4
  store void (i8*)* %16, void (i8*)** %18, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11list_deleteP6list_t(%struct.list_t* noundef %0) #1 {
  %2 = alloca %struct.list_t*, align 8
  %3 = alloca %struct.list_item*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %5 = load %struct.list_t*, %struct.list_t** %2, align 8
  %6 = getelementptr inbounds %struct.list_t, %struct.list_t* %5, i32 0, i32 0
  %7 = load %struct.list_item*, %struct.list_item** %6, align 8
  store %struct.list_item* %7, %struct.list_item** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.list_item*, %struct.list_item** %3, align 8
  %10 = icmp ne %struct.list_item* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.list_item*, %struct.list_item** %3, align 8
  store %struct.list_item* %12, %struct.list_item** %4, align 8
  %13 = load %struct.list_item*, %struct.list_item** %3, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  %15 = load %struct.list_item*, %struct.list_item** %14, align 8
  store %struct.list_item* %15, %struct.list_item** %3, align 8
  %16 = load %struct.list_item*, %struct.list_item** %4, align 8
  %17 = load %struct.list_t*, %struct.list_t** %2, align 8
  %18 = getelementptr inbounds %struct.list_t, %struct.list_t* %17, i32 0, i32 4
  %19 = load void (i8*)*, void (i8*)** %18, align 8
  call void @_Z16list_item_deleteP9list_itemPFvPvE(%struct.list_item* noundef %16, void (i8*)* noundef %19)
  br label %8, !llvm.loop !6

20:                                               ; preds = %8
  %21 = load %struct.list_t*, %struct.list_t** %2, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %22, align 8
  %23 = load %struct.list_t*, %struct.list_t** %2, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %24, align 8
  %25 = load %struct.list_t*, %struct.list_t** %2, align 8
  %26 = getelementptr inbounds %struct.list_t, %struct.list_t* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16list_item_deleteP9list_itemPFvPvE(%struct.list_item* noundef %0, void (i8*)* noundef %1) #1 {
  %3 = alloca %struct.list_item*, align 8
  %4 = alloca void (i8*)*, align 8
  store %struct.list_item* %0, %struct.list_item** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %5 = load void (i8*)*, void (i8*)** %4, align 8
  %6 = icmp ne void (i8*)* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load void (i8*)*, void (i8*)** %4, align 8
  %9 = load %struct.list_item*, %struct.list_item** %3, align 8
  %10 = getelementptr inbounds %struct.list_item, %struct.list_item* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  call void %8(i8* noundef %11)
  br label %12

12:                                               ; preds = %7, %2
  %13 = load %struct.list_item*, %struct.list_item** %3, align 8
  %14 = bitcast %struct.list_item* %13 to i8*
  call void @free(i8* noundef %14) #15
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10list_resetP6list_t(%struct.list_t* noundef %0) #1 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  call void @_Z11list_deleteP6list_t(%struct.list_t* noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z21list_insert_item_headP6list_tP9list_item(%struct.list_t* noundef %0, %struct.list_item* noundef %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = getelementptr inbounds %struct.list_t, %struct.list_t* %5, i32 0, i32 0
  %7 = load %struct.list_item*, %struct.list_item** %6, align 8
  %8 = icmp ne %struct.list_item* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.list_t*, %struct.list_t** %3, align 8
  %11 = getelementptr inbounds %struct.list_t, %struct.list_t* %10, i32 0, i32 0
  %12 = load %struct.list_item*, %struct.list_item** %11, align 8
  %13 = load %struct.list_item*, %struct.list_item** %4, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  store %struct.list_item* %12, %struct.list_item** %14, align 8
  %15 = load %struct.list_item*, %struct.list_item** %4, align 8
  %16 = load %struct.list_t*, %struct.list_t** %3, align 8
  %17 = getelementptr inbounds %struct.list_t, %struct.list_t* %16, i32 0, i32 0
  %18 = load %struct.list_item*, %struct.list_item** %17, align 8
  %19 = getelementptr inbounds %struct.list_item, %struct.list_item* %18, i32 0, i32 0
  store %struct.list_item* %15, %struct.list_item** %19, align 8
  %20 = load %struct.list_item*, %struct.list_item** %4, align 8
  %21 = load %struct.list_t*, %struct.list_t** %3, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 0
  store %struct.list_item* %20, %struct.list_item** %22, align 8
  %23 = load %struct.list_t*, %struct.list_t** %3, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 0
  %25 = load %struct.list_item*, %struct.list_item** %24, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %26, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.list_item*, %struct.list_item** %4, align 8
  %29 = load %struct.list_t*, %struct.list_t** %3, align 8
  %30 = getelementptr inbounds %struct.list_t, %struct.list_t* %29, i32 0, i32 1
  store %struct.list_item* %28, %struct.list_item** %30, align 8
  %31 = load %struct.list_t*, %struct.list_t** %3, align 8
  %32 = getelementptr inbounds %struct.list_t, %struct.list_t* %31, i32 0, i32 0
  store %struct.list_item* %28, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %4, align 8
  %34 = getelementptr inbounds %struct.list_item, %struct.list_item* %33, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %34, align 8
  %35 = load %struct.list_item*, %struct.list_item** %4, align 8
  %36 = getelementptr inbounds %struct.list_item, %struct.list_item* %35, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %36, align 8
  br label %37

37:                                               ; preds = %27, %9
  %38 = load %struct.list_t*, %struct.list_t** %3, align 8
  %39 = getelementptr inbounds %struct.list_t, %struct.list_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, i32* %39, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z21list_insert_item_tailP6list_tP9list_item(%struct.list_t* noundef %0, %struct.list_item* noundef %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = getelementptr inbounds %struct.list_t, %struct.list_t* %5, i32 0, i32 0
  %7 = load %struct.list_item*, %struct.list_item** %6, align 8
  %8 = icmp ne %struct.list_item* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.list_item*, %struct.list_item** %4, align 8
  %11 = load %struct.list_t*, %struct.list_t** %3, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 1
  %13 = load %struct.list_item*, %struct.list_item** %12, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  store %struct.list_item* %10, %struct.list_item** %14, align 8
  %15 = load %struct.list_t*, %struct.list_t** %3, align 8
  %16 = getelementptr inbounds %struct.list_t, %struct.list_t* %15, i32 0, i32 1
  %17 = load %struct.list_item*, %struct.list_item** %16, align 8
  %18 = load %struct.list_item*, %struct.list_item** %4, align 8
  %19 = getelementptr inbounds %struct.list_item, %struct.list_item* %18, i32 0, i32 0
  store %struct.list_item* %17, %struct.list_item** %19, align 8
  %20 = load %struct.list_item*, %struct.list_item** %4, align 8
  %21 = getelementptr inbounds %struct.list_item, %struct.list_item* %20, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %21, align 8
  %22 = load %struct.list_item*, %struct.list_item** %4, align 8
  %23 = load %struct.list_t*, %struct.list_t** %3, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 1
  store %struct.list_item* %22, %struct.list_item** %24, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.list_item*, %struct.list_item** %4, align 8
  %27 = load %struct.list_t*, %struct.list_t** %3, align 8
  %28 = getelementptr inbounds %struct.list_t, %struct.list_t* %27, i32 0, i32 1
  store %struct.list_item* %26, %struct.list_item** %28, align 8
  %29 = load %struct.list_t*, %struct.list_t** %3, align 8
  %30 = getelementptr inbounds %struct.list_t, %struct.list_t* %29, i32 0, i32 0
  store %struct.list_item* %26, %struct.list_item** %30, align 8
  %31 = load %struct.list_item*, %struct.list_item** %4, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %4, align 8
  %34 = getelementptr inbounds %struct.list_item, %struct.list_item* %33, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %34, align 8
  br label %35

35:                                               ; preds = %25, %9
  %36 = load %struct.list_t*, %struct.list_t** %3, align 8
  %37 = getelementptr inbounds %struct.list_t, %struct.list_t* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z23list_insert_item_beforeP6list_tP9list_itemS2_(%struct.list_t* noundef %0, %struct.list_item* noundef %1, %struct.list_item* noundef %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store %struct.list_item* %2, %struct.list_item** %6, align 8
  %7 = load %struct.list_t*, %struct.list_t** %4, align 8
  %8 = getelementptr inbounds %struct.list_t, %struct.list_t* %7, i32 0, i32 0
  %9 = load %struct.list_item*, %struct.list_item** %8, align 8
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp eq %struct.list_item* %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.list_item*, %struct.list_item** %5, align 8
  %14 = load %struct.list_item*, %struct.list_item** %6, align 8
  %15 = getelementptr inbounds %struct.list_item, %struct.list_item* %14, i32 0, i32 1
  store %struct.list_item* %13, %struct.list_item** %15, align 8
  %16 = load %struct.list_item*, %struct.list_item** %6, align 8
  %17 = getelementptr inbounds %struct.list_item, %struct.list_item* %16, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %17, align 8
  %18 = load %struct.list_item*, %struct.list_item** %6, align 8
  %19 = load %struct.list_t*, %struct.list_t** %4, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 0
  store %struct.list_item* %18, %struct.list_item** %20, align 8
  %21 = load %struct.list_item*, %struct.list_item** %6, align 8
  %22 = load %struct.list_item*, %struct.list_item** %5, align 8
  %23 = getelementptr inbounds %struct.list_item, %struct.list_item* %22, i32 0, i32 0
  store %struct.list_item* %21, %struct.list_item** %23, align 8
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = load %struct.list_item*, %struct.list_item** %6, align 8
  %27 = getelementptr inbounds %struct.list_item, %struct.list_item* %26, i32 0, i32 1
  store %struct.list_item* %25, %struct.list_item** %27, align 8
  %28 = load %struct.list_item*, %struct.list_item** %5, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 0
  %30 = load %struct.list_item*, %struct.list_item** %29, align 8
  %31 = load %struct.list_item*, %struct.list_item** %6, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 0
  store %struct.list_item* %30, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %6, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = getelementptr inbounds %struct.list_item, %struct.list_item* %34, i32 0, i32 0
  %36 = load %struct.list_item*, %struct.list_item** %35, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 1
  store %struct.list_item* %33, %struct.list_item** %37, align 8
  %38 = load %struct.list_item*, %struct.list_item** %6, align 8
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 0
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  br label %41

41:                                               ; preds = %24, %12
  %42 = load %struct.list_t*, %struct.list_t** %4, align 8
  %43 = getelementptr inbounds %struct.list_t, %struct.list_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z22list_insert_item_afterP6list_tP9list_itemS2_(%struct.list_t* noundef %0, %struct.list_item* noundef %1, %struct.list_item* noundef %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store %struct.list_item* %2, %struct.list_item** %6, align 8
  %7 = load %struct.list_t*, %struct.list_t** %4, align 8
  %8 = getelementptr inbounds %struct.list_t, %struct.list_t* %7, i32 0, i32 1
  %9 = load %struct.list_item*, %struct.list_item** %8, align 8
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp eq %struct.list_item* %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.list_item*, %struct.list_item** %5, align 8
  %14 = load %struct.list_item*, %struct.list_item** %6, align 8
  %15 = getelementptr inbounds %struct.list_item, %struct.list_item* %14, i32 0, i32 0
  store %struct.list_item* %13, %struct.list_item** %15, align 8
  %16 = load %struct.list_item*, %struct.list_item** %6, align 8
  %17 = getelementptr inbounds %struct.list_item, %struct.list_item* %16, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %17, align 8
  %18 = load %struct.list_item*, %struct.list_item** %6, align 8
  %19 = load %struct.list_t*, %struct.list_t** %4, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 1
  store %struct.list_item* %18, %struct.list_item** %20, align 8
  %21 = load %struct.list_item*, %struct.list_item** %6, align 8
  %22 = load %struct.list_item*, %struct.list_item** %5, align 8
  %23 = getelementptr inbounds %struct.list_item, %struct.list_item* %22, i32 0, i32 1
  store %struct.list_item* %21, %struct.list_item** %23, align 8
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = load %struct.list_item*, %struct.list_item** %6, align 8
  %27 = getelementptr inbounds %struct.list_item, %struct.list_item* %26, i32 0, i32 0
  store %struct.list_item* %25, %struct.list_item** %27, align 8
  %28 = load %struct.list_item*, %struct.list_item** %5, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 1
  %30 = load %struct.list_item*, %struct.list_item** %29, align 8
  %31 = load %struct.list_item*, %struct.list_item** %6, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 1
  store %struct.list_item* %30, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %6, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = getelementptr inbounds %struct.list_item, %struct.list_item* %34, i32 0, i32 1
  %36 = load %struct.list_item*, %struct.list_item** %35, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 0
  store %struct.list_item* %33, %struct.list_item** %37, align 8
  %38 = load %struct.list_item*, %struct.list_item** %6, align 8
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 1
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  br label %41

41:                                               ; preds = %24, %12
  %42 = load %struct.list_t*, %struct.list_t** %4, align 8
  %43 = getelementptr inbounds %struct.list_t, %struct.list_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z23list_insert_item_sortedP6list_tP9list_item(%struct.list_t* noundef %0, %struct.list_item* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = icmp ne %struct.list_item* %8, null
  br i1 %9, label %10, label %71

10:                                               ; preds = %2
  %11 = load %struct.list_t*, %struct.list_t** %3, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 0
  %13 = load %struct.list_item*, %struct.list_item** %12, align 8
  store %struct.list_item* %13, %struct.list_item** %5, align 8
  br label %14

14:                                               ; preds = %30, %10
  %15 = load %struct.list_item*, %struct.list_item** %5, align 8
  %16 = icmp ne %struct.list_item* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.list_t*, %struct.list_t** %3, align 8
  %19 = getelementptr inbounds %struct.list_t, %struct.list_t* %18, i32 0, i32 3
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %19, align 8
  %21 = load %struct.list_item*, %struct.list_item** %4, align 8
  %22 = call noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %21)
  %23 = load %struct.list_item*, %struct.list_item** %5, align 8
  %24 = call noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %23)
  %25 = call noundef i32 %20(i8* noundef %22, i8* noundef %24)
  %26 = icmp slt i32 %25, 0
  br label %27

27:                                               ; preds = %17, %14
  %28 = phi i1 [ false, %14 ], [ %26, %17 ]
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.list_item*, %struct.list_item** %5, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 1
  %33 = load %struct.list_item*, %struct.list_item** %32, align 8
  store %struct.list_item* %33, %struct.list_item** %5, align 8
  br label %14, !llvm.loop !8

34:                                               ; preds = %27
  %35 = load %struct.list_item*, %struct.list_item** %5, align 8
  %36 = icmp ne %struct.list_item* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.list_item*, %struct.list_item** %5, align 8
  %39 = load %struct.list_item*, %struct.list_item** %4, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 1
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  %41 = load %struct.list_item*, %struct.list_item** %5, align 8
  %42 = getelementptr inbounds %struct.list_item, %struct.list_item* %41, i32 0, i32 0
  %43 = load %struct.list_item*, %struct.list_item** %42, align 8
  %44 = load %struct.list_item*, %struct.list_item** %4, align 8
  %45 = getelementptr inbounds %struct.list_item, %struct.list_item* %44, i32 0, i32 0
  store %struct.list_item* %43, %struct.list_item** %45, align 8
  %46 = load %struct.list_item*, %struct.list_item** %4, align 8
  %47 = load %struct.list_item*, %struct.list_item** %5, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 0
  store %struct.list_item* %46, %struct.list_item** %48, align 8
  %49 = load %struct.list_item*, %struct.list_item** %4, align 8
  %50 = load %struct.list_item*, %struct.list_item** %4, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 0
  %52 = load %struct.list_item*, %struct.list_item** %51, align 8
  %53 = getelementptr inbounds %struct.list_item, %struct.list_item* %52, i32 0, i32 1
  store %struct.list_item* %49, %struct.list_item** %53, align 8
  br label %70

54:                                               ; preds = %34
  %55 = load %struct.list_item*, %struct.list_item** %4, align 8
  %56 = load %struct.list_t*, %struct.list_t** %3, align 8
  %57 = getelementptr inbounds %struct.list_t, %struct.list_t* %56, i32 0, i32 1
  %58 = load %struct.list_item*, %struct.list_item** %57, align 8
  %59 = getelementptr inbounds %struct.list_item, %struct.list_item* %58, i32 0, i32 1
  store %struct.list_item* %55, %struct.list_item** %59, align 8
  %60 = load %struct.list_t*, %struct.list_t** %3, align 8
  %61 = getelementptr inbounds %struct.list_t, %struct.list_t* %60, i32 0, i32 1
  %62 = load %struct.list_item*, %struct.list_item** %61, align 8
  %63 = load %struct.list_item*, %struct.list_item** %4, align 8
  %64 = getelementptr inbounds %struct.list_item, %struct.list_item* %63, i32 0, i32 0
  store %struct.list_item* %62, %struct.list_item** %64, align 8
  %65 = load %struct.list_item*, %struct.list_item** %4, align 8
  %66 = getelementptr inbounds %struct.list_item, %struct.list_item* %65, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %66, align 8
  %67 = load %struct.list_item*, %struct.list_item** %4, align 8
  %68 = load %struct.list_t*, %struct.list_t** %3, align 8
  %69 = getelementptr inbounds %struct.list_t, %struct.list_t* %68, i32 0, i32 1
  store %struct.list_item* %67, %struct.list_item** %69, align 8
  br label %70

70:                                               ; preds = %54, %37
  br label %81

71:                                               ; preds = %2
  %72 = load %struct.list_item*, %struct.list_item** %4, align 8
  %73 = load %struct.list_t*, %struct.list_t** %3, align 8
  %74 = getelementptr inbounds %struct.list_t, %struct.list_t* %73, i32 0, i32 1
  store %struct.list_item* %72, %struct.list_item** %74, align 8
  %75 = load %struct.list_t*, %struct.list_t** %3, align 8
  %76 = getelementptr inbounds %struct.list_t, %struct.list_t* %75, i32 0, i32 0
  store %struct.list_item* %72, %struct.list_item** %76, align 8
  %77 = load %struct.list_item*, %struct.list_item** %4, align 8
  %78 = getelementptr inbounds %struct.list_item, %struct.list_item* %77, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %78, align 8
  %79 = load %struct.list_item*, %struct.list_item** %4, align 8
  %80 = getelementptr inbounds %struct.list_item, %struct.list_item* %79, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %80, align 8
  br label %81

81:                                               ; preds = %71, %70
  %82 = load %struct.list_t*, %struct.list_t** %3, align 8
  %83 = getelementptr inbounds %struct.list_t, %struct.list_t* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add i32 %84, 1
  store i32 %85, i32* %83, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %0) #0 {
  %2 = alloca %struct.list_item*, align 8
  store %struct.list_item* %0, %struct.list_item** %2, align 8
  %3 = load %struct.list_item*, %struct.list_item** %2, align 8
  %4 = getelementptr inbounds %struct.list_item, %struct.list_item* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16list_insert_headP6list_tPv(%struct.list_t* noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call noalias i8* @malloc(i64 noundef 24) #16
  store i8* %8, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 291)
  call void @exit(i32 noundef -1) #17
  unreachable

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.list_item*
  store %struct.list_item* %16, %struct.list_item** %5, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = load i8*, i8** %4, align 8
  call void @_Z14list_item_initP9list_itemPv(%struct.list_item* noundef %17, i8* noundef %18)
  %19 = load %struct.list_t*, %struct.list_t** %3, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 0
  %21 = load %struct.list_item*, %struct.list_item** %20, align 8
  %22 = icmp ne %struct.list_item* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %13
  %24 = load %struct.list_t*, %struct.list_t** %3, align 8
  %25 = getelementptr inbounds %struct.list_t, %struct.list_t* %24, i32 0, i32 0
  %26 = load %struct.list_item*, %struct.list_item** %25, align 8
  %27 = load %struct.list_item*, %struct.list_item** %5, align 8
  %28 = getelementptr inbounds %struct.list_item, %struct.list_item* %27, i32 0, i32 1
  store %struct.list_item* %26, %struct.list_item** %28, align 8
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  %30 = load %struct.list_t*, %struct.list_t** %3, align 8
  %31 = getelementptr inbounds %struct.list_t, %struct.list_t* %30, i32 0, i32 0
  %32 = load %struct.list_item*, %struct.list_item** %31, align 8
  %33 = getelementptr inbounds %struct.list_item, %struct.list_item* %32, i32 0, i32 0
  store %struct.list_item* %29, %struct.list_item** %33, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = load %struct.list_t*, %struct.list_t** %3, align 8
  %36 = getelementptr inbounds %struct.list_t, %struct.list_t* %35, i32 0, i32 0
  store %struct.list_item* %34, %struct.list_item** %36, align 8
  %37 = load %struct.list_t*, %struct.list_t** %3, align 8
  %38 = getelementptr inbounds %struct.list_t, %struct.list_t* %37, i32 0, i32 0
  %39 = load %struct.list_item*, %struct.list_item** %38, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %40, align 8
  br label %51

41:                                               ; preds = %13
  %42 = load %struct.list_item*, %struct.list_item** %5, align 8
  %43 = load %struct.list_t*, %struct.list_t** %3, align 8
  %44 = getelementptr inbounds %struct.list_t, %struct.list_t* %43, i32 0, i32 1
  store %struct.list_item* %42, %struct.list_item** %44, align 8
  %45 = load %struct.list_t*, %struct.list_t** %3, align 8
  %46 = getelementptr inbounds %struct.list_t, %struct.list_t* %45, i32 0, i32 0
  store %struct.list_item* %42, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %5, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %48, align 8
  %49 = load %struct.list_item*, %struct.list_item** %5, align 8
  %50 = getelementptr inbounds %struct.list_item, %struct.list_item* %49, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %50, align 8
  br label %51

51:                                               ; preds = %41, %23
  %52 = load %struct.list_t*, %struct.list_t** %3, align 8
  %53 = getelementptr inbounds %struct.list_t, %struct.list_t* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, 1
  store i32 %55, i32* %53, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z14list_item_initP9list_itemPv(%struct.list_item* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.list_item*, align 8
  %4 = alloca i8*, align 8
  store %struct.list_item* %0, %struct.list_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.list_item*, %struct.list_item** %3, align 8
  %6 = getelementptr inbounds %struct.list_item, %struct.list_item* %5, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %6, align 8
  %7 = load %struct.list_item*, %struct.list_item** %3, align 8
  %8 = getelementptr inbounds %struct.list_item, %struct.list_item* %7, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %8, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.list_item*, %struct.list_item** %3, align 8
  %11 = getelementptr inbounds %struct.list_item, %struct.list_item* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16list_insert_tailP6list_tPv(%struct.list_t* noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call noalias i8* @malloc(i64 noundef 24) #16
  store i8* %8, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 312)
  call void @exit(i32 noundef -1) #17
  unreachable

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.list_item*
  store %struct.list_item* %16, %struct.list_item** %5, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = load i8*, i8** %4, align 8
  call void @_Z14list_item_initP9list_itemPv(%struct.list_item* noundef %17, i8* noundef %18)
  %19 = load %struct.list_t*, %struct.list_t** %3, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 0
  %21 = load %struct.list_item*, %struct.list_item** %20, align 8
  %22 = icmp ne %struct.list_item* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = load %struct.list_item*, %struct.list_item** %5, align 8
  %25 = load %struct.list_t*, %struct.list_t** %3, align 8
  %26 = getelementptr inbounds %struct.list_t, %struct.list_t* %25, i32 0, i32 1
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  %28 = getelementptr inbounds %struct.list_item, %struct.list_item* %27, i32 0, i32 1
  store %struct.list_item* %24, %struct.list_item** %28, align 8
  %29 = load %struct.list_t*, %struct.list_t** %3, align 8
  %30 = getelementptr inbounds %struct.list_t, %struct.list_t* %29, i32 0, i32 1
  %31 = load %struct.list_item*, %struct.list_item** %30, align 8
  %32 = load %struct.list_item*, %struct.list_item** %5, align 8
  %33 = getelementptr inbounds %struct.list_item, %struct.list_item* %32, i32 0, i32 0
  store %struct.list_item* %31, %struct.list_item** %33, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = getelementptr inbounds %struct.list_item, %struct.list_item* %34, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %35, align 8
  %36 = load %struct.list_item*, %struct.list_item** %5, align 8
  %37 = load %struct.list_t*, %struct.list_t** %3, align 8
  %38 = getelementptr inbounds %struct.list_t, %struct.list_t* %37, i32 0, i32 1
  store %struct.list_item* %36, %struct.list_item** %38, align 8
  br label %49

39:                                               ; preds = %13
  %40 = load %struct.list_item*, %struct.list_item** %5, align 8
  %41 = load %struct.list_t*, %struct.list_t** %3, align 8
  %42 = getelementptr inbounds %struct.list_t, %struct.list_t* %41, i32 0, i32 1
  store %struct.list_item* %40, %struct.list_item** %42, align 8
  %43 = load %struct.list_t*, %struct.list_t** %3, align 8
  %44 = getelementptr inbounds %struct.list_t, %struct.list_t* %43, i32 0, i32 0
  store %struct.list_item* %40, %struct.list_item** %44, align 8
  %45 = load %struct.list_item*, %struct.list_item** %5, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %5, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %48, align 8
  br label %49

49:                                               ; preds = %39, %23
  %50 = load %struct.list_t*, %struct.list_t** %3, align 8
  %51 = getelementptr inbounds %struct.list_t, %struct.list_t* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z18list_insert_beforeP6list_tP9list_itemPv(%struct.list_t* noundef %0, %struct.list_item* noundef %1, i8* noundef %2) #1 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call noalias i8* @malloc(i64 noundef 24) #16
  store i8* %10, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 333)
  call void @exit(i32 noundef -1) #17
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.list_item*
  store %struct.list_item* %18, %struct.list_item** %7, align 8
  %19 = load %struct.list_item*, %struct.list_item** %7, align 8
  %20 = load i8*, i8** %6, align 8
  call void @_Z14list_item_initP9list_itemPv(%struct.list_item* noundef %19, i8* noundef %20)
  %21 = load %struct.list_t*, %struct.list_t** %4, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 0
  %23 = load %struct.list_item*, %struct.list_item** %22, align 8
  %24 = load %struct.list_item*, %struct.list_item** %5, align 8
  %25 = icmp eq %struct.list_item* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.list_item*, %struct.list_item** %5, align 8
  %28 = load %struct.list_item*, %struct.list_item** %7, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 1
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item*, %struct.list_item** %7, align 8
  %31 = getelementptr inbounds %struct.list_item, %struct.list_item* %30, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %31, align 8
  %32 = load %struct.list_item*, %struct.list_item** %7, align 8
  %33 = load %struct.list_t*, %struct.list_t** %4, align 8
  %34 = getelementptr inbounds %struct.list_t, %struct.list_t* %33, i32 0, i32 0
  store %struct.list_item* %32, %struct.list_item** %34, align 8
  %35 = load %struct.list_item*, %struct.list_item** %7, align 8
  %36 = load %struct.list_item*, %struct.list_item** %5, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 0
  store %struct.list_item* %35, %struct.list_item** %37, align 8
  br label %55

38:                                               ; preds = %15
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = load %struct.list_item*, %struct.list_item** %7, align 8
  %41 = getelementptr inbounds %struct.list_item, %struct.list_item* %40, i32 0, i32 1
  store %struct.list_item* %39, %struct.list_item** %41, align 8
  %42 = load %struct.list_item*, %struct.list_item** %5, align 8
  %43 = getelementptr inbounds %struct.list_item, %struct.list_item* %42, i32 0, i32 0
  %44 = load %struct.list_item*, %struct.list_item** %43, align 8
  %45 = load %struct.list_item*, %struct.list_item** %7, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 0
  store %struct.list_item* %44, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %7, align 8
  %48 = load %struct.list_item*, %struct.list_item** %5, align 8
  %49 = getelementptr inbounds %struct.list_item, %struct.list_item* %48, i32 0, i32 0
  %50 = load %struct.list_item*, %struct.list_item** %49, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 1
  store %struct.list_item* %47, %struct.list_item** %51, align 8
  %52 = load %struct.list_item*, %struct.list_item** %7, align 8
  %53 = load %struct.list_item*, %struct.list_item** %5, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 0
  store %struct.list_item* %52, %struct.list_item** %54, align 8
  br label %55

55:                                               ; preds = %38, %26
  %56 = load %struct.list_t*, %struct.list_t** %4, align 8
  %57 = getelementptr inbounds %struct.list_t, %struct.list_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z17list_insert_afterP6list_tP9list_itemPv(%struct.list_t* noundef %0, %struct.list_item* noundef %1, i8* noundef %2) #1 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call noalias i8* @malloc(i64 noundef 24) #16
  store i8* %10, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 359)
  call void @exit(i32 noundef -1) #17
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.list_item*
  store %struct.list_item* %18, %struct.list_item** %7, align 8
  %19 = load %struct.list_item*, %struct.list_item** %7, align 8
  %20 = load i8*, i8** %6, align 8
  call void @_Z14list_item_initP9list_itemPv(%struct.list_item* noundef %19, i8* noundef %20)
  %21 = load %struct.list_t*, %struct.list_t** %4, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 1
  %23 = load %struct.list_item*, %struct.list_item** %22, align 8
  %24 = load %struct.list_item*, %struct.list_item** %5, align 8
  %25 = icmp eq %struct.list_item* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.list_item*, %struct.list_item** %5, align 8
  %28 = load %struct.list_item*, %struct.list_item** %7, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 0
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item*, %struct.list_item** %7, align 8
  %31 = getelementptr inbounds %struct.list_item, %struct.list_item* %30, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %31, align 8
  %32 = load %struct.list_item*, %struct.list_item** %7, align 8
  %33 = load %struct.list_t*, %struct.list_t** %4, align 8
  %34 = getelementptr inbounds %struct.list_t, %struct.list_t* %33, i32 0, i32 1
  store %struct.list_item* %32, %struct.list_item** %34, align 8
  %35 = load %struct.list_item*, %struct.list_item** %7, align 8
  %36 = load %struct.list_item*, %struct.list_item** %5, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 1
  store %struct.list_item* %35, %struct.list_item** %37, align 8
  br label %55

38:                                               ; preds = %15
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = load %struct.list_item*, %struct.list_item** %7, align 8
  %41 = getelementptr inbounds %struct.list_item, %struct.list_item* %40, i32 0, i32 0
  store %struct.list_item* %39, %struct.list_item** %41, align 8
  %42 = load %struct.list_item*, %struct.list_item** %5, align 8
  %43 = getelementptr inbounds %struct.list_item, %struct.list_item* %42, i32 0, i32 1
  %44 = load %struct.list_item*, %struct.list_item** %43, align 8
  %45 = load %struct.list_item*, %struct.list_item** %7, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 1
  store %struct.list_item* %44, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %7, align 8
  %48 = load %struct.list_item*, %struct.list_item** %5, align 8
  %49 = getelementptr inbounds %struct.list_item, %struct.list_item* %48, i32 0, i32 1
  %50 = load %struct.list_item*, %struct.list_item** %49, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 0
  store %struct.list_item* %47, %struct.list_item** %51, align 8
  %52 = load %struct.list_item*, %struct.list_item** %7, align 8
  %53 = load %struct.list_item*, %struct.list_item** %5, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 1
  store %struct.list_item* %52, %struct.list_item** %54, align 8
  br label %55

55:                                               ; preds = %38, %26
  %56 = load %struct.list_t*, %struct.list_t** %4, align 8
  %57 = getelementptr inbounds %struct.list_t, %struct.list_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z18list_insert_sortedP6list_tPv(%struct.list_t* noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca %struct.list_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call noalias i8* @malloc(i64 noundef 24) #16
  store i8* %9, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 385)
  call void @exit(i32 noundef -1) #17
  unreachable

14:                                               ; preds = %2
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.list_item*
  store %struct.list_item* %17, %struct.list_item** %6, align 8
  %18 = load %struct.list_item*, %struct.list_item** %6, align 8
  %19 = load i8*, i8** %4, align 8
  call void @_Z14list_item_initP9list_itemPv(%struct.list_item* noundef %18, i8* noundef %19)
  %20 = load %struct.list_t*, %struct.list_t** %3, align 8
  %21 = getelementptr inbounds %struct.list_t, %struct.list_t* %20, i32 0, i32 0
  %22 = load %struct.list_item*, %struct.list_item** %21, align 8
  %23 = icmp ne %struct.list_item* %22, null
  br i1 %23, label %24, label %85

24:                                               ; preds = %14
  %25 = load %struct.list_t*, %struct.list_t** %3, align 8
  %26 = getelementptr inbounds %struct.list_t, %struct.list_t* %25, i32 0, i32 0
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  store %struct.list_item* %27, %struct.list_item** %5, align 8
  br label %28

28:                                               ; preds = %44, %24
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  %30 = icmp ne %struct.list_item* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.list_t*, %struct.list_t** %3, align 8
  %33 = getelementptr inbounds %struct.list_t, %struct.list_t* %32, i32 0, i32 3
  %34 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %33, align 8
  %35 = load %struct.list_item*, %struct.list_item** %6, align 8
  %36 = call noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %35)
  %37 = load %struct.list_item*, %struct.list_item** %5, align 8
  %38 = call noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %37)
  %39 = call noundef i32 %34(i8* noundef %36, i8* noundef %38)
  %40 = icmp slt i32 %39, 0
  br label %41

41:                                               ; preds = %31, %28
  %42 = phi i1 [ false, %28 ], [ %40, %31 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.list_item*, %struct.list_item** %5, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 1
  %47 = load %struct.list_item*, %struct.list_item** %46, align 8
  store %struct.list_item* %47, %struct.list_item** %5, align 8
  br label %28, !llvm.loop !9

48:                                               ; preds = %41
  %49 = load %struct.list_item*, %struct.list_item** %5, align 8
  %50 = icmp ne %struct.list_item* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.list_item*, %struct.list_item** %5, align 8
  %53 = load %struct.list_item*, %struct.list_item** %6, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 1
  store %struct.list_item* %52, %struct.list_item** %54, align 8
  %55 = load %struct.list_item*, %struct.list_item** %5, align 8
  %56 = getelementptr inbounds %struct.list_item, %struct.list_item* %55, i32 0, i32 0
  %57 = load %struct.list_item*, %struct.list_item** %56, align 8
  %58 = load %struct.list_item*, %struct.list_item** %6, align 8
  %59 = getelementptr inbounds %struct.list_item, %struct.list_item* %58, i32 0, i32 0
  store %struct.list_item* %57, %struct.list_item** %59, align 8
  %60 = load %struct.list_item*, %struct.list_item** %6, align 8
  %61 = load %struct.list_item*, %struct.list_item** %5, align 8
  %62 = getelementptr inbounds %struct.list_item, %struct.list_item* %61, i32 0, i32 0
  store %struct.list_item* %60, %struct.list_item** %62, align 8
  %63 = load %struct.list_item*, %struct.list_item** %6, align 8
  %64 = load %struct.list_item*, %struct.list_item** %6, align 8
  %65 = getelementptr inbounds %struct.list_item, %struct.list_item* %64, i32 0, i32 0
  %66 = load %struct.list_item*, %struct.list_item** %65, align 8
  %67 = getelementptr inbounds %struct.list_item, %struct.list_item* %66, i32 0, i32 1
  store %struct.list_item* %63, %struct.list_item** %67, align 8
  br label %84

68:                                               ; preds = %48
  %69 = load %struct.list_item*, %struct.list_item** %6, align 8
  %70 = load %struct.list_t*, %struct.list_t** %3, align 8
  %71 = getelementptr inbounds %struct.list_t, %struct.list_t* %70, i32 0, i32 1
  %72 = load %struct.list_item*, %struct.list_item** %71, align 8
  %73 = getelementptr inbounds %struct.list_item, %struct.list_item* %72, i32 0, i32 1
  store %struct.list_item* %69, %struct.list_item** %73, align 8
  %74 = load %struct.list_t*, %struct.list_t** %3, align 8
  %75 = getelementptr inbounds %struct.list_t, %struct.list_t* %74, i32 0, i32 1
  %76 = load %struct.list_item*, %struct.list_item** %75, align 8
  %77 = load %struct.list_item*, %struct.list_item** %6, align 8
  %78 = getelementptr inbounds %struct.list_item, %struct.list_item* %77, i32 0, i32 0
  store %struct.list_item* %76, %struct.list_item** %78, align 8
  %79 = load %struct.list_item*, %struct.list_item** %6, align 8
  %80 = getelementptr inbounds %struct.list_item, %struct.list_item* %79, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %80, align 8
  %81 = load %struct.list_item*, %struct.list_item** %6, align 8
  %82 = load %struct.list_t*, %struct.list_t** %3, align 8
  %83 = getelementptr inbounds %struct.list_t, %struct.list_t* %82, i32 0, i32 1
  store %struct.list_item* %81, %struct.list_item** %83, align 8
  br label %84

84:                                               ; preds = %68, %51
  br label %95

85:                                               ; preds = %14
  %86 = load %struct.list_item*, %struct.list_item** %6, align 8
  %87 = load %struct.list_t*, %struct.list_t** %3, align 8
  %88 = getelementptr inbounds %struct.list_t, %struct.list_t* %87, i32 0, i32 1
  store %struct.list_item* %86, %struct.list_item** %88, align 8
  %89 = load %struct.list_t*, %struct.list_t** %3, align 8
  %90 = getelementptr inbounds %struct.list_t, %struct.list_t* %89, i32 0, i32 0
  store %struct.list_item* %86, %struct.list_item** %90, align 8
  %91 = load %struct.list_item*, %struct.list_item** %6, align 8
  %92 = getelementptr inbounds %struct.list_item, %struct.list_item* %91, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %92, align 8
  %93 = load %struct.list_item*, %struct.list_item** %6, align 8
  %94 = getelementptr inbounds %struct.list_item, %struct.list_item* %93, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %94, align 8
  br label %95

95:                                               ; preds = %85, %84
  %96 = load %struct.list_t*, %struct.list_t** %3, align 8
  %97 = getelementptr inbounds %struct.list_t, %struct.list_t* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, i32* %97, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16list_remove_itemP6list_tP9list_item(%struct.list_t* noundef %0, %struct.list_item* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = icmp eq %struct.list_item* %5, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.list_t*, %struct.list_t** %3, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 0
  %13 = load %struct.list_item*, %struct.list_item** %12, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  %15 = load %struct.list_item*, %struct.list_item** %14, align 8
  %16 = load %struct.list_t*, %struct.list_t** %3, align 8
  %17 = getelementptr inbounds %struct.list_t, %struct.list_t* %16, i32 0, i32 0
  store %struct.list_item* %15, %struct.list_item** %17, align 8
  %18 = load %struct.list_t*, %struct.list_t** %3, align 8
  %19 = getelementptr inbounds %struct.list_t, %struct.list_t* %18, i32 0, i32 0
  %20 = load %struct.list_item*, %struct.list_item** %19, align 8
  %21 = icmp ne %struct.list_item* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %10
  %23 = load %struct.list_t*, %struct.list_t** %3, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 0
  %25 = load %struct.list_item*, %struct.list_item** %24, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %26, align 8
  br label %30

27:                                               ; preds = %10
  %28 = load %struct.list_t*, %struct.list_t** %3, align 8
  %29 = getelementptr inbounds %struct.list_t, %struct.list_t* %28, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  br label %65

31:                                               ; preds = %2
  %32 = load %struct.list_item*, %struct.list_item** %4, align 8
  %33 = load %struct.list_t*, %struct.list_t** %3, align 8
  %34 = getelementptr inbounds %struct.list_t, %struct.list_t* %33, i32 0, i32 1
  %35 = load %struct.list_item*, %struct.list_item** %34, align 8
  %36 = icmp eq %struct.list_item* %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.list_t*, %struct.list_t** %3, align 8
  %39 = getelementptr inbounds %struct.list_t, %struct.list_t* %38, i32 0, i32 1
  %40 = load %struct.list_item*, %struct.list_item** %39, align 8
  %41 = getelementptr inbounds %struct.list_item, %struct.list_item* %40, i32 0, i32 0
  %42 = load %struct.list_item*, %struct.list_item** %41, align 8
  %43 = load %struct.list_t*, %struct.list_t** %3, align 8
  %44 = getelementptr inbounds %struct.list_t, %struct.list_t* %43, i32 0, i32 1
  store %struct.list_item* %42, %struct.list_item** %44, align 8
  %45 = load %struct.list_t*, %struct.list_t** %3, align 8
  %46 = getelementptr inbounds %struct.list_t, %struct.list_t* %45, i32 0, i32 1
  %47 = load %struct.list_item*, %struct.list_item** %46, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %48, align 8
  br label %64

49:                                               ; preds = %31
  %50 = load %struct.list_item*, %struct.list_item** %4, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 1
  %52 = load %struct.list_item*, %struct.list_item** %51, align 8
  %53 = load %struct.list_item*, %struct.list_item** %4, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 0
  %55 = load %struct.list_item*, %struct.list_item** %54, align 8
  %56 = getelementptr inbounds %struct.list_item, %struct.list_item* %55, i32 0, i32 1
  store %struct.list_item* %52, %struct.list_item** %56, align 8
  %57 = load %struct.list_item*, %struct.list_item** %4, align 8
  %58 = getelementptr inbounds %struct.list_item, %struct.list_item* %57, i32 0, i32 0
  %59 = load %struct.list_item*, %struct.list_item** %58, align 8
  %60 = load %struct.list_item*, %struct.list_item** %4, align 8
  %61 = getelementptr inbounds %struct.list_item, %struct.list_item* %60, i32 0, i32 1
  %62 = load %struct.list_item*, %struct.list_item** %61, align 8
  %63 = getelementptr inbounds %struct.list_item, %struct.list_item* %62, i32 0, i32 0
  store %struct.list_item* %59, %struct.list_item** %63, align 8
  br label %64

64:                                               ; preds = %49, %37
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.list_t*, %struct.list_t** %3, align 8
  %67 = getelementptr inbounds %struct.list_t, %struct.list_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.list_item*, %struct.list_item** %4, align 8
  %71 = load %struct.list_t*, %struct.list_t** %3, align 8
  %72 = getelementptr inbounds %struct.list_t, %struct.list_t* %71, i32 0, i32 4
  %73 = load void (i8*)*, void (i8*)** %72, align 8
  call void @_Z16list_item_deleteP9list_itemPFvPvE(%struct.list_item* noundef %70, void (i8*)* noundef %73)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16list_remove_headP6list_t(%struct.list_t* noundef %0) #1 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = load %struct.list_t*, %struct.list_t** %2, align 8
  %5 = getelementptr inbounds %struct.list_t, %struct.list_t* %4, i32 0, i32 0
  %6 = load %struct.list_item*, %struct.list_item** %5, align 8
  call void @_Z16list_remove_itemP6list_tP9list_item(%struct.list_t* noundef %3, %struct.list_item* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16list_remove_tailP6list_t(%struct.list_t* noundef %0) #1 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = load %struct.list_t*, %struct.list_t** %2, align 8
  %5 = getelementptr inbounds %struct.list_t, %struct.list_t* %4, i32 0, i32 1
  %6 = load %struct.list_item*, %struct.list_item** %5, align 8
  call void @_Z16list_remove_itemP6list_tP9list_item(%struct.list_t* noundef %3, %struct.list_item* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.list_item* @_Z14list_find_itemP6list_tPv(%struct.list_t* noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  store %struct.list_item* %8, %struct.list_item** %5, align 8
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp ne %struct.list_item* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.list_t*, %struct.list_t** %3, align 8
  %14 = getelementptr inbounds %struct.list_t, %struct.list_t* %13, i32 0, i32 3
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = call noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %17)
  %19 = call noundef i32 %15(i8* noundef %16, i8* noundef %18)
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i1 [ false, %9 ], [ %20, %12 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 1
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  store %struct.list_item* %27, %struct.list_item** %5, align 8
  br label %9, !llvm.loop !10

28:                                               ; preds = %21
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  ret %struct.list_item* %29
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.list_item* @_Z18list_get_head_itemP6list_t(%struct.list_t* noundef %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  ret %struct.list_item* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.list_item* @_Z18list_get_tail_itemP6list_t(%struct.list_t* noundef %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 1
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  ret %struct.list_item* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i8* @_Z9list_findP6list_tPv(%struct.list_t* noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  store %struct.list_item* %8, %struct.list_item** %5, align 8
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp ne %struct.list_item* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.list_t*, %struct.list_t** %3, align 8
  %14 = getelementptr inbounds %struct.list_t, %struct.list_t* %13, i32 0, i32 3
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = call noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %17)
  %19 = call noundef i32 %15(i8* noundef %16, i8* noundef %18)
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i1 [ false, %9 ], [ %20, %12 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 1
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  store %struct.list_item* %27, %struct.list_item** %5, align 8
  br label %9, !llvm.loop !11

28:                                               ; preds = %21
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  %30 = icmp ne %struct.list_item* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.list_item*, %struct.list_item** %5, align 8
  %33 = getelementptr inbounds %struct.list_item, %struct.list_item* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ null, %35 ]
  ret i8* %37
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i8* @_Z13list_get_headP6list_t(%struct.list_t* noundef %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  %6 = icmp ne %struct.list_item* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.list_t*, %struct.list_t** %2, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = getelementptr inbounds %struct.list_item, %struct.list_item* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8* [ %12, %7 ], [ null, %13 ]
  ret i8* %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i8* @_Z13list_get_tailP6list_t(%struct.list_t* noundef %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 1
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  %6 = icmp ne %struct.list_item* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.list_t*, %struct.list_t** %2, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = getelementptr inbounds %struct.list_item, %struct.list_item* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8* [ %12, %7 ], [ null, %13 ]
  ret i8* %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z15list_get_lengthP6list_t(%struct.list_t* noundef %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_Z13list_is_emptyP6list_t(%struct.list_t* noundef %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_Z14list_not_emptyP6list_t(%struct.list_t* noundef %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16list_visit_itemsP6list_tPFvPvE(%struct.list_t* noundef %0, void (i8*)* noundef %1) #1 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  store %struct.list_item* %8, %struct.list_item** %5, align 8
  br label %9

9:                                                ; preds = %16, %2
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp ne %struct.list_item* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load void (i8*)*, void (i8*)** %4, align 8
  %14 = load %struct.list_item*, %struct.list_item** %5, align 8
  %15 = call noundef i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* noundef %14)
  call void %13(i8* noundef %15)
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = getelementptr inbounds %struct.list_item, %struct.list_item* %17, i32 0, i32 1
  %19 = load %struct.list_item*, %struct.list_item** %18, align 8
  store %struct.list_item* %19, %struct.list_item** %5, align 8
  br label %9, !llvm.loop !12

20:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z18list_iterator_initP6list_tPP9list_item(%struct.list_t* noundef %0, %struct.list_item** noundef %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item**, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item** %1, %struct.list_item*** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = icmp ne %struct.list_t* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.list_t*, %struct.list_t** %3, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi %struct.list_item* [ %10, %7 ], [ null, %11 ]
  %14 = load %struct.list_item**, %struct.list_item*** %4, align 8
  store %struct.list_item* %13, %struct.list_item** %14, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z20list_iterator_deletePP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* null, %struct.list_item** %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z18list_iterator_nextPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z18list_iterator_prevPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i8* @_Z23list_iterator_get_datumPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i8* [ %10, %6 ], [ null, %11 ]
  ret i8* %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_Z22list_iterator_is_validPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z26list_reverse_iterator_initP6list_tPP9list_item(%struct.list_t* noundef %0, %struct.list_item** noundef %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item**, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item** %1, %struct.list_item*** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = icmp ne %struct.list_t* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.list_t*, %struct.list_t** %3, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi %struct.list_item* [ %10, %7 ], [ null, %11 ]
  %14 = load %struct.list_item**, %struct.list_item*** %4, align 8
  store %struct.list_item* %13, %struct.list_item** %14, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z28list_reverse_iterator_deletePP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* null, %struct.list_item** %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z26list_reverse_iterator_nextPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z26list_reverse_iterator_prevPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i8* @_Z31list_reverse_iterator_get_datumPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i8* [ %10, %6 ], [ null, %11 ]
  ret i8* %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_Z30list_reverse_iterator_is_validPP9list_item(%struct.list_item** noundef %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = icmp ne %struct.list_item** %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i8* @_Z7kmalloci(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @freeptr, align 8
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* @freeptr, align 8
  %9 = add nsw i64 %8, %7
  store i64 %9, i64* @freeptr, align 8
  %10 = load i64, i64* @freeptr, align 8
  %11 = load i64, i64* @malloc_size, align 8
  %12 = load i8*, i8** @mem, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = icmp sgt i64 %10, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i64 @_Z17transform_to_cudaP4nodeb(%struct.node* noundef %0, i1 noundef zeroext %1) #1 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca %struct.knode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %20 = zext i1 %1 to i8
  store i8 %20, i8* %4, align 1
  %21 = call i32 @gettimeofday(%struct.timeval* noundef %5, %struct.timezone* noundef null) #15
  %22 = load i32, i32* @order, align 4
  %23 = load i64, i64* @size, align 8
  %24 = call contract noundef double @_ZSt3logIlEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i64 noundef %23)
  %25 = load i32, i32* @order, align 4
  %26 = sitofp i32 %25 to double
  %27 = fdiv contract double %26, 2.000000e+00
  %28 = call contract double @log(double noundef %27) #15
  %29 = fdiv contract double %24, %28
  %30 = fsub contract double %29, 1.000000e+00
  %31 = call contract noundef double @_ZSt3powIidEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 noundef %22, double noundef %30)
  %32 = fadd contract double %31, 1.000000e+00
  %33 = fptosi double %32 to i64
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @size, align 8
  %35 = mul i64 %34, 4
  %36 = load i64, i64* %8, align 8
  %37 = mul i64 %36, 2068
  %38 = add i64 %35, %37
  store i64 %38, i64* @malloc_size, align 8
  %39 = load i64, i64* @malloc_size, align 8
  %40 = call noalias i8* @malloc(i64 noundef %39) #16
  store i8* %40, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 656)
  call void @exit(i32 noundef -1) #17
  unreachable

45:                                               ; preds = %2
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** @mem, align 8
  %48 = load i8*, i8** @mem, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

52:                                               ; preds = %45
  %53 = load i8*, i8** @mem, align 8
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* @freeptr, align 8
  %55 = load i64, i64* @size, align 8
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call noundef i8* @_Z7kmalloci(i32 noundef %57)
  %59 = bitcast i8* %58 to %struct.record*
  store %struct.record* %59, %struct.record** @krecords, align 8
  %60 = load i64, i64* %8, align 8
  %61 = mul i64 %60, 2068
  %62 = trunc i64 %61 to i32
  %63 = call noundef i8* @_Z7kmalloci(i32 noundef %62)
  %64 = bitcast i8* %63 to %struct.knode*
  store %struct.knode* %64, %struct.knode** @knodes, align 8
  store %struct.node* null, %struct.node** @queue, align 8
  %65 = load %struct.node*, %struct.node** %3, align 8
  call void @_Z7enqueueP4node(%struct.node* noundef %65)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %66 = load i64, i64* %14, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %14, align 8
  %68 = trunc i64 %66 to i32
  %69 = load %struct.knode*, %struct.knode** @knodes, align 8
  %70 = getelementptr inbounds %struct.knode, %struct.knode* %69, i64 0
  %71 = getelementptr inbounds %struct.knode, %struct.knode* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %306, %52
  %73 = load %struct.node*, %struct.node** @queue, align 8
  %74 = icmp ne %struct.node* %73, null
  br i1 %74, label %75, label %307

75:                                               ; preds = %72
  %76 = call noundef %struct.node* @_Z7dequeuev()
  store %struct.node* %76, %struct.node** %11, align 8
  %77 = load %struct.knode*, %struct.knode** @knodes, align 8
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds %struct.knode, %struct.knode* %77, i64 %78
  store %struct.knode* %79, %struct.knode** %12, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %16, align 8
  %82 = trunc i64 %80 to i32
  %83 = load %struct.knode*, %struct.knode** %12, align 8
  %84 = getelementptr inbounds %struct.knode, %struct.knode* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.node*, %struct.node** %11, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i32 0, i32 3
  %87 = load i8, i8* %86, align 8
  %88 = trunc i8 %87 to i1
  %89 = load %struct.knode*, %struct.knode** %12, align 8
  %90 = getelementptr inbounds %struct.knode, %struct.knode* %89, i32 0, i32 3
  %91 = zext i1 %88 to i8
  store i8 %91, i8* %90, align 4
  %92 = load %struct.node*, %struct.node** %11, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 2
  %96 = load %struct.knode*, %struct.knode** %12, align 8
  %97 = getelementptr inbounds %struct.knode, %struct.knode* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.knode*, %struct.knode** %12, align 8
  %99 = getelementptr inbounds %struct.knode, %struct.knode* %98, i32 0, i32 2
  %100 = getelementptr inbounds [257 x i32], [257 x i32]* %99, i64 0, i64 0
  store i32 -2147483648, i32* %100, align 4
  %101 = load %struct.knode*, %struct.knode** %12, align 8
  %102 = getelementptr inbounds %struct.knode, %struct.knode* %101, i32 0, i32 2
  %103 = load %struct.knode*, %struct.knode** %12, align 8
  %104 = getelementptr inbounds %struct.knode, %struct.knode* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [257 x i32], [257 x i32]* %102, i64 0, i64 %107
  store i32 2147483647, i32* %108, align 4
  %109 = load %struct.knode*, %struct.knode** %12, align 8
  %110 = getelementptr inbounds %struct.knode, %struct.knode* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %122, %75
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @order, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.knode*, %struct.knode** %12, align 8
  %118 = getelementptr inbounds %struct.knode, %struct.knode* %117, i32 0, i32 2
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [257 x i32], [257 x i32]* %118, i64 0, i64 %120
  store i32 2147483647, i32* %121, align 4
  br label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %112, !llvm.loop !13

125:                                              ; preds = %112
  %126 = load %struct.knode*, %struct.knode** %12, align 8
  %127 = getelementptr inbounds %struct.knode, %struct.knode* %126, i32 0, i32 3
  %128 = load i8, i8* %127, align 4
  %129 = trunc i8 %128 to i1
  br i1 %129, label %188, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* %14, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %14, align 8
  %133 = trunc i64 %131 to i32
  %134 = load %struct.knode*, %struct.knode** %12, align 8
  %135 = getelementptr inbounds %struct.knode, %struct.knode* %134, i32 0, i32 1
  %136 = getelementptr inbounds [257 x i32], [257 x i32]* %135, i64 0, i64 0
  store i32 %133, i32* %136, align 4
  store i32 1, i32* %13, align 4
  br label %137

137:                                              ; preds = %175, %130
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.knode*, %struct.knode** %12, align 8
  %140 = getelementptr inbounds %struct.knode, %struct.knode* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %178

144:                                              ; preds = %137
  %145 = load %struct.node*, %struct.node** %11, align 8
  %146 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.knode*, %struct.knode** %12, align 8
  %154 = getelementptr inbounds %struct.knode, %struct.knode* %153, i32 0, i32 2
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [257 x i32], [257 x i32]* %154, i64 0, i64 %156
  store i32 %152, i32* %157, align 4
  %158 = load %struct.node*, %struct.node** %11, align 8
  %159 = getelementptr inbounds %struct.node, %struct.node* %158, i32 0, i32 0
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = bitcast i8* %165 to %struct.node*
  call void @_Z7enqueueP4node(%struct.node* noundef %166)
  %167 = load i64, i64* %14, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %14, align 8
  %169 = trunc i64 %167 to i32
  %170 = load %struct.knode*, %struct.knode** %12, align 8
  %171 = getelementptr inbounds %struct.knode, %struct.knode* %170, i32 0, i32 1
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [257 x i32], [257 x i32]* %171, i64 0, i64 %173
  store i32 %169, i32* %174, align 4
  br label %175

175:                                              ; preds = %144
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %137, !llvm.loop !14

178:                                              ; preds = %137
  %179 = load %struct.node*, %struct.node** %11, align 8
  %180 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 0
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %181, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = bitcast i8* %186 to %struct.node*
  call void @_Z7enqueueP4node(%struct.node* noundef %187)
  br label %240

188:                                              ; preds = %125
  %189 = load %struct.knode*, %struct.knode** %12, align 8
  %190 = getelementptr inbounds %struct.knode, %struct.knode* %189, i32 0, i32 1
  %191 = getelementptr inbounds [257 x i32], [257 x i32]* %190, i64 0, i64 0
  store i32 0, i32* %191, align 4
  store i32 1, i32* %13, align 4
  br label %192

192:                                              ; preds = %236, %188
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.knode*, %struct.knode** %12, align 8
  %195 = getelementptr inbounds %struct.knode, %struct.knode* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 1
  %198 = icmp slt i32 %193, %197
  br i1 %198, label %199, label %239

199:                                              ; preds = %192
  %200 = load %struct.node*, %struct.node** %11, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.knode*, %struct.knode** %12, align 8
  %209 = getelementptr inbounds %struct.knode, %struct.knode* %208, i32 0, i32 2
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [257 x i32], [257 x i32]* %209, i64 0, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load %struct.node*, %struct.node** %11, align 8
  %214 = getelementptr inbounds %struct.node, %struct.node* %213, i32 0, i32 0
  %215 = load i8**, i8*** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %215, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = bitcast i8* %220 to %struct.record*
  %222 = getelementptr inbounds %struct.record, %struct.record* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.record*, %struct.record** @krecords, align 8
  %225 = load i64, i64* %15, align 8
  %226 = getelementptr inbounds %struct.record, %struct.record* %224, i64 %225
  %227 = getelementptr inbounds %struct.record, %struct.record* %226, i32 0, i32 0
  store i32 %223, i32* %227, align 4
  %228 = load i64, i64* %15, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %15, align 8
  %230 = trunc i64 %228 to i32
  %231 = load %struct.knode*, %struct.knode** %12, align 8
  %232 = getelementptr inbounds %struct.knode, %struct.knode* %231, i32 0, i32 1
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [257 x i32], [257 x i32]* %232, i64 0, i64 %234
  store i32 %230, i32* %235, align 4
  br label %236

236:                                              ; preds = %199
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %192, !llvm.loop !15

239:                                              ; preds = %192
  br label %240

240:                                              ; preds = %239, %178
  %241 = load i64, i64* %16, align 8
  %242 = trunc i64 %241 to i32
  %243 = load %struct.knode*, %struct.knode** %12, align 8
  %244 = getelementptr inbounds %struct.knode, %struct.knode* %243, i32 0, i32 1
  %245 = load %struct.knode*, %struct.knode** %12, align 8
  %246 = getelementptr inbounds %struct.knode, %struct.knode* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [257 x i32], [257 x i32]* %244, i64 0, i64 %249
  store i32 %242, i32* %250, align 4
  %251 = load i8, i8* %4, align 1
  %252 = trunc i8 %251 to i1
  br i1 %252, label %253, label %306

253:                                              ; preds = %240
  %254 = load %struct.knode*, %struct.knode** %12, align 8
  %255 = getelementptr inbounds %struct.knode, %struct.knode* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %256)
  %258 = load %struct.knode*, %struct.knode** %12, align 8
  %259 = getelementptr inbounds %struct.knode, %struct.knode* %258, i32 0, i32 3
  %260 = load i8, i8* %259, align 4
  %261 = trunc i8 %260 to i1
  %262 = zext i1 %261 to i32
  %263 = load %struct.knode*, %struct.knode** %12, align 8
  %264 = getelementptr inbounds %struct.knode, %struct.knode* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 noundef %262, i32 noundef %265)
  %267 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %268

268:                                              ; preds = %282, %253
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.knode*, %struct.knode** %12, align 8
  %271 = getelementptr inbounds %struct.knode, %struct.knode* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %285

274:                                              ; preds = %268
  %275 = load %struct.knode*, %struct.knode** %12, align 8
  %276 = getelementptr inbounds %struct.knode, %struct.knode* %275, i32 0, i32 1
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [257 x i32], [257 x i32]* %276, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %280)
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %13, align 4
  br label %268, !llvm.loop !16

285:                                              ; preds = %268
  %286 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %287

287:                                              ; preds = %301, %285
  %288 = load i32, i32* %13, align 4
  %289 = load %struct.knode*, %struct.knode** %12, align 8
  %290 = getelementptr inbounds %struct.knode, %struct.knode* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %304

293:                                              ; preds = %287
  %294 = load %struct.knode*, %struct.knode** %12, align 8
  %295 = getelementptr inbounds %struct.knode, %struct.knode* %294, i32 0, i32 2
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [257 x i32], [257 x i32]* %295, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %299)
  br label %301

301:                                              ; preds = %293
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %13, align 4
  br label %287, !llvm.loop !17

304:                                              ; preds = %287
  %305 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %306

306:                                              ; preds = %304, %240
  br label %72, !llvm.loop !18

307:                                              ; preds = %72
  %308 = load i64, i64* @size, align 8
  %309 = mul i64 %308, 4
  %310 = load i64, i64* %14, align 8
  %311 = mul i64 %310, 2068
  %312 = add i64 %309, %311
  store i64 %312, i64* %17, align 8
  %313 = load i8, i8* %4, align 1
  %314 = trunc i8 %313 to i1
  br i1 %314, label %315, label %343

315:                                              ; preds = %307
  store i32 0, i32* %13, align 4
  br label %316

316:                                              ; preds = %329, %315
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = load i64, i64* @size, align 8
  %320 = icmp slt i64 %318, %319
  br i1 %320, label %321, label %332

321:                                              ; preds = %316
  %322 = load %struct.record*, %struct.record** @krecords, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.record, %struct.record* %322, i64 %324
  %326 = getelementptr inbounds %struct.record, %struct.record* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %327)
  br label %329

329:                                              ; preds = %321
  %330 = load i32, i32* %13, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %13, align 4
  br label %316, !llvm.loop !19

332:                                              ; preds = %316
  %333 = load i64, i64* @size, align 8
  %334 = load i64, i64* @size, align 8
  %335 = mul i64 %334, 4
  %336 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i64 noundef %333, i64 noundef 4, i64 noundef %335)
  %337 = load i64, i64* %14, align 8
  %338 = load i64, i64* %14, align 8
  %339 = mul i64 %338, 2068
  %340 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i64 noundef %337, i64 noundef 2068, i64 noundef %339)
  %341 = load i64, i64* %17, align 8
  %342 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i64 noundef %341)
  br label %343

343:                                              ; preds = %332, %307
  %344 = call i32 @gettimeofday(%struct.timeval* noundef %6, %struct.timezone* noundef null) #15
  %345 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = sitofp i64 %346 to double
  %348 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = sitofp i64 %349 to double
  %351 = fmul contract double %350, 0x3EB0C6F7A0B5ED8D
  %352 = fadd contract double %347, %351
  store double %352, double* %18, align 8
  %353 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = sitofp i64 %354 to double
  %356 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = sitofp i64 %357 to double
  %359 = fmul contract double %358, 0x3EB0C6F7A0B5ED8D
  %360 = fadd contract double %355, %359
  store double %360, double* %19, align 8
  %361 = load double, double* %19, align 8
  %362 = load double, double* %18, align 8
  %363 = fsub contract double %361, %362
  store double %363, double* %7, align 8
  %364 = load double, double* %7, align 8
  %365 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), double noundef %364)
  %366 = load i64, i64* %17, align 8
  ret i64 %366
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_ZSt3powIidEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 noundef %0, double noundef %1) #0 comdat {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sitofp i32 %5 to double
  %7 = load double, double* %4, align 8
  %8 = call contract double @pow(double noundef %6, double noundef %7) #15
  ret double %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_ZSt3logIlEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to double
  %5 = call contract double @log(double noundef %4) #15
  ret double %5
}

; Function Attrs: nounwind
declare double @log(double noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z7enqueueP4node(%struct.node* noundef %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %4 = load %struct.node*, %struct.node** @queue, align 8
  %5 = icmp eq %struct.node* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %7, %struct.node** @queue, align 8
  %8 = load %struct.node*, %struct.node** @queue, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 5
  store %struct.node* null, %struct.node** %9, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.node*, %struct.node** @queue, align 8
  store %struct.node* %11, %struct.node** %3, align 8
  br label %12

12:                                               ; preds = %17, %10
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 5
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = icmp ne %struct.node* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 5
  %20 = load %struct.node*, %struct.node** %19, align 8
  store %struct.node* %20, %struct.node** %3, align 8
  br label %12, !llvm.loop !20

21:                                               ; preds = %12
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = load %struct.node*, %struct.node** %3, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 5
  store %struct.node* %22, %struct.node** %24, align 8
  %25 = load %struct.node*, %struct.node** %2, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 5
  store %struct.node* null, %struct.node** %26, align 8
  br label %27

27:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.node* @_Z7dequeuev() #0 {
  %1 = alloca %struct.node*, align 8
  %2 = load %struct.node*, %struct.node** @queue, align 8
  store %struct.node* %2, %struct.node** %1, align 8
  %3 = load %struct.node*, %struct.node** @queue, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 5
  %5 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %5, %struct.node** @queue, align 8
  %6 = load %struct.node*, %struct.node** %1, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 5
  store %struct.node* null, %struct.node** %7, align 8
  %8 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.list_t* @_Z9findRangeP4nodeii(%struct.node* noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.list_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.node*, %struct.node** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call noundef %struct.node* @_Z9find_leafP4nodeib(%struct.node* noundef %15, i32 noundef %16, i1 noundef zeroext false)
  store %struct.node* %17, %struct.node** %9, align 8
  %18 = load %struct.node*, %struct.node** %9, align 8
  %19 = icmp eq %struct.node* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.list_t* null, %struct.list_t** %4, align 8
  br label %87

21:                                               ; preds = %3
  %22 = call noalias i8* @malloc(i64 noundef 40) #16
  store i8* %22, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 764)
  call void @exit(i32 noundef -1) #17
  unreachable

27:                                               ; preds = %21
  %28 = load i8*, i8** %11, align 8
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = bitcast i8* %29 to %struct.list_t*
  store %struct.list_t* %30, %struct.list_t** %10, align 8
  %31 = load %struct.list_t*, %struct.list_t** %10, align 8
  call void @_Z9list_initP6list_tPFiPKvS2_EPFvPvE(%struct.list_t* noundef %31, i32 (i8*, i8*)* noundef null, void (i8*)* noundef null)
  store i32 0, i32* %13, align 4
  store i8 1, i8* %14, align 1
  br label %32

32:                                               ; preds = %75, %27
  %33 = load i8, i8* %14, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.node*, %struct.node** %9, align 8
  %37 = icmp ne %struct.node* %36, null
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %85

40:                                               ; preds = %38
  store i8 0, i8* %14, align 1
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %72, %40
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.node*, %struct.node** %9, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  %48 = load %struct.node*, %struct.node** %9, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load %struct.node*, %struct.node** %9, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  store i8 1, i8* %14, align 1
  br label %71

70:                                               ; preds = %57, %47
  store i8 0, i8* %14, align 1
  br label %75

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %41, !llvm.loop !21

75:                                               ; preds = %70, %41
  %76 = load %struct.node*, %struct.node** %9, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* @order, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to %struct.node*
  store %struct.node* %84, %struct.node** %9, align 8
  br label %32, !llvm.loop !22

85:                                               ; preds = %38
  %86 = load %struct.list_t*, %struct.list_t** %10, align 8
  store %struct.list_t* %86, %struct.list_t** %4, align 8
  br label %87

87:                                               ; preds = %85, %20
  %88 = load %struct.list_t*, %struct.list_t** %4, align 8
  ret %struct.list_t* %88
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z9find_leafP4nodeib(%struct.node* noundef %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %11 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %11, %struct.node** %9, align 8
  %12 = load %struct.node*, %struct.node** %9, align 8
  %13 = icmp eq %struct.node* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8, i8* %7, align 1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %20, %struct.node** %4, align 8
  br label %133

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %89, %21
  %23 = load %struct.node*, %struct.node** %9, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 8
  %26 = trunc i8 %25 to i1
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %98

28:                                               ; preds = %22
  %29 = load i8, i8* %7, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %49, %31
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.node*, %struct.node** %9, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.node*, %struct.node** %9, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %33, !llvm.loop !23

52:                                               ; preds = %33
  %53 = load %struct.node*, %struct.node** %9, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 noundef %59)
  br label %61

61:                                               ; preds = %52, %28
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.node*, %struct.node** %9, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.node*, %struct.node** %9, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %69, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %82

81:                                               ; preds = %68
  br label %83

82:                                               ; preds = %78
  br label %62, !llvm.loop !24

83:                                               ; preds = %81, %62
  %84 = load i8, i8* %7, align 1
  %85 = trunc i8 %84 to i1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32 noundef %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.node*, %struct.node** %9, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = bitcast i8* %96 to %struct.node*
  store %struct.node* %97, %struct.node** %9, align 8
  br label %22, !llvm.loop !25

98:                                               ; preds = %22
  %99 = load i8, i8* %7, align 1
  %100 = trunc i8 %99 to i1
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %119, %101
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.node*, %struct.node** %9, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load %struct.node*, %struct.node** %9, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %117)
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %103, !llvm.loop !26

122:                                              ; preds = %103
  %123 = load %struct.node*, %struct.node** %9, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i32 noundef %129)
  br label %131

131:                                              ; preds = %122, %98
  %132 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %132, %struct.node** %4, align 8
  br label %133

133:                                              ; preds = %131, %19
  %134 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %134
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7usage_1v() #1 {
  %1 = load i32, i32* @order, align 4
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 noundef %1)
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.22, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7usage_2v() #1 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.25, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.29, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.32, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12print_leavesP4node(%struct.node* noundef %0) #1 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %5, %struct.node** %4, align 8
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = icmp eq %struct.node* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %77

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %17, %10
  %12 = load %struct.node*, %struct.node** %4, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 3
  %14 = load i8, i8* %13, align 8
  %15 = trunc i8 %14 to i1
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.node*
  store %struct.node* %23, %struct.node** %4, align 8
  br label %11, !llvm.loop !27

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %74
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.node*, %struct.node** %4, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load i8, i8* @verbose_output, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.node*, %struct.node** %4, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %42)
  br label %44

44:                                               ; preds = %35, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %26, !llvm.loop !28

48:                                               ; preds = %26
  %49 = load %struct.node*, %struct.node** %4, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* @order, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %48
  %59 = load i8, i8* @verbose_output, align 1
  %60 = trunc i8 %59 to i1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load %struct.node*, %struct.node** %4, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* @order, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to %struct.node*
  store %struct.node* %72, %struct.node** %4, align 8
  br label %74

73:                                               ; preds = %48
  br label %75

74:                                               ; preds = %63
  br label %25, !llvm.loop !29

75:                                               ; preds = %73
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z6heightP4node(%struct.node* noundef %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %5, %struct.node** %4, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.node*, %struct.node** %4, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 3
  %9 = load i8, i8* %8, align 8
  %10 = trunc i8 %9 to i1
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load %struct.node*, %struct.node** %4, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.node*
  store %struct.node* %18, %struct.node** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6, !llvm.loop !30

21:                                               ; preds = %6
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z12path_to_rootP4nodeS0_(%struct.node* noundef %0, %struct.node* noundef %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %7, %struct.node** %6, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = icmp ne %struct.node* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %15 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %15, %struct.node** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %8, !llvm.loop !31

18:                                               ; preds = %8
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10print_treeP4node(%struct.node* noundef %0) #1 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  store %struct.node* null, %struct.node** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = icmp eq %struct.node* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %140

11:                                               ; preds = %1
  store %struct.node* null, %struct.node** @queue, align 8
  %12 = load %struct.node*, %struct.node** %2, align 8
  call void @_Z7enqueueP4node(%struct.node* noundef %12)
  br label %13

13:                                               ; preds = %136, %11
  %14 = load %struct.node*, %struct.node** @queue, align 8
  %15 = icmp ne %struct.node* %14, null
  br i1 %15, label %16, label %138

16:                                               ; preds = %13
  %17 = call noundef %struct.node* @_Z7dequeuev()
  store %struct.node* %17, %struct.node** %3, align 8
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  %20 = load %struct.node*, %struct.node** %19, align 8
  %21 = icmp ne %struct.node* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.node*, %struct.node** %3, align 8
  %24 = bitcast %struct.node* %23 to i8*
  %25 = load %struct.node*, %struct.node** %3, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 2
  %27 = load %struct.node*, %struct.node** %26, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %24, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.node*, %struct.node** %2, align 8
  %35 = load %struct.node*, %struct.node** %3, align 8
  %36 = call noundef i32 @_Z12path_to_rootP4nodeS0_(%struct.node* noundef %34, %struct.node* noundef %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %22, %16
  %45 = load i8, i8* @verbose_output, align 1
  %46 = trunc i8 %45 to i1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.node*, %struct.node** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct.node* noundef %48)
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.node*, %struct.node** %3, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %51
  %58 = load i8, i8* @verbose_output, align 1
  %59 = trunc i8 %58 to i1
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.node*, %struct.node** %3, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef %67)
  br label %69

69:                                               ; preds = %60, %57
  %70 = load %struct.node*, %struct.node** %3, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %51, !llvm.loop !32

81:                                               ; preds = %51
  %82 = load %struct.node*, %struct.node** %3, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 3
  %84 = load i8, i8* %83, align 8
  %85 = trunc i8 %84 to i1
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.node*, %struct.node** %3, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %88, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.node*, %struct.node** %3, align 8
  %95 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = bitcast i8* %100 to %struct.node*
  call void @_Z7enqueueP4node(%struct.node* noundef %101)
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %87, !llvm.loop !33

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %81
  %107 = load i8, i8* @verbose_output, align 1
  %108 = trunc i8 %107 to i1
  br i1 %108, label %109, label %136

109:                                              ; preds = %106
  %110 = load %struct.node*, %struct.node** %3, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 3
  %112 = load i8, i8* %111, align 8
  %113 = trunc i8 %112 to i1
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.node*, %struct.node** %3, align 8
  %116 = getelementptr inbounds %struct.node, %struct.node* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* @order, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef %122)
  br label %135

124:                                              ; preds = %109
  %125 = load %struct.node*, %struct.node** %3, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load %struct.node*, %struct.node** %3, align 8
  %129 = getelementptr inbounds %struct.node, %struct.node* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %127, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef %133)
  br label %135

135:                                              ; preds = %124, %114
  br label %136

136:                                              ; preds = %135, %106
  %137 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  br label %13, !llvm.loop !34

138:                                              ; preds = %13
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %9
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.record* @_Z4findP4nodeib(%struct.node* noundef %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %11 = load %struct.node*, %struct.node** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8, i8* %7, align 1
  %14 = trunc i8 %13 to i1
  %15 = call noundef %struct.node* @_Z9find_leafP4nodeib(%struct.node* noundef %11, i32 noundef %12, i1 noundef zeroext %14)
  store %struct.node* %15, %struct.node** %9, align 8
  %16 = load %struct.node*, %struct.node** %9, align 8
  %17 = icmp eq %struct.node* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.record* null, %struct.record** %4, align 8
  br label %57

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.node*, %struct.node** %9, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.node*, %struct.node** %9, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %41

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %20, !llvm.loop !35

41:                                               ; preds = %36, %20
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.node*, %struct.node** %9, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store %struct.record* null, %struct.record** %4, align 8
  br label %57

48:                                               ; preds = %41
  %49 = load %struct.node*, %struct.node** %9, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to %struct.record*
  store %struct.record* %56, %struct.record** %4, align 8
  br label %57

57:                                               ; preds = %48, %47, %18
  %58 = load %struct.record*, %struct.record** %4, align 8
  ret %struct.record* %58
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3cuti(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = srem i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.record* @_Z11make_recordi(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call noalias i8* @malloc(i64 noundef 4) #16
  store i8* %6, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1030)
  call void @exit(i32 noundef -1) #17
  unreachable

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.record*
  store %struct.record* %14, %struct.record** %3, align 8
  %15 = load %struct.record*, %struct.record** %3, align 8
  %16 = icmp eq %struct.record* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  call void @perror(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.record*, %struct.record** %3, align 8
  %21 = getelementptr inbounds %struct.record, %struct.record* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18
  %23 = load %struct.record*, %struct.record** %3, align 8
  ret %struct.record* %23
}

declare void @perror(i8* noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z9make_nodev() #1 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = call noalias i8* @malloc(i64 noundef 40) #16
  store i8* %8, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1046)
  call void @exit(i32 noundef -1) #17
  unreachable

13:                                               ; preds = %0
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.node*
  store %struct.node* %16, %struct.node** %1, align 8
  %17 = load %struct.node*, %struct.node** %1, align 8
  %18 = icmp eq %struct.node* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

20:                                               ; preds = %13
  %21 = load i32, i32* @order, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call noalias i8* @malloc(i64 noundef %24) #16
  store i8* %25, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1051)
  call void @exit(i32 noundef -1) #17
  unreachable

30:                                               ; preds = %20
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.node*, %struct.node** %1, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.node*, %struct.node** %1, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void @perror(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

41:                                               ; preds = %30
  %42 = load i32, i32* @order, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 noundef %44) #16
  store i8* %45, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1056)
  call void @exit(i32 noundef -1) #17
  unreachable

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i8**
  %54 = load %struct.node*, %struct.node** %1, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  store i8** %53, i8*** %55, align 8
  %56 = load %struct.node*, %struct.node** %1, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = icmp eq i8** %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  call void @perror(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

61:                                               ; preds = %50
  %62 = load %struct.node*, %struct.node** %1, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 3
  store i8 0, i8* %63, align 8
  %64 = load %struct.node*, %struct.node** %1, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 4
  store i32 0, i32* %65, align 4
  %66 = load %struct.node*, %struct.node** %1, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 2
  store %struct.node* null, %struct.node** %67, align 8
  %68 = load %struct.node*, %struct.node** %1, align 8
  %69 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 5
  store %struct.node* null, %struct.node** %69, align 8
  %70 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %70
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z9make_leafv() #1 {
  %1 = alloca %struct.node*, align 8
  %2 = call noundef %struct.node* @_Z9make_nodev()
  store %struct.node* %2, %struct.node** %1, align 8
  %3 = load %struct.node*, %struct.node** %1, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  store i8 1, i8* %4, align 8
  %5 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z14get_left_indexP4nodeS0_(%struct.node* noundef %0, %struct.node* noundef %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.node*, %struct.node** %4, align 8
  %21 = bitcast %struct.node* %20 to i8*
  %22 = icmp ne i8* %19, %21
  br label %23

23:                                               ; preds = %12, %6
  %24 = phi i1 [ false, %6 ], [ %22, %12 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6, !llvm.loop !36

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.node* @_Z16insert_into_leafP4nodeiP6record(%struct.node* noundef %0, i32 noundef %1, %struct.record* noundef %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.record* %2, %struct.record** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.node*, %struct.node** %4, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %15, %9
  %26 = phi i1 [ false, %9 ], [ %24, %15 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %9, !llvm.loop !37

30:                                               ; preds = %25
  %31 = load %struct.node*, %struct.node** %4, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %67, %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.node*, %struct.node** %4, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.node*, %struct.node** %4, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.node*, %struct.node** %4, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.node*, %struct.node** %4, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %60, i8** %66, align 8
  br label %67

67:                                               ; preds = %38
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  br label %34, !llvm.loop !38

70:                                               ; preds = %34
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.node*, %struct.node** %4, align 8
  %73 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.record*, %struct.record** %6, align 8
  %79 = bitcast %struct.record* %78 to i8*
  %80 = load %struct.node*, %struct.node** %4, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  %86 = load %struct.node*, %struct.node** %4, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %90
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z32insert_into_leaf_after_splittingP4nodeS0_iP6record(%struct.node* noundef %0, %struct.node* noundef %1, i32 noundef %2, %struct.record* noundef %3) #1 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.record*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store %struct.node* %1, %struct.node** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.record* %3, %struct.record** %8, align 8
  %21 = call noundef %struct.node* @_Z9make_leafv()
  store %struct.node* %21, %struct.node** %9, align 8
  %22 = load i32, i32* @order, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call noalias i8* @malloc(i64 noundef %24) #16
  store i8* %25, i8** %17, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1125)
  call void @exit(i32 noundef -1) #17
  unreachable

30:                                               ; preds = %4
  %31 = load i8*, i8** %17, align 8
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @perror(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

37:                                               ; preds = %30
  %38 = load i32, i32* @order, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = call noalias i8* @malloc(i64 noundef %40) #16
  store i8* %41, i8** %19, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1131)
  call void @exit(i32 noundef -1) #17
  unreachable

46:                                               ; preds = %37
  %47 = load i8*, i8** %19, align 8
  store i8* %47, i8** %20, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = bitcast i8* %48 to i8**
  store i8** %49, i8*** %11, align 8
  %50 = load i8**, i8*** %11, align 8
  %51 = icmp eq i8** %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  call void @perror(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

53:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load %struct.node*, %struct.node** %6, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @order, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br label %69

69:                                               ; preds = %64, %54
  %70 = phi i1 [ false, %54 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %54, !llvm.loop !39

74:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.node*, %struct.node** %6, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %75
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.node*, %struct.node** %6, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load %struct.node*, %struct.node** %6, align 8
  %101 = getelementptr inbounds %struct.node, %struct.node* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %11, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %88
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %75, !llvm.loop !40

116:                                              ; preds = %75
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load %struct.record*, %struct.record** %8, align 8
  %123 = bitcast %struct.record* %122 to i8*
  %124 = load i8**, i8*** %11, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %123, i8** %127, align 8
  %128 = load %struct.node*, %struct.node** %6, align 8
  %129 = getelementptr inbounds %struct.node, %struct.node* %128, i32 0, i32 4
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* @order, align 4
  %131 = sub nsw i32 %130, 1
  %132 = call noundef i32 @_Z3cuti(i32 noundef %131)
  store i32 %132, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %164, %116
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %133
  %138 = load i8**, i8*** %11, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.node*, %struct.node** %6, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* %142, i8** %148, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.node*, %struct.node** %6, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load %struct.node*, %struct.node** %6, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %137
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %133, !llvm.loop !41

167:                                              ; preds = %133
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %169

169:                                              ; preds = %200, %167
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @order, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %205

173:                                              ; preds = %169
  %174 = load i8**, i8*** %11, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.node*, %struct.node** %9, align 8
  %180 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 0
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  store i8* %178, i8** %184, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.node*, %struct.node** %9, align 8
  %191 = getelementptr inbounds %struct.node, %struct.node* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  %196 = load %struct.node*, %struct.node** %9, align 8
  %197 = getelementptr inbounds %struct.node, %struct.node* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %173
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %169, !llvm.loop !42

205:                                              ; preds = %169
  %206 = load i8**, i8*** %11, align 8
  %207 = bitcast i8** %206 to i8*
  call void @free(i8* noundef %207) #15
  %208 = load i32*, i32** %10, align 8
  %209 = bitcast i32* %208 to i8*
  call void @free(i8* noundef %209) #15
  %210 = load %struct.node*, %struct.node** %6, align 8
  %211 = getelementptr inbounds %struct.node, %struct.node* %210, i32 0, i32 0
  %212 = load i8**, i8*** %211, align 8
  %213 = load i32, i32* @order, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %212, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.node*, %struct.node** %9, align 8
  %219 = getelementptr inbounds %struct.node, %struct.node* %218, i32 0, i32 0
  %220 = load i8**, i8*** %219, align 8
  %221 = load i32, i32* @order, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %220, i64 %223
  store i8* %217, i8** %224, align 8
  %225 = load %struct.node*, %struct.node** %9, align 8
  %226 = bitcast %struct.node* %225 to i8*
  %227 = load %struct.node*, %struct.node** %6, align 8
  %228 = getelementptr inbounds %struct.node, %struct.node* %227, i32 0, i32 0
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* @order, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %229, i64 %232
  store i8* %226, i8** %233, align 8
  %234 = load %struct.node*, %struct.node** %6, align 8
  %235 = getelementptr inbounds %struct.node, %struct.node* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %15, align 4
  br label %237

237:                                              ; preds = %249, %205
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @order, align 4
  %240 = sub nsw i32 %239, 1
  %241 = icmp slt i32 %238, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load %struct.node*, %struct.node** %6, align 8
  %244 = getelementptr inbounds %struct.node, %struct.node* %243, i32 0, i32 0
  %245 = load i8**, i8*** %244, align 8
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  store i8* null, i8** %248, align 8
  br label %249

249:                                              ; preds = %242
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %15, align 4
  br label %237, !llvm.loop !43

252:                                              ; preds = %237
  %253 = load %struct.node*, %struct.node** %9, align 8
  %254 = getelementptr inbounds %struct.node, %struct.node* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %15, align 4
  br label %256

256:                                              ; preds = %268, %252
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* @order, align 4
  %259 = sub nsw i32 %258, 1
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.node*, %struct.node** %9, align 8
  %263 = getelementptr inbounds %struct.node, %struct.node* %262, i32 0, i32 0
  %264 = load i8**, i8*** %263, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  store i8* null, i8** %267, align 8
  br label %268

268:                                              ; preds = %261
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %15, align 4
  br label %256, !llvm.loop !44

271:                                              ; preds = %256
  %272 = load %struct.node*, %struct.node** %6, align 8
  %273 = getelementptr inbounds %struct.node, %struct.node* %272, i32 0, i32 2
  %274 = load %struct.node*, %struct.node** %273, align 8
  %275 = load %struct.node*, %struct.node** %9, align 8
  %276 = getelementptr inbounds %struct.node, %struct.node* %275, i32 0, i32 2
  store %struct.node* %274, %struct.node** %276, align 8
  %277 = load %struct.node*, %struct.node** %9, align 8
  %278 = getelementptr inbounds %struct.node, %struct.node* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %14, align 4
  %282 = load %struct.node*, %struct.node** %5, align 8
  %283 = load %struct.node*, %struct.node** %6, align 8
  %284 = load i32, i32* %14, align 4
  %285 = load %struct.node*, %struct.node** %9, align 8
  %286 = call noundef %struct.node* @_Z18insert_into_parentP4nodeS0_iS0_(%struct.node* noundef %282, %struct.node* noundef %283, i32 noundef %284, %struct.node* noundef %285)
  ret %struct.node* %286
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z18insert_into_parentP4nodeS0_iS0_(%struct.node* noundef %0, %struct.node* noundef %1, i32 noundef %2, %struct.node* noundef %3) #1 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.node* %3, %struct.node** %9, align 8
  %12 = load %struct.node*, %struct.node** %7, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 2
  %14 = load %struct.node*, %struct.node** %13, align 8
  store %struct.node* %14, %struct.node** %11, align 8
  %15 = load %struct.node*, %struct.node** %11, align 8
  %16 = icmp eq %struct.node* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.node*, %struct.node** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.node*, %struct.node** %9, align 8
  %21 = call noundef %struct.node* @_Z20insert_into_new_rootP4nodeiS0_(%struct.node* noundef %18, i32 noundef %19, %struct.node* noundef %20)
  store %struct.node* %21, %struct.node** %5, align 8
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.node*, %struct.node** %11, align 8
  %24 = load %struct.node*, %struct.node** %7, align 8
  %25 = call noundef i32 @_Z14get_left_indexP4nodeS0_(%struct.node* noundef %23, %struct.node* noundef %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.node*, %struct.node** %11, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @order, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.node*, %struct.node** %6, align 8
  %34 = load %struct.node*, %struct.node** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.node*, %struct.node** %9, align 8
  %38 = call noundef %struct.node* @_Z16insert_into_nodeP4nodeS0_iiS0_(%struct.node* noundef %33, %struct.node* noundef %34, i32 noundef %35, i32 noundef %36, %struct.node* noundef %37)
  store %struct.node* %38, %struct.node** %5, align 8
  br label %46

39:                                               ; preds = %22
  %40 = load %struct.node*, %struct.node** %6, align 8
  %41 = load %struct.node*, %struct.node** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.node*, %struct.node** %9, align 8
  %45 = call noundef %struct.node* @_Z32insert_into_node_after_splittingP4nodeS0_iiS0_(%struct.node* noundef %40, %struct.node* noundef %41, i32 noundef %42, i32 noundef %43, %struct.node* noundef %44)
  store %struct.node* %45, %struct.node** %5, align 8
  br label %46

46:                                               ; preds = %39, %32, %17
  %47 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %47
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.node* @_Z16insert_into_nodeP4nodeS0_iiS0_(%struct.node* noundef %0, %struct.node* noundef %1, i32 noundef %2, i32 noundef %3, %struct.node* noundef %4) #0 {
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.node* %4, %struct.node** %10, align 8
  %12 = load %struct.node*, %struct.node** %7, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %48, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.node*, %struct.node** %7, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.node*, %struct.node** %7, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %26, i8** %33, align 8
  %34 = load %struct.node*, %struct.node** %7, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.node*, %struct.node** %7, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %19
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %11, align 4
  br label %15, !llvm.loop !45

51:                                               ; preds = %15
  %52 = load %struct.node*, %struct.node** %10, align 8
  %53 = bitcast %struct.node* %52 to i8*
  %54 = load %struct.node*, %struct.node** %7, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  store i8* %53, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.node*, %struct.node** %7, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.node*, %struct.node** %7, align 8
  %69 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.node*, %struct.node** %6, align 8
  ret %struct.node* %72
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z32insert_into_node_after_splittingP4nodeS0_iiS0_(%struct.node* noundef %0, %struct.node* noundef %1, i32 noundef %2, i32 noundef %3, %struct.node* noundef %4) #1 {
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.node*, align 8
  %16 = alloca %struct.node*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.node**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.node* %4, %struct.node** %10, align 8
  %23 = load i32, i32* @order, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call noalias i8* @malloc(i64 noundef %26) #16
  store i8* %27, i8** %19, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1227)
  call void @exit(i32 noundef -1) #17
  unreachable

32:                                               ; preds = %5
  %33 = load i8*, i8** %19, align 8
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %20, align 8
  %35 = bitcast i8* %34 to %struct.node**
  store %struct.node** %35, %struct.node*** %18, align 8
  %36 = load %struct.node**, %struct.node*** %18, align 8
  %37 = icmp eq %struct.node** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  call void @perror(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

39:                                               ; preds = %32
  %40 = load i32, i32* @order, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = call noalias i8* @malloc(i64 noundef %42) #16
  store i8* %43, i8** %21, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1232)
  call void @exit(i32 noundef -1) #17
  unreachable

48:                                               ; preds = %39
  %49 = load i8*, i8** %21, align 8
  store i8* %49, i8** %22, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %17, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  call void @perror(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

55:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.node*, %struct.node** %7, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.node*, %struct.node** %7, align 8
  %73 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to %struct.node*
  %80 = load %struct.node**, %struct.node*** %18, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.node*, %struct.node** %80, i64 %82
  store %struct.node* %79, %struct.node** %83, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %56, !llvm.loop !46

89:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %115, %89
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.node*, %struct.node** %7, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.node*, %struct.node** %7, align 8
  %105 = getelementptr inbounds %struct.node, %struct.node* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %90, !llvm.loop !47

120:                                              ; preds = %90
  %121 = load %struct.node*, %struct.node** %10, align 8
  %122 = load %struct.node**, %struct.node*** %18, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.node*, %struct.node** %122, i64 %125
  store %struct.node* %121, %struct.node** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @order, align 4
  %133 = call noundef i32 @_Z3cuti(i32 noundef %132)
  store i32 %133, i32* %13, align 4
  %134 = call noundef %struct.node* @_Z9make_nodev()
  store %struct.node* %134, %struct.node** %15, align 8
  %135 = load %struct.node*, %struct.node** %7, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 4
  store i32 0, i32* %136, align 4
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %170, %120
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %137
  %143 = load %struct.node**, %struct.node*** %18, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.node*, %struct.node** %143, i64 %145
  %147 = load %struct.node*, %struct.node** %146, align 8
  %148 = bitcast %struct.node* %147 to i8*
  %149 = load %struct.node*, %struct.node** %7, align 8
  %150 = getelementptr inbounds %struct.node, %struct.node* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* %148, i8** %154, align 8
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.node*, %struct.node** %7, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load %struct.node*, %struct.node** %7, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %142
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %137, !llvm.loop !48

173:                                              ; preds = %137
  %174 = load %struct.node**, %struct.node*** %18, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.node*, %struct.node** %174, i64 %176
  %178 = load %struct.node*, %struct.node** %177, align 8
  %179 = bitcast %struct.node* %178 to i8*
  %180 = load %struct.node*, %struct.node** %7, align 8
  %181 = getelementptr inbounds %struct.node, %struct.node* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* %179, i8** %185, align 8
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %194

194:                                              ; preds = %226, %173
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @order, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %231

198:                                              ; preds = %194
  %199 = load %struct.node**, %struct.node*** %18, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.node*, %struct.node** %199, i64 %201
  %203 = load %struct.node*, %struct.node** %202, align 8
  %204 = bitcast %struct.node* %203 to i8*
  %205 = load %struct.node*, %struct.node** %15, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  store i8* %204, i8** %210, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.node*, %struct.node** %15, align 8
  %217 = getelementptr inbounds %struct.node, %struct.node* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %215, i32* %221, align 4
  %222 = load %struct.node*, %struct.node** %15, align 8
  %223 = getelementptr inbounds %struct.node, %struct.node* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %198
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %194, !llvm.loop !49

231:                                              ; preds = %194
  %232 = load %struct.node**, %struct.node*** %18, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.node*, %struct.node** %232, i64 %234
  %236 = load %struct.node*, %struct.node** %235, align 8
  %237 = bitcast %struct.node* %236 to i8*
  %238 = load %struct.node*, %struct.node** %15, align 8
  %239 = getelementptr inbounds %struct.node, %struct.node* %238, i32 0, i32 0
  %240 = load i8**, i8*** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  store i8* %237, i8** %243, align 8
  %244 = load %struct.node**, %struct.node*** %18, align 8
  %245 = bitcast %struct.node** %244 to i8*
  call void @free(i8* noundef %245) #15
  %246 = load i32*, i32** %17, align 8
  %247 = bitcast i32* %246 to i8*
  call void @free(i8* noundef %247) #15
  %248 = load %struct.node*, %struct.node** %7, align 8
  %249 = getelementptr inbounds %struct.node, %struct.node* %248, i32 0, i32 2
  %250 = load %struct.node*, %struct.node** %249, align 8
  %251 = load %struct.node*, %struct.node** %15, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 2
  store %struct.node* %250, %struct.node** %252, align 8
  store i32 0, i32* %11, align 4
  br label %253

253:                                              ; preds = %271, %231
  %254 = load i32, i32* %11, align 4
  %255 = load %struct.node*, %struct.node** %15, align 8
  %256 = getelementptr inbounds %struct.node, %struct.node* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = icmp sle i32 %254, %257
  br i1 %258, label %259, label %274

259:                                              ; preds = %253
  %260 = load %struct.node*, %struct.node** %15, align 8
  %261 = getelementptr inbounds %struct.node, %struct.node* %260, i32 0, i32 0
  %262 = load i8**, i8*** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = bitcast i8* %266 to %struct.node*
  store %struct.node* %267, %struct.node** %16, align 8
  %268 = load %struct.node*, %struct.node** %15, align 8
  %269 = load %struct.node*, %struct.node** %16, align 8
  %270 = getelementptr inbounds %struct.node, %struct.node* %269, i32 0, i32 2
  store %struct.node* %268, %struct.node** %270, align 8
  br label %271

271:                                              ; preds = %259
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  br label %253, !llvm.loop !50

274:                                              ; preds = %253
  %275 = load %struct.node*, %struct.node** %6, align 8
  %276 = load %struct.node*, %struct.node** %7, align 8
  %277 = load i32, i32* %14, align 4
  %278 = load %struct.node*, %struct.node** %15, align 8
  %279 = call noundef %struct.node* @_Z18insert_into_parentP4nodeS0_iS0_(%struct.node* noundef %275, %struct.node* noundef %276, i32 noundef %277, %struct.node* noundef %278)
  ret %struct.node* %279
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z20insert_into_new_rootP4nodeiS0_(%struct.node* noundef %0, i32 noundef %1, %struct.node* noundef %2) #1 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node* %2, %struct.node** %6, align 8
  %8 = call noundef %struct.node* @_Z9make_nodev()
  store %struct.node* %8, %struct.node** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.node*, %struct.node** %7, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.node*, %struct.node** %4, align 8
  %15 = bitcast %struct.node* %14 to i8*
  %16 = load %struct.node*, %struct.node** %7, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %15, i8** %19, align 8
  %20 = load %struct.node*, %struct.node** %6, align 8
  %21 = bitcast %struct.node* %20 to i8*
  %22 = load %struct.node*, %struct.node** %7, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* %21, i8** %25, align 8
  %26 = load %struct.node*, %struct.node** %7, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.node*, %struct.node** %7, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 2
  store %struct.node* null, %struct.node** %31, align 8
  %32 = load %struct.node*, %struct.node** %7, align 8
  %33 = load %struct.node*, %struct.node** %4, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 2
  store %struct.node* %32, %struct.node** %34, align 8
  %35 = load %struct.node*, %struct.node** %7, align 8
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 2
  store %struct.node* %35, %struct.node** %37, align 8
  %38 = load %struct.node*, %struct.node** %7, align 8
  ret %struct.node* %38
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z14start_new_treeiP6record(i32 noundef %0, %struct.record* noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.record* %1, %struct.record** %4, align 8
  %6 = call noundef %struct.node* @_Z9make_leafv()
  store %struct.node* %6, %struct.node** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.node*, %struct.node** %5, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.record*, %struct.record** %4, align 8
  %13 = bitcast %struct.record* %12 to i8*
  %14 = load %struct.node*, %struct.node** %5, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = load %struct.node*, %struct.node** %5, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* @order, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  store i8* null, i8** %24, align 8
  %25 = load %struct.node*, %struct.node** %5, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 2
  store %struct.node* null, %struct.node** %26, align 8
  %27 = load %struct.node*, %struct.node** %5, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %31
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z6insertP4nodeii(%struct.node* noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.record*, align 8
  %9 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.node*, %struct.node** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call noundef %struct.record* @_Z4findP4nodeib(%struct.node* noundef %10, i32 noundef %11, i1 noundef zeroext false)
  %13 = icmp ne %struct.record* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %15, %struct.node** %4, align 8
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call noundef %struct.record* @_Z11make_recordi(i32 noundef %17)
  store %struct.record* %18, %struct.record** %8, align 8
  %19 = load %struct.node*, %struct.node** %5, align 8
  %20 = icmp eq %struct.node* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.record*, %struct.record** %8, align 8
  %24 = call noundef %struct.node* @_Z14start_new_treeiP6record(i32 noundef %22, %struct.record* noundef %23)
  store %struct.node* %24, %struct.node** %4, align 8
  br label %47

25:                                               ; preds = %16
  %26 = load %struct.node*, %struct.node** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call noundef %struct.node* @_Z9find_leafP4nodeib(%struct.node* noundef %26, i32 noundef %27, i1 noundef zeroext false)
  store %struct.node* %28, %struct.node** %9, align 8
  %29 = load %struct.node*, %struct.node** %9, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @order, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.node*, %struct.node** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.record*, %struct.record** %8, align 8
  %39 = call noundef %struct.node* @_Z16insert_into_leafP4nodeiP6record(%struct.node* noundef %36, i32 noundef %37, %struct.record* noundef %38)
  store %struct.node* %39, %struct.node** %9, align 8
  %40 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %40, %struct.node** %4, align 8
  br label %47

41:                                               ; preds = %25
  %42 = load %struct.node*, %struct.node** %5, align 8
  %43 = load %struct.node*, %struct.node** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.record*, %struct.record** %8, align 8
  %46 = call noundef %struct.node* @_Z32insert_into_leaf_after_splittingP4nodeS0_iP6record(%struct.node* noundef %42, %struct.node* noundef %43, i32 noundef %44, %struct.record* noundef %45)
  store %struct.node* %46, %struct.node** %4, align 8
  br label %47

47:                                               ; preds = %41, %35, %21, %14
  %48 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %48
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z18get_neighbor_indexP4node(%struct.node* noundef %0) #1 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  %8 = load %struct.node*, %struct.node** %7, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %5, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = bitcast %struct.node* %22 to i8*
  %24 = icmp eq i8* %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  ret i32 %27

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4, !llvm.loop !51

32:                                               ; preds = %4
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.54, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.node* @_Z22remove_entry_from_nodeP4nodeiS0_(%struct.node* noundef %0, i32 noundef %1, %struct.node* noundef %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node* %2, %struct.node** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %19, %3
  %10 = load %struct.node*, %struct.node** %4, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %9, !llvm.loop !52

22:                                               ; preds = %9
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %46, %22
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.node*, %struct.node** %4, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.node*, %struct.node** %4, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.node*, %struct.node** %4, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %25, !llvm.loop !53

49:                                               ; preds = %25
  %50 = load %struct.node*, %struct.node** %4, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 3
  %52 = load i8, i8* %51, align 8
  %53 = trunc i8 %52 to i1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.node*, %struct.node** %4, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.node*, %struct.node** %4, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i32 [ %57, %54 ], [ %62, %58 ]
  store i32 %64, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %76, %63
  %66 = load %struct.node*, %struct.node** %4, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.node*, %struct.node** %6, align 8
  %74 = bitcast %struct.node* %73 to i8*
  %75 = icmp ne i8* %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %65, !llvm.loop !54

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %101, %79
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load %struct.node*, %struct.node** %4, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.node*, %struct.node** %4, align 8
  %95 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  store i8* %93, i8** %100, align 8
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %82, !llvm.loop !55

104:                                              ; preds = %82
  %105 = load %struct.node*, %struct.node** %4, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.node*, %struct.node** %4, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 3
  %111 = load i8, i8* %110, align 8
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %133

113:                                              ; preds = %104
  %114 = load %struct.node*, %struct.node** %4, align 8
  %115 = getelementptr inbounds %struct.node, %struct.node* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %129, %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @order, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.node*, %struct.node** %4, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* null, i8** %128, align 8
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %117, !llvm.loop !56

132:                                              ; preds = %117
  br label %153

133:                                              ; preds = %104
  %134 = load %struct.node*, %struct.node** %4, align 8
  %135 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %149, %133
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @order, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load %struct.node*, %struct.node** %4, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* null, i8** %148, align 8
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %138, !llvm.loop !57

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %132
  %154 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %154
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.node* @_Z11adjust_rootP4node(%struct.node* noundef %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %5 = load %struct.node*, %struct.node** %3, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %10, %struct.node** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.node*, %struct.node** %3, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 3
  %14 = load i8, i8* %13, align 8
  %15 = trunc i8 %14 to i1
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load %struct.node*, %struct.node** %3, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.node*
  store %struct.node* %22, %struct.node** %4, align 8
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  store %struct.node* null, %struct.node** %24, align 8
  br label %26

25:                                               ; preds = %11
  store %struct.node* null, %struct.node** %4, align 8
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.node*, %struct.node** %3, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* noundef %30) #15
  %31 = load %struct.node*, %struct.node** %3, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = bitcast i8** %33 to i8*
  call void @free(i8* noundef %34) #15
  %35 = load %struct.node*, %struct.node** %3, align 8
  %36 = bitcast %struct.node* %35 to i8*
  call void @free(i8* noundef %36) #15
  %37 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %37, %struct.node** %2, align 8
  br label %38

38:                                               ; preds = %26, %9
  %39 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %39
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z14coalesce_nodesP4nodeS0_S0_ii(%struct.node* noundef %0, %struct.node* noundef %1, %struct.node* noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.node*, align 8
  %18 = alloca i8, align 1
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store %struct.node* %2, %struct.node** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %22, %struct.node** %17, align 8
  %23 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %23, %struct.node** %7, align 8
  %24 = load %struct.node*, %struct.node** %17, align 8
  store %struct.node* %24, %struct.node** %8, align 8
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.node*, %struct.node** %8, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  store i8 0, i8* %18, align 1
  %29 = load %struct.node*, %struct.node** %7, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 8
  %32 = trunc i8 %31 to i1
  br i1 %32, label %216, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.node*, %struct.node** %8, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.node*, %struct.node** %8, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.node*, %struct.node** %7, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %48 = load %struct.node*, %struct.node** %7, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.node*, %struct.node** %8, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load i32, i32* @order, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %33
  store i8 1, i8* %18, align 1
  %58 = load i32, i32* @order, align 4
  %59 = call noundef i32 @_Z3cuti(i32 noundef %58)
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %57, %33
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %105, %61
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %64
  %69 = load %struct.node*, %struct.node** %7, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.node*, %struct.node** %8, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.node*, %struct.node** %7, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.node*, %struct.node** %8, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %88, i8** %94, align 8
  %95 = load %struct.node*, %struct.node** %8, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.node*, %struct.node** %7, align 8
  %100 = getelementptr inbounds %struct.node, %struct.node* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %68
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %64, !llvm.loop !58

110:                                              ; preds = %64
  %111 = load %struct.node*, %struct.node** %7, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.node*, %struct.node** %8, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %117, i8** %123, align 8
  %124 = load i8, i8* %18, align 1
  %125 = trunc i8 %124 to i1
  br i1 %125, label %126, label %192

126:                                              ; preds = %110
  %127 = load %struct.node*, %struct.node** %7, align 8
  %128 = getelementptr inbounds %struct.node, %struct.node* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %169, %126
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.node*, %struct.node** %7, align 8
  %139 = getelementptr inbounds %struct.node, %struct.node* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %174

142:                                              ; preds = %136
  %143 = load %struct.node*, %struct.node** %7, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.node*, %struct.node** %7, align 8
  %151 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load %struct.node*, %struct.node** %7, align 8
  %157 = getelementptr inbounds %struct.node, %struct.node* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.node*, %struct.node** %7, align 8
  %164 = getelementptr inbounds %struct.node, %struct.node* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* %162, i8** %168, align 8
  br label %169

169:                                              ; preds = %142
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %136, !llvm.loop !59

174:                                              ; preds = %136
  %175 = load %struct.node*, %struct.node** %7, align 8
  %176 = getelementptr inbounds %struct.node, %struct.node* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.node*, %struct.node** %7, align 8
  %183 = getelementptr inbounds %struct.node, %struct.node* %182, i32 0, i32 0
  %184 = load i8**, i8*** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  store i8* %181, i8** %187, align 8
  %188 = load %struct.node*, %struct.node** %7, align 8
  %189 = getelementptr inbounds %struct.node, %struct.node* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %174, %110
  store i32 0, i32* %11, align 4
  br label %193

193:                                              ; preds = %212, %192
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.node*, %struct.node** %8, align 8
  %196 = getelementptr inbounds %struct.node, %struct.node* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  %199 = icmp slt i32 %194, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %193
  %201 = load %struct.node*, %struct.node** %8, align 8
  %202 = getelementptr inbounds %struct.node, %struct.node* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = bitcast i8* %207 to %struct.node*
  store %struct.node* %208, %struct.node** %17, align 8
  %209 = load %struct.node*, %struct.node** %8, align 8
  %210 = load %struct.node*, %struct.node** %17, align 8
  %211 = getelementptr inbounds %struct.node, %struct.node* %210, i32 0, i32 2
  store %struct.node* %209, %struct.node** %211, align 8
  br label %212

212:                                              ; preds = %200
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %193, !llvm.loop !60

215:                                              ; preds = %193
  br label %276

216:                                              ; preds = %25
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %255, %216
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.node*, %struct.node** %7, align 8
  %221 = getelementptr inbounds %struct.node, %struct.node* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %260

224:                                              ; preds = %218
  %225 = load %struct.node*, %struct.node** %7, align 8
  %226 = getelementptr inbounds %struct.node, %struct.node* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.node*, %struct.node** %8, align 8
  %233 = getelementptr inbounds %struct.node, %struct.node* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %231, i32* %237, align 4
  %238 = load %struct.node*, %struct.node** %7, align 8
  %239 = getelementptr inbounds %struct.node, %struct.node* %238, i32 0, i32 0
  %240 = load i8**, i8*** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.node*, %struct.node** %8, align 8
  %246 = getelementptr inbounds %struct.node, %struct.node* %245, i32 0, i32 0
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  store i8* %244, i8** %250, align 8
  %251 = load %struct.node*, %struct.node** %8, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %224
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %12, align 4
  br label %218, !llvm.loop !61

260:                                              ; preds = %218
  %261 = load %struct.node*, %struct.node** %7, align 8
  %262 = getelementptr inbounds %struct.node, %struct.node* %261, i32 0, i32 0
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* @order, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %263, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.node*, %struct.node** %8, align 8
  %270 = getelementptr inbounds %struct.node, %struct.node* %269, i32 0, i32 0
  %271 = load i8**, i8*** %270, align 8
  %272 = load i32, i32* @order, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %271, i64 %274
  store i8* %268, i8** %275, align 8
  br label %276

276:                                              ; preds = %260, %215
  %277 = load i8, i8* %18, align 1
  %278 = trunc i8 %277 to i1
  br i1 %278, label %298, label %279

279:                                              ; preds = %276
  %280 = load %struct.node*, %struct.node** %6, align 8
  %281 = load %struct.node*, %struct.node** %7, align 8
  %282 = getelementptr inbounds %struct.node, %struct.node* %281, i32 0, i32 2
  %283 = load %struct.node*, %struct.node** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load %struct.node*, %struct.node** %7, align 8
  %286 = bitcast %struct.node* %285 to i8*
  %287 = call noundef %struct.node* @_Z12delete_entryP4nodeS0_iPv(%struct.node* noundef %280, %struct.node* noundef %283, i32 noundef %284, i8* noundef %286)
  store %struct.node* %287, %struct.node** %6, align 8
  %288 = load %struct.node*, %struct.node** %7, align 8
  %289 = getelementptr inbounds %struct.node, %struct.node* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = bitcast i32* %290 to i8*
  call void @free(i8* noundef %291) #15
  %292 = load %struct.node*, %struct.node** %7, align 8
  %293 = getelementptr inbounds %struct.node, %struct.node* %292, i32 0, i32 0
  %294 = load i8**, i8*** %293, align 8
  %295 = bitcast i8** %294 to i8*
  call void @free(i8* noundef %295) #15
  %296 = load %struct.node*, %struct.node** %7, align 8
  %297 = bitcast %struct.node* %296 to i8*
  call void @free(i8* noundef %297) #15
  br label %336

298:                                              ; preds = %276
  store i32 0, i32* %11, align 4
  br label %299

299:                                              ; preds = %332, %298
  %300 = load i32, i32* %11, align 4
  %301 = load %struct.node*, %struct.node** %7, align 8
  %302 = getelementptr inbounds %struct.node, %struct.node* %301, i32 0, i32 2
  %303 = load %struct.node*, %struct.node** %302, align 8
  %304 = getelementptr inbounds %struct.node, %struct.node* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = icmp slt i32 %300, %305
  br i1 %306, label %307, label %335

307:                                              ; preds = %299
  %308 = load %struct.node*, %struct.node** %7, align 8
  %309 = getelementptr inbounds %struct.node, %struct.node* %308, i32 0, i32 2
  %310 = load %struct.node*, %struct.node** %309, align 8
  %311 = getelementptr inbounds %struct.node, %struct.node* %310, i32 0, i32 0
  %312 = load i8**, i8*** %311, align 8
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %312, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = load %struct.node*, %struct.node** %7, align 8
  %319 = bitcast %struct.node* %318 to i8*
  %320 = icmp eq i8* %317, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %307
  %322 = load i32, i32* %16, align 4
  %323 = load %struct.node*, %struct.node** %7, align 8
  %324 = getelementptr inbounds %struct.node, %struct.node* %323, i32 0, i32 2
  %325 = load %struct.node*, %struct.node** %324, align 8
  %326 = getelementptr inbounds %struct.node, %struct.node* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %322, i32* %330, align 4
  br label %335

331:                                              ; preds = %307
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %11, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %11, align 4
  br label %299, !llvm.loop !62

335:                                              ; preds = %321, %299
  br label %336

336:                                              ; preds = %335, %279
  %337 = load %struct.node*, %struct.node** %6, align 8
  ret %struct.node* %337
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z12delete_entryP4nodeS0_iPv(%struct.node* noundef %0, %struct.node* noundef %1, i32 noundef %2, i8* noundef %3) #1 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load %struct.node*, %struct.node** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.node*
  %20 = call noundef %struct.node* @_Z22remove_entry_from_nodeP4nodeiS0_(%struct.node* noundef %16, i32 noundef %17, %struct.node* noundef %19)
  store %struct.node* %20, %struct.node** %7, align 8
  %21 = load %struct.node*, %struct.node** %7, align 8
  %22 = load %struct.node*, %struct.node** %6, align 8
  %23 = icmp eq %struct.node* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.node*, %struct.node** %6, align 8
  %26 = call noundef %struct.node* @_Z11adjust_rootP4node(%struct.node* noundef %25)
  store %struct.node* %26, %struct.node** %5, align 8
  br label %127

27:                                               ; preds = %4
  %28 = load %struct.node*, %struct.node** %7, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 8
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @order, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call noundef i32 @_Z3cuti(i32 noundef %34)
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @order, align 4
  %38 = call noundef i32 @_Z3cuti(i32 noundef %37)
  %39 = sub nsw i32 %38, 1
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  store i32 %41, i32* %10, align 4
  %42 = load %struct.node*, %struct.node** %7, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %48, %struct.node** %5, align 8
  br label %127

49:                                               ; preds = %40
  %50 = load %struct.node*, %struct.node** %7, align 8
  %51 = call noundef i32 @_Z18get_neighbor_indexP4node(%struct.node* noundef %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %13, align 4
  %59 = load %struct.node*, %struct.node** %7, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 2
  %61 = load %struct.node*, %struct.node** %60, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.node*, %struct.node** %7, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 2
  %73 = load %struct.node*, %struct.node** %72, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to %struct.node*
  br label %90

79:                                               ; preds = %57
  %80 = load %struct.node*, %struct.node** %7, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 2
  %82 = load %struct.node*, %struct.node** %81, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = bitcast i8* %88 to %struct.node*
  br label %90

90:                                               ; preds = %79, %70
  %91 = phi %struct.node* [ %78, %70 ], [ %89, %79 ]
  store %struct.node* %91, %struct.node** %11, align 8
  %92 = load %struct.node*, %struct.node** %7, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 3
  %94 = load i8, i8* %93, align 8
  %95 = trunc i8 %94 to i1
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @order, align 4
  br label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @order, align 4
  %100 = sub nsw i32 %99, 1
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %97, %96 ], [ %100, %98 ]
  store i32 %102, i32* %15, align 4
  %103 = load %struct.node*, %struct.node** %11, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.node*, %struct.node** %7, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load %struct.node*, %struct.node** %6, align 8
  %114 = load %struct.node*, %struct.node** %7, align 8
  %115 = load %struct.node*, %struct.node** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call noundef %struct.node* @_Z14coalesce_nodesP4nodeS0_S0_ii(%struct.node* noundef %113, %struct.node* noundef %114, %struct.node* noundef %115, i32 noundef %116, i32 noundef %117)
  store %struct.node* %118, %struct.node** %5, align 8
  br label %127

119:                                              ; preds = %101
  %120 = load %struct.node*, %struct.node** %6, align 8
  %121 = load %struct.node*, %struct.node** %7, align 8
  %122 = load %struct.node*, %struct.node** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call noundef %struct.node* @_Z18redistribute_nodesP4nodeS0_S0_iii(%struct.node* noundef %120, %struct.node* noundef %121, %struct.node* noundef %122, i32 noundef %123, i32 noundef %124, i32 noundef %125)
  store %struct.node* %126, %struct.node** %5, align 8
  br label %127

127:                                              ; preds = %119, %112, %47, %24
  %128 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %128
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef %struct.node* @_Z18redistribute_nodesP4nodeS0_S0_iii(%struct.node* noundef %0, %struct.node* noundef %1, %struct.node* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %7, align 8
  store %struct.node* %1, %struct.node** %8, align 8
  store %struct.node* %2, %struct.node** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %191

17:                                               ; preds = %6
  %18 = load %struct.node*, %struct.node** %8, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %20 = load i8, i8* %19, align 8
  %21 = trunc i8 %20 to i1
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = load %struct.node*, %struct.node** %8, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load %struct.node*, %struct.node** %8, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %25, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.node*, %struct.node** %8, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load %struct.node*, %struct.node** %8, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  store i8* %31, i8** %40, align 8
  br label %41

41:                                               ; preds = %22, %17
  %42 = load %struct.node*, %struct.node** %8, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %77, %41
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load %struct.node*, %struct.node** %8, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.node*, %struct.node** %8, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.node*, %struct.node** %8, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.node*, %struct.node** %8, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %70, i8** %76, align 8
  br label %77

77:                                               ; preds = %48
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  br label %45, !llvm.loop !63

80:                                               ; preds = %45
  %81 = load %struct.node*, %struct.node** %8, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 3
  %83 = load i8, i8* %82, align 8
  %84 = trunc i8 %83 to i1
  br i1 %84, label %139, label %85

85:                                               ; preds = %80
  %86 = load %struct.node*, %struct.node** %9, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load %struct.node*, %struct.node** %9, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %88, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.node*, %struct.node** %8, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  store i8* %94, i8** %98, align 8
  %99 = load %struct.node*, %struct.node** %8, align 8
  %100 = getelementptr inbounds %struct.node, %struct.node* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to %struct.node*
  store %struct.node* %104, %struct.node** %14, align 8
  %105 = load %struct.node*, %struct.node** %8, align 8
  %106 = load %struct.node*, %struct.node** %14, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 2
  store %struct.node* %105, %struct.node** %107, align 8
  %108 = load %struct.node*, %struct.node** %9, align 8
  %109 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load %struct.node*, %struct.node** %9, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %110, i64 %114
  store i8* null, i8** %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.node*, %struct.node** %8, align 8
  %118 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  %121 = load %struct.node*, %struct.node** %9, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.node*, %struct.node** %9, align 8
  %125 = getelementptr inbounds %struct.node, %struct.node* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.node*, %struct.node** %8, align 8
  %132 = getelementptr inbounds %struct.node, %struct.node* %131, i32 0, i32 2
  %133 = load %struct.node*, %struct.node** %132, align 8
  %134 = getelementptr inbounds %struct.node, %struct.node* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %130, i32* %138, align 4
  br label %190

139:                                              ; preds = %80
  %140 = load %struct.node*, %struct.node** %9, align 8
  %141 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load %struct.node*, %struct.node** %9, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %142, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.node*, %struct.node** %8, align 8
  %151 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 0
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  store i8* %149, i8** %153, align 8
  %154 = load %struct.node*, %struct.node** %9, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 0
  %156 = load i8**, i8*** %155, align 8
  %157 = load %struct.node*, %struct.node** %9, align 8
  %158 = getelementptr inbounds %struct.node, %struct.node* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %156, i64 %161
  store i8* null, i8** %162, align 8
  %163 = load %struct.node*, %struct.node** %9, align 8
  %164 = getelementptr inbounds %struct.node, %struct.node* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.node*, %struct.node** %9, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.node*, %struct.node** %8, align 8
  %174 = getelementptr inbounds %struct.node, %struct.node* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %172, i32* %176, align 4
  %177 = load %struct.node*, %struct.node** %8, align 8
  %178 = getelementptr inbounds %struct.node, %struct.node* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.node*, %struct.node** %8, align 8
  %183 = getelementptr inbounds %struct.node, %struct.node* %182, i32 0, i32 2
  %184 = load %struct.node*, %struct.node** %183, align 8
  %185 = getelementptr inbounds %struct.node, %struct.node* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %181, i32* %189, align 4
  br label %190

190:                                              ; preds = %139, %85
  br label %347

191:                                              ; preds = %6
  %192 = load %struct.node*, %struct.node** %8, align 8
  %193 = getelementptr inbounds %struct.node, %struct.node* %192, i32 0, i32 3
  %194 = load i8, i8* %193, align 8
  %195 = trunc i8 %194 to i1
  br i1 %195, label %196, label %236

196:                                              ; preds = %191
  %197 = load %struct.node*, %struct.node** %9, align 8
  %198 = getelementptr inbounds %struct.node, %struct.node* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.node*, %struct.node** %8, align 8
  %203 = getelementptr inbounds %struct.node, %struct.node* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.node*, %struct.node** %8, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  store i32 %201, i32* %209, align 4
  %210 = load %struct.node*, %struct.node** %9, align 8
  %211 = getelementptr inbounds %struct.node, %struct.node* %210, i32 0, i32 0
  %212 = load i8**, i8*** %211, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.node*, %struct.node** %8, align 8
  %216 = getelementptr inbounds %struct.node, %struct.node* %215, i32 0, i32 0
  %217 = load i8**, i8*** %216, align 8
  %218 = load %struct.node*, %struct.node** %8, align 8
  %219 = getelementptr inbounds %struct.node, %struct.node* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %217, i64 %221
  store i8* %214, i8** %222, align 8
  %223 = load %struct.node*, %struct.node** %9, align 8
  %224 = getelementptr inbounds %struct.node, %struct.node* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.node*, %struct.node** %8, align 8
  %229 = getelementptr inbounds %struct.node, %struct.node* %228, i32 0, i32 2
  %230 = load %struct.node*, %struct.node** %229, align 8
  %231 = getelementptr inbounds %struct.node, %struct.node* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %227, i32* %235, align 4
  br label %287

236:                                              ; preds = %191
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.node*, %struct.node** %8, align 8
  %239 = getelementptr inbounds %struct.node, %struct.node* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.node*, %struct.node** %8, align 8
  %242 = getelementptr inbounds %struct.node, %struct.node* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %240, i64 %244
  store i32 %237, i32* %245, align 4
  %246 = load %struct.node*, %struct.node** %9, align 8
  %247 = getelementptr inbounds %struct.node, %struct.node* %246, i32 0, i32 0
  %248 = load i8**, i8*** %247, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.node*, %struct.node** %8, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 0
  %253 = load i8**, i8*** %252, align 8
  %254 = load %struct.node*, %struct.node** %8, align 8
  %255 = getelementptr inbounds %struct.node, %struct.node* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %253, i64 %258
  store i8* %250, i8** %259, align 8
  %260 = load %struct.node*, %struct.node** %8, align 8
  %261 = getelementptr inbounds %struct.node, %struct.node* %260, i32 0, i32 0
  %262 = load i8**, i8*** %261, align 8
  %263 = load %struct.node*, %struct.node** %8, align 8
  %264 = getelementptr inbounds %struct.node, %struct.node* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %262, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = bitcast i8* %269 to %struct.node*
  store %struct.node* %270, %struct.node** %14, align 8
  %271 = load %struct.node*, %struct.node** %8, align 8
  %272 = load %struct.node*, %struct.node** %14, align 8
  %273 = getelementptr inbounds %struct.node, %struct.node* %272, i32 0, i32 2
  store %struct.node* %271, %struct.node** %273, align 8
  %274 = load %struct.node*, %struct.node** %9, align 8
  %275 = getelementptr inbounds %struct.node, %struct.node* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.node*, %struct.node** %8, align 8
  %280 = getelementptr inbounds %struct.node, %struct.node* %279, i32 0, i32 2
  %281 = load %struct.node*, %struct.node** %280, align 8
  %282 = getelementptr inbounds %struct.node, %struct.node* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 %278, i32* %286, align 4
  br label %287

287:                                              ; preds = %236, %196
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %323, %287
  %289 = load i32, i32* %13, align 4
  %290 = load %struct.node*, %struct.node** %9, align 8
  %291 = getelementptr inbounds %struct.node, %struct.node* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %326

294:                                              ; preds = %288
  %295 = load %struct.node*, %struct.node** %9, align 8
  %296 = getelementptr inbounds %struct.node, %struct.node* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.node*, %struct.node** %9, align 8
  %304 = getelementptr inbounds %struct.node, %struct.node* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %302, i32* %308, align 4
  %309 = load %struct.node*, %struct.node** %9, align 8
  %310 = getelementptr inbounds %struct.node, %struct.node* %309, i32 0, i32 0
  %311 = load i8**, i8*** %310, align 8
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %311, i64 %314
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.node*, %struct.node** %9, align 8
  %318 = getelementptr inbounds %struct.node, %struct.node* %317, i32 0, i32 0
  %319 = load i8**, i8*** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %319, i64 %321
  store i8* %316, i8** %322, align 8
  br label %323

323:                                              ; preds = %294
  %324 = load i32, i32* %13, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %13, align 4
  br label %288, !llvm.loop !64

326:                                              ; preds = %288
  %327 = load %struct.node*, %struct.node** %8, align 8
  %328 = getelementptr inbounds %struct.node, %struct.node* %327, i32 0, i32 3
  %329 = load i8, i8* %328, align 8
  %330 = trunc i8 %329 to i1
  br i1 %330, label %346, label %331

331:                                              ; preds = %326
  %332 = load %struct.node*, %struct.node** %9, align 8
  %333 = getelementptr inbounds %struct.node, %struct.node* %332, i32 0, i32 0
  %334 = load i8**, i8*** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8*, i8** %334, i64 %337
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.node*, %struct.node** %9, align 8
  %341 = getelementptr inbounds %struct.node, %struct.node* %340, i32 0, i32 0
  %342 = load i8**, i8*** %341, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  store i8* %339, i8** %345, align 8
  br label %346

346:                                              ; preds = %331, %326
  br label %347

347:                                              ; preds = %346, %190
  %348 = load %struct.node*, %struct.node** %8, align 8
  %349 = getelementptr inbounds %struct.node, %struct.node* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 4
  %352 = load %struct.node*, %struct.node** %9, align 8
  %353 = getelementptr inbounds %struct.node, %struct.node* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %353, align 4
  %356 = load %struct.node*, %struct.node** %7, align 8
  ret %struct.node* %356
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z9deleteValP4nodei(%struct.node* noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.record*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call noundef %struct.record* @_Z4findP4nodeib(%struct.node* noundef %7, i32 noundef %8, i1 noundef zeroext false)
  store %struct.record* %9, %struct.record** %6, align 8
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call noundef %struct.node* @_Z9find_leafP4nodeib(%struct.node* noundef %10, i32 noundef %11, i1 noundef zeroext false)
  store %struct.node* %12, %struct.node** %5, align 8
  %13 = load %struct.record*, %struct.record** %6, align 8
  %14 = icmp ne %struct.record* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.node*, %struct.node** %5, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.record*, %struct.record** %6, align 8
  %20 = bitcast %struct.record* %19 to i8*
  call void @free(i8* noundef %20) #15
  %21 = load %struct.node*, %struct.node** %3, align 8
  %22 = load %struct.node*, %struct.node** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.record*, %struct.record** %6, align 8
  %25 = bitcast %struct.record* %24 to i8*
  %26 = call noundef %struct.node* @_Z12delete_entryP4nodeS0_iPv(%struct.node* noundef %21, %struct.node* noundef %22, i32 noundef %23, i8* noundef %25)
  store %struct.node* %26, %struct.node** %3, align 8
  br label %27

27:                                               ; preds = %18, %15, %2
  %28 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %28
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z18destroy_tree_nodesP4node(%struct.node* noundef %0) #1 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 3
  %6 = load i8, i8* %5, align 8
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.node*, %struct.node** %2, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* noundef %22) #15
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9, !llvm.loop !65

26:                                               ; preds = %9
  br label %48

27:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.node*, %struct.node** %2, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to %struct.node*
  call void @_Z18destroy_tree_nodesP4node(%struct.node* noundef %43)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %28, !llvm.loop !66

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.node*, %struct.node** %2, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = bitcast i8** %51 to i8*
  call void @free(i8* noundef %52) #15
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* noundef %56) #15
  %57 = load %struct.node*, %struct.node** %2, align 8
  %58 = bitcast %struct.node* %57 to i8*
  call void @free(i8* noundef %58) #15
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.node* @_Z12destroy_treeP4node(%struct.node* noundef %0) #1 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  call void @_Z18destroy_tree_nodesP4node(%struct.node* noundef %3)
  ret %struct.node* null
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca float, align 4
  %15 = alloca %class.SimplePerfSerializer*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %class.RDTimerCPU*, align 8
  %19 = alloca %"class.std::basic_string", align 8
  %20 = alloca %"class.std::allocator", align 1
  %21 = alloca i1, align 1
  %22 = alloca %"class.std::basic_string", align 8
  %23 = alloca %"class.std::allocator", align 1
  %24 = alloca %struct._IO_FILE*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct._IO_FILE*, align 8
  %32 = alloca %struct.node*, align 8
  %33 = alloca %struct.record*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i8, align 1
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct.record*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca %struct.knode*, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i64*, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i8*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i32, align 4
  %56 = alloca %struct.record*, align 8
  %57 = alloca i8*, align 8
  %58 = alloca i8*, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.list_t*, align 8
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca %struct.knode*, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64*, align 8
  %68 = alloca i8*, align 8
  %69 = alloca i8*, align 8
  %70 = alloca i64*, align 8
  %71 = alloca i8*, align 8
  %72 = alloca i8*, align 8
  %73 = alloca i64*, align 8
  %74 = alloca i8*, align 8
  %75 = alloca i8*, align 8
  %76 = alloca i64*, align 8
  %77 = alloca i8*, align 8
  %78 = alloca i8*, align 8
  %79 = alloca i32*, align 8
  %80 = alloca i8*, align 8
  %81 = alloca i8*, align 8
  %82 = alloca i32*, align 8
  %83 = alloca i8*, align 8
  %84 = alloca i8*, align 8
  %85 = alloca i32, align 4
  %86 = alloca i32*, align 8
  %87 = alloca i8*, align 8
  %88 = alloca i8*, align 8
  %89 = alloca i32*, align 8
  %90 = alloca i8*, align 8
  %91 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i64 0, i64 0), i32 noundef 256)
  store i32 0, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @hipSetDevice(i32 noundef %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i32 noundef %95)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i8** %12, align 8
  %97 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #18
  %98 = bitcast i8* %97 to %class.SimplePerfSerializer*
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %98, i8* noundef %101)
          to label %102 unwind label %142

102:                                              ; preds = %2
  store %class.SimplePerfSerializer* %98, %class.SimplePerfSerializer** %15, align 8
  %103 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #18
  store i1 true, i1* %21, align 1
  %104 = bitcast i8* %103 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20) #15
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %19, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.58, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20)
          to label %105 unwind label %146

105:                                              ; preds = %102
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %104, %"class.std::basic_string"* noundef %19)
          to label %106 unwind label %150

106:                                              ; preds = %105
  store i1 false, i1* %21, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %19) #15
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20) #15
  store %class.RDTimerCPU* %104, %class.RDTimerCPU** %18, align 8
  %107 = load %class.RDTimerCPU*, %class.RDTimerCPU** %18, align 8
  %108 = bitcast %class.RDTimerCPU* %107 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %23) #15
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %22, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %23)
          to label %109 unwind label %158

109:                                              ; preds = %106
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %108, %"class.std::basic_string"* noundef %22)
          to label %110 unwind label %162

110:                                              ; preds = %109
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %22) #15
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %23) #15
  %111 = load %class.RDTimerCPU*, %class.RDTimerCPU** %18, align 8
  %112 = bitcast %class.RDTimerCPU* %111 to void (%class.RDTimerCPU*)***
  %113 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %112, align 8
  %114 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %113, i64 2
  %115 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %114, align 8
  call void %115(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %111)
  store i32 1, i32* %7, align 4
  br label %116

116:                                              ; preds = %197, %110
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %200

120:                                              ; preds = %116
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* noundef %125, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #19
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %170

128:                                              ; preds = %120
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  %132 = icmp sge i32 %129, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %128
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %10, align 8
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %169

142:                                              ; preds = %2
  %143 = landingpad { i8*, i32 }
          cleanup
  %144 = extractvalue { i8*, i32 } %143, 0
  store i8* %144, i8** %16, align 8
  %145 = extractvalue { i8*, i32 } %143, 1
  store i32 %145, i32* %17, align 4
  call void @_ZdlPv(i8* noundef %97) #20
  br label %1013

146:                                              ; preds = %102
  %147 = landingpad { i8*, i32 }
          cleanup
  %148 = extractvalue { i8*, i32 } %147, 0
  store i8* %148, i8** %16, align 8
  %149 = extractvalue { i8*, i32 } %147, 1
  store i32 %149, i32* %17, align 4
  br label %154

150:                                              ; preds = %105
  %151 = landingpad { i8*, i32 }
          cleanup
  %152 = extractvalue { i8*, i32 } %151, 0
  store i8* %152, i8** %16, align 8
  %153 = extractvalue { i8*, i32 } %151, 1
  store i32 %153, i32* %17, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %19) #15
  br label %154

154:                                              ; preds = %150, %146
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20) #15
  %155 = load i1, i1* %21, align 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %154
  call void @_ZdlPv(i8* noundef %103) #20
  br label %157

157:                                              ; preds = %156, %154
  br label %1013

158:                                              ; preds = %106
  %159 = landingpad { i8*, i32 }
          cleanup
  %160 = extractvalue { i8*, i32 } %159, 0
  store i8* %160, i8** %16, align 8
  %161 = extractvalue { i8*, i32 } %159, 1
  store i32 %161, i32* %17, align 4
  br label %166

162:                                              ; preds = %109
  %163 = landingpad { i8*, i32 }
          cleanup
  %164 = extractvalue { i8*, i32 } %163, 0
  store i8* %164, i8** %16, align 8
  %165 = extractvalue { i8*, i32 } %163, 1
  store i32 %165, i32* %17, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %22) #15
  br label %166

166:                                              ; preds = %162, %158
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %23) #15
  br label %1013

167:                                              ; preds = %128
  %168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %1011

169:                                              ; preds = %133
  br label %196

170:                                              ; preds = %120
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strcmp(i8* noundef %175, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0)) #19
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %170
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  %182 = icmp sge i32 %179, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load i8**, i8*** %5, align 8
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %184, i64 %187
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %11, align 8
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %194

192:                                              ; preds = %178
  %193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.63, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %1011

194:                                              ; preds = %183
  br label %195

195:                                              ; preds = %194, %170
  br label %196

196:                                              ; preds = %195, %169
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %7, align 4
  br label %116, !llvm.loop !67

200:                                              ; preds = %116
  %201 = load i8*, i8** %10, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i8*, i8** %11, align 8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %203, %200
  %207 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.64, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %203
  %209 = load i8*, i8** %10, align 8
  %210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* noundef %209)
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i8* noundef %211)
  %213 = load i8*, i8** %11, align 8
  %214 = call %struct._IO_FILE* @fopen(i8* noundef %213, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0))
  store %struct._IO_FILE* %214, %struct._IO_FILE** %24, align 8
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %216 = icmp eq %struct._IO_FILE* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %208
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %219 = call i32 @fputs(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i64 0, i64 0), %struct._IO_FILE* noundef %218)
  call void @exit(i32 noundef 1) #17
  unreachable

220:                                              ; preds = %208
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %222 = call i32 @fseek(%struct._IO_FILE* noundef %221, i64 noundef 0, i32 noundef 2)
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %224 = call i64 @ftell(%struct._IO_FILE* noundef %223)
  store i64 %224, i64* %25, align 8
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  call void @rewind(%struct._IO_FILE* noundef %225)
  %226 = load i64, i64* %25, align 8
  %227 = mul i64 1, %226
  %228 = call noalias i8* @malloc(i64 noundef %227) #16
  store i8* %228, i8** %28, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %220
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %231, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1940)
  call void @exit(i32 noundef -1) #17
  unreachable

233:                                              ; preds = %220
  %234 = load i8*, i8** %28, align 8
  store i8* %234, i8** %29, align 8
  %235 = load i8*, i8** %29, align 8
  store i8* %235, i8** %26, align 8
  %236 = load i8*, i8** %26, align 8
  %237 = icmp eq i8* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %240 = call i32 @fputs(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* noundef %239)
  call void @exit(i32 noundef 2) #17
  unreachable

241:                                              ; preds = %233
  %242 = load i8*, i8** %26, align 8
  %243 = load i64, i64* %25, align 8
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %245 = call i64 @fread(i8* noundef %242, i64 noundef 1, i64 noundef %243, %struct._IO_FILE* noundef %244)
  store i64 %245, i64* %27, align 8
  %246 = load i64, i64* %27, align 8
  %247 = load i64, i64* %25, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %251 = call i32 @fputs(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0), %struct._IO_FILE* noundef %250)
  call void @exit(i32 noundef 3) #17
  unreachable

252:                                              ; preds = %241
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %254 = call i32 @fclose(%struct._IO_FILE* noundef %253)
  %255 = load i8*, i8** %26, align 8
  store i8* %255, i8** %30, align 8
  %256 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i64 0, i64 0))
  %257 = load i8*, i8** %26, align 8
  %258 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), i8* noundef %257)
  %259 = load i8*, i8** %12, align 8
  %260 = call %struct._IO_FILE* @fopen(i8* noundef %259, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0))
  store %struct._IO_FILE* %260, %struct._IO_FILE** %13, align 8
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %262 = icmp eq %struct._IO_FILE* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %252
  %264 = load i8*, i8** %12, align 8
  %265 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i8* noundef %264)
  br label %266

266:                                              ; preds = %263, %252
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %267, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i64 0, i64 0))
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %270 = call i32 @fclose(%struct._IO_FILE* noundef %269)
  store %struct.node* null, %struct.node** %32, align 8
  store i32 256, i32* @order, align 4
  store i8 0, i8* @verbose_output, align 1
  %271 = load i8*, i8** %10, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %301

273:                                              ; preds = %266
  %274 = load i8*, i8** %10, align 8
  %275 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i64 0, i64 0), i8* noundef %274)
  %276 = load i8*, i8** %10, align 8
  %277 = call %struct._IO_FILE* @fopen(i8* noundef %276, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i64 0, i64 0))
  store %struct._IO_FILE* %277, %struct._IO_FILE** %31, align 8
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %279 = icmp eq %struct._IO_FILE* %278, null
  br i1 %279, label %280, label %281

280:                                              ; preds = %273
  call void @perror(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i64 0, i64 0))
  call void @exit(i32 noundef 1) #17
  unreachable

281:                                              ; preds = %273
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %283 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %282, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i32* noundef %34)
  %284 = load i32, i32* %34, align 4
  %285 = sext i32 %284 to i64
  store i64 %285, i64* @size, align 8
  br label %286

286:                                              ; preds = %291, %281
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %288 = call i32 @feof(%struct._IO_FILE* noundef %287) #15
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %293 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %292, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i32* noundef %34)
  %294 = load %struct.node*, %struct.node** %32, align 8
  %295 = load i32, i32* %34, align 4
  %296 = load i32, i32* %34, align 4
  %297 = call noundef %struct.node* @_Z6insertP4nodeii(%struct.node* noundef %294, i32 noundef %295, i32 noundef %296)
  store %struct.node* %297, %struct.node** %32, align 8
  br label %286, !llvm.loop !68

298:                                              ; preds = %286
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %300 = call i32 @fclose(%struct._IO_FILE* noundef %299)
  br label %303

301:                                              ; preds = %266
  %302 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %1011

303:                                              ; preds = %298
  %304 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.81, i64 0, i64 0))
  %305 = load %struct.node*, %struct.node** %32, align 8
  %306 = call noundef i64 @_Z17transform_to_cudaP4nodeb(%struct.node* noundef %305, i1 noundef zeroext false)
  store i64 %306, i64* %36, align 8
  %307 = load %struct.node*, %struct.node** %32, align 8
  %308 = call noundef i32 @_Z6heightP4node(%struct.node* noundef %307)
  %309 = sext i32 %308 to i64
  store i64 %309, i64* @maxheight, align 8
  %310 = load %struct.knode*, %struct.knode** @knodes, align 8
  %311 = ptrtoint %struct.knode* %310 to i64
  %312 = load i8*, i8** @mem, align 8
  %313 = ptrtoint i8* %312 to i64
  %314 = sub nsw i64 %311, %313
  store i64 %314, i64* %37, align 8
  %315 = load i8*, i8** %26, align 8
  store i8* %315, i8** %38, align 8
  %316 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i64 0, i64 0))
  %317 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0))
  br label %318

318:                                              ; preds = %974, %303
  %319 = load i8*, i8** %38, align 8
  %320 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %319, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i8* noundef %35) #15
  %321 = icmp ne i32 %320, -1
  br i1 %321, label %322, label %976

322:                                              ; preds = %318
  %323 = load i8*, i8** %38, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %38, align 8
  %325 = load i8, i8* %35, align 1
  %326 = sext i8 %325 to i32
  switch i32 %326, label %973 [
    i32 105, label %327
    i32 102, label %339
    i32 112, label %340
    i32 100, label %364
    i32 120, label %375
    i32 108, label %384
    i32 116, label %391
    i32 118, label %398
    i32 113, label %408
    i32 107, label %414
    i32 114, label %612
    i32 106, label %635
  ]

327:                                              ; preds = %322
  %328 = call i32 (i8*, ...) @scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %34)
  br label %329

329:                                              ; preds = %332, %327
  %330 = call i32 @getchar()
  %331 = icmp ne i32 %330, 10
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  br label %329, !llvm.loop !69

333:                                              ; preds = %329
  %334 = load %struct.node*, %struct.node** %32, align 8
  %335 = load i32, i32* %34, align 4
  %336 = load i32, i32* %34, align 4
  %337 = call noundef %struct.node* @_Z6insertP4nodeii(%struct.node* noundef %334, i32 noundef %335, i32 noundef %336)
  store %struct.node* %337, %struct.node** %32, align 8
  %338 = load %struct.node*, %struct.node** %32, align 8
  call void @_Z10print_treeP4node(%struct.node* noundef %338)
  br label %974

339:                                              ; preds = %322
  br label %340

340:                                              ; preds = %322, %339
  %341 = call i32 (i8*, ...) @scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %34)
  br label %342

342:                                              ; preds = %345, %340
  %343 = call i32 @getchar()
  %344 = icmp ne i32 %343, 10
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  br label %342, !llvm.loop !70

346:                                              ; preds = %342
  %347 = load %struct.node*, %struct.node** %32, align 8
  %348 = load i32, i32* %34, align 4
  %349 = load i8, i8* %35, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp eq i32 %350, 112
  %352 = call noundef %struct.record* @_Z4findP4nodeib(%struct.node* noundef %347, i32 noundef %348, i1 noundef zeroext %351)
  store %struct.record* %352, %struct.record** %33, align 8
  %353 = load %struct.record*, %struct.record** %33, align 8
  %354 = icmp eq %struct.record* %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %346
  %356 = load i32, i32* %34, align 4
  %357 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i64 0, i64 0), i32 noundef %356)
  br label %363

358:                                              ; preds = %346
  %359 = load %struct.record*, %struct.record** %33, align 8
  %360 = getelementptr inbounds %struct.record, %struct.record* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i64 0, i64 0), i32 noundef %361)
  br label %363

363:                                              ; preds = %358, %355
  br label %974

364:                                              ; preds = %322
  %365 = call i32 (i8*, ...) @scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %34)
  br label %366

366:                                              ; preds = %369, %364
  %367 = call i32 @getchar()
  %368 = icmp ne i32 %367, 10
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  br label %366, !llvm.loop !71

370:                                              ; preds = %366
  %371 = load %struct.node*, %struct.node** %32, align 8
  %372 = load i32, i32* %34, align 4
  %373 = call noundef %struct.node* @_Z9deleteValP4nodei(%struct.node* noundef %371, i32 noundef %372)
  store %struct.node* %373, %struct.node** %32, align 8
  %374 = load %struct.node*, %struct.node** %32, align 8
  call void @_Z10print_treeP4node(%struct.node* noundef %374)
  br label %974

375:                                              ; preds = %322
  br label %376

376:                                              ; preds = %379, %375
  %377 = call i32 @getchar()
  %378 = icmp ne i32 %377, 10
  br i1 %378, label %379, label %380

379:                                              ; preds = %376
  br label %376, !llvm.loop !72

380:                                              ; preds = %376
  %381 = load %struct.node*, %struct.node** %32, align 8
  %382 = call noundef %struct.node* @_Z12destroy_treeP4node(%struct.node* noundef %381)
  store %struct.node* %382, %struct.node** %32, align 8
  %383 = load %struct.node*, %struct.node** %32, align 8
  call void @_Z10print_treeP4node(%struct.node* noundef %383)
  br label %974

384:                                              ; preds = %322
  br label %385

385:                                              ; preds = %388, %384
  %386 = call i32 @getchar()
  %387 = icmp ne i32 %386, 10
  br i1 %387, label %388, label %389

388:                                              ; preds = %385
  br label %385, !llvm.loop !73

389:                                              ; preds = %385
  %390 = load %struct.node*, %struct.node** %32, align 8
  call void @_Z12print_leavesP4node(%struct.node* noundef %390)
  br label %974

391:                                              ; preds = %322
  br label %392

392:                                              ; preds = %395, %391
  %393 = call i32 @getchar()
  %394 = icmp ne i32 %393, 10
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  br label %392, !llvm.loop !74

396:                                              ; preds = %392
  %397 = load %struct.node*, %struct.node** %32, align 8
  call void @_Z10print_treeP4node(%struct.node* noundef %397)
  br label %974

398:                                              ; preds = %322
  br label %399

399:                                              ; preds = %402, %398
  %400 = call i32 @getchar()
  %401 = icmp ne i32 %400, 10
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  br label %399, !llvm.loop !75

403:                                              ; preds = %399
  %404 = load i8, i8* @verbose_output, align 1
  %405 = trunc i8 %404 to i1
  %406 = xor i1 %405, true
  %407 = zext i1 %406 to i8
  store i8 %407, i8* @verbose_output, align 1
  br label %974

408:                                              ; preds = %322
  br label %409

409:                                              ; preds = %412, %408
  %410 = call i32 @getchar()
  %411 = icmp ne i32 %410, 10
  br i1 %411, label %412, label %413

412:                                              ; preds = %409
  br label %409, !llvm.loop !76

413:                                              ; preds = %409
  store i32 0, i32* %3, align 4
  br label %1011

414:                                              ; preds = %322
  %415 = load i8*, i8** %38, align 8
  %416 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %415, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %39) #15
  br label %417

417:                                              ; preds = %429, %414
  %418 = load i8*, i8** %38, align 8
  %419 = load i8, i8* %418, align 1
  %420 = sext i8 %419 to i32
  %421 = icmp ne i32 %420, 32
  br i1 %421, label %422, label %427

422:                                              ; preds = %417
  %423 = load i8*, i8** %38, align 8
  %424 = load i8, i8* %423, align 1
  %425 = sext i8 %424 to i32
  %426 = icmp ne i32 %425, 10
  br label %427

427:                                              ; preds = %422, %417
  %428 = phi i1 [ false, %417 ], [ %426, %422 ]
  br i1 %428, label %429, label %432

429:                                              ; preds = %427
  %430 = load i8*, i8** %38, align 8
  %431 = getelementptr inbounds i8, i8* %430, i32 1
  store i8* %431, i8** %38, align 8
  br label %417, !llvm.loop !77

432:                                              ; preds = %427
  %433 = load i32, i32* %39, align 4
  %434 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i32 noundef %433)
  %435 = load i32, i32* %39, align 4
  %436 = icmp sgt i32 %435, 65535
  br i1 %436, label %437, label %439

437:                                              ; preds = %432
  %438 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.89, i64 0, i64 0))
  call void @exit(i32 noundef 0) #17
  unreachable

439:                                              ; preds = %432
  %440 = load i8*, i8** @mem, align 8
  %441 = bitcast i8* %440 to %struct.record*
  store %struct.record* %441, %struct.record** %40, align 8
  %442 = load i64, i64* %37, align 8
  %443 = udiv i64 %442, 4
  store i64 %443, i64* %41, align 8
  %444 = load i64, i64* %37, align 8
  store i64 %444, i64* %42, align 8
  %445 = load i64, i64* %41, align 8
  %446 = trunc i64 %445 to i32
  %447 = load i64, i64* %42, align 8
  %448 = trunc i64 %447 to i32
  %449 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.90, i64 0, i64 0), i32 noundef %446, i32 noundef 4, i32 noundef %448)
  %450 = load i8*, i8** @mem, align 8
  %451 = ptrtoint i8* %450 to i64
  %452 = load i64, i64* %37, align 8
  %453 = add nsw i64 %451, %452
  %454 = inttoptr i64 %453 to %struct.knode*
  store %struct.knode* %454, %struct.knode** %43, align 8
  %455 = load i64, i64* %36, align 8
  %456 = load i64, i64* %37, align 8
  %457 = sub nsw i64 %455, %456
  %458 = udiv i64 %457, 2068
  store i64 %458, i64* %44, align 8
  %459 = load i64, i64* %36, align 8
  %460 = load i64, i64* %37, align 8
  %461 = sub nsw i64 %459, %460
  store i64 %461, i64* %45, align 8
  %462 = load i64, i64* %44, align 8
  %463 = trunc i64 %462 to i32
  %464 = load i64, i64* %45, align 8
  %465 = trunc i64 %464 to i32
  %466 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.91, i64 0, i64 0), i32 noundef %463, i32 noundef 2068, i32 noundef %465)
  %467 = load i32, i32* %39, align 4
  %468 = sext i32 %467 to i64
  %469 = mul i64 %468, 8
  %470 = call noalias i8* @malloc(i64 noundef %469) #16
  store i8* %470, i8** %47, align 8
  %471 = icmp ne i8* %470, null
  br i1 %471, label %475, label %472

472:                                              ; preds = %439
  %473 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %474 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %473, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2174)
  call void @exit(i32 noundef -1) #17
  unreachable

475:                                              ; preds = %439
  %476 = load i8*, i8** %47, align 8
  store i8* %476, i8** %48, align 8
  %477 = load i8*, i8** %48, align 8
  %478 = bitcast i8* %477 to i64*
  store i64* %478, i64** %46, align 8
  %479 = load i64*, i64** %46, align 8
  %480 = bitcast i64* %479 to i8*
  %481 = load i32, i32* %39, align 4
  %482 = sext i32 %481 to i64
  %483 = mul i64 %482, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %480, i8 0, i64 %483, i1 false)
  %484 = load i32, i32* %39, align 4
  %485 = sext i32 %484 to i64
  %486 = mul i64 %485, 8
  %487 = call noalias i8* @malloc(i64 noundef %486) #16
  store i8* %487, i8** %50, align 8
  %488 = icmp ne i8* %487, null
  br i1 %488, label %492, label %489

489:                                              ; preds = %475
  %490 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %491 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %490, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2180)
  call void @exit(i32 noundef -1) #17
  unreachable

492:                                              ; preds = %475
  %493 = load i8*, i8** %50, align 8
  store i8* %493, i8** %51, align 8
  %494 = load i8*, i8** %51, align 8
  %495 = bitcast i8* %494 to i64*
  store i64* %495, i64** %49, align 8
  %496 = load i64*, i64** %49, align 8
  %497 = bitcast i64* %496 to i8*
  %498 = load i32, i32* %39, align 4
  %499 = sext i32 %498 to i64
  %500 = mul i64 %499, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %497, i8 0, i64 %500, i1 false)
  %501 = load i32, i32* %39, align 4
  %502 = sext i32 %501 to i64
  %503 = mul i64 %502, 4
  %504 = call noalias i8* @malloc(i64 noundef %503) #16
  store i8* %504, i8** %53, align 8
  %505 = icmp ne i8* %504, null
  br i1 %505, label %509, label %506

506:                                              ; preds = %492
  %507 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %508 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %507, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2186)
  call void @exit(i32 noundef -1) #17
  unreachable

509:                                              ; preds = %492
  %510 = load i8*, i8** %53, align 8
  store i8* %510, i8** %54, align 8
  %511 = load i8*, i8** %54, align 8
  %512 = bitcast i8* %511 to i32*
  store i32* %512, i32** %52, align 8
  store i32 0, i32* %55, align 4
  br label %513

513:                                              ; preds = %529, %509
  %514 = load i32, i32* %55, align 4
  %515 = load i32, i32* %39, align 4
  %516 = icmp slt i32 %514, %515
  br i1 %516, label %517, label %532

517:                                              ; preds = %513
  %518 = call i32 @rand() #15
  %519 = sitofp i32 %518 to float
  %520 = fdiv contract float %519, 0x41E0000000000000
  %521 = load i64, i64* @size, align 8
  %522 = sitofp i64 %521 to float
  %523 = fmul contract float %520, %522
  %524 = fptosi float %523 to i32
  %525 = load i32*, i32** %52, align 8
  %526 = load i32, i32* %55, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  store i32 %524, i32* %528, align 4
  br label %529

529:                                              ; preds = %517
  %530 = load i32, i32* %55, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %55, align 4
  br label %513, !llvm.loop !78

532:                                              ; preds = %513
  %533 = load i32, i32* %39, align 4
  %534 = sext i32 %533 to i64
  %535 = mul i64 4, %534
  %536 = call noalias i8* @malloc(i64 noundef %535) #16
  store i8* %536, i8** %57, align 8
  %537 = icmp ne i8* %536, null
  br i1 %537, label %541, label %538

538:                                              ; preds = %532
  %539 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %540 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %539, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2194)
  call void @exit(i32 noundef -1) #17
  unreachable

541:                                              ; preds = %532
  %542 = load i8*, i8** %57, align 8
  store i8* %542, i8** %58, align 8
  %543 = load i8*, i8** %58, align 8
  %544 = bitcast i8* %543 to %struct.record*
  store %struct.record* %544, %struct.record** %56, align 8
  store i32 0, i32* %55, align 4
  br label %545

545:                                              ; preds = %555, %541
  %546 = load i32, i32* %55, align 4
  %547 = load i32, i32* %39, align 4
  %548 = icmp slt i32 %546, %547
  br i1 %548, label %549, label %558

549:                                              ; preds = %545
  %550 = load %struct.record*, %struct.record** %56, align 8
  %551 = load i32, i32* %55, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.record, %struct.record* %550, i64 %552
  %554 = getelementptr inbounds %struct.record, %struct.record* %553, i32 0, i32 0
  store i32 -1, i32* %554, align 4
  br label %555

555:                                              ; preds = %549
  %556 = load i32, i32* %55, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %55, align 4
  br label %545, !llvm.loop !79

558:                                              ; preds = %545
  %559 = load %struct.record*, %struct.record** %40, align 8
  %560 = load i64, i64* %42, align 8
  %561 = load %struct.knode*, %struct.knode** %43, align 8
  %562 = load i64, i64* %44, align 8
  %563 = load i64, i64* %45, align 8
  %564 = load i32, i32* @order, align 4
  %565 = load i64, i64* @maxheight, align 8
  %566 = load i32, i32* %39, align 4
  %567 = load i64*, i64** %46, align 8
  %568 = load i64*, i64** %49, align 8
  %569 = load i32*, i32** %52, align 8
  %570 = load %struct.record*, %struct.record** %56, align 8
  call void @kernel_gpu_cuda_wrapper(%struct.record* noundef %559, i64 noundef %560, %struct.knode* noundef %561, i64 noundef %562, i64 noundef %563, i32 noundef %564, i64 noundef %565, i32 noundef %566, i64* noundef %567, i64* noundef %568, i32* noundef %569, %struct.record* noundef %570)
  %571 = load i8*, i8** %12, align 8
  %572 = call %struct._IO_FILE* @fopen(i8* noundef %571, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0))
  store %struct._IO_FILE* %572, %struct._IO_FILE** %13, align 8
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %574 = icmp eq %struct._IO_FILE* %573, null
  br i1 %574, label %575, label %578

575:                                              ; preds = %558
  %576 = load i8*, i8** %12, align 8
  %577 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i8* noundef %576)
  br label %578

578:                                              ; preds = %575, %558
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %580 = load i32, i32* %39, align 4
  %581 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %579, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i32 noundef %580)
  store i32 0, i32* %55, align 4
  br label %582

582:                                              ; preds = %596, %578
  %583 = load i32, i32* %55, align 4
  %584 = load i32, i32* %39, align 4
  %585 = icmp slt i32 %583, %584
  br i1 %585, label %586, label %599

586:                                              ; preds = %582
  %587 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %588 = load i32, i32* %55, align 4
  %589 = load %struct.record*, %struct.record** %56, align 8
  %590 = load i32, i32* %55, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.record, %struct.record* %589, i64 %591
  %593 = getelementptr inbounds %struct.record, %struct.record* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %587, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 noundef %588, i32 noundef %594)
  br label %596

596:                                              ; preds = %586
  %597 = load i32, i32* %55, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %55, align 4
  br label %582, !llvm.loop !80

599:                                              ; preds = %582
  %600 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %601 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %600, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0))
  %602 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %603 = call i32 @fclose(%struct._IO_FILE* noundef %602)
  %604 = load i64*, i64** %46, align 8
  %605 = bitcast i64* %604 to i8*
  call void @free(i8* noundef %605) #15
  %606 = load i64*, i64** %49, align 8
  %607 = bitcast i64* %606 to i8*
  call void @free(i8* noundef %607) #15
  %608 = load i32*, i32** %52, align 8
  %609 = bitcast i32* %608 to i8*
  call void @free(i8* noundef %609) #15
  %610 = load %struct.record*, %struct.record** %56, align 8
  %611 = bitcast %struct.record* %610 to i8*
  call void @free(i8* noundef %611) #15
  br label %974

612:                                              ; preds = %322
  %613 = call i32 (i8*, ...) @scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %59)
  %614 = call i32 (i8*, ...) @scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %60)
  %615 = load i32, i32* %59, align 4
  %616 = load i32, i32* %60, align 4
  %617 = icmp sgt i32 %615, %616
  br i1 %617, label %618, label %622

618:                                              ; preds = %612
  %619 = load i32, i32* %59, align 4
  store i32 %619, i32* %34, align 4
  %620 = load i32, i32* %60, align 4
  store i32 %620, i32* %59, align 4
  %621 = load i32, i32* %34, align 4
  store i32 %621, i32* %60, align 4
  br label %622

622:                                              ; preds = %618, %612
  %623 = load i32, i32* %59, align 4
  %624 = load i32, i32* %60, align 4
  %625 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i64 0, i64 0), i32 noundef %623, i32 noundef %624)
  %626 = load %struct.node*, %struct.node** %32, align 8
  %627 = load i32, i32* %59, align 4
  %628 = load i32, i32* %60, align 4
  %629 = call noundef %struct.list_t* @_Z9findRangeP4nodeii(%struct.node* noundef %626, i32 noundef %627, i32 noundef %628)
  store %struct.list_t* %629, %struct.list_t** %61, align 8
  %630 = load %struct.list_t*, %struct.list_t** %61, align 8
  %631 = call noundef i32 @_Z15list_get_lengthP6list_t(%struct.list_t* noundef %630)
  %632 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i64 0, i64 0), i32 noundef %631)
  %633 = load %struct.list_t*, %struct.list_t** %61, align 8
  %634 = bitcast %struct.list_t* %633 to i8*
  call void @free(i8* noundef %634) #15
  br label %974

635:                                              ; preds = %322
  %636 = load i8*, i8** %38, align 8
  %637 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %636, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %62) #15
  br label %638

638:                                              ; preds = %650, %635
  %639 = load i8*, i8** %38, align 8
  %640 = load i8, i8* %639, align 1
  %641 = sext i8 %640 to i32
  %642 = icmp ne i32 %641, 32
  br i1 %642, label %643, label %648

643:                                              ; preds = %638
  %644 = load i8*, i8** %38, align 8
  %645 = load i8, i8* %644, align 1
  %646 = sext i8 %645 to i32
  %647 = icmp ne i32 %646, 10
  br label %648

648:                                              ; preds = %643, %638
  %649 = phi i1 [ false, %638 ], [ %647, %643 ]
  br i1 %649, label %650, label %653

650:                                              ; preds = %648
  %651 = load i8*, i8** %38, align 8
  %652 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %652, i8** %38, align 8
  br label %638, !llvm.loop !81

653:                                              ; preds = %648
  %654 = load i8*, i8** %38, align 8
  %655 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %654, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i32* noundef %63) #15
  br label %656

656:                                              ; preds = %668, %653
  %657 = load i8*, i8** %38, align 8
  %658 = load i8, i8* %657, align 1
  %659 = sext i8 %658 to i32
  %660 = icmp ne i32 %659, 32
  br i1 %660, label %661, label %666

661:                                              ; preds = %656
  %662 = load i8*, i8** %38, align 8
  %663 = load i8, i8* %662, align 1
  %664 = sext i8 %663 to i32
  %665 = icmp ne i32 %664, 10
  br label %666

666:                                              ; preds = %661, %656
  %667 = phi i1 [ false, %656 ], [ %665, %661 ]
  br i1 %667, label %668, label %671

668:                                              ; preds = %666
  %669 = load i8*, i8** %38, align 8
  %670 = getelementptr inbounds i8, i8* %669, i32 1
  store i8* %670, i8** %38, align 8
  br label %656, !llvm.loop !82

671:                                              ; preds = %666
  %672 = load i32, i32* %62, align 4
  %673 = load i32, i32* %63, align 4
  %674 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i64 0, i64 0), i32 noundef %672, i32 noundef %673)
  %675 = load i32, i32* %63, align 4
  %676 = sext i32 %675 to i64
  %677 = load i64, i64* @size, align 8
  %678 = icmp sgt i64 %676, %677
  br i1 %678, label %682, label %679

679:                                              ; preds = %671
  %680 = load i32, i32* %63, align 4
  %681 = icmp slt i32 %680, 0
  br i1 %681, label %682, label %686

682:                                              ; preds = %679, %671
  %683 = load i64, i64* @size, align 8
  %684 = trunc i64 %683 to i32
  %685 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.98, i64 0, i64 0), i32 noundef %684)
  call void @exit(i32 noundef 0) #17
  unreachable

686:                                              ; preds = %679
  %687 = load i8*, i8** @mem, align 8
  %688 = ptrtoint i8* %687 to i64
  %689 = load i64, i64* %37, align 8
  %690 = add nsw i64 %688, %689
  %691 = inttoptr i64 %690 to %struct.knode*
  store %struct.knode* %691, %struct.knode** %64, align 8
  %692 = load i64, i64* %36, align 8
  %693 = load i64, i64* %37, align 8
  %694 = sub nsw i64 %692, %693
  %695 = udiv i64 %694, 2068
  store i64 %695, i64* %65, align 8
  %696 = load i64, i64* %36, align 8
  %697 = load i64, i64* %37, align 8
  %698 = sub nsw i64 %696, %697
  store i64 %698, i64* %66, align 8
  %699 = load i64, i64* %65, align 8
  %700 = trunc i64 %699 to i32
  %701 = load i64, i64* %66, align 8
  %702 = trunc i64 %701 to i32
  %703 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.91, i64 0, i64 0), i32 noundef %700, i32 noundef 2068, i32 noundef %702)
  %704 = load i32, i32* %62, align 4
  %705 = sext i32 %704 to i64
  %706 = mul i64 %705, 8
  %707 = call noalias i8* @malloc(i64 noundef %706) #16
  store i8* %707, i8** %68, align 8
  %708 = icmp ne i8* %707, null
  br i1 %708, label %712, label %709

709:                                              ; preds = %686
  %710 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %711 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %710, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2303)
  call void @exit(i32 noundef -1) #17
  unreachable

712:                                              ; preds = %686
  %713 = load i8*, i8** %68, align 8
  store i8* %713, i8** %69, align 8
  %714 = load i8*, i8** %69, align 8
  %715 = bitcast i8* %714 to i64*
  store i64* %715, i64** %67, align 8
  %716 = load i64*, i64** %67, align 8
  %717 = bitcast i64* %716 to i8*
  %718 = load i32, i32* %62, align 4
  %719 = sext i32 %718 to i64
  %720 = mul i64 %719, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %717, i8 0, i64 %720, i1 false)
  %721 = load i32, i32* %62, align 4
  %722 = sext i32 %721 to i64
  %723 = mul i64 %722, 8
  %724 = call noalias i8* @malloc(i64 noundef %723) #16
  store i8* %724, i8** %71, align 8
  %725 = icmp ne i8* %724, null
  br i1 %725, label %729, label %726

726:                                              ; preds = %712
  %727 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %728 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %727, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2309)
  call void @exit(i32 noundef -1) #17
  unreachable

729:                                              ; preds = %712
  %730 = load i8*, i8** %71, align 8
  store i8* %730, i8** %72, align 8
  %731 = load i8*, i8** %72, align 8
  %732 = bitcast i8* %731 to i64*
  store i64* %732, i64** %70, align 8
  %733 = load i64*, i64** %70, align 8
  %734 = bitcast i64* %733 to i8*
  %735 = load i32, i32* %62, align 4
  %736 = sext i32 %735 to i64
  %737 = mul i64 %736, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %734, i8 0, i64 %737, i1 false)
  %738 = load i32, i32* %62, align 4
  %739 = sext i32 %738 to i64
  %740 = mul i64 %739, 8
  %741 = call noalias i8* @malloc(i64 noundef %740) #16
  store i8* %741, i8** %74, align 8
  %742 = icmp ne i8* %741, null
  br i1 %742, label %746, label %743

743:                                              ; preds = %729
  %744 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %745 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %744, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2315)
  call void @exit(i32 noundef -1) #17
  unreachable

746:                                              ; preds = %729
  %747 = load i8*, i8** %74, align 8
  store i8* %747, i8** %75, align 8
  %748 = load i8*, i8** %75, align 8
  %749 = bitcast i8* %748 to i64*
  store i64* %749, i64** %73, align 8
  %750 = load i64*, i64** %73, align 8
  %751 = bitcast i64* %750 to i8*
  %752 = load i32, i32* %62, align 4
  %753 = sext i32 %752 to i64
  %754 = mul i64 %753, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %751, i8 0, i64 %754, i1 false)
  %755 = load i32, i32* %62, align 4
  %756 = sext i32 %755 to i64
  %757 = mul i64 %756, 8
  %758 = call noalias i8* @malloc(i64 noundef %757) #16
  store i8* %758, i8** %77, align 8
  %759 = icmp ne i8* %758, null
  br i1 %759, label %763, label %760

760:                                              ; preds = %746
  %761 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %762 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %761, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2321)
  call void @exit(i32 noundef -1) #17
  unreachable

763:                                              ; preds = %746
  %764 = load i8*, i8** %77, align 8
  store i8* %764, i8** %78, align 8
  %765 = load i8*, i8** %78, align 8
  %766 = bitcast i8* %765 to i64*
  store i64* %766, i64** %76, align 8
  %767 = load i64*, i64** %76, align 8
  %768 = bitcast i64* %767 to i8*
  %769 = load i32, i32* %62, align 4
  %770 = sext i32 %769 to i64
  %771 = mul i64 %770, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %768, i8 0, i64 %771, i1 false)
  %772 = load i32, i32* %62, align 4
  %773 = sext i32 %772 to i64
  %774 = mul i64 %773, 4
  %775 = call noalias i8* @malloc(i64 noundef %774) #16
  store i8* %775, i8** %80, align 8
  %776 = icmp ne i8* %775, null
  br i1 %776, label %780, label %777

777:                                              ; preds = %763
  %778 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %779 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %778, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2327)
  call void @exit(i32 noundef -1) #17
  unreachable

780:                                              ; preds = %763
  %781 = load i8*, i8** %80, align 8
  store i8* %781, i8** %81, align 8
  %782 = load i8*, i8** %81, align 8
  %783 = bitcast i8* %782 to i32*
  store i32* %783, i32** %79, align 8
  %784 = load i32, i32* %62, align 4
  %785 = sext i32 %784 to i64
  %786 = mul i64 %785, 4
  %787 = call noalias i8* @malloc(i64 noundef %786) #16
  store i8* %787, i8** %83, align 8
  %788 = icmp ne i8* %787, null
  br i1 %788, label %792, label %789

789:                                              ; preds = %780
  %790 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %791 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %790, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2329)
  call void @exit(i32 noundef -1) #17
  unreachable

792:                                              ; preds = %780
  %793 = load i8*, i8** %83, align 8
  store i8* %793, i8** %84, align 8
  %794 = load i8*, i8** %84, align 8
  %795 = bitcast i8* %794 to i32*
  store i32* %795, i32** %82, align 8
  store i32 0, i32* %85, align 4
  br label %796

796:                                              ; preds = %860, %792
  %797 = load i32, i32* %85, align 4
  %798 = load i32, i32* %62, align 4
  %799 = icmp slt i32 %797, %798
  br i1 %799, label %800, label %863

800:                                              ; preds = %796
  %801 = call i32 @rand() #15
  %802 = sitofp i32 %801 to float
  %803 = fdiv contract float %802, 0x41E0000000000000
  %804 = load i64, i64* @size, align 8
  %805 = sitofp i64 %804 to float
  %806 = fmul contract float %803, %805
  %807 = fptosi float %806 to i32
  %808 = load i32*, i32** %79, align 8
  %809 = load i32, i32* %85, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i32, i32* %808, i64 %810
  store i32 %807, i32* %811, align 4
  %812 = load i32*, i32** %79, align 8
  %813 = load i32, i32* %85, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds i32, i32* %812, i64 %814
  %816 = load i32, i32* %815, align 4
  %817 = load i32, i32* %63, align 4
  %818 = add nsw i32 %816, %817
  %819 = load i32*, i32** %82, align 8
  %820 = load i32, i32* %85, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i32, i32* %819, i64 %821
  store i32 %818, i32* %822, align 4
  %823 = load i32*, i32** %82, align 8
  %824 = load i32, i32* %85, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i32, i32* %823, i64 %825
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  %829 = load i64, i64* @size, align 8
  %830 = icmp sge i64 %828, %829
  br i1 %830, label %831, label %859

831:                                              ; preds = %800
  %832 = load i32*, i32** %79, align 8
  %833 = load i32, i32* %85, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i32, i32* %832, i64 %834
  %836 = load i32, i32* %835, align 4
  %837 = sext i32 %836 to i64
  %838 = load i32*, i32** %82, align 8
  %839 = load i32, i32* %85, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds i32, i32* %838, i64 %840
  %842 = load i32, i32* %841, align 4
  %843 = sext i32 %842 to i64
  %844 = load i64, i64* @size, align 8
  %845 = sub nsw i64 %843, %844
  %846 = sub nsw i64 %837, %845
  %847 = trunc i64 %846 to i32
  %848 = load i32*, i32** %79, align 8
  %849 = load i32, i32* %85, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds i32, i32* %848, i64 %850
  store i32 %847, i32* %851, align 4
  %852 = load i64, i64* @size, align 8
  %853 = sub nsw i64 %852, 1
  %854 = trunc i64 %853 to i32
  %855 = load i32*, i32** %82, align 8
  %856 = load i32, i32* %85, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds i32, i32* %855, i64 %857
  store i32 %854, i32* %858, align 4
  br label %859

859:                                              ; preds = %831, %800
  br label %860

860:                                              ; preds = %859
  %861 = load i32, i32* %85, align 4
  %862 = add nsw i32 %861, 1
  store i32 %862, i32* %85, align 4
  br label %796, !llvm.loop !83

863:                                              ; preds = %796
  %864 = load i32, i32* %62, align 4
  %865 = sext i32 %864 to i64
  %866 = mul i64 %865, 4
  %867 = call noalias i8* @malloc(i64 noundef %866) #16
  store i8* %867, i8** %87, align 8
  %868 = icmp ne i8* %867, null
  br i1 %868, label %872, label %869

869:                                              ; preds = %863
  %870 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %871 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %870, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2343)
  call void @exit(i32 noundef -1) #17
  unreachable

872:                                              ; preds = %863
  %873 = load i8*, i8** %87, align 8
  store i8* %873, i8** %88, align 8
  %874 = load i8*, i8** %88, align 8
  %875 = bitcast i8* %874 to i32*
  store i32* %875, i32** %86, align 8
  %876 = load i32, i32* %62, align 4
  %877 = sext i32 %876 to i64
  %878 = mul i64 %877, 4
  %879 = call noalias i8* @malloc(i64 noundef %878) #16
  store i8* %879, i8** %90, align 8
  %880 = icmp ne i8* %879, null
  br i1 %880, label %884, label %881

881:                                              ; preds = %872
  %882 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %883 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %882, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2345)
  call void @exit(i32 noundef -1) #17
  unreachable

884:                                              ; preds = %872
  %885 = load i8*, i8** %90, align 8
  store i8* %885, i8** %91, align 8
  %886 = load i8*, i8** %91, align 8
  %887 = bitcast i8* %886 to i32*
  store i32* %887, i32** %89, align 8
  store i32 0, i32* %85, align 4
  br label %888

888:                                              ; preds = %901, %884
  %889 = load i32, i32* %85, align 4
  %890 = load i32, i32* %62, align 4
  %891 = icmp slt i32 %889, %890
  br i1 %891, label %892, label %904

892:                                              ; preds = %888
  %893 = load i32*, i32** %86, align 8
  %894 = load i32, i32* %85, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i32, i32* %893, i64 %895
  store i32 0, i32* %896, align 4
  %897 = load i32*, i32** %89, align 8
  %898 = load i32, i32* %85, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i32, i32* %897, i64 %899
  store i32 0, i32* %900, align 4
  br label %901

901:                                              ; preds = %892
  %902 = load i32, i32* %85, align 4
  %903 = add nsw i32 %902, 1
  store i32 %903, i32* %85, align 4
  br label %888, !llvm.loop !84

904:                                              ; preds = %888
  %905 = load %struct.knode*, %struct.knode** %64, align 8
  %906 = load i64, i64* %65, align 8
  %907 = load i64, i64* %66, align 8
  %908 = load i32, i32* @order, align 4
  %909 = load i64, i64* @maxheight, align 8
  %910 = load i32, i32* %62, align 4
  %911 = load i64*, i64** %67, align 8
  %912 = load i64*, i64** %70, align 8
  %913 = load i64*, i64** %73, align 8
  %914 = load i64*, i64** %76, align 8
  %915 = load i32*, i32** %79, align 8
  %916 = load i32*, i32** %82, align 8
  %917 = load i32*, i32** %86, align 8
  %918 = load i32*, i32** %89, align 8
  call void @kernel_gpu_cuda_wrapper_2(%struct.knode* noundef %905, i64 noundef %906, i64 noundef %907, i32 noundef %908, i64 noundef %909, i32 noundef %910, i64* noundef %911, i64* noundef %912, i64* noundef %913, i64* noundef %914, i32* noundef %915, i32* noundef %916, i32* noundef %917, i32* noundef %918)
  %919 = load i8*, i8** %12, align 8
  %920 = call %struct._IO_FILE* @fopen(i8* noundef %919, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0))
  store %struct._IO_FILE* %920, %struct._IO_FILE** %13, align 8
  %921 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %922 = icmp eq %struct._IO_FILE* %921, null
  br i1 %922, label %923, label %926

923:                                              ; preds = %904
  %924 = load i8*, i8** %12, align 8
  %925 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i8* noundef %924)
  br label %926

926:                                              ; preds = %923, %904
  %927 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %928 = load i32, i32* %62, align 4
  %929 = load i32, i32* %63, align 4
  %930 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %927, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i64 0, i64 0), i32 noundef %928, i32 noundef %929)
  store i32 0, i32* %85, align 4
  br label %931

931:                                              ; preds = %949, %926
  %932 = load i32, i32* %85, align 4
  %933 = load i32, i32* %62, align 4
  %934 = icmp slt i32 %932, %933
  br i1 %934, label %935, label %952

935:                                              ; preds = %931
  %936 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %937 = load i32, i32* %85, align 4
  %938 = load i32*, i32** %86, align 8
  %939 = load i32, i32* %85, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32, i32* %938, i64 %940
  %942 = load i32, i32* %941, align 4
  %943 = load i32*, i32** %89, align 8
  %944 = load i32, i32* %85, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds i32, i32* %943, i64 %945
  %947 = load i32, i32* %946, align 4
  %948 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %936, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i32 noundef %937, i32 noundef %942, i32 noundef %947)
  br label %949

949:                                              ; preds = %935
  %950 = load i32, i32* %85, align 4
  %951 = add nsw i32 %950, 1
  store i32 %951, i32* %85, align 4
  br label %931, !llvm.loop !85

952:                                              ; preds = %931
  %953 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %954 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %953, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0))
  %955 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %956 = call i32 @fclose(%struct._IO_FILE* noundef %955)
  %957 = load i64*, i64** %67, align 8
  %958 = bitcast i64* %957 to i8*
  call void @free(i8* noundef %958) #15
  %959 = load i64*, i64** %70, align 8
  %960 = bitcast i64* %959 to i8*
  call void @free(i8* noundef %960) #15
  %961 = load i64*, i64** %73, align 8
  %962 = bitcast i64* %961 to i8*
  call void @free(i8* noundef %962) #15
  %963 = load i64*, i64** %76, align 8
  %964 = bitcast i64* %963 to i8*
  call void @free(i8* noundef %964) #15
  %965 = load i32*, i32** %79, align 8
  %966 = bitcast i32* %965 to i8*
  call void @free(i8* noundef %966) #15
  %967 = load i32*, i32** %82, align 8
  %968 = bitcast i32* %967 to i8*
  call void @free(i8* noundef %968) #15
  %969 = load i32*, i32** %86, align 8
  %970 = bitcast i32* %969 to i8*
  call void @free(i8* noundef %970) #15
  %971 = load i32*, i32** %89, align 8
  %972 = bitcast i32* %971 to i8*
  call void @free(i8* noundef %972) #15
  br label %974

973:                                              ; preds = %322
  br label %974

974:                                              ; preds = %973, %952, %622, %599, %403, %396, %389, %380, %370, %363, %333
  %975 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0))
  br label %318, !llvm.loop !86

976:                                              ; preds = %318
  %977 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %978 = load %class.RDTimerCPU*, %class.RDTimerCPU** %18, align 8
  %979 = bitcast %class.RDTimerCPU* %978 to float (%class.RDTimerCPU*)***
  %980 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %979, align 8
  %981 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %980, i64 3
  %982 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %981, align 8
  %983 = call contract noundef float %982(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %978)
  store float %983, float* %14, align 4
  %984 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %15, align 8
  %985 = load %class.RDTimerCPU*, %class.RDTimerCPU** %18, align 8
  %986 = bitcast %class.RDTimerCPU* %985 to %class.RDTimer*
  %987 = bitcast %class.SimplePerfSerializer* %984 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %988 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %987, align 8
  %989 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %988, i64 2
  %990 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %989, align 8
  call void %990(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %984, %class.RDTimer* noundef %986)
  %991 = load float, float* %14, align 4
  %992 = fpext float %991 to double
  %993 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i64 0, i64 0), double noundef %992)
  %994 = load %class.RDTimerCPU*, %class.RDTimerCPU** %18, align 8
  %995 = icmp eq %class.RDTimerCPU* %994, null
  br i1 %995, label %1001, label %996

996:                                              ; preds = %976
  %997 = bitcast %class.RDTimerCPU* %994 to void (%class.RDTimerCPU*)***
  %998 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %997, align 8
  %999 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %998, i64 1
  %1000 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %999, align 8
  call void %1000(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %994) #15
  br label %1001

1001:                                             ; preds = %996, %976
  %1002 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %15, align 8
  %1003 = icmp eq %class.SimplePerfSerializer* %1002, null
  br i1 %1003, label %1009, label %1004

1004:                                             ; preds = %1001
  %1005 = bitcast %class.SimplePerfSerializer* %1002 to void (%class.SimplePerfSerializer*)***
  %1006 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %1005, align 8
  %1007 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %1006, i64 1
  %1008 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %1007, align 8
  call void %1008(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %1002) #15
  br label %1009

1009:                                             ; preds = %1004, %1001
  %1010 = load i8*, i8** @mem, align 8
  call void @free(i8* noundef %1010) #15
  store i32 0, i32* %3, align 4
  br label %1011

1011:                                             ; preds = %1009, %413, %301, %192, %167
  %1012 = load i32, i32* %3, align 4
  ret i32 %1012

1013:                                             ; preds = %166, %157, %142
  %1014 = load i8*, i8** %16, align 8
  %1015 = load i32, i32* %17, align 4
  %1016 = insertvalue { i8*, i32 } undef, i8* %1014, 0
  %1017 = insertvalue { i8*, i32 } %1016, i32 %1015, 1
  resume { i8*, i32 } %1017
}

declare i32 @hipSetDevice(i32 noundef) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #7

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef %1) unnamed_addr #8 comdat align 2 {
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #9

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #15
  %10 = bitcast %class.RDTimerCPU* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10RDTimerCPU, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 3
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0))
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #15
  br label %24

19:                                               ; preds = %9
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %5, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %6, align 4
  %23 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %23) #15
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
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) #1 comdat align 2 {
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #10

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

declare i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

declare i64 @ftell(%struct._IO_FILE* noundef) #3

declare void @rewind(%struct._IO_FILE* noundef) #3

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #3

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #5

; Function Attrs: nounwind
declare i32 @sscanf(i8* noundef, i8* noundef, ...) #5

declare i32 @scanf(i8* noundef, ...) #3

declare i32 @getchar() #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare i32 @rand() #5

declare void @kernel_gpu_cuda_wrapper(%struct.record* noundef, i64 noundef, %struct.knode* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64* noundef, i64* noundef, i32* noundef, %struct.record* noundef) #3

declare void @kernel_gpu_cuda_wrapper_2(%struct.knode* noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) #3

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0, i8* noundef %1) unnamed_addr #8 comdat align 2 {
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
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0)) #15
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i64 0, i64 0)) #15
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #15
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #15
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i64 0, i64 0), i8** %57, align 16
  call void @__cxa_throw(i8* %56, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
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
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #15
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i64 0, i64 0), i8** %73, align 16
  call void @__cxa_throw(i8* %72, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

74:                                               ; preds = %60
  %75 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 1, i8* %75, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %78, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.110, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #15
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i64 0, i64 0), i8** %83, align 16
  call void @__cxa_throw(i8* %82, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

84:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  %4 = bitcast %class.SimplePerfSerializer* %3 to %class.PerfSerializer*
  call void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %4) #15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD0Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  call void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %3) #15
  %4 = bitcast %class.SimplePerfSerializer* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, %class.RDTimer* noundef %1) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #15
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #15
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.118, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

41:                                               ; preds = %21
  %42 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %7, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %44)
  %45 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #15
  %46 = call i32 @strcmp(i8* noundef %43, i8* noundef %45) #19
  %47 = icmp ne i32 %46, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #15
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.119, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #15
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.120, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #15
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #15
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.122, i64 0, i64 0), i8** %63, align 16
  call void @__cxa_throw(i8* %62, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

64:                                               ; preds = %53
  %65 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %8, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %68)
  %69 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #15
  %70 = call i32 @strcmp(i8* noundef %67, i8* noundef %69) #19
  %71 = icmp ne i32 %70, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #15
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %9, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76)
  %77 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #15
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.123, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #15
  %80 = call i8* @__cxa_allocate_exception(i64 8) #15
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.124, i64 0, i64 0), i8** %81, align 16
  call void @__cxa_throw(i8* %80, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

82:                                               ; preds = %72
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %10, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %187

86:                                               ; preds = %64
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #15
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #15
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #19
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #15
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.130, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #15
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #15
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.132, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #19
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #15
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.133, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %123
  %137 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @atoi(i8* noundef %142) #19
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
  %163 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #15
  %164 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  invoke void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %13, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %164)
          to label %165 unwind label %178

165:                                              ; preds = %150
  %166 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #15
  %167 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %168 = invoke noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %167)
          to label %169 unwind label %182

169:                                              ; preds = %165
  %170 = zext i1 %168 to i64
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.134, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
          to label %177 unwind label %182

177:                                              ; preds = %169
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #15
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #15
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #15
  br label %186

186:                                              ; preds = %182, %178
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #15
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
define linkonce_odr dso_local void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #12 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i64 0, i64 0))
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
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.113, i64 0, i64 0))
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
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #15
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
  call void @__clang_call_terminate(i8* %55) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD0Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.PerfSerializer*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %3 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  call void @llvm.trap() #17
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #13 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #15
  call void @_ZSt9terminatev() #17
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @system(i8* noundef) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #14

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #1 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #1 comdat align 2 {
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #10

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
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

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RDTimer*, align 8
  %4 = alloca %"class.std::allocator", align 1
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
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #15
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #15
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
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10) #15
  br label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4) #15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD0Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  call void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %3) #15
  %4 = bitcast %class.RDTimerCPU* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPU5StartEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
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
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU4StopEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
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
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU10AccumulateEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = bitcast %class.RDTimer* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5) #15
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %6) #15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD0Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_Z8get_timev() #0 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #15
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #0 comdat {
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

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
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

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #12 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
!80 = distinct !{!80, !7}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
!83 = distinct !{!83, !7}
!84 = distinct !{!84, !7}
!85 = distinct !{!85, !7}
!86 = distinct !{!86, !7}
