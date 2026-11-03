import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData79
import PairedPathRoundInstructionMatrixData80
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5088 : actualRows5088=WordField.canonicalRows actualModulus 5088 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5088 : actualRows5088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5088=2892 := by core033_kernel_decide
theorem rows5089 : actualRows5089=WordField.canonicalRows actualModulus 5089 (.bxor 5087 5088) := by core033_kernel_decide
theorem stats5089 : actualRows5089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5089=7428 := by core033_kernel_decide
theorem rows5090 : actualRows5090=WordField.canonicalRows actualModulus 5090 (.bnot 5089) := by core033_kernel_decide
theorem stats5090 : actualRows5090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5090=6276 := by core033_kernel_decide
theorem rows5091 : actualRows5091=WordField.canonicalRows actualModulus 5091 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5091 : actualRows5091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5091=2892 := by core033_kernel_decide
theorem rows5092 : actualRows5092=WordField.canonicalRows actualModulus 5092 (.badd 5090 5091) := by core033_kernel_decide
theorem stats5092 : actualRows5092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5092=5388 := by core033_kernel_decide
theorem rows5093 : actualRows5093=WordField.canonicalRows actualModulus 5093 (.bnot 5092) := by core033_kernel_decide
theorem stats5093 : actualRows5093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5093=6276 := by core033_kernel_decide
theorem rows5094 : actualRows5094=WordField.canonicalRows actualModulus 5094 (.band 5093 1947) := by core033_kernel_decide
theorem stats5094 : actualRows5094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5094=5124 := by core033_kernel_decide
theorem rows5095 : actualRows5095=WordField.canonicalRows actualModulus 5095 (.bxor 5068 5094) := by core033_kernel_decide
theorem stats5095 : actualRows5095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5095=7428 := by core033_kernel_decide
theorem rows5096 : actualRows5096=WordField.canonicalRows actualModulus 5096 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5096 : actualRows5096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5096=2892 := by core033_kernel_decide
theorem rows5097 : actualRows5097=WordField.canonicalRows actualModulus 5097 (.bxor 616 5096) := by core033_kernel_decide
theorem stats5097 : actualRows5097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5097=7428 := by core033_kernel_decide
theorem rows5098 : actualRows5098=WordField.canonicalRows actualModulus 5098 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5098 : actualRows5098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5098=2820 := by core033_kernel_decide
theorem rows5099 : actualRows5099=WordField.canonicalRows actualModulus 5099 (.bnot 5098) := by core033_kernel_decide
theorem stats5099 : actualRows5099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5099=6276 := by core033_kernel_decide
theorem rows5100 : actualRows5100=WordField.canonicalRows actualModulus 5100 (.band 5097 5099) := by core033_kernel_decide
theorem stats5100 : actualRows5100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5100=5124 := by core033_kernel_decide
theorem rows5101 : actualRows5101=WordField.canonicalRows actualModulus 5101 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5101 : actualRows5101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5101=2892 := by core033_kernel_decide
theorem rows5102 : actualRows5102=WordField.canonicalRows actualModulus 5102 (.bxor 616 5101) := by core033_kernel_decide
theorem stats5102 : actualRows5102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5102=7428 := by core033_kernel_decide
theorem rows5103 : actualRows5103=WordField.canonicalRows actualModulus 5103 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5103 : actualRows5103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5103=2820 := by core033_kernel_decide
theorem rows5104 : actualRows5104=WordField.canonicalRows actualModulus 5104 (.bnot 5103) := by core033_kernel_decide
theorem stats5104 : actualRows5104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5104=6276 := by core033_kernel_decide
theorem rows5105 : actualRows5105=WordField.canonicalRows actualModulus 5105 (.bxor 5102 5104) := by core033_kernel_decide
theorem stats5105 : actualRows5105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5105=7428 := by core033_kernel_decide
theorem rows5106 : actualRows5106=WordField.canonicalRows actualModulus 5106 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5106 : actualRows5106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5106=2892 := by core033_kernel_decide
theorem rows5107 : actualRows5107=WordField.canonicalRows actualModulus 5107 (.bxor 616 5106) := by core033_kernel_decide
theorem stats5107 : actualRows5107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5107=7428 := by core033_kernel_decide
theorem rows5108 : actualRows5108=WordField.canonicalRows actualModulus 5108 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5108 : actualRows5108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5108=2820 := by core033_kernel_decide
theorem rows5109 : actualRows5109=WordField.canonicalRows actualModulus 5109 (.bnot 5108) := by core033_kernel_decide
theorem stats5109 : actualRows5109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5109=6276 := by core033_kernel_decide
theorem rows5110 : actualRows5110=WordField.canonicalRows actualModulus 5110 (.badd 5107 5109) := by core033_kernel_decide
theorem stats5110 : actualRows5110.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5110=5388 := by core033_kernel_decide
theorem rows5111 : actualRows5111=WordField.canonicalRows actualModulus 5111 (.bnot 5110) := by core033_kernel_decide
theorem stats5111 : actualRows5111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5111=6276 := by core033_kernel_decide
theorem rows5112 : actualRows5112=WordField.canonicalRows actualModulus 5112 (.band 5105 5111) := by core033_kernel_decide
theorem stats5112 : actualRows5112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5112=5124 := by core033_kernel_decide
theorem rows5113 : actualRows5113=WordField.canonicalRows actualModulus 5113 (.bxor 5100 5112) := by core033_kernel_decide
theorem stats5113 : actualRows5113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5113=7428 := by core033_kernel_decide
theorem rows5114 : actualRows5114=WordField.canonicalRows actualModulus 5114 (.shr 5113 31) := by core033_kernel_decide
theorem stats5114 : actualRows5114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5114=2892 := by core033_kernel_decide
theorem rows5115 : actualRows5115=WordField.canonicalRows actualModulus 5115 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5115 : actualRows5115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5115=2892 := by core033_kernel_decide
theorem rows5116 : actualRows5116=WordField.canonicalRows actualModulus 5116 (.bxor 5114 5115) := by core033_kernel_decide
theorem stats5116 : actualRows5116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5116=7428 := by core033_kernel_decide
theorem rows5117 : actualRows5117=WordField.canonicalRows actualModulus 5117 (.bnot 5116) := by core033_kernel_decide
theorem stats5117 : actualRows5117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5117=6276 := by core033_kernel_decide
theorem rows5118 : actualRows5118=WordField.canonicalRows actualModulus 5118 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5118 : actualRows5118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5118=2892 := by core033_kernel_decide
theorem rows5119 : actualRows5119=WordField.canonicalRows actualModulus 5119 (.badd 5117 5118) := by core033_kernel_decide
theorem stats5119 : actualRows5119.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5119=5388 := by core033_kernel_decide
theorem rows5120 : actualRows5120=WordField.canonicalRows actualModulus 5120 (.band 5119 2142) := by core033_kernel_decide
theorem stats5120 : actualRows5120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5120=5124 := by core033_kernel_decide
theorem rows5121 : actualRows5121=WordField.canonicalRows actualModulus 5121 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5121 : actualRows5121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5121=2892 := by core033_kernel_decide
theorem rows5122 : actualRows5122=WordField.canonicalRows actualModulus 5122 (.bxor 616 5121) := by core033_kernel_decide
theorem stats5122 : actualRows5122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5122=7428 := by core033_kernel_decide
theorem rows5123 : actualRows5123=WordField.canonicalRows actualModulus 5123 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5123 : actualRows5123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5123=2820 := by core033_kernel_decide
theorem rows5124 : actualRows5124=WordField.canonicalRows actualModulus 5124 (.bnot 5123) := by core033_kernel_decide
theorem stats5124 : actualRows5124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5124=6276 := by core033_kernel_decide
theorem rows5125 : actualRows5125=WordField.canonicalRows actualModulus 5125 (.band 5122 5124) := by core033_kernel_decide
theorem stats5125 : actualRows5125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5125=5124 := by core033_kernel_decide
theorem rows5126 : actualRows5126=WordField.canonicalRows actualModulus 5126 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5126 : actualRows5126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5126=2892 := by core033_kernel_decide
theorem rows5127 : actualRows5127=WordField.canonicalRows actualModulus 5127 (.bxor 616 5126) := by core033_kernel_decide
theorem stats5127 : actualRows5127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5127=7428 := by core033_kernel_decide
theorem rows5128 : actualRows5128=WordField.canonicalRows actualModulus 5128 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5128 : actualRows5128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5128=2820 := by core033_kernel_decide
theorem rows5129 : actualRows5129=WordField.canonicalRows actualModulus 5129 (.bnot 5128) := by core033_kernel_decide
theorem stats5129 : actualRows5129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5129=6276 := by core033_kernel_decide
theorem rows5130 : actualRows5130=WordField.canonicalRows actualModulus 5130 (.bxor 5127 5129) := by core033_kernel_decide
theorem stats5130 : actualRows5130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5130=7428 := by core033_kernel_decide
theorem rows5131 : actualRows5131=WordField.canonicalRows actualModulus 5131 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5131 : actualRows5131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5131=2892 := by core033_kernel_decide
theorem rows5132 : actualRows5132=WordField.canonicalRows actualModulus 5132 (.bxor 616 5131) := by core033_kernel_decide
theorem stats5132 : actualRows5132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5132=7428 := by core033_kernel_decide
theorem rows5133 : actualRows5133=WordField.canonicalRows actualModulus 5133 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5133 : actualRows5133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5133=2820 := by core033_kernel_decide
theorem rows5134 : actualRows5134=WordField.canonicalRows actualModulus 5134 (.bnot 5133) := by core033_kernel_decide
theorem stats5134 : actualRows5134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5134=6276 := by core033_kernel_decide
theorem rows5135 : actualRows5135=WordField.canonicalRows actualModulus 5135 (.badd 5132 5134) := by core033_kernel_decide
theorem stats5135 : actualRows5135.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5135=5388 := by core033_kernel_decide
theorem rows5136 : actualRows5136=WordField.canonicalRows actualModulus 5136 (.bnot 5135) := by core033_kernel_decide
theorem stats5136 : actualRows5136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5136=6276 := by core033_kernel_decide
theorem rows5137 : actualRows5137=WordField.canonicalRows actualModulus 5137 (.band 5130 5136) := by core033_kernel_decide
theorem stats5137 : actualRows5137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5137=5124 := by core033_kernel_decide
theorem rows5138 : actualRows5138=WordField.canonicalRows actualModulus 5138 (.bxor 5125 5137) := by core033_kernel_decide
theorem stats5138 : actualRows5138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5138=7428 := by core033_kernel_decide
theorem rows5139 : actualRows5139=WordField.canonicalRows actualModulus 5139 (.shr 5138 31) := by core033_kernel_decide
theorem stats5139 : actualRows5139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5139=2892 := by core033_kernel_decide
theorem rows5140 : actualRows5140=WordField.canonicalRows actualModulus 5140 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5140 : actualRows5140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5140=2892 := by core033_kernel_decide
theorem rows5141 : actualRows5141=WordField.canonicalRows actualModulus 5141 (.bxor 5139 5140) := by core033_kernel_decide
theorem stats5141 : actualRows5141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5141=7428 := by core033_kernel_decide
theorem rows5142 : actualRows5142=WordField.canonicalRows actualModulus 5142 (.bnot 5141) := by core033_kernel_decide
theorem stats5142 : actualRows5142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5142=6276 := by core033_kernel_decide
theorem rows5143 : actualRows5143=WordField.canonicalRows actualModulus 5143 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5143 : actualRows5143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5143=2892 := by core033_kernel_decide
theorem rows5144 : actualRows5144=WordField.canonicalRows actualModulus 5144 (.badd 5142 5143) := by core033_kernel_decide
theorem stats5144 : actualRows5144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5144=5388 := by core033_kernel_decide
theorem rows5145 : actualRows5145=WordField.canonicalRows actualModulus 5145 (.bnot 5144) := by core033_kernel_decide
theorem stats5145 : actualRows5145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5145=6276 := by core033_kernel_decide
theorem rows5146 : actualRows5146=WordField.canonicalRows actualModulus 5146 (.band 5145 1950) := by core033_kernel_decide
theorem stats5146 : actualRows5146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5146=5124 := by core033_kernel_decide
theorem rows5147 : actualRows5147=WordField.canonicalRows actualModulus 5147 (.bxor 5120 5146) := by core033_kernel_decide
theorem stats5147 : actualRows5147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5147=7428 := by core033_kernel_decide
theorem rows5148 : actualRows5148=WordField.canonicalRows actualModulus 5148 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5148 : actualRows5148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5148=2892 := by core033_kernel_decide
theorem rows5149 : actualRows5149=WordField.canonicalRows actualModulus 5149 (.bxor 616 5148) := by core033_kernel_decide
theorem stats5149 : actualRows5149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5149=7428 := by core033_kernel_decide
theorem rows5150 : actualRows5150=WordField.canonicalRows actualModulus 5150 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5150 : actualRows5150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5150=2820 := by core033_kernel_decide
theorem rows5151 : actualRows5151=WordField.canonicalRows actualModulus 5151 (.bnot 5150) := by core033_kernel_decide
theorem stats5151 : actualRows5151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5151=6276 := by core033_kernel_decide
def partRows78 : List R1CS.Row := actualRows5088++actualRows5089++actualRows5090++actualRows5091++actualRows5092++actualRows5093++actualRows5094++actualRows5095++actualRows5096++actualRows5097++actualRows5098++actualRows5099++actualRows5100++actualRows5101++actualRows5102++actualRows5103++actualRows5104++actualRows5105++actualRows5106++actualRows5107++actualRows5108++actualRows5109++actualRows5110++actualRows5111++actualRows5112++actualRows5113++actualRows5114++actualRows5115++actualRows5116++actualRows5117++actualRows5118++actualRows5119++actualRows5120++actualRows5121++actualRows5122++actualRows5123++actualRows5124++actualRows5125++actualRows5126++actualRows5127++actualRows5128++actualRows5129++actualRows5130++actualRows5131++actualRows5132++actualRows5133++actualRows5134++actualRows5135++actualRows5136++actualRows5137++actualRows5138++actualRows5139++actualRows5140++actualRows5141++actualRows5142++actualRows5143++actualRows5144++actualRows5145++actualRows5146++actualRows5147++actualRows5148++actualRows5149++actualRows5150++actualRows5151
def partOps78 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 5087 5088,.bnot 5089,.literal (BitVec.ofNat 32 1),.badd 5090 5091,.bnot 5092,.band 5093 1947,.bxor 5068 5094,.literal (BitVec.ofNat 32 2),.bxor 616 5096,.literal (BitVec.ofNat 32 0),.bnot 5098,.band 5097 5099,.literal (BitVec.ofNat 32 2),.bxor 616 5101,.literal (BitVec.ofNat 32 0),.bnot 5103,.bxor 5102 5104,.literal (BitVec.ofNat 32 2),.bxor 616 5106,.literal (BitVec.ofNat 32 0),.bnot 5108,.badd 5107 5109,.bnot 5110,.band 5105 5111,.bxor 5100 5112,.shr 5113 31,.literal (BitVec.ofNat 32 1),.bxor 5114 5115,.bnot 5116,.literal (BitVec.ofNat 32 1),.badd 5117 5118,.band 5119 2142,.literal (BitVec.ofNat 32 2),.bxor 616 5121,.literal (BitVec.ofNat 32 0),.bnot 5123,.band 5122 5124,.literal (BitVec.ofNat 32 2),.bxor 616 5126,.literal (BitVec.ofNat 32 0),.bnot 5128,.bxor 5127 5129,.literal (BitVec.ofNat 32 2),.bxor 616 5131,.literal (BitVec.ofNat 32 0),.bnot 5133,.badd 5132 5134,.bnot 5135,.band 5130 5136,.bxor 5125 5137,.shr 5138 31,.literal (BitVec.ofNat 32 1),.bxor 5139 5140,.bnot 5141,.literal (BitVec.ofNat 32 1),.badd 5142 5143,.bnot 5144,.band 5145 1950,.bxor 5120 5146,.literal (BitVec.ofNat 32 2),.bxor 616 5148,.literal (BitVec.ofNat 32 0),.bnot 5150]
theorem partExact78 : partRows78=WordField.rows actualModulus 5088 partOps78 := by
  simp only [partRows78,partOps78,WordField.rows,rows5088,rows5089,rows5090,rows5091,rows5092,rows5093,rows5094,rows5095,rows5096,rows5097,rows5098,rows5099,rows5100,rows5101,rows5102,rows5103,rows5104,rows5105,rows5106,rows5107,rows5108,rows5109,rows5110,rows5111,rows5112,rows5113,rows5114,rows5115,rows5116,rows5117,rows5118,rows5119,rows5120,rows5121,rows5122,rows5123,rows5124,rows5125,rows5126,rows5127,rows5128,rows5129,rows5130,rows5131,rows5132,rows5133,rows5134,rows5135,rows5136,rows5137,rows5138,rows5139,rows5140,rows5141,rows5142,rows5143,rows5144,rows5145,rows5146,rows5147,rows5148,rows5149,rows5150,rows5151,List.append_assoc,List.append_nil]
