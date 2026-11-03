import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData126
import AuthenticatedBranchRoundInstructionMatrixData127
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8118 : actualRows8118=WordField.canonicalRows actualModulus 8118 (.shr 6883 8) := by core033_kernel_decide
theorem stats8118 : actualRows8118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8118=4548 := by core033_kernel_decide
theorem rows8119 : actualRows8119=WordField.canonicalRows actualModulus 8119 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8119 : actualRows8119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8119=2820 := by core033_kernel_decide
theorem rows8120 : actualRows8120=WordField.canonicalRows actualModulus 8120 (.bnot 8119) := by core033_kernel_decide
theorem stats8120 : actualRows8120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8120=6276 := by core033_kernel_decide
theorem rows8121 : actualRows8121=WordField.canonicalRows actualModulus 8121 (.bxor 8118 8120) := by core033_kernel_decide
theorem stats8121 : actualRows8121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8121=7428 := by core033_kernel_decide
theorem rows8122 : actualRows8122=WordField.canonicalRows actualModulus 8122 (.shr 6883 8) := by core033_kernel_decide
theorem stats8122 : actualRows8122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8122=4548 := by core033_kernel_decide
theorem rows8123 : actualRows8123=WordField.canonicalRows actualModulus 8123 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8123 : actualRows8123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8123=2820 := by core033_kernel_decide
theorem rows8124 : actualRows8124=WordField.canonicalRows actualModulus 8124 (.bnot 8123) := by core033_kernel_decide
theorem stats8124 : actualRows8124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8124=6276 := by core033_kernel_decide
theorem rows8125 : actualRows8125=WordField.canonicalRows actualModulus 8125 (.badd 8122 8124) := by core033_kernel_decide
theorem stats8125 : actualRows8125.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8125=5388 := by core033_kernel_decide
theorem rows8126 : actualRows8126=WordField.canonicalRows actualModulus 8126 (.bnot 8125) := by core033_kernel_decide
theorem stats8126 : actualRows8126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8126=6276 := by core033_kernel_decide
theorem rows8127 : actualRows8127=WordField.canonicalRows actualModulus 8127 (.band 8121 8126) := by core033_kernel_decide
theorem stats8127 : actualRows8127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8127=5124 := by core033_kernel_decide
theorem rows8128 : actualRows8128=WordField.canonicalRows actualModulus 8128 (.bxor 8117 8127) := by core033_kernel_decide
theorem stats8128 : actualRows8128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8128=7428 := by core033_kernel_decide
theorem rows8129 : actualRows8129=WordField.canonicalRows actualModulus 8129 (.shr 8128 31) := by core033_kernel_decide
theorem stats8129 : actualRows8129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8129=2892 := by core033_kernel_decide
theorem rows8130 : actualRows8130=WordField.canonicalRows actualModulus 8130 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8130 : actualRows8130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8130=2892 := by core033_kernel_decide
theorem rows8131 : actualRows8131=WordField.canonicalRows actualModulus 8131 (.bxor 8129 8130) := by core033_kernel_decide
theorem stats8131 : actualRows8131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8131=7428 := by core033_kernel_decide
theorem rows8132 : actualRows8132=WordField.canonicalRows actualModulus 8132 (.rotr 6973 17) := by core033_kernel_decide
theorem stats8132 : actualRows8132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8132=5124 := by core033_kernel_decide
theorem rows8133 : actualRows8133=WordField.canonicalRows actualModulus 8133 (.rotr 6973 19) := by core033_kernel_decide
theorem stats8133 : actualRows8133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8133=5124 := by core033_kernel_decide
theorem rows8134 : actualRows8134=WordField.canonicalRows actualModulus 8134 (.bxor 8132 8133) := by core033_kernel_decide
theorem stats8134 : actualRows8134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8134=7428 := by core033_kernel_decide
theorem rows8135 : actualRows8135=WordField.canonicalRows actualModulus 8135 (.shr 6973 10) := by core033_kernel_decide
theorem stats8135 : actualRows8135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8135=4404 := by core033_kernel_decide
theorem rows8136 : actualRows8136=WordField.canonicalRows actualModulus 8136 (.bxor 8134 8135) := by core033_kernel_decide
theorem stats8136 : actualRows8136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8136=7428 := by core033_kernel_decide
theorem rows8137 : actualRows8137=WordField.canonicalRows actualModulus 8137 (.badd 8136 6943) := by core033_kernel_decide
theorem stats8137 : actualRows8137.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8137=5388 := by core033_kernel_decide
theorem rows8138 : actualRows8138=WordField.canonicalRows actualModulus 8138 (.rotr 6895 7) := by core033_kernel_decide
theorem stats8138 : actualRows8138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8138=5124 := by core033_kernel_decide
theorem rows8139 : actualRows8139=WordField.canonicalRows actualModulus 8139 (.rotr 6895 18) := by core033_kernel_decide
theorem stats8139 : actualRows8139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8139=5124 := by core033_kernel_decide
theorem rows8140 : actualRows8140=WordField.canonicalRows actualModulus 8140 (.bxor 8138 8139) := by core033_kernel_decide
theorem stats8140 : actualRows8140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8140=7428 := by core033_kernel_decide
theorem rows8141 : actualRows8141=WordField.canonicalRows actualModulus 8141 (.shr 6895 3) := by core033_kernel_decide
theorem stats8141 : actualRows8141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8141=4908 := by core033_kernel_decide
theorem rows8142 : actualRows8142=WordField.canonicalRows actualModulus 8142 (.bxor 8140 8141) := by core033_kernel_decide
theorem stats8142 : actualRows8142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8142=7428 := by core033_kernel_decide
theorem rows8143 : actualRows8143=WordField.canonicalRows actualModulus 8143 (.badd 8137 8142) := by core033_kernel_decide
theorem stats8143 : actualRows8143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8143=5388 := by core033_kernel_decide
theorem rows8144 : actualRows8144=WordField.canonicalRows actualModulus 8144 (.badd 8143 6889) := by core033_kernel_decide
theorem stats8144 : actualRows8144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8144=5388 := by core033_kernel_decide
theorem rows8145 : actualRows8145=WordField.canonicalRows actualModulus 8145 (.rotr 6979 17) := by core033_kernel_decide
theorem stats8145 : actualRows8145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8145=5124 := by core033_kernel_decide
theorem rows8146 : actualRows8146=WordField.canonicalRows actualModulus 8146 (.rotr 6979 19) := by core033_kernel_decide
theorem stats8146 : actualRows8146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8146=5124 := by core033_kernel_decide
theorem rows8147 : actualRows8147=WordField.canonicalRows actualModulus 8147 (.bxor 8145 8146) := by core033_kernel_decide
theorem stats8147 : actualRows8147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8147=7428 := by core033_kernel_decide
theorem rows8148 : actualRows8148=WordField.canonicalRows actualModulus 8148 (.shr 6979 10) := by core033_kernel_decide
theorem stats8148 : actualRows8148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8148=4404 := by core033_kernel_decide
theorem rows8149 : actualRows8149=WordField.canonicalRows actualModulus 8149 (.bxor 8147 8148) := by core033_kernel_decide
theorem stats8149 : actualRows8149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8149=7428 := by core033_kernel_decide
theorem rows8150 : actualRows8150=WordField.canonicalRows actualModulus 8150 (.badd 8149 6949) := by core033_kernel_decide
theorem stats8150 : actualRows8150.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8150=5388 := by core033_kernel_decide
theorem rows8151 : actualRows8151=WordField.canonicalRows actualModulus 8151 (.rotr 6901 7) := by core033_kernel_decide
theorem stats8151 : actualRows8151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8151=5124 := by core033_kernel_decide
theorem rows8152 : actualRows8152=WordField.canonicalRows actualModulus 8152 (.rotr 6901 18) := by core033_kernel_decide
theorem stats8152 : actualRows8152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8152=5124 := by core033_kernel_decide
theorem rows8153 : actualRows8153=WordField.canonicalRows actualModulus 8153 (.bxor 8151 8152) := by core033_kernel_decide
theorem stats8153 : actualRows8153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8153=7428 := by core033_kernel_decide
theorem rows8154 : actualRows8154=WordField.canonicalRows actualModulus 8154 (.shr 6901 3) := by core033_kernel_decide
theorem stats8154 : actualRows8154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8154=4908 := by core033_kernel_decide
theorem rows8155 : actualRows8155=WordField.canonicalRows actualModulus 8155 (.bxor 8153 8154) := by core033_kernel_decide
theorem stats8155 : actualRows8155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8155=7428 := by core033_kernel_decide
theorem rows8156 : actualRows8156=WordField.canonicalRows actualModulus 8156 (.badd 8150 8155) := by core033_kernel_decide
theorem stats8156 : actualRows8156.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8156=5388 := by core033_kernel_decide
theorem rows8157 : actualRows8157=WordField.canonicalRows actualModulus 8157 (.badd 8156 6895) := by core033_kernel_decide
theorem stats8157 : actualRows8157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8157=5388 := by core033_kernel_decide
theorem rows8158 : actualRows8158=WordField.canonicalRows actualModulus 8158 (.rotr 8144 17) := by core033_kernel_decide
theorem stats8158 : actualRows8158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8158=5124 := by core033_kernel_decide
theorem rows8159 : actualRows8159=WordField.canonicalRows actualModulus 8159 (.rotr 8144 19) := by core033_kernel_decide
theorem stats8159 : actualRows8159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8159=5124 := by core033_kernel_decide
theorem rows8160 : actualRows8160=WordField.canonicalRows actualModulus 8160 (.bxor 8158 8159) := by core033_kernel_decide
theorem stats8160 : actualRows8160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8160=7428 := by core033_kernel_decide
theorem rows8161 : actualRows8161=WordField.canonicalRows actualModulus 8161 (.shr 8144 10) := by core033_kernel_decide
theorem stats8161 : actualRows8161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8161=4404 := by core033_kernel_decide
theorem rows8162 : actualRows8162=WordField.canonicalRows actualModulus 8162 (.bxor 8160 8161) := by core033_kernel_decide
theorem stats8162 : actualRows8162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8162=7428 := by core033_kernel_decide
theorem rows8163 : actualRows8163=WordField.canonicalRows actualModulus 8163 (.badd 8162 6955) := by core033_kernel_decide
theorem stats8163 : actualRows8163.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8163=5388 := by core033_kernel_decide
theorem rows8164 : actualRows8164=WordField.canonicalRows actualModulus 8164 (.rotr 6907 7) := by core033_kernel_decide
theorem stats8164 : actualRows8164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8164=5124 := by core033_kernel_decide
theorem rows8165 : actualRows8165=WordField.canonicalRows actualModulus 8165 (.rotr 6907 18) := by core033_kernel_decide
theorem stats8165 : actualRows8165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8165=5124 := by core033_kernel_decide
theorem rows8166 : actualRows8166=WordField.canonicalRows actualModulus 8166 (.bxor 8164 8165) := by core033_kernel_decide
theorem stats8166 : actualRows8166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8166=7428 := by core033_kernel_decide
theorem rows8167 : actualRows8167=WordField.canonicalRows actualModulus 8167 (.shr 6907 3) := by core033_kernel_decide
theorem stats8167 : actualRows8167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8167=4908 := by core033_kernel_decide
theorem rows8168 : actualRows8168=WordField.canonicalRows actualModulus 8168 (.bxor 8166 8167) := by core033_kernel_decide
theorem stats8168 : actualRows8168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8168=7428 := by core033_kernel_decide
theorem rows8169 : actualRows8169=WordField.canonicalRows actualModulus 8169 (.badd 8163 8168) := by core033_kernel_decide
theorem stats8169 : actualRows8169.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8169=5388 := by core033_kernel_decide
theorem rows8170 : actualRows8170=WordField.canonicalRows actualModulus 8170 (.badd 8169 6901) := by core033_kernel_decide
theorem stats8170 : actualRows8170.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8170=5388 := by core033_kernel_decide
theorem rows8171 : actualRows8171=WordField.canonicalRows actualModulus 8171 (.rotr 8157 17) := by core033_kernel_decide
theorem stats8171 : actualRows8171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8171=5124 := by core033_kernel_decide
theorem rows8172 : actualRows8172=WordField.canonicalRows actualModulus 8172 (.rotr 8157 19) := by core033_kernel_decide
theorem stats8172 : actualRows8172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8172=5124 := by core033_kernel_decide
theorem rows8173 : actualRows8173=WordField.canonicalRows actualModulus 8173 (.bxor 8171 8172) := by core033_kernel_decide
theorem stats8173 : actualRows8173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8173=7428 := by core033_kernel_decide
theorem rows8174 : actualRows8174=WordField.canonicalRows actualModulus 8174 (.shr 8157 10) := by core033_kernel_decide
theorem stats8174 : actualRows8174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8174=4404 := by core033_kernel_decide
theorem rows8175 : actualRows8175=WordField.canonicalRows actualModulus 8175 (.bxor 8173 8174) := by core033_kernel_decide
theorem stats8175 : actualRows8175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8175=7428 := by core033_kernel_decide
theorem rows8176 : actualRows8176=WordField.canonicalRows actualModulus 8176 (.badd 8175 6961) := by core033_kernel_decide
theorem stats8176 : actualRows8176.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8176=5388 := by core033_kernel_decide
theorem rows8177 : actualRows8177=WordField.canonicalRows actualModulus 8177 (.rotr 6913 7) := by core033_kernel_decide
theorem stats8177 : actualRows8177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8177=5124 := by core033_kernel_decide
theorem rows8178 : actualRows8178=WordField.canonicalRows actualModulus 8178 (.rotr 6913 18) := by core033_kernel_decide
theorem stats8178 : actualRows8178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8178=5124 := by core033_kernel_decide
theorem rows8179 : actualRows8179=WordField.canonicalRows actualModulus 8179 (.bxor 8177 8178) := by core033_kernel_decide
theorem stats8179 : actualRows8179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8179=7428 := by core033_kernel_decide
theorem rows8180 : actualRows8180=WordField.canonicalRows actualModulus 8180 (.shr 6913 3) := by core033_kernel_decide
theorem stats8180 : actualRows8180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8180=4908 := by core033_kernel_decide
theorem rows8181 : actualRows8181=WordField.canonicalRows actualModulus 8181 (.bxor 8179 8180) := by core033_kernel_decide
theorem stats8181 : actualRows8181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8181=7428 := by core033_kernel_decide
def partRows125 : List R1CS.Row := actualRows8118++actualRows8119++actualRows8120++actualRows8121++actualRows8122++actualRows8123++actualRows8124++actualRows8125++actualRows8126++actualRows8127++actualRows8128++actualRows8129++actualRows8130++actualRows8131++actualRows8132++actualRows8133++actualRows8134++actualRows8135++actualRows8136++actualRows8137++actualRows8138++actualRows8139++actualRows8140++actualRows8141++actualRows8142++actualRows8143++actualRows8144++actualRows8145++actualRows8146++actualRows8147++actualRows8148++actualRows8149++actualRows8150++actualRows8151++actualRows8152++actualRows8153++actualRows8154++actualRows8155++actualRows8156++actualRows8157++actualRows8158++actualRows8159++actualRows8160++actualRows8161++actualRows8162++actualRows8163++actualRows8164++actualRows8165++actualRows8166++actualRows8167++actualRows8168++actualRows8169++actualRows8170++actualRows8171++actualRows8172++actualRows8173++actualRows8174++actualRows8175++actualRows8176++actualRows8177++actualRows8178++actualRows8179++actualRows8180++actualRows8181
def partOps125 : List WordIR.Op := [.shr 6883 8,.literal (BitVec.ofNat 32 0),.bnot 8119,.bxor 8118 8120,.shr 6883 8,.literal (BitVec.ofNat 32 0),.bnot 8123,.badd 8122 8124,.bnot 8125,.band 8121 8126,.bxor 8117 8127,.shr 8128 31,.literal (BitVec.ofNat 32 1),.bxor 8129 8130,.rotr 6973 17,.rotr 6973 19,.bxor 8132 8133,.shr 6973 10,.bxor 8134 8135,.badd 8136 6943,.rotr 6895 7,.rotr 6895 18,.bxor 8138 8139,.shr 6895 3,.bxor 8140 8141,.badd 8137 8142,.badd 8143 6889,.rotr 6979 17,.rotr 6979 19,.bxor 8145 8146,.shr 6979 10,.bxor 8147 8148,.badd 8149 6949,.rotr 6901 7,.rotr 6901 18,.bxor 8151 8152,.shr 6901 3,.bxor 8153 8154,.badd 8150 8155,.badd 8156 6895,.rotr 8144 17,.rotr 8144 19,.bxor 8158 8159,.shr 8144 10,.bxor 8160 8161,.badd 8162 6955,.rotr 6907 7,.rotr 6907 18,.bxor 8164 8165,.shr 6907 3,.bxor 8166 8167,.badd 8163 8168,.badd 8169 6901,.rotr 8157 17,.rotr 8157 19,.bxor 8171 8172,.shr 8157 10,.bxor 8173 8174,.badd 8175 6961,.rotr 6913 7,.rotr 6913 18,.bxor 8177 8178,.shr 6913 3,.bxor 8179 8180]
theorem partExact125 : partRows125=WordField.rows actualModulus 8118 partOps125 := by
  simp only [partRows125,partOps125,WordField.rows,rows8118,rows8119,rows8120,rows8121,rows8122,rows8123,rows8124,rows8125,rows8126,rows8127,rows8128,rows8129,rows8130,rows8131,rows8132,rows8133,rows8134,rows8135,rows8136,rows8137,rows8138,rows8139,rows8140,rows8141,rows8142,rows8143,rows8144,rows8145,rows8146,rows8147,rows8148,rows8149,rows8150,rows8151,rows8152,rows8153,rows8154,rows8155,rows8156,rows8157,rows8158,rows8159,rows8160,rows8161,rows8162,rows8163,rows8164,rows8165,rows8166,rows8167,rows8168,rows8169,rows8170,rows8171,rows8172,rows8173,rows8174,rows8175,rows8176,rows8177,rows8178,rows8179,rows8180,rows8181,List.append_assoc,List.append_nil]
