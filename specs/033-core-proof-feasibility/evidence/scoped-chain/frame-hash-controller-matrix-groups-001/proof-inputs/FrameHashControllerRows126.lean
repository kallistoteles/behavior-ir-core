import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData126
import FrameHashControllerInstructionMatrixData127
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8107 : actualRows8107=WordField.canonicalRows actualModulus 8107 (.rotr 8088 22) := by core033_kernel_decide
theorem stats8107 : actualRows8107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8107=5124 := by core033_kernel_decide
theorem rows8108 : actualRows8108=WordField.canonicalRows actualModulus 8108 (.bxor 8106 8107) := by core033_kernel_decide
theorem stats8108 : actualRows8108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8108=7428 := by core033_kernel_decide
theorem rows8109 : actualRows8109=WordField.canonicalRows actualModulus 8109 (.band 8088 8061) := by core033_kernel_decide
theorem stats8109 : actualRows8109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8109=5124 := by core033_kernel_decide
theorem rows8110 : actualRows8110=WordField.canonicalRows actualModulus 8110 (.band 8088 8034) := by core033_kernel_decide
theorem stats8110 : actualRows8110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8110=5124 := by core033_kernel_decide
theorem rows8111 : actualRows8111=WordField.canonicalRows actualModulus 8111 (.bxor 8109 8110) := by core033_kernel_decide
theorem stats8111 : actualRows8111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8111=7428 := by core033_kernel_decide
theorem rows8112 : actualRows8112=WordField.canonicalRows actualModulus 8112 (.band 8061 8034) := by core033_kernel_decide
theorem stats8112 : actualRows8112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8112=5124 := by core033_kernel_decide
theorem rows8113 : actualRows8113=WordField.canonicalRows actualModulus 8113 (.bxor 8111 8112) := by core033_kernel_decide
theorem stats8113 : actualRows8113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8113=7428 := by core033_kernel_decide
theorem rows8114 : actualRows8114=WordField.canonicalRows actualModulus 8114 (.badd 8108 8113) := by core033_kernel_decide
theorem stats8114 : actualRows8114.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8114=5388 := by core033_kernel_decide
theorem rows8115 : actualRows8115=WordField.canonicalRows actualModulus 8115 (.badd 8103 8114) := by core033_kernel_decide
theorem stats8115 : actualRows8115.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8115=5388 := by core033_kernel_decide
theorem rows8116 : actualRows8116=WordField.canonicalRows actualModulus 8116 (.badd 8007 8103) := by core033_kernel_decide
theorem stats8116 : actualRows8116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8116=5388 := by core033_kernel_decide
theorem rows8117 : actualRows8117=WordField.canonicalRows actualModulus 8117 (.rotr 8116 6) := by core033_kernel_decide
theorem stats8117 : actualRows8117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8117=5124 := by core033_kernel_decide
theorem rows8118 : actualRows8118=WordField.canonicalRows actualModulus 8118 (.rotr 8116 11) := by core033_kernel_decide
theorem stats8118 : actualRows8118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8118=5124 := by core033_kernel_decide
theorem rows8119 : actualRows8119=WordField.canonicalRows actualModulus 8119 (.bxor 8117 8118) := by core033_kernel_decide
theorem stats8119 : actualRows8119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8119=7428 := by core033_kernel_decide
theorem rows8120 : actualRows8120=WordField.canonicalRows actualModulus 8120 (.rotr 8116 25) := by core033_kernel_decide
theorem stats8120 : actualRows8120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8120=5124 := by core033_kernel_decide
theorem rows8121 : actualRows8121=WordField.canonicalRows actualModulus 8121 (.bxor 8119 8120) := by core033_kernel_decide
theorem stats8121 : actualRows8121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8121=7428 := by core033_kernel_decide
theorem rows8122 : actualRows8122=WordField.canonicalRows actualModulus 8122 (.badd 8035 8121) := by core033_kernel_decide
theorem stats8122 : actualRows8122.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8122=5388 := by core033_kernel_decide
theorem rows8123 : actualRows8123=WordField.canonicalRows actualModulus 8123 (.band 8116 8089) := by core033_kernel_decide
theorem stats8123 : actualRows8123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8123=5124 := by core033_kernel_decide
theorem rows8124 : actualRows8124=WordField.canonicalRows actualModulus 8124 (.bnot 8116) := by core033_kernel_decide
theorem stats8124 : actualRows8124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8124=6276 := by core033_kernel_decide
theorem rows8125 : actualRows8125=WordField.canonicalRows actualModulus 8125 (.band 8124 8062) := by core033_kernel_decide
theorem stats8125 : actualRows8125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8125=5124 := by core033_kernel_decide
theorem rows8126 : actualRows8126=WordField.canonicalRows actualModulus 8126 (.bxor 8123 8125) := by core033_kernel_decide
theorem stats8126 : actualRows8126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8126=7428 := by core033_kernel_decide
theorem rows8127 : actualRows8127=WordField.canonicalRows actualModulus 8127 (.badd 8122 8126) := by core033_kernel_decide
theorem stats8127 : actualRows8127.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8127=5388 := by core033_kernel_decide
theorem rows8128 : actualRows8128=WordField.canonicalRows actualModulus 8128 (.literal (BitVec.ofNat 32 2730485921)) := by core033_kernel_decide
theorem stats8128 : actualRows8128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8128=4044 := by core033_kernel_decide
theorem rows8129 : actualRows8129=WordField.canonicalRows actualModulus 8129 (.badd 8127 8128) := by core033_kernel_decide
theorem stats8129 : actualRows8129.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8129=5388 := by core033_kernel_decide
theorem rows8130 : actualRows8130=WordField.canonicalRows actualModulus 8130 (.badd 8129 6737) := by core033_kernel_decide
theorem stats8130 : actualRows8130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8130=5388 := by core033_kernel_decide
theorem rows8131 : actualRows8131=WordField.canonicalRows actualModulus 8131 (.rotr 8115 2) := by core033_kernel_decide
theorem stats8131 : actualRows8131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8131=5124 := by core033_kernel_decide
theorem rows8132 : actualRows8132=WordField.canonicalRows actualModulus 8132 (.rotr 8115 13) := by core033_kernel_decide
theorem stats8132 : actualRows8132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8132=5124 := by core033_kernel_decide
theorem rows8133 : actualRows8133=WordField.canonicalRows actualModulus 8133 (.bxor 8131 8132) := by core033_kernel_decide
theorem stats8133 : actualRows8133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8133=7428 := by core033_kernel_decide
theorem rows8134 : actualRows8134=WordField.canonicalRows actualModulus 8134 (.rotr 8115 22) := by core033_kernel_decide
theorem stats8134 : actualRows8134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8134=5124 := by core033_kernel_decide
theorem rows8135 : actualRows8135=WordField.canonicalRows actualModulus 8135 (.bxor 8133 8134) := by core033_kernel_decide
theorem stats8135 : actualRows8135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8135=7428 := by core033_kernel_decide
theorem rows8136 : actualRows8136=WordField.canonicalRows actualModulus 8136 (.band 8115 8088) := by core033_kernel_decide
theorem stats8136 : actualRows8136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8136=5124 := by core033_kernel_decide
theorem rows8137 : actualRows8137=WordField.canonicalRows actualModulus 8137 (.band 8115 8061) := by core033_kernel_decide
theorem stats8137 : actualRows8137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8137=5124 := by core033_kernel_decide
theorem rows8138 : actualRows8138=WordField.canonicalRows actualModulus 8138 (.bxor 8136 8137) := by core033_kernel_decide
theorem stats8138 : actualRows8138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8138=7428 := by core033_kernel_decide
theorem rows8139 : actualRows8139=WordField.canonicalRows actualModulus 8139 (.band 8088 8061) := by core033_kernel_decide
theorem stats8139 : actualRows8139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8139=5124 := by core033_kernel_decide
theorem rows8140 : actualRows8140=WordField.canonicalRows actualModulus 8140 (.bxor 8138 8139) := by core033_kernel_decide
theorem stats8140 : actualRows8140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8140=7428 := by core033_kernel_decide
theorem rows8141 : actualRows8141=WordField.canonicalRows actualModulus 8141 (.badd 8135 8140) := by core033_kernel_decide
theorem stats8141 : actualRows8141.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8141=5388 := by core033_kernel_decide
theorem rows8142 : actualRows8142=WordField.canonicalRows actualModulus 8142 (.badd 8130 8141) := by core033_kernel_decide
theorem stats8142 : actualRows8142.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8142=5388 := by core033_kernel_decide
theorem rows8143 : actualRows8143=WordField.canonicalRows actualModulus 8143 (.badd 8034 8130) := by core033_kernel_decide
theorem stats8143 : actualRows8143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8143=5388 := by core033_kernel_decide
theorem rows8144 : actualRows8144=WordField.canonicalRows actualModulus 8144 (.rotr 8143 6) := by core033_kernel_decide
theorem stats8144 : actualRows8144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8144=5124 := by core033_kernel_decide
theorem rows8145 : actualRows8145=WordField.canonicalRows actualModulus 8145 (.rotr 8143 11) := by core033_kernel_decide
theorem stats8145 : actualRows8145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8145=5124 := by core033_kernel_decide
theorem rows8146 : actualRows8146=WordField.canonicalRows actualModulus 8146 (.bxor 8144 8145) := by core033_kernel_decide
theorem stats8146 : actualRows8146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8146=7428 := by core033_kernel_decide
theorem rows8147 : actualRows8147=WordField.canonicalRows actualModulus 8147 (.rotr 8143 25) := by core033_kernel_decide
theorem stats8147 : actualRows8147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8147=5124 := by core033_kernel_decide
theorem rows8148 : actualRows8148=WordField.canonicalRows actualModulus 8148 (.bxor 8146 8147) := by core033_kernel_decide
theorem stats8148 : actualRows8148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8148=7428 := by core033_kernel_decide
theorem rows8149 : actualRows8149=WordField.canonicalRows actualModulus 8149 (.badd 8062 8148) := by core033_kernel_decide
theorem stats8149 : actualRows8149.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8149=5388 := by core033_kernel_decide
theorem rows8150 : actualRows8150=WordField.canonicalRows actualModulus 8150 (.band 8143 8116) := by core033_kernel_decide
theorem stats8150 : actualRows8150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8150=5124 := by core033_kernel_decide
theorem rows8151 : actualRows8151=WordField.canonicalRows actualModulus 8151 (.bnot 8143) := by core033_kernel_decide
theorem stats8151 : actualRows8151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8151=6276 := by core033_kernel_decide
theorem rows8152 : actualRows8152=WordField.canonicalRows actualModulus 8152 (.band 8151 8089) := by core033_kernel_decide
theorem stats8152 : actualRows8152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8152=5124 := by core033_kernel_decide
theorem rows8153 : actualRows8153=WordField.canonicalRows actualModulus 8153 (.bxor 8150 8152) := by core033_kernel_decide
theorem stats8153 : actualRows8153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8153=7428 := by core033_kernel_decide
theorem rows8154 : actualRows8154=WordField.canonicalRows actualModulus 8154 (.badd 8149 8153) := by core033_kernel_decide
theorem stats8154 : actualRows8154.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8154=5388 := by core033_kernel_decide
theorem rows8155 : actualRows8155=WordField.canonicalRows actualModulus 8155 (.literal (BitVec.ofNat 32 2820302411)) := by core033_kernel_decide
theorem stats8155 : actualRows8155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8155=3828 := by core033_kernel_decide
theorem rows8156 : actualRows8156=WordField.canonicalRows actualModulus 8156 (.badd 8154 8155) := by core033_kernel_decide
theorem stats8156 : actualRows8156.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8156=5388 := by core033_kernel_decide
theorem rows8157 : actualRows8157=WordField.canonicalRows actualModulus 8157 (.badd 8156 6750) := by core033_kernel_decide
theorem stats8157 : actualRows8157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8157=5388 := by core033_kernel_decide
theorem rows8158 : actualRows8158=WordField.canonicalRows actualModulus 8158 (.rotr 8142 2) := by core033_kernel_decide
theorem stats8158 : actualRows8158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8158=5124 := by core033_kernel_decide
theorem rows8159 : actualRows8159=WordField.canonicalRows actualModulus 8159 (.rotr 8142 13) := by core033_kernel_decide
theorem stats8159 : actualRows8159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8159=5124 := by core033_kernel_decide
theorem rows8160 : actualRows8160=WordField.canonicalRows actualModulus 8160 (.bxor 8158 8159) := by core033_kernel_decide
theorem stats8160 : actualRows8160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8160=7428 := by core033_kernel_decide
theorem rows8161 : actualRows8161=WordField.canonicalRows actualModulus 8161 (.rotr 8142 22) := by core033_kernel_decide
theorem stats8161 : actualRows8161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8161=5124 := by core033_kernel_decide
theorem rows8162 : actualRows8162=WordField.canonicalRows actualModulus 8162 (.bxor 8160 8161) := by core033_kernel_decide
theorem stats8162 : actualRows8162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8162=7428 := by core033_kernel_decide
theorem rows8163 : actualRows8163=WordField.canonicalRows actualModulus 8163 (.band 8142 8115) := by core033_kernel_decide
theorem stats8163 : actualRows8163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8163=5124 := by core033_kernel_decide
theorem rows8164 : actualRows8164=WordField.canonicalRows actualModulus 8164 (.band 8142 8088) := by core033_kernel_decide
theorem stats8164 : actualRows8164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8164=5124 := by core033_kernel_decide
theorem rows8165 : actualRows8165=WordField.canonicalRows actualModulus 8165 (.bxor 8163 8164) := by core033_kernel_decide
theorem stats8165 : actualRows8165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8165=7428 := by core033_kernel_decide
theorem rows8166 : actualRows8166=WordField.canonicalRows actualModulus 8166 (.band 8115 8088) := by core033_kernel_decide
theorem stats8166 : actualRows8166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8166=5124 := by core033_kernel_decide
theorem rows8167 : actualRows8167=WordField.canonicalRows actualModulus 8167 (.bxor 8165 8166) := by core033_kernel_decide
theorem stats8167 : actualRows8167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8167=7428 := by core033_kernel_decide
theorem rows8168 : actualRows8168=WordField.canonicalRows actualModulus 8168 (.badd 8162 8167) := by core033_kernel_decide
theorem stats8168 : actualRows8168.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8168=5388 := by core033_kernel_decide
theorem rows8169 : actualRows8169=WordField.canonicalRows actualModulus 8169 (.badd 8157 8168) := by core033_kernel_decide
theorem stats8169 : actualRows8169.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8169=5388 := by core033_kernel_decide
theorem rows8170 : actualRows8170=WordField.canonicalRows actualModulus 8170 (.badd 8061 8157) := by core033_kernel_decide
theorem stats8170 : actualRows8170.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8170=5388 := by core033_kernel_decide
def partRows126 : List R1CS.Row := actualRows8107++actualRows8108++actualRows8109++actualRows8110++actualRows8111++actualRows8112++actualRows8113++actualRows8114++actualRows8115++actualRows8116++actualRows8117++actualRows8118++actualRows8119++actualRows8120++actualRows8121++actualRows8122++actualRows8123++actualRows8124++actualRows8125++actualRows8126++actualRows8127++actualRows8128++actualRows8129++actualRows8130++actualRows8131++actualRows8132++actualRows8133++actualRows8134++actualRows8135++actualRows8136++actualRows8137++actualRows8138++actualRows8139++actualRows8140++actualRows8141++actualRows8142++actualRows8143++actualRows8144++actualRows8145++actualRows8146++actualRows8147++actualRows8148++actualRows8149++actualRows8150++actualRows8151++actualRows8152++actualRows8153++actualRows8154++actualRows8155++actualRows8156++actualRows8157++actualRows8158++actualRows8159++actualRows8160++actualRows8161++actualRows8162++actualRows8163++actualRows8164++actualRows8165++actualRows8166++actualRows8167++actualRows8168++actualRows8169++actualRows8170
def partOps126 : List WordIR.Op := [.rotr 8088 22,.bxor 8106 8107,.band 8088 8061,.band 8088 8034,.bxor 8109 8110,.band 8061 8034,.bxor 8111 8112,.badd 8108 8113,.badd 8103 8114,.badd 8007 8103,.rotr 8116 6,.rotr 8116 11,.bxor 8117 8118,.rotr 8116 25,.bxor 8119 8120,.badd 8035 8121,.band 8116 8089,.bnot 8116,.band 8124 8062,.bxor 8123 8125,.badd 8122 8126,.literal (BitVec.ofNat 32 2730485921),.badd 8127 8128,.badd 8129 6737,.rotr 8115 2,.rotr 8115 13,.bxor 8131 8132,.rotr 8115 22,.bxor 8133 8134,.band 8115 8088,.band 8115 8061,.bxor 8136 8137,.band 8088 8061,.bxor 8138 8139,.badd 8135 8140,.badd 8130 8141,.badd 8034 8130,.rotr 8143 6,.rotr 8143 11,.bxor 8144 8145,.rotr 8143 25,.bxor 8146 8147,.badd 8062 8148,.band 8143 8116,.bnot 8143,.band 8151 8089,.bxor 8150 8152,.badd 8149 8153,.literal (BitVec.ofNat 32 2820302411),.badd 8154 8155,.badd 8156 6750,.rotr 8142 2,.rotr 8142 13,.bxor 8158 8159,.rotr 8142 22,.bxor 8160 8161,.band 8142 8115,.band 8142 8088,.bxor 8163 8164,.band 8115 8088,.bxor 8165 8166,.badd 8162 8167,.badd 8157 8168,.badd 8061 8157]
theorem partExact126 : partRows126=WordField.rows actualModulus 8107 partOps126 := by
  simp only [partRows126,partOps126,WordField.rows,rows8107,rows8108,rows8109,rows8110,rows8111,rows8112,rows8113,rows8114,rows8115,rows8116,rows8117,rows8118,rows8119,rows8120,rows8121,rows8122,rows8123,rows8124,rows8125,rows8126,rows8127,rows8128,rows8129,rows8130,rows8131,rows8132,rows8133,rows8134,rows8135,rows8136,rows8137,rows8138,rows8139,rows8140,rows8141,rows8142,rows8143,rows8144,rows8145,rows8146,rows8147,rows8148,rows8149,rows8150,rows8151,rows8152,rows8153,rows8154,rows8155,rows8156,rows8157,rows8158,rows8159,rows8160,rows8161,rows8162,rows8163,rows8164,rows8165,rows8166,rows8167,rows8168,rows8169,rows8170,List.append_assoc,List.append_nil]
