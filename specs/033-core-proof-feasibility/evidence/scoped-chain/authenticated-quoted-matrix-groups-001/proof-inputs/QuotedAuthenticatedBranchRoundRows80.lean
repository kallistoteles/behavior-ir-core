import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData81
import AuthenticatedBranchRoundInstructionMatrixData82
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5238 : actualRows5238=WordField.canonicalRows actualModulus 5238 (.bxor 1299 5237) := by core033_kernel_decide
theorem stats5238 : actualRows5238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5238=7428 := by core033_kernel_decide
theorem rows5239 : actualRows5239=WordField.canonicalRows actualModulus 5239 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5239 : actualRows5239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5239=2820 := by core033_kernel_decide
theorem rows5240 : actualRows5240=WordField.canonicalRows actualModulus 5240 (.bnot 5239) := by core033_kernel_decide
theorem stats5240 : actualRows5240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5240=6276 := by core033_kernel_decide
theorem rows5241 : actualRows5241=WordField.canonicalRows actualModulus 5241 (.bxor 5238 5240) := by core033_kernel_decide
theorem stats5241 : actualRows5241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5241=7428 := by core033_kernel_decide
theorem rows5242 : actualRows5242=WordField.canonicalRows actualModulus 5242 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5242 : actualRows5242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5242=2892 := by core033_kernel_decide
theorem rows5243 : actualRows5243=WordField.canonicalRows actualModulus 5243 (.bxor 1299 5242) := by core033_kernel_decide
theorem stats5243 : actualRows5243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5243=7428 := by core033_kernel_decide
theorem rows5244 : actualRows5244=WordField.canonicalRows actualModulus 5244 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5244 : actualRows5244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5244=2820 := by core033_kernel_decide
theorem rows5245 : actualRows5245=WordField.canonicalRows actualModulus 5245 (.bnot 5244) := by core033_kernel_decide
theorem stats5245 : actualRows5245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5245=6276 := by core033_kernel_decide
theorem rows5246 : actualRows5246=WordField.canonicalRows actualModulus 5246 (.badd 5243 5245) := by core033_kernel_decide
theorem stats5246 : actualRows5246.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5246=5388 := by core033_kernel_decide
theorem rows5247 : actualRows5247=WordField.canonicalRows actualModulus 5247 (.bnot 5246) := by core033_kernel_decide
theorem stats5247 : actualRows5247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5247=6276 := by core033_kernel_decide
theorem rows5248 : actualRows5248=WordField.canonicalRows actualModulus 5248 (.band 5241 5247) := by core033_kernel_decide
theorem stats5248 : actualRows5248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5248=5124 := by core033_kernel_decide
theorem rows5249 : actualRows5249=WordField.canonicalRows actualModulus 5249 (.bxor 5236 5248) := by core033_kernel_decide
theorem stats5249 : actualRows5249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5249=7428 := by core033_kernel_decide
theorem rows5250 : actualRows5250=WordField.canonicalRows actualModulus 5250 (.shr 5249 31) := by core033_kernel_decide
theorem stats5250 : actualRows5250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5250=2892 := by core033_kernel_decide
theorem rows5251 : actualRows5251=WordField.canonicalRows actualModulus 5251 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5251 : actualRows5251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5251=2892 := by core033_kernel_decide
theorem rows5252 : actualRows5252=WordField.canonicalRows actualModulus 5252 (.bxor 5250 5251) := by core033_kernel_decide
theorem stats5252 : actualRows5252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5252=7428 := by core033_kernel_decide
theorem rows5253 : actualRows5253=WordField.canonicalRows actualModulus 5253 (.bnot 5252) := by core033_kernel_decide
theorem stats5253 : actualRows5253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5253=6276 := by core033_kernel_decide
theorem rows5254 : actualRows5254=WordField.canonicalRows actualModulus 5254 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5254 : actualRows5254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5254=2892 := by core033_kernel_decide
theorem rows5255 : actualRows5255=WordField.canonicalRows actualModulus 5255 (.badd 5253 5254) := by core033_kernel_decide
theorem stats5255 : actualRows5255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5255=5388 := by core033_kernel_decide
theorem rows5256 : actualRows5256=WordField.canonicalRows actualModulus 5256 (.bnot 5255) := by core033_kernel_decide
theorem stats5256 : actualRows5256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5256=6276 := by core033_kernel_decide
theorem rows5257 : actualRows5257=WordField.canonicalRows actualModulus 5257 (.band 5256 2600) := by core033_kernel_decide
theorem stats5257 : actualRows5257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5257=5124 := by core033_kernel_decide
theorem rows5258 : actualRows5258=WordField.canonicalRows actualModulus 5258 (.bxor 5231 5257) := by core033_kernel_decide
theorem stats5258 : actualRows5258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5258=7428 := by core033_kernel_decide
theorem rows5259 : actualRows5259=WordField.canonicalRows actualModulus 5259 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5259 : actualRows5259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5259=2892 := by core033_kernel_decide
theorem rows5260 : actualRows5260=WordField.canonicalRows actualModulus 5260 (.bxor 1299 5259) := by core033_kernel_decide
theorem stats5260 : actualRows5260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5260=7428 := by core033_kernel_decide
theorem rows5261 : actualRows5261=WordField.canonicalRows actualModulus 5261 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5261 : actualRows5261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5261=2820 := by core033_kernel_decide
theorem rows5262 : actualRows5262=WordField.canonicalRows actualModulus 5262 (.bnot 5261) := by core033_kernel_decide
theorem stats5262 : actualRows5262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5262=6276 := by core033_kernel_decide
theorem rows5263 : actualRows5263=WordField.canonicalRows actualModulus 5263 (.band 5260 5262) := by core033_kernel_decide
theorem stats5263 : actualRows5263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5263=5124 := by core033_kernel_decide
theorem rows5264 : actualRows5264=WordField.canonicalRows actualModulus 5264 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5264 : actualRows5264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5264=2892 := by core033_kernel_decide
theorem rows5265 : actualRows5265=WordField.canonicalRows actualModulus 5265 (.bxor 1299 5264) := by core033_kernel_decide
theorem stats5265 : actualRows5265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5265=7428 := by core033_kernel_decide
theorem rows5266 : actualRows5266=WordField.canonicalRows actualModulus 5266 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5266 : actualRows5266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5266=2820 := by core033_kernel_decide
theorem rows5267 : actualRows5267=WordField.canonicalRows actualModulus 5267 (.bnot 5266) := by core033_kernel_decide
theorem stats5267 : actualRows5267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5267=6276 := by core033_kernel_decide
theorem rows5268 : actualRows5268=WordField.canonicalRows actualModulus 5268 (.bxor 5265 5267) := by core033_kernel_decide
theorem stats5268 : actualRows5268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5268=7428 := by core033_kernel_decide
theorem rows5269 : actualRows5269=WordField.canonicalRows actualModulus 5269 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5269 : actualRows5269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5269=2892 := by core033_kernel_decide
theorem rows5270 : actualRows5270=WordField.canonicalRows actualModulus 5270 (.bxor 1299 5269) := by core033_kernel_decide
theorem stats5270 : actualRows5270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5270=7428 := by core033_kernel_decide
theorem rows5271 : actualRows5271=WordField.canonicalRows actualModulus 5271 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5271 : actualRows5271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5271=2820 := by core033_kernel_decide
theorem rows5272 : actualRows5272=WordField.canonicalRows actualModulus 5272 (.bnot 5271) := by core033_kernel_decide
theorem stats5272 : actualRows5272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5272=6276 := by core033_kernel_decide
theorem rows5273 : actualRows5273=WordField.canonicalRows actualModulus 5273 (.badd 5270 5272) := by core033_kernel_decide
theorem stats5273 : actualRows5273.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5273=5388 := by core033_kernel_decide
theorem rows5274 : actualRows5274=WordField.canonicalRows actualModulus 5274 (.bnot 5273) := by core033_kernel_decide
theorem stats5274 : actualRows5274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5274=6276 := by core033_kernel_decide
theorem rows5275 : actualRows5275=WordField.canonicalRows actualModulus 5275 (.band 5268 5274) := by core033_kernel_decide
theorem stats5275 : actualRows5275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5275=5124 := by core033_kernel_decide
theorem rows5276 : actualRows5276=WordField.canonicalRows actualModulus 5276 (.bxor 5263 5275) := by core033_kernel_decide
theorem stats5276 : actualRows5276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5276=7428 := by core033_kernel_decide
theorem rows5277 : actualRows5277=WordField.canonicalRows actualModulus 5277 (.shr 5276 31) := by core033_kernel_decide
theorem stats5277 : actualRows5277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5277=2892 := by core033_kernel_decide
theorem rows5278 : actualRows5278=WordField.canonicalRows actualModulus 5278 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5278 : actualRows5278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5278=2892 := by core033_kernel_decide
theorem rows5279 : actualRows5279=WordField.canonicalRows actualModulus 5279 (.bxor 5277 5278) := by core033_kernel_decide
theorem stats5279 : actualRows5279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5279=7428 := by core033_kernel_decide
theorem rows5280 : actualRows5280=WordField.canonicalRows actualModulus 5280 (.bnot 5279) := by core033_kernel_decide
theorem stats5280 : actualRows5280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5280=6276 := by core033_kernel_decide
theorem rows5281 : actualRows5281=WordField.canonicalRows actualModulus 5281 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5281 : actualRows5281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5281=2892 := by core033_kernel_decide
theorem rows5282 : actualRows5282=WordField.canonicalRows actualModulus 5282 (.badd 5280 5281) := by core033_kernel_decide
theorem stats5282 : actualRows5282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5282=5388 := by core033_kernel_decide
theorem rows5283 : actualRows5283=WordField.canonicalRows actualModulus 5283 (.band 5282 2795) := by core033_kernel_decide
theorem stats5283 : actualRows5283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5283=5124 := by core033_kernel_decide
theorem rows5284 : actualRows5284=WordField.canonicalRows actualModulus 5284 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5284 : actualRows5284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5284=2892 := by core033_kernel_decide
theorem rows5285 : actualRows5285=WordField.canonicalRows actualModulus 5285 (.bxor 1299 5284) := by core033_kernel_decide
theorem stats5285 : actualRows5285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5285=7428 := by core033_kernel_decide
theorem rows5286 : actualRows5286=WordField.canonicalRows actualModulus 5286 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5286 : actualRows5286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5286=2820 := by core033_kernel_decide
theorem rows5287 : actualRows5287=WordField.canonicalRows actualModulus 5287 (.bnot 5286) := by core033_kernel_decide
theorem stats5287 : actualRows5287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5287=6276 := by core033_kernel_decide
theorem rows5288 : actualRows5288=WordField.canonicalRows actualModulus 5288 (.band 5285 5287) := by core033_kernel_decide
theorem stats5288 : actualRows5288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5288=5124 := by core033_kernel_decide
theorem rows5289 : actualRows5289=WordField.canonicalRows actualModulus 5289 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5289 : actualRows5289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5289=2892 := by core033_kernel_decide
theorem rows5290 : actualRows5290=WordField.canonicalRows actualModulus 5290 (.bxor 1299 5289) := by core033_kernel_decide
theorem stats5290 : actualRows5290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5290=7428 := by core033_kernel_decide
theorem rows5291 : actualRows5291=WordField.canonicalRows actualModulus 5291 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5291 : actualRows5291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5291=2820 := by core033_kernel_decide
theorem rows5292 : actualRows5292=WordField.canonicalRows actualModulus 5292 (.bnot 5291) := by core033_kernel_decide
theorem stats5292 : actualRows5292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5292=6276 := by core033_kernel_decide
theorem rows5293 : actualRows5293=WordField.canonicalRows actualModulus 5293 (.bxor 5290 5292) := by core033_kernel_decide
theorem stats5293 : actualRows5293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5293=7428 := by core033_kernel_decide
theorem rows5294 : actualRows5294=WordField.canonicalRows actualModulus 5294 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5294 : actualRows5294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5294=2892 := by core033_kernel_decide
theorem rows5295 : actualRows5295=WordField.canonicalRows actualModulus 5295 (.bxor 1299 5294) := by core033_kernel_decide
theorem stats5295 : actualRows5295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5295=7428 := by core033_kernel_decide
theorem rows5296 : actualRows5296=WordField.canonicalRows actualModulus 5296 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5296 : actualRows5296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5296=2820 := by core033_kernel_decide
theorem rows5297 : actualRows5297=WordField.canonicalRows actualModulus 5297 (.bnot 5296) := by core033_kernel_decide
theorem stats5297 : actualRows5297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5297=6276 := by core033_kernel_decide
theorem rows5298 : actualRows5298=WordField.canonicalRows actualModulus 5298 (.badd 5295 5297) := by core033_kernel_decide
theorem stats5298 : actualRows5298.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5298=5388 := by core033_kernel_decide
theorem rows5299 : actualRows5299=WordField.canonicalRows actualModulus 5299 (.bnot 5298) := by core033_kernel_decide
theorem stats5299 : actualRows5299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5299=6276 := by core033_kernel_decide
theorem rows5300 : actualRows5300=WordField.canonicalRows actualModulus 5300 (.band 5293 5299) := by core033_kernel_decide
theorem stats5300 : actualRows5300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5300=5124 := by core033_kernel_decide
theorem rows5301 : actualRows5301=WordField.canonicalRows actualModulus 5301 (.bxor 5288 5300) := by core033_kernel_decide
theorem stats5301 : actualRows5301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5301=7428 := by core033_kernel_decide
def partRows80 : List R1CS.Row := actualRows5238++actualRows5239++actualRows5240++actualRows5241++actualRows5242++actualRows5243++actualRows5244++actualRows5245++actualRows5246++actualRows5247++actualRows5248++actualRows5249++actualRows5250++actualRows5251++actualRows5252++actualRows5253++actualRows5254++actualRows5255++actualRows5256++actualRows5257++actualRows5258++actualRows5259++actualRows5260++actualRows5261++actualRows5262++actualRows5263++actualRows5264++actualRows5265++actualRows5266++actualRows5267++actualRows5268++actualRows5269++actualRows5270++actualRows5271++actualRows5272++actualRows5273++actualRows5274++actualRows5275++actualRows5276++actualRows5277++actualRows5278++actualRows5279++actualRows5280++actualRows5281++actualRows5282++actualRows5283++actualRows5284++actualRows5285++actualRows5286++actualRows5287++actualRows5288++actualRows5289++actualRows5290++actualRows5291++actualRows5292++actualRows5293++actualRows5294++actualRows5295++actualRows5296++actualRows5297++actualRows5298++actualRows5299++actualRows5300++actualRows5301
def partOps80 : List WordIR.Op := [.bxor 1299 5237,.literal (BitVec.ofNat 32 0),.bnot 5239,.bxor 5238 5240,.literal (BitVec.ofNat 32 2),.bxor 1299 5242,.literal (BitVec.ofNat 32 0),.bnot 5244,.badd 5243 5245,.bnot 5246,.band 5241 5247,.bxor 5236 5248,.shr 5249 31,.literal (BitVec.ofNat 32 1),.bxor 5250 5251,.bnot 5252,.literal (BitVec.ofNat 32 1),.badd 5253 5254,.bnot 5255,.band 5256 2600,.bxor 5231 5257,.literal (BitVec.ofNat 32 2),.bxor 1299 5259,.literal (BitVec.ofNat 32 0),.bnot 5261,.band 5260 5262,.literal (BitVec.ofNat 32 2),.bxor 1299 5264,.literal (BitVec.ofNat 32 0),.bnot 5266,.bxor 5265 5267,.literal (BitVec.ofNat 32 2),.bxor 1299 5269,.literal (BitVec.ofNat 32 0),.bnot 5271,.badd 5270 5272,.bnot 5273,.band 5268 5274,.bxor 5263 5275,.shr 5276 31,.literal (BitVec.ofNat 32 1),.bxor 5277 5278,.bnot 5279,.literal (BitVec.ofNat 32 1),.badd 5280 5281,.band 5282 2795,.literal (BitVec.ofNat 32 2),.bxor 1299 5284,.literal (BitVec.ofNat 32 0),.bnot 5286,.band 5285 5287,.literal (BitVec.ofNat 32 2),.bxor 1299 5289,.literal (BitVec.ofNat 32 0),.bnot 5291,.bxor 5290 5292,.literal (BitVec.ofNat 32 2),.bxor 1299 5294,.literal (BitVec.ofNat 32 0),.bnot 5296,.badd 5295 5297,.bnot 5298,.band 5293 5299,.bxor 5288 5300]
theorem partExact80 : partRows80=WordField.rows actualModulus 5238 partOps80 := by
  simp only [partRows80,partOps80,WordField.rows,rows5238,rows5239,rows5240,rows5241,rows5242,rows5243,rows5244,rows5245,rows5246,rows5247,rows5248,rows5249,rows5250,rows5251,rows5252,rows5253,rows5254,rows5255,rows5256,rows5257,rows5258,rows5259,rows5260,rows5261,rows5262,rows5263,rows5264,rows5265,rows5266,rows5267,rows5268,rows5269,rows5270,rows5271,rows5272,rows5273,rows5274,rows5275,rows5276,rows5277,rows5278,rows5279,rows5280,rows5281,rows5282,rows5283,rows5284,rows5285,rows5286,rows5287,rows5288,rows5289,rows5290,rows5291,rows5292,rows5293,rows5294,rows5295,rows5296,rows5297,rows5298,rows5299,rows5300,rows5301,List.append_assoc,List.append_nil]
