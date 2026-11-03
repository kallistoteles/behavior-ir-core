import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData126
import PathRoundDispatchInstructionMatrixData127
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8107 : actualRows8107=WordField.canonicalRows actualModulus 8107 (.rotr 8091 2) := by core033_kernel_decide
theorem stats8107 : actualRows8107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8107=5124 := by core033_kernel_decide
theorem rows8108 : actualRows8108=WordField.canonicalRows actualModulus 8108 (.rotr 8091 13) := by core033_kernel_decide
theorem stats8108 : actualRows8108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8108=5124 := by core033_kernel_decide
theorem rows8109 : actualRows8109=WordField.canonicalRows actualModulus 8109 (.bxor 8107 8108) := by core033_kernel_decide
theorem stats8109 : actualRows8109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8109=7428 := by core033_kernel_decide
theorem rows8110 : actualRows8110=WordField.canonicalRows actualModulus 8110 (.rotr 8091 22) := by core033_kernel_decide
theorem stats8110 : actualRows8110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8110=5124 := by core033_kernel_decide
theorem rows8111 : actualRows8111=WordField.canonicalRows actualModulus 8111 (.bxor 8109 8110) := by core033_kernel_decide
theorem stats8111 : actualRows8111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8111=7428 := by core033_kernel_decide
theorem rows8112 : actualRows8112=WordField.canonicalRows actualModulus 8112 (.band 8091 8064) := by core033_kernel_decide
theorem stats8112 : actualRows8112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8112=5124 := by core033_kernel_decide
theorem rows8113 : actualRows8113=WordField.canonicalRows actualModulus 8113 (.band 8091 8037) := by core033_kernel_decide
theorem stats8113 : actualRows8113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8113=5124 := by core033_kernel_decide
theorem rows8114 : actualRows8114=WordField.canonicalRows actualModulus 8114 (.bxor 8112 8113) := by core033_kernel_decide
theorem stats8114 : actualRows8114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8114=7428 := by core033_kernel_decide
theorem rows8115 : actualRows8115=WordField.canonicalRows actualModulus 8115 (.band 8064 8037) := by core033_kernel_decide
theorem stats8115 : actualRows8115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8115=5124 := by core033_kernel_decide
theorem rows8116 : actualRows8116=WordField.canonicalRows actualModulus 8116 (.bxor 8114 8115) := by core033_kernel_decide
theorem stats8116 : actualRows8116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8116=7428 := by core033_kernel_decide
theorem rows8117 : actualRows8117=WordField.canonicalRows actualModulus 8117 (.badd 8111 8116) := by core033_kernel_decide
theorem stats8117 : actualRows8117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8117=5388 := by core033_kernel_decide
theorem rows8118 : actualRows8118=WordField.canonicalRows actualModulus 8118 (.badd 8106 8117) := by core033_kernel_decide
theorem stats8118 : actualRows8118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8118=5388 := by core033_kernel_decide
theorem rows8119 : actualRows8119=WordField.canonicalRows actualModulus 8119 (.badd 8010 8106) := by core033_kernel_decide
theorem stats8119 : actualRows8119.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8119=5388 := by core033_kernel_decide
theorem rows8120 : actualRows8120=WordField.canonicalRows actualModulus 8120 (.rotr 8119 6) := by core033_kernel_decide
theorem stats8120 : actualRows8120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8120=5124 := by core033_kernel_decide
theorem rows8121 : actualRows8121=WordField.canonicalRows actualModulus 8121 (.rotr 8119 11) := by core033_kernel_decide
theorem stats8121 : actualRows8121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8121=5124 := by core033_kernel_decide
theorem rows8122 : actualRows8122=WordField.canonicalRows actualModulus 8122 (.bxor 8120 8121) := by core033_kernel_decide
theorem stats8122 : actualRows8122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8122=7428 := by core033_kernel_decide
theorem rows8123 : actualRows8123=WordField.canonicalRows actualModulus 8123 (.rotr 8119 25) := by core033_kernel_decide
theorem stats8123 : actualRows8123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8123=5124 := by core033_kernel_decide
theorem rows8124 : actualRows8124=WordField.canonicalRows actualModulus 8124 (.bxor 8122 8123) := by core033_kernel_decide
theorem stats8124 : actualRows8124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8124=7428 := by core033_kernel_decide
theorem rows8125 : actualRows8125=WordField.canonicalRows actualModulus 8125 (.badd 8038 8124) := by core033_kernel_decide
theorem stats8125 : actualRows8125.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8125=5388 := by core033_kernel_decide
theorem rows8126 : actualRows8126=WordField.canonicalRows actualModulus 8126 (.band 8119 8092) := by core033_kernel_decide
theorem stats8126 : actualRows8126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8126=5124 := by core033_kernel_decide
theorem rows8127 : actualRows8127=WordField.canonicalRows actualModulus 8127 (.bnot 8119) := by core033_kernel_decide
theorem stats8127 : actualRows8127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8127=6276 := by core033_kernel_decide
theorem rows8128 : actualRows8128=WordField.canonicalRows actualModulus 8128 (.band 8127 8065) := by core033_kernel_decide
theorem stats8128 : actualRows8128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8128=5124 := by core033_kernel_decide
theorem rows8129 : actualRows8129=WordField.canonicalRows actualModulus 8129 (.bxor 8126 8128) := by core033_kernel_decide
theorem stats8129 : actualRows8129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8129=7428 := by core033_kernel_decide
theorem rows8130 : actualRows8130=WordField.canonicalRows actualModulus 8130 (.badd 8125 8129) := by core033_kernel_decide
theorem stats8130 : actualRows8130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8130=5388 := by core033_kernel_decide
theorem rows8131 : actualRows8131=WordField.canonicalRows actualModulus 8131 (.literal (BitVec.ofNat 32 1249150122)) := by core033_kernel_decide
theorem stats8131 : actualRows8131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8131=3756 := by core033_kernel_decide
theorem rows8132 : actualRows8132=WordField.canonicalRows actualModulus 8132 (.badd 8130 8131) := by core033_kernel_decide
theorem stats8132 : actualRows8132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8132=5388 := by core033_kernel_decide
theorem rows8133 : actualRows8133=WordField.canonicalRows actualModulus 8133 (.badd 8132 7006) := by core033_kernel_decide
theorem stats8133 : actualRows8133.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8133=5388 := by core033_kernel_decide
theorem rows8134 : actualRows8134=WordField.canonicalRows actualModulus 8134 (.rotr 8118 2) := by core033_kernel_decide
theorem stats8134 : actualRows8134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8134=5124 := by core033_kernel_decide
theorem rows8135 : actualRows8135=WordField.canonicalRows actualModulus 8135 (.rotr 8118 13) := by core033_kernel_decide
theorem stats8135 : actualRows8135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8135=5124 := by core033_kernel_decide
theorem rows8136 : actualRows8136=WordField.canonicalRows actualModulus 8136 (.bxor 8134 8135) := by core033_kernel_decide
theorem stats8136 : actualRows8136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8136=7428 := by core033_kernel_decide
theorem rows8137 : actualRows8137=WordField.canonicalRows actualModulus 8137 (.rotr 8118 22) := by core033_kernel_decide
theorem stats8137 : actualRows8137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8137=5124 := by core033_kernel_decide
theorem rows8138 : actualRows8138=WordField.canonicalRows actualModulus 8138 (.bxor 8136 8137) := by core033_kernel_decide
theorem stats8138 : actualRows8138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8138=7428 := by core033_kernel_decide
theorem rows8139 : actualRows8139=WordField.canonicalRows actualModulus 8139 (.band 8118 8091) := by core033_kernel_decide
theorem stats8139 : actualRows8139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8139=5124 := by core033_kernel_decide
theorem rows8140 : actualRows8140=WordField.canonicalRows actualModulus 8140 (.band 8118 8064) := by core033_kernel_decide
theorem stats8140 : actualRows8140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8140=5124 := by core033_kernel_decide
theorem rows8141 : actualRows8141=WordField.canonicalRows actualModulus 8141 (.bxor 8139 8140) := by core033_kernel_decide
theorem stats8141 : actualRows8141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8141=7428 := by core033_kernel_decide
theorem rows8142 : actualRows8142=WordField.canonicalRows actualModulus 8142 (.band 8091 8064) := by core033_kernel_decide
theorem stats8142 : actualRows8142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8142=5124 := by core033_kernel_decide
theorem rows8143 : actualRows8143=WordField.canonicalRows actualModulus 8143 (.bxor 8141 8142) := by core033_kernel_decide
theorem stats8143 : actualRows8143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8143=7428 := by core033_kernel_decide
theorem rows8144 : actualRows8144=WordField.canonicalRows actualModulus 8144 (.badd 8138 8143) := by core033_kernel_decide
theorem stats8144 : actualRows8144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8144=5388 := by core033_kernel_decide
theorem rows8145 : actualRows8145=WordField.canonicalRows actualModulus 8145 (.badd 8133 8144) := by core033_kernel_decide
theorem stats8145 : actualRows8145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8145=5388 := by core033_kernel_decide
theorem rows8146 : actualRows8146=WordField.canonicalRows actualModulus 8146 (.badd 8037 8133) := by core033_kernel_decide
theorem stats8146 : actualRows8146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8146=5388 := by core033_kernel_decide
theorem rows8147 : actualRows8147=WordField.canonicalRows actualModulus 8147 (.rotr 8146 6) := by core033_kernel_decide
theorem stats8147 : actualRows8147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8147=5124 := by core033_kernel_decide
theorem rows8148 : actualRows8148=WordField.canonicalRows actualModulus 8148 (.rotr 8146 11) := by core033_kernel_decide
theorem stats8148 : actualRows8148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8148=5124 := by core033_kernel_decide
theorem rows8149 : actualRows8149=WordField.canonicalRows actualModulus 8149 (.bxor 8147 8148) := by core033_kernel_decide
theorem stats8149 : actualRows8149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8149=7428 := by core033_kernel_decide
theorem rows8150 : actualRows8150=WordField.canonicalRows actualModulus 8150 (.rotr 8146 25) := by core033_kernel_decide
theorem stats8150 : actualRows8150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8150=5124 := by core033_kernel_decide
theorem rows8151 : actualRows8151=WordField.canonicalRows actualModulus 8151 (.bxor 8149 8150) := by core033_kernel_decide
theorem stats8151 : actualRows8151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8151=7428 := by core033_kernel_decide
theorem rows8152 : actualRows8152=WordField.canonicalRows actualModulus 8152 (.badd 8065 8151) := by core033_kernel_decide
theorem stats8152 : actualRows8152.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8152=5388 := by core033_kernel_decide
theorem rows8153 : actualRows8153=WordField.canonicalRows actualModulus 8153 (.band 8146 8119) := by core033_kernel_decide
theorem stats8153 : actualRows8153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8153=5124 := by core033_kernel_decide
theorem rows8154 : actualRows8154=WordField.canonicalRows actualModulus 8154 (.bnot 8146) := by core033_kernel_decide
theorem stats8154 : actualRows8154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8154=6276 := by core033_kernel_decide
theorem rows8155 : actualRows8155=WordField.canonicalRows actualModulus 8155 (.band 8154 8092) := by core033_kernel_decide
theorem stats8155 : actualRows8155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8155=5124 := by core033_kernel_decide
theorem rows8156 : actualRows8156=WordField.canonicalRows actualModulus 8156 (.bxor 8153 8155) := by core033_kernel_decide
theorem stats8156 : actualRows8156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8156=7428 := by core033_kernel_decide
theorem rows8157 : actualRows8157=WordField.canonicalRows actualModulus 8157 (.badd 8152 8156) := by core033_kernel_decide
theorem stats8157 : actualRows8157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8157=5388 := by core033_kernel_decide
theorem rows8158 : actualRows8158=WordField.canonicalRows actualModulus 8158 (.literal (BitVec.ofNat 32 1555081692)) := by core033_kernel_decide
theorem stats8158 : actualRows8158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8158=3972 := by core033_kernel_decide
theorem rows8159 : actualRows8159=WordField.canonicalRows actualModulus 8159 (.badd 8157 8158) := by core033_kernel_decide
theorem stats8159 : actualRows8159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8159=5388 := by core033_kernel_decide
theorem rows8160 : actualRows8160=WordField.canonicalRows actualModulus 8160 (.badd 8159 7019) := by core033_kernel_decide
theorem stats8160 : actualRows8160.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8160=5388 := by core033_kernel_decide
theorem rows8161 : actualRows8161=WordField.canonicalRows actualModulus 8161 (.rotr 8145 2) := by core033_kernel_decide
theorem stats8161 : actualRows8161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8161=5124 := by core033_kernel_decide
theorem rows8162 : actualRows8162=WordField.canonicalRows actualModulus 8162 (.rotr 8145 13) := by core033_kernel_decide
theorem stats8162 : actualRows8162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8162=5124 := by core033_kernel_decide
theorem rows8163 : actualRows8163=WordField.canonicalRows actualModulus 8163 (.bxor 8161 8162) := by core033_kernel_decide
theorem stats8163 : actualRows8163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8163=7428 := by core033_kernel_decide
theorem rows8164 : actualRows8164=WordField.canonicalRows actualModulus 8164 (.rotr 8145 22) := by core033_kernel_decide
theorem stats8164 : actualRows8164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8164=5124 := by core033_kernel_decide
theorem rows8165 : actualRows8165=WordField.canonicalRows actualModulus 8165 (.bxor 8163 8164) := by core033_kernel_decide
theorem stats8165 : actualRows8165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8165=7428 := by core033_kernel_decide
theorem rows8166 : actualRows8166=WordField.canonicalRows actualModulus 8166 (.band 8145 8118) := by core033_kernel_decide
theorem stats8166 : actualRows8166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8166=5124 := by core033_kernel_decide
theorem rows8167 : actualRows8167=WordField.canonicalRows actualModulus 8167 (.band 8145 8091) := by core033_kernel_decide
theorem stats8167 : actualRows8167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8167=5124 := by core033_kernel_decide
theorem rows8168 : actualRows8168=WordField.canonicalRows actualModulus 8168 (.bxor 8166 8167) := by core033_kernel_decide
theorem stats8168 : actualRows8168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8168=7428 := by core033_kernel_decide
theorem rows8169 : actualRows8169=WordField.canonicalRows actualModulus 8169 (.band 8118 8091) := by core033_kernel_decide
theorem stats8169 : actualRows8169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8169=5124 := by core033_kernel_decide
theorem rows8170 : actualRows8170=WordField.canonicalRows actualModulus 8170 (.bxor 8168 8169) := by core033_kernel_decide
theorem stats8170 : actualRows8170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8170=7428 := by core033_kernel_decide
def partRows126 : List R1CS.Row := actualRows8107++actualRows8108++actualRows8109++actualRows8110++actualRows8111++actualRows8112++actualRows8113++actualRows8114++actualRows8115++actualRows8116++actualRows8117++actualRows8118++actualRows8119++actualRows8120++actualRows8121++actualRows8122++actualRows8123++actualRows8124++actualRows8125++actualRows8126++actualRows8127++actualRows8128++actualRows8129++actualRows8130++actualRows8131++actualRows8132++actualRows8133++actualRows8134++actualRows8135++actualRows8136++actualRows8137++actualRows8138++actualRows8139++actualRows8140++actualRows8141++actualRows8142++actualRows8143++actualRows8144++actualRows8145++actualRows8146++actualRows8147++actualRows8148++actualRows8149++actualRows8150++actualRows8151++actualRows8152++actualRows8153++actualRows8154++actualRows8155++actualRows8156++actualRows8157++actualRows8158++actualRows8159++actualRows8160++actualRows8161++actualRows8162++actualRows8163++actualRows8164++actualRows8165++actualRows8166++actualRows8167++actualRows8168++actualRows8169++actualRows8170
def partOps126 : List WordIR.Op := [.rotr 8091 2,.rotr 8091 13,.bxor 8107 8108,.rotr 8091 22,.bxor 8109 8110,.band 8091 8064,.band 8091 8037,.bxor 8112 8113,.band 8064 8037,.bxor 8114 8115,.badd 8111 8116,.badd 8106 8117,.badd 8010 8106,.rotr 8119 6,.rotr 8119 11,.bxor 8120 8121,.rotr 8119 25,.bxor 8122 8123,.badd 8038 8124,.band 8119 8092,.bnot 8119,.band 8127 8065,.bxor 8126 8128,.badd 8125 8129,.literal (BitVec.ofNat 32 1249150122),.badd 8130 8131,.badd 8132 7006,.rotr 8118 2,.rotr 8118 13,.bxor 8134 8135,.rotr 8118 22,.bxor 8136 8137,.band 8118 8091,.band 8118 8064,.bxor 8139 8140,.band 8091 8064,.bxor 8141 8142,.badd 8138 8143,.badd 8133 8144,.badd 8037 8133,.rotr 8146 6,.rotr 8146 11,.bxor 8147 8148,.rotr 8146 25,.bxor 8149 8150,.badd 8065 8151,.band 8146 8119,.bnot 8146,.band 8154 8092,.bxor 8153 8155,.badd 8152 8156,.literal (BitVec.ofNat 32 1555081692),.badd 8157 8158,.badd 8159 7019,.rotr 8145 2,.rotr 8145 13,.bxor 8161 8162,.rotr 8145 22,.bxor 8163 8164,.band 8145 8118,.band 8145 8091,.bxor 8166 8167,.band 8118 8091,.bxor 8168 8169]
theorem partExact126 : partRows126=WordField.rows actualModulus 8107 partOps126 := by
  simp only [partRows126,partOps126,WordField.rows,rows8107,rows8108,rows8109,rows8110,rows8111,rows8112,rows8113,rows8114,rows8115,rows8116,rows8117,rows8118,rows8119,rows8120,rows8121,rows8122,rows8123,rows8124,rows8125,rows8126,rows8127,rows8128,rows8129,rows8130,rows8131,rows8132,rows8133,rows8134,rows8135,rows8136,rows8137,rows8138,rows8139,rows8140,rows8141,rows8142,rows8143,rows8144,rows8145,rows8146,rows8147,rows8148,rows8149,rows8150,rows8151,rows8152,rows8153,rows8154,rows8155,rows8156,rows8157,rows8158,rows8159,rows8160,rows8161,rows8162,rows8163,rows8164,rows8165,rows8166,rows8167,rows8168,rows8169,rows8170,List.append_assoc,List.append_nil]
