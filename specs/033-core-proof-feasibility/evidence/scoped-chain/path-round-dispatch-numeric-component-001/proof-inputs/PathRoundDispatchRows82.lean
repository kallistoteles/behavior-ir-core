import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData82
import PathRoundDispatchInstructionMatrixData83
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5291 : actualRows5291=WordField.canonicalRows actualModulus 5291 (.bnot 5290) := by core033_kernel_decide
theorem stats5291 : actualRows5291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5291=6276 := by core033_kernel_decide
theorem rows5292 : actualRows5292=WordField.canonicalRows actualModulus 5292 (.bxor 5289 5291) := by core033_kernel_decide
theorem stats5292 : actualRows5292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5292=7428 := by core033_kernel_decide
theorem rows5293 : actualRows5293=WordField.canonicalRows actualModulus 5293 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5293 : actualRows5293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5293=2892 := by core033_kernel_decide
theorem rows5294 : actualRows5294=WordField.canonicalRows actualModulus 5294 (.bxor 96 5293) := by core033_kernel_decide
theorem stats5294 : actualRows5294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5294=7428 := by core033_kernel_decide
theorem rows5295 : actualRows5295=WordField.canonicalRows actualModulus 5295 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5295 : actualRows5295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5295=2820 := by core033_kernel_decide
theorem rows5296 : actualRows5296=WordField.canonicalRows actualModulus 5296 (.bnot 5295) := by core033_kernel_decide
theorem stats5296 : actualRows5296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5296=6276 := by core033_kernel_decide
theorem rows5297 : actualRows5297=WordField.canonicalRows actualModulus 5297 (.badd 5294 5296) := by core033_kernel_decide
theorem stats5297 : actualRows5297.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5297=5388 := by core033_kernel_decide
theorem rows5298 : actualRows5298=WordField.canonicalRows actualModulus 5298 (.bnot 5297) := by core033_kernel_decide
theorem stats5298 : actualRows5298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5298=6276 := by core033_kernel_decide
theorem rows5299 : actualRows5299=WordField.canonicalRows actualModulus 5299 (.band 5292 5298) := by core033_kernel_decide
theorem stats5299 : actualRows5299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5299=5124 := by core033_kernel_decide
theorem rows5300 : actualRows5300=WordField.canonicalRows actualModulus 5300 (.bxor 5287 5299) := by core033_kernel_decide
theorem stats5300 : actualRows5300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5300=7428 := by core033_kernel_decide
theorem rows5301 : actualRows5301=WordField.canonicalRows actualModulus 5301 (.shr 5300 31) := by core033_kernel_decide
theorem stats5301 : actualRows5301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5301=2892 := by core033_kernel_decide
theorem rows5302 : actualRows5302=WordField.canonicalRows actualModulus 5302 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5302 : actualRows5302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5302=2892 := by core033_kernel_decide
theorem rows5303 : actualRows5303=WordField.canonicalRows actualModulus 5303 (.bxor 5301 5302) := by core033_kernel_decide
theorem stats5303 : actualRows5303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5303=7428 := by core033_kernel_decide
theorem rows5304 : actualRows5304=WordField.canonicalRows actualModulus 5304 (.bnot 5303) := by core033_kernel_decide
theorem stats5304 : actualRows5304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5304=6276 := by core033_kernel_decide
theorem rows5305 : actualRows5305=WordField.canonicalRows actualModulus 5305 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5305 : actualRows5305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5305=2892 := by core033_kernel_decide
theorem rows5306 : actualRows5306=WordField.canonicalRows actualModulus 5306 (.badd 5304 5305) := by core033_kernel_decide
theorem stats5306 : actualRows5306.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5306=5388 := by core033_kernel_decide
theorem rows5307 : actualRows5307=WordField.canonicalRows actualModulus 5307 (.bnot 5306) := by core033_kernel_decide
theorem stats5307 : actualRows5307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5307=6276 := by core033_kernel_decide
theorem rows5308 : actualRows5308=WordField.canonicalRows actualModulus 5308 (.band 5307 1469) := by core033_kernel_decide
theorem stats5308 : actualRows5308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5308=5124 := by core033_kernel_decide
theorem rows5309 : actualRows5309=WordField.canonicalRows actualModulus 5309 (.bxor 5282 5308) := by core033_kernel_decide
theorem stats5309 : actualRows5309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5309=7428 := by core033_kernel_decide
theorem rows5310 : actualRows5310=WordField.canonicalRows actualModulus 5310 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5310 : actualRows5310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5310=2892 := by core033_kernel_decide
theorem rows5311 : actualRows5311=WordField.canonicalRows actualModulus 5311 (.bxor 96 5310) := by core033_kernel_decide
theorem stats5311 : actualRows5311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5311=7428 := by core033_kernel_decide
theorem rows5312 : actualRows5312=WordField.canonicalRows actualModulus 5312 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5312 : actualRows5312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5312=2820 := by core033_kernel_decide
theorem rows5313 : actualRows5313=WordField.canonicalRows actualModulus 5313 (.bnot 5312) := by core033_kernel_decide
theorem stats5313 : actualRows5313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5313=6276 := by core033_kernel_decide
theorem rows5314 : actualRows5314=WordField.canonicalRows actualModulus 5314 (.band 5311 5313) := by core033_kernel_decide
theorem stats5314 : actualRows5314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5314=5124 := by core033_kernel_decide
theorem rows5315 : actualRows5315=WordField.canonicalRows actualModulus 5315 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5315 : actualRows5315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5315=2892 := by core033_kernel_decide
theorem rows5316 : actualRows5316=WordField.canonicalRows actualModulus 5316 (.bxor 96 5315) := by core033_kernel_decide
theorem stats5316 : actualRows5316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5316=7428 := by core033_kernel_decide
theorem rows5317 : actualRows5317=WordField.canonicalRows actualModulus 5317 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5317 : actualRows5317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5317=2820 := by core033_kernel_decide
theorem rows5318 : actualRows5318=WordField.canonicalRows actualModulus 5318 (.bnot 5317) := by core033_kernel_decide
theorem stats5318 : actualRows5318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5318=6276 := by core033_kernel_decide
theorem rows5319 : actualRows5319=WordField.canonicalRows actualModulus 5319 (.bxor 5316 5318) := by core033_kernel_decide
theorem stats5319 : actualRows5319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5319=7428 := by core033_kernel_decide
theorem rows5320 : actualRows5320=WordField.canonicalRows actualModulus 5320 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5320 : actualRows5320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5320=2892 := by core033_kernel_decide
theorem rows5321 : actualRows5321=WordField.canonicalRows actualModulus 5321 (.bxor 96 5320) := by core033_kernel_decide
theorem stats5321 : actualRows5321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5321=7428 := by core033_kernel_decide
theorem rows5322 : actualRows5322=WordField.canonicalRows actualModulus 5322 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5322 : actualRows5322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5322=2820 := by core033_kernel_decide
theorem rows5323 : actualRows5323=WordField.canonicalRows actualModulus 5323 (.bnot 5322) := by core033_kernel_decide
theorem stats5323 : actualRows5323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5323=6276 := by core033_kernel_decide
theorem rows5324 : actualRows5324=WordField.canonicalRows actualModulus 5324 (.badd 5321 5323) := by core033_kernel_decide
theorem stats5324 : actualRows5324.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5324=5388 := by core033_kernel_decide
theorem rows5325 : actualRows5325=WordField.canonicalRows actualModulus 5325 (.bnot 5324) := by core033_kernel_decide
theorem stats5325 : actualRows5325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5325=6276 := by core033_kernel_decide
theorem rows5326 : actualRows5326=WordField.canonicalRows actualModulus 5326 (.band 5319 5325) := by core033_kernel_decide
theorem stats5326 : actualRows5326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5326=5124 := by core033_kernel_decide
theorem rows5327 : actualRows5327=WordField.canonicalRows actualModulus 5327 (.bxor 5314 5326) := by core033_kernel_decide
theorem stats5327 : actualRows5327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5327=7428 := by core033_kernel_decide
theorem rows5328 : actualRows5328=WordField.canonicalRows actualModulus 5328 (.shr 5327 31) := by core033_kernel_decide
theorem stats5328 : actualRows5328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5328=2892 := by core033_kernel_decide
theorem rows5329 : actualRows5329=WordField.canonicalRows actualModulus 5329 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5329 : actualRows5329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5329=2892 := by core033_kernel_decide
theorem rows5330 : actualRows5330=WordField.canonicalRows actualModulus 5330 (.bxor 5328 5329) := by core033_kernel_decide
theorem stats5330 : actualRows5330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5330=7428 := by core033_kernel_decide
theorem rows5331 : actualRows5331=WordField.canonicalRows actualModulus 5331 (.bnot 5330) := by core033_kernel_decide
theorem stats5331 : actualRows5331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5331=6276 := by core033_kernel_decide
theorem rows5332 : actualRows5332=WordField.canonicalRows actualModulus 5332 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5332 : actualRows5332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5332=2892 := by core033_kernel_decide
theorem rows5333 : actualRows5333=WordField.canonicalRows actualModulus 5333 (.badd 5331 5332) := by core033_kernel_decide
theorem stats5333 : actualRows5333.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5333=5388 := by core033_kernel_decide
theorem rows5334 : actualRows5334=WordField.canonicalRows actualModulus 5334 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5334 : actualRows5334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5334=2820 := by core033_kernel_decide
theorem rows5335 : actualRows5335=WordField.canonicalRows actualModulus 5335 (.band 5333 5334) := by core033_kernel_decide
theorem stats5335 : actualRows5335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5335=5124 := by core033_kernel_decide
theorem rows5336 : actualRows5336=WordField.canonicalRows actualModulus 5336 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5336 : actualRows5336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5336=2892 := by core033_kernel_decide
theorem rows5337 : actualRows5337=WordField.canonicalRows actualModulus 5337 (.bxor 96 5336) := by core033_kernel_decide
theorem stats5337 : actualRows5337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5337=7428 := by core033_kernel_decide
theorem rows5338 : actualRows5338=WordField.canonicalRows actualModulus 5338 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5338 : actualRows5338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5338=2820 := by core033_kernel_decide
theorem rows5339 : actualRows5339=WordField.canonicalRows actualModulus 5339 (.bnot 5338) := by core033_kernel_decide
theorem stats5339 : actualRows5339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5339=6276 := by core033_kernel_decide
theorem rows5340 : actualRows5340=WordField.canonicalRows actualModulus 5340 (.band 5337 5339) := by core033_kernel_decide
theorem stats5340 : actualRows5340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5340=5124 := by core033_kernel_decide
theorem rows5341 : actualRows5341=WordField.canonicalRows actualModulus 5341 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5341 : actualRows5341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5341=2892 := by core033_kernel_decide
theorem rows5342 : actualRows5342=WordField.canonicalRows actualModulus 5342 (.bxor 96 5341) := by core033_kernel_decide
theorem stats5342 : actualRows5342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5342=7428 := by core033_kernel_decide
theorem rows5343 : actualRows5343=WordField.canonicalRows actualModulus 5343 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5343 : actualRows5343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5343=2820 := by core033_kernel_decide
theorem rows5344 : actualRows5344=WordField.canonicalRows actualModulus 5344 (.bnot 5343) := by core033_kernel_decide
theorem stats5344 : actualRows5344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5344=6276 := by core033_kernel_decide
theorem rows5345 : actualRows5345=WordField.canonicalRows actualModulus 5345 (.bxor 5342 5344) := by core033_kernel_decide
theorem stats5345 : actualRows5345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5345=7428 := by core033_kernel_decide
theorem rows5346 : actualRows5346=WordField.canonicalRows actualModulus 5346 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5346 : actualRows5346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5346=2892 := by core033_kernel_decide
theorem rows5347 : actualRows5347=WordField.canonicalRows actualModulus 5347 (.bxor 96 5346) := by core033_kernel_decide
theorem stats5347 : actualRows5347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5347=7428 := by core033_kernel_decide
theorem rows5348 : actualRows5348=WordField.canonicalRows actualModulus 5348 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5348 : actualRows5348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5348=2820 := by core033_kernel_decide
theorem rows5349 : actualRows5349=WordField.canonicalRows actualModulus 5349 (.bnot 5348) := by core033_kernel_decide
theorem stats5349 : actualRows5349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5349=6276 := by core033_kernel_decide
theorem rows5350 : actualRows5350=WordField.canonicalRows actualModulus 5350 (.badd 5347 5349) := by core033_kernel_decide
theorem stats5350 : actualRows5350.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5350=5388 := by core033_kernel_decide
theorem rows5351 : actualRows5351=WordField.canonicalRows actualModulus 5351 (.bnot 5350) := by core033_kernel_decide
theorem stats5351 : actualRows5351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5351=6276 := by core033_kernel_decide
theorem rows5352 : actualRows5352=WordField.canonicalRows actualModulus 5352 (.band 5345 5351) := by core033_kernel_decide
theorem stats5352 : actualRows5352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5352=5124 := by core033_kernel_decide
theorem rows5353 : actualRows5353=WordField.canonicalRows actualModulus 5353 (.bxor 5340 5352) := by core033_kernel_decide
theorem stats5353 : actualRows5353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5353=7428 := by core033_kernel_decide
theorem rows5354 : actualRows5354=WordField.canonicalRows actualModulus 5354 (.shr 5353 31) := by core033_kernel_decide
theorem stats5354 : actualRows5354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5354=2892 := by core033_kernel_decide
def partRows82 : List R1CS.Row := actualRows5291++actualRows5292++actualRows5293++actualRows5294++actualRows5295++actualRows5296++actualRows5297++actualRows5298++actualRows5299++actualRows5300++actualRows5301++actualRows5302++actualRows5303++actualRows5304++actualRows5305++actualRows5306++actualRows5307++actualRows5308++actualRows5309++actualRows5310++actualRows5311++actualRows5312++actualRows5313++actualRows5314++actualRows5315++actualRows5316++actualRows5317++actualRows5318++actualRows5319++actualRows5320++actualRows5321++actualRows5322++actualRows5323++actualRows5324++actualRows5325++actualRows5326++actualRows5327++actualRows5328++actualRows5329++actualRows5330++actualRows5331++actualRows5332++actualRows5333++actualRows5334++actualRows5335++actualRows5336++actualRows5337++actualRows5338++actualRows5339++actualRows5340++actualRows5341++actualRows5342++actualRows5343++actualRows5344++actualRows5345++actualRows5346++actualRows5347++actualRows5348++actualRows5349++actualRows5350++actualRows5351++actualRows5352++actualRows5353++actualRows5354
def partOps82 : List WordIR.Op := [.bnot 5290,.bxor 5289 5291,.literal (BitVec.ofNat 32 2),.bxor 96 5293,.literal (BitVec.ofNat 32 0),.bnot 5295,.badd 5294 5296,.bnot 5297,.band 5292 5298,.bxor 5287 5299,.shr 5300 31,.literal (BitVec.ofNat 32 1),.bxor 5301 5302,.bnot 5303,.literal (BitVec.ofNat 32 1),.badd 5304 5305,.bnot 5306,.band 5307 1469,.bxor 5282 5308,.literal (BitVec.ofNat 32 2),.bxor 96 5310,.literal (BitVec.ofNat 32 0),.bnot 5312,.band 5311 5313,.literal (BitVec.ofNat 32 2),.bxor 96 5315,.literal (BitVec.ofNat 32 0),.bnot 5317,.bxor 5316 5318,.literal (BitVec.ofNat 32 2),.bxor 96 5320,.literal (BitVec.ofNat 32 0),.bnot 5322,.badd 5321 5323,.bnot 5324,.band 5319 5325,.bxor 5314 5326,.shr 5327 31,.literal (BitVec.ofNat 32 1),.bxor 5328 5329,.bnot 5330,.literal (BitVec.ofNat 32 1),.badd 5331 5332,.literal (BitVec.ofNat 32 0),.band 5333 5334,.literal (BitVec.ofNat 32 2),.bxor 96 5336,.literal (BitVec.ofNat 32 0),.bnot 5338,.band 5337 5339,.literal (BitVec.ofNat 32 2),.bxor 96 5341,.literal (BitVec.ofNat 32 0),.bnot 5343,.bxor 5342 5344,.literal (BitVec.ofNat 32 2),.bxor 96 5346,.literal (BitVec.ofNat 32 0),.bnot 5348,.badd 5347 5349,.bnot 5350,.band 5345 5351,.bxor 5340 5352,.shr 5353 31]
theorem partExact82 : partRows82=WordField.rows actualModulus 5291 partOps82 := by
  simp only [partRows82,partOps82,WordField.rows,rows5291,rows5292,rows5293,rows5294,rows5295,rows5296,rows5297,rows5298,rows5299,rows5300,rows5301,rows5302,rows5303,rows5304,rows5305,rows5306,rows5307,rows5308,rows5309,rows5310,rows5311,rows5312,rows5313,rows5314,rows5315,rows5316,rows5317,rows5318,rows5319,rows5320,rows5321,rows5322,rows5323,rows5324,rows5325,rows5326,rows5327,rows5328,rows5329,rows5330,rows5331,rows5332,rows5333,rows5334,rows5335,rows5336,rows5337,rows5338,rows5339,rows5340,rows5341,rows5342,rows5343,rows5344,rows5345,rows5346,rows5347,rows5348,rows5349,rows5350,rows5351,rows5352,rows5353,rows5354,List.append_assoc,List.append_nil]
