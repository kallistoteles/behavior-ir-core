import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData80
import AuthenticatedBranchRoundInstructionMatrixData81
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5174 : actualRows5174=WordField.canonicalRows actualModulus 5174 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5174 : actualRows5174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5174=2892 := by core033_kernel_decide
theorem rows5175 : actualRows5175=WordField.canonicalRows actualModulus 5175 (.bxor 5173 5174) := by core033_kernel_decide
theorem stats5175 : actualRows5175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5175=7428 := by core033_kernel_decide
theorem rows5176 : actualRows5176=WordField.canonicalRows actualModulus 5176 (.bnot 5175) := by core033_kernel_decide
theorem stats5176 : actualRows5176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5176=6276 := by core033_kernel_decide
theorem rows5177 : actualRows5177=WordField.canonicalRows actualModulus 5177 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5177 : actualRows5177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5177=2892 := by core033_kernel_decide
theorem rows5178 : actualRows5178=WordField.canonicalRows actualModulus 5178 (.badd 5176 5177) := by core033_kernel_decide
theorem stats5178 : actualRows5178.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5178=5388 := by core033_kernel_decide
theorem rows5179 : actualRows5179=WordField.canonicalRows actualModulus 5179 (.band 5178 2789) := by core033_kernel_decide
theorem stats5179 : actualRows5179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5179=5124 := by core033_kernel_decide
theorem rows5180 : actualRows5180=WordField.canonicalRows actualModulus 5180 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5180 : actualRows5180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5180=2892 := by core033_kernel_decide
theorem rows5181 : actualRows5181=WordField.canonicalRows actualModulus 5181 (.bxor 1299 5180) := by core033_kernel_decide
theorem stats5181 : actualRows5181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5181=7428 := by core033_kernel_decide
theorem rows5182 : actualRows5182=WordField.canonicalRows actualModulus 5182 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5182 : actualRows5182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5182=2820 := by core033_kernel_decide
theorem rows5183 : actualRows5183=WordField.canonicalRows actualModulus 5183 (.bnot 5182) := by core033_kernel_decide
theorem stats5183 : actualRows5183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5183=6276 := by core033_kernel_decide
theorem rows5184 : actualRows5184=WordField.canonicalRows actualModulus 5184 (.band 5181 5183) := by core033_kernel_decide
theorem stats5184 : actualRows5184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5184=5124 := by core033_kernel_decide
theorem rows5185 : actualRows5185=WordField.canonicalRows actualModulus 5185 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5185 : actualRows5185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5185=2892 := by core033_kernel_decide
theorem rows5186 : actualRows5186=WordField.canonicalRows actualModulus 5186 (.bxor 1299 5185) := by core033_kernel_decide
theorem stats5186 : actualRows5186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5186=7428 := by core033_kernel_decide
theorem rows5187 : actualRows5187=WordField.canonicalRows actualModulus 5187 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5187 : actualRows5187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5187=2820 := by core033_kernel_decide
theorem rows5188 : actualRows5188=WordField.canonicalRows actualModulus 5188 (.bnot 5187) := by core033_kernel_decide
theorem stats5188 : actualRows5188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5188=6276 := by core033_kernel_decide
theorem rows5189 : actualRows5189=WordField.canonicalRows actualModulus 5189 (.bxor 5186 5188) := by core033_kernel_decide
theorem stats5189 : actualRows5189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5189=7428 := by core033_kernel_decide
theorem rows5190 : actualRows5190=WordField.canonicalRows actualModulus 5190 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5190 : actualRows5190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5190=2892 := by core033_kernel_decide
theorem rows5191 : actualRows5191=WordField.canonicalRows actualModulus 5191 (.bxor 1299 5190) := by core033_kernel_decide
theorem stats5191 : actualRows5191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5191=7428 := by core033_kernel_decide
theorem rows5192 : actualRows5192=WordField.canonicalRows actualModulus 5192 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5192 : actualRows5192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5192=2820 := by core033_kernel_decide
theorem rows5193 : actualRows5193=WordField.canonicalRows actualModulus 5193 (.bnot 5192) := by core033_kernel_decide
theorem stats5193 : actualRows5193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5193=6276 := by core033_kernel_decide
theorem rows5194 : actualRows5194=WordField.canonicalRows actualModulus 5194 (.badd 5191 5193) := by core033_kernel_decide
theorem stats5194 : actualRows5194.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5194=5388 := by core033_kernel_decide
theorem rows5195 : actualRows5195=WordField.canonicalRows actualModulus 5195 (.bnot 5194) := by core033_kernel_decide
theorem stats5195 : actualRows5195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5195=6276 := by core033_kernel_decide
theorem rows5196 : actualRows5196=WordField.canonicalRows actualModulus 5196 (.band 5189 5195) := by core033_kernel_decide
theorem stats5196 : actualRows5196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5196=5124 := by core033_kernel_decide
theorem rows5197 : actualRows5197=WordField.canonicalRows actualModulus 5197 (.bxor 5184 5196) := by core033_kernel_decide
theorem stats5197 : actualRows5197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5197=7428 := by core033_kernel_decide
theorem rows5198 : actualRows5198=WordField.canonicalRows actualModulus 5198 (.shr 5197 31) := by core033_kernel_decide
theorem stats5198 : actualRows5198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5198=2892 := by core033_kernel_decide
theorem rows5199 : actualRows5199=WordField.canonicalRows actualModulus 5199 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5199 : actualRows5199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5199=2892 := by core033_kernel_decide
theorem rows5200 : actualRows5200=WordField.canonicalRows actualModulus 5200 (.bxor 5198 5199) := by core033_kernel_decide
theorem stats5200 : actualRows5200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5200=7428 := by core033_kernel_decide
theorem rows5201 : actualRows5201=WordField.canonicalRows actualModulus 5201 (.bnot 5200) := by core033_kernel_decide
theorem stats5201 : actualRows5201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5201=6276 := by core033_kernel_decide
theorem rows5202 : actualRows5202=WordField.canonicalRows actualModulus 5202 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5202 : actualRows5202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5202=2892 := by core033_kernel_decide
theorem rows5203 : actualRows5203=WordField.canonicalRows actualModulus 5203 (.badd 5201 5202) := by core033_kernel_decide
theorem stats5203 : actualRows5203.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5203=5388 := by core033_kernel_decide
theorem rows5204 : actualRows5204=WordField.canonicalRows actualModulus 5204 (.bnot 5203) := by core033_kernel_decide
theorem stats5204 : actualRows5204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5204=6276 := by core033_kernel_decide
theorem rows5205 : actualRows5205=WordField.canonicalRows actualModulus 5205 (.band 5204 2597) := by core033_kernel_decide
theorem stats5205 : actualRows5205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5205=5124 := by core033_kernel_decide
theorem rows5206 : actualRows5206=WordField.canonicalRows actualModulus 5206 (.bxor 5179 5205) := by core033_kernel_decide
theorem stats5206 : actualRows5206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5206=7428 := by core033_kernel_decide
theorem rows5207 : actualRows5207=WordField.canonicalRows actualModulus 5207 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5207 : actualRows5207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5207=2892 := by core033_kernel_decide
theorem rows5208 : actualRows5208=WordField.canonicalRows actualModulus 5208 (.bxor 1299 5207) := by core033_kernel_decide
theorem stats5208 : actualRows5208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5208=7428 := by core033_kernel_decide
theorem rows5209 : actualRows5209=WordField.canonicalRows actualModulus 5209 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5209 : actualRows5209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5209=2820 := by core033_kernel_decide
theorem rows5210 : actualRows5210=WordField.canonicalRows actualModulus 5210 (.bnot 5209) := by core033_kernel_decide
theorem stats5210 : actualRows5210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5210=6276 := by core033_kernel_decide
theorem rows5211 : actualRows5211=WordField.canonicalRows actualModulus 5211 (.band 5208 5210) := by core033_kernel_decide
theorem stats5211 : actualRows5211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5211=5124 := by core033_kernel_decide
theorem rows5212 : actualRows5212=WordField.canonicalRows actualModulus 5212 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5212 : actualRows5212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5212=2892 := by core033_kernel_decide
theorem rows5213 : actualRows5213=WordField.canonicalRows actualModulus 5213 (.bxor 1299 5212) := by core033_kernel_decide
theorem stats5213 : actualRows5213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5213=7428 := by core033_kernel_decide
theorem rows5214 : actualRows5214=WordField.canonicalRows actualModulus 5214 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5214 : actualRows5214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5214=2820 := by core033_kernel_decide
theorem rows5215 : actualRows5215=WordField.canonicalRows actualModulus 5215 (.bnot 5214) := by core033_kernel_decide
theorem stats5215 : actualRows5215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5215=6276 := by core033_kernel_decide
theorem rows5216 : actualRows5216=WordField.canonicalRows actualModulus 5216 (.bxor 5213 5215) := by core033_kernel_decide
theorem stats5216 : actualRows5216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5216=7428 := by core033_kernel_decide
theorem rows5217 : actualRows5217=WordField.canonicalRows actualModulus 5217 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5217 : actualRows5217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5217=2892 := by core033_kernel_decide
theorem rows5218 : actualRows5218=WordField.canonicalRows actualModulus 5218 (.bxor 1299 5217) := by core033_kernel_decide
theorem stats5218 : actualRows5218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5218=7428 := by core033_kernel_decide
theorem rows5219 : actualRows5219=WordField.canonicalRows actualModulus 5219 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5219 : actualRows5219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5219=2820 := by core033_kernel_decide
theorem rows5220 : actualRows5220=WordField.canonicalRows actualModulus 5220 (.bnot 5219) := by core033_kernel_decide
theorem stats5220 : actualRows5220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5220=6276 := by core033_kernel_decide
theorem rows5221 : actualRows5221=WordField.canonicalRows actualModulus 5221 (.badd 5218 5220) := by core033_kernel_decide
theorem stats5221 : actualRows5221.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5221=5388 := by core033_kernel_decide
theorem rows5222 : actualRows5222=WordField.canonicalRows actualModulus 5222 (.bnot 5221) := by core033_kernel_decide
theorem stats5222 : actualRows5222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5222=6276 := by core033_kernel_decide
theorem rows5223 : actualRows5223=WordField.canonicalRows actualModulus 5223 (.band 5216 5222) := by core033_kernel_decide
theorem stats5223 : actualRows5223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5223=5124 := by core033_kernel_decide
theorem rows5224 : actualRows5224=WordField.canonicalRows actualModulus 5224 (.bxor 5211 5223) := by core033_kernel_decide
theorem stats5224 : actualRows5224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5224=7428 := by core033_kernel_decide
theorem rows5225 : actualRows5225=WordField.canonicalRows actualModulus 5225 (.shr 5224 31) := by core033_kernel_decide
theorem stats5225 : actualRows5225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5225=2892 := by core033_kernel_decide
theorem rows5226 : actualRows5226=WordField.canonicalRows actualModulus 5226 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5226 : actualRows5226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5226=2892 := by core033_kernel_decide
theorem rows5227 : actualRows5227=WordField.canonicalRows actualModulus 5227 (.bxor 5225 5226) := by core033_kernel_decide
theorem stats5227 : actualRows5227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5227=7428 := by core033_kernel_decide
theorem rows5228 : actualRows5228=WordField.canonicalRows actualModulus 5228 (.bnot 5227) := by core033_kernel_decide
theorem stats5228 : actualRows5228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5228=6276 := by core033_kernel_decide
theorem rows5229 : actualRows5229=WordField.canonicalRows actualModulus 5229 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5229 : actualRows5229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5229=2892 := by core033_kernel_decide
theorem rows5230 : actualRows5230=WordField.canonicalRows actualModulus 5230 (.badd 5228 5229) := by core033_kernel_decide
theorem stats5230 : actualRows5230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5230=5388 := by core033_kernel_decide
theorem rows5231 : actualRows5231=WordField.canonicalRows actualModulus 5231 (.band 5230 2792) := by core033_kernel_decide
theorem stats5231 : actualRows5231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5231=5124 := by core033_kernel_decide
theorem rows5232 : actualRows5232=WordField.canonicalRows actualModulus 5232 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5232 : actualRows5232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5232=2892 := by core033_kernel_decide
theorem rows5233 : actualRows5233=WordField.canonicalRows actualModulus 5233 (.bxor 1299 5232) := by core033_kernel_decide
theorem stats5233 : actualRows5233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5233=7428 := by core033_kernel_decide
theorem rows5234 : actualRows5234=WordField.canonicalRows actualModulus 5234 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5234 : actualRows5234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5234=2820 := by core033_kernel_decide
theorem rows5235 : actualRows5235=WordField.canonicalRows actualModulus 5235 (.bnot 5234) := by core033_kernel_decide
theorem stats5235 : actualRows5235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5235=6276 := by core033_kernel_decide
theorem rows5236 : actualRows5236=WordField.canonicalRows actualModulus 5236 (.band 5233 5235) := by core033_kernel_decide
theorem stats5236 : actualRows5236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5236=5124 := by core033_kernel_decide
theorem rows5237 : actualRows5237=WordField.canonicalRows actualModulus 5237 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5237 : actualRows5237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5237=2892 := by core033_kernel_decide
def partRows79 : List R1CS.Row := actualRows5174++actualRows5175++actualRows5176++actualRows5177++actualRows5178++actualRows5179++actualRows5180++actualRows5181++actualRows5182++actualRows5183++actualRows5184++actualRows5185++actualRows5186++actualRows5187++actualRows5188++actualRows5189++actualRows5190++actualRows5191++actualRows5192++actualRows5193++actualRows5194++actualRows5195++actualRows5196++actualRows5197++actualRows5198++actualRows5199++actualRows5200++actualRows5201++actualRows5202++actualRows5203++actualRows5204++actualRows5205++actualRows5206++actualRows5207++actualRows5208++actualRows5209++actualRows5210++actualRows5211++actualRows5212++actualRows5213++actualRows5214++actualRows5215++actualRows5216++actualRows5217++actualRows5218++actualRows5219++actualRows5220++actualRows5221++actualRows5222++actualRows5223++actualRows5224++actualRows5225++actualRows5226++actualRows5227++actualRows5228++actualRows5229++actualRows5230++actualRows5231++actualRows5232++actualRows5233++actualRows5234++actualRows5235++actualRows5236++actualRows5237
def partOps79 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 5173 5174,.bnot 5175,.literal (BitVec.ofNat 32 1),.badd 5176 5177,.band 5178 2789,.literal (BitVec.ofNat 32 2),.bxor 1299 5180,.literal (BitVec.ofNat 32 0),.bnot 5182,.band 5181 5183,.literal (BitVec.ofNat 32 2),.bxor 1299 5185,.literal (BitVec.ofNat 32 0),.bnot 5187,.bxor 5186 5188,.literal (BitVec.ofNat 32 2),.bxor 1299 5190,.literal (BitVec.ofNat 32 0),.bnot 5192,.badd 5191 5193,.bnot 5194,.band 5189 5195,.bxor 5184 5196,.shr 5197 31,.literal (BitVec.ofNat 32 1),.bxor 5198 5199,.bnot 5200,.literal (BitVec.ofNat 32 1),.badd 5201 5202,.bnot 5203,.band 5204 2597,.bxor 5179 5205,.literal (BitVec.ofNat 32 2),.bxor 1299 5207,.literal (BitVec.ofNat 32 0),.bnot 5209,.band 5208 5210,.literal (BitVec.ofNat 32 2),.bxor 1299 5212,.literal (BitVec.ofNat 32 0),.bnot 5214,.bxor 5213 5215,.literal (BitVec.ofNat 32 2),.bxor 1299 5217,.literal (BitVec.ofNat 32 0),.bnot 5219,.badd 5218 5220,.bnot 5221,.band 5216 5222,.bxor 5211 5223,.shr 5224 31,.literal (BitVec.ofNat 32 1),.bxor 5225 5226,.bnot 5227,.literal (BitVec.ofNat 32 1),.badd 5228 5229,.band 5230 2792,.literal (BitVec.ofNat 32 2),.bxor 1299 5232,.literal (BitVec.ofNat 32 0),.bnot 5234,.band 5233 5235,.literal (BitVec.ofNat 32 2)]
theorem partExact79 : partRows79=WordField.rows actualModulus 5174 partOps79 := by
  simp only [partRows79,partOps79,WordField.rows,rows5174,rows5175,rows5176,rows5177,rows5178,rows5179,rows5180,rows5181,rows5182,rows5183,rows5184,rows5185,rows5186,rows5187,rows5188,rows5189,rows5190,rows5191,rows5192,rows5193,rows5194,rows5195,rows5196,rows5197,rows5198,rows5199,rows5200,rows5201,rows5202,rows5203,rows5204,rows5205,rows5206,rows5207,rows5208,rows5209,rows5210,rows5211,rows5212,rows5213,rows5214,rows5215,rows5216,rows5217,rows5218,rows5219,rows5220,rows5221,rows5222,rows5223,rows5224,rows5225,rows5226,rows5227,rows5228,rows5229,rows5230,rows5231,rows5232,rows5233,rows5234,rows5235,rows5236,rows5237,List.append_assoc,List.append_nil]
