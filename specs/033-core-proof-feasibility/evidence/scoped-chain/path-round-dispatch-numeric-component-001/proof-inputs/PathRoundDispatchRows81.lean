import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData81
import PathRoundDispatchInstructionMatrixData82
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5227 : actualRows5227=WordField.canonicalRows actualModulus 5227 (.badd 5225 5226) := by core033_kernel_decide
theorem stats5227 : actualRows5227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5227=5388 := by core033_kernel_decide
theorem rows5228 : actualRows5228=WordField.canonicalRows actualModulus 5228 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5228 : actualRows5228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5228=2820 := by core033_kernel_decide
theorem rows5229 : actualRows5229=WordField.canonicalRows actualModulus 5229 (.band 5227 5228) := by core033_kernel_decide
theorem stats5229 : actualRows5229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5229=5124 := by core033_kernel_decide
theorem rows5230 : actualRows5230=WordField.canonicalRows actualModulus 5230 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5230 : actualRows5230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5230=2892 := by core033_kernel_decide
theorem rows5231 : actualRows5231=WordField.canonicalRows actualModulus 5231 (.bxor 96 5230) := by core033_kernel_decide
theorem stats5231 : actualRows5231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5231=7428 := by core033_kernel_decide
theorem rows5232 : actualRows5232=WordField.canonicalRows actualModulus 5232 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5232 : actualRows5232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5232=2820 := by core033_kernel_decide
theorem rows5233 : actualRows5233=WordField.canonicalRows actualModulus 5233 (.bnot 5232) := by core033_kernel_decide
theorem stats5233 : actualRows5233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5233=6276 := by core033_kernel_decide
theorem rows5234 : actualRows5234=WordField.canonicalRows actualModulus 5234 (.band 5231 5233) := by core033_kernel_decide
theorem stats5234 : actualRows5234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5234=5124 := by core033_kernel_decide
theorem rows5235 : actualRows5235=WordField.canonicalRows actualModulus 5235 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5235 : actualRows5235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5235=2892 := by core033_kernel_decide
theorem rows5236 : actualRows5236=WordField.canonicalRows actualModulus 5236 (.bxor 96 5235) := by core033_kernel_decide
theorem stats5236 : actualRows5236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5236=7428 := by core033_kernel_decide
theorem rows5237 : actualRows5237=WordField.canonicalRows actualModulus 5237 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5237 : actualRows5237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5237=2820 := by core033_kernel_decide
theorem rows5238 : actualRows5238=WordField.canonicalRows actualModulus 5238 (.bnot 5237) := by core033_kernel_decide
theorem stats5238 : actualRows5238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5238=6276 := by core033_kernel_decide
theorem rows5239 : actualRows5239=WordField.canonicalRows actualModulus 5239 (.bxor 5236 5238) := by core033_kernel_decide
theorem stats5239 : actualRows5239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5239=7428 := by core033_kernel_decide
theorem rows5240 : actualRows5240=WordField.canonicalRows actualModulus 5240 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5240 : actualRows5240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5240=2892 := by core033_kernel_decide
theorem rows5241 : actualRows5241=WordField.canonicalRows actualModulus 5241 (.bxor 96 5240) := by core033_kernel_decide
theorem stats5241 : actualRows5241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5241=7428 := by core033_kernel_decide
theorem rows5242 : actualRows5242=WordField.canonicalRows actualModulus 5242 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5242 : actualRows5242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5242=2820 := by core033_kernel_decide
theorem rows5243 : actualRows5243=WordField.canonicalRows actualModulus 5243 (.bnot 5242) := by core033_kernel_decide
theorem stats5243 : actualRows5243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5243=6276 := by core033_kernel_decide
theorem rows5244 : actualRows5244=WordField.canonicalRows actualModulus 5244 (.badd 5241 5243) := by core033_kernel_decide
theorem stats5244 : actualRows5244.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5244=5388 := by core033_kernel_decide
theorem rows5245 : actualRows5245=WordField.canonicalRows actualModulus 5245 (.bnot 5244) := by core033_kernel_decide
theorem stats5245 : actualRows5245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5245=6276 := by core033_kernel_decide
theorem rows5246 : actualRows5246=WordField.canonicalRows actualModulus 5246 (.band 5239 5245) := by core033_kernel_decide
theorem stats5246 : actualRows5246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5246=5124 := by core033_kernel_decide
theorem rows5247 : actualRows5247=WordField.canonicalRows actualModulus 5247 (.bxor 5234 5246) := by core033_kernel_decide
theorem stats5247 : actualRows5247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5247=7428 := by core033_kernel_decide
theorem rows5248 : actualRows5248=WordField.canonicalRows actualModulus 5248 (.shr 5247 31) := by core033_kernel_decide
theorem stats5248 : actualRows5248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5248=2892 := by core033_kernel_decide
theorem rows5249 : actualRows5249=WordField.canonicalRows actualModulus 5249 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5249 : actualRows5249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5249=2892 := by core033_kernel_decide
theorem rows5250 : actualRows5250=WordField.canonicalRows actualModulus 5250 (.bxor 5248 5249) := by core033_kernel_decide
theorem stats5250 : actualRows5250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5250=7428 := by core033_kernel_decide
theorem rows5251 : actualRows5251=WordField.canonicalRows actualModulus 5251 (.bnot 5250) := by core033_kernel_decide
theorem stats5251 : actualRows5251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5251=6276 := by core033_kernel_decide
theorem rows5252 : actualRows5252=WordField.canonicalRows actualModulus 5252 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5252 : actualRows5252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5252=2892 := by core033_kernel_decide
theorem rows5253 : actualRows5253=WordField.canonicalRows actualModulus 5253 (.badd 5251 5252) := by core033_kernel_decide
theorem stats5253 : actualRows5253.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5253=5388 := by core033_kernel_decide
theorem rows5254 : actualRows5254=WordField.canonicalRows actualModulus 5254 (.bnot 5253) := by core033_kernel_decide
theorem stats5254 : actualRows5254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5254=6276 := by core033_kernel_decide
theorem rows5255 : actualRows5255=WordField.canonicalRows actualModulus 5255 (.band 5254 1466) := by core033_kernel_decide
theorem stats5255 : actualRows5255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5255=5124 := by core033_kernel_decide
theorem rows5256 : actualRows5256=WordField.canonicalRows actualModulus 5256 (.bxor 5229 5255) := by core033_kernel_decide
theorem stats5256 : actualRows5256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5256=7428 := by core033_kernel_decide
theorem rows5257 : actualRows5257=WordField.canonicalRows actualModulus 5257 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5257 : actualRows5257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5257=2892 := by core033_kernel_decide
theorem rows5258 : actualRows5258=WordField.canonicalRows actualModulus 5258 (.bxor 96 5257) := by core033_kernel_decide
theorem stats5258 : actualRows5258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5258=7428 := by core033_kernel_decide
theorem rows5259 : actualRows5259=WordField.canonicalRows actualModulus 5259 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5259 : actualRows5259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5259=2820 := by core033_kernel_decide
theorem rows5260 : actualRows5260=WordField.canonicalRows actualModulus 5260 (.bnot 5259) := by core033_kernel_decide
theorem stats5260 : actualRows5260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5260=6276 := by core033_kernel_decide
theorem rows5261 : actualRows5261=WordField.canonicalRows actualModulus 5261 (.band 5258 5260) := by core033_kernel_decide
theorem stats5261 : actualRows5261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5261=5124 := by core033_kernel_decide
theorem rows5262 : actualRows5262=WordField.canonicalRows actualModulus 5262 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5262 : actualRows5262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5262=2892 := by core033_kernel_decide
theorem rows5263 : actualRows5263=WordField.canonicalRows actualModulus 5263 (.bxor 96 5262) := by core033_kernel_decide
theorem stats5263 : actualRows5263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5263=7428 := by core033_kernel_decide
theorem rows5264 : actualRows5264=WordField.canonicalRows actualModulus 5264 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5264 : actualRows5264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5264=2820 := by core033_kernel_decide
theorem rows5265 : actualRows5265=WordField.canonicalRows actualModulus 5265 (.bnot 5264) := by core033_kernel_decide
theorem stats5265 : actualRows5265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5265=6276 := by core033_kernel_decide
theorem rows5266 : actualRows5266=WordField.canonicalRows actualModulus 5266 (.bxor 5263 5265) := by core033_kernel_decide
theorem stats5266 : actualRows5266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5266=7428 := by core033_kernel_decide
theorem rows5267 : actualRows5267=WordField.canonicalRows actualModulus 5267 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5267 : actualRows5267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5267=2892 := by core033_kernel_decide
theorem rows5268 : actualRows5268=WordField.canonicalRows actualModulus 5268 (.bxor 96 5267) := by core033_kernel_decide
theorem stats5268 : actualRows5268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5268=7428 := by core033_kernel_decide
theorem rows5269 : actualRows5269=WordField.canonicalRows actualModulus 5269 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5269 : actualRows5269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5269=2820 := by core033_kernel_decide
theorem rows5270 : actualRows5270=WordField.canonicalRows actualModulus 5270 (.bnot 5269) := by core033_kernel_decide
theorem stats5270 : actualRows5270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5270=6276 := by core033_kernel_decide
theorem rows5271 : actualRows5271=WordField.canonicalRows actualModulus 5271 (.badd 5268 5270) := by core033_kernel_decide
theorem stats5271 : actualRows5271.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5271=5388 := by core033_kernel_decide
theorem rows5272 : actualRows5272=WordField.canonicalRows actualModulus 5272 (.bnot 5271) := by core033_kernel_decide
theorem stats5272 : actualRows5272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5272=6276 := by core033_kernel_decide
theorem rows5273 : actualRows5273=WordField.canonicalRows actualModulus 5273 (.band 5266 5272) := by core033_kernel_decide
theorem stats5273 : actualRows5273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5273=5124 := by core033_kernel_decide
theorem rows5274 : actualRows5274=WordField.canonicalRows actualModulus 5274 (.bxor 5261 5273) := by core033_kernel_decide
theorem stats5274 : actualRows5274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5274=7428 := by core033_kernel_decide
theorem rows5275 : actualRows5275=WordField.canonicalRows actualModulus 5275 (.shr 5274 31) := by core033_kernel_decide
theorem stats5275 : actualRows5275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5275=2892 := by core033_kernel_decide
theorem rows5276 : actualRows5276=WordField.canonicalRows actualModulus 5276 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5276 : actualRows5276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5276=2892 := by core033_kernel_decide
theorem rows5277 : actualRows5277=WordField.canonicalRows actualModulus 5277 (.bxor 5275 5276) := by core033_kernel_decide
theorem stats5277 : actualRows5277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5277=7428 := by core033_kernel_decide
theorem rows5278 : actualRows5278=WordField.canonicalRows actualModulus 5278 (.bnot 5277) := by core033_kernel_decide
theorem stats5278 : actualRows5278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5278=6276 := by core033_kernel_decide
theorem rows5279 : actualRows5279=WordField.canonicalRows actualModulus 5279 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5279 : actualRows5279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5279=2892 := by core033_kernel_decide
theorem rows5280 : actualRows5280=WordField.canonicalRows actualModulus 5280 (.badd 5278 5279) := by core033_kernel_decide
theorem stats5280 : actualRows5280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5280=5388 := by core033_kernel_decide
theorem rows5281 : actualRows5281=WordField.canonicalRows actualModulus 5281 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5281 : actualRows5281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5281=2820 := by core033_kernel_decide
theorem rows5282 : actualRows5282=WordField.canonicalRows actualModulus 5282 (.band 5280 5281) := by core033_kernel_decide
theorem stats5282 : actualRows5282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5282=5124 := by core033_kernel_decide
theorem rows5283 : actualRows5283=WordField.canonicalRows actualModulus 5283 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5283 : actualRows5283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5283=2892 := by core033_kernel_decide
theorem rows5284 : actualRows5284=WordField.canonicalRows actualModulus 5284 (.bxor 96 5283) := by core033_kernel_decide
theorem stats5284 : actualRows5284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5284=7428 := by core033_kernel_decide
theorem rows5285 : actualRows5285=WordField.canonicalRows actualModulus 5285 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5285 : actualRows5285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5285=2820 := by core033_kernel_decide
theorem rows5286 : actualRows5286=WordField.canonicalRows actualModulus 5286 (.bnot 5285) := by core033_kernel_decide
theorem stats5286 : actualRows5286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5286=6276 := by core033_kernel_decide
theorem rows5287 : actualRows5287=WordField.canonicalRows actualModulus 5287 (.band 5284 5286) := by core033_kernel_decide
theorem stats5287 : actualRows5287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5287=5124 := by core033_kernel_decide
theorem rows5288 : actualRows5288=WordField.canonicalRows actualModulus 5288 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5288 : actualRows5288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5288=2892 := by core033_kernel_decide
theorem rows5289 : actualRows5289=WordField.canonicalRows actualModulus 5289 (.bxor 96 5288) := by core033_kernel_decide
theorem stats5289 : actualRows5289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5289=7428 := by core033_kernel_decide
theorem rows5290 : actualRows5290=WordField.canonicalRows actualModulus 5290 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5290 : actualRows5290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5290=2820 := by core033_kernel_decide
def partRows81 : List R1CS.Row := actualRows5227++actualRows5228++actualRows5229++actualRows5230++actualRows5231++actualRows5232++actualRows5233++actualRows5234++actualRows5235++actualRows5236++actualRows5237++actualRows5238++actualRows5239++actualRows5240++actualRows5241++actualRows5242++actualRows5243++actualRows5244++actualRows5245++actualRows5246++actualRows5247++actualRows5248++actualRows5249++actualRows5250++actualRows5251++actualRows5252++actualRows5253++actualRows5254++actualRows5255++actualRows5256++actualRows5257++actualRows5258++actualRows5259++actualRows5260++actualRows5261++actualRows5262++actualRows5263++actualRows5264++actualRows5265++actualRows5266++actualRows5267++actualRows5268++actualRows5269++actualRows5270++actualRows5271++actualRows5272++actualRows5273++actualRows5274++actualRows5275++actualRows5276++actualRows5277++actualRows5278++actualRows5279++actualRows5280++actualRows5281++actualRows5282++actualRows5283++actualRows5284++actualRows5285++actualRows5286++actualRows5287++actualRows5288++actualRows5289++actualRows5290
def partOps81 : List WordIR.Op := [.badd 5225 5226,.literal (BitVec.ofNat 32 0),.band 5227 5228,.literal (BitVec.ofNat 32 2),.bxor 96 5230,.literal (BitVec.ofNat 32 0),.bnot 5232,.band 5231 5233,.literal (BitVec.ofNat 32 2),.bxor 96 5235,.literal (BitVec.ofNat 32 0),.bnot 5237,.bxor 5236 5238,.literal (BitVec.ofNat 32 2),.bxor 96 5240,.literal (BitVec.ofNat 32 0),.bnot 5242,.badd 5241 5243,.bnot 5244,.band 5239 5245,.bxor 5234 5246,.shr 5247 31,.literal (BitVec.ofNat 32 1),.bxor 5248 5249,.bnot 5250,.literal (BitVec.ofNat 32 1),.badd 5251 5252,.bnot 5253,.band 5254 1466,.bxor 5229 5255,.literal (BitVec.ofNat 32 2),.bxor 96 5257,.literal (BitVec.ofNat 32 0),.bnot 5259,.band 5258 5260,.literal (BitVec.ofNat 32 2),.bxor 96 5262,.literal (BitVec.ofNat 32 0),.bnot 5264,.bxor 5263 5265,.literal (BitVec.ofNat 32 2),.bxor 96 5267,.literal (BitVec.ofNat 32 0),.bnot 5269,.badd 5268 5270,.bnot 5271,.band 5266 5272,.bxor 5261 5273,.shr 5274 31,.literal (BitVec.ofNat 32 1),.bxor 5275 5276,.bnot 5277,.literal (BitVec.ofNat 32 1),.badd 5278 5279,.literal (BitVec.ofNat 32 0),.band 5280 5281,.literal (BitVec.ofNat 32 2),.bxor 96 5283,.literal (BitVec.ofNat 32 0),.bnot 5285,.band 5284 5286,.literal (BitVec.ofNat 32 2),.bxor 96 5288,.literal (BitVec.ofNat 32 0)]
theorem partExact81 : partRows81=WordField.rows actualModulus 5227 partOps81 := by
  simp only [partRows81,partOps81,WordField.rows,rows5227,rows5228,rows5229,rows5230,rows5231,rows5232,rows5233,rows5234,rows5235,rows5236,rows5237,rows5238,rows5239,rows5240,rows5241,rows5242,rows5243,rows5244,rows5245,rows5246,rows5247,rows5248,rows5249,rows5250,rows5251,rows5252,rows5253,rows5254,rows5255,rows5256,rows5257,rows5258,rows5259,rows5260,rows5261,rows5262,rows5263,rows5264,rows5265,rows5266,rows5267,rows5268,rows5269,rows5270,rows5271,rows5272,rows5273,rows5274,rows5275,rows5276,rows5277,rows5278,rows5279,rows5280,rows5281,rows5282,rows5283,rows5284,rows5285,rows5286,rows5287,rows5288,rows5289,rows5290,List.append_assoc,List.append_nil]