theorem partLength80 : partOps80.length=64 := by decide
theorem partStats80 : partRows80.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows80=337104 := by
  simp only [partRows80,List.length_append,MatrixRowBlocks.rows_weight_append,stats5238.1,stats5238.2,stats5239.1,stats5239.2,stats5240.1,stats5240.2,stats5241.1,stats5241.2,stats5242.1,stats5242.2,stats5243.1,stats5243.2,stats5244.1,stats5244.2,stats5245.1,stats5245.2,stats5246.1,stats5246.2,stats5247.1,stats5247.2,stats5248.1,stats5248.2,stats5249.1,stats5249.2,stats5250.1,stats5250.2,stats5251.1,stats5251.2,stats5252.1,stats5252.2,stats5253.1,stats5253.2,stats5254.1,stats5254.2,stats5255.1,stats5255.2,stats5256.1,stats5256.2,stats5257.1,stats5257.2,stats5258.1,stats5258.2,stats5259.1,stats5259.2,stats5260.1,stats5260.2,stats5261.1,stats5261.2,stats5262.1,stats5262.2,stats5263.1,stats5263.2,stats5264.1,stats5264.2,stats5265.1,stats5265.2,stats5266.1,stats5266.2,stats5267.1,stats5267.2,stats5268.1,stats5268.2,stats5269.1,stats5269.2,stats5270.1,stats5270.2,stats5271.1,stats5271.2,stats5272.1,stats5272.2,stats5273.1,stats5273.2,stats5274.1,stats5274.2,stats5275.1,stats5275.2,stats5276.1,stats5276.2,stats5277.1,stats5277.2,stats5278.1,stats5278.2,stats5279.1,stats5279.2,stats5280.1,stats5280.2,stats5281.1,stats5281.2,stats5282.1,stats5282.2,stats5283.1,stats5283.2,stats5284.1,stats5284.2,stats5285.1,stats5285.2,stats5286.1,stats5286.2,stats5287.1,stats5287.2,stats5288.1,stats5288.2,stats5289.1,stats5289.2,stats5290.1,stats5290.2,stats5291.1,stats5291.2,stats5292.1,stats5292.2,stats5293.1,stats5293.2,stats5294.1,stats5294.2,stats5295.1,stats5295.2,stats5296.1,stats5296.2,stats5297.1,stats5297.2,stats5298.1,stats5298.2,stats5299.1,stats5299.2,stats5300.1,stats5300.2,stats5301.1,stats5301.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