theorem partLength126 : partOps126.length=64 := by decide
theorem partStats126 : partRows126.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows126=372888 := by
  simp only [partRows126,List.length_append,MatrixRowBlocks.rows_weight_append,stats8107.1,stats8107.2,stats8108.1,stats8108.2,stats8109.1,stats8109.2,stats8110.1,stats8110.2,stats8111.1,stats8111.2,stats8112.1,stats8112.2,stats8113.1,stats8113.2,stats8114.1,stats8114.2,stats8115.1,stats8115.2,stats8116.1,stats8116.2,stats8117.1,stats8117.2,stats8118.1,stats8118.2,stats8119.1,stats8119.2,stats8120.1,stats8120.2,stats8121.1,stats8121.2,stats8122.1,stats8122.2,stats8123.1,stats8123.2,stats8124.1,stats8124.2,stats8125.1,stats8125.2,stats8126.1,stats8126.2,stats8127.1,stats8127.2,stats8128.1,stats8128.2,stats8129.1,stats8129.2,stats8130.1,stats8130.2,stats8131.1,stats8131.2,stats8132.1,stats8132.2,stats8133.1,stats8133.2,stats8134.1,stats8134.2,stats8135.1,stats8135.2,stats8136.1,stats8136.2,stats8137.1,stats8137.2,stats8138.1,stats8138.2,stats8139.1,stats8139.2,stats8140.1,stats8140.2,stats8141.1,stats8141.2,stats8142.1,stats8142.2,stats8143.1,stats8143.2,stats8144.1,stats8144.2,stats8145.1,stats8145.2,stats8146.1,stats8146.2,stats8147.1,stats8147.2,stats8148.1,stats8148.2,stats8149.1,stats8149.2,stats8150.1,stats8150.2,stats8151.1,stats8151.2,stats8152.1,stats8152.2,stats8153.1,stats8153.2,stats8154.1,stats8154.2,stats8155.1,stats8155.2,stats8156.1,stats8156.2,stats8157.1,stats8157.2,stats8158.1,stats8158.2,stats8159.1,stats8159.2,stats8160.1,stats8160.2,stats8161.1,stats8161.2,stats8162.1,stats8162.2,stats8163.1,stats8163.2,stats8164.1,stats8164.2,stats8165.1,stats8165.2,stats8166.1,stats8166.2,stats8167.1,stats8167.2,stats8168.1,stats8168.2,stats8169.1,stats8169.2,stats8170.1,stats8170.2]
  decide
end PathRoundDispatchCheckedRows
