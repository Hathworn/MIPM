; ModuleID = 'tpacf.cpp'
source_filename = "tpacf.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@dev_binb = protected addrspace(4) externally_initialized global [21 x float] zeroinitializer, align 16
@_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists = internal addrspace(3) global [20 x [128 x i32]] undef, align 16
@llvm.compiler.used = appending addrspace(1) global [1 x i8*] [i8* addrspacecast (i8 addrspace(4)* bitcast ([21 x float] addrspace(4)* @dev_binb to i8 addrspace(4)*) to i8*)], section "llvm.metadata"

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z9gen_histsPmPfS0_S0_ii(i64 addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture readonly %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %8 = add nsw i32 %4, 1
  %9 = and i32 %7, 127
  %10 = lshr i32 %7, 7
  %11 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %10, i32 %9
  store i32 0, i32 addrspace(3)* %11, align 4, !tbaa !5
  %12 = add nuw nsw i32 %7, 256
  %13 = lshr i32 %12, 7
  %14 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %13, i32 %9
  store i32 0, i32 addrspace(3)* %14, align 4, !tbaa !5
  %15 = add nuw nsw i32 %7, 512
  %16 = lshr i32 %15, 7
  %17 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %16, i32 %9
  store i32 0, i32 addrspace(3)* %17, align 4, !tbaa !5
  %18 = add nuw nsw i32 %7, 768
  %19 = lshr i32 %18, 7
  %20 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %19, i32 %9
  store i32 0, i32 addrspace(3)* %20, align 4, !tbaa !5
  %21 = lshr i32 %7, 7
  %22 = or i32 %21, 8
  %23 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %22, i32 %9
  store i32 0, i32 addrspace(3)* %23, align 4, !tbaa !5
  %24 = add nuw nsw i32 %7, 1280
  %25 = lshr i32 %24, 7
  %26 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %25, i32 %9
  store i32 0, i32 addrspace(3)* %26, align 4, !tbaa !5
  %27 = add nuw nsw i32 %7, 1536
  %28 = lshr i32 %27, 7
  %29 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %28, i32 %9
  store i32 0, i32 addrspace(3)* %29, align 4, !tbaa !5
  %30 = icmp ult i32 %7, 768
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = add nuw nsw i32 %7, 1792
  %33 = lshr i32 %32, 7
  %34 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %33, i32 %9
  store i32 0, i32 addrspace(3)* %34, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %31, %6
  %36 = or i32 %7, 2048
  %37 = icmp ult i32 %36, 2560
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = lshr i32 %36, 7
  %40 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %39, i32 %9
  store i32 0, i32 addrspace(3)* %40, align 4, !tbaa !5
  br label %41

41:                                               ; preds = %38, %35
  %42 = icmp ult i32 %7, 256
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = add nuw nsw i32 %7, 2304
  %45 = lshr i32 %44, 7
  %46 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %45, i32 %9
  store i32 0, i32 addrspace(3)* %46, align 4, !tbaa !5
  br label %47

47:                                               ; preds = %43, %41
  %48 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %49 = icmp ult i32 %48, %8
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = sub i32 %48, %4
  %52 = mul i32 %51, %5
  %53 = zext i32 %52 to i64
  br label %60

54:                                               ; preds = %47
  %55 = mul i32 %48, %5
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds float, float addrspace(1)* %1, i64 %56
  %58 = getelementptr inbounds float, float addrspace(1)* %2, i64 %56
  %59 = getelementptr inbounds float, float addrspace(1)* %3, i64 %56
  br label %60

60:                                               ; preds = %54, %50
  %61 = phi i64 [ %56, %54 ], [ %53, %50 ]
  %62 = phi float addrspace(1)* [ %59, %54 ], [ %3, %50 ]
  %63 = phi float addrspace(1)* [ %58, %54 ], [ %2, %50 ]
  %64 = phi float addrspace(1)* [ %57, %54 ], [ %1, %50 ]
  %65 = getelementptr inbounds float, float addrspace(1)* %3, i64 %61
  %66 = getelementptr inbounds float, float addrspace(1)* %2, i64 %61
  %67 = getelementptr inbounds float, float addrspace(1)* %1, i64 %61
  %68 = lshr i32 %7, 1
  %69 = icmp eq i32 %5, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %113, %60
  %71 = and i32 %7, 63
  %72 = lshr i32 %7, 6
  %73 = or i32 %71, 64
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %74 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %71
  %75 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %73
  %76 = load i32, i32 addrspace(3)* %74, align 4, !tbaa !5
  %77 = load i32, i32 addrspace(3)* %75, align 4, !tbaa !5
  %78 = add i32 %77, %76
  store i32 %78, i32 addrspace(3)* %74, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %79 = add nuw nsw i32 %72, 4
  %80 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %79, i32 %71
  %81 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %79, i32 %73
  %82 = load i32, i32 addrspace(3)* %80, align 4, !tbaa !5
  %83 = load i32, i32 addrspace(3)* %81, align 4, !tbaa !5
  %84 = add i32 %83, %82
  store i32 %84, i32 addrspace(3)* %80, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %85 = add nuw nsw i32 %72, 8
  %86 = icmp ult i32 %7, 768
  %87 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %85, i32 %71
  br i1 %86, label %162, label %167

88:                                               ; preds = %60, %113
  %89 = phi i32 [ %107, %113 ], [ 0, %60 ]
  %90 = phi float [ %106, %113 ], [ undef, %60 ]
  %91 = phi float [ %105, %113 ], [ undef, %60 ]
  %92 = phi float [ %104, %113 ], [ undef, %60 ]
  %93 = add i32 %89, %7
  %94 = icmp ult i32 %93, %5
  %95 = zext i32 %93 to i64
  br i1 %94, label %96, label %103

96:                                               ; preds = %88
  %97 = getelementptr inbounds float, float addrspace(1)* %65, i64 %95
  %98 = getelementptr inbounds float, float addrspace(1)* %66, i64 %95
  %99 = getelementptr inbounds float, float addrspace(1)* %67, i64 %95
  %100 = load float, float addrspace(1)* %99, align 4, !tbaa !9
  %101 = load float, float addrspace(1)* %98, align 4, !tbaa !9
  %102 = load float, float addrspace(1)* %97, align 4, !tbaa !9
  br label %103

103:                                              ; preds = %96, %88
  %104 = phi float [ %100, %96 ], [ %92, %88 ]
  %105 = phi float [ %101, %96 ], [ %91, %88 ]
  %106 = phi float [ %102, %96 ], [ %90, %88 ]
  %107 = add i32 %89, 256
  %108 = xor i1 %94, true
  br label %109

109:                                              ; preds = %103, %159
  %110 = phi i32 [ 0, %103 ], [ %160, %159 ]
  %111 = icmp uge i32 %110, %107
  %112 = select i1 %49, i1 %111, i1 false
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %159
  %114 = icmp ult i32 %107, %5
  br i1 %114, label %88, label %70, !llvm.loop !11

115:                                              ; preds = %109
  %116 = zext i32 %110 to i64
  %117 = getelementptr inbounds float, float addrspace(1)* %64, i64 %116
  %118 = load float, float addrspace(1)* %117, align 4, !tbaa !9
  %119 = fmul contract float %104, %118
  %120 = getelementptr inbounds float, float addrspace(1)* %63, i64 %116
  %121 = load float, float addrspace(1)* %120, align 4, !tbaa !9
  %122 = fmul contract float %105, %121
  %123 = fadd contract float %119, %122
  %124 = getelementptr inbounds float, float addrspace(1)* %62, i64 %116
  %125 = load float, float addrspace(1)* %124, align 4, !tbaa !9
  %126 = fmul contract float %106, %125
  %127 = fadd contract float %123, %126
  br label %128

128:                                              ; preds = %115, %128
  %129 = phi i32 [ 20, %115 ], [ %138, %128 ]
  %130 = phi i32 [ 0, %115 ], [ %137, %128 ]
  %131 = add i32 %129, %130
  %132 = lshr i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [21 x float], [21 x float] addrspace(4)* @dev_binb, i64 0, i64 %133
  %135 = load float, float addrspace(4)* %134, align 4, !tbaa !9
  %136 = fcmp contract ult float %127, %135
  %137 = select i1 %136, i32 %132, i32 %130
  %138 = select i1 %136, i32 %129, i32 %132
  %139 = add i32 %137, 1
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %128, label %141, !llvm.loop !13

141:                                              ; preds = %128
  %142 = add i32 %138, -1
  %143 = zext i32 %137 to i64
  %144 = getelementptr inbounds [21 x float], [21 x float] addrspace(4)* @dev_binb, i64 0, i64 %143
  %145 = load float, float addrspace(4)* %144, align 4, !tbaa !9
  %146 = fcmp contract olt float %127, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = zext i32 %138 to i64
  %149 = getelementptr inbounds [21 x float], [21 x float] addrspace(4)* @dev_binb, i64 0, i64 %148
  %150 = load float, float addrspace(4)* %149, align 4, !tbaa !9
  %151 = fcmp contract ult float %127, %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = icmp ule i32 %93, %110
  %154 = select i1 %49, i1 %153, i1 false
  %155 = select i1 %154, i1 true, i1 %108
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %142, i32 %68
  %158 = atomicrmw add i32 addrspace(3)* %157, i32 1 syncscope("agent-one-as") monotonic, align 4
  br label %159

159:                                              ; preds = %152, %156, %147, %141
  %160 = add nuw i32 %110, 1
  %161 = icmp eq i32 %160, %5
  br i1 %161, label %113, label %109, !llvm.loop !14

162:                                              ; preds = %70
  %163 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %85, i32 %73
  %164 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !5
  %165 = load i32, i32 addrspace(3)* %163, align 4, !tbaa !5
  %166 = add i32 %165, %164
  store i32 %166, i32 addrspace(3)* %87, align 4, !tbaa !5
  br label %167

167:                                              ; preds = %162, %70
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %168 = add nuw nsw i32 %72, 12
  %169 = icmp ult i32 %7, 512
  %170 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %168, i32 %71
  br i1 %169, label %171, label %176

171:                                              ; preds = %167
  %172 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %168, i32 %73
  %173 = load i32, i32 addrspace(3)* %170, align 4, !tbaa !5
  %174 = load i32, i32 addrspace(3)* %172, align 4, !tbaa !5
  %175 = add i32 %174, %173
  store i32 %175, i32 addrspace(3)* %170, align 4, !tbaa !5
  br label %176

176:                                              ; preds = %171, %167
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %177 = or i32 %72, 16
  %178 = icmp ult i32 %177, 20
  %179 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %177, i32 %71
  br i1 %178, label %180, label %185

180:                                              ; preds = %176
  %181 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %177, i32 %73
  %182 = load i32, i32 addrspace(3)* %179, align 4, !tbaa !5
  %183 = load i32, i32 addrspace(3)* %181, align 4, !tbaa !5
  %184 = add i32 %183, %182
  store i32 %184, i32 addrspace(3)* %179, align 4, !tbaa !5
  br label %185

185:                                              ; preds = %180, %176
  %186 = icmp ult i32 %71, 32
  %187 = add nuw nsw i32 %71, 32
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %186, label %188, label %194

188:                                              ; preds = %185
  %189 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %71
  %190 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %187
  %191 = load i32, i32 addrspace(3)* %189, align 4, !tbaa !5
  %192 = load i32, i32 addrspace(3)* %190, align 4, !tbaa !5
  %193 = add i32 %192, %191
  store i32 %193, i32 addrspace(3)* %189, align 4, !tbaa !5
  br label %194

194:                                              ; preds = %188, %185
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %186, label %195, label %202

195:                                              ; preds = %194
  %196 = add nuw nsw i32 %72, 4
  %197 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %196, i32 %71
  %198 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %196, i32 %187
  %199 = load i32, i32 addrspace(3)* %197, align 4, !tbaa !5
  %200 = load i32, i32 addrspace(3)* %198, align 4, !tbaa !5
  %201 = add i32 %200, %199
  store i32 %201, i32 addrspace(3)* %197, align 4, !tbaa !5
  br label %202

202:                                              ; preds = %195, %194
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %186, label %203, label %212

203:                                              ; preds = %202
  %204 = add nuw nsw i32 %72, 8
  %205 = icmp ult i32 %7, 768
  %206 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %204, i32 %71
  br i1 %205, label %207, label %212

207:                                              ; preds = %203
  %208 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %204, i32 %187
  %209 = load i32, i32 addrspace(3)* %206, align 4, !tbaa !5
  %210 = load i32, i32 addrspace(3)* %208, align 4, !tbaa !5
  %211 = add i32 %210, %209
  store i32 %211, i32 addrspace(3)* %206, align 4, !tbaa !5
  br label %212

212:                                              ; preds = %207, %203, %202
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %186, label %213, label %222

213:                                              ; preds = %212
  %214 = add nuw nsw i32 %72, 12
  %215 = icmp ult i32 %7, 512
  %216 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %214, i32 %71
  br i1 %215, label %217, label %222

217:                                              ; preds = %213
  %218 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %214, i32 %187
  %219 = load i32, i32 addrspace(3)* %216, align 4, !tbaa !5
  %220 = load i32, i32 addrspace(3)* %218, align 4, !tbaa !5
  %221 = add i32 %220, %219
  store i32 %221, i32 addrspace(3)* %216, align 4, !tbaa !5
  br label %222

222:                                              ; preds = %217, %213, %212
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %186, label %223, label %232

223:                                              ; preds = %222
  %224 = or i32 %72, 16
  %225 = icmp ult i32 %224, 20
  %226 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %224, i32 %71
  br i1 %225, label %227, label %232

227:                                              ; preds = %223
  %228 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %224, i32 %187
  %229 = load i32, i32 addrspace(3)* %226, align 4, !tbaa !5
  %230 = load i32, i32 addrspace(3)* %228, align 4, !tbaa !5
  %231 = add i32 %230, %229
  store i32 %231, i32 addrspace(3)* %226, align 4, !tbaa !5
  br label %232

232:                                              ; preds = %227, %223, %222
  %233 = icmp ult i32 %71, 16
  %234 = add nuw nsw i32 %71, 16
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %233, label %235, label %241

235:                                              ; preds = %232
  %236 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %71
  %237 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %234
  %238 = load i32, i32 addrspace(3)* %236, align 4, !tbaa !5
  %239 = load i32, i32 addrspace(3)* %237, align 4, !tbaa !5
  %240 = add i32 %239, %238
  store i32 %240, i32 addrspace(3)* %236, align 4, !tbaa !5
  br label %241

241:                                              ; preds = %235, %232
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %233, label %242, label %249

242:                                              ; preds = %241
  %243 = add nuw nsw i32 %72, 4
  %244 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %243, i32 %71
  %245 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %243, i32 %234
  %246 = load i32, i32 addrspace(3)* %244, align 4, !tbaa !5
  %247 = load i32, i32 addrspace(3)* %245, align 4, !tbaa !5
  %248 = add i32 %247, %246
  store i32 %248, i32 addrspace(3)* %244, align 4, !tbaa !5
  br label %249

249:                                              ; preds = %242, %241
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %233, label %250, label %259

250:                                              ; preds = %249
  %251 = add nuw nsw i32 %72, 8
  %252 = icmp ult i32 %7, 768
  %253 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %251, i32 %71
  br i1 %252, label %254, label %259

254:                                              ; preds = %250
  %255 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %251, i32 %234
  %256 = load i32, i32 addrspace(3)* %253, align 4, !tbaa !5
  %257 = load i32, i32 addrspace(3)* %255, align 4, !tbaa !5
  %258 = add i32 %257, %256
  store i32 %258, i32 addrspace(3)* %253, align 4, !tbaa !5
  br label %259

259:                                              ; preds = %254, %250, %249
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %233, label %260, label %269

260:                                              ; preds = %259
  %261 = add nuw nsw i32 %72, 12
  %262 = icmp ult i32 %7, 512
  %263 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %261, i32 %71
  br i1 %262, label %264, label %269

264:                                              ; preds = %260
  %265 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %261, i32 %234
  %266 = load i32, i32 addrspace(3)* %263, align 4, !tbaa !5
  %267 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !5
  %268 = add i32 %267, %266
  store i32 %268, i32 addrspace(3)* %263, align 4, !tbaa !5
  br label %269

269:                                              ; preds = %264, %260, %259
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %233, label %270, label %279

270:                                              ; preds = %269
  %271 = or i32 %72, 16
  %272 = icmp ult i32 %271, 20
  %273 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %271, i32 %71
  br i1 %272, label %274, label %279

274:                                              ; preds = %270
  %275 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %271, i32 %234
  %276 = load i32, i32 addrspace(3)* %273, align 4, !tbaa !5
  %277 = load i32, i32 addrspace(3)* %275, align 4, !tbaa !5
  %278 = add i32 %277, %276
  store i32 %278, i32 addrspace(3)* %273, align 4, !tbaa !5
  br label %279

279:                                              ; preds = %274, %270, %269
  %280 = icmp ult i32 %71, 8
  %281 = add nuw nsw i32 %71, 8
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %280, label %282, label %288

282:                                              ; preds = %279
  %283 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %71
  %284 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %281
  %285 = load i32, i32 addrspace(3)* %283, align 4, !tbaa !5
  %286 = load i32, i32 addrspace(3)* %284, align 4, !tbaa !5
  %287 = add i32 %286, %285
  store i32 %287, i32 addrspace(3)* %283, align 4, !tbaa !5
  br label %288

288:                                              ; preds = %282, %279
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %280, label %289, label %296

289:                                              ; preds = %288
  %290 = add nuw nsw i32 %72, 4
  %291 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %290, i32 %71
  %292 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %290, i32 %281
  %293 = load i32, i32 addrspace(3)* %291, align 4, !tbaa !5
  %294 = load i32, i32 addrspace(3)* %292, align 4, !tbaa !5
  %295 = add i32 %294, %293
  store i32 %295, i32 addrspace(3)* %291, align 4, !tbaa !5
  br label %296

296:                                              ; preds = %289, %288
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %280, label %297, label %306

297:                                              ; preds = %296
  %298 = add nuw nsw i32 %72, 8
  %299 = icmp ult i32 %7, 768
  %300 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %298, i32 %71
  br i1 %299, label %301, label %306

301:                                              ; preds = %297
  %302 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %298, i32 %281
  %303 = load i32, i32 addrspace(3)* %300, align 4, !tbaa !5
  %304 = load i32, i32 addrspace(3)* %302, align 4, !tbaa !5
  %305 = add i32 %304, %303
  store i32 %305, i32 addrspace(3)* %300, align 4, !tbaa !5
  br label %306

306:                                              ; preds = %301, %297, %296
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %280, label %307, label %316

307:                                              ; preds = %306
  %308 = add nuw nsw i32 %72, 12
  %309 = icmp ult i32 %7, 512
  %310 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %308, i32 %71
  br i1 %309, label %311, label %316

311:                                              ; preds = %307
  %312 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %308, i32 %281
  %313 = load i32, i32 addrspace(3)* %310, align 4, !tbaa !5
  %314 = load i32, i32 addrspace(3)* %312, align 4, !tbaa !5
  %315 = add i32 %314, %313
  store i32 %315, i32 addrspace(3)* %310, align 4, !tbaa !5
  br label %316

316:                                              ; preds = %311, %307, %306
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %280, label %317, label %326

317:                                              ; preds = %316
  %318 = or i32 %72, 16
  %319 = icmp ult i32 %318, 20
  %320 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %318, i32 %71
  br i1 %319, label %321, label %326

321:                                              ; preds = %317
  %322 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %318, i32 %281
  %323 = load i32, i32 addrspace(3)* %320, align 4, !tbaa !5
  %324 = load i32, i32 addrspace(3)* %322, align 4, !tbaa !5
  %325 = add i32 %324, %323
  store i32 %325, i32 addrspace(3)* %320, align 4, !tbaa !5
  br label %326

326:                                              ; preds = %321, %317, %316
  %327 = icmp ult i32 %71, 4
  %328 = add nuw nsw i32 %71, 4
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %327, label %329, label %335

329:                                              ; preds = %326
  %330 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %71
  %331 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %328
  %332 = load i32, i32 addrspace(3)* %330, align 4, !tbaa !5
  %333 = load i32, i32 addrspace(3)* %331, align 4, !tbaa !5
  %334 = add i32 %333, %332
  store i32 %334, i32 addrspace(3)* %330, align 4, !tbaa !5
  br label %335

335:                                              ; preds = %329, %326
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %327, label %336, label %343

336:                                              ; preds = %335
  %337 = add nuw nsw i32 %72, 4
  %338 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %337, i32 %71
  %339 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %337, i32 %328
  %340 = load i32, i32 addrspace(3)* %338, align 4, !tbaa !5
  %341 = load i32, i32 addrspace(3)* %339, align 4, !tbaa !5
  %342 = add i32 %341, %340
  store i32 %342, i32 addrspace(3)* %338, align 4, !tbaa !5
  br label %343

343:                                              ; preds = %336, %335
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %327, label %344, label %353

344:                                              ; preds = %343
  %345 = add nuw nsw i32 %72, 8
  %346 = icmp ult i32 %7, 768
  %347 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %345, i32 %71
  br i1 %346, label %348, label %353

348:                                              ; preds = %344
  %349 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %345, i32 %328
  %350 = load i32, i32 addrspace(3)* %347, align 4, !tbaa !5
  %351 = load i32, i32 addrspace(3)* %349, align 4, !tbaa !5
  %352 = add i32 %351, %350
  store i32 %352, i32 addrspace(3)* %347, align 4, !tbaa !5
  br label %353

353:                                              ; preds = %348, %344, %343
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %327, label %354, label %363

354:                                              ; preds = %353
  %355 = add nuw nsw i32 %72, 12
  %356 = icmp ult i32 %7, 512
  %357 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %355, i32 %71
  br i1 %356, label %358, label %363

358:                                              ; preds = %354
  %359 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %355, i32 %328
  %360 = load i32, i32 addrspace(3)* %357, align 4, !tbaa !5
  %361 = load i32, i32 addrspace(3)* %359, align 4, !tbaa !5
  %362 = add i32 %361, %360
  store i32 %362, i32 addrspace(3)* %357, align 4, !tbaa !5
  br label %363

363:                                              ; preds = %358, %354, %353
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %327, label %364, label %373

364:                                              ; preds = %363
  %365 = or i32 %72, 16
  %366 = icmp ult i32 %365, 20
  %367 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %365, i32 %71
  br i1 %366, label %368, label %373

368:                                              ; preds = %364
  %369 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %365, i32 %328
  %370 = load i32, i32 addrspace(3)* %367, align 4, !tbaa !5
  %371 = load i32, i32 addrspace(3)* %369, align 4, !tbaa !5
  %372 = add i32 %371, %370
  store i32 %372, i32 addrspace(3)* %367, align 4, !tbaa !5
  br label %373

373:                                              ; preds = %368, %364, %363
  %374 = icmp ult i32 %71, 2
  %375 = add nuw nsw i32 %71, 2
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %374, label %376, label %382

376:                                              ; preds = %373
  %377 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %71
  %378 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %375
  %379 = load i32, i32 addrspace(3)* %377, align 4, !tbaa !5
  %380 = load i32, i32 addrspace(3)* %378, align 4, !tbaa !5
  %381 = add i32 %380, %379
  store i32 %381, i32 addrspace(3)* %377, align 4, !tbaa !5
  br label %382

382:                                              ; preds = %376, %373
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %374, label %383, label %390

383:                                              ; preds = %382
  %384 = add nuw nsw i32 %72, 4
  %385 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %384, i32 %71
  %386 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %384, i32 %375
  %387 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !5
  %388 = load i32, i32 addrspace(3)* %386, align 4, !tbaa !5
  %389 = add i32 %388, %387
  store i32 %389, i32 addrspace(3)* %385, align 4, !tbaa !5
  br label %390

390:                                              ; preds = %383, %382
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %374, label %391, label %400

391:                                              ; preds = %390
  %392 = add nuw nsw i32 %72, 8
  %393 = icmp ult i32 %7, 768
  %394 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %392, i32 %71
  br i1 %393, label %395, label %400

395:                                              ; preds = %391
  %396 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %392, i32 %375
  %397 = load i32, i32 addrspace(3)* %394, align 4, !tbaa !5
  %398 = load i32, i32 addrspace(3)* %396, align 4, !tbaa !5
  %399 = add i32 %398, %397
  store i32 %399, i32 addrspace(3)* %394, align 4, !tbaa !5
  br label %400

400:                                              ; preds = %395, %391, %390
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %374, label %401, label %410

401:                                              ; preds = %400
  %402 = add nuw nsw i32 %72, 12
  %403 = icmp ult i32 %7, 512
  %404 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %402, i32 %71
  br i1 %403, label %405, label %410

405:                                              ; preds = %401
  %406 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %402, i32 %375
  %407 = load i32, i32 addrspace(3)* %404, align 4, !tbaa !5
  %408 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !5
  %409 = add i32 %408, %407
  store i32 %409, i32 addrspace(3)* %404, align 4, !tbaa !5
  br label %410

410:                                              ; preds = %405, %401, %400
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %374, label %411, label %420

411:                                              ; preds = %410
  %412 = or i32 %72, 16
  %413 = icmp ult i32 %412, 20
  %414 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %412, i32 %71
  br i1 %413, label %415, label %420

415:                                              ; preds = %411
  %416 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %412, i32 %375
  %417 = load i32, i32 addrspace(3)* %414, align 4, !tbaa !5
  %418 = load i32, i32 addrspace(3)* %416, align 4, !tbaa !5
  %419 = add i32 %418, %417
  store i32 %419, i32 addrspace(3)* %414, align 4, !tbaa !5
  br label %420

420:                                              ; preds = %415, %411, %410
  %421 = icmp eq i32 %71, 0
  %422 = add nuw nsw i32 %71, 1
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %421, label %423, label %429

423:                                              ; preds = %420
  %424 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %71
  %425 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %72, i32 %422
  %426 = load i32, i32 addrspace(3)* %424, align 4, !tbaa !5
  %427 = load i32, i32 addrspace(3)* %425, align 4, !tbaa !5
  %428 = add i32 %427, %426
  store i32 %428, i32 addrspace(3)* %424, align 4, !tbaa !5
  br label %429

429:                                              ; preds = %423, %420
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %421, label %430, label %437

430:                                              ; preds = %429
  %431 = add nuw nsw i32 %72, 4
  %432 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %431, i32 %71
  %433 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %431, i32 %422
  %434 = load i32, i32 addrspace(3)* %432, align 4, !tbaa !5
  %435 = load i32, i32 addrspace(3)* %433, align 4, !tbaa !5
  %436 = add i32 %435, %434
  store i32 %436, i32 addrspace(3)* %432, align 4, !tbaa !5
  br label %437

437:                                              ; preds = %430, %429
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %421, label %438, label %447

438:                                              ; preds = %437
  %439 = add nuw nsw i32 %72, 8
  %440 = icmp ult i32 %7, 768
  %441 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %439, i32 %71
  br i1 %440, label %442, label %447

442:                                              ; preds = %438
  %443 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %439, i32 %422
  %444 = load i32, i32 addrspace(3)* %441, align 4, !tbaa !5
  %445 = load i32, i32 addrspace(3)* %443, align 4, !tbaa !5
  %446 = add i32 %445, %444
  store i32 %446, i32 addrspace(3)* %441, align 4, !tbaa !5
  br label %447

447:                                              ; preds = %442, %438, %437
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %421, label %448, label %457

448:                                              ; preds = %447
  %449 = add nuw nsw i32 %72, 12
  %450 = icmp ult i32 %7, 512
  %451 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %449, i32 %71
  br i1 %450, label %452, label %457

452:                                              ; preds = %448
  %453 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %449, i32 %422
  %454 = load i32, i32 addrspace(3)* %451, align 4, !tbaa !5
  %455 = load i32, i32 addrspace(3)* %453, align 4, !tbaa !5
  %456 = add i32 %455, %454
  store i32 %456, i32 addrspace(3)* %451, align 4, !tbaa !5
  br label %457

457:                                              ; preds = %452, %448, %447
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %421, label %458, label %467

458:                                              ; preds = %457
  %459 = or i32 %72, 16
  %460 = icmp ult i32 %459, 20
  %461 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %459, i32 %71
  br i1 %460, label %462, label %467

462:                                              ; preds = %458
  %463 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %459, i32 %422
  %464 = load i32, i32 addrspace(3)* %461, align 4, !tbaa !5
  %465 = load i32, i32 addrspace(3)* %463, align 4, !tbaa !5
  %466 = add i32 %465, %464
  store i32 %466, i32 addrspace(3)* %461, align 4, !tbaa !5
  br label %467

467:                                              ; preds = %462, %458, %457
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %468 = icmp ult i32 %7, 20
  br i1 %468, label %469, label %478

469:                                              ; preds = %467
  %470 = mul i32 %48, 20
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds i64, i64 addrspace(1)* %0, i64 %471
  %473 = zext i32 %7 to i64
  %474 = getelementptr inbounds i64, i64 addrspace(1)* %472, i64 %473
  %475 = getelementptr inbounds [20 x [128 x i32]], [20 x [128 x i32]] addrspace(3)* @_ZZ9gen_histsPmPfS0_S0_iiE10warp_hists, i32 0, i32 %7, i32 0
  %476 = load i32, i32 addrspace(3)* %475, align 16, !tbaa !5
  %477 = zext i32 %476 to i64
  store i64 %477, i64 addrspace(1)* %474, align 8, !tbaa !15
  br label %478

478:                                              ; preds = %469, %467
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