theorem partLength126 : partOps126.length=64 := by decide
theorem partStats126 : partRows126.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows126=371520 := by
  simp only [partRows126,List.length_append,MatrixRowBlocks.rows_weight_append,stats8107.1,stats8107.2,stats8108.1,stats8108.2,stats8109.1,stats8109.2,stats8110.1,stats8110.2,stats8111.1,stats8111.2,stats8112.1,stats8112.2,stats8113.1,stats8113.2,stats8114.1,stats8114.2,stats8115.1,stats8115.2,stats8116.1,stats8116.2,stats8117.1,stats8117.2,stats8118.1,stats8118.2,stats8119.1,stats8119.2,stats8120.1,stats8120.2,stats8121.1,stats8121.2,stats8122.1,stats8122.2,stats8123.1,stats8123.2,stats8124.1,stats8124.2,stats8125.1,stats8125.2,stats8126.1,stats8126.2,stats8127.1,stats8127.2,stats8128.1,stats8128.2,stats8129.1,stats8129.2,stats8130.1,stats8130.2,stats8131.1,stats8131.2,stats8132.1,stats8132.2,stats8133.1,stats8133.2,stats8134.1,stats8134.2,stats8135.1,stats8135.2,stats8136.1,stats8136.2,stats8137.1,stats8137.2,stats8138.1,stats8138.2,stats8139.1,stats8139.2,stats8140.1,stats8140.2,stats8141.1,stats8141.2,stats8142.1,stats8142.2,stats8143.1,stats8143.2,stats8144.1,stats8144.2,stats8145.1,stats8145.2,stats8146.1,stats8146.2,stats8147.1,stats8147.2,stats8148.1,stats8148.2,stats8149.1,stats8149.2,stats8150.1,stats8150.2,stats8151.1,stats8151.2,stats8152.1,stats8152.2,stats8153.1,stats8153.2,stats8154.1,stats8154.2,stats8155.1,stats8155.2,stats8156.1,stats8156.2,stats8157.1,stats8157.2,stats8158.1,stats8158.2,stats8159.1,stats8159.2,stats8160.1,stats8160.2,stats8161.1,stats8161.2,stats8162.1,stats8162.2,stats8163.1,stats8163.2,stats8164.1,stats8164.2,stats8165.1,stats8165.2,stats8166.1,stats8166.2,stats8167.1,stats8167.2,stats8168.1,stats8168.2,stats8169.1,stats8169.2,stats8170.1,stats8170.2]
  decide
end FrameHashControllerCheckedRows
