import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData142
import PairedPathRoundInstructionMatrixData143
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9120 : actualRows9120=WordField.canonicalRows actualModulus 9120 (.bxor 9118 9119) := by core033_kernel_decide
theorem stats9120 : actualRows9120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9120=7428 := by core033_kernel_decide
theorem rows9121 : actualRows9121=WordField.canonicalRows actualModulus 9121 (.band 9070 9043) := by core033_kernel_decide
theorem stats9121 : actualRows9121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9121=5124 := by core033_kernel_decide
theorem rows9122 : actualRows9122=WordField.canonicalRows actualModulus 9122 (.bxor 9120 9121) := by core033_kernel_decide
theorem stats9122 : actualRows9122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9122=7428 := by core033_kernel_decide
theorem rows9123 : actualRows9123=WordField.canonicalRows actualModulus 9123 (.badd 9117 9122) := by core033_kernel_decide
theorem stats9123 : actualRows9123.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9123=5388 := by core033_kernel_decide
theorem rows9124 : actualRows9124=WordField.canonicalRows actualModulus 9124 (.badd 9112 9123) := by core033_kernel_decide
theorem stats9124 : actualRows9124.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9124=5388 := by core033_kernel_decide
theorem rows9125 : actualRows9125=WordField.canonicalRows actualModulus 9125 (.badd 9016 9112) := by core033_kernel_decide
theorem stats9125 : actualRows9125.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9125=5388 := by core033_kernel_decide
theorem rows9126 : actualRows9126=WordField.canonicalRows actualModulus 9126 (.rotr 9125 6) := by core033_kernel_decide
theorem stats9126 : actualRows9126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9126=5124 := by core033_kernel_decide
theorem rows9127 : actualRows9127=WordField.canonicalRows actualModulus 9127 (.rotr 9125 11) := by core033_kernel_decide
theorem stats9127 : actualRows9127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9127=5124 := by core033_kernel_decide
theorem rows9128 : actualRows9128=WordField.canonicalRows actualModulus 9128 (.bxor 9126 9127) := by core033_kernel_decide
theorem stats9128 : actualRows9128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9128=7428 := by core033_kernel_decide
theorem rows9129 : actualRows9129=WordField.canonicalRows actualModulus 9129 (.rotr 9125 25) := by core033_kernel_decide
theorem stats9129 : actualRows9129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9129=5124 := by core033_kernel_decide
theorem rows9130 : actualRows9130=WordField.canonicalRows actualModulus 9130 (.bxor 9128 9129) := by core033_kernel_decide
theorem stats9130 : actualRows9130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9130=7428 := by core033_kernel_decide
theorem rows9131 : actualRows9131=WordField.canonicalRows actualModulus 9131 (.badd 9044 9130) := by core033_kernel_decide
theorem stats9131 : actualRows9131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9131=5388 := by core033_kernel_decide
theorem rows9132 : actualRows9132=WordField.canonicalRows actualModulus 9132 (.band 9125 9098) := by core033_kernel_decide
theorem stats9132 : actualRows9132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9132=5124 := by core033_kernel_decide
theorem rows9133 : actualRows9133=WordField.canonicalRows actualModulus 9133 (.bnot 9125) := by core033_kernel_decide
theorem stats9133 : actualRows9133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9133=6276 := by core033_kernel_decide
theorem rows9134 : actualRows9134=WordField.canonicalRows actualModulus 9134 (.band 9133 9071) := by core033_kernel_decide
theorem stats9134 : actualRows9134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9134=5124 := by core033_kernel_decide
theorem rows9135 : actualRows9135=WordField.canonicalRows actualModulus 9135 (.bxor 9132 9134) := by core033_kernel_decide
theorem stats9135 : actualRows9135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9135=7428 := by core033_kernel_decide
theorem rows9136 : actualRows9136=WordField.canonicalRows actualModulus 9136 (.badd 9131 9135) := by core033_kernel_decide
theorem stats9136 : actualRows9136.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9136=5388 := by core033_kernel_decide
theorem rows9137 : actualRows9137=WordField.canonicalRows actualModulus 9137 (.literal (BitVec.ofNat 32 2456956037)) := by core033_kernel_decide
theorem stats9137 : actualRows9137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9137=3756 := by core033_kernel_decide
theorem rows9138 : actualRows9138=WordField.canonicalRows actualModulus 9138 (.badd 9136 9137) := by core033_kernel_decide
theorem stats9138 : actualRows9138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9138=5388 := by core033_kernel_decide
theorem rows9139 : actualRows9139=WordField.canonicalRows actualModulus 9139 (.badd 9138 7760) := by core033_kernel_decide
theorem stats9139 : actualRows9139.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9139=5388 := by core033_kernel_decide
theorem rows9140 : actualRows9140=WordField.canonicalRows actualModulus 9140 (.rotr 9124 2) := by core033_kernel_decide
theorem stats9140 : actualRows9140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9140=5124 := by core033_kernel_decide
theorem rows9141 : actualRows9141=WordField.canonicalRows actualModulus 9141 (.rotr 9124 13) := by core033_kernel_decide
theorem stats9141 : actualRows9141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9141=5124 := by core033_kernel_decide
theorem rows9142 : actualRows9142=WordField.canonicalRows actualModulus 9142 (.bxor 9140 9141) := by core033_kernel_decide
theorem stats9142 : actualRows9142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9142=7428 := by core033_kernel_decide
theorem rows9143 : actualRows9143=WordField.canonicalRows actualModulus 9143 (.rotr 9124 22) := by core033_kernel_decide
theorem stats9143 : actualRows9143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9143=5124 := by core033_kernel_decide
theorem rows9144 : actualRows9144=WordField.canonicalRows actualModulus 9144 (.bxor 9142 9143) := by core033_kernel_decide
theorem stats9144 : actualRows9144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9144=7428 := by core033_kernel_decide
theorem rows9145 : actualRows9145=WordField.canonicalRows actualModulus 9145 (.band 9124 9097) := by core033_kernel_decide
theorem stats9145 : actualRows9145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9145=5124 := by core033_kernel_decide
theorem rows9146 : actualRows9146=WordField.canonicalRows actualModulus 9146 (.band 9124 9070) := by core033_kernel_decide
theorem stats9146 : actualRows9146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9146=5124 := by core033_kernel_decide
theorem rows9147 : actualRows9147=WordField.canonicalRows actualModulus 9147 (.bxor 9145 9146) := by core033_kernel_decide
theorem stats9147 : actualRows9147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9147=7428 := by core033_kernel_decide
theorem rows9148 : actualRows9148=WordField.canonicalRows actualModulus 9148 (.band 9097 9070) := by core033_kernel_decide
theorem stats9148 : actualRows9148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9148=5124 := by core033_kernel_decide
theorem rows9149 : actualRows9149=WordField.canonicalRows actualModulus 9149 (.bxor 9147 9148) := by core033_kernel_decide
theorem stats9149 : actualRows9149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9149=7428 := by core033_kernel_decide
theorem rows9150 : actualRows9150=WordField.canonicalRows actualModulus 9150 (.badd 9144 9149) := by core033_kernel_decide
theorem stats9150 : actualRows9150.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9150=5388 := by core033_kernel_decide
theorem rows9151 : actualRows9151=WordField.canonicalRows actualModulus 9151 (.badd 9139 9150) := by core033_kernel_decide
theorem stats9151 : actualRows9151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9151=5388 := by core033_kernel_decide
theorem rows9152 : actualRows9152=WordField.canonicalRows actualModulus 9152 (.badd 9043 9139) := by core033_kernel_decide
theorem stats9152 : actualRows9152.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9152=5388 := by core033_kernel_decide
theorem rows9153 : actualRows9153=WordField.canonicalRows actualModulus 9153 (.rotr 9152 6) := by core033_kernel_decide
theorem stats9153 : actualRows9153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9153=5124 := by core033_kernel_decide
theorem rows9154 : actualRows9154=WordField.canonicalRows actualModulus 9154 (.rotr 9152 11) := by core033_kernel_decide
theorem stats9154 : actualRows9154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9154=5124 := by core033_kernel_decide
theorem rows9155 : actualRows9155=WordField.canonicalRows actualModulus 9155 (.bxor 9153 9154) := by core033_kernel_decide
theorem stats9155 : actualRows9155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9155=7428 := by core033_kernel_decide
theorem rows9156 : actualRows9156=WordField.canonicalRows actualModulus 9156 (.rotr 9152 25) := by core033_kernel_decide
theorem stats9156 : actualRows9156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9156=5124 := by core033_kernel_decide
theorem rows9157 : actualRows9157=WordField.canonicalRows actualModulus 9157 (.bxor 9155 9156) := by core033_kernel_decide
theorem stats9157 : actualRows9157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9157=7428 := by core033_kernel_decide
theorem rows9158 : actualRows9158=WordField.canonicalRows actualModulus 9158 (.badd 9071 9157) := by core033_kernel_decide
theorem stats9158 : actualRows9158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9158=5388 := by core033_kernel_decide
theorem rows9159 : actualRows9159=WordField.canonicalRows actualModulus 9159 (.band 9152 9125) := by core033_kernel_decide
theorem stats9159 : actualRows9159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9159=5124 := by core033_kernel_decide
theorem rows9160 : actualRows9160=WordField.canonicalRows actualModulus 9160 (.bnot 9152) := by core033_kernel_decide
theorem stats9160 : actualRows9160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9160=6276 := by core033_kernel_decide
theorem rows9161 : actualRows9161=WordField.canonicalRows actualModulus 9161 (.band 9160 9098) := by core033_kernel_decide
theorem stats9161 : actualRows9161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9161=5124 := by core033_kernel_decide
theorem rows9162 : actualRows9162=WordField.canonicalRows actualModulus 9162 (.bxor 9159 9161) := by core033_kernel_decide
theorem stats9162 : actualRows9162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9162=7428 := by core033_kernel_decide
theorem rows9163 : actualRows9163=WordField.canonicalRows actualModulus 9163 (.badd 9158 9162) := by core033_kernel_decide
theorem stats9163 : actualRows9163.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9163=5388 := by core033_kernel_decide
theorem rows9164 : actualRows9164=WordField.canonicalRows actualModulus 9164 (.literal (BitVec.ofNat 32 2730485921)) := by core033_kernel_decide
theorem stats9164 : actualRows9164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9164=4044 := by core033_kernel_decide
theorem rows9165 : actualRows9165=WordField.canonicalRows actualModulus 9165 (.badd 9163 9164) := by core033_kernel_decide
theorem stats9165 : actualRows9165.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9165=5388 := by core033_kernel_decide
theorem rows9166 : actualRows9166=WordField.canonicalRows actualModulus 9166 (.badd 9165 7773) := by core033_kernel_decide
theorem stats9166 : actualRows9166.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9166=5388 := by core033_kernel_decide
theorem rows9167 : actualRows9167=WordField.canonicalRows actualModulus 9167 (.rotr 9151 2) := by core033_kernel_decide
theorem stats9167 : actualRows9167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9167=5124 := by core033_kernel_decide
theorem rows9168 : actualRows9168=WordField.canonicalRows actualModulus 9168 (.rotr 9151 13) := by core033_kernel_decide
theorem stats9168 : actualRows9168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9168=5124 := by core033_kernel_decide
theorem rows9169 : actualRows9169=WordField.canonicalRows actualModulus 9169 (.bxor 9167 9168) := by core033_kernel_decide
theorem stats9169 : actualRows9169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9169=7428 := by core033_kernel_decide
theorem rows9170 : actualRows9170=WordField.canonicalRows actualModulus 9170 (.rotr 9151 22) := by core033_kernel_decide
theorem stats9170 : actualRows9170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9170=5124 := by core033_kernel_decide
theorem rows9171 : actualRows9171=WordField.canonicalRows actualModulus 9171 (.bxor 9169 9170) := by core033_kernel_decide
theorem stats9171 : actualRows9171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9171=7428 := by core033_kernel_decide
theorem rows9172 : actualRows9172=WordField.canonicalRows actualModulus 9172 (.band 9151 9124) := by core033_kernel_decide
theorem stats9172 : actualRows9172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9172=5124 := by core033_kernel_decide
theorem rows9173 : actualRows9173=WordField.canonicalRows actualModulus 9173 (.band 9151 9097) := by core033_kernel_decide
theorem stats9173 : actualRows9173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9173=5124 := by core033_kernel_decide
theorem rows9174 : actualRows9174=WordField.canonicalRows actualModulus 9174 (.bxor 9172 9173) := by core033_kernel_decide
theorem stats9174 : actualRows9174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9174=7428 := by core033_kernel_decide
theorem rows9175 : actualRows9175=WordField.canonicalRows actualModulus 9175 (.band 9124 9097) := by core033_kernel_decide
theorem stats9175 : actualRows9175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9175=5124 := by core033_kernel_decide
theorem rows9176 : actualRows9176=WordField.canonicalRows actualModulus 9176 (.bxor 9174 9175) := by core033_kernel_decide
theorem stats9176 : actualRows9176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9176=7428 := by core033_kernel_decide
theorem rows9177 : actualRows9177=WordField.canonicalRows actualModulus 9177 (.badd 9171 9176) := by core033_kernel_decide
theorem stats9177 : actualRows9177.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9177=5388 := by core033_kernel_decide
theorem rows9178 : actualRows9178=WordField.canonicalRows actualModulus 9178 (.badd 9166 9177) := by core033_kernel_decide
theorem stats9178 : actualRows9178.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9178=5388 := by core033_kernel_decide
theorem rows9179 : actualRows9179=WordField.canonicalRows actualModulus 9179 (.badd 9070 9166) := by core033_kernel_decide
theorem stats9179 : actualRows9179.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9179=5388 := by core033_kernel_decide
theorem rows9180 : actualRows9180=WordField.canonicalRows actualModulus 9180 (.rotr 9179 6) := by core033_kernel_decide
theorem stats9180 : actualRows9180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9180=5124 := by core033_kernel_decide
theorem rows9181 : actualRows9181=WordField.canonicalRows actualModulus 9181 (.rotr 9179 11) := by core033_kernel_decide
theorem stats9181 : actualRows9181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9181=5124 := by core033_kernel_decide
theorem rows9182 : actualRows9182=WordField.canonicalRows actualModulus 9182 (.bxor 9180 9181) := by core033_kernel_decide
theorem stats9182 : actualRows9182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9182=7428 := by core033_kernel_decide
theorem rows9183 : actualRows9183=WordField.canonicalRows actualModulus 9183 (.rotr 9179 25) := by core033_kernel_decide
theorem stats9183 : actualRows9183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9183=5124 := by core033_kernel_decide
def partRows141 : List R1CS.Row := actualRows9120++actualRows9121++actualRows9122++actualRows9123++actualRows9124++actualRows9125++actualRows9126++actualRows9127++actualRows9128++actualRows9129++actualRows9130++actualRows9131++actualRows9132++actualRows9133++actualRows9134++actualRows9135++actualRows9136++actualRows9137++actualRows9138++actualRows9139++actualRows9140++actualRows9141++actualRows9142++actualRows9143++actualRows9144++actualRows9145++actualRows9146++actualRows9147++actualRows9148++actualRows9149++actualRows9150++actualRows9151++actualRows9152++actualRows9153++actualRows9154++actualRows9155++actualRows9156++actualRows9157++actualRows9158++actualRows9159++actualRows9160++actualRows9161++actualRows9162++actualRows9163++actualRows9164++actualRows9165++actualRows9166++actualRows9167++actualRows9168++actualRows9169++actualRows9170++actualRows9171++actualRows9172++actualRows9173++actualRows9174++actualRows9175++actualRows9176++actualRows9177++actualRows9178++actualRows9179++actualRows9180++actualRows9181++actualRows9182++actualRows9183
def partOps141 : List WordIR.Op := [.bxor 9118 9119,.band 9070 9043,.bxor 9120 9121,.badd 9117 9122,.badd 9112 9123,.badd 9016 9112,.rotr 9125 6,.rotr 9125 11,.bxor 9126 9127,.rotr 9125 25,.bxor 9128 9129,.badd 9044 9130,.band 9125 9098,.bnot 9125,.band 9133 9071,.bxor 9132 9134,.badd 9131 9135,.literal (BitVec.ofNat 32 2456956037),.badd 9136 9137,.badd 9138 7760,.rotr 9124 2,.rotr 9124 13,.bxor 9140 9141,.rotr 9124 22,.bxor 9142 9143,.band 9124 9097,.band 9124 9070,.bxor 9145 9146,.band 9097 9070,.bxor 9147 9148,.badd 9144 9149,.badd 9139 9150,.badd 9043 9139,.rotr 9152 6,.rotr 9152 11,.bxor 9153 9154,.rotr 9152 25,.bxor 9155 9156,.badd 9071 9157,.band 9152 9125,.bnot 9152,.band 9160 9098,.bxor 9159 9161,.badd 9158 9162,.literal (BitVec.ofNat 32 2730485921),.badd 9163 9164,.badd 9165 7773,.rotr 9151 2,.rotr 9151 13,.bxor 9167 9168,.rotr 9151 22,.bxor 9169 9170,.band 9151 9124,.band 9151 9097,.bxor 9172 9173,.band 9124 9097,.bxor 9174 9175,.badd 9171 9176,.badd 9166 9177,.badd 9070 9166,.rotr 9179 6,.rotr 9179 11,.bxor 9180 9181,.rotr 9179 25]
theorem partExact141 : partRows141=WordField.rows actualModulus 9120 partOps141 := by
  simp only [partRows141,partOps141,WordField.rows,rows9120,rows9121,rows9122,rows9123,rows9124,rows9125,rows9126,rows9127,rows9128,rows9129,rows9130,rows9131,rows9132,rows9133,rows9134,rows9135,rows9136,rows9137,rows9138,rows9139,rows9140,rows9141,rows9142,rows9143,rows9144,rows9145,rows9146,rows9147,rows9148,rows9149,rows9150,rows9151,rows9152,rows9153,rows9154,rows9155,rows9156,rows9157,rows9158,rows9159,rows9160,rows9161,rows9162,rows9163,rows9164,rows9165,rows9166,rows9167,rows9168,rows9169,rows9170,rows9171,rows9172,rows9173,rows9174,rows9175,rows9176,rows9177,rows9178,rows9179,rows9180,rows9181,rows9182,rows9183,List.append_assoc,List.append_nil]
