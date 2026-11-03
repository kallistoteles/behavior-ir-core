import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData81
import FrameHashControllerInstructionMatrixData82
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5227 : actualRows5227=WordField.canonicalRows actualModulus 5227 (.badd 5225 5226) := by core033_kernel_decide
theorem stats5227 : actualRows5227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5227=5388 := by core033_kernel_decide
theorem rows5228 : actualRows5228=WordField.canonicalRows actualModulus 5228 (.rotr 4059 24) := by core033_kernel_decide
theorem stats5228 : actualRows5228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5228=5124 := by core033_kernel_decide
theorem rows5229 : actualRows5229=WordField.canonicalRows actualModulus 5229 (.badd 5227 5228) := by core033_kernel_decide
theorem stats5229 : actualRows5229.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5229=5388 := by core033_kernel_decide
theorem rows5230 : actualRows5230=WordField.canonicalRows actualModulus 5230 (.badd 5229 4111) := by core033_kernel_decide
theorem stats5230 : actualRows5230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5230=5388 := by core033_kernel_decide
theorem rows5231 : actualRows5231=WordField.canonicalRows actualModulus 5231 (.rotr 4163 8) := by core033_kernel_decide
theorem stats5231 : actualRows5231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5231=5124 := by core033_kernel_decide
theorem rows5232 : actualRows5232=WordField.canonicalRows actualModulus 5232 (.rotr 4215 16) := by core033_kernel_decide
theorem stats5232 : actualRows5232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5232=5124 := by core033_kernel_decide
theorem rows5233 : actualRows5233=WordField.canonicalRows actualModulus 5233 (.badd 5231 5232) := by core033_kernel_decide
theorem stats5233 : actualRows5233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5233=5388 := by core033_kernel_decide
theorem rows5234 : actualRows5234=WordField.canonicalRows actualModulus 5234 (.rotr 4267 24) := by core033_kernel_decide
theorem stats5234 : actualRows5234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5234=5124 := by core033_kernel_decide
theorem rows5235 : actualRows5235=WordField.canonicalRows actualModulus 5235 (.badd 5233 5234) := by core033_kernel_decide
theorem stats5235 : actualRows5235.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5235=5388 := by core033_kernel_decide
theorem rows5236 : actualRows5236=WordField.canonicalRows actualModulus 5236 (.badd 5235 4319) := by core033_kernel_decide
theorem stats5236 : actualRows5236.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5236=5388 := by core033_kernel_decide
theorem rows5237 : actualRows5237=WordField.canonicalRows actualModulus 5237 (.rotr 4371 8) := by core033_kernel_decide
theorem stats5237 : actualRows5237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5237=5124 := by core033_kernel_decide
theorem rows5238 : actualRows5238=WordField.canonicalRows actualModulus 5238 (.rotr 4423 16) := by core033_kernel_decide
theorem stats5238 : actualRows5238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5238=5124 := by core033_kernel_decide
theorem rows5239 : actualRows5239=WordField.canonicalRows actualModulus 5239 (.badd 5237 5238) := by core033_kernel_decide
theorem stats5239 : actualRows5239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5239=5388 := by core033_kernel_decide
theorem rows5240 : actualRows5240=WordField.canonicalRows actualModulus 5240 (.rotr 4475 24) := by core033_kernel_decide
theorem stats5240 : actualRows5240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5240=5124 := by core033_kernel_decide
theorem rows5241 : actualRows5241=WordField.canonicalRows actualModulus 5241 (.badd 5239 5240) := by core033_kernel_decide
theorem stats5241 : actualRows5241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5241=5388 := by core033_kernel_decide
theorem rows5242 : actualRows5242=WordField.canonicalRows actualModulus 5242 (.badd 5241 4528) := by core033_kernel_decide
theorem stats5242 : actualRows5242.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5242=5388 := by core033_kernel_decide
theorem rows5243 : actualRows5243=WordField.canonicalRows actualModulus 5243 (.rotr 4581 8) := by core033_kernel_decide
theorem stats5243 : actualRows5243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5243=5124 := by core033_kernel_decide
theorem rows5244 : actualRows5244=WordField.canonicalRows actualModulus 5244 (.rotr 4634 16) := by core033_kernel_decide
theorem stats5244 : actualRows5244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5244=5124 := by core033_kernel_decide
theorem rows5245 : actualRows5245=WordField.canonicalRows actualModulus 5245 (.badd 5243 5244) := by core033_kernel_decide
theorem stats5245 : actualRows5245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5245=5388 := by core033_kernel_decide
theorem rows5246 : actualRows5246=WordField.canonicalRows actualModulus 5246 (.rotr 4687 24) := by core033_kernel_decide
theorem stats5246 : actualRows5246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5246=5124 := by core033_kernel_decide
theorem rows5247 : actualRows5247=WordField.canonicalRows actualModulus 5247 (.badd 5245 5246) := by core033_kernel_decide
theorem stats5247 : actualRows5247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5247=5388 := by core033_kernel_decide
theorem rows5248 : actualRows5248=WordField.canonicalRows actualModulus 5248 (.badd 5247 4740) := by core033_kernel_decide
theorem stats5248 : actualRows5248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5248=5388 := by core033_kernel_decide
theorem rows5249 : actualRows5249=WordField.canonicalRows actualModulus 5249 (.rotr 4793 8) := by core033_kernel_decide
theorem stats5249 : actualRows5249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5249=5124 := by core033_kernel_decide
theorem rows5250 : actualRows5250=WordField.canonicalRows actualModulus 5250 (.rotr 4846 16) := by core033_kernel_decide
theorem stats5250 : actualRows5250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5250=5124 := by core033_kernel_decide
theorem rows5251 : actualRows5251=WordField.canonicalRows actualModulus 5251 (.badd 5249 5250) := by core033_kernel_decide
theorem stats5251 : actualRows5251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5251=5388 := by core033_kernel_decide
theorem rows5252 : actualRows5252=WordField.canonicalRows actualModulus 5252 (.rotr 4899 24) := by core033_kernel_decide
theorem stats5252 : actualRows5252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5252=5124 := by core033_kernel_decide
theorem rows5253 : actualRows5253=WordField.canonicalRows actualModulus 5253 (.badd 5251 5252) := by core033_kernel_decide
theorem stats5253 : actualRows5253.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5253=5388 := by core033_kernel_decide
theorem rows5254 : actualRows5254=WordField.canonicalRows actualModulus 5254 (.badd 5253 4952) := by core033_kernel_decide
theorem stats5254 : actualRows5254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5254=5388 := by core033_kernel_decide
theorem rows5255 : actualRows5255=WordField.canonicalRows actualModulus 5255 (.rotr 5005 8) := by core033_kernel_decide
theorem stats5255 : actualRows5255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5255=5124 := by core033_kernel_decide
theorem rows5256 : actualRows5256=WordField.canonicalRows actualModulus 5256 (.rotr 5058 16) := by core033_kernel_decide
theorem stats5256 : actualRows5256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5256=5124 := by core033_kernel_decide
theorem rows5257 : actualRows5257=WordField.canonicalRows actualModulus 5257 (.badd 5255 5256) := by core033_kernel_decide
theorem stats5257 : actualRows5257.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5257=5388 := by core033_kernel_decide
theorem rows5258 : actualRows5258=WordField.canonicalRows actualModulus 5258 (.rotr 5111 24) := by core033_kernel_decide
theorem stats5258 : actualRows5258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5258=5124 := by core033_kernel_decide
theorem rows5259 : actualRows5259=WordField.canonicalRows actualModulus 5259 (.badd 5257 5258) := by core033_kernel_decide
theorem stats5259 : actualRows5259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5259=5388 := by core033_kernel_decide
theorem rows5260 : actualRows5260=WordField.canonicalRows actualModulus 5260 (.badd 5259 5164) := by core033_kernel_decide
theorem stats5260 : actualRows5260.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5260=5388 := by core033_kernel_decide
theorem rows5261 : actualRows5261=WordField.canonicalRows actualModulus 5261 (.shr 1875 8) := by core033_kernel_decide
theorem stats5261 : actualRows5261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5261=4548 := by core033_kernel_decide
theorem rows5262 : actualRows5262=WordField.canonicalRows actualModulus 5262 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5262 : actualRows5262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5262=2820 := by core033_kernel_decide
theorem rows5263 : actualRows5263=WordField.canonicalRows actualModulus 5263 (.bnot 5262) := by core033_kernel_decide
theorem stats5263 : actualRows5263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5263=6276 := by core033_kernel_decide
theorem rows5264 : actualRows5264=WordField.canonicalRows actualModulus 5264 (.band 5261 5263) := by core033_kernel_decide
theorem stats5264 : actualRows5264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5264=5124 := by core033_kernel_decide
theorem rows5265 : actualRows5265=WordField.canonicalRows actualModulus 5265 (.shr 1875 8) := by core033_kernel_decide
theorem stats5265 : actualRows5265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5265=4548 := by core033_kernel_decide
theorem rows5266 : actualRows5266=WordField.canonicalRows actualModulus 5266 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5266 : actualRows5266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5266=2820 := by core033_kernel_decide
theorem rows5267 : actualRows5267=WordField.canonicalRows actualModulus 5267 (.bnot 5266) := by core033_kernel_decide
theorem stats5267 : actualRows5267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5267=6276 := by core033_kernel_decide
theorem rows5268 : actualRows5268=WordField.canonicalRows actualModulus 5268 (.bxor 5265 5267) := by core033_kernel_decide
theorem stats5268 : actualRows5268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5268=7428 := by core033_kernel_decide
theorem rows5269 : actualRows5269=WordField.canonicalRows actualModulus 5269 (.shr 1875 8) := by core033_kernel_decide
theorem stats5269 : actualRows5269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5269=4548 := by core033_kernel_decide
theorem rows5270 : actualRows5270=WordField.canonicalRows actualModulus 5270 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5270 : actualRows5270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5270=2820 := by core033_kernel_decide
theorem rows5271 : actualRows5271=WordField.canonicalRows actualModulus 5271 (.bnot 5270) := by core033_kernel_decide
theorem stats5271 : actualRows5271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5271=6276 := by core033_kernel_decide
theorem rows5272 : actualRows5272=WordField.canonicalRows actualModulus 5272 (.badd 5269 5271) := by core033_kernel_decide
theorem stats5272 : actualRows5272.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5272=5388 := by core033_kernel_decide
theorem rows5273 : actualRows5273=WordField.canonicalRows actualModulus 5273 (.bnot 5272) := by core033_kernel_decide
theorem stats5273 : actualRows5273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5273=6276 := by core033_kernel_decide
theorem rows5274 : actualRows5274=WordField.canonicalRows actualModulus 5274 (.band 5268 5273) := by core033_kernel_decide
theorem stats5274 : actualRows5274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5274=5124 := by core033_kernel_decide
theorem rows5275 : actualRows5275=WordField.canonicalRows actualModulus 5275 (.bxor 5264 5274) := by core033_kernel_decide
theorem stats5275 : actualRows5275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5275=7428 := by core033_kernel_decide
theorem rows5276 : actualRows5276=WordField.canonicalRows actualModulus 5276 (.shr 5275 31) := by core033_kernel_decide
theorem stats5276 : actualRows5276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5276=2892 := by core033_kernel_decide
theorem rows5277 : actualRows5277=WordField.canonicalRows actualModulus 5277 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5277 : actualRows5277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5277=2892 := by core033_kernel_decide
theorem rows5278 : actualRows5278=WordField.canonicalRows actualModulus 5278 (.bxor 5276 5277) := by core033_kernel_decide
theorem stats5278 : actualRows5278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5278=7428 := by core033_kernel_decide
theorem rows5279 : actualRows5279=WordField.canonicalRows actualModulus 5279 (.shr 1927 8) := by core033_kernel_decide
theorem stats5279 : actualRows5279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5279=4548 := by core033_kernel_decide
theorem rows5280 : actualRows5280=WordField.canonicalRows actualModulus 5280 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5280 : actualRows5280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5280=2820 := by core033_kernel_decide
theorem rows5281 : actualRows5281=WordField.canonicalRows actualModulus 5281 (.bnot 5280) := by core033_kernel_decide
theorem stats5281 : actualRows5281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5281=6276 := by core033_kernel_decide
theorem rows5282 : actualRows5282=WordField.canonicalRows actualModulus 5282 (.band 5279 5281) := by core033_kernel_decide
theorem stats5282 : actualRows5282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5282=5124 := by core033_kernel_decide
theorem rows5283 : actualRows5283=WordField.canonicalRows actualModulus 5283 (.shr 1927 8) := by core033_kernel_decide
theorem stats5283 : actualRows5283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5283=4548 := by core033_kernel_decide
theorem rows5284 : actualRows5284=WordField.canonicalRows actualModulus 5284 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5284 : actualRows5284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5284=2820 := by core033_kernel_decide
theorem rows5285 : actualRows5285=WordField.canonicalRows actualModulus 5285 (.bnot 5284) := by core033_kernel_decide
theorem stats5285 : actualRows5285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5285=6276 := by core033_kernel_decide
theorem rows5286 : actualRows5286=WordField.canonicalRows actualModulus 5286 (.bxor 5283 5285) := by core033_kernel_decide
theorem stats5286 : actualRows5286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5286=7428 := by core033_kernel_decide
theorem rows5287 : actualRows5287=WordField.canonicalRows actualModulus 5287 (.shr 1927 8) := by core033_kernel_decide
theorem stats5287 : actualRows5287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5287=4548 := by core033_kernel_decide
theorem rows5288 : actualRows5288=WordField.canonicalRows actualModulus 5288 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5288 : actualRows5288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5288=2820 := by core033_kernel_decide
theorem rows5289 : actualRows5289=WordField.canonicalRows actualModulus 5289 (.bnot 5288) := by core033_kernel_decide
theorem stats5289 : actualRows5289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5289=6276 := by core033_kernel_decide
theorem rows5290 : actualRows5290=WordField.canonicalRows actualModulus 5290 (.badd 5287 5289) := by core033_kernel_decide
theorem stats5290 : actualRows5290.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5290=5388 := by core033_kernel_decide
def partRows81 : List R1CS.Row := actualRows5227++actualRows5228++actualRows5229++actualRows5230++actualRows5231++actualRows5232++actualRows5233++actualRows5234++actualRows5235++actualRows5236++actualRows5237++actualRows5238++actualRows5239++actualRows5240++actualRows5241++actualRows5242++actualRows5243++actualRows5244++actualRows5245++actualRows5246++actualRows5247++actualRows5248++actualRows5249++actualRows5250++actualRows5251++actualRows5252++actualRows5253++actualRows5254++actualRows5255++actualRows5256++actualRows5257++actualRows5258++actualRows5259++actualRows5260++actualRows5261++actualRows5262++actualRows5263++actualRows5264++actualRows5265++actualRows5266++actualRows5267++actualRows5268++actualRows5269++actualRows5270++actualRows5271++actualRows5272++actualRows5273++actualRows5274++actualRows5275++actualRows5276++actualRows5277++actualRows5278++actualRows5279++actualRows5280++actualRows5281++actualRows5282++actualRows5283++actualRows5284++actualRows5285++actualRows5286++actualRows5287++actualRows5288++actualRows5289++actualRows5290
def partOps81 : List WordIR.Op := [.badd 5225 5226,.rotr 4059 24,.badd 5227 5228,.badd 5229 4111,.rotr 4163 8,.rotr 4215 16,.badd 5231 5232,.rotr 4267 24,.badd 5233 5234,.badd 5235 4319,.rotr 4371 8,.rotr 4423 16,.badd 5237 5238,.rotr 4475 24,.badd 5239 5240,.badd 5241 4528,.rotr 4581 8,.rotr 4634 16,.badd 5243 5244,.rotr 4687 24,.badd 5245 5246,.badd 5247 4740,.rotr 4793 8,.rotr 4846 16,.badd 5249 5250,.rotr 4899 24,.badd 5251 5252,.badd 5253 4952,.rotr 5005 8,.rotr 5058 16,.badd 5255 5256,.rotr 5111 24,.badd 5257 5258,.badd 5259 5164,.shr 1875 8,.literal (BitVec.ofNat 32 0),.bnot 5262,.band 5261 5263,.shr 1875 8,.literal (BitVec.ofNat 32 0),.bnot 5266,.bxor 5265 5267,.shr 1875 8,.literal (BitVec.ofNat 32 0),.bnot 5270,.badd 5269 5271,.bnot 5272,.band 5268 5273,.bxor 5264 5274,.shr 5275 31,.literal (BitVec.ofNat 32 1),.bxor 5276 5277,.shr 1927 8,.literal (BitVec.ofNat 32 0),.bnot 5280,.band 5279 5281,.shr 1927 8,.literal (BitVec.ofNat 32 0),.bnot 5284,.bxor 5283 5285,.shr 1927 8,.literal (BitVec.ofNat 32 0),.bnot 5288,.badd 5287 5289]
theorem partExact81 : partRows81=WordField.rows actualModulus 5227 partOps81 := by
  simp only [partRows81,partOps81,WordField.rows,rows5227,rows5228,rows5229,rows5230,rows5231,rows5232,rows5233,rows5234,rows5235,rows5236,rows5237,rows5238,rows5239,rows5240,rows5241,rows5242,rows5243,rows5244,rows5245,rows5246,rows5247,rows5248,rows5249,rows5250,rows5251,rows5252,rows5253,rows5254,rows5255,rows5256,rows5257,rows5258,rows5259,rows5260,rows5261,rows5262,rows5263,rows5264,rows5265,rows5266,rows5267,rows5268,rows5269,rows5270,rows5271,rows5272,rows5273,rows5274,rows5275,rows5276,rows5277,rows5278,rows5279,rows5280,rows5281,rows5282,rows5283,rows5284,rows5285,rows5286,rows5287,rows5288,rows5289,rows5290,List.append_assoc,List.append_nil]
