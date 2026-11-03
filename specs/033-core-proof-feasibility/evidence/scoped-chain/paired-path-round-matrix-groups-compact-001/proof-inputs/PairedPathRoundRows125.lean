import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData126
import PairedPathRoundInstructionMatrixData127
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8096 : actualRows8096=WordField.canonicalRows actualModulus 8096 (.bxor 8094 8095) := by core033_kernel_decide
theorem stats8096 : actualRows8096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8096=7428 := by core033_kernel_decide
theorem rows8097 : actualRows8097=WordField.canonicalRows actualModulus 8097 (.badd 8091 8096) := by core033_kernel_decide
theorem stats8097 : actualRows8097.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8097=5388 := by core033_kernel_decide
theorem rows8098 : actualRows8098=WordField.canonicalRows actualModulus 8098 (.badd 8086 8097) := by core033_kernel_decide
theorem stats8098 : actualRows8098.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8098=5388 := by core033_kernel_decide
theorem rows8099 : actualRows8099=WordField.canonicalRows actualModulus 8099 (.badd 2647 8086) := by core033_kernel_decide
theorem stats8099 : actualRows8099.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8099=5388 := by core033_kernel_decide
theorem rows8100 : actualRows8100=WordField.canonicalRows actualModulus 8100 (.rotr 8099 6) := by core033_kernel_decide
theorem stats8100 : actualRows8100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8100=5124 := by core033_kernel_decide
theorem rows8101 : actualRows8101=WordField.canonicalRows actualModulus 8101 (.rotr 8099 11) := by core033_kernel_decide
theorem stats8101 : actualRows8101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8101=5124 := by core033_kernel_decide
theorem rows8102 : actualRows8102=WordField.canonicalRows actualModulus 8102 (.bxor 8100 8101) := by core033_kernel_decide
theorem stats8102 : actualRows8102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8102=7428 := by core033_kernel_decide
theorem rows8103 : actualRows8103=WordField.canonicalRows actualModulus 8103 (.rotr 8099 25) := by core033_kernel_decide
theorem stats8103 : actualRows8103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8103=5124 := by core033_kernel_decide
theorem rows8104 : actualRows8104=WordField.canonicalRows actualModulus 8104 (.bxor 8102 8103) := by core033_kernel_decide
theorem stats8104 : actualRows8104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8104=7428 := by core033_kernel_decide
theorem rows8105 : actualRows8105=WordField.canonicalRows actualModulus 8105 (.badd 2806 8104) := by core033_kernel_decide
theorem stats8105 : actualRows8105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8105=5388 := by core033_kernel_decide
theorem rows8106 : actualRows8106=WordField.canonicalRows actualModulus 8106 (.band 8099 2700) := by core033_kernel_decide
theorem stats8106 : actualRows8106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8106=5124 := by core033_kernel_decide
theorem rows8107 : actualRows8107=WordField.canonicalRows actualModulus 8107 (.bnot 8099) := by core033_kernel_decide
theorem stats8107 : actualRows8107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8107=6276 := by core033_kernel_decide
theorem rows8108 : actualRows8108=WordField.canonicalRows actualModulus 8108 (.band 8107 2753) := by core033_kernel_decide
theorem stats8108 : actualRows8108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8108=5124 := by core033_kernel_decide
theorem rows8109 : actualRows8109=WordField.canonicalRows actualModulus 8109 (.bxor 8106 8108) := by core033_kernel_decide
theorem stats8109 : actualRows8109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8109=7428 := by core033_kernel_decide
theorem rows8110 : actualRows8110=WordField.canonicalRows actualModulus 8110 (.badd 8105 8109) := by core033_kernel_decide
theorem stats8110 : actualRows8110.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8110=5388 := by core033_kernel_decide
theorem rows8111 : actualRows8111=WordField.canonicalRows actualModulus 8111 (.literal (BitVec.ofNat 32 1899447441)) := by core033_kernel_decide
theorem stats8111 : actualRows8111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8111=3828 := by core033_kernel_decide
theorem rows8112 : actualRows8112=WordField.canonicalRows actualModulus 8112 (.badd 8110 8111) := by core033_kernel_decide
theorem stats8112 : actualRows8112.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8112=5388 := by core033_kernel_decide
theorem rows8113 : actualRows8113=WordField.canonicalRows actualModulus 8113 (.badd 8112 6212) := by core033_kernel_decide
theorem stats8113 : actualRows8113.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8113=5388 := by core033_kernel_decide
theorem rows8114 : actualRows8114=WordField.canonicalRows actualModulus 8114 (.rotr 8098 2) := by core033_kernel_decide
theorem stats8114 : actualRows8114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8114=5124 := by core033_kernel_decide
theorem rows8115 : actualRows8115=WordField.canonicalRows actualModulus 8115 (.rotr 8098 13) := by core033_kernel_decide
theorem stats8115 : actualRows8115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8115=5124 := by core033_kernel_decide
theorem rows8116 : actualRows8116=WordField.canonicalRows actualModulus 8116 (.bxor 8114 8115) := by core033_kernel_decide
theorem stats8116 : actualRows8116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8116=7428 := by core033_kernel_decide
theorem rows8117 : actualRows8117=WordField.canonicalRows actualModulus 8117 (.rotr 8098 22) := by core033_kernel_decide
theorem stats8117 : actualRows8117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8117=5124 := by core033_kernel_decide
theorem rows8118 : actualRows8118=WordField.canonicalRows actualModulus 8118 (.bxor 8116 8117) := by core033_kernel_decide
theorem stats8118 : actualRows8118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8118=7428 := by core033_kernel_decide
theorem rows8119 : actualRows8119=WordField.canonicalRows actualModulus 8119 (.band 8098 2488) := by core033_kernel_decide
theorem stats8119 : actualRows8119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8119=5124 := by core033_kernel_decide
theorem rows8120 : actualRows8120=WordField.canonicalRows actualModulus 8120 (.band 8098 2541) := by core033_kernel_decide
theorem stats8120 : actualRows8120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8120=5124 := by core033_kernel_decide
theorem rows8121 : actualRows8121=WordField.canonicalRows actualModulus 8121 (.bxor 8119 8120) := by core033_kernel_decide
theorem stats8121 : actualRows8121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8121=7428 := by core033_kernel_decide
theorem rows8122 : actualRows8122=WordField.canonicalRows actualModulus 8122 (.band 2488 2541) := by core033_kernel_decide
theorem stats8122 : actualRows8122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8122=5124 := by core033_kernel_decide
theorem rows8123 : actualRows8123=WordField.canonicalRows actualModulus 8123 (.bxor 8121 8122) := by core033_kernel_decide
theorem stats8123 : actualRows8123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8123=7428 := by core033_kernel_decide
theorem rows8124 : actualRows8124=WordField.canonicalRows actualModulus 8124 (.badd 8118 8123) := by core033_kernel_decide
theorem stats8124 : actualRows8124.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8124=5388 := by core033_kernel_decide
theorem rows8125 : actualRows8125=WordField.canonicalRows actualModulus 8125 (.badd 8113 8124) := by core033_kernel_decide
theorem stats8125 : actualRows8125.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8125=5388 := by core033_kernel_decide
theorem rows8126 : actualRows8126=WordField.canonicalRows actualModulus 8126 (.badd 2594 8113) := by core033_kernel_decide
theorem stats8126 : actualRows8126.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8126=5388 := by core033_kernel_decide
theorem rows8127 : actualRows8127=WordField.canonicalRows actualModulus 8127 (.rotr 8126 6) := by core033_kernel_decide
theorem stats8127 : actualRows8127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8127=5124 := by core033_kernel_decide
theorem rows8128 : actualRows8128=WordField.canonicalRows actualModulus 8128 (.rotr 8126 11) := by core033_kernel_decide
theorem stats8128 : actualRows8128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8128=5124 := by core033_kernel_decide
theorem rows8129 : actualRows8129=WordField.canonicalRows actualModulus 8129 (.bxor 8127 8128) := by core033_kernel_decide
theorem stats8129 : actualRows8129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8129=7428 := by core033_kernel_decide
theorem rows8130 : actualRows8130=WordField.canonicalRows actualModulus 8130 (.rotr 8126 25) := by core033_kernel_decide
theorem stats8130 : actualRows8130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8130=5124 := by core033_kernel_decide
theorem rows8131 : actualRows8131=WordField.canonicalRows actualModulus 8131 (.bxor 8129 8130) := by core033_kernel_decide
theorem stats8131 : actualRows8131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8131=7428 := by core033_kernel_decide
theorem rows8132 : actualRows8132=WordField.canonicalRows actualModulus 8132 (.badd 2753 8131) := by core033_kernel_decide
theorem stats8132 : actualRows8132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8132=5388 := by core033_kernel_decide
theorem rows8133 : actualRows8133=WordField.canonicalRows actualModulus 8133 (.band 8126 8099) := by core033_kernel_decide
theorem stats8133 : actualRows8133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8133=5124 := by core033_kernel_decide
theorem rows8134 : actualRows8134=WordField.canonicalRows actualModulus 8134 (.bnot 8126) := by core033_kernel_decide
theorem stats8134 : actualRows8134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8134=6276 := by core033_kernel_decide
theorem rows8135 : actualRows8135=WordField.canonicalRows actualModulus 8135 (.band 8134 2700) := by core033_kernel_decide
theorem stats8135 : actualRows8135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8135=5124 := by core033_kernel_decide
theorem rows8136 : actualRows8136=WordField.canonicalRows actualModulus 8136 (.bxor 8133 8135) := by core033_kernel_decide
theorem stats8136 : actualRows8136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8136=7428 := by core033_kernel_decide
theorem rows8137 : actualRows8137=WordField.canonicalRows actualModulus 8137 (.badd 8132 8136) := by core033_kernel_decide
theorem stats8137 : actualRows8137.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8137=5388 := by core033_kernel_decide
theorem rows8138 : actualRows8138=WordField.canonicalRows actualModulus 8138 (.literal (BitVec.ofNat 32 3049323471)) := by core033_kernel_decide
theorem stats8138 : actualRows8138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8138=4260 := by core033_kernel_decide
theorem rows8139 : actualRows8139=WordField.canonicalRows actualModulus 8139 (.badd 8137 8138) := by core033_kernel_decide
theorem stats8139 : actualRows8139.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8139=5388 := by core033_kernel_decide
theorem rows8140 : actualRows8140=WordField.canonicalRows actualModulus 8140 (.badd 8139 6218) := by core033_kernel_decide
theorem stats8140 : actualRows8140.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8140=5388 := by core033_kernel_decide
theorem rows8141 : actualRows8141=WordField.canonicalRows actualModulus 8141 (.rotr 8125 2) := by core033_kernel_decide
theorem stats8141 : actualRows8141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8141=5124 := by core033_kernel_decide
theorem rows8142 : actualRows8142=WordField.canonicalRows actualModulus 8142 (.rotr 8125 13) := by core033_kernel_decide
theorem stats8142 : actualRows8142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8142=5124 := by core033_kernel_decide
theorem rows8143 : actualRows8143=WordField.canonicalRows actualModulus 8143 (.bxor 8141 8142) := by core033_kernel_decide
theorem stats8143 : actualRows8143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8143=7428 := by core033_kernel_decide
theorem rows8144 : actualRows8144=WordField.canonicalRows actualModulus 8144 (.rotr 8125 22) := by core033_kernel_decide
theorem stats8144 : actualRows8144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8144=5124 := by core033_kernel_decide
theorem rows8145 : actualRows8145=WordField.canonicalRows actualModulus 8145 (.bxor 8143 8144) := by core033_kernel_decide
theorem stats8145 : actualRows8145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8145=7428 := by core033_kernel_decide
theorem rows8146 : actualRows8146=WordField.canonicalRows actualModulus 8146 (.band 8125 8098) := by core033_kernel_decide
theorem stats8146 : actualRows8146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8146=5124 := by core033_kernel_decide
theorem rows8147 : actualRows8147=WordField.canonicalRows actualModulus 8147 (.band 8125 2488) := by core033_kernel_decide
theorem stats8147 : actualRows8147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8147=5124 := by core033_kernel_decide
theorem rows8148 : actualRows8148=WordField.canonicalRows actualModulus 8148 (.bxor 8146 8147) := by core033_kernel_decide
theorem stats8148 : actualRows8148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8148=7428 := by core033_kernel_decide
theorem rows8149 : actualRows8149=WordField.canonicalRows actualModulus 8149 (.band 8098 2488) := by core033_kernel_decide
theorem stats8149 : actualRows8149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8149=5124 := by core033_kernel_decide
theorem rows8150 : actualRows8150=WordField.canonicalRows actualModulus 8150 (.bxor 8148 8149) := by core033_kernel_decide
theorem stats8150 : actualRows8150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8150=7428 := by core033_kernel_decide
theorem rows8151 : actualRows8151=WordField.canonicalRows actualModulus 8151 (.badd 8145 8150) := by core033_kernel_decide
theorem stats8151 : actualRows8151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8151=5388 := by core033_kernel_decide
theorem rows8152 : actualRows8152=WordField.canonicalRows actualModulus 8152 (.badd 8140 8151) := by core033_kernel_decide
theorem stats8152 : actualRows8152.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8152=5388 := by core033_kernel_decide
theorem rows8153 : actualRows8153=WordField.canonicalRows actualModulus 8153 (.badd 2541 8140) := by core033_kernel_decide
theorem stats8153 : actualRows8153.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8153=5388 := by core033_kernel_decide
theorem rows8154 : actualRows8154=WordField.canonicalRows actualModulus 8154 (.rotr 8153 6) := by core033_kernel_decide
theorem stats8154 : actualRows8154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8154=5124 := by core033_kernel_decide
theorem rows8155 : actualRows8155=WordField.canonicalRows actualModulus 8155 (.rotr 8153 11) := by core033_kernel_decide
theorem stats8155 : actualRows8155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8155=5124 := by core033_kernel_decide
theorem rows8156 : actualRows8156=WordField.canonicalRows actualModulus 8156 (.bxor 8154 8155) := by core033_kernel_decide
theorem stats8156 : actualRows8156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8156=7428 := by core033_kernel_decide
theorem rows8157 : actualRows8157=WordField.canonicalRows actualModulus 8157 (.rotr 8153 25) := by core033_kernel_decide
theorem stats8157 : actualRows8157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8157=5124 := by core033_kernel_decide
theorem rows8158 : actualRows8158=WordField.canonicalRows actualModulus 8158 (.bxor 8156 8157) := by core033_kernel_decide
theorem stats8158 : actualRows8158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8158=7428 := by core033_kernel_decide
theorem rows8159 : actualRows8159=WordField.canonicalRows actualModulus 8159 (.badd 2700 8158) := by core033_kernel_decide
theorem stats8159 : actualRows8159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8159=5388 := by core033_kernel_decide
def partRows125 : List R1CS.Row := actualRows8096++actualRows8097++actualRows8098++actualRows8099++actualRows8100++actualRows8101++actualRows8102++actualRows8103++actualRows8104++actualRows8105++actualRows8106++actualRows8107++actualRows8108++actualRows8109++actualRows8110++actualRows8111++actualRows8112++actualRows8113++actualRows8114++actualRows8115++actualRows8116++actualRows8117++actualRows8118++actualRows8119++actualRows8120++actualRows8121++actualRows8122++actualRows8123++actualRows8124++actualRows8125++actualRows8126++actualRows8127++actualRows8128++actualRows8129++actualRows8130++actualRows8131++actualRows8132++actualRows8133++actualRows8134++actualRows8135++actualRows8136++actualRows8137++actualRows8138++actualRows8139++actualRows8140++actualRows8141++actualRows8142++actualRows8143++actualRows8144++actualRows8145++actualRows8146++actualRows8147++actualRows8148++actualRows8149++actualRows8150++actualRows8151++actualRows8152++actualRows8153++actualRows8154++actualRows8155++actualRows8156++actualRows8157++actualRows8158++actualRows8159
def partOps125 : List WordIR.Op := [.bxor 8094 8095,.badd 8091 8096,.badd 8086 8097,.badd 2647 8086,.rotr 8099 6,.rotr 8099 11,.bxor 8100 8101,.rotr 8099 25,.bxor 8102 8103,.badd 2806 8104,.band 8099 2700,.bnot 8099,.band 8107 2753,.bxor 8106 8108,.badd 8105 8109,.literal (BitVec.ofNat 32 1899447441),.badd 8110 8111,.badd 8112 6212,.rotr 8098 2,.rotr 8098 13,.bxor 8114 8115,.rotr 8098 22,.bxor 8116 8117,.band 8098 2488,.band 8098 2541,.bxor 8119 8120,.band 2488 2541,.bxor 8121 8122,.badd 8118 8123,.badd 8113 8124,.badd 2594 8113,.rotr 8126 6,.rotr 8126 11,.bxor 8127 8128,.rotr 8126 25,.bxor 8129 8130,.badd 2753 8131,.band 8126 8099,.bnot 8126,.band 8134 2700,.bxor 8133 8135,.badd 8132 8136,.literal (BitVec.ofNat 32 3049323471),.badd 8137 8138,.badd 8139 6218,.rotr 8125 2,.rotr 8125 13,.bxor 8141 8142,.rotr 8125 22,.bxor 8143 8144,.band 8125 8098,.band 8125 2488,.bxor 8146 8147,.band 8098 2488,.bxor 8148 8149,.badd 8145 8150,.badd 8140 8151,.badd 2541 8140,.rotr 8153 6,.rotr 8153 11,.bxor 8154 8155,.rotr 8153 25,.bxor 8156 8157,.badd 2700 8158]
theorem partExact125 : partRows125=WordField.rows actualModulus 8096 partOps125 := by
  simp only [partRows125,partOps125,WordField.rows,rows8096,rows8097,rows8098,rows8099,rows8100,rows8101,rows8102,rows8103,rows8104,rows8105,rows8106,rows8107,rows8108,rows8109,rows8110,rows8111,rows8112,rows8113,rows8114,rows8115,rows8116,rows8117,rows8118,rows8119,rows8120,rows8121,rows8122,rows8123,rows8124,rows8125,rows8126,rows8127,rows8128,rows8129,rows8130,rows8131,rows8132,rows8133,rows8134,rows8135,rows8136,rows8137,rows8138,rows8139,rows8140,rows8141,rows8142,rows8143,rows8144,rows8145,rows8146,rows8147,rows8148,rows8149,rows8150,rows8151,rows8152,rows8153,rows8154,rows8155,rows8156,rows8157,rows8158,rows8159,List.append_assoc,List.append_nil]
