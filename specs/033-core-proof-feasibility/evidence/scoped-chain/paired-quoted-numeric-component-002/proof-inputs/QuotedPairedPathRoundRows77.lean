import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData78
import PairedPathRoundInstructionMatrixData79
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5024 : actualRows5024=WordField.canonicalRows actualModulus 5024 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5024 : actualRows5024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5024=2820 := by core033_kernel_decide
theorem rows5025 : actualRows5025=WordField.canonicalRows actualModulus 5025 (.bnot 5024) := by core033_kernel_decide
theorem stats5025 : actualRows5025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5025=6276 := by core033_kernel_decide
theorem rows5026 : actualRows5026=WordField.canonicalRows actualModulus 5026 (.bxor 5023 5025) := by core033_kernel_decide
theorem stats5026 : actualRows5026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5026=7428 := by core033_kernel_decide
theorem rows5027 : actualRows5027=WordField.canonicalRows actualModulus 5027 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5027 : actualRows5027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5027=2892 := by core033_kernel_decide
theorem rows5028 : actualRows5028=WordField.canonicalRows actualModulus 5028 (.bxor 616 5027) := by core033_kernel_decide
theorem stats5028 : actualRows5028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5028=7428 := by core033_kernel_decide
theorem rows5029 : actualRows5029=WordField.canonicalRows actualModulus 5029 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5029 : actualRows5029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5029=2820 := by core033_kernel_decide
theorem rows5030 : actualRows5030=WordField.canonicalRows actualModulus 5030 (.bnot 5029) := by core033_kernel_decide
theorem stats5030 : actualRows5030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5030=6276 := by core033_kernel_decide
theorem rows5031 : actualRows5031=WordField.canonicalRows actualModulus 5031 (.badd 5028 5030) := by core033_kernel_decide
theorem stats5031 : actualRows5031.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5031=5388 := by core033_kernel_decide
theorem rows5032 : actualRows5032=WordField.canonicalRows actualModulus 5032 (.bnot 5031) := by core033_kernel_decide
theorem stats5032 : actualRows5032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5032=6276 := by core033_kernel_decide
theorem rows5033 : actualRows5033=WordField.canonicalRows actualModulus 5033 (.band 5026 5032) := by core033_kernel_decide
theorem stats5033 : actualRows5033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5033=5124 := by core033_kernel_decide
theorem rows5034 : actualRows5034=WordField.canonicalRows actualModulus 5034 (.bxor 5021 5033) := by core033_kernel_decide
theorem stats5034 : actualRows5034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5034=7428 := by core033_kernel_decide
theorem rows5035 : actualRows5035=WordField.canonicalRows actualModulus 5035 (.shr 5034 31) := by core033_kernel_decide
theorem stats5035 : actualRows5035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5035=2892 := by core033_kernel_decide
theorem rows5036 : actualRows5036=WordField.canonicalRows actualModulus 5036 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5036 : actualRows5036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5036=2892 := by core033_kernel_decide
theorem rows5037 : actualRows5037=WordField.canonicalRows actualModulus 5037 (.bxor 5035 5036) := by core033_kernel_decide
theorem stats5037 : actualRows5037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5037=7428 := by core033_kernel_decide
theorem rows5038 : actualRows5038=WordField.canonicalRows actualModulus 5038 (.bnot 5037) := by core033_kernel_decide
theorem stats5038 : actualRows5038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5038=6276 := by core033_kernel_decide
theorem rows5039 : actualRows5039=WordField.canonicalRows actualModulus 5039 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5039 : actualRows5039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5039=2892 := by core033_kernel_decide
theorem rows5040 : actualRows5040=WordField.canonicalRows actualModulus 5040 (.badd 5038 5039) := by core033_kernel_decide
theorem stats5040 : actualRows5040.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5040=5388 := by core033_kernel_decide
theorem rows5041 : actualRows5041=WordField.canonicalRows actualModulus 5041 (.bnot 5040) := by core033_kernel_decide
theorem stats5041 : actualRows5041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5041=6276 := by core033_kernel_decide
theorem rows5042 : actualRows5042=WordField.canonicalRows actualModulus 5042 (.band 5041 1944) := by core033_kernel_decide
theorem stats5042 : actualRows5042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5042=5124 := by core033_kernel_decide
theorem rows5043 : actualRows5043=WordField.canonicalRows actualModulus 5043 (.bxor 5016 5042) := by core033_kernel_decide
theorem stats5043 : actualRows5043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5043=7428 := by core033_kernel_decide
theorem rows5044 : actualRows5044=WordField.canonicalRows actualModulus 5044 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5044 : actualRows5044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5044=2892 := by core033_kernel_decide
theorem rows5045 : actualRows5045=WordField.canonicalRows actualModulus 5045 (.bxor 616 5044) := by core033_kernel_decide
theorem stats5045 : actualRows5045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5045=7428 := by core033_kernel_decide
theorem rows5046 : actualRows5046=WordField.canonicalRows actualModulus 5046 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5046 : actualRows5046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5046=2820 := by core033_kernel_decide
theorem rows5047 : actualRows5047=WordField.canonicalRows actualModulus 5047 (.bnot 5046) := by core033_kernel_decide
theorem stats5047 : actualRows5047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5047=6276 := by core033_kernel_decide
theorem rows5048 : actualRows5048=WordField.canonicalRows actualModulus 5048 (.band 5045 5047) := by core033_kernel_decide
theorem stats5048 : actualRows5048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5048=5124 := by core033_kernel_decide
theorem rows5049 : actualRows5049=WordField.canonicalRows actualModulus 5049 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5049 : actualRows5049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5049=2892 := by core033_kernel_decide
theorem rows5050 : actualRows5050=WordField.canonicalRows actualModulus 5050 (.bxor 616 5049) := by core033_kernel_decide
theorem stats5050 : actualRows5050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5050=7428 := by core033_kernel_decide
theorem rows5051 : actualRows5051=WordField.canonicalRows actualModulus 5051 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5051 : actualRows5051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5051=2820 := by core033_kernel_decide
theorem rows5052 : actualRows5052=WordField.canonicalRows actualModulus 5052 (.bnot 5051) := by core033_kernel_decide
theorem stats5052 : actualRows5052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5052=6276 := by core033_kernel_decide
theorem rows5053 : actualRows5053=WordField.canonicalRows actualModulus 5053 (.bxor 5050 5052) := by core033_kernel_decide
theorem stats5053 : actualRows5053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5053=7428 := by core033_kernel_decide
theorem rows5054 : actualRows5054=WordField.canonicalRows actualModulus 5054 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5054 : actualRows5054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5054=2892 := by core033_kernel_decide
theorem rows5055 : actualRows5055=WordField.canonicalRows actualModulus 5055 (.bxor 616 5054) := by core033_kernel_decide
theorem stats5055 : actualRows5055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5055=7428 := by core033_kernel_decide
theorem rows5056 : actualRows5056=WordField.canonicalRows actualModulus 5056 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5056 : actualRows5056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5056=2820 := by core033_kernel_decide
theorem rows5057 : actualRows5057=WordField.canonicalRows actualModulus 5057 (.bnot 5056) := by core033_kernel_decide
theorem stats5057 : actualRows5057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5057=6276 := by core033_kernel_decide
theorem rows5058 : actualRows5058=WordField.canonicalRows actualModulus 5058 (.badd 5055 5057) := by core033_kernel_decide
theorem stats5058 : actualRows5058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5058=5388 := by core033_kernel_decide
theorem rows5059 : actualRows5059=WordField.canonicalRows actualModulus 5059 (.bnot 5058) := by core033_kernel_decide
theorem stats5059 : actualRows5059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5059=6276 := by core033_kernel_decide
theorem rows5060 : actualRows5060=WordField.canonicalRows actualModulus 5060 (.band 5053 5059) := by core033_kernel_decide
theorem stats5060 : actualRows5060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5060=5124 := by core033_kernel_decide
theorem rows5061 : actualRows5061=WordField.canonicalRows actualModulus 5061 (.bxor 5048 5060) := by core033_kernel_decide
theorem stats5061 : actualRows5061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5061=7428 := by core033_kernel_decide
theorem rows5062 : actualRows5062=WordField.canonicalRows actualModulus 5062 (.shr 5061 31) := by core033_kernel_decide
theorem stats5062 : actualRows5062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5062=2892 := by core033_kernel_decide
theorem rows5063 : actualRows5063=WordField.canonicalRows actualModulus 5063 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5063 : actualRows5063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5063=2892 := by core033_kernel_decide
theorem rows5064 : actualRows5064=WordField.canonicalRows actualModulus 5064 (.bxor 5062 5063) := by core033_kernel_decide
theorem stats5064 : actualRows5064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5064=7428 := by core033_kernel_decide
theorem rows5065 : actualRows5065=WordField.canonicalRows actualModulus 5065 (.bnot 5064) := by core033_kernel_decide
theorem stats5065 : actualRows5065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5065=6276 := by core033_kernel_decide
theorem rows5066 : actualRows5066=WordField.canonicalRows actualModulus 5066 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5066 : actualRows5066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5066=2892 := by core033_kernel_decide
theorem rows5067 : actualRows5067=WordField.canonicalRows actualModulus 5067 (.badd 5065 5066) := by core033_kernel_decide
theorem stats5067 : actualRows5067.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5067=5388 := by core033_kernel_decide
theorem rows5068 : actualRows5068=WordField.canonicalRows actualModulus 5068 (.band 5067 2139) := by core033_kernel_decide
theorem stats5068 : actualRows5068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5068=5124 := by core033_kernel_decide
theorem rows5069 : actualRows5069=WordField.canonicalRows actualModulus 5069 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5069 : actualRows5069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5069=2892 := by core033_kernel_decide
theorem rows5070 : actualRows5070=WordField.canonicalRows actualModulus 5070 (.bxor 616 5069) := by core033_kernel_decide
theorem stats5070 : actualRows5070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5070=7428 := by core033_kernel_decide
theorem rows5071 : actualRows5071=WordField.canonicalRows actualModulus 5071 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5071 : actualRows5071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5071=2820 := by core033_kernel_decide
theorem rows5072 : actualRows5072=WordField.canonicalRows actualModulus 5072 (.bnot 5071) := by core033_kernel_decide
theorem stats5072 : actualRows5072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5072=6276 := by core033_kernel_decide
theorem rows5073 : actualRows5073=WordField.canonicalRows actualModulus 5073 (.band 5070 5072) := by core033_kernel_decide
theorem stats5073 : actualRows5073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5073=5124 := by core033_kernel_decide
theorem rows5074 : actualRows5074=WordField.canonicalRows actualModulus 5074 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5074 : actualRows5074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5074=2892 := by core033_kernel_decide
theorem rows5075 : actualRows5075=WordField.canonicalRows actualModulus 5075 (.bxor 616 5074) := by core033_kernel_decide
theorem stats5075 : actualRows5075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5075=7428 := by core033_kernel_decide
theorem rows5076 : actualRows5076=WordField.canonicalRows actualModulus 5076 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5076 : actualRows5076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5076=2820 := by core033_kernel_decide
theorem rows5077 : actualRows5077=WordField.canonicalRows actualModulus 5077 (.bnot 5076) := by core033_kernel_decide
theorem stats5077 : actualRows5077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5077=6276 := by core033_kernel_decide
theorem rows5078 : actualRows5078=WordField.canonicalRows actualModulus 5078 (.bxor 5075 5077) := by core033_kernel_decide
theorem stats5078 : actualRows5078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5078=7428 := by core033_kernel_decide
theorem rows5079 : actualRows5079=WordField.canonicalRows actualModulus 5079 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5079 : actualRows5079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5079=2892 := by core033_kernel_decide
theorem rows5080 : actualRows5080=WordField.canonicalRows actualModulus 5080 (.bxor 616 5079) := by core033_kernel_decide
theorem stats5080 : actualRows5080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5080=7428 := by core033_kernel_decide
theorem rows5081 : actualRows5081=WordField.canonicalRows actualModulus 5081 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5081 : actualRows5081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5081=2820 := by core033_kernel_decide
theorem rows5082 : actualRows5082=WordField.canonicalRows actualModulus 5082 (.bnot 5081) := by core033_kernel_decide
theorem stats5082 : actualRows5082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5082=6276 := by core033_kernel_decide
theorem rows5083 : actualRows5083=WordField.canonicalRows actualModulus 5083 (.badd 5080 5082) := by core033_kernel_decide
theorem stats5083 : actualRows5083.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5083=5388 := by core033_kernel_decide
theorem rows5084 : actualRows5084=WordField.canonicalRows actualModulus 5084 (.bnot 5083) := by core033_kernel_decide
theorem stats5084 : actualRows5084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5084=6276 := by core033_kernel_decide
theorem rows5085 : actualRows5085=WordField.canonicalRows actualModulus 5085 (.band 5078 5084) := by core033_kernel_decide
theorem stats5085 : actualRows5085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5085=5124 := by core033_kernel_decide
theorem rows5086 : actualRows5086=WordField.canonicalRows actualModulus 5086 (.bxor 5073 5085) := by core033_kernel_decide
theorem stats5086 : actualRows5086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5086=7428 := by core033_kernel_decide
theorem rows5087 : actualRows5087=WordField.canonicalRows actualModulus 5087 (.shr 5086 31) := by core033_kernel_decide
theorem stats5087 : actualRows5087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5087=2892 := by core033_kernel_decide
def partRows77 : List R1CS.Row := actualRows5024++actualRows5025++actualRows5026++actualRows5027++actualRows5028++actualRows5029++actualRows5030++actualRows5031++actualRows5032++actualRows5033++actualRows5034++actualRows5035++actualRows5036++actualRows5037++actualRows5038++actualRows5039++actualRows5040++actualRows5041++actualRows5042++actualRows5043++actualRows5044++actualRows5045++actualRows5046++actualRows5047++actualRows5048++actualRows5049++actualRows5050++actualRows5051++actualRows5052++actualRows5053++actualRows5054++actualRows5055++actualRows5056++actualRows5057++actualRows5058++actualRows5059++actualRows5060++actualRows5061++actualRows5062++actualRows5063++actualRows5064++actualRows5065++actualRows5066++actualRows5067++actualRows5068++actualRows5069++actualRows5070++actualRows5071++actualRows5072++actualRows5073++actualRows5074++actualRows5075++actualRows5076++actualRows5077++actualRows5078++actualRows5079++actualRows5080++actualRows5081++actualRows5082++actualRows5083++actualRows5084++actualRows5085++actualRows5086++actualRows5087
def partOps77 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 5024,.bxor 5023 5025,.literal (BitVec.ofNat 32 2),.bxor 616 5027,.literal (BitVec.ofNat 32 0),.bnot 5029,.badd 5028 5030,.bnot 5031,.band 5026 5032,.bxor 5021 5033,.shr 5034 31,.literal (BitVec.ofNat 32 1),.bxor 5035 5036,.bnot 5037,.literal (BitVec.ofNat 32 1),.badd 5038 5039,.bnot 5040,.band 5041 1944,.bxor 5016 5042,.literal (BitVec.ofNat 32 2),.bxor 616 5044,.literal (BitVec.ofNat 32 0),.bnot 5046,.band 5045 5047,.literal (BitVec.ofNat 32 2),.bxor 616 5049,.literal (BitVec.ofNat 32 0),.bnot 5051,.bxor 5050 5052,.literal (BitVec.ofNat 32 2),.bxor 616 5054,.literal (BitVec.ofNat 32 0),.bnot 5056,.badd 5055 5057,.bnot 5058,.band 5053 5059,.bxor 5048 5060,.shr 5061 31,.literal (BitVec.ofNat 32 1),.bxor 5062 5063,.bnot 5064,.literal (BitVec.ofNat 32 1),.badd 5065 5066,.band 5067 2139,.literal (BitVec.ofNat 32 2),.bxor 616 5069,.literal (BitVec.ofNat 32 0),.bnot 5071,.band 5070 5072,.literal (BitVec.ofNat 32 2),.bxor 616 5074,.literal (BitVec.ofNat 32 0),.bnot 5076,.bxor 5075 5077,.literal (BitVec.ofNat 32 2),.bxor 616 5079,.literal (BitVec.ofNat 32 0),.bnot 5081,.badd 5080 5082,.bnot 5083,.band 5078 5084,.bxor 5073 5085,.shr 5086 31]
theorem partExact77 : partRows77=WordField.rows actualModulus 5024 partOps77 := by
  simp only [partRows77,partOps77,WordField.rows,rows5024,rows5025,rows5026,rows5027,rows5028,rows5029,rows5030,rows5031,rows5032,rows5033,rows5034,rows5035,rows5036,rows5037,rows5038,rows5039,rows5040,rows5041,rows5042,rows5043,rows5044,rows5045,rows5046,rows5047,rows5048,rows5049,rows5050,rows5051,rows5052,rows5053,rows5054,rows5055,rows5056,rows5057,rows5058,rows5059,rows5060,rows5061,rows5062,rows5063,rows5064,rows5065,rows5066,rows5067,rows5068,rows5069,rows5070,rows5071,rows5072,rows5073,rows5074,rows5075,rows5076,rows5077,rows5078,rows5079,rows5080,rows5081,rows5082,rows5083,rows5084,rows5085,rows5086,rows5087,List.append_assoc,List.append_nil]
