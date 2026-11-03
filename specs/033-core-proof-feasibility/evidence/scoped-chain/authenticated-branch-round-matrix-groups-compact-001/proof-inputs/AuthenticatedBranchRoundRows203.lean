import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData204
import AuthenticatedBranchRoundInstructionMatrixData205
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13110 : actualRows13110=WordField.canonicalRows actualModulus 13110 (.bxor 13097 13109) := by core033_kernel_decide
theorem stats13110 : actualRows13110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13110=7428 := by core033_kernel_decide
theorem rows13111 : actualRows13111=WordField.canonicalRows actualModulus 13111 (.shr 13110 31) := by core033_kernel_decide
theorem stats13111 : actualRows13111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13111=2892 := by core033_kernel_decide
theorem rows13112 : actualRows13112=WordField.canonicalRows actualModulus 13112 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13112 : actualRows13112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13112=2892 := by core033_kernel_decide
theorem rows13113 : actualRows13113=WordField.canonicalRows actualModulus 13113 (.bxor 13111 13112) := by core033_kernel_decide
theorem stats13113 : actualRows13113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13113=7428 := by core033_kernel_decide
theorem rows13114 : actualRows13114=WordField.canonicalRows actualModulus 13114 (.bnot 13113) := by core033_kernel_decide
theorem stats13114 : actualRows13114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13114=6276 := by core033_kernel_decide
theorem rows13115 : actualRows13115=WordField.canonicalRows actualModulus 13115 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13115 : actualRows13115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13115=2892 := by core033_kernel_decide
theorem rows13116 : actualRows13116=WordField.canonicalRows actualModulus 13116 (.badd 13114 13115) := by core033_kernel_decide
theorem stats13116 : actualRows13116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13116=5388 := by core033_kernel_decide
theorem rows13117 : actualRows13117=WordField.canonicalRows actualModulus 13117 (.band 13116 10972) := by core033_kernel_decide
theorem stats13117 : actualRows13117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13117=5124 := by core033_kernel_decide
theorem rows13118 : actualRows13118=WordField.canonicalRows actualModulus 13118 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13118 : actualRows13118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13118=2964 := by core033_kernel_decide
theorem rows13119 : actualRows13119=WordField.canonicalRows actualModulus 13119 (.bxor 693 13118) := by core033_kernel_decide
theorem stats13119 : actualRows13119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13119=7428 := by core033_kernel_decide
theorem rows13120 : actualRows13120=WordField.canonicalRows actualModulus 13120 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13120 : actualRows13120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13120=2820 := by core033_kernel_decide
theorem rows13121 : actualRows13121=WordField.canonicalRows actualModulus 13121 (.bnot 13120) := by core033_kernel_decide
theorem stats13121 : actualRows13121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13121=6276 := by core033_kernel_decide
theorem rows13122 : actualRows13122=WordField.canonicalRows actualModulus 13122 (.band 13119 13121) := by core033_kernel_decide
theorem stats13122 : actualRows13122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13122=5124 := by core033_kernel_decide
theorem rows13123 : actualRows13123=WordField.canonicalRows actualModulus 13123 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13123 : actualRows13123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13123=2964 := by core033_kernel_decide
theorem rows13124 : actualRows13124=WordField.canonicalRows actualModulus 13124 (.bxor 693 13123) := by core033_kernel_decide
theorem stats13124 : actualRows13124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13124=7428 := by core033_kernel_decide
theorem rows13125 : actualRows13125=WordField.canonicalRows actualModulus 13125 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13125 : actualRows13125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13125=2820 := by core033_kernel_decide
theorem rows13126 : actualRows13126=WordField.canonicalRows actualModulus 13126 (.bnot 13125) := by core033_kernel_decide
theorem stats13126 : actualRows13126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13126=6276 := by core033_kernel_decide
theorem rows13127 : actualRows13127=WordField.canonicalRows actualModulus 13127 (.bxor 13124 13126) := by core033_kernel_decide
theorem stats13127 : actualRows13127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13127=7428 := by core033_kernel_decide
theorem rows13128 : actualRows13128=WordField.canonicalRows actualModulus 13128 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13128 : actualRows13128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13128=2964 := by core033_kernel_decide
theorem rows13129 : actualRows13129=WordField.canonicalRows actualModulus 13129 (.bxor 693 13128) := by core033_kernel_decide
theorem stats13129 : actualRows13129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13129=7428 := by core033_kernel_decide
theorem rows13130 : actualRows13130=WordField.canonicalRows actualModulus 13130 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13130 : actualRows13130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13130=2820 := by core033_kernel_decide
theorem rows13131 : actualRows13131=WordField.canonicalRows actualModulus 13131 (.bnot 13130) := by core033_kernel_decide
theorem stats13131 : actualRows13131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13131=6276 := by core033_kernel_decide
theorem rows13132 : actualRows13132=WordField.canonicalRows actualModulus 13132 (.badd 13129 13131) := by core033_kernel_decide
theorem stats13132 : actualRows13132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13132=5388 := by core033_kernel_decide
theorem rows13133 : actualRows13133=WordField.canonicalRows actualModulus 13133 (.bnot 13132) := by core033_kernel_decide
theorem stats13133 : actualRows13133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13133=6276 := by core033_kernel_decide
theorem rows13134 : actualRows13134=WordField.canonicalRows actualModulus 13134 (.band 13127 13133) := by core033_kernel_decide
theorem stats13134 : actualRows13134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13134=5124 := by core033_kernel_decide
theorem rows13135 : actualRows13135=WordField.canonicalRows actualModulus 13135 (.bxor 13122 13134) := by core033_kernel_decide
theorem stats13135 : actualRows13135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13135=7428 := by core033_kernel_decide
theorem rows13136 : actualRows13136=WordField.canonicalRows actualModulus 13136 (.shr 13135 31) := by core033_kernel_decide
theorem stats13136 : actualRows13136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13136=2892 := by core033_kernel_decide
theorem rows13137 : actualRows13137=WordField.canonicalRows actualModulus 13137 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13137 : actualRows13137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13137=2892 := by core033_kernel_decide
theorem rows13138 : actualRows13138=WordField.canonicalRows actualModulus 13138 (.bxor 13136 13137) := by core033_kernel_decide
theorem stats13138 : actualRows13138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13138=7428 := by core033_kernel_decide
theorem rows13139 : actualRows13139=WordField.canonicalRows actualModulus 13139 (.bnot 13138) := by core033_kernel_decide
theorem stats13139 : actualRows13139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13139=6276 := by core033_kernel_decide
theorem rows13140 : actualRows13140=WordField.canonicalRows actualModulus 13140 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13140 : actualRows13140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13140=2892 := by core033_kernel_decide
theorem rows13141 : actualRows13141=WordField.canonicalRows actualModulus 13141 (.badd 13139 13140) := by core033_kernel_decide
theorem stats13141 : actualRows13141.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13141=5388 := by core033_kernel_decide
theorem rows13142 : actualRows13142=WordField.canonicalRows actualModulus 13142 (.bnot 13141) := by core033_kernel_decide
theorem stats13142 : actualRows13142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13142=6276 := by core033_kernel_decide
theorem rows13143 : actualRows13143=WordField.canonicalRows actualModulus 13143 (.band 13142 1651) := by core033_kernel_decide
theorem stats13143 : actualRows13143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13143=5124 := by core033_kernel_decide
theorem rows13144 : actualRows13144=WordField.canonicalRows actualModulus 13144 (.bxor 13117 13143) := by core033_kernel_decide
theorem stats13144 : actualRows13144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13144=7428 := by core033_kernel_decide
theorem rows13145 : actualRows13145=WordField.canonicalRows actualModulus 13145 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13145 : actualRows13145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13145=2964 := by core033_kernel_decide
theorem rows13146 : actualRows13146=WordField.canonicalRows actualModulus 13146 (.bxor 693 13145) := by core033_kernel_decide
theorem stats13146 : actualRows13146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13146=7428 := by core033_kernel_decide
theorem rows13147 : actualRows13147=WordField.canonicalRows actualModulus 13147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13147 : actualRows13147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13147=2820 := by core033_kernel_decide
theorem rows13148 : actualRows13148=WordField.canonicalRows actualModulus 13148 (.bnot 13147) := by core033_kernel_decide
theorem stats13148 : actualRows13148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13148=6276 := by core033_kernel_decide
theorem rows13149 : actualRows13149=WordField.canonicalRows actualModulus 13149 (.band 13146 13148) := by core033_kernel_decide
theorem stats13149 : actualRows13149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13149=5124 := by core033_kernel_decide
theorem rows13150 : actualRows13150=WordField.canonicalRows actualModulus 13150 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13150 : actualRows13150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13150=2964 := by core033_kernel_decide
theorem rows13151 : actualRows13151=WordField.canonicalRows actualModulus 13151 (.bxor 693 13150) := by core033_kernel_decide
theorem stats13151 : actualRows13151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13151=7428 := by core033_kernel_decide
theorem rows13152 : actualRows13152=WordField.canonicalRows actualModulus 13152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13152 : actualRows13152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13152=2820 := by core033_kernel_decide
theorem rows13153 : actualRows13153=WordField.canonicalRows actualModulus 13153 (.bnot 13152) := by core033_kernel_decide
theorem stats13153 : actualRows13153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13153=6276 := by core033_kernel_decide
theorem rows13154 : actualRows13154=WordField.canonicalRows actualModulus 13154 (.bxor 13151 13153) := by core033_kernel_decide
theorem stats13154 : actualRows13154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13154=7428 := by core033_kernel_decide
theorem rows13155 : actualRows13155=WordField.canonicalRows actualModulus 13155 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13155 : actualRows13155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13155=2964 := by core033_kernel_decide
theorem rows13156 : actualRows13156=WordField.canonicalRows actualModulus 13156 (.bxor 693 13155) := by core033_kernel_decide
theorem stats13156 : actualRows13156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13156=7428 := by core033_kernel_decide
theorem rows13157 : actualRows13157=WordField.canonicalRows actualModulus 13157 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13157 : actualRows13157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13157=2820 := by core033_kernel_decide
theorem rows13158 : actualRows13158=WordField.canonicalRows actualModulus 13158 (.bnot 13157) := by core033_kernel_decide
theorem stats13158 : actualRows13158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13158=6276 := by core033_kernel_decide
theorem rows13159 : actualRows13159=WordField.canonicalRows actualModulus 13159 (.badd 13156 13158) := by core033_kernel_decide
theorem stats13159 : actualRows13159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13159=5388 := by core033_kernel_decide
theorem rows13160 : actualRows13160=WordField.canonicalRows actualModulus 13160 (.bnot 13159) := by core033_kernel_decide
theorem stats13160 : actualRows13160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13160=6276 := by core033_kernel_decide
theorem rows13161 : actualRows13161=WordField.canonicalRows actualModulus 13161 (.band 13154 13160) := by core033_kernel_decide
theorem stats13161 : actualRows13161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13161=5124 := by core033_kernel_decide
theorem rows13162 : actualRows13162=WordField.canonicalRows actualModulus 13162 (.bxor 13149 13161) := by core033_kernel_decide
theorem stats13162 : actualRows13162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13162=7428 := by core033_kernel_decide
theorem rows13163 : actualRows13163=WordField.canonicalRows actualModulus 13163 (.shr 13162 31) := by core033_kernel_decide
theorem stats13163 : actualRows13163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13163=2892 := by core033_kernel_decide
theorem rows13164 : actualRows13164=WordField.canonicalRows actualModulus 13164 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13164 : actualRows13164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13164=2892 := by core033_kernel_decide
theorem rows13165 : actualRows13165=WordField.canonicalRows actualModulus 13165 (.bxor 13163 13164) := by core033_kernel_decide
theorem stats13165 : actualRows13165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13165=7428 := by core033_kernel_decide
theorem rows13166 : actualRows13166=WordField.canonicalRows actualModulus 13166 (.bnot 13165) := by core033_kernel_decide
theorem stats13166 : actualRows13166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13166=6276 := by core033_kernel_decide
theorem rows13167 : actualRows13167=WordField.canonicalRows actualModulus 13167 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13167 : actualRows13167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13167=2892 := by core033_kernel_decide
theorem rows13168 : actualRows13168=WordField.canonicalRows actualModulus 13168 (.badd 13166 13167) := by core033_kernel_decide
theorem stats13168 : actualRows13168.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13168=5388 := by core033_kernel_decide
theorem rows13169 : actualRows13169=WordField.canonicalRows actualModulus 13169 (.band 13168 11275) := by core033_kernel_decide
theorem stats13169 : actualRows13169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13169=5124 := by core033_kernel_decide
theorem rows13170 : actualRows13170=WordField.canonicalRows actualModulus 13170 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13170 : actualRows13170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13170=2964 := by core033_kernel_decide
theorem rows13171 : actualRows13171=WordField.canonicalRows actualModulus 13171 (.bxor 693 13170) := by core033_kernel_decide
theorem stats13171 : actualRows13171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13171=7428 := by core033_kernel_decide
theorem rows13172 : actualRows13172=WordField.canonicalRows actualModulus 13172 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13172 : actualRows13172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13172=2820 := by core033_kernel_decide
theorem rows13173 : actualRows13173=WordField.canonicalRows actualModulus 13173 (.bnot 13172) := by core033_kernel_decide
theorem stats13173 : actualRows13173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13173=6276 := by core033_kernel_decide
def partRows203 : List R1CS.Row := actualRows13110++actualRows13111++actualRows13112++actualRows13113++actualRows13114++actualRows13115++actualRows13116++actualRows13117++actualRows13118++actualRows13119++actualRows13120++actualRows13121++actualRows13122++actualRows13123++actualRows13124++actualRows13125++actualRows13126++actualRows13127++actualRows13128++actualRows13129++actualRows13130++actualRows13131++actualRows13132++actualRows13133++actualRows13134++actualRows13135++actualRows13136++actualRows13137++actualRows13138++actualRows13139++actualRows13140++actualRows13141++actualRows13142++actualRows13143++actualRows13144++actualRows13145++actualRows13146++actualRows13147++actualRows13148++actualRows13149++actualRows13150++actualRows13151++actualRows13152++actualRows13153++actualRows13154++actualRows13155++actualRows13156++actualRows13157++actualRows13158++actualRows13159++actualRows13160++actualRows13161++actualRows13162++actualRows13163++actualRows13164++actualRows13165++actualRows13166++actualRows13167++actualRows13168++actualRows13169++actualRows13170++actualRows13171++actualRows13172++actualRows13173
def partOps203 : List WordIR.Op := [.bxor 13097 13109,.shr 13110 31,.literal (BitVec.ofNat 32 1),.bxor 13111 13112,.bnot 13113,.literal (BitVec.ofNat 32 1),.badd 13114 13115,.band 13116 10972,.literal (BitVec.ofNat 32 3),.bxor 693 13118,.literal (BitVec.ofNat 32 0),.bnot 13120,.band 13119 13121,.literal (BitVec.ofNat 32 3),.bxor 693 13123,.literal (BitVec.ofNat 32 0),.bnot 13125,.bxor 13124 13126,.literal (BitVec.ofNat 32 3),.bxor 693 13128,.literal (BitVec.ofNat 32 0),.bnot 13130,.badd 13129 13131,.bnot 13132,.band 13127 13133,.bxor 13122 13134,.shr 13135 31,.literal (BitVec.ofNat 32 1),.bxor 13136 13137,.bnot 13138,.literal (BitVec.ofNat 32 1),.badd 13139 13140,.bnot 13141,.band 13142 1651,.bxor 13117 13143,.literal (BitVec.ofNat 32 3),.bxor 693 13145,.literal (BitVec.ofNat 32 0),.bnot 13147,.band 13146 13148,.literal (BitVec.ofNat 32 3),.bxor 693 13150,.literal (BitVec.ofNat 32 0),.bnot 13152,.bxor 13151 13153,.literal (BitVec.ofNat 32 3),.bxor 693 13155,.literal (BitVec.ofNat 32 0),.bnot 13157,.badd 13156 13158,.bnot 13159,.band 13154 13160,.bxor 13149 13161,.shr 13162 31,.literal (BitVec.ofNat 32 1),.bxor 13163 13164,.bnot 13165,.literal (BitVec.ofNat 32 1),.badd 13166 13167,.band 13168 11275,.literal (BitVec.ofNat 32 3),.bxor 693 13170,.literal (BitVec.ofNat 32 0),.bnot 13172]
theorem partExact203 : partRows203=WordField.rows actualModulus 13110 partOps203 := by
  simp only [partRows203,partOps203,WordField.rows,rows13110,rows13111,rows13112,rows13113,rows13114,rows13115,rows13116,rows13117,rows13118,rows13119,rows13120,rows13121,rows13122,rows13123,rows13124,rows13125,rows13126,rows13127,rows13128,rows13129,rows13130,rows13131,rows13132,rows13133,rows13134,rows13135,rows13136,rows13137,rows13138,rows13139,rows13140,rows13141,rows13142,rows13143,rows13144,rows13145,rows13146,rows13147,rows13148,rows13149,rows13150,rows13151,rows13152,rows13153,rows13154,rows13155,rows13156,rows13157,rows13158,rows13159,rows13160,rows13161,rows13162,rows13163,rows13164,rows13165,rows13166,rows13167,rows13168,rows13169,rows13170,rows13171,rows13172,rows13173,List.append_assoc,List.append_nil]
