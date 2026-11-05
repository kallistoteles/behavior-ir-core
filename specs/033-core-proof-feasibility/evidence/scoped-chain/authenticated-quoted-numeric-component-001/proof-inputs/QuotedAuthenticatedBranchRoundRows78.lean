import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData79
import AuthenticatedBranchRoundInstructionMatrixData80
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5110 : actualRows5110=WordField.canonicalRows actualModulus 5110 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5110 : actualRows5110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5110=2820 := by core033_kernel_decide
theorem rows5111 : actualRows5111=WordField.canonicalRows actualModulus 5111 (.bnot 5110) := by core033_kernel_decide
theorem stats5111 : actualRows5111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5111=6276 := by core033_kernel_decide
theorem rows5112 : actualRows5112=WordField.canonicalRows actualModulus 5112 (.bxor 5109 5111) := by core033_kernel_decide
theorem stats5112 : actualRows5112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5112=7428 := by core033_kernel_decide
theorem rows5113 : actualRows5113=WordField.canonicalRows actualModulus 5113 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5113 : actualRows5113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5113=2892 := by core033_kernel_decide
theorem rows5114 : actualRows5114=WordField.canonicalRows actualModulus 5114 (.bxor 1299 5113) := by core033_kernel_decide
theorem stats5114 : actualRows5114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5114=7428 := by core033_kernel_decide
theorem rows5115 : actualRows5115=WordField.canonicalRows actualModulus 5115 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5115 : actualRows5115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5115=2820 := by core033_kernel_decide
theorem rows5116 : actualRows5116=WordField.canonicalRows actualModulus 5116 (.bnot 5115) := by core033_kernel_decide
theorem stats5116 : actualRows5116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5116=6276 := by core033_kernel_decide
theorem rows5117 : actualRows5117=WordField.canonicalRows actualModulus 5117 (.badd 5114 5116) := by core033_kernel_decide
theorem stats5117 : actualRows5117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5117=5388 := by core033_kernel_decide
theorem rows5118 : actualRows5118=WordField.canonicalRows actualModulus 5118 (.bnot 5117) := by core033_kernel_decide
theorem stats5118 : actualRows5118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5118=6276 := by core033_kernel_decide
theorem rows5119 : actualRows5119=WordField.canonicalRows actualModulus 5119 (.band 5112 5118) := by core033_kernel_decide
theorem stats5119 : actualRows5119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5119=5124 := by core033_kernel_decide
theorem rows5120 : actualRows5120=WordField.canonicalRows actualModulus 5120 (.bxor 5107 5119) := by core033_kernel_decide
theorem stats5120 : actualRows5120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5120=7428 := by core033_kernel_decide
theorem rows5121 : actualRows5121=WordField.canonicalRows actualModulus 5121 (.shr 5120 31) := by core033_kernel_decide
theorem stats5121 : actualRows5121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5121=2892 := by core033_kernel_decide
theorem rows5122 : actualRows5122=WordField.canonicalRows actualModulus 5122 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5122 : actualRows5122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5122=2892 := by core033_kernel_decide
theorem rows5123 : actualRows5123=WordField.canonicalRows actualModulus 5123 (.bxor 5121 5122) := by core033_kernel_decide
theorem stats5123 : actualRows5123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5123=7428 := by core033_kernel_decide
theorem rows5124 : actualRows5124=WordField.canonicalRows actualModulus 5124 (.bnot 5123) := by core033_kernel_decide
theorem stats5124 : actualRows5124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5124=6276 := by core033_kernel_decide
theorem rows5125 : actualRows5125=WordField.canonicalRows actualModulus 5125 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5125 : actualRows5125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5125=2892 := by core033_kernel_decide
theorem rows5126 : actualRows5126=WordField.canonicalRows actualModulus 5126 (.badd 5124 5125) := by core033_kernel_decide
theorem stats5126 : actualRows5126.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5126=5388 := by core033_kernel_decide
theorem rows5127 : actualRows5127=WordField.canonicalRows actualModulus 5127 (.band 5126 2786) := by core033_kernel_decide
theorem stats5127 : actualRows5127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5127=5124 := by core033_kernel_decide
theorem rows5128 : actualRows5128=WordField.canonicalRows actualModulus 5128 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5128 : actualRows5128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5128=2892 := by core033_kernel_decide
theorem rows5129 : actualRows5129=WordField.canonicalRows actualModulus 5129 (.bxor 1299 5128) := by core033_kernel_decide
theorem stats5129 : actualRows5129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5129=7428 := by core033_kernel_decide
theorem rows5130 : actualRows5130=WordField.canonicalRows actualModulus 5130 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5130 : actualRows5130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5130=2820 := by core033_kernel_decide
theorem rows5131 : actualRows5131=WordField.canonicalRows actualModulus 5131 (.bnot 5130) := by core033_kernel_decide
theorem stats5131 : actualRows5131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5131=6276 := by core033_kernel_decide
theorem rows5132 : actualRows5132=WordField.canonicalRows actualModulus 5132 (.band 5129 5131) := by core033_kernel_decide
theorem stats5132 : actualRows5132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5132=5124 := by core033_kernel_decide
theorem rows5133 : actualRows5133=WordField.canonicalRows actualModulus 5133 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5133 : actualRows5133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5133=2892 := by core033_kernel_decide
theorem rows5134 : actualRows5134=WordField.canonicalRows actualModulus 5134 (.bxor 1299 5133) := by core033_kernel_decide
theorem stats5134 : actualRows5134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5134=7428 := by core033_kernel_decide
theorem rows5135 : actualRows5135=WordField.canonicalRows actualModulus 5135 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5135 : actualRows5135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5135=2820 := by core033_kernel_decide
theorem rows5136 : actualRows5136=WordField.canonicalRows actualModulus 5136 (.bnot 5135) := by core033_kernel_decide
theorem stats5136 : actualRows5136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5136=6276 := by core033_kernel_decide
theorem rows5137 : actualRows5137=WordField.canonicalRows actualModulus 5137 (.bxor 5134 5136) := by core033_kernel_decide
theorem stats5137 : actualRows5137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5137=7428 := by core033_kernel_decide
theorem rows5138 : actualRows5138=WordField.canonicalRows actualModulus 5138 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5138 : actualRows5138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5138=2892 := by core033_kernel_decide
theorem rows5139 : actualRows5139=WordField.canonicalRows actualModulus 5139 (.bxor 1299 5138) := by core033_kernel_decide
theorem stats5139 : actualRows5139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5139=7428 := by core033_kernel_decide
theorem rows5140 : actualRows5140=WordField.canonicalRows actualModulus 5140 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5140 : actualRows5140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5140=2820 := by core033_kernel_decide
theorem rows5141 : actualRows5141=WordField.canonicalRows actualModulus 5141 (.bnot 5140) := by core033_kernel_decide
theorem stats5141 : actualRows5141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5141=6276 := by core033_kernel_decide
theorem rows5142 : actualRows5142=WordField.canonicalRows actualModulus 5142 (.badd 5139 5141) := by core033_kernel_decide
theorem stats5142 : actualRows5142.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5142=5388 := by core033_kernel_decide
theorem rows5143 : actualRows5143=WordField.canonicalRows actualModulus 5143 (.bnot 5142) := by core033_kernel_decide
theorem stats5143 : actualRows5143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5143=6276 := by core033_kernel_decide
theorem rows5144 : actualRows5144=WordField.canonicalRows actualModulus 5144 (.band 5137 5143) := by core033_kernel_decide
theorem stats5144 : actualRows5144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5144=5124 := by core033_kernel_decide
theorem rows5145 : actualRows5145=WordField.canonicalRows actualModulus 5145 (.bxor 5132 5144) := by core033_kernel_decide
theorem stats5145 : actualRows5145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5145=7428 := by core033_kernel_decide
theorem rows5146 : actualRows5146=WordField.canonicalRows actualModulus 5146 (.shr 5145 31) := by core033_kernel_decide
theorem stats5146 : actualRows5146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5146=2892 := by core033_kernel_decide
theorem rows5147 : actualRows5147=WordField.canonicalRows actualModulus 5147 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5147 : actualRows5147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5147=2892 := by core033_kernel_decide
theorem rows5148 : actualRows5148=WordField.canonicalRows actualModulus 5148 (.bxor 5146 5147) := by core033_kernel_decide
theorem stats5148 : actualRows5148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5148=7428 := by core033_kernel_decide
theorem rows5149 : actualRows5149=WordField.canonicalRows actualModulus 5149 (.bnot 5148) := by core033_kernel_decide
theorem stats5149 : actualRows5149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5149=6276 := by core033_kernel_decide
theorem rows5150 : actualRows5150=WordField.canonicalRows actualModulus 5150 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5150 : actualRows5150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5150=2892 := by core033_kernel_decide
theorem rows5151 : actualRows5151=WordField.canonicalRows actualModulus 5151 (.badd 5149 5150) := by core033_kernel_decide
theorem stats5151 : actualRows5151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5151=5388 := by core033_kernel_decide
theorem rows5152 : actualRows5152=WordField.canonicalRows actualModulus 5152 (.bnot 5151) := by core033_kernel_decide
theorem stats5152 : actualRows5152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5152=6276 := by core033_kernel_decide
theorem rows5153 : actualRows5153=WordField.canonicalRows actualModulus 5153 (.band 5152 2594) := by core033_kernel_decide
theorem stats5153 : actualRows5153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5153=5124 := by core033_kernel_decide
theorem rows5154 : actualRows5154=WordField.canonicalRows actualModulus 5154 (.bxor 5127 5153) := by core033_kernel_decide
theorem stats5154 : actualRows5154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5154=7428 := by core033_kernel_decide
theorem rows5155 : actualRows5155=WordField.canonicalRows actualModulus 5155 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5155 : actualRows5155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5155=2892 := by core033_kernel_decide
theorem rows5156 : actualRows5156=WordField.canonicalRows actualModulus 5156 (.bxor 1299 5155) := by core033_kernel_decide
theorem stats5156 : actualRows5156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5156=7428 := by core033_kernel_decide
theorem rows5157 : actualRows5157=WordField.canonicalRows actualModulus 5157 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5157 : actualRows5157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5157=2820 := by core033_kernel_decide
theorem rows5158 : actualRows5158=WordField.canonicalRows actualModulus 5158 (.bnot 5157) := by core033_kernel_decide
theorem stats5158 : actualRows5158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5158=6276 := by core033_kernel_decide
theorem rows5159 : actualRows5159=WordField.canonicalRows actualModulus 5159 (.band 5156 5158) := by core033_kernel_decide
theorem stats5159 : actualRows5159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5159=5124 := by core033_kernel_decide
theorem rows5160 : actualRows5160=WordField.canonicalRows actualModulus 5160 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5160 : actualRows5160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5160=2892 := by core033_kernel_decide
theorem rows5161 : actualRows5161=WordField.canonicalRows actualModulus 5161 (.bxor 1299 5160) := by core033_kernel_decide
theorem stats5161 : actualRows5161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5161=7428 := by core033_kernel_decide
theorem rows5162 : actualRows5162=WordField.canonicalRows actualModulus 5162 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5162 : actualRows5162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5162=2820 := by core033_kernel_decide
theorem rows5163 : actualRows5163=WordField.canonicalRows actualModulus 5163 (.bnot 5162) := by core033_kernel_decide
theorem stats5163 : actualRows5163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5163=6276 := by core033_kernel_decide
theorem rows5164 : actualRows5164=WordField.canonicalRows actualModulus 5164 (.bxor 5161 5163) := by core033_kernel_decide
theorem stats5164 : actualRows5164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5164=7428 := by core033_kernel_decide
theorem rows5165 : actualRows5165=WordField.canonicalRows actualModulus 5165 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5165 : actualRows5165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5165=2892 := by core033_kernel_decide
theorem rows5166 : actualRows5166=WordField.canonicalRows actualModulus 5166 (.bxor 1299 5165) := by core033_kernel_decide
theorem stats5166 : actualRows5166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5166=7428 := by core033_kernel_decide
theorem rows5167 : actualRows5167=WordField.canonicalRows actualModulus 5167 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5167 : actualRows5167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5167=2820 := by core033_kernel_decide
theorem rows5168 : actualRows5168=WordField.canonicalRows actualModulus 5168 (.bnot 5167) := by core033_kernel_decide
theorem stats5168 : actualRows5168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5168=6276 := by core033_kernel_decide
theorem rows5169 : actualRows5169=WordField.canonicalRows actualModulus 5169 (.badd 5166 5168) := by core033_kernel_decide
theorem stats5169 : actualRows5169.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5169=5388 := by core033_kernel_decide
theorem rows5170 : actualRows5170=WordField.canonicalRows actualModulus 5170 (.bnot 5169) := by core033_kernel_decide
theorem stats5170 : actualRows5170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5170=6276 := by core033_kernel_decide
theorem rows5171 : actualRows5171=WordField.canonicalRows actualModulus 5171 (.band 5164 5170) := by core033_kernel_decide
theorem stats5171 : actualRows5171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5171=5124 := by core033_kernel_decide
theorem rows5172 : actualRows5172=WordField.canonicalRows actualModulus 5172 (.bxor 5159 5171) := by core033_kernel_decide
theorem stats5172 : actualRows5172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5172=7428 := by core033_kernel_decide
theorem rows5173 : actualRows5173=WordField.canonicalRows actualModulus 5173 (.shr 5172 31) := by core033_kernel_decide
theorem stats5173 : actualRows5173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5173=2892 := by core033_kernel_decide
def partRows78 : List R1CS.Row := actualRows5110++actualRows5111++actualRows5112++actualRows5113++actualRows5114++actualRows5115++actualRows5116++actualRows5117++actualRows5118++actualRows5119++actualRows5120++actualRows5121++actualRows5122++actualRows5123++actualRows5124++actualRows5125++actualRows5126++actualRows5127++actualRows5128++actualRows5129++actualRows5130++actualRows5131++actualRows5132++actualRows5133++actualRows5134++actualRows5135++actualRows5136++actualRows5137++actualRows5138++actualRows5139++actualRows5140++actualRows5141++actualRows5142++actualRows5143++actualRows5144++actualRows5145++actualRows5146++actualRows5147++actualRows5148++actualRows5149++actualRows5150++actualRows5151++actualRows5152++actualRows5153++actualRows5154++actualRows5155++actualRows5156++actualRows5157++actualRows5158++actualRows5159++actualRows5160++actualRows5161++actualRows5162++actualRows5163++actualRows5164++actualRows5165++actualRows5166++actualRows5167++actualRows5168++actualRows5169++actualRows5170++actualRows5171++actualRows5172++actualRows5173
def partOps78 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 5110,.bxor 5109 5111,.literal (BitVec.ofNat 32 2),.bxor 1299 5113,.literal (BitVec.ofNat 32 0),.bnot 5115,.badd 5114 5116,.bnot 5117,.band 5112 5118,.bxor 5107 5119,.shr 5120 31,.literal (BitVec.ofNat 32 1),.bxor 5121 5122,.bnot 5123,.literal (BitVec.ofNat 32 1),.badd 5124 5125,.band 5126 2786,.literal (BitVec.ofNat 32 2),.bxor 1299 5128,.literal (BitVec.ofNat 32 0),.bnot 5130,.band 5129 5131,.literal (BitVec.ofNat 32 2),.bxor 1299 5133,.literal (BitVec.ofNat 32 0),.bnot 5135,.bxor 5134 5136,.literal (BitVec.ofNat 32 2),.bxor 1299 5138,.literal (BitVec.ofNat 32 0),.bnot 5140,.badd 5139 5141,.bnot 5142,.band 5137 5143,.bxor 5132 5144,.shr 5145 31,.literal (BitVec.ofNat 32 1),.bxor 5146 5147,.bnot 5148,.literal (BitVec.ofNat 32 1),.badd 5149 5150,.bnot 5151,.band 5152 2594,.bxor 5127 5153,.literal (BitVec.ofNat 32 2),.bxor 1299 5155,.literal (BitVec.ofNat 32 0),.bnot 5157,.band 5156 5158,.literal (BitVec.ofNat 32 2),.bxor 1299 5160,.literal (BitVec.ofNat 32 0),.bnot 5162,.bxor 5161 5163,.literal (BitVec.ofNat 32 2),.bxor 1299 5165,.literal (BitVec.ofNat 32 0),.bnot 5167,.badd 5166 5168,.bnot 5169,.band 5164 5170,.bxor 5159 5171,.shr 5172 31]
theorem partExact78 : partRows78=WordField.rows actualModulus 5110 partOps78 := by
  simp only [partRows78,partOps78,WordField.rows,rows5110,rows5111,rows5112,rows5113,rows5114,rows5115,rows5116,rows5117,rows5118,rows5119,rows5120,rows5121,rows5122,rows5123,rows5124,rows5125,rows5126,rows5127,rows5128,rows5129,rows5130,rows5131,rows5132,rows5133,rows5134,rows5135,rows5136,rows5137,rows5138,rows5139,rows5140,rows5141,rows5142,rows5143,rows5144,rows5145,rows5146,rows5147,rows5148,rows5149,rows5150,rows5151,rows5152,rows5153,rows5154,rows5155,rows5156,rows5157,rows5158,rows5159,rows5160,rows5161,rows5162,rows5163,rows5164,rows5165,rows5166,rows5167,rows5168,rows5169,rows5170,rows5171,rows5172,rows5173,List.append_assoc,List.append_nil]
