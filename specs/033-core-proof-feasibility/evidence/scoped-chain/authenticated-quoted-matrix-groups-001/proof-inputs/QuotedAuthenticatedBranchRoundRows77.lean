import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData78
import AuthenticatedBranchRoundInstructionMatrixData79
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5046 : actualRows5046=WordField.canonicalRows actualModulus 5046 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5046 : actualRows5046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5046=2892 := by core033_kernel_decide
theorem rows5047 : actualRows5047=WordField.canonicalRows actualModulus 5047 (.badd 5045 5046) := by core033_kernel_decide
theorem stats5047 : actualRows5047.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5047=5388 := by core033_kernel_decide
theorem rows5048 : actualRows5048=WordField.canonicalRows actualModulus 5048 (.bnot 5047) := by core033_kernel_decide
theorem stats5048 : actualRows5048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5048=6276 := by core033_kernel_decide
theorem rows5049 : actualRows5049=WordField.canonicalRows actualModulus 5049 (.band 5048 2588) := by core033_kernel_decide
theorem stats5049 : actualRows5049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5049=5124 := by core033_kernel_decide
theorem rows5050 : actualRows5050=WordField.canonicalRows actualModulus 5050 (.bxor 5023 5049) := by core033_kernel_decide
theorem stats5050 : actualRows5050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5050=7428 := by core033_kernel_decide
theorem rows5051 : actualRows5051=WordField.canonicalRows actualModulus 5051 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5051 : actualRows5051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5051=2892 := by core033_kernel_decide
theorem rows5052 : actualRows5052=WordField.canonicalRows actualModulus 5052 (.bxor 1299 5051) := by core033_kernel_decide
theorem stats5052 : actualRows5052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5052=7428 := by core033_kernel_decide
theorem rows5053 : actualRows5053=WordField.canonicalRows actualModulus 5053 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5053 : actualRows5053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5053=2820 := by core033_kernel_decide
theorem rows5054 : actualRows5054=WordField.canonicalRows actualModulus 5054 (.bnot 5053) := by core033_kernel_decide
theorem stats5054 : actualRows5054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5054=6276 := by core033_kernel_decide
theorem rows5055 : actualRows5055=WordField.canonicalRows actualModulus 5055 (.band 5052 5054) := by core033_kernel_decide
theorem stats5055 : actualRows5055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5055=5124 := by core033_kernel_decide
theorem rows5056 : actualRows5056=WordField.canonicalRows actualModulus 5056 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5056 : actualRows5056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5056=2892 := by core033_kernel_decide
theorem rows5057 : actualRows5057=WordField.canonicalRows actualModulus 5057 (.bxor 1299 5056) := by core033_kernel_decide
theorem stats5057 : actualRows5057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5057=7428 := by core033_kernel_decide
theorem rows5058 : actualRows5058=WordField.canonicalRows actualModulus 5058 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5058 : actualRows5058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5058=2820 := by core033_kernel_decide
theorem rows5059 : actualRows5059=WordField.canonicalRows actualModulus 5059 (.bnot 5058) := by core033_kernel_decide
theorem stats5059 : actualRows5059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5059=6276 := by core033_kernel_decide
theorem rows5060 : actualRows5060=WordField.canonicalRows actualModulus 5060 (.bxor 5057 5059) := by core033_kernel_decide
theorem stats5060 : actualRows5060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5060=7428 := by core033_kernel_decide
theorem rows5061 : actualRows5061=WordField.canonicalRows actualModulus 5061 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5061 : actualRows5061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5061=2892 := by core033_kernel_decide
theorem rows5062 : actualRows5062=WordField.canonicalRows actualModulus 5062 (.bxor 1299 5061) := by core033_kernel_decide
theorem stats5062 : actualRows5062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5062=7428 := by core033_kernel_decide
theorem rows5063 : actualRows5063=WordField.canonicalRows actualModulus 5063 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5063 : actualRows5063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5063=2820 := by core033_kernel_decide
theorem rows5064 : actualRows5064=WordField.canonicalRows actualModulus 5064 (.bnot 5063) := by core033_kernel_decide
theorem stats5064 : actualRows5064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5064=6276 := by core033_kernel_decide
theorem rows5065 : actualRows5065=WordField.canonicalRows actualModulus 5065 (.badd 5062 5064) := by core033_kernel_decide
theorem stats5065 : actualRows5065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5065=5388 := by core033_kernel_decide
theorem rows5066 : actualRows5066=WordField.canonicalRows actualModulus 5066 (.bnot 5065) := by core033_kernel_decide
theorem stats5066 : actualRows5066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5066=6276 := by core033_kernel_decide
theorem rows5067 : actualRows5067=WordField.canonicalRows actualModulus 5067 (.band 5060 5066) := by core033_kernel_decide
theorem stats5067 : actualRows5067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5067=5124 := by core033_kernel_decide
theorem rows5068 : actualRows5068=WordField.canonicalRows actualModulus 5068 (.bxor 5055 5067) := by core033_kernel_decide
theorem stats5068 : actualRows5068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5068=7428 := by core033_kernel_decide
theorem rows5069 : actualRows5069=WordField.canonicalRows actualModulus 5069 (.shr 5068 31) := by core033_kernel_decide
theorem stats5069 : actualRows5069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5069=2892 := by core033_kernel_decide
theorem rows5070 : actualRows5070=WordField.canonicalRows actualModulus 5070 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5070 : actualRows5070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5070=2892 := by core033_kernel_decide
theorem rows5071 : actualRows5071=WordField.canonicalRows actualModulus 5071 (.bxor 5069 5070) := by core033_kernel_decide
theorem stats5071 : actualRows5071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5071=7428 := by core033_kernel_decide
theorem rows5072 : actualRows5072=WordField.canonicalRows actualModulus 5072 (.bnot 5071) := by core033_kernel_decide
theorem stats5072 : actualRows5072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5072=6276 := by core033_kernel_decide
theorem rows5073 : actualRows5073=WordField.canonicalRows actualModulus 5073 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5073 : actualRows5073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5073=2892 := by core033_kernel_decide
theorem rows5074 : actualRows5074=WordField.canonicalRows actualModulus 5074 (.badd 5072 5073) := by core033_kernel_decide
theorem stats5074 : actualRows5074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5074=5388 := by core033_kernel_decide
theorem rows5075 : actualRows5075=WordField.canonicalRows actualModulus 5075 (.band 5074 2783) := by core033_kernel_decide
theorem stats5075 : actualRows5075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5075=5124 := by core033_kernel_decide
theorem rows5076 : actualRows5076=WordField.canonicalRows actualModulus 5076 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5076 : actualRows5076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5076=2892 := by core033_kernel_decide
theorem rows5077 : actualRows5077=WordField.canonicalRows actualModulus 5077 (.bxor 1299 5076) := by core033_kernel_decide
theorem stats5077 : actualRows5077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5077=7428 := by core033_kernel_decide
theorem rows5078 : actualRows5078=WordField.canonicalRows actualModulus 5078 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5078 : actualRows5078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5078=2820 := by core033_kernel_decide
theorem rows5079 : actualRows5079=WordField.canonicalRows actualModulus 5079 (.bnot 5078) := by core033_kernel_decide
theorem stats5079 : actualRows5079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5079=6276 := by core033_kernel_decide
theorem rows5080 : actualRows5080=WordField.canonicalRows actualModulus 5080 (.band 5077 5079) := by core033_kernel_decide
theorem stats5080 : actualRows5080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5080=5124 := by core033_kernel_decide
theorem rows5081 : actualRows5081=WordField.canonicalRows actualModulus 5081 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5081 : actualRows5081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5081=2892 := by core033_kernel_decide
theorem rows5082 : actualRows5082=WordField.canonicalRows actualModulus 5082 (.bxor 1299 5081) := by core033_kernel_decide
theorem stats5082 : actualRows5082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5082=7428 := by core033_kernel_decide
theorem rows5083 : actualRows5083=WordField.canonicalRows actualModulus 5083 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5083 : actualRows5083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5083=2820 := by core033_kernel_decide
theorem rows5084 : actualRows5084=WordField.canonicalRows actualModulus 5084 (.bnot 5083) := by core033_kernel_decide
theorem stats5084 : actualRows5084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5084=6276 := by core033_kernel_decide
theorem rows5085 : actualRows5085=WordField.canonicalRows actualModulus 5085 (.bxor 5082 5084) := by core033_kernel_decide
theorem stats5085 : actualRows5085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5085=7428 := by core033_kernel_decide
theorem rows5086 : actualRows5086=WordField.canonicalRows actualModulus 5086 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5086 : actualRows5086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5086=2892 := by core033_kernel_decide
theorem rows5087 : actualRows5087=WordField.canonicalRows actualModulus 5087 (.bxor 1299 5086) := by core033_kernel_decide
theorem stats5087 : actualRows5087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5087=7428 := by core033_kernel_decide
theorem rows5088 : actualRows5088=WordField.canonicalRows actualModulus 5088 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5088 : actualRows5088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5088=2820 := by core033_kernel_decide
theorem rows5089 : actualRows5089=WordField.canonicalRows actualModulus 5089 (.bnot 5088) := by core033_kernel_decide
theorem stats5089 : actualRows5089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5089=6276 := by core033_kernel_decide
theorem rows5090 : actualRows5090=WordField.canonicalRows actualModulus 5090 (.badd 5087 5089) := by core033_kernel_decide
theorem stats5090 : actualRows5090.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5090=5388 := by core033_kernel_decide
theorem rows5091 : actualRows5091=WordField.canonicalRows actualModulus 5091 (.bnot 5090) := by core033_kernel_decide
theorem stats5091 : actualRows5091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5091=6276 := by core033_kernel_decide
theorem rows5092 : actualRows5092=WordField.canonicalRows actualModulus 5092 (.band 5085 5091) := by core033_kernel_decide
theorem stats5092 : actualRows5092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5092=5124 := by core033_kernel_decide
theorem rows5093 : actualRows5093=WordField.canonicalRows actualModulus 5093 (.bxor 5080 5092) := by core033_kernel_decide
theorem stats5093 : actualRows5093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5093=7428 := by core033_kernel_decide
theorem rows5094 : actualRows5094=WordField.canonicalRows actualModulus 5094 (.shr 5093 31) := by core033_kernel_decide
theorem stats5094 : actualRows5094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5094=2892 := by core033_kernel_decide
theorem rows5095 : actualRows5095=WordField.canonicalRows actualModulus 5095 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5095 : actualRows5095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5095=2892 := by core033_kernel_decide
theorem rows5096 : actualRows5096=WordField.canonicalRows actualModulus 5096 (.bxor 5094 5095) := by core033_kernel_decide
theorem stats5096 : actualRows5096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5096=7428 := by core033_kernel_decide
theorem rows5097 : actualRows5097=WordField.canonicalRows actualModulus 5097 (.bnot 5096) := by core033_kernel_decide
theorem stats5097 : actualRows5097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5097=6276 := by core033_kernel_decide
theorem rows5098 : actualRows5098=WordField.canonicalRows actualModulus 5098 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5098 : actualRows5098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5098=2892 := by core033_kernel_decide
theorem rows5099 : actualRows5099=WordField.canonicalRows actualModulus 5099 (.badd 5097 5098) := by core033_kernel_decide
theorem stats5099 : actualRows5099.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5099=5388 := by core033_kernel_decide
theorem rows5100 : actualRows5100=WordField.canonicalRows actualModulus 5100 (.bnot 5099) := by core033_kernel_decide
theorem stats5100 : actualRows5100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5100=6276 := by core033_kernel_decide
theorem rows5101 : actualRows5101=WordField.canonicalRows actualModulus 5101 (.band 5100 2591) := by core033_kernel_decide
theorem stats5101 : actualRows5101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5101=5124 := by core033_kernel_decide
theorem rows5102 : actualRows5102=WordField.canonicalRows actualModulus 5102 (.bxor 5075 5101) := by core033_kernel_decide
theorem stats5102 : actualRows5102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5102=7428 := by core033_kernel_decide
theorem rows5103 : actualRows5103=WordField.canonicalRows actualModulus 5103 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5103 : actualRows5103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5103=2892 := by core033_kernel_decide
theorem rows5104 : actualRows5104=WordField.canonicalRows actualModulus 5104 (.bxor 1299 5103) := by core033_kernel_decide
theorem stats5104 : actualRows5104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5104=7428 := by core033_kernel_decide
theorem rows5105 : actualRows5105=WordField.canonicalRows actualModulus 5105 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5105 : actualRows5105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5105=2820 := by core033_kernel_decide
theorem rows5106 : actualRows5106=WordField.canonicalRows actualModulus 5106 (.bnot 5105) := by core033_kernel_decide
theorem stats5106 : actualRows5106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5106=6276 := by core033_kernel_decide
theorem rows5107 : actualRows5107=WordField.canonicalRows actualModulus 5107 (.band 5104 5106) := by core033_kernel_decide
theorem stats5107 : actualRows5107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5107=5124 := by core033_kernel_decide
theorem rows5108 : actualRows5108=WordField.canonicalRows actualModulus 5108 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5108 : actualRows5108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5108=2892 := by core033_kernel_decide
theorem rows5109 : actualRows5109=WordField.canonicalRows actualModulus 5109 (.bxor 1299 5108) := by core033_kernel_decide
theorem stats5109 : actualRows5109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5109=7428 := by core033_kernel_decide
def partRows77 : List R1CS.Row := actualRows5046++actualRows5047++actualRows5048++actualRows5049++actualRows5050++actualRows5051++actualRows5052++actualRows5053++actualRows5054++actualRows5055++actualRows5056++actualRows5057++actualRows5058++actualRows5059++actualRows5060++actualRows5061++actualRows5062++actualRows5063++actualRows5064++actualRows5065++actualRows5066++actualRows5067++actualRows5068++actualRows5069++actualRows5070++actualRows5071++actualRows5072++actualRows5073++actualRows5074++actualRows5075++actualRows5076++actualRows5077++actualRows5078++actualRows5079++actualRows5080++actualRows5081++actualRows5082++actualRows5083++actualRows5084++actualRows5085++actualRows5086++actualRows5087++actualRows5088++actualRows5089++actualRows5090++actualRows5091++actualRows5092++actualRows5093++actualRows5094++actualRows5095++actualRows5096++actualRows5097++actualRows5098++actualRows5099++actualRows5100++actualRows5101++actualRows5102++actualRows5103++actualRows5104++actualRows5105++actualRows5106++actualRows5107++actualRows5108++actualRows5109
def partOps77 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 5045 5046,.bnot 5047,.band 5048 2588,.bxor 5023 5049,.literal (BitVec.ofNat 32 2),.bxor 1299 5051,.literal (BitVec.ofNat 32 0),.bnot 5053,.band 5052 5054,.literal (BitVec.ofNat 32 2),.bxor 1299 5056,.literal (BitVec.ofNat 32 0),.bnot 5058,.bxor 5057 5059,.literal (BitVec.ofNat 32 2),.bxor 1299 5061,.literal (BitVec.ofNat 32 0),.bnot 5063,.badd 5062 5064,.bnot 5065,.band 5060 5066,.bxor 5055 5067,.shr 5068 31,.literal (BitVec.ofNat 32 1),.bxor 5069 5070,.bnot 5071,.literal (BitVec.ofNat 32 1),.badd 5072 5073,.band 5074 2783,.literal (BitVec.ofNat 32 2),.bxor 1299 5076,.literal (BitVec.ofNat 32 0),.bnot 5078,.band 5077 5079,.literal (BitVec.ofNat 32 2),.bxor 1299 5081,.literal (BitVec.ofNat 32 0),.bnot 5083,.bxor 5082 5084,.literal (BitVec.ofNat 32 2),.bxor 1299 5086,.literal (BitVec.ofNat 32 0),.bnot 5088,.badd 5087 5089,.bnot 5090,.band 5085 5091,.bxor 5080 5092,.shr 5093 31,.literal (BitVec.ofNat 32 1),.bxor 5094 5095,.bnot 5096,.literal (BitVec.ofNat 32 1),.badd 5097 5098,.bnot 5099,.band 5100 2591,.bxor 5075 5101,.literal (BitVec.ofNat 32 2),.bxor 1299 5103,.literal (BitVec.ofNat 32 0),.bnot 5105,.band 5104 5106,.literal (BitVec.ofNat 32 2),.bxor 1299 5108]
theorem partExact77 : partRows77=WordField.rows actualModulus 5046 partOps77 := by
  simp only [partRows77,partOps77,WordField.rows,rows5046,rows5047,rows5048,rows5049,rows5050,rows5051,rows5052,rows5053,rows5054,rows5055,rows5056,rows5057,rows5058,rows5059,rows5060,rows5061,rows5062,rows5063,rows5064,rows5065,rows5066,rows5067,rows5068,rows5069,rows5070,rows5071,rows5072,rows5073,rows5074,rows5075,rows5076,rows5077,rows5078,rows5079,rows5080,rows5081,rows5082,rows5083,rows5084,rows5085,rows5086,rows5087,rows5088,rows5089,rows5090,rows5091,rows5092,rows5093,rows5094,rows5095,rows5096,rows5097,rows5098,rows5099,rows5100,rows5101,rows5102,rows5103,rows5104,rows5105,rows5106,rows5107,rows5108,rows5109,List.append_assoc,List.append_nil]