theorem partLength203 : partOps203.length=64 := by decide
theorem partStats203 : partRows203.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows203=329760 := by
  simp only [partRows203,List.length_append,MatrixRowBlocks.rows_weight_append,stats13110.1,stats13110.2,stats13111.1,stats13111.2,stats13112.1,stats13112.2,stats13113.1,stats13113.2,stats13114.1,stats13114.2,stats13115.1,stats13115.2,stats13116.1,stats13116.2,stats13117.1,stats13117.2,stats13118.1,stats13118.2,stats13119.1,stats13119.2,stats13120.1,stats13120.2,stats13121.1,stats13121.2,stats13122.1,stats13122.2,stats13123.1,stats13123.2,stats13124.1,stats13124.2,stats13125.1,stats13125.2,stats13126.1,stats13126.2,stats13127.1,stats13127.2,stats13128.1,stats13128.2,stats13129.1,stats13129.2,stats13130.1,stats13130.2,stats13131.1,stats13131.2,stats13132.1,stats13132.2,stats13133.1,stats13133.2,stats13134.1,stats13134.2,stats13135.1,stats13135.2,stats13136.1,stats13136.2,stats13137.1,stats13137.2,stats13138.1,stats13138.2,stats13139.1,stats13139.2,stats13140.1,stats13140.2,stats13141.1,stats13141.2,stats13142.1,stats13142.2,stats13143.1,stats13143.2,stats13144.1,stats13144.2,stats13145.1,stats13145.2,stats13146.1,stats13146.2,stats13147.1,stats13147.2,stats13148.1,stats13148.2,stats13149.1,stats13149.2,stats13150.1,stats13150.2,stats13151.1,stats13151.2,stats13152.1,stats13152.2,stats13153.1,stats13153.2,stats13154.1,stats13154.2,stats13155.1,stats13155.2,stats13156.1,stats13156.2,stats13157.1,stats13157.2,stats13158.1,stats13158.2,stats13159.1,stats13159.2,stats13160.1,stats13160.2,stats13161.1,stats13161.2,stats13162.1,stats13162.2,stats13163.1,stats13163.2,stats13164.1,stats13164.2,stats13165.1,stats13165.2,stats13166.1,stats13166.2,stats13167.1,stats13167.2,stats13168.1,stats13168.2,stats13169.1,stats13169.2,stats13170.1,stats13170.2,stats13171.1,stats13171.2,stats13172.1,stats13172.2,stats13173.1,stats13173.2]
  decide
end AuthenticatedBranchRoundCheckedRows