theorem partLength77 : partOps77.length=64 := by decide
theorem partStats77 : partRows77.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows77=332568 := by
  simp only [partRows77,List.length_append,MatrixRowBlocks.rows_weight_append,stats5024.1,stats5024.2,stats5025.1,stats5025.2,stats5026.1,stats5026.2,stats5027.1,stats5027.2,stats5028.1,stats5028.2,stats5029.1,stats5029.2,stats5030.1,stats5030.2,stats5031.1,stats5031.2,stats5032.1,stats5032.2,stats5033.1,stats5033.2,stats5034.1,stats5034.2,stats5035.1,stats5035.2,stats5036.1,stats5036.2,stats5037.1,stats5037.2,stats5038.1,stats5038.2,stats5039.1,stats5039.2,stats5040.1,stats5040.2,stats5041.1,stats5041.2,stats5042.1,stats5042.2,stats5043.1,stats5043.2,stats5044.1,stats5044.2,stats5045.1,stats5045.2,stats5046.1,stats5046.2,stats5047.1,stats5047.2,stats5048.1,stats5048.2,stats5049.1,stats5049.2,stats5050.1,stats5050.2,stats5051.1,stats5051.2,stats5052.1,stats5052.2,stats5053.1,stats5053.2,stats5054.1,stats5054.2,stats5055.1,stats5055.2,stats5056.1,stats5056.2,stats5057.1,stats5057.2,stats5058.1,stats5058.2,stats5059.1,stats5059.2,stats5060.1,stats5060.2,stats5061.1,stats5061.2,stats5062.1,stats5062.2,stats5063.1,stats5063.2,stats5064.1,stats5064.2,stats5065.1,stats5065.2,stats5066.1,stats5066.2,stats5067.1,stats5067.2,stats5068.1,stats5068.2,stats5069.1,stats5069.2,stats5070.1,stats5070.2,stats5071.1,stats5071.2,stats5072.1,stats5072.2,stats5073.1,stats5073.2,stats5074.1,stats5074.2,stats5075.1,stats5075.2,stats5076.1,stats5076.2,stats5077.1,stats5077.2,stats5078.1,stats5078.2,stats5079.1,stats5079.2,stats5080.1,stats5080.2,stats5081.1,stats5081.2,stats5082.1,stats5082.2,stats5083.1,stats5083.2,stats5084.1,stats5084.2,stats5085.1,stats5085.2,stats5086.1,stats5086.2,stats5087.1,stats5087.2]
  decide
end QuotedPairedPathRoundCheckedRows
