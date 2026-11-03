import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData157
import AuthenticatedBranchRoundInstructionMatrixData158
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10102 : actualRows10102=WordField.canonicalRows actualModulus 10102 (.bxor 10100 10101) := by core033_kernel_decide
theorem stats10102 : actualRows10102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10102=7428 := by core033_kernel_decide
theorem rows10103 : actualRows10103=WordField.canonicalRows actualModulus 10103 (.badd 10097 10102) := by core033_kernel_decide
theorem stats10103 : actualRows10103.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10103=5388 := by core033_kernel_decide
theorem rows10104 : actualRows10104=WordField.canonicalRows actualModulus 10104 (.badd 10092 10103) := by core033_kernel_decide
theorem stats10104 : actualRows10104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10104=5388 := by core033_kernel_decide
theorem rows10105 : actualRows10105=WordField.canonicalRows actualModulus 10105 (.badd 9996 10092) := by core033_kernel_decide
theorem stats10105 : actualRows10105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10105=5388 := by core033_kernel_decide
theorem rows10106 : actualRows10106=WordField.canonicalRows actualModulus 10106 (.rotr 10105 6) := by core033_kernel_decide
theorem stats10106 : actualRows10106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10106=5124 := by core033_kernel_decide
theorem rows10107 : actualRows10107=WordField.canonicalRows actualModulus 10107 (.rotr 10105 11) := by core033_kernel_decide
theorem stats10107 : actualRows10107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10107=5124 := by core033_kernel_decide
theorem rows10108 : actualRows10108=WordField.canonicalRows actualModulus 10108 (.bxor 10106 10107) := by core033_kernel_decide
theorem stats10108 : actualRows10108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10108=7428 := by core033_kernel_decide
theorem rows10109 : actualRows10109=WordField.canonicalRows actualModulus 10109 (.rotr 10105 25) := by core033_kernel_decide
theorem stats10109 : actualRows10109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10109=5124 := by core033_kernel_decide
theorem rows10110 : actualRows10110=WordField.canonicalRows actualModulus 10110 (.bxor 10108 10109) := by core033_kernel_decide
theorem stats10110 : actualRows10110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10110=7428 := by core033_kernel_decide
theorem rows10111 : actualRows10111=WordField.canonicalRows actualModulus 10111 (.badd 10024 10110) := by core033_kernel_decide
theorem stats10111 : actualRows10111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10111=5388 := by core033_kernel_decide
theorem rows10112 : actualRows10112=WordField.canonicalRows actualModulus 10112 (.band 10105 10078) := by core033_kernel_decide
theorem stats10112 : actualRows10112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10112=5124 := by core033_kernel_decide
theorem rows10113 : actualRows10113=WordField.canonicalRows actualModulus 10113 (.bnot 10105) := by core033_kernel_decide
theorem stats10113 : actualRows10113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10113=6276 := by core033_kernel_decide
theorem rows10114 : actualRows10114=WordField.canonicalRows actualModulus 10114 (.band 10113 10051) := by core033_kernel_decide
theorem stats10114 : actualRows10114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10114=5124 := by core033_kernel_decide
theorem rows10115 : actualRows10115=WordField.canonicalRows actualModulus 10115 (.bxor 10112 10114) := by core033_kernel_decide
theorem stats10115 : actualRows10115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10115=7428 := by core033_kernel_decide
theorem rows10116 : actualRows10116=WordField.canonicalRows actualModulus 10116 (.badd 10111 10115) := by core033_kernel_decide
theorem stats10116 : actualRows10116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10116=5388 := by core033_kernel_decide
theorem rows10117 : actualRows10117=WordField.canonicalRows actualModulus 10117 (.literal (BitVec.ofNat 32 659060556)) := by core033_kernel_decide
theorem stats10117 : actualRows10117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10117=3900 := by core033_kernel_decide
theorem rows10118 : actualRows10118=WordField.canonicalRows actualModulus 10118 (.badd 10116 10117) := by core033_kernel_decide
theorem stats10118 : actualRows10118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10118=5388 := by core033_kernel_decide
theorem rows10119 : actualRows10119=WordField.canonicalRows actualModulus 10119 (.badd 10118 8586) := by core033_kernel_decide
theorem stats10119 : actualRows10119.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10119=5388 := by core033_kernel_decide
theorem rows10120 : actualRows10120=WordField.canonicalRows actualModulus 10120 (.rotr 10104 2) := by core033_kernel_decide
theorem stats10120 : actualRows10120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10120=5124 := by core033_kernel_decide
theorem rows10121 : actualRows10121=WordField.canonicalRows actualModulus 10121 (.rotr 10104 13) := by core033_kernel_decide
theorem stats10121 : actualRows10121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10121=5124 := by core033_kernel_decide
theorem rows10122 : actualRows10122=WordField.canonicalRows actualModulus 10122 (.bxor 10120 10121) := by core033_kernel_decide
theorem stats10122 : actualRows10122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10122=7428 := by core033_kernel_decide
theorem rows10123 : actualRows10123=WordField.canonicalRows actualModulus 10123 (.rotr 10104 22) := by core033_kernel_decide
theorem stats10123 : actualRows10123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10123=5124 := by core033_kernel_decide
theorem rows10124 : actualRows10124=WordField.canonicalRows actualModulus 10124 (.bxor 10122 10123) := by core033_kernel_decide
theorem stats10124 : actualRows10124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10124=7428 := by core033_kernel_decide
theorem rows10125 : actualRows10125=WordField.canonicalRows actualModulus 10125 (.band 10104 10077) := by core033_kernel_decide
theorem stats10125 : actualRows10125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10125=5124 := by core033_kernel_decide
theorem rows10126 : actualRows10126=WordField.canonicalRows actualModulus 10126 (.band 10104 10050) := by core033_kernel_decide
theorem stats10126 : actualRows10126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10126=5124 := by core033_kernel_decide
theorem rows10127 : actualRows10127=WordField.canonicalRows actualModulus 10127 (.bxor 10125 10126) := by core033_kernel_decide
theorem stats10127 : actualRows10127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10127=7428 := by core033_kernel_decide
theorem rows10128 : actualRows10128=WordField.canonicalRows actualModulus 10128 (.band 10077 10050) := by core033_kernel_decide
theorem stats10128 : actualRows10128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10128=5124 := by core033_kernel_decide
theorem rows10129 : actualRows10129=WordField.canonicalRows actualModulus 10129 (.bxor 10127 10128) := by core033_kernel_decide
theorem stats10129 : actualRows10129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10129=7428 := by core033_kernel_decide
theorem rows10130 : actualRows10130=WordField.canonicalRows actualModulus 10130 (.badd 10124 10129) := by core033_kernel_decide
theorem stats10130 : actualRows10130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10130=5388 := by core033_kernel_decide
theorem rows10131 : actualRows10131=WordField.canonicalRows actualModulus 10131 (.badd 10119 10130) := by core033_kernel_decide
theorem stats10131 : actualRows10131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10131=5388 := by core033_kernel_decide
theorem rows10132 : actualRows10132=WordField.canonicalRows actualModulus 10132 (.badd 10023 10119) := by core033_kernel_decide
theorem stats10132 : actualRows10132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10132=5388 := by core033_kernel_decide
theorem rows10133 : actualRows10133=WordField.canonicalRows actualModulus 10133 (.rotr 10132 6) := by core033_kernel_decide
theorem stats10133 : actualRows10133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10133=5124 := by core033_kernel_decide
theorem rows10134 : actualRows10134=WordField.canonicalRows actualModulus 10134 (.rotr 10132 11) := by core033_kernel_decide
theorem stats10134 : actualRows10134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10134=5124 := by core033_kernel_decide
theorem rows10135 : actualRows10135=WordField.canonicalRows actualModulus 10135 (.bxor 10133 10134) := by core033_kernel_decide
theorem stats10135 : actualRows10135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10135=7428 := by core033_kernel_decide
theorem rows10136 : actualRows10136=WordField.canonicalRows actualModulus 10136 (.rotr 10132 25) := by core033_kernel_decide
theorem stats10136 : actualRows10136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10136=5124 := by core033_kernel_decide
theorem rows10137 : actualRows10137=WordField.canonicalRows actualModulus 10137 (.bxor 10135 10136) := by core033_kernel_decide
theorem stats10137 : actualRows10137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10137=7428 := by core033_kernel_decide
theorem rows10138 : actualRows10138=WordField.canonicalRows actualModulus 10138 (.badd 10051 10137) := by core033_kernel_decide
theorem stats10138 : actualRows10138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10138=5388 := by core033_kernel_decide
theorem rows10139 : actualRows10139=WordField.canonicalRows actualModulus 10139 (.band 10132 10105) := by core033_kernel_decide
theorem stats10139 : actualRows10139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10139=5124 := by core033_kernel_decide
theorem rows10140 : actualRows10140=WordField.canonicalRows actualModulus 10140 (.bnot 10132) := by core033_kernel_decide
theorem stats10140 : actualRows10140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10140=6276 := by core033_kernel_decide
theorem rows10141 : actualRows10141=WordField.canonicalRows actualModulus 10141 (.band 10140 10078) := by core033_kernel_decide
theorem stats10141 : actualRows10141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10141=5124 := by core033_kernel_decide
theorem rows10142 : actualRows10142=WordField.canonicalRows actualModulus 10142 (.bxor 10139 10141) := by core033_kernel_decide
theorem stats10142 : actualRows10142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10142=7428 := by core033_kernel_decide
theorem rows10143 : actualRows10143=WordField.canonicalRows actualModulus 10143 (.badd 10138 10142) := by core033_kernel_decide
theorem stats10143 : actualRows10143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10143=5388 := by core033_kernel_decide
theorem rows10144 : actualRows10144=WordField.canonicalRows actualModulus 10144 (.literal (BitVec.ofNat 32 883997877)) := by core033_kernel_decide
theorem stats10144 : actualRows10144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10144=3972 := by core033_kernel_decide
theorem rows10145 : actualRows10145=WordField.canonicalRows actualModulus 10145 (.badd 10143 10144) := by core033_kernel_decide
theorem stats10145 : actualRows10145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10145=5388 := by core033_kernel_decide
theorem rows10146 : actualRows10146=WordField.canonicalRows actualModulus 10146 (.badd 10145 8599) := by core033_kernel_decide
theorem stats10146 : actualRows10146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10146=5388 := by core033_kernel_decide
theorem rows10147 : actualRows10147=WordField.canonicalRows actualModulus 10147 (.rotr 10131 2) := by core033_kernel_decide
theorem stats10147 : actualRows10147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10147=5124 := by core033_kernel_decide
theorem rows10148 : actualRows10148=WordField.canonicalRows actualModulus 10148 (.rotr 10131 13) := by core033_kernel_decide
theorem stats10148 : actualRows10148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10148=5124 := by core033_kernel_decide
theorem rows10149 : actualRows10149=WordField.canonicalRows actualModulus 10149 (.bxor 10147 10148) := by core033_kernel_decide
theorem stats10149 : actualRows10149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10149=7428 := by core033_kernel_decide
theorem rows10150 : actualRows10150=WordField.canonicalRows actualModulus 10150 (.rotr 10131 22) := by core033_kernel_decide
theorem stats10150 : actualRows10150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10150=5124 := by core033_kernel_decide
theorem rows10151 : actualRows10151=WordField.canonicalRows actualModulus 10151 (.bxor 10149 10150) := by core033_kernel_decide
theorem stats10151 : actualRows10151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10151=7428 := by core033_kernel_decide
theorem rows10152 : actualRows10152=WordField.canonicalRows actualModulus 10152 (.band 10131 10104) := by core033_kernel_decide
theorem stats10152 : actualRows10152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10152=5124 := by core033_kernel_decide
theorem rows10153 : actualRows10153=WordField.canonicalRows actualModulus 10153 (.band 10131 10077) := by core033_kernel_decide
theorem stats10153 : actualRows10153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10153=5124 := by core033_kernel_decide
theorem rows10154 : actualRows10154=WordField.canonicalRows actualModulus 10154 (.bxor 10152 10153) := by core033_kernel_decide
theorem stats10154 : actualRows10154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10154=7428 := by core033_kernel_decide
theorem rows10155 : actualRows10155=WordField.canonicalRows actualModulus 10155 (.band 10104 10077) := by core033_kernel_decide
theorem stats10155 : actualRows10155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10155=5124 := by core033_kernel_decide
theorem rows10156 : actualRows10156=WordField.canonicalRows actualModulus 10156 (.bxor 10154 10155) := by core033_kernel_decide
theorem stats10156 : actualRows10156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10156=7428 := by core033_kernel_decide
theorem rows10157 : actualRows10157=WordField.canonicalRows actualModulus 10157 (.badd 10151 10156) := by core033_kernel_decide
theorem stats10157 : actualRows10157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10157=5388 := by core033_kernel_decide
theorem rows10158 : actualRows10158=WordField.canonicalRows actualModulus 10158 (.badd 10146 10157) := by core033_kernel_decide
theorem stats10158 : actualRows10158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10158=5388 := by core033_kernel_decide
theorem rows10159 : actualRows10159=WordField.canonicalRows actualModulus 10159 (.badd 10050 10146) := by core033_kernel_decide
theorem stats10159 : actualRows10159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10159=5388 := by core033_kernel_decide
theorem rows10160 : actualRows10160=WordField.canonicalRows actualModulus 10160 (.rotr 10159 6) := by core033_kernel_decide
theorem stats10160 : actualRows10160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10160=5124 := by core033_kernel_decide
theorem rows10161 : actualRows10161=WordField.canonicalRows actualModulus 10161 (.rotr 10159 11) := by core033_kernel_decide
theorem stats10161 : actualRows10161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10161=5124 := by core033_kernel_decide
theorem rows10162 : actualRows10162=WordField.canonicalRows actualModulus 10162 (.bxor 10160 10161) := by core033_kernel_decide
theorem stats10162 : actualRows10162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10162=7428 := by core033_kernel_decide
theorem rows10163 : actualRows10163=WordField.canonicalRows actualModulus 10163 (.rotr 10159 25) := by core033_kernel_decide
theorem stats10163 : actualRows10163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10163=5124 := by core033_kernel_decide
theorem rows10164 : actualRows10164=WordField.canonicalRows actualModulus 10164 (.bxor 10162 10163) := by core033_kernel_decide
theorem stats10164 : actualRows10164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10164=7428 := by core033_kernel_decide
theorem rows10165 : actualRows10165=WordField.canonicalRows actualModulus 10165 (.badd 10078 10164) := by core033_kernel_decide
theorem stats10165 : actualRows10165.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10165=5388 := by core033_kernel_decide
def partRows156 : List R1CS.Row := actualRows10102++actualRows10103++actualRows10104++actualRows10105++actualRows10106++actualRows10107++actualRows10108++actualRows10109++actualRows10110++actualRows10111++actualRows10112++actualRows10113++actualRows10114++actualRows10115++actualRows10116++actualRows10117++actualRows10118++actualRows10119++actualRows10120++actualRows10121++actualRows10122++actualRows10123++actualRows10124++actualRows10125++actualRows10126++actualRows10127++actualRows10128++actualRows10129++actualRows10130++actualRows10131++actualRows10132++actualRows10133++actualRows10134++actualRows10135++actualRows10136++actualRows10137++actualRows10138++actualRows10139++actualRows10140++actualRows10141++actualRows10142++actualRows10143++actualRows10144++actualRows10145++actualRows10146++actualRows10147++actualRows10148++actualRows10149++actualRows10150++actualRows10151++actualRows10152++actualRows10153++actualRows10154++actualRows10155++actualRows10156++actualRows10157++actualRows10158++actualRows10159++actualRows10160++actualRows10161++actualRows10162++actualRows10163++actualRows10164++actualRows10165
def partOps156 : List WordIR.Op := [.bxor 10100 10101,.badd 10097 10102,.badd 10092 10103,.badd 9996 10092,.rotr 10105 6,.rotr 10105 11,.bxor 10106 10107,.rotr 10105 25,.bxor 10108 10109,.badd 10024 10110,.band 10105 10078,.bnot 10105,.band 10113 10051,.bxor 10112 10114,.badd 10111 10115,.literal (BitVec.ofNat 32 659060556),.badd 10116 10117,.badd 10118 8586,.rotr 10104 2,.rotr 10104 13,.bxor 10120 10121,.rotr 10104 22,.bxor 10122 10123,.band 10104 10077,.band 10104 10050,.bxor 10125 10126,.band 10077 10050,.bxor 10127 10128,.badd 10124 10129,.badd 10119 10130,.badd 10023 10119,.rotr 10132 6,.rotr 10132 11,.bxor 10133 10134,.rotr 10132 25,.bxor 10135 10136,.badd 10051 10137,.band 10132 10105,.bnot 10132,.band 10140 10078,.bxor 10139 10141,.badd 10138 10142,.literal (BitVec.ofNat 32 883997877),.badd 10143 10144,.badd 10145 8599,.rotr 10131 2,.rotr 10131 13,.bxor 10147 10148,.rotr 10131 22,.bxor 10149 10150,.band 10131 10104,.band 10131 10077,.bxor 10152 10153,.band 10104 10077,.bxor 10154 10155,.badd 10151 10156,.badd 10146 10157,.badd 10050 10146,.rotr 10159 6,.rotr 10159 11,.bxor 10160 10161,.rotr 10159 25,.bxor 10162 10163,.badd 10078 10164]
theorem partExact156 : partRows156=WordField.rows actualModulus 10102 partOps156 := by
  simp only [partRows156,partOps156,WordField.rows,rows10102,rows10103,rows10104,rows10105,rows10106,rows10107,rows10108,rows10109,rows10110,rows10111,rows10112,rows10113,rows10114,rows10115,rows10116,rows10117,rows10118,rows10119,rows10120,rows10121,rows10122,rows10123,rows10124,rows10125,rows10126,rows10127,rows10128,rows10129,rows10130,rows10131,rows10132,rows10133,rows10134,rows10135,rows10136,rows10137,rows10138,rows10139,rows10140,rows10141,rows10142,rows10143,rows10144,rows10145,rows10146,rows10147,rows10148,rows10149,rows10150,rows10151,rows10152,rows10153,rows10154,rows10155,rows10156,rows10157,rows10158,rows10159,rows10160,rows10161,rows10162,rows10163,rows10164,rows10165,List.append_assoc,List.append_nil]