theorem partLength78 : partOps78.length=64 := by decide
theorem partStats78 : partRows78.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows78=332568 := by
  simp only [partRows78,List.length_append,MatrixRowBlocks.rows_weight_append,stats5110.1,stats5110.2,stats5111.1,stats5111.2,stats5112.1,stats5112.2,stats5113.1,stats5113.2,stats5114.1,stats5114.2,stats5115.1,stats5115.2,stats5116.1,stats5116.2,stats5117.1,stats5117.2,stats5118.1,stats5118.2,stats5119.1,stats5119.2,stats5120.1,stats5120.2,stats5121.1,stats5121.2,stats5122.1,stats5122.2,stats5123.1,stats5123.2,stats5124.1,stats5124.2,stats5125.1,stats5125.2,stats5126.1,stats5126.2,stats5127.1,stats5127.2,stats5128.1,stats5128.2,stats5129.1,stats5129.2,stats5130.1,stats5130.2,stats5131.1,stats5131.2,stats5132.1,stats5132.2,stats5133.1,stats5133.2,stats5134.1,stats5134.2,stats5135.1,stats5135.2,stats5136.1,stats5136.2,stats5137.1,stats5137.2,stats5138.1,stats5138.2,stats5139.1,stats5139.2,stats5140.1,stats5140.2,stats5141.1,stats5141.2,stats5142.1,stats5142.2,stats5143.1,stats5143.2,stats5144.1,stats5144.2,stats5145.1,stats5145.2,stats5146.1,stats5146.2,stats5147.1,stats5147.2,stats5148.1,stats5148.2,stats5149.1,stats5149.2,stats5150.1,stats5150.2,stats5151.1,stats5151.2,stats5152.1,stats5152.2,stats5153.1,stats5153.2,stats5154.1,stats5154.2,stats5155.1,stats5155.2,stats5156.1,stats5156.2,stats5157.1,stats5157.2,stats5158.1,stats5158.2,stats5159.1,stats5159.2,stats5160.1,stats5160.2,stats5161.1,stats5161.2,stats5162.1,stats5162.2,stats5163.1,stats5163.2,stats5164.1,stats5164.2,stats5165.1,stats5165.2,stats5166.1,stats5166.2,stats5167.1,stats5167.2,stats5168.1,stats5168.2,stats5169.1,stats5169.2,stats5170.1,stats5170.2,stats5171.1,stats5171.2,stats5172.1,stats5172.2,stats5173.1,stats5173.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
