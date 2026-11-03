import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData142
import AuthenticatedBranchRoundInstructionMatrixData143
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9142 : actualRows9142=WordField.canonicalRows actualModulus 9142 (.band 9141 9079) := by core033_kernel_decide
theorem stats9142 : actualRows9142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9142=5124 := by core033_kernel_decide
theorem rows9143 : actualRows9143=WordField.canonicalRows actualModulus 9143 (.bxor 9140 9142) := by core033_kernel_decide
theorem stats9143 : actualRows9143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9143=7428 := by core033_kernel_decide
theorem rows9144 : actualRows9144=WordField.canonicalRows actualModulus 9144 (.badd 9139 9143) := by core033_kernel_decide
theorem stats9144 : actualRows9144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9144=5388 := by core033_kernel_decide
theorem rows9145 : actualRows9145=WordField.canonicalRows actualModulus 9145 (.literal (BitVec.ofNat 32 2614888103)) := by core033_kernel_decide
theorem stats9145 : actualRows9145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9145=4044 := by core033_kernel_decide
theorem rows9146 : actualRows9146=WordField.canonicalRows actualModulus 9146 (.badd 9144 9145) := by core033_kernel_decide
theorem stats9146 : actualRows9146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9146=5388 := by core033_kernel_decide
theorem rows9147 : actualRows9147=WordField.canonicalRows actualModulus 9147 (.badd 9146 6973) := by core033_kernel_decide
theorem stats9147 : actualRows9147.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9147=5388 := by core033_kernel_decide
theorem rows9148 : actualRows9148=WordField.canonicalRows actualModulus 9148 (.rotr 9132 2) := by core033_kernel_decide
theorem stats9148 : actualRows9148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9148=5124 := by core033_kernel_decide
theorem rows9149 : actualRows9149=WordField.canonicalRows actualModulus 9149 (.rotr 9132 13) := by core033_kernel_decide
theorem stats9149 : actualRows9149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9149=5124 := by core033_kernel_decide
theorem rows9150 : actualRows9150=WordField.canonicalRows actualModulus 9150 (.bxor 9148 9149) := by core033_kernel_decide
theorem stats9150 : actualRows9150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9150=7428 := by core033_kernel_decide
theorem rows9151 : actualRows9151=WordField.canonicalRows actualModulus 9151 (.rotr 9132 22) := by core033_kernel_decide
theorem stats9151 : actualRows9151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9151=5124 := by core033_kernel_decide
theorem rows9152 : actualRows9152=WordField.canonicalRows actualModulus 9152 (.bxor 9150 9151) := by core033_kernel_decide
theorem stats9152 : actualRows9152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9152=7428 := by core033_kernel_decide
theorem rows9153 : actualRows9153=WordField.canonicalRows actualModulus 9153 (.band 9132 9105) := by core033_kernel_decide
theorem stats9153 : actualRows9153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9153=5124 := by core033_kernel_decide
theorem rows9154 : actualRows9154=WordField.canonicalRows actualModulus 9154 (.band 9132 9078) := by core033_kernel_decide
theorem stats9154 : actualRows9154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9154=5124 := by core033_kernel_decide
theorem rows9155 : actualRows9155=WordField.canonicalRows actualModulus 9155 (.bxor 9153 9154) := by core033_kernel_decide
theorem stats9155 : actualRows9155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9155=7428 := by core033_kernel_decide
theorem rows9156 : actualRows9156=WordField.canonicalRows actualModulus 9156 (.band 9105 9078) := by core033_kernel_decide
theorem stats9156 : actualRows9156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9156=5124 := by core033_kernel_decide
theorem rows9157 : actualRows9157=WordField.canonicalRows actualModulus 9157 (.bxor 9155 9156) := by core033_kernel_decide
theorem stats9157 : actualRows9157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9157=7428 := by core033_kernel_decide
theorem rows9158 : actualRows9158=WordField.canonicalRows actualModulus 9158 (.badd 9152 9157) := by core033_kernel_decide
theorem stats9158 : actualRows9158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9158=5388 := by core033_kernel_decide
theorem rows9159 : actualRows9159=WordField.canonicalRows actualModulus 9159 (.badd 9147 9158) := by core033_kernel_decide
theorem stats9159 : actualRows9159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9159=5388 := by core033_kernel_decide
theorem rows9160 : actualRows9160=WordField.canonicalRows actualModulus 9160 (.badd 9051 9147) := by core033_kernel_decide
theorem stats9160 : actualRows9160.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9160=5388 := by core033_kernel_decide
theorem rows9161 : actualRows9161=WordField.canonicalRows actualModulus 9161 (.rotr 9160 6) := by core033_kernel_decide
theorem stats9161 : actualRows9161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9161=5124 := by core033_kernel_decide
theorem rows9162 : actualRows9162=WordField.canonicalRows actualModulus 9162 (.rotr 9160 11) := by core033_kernel_decide
theorem stats9162 : actualRows9162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9162=5124 := by core033_kernel_decide
theorem rows9163 : actualRows9163=WordField.canonicalRows actualModulus 9163 (.bxor 9161 9162) := by core033_kernel_decide
theorem stats9163 : actualRows9163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9163=7428 := by core033_kernel_decide
theorem rows9164 : actualRows9164=WordField.canonicalRows actualModulus 9164 (.rotr 9160 25) := by core033_kernel_decide
theorem stats9164 : actualRows9164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9164=5124 := by core033_kernel_decide
theorem rows9165 : actualRows9165=WordField.canonicalRows actualModulus 9165 (.bxor 9163 9164) := by core033_kernel_decide
theorem stats9165 : actualRows9165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9165=7428 := by core033_kernel_decide
theorem rows9166 : actualRows9166=WordField.canonicalRows actualModulus 9166 (.badd 9079 9165) := by core033_kernel_decide
theorem stats9166 : actualRows9166.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9166=5388 := by core033_kernel_decide
theorem rows9167 : actualRows9167=WordField.canonicalRows actualModulus 9167 (.band 9160 9133) := by core033_kernel_decide
theorem stats9167 : actualRows9167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9167=5124 := by core033_kernel_decide
theorem rows9168 : actualRows9168=WordField.canonicalRows actualModulus 9168 (.bnot 9160) := by core033_kernel_decide
theorem stats9168 : actualRows9168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9168=6276 := by core033_kernel_decide
theorem rows9169 : actualRows9169=WordField.canonicalRows actualModulus 9169 (.band 9168 9106) := by core033_kernel_decide
theorem stats9169 : actualRows9169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9169=5124 := by core033_kernel_decide
theorem rows9170 : actualRows9170=WordField.canonicalRows actualModulus 9170 (.bxor 9167 9169) := by core033_kernel_decide
theorem stats9170 : actualRows9170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9170=7428 := by core033_kernel_decide
theorem rows9171 : actualRows9171=WordField.canonicalRows actualModulus 9171 (.badd 9166 9170) := by core033_kernel_decide
theorem stats9171 : actualRows9171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9171=5388 := by core033_kernel_decide
theorem rows9172 : actualRows9172=WordField.canonicalRows actualModulus 9172 (.literal (BitVec.ofNat 32 3248222580)) := by core033_kernel_decide
theorem stats9172 : actualRows9172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9172=4044 := by core033_kernel_decide
theorem rows9173 : actualRows9173=WordField.canonicalRows actualModulus 9173 (.badd 9171 9172) := by core033_kernel_decide
theorem stats9173 : actualRows9173.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9173=5388 := by core033_kernel_decide
theorem rows9174 : actualRows9174=WordField.canonicalRows actualModulus 9174 (.badd 9173 6979) := by core033_kernel_decide
theorem stats9174 : actualRows9174.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9174=5388 := by core033_kernel_decide
theorem rows9175 : actualRows9175=WordField.canonicalRows actualModulus 9175 (.rotr 9159 2) := by core033_kernel_decide
theorem stats9175 : actualRows9175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9175=5124 := by core033_kernel_decide
theorem rows9176 : actualRows9176=WordField.canonicalRows actualModulus 9176 (.rotr 9159 13) := by core033_kernel_decide
theorem stats9176 : actualRows9176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9176=5124 := by core033_kernel_decide
theorem rows9177 : actualRows9177=WordField.canonicalRows actualModulus 9177 (.bxor 9175 9176) := by core033_kernel_decide
theorem stats9177 : actualRows9177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9177=7428 := by core033_kernel_decide
theorem rows9178 : actualRows9178=WordField.canonicalRows actualModulus 9178 (.rotr 9159 22) := by core033_kernel_decide
theorem stats9178 : actualRows9178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9178=5124 := by core033_kernel_decide
theorem rows9179 : actualRows9179=WordField.canonicalRows actualModulus 9179 (.bxor 9177 9178) := by core033_kernel_decide
theorem stats9179 : actualRows9179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9179=7428 := by core033_kernel_decide
theorem rows9180 : actualRows9180=WordField.canonicalRows actualModulus 9180 (.band 9159 9132) := by core033_kernel_decide
theorem stats9180 : actualRows9180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9180=5124 := by core033_kernel_decide
theorem rows9181 : actualRows9181=WordField.canonicalRows actualModulus 9181 (.band 9159 9105) := by core033_kernel_decide
theorem stats9181 : actualRows9181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9181=5124 := by core033_kernel_decide
theorem rows9182 : actualRows9182=WordField.canonicalRows actualModulus 9182 (.bxor 9180 9181) := by core033_kernel_decide
theorem stats9182 : actualRows9182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9182=7428 := by core033_kernel_decide
theorem rows9183 : actualRows9183=WordField.canonicalRows actualModulus 9183 (.band 9132 9105) := by core033_kernel_decide
theorem stats9183 : actualRows9183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9183=5124 := by core033_kernel_decide
theorem rows9184 : actualRows9184=WordField.canonicalRows actualModulus 9184 (.bxor 9182 9183) := by core033_kernel_decide
theorem stats9184 : actualRows9184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9184=7428 := by core033_kernel_decide
theorem rows9185 : actualRows9185=WordField.canonicalRows actualModulus 9185 (.badd 9179 9184) := by core033_kernel_decide
theorem stats9185 : actualRows9185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9185=5388 := by core033_kernel_decide
theorem rows9186 : actualRows9186=WordField.canonicalRows actualModulus 9186 (.badd 9174 9185) := by core033_kernel_decide
theorem stats9186 : actualRows9186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9186=5388 := by core033_kernel_decide
theorem rows9187 : actualRows9187=WordField.canonicalRows actualModulus 9187 (.badd 9078 9174) := by core033_kernel_decide
theorem stats9187 : actualRows9187.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9187=5388 := by core033_kernel_decide
theorem rows9188 : actualRows9188=WordField.canonicalRows actualModulus 9188 (.rotr 9187 6) := by core033_kernel_decide
theorem stats9188 : actualRows9188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9188=5124 := by core033_kernel_decide
theorem rows9189 : actualRows9189=WordField.canonicalRows actualModulus 9189 (.rotr 9187 11) := by core033_kernel_decide
theorem stats9189 : actualRows9189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9189=5124 := by core033_kernel_decide
theorem rows9190 : actualRows9190=WordField.canonicalRows actualModulus 9190 (.bxor 9188 9189) := by core033_kernel_decide
theorem stats9190 : actualRows9190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9190=7428 := by core033_kernel_decide
theorem rows9191 : actualRows9191=WordField.canonicalRows actualModulus 9191 (.rotr 9187 25) := by core033_kernel_decide
theorem stats9191 : actualRows9191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9191=5124 := by core033_kernel_decide
theorem rows9192 : actualRows9192=WordField.canonicalRows actualModulus 9192 (.bxor 9190 9191) := by core033_kernel_decide
theorem stats9192 : actualRows9192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9192=7428 := by core033_kernel_decide
theorem rows9193 : actualRows9193=WordField.canonicalRows actualModulus 9193 (.badd 9106 9192) := by core033_kernel_decide
theorem stats9193 : actualRows9193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9193=5388 := by core033_kernel_decide
theorem rows9194 : actualRows9194=WordField.canonicalRows actualModulus 9194 (.band 9187 9160) := by core033_kernel_decide
theorem stats9194 : actualRows9194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9194=5124 := by core033_kernel_decide
theorem rows9195 : actualRows9195=WordField.canonicalRows actualModulus 9195 (.bnot 9187) := by core033_kernel_decide
theorem stats9195 : actualRows9195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9195=6276 := by core033_kernel_decide
theorem rows9196 : actualRows9196=WordField.canonicalRows actualModulus 9196 (.band 9195 9133) := by core033_kernel_decide
theorem stats9196 : actualRows9196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9196=5124 := by core033_kernel_decide
theorem rows9197 : actualRows9197=WordField.canonicalRows actualModulus 9197 (.bxor 9194 9196) := by core033_kernel_decide
theorem stats9197 : actualRows9197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9197=7428 := by core033_kernel_decide
theorem rows9198 : actualRows9198=WordField.canonicalRows actualModulus 9198 (.badd 9193 9197) := by core033_kernel_decide
theorem stats9198 : actualRows9198.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9198=5388 := by core033_kernel_decide
theorem rows9199 : actualRows9199=WordField.canonicalRows actualModulus 9199 (.literal (BitVec.ofNat 32 3835390401)) := by core033_kernel_decide
theorem stats9199 : actualRows9199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9199=3972 := by core033_kernel_decide
theorem rows9200 : actualRows9200=WordField.canonicalRows actualModulus 9200 (.badd 9198 9199) := by core033_kernel_decide
theorem stats9200 : actualRows9200.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9200=5388 := by core033_kernel_decide
theorem rows9201 : actualRows9201=WordField.canonicalRows actualModulus 9201 (.badd 9200 8144) := by core033_kernel_decide
theorem stats9201 : actualRows9201.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9201=5388 := by core033_kernel_decide
theorem rows9202 : actualRows9202=WordField.canonicalRows actualModulus 9202 (.rotr 9186 2) := by core033_kernel_decide
theorem stats9202 : actualRows9202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9202=5124 := by core033_kernel_decide
theorem rows9203 : actualRows9203=WordField.canonicalRows actualModulus 9203 (.rotr 9186 13) := by core033_kernel_decide
theorem stats9203 : actualRows9203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9203=5124 := by core033_kernel_decide
theorem rows9204 : actualRows9204=WordField.canonicalRows actualModulus 9204 (.bxor 9202 9203) := by core033_kernel_decide
theorem stats9204 : actualRows9204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9204=7428 := by core033_kernel_decide
theorem rows9205 : actualRows9205=WordField.canonicalRows actualModulus 9205 (.rotr 9186 22) := by core033_kernel_decide
theorem stats9205 : actualRows9205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9205=5124 := by core033_kernel_decide
def partRows141 : List R1CS.Row := actualRows9142++actualRows9143++actualRows9144++actualRows9145++actualRows9146++actualRows9147++actualRows9148++actualRows9149++actualRows9150++actualRows9151++actualRows9152++actualRows9153++actualRows9154++actualRows9155++actualRows9156++actualRows9157++actualRows9158++actualRows9159++actualRows9160++actualRows9161++actualRows9162++actualRows9163++actualRows9164++actualRows9165++actualRows9166++actualRows9167++actualRows9168++actualRows9169++actualRows9170++actualRows9171++actualRows9172++actualRows9173++actualRows9174++actualRows9175++actualRows9176++actualRows9177++actualRows9178++actualRows9179++actualRows9180++actualRows9181++actualRows9182++actualRows9183++actualRows9184++actualRows9185++actualRows9186++actualRows9187++actualRows9188++actualRows9189++actualRows9190++actualRows9191++actualRows9192++actualRows9193++actualRows9194++actualRows9195++actualRows9196++actualRows9197++actualRows9198++actualRows9199++actualRows9200++actualRows9201++actualRows9202++actualRows9203++actualRows9204++actualRows9205
def partOps141 : List WordIR.Op := [.band 9141 9079,.bxor 9140 9142,.badd 9139 9143,.literal (BitVec.ofNat 32 2614888103),.badd 9144 9145,.badd 9146 6973,.rotr 9132 2,.rotr 9132 13,.bxor 9148 9149,.rotr 9132 22,.bxor 9150 9151,.band 9132 9105,.band 9132 9078,.bxor 9153 9154,.band 9105 9078,.bxor 9155 9156,.badd 9152 9157,.badd 9147 9158,.badd 9051 9147,.rotr 9160 6,.rotr 9160 11,.bxor 9161 9162,.rotr 9160 25,.bxor 9163 9164,.badd 9079 9165,.band 9160 9133,.bnot 9160,.band 9168 9106,.bxor 9167 9169,.badd 9166 9170,.literal (BitVec.ofNat 32 3248222580),.badd 9171 9172,.badd 9173 6979,.rotr 9159 2,.rotr 9159 13,.bxor 9175 9176,.rotr 9159 22,.bxor 9177 9178,.band 9159 9132,.band 9159 9105,.bxor 9180 9181,.band 9132 9105,.bxor 9182 9183,.badd 9179 9184,.badd 9174 9185,.badd 9078 9174,.rotr 9187 6,.rotr 9187 11,.bxor 9188 9189,.rotr 9187 25,.bxor 9190 9191,.badd 9106 9192,.band 9187 9160,.bnot 9187,.band 9195 9133,.bxor 9194 9196,.badd 9193 9197,.literal (BitVec.ofNat 32 3835390401),.badd 9198 9199,.badd 9200 8144,.rotr 9186 2,.rotr 9186 13,.bxor 9202 9203,.rotr 9186 22]
theorem partExact141 : partRows141=WordField.rows actualModulus 9142 partOps141 := by
  simp only [partRows141,partOps141,WordField.rows,rows9142,rows9143,rows9144,rows9145,rows9146,rows9147,rows9148,rows9149,rows9150,rows9151,rows9152,rows9153,rows9154,rows9155,rows9156,rows9157,rows9158,rows9159,rows9160,rows9161,rows9162,rows9163,rows9164,rows9165,rows9166,rows9167,rows9168,rows9169,rows9170,rows9171,rows9172,rows9173,rows9174,rows9175,rows9176,rows9177,rows9178,rows9179,rows9180,rows9181,rows9182,rows9183,rows9184,rows9185,rows9186,rows9187,rows9188,rows9189,rows9190,rows9191,rows9192,rows9193,rows9194,rows9195,rows9196,rows9197,rows9198,rows9199,rows9200,rows9201,rows9202,rows9203,rows9204,rows9205,List.append_assoc,List.append_nil]