theorem partLength82 : partOps82.length=64 := by decide
theorem partStats82 : partRows82.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows82=332568 := by
  simp only [partRows82,List.length_append,MatrixRowBlocks.rows_weight_append,stats5291.1,stats5291.2,stats5292.1,stats5292.2,stats5293.1,stats5293.2,stats5294.1,stats5294.2,stats5295.1,stats5295.2,stats5296.1,stats5296.2,stats5297.1,stats5297.2,stats5298.1,stats5298.2,stats5299.1,stats5299.2,stats5300.1,stats5300.2,stats5301.1,stats5301.2,stats5302.1,stats5302.2,stats5303.1,stats5303.2,stats5304.1,stats5304.2,stats5305.1,stats5305.2,stats5306.1,stats5306.2,stats5307.1,stats5307.2,stats5308.1,stats5308.2,stats5309.1,stats5309.2,stats5310.1,stats5310.2,stats5311.1,stats5311.2,stats5312.1,stats5312.2,stats5313.1,stats5313.2,stats5314.1,stats5314.2,stats5315.1,stats5315.2,stats5316.1,stats5316.2,stats5317.1,stats5317.2,stats5318.1,stats5318.2,stats5319.1,stats5319.2,stats5320.1,stats5320.2,stats5321.1,stats5321.2,stats5322.1,stats5322.2,stats5323.1,stats5323.2,stats5324.1,stats5324.2,stats5325.1,stats5325.2,stats5326.1,stats5326.2,stats5327.1,stats5327.2,stats5328.1,stats5328.2,stats5329.1,stats5329.2,stats5330.1,stats5330.2,stats5331.1,stats5331.2,stats5332.1,stats5332.2,stats5333.1,stats5333.2,stats5334.1,stats5334.2,stats5335.1,stats5335.2,stats5336.1,stats5336.2,stats5337.1,stats5337.2,stats5338.1,stats5338.2,stats5339.1,stats5339.2,stats5340.1,stats5340.2,stats5341.1,stats5341.2,stats5342.1,stats5342.2,stats5343.1,stats5343.2,stats5344.1,stats5344.2,stats5345.1,stats5345.2,stats5346.1,stats5346.2,stats5347.1,stats5347.2,stats5348.1,stats5348.2,stats5349.1,stats5349.2,stats5350.1,stats5350.2,stats5351.1,stats5351.2,stats5352.1,stats5352.2,stats5353.1,stats5353.2,stats5354.1,stats5354.2]
  decide
end PathRoundDispatchCheckedRows