theorem partLength77 : partOps77.length=64 := by decide
theorem partStats77 : partRows77.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows77=331488 := by
  simp only [partRows77,List.length_append,MatrixRowBlocks.rows_weight_append,stats5046.1,stats5046.2,stats5047.1,stats5047.2,stats5048.1,stats5048.2,stats5049.1,stats5049.2,stats5050.1,stats5050.2,stats5051.1,stats5051.2,stats5052.1,stats5052.2,stats5053.1,stats5053.2,stats5054.1,stats5054.2,stats5055.1,stats5055.2,stats5056.1,stats5056.2,stats5057.1,stats5057.2,stats5058.1,stats5058.2,stats5059.1,stats5059.2,stats5060.1,stats5060.2,stats5061.1,stats5061.2,stats5062.1,stats5062.2,stats5063.1,stats5063.2,stats5064.1,stats5064.2,stats5065.1,stats5065.2,stats5066.1,stats5066.2,stats5067.1,stats5067.2,stats5068.1,stats5068.2,stats5069.1,stats5069.2,stats5070.1,stats5070.2,stats5071.1,stats5071.2,stats5072.1,stats5072.2,stats5073.1,stats5073.2,stats5074.1,stats5074.2,stats5075.1,stats5075.2,stats5076.1,stats5076.2,stats5077.1,stats5077.2,stats5078.1,stats5078.2,stats5079.1,stats5079.2,stats5080.1,stats5080.2,stats5081.1,stats5081.2,stats5082.1,stats5082.2,stats5083.1,stats5083.2,stats5084.1,stats5084.2,stats5085.1,stats5085.2,stats5086.1,stats5086.2,stats5087.1,stats5087.2,stats5088.1,stats5088.2,stats5089.1,stats5089.2,stats5090.1,stats5090.2,stats5091.1,stats5091.2,stats5092.1,stats5092.2,stats5093.1,stats5093.2,stats5094.1,stats5094.2,stats5095.1,stats5095.2,stats5096.1,stats5096.2,stats5097.1,stats5097.2,stats5098.1,stats5098.2,stats5099.1,stats5099.2,stats5100.1,stats5100.2,stats5101.1,stats5101.2,stats5102.1,stats5102.2,stats5103.1,stats5103.2,stats5104.1,stats5104.2,stats5105.1,stats5105.2,stats5106.1,stats5106.2,stats5107.1,stats5107.2,stats5108.1,stats5108.2,stats5109.1,stats5109.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