theorem partLength125 : partOps125.length=64 := by decide
theorem partStats125 : partRows125.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows125=364104 := by
  simp only [partRows125,List.length_append,MatrixRowBlocks.rows_weight_append,stats8118.1,stats8118.2,stats8119.1,stats8119.2,stats8120.1,stats8120.2,stats8121.1,stats8121.2,stats8122.1,stats8122.2,stats8123.1,stats8123.2,stats8124.1,stats8124.2,stats8125.1,stats8125.2,stats8126.1,stats8126.2,stats8127.1,stats8127.2,stats8128.1,stats8128.2,stats8129.1,stats8129.2,stats8130.1,stats8130.2,stats8131.1,stats8131.2,stats8132.1,stats8132.2,stats8133.1,stats8133.2,stats8134.1,stats8134.2,stats8135.1,stats8135.2,stats8136.1,stats8136.2,stats8137.1,stats8137.2,stats8138.1,stats8138.2,stats8139.1,stats8139.2,stats8140.1,stats8140.2,stats8141.1,stats8141.2,stats8142.1,stats8142.2,stats8143.1,stats8143.2,stats8144.1,stats8144.2,stats8145.1,stats8145.2,stats8146.1,stats8146.2,stats8147.1,stats8147.2,stats8148.1,stats8148.2,stats8149.1,stats8149.2,stats8150.1,stats8150.2,stats8151.1,stats8151.2,stats8152.1,stats8152.2,stats8153.1,stats8153.2,stats8154.1,stats8154.2,stats8155.1,stats8155.2,stats8156.1,stats8156.2,stats8157.1,stats8157.2,stats8158.1,stats8158.2,stats8159.1,stats8159.2,stats8160.1,stats8160.2,stats8161.1,stats8161.2,stats8162.1,stats8162.2,stats8163.1,stats8163.2,stats8164.1,stats8164.2,stats8165.1,stats8165.2,stats8166.1,stats8166.2,stats8167.1,stats8167.2,stats8168.1,stats8168.2,stats8169.1,stats8169.2,stats8170.1,stats8170.2,stats8171.1,stats8171.2,stats8172.1,stats8172.2,stats8173.1,stats8173.2,stats8174.1,stats8174.2,stats8175.1,stats8175.2,stats8176.1,stats8176.2,stats8177.1,stats8177.2,stats8178.1,stats8178.2,stats8179.1,stats8179.2,stats8180.1,stats8180.2,stats8181.1,stats8181.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
