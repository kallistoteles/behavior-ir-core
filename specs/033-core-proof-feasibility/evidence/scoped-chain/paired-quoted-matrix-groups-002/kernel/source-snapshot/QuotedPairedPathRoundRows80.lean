import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData81
import PairedPathRoundInstructionMatrixData82
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5216 : actualRows5216=WordField.canonicalRows actualModulus 5216 (.band 5209 5215) := by core033_kernel_decide
theorem stats5216 : actualRows5216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5216=5124 := by core033_kernel_decide
theorem rows5217 : actualRows5217=WordField.canonicalRows actualModulus 5217 (.bxor 5204 5216) := by core033_kernel_decide
theorem stats5217 : actualRows5217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5217=7428 := by core033_kernel_decide
theorem rows5218 : actualRows5218=WordField.canonicalRows actualModulus 5218 (.shr 5217 31) := by core033_kernel_decide
theorem stats5218 : actualRows5218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5218=2892 := by core033_kernel_decide
theorem rows5219 : actualRows5219=WordField.canonicalRows actualModulus 5219 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5219 : actualRows5219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5219=2892 := by core033_kernel_decide
theorem rows5220 : actualRows5220=WordField.canonicalRows actualModulus 5220 (.bxor 5218 5219) := by core033_kernel_decide
theorem stats5220 : actualRows5220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5220=7428 := by core033_kernel_decide
theorem rows5221 : actualRows5221=WordField.canonicalRows actualModulus 5221 (.bnot 5220) := by core033_kernel_decide
theorem stats5221 : actualRows5221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5221=6276 := by core033_kernel_decide
theorem rows5222 : actualRows5222=WordField.canonicalRows actualModulus 5222 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5222 : actualRows5222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5222=2892 := by core033_kernel_decide
theorem rows5223 : actualRows5223=WordField.canonicalRows actualModulus 5223 (.badd 5221 5222) := by core033_kernel_decide
theorem stats5223 : actualRows5223.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5223=5388 := by core033_kernel_decide
theorem rows5224 : actualRows5224=WordField.canonicalRows actualModulus 5224 (.band 5223 2148) := by core033_kernel_decide
theorem stats5224 : actualRows5224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5224=5124 := by core033_kernel_decide
theorem rows5225 : actualRows5225=WordField.canonicalRows actualModulus 5225 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5225 : actualRows5225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5225=2892 := by core033_kernel_decide
theorem rows5226 : actualRows5226=WordField.canonicalRows actualModulus 5226 (.bxor 616 5225) := by core033_kernel_decide
theorem stats5226 : actualRows5226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5226=7428 := by core033_kernel_decide
theorem rows5227 : actualRows5227=WordField.canonicalRows actualModulus 5227 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5227 : actualRows5227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5227=2820 := by core033_kernel_decide
theorem rows5228 : actualRows5228=WordField.canonicalRows actualModulus 5228 (.bnot 5227) := by core033_kernel_decide
theorem stats5228 : actualRows5228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5228=6276 := by core033_kernel_decide
theorem rows5229 : actualRows5229=WordField.canonicalRows actualModulus 5229 (.band 5226 5228) := by core033_kernel_decide
theorem stats5229 : actualRows5229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5229=5124 := by core033_kernel_decide
theorem rows5230 : actualRows5230=WordField.canonicalRows actualModulus 5230 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5230 : actualRows5230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5230=2892 := by core033_kernel_decide
theorem rows5231 : actualRows5231=WordField.canonicalRows actualModulus 5231 (.bxor 616 5230) := by core033_kernel_decide
theorem stats5231 : actualRows5231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5231=7428 := by core033_kernel_decide
theorem rows5232 : actualRows5232=WordField.canonicalRows actualModulus 5232 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5232 : actualRows5232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5232=2820 := by core033_kernel_decide
theorem rows5233 : actualRows5233=WordField.canonicalRows actualModulus 5233 (.bnot 5232) := by core033_kernel_decide
theorem stats5233 : actualRows5233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5233=6276 := by core033_kernel_decide
theorem rows5234 : actualRows5234=WordField.canonicalRows actualModulus 5234 (.bxor 5231 5233) := by core033_kernel_decide
theorem stats5234 : actualRows5234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5234=7428 := by core033_kernel_decide
theorem rows5235 : actualRows5235=WordField.canonicalRows actualModulus 5235 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5235 : actualRows5235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5235=2892 := by core033_kernel_decide
theorem rows5236 : actualRows5236=WordField.canonicalRows actualModulus 5236 (.bxor 616 5235) := by core033_kernel_decide
theorem stats5236 : actualRows5236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5236=7428 := by core033_kernel_decide
theorem rows5237 : actualRows5237=WordField.canonicalRows actualModulus 5237 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5237 : actualRows5237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5237=2820 := by core033_kernel_decide
theorem rows5238 : actualRows5238=WordField.canonicalRows actualModulus 5238 (.bnot 5237) := by core033_kernel_decide
theorem stats5238 : actualRows5238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5238=6276 := by core033_kernel_decide
theorem rows5239 : actualRows5239=WordField.canonicalRows actualModulus 5239 (.badd 5236 5238) := by core033_kernel_decide
theorem stats5239 : actualRows5239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5239=5388 := by core033_kernel_decide
theorem rows5240 : actualRows5240=WordField.canonicalRows actualModulus 5240 (.bnot 5239) := by core033_kernel_decide
theorem stats5240 : actualRows5240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5240=6276 := by core033_kernel_decide
theorem rows5241 : actualRows5241=WordField.canonicalRows actualModulus 5241 (.band 5234 5240) := by core033_kernel_decide
theorem stats5241 : actualRows5241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5241=5124 := by core033_kernel_decide
theorem rows5242 : actualRows5242=WordField.canonicalRows actualModulus 5242 (.bxor 5229 5241) := by core033_kernel_decide
theorem stats5242 : actualRows5242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5242=7428 := by core033_kernel_decide
theorem rows5243 : actualRows5243=WordField.canonicalRows actualModulus 5243 (.shr 5242 31) := by core033_kernel_decide
theorem stats5243 : actualRows5243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5243=2892 := by core033_kernel_decide
theorem rows5244 : actualRows5244=WordField.canonicalRows actualModulus 5244 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5244 : actualRows5244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5244=2892 := by core033_kernel_decide
theorem rows5245 : actualRows5245=WordField.canonicalRows actualModulus 5245 (.bxor 5243 5244) := by core033_kernel_decide
theorem stats5245 : actualRows5245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5245=7428 := by core033_kernel_decide
theorem rows5246 : actualRows5246=WordField.canonicalRows actualModulus 5246 (.bnot 5245) := by core033_kernel_decide
theorem stats5246 : actualRows5246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5246=6276 := by core033_kernel_decide
theorem rows5247 : actualRows5247=WordField.canonicalRows actualModulus 5247 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5247 : actualRows5247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5247=2892 := by core033_kernel_decide
theorem rows5248 : actualRows5248=WordField.canonicalRows actualModulus 5248 (.badd 5246 5247) := by core033_kernel_decide
theorem stats5248 : actualRows5248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5248=5388 := by core033_kernel_decide
theorem rows5249 : actualRows5249=WordField.canonicalRows actualModulus 5249 (.bnot 5248) := by core033_kernel_decide
theorem stats5249 : actualRows5249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5249=6276 := by core033_kernel_decide
theorem rows5250 : actualRows5250=WordField.canonicalRows actualModulus 5250 (.band 5249 1956) := by core033_kernel_decide
theorem stats5250 : actualRows5250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5250=5124 := by core033_kernel_decide
theorem rows5251 : actualRows5251=WordField.canonicalRows actualModulus 5251 (.bxor 5224 5250) := by core033_kernel_decide
theorem stats5251 : actualRows5251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5251=7428 := by core033_kernel_decide
theorem rows5252 : actualRows5252=WordField.canonicalRows actualModulus 5252 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5252 : actualRows5252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5252=2892 := by core033_kernel_decide
theorem rows5253 : actualRows5253=WordField.canonicalRows actualModulus 5253 (.bxor 616 5252) := by core033_kernel_decide
theorem stats5253 : actualRows5253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5253=7428 := by core033_kernel_decide
theorem rows5254 : actualRows5254=WordField.canonicalRows actualModulus 5254 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5254 : actualRows5254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5254=2820 := by core033_kernel_decide
theorem rows5255 : actualRows5255=WordField.canonicalRows actualModulus 5255 (.bnot 5254) := by core033_kernel_decide
theorem stats5255 : actualRows5255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5255=6276 := by core033_kernel_decide
theorem rows5256 : actualRows5256=WordField.canonicalRows actualModulus 5256 (.band 5253 5255) := by core033_kernel_decide
theorem stats5256 : actualRows5256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5256=5124 := by core033_kernel_decide
theorem rows5257 : actualRows5257=WordField.canonicalRows actualModulus 5257 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5257 : actualRows5257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5257=2892 := by core033_kernel_decide
theorem rows5258 : actualRows5258=WordField.canonicalRows actualModulus 5258 (.bxor 616 5257) := by core033_kernel_decide
theorem stats5258 : actualRows5258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5258=7428 := by core033_kernel_decide
theorem rows5259 : actualRows5259=WordField.canonicalRows actualModulus 5259 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5259 : actualRows5259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5259=2820 := by core033_kernel_decide
theorem rows5260 : actualRows5260=WordField.canonicalRows actualModulus 5260 (.bnot 5259) := by core033_kernel_decide
theorem stats5260 : actualRows5260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5260=6276 := by core033_kernel_decide
theorem rows5261 : actualRows5261=WordField.canonicalRows actualModulus 5261 (.bxor 5258 5260) := by core033_kernel_decide
theorem stats5261 : actualRows5261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5261=7428 := by core033_kernel_decide
theorem rows5262 : actualRows5262=WordField.canonicalRows actualModulus 5262 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5262 : actualRows5262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5262=2892 := by core033_kernel_decide
theorem rows5263 : actualRows5263=WordField.canonicalRows actualModulus 5263 (.bxor 616 5262) := by core033_kernel_decide
theorem stats5263 : actualRows5263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5263=7428 := by core033_kernel_decide
theorem rows5264 : actualRows5264=WordField.canonicalRows actualModulus 5264 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5264 : actualRows5264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5264=2820 := by core033_kernel_decide
theorem rows5265 : actualRows5265=WordField.canonicalRows actualModulus 5265 (.bnot 5264) := by core033_kernel_decide
theorem stats5265 : actualRows5265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5265=6276 := by core033_kernel_decide
theorem rows5266 : actualRows5266=WordField.canonicalRows actualModulus 5266 (.badd 5263 5265) := by core033_kernel_decide
theorem stats5266 : actualRows5266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5266=5388 := by core033_kernel_decide
theorem rows5267 : actualRows5267=WordField.canonicalRows actualModulus 5267 (.bnot 5266) := by core033_kernel_decide
theorem stats5267 : actualRows5267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5267=6276 := by core033_kernel_decide
theorem rows5268 : actualRows5268=WordField.canonicalRows actualModulus 5268 (.band 5261 5267) := by core033_kernel_decide
theorem stats5268 : actualRows5268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5268=5124 := by core033_kernel_decide
theorem rows5269 : actualRows5269=WordField.canonicalRows actualModulus 5269 (.bxor 5256 5268) := by core033_kernel_decide
theorem stats5269 : actualRows5269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5269=7428 := by core033_kernel_decide
theorem rows5270 : actualRows5270=WordField.canonicalRows actualModulus 5270 (.shr 5269 31) := by core033_kernel_decide
theorem stats5270 : actualRows5270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5270=2892 := by core033_kernel_decide
theorem rows5271 : actualRows5271=WordField.canonicalRows actualModulus 5271 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5271 : actualRows5271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5271=2892 := by core033_kernel_decide
theorem rows5272 : actualRows5272=WordField.canonicalRows actualModulus 5272 (.bxor 5270 5271) := by core033_kernel_decide
theorem stats5272 : actualRows5272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5272=7428 := by core033_kernel_decide
theorem rows5273 : actualRows5273=WordField.canonicalRows actualModulus 5273 (.bnot 5272) := by core033_kernel_decide
theorem stats5273 : actualRows5273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5273=6276 := by core033_kernel_decide
theorem rows5274 : actualRows5274=WordField.canonicalRows actualModulus 5274 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5274 : actualRows5274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5274=2892 := by core033_kernel_decide
theorem rows5275 : actualRows5275=WordField.canonicalRows actualModulus 5275 (.badd 5273 5274) := by core033_kernel_decide
theorem stats5275 : actualRows5275.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5275=5388 := by core033_kernel_decide
theorem rows5276 : actualRows5276=WordField.canonicalRows actualModulus 5276 (.band 5275 2151) := by core033_kernel_decide
theorem stats5276 : actualRows5276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5276=5124 := by core033_kernel_decide
theorem rows5277 : actualRows5277=WordField.canonicalRows actualModulus 5277 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5277 : actualRows5277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5277=2892 := by core033_kernel_decide
theorem rows5278 : actualRows5278=WordField.canonicalRows actualModulus 5278 (.bxor 616 5277) := by core033_kernel_decide
theorem stats5278 : actualRows5278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5278=7428 := by core033_kernel_decide
theorem rows5279 : actualRows5279=WordField.canonicalRows actualModulus 5279 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5279 : actualRows5279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5279=2820 := by core033_kernel_decide
def partRows80 : List R1CS.Row := actualRows5216++actualRows5217++actualRows5218++actualRows5219++actualRows5220++actualRows5221++actualRows5222++actualRows5223++actualRows5224++actualRows5225++actualRows5226++actualRows5227++actualRows5228++actualRows5229++actualRows5230++actualRows5231++actualRows5232++actualRows5233++actualRows5234++actualRows5235++actualRows5236++actualRows5237++actualRows5238++actualRows5239++actualRows5240++actualRows5241++actualRows5242++actualRows5243++actualRows5244++actualRows5245++actualRows5246++actualRows5247++actualRows5248++actualRows5249++actualRows5250++actualRows5251++actualRows5252++actualRows5253++actualRows5254++actualRows5255++actualRows5256++actualRows5257++actualRows5258++actualRows5259++actualRows5260++actualRows5261++actualRows5262++actualRows5263++actualRows5264++actualRows5265++actualRows5266++actualRows5267++actualRows5268++actualRows5269++actualRows5270++actualRows5271++actualRows5272++actualRows5273++actualRows5274++actualRows5275++actualRows5276++actualRows5277++actualRows5278++actualRows5279
def partOps80 : List WordIR.Op := [.band 5209 5215,.bxor 5204 5216,.shr 5217 31,.literal (BitVec.ofNat 32 1),.bxor 5218 5219,.bnot 5220,.literal (BitVec.ofNat 32 1),.badd 5221 5222,.band 5223 2148,.literal (BitVec.ofNat 32 2),.bxor 616 5225,.literal (BitVec.ofNat 32 0),.bnot 5227,.band 5226 5228,.literal (BitVec.ofNat 32 2),.bxor 616 5230,.literal (BitVec.ofNat 32 0),.bnot 5232,.bxor 5231 5233,.literal (BitVec.ofNat 32 2),.bxor 616 5235,.literal (BitVec.ofNat 32 0),.bnot 5237,.badd 5236 5238,.bnot 5239,.band 5234 5240,.bxor 5229 5241,.shr 5242 31,.literal (BitVec.ofNat 32 1),.bxor 5243 5244,.bnot 5245,.literal (BitVec.ofNat 32 1),.badd 5246 5247,.bnot 5248,.band 5249 1956,.bxor 5224 5250,.literal (BitVec.ofNat 32 2),.bxor 616 5252,.literal (BitVec.ofNat 32 0),.bnot 5254,.band 5253 5255,.literal (BitVec.ofNat 32 2),.bxor 616 5257,.literal (BitVec.ofNat 32 0),.bnot 5259,.bxor 5258 5260,.literal (BitVec.ofNat 32 2),.bxor 616 5262,.literal (BitVec.ofNat 32 0),.bnot 5264,.badd 5263 5265,.bnot 5266,.band 5261 5267,.bxor 5256 5268,.shr 5269 31,.literal (BitVec.ofNat 32 1),.bxor 5270 5271,.bnot 5272,.literal (BitVec.ofNat 32 1),.badd 5273 5274,.band 5275 2151,.literal (BitVec.ofNat 32 2),.bxor 616 5277,.literal (BitVec.ofNat 32 0)]
theorem partExact80 : partRows80=WordField.rows actualModulus 5216 partOps80 := by
  simp only [partRows80,partOps80,WordField.rows,rows5216,rows5217,rows5218,rows5219,rows5220,rows5221,rows5222,rows5223,rows5224,rows5225,rows5226,rows5227,rows5228,rows5229,rows5230,rows5231,rows5232,rows5233,rows5234,rows5235,rows5236,rows5237,rows5238,rows5239,rows5240,rows5241,rows5242,rows5243,rows5244,rows5245,rows5246,rows5247,rows5248,rows5249,rows5250,rows5251,rows5252,rows5253,rows5254,rows5255,rows5256,rows5257,rows5258,rows5259,rows5260,rows5261,rows5262,rows5263,rows5264,rows5265,rows5266,rows5267,rows5268,rows5269,rows5270,rows5271,rows5272,rows5273,rows5274,rows5275,rows5276,rows5277,rows5278,rows5279,List.append_assoc,List.append_nil]
