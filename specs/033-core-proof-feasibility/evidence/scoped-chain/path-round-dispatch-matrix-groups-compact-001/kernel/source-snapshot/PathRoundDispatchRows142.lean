import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData142
import PathRoundDispatchInstructionMatrixData143
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9131 : actualRows9131=WordField.canonicalRows actualModulus 9131 (.badd 9129 9130) := by core033_kernel_decide
theorem stats9131 : actualRows9131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9131=5388 := by core033_kernel_decide
theorem rows9132 : actualRows9132=WordField.canonicalRows actualModulus 9132 (.badd 9131 7487) := by core033_kernel_decide
theorem stats9132 : actualRows9132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9132=5388 := by core033_kernel_decide
theorem rows9133 : actualRows9133=WordField.canonicalRows actualModulus 9133 (.rotr 9117 2) := by core033_kernel_decide
theorem stats9133 : actualRows9133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9133=5124 := by core033_kernel_decide
theorem rows9134 : actualRows9134=WordField.canonicalRows actualModulus 9134 (.rotr 9117 13) := by core033_kernel_decide
theorem stats9134 : actualRows9134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9134=5124 := by core033_kernel_decide
theorem rows9135 : actualRows9135=WordField.canonicalRows actualModulus 9135 (.bxor 9133 9134) := by core033_kernel_decide
theorem stats9135 : actualRows9135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9135=7428 := by core033_kernel_decide
theorem rows9136 : actualRows9136=WordField.canonicalRows actualModulus 9136 (.rotr 9117 22) := by core033_kernel_decide
theorem stats9136 : actualRows9136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9136=5124 := by core033_kernel_decide
theorem rows9137 : actualRows9137=WordField.canonicalRows actualModulus 9137 (.bxor 9135 9136) := by core033_kernel_decide
theorem stats9137 : actualRows9137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9137=7428 := by core033_kernel_decide
theorem rows9138 : actualRows9138=WordField.canonicalRows actualModulus 9138 (.band 9117 9090) := by core033_kernel_decide
theorem stats9138 : actualRows9138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9138=5124 := by core033_kernel_decide
theorem rows9139 : actualRows9139=WordField.canonicalRows actualModulus 9139 (.band 9117 9063) := by core033_kernel_decide
theorem stats9139 : actualRows9139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9139=5124 := by core033_kernel_decide
theorem rows9140 : actualRows9140=WordField.canonicalRows actualModulus 9140 (.bxor 9138 9139) := by core033_kernel_decide
theorem stats9140 : actualRows9140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9140=7428 := by core033_kernel_decide
theorem rows9141 : actualRows9141=WordField.canonicalRows actualModulus 9141 (.band 9090 9063) := by core033_kernel_decide
theorem stats9141 : actualRows9141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9141=5124 := by core033_kernel_decide
theorem rows9142 : actualRows9142=WordField.canonicalRows actualModulus 9142 (.bxor 9140 9141) := by core033_kernel_decide
theorem stats9142 : actualRows9142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9142=7428 := by core033_kernel_decide
theorem rows9143 : actualRows9143=WordField.canonicalRows actualModulus 9143 (.badd 9137 9142) := by core033_kernel_decide
theorem stats9143 : actualRows9143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9143=5388 := by core033_kernel_decide
theorem rows9144 : actualRows9144=WordField.canonicalRows actualModulus 9144 (.badd 9132 9143) := by core033_kernel_decide
theorem stats9144 : actualRows9144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9144=5388 := by core033_kernel_decide
theorem rows9145 : actualRows9145=WordField.canonicalRows actualModulus 9145 (.badd 9036 9132) := by core033_kernel_decide
theorem stats9145 : actualRows9145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9145=5388 := by core033_kernel_decide
theorem rows9146 : actualRows9146=WordField.canonicalRows actualModulus 9146 (.rotr 9145 6) := by core033_kernel_decide
theorem stats9146 : actualRows9146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9146=5124 := by core033_kernel_decide
theorem rows9147 : actualRows9147=WordField.canonicalRows actualModulus 9147 (.rotr 9145 11) := by core033_kernel_decide
theorem stats9147 : actualRows9147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9147=5124 := by core033_kernel_decide
theorem rows9148 : actualRows9148=WordField.canonicalRows actualModulus 9148 (.bxor 9146 9147) := by core033_kernel_decide
theorem stats9148 : actualRows9148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9148=7428 := by core033_kernel_decide
theorem rows9149 : actualRows9149=WordField.canonicalRows actualModulus 9149 (.rotr 9145 25) := by core033_kernel_decide
theorem stats9149 : actualRows9149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9149=5124 := by core033_kernel_decide
theorem rows9150 : actualRows9150=WordField.canonicalRows actualModulus 9150 (.bxor 9148 9149) := by core033_kernel_decide
theorem stats9150 : actualRows9150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9150=7428 := by core033_kernel_decide
theorem rows9151 : actualRows9151=WordField.canonicalRows actualModulus 9151 (.badd 9064 9150) := by core033_kernel_decide
theorem stats9151 : actualRows9151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9151=5388 := by core033_kernel_decide
theorem rows9152 : actualRows9152=WordField.canonicalRows actualModulus 9152 (.band 9145 9118) := by core033_kernel_decide
theorem stats9152 : actualRows9152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9152=5124 := by core033_kernel_decide
theorem rows9153 : actualRows9153=WordField.canonicalRows actualModulus 9153 (.bnot 9145) := by core033_kernel_decide
theorem stats9153 : actualRows9153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9153=6276 := by core033_kernel_decide
theorem rows9154 : actualRows9154=WordField.canonicalRows actualModulus 9154 (.band 9153 9091) := by core033_kernel_decide
theorem stats9154 : actualRows9154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9154=5124 := by core033_kernel_decide
theorem rows9155 : actualRows9155=WordField.canonicalRows actualModulus 9155 (.bxor 9152 9154) := by core033_kernel_decide
theorem stats9155 : actualRows9155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9155=7428 := by core033_kernel_decide
theorem rows9156 : actualRows9156=WordField.canonicalRows actualModulus 9156 (.badd 9151 9155) := by core033_kernel_decide
theorem stats9156 : actualRows9156.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9156=5388 := by core033_kernel_decide
theorem rows9157 : actualRows9157=WordField.canonicalRows actualModulus 9157 (.literal (BitVec.ofNat 32 2361852424)) := by core033_kernel_decide
theorem stats9157 : actualRows9157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9157=3540 := by core033_kernel_decide
theorem rows9158 : actualRows9158=WordField.canonicalRows actualModulus 9158 (.badd 9156 9157) := by core033_kernel_decide
theorem stats9158 : actualRows9158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9158=5388 := by core033_kernel_decide
theorem rows9159 : actualRows9159=WordField.canonicalRows actualModulus 9159 (.badd 9158 7500) := by core033_kernel_decide
theorem stats9159 : actualRows9159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9159=5388 := by core033_kernel_decide
theorem rows9160 : actualRows9160=WordField.canonicalRows actualModulus 9160 (.rotr 9144 2) := by core033_kernel_decide
theorem stats9160 : actualRows9160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9160=5124 := by core033_kernel_decide
theorem rows9161 : actualRows9161=WordField.canonicalRows actualModulus 9161 (.rotr 9144 13) := by core033_kernel_decide
theorem stats9161 : actualRows9161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9161=5124 := by core033_kernel_decide
theorem rows9162 : actualRows9162=WordField.canonicalRows actualModulus 9162 (.bxor 9160 9161) := by core033_kernel_decide
theorem stats9162 : actualRows9162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9162=7428 := by core033_kernel_decide
theorem rows9163 : actualRows9163=WordField.canonicalRows actualModulus 9163 (.rotr 9144 22) := by core033_kernel_decide
theorem stats9163 : actualRows9163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9163=5124 := by core033_kernel_decide
theorem rows9164 : actualRows9164=WordField.canonicalRows actualModulus 9164 (.bxor 9162 9163) := by core033_kernel_decide
theorem stats9164 : actualRows9164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9164=7428 := by core033_kernel_decide
theorem rows9165 : actualRows9165=WordField.canonicalRows actualModulus 9165 (.band 9144 9117) := by core033_kernel_decide
theorem stats9165 : actualRows9165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9165=5124 := by core033_kernel_decide
theorem rows9166 : actualRows9166=WordField.canonicalRows actualModulus 9166 (.band 9144 9090) := by core033_kernel_decide
theorem stats9166 : actualRows9166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9166=5124 := by core033_kernel_decide
theorem rows9167 : actualRows9167=WordField.canonicalRows actualModulus 9167 (.bxor 9165 9166) := by core033_kernel_decide
theorem stats9167 : actualRows9167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9167=7428 := by core033_kernel_decide
theorem rows9168 : actualRows9168=WordField.canonicalRows actualModulus 9168 (.band 9117 9090) := by core033_kernel_decide
theorem stats9168 : actualRows9168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9168=5124 := by core033_kernel_decide
theorem rows9169 : actualRows9169=WordField.canonicalRows actualModulus 9169 (.bxor 9167 9168) := by core033_kernel_decide
theorem stats9169 : actualRows9169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9169=7428 := by core033_kernel_decide
theorem rows9170 : actualRows9170=WordField.canonicalRows actualModulus 9170 (.badd 9164 9169) := by core033_kernel_decide
theorem stats9170 : actualRows9170.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9170=5388 := by core033_kernel_decide
theorem rows9171 : actualRows9171=WordField.canonicalRows actualModulus 9171 (.badd 9159 9170) := by core033_kernel_decide
theorem stats9171 : actualRows9171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9171=5388 := by core033_kernel_decide
theorem rows9172 : actualRows9172=WordField.canonicalRows actualModulus 9172 (.badd 9063 9159) := by core033_kernel_decide
theorem stats9172 : actualRows9172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9172=5388 := by core033_kernel_decide
theorem rows9173 : actualRows9173=WordField.canonicalRows actualModulus 9173 (.rotr 9172 6) := by core033_kernel_decide
theorem stats9173 : actualRows9173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9173=5124 := by core033_kernel_decide
theorem rows9174 : actualRows9174=WordField.canonicalRows actualModulus 9174 (.rotr 9172 11) := by core033_kernel_decide
theorem stats9174 : actualRows9174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9174=5124 := by core033_kernel_decide
theorem rows9175 : actualRows9175=WordField.canonicalRows actualModulus 9175 (.bxor 9173 9174) := by core033_kernel_decide
theorem stats9175 : actualRows9175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9175=7428 := by core033_kernel_decide
theorem rows9176 : actualRows9176=WordField.canonicalRows actualModulus 9176 (.rotr 9172 25) := by core033_kernel_decide
theorem stats9176 : actualRows9176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9176=5124 := by core033_kernel_decide
theorem rows9177 : actualRows9177=WordField.canonicalRows actualModulus 9177 (.bxor 9175 9176) := by core033_kernel_decide
theorem stats9177 : actualRows9177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9177=7428 := by core033_kernel_decide
theorem rows9178 : actualRows9178=WordField.canonicalRows actualModulus 9178 (.badd 9091 9177) := by core033_kernel_decide
theorem stats9178 : actualRows9178.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9178=5388 := by core033_kernel_decide
theorem rows9179 : actualRows9179=WordField.canonicalRows actualModulus 9179 (.band 9172 9145) := by core033_kernel_decide
theorem stats9179 : actualRows9179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9179=5124 := by core033_kernel_decide
theorem rows9180 : actualRows9180=WordField.canonicalRows actualModulus 9180 (.bnot 9172) := by core033_kernel_decide
theorem stats9180 : actualRows9180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9180=6276 := by core033_kernel_decide
theorem rows9181 : actualRows9181=WordField.canonicalRows actualModulus 9181 (.band 9180 9118) := by core033_kernel_decide
theorem stats9181 : actualRows9181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9181=5124 := by core033_kernel_decide
theorem rows9182 : actualRows9182=WordField.canonicalRows actualModulus 9182 (.bxor 9179 9181) := by core033_kernel_decide
theorem stats9182 : actualRows9182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9182=7428 := by core033_kernel_decide
theorem rows9183 : actualRows9183=WordField.canonicalRows actualModulus 9183 (.badd 9178 9182) := by core033_kernel_decide
theorem stats9183 : actualRows9183.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9183=5388 := by core033_kernel_decide
theorem rows9184 : actualRows9184=WordField.canonicalRows actualModulus 9184 (.literal (BitVec.ofNat 32 2428436474)) := by core033_kernel_decide
theorem stats9184 : actualRows9184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9184=4404 := by core033_kernel_decide
theorem rows9185 : actualRows9185=WordField.canonicalRows actualModulus 9185 (.badd 9183 9184) := by core033_kernel_decide
theorem stats9185 : actualRows9185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9185=5388 := by core033_kernel_decide
theorem rows9186 : actualRows9186=WordField.canonicalRows actualModulus 9186 (.badd 9185 7513) := by core033_kernel_decide
theorem stats9186 : actualRows9186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9186=5388 := by core033_kernel_decide
theorem rows9187 : actualRows9187=WordField.canonicalRows actualModulus 9187 (.rotr 9171 2) := by core033_kernel_decide
theorem stats9187 : actualRows9187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9187=5124 := by core033_kernel_decide
theorem rows9188 : actualRows9188=WordField.canonicalRows actualModulus 9188 (.rotr 9171 13) := by core033_kernel_decide
theorem stats9188 : actualRows9188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9188=5124 := by core033_kernel_decide
theorem rows9189 : actualRows9189=WordField.canonicalRows actualModulus 9189 (.bxor 9187 9188) := by core033_kernel_decide
theorem stats9189 : actualRows9189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9189=7428 := by core033_kernel_decide
theorem rows9190 : actualRows9190=WordField.canonicalRows actualModulus 9190 (.rotr 9171 22) := by core033_kernel_decide
theorem stats9190 : actualRows9190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9190=5124 := by core033_kernel_decide
theorem rows9191 : actualRows9191=WordField.canonicalRows actualModulus 9191 (.bxor 9189 9190) := by core033_kernel_decide
theorem stats9191 : actualRows9191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9191=7428 := by core033_kernel_decide
theorem rows9192 : actualRows9192=WordField.canonicalRows actualModulus 9192 (.band 9171 9144) := by core033_kernel_decide
theorem stats9192 : actualRows9192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9192=5124 := by core033_kernel_decide
theorem rows9193 : actualRows9193=WordField.canonicalRows actualModulus 9193 (.band 9171 9117) := by core033_kernel_decide
theorem stats9193 : actualRows9193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9193=5124 := by core033_kernel_decide
theorem rows9194 : actualRows9194=WordField.canonicalRows actualModulus 9194 (.bxor 9192 9193) := by core033_kernel_decide
theorem stats9194 : actualRows9194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9194=7428 := by core033_kernel_decide
def partRows142 : List R1CS.Row := actualRows9131++actualRows9132++actualRows9133++actualRows9134++actualRows9135++actualRows9136++actualRows9137++actualRows9138++actualRows9139++actualRows9140++actualRows9141++actualRows9142++actualRows9143++actualRows9144++actualRows9145++actualRows9146++actualRows9147++actualRows9148++actualRows9149++actualRows9150++actualRows9151++actualRows9152++actualRows9153++actualRows9154++actualRows9155++actualRows9156++actualRows9157++actualRows9158++actualRows9159++actualRows9160++actualRows9161++actualRows9162++actualRows9163++actualRows9164++actualRows9165++actualRows9166++actualRows9167++actualRows9168++actualRows9169++actualRows9170++actualRows9171++actualRows9172++actualRows9173++actualRows9174++actualRows9175++actualRows9176++actualRows9177++actualRows9178++actualRows9179++actualRows9180++actualRows9181++actualRows9182++actualRows9183++actualRows9184++actualRows9185++actualRows9186++actualRows9187++actualRows9188++actualRows9189++actualRows9190++actualRows9191++actualRows9192++actualRows9193++actualRows9194
def partOps142 : List WordIR.Op := [.badd 9129 9130,.badd 9131 7487,.rotr 9117 2,.rotr 9117 13,.bxor 9133 9134,.rotr 9117 22,.bxor 9135 9136,.band 9117 9090,.band 9117 9063,.bxor 9138 9139,.band 9090 9063,.bxor 9140 9141,.badd 9137 9142,.badd 9132 9143,.badd 9036 9132,.rotr 9145 6,.rotr 9145 11,.bxor 9146 9147,.rotr 9145 25,.bxor 9148 9149,.badd 9064 9150,.band 9145 9118,.bnot 9145,.band 9153 9091,.bxor 9152 9154,.badd 9151 9155,.literal (BitVec.ofNat 32 2361852424),.badd 9156 9157,.badd 9158 7500,.rotr 9144 2,.rotr 9144 13,.bxor 9160 9161,.rotr 9144 22,.bxor 9162 9163,.band 9144 9117,.band 9144 9090,.bxor 9165 9166,.band 9117 9090,.bxor 9167 9168,.badd 9164 9169,.badd 9159 9170,.badd 9063 9159,.rotr 9172 6,.rotr 9172 11,.bxor 9173 9174,.rotr 9172 25,.bxor 9175 9176,.badd 9091 9177,.band 9172 9145,.bnot 9172,.band 9180 9118,.bxor 9179 9181,.badd 9178 9182,.literal (BitVec.ofNat 32 2428436474),.badd 9183 9184,.badd 9185 7513,.rotr 9171 2,.rotr 9171 13,.bxor 9187 9188,.rotr 9171 22,.bxor 9189 9190,.band 9171 9144,.band 9171 9117,.bxor 9192 9193]
theorem partExact142 : partRows142=WordField.rows actualModulus 9131 partOps142 := by
  simp only [partRows142,partOps142,WordField.rows,rows9131,rows9132,rows9133,rows9134,rows9135,rows9136,rows9137,rows9138,rows9139,rows9140,rows9141,rows9142,rows9143,rows9144,rows9145,rows9146,rows9147,rows9148,rows9149,rows9150,rows9151,rows9152,rows9153,rows9154,rows9155,rows9156,rows9157,rows9158,rows9159,rows9160,rows9161,rows9162,rows9163,rows9164,rows9165,rows9166,rows9167,rows9168,rows9169,rows9170,rows9171,rows9172,rows9173,rows9174,rows9175,rows9176,rows9177,rows9178,rows9179,rows9180,rows9181,rows9182,rows9183,rows9184,rows9185,rows9186,rows9187,rows9188,rows9189,rows9190,rows9191,rows9192,rows9193,rows9194,List.append_assoc,List.append_nil]