theorem partLength156 : partOps156.length=64 := by decide
theorem partStats156 : partRows156.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows156=371784 := by
  simp only [partRows156,List.length_append,MatrixRowBlocks.rows_weight_append,stats10102.1,stats10102.2,stats10103.1,stats10103.2,stats10104.1,stats10104.2,stats10105.1,stats10105.2,stats10106.1,stats10106.2,stats10107.1,stats10107.2,stats10108.1,stats10108.2,stats10109.1,stats10109.2,stats10110.1,stats10110.2,stats10111.1,stats10111.2,stats10112.1,stats10112.2,stats10113.1,stats10113.2,stats10114.1,stats10114.2,stats10115.1,stats10115.2,stats10116.1,stats10116.2,stats10117.1,stats10117.2,stats10118.1,stats10118.2,stats10119.1,stats10119.2,stats10120.1,stats10120.2,stats10121.1,stats10121.2,stats10122.1,stats10122.2,stats10123.1,stats10123.2,stats10124.1,stats10124.2,stats10125.1,stats10125.2,stats10126.1,stats10126.2,stats10127.1,stats10127.2,stats10128.1,stats10128.2,stats10129.1,stats10129.2,stats10130.1,stats10130.2,stats10131.1,stats10131.2,stats10132.1,stats10132.2,stats10133.1,stats10133.2,stats10134.1,stats10134.2,stats10135.1,stats10135.2,stats10136.1,stats10136.2,stats10137.1,stats10137.2,stats10138.1,stats10138.2,stats10139.1,stats10139.2,stats10140.1,stats10140.2,stats10141.1,stats10141.2,stats10142.1,stats10142.2,stats10143.1,stats10143.2,stats10144.1,stats10144.2,stats10145.1,stats10145.2,stats10146.1,stats10146.2,stats10147.1,stats10147.2,stats10148.1,stats10148.2,stats10149.1,stats10149.2,stats10150.1,stats10150.2,stats10151.1,stats10151.2,stats10152.1,stats10152.2,stats10153.1,stats10153.2,stats10154.1,stats10154.2,stats10155.1,stats10155.2,stats10156.1,stats10156.2,stats10157.1,stats10157.2,stats10158.1,stats10158.2,stats10159.1,stats10159.2,stats10160.1,stats10160.2,stats10161.1,stats10161.2,stats10162.1,stats10162.2,stats10163.1,stats10163.2,stats10164.1,stats10164.2,stats10165.1,stats10165.2]
  decide
end AuthenticatedBranchRoundCheckedRows