theorem partLength80 : partOps80.length=64 := by decide
theorem partStats80 : partRows80.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows80=328104 := by
  simp only [partRows80,List.length_append,MatrixRowBlocks.rows_weight_append,stats5216.1,stats5216.2,stats5217.1,stats5217.2,stats5218.1,stats5218.2,stats5219.1,stats5219.2,stats5220.1,stats5220.2,stats5221.1,stats5221.2,stats5222.1,stats5222.2,stats5223.1,stats5223.2,stats5224.1,stats5224.2,stats5225.1,stats5225.2,stats5226.1,stats5226.2,stats5227.1,stats5227.2,stats5228.1,stats5228.2,stats5229.1,stats5229.2,stats5230.1,stats5230.2,stats5231.1,stats5231.2,stats5232.1,stats5232.2,stats5233.1,stats5233.2,stats5234.1,stats5234.2,stats5235.1,stats5235.2,stats5236.1,stats5236.2,stats5237.1,stats5237.2,stats5238.1,stats5238.2,stats5239.1,stats5239.2,stats5240.1,stats5240.2,stats5241.1,stats5241.2,stats5242.1,stats5242.2,stats5243.1,stats5243.2,stats5244.1,stats5244.2,stats5245.1,stats5245.2,stats5246.1,stats5246.2,stats5247.1,stats5247.2,stats5248.1,stats5248.2,stats5249.1,stats5249.2,stats5250.1,stats5250.2,stats5251.1,stats5251.2,stats5252.1,stats5252.2,stats5253.1,stats5253.2,stats5254.1,stats5254.2,stats5255.1,stats5255.2,stats5256.1,stats5256.2,stats5257.1,stats5257.2,stats5258.1,stats5258.2,stats5259.1,stats5259.2,stats5260.1,stats5260.2,stats5261.1,stats5261.2,stats5262.1,stats5262.2,stats5263.1,stats5263.2,stats5264.1,stats5264.2,stats5265.1,stats5265.2,stats5266.1,stats5266.2,stats5267.1,stats5267.2,stats5268.1,stats5268.2,stats5269.1,stats5269.2,stats5270.1,stats5270.2,stats5271.1,stats5271.2,stats5272.1,stats5272.2,stats5273.1,stats5273.2,stats5274.1,stats5274.2,stats5275.1,stats5275.2,stats5276.1,stats5276.2,stats5277.1,stats5277.2,stats5278.1,stats5278.2,stats5279.1,stats5279.2]
  decide
end QuotedPairedPathRoundCheckedRows
