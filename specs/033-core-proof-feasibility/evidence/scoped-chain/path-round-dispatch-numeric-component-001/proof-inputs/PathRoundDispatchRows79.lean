import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData79
import PathRoundDispatchInstructionMatrixData80
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5099 : actualRows5099=WordField.canonicalRows actualModulus 5099 (.bxor 96 5098) := by core033_kernel_decide
theorem stats5099 : actualRows5099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5099=7428 := by core033_kernel_decide
theorem rows5100 : actualRows5100=WordField.canonicalRows actualModulus 5100 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5100 : actualRows5100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5100=2820 := by core033_kernel_decide
theorem rows5101 : actualRows5101=WordField.canonicalRows actualModulus 5101 (.bnot 5100) := by core033_kernel_decide
theorem stats5101 : actualRows5101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5101=6276 := by core033_kernel_decide
theorem rows5102 : actualRows5102=WordField.canonicalRows actualModulus 5102 (.band 5099 5101) := by core033_kernel_decide
theorem stats5102 : actualRows5102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5102=5124 := by core033_kernel_decide
theorem rows5103 : actualRows5103=WordField.canonicalRows actualModulus 5103 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5103 : actualRows5103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5103=2892 := by core033_kernel_decide
theorem rows5104 : actualRows5104=WordField.canonicalRows actualModulus 5104 (.bxor 96 5103) := by core033_kernel_decide
theorem stats5104 : actualRows5104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5104=7428 := by core033_kernel_decide
theorem rows5105 : actualRows5105=WordField.canonicalRows actualModulus 5105 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5105 : actualRows5105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5105=2820 := by core033_kernel_decide
theorem rows5106 : actualRows5106=WordField.canonicalRows actualModulus 5106 (.bnot 5105) := by core033_kernel_decide
theorem stats5106 : actualRows5106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5106=6276 := by core033_kernel_decide
theorem rows5107 : actualRows5107=WordField.canonicalRows actualModulus 5107 (.bxor 5104 5106) := by core033_kernel_decide
theorem stats5107 : actualRows5107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5107=7428 := by core033_kernel_decide
theorem rows5108 : actualRows5108=WordField.canonicalRows actualModulus 5108 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5108 : actualRows5108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5108=2892 := by core033_kernel_decide
theorem rows5109 : actualRows5109=WordField.canonicalRows actualModulus 5109 (.bxor 96 5108) := by core033_kernel_decide
theorem stats5109 : actualRows5109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5109=7428 := by core033_kernel_decide
theorem rows5110 : actualRows5110=WordField.canonicalRows actualModulus 5110 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5110 : actualRows5110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5110=2820 := by core033_kernel_decide
theorem rows5111 : actualRows5111=WordField.canonicalRows actualModulus 5111 (.bnot 5110) := by core033_kernel_decide
theorem stats5111 : actualRows5111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5111=6276 := by core033_kernel_decide
theorem rows5112 : actualRows5112=WordField.canonicalRows actualModulus 5112 (.badd 5109 5111) := by core033_kernel_decide
theorem stats5112 : actualRows5112.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5112=5388 := by core033_kernel_decide
theorem rows5113 : actualRows5113=WordField.canonicalRows actualModulus 5113 (.bnot 5112) := by core033_kernel_decide
theorem stats5113 : actualRows5113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5113=6276 := by core033_kernel_decide
theorem rows5114 : actualRows5114=WordField.canonicalRows actualModulus 5114 (.band 5107 5113) := by core033_kernel_decide
theorem stats5114 : actualRows5114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5114=5124 := by core033_kernel_decide
theorem rows5115 : actualRows5115=WordField.canonicalRows actualModulus 5115 (.bxor 5102 5114) := by core033_kernel_decide
theorem stats5115 : actualRows5115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5115=7428 := by core033_kernel_decide
theorem rows5116 : actualRows5116=WordField.canonicalRows actualModulus 5116 (.shr 5115 31) := by core033_kernel_decide
theorem stats5116 : actualRows5116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5116=2892 := by core033_kernel_decide
theorem rows5117 : actualRows5117=WordField.canonicalRows actualModulus 5117 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5117 : actualRows5117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5117=2892 := by core033_kernel_decide
theorem rows5118 : actualRows5118=WordField.canonicalRows actualModulus 5118 (.bxor 5116 5117) := by core033_kernel_decide
theorem stats5118 : actualRows5118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5118=7428 := by core033_kernel_decide
theorem rows5119 : actualRows5119=WordField.canonicalRows actualModulus 5119 (.bnot 5118) := by core033_kernel_decide
theorem stats5119 : actualRows5119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5119=6276 := by core033_kernel_decide
theorem rows5120 : actualRows5120=WordField.canonicalRows actualModulus 5120 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5120 : actualRows5120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5120=2892 := by core033_kernel_decide
theorem rows5121 : actualRows5121=WordField.canonicalRows actualModulus 5121 (.badd 5119 5120) := by core033_kernel_decide
theorem stats5121 : actualRows5121.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5121=5388 := by core033_kernel_decide
theorem rows5122 : actualRows5122=WordField.canonicalRows actualModulus 5122 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5122 : actualRows5122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5122=2820 := by core033_kernel_decide
theorem rows5123 : actualRows5123=WordField.canonicalRows actualModulus 5123 (.band 5121 5122) := by core033_kernel_decide
theorem stats5123 : actualRows5123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5123=5124 := by core033_kernel_decide
theorem rows5124 : actualRows5124=WordField.canonicalRows actualModulus 5124 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5124 : actualRows5124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5124=2892 := by core033_kernel_decide
theorem rows5125 : actualRows5125=WordField.canonicalRows actualModulus 5125 (.bxor 96 5124) := by core033_kernel_decide
theorem stats5125 : actualRows5125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5125=7428 := by core033_kernel_decide
theorem rows5126 : actualRows5126=WordField.canonicalRows actualModulus 5126 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5126 : actualRows5126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5126=2820 := by core033_kernel_decide
theorem rows5127 : actualRows5127=WordField.canonicalRows actualModulus 5127 (.bnot 5126) := by core033_kernel_decide
theorem stats5127 : actualRows5127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5127=6276 := by core033_kernel_decide
theorem rows5128 : actualRows5128=WordField.canonicalRows actualModulus 5128 (.band 5125 5127) := by core033_kernel_decide
theorem stats5128 : actualRows5128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5128=5124 := by core033_kernel_decide
theorem rows5129 : actualRows5129=WordField.canonicalRows actualModulus 5129 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5129 : actualRows5129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5129=2892 := by core033_kernel_decide
theorem rows5130 : actualRows5130=WordField.canonicalRows actualModulus 5130 (.bxor 96 5129) := by core033_kernel_decide
theorem stats5130 : actualRows5130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5130=7428 := by core033_kernel_decide
theorem rows5131 : actualRows5131=WordField.canonicalRows actualModulus 5131 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5131 : actualRows5131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5131=2820 := by core033_kernel_decide
theorem rows5132 : actualRows5132=WordField.canonicalRows actualModulus 5132 (.bnot 5131) := by core033_kernel_decide
theorem stats5132 : actualRows5132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5132=6276 := by core033_kernel_decide
theorem rows5133 : actualRows5133=WordField.canonicalRows actualModulus 5133 (.bxor 5130 5132) := by core033_kernel_decide
theorem stats5133 : actualRows5133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5133=7428 := by core033_kernel_decide
theorem rows5134 : actualRows5134=WordField.canonicalRows actualModulus 5134 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5134 : actualRows5134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5134=2892 := by core033_kernel_decide
theorem rows5135 : actualRows5135=WordField.canonicalRows actualModulus 5135 (.bxor 96 5134) := by core033_kernel_decide
theorem stats5135 : actualRows5135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5135=7428 := by core033_kernel_decide
theorem rows5136 : actualRows5136=WordField.canonicalRows actualModulus 5136 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5136 : actualRows5136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5136=2820 := by core033_kernel_decide
theorem rows5137 : actualRows5137=WordField.canonicalRows actualModulus 5137 (.bnot 5136) := by core033_kernel_decide
theorem stats5137 : actualRows5137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5137=6276 := by core033_kernel_decide
theorem rows5138 : actualRows5138=WordField.canonicalRows actualModulus 5138 (.badd 5135 5137) := by core033_kernel_decide
theorem stats5138 : actualRows5138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5138=5388 := by core033_kernel_decide
theorem rows5139 : actualRows5139=WordField.canonicalRows actualModulus 5139 (.bnot 5138) := by core033_kernel_decide
theorem stats5139 : actualRows5139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5139=6276 := by core033_kernel_decide
theorem rows5140 : actualRows5140=WordField.canonicalRows actualModulus 5140 (.band 5133 5139) := by core033_kernel_decide
theorem stats5140 : actualRows5140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5140=5124 := by core033_kernel_decide
theorem rows5141 : actualRows5141=WordField.canonicalRows actualModulus 5141 (.bxor 5128 5140) := by core033_kernel_decide
theorem stats5141 : actualRows5141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5141=7428 := by core033_kernel_decide
theorem rows5142 : actualRows5142=WordField.canonicalRows actualModulus 5142 (.shr 5141 31) := by core033_kernel_decide
theorem stats5142 : actualRows5142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5142=2892 := by core033_kernel_decide
theorem rows5143 : actualRows5143=WordField.canonicalRows actualModulus 5143 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5143 : actualRows5143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5143=2892 := by core033_kernel_decide
theorem rows5144 : actualRows5144=WordField.canonicalRows actualModulus 5144 (.bxor 5142 5143) := by core033_kernel_decide
theorem stats5144 : actualRows5144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5144=7428 := by core033_kernel_decide
theorem rows5145 : actualRows5145=WordField.canonicalRows actualModulus 5145 (.bnot 5144) := by core033_kernel_decide
theorem stats5145 : actualRows5145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5145=6276 := by core033_kernel_decide
theorem rows5146 : actualRows5146=WordField.canonicalRows actualModulus 5146 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5146 : actualRows5146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5146=2892 := by core033_kernel_decide
theorem rows5147 : actualRows5147=WordField.canonicalRows actualModulus 5147 (.badd 5145 5146) := by core033_kernel_decide
theorem stats5147 : actualRows5147.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5147=5388 := by core033_kernel_decide
theorem rows5148 : actualRows5148=WordField.canonicalRows actualModulus 5148 (.bnot 5147) := by core033_kernel_decide
theorem stats5148 : actualRows5148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5148=6276 := by core033_kernel_decide
theorem rows5149 : actualRows5149=WordField.canonicalRows actualModulus 5149 (.band 5148 1460) := by core033_kernel_decide
theorem stats5149 : actualRows5149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5149=5124 := by core033_kernel_decide
theorem rows5150 : actualRows5150=WordField.canonicalRows actualModulus 5150 (.bxor 5123 5149) := by core033_kernel_decide
theorem stats5150 : actualRows5150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5150=7428 := by core033_kernel_decide
theorem rows5151 : actualRows5151=WordField.canonicalRows actualModulus 5151 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5151 : actualRows5151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5151=2892 := by core033_kernel_decide
theorem rows5152 : actualRows5152=WordField.canonicalRows actualModulus 5152 (.bxor 96 5151) := by core033_kernel_decide
theorem stats5152 : actualRows5152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5152=7428 := by core033_kernel_decide
theorem rows5153 : actualRows5153=WordField.canonicalRows actualModulus 5153 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5153 : actualRows5153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5153=2820 := by core033_kernel_decide
theorem rows5154 : actualRows5154=WordField.canonicalRows actualModulus 5154 (.bnot 5153) := by core033_kernel_decide
theorem stats5154 : actualRows5154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5154=6276 := by core033_kernel_decide
theorem rows5155 : actualRows5155=WordField.canonicalRows actualModulus 5155 (.band 5152 5154) := by core033_kernel_decide
theorem stats5155 : actualRows5155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5155=5124 := by core033_kernel_decide
theorem rows5156 : actualRows5156=WordField.canonicalRows actualModulus 5156 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5156 : actualRows5156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5156=2892 := by core033_kernel_decide
theorem rows5157 : actualRows5157=WordField.canonicalRows actualModulus 5157 (.bxor 96 5156) := by core033_kernel_decide
theorem stats5157 : actualRows5157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5157=7428 := by core033_kernel_decide
theorem rows5158 : actualRows5158=WordField.canonicalRows actualModulus 5158 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5158 : actualRows5158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5158=2820 := by core033_kernel_decide
theorem rows5159 : actualRows5159=WordField.canonicalRows actualModulus 5159 (.bnot 5158) := by core033_kernel_decide
theorem stats5159 : actualRows5159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5159=6276 := by core033_kernel_decide
theorem rows5160 : actualRows5160=WordField.canonicalRows actualModulus 5160 (.bxor 5157 5159) := by core033_kernel_decide
theorem stats5160 : actualRows5160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5160=7428 := by core033_kernel_decide
theorem rows5161 : actualRows5161=WordField.canonicalRows actualModulus 5161 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5161 : actualRows5161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5161=2892 := by core033_kernel_decide
theorem rows5162 : actualRows5162=WordField.canonicalRows actualModulus 5162 (.bxor 96 5161) := by core033_kernel_decide
theorem stats5162 : actualRows5162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5162=7428 := by core033_kernel_decide
def partRows79 : List R1CS.Row := actualRows5099++actualRows5100++actualRows5101++actualRows5102++actualRows5103++actualRows5104++actualRows5105++actualRows5106++actualRows5107++actualRows5108++actualRows5109++actualRows5110++actualRows5111++actualRows5112++actualRows5113++actualRows5114++actualRows5115++actualRows5116++actualRows5117++actualRows5118++actualRows5119++actualRows5120++actualRows5121++actualRows5122++actualRows5123++actualRows5124++actualRows5125++actualRows5126++actualRows5127++actualRows5128++actualRows5129++actualRows5130++actualRows5131++actualRows5132++actualRows5133++actualRows5134++actualRows5135++actualRows5136++actualRows5137++actualRows5138++actualRows5139++actualRows5140++actualRows5141++actualRows5142++actualRows5143++actualRows5144++actualRows5145++actualRows5146++actualRows5147++actualRows5148++actualRows5149++actualRows5150++actualRows5151++actualRows5152++actualRows5153++actualRows5154++actualRows5155++actualRows5156++actualRows5157++actualRows5158++actualRows5159++actualRows5160++actualRows5161++actualRows5162
def partOps79 : List WordIR.Op := [.bxor 96 5098,.literal (BitVec.ofNat 32 0),.bnot 5100,.band 5099 5101,.literal (BitVec.ofNat 32 2),.bxor 96 5103,.literal (BitVec.ofNat 32 0),.bnot 5105,.bxor 5104 5106,.literal (BitVec.ofNat 32 2),.bxor 96 5108,.literal (BitVec.ofNat 32 0),.bnot 5110,.badd 5109 5111,.bnot 5112,.band 5107 5113,.bxor 5102 5114,.shr 5115 31,.literal (BitVec.ofNat 32 1),.bxor 5116 5117,.bnot 5118,.literal (BitVec.ofNat 32 1),.badd 5119 5120,.literal (BitVec.ofNat 32 0),.band 5121 5122,.literal (BitVec.ofNat 32 2),.bxor 96 5124,.literal (BitVec.ofNat 32 0),.bnot 5126,.band 5125 5127,.literal (BitVec.ofNat 32 2),.bxor 96 5129,.literal (BitVec.ofNat 32 0),.bnot 5131,.bxor 5130 5132,.literal (BitVec.ofNat 32 2),.bxor 96 5134,.literal (BitVec.ofNat 32 0),.bnot 5136,.badd 5135 5137,.bnot 5138,.band 5133 5139,.bxor 5128 5140,.shr 5141 31,.literal (BitVec.ofNat 32 1),.bxor 5142 5143,.bnot 5144,.literal (BitVec.ofNat 32 1),.badd 5145 5146,.bnot 5147,.band 5148 1460,.bxor 5123 5149,.literal (BitVec.ofNat 32 2),.bxor 96 5151,.literal (BitVec.ofNat 32 0),.bnot 5153,.band 5152 5154,.literal (BitVec.ofNat 32 2),.bxor 96 5156,.literal (BitVec.ofNat 32 0),.bnot 5158,.bxor 5157 5159,.literal (BitVec.ofNat 32 2),.bxor 96 5161]
theorem partExact79 : partRows79=WordField.rows actualModulus 5099 partOps79 := by
  simp only [partRows79,partOps79,WordField.rows,rows5099,rows5100,rows5101,rows5102,rows5103,rows5104,rows5105,rows5106,rows5107,rows5108,rows5109,rows5110,rows5111,rows5112,rows5113,rows5114,rows5115,rows5116,rows5117,rows5118,rows5119,rows5120,rows5121,rows5122,rows5123,rows5124,rows5125,rows5126,rows5127,rows5128,rows5129,rows5130,rows5131,rows5132,rows5133,rows5134,rows5135,rows5136,rows5137,rows5138,rows5139,rows5140,rows5141,rows5142,rows5143,rows5144,rows5145,rows5146,rows5147,rows5148,rows5149,rows5150,rows5151,rows5152,rows5153,rows5154,rows5155,rows5156,rows5157,rows5158,rows5159,rows5160,rows5161,rows5162,List.append_assoc,List.append_nil]