theorem partLength141 : partOps141.length=64 := by decide
theorem partStats141 : partRows141.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows141=371448 := by
  simp only [partRows141,List.length_append,MatrixRowBlocks.rows_weight_append,stats9120.1,stats9120.2,stats9121.1,stats9121.2,stats9122.1,stats9122.2,stats9123.1,stats9123.2,stats9124.1,stats9124.2,stats9125.1,stats9125.2,stats9126.1,stats9126.2,stats9127.1,stats9127.2,stats9128.1,stats9128.2,stats9129.1,stats9129.2,stats9130.1,stats9130.2,stats9131.1,stats9131.2,stats9132.1,stats9132.2,stats9133.1,stats9133.2,stats9134.1,stats9134.2,stats9135.1,stats9135.2,stats9136.1,stats9136.2,stats9137.1,stats9137.2,stats9138.1,stats9138.2,stats9139.1,stats9139.2,stats9140.1,stats9140.2,stats9141.1,stats9141.2,stats9142.1,stats9142.2,stats9143.1,stats9143.2,stats9144.1,stats9144.2,stats9145.1,stats9145.2,stats9146.1,stats9146.2,stats9147.1,stats9147.2,stats9148.1,stats9148.2,stats9149.1,stats9149.2,stats9150.1,stats9150.2,stats9151.1,stats9151.2,stats9152.1,stats9152.2,stats9153.1,stats9153.2,stats9154.1,stats9154.2,stats9155.1,stats9155.2,stats9156.1,stats9156.2,stats9157.1,stats9157.2,stats9158.1,stats9158.2,stats9159.1,stats9159.2,stats9160.1,stats9160.2,stats9161.1,stats9161.2,stats9162.1,stats9162.2,stats9163.1,stats9163.2,stats9164.1,stats9164.2,stats9165.1,stats9165.2,stats9166.1,stats9166.2,stats9167.1,stats9167.2,stats9168.1,stats9168.2,stats9169.1,stats9169.2,stats9170.1,stats9170.2,stats9171.1,stats9171.2,stats9172.1,stats9172.2,stats9173.1,stats9173.2,stats9174.1,stats9174.2,stats9175.1,stats9175.2,stats9176.1,stats9176.2,stats9177.1,stats9177.2,stats9178.1,stats9178.2,stats9179.1,stats9179.2,stats9180.1,stats9180.2,stats9181.1,stats9181.2,stats9182.1,stats9182.2,stats9183.1,stats9183.2]
  decide
end QuotedPairedPathRoundCheckedRows