theorem partLength78 : partOps78.length=64 := by decide
theorem partStats78 : partRows78.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows78=332640 := by
  simp only [partRows78,List.length_append,MatrixRowBlocks.rows_weight_append,stats5088.1,stats5088.2,stats5089.1,stats5089.2,stats5090.1,stats5090.2,stats5091.1,stats5091.2,stats5092.1,stats5092.2,stats5093.1,stats5093.2,stats5094.1,stats5094.2,stats5095.1,stats5095.2,stats5096.1,stats5096.2,stats5097.1,stats5097.2,stats5098.1,stats5098.2,stats5099.1,stats5099.2,stats5100.1,stats5100.2,stats5101.1,stats5101.2,stats5102.1,stats5102.2,stats5103.1,stats5103.2,stats5104.1,stats5104.2,stats5105.1,stats5105.2,stats5106.1,stats5106.2,stats5107.1,stats5107.2,stats5108.1,stats5108.2,stats5109.1,stats5109.2,stats5110.1,stats5110.2,stats5111.1,stats5111.2,stats5112.1,stats5112.2,stats5113.1,stats5113.2,stats5114.1,stats5114.2,stats5115.1,stats5115.2,stats5116.1,stats5116.2,stats5117.1,stats5117.2,stats5118.1,stats5118.2,stats5119.1,stats5119.2,stats5120.1,stats5120.2,stats5121.1,stats5121.2,stats5122.1,stats5122.2,stats5123.1,stats5123.2,stats5124.1,stats5124.2,stats5125.1,stats5125.2,stats5126.1,stats5126.2,stats5127.1,stats5127.2,stats5128.1,stats5128.2,stats5129.1,stats5129.2,stats5130.1,stats5130.2,stats5131.1,stats5131.2,stats5132.1,stats5132.2,stats5133.1,stats5133.2,stats5134.1,stats5134.2,stats5135.1,stats5135.2,stats5136.1,stats5136.2,stats5137.1,stats5137.2,stats5138.1,stats5138.2,stats5139.1,stats5139.2,stats5140.1,stats5140.2,stats5141.1,stats5141.2,stats5142.1,stats5142.2,stats5143.1,stats5143.2,stats5144.1,stats5144.2,stats5145.1,stats5145.2,stats5146.1,stats5146.2,stats5147.1,stats5147.2,stats5148.1,stats5148.2,stats5149.1,stats5149.2,stats5150.1,stats5150.2,stats5151.1,stats5151.2]
  decide
end QuotedPairedPathRoundCheckedRows