theorem partLength79 : partOps79.length=64 := by decide
theorem partStats79 : partRows79.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows79=331152 := by
  simp only [partRows79,List.length_append,MatrixRowBlocks.rows_weight_append,stats5099.1,stats5099.2,stats5100.1,stats5100.2,stats5101.1,stats5101.2,stats5102.1,stats5102.2,stats5103.1,stats5103.2,stats5104.1,stats5104.2,stats5105.1,stats5105.2,stats5106.1,stats5106.2,stats5107.1,stats5107.2,stats5108.1,stats5108.2,stats5109.1,stats5109.2,stats5110.1,stats5110.2,stats5111.1,stats5111.2,stats5112.1,stats5112.2,stats5113.1,stats5113.2,stats5114.1,stats5114.2,stats5115.1,stats5115.2,stats5116.1,stats5116.2,stats5117.1,stats5117.2,stats5118.1,stats5118.2,stats5119.1,stats5119.2,stats5120.1,stats5120.2,stats5121.1,stats5121.2,stats5122.1,stats5122.2,stats5123.1,stats5123.2,stats5124.1,stats5124.2,stats5125.1,stats5125.2,stats5126.1,stats5126.2,stats5127.1,stats5127.2,stats5128.1,stats5128.2,stats5129.1,stats5129.2,stats5130.1,stats5130.2,stats5131.1,stats5131.2,stats5132.1,stats5132.2,stats5133.1,stats5133.2,stats5134.1,stats5134.2,stats5135.1,stats5135.2,stats5136.1,stats5136.2,stats5137.1,stats5137.2,stats5138.1,stats5138.2,stats5139.1,stats5139.2,stats5140.1,stats5140.2,stats5141.1,stats5141.2,stats5142.1,stats5142.2,stats5143.1,stats5143.2,stats5144.1,stats5144.2,stats5145.1,stats5145.2,stats5146.1,stats5146.2,stats5147.1,stats5147.2,stats5148.1,stats5148.2,stats5149.1,stats5149.2,stats5150.1,stats5150.2,stats5151.1,stats5151.2,stats5152.1,stats5152.2,stats5153.1,stats5153.2,stats5154.1,stats5154.2,stats5155.1,stats5155.2,stats5156.1,stats5156.2,stats5157.1,stats5157.2,stats5158.1,stats5158.2,stats5159.1,stats5159.2,stats5160.1,stats5160.2,stats5161.1,stats5161.2,stats5162.1,stats5162.2]
  decide
end PathRoundDispatchCheckedRows
