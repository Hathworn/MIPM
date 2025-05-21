; ModuleID = 'histogram/histogram.cpp'
source_filename = "histogram/histogram.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i8> }

@sharedArray = external hidden local_unnamed_addr addrspace(3) global [0 x i8], align 1

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z12histogram256PjS_(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %5 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !5, !invariant.load !6
  %9 = shl nuw nsw i32 %3, 2
  %10 = and i32 %9, 124
  %11 = zext i16 %8 to i32
  br label %19

12:                                               ; preds = %19
  %13 = zext i32 %3 to i64
  %14 = zext i32 %4 to i64
  %15 = zext i16 %8 to i64
  %16 = lshr i32 %3, 5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %17 = shl nuw nsw i64 %14, 7
  %18 = add nuw nsw i32 %10, %16
  br label %60

19:                                               ; preds = %19, %2
  %20 = phi i32 [ 0, %2 ], [ %52, %19 ]
  %21 = mul nuw nsw i32 %20, %11
  %22 = add nuw nsw i32 %21, %3
  %23 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %22, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %23, align 4, !tbaa !7
  %24 = or i32 %20, 1
  %25 = mul nuw nsw i32 %24, %11
  %26 = add nuw nsw i32 %25, %3
  %27 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %26, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %27, align 4, !tbaa !7
  %28 = or i32 %20, 2
  %29 = mul nuw nsw i32 %28, %11
  %30 = add nuw nsw i32 %29, %3
  %31 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %30, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %31, align 4, !tbaa !7
  %32 = or i32 %20, 3
  %33 = mul nuw nsw i32 %32, %11
  %34 = add nuw nsw i32 %33, %3
  %35 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %34, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %35, align 4, !tbaa !7
  %36 = or i32 %20, 4
  %37 = mul nuw nsw i32 %36, %11
  %38 = add nuw nsw i32 %37, %3
  %39 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %38, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %39, align 4, !tbaa !7
  %40 = or i32 %20, 5
  %41 = mul nuw nsw i32 %40, %11
  %42 = add nuw nsw i32 %41, %3
  %43 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %42, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %43, align 4, !tbaa !7
  %44 = or i32 %20, 6
  %45 = mul nuw nsw i32 %44, %11
  %46 = add nuw nsw i32 %45, %3
  %47 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %46, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %47, align 4, !tbaa !7
  %48 = or i32 %20, 7
  %49 = mul nuw nsw i32 %48, %11
  %50 = add nuw nsw i32 %49, %3
  %51 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %50, i32 0, i32 0, i32 0
  store <4 x i8> zeroinitializer, <4 x i8> addrspace(3)* %51, align 4, !tbaa !7
  %52 = add nuw nsw i32 %20, 8
  %53 = icmp eq i32 %52, 64
  br i1 %53, label %12, label %19, !llvm.loop !10

54:                                               ; preds = %60
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %55 = udiv i64 256, %15
  %56 = shl nuw nsw i32 %3, 5
  %57 = shl nuw nsw i64 %14, 8
  %58 = add nuw nsw i64 %57, %13
  %59 = icmp ugt i16 %8, 256
  br i1 %59, label %111, label %112

60:                                               ; preds = %60, %12
  %61 = phi i32 [ 0, %12 ], [ %109, %60 ]
  %62 = zext i32 %61 to i64
  %63 = add nuw nsw i64 %17, %62
  %64 = mul nuw nsw i64 %63, %15
  %65 = add nuw nsw i64 %64, %13
  %66 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %65
  %67 = load i32, i32 addrspace(1)* %66, align 4, !tbaa !12
  %68 = shl i32 %67, 7
  %69 = add i32 %18, %68
  %70 = getelementptr inbounds [0 x i8], [0 x i8] addrspace(3)* @sharedArray, i32 0, i32 %69
  %71 = load i8, i8 addrspace(3)* %70, align 1, !tbaa !7
  %72 = add i8 %71, 1
  store i8 %72, i8 addrspace(3)* %70, align 1, !tbaa !7
  %73 = or i32 %61, 1
  %74 = zext i32 %73 to i64
  %75 = add nuw nsw i64 %17, %74
  %76 = mul nuw nsw i64 %75, %15
  %77 = add nuw nsw i64 %76, %13
  %78 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %77
  %79 = load i32, i32 addrspace(1)* %78, align 4, !tbaa !12
  %80 = shl i32 %79, 7
  %81 = add i32 %18, %80
  %82 = getelementptr inbounds [0 x i8], [0 x i8] addrspace(3)* @sharedArray, i32 0, i32 %81
  %83 = load i8, i8 addrspace(3)* %82, align 1, !tbaa !7
  %84 = add i8 %83, 1
  store i8 %84, i8 addrspace(3)* %82, align 1, !tbaa !7
  %85 = or i32 %61, 2
  %86 = zext i32 %85 to i64
  %87 = add nuw nsw i64 %17, %86
  %88 = mul nuw nsw i64 %87, %15
  %89 = add nuw nsw i64 %88, %13
  %90 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %89
  %91 = load i32, i32 addrspace(1)* %90, align 4, !tbaa !12
  %92 = shl i32 %91, 7
  %93 = add i32 %18, %92
  %94 = getelementptr inbounds [0 x i8], [0 x i8] addrspace(3)* @sharedArray, i32 0, i32 %93
  %95 = load i8, i8 addrspace(3)* %94, align 1, !tbaa !7
  %96 = add i8 %95, 1
  store i8 %96, i8 addrspace(3)* %94, align 1, !tbaa !7
  %97 = or i32 %61, 3
  %98 = zext i32 %97 to i64
  %99 = add nuw nsw i64 %17, %98
  %100 = mul nuw nsw i64 %99, %15
  %101 = add nuw nsw i64 %100, %13
  %102 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %101
  %103 = load i32, i32 addrspace(1)* %102, align 4, !tbaa !12
  %104 = shl i32 %103, 7
  %105 = add i32 %18, %104
  %106 = getelementptr inbounds [0 x i8], [0 x i8] addrspace(3)* @sharedArray, i32 0, i32 %105
  %107 = load i8, i8 addrspace(3)* %106, align 1, !tbaa !7
  %108 = add i8 %107, 1
  store i8 %108, i8 addrspace(3)* %106, align 1, !tbaa !7
  %109 = add nuw nsw i32 %61, 4
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %54, label %60, !llvm.loop !14

111:                                              ; preds = %117, %54
  ret void

112:                                              ; preds = %54, %117
  %113 = phi i64 [ %125, %117 ], [ 0, %54 ]
  %114 = trunc i64 %113 to i32
  %115 = shl nsw i32 %114, 12
  %116 = add nuw nsw i32 %115, %56
  br label %127

117:                                              ; preds = %127
  %118 = add i32 %289, %291
  %119 = add i32 %118, %293
  %120 = add i32 %119, %295
  %121 = mul nuw nsw i64 %113, %15
  %122 = add nuw nsw i64 %58, %121
  %123 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %122
  store i32 %120, i32 addrspace(1)* %123, align 4, !tbaa !12
  %124 = add nuw nsw i64 %113, 1
  %125 = and i64 %124, 4294967295
  %126 = icmp ugt i64 %55, %125
  br i1 %126, label %112, label %111, !llvm.loop !15

127:                                              ; preds = %127, %112
  %128 = phi i32 [ 0, %112 ], [ %297, %127 ]
  %129 = phi <4 x i32> [ zeroinitializer, %112 ], [ %296, %127 ]
  %130 = add nuw nsw i32 %128, %3
  %131 = and i32 %130, 31
  %132 = or i32 %131, %116
  %133 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %132, i32 0, i32 0, i32 0, i32 0
  %134 = load i8, i8 addrspace(3)* %133, align 4
  %135 = zext i8 %134 to i32
  %136 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %132, i32 0, i32 0, i32 0, i32 1
  %137 = load i8, i8 addrspace(3)* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %132, i32 0, i32 0, i32 0, i32 2
  %140 = load i8, i8 addrspace(3)* %139, align 2
  %141 = zext i8 %140 to i32
  %142 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %132, i32 0, i32 0, i32 0, i32 3
  %143 = load i8, i8 addrspace(3)* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = extractelement <4 x i32> %129, i64 0
  %146 = add i32 %145, %135
  %147 = extractelement <4 x i32> %129, i64 1
  %148 = add i32 %147, %138
  %149 = extractelement <4 x i32> %129, i64 2
  %150 = add i32 %149, %141
  %151 = extractelement <4 x i32> %129, i64 3
  %152 = add i32 %151, %144
  %153 = or i32 %128, 1
  %154 = add nuw nsw i32 %153, %3
  %155 = and i32 %154, 31
  %156 = or i32 %155, %116
  %157 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %156, i32 0, i32 0, i32 0, i32 0
  %158 = load i8, i8 addrspace(3)* %157, align 4
  %159 = zext i8 %158 to i32
  %160 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %156, i32 0, i32 0, i32 0, i32 1
  %161 = load i8, i8 addrspace(3)* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %156, i32 0, i32 0, i32 0, i32 2
  %164 = load i8, i8 addrspace(3)* %163, align 2
  %165 = zext i8 %164 to i32
  %166 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %156, i32 0, i32 0, i32 0, i32 3
  %167 = load i8, i8 addrspace(3)* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = add i32 %146, %159
  %170 = add i32 %148, %162
  %171 = add i32 %150, %165
  %172 = add i32 %152, %168
  %173 = or i32 %128, 2
  %174 = add nuw nsw i32 %173, %3
  %175 = and i32 %174, 31
  %176 = or i32 %175, %116
  %177 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %176, i32 0, i32 0, i32 0, i32 0
  %178 = load i8, i8 addrspace(3)* %177, align 4
  %179 = zext i8 %178 to i32
  %180 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %176, i32 0, i32 0, i32 0, i32 1
  %181 = load i8, i8 addrspace(3)* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %176, i32 0, i32 0, i32 0, i32 2
  %184 = load i8, i8 addrspace(3)* %183, align 2
  %185 = zext i8 %184 to i32
  %186 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %176, i32 0, i32 0, i32 0, i32 3
  %187 = load i8, i8 addrspace(3)* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = add i32 %169, %179
  %190 = add i32 %170, %182
  %191 = add i32 %171, %185
  %192 = add i32 %172, %188
  %193 = or i32 %128, 3
  %194 = add nuw nsw i32 %193, %3
  %195 = and i32 %194, 31
  %196 = or i32 %195, %116
  %197 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %196, i32 0, i32 0, i32 0, i32 0
  %198 = load i8, i8 addrspace(3)* %197, align 4
  %199 = zext i8 %198 to i32
  %200 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %196, i32 0, i32 0, i32 0, i32 1
  %201 = load i8, i8 addrspace(3)* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %196, i32 0, i32 0, i32 0, i32 2
  %204 = load i8, i8 addrspace(3)* %203, align 2
  %205 = zext i8 %204 to i32
  %206 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %196, i32 0, i32 0, i32 0, i32 3
  %207 = load i8, i8 addrspace(3)* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = add i32 %189, %199
  %210 = add i32 %190, %202
  %211 = add i32 %191, %205
  %212 = add i32 %192, %208
  %213 = or i32 %128, 4
  %214 = add nuw nsw i32 %213, %3
  %215 = and i32 %214, 31
  %216 = or i32 %215, %116
  %217 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %216, i32 0, i32 0, i32 0, i32 0
  %218 = load i8, i8 addrspace(3)* %217, align 4
  %219 = zext i8 %218 to i32
  %220 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %216, i32 0, i32 0, i32 0, i32 1
  %221 = load i8, i8 addrspace(3)* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %216, i32 0, i32 0, i32 0, i32 2
  %224 = load i8, i8 addrspace(3)* %223, align 2
  %225 = zext i8 %224 to i32
  %226 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %216, i32 0, i32 0, i32 0, i32 3
  %227 = load i8, i8 addrspace(3)* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = add i32 %209, %219
  %230 = add i32 %210, %222
  %231 = add i32 %211, %225
  %232 = add i32 %212, %228
  %233 = or i32 %128, 5
  %234 = add nuw nsw i32 %233, %3
  %235 = and i32 %234, 31
  %236 = or i32 %235, %116
  %237 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %236, i32 0, i32 0, i32 0, i32 0
  %238 = load i8, i8 addrspace(3)* %237, align 4
  %239 = zext i8 %238 to i32
  %240 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %236, i32 0, i32 0, i32 0, i32 1
  %241 = load i8, i8 addrspace(3)* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %236, i32 0, i32 0, i32 0, i32 2
  %244 = load i8, i8 addrspace(3)* %243, align 2
  %245 = zext i8 %244 to i32
  %246 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %236, i32 0, i32 0, i32 0, i32 3
  %247 = load i8, i8 addrspace(3)* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = add i32 %229, %239
  %250 = add i32 %230, %242
  %251 = add i32 %231, %245
  %252 = add i32 %232, %248
  %253 = or i32 %128, 6
  %254 = add nuw nsw i32 %253, %3
  %255 = and i32 %254, 31
  %256 = or i32 %255, %116
  %257 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %256, i32 0, i32 0, i32 0, i32 0
  %258 = load i8, i8 addrspace(3)* %257, align 4
  %259 = zext i8 %258 to i32
  %260 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %256, i32 0, i32 0, i32 0, i32 1
  %261 = load i8, i8 addrspace(3)* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %256, i32 0, i32 0, i32 0, i32 2
  %264 = load i8, i8 addrspace(3)* %263, align 2
  %265 = zext i8 %264 to i32
  %266 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %256, i32 0, i32 0, i32 0, i32 3
  %267 = load i8, i8 addrspace(3)* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = add i32 %249, %259
  %270 = add i32 %250, %262
  %271 = add i32 %251, %265
  %272 = add i32 %252, %268
  %273 = or i32 %128, 7
  %274 = add nuw nsw i32 %273, %3
  %275 = and i32 %274, 31
  %276 = or i32 %275, %116
  %277 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %276, i32 0, i32 0, i32 0, i32 0
  %278 = load i8, i8 addrspace(3)* %277, align 4
  %279 = zext i8 %278 to i32
  %280 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %276, i32 0, i32 0, i32 0, i32 1
  %281 = load i8, i8 addrspace(3)* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %276, i32 0, i32 0, i32 0, i32 2
  %284 = load i8, i8 addrspace(3)* %283, align 2
  %285 = zext i8 %284 to i32
  %286 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(3)* bitcast ([0 x i8] addrspace(3)* @sharedArray to %struct.HIP_vector_type addrspace(3)*), i32 %276, i32 0, i32 0, i32 0, i32 3
  %287 = load i8, i8 addrspace(3)* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = add i32 %269, %279
  %290 = insertelement <4 x i32> poison, i32 %289, i64 0
  %291 = add i32 %270, %282
  %292 = insertelement <4 x i32> %290, i32 %291, i64 1
  %293 = add i32 %271, %285
  %294 = insertelement <4 x i32> %292, i32 %293, i64 2
  %295 = add i32 %272, %288
  %296 = insertelement <4 x i32> %294, i32 %295, i64 3
  %297 = add nuw nsw i32 %128, 8
  %298 = icmp eq i32 %297, 32
  br i1 %298, label %117, label %127, !llvm.loop !16
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i32 0, i32 1024}
!5 = !{i16 1, i16 1025}
!6 = !{}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