theorem partLength125 : partOps125.length=64 := by decide
theorem partStats125 : partRows125.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows125=372000 := by
  simp only [partRows125,List.length_append,MatrixRowBlocks.rows_weight_append,stats8096.1,stats8096.2,stats8097.1,stats8097.2,stats8098.1,stats8098.2,stats8099.1,stats8099.2,stats8100.1,stats8100.2,stats8101.1,stats8101.2,stats8102.1,stats8102.2,stats8103.1,stats8103.2,stats8104.1,stats8104.2,stats8105.1,stats8105.2,stats8106.1,stats8106.2,stats8107.1,stats8107.2,stats8108.1,stats8108.2,stats8109.1,stats8109.2,stats8110.1,stats8110.2,stats8111.1,stats8111.2,stats8112.1,stats8112.2,stats8113.1,stats8113.2,stats8114.1,stats8114.2,stats8115.1,stats8115.2,stats8116.1,stats8116.2,stats8117.1,stats8117.2,stats8118.1,stats8118.2,stats8119.1,stats8119.2,stats8120.1,stats8120.2,stats8121.1,stats8121.2,stats8122.1,stats8122.2,stats8123.1,stats8123.2,stats8124.1,stats8124.2,stats8125.1,stats8125.2,stats8126.1,stats8126.2,stats8127.1,stats8127.2,stats8128.1,stats8128.2,stats8129.1,stats8129.2,stats8130.1,stats8130.2,stats8131.1,stats8131.2,stats8132.1,stats8132.2,stats8133.1,stats8133.2,stats8134.1,stats8134.2,stats8135.1,stats8135.2,stats8136.1,stats8136.2,stats8137.1,stats8137.2,stats8138.1,stats8138.2,stats8139.1,stats8139.2,stats8140.1,stats8140.2,stats8141.1,stats8141.2,stats8142.1,stats8142.2,stats8143.1,stats8143.2,stats8144.1,stats8144.2,stats8145.1,stats8145.2,stats8146.1,stats8146.2,stats8147.1,stats8147.2,stats8148.1,stats8148.2,stats8149.1,stats8149.2,stats8150.1,stats8150.2,stats8151.1,stats8151.2,stats8152.1,stats8152.2,stats8153.1,stats8153.2,stats8154.1,stats8154.2,stats8155.1,stats8155.2,stats8156.1,stats8156.2,stats8157.1,stats8157.2,stats8158.1,stats8158.2,stats8159.1,stats8159.2]
  decide
end PairedPathRoundCheckedRows