theorem partLength81 : partOps81.length=64 := by decide
theorem partStats81 : partRows81.length=2196 ∧ MatrixRowBlocks.rowsWeight partRows81=328752 := by
  simp only [partRows81,List.length_append,MatrixRowBlocks.rows_weight_append,stats5227.1,stats5227.2,stats5228.1,stats5228.2,stats5229.1,stats5229.2,stats5230.1,stats5230.2,stats5231.1,stats5231.2,stats5232.1,stats5232.2,stats5233.1,stats5233.2,stats5234.1,stats5234.2,stats5235.1,stats5235.2,stats5236.1,stats5236.2,stats5237.1,stats5237.2,stats5238.1,stats5238.2,stats5239.1,stats5239.2,stats5240.1,stats5240.2,stats5241.1,stats5241.2,stats5242.1,stats5242.2,stats5243.1,stats5243.2,stats5244.1,stats5244.2,stats5245.1,stats5245.2,stats5246.1,stats5246.2,stats5247.1,stats5247.2,stats5248.1,stats5248.2,stats5249.1,stats5249.2,stats5250.1,stats5250.2,stats5251.1,stats5251.2,stats5252.1,stats5252.2,stats5253.1,stats5253.2,stats5254.1,stats5254.2,stats5255.1,stats5255.2,stats5256.1,stats5256.2,stats5257.1,stats5257.2,stats5258.1,stats5258.2,stats5259.1,stats5259.2,stats5260.1,stats5260.2,stats5261.1,stats5261.2,stats5262.1,stats5262.2,stats5263.1,stats5263.2,stats5264.1,stats5264.2,stats5265.1,stats5265.2,stats5266.1,stats5266.2,stats5267.1,stats5267.2,stats5268.1,stats5268.2,stats5269.1,stats5269.2,stats5270.1,stats5270.2,stats5271.1,stats5271.2,stats5272.1,stats5272.2,stats5273.1,stats5273.2,stats5274.1,stats5274.2,stats5275.1,stats5275.2,stats5276.1,stats5276.2,stats5277.1,stats5277.2,stats5278.1,stats5278.2,stats5279.1,stats5279.2,stats5280.1,stats5280.2,stats5281.1,stats5281.2,stats5282.1,stats5282.2,stats5283.1,stats5283.2,stats5284.1,stats5284.2,stats5285.1,stats5285.2,stats5286.1,stats5286.2,stats5287.1,stats5287.2,stats5288.1,stats5288.2,stats5289.1,stats5289.2,stats5290.1,stats5290.2]
  decide
end FrameHashControllerCheckedRows