theorem partLength142 : partOps142.length=64 := by decide
theorem partStats142 : partRows142.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows142=371328 := by
  simp only [partRows142,List.length_append,MatrixRowBlocks.rows_weight_append,stats9131.1,stats9131.2,stats9132.1,stats9132.2,stats9133.1,stats9133.2,stats9134.1,stats9134.2,stats9135.1,stats9135.2,stats9136.1,stats9136.2,stats9137.1,stats9137.2,stats9138.1,stats9138.2,stats9139.1,stats9139.2,stats9140.1,stats9140.2,stats9141.1,stats9141.2,stats9142.1,stats9142.2,stats9143.1,stats9143.2,stats9144.1,stats9144.2,stats9145.1,stats9145.2,stats9146.1,stats9146.2,stats9147.1,stats9147.2,stats9148.1,stats9148.2,stats9149.1,stats9149.2,stats9150.1,stats9150.2,stats9151.1,stats9151.2,stats9152.1,stats9152.2,stats9153.1,stats9153.2,stats9154.1,stats9154.2,stats9155.1,stats9155.2,stats9156.1,stats9156.2,stats9157.1,stats9157.2,stats9158.1,stats9158.2,stats9159.1,stats9159.2,stats9160.1,stats9160.2,stats9161.1,stats9161.2,stats9162.1,stats9162.2,stats9163.1,stats9163.2,stats9164.1,stats9164.2,stats9165.1,stats9165.2,stats9166.1,stats9166.2,stats9167.1,stats9167.2,stats9168.1,stats9168.2,stats9169.1,stats9169.2,stats9170.1,stats9170.2,stats9171.1,stats9171.2,stats9172.1,stats9172.2,stats9173.1,stats9173.2,stats9174.1,stats9174.2,stats9175.1,stats9175.2,stats9176.1,stats9176.2,stats9177.1,stats9177.2,stats9178.1,stats9178.2,stats9179.1,stats9179.2,stats9180.1,stats9180.2,stats9181.1,stats9181.2,stats9182.1,stats9182.2,stats9183.1,stats9183.2,stats9184.1,stats9184.2,stats9185.1,stats9185.2,stats9186.1,stats9186.2,stats9187.1,stats9187.2,stats9188.1,stats9188.2,stats9189.1,stats9189.2,stats9190.1,stats9190.2,stats9191.1,stats9191.2,stats9192.1,stats9192.2,stats9193.1,stats9193.2,stats9194.1,stats9194.2]
  decide
end PathRoundDispatchCheckedRows