theorem partLength141 : partOps141.length=64 := by decide
theorem partStats141 : partRows141.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows141=368280 := by
  simp only [partRows141,List.length_append,MatrixRowBlocks.rows_weight_append,stats9142.1,stats9142.2,stats9143.1,stats9143.2,stats9144.1,stats9144.2,stats9145.1,stats9145.2,stats9146.1,stats9146.2,stats9147.1,stats9147.2,stats9148.1,stats9148.2,stats9149.1,stats9149.2,stats9150.1,stats9150.2,stats9151.1,stats9151.2,stats9152.1,stats9152.2,stats9153.1,stats9153.2,stats9154.1,stats9154.2,stats9155.1,stats9155.2,stats9156.1,stats9156.2,stats9157.1,stats9157.2,stats9158.1,stats9158.2,stats9159.1,stats9159.2,stats9160.1,stats9160.2,stats9161.1,stats9161.2,stats9162.1,stats9162.2,stats9163.1,stats9163.2,stats9164.1,stats9164.2,stats9165.1,stats9165.2,stats9166.1,stats9166.2,stats9167.1,stats9167.2,stats9168.1,stats9168.2,stats9169.1,stats9169.2,stats9170.1,stats9170.2,stats9171.1,stats9171.2,stats9172.1,stats9172.2,stats9173.1,stats9173.2,stats9174.1,stats9174.2,stats9175.1,stats9175.2,stats9176.1,stats9176.2,stats9177.1,stats9177.2,stats9178.1,stats9178.2,stats9179.1,stats9179.2,stats9180.1,stats9180.2,stats9181.1,stats9181.2,stats9182.1,stats9182.2,stats9183.1,stats9183.2,stats9184.1,stats9184.2,stats9185.1,stats9185.2,stats9186.1,stats9186.2,stats9187.1,stats9187.2,stats9188.1,stats9188.2,stats9189.1,stats9189.2,stats9190.1,stats9190.2,stats9191.1,stats9191.2,stats9192.1,stats9192.2,stats9193.1,stats9193.2,stats9194.1,stats9194.2,stats9195.1,stats9195.2,stats9196.1,stats9196.2,stats9197.1,stats9197.2,stats9198.1,stats9198.2,stats9199.1,stats9199.2,stats9200.1,stats9200.2,stats9201.1,stats9201.2,stats9202.1,stats9202.2,stats9203.1,stats9203.2,stats9204.1,stats9204.2,stats9205.1,stats9205.2]
  decide
end AuthenticatedBranchRoundCheckedRows