theorem partLength79 : partOps79.length=64 := by decide
theorem partStats79 : partRows79.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows79=326952 := by
  simp only [partRows79,List.length_append,MatrixRowBlocks.rows_weight_append,stats5174.1,stats5174.2,stats5175.1,stats5175.2,stats5176.1,stats5176.2,stats5177.1,stats5177.2,stats5178.1,stats5178.2,stats5179.1,stats5179.2,stats5180.1,stats5180.2,stats5181.1,stats5181.2,stats5182.1,stats5182.2,stats5183.1,stats5183.2,stats5184.1,stats5184.2,stats5185.1,stats5185.2,stats5186.1,stats5186.2,stats5187.1,stats5187.2,stats5188.1,stats5188.2,stats5189.1,stats5189.2,stats5190.1,stats5190.2,stats5191.1,stats5191.2,stats5192.1,stats5192.2,stats5193.1,stats5193.2,stats5194.1,stats5194.2,stats5195.1,stats5195.2,stats5196.1,stats5196.2,stats5197.1,stats5197.2,stats5198.1,stats5198.2,stats5199.1,stats5199.2,stats5200.1,stats5200.2,stats5201.1,stats5201.2,stats5202.1,stats5202.2,stats5203.1,stats5203.2,stats5204.1,stats5204.2,stats5205.1,stats5205.2,stats5206.1,stats5206.2,stats5207.1,stats5207.2,stats5208.1,stats5208.2,stats5209.1,stats5209.2,stats5210.1,stats5210.2,stats5211.1,stats5211.2,stats5212.1,stats5212.2,stats5213.1,stats5213.2,stats5214.1,stats5214.2,stats5215.1,stats5215.2,stats5216.1,stats5216.2,stats5217.1,stats5217.2,stats5218.1,stats5218.2,stats5219.1,stats5219.2,stats5220.1,stats5220.2,stats5221.1,stats5221.2,stats5222.1,stats5222.2,stats5223.1,stats5223.2,stats5224.1,stats5224.2,stats5225.1,stats5225.2,stats5226.1,stats5226.2,stats5227.1,stats5227.2,stats5228.1,stats5228.2,stats5229.1,stats5229.2,stats5230.1,stats5230.2,stats5231.1,stats5231.2,stats5232.1,stats5232.2,stats5233.1,stats5233.2,stats5234.1,stats5234.2,stats5235.1,stats5235.2,stats5236.1,stats5236.2,stats5237.1,stats5237.2]
  decide
end AuthenticatedBranchRoundCheckedRows