theorem partLength81 : partOps81.length=64 := by decide
theorem partStats81 : partRows81.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows81=323352 := by
  simp only [partRows81,List.length_append,MatrixRowBlocks.rows_weight_append,stats5227.1,stats5227.2,stats5228.1,stats5228.2,stats5229.1,stats5229.2,stats5230.1,stats5230.2,stats5231.1,stats5231.2,stats5232.1,stats5232.2,stats5233.1,stats5233.2,stats5234.1,stats5234.2,stats5235.1,stats5235.2,stats5236.1,stats5236.2,stats5237.1,stats5237.2,stats5238.1,stats5238.2,stats5239.1,stats5239.2,stats5240.1,stats5240.2,stats5241.1,stats5241.2,stats5242.1,stats5242.2,stats5243.1,stats5243.2,stats5244.1,stats5244.2,stats5245.1,stats5245.2,stats5246.1,stats5246.2,stats5247.1,stats5247.2,stats5248.1,stats5248.2,stats5249.1,stats5249.2,stats5250.1,stats5250.2,stats5251.1,stats5251.2,stats5252.1,stats5252.2,stats5253.1,stats5253.2,stats5254.1,stats5254.2,stats5255.1,stats5255.2,stats5256.1,stats5256.2,stats5257.1,stats5257.2,stats5258.1,stats5258.2,stats5259.1,stats5259.2,stats5260.1,stats5260.2,stats5261.1,stats5261.2,stats5262.1,stats5262.2,stats5263.1,stats5263.2,stats5264.1,stats5264.2,stats5265.1,stats5265.2,stats5266.1,stats5266.2,stats5267.1,stats5267.2,stats5268.1,stats5268.2,stats5269.1,stats5269.2,stats5270.1,stats5270.2,stats5271.1,stats5271.2,stats5272.1,stats5272.2,stats5273.1,stats5273.2,stats5274.1,stats5274.2,stats5275.1,stats5275.2,stats5276.1,stats5276.2,stats5277.1,stats5277.2,stats5278.1,stats5278.2,stats5279.1,stats5279.2,stats5280.1,stats5280.2,stats5281.1,stats5281.2,stats5282.1,stats5282.2,stats5283.1,stats5283.2,stats5284.1,stats5284.2,stats5285.1,stats5285.2,stats5286.1,stats5286.2,stats5287.1,stats5287.2,stats5288.1,stats5288.2,stats5289.1,stats5289.2,stats5290.1,stats5290.2]
  decide
end PathRoundDispatchCheckedRows
