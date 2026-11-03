import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData83
import PairedPathRoundInstructionMatrixData84
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5344 : actualRows5344=WordField.canonicalRows actualModulus 5344 (.bnot 5343) := by core033_kernel_decide
theorem stats5344 : actualRows5344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5344=6276 := by core033_kernel_decide
theorem rows5345 : actualRows5345=WordField.canonicalRows actualModulus 5345 (.band 5338 5344) := by core033_kernel_decide
theorem stats5345 : actualRows5345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5345=5124 := by core033_kernel_decide
theorem rows5346 : actualRows5346=WordField.canonicalRows actualModulus 5346 (.bxor 5333 5345) := by core033_kernel_decide
theorem stats5346 : actualRows5346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5346=7428 := by core033_kernel_decide
theorem rows5347 : actualRows5347=WordField.canonicalRows actualModulus 5347 (.shr 5346 31) := by core033_kernel_decide
theorem stats5347 : actualRows5347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5347=2892 := by core033_kernel_decide
theorem rows5348 : actualRows5348=WordField.canonicalRows actualModulus 5348 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5348 : actualRows5348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5348=2892 := by core033_kernel_decide
theorem rows5349 : actualRows5349=WordField.canonicalRows actualModulus 5349 (.bxor 5347 5348) := by core033_kernel_decide
theorem stats5349 : actualRows5349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5349=7428 := by core033_kernel_decide
theorem rows5350 : actualRows5350=WordField.canonicalRows actualModulus 5350 (.bnot 5349) := by core033_kernel_decide
theorem stats5350 : actualRows5350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5350=6276 := by core033_kernel_decide
theorem rows5351 : actualRows5351=WordField.canonicalRows actualModulus 5351 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5351 : actualRows5351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5351=2892 := by core033_kernel_decide
theorem rows5352 : actualRows5352=WordField.canonicalRows actualModulus 5352 (.badd 5350 5351) := by core033_kernel_decide
theorem stats5352 : actualRows5352.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5352=5388 := by core033_kernel_decide
theorem rows5353 : actualRows5353=WordField.canonicalRows actualModulus 5353 (.bnot 5352) := by core033_kernel_decide
theorem stats5353 : actualRows5353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5353=6276 := by core033_kernel_decide
theorem rows5354 : actualRows5354=WordField.canonicalRows actualModulus 5354 (.band 5353 1962) := by core033_kernel_decide
theorem stats5354 : actualRows5354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5354=5124 := by core033_kernel_decide
theorem rows5355 : actualRows5355=WordField.canonicalRows actualModulus 5355 (.bxor 5328 5354) := by core033_kernel_decide
theorem stats5355 : actualRows5355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5355=7428 := by core033_kernel_decide
theorem rows5356 : actualRows5356=WordField.canonicalRows actualModulus 5356 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5356 : actualRows5356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5356=2892 := by core033_kernel_decide
theorem rows5357 : actualRows5357=WordField.canonicalRows actualModulus 5357 (.bxor 616 5356) := by core033_kernel_decide
theorem stats5357 : actualRows5357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5357=7428 := by core033_kernel_decide
theorem rows5358 : actualRows5358=WordField.canonicalRows actualModulus 5358 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5358 : actualRows5358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5358=2820 := by core033_kernel_decide
theorem rows5359 : actualRows5359=WordField.canonicalRows actualModulus 5359 (.bnot 5358) := by core033_kernel_decide
theorem stats5359 : actualRows5359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5359=6276 := by core033_kernel_decide
theorem rows5360 : actualRows5360=WordField.canonicalRows actualModulus 5360 (.band 5357 5359) := by core033_kernel_decide
theorem stats5360 : actualRows5360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5360=5124 := by core033_kernel_decide
theorem rows5361 : actualRows5361=WordField.canonicalRows actualModulus 5361 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5361 : actualRows5361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5361=2892 := by core033_kernel_decide
theorem rows5362 : actualRows5362=WordField.canonicalRows actualModulus 5362 (.bxor 616 5361) := by core033_kernel_decide
theorem stats5362 : actualRows5362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5362=7428 := by core033_kernel_decide
theorem rows5363 : actualRows5363=WordField.canonicalRows actualModulus 5363 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5363 : actualRows5363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5363=2820 := by core033_kernel_decide
theorem rows5364 : actualRows5364=WordField.canonicalRows actualModulus 5364 (.bnot 5363) := by core033_kernel_decide
theorem stats5364 : actualRows5364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5364=6276 := by core033_kernel_decide
theorem rows5365 : actualRows5365=WordField.canonicalRows actualModulus 5365 (.bxor 5362 5364) := by core033_kernel_decide
theorem stats5365 : actualRows5365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5365=7428 := by core033_kernel_decide
theorem rows5366 : actualRows5366=WordField.canonicalRows actualModulus 5366 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5366 : actualRows5366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5366=2892 := by core033_kernel_decide
theorem rows5367 : actualRows5367=WordField.canonicalRows actualModulus 5367 (.bxor 616 5366) := by core033_kernel_decide
theorem stats5367 : actualRows5367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5367=7428 := by core033_kernel_decide
theorem rows5368 : actualRows5368=WordField.canonicalRows actualModulus 5368 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5368 : actualRows5368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5368=2820 := by core033_kernel_decide
theorem rows5369 : actualRows5369=WordField.canonicalRows actualModulus 5369 (.bnot 5368) := by core033_kernel_decide
theorem stats5369 : actualRows5369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5369=6276 := by core033_kernel_decide
theorem rows5370 : actualRows5370=WordField.canonicalRows actualModulus 5370 (.badd 5367 5369) := by core033_kernel_decide
theorem stats5370 : actualRows5370.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5370=5388 := by core033_kernel_decide
theorem rows5371 : actualRows5371=WordField.canonicalRows actualModulus 5371 (.bnot 5370) := by core033_kernel_decide
theorem stats5371 : actualRows5371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5371=6276 := by core033_kernel_decide
theorem rows5372 : actualRows5372=WordField.canonicalRows actualModulus 5372 (.band 5365 5371) := by core033_kernel_decide
theorem stats5372 : actualRows5372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5372=5124 := by core033_kernel_decide
theorem rows5373 : actualRows5373=WordField.canonicalRows actualModulus 5373 (.bxor 5360 5372) := by core033_kernel_decide
theorem stats5373 : actualRows5373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5373=7428 := by core033_kernel_decide
theorem rows5374 : actualRows5374=WordField.canonicalRows actualModulus 5374 (.shr 5373 31) := by core033_kernel_decide
theorem stats5374 : actualRows5374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5374=2892 := by core033_kernel_decide
theorem rows5375 : actualRows5375=WordField.canonicalRows actualModulus 5375 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5375 : actualRows5375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5375=2892 := by core033_kernel_decide
theorem rows5376 : actualRows5376=WordField.canonicalRows actualModulus 5376 (.bxor 5374 5375) := by core033_kernel_decide
theorem stats5376 : actualRows5376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5376=7428 := by core033_kernel_decide
theorem rows5377 : actualRows5377=WordField.canonicalRows actualModulus 5377 (.bnot 5376) := by core033_kernel_decide
theorem stats5377 : actualRows5377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5377=6276 := by core033_kernel_decide
theorem rows5378 : actualRows5378=WordField.canonicalRows actualModulus 5378 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5378 : actualRows5378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5378=2892 := by core033_kernel_decide
theorem rows5379 : actualRows5379=WordField.canonicalRows actualModulus 5379 (.badd 5377 5378) := by core033_kernel_decide
theorem stats5379 : actualRows5379.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5379=5388 := by core033_kernel_decide
theorem rows5380 : actualRows5380=WordField.canonicalRows actualModulus 5380 (.band 5379 2157) := by core033_kernel_decide
theorem stats5380 : actualRows5380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5380=5124 := by core033_kernel_decide
theorem rows5381 : actualRows5381=WordField.canonicalRows actualModulus 5381 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5381 : actualRows5381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5381=2892 := by core033_kernel_decide
theorem rows5382 : actualRows5382=WordField.canonicalRows actualModulus 5382 (.bxor 616 5381) := by core033_kernel_decide
theorem stats5382 : actualRows5382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5382=7428 := by core033_kernel_decide
theorem rows5383 : actualRows5383=WordField.canonicalRows actualModulus 5383 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5383 : actualRows5383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5383=2820 := by core033_kernel_decide
theorem rows5384 : actualRows5384=WordField.canonicalRows actualModulus 5384 (.bnot 5383) := by core033_kernel_decide
theorem stats5384 : actualRows5384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5384=6276 := by core033_kernel_decide
theorem rows5385 : actualRows5385=WordField.canonicalRows actualModulus 5385 (.band 5382 5384) := by core033_kernel_decide
theorem stats5385 : actualRows5385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5385=5124 := by core033_kernel_decide
theorem rows5386 : actualRows5386=WordField.canonicalRows actualModulus 5386 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5386 : actualRows5386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5386=2892 := by core033_kernel_decide
theorem rows5387 : actualRows5387=WordField.canonicalRows actualModulus 5387 (.bxor 616 5386) := by core033_kernel_decide
theorem stats5387 : actualRows5387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5387=7428 := by core033_kernel_decide
theorem rows5388 : actualRows5388=WordField.canonicalRows actualModulus 5388 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5388 : actualRows5388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5388=2820 := by core033_kernel_decide
theorem rows5389 : actualRows5389=WordField.canonicalRows actualModulus 5389 (.bnot 5388) := by core033_kernel_decide
theorem stats5389 : actualRows5389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5389=6276 := by core033_kernel_decide
theorem rows5390 : actualRows5390=WordField.canonicalRows actualModulus 5390 (.bxor 5387 5389) := by core033_kernel_decide
theorem stats5390 : actualRows5390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5390=7428 := by core033_kernel_decide
theorem rows5391 : actualRows5391=WordField.canonicalRows actualModulus 5391 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5391 : actualRows5391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5391=2892 := by core033_kernel_decide
theorem rows5392 : actualRows5392=WordField.canonicalRows actualModulus 5392 (.bxor 616 5391) := by core033_kernel_decide
theorem stats5392 : actualRows5392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5392=7428 := by core033_kernel_decide
theorem rows5393 : actualRows5393=WordField.canonicalRows actualModulus 5393 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5393 : actualRows5393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5393=2820 := by core033_kernel_decide
theorem rows5394 : actualRows5394=WordField.canonicalRows actualModulus 5394 (.bnot 5393) := by core033_kernel_decide
theorem stats5394 : actualRows5394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5394=6276 := by core033_kernel_decide
theorem rows5395 : actualRows5395=WordField.canonicalRows actualModulus 5395 (.badd 5392 5394) := by core033_kernel_decide
theorem stats5395 : actualRows5395.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5395=5388 := by core033_kernel_decide
theorem rows5396 : actualRows5396=WordField.canonicalRows actualModulus 5396 (.bnot 5395) := by core033_kernel_decide
theorem stats5396 : actualRows5396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5396=6276 := by core033_kernel_decide
theorem rows5397 : actualRows5397=WordField.canonicalRows actualModulus 5397 (.band 5390 5396) := by core033_kernel_decide
theorem stats5397 : actualRows5397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5397=5124 := by core033_kernel_decide
theorem rows5398 : actualRows5398=WordField.canonicalRows actualModulus 5398 (.bxor 5385 5397) := by core033_kernel_decide
theorem stats5398 : actualRows5398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5398=7428 := by core033_kernel_decide
theorem rows5399 : actualRows5399=WordField.canonicalRows actualModulus 5399 (.shr 5398 31) := by core033_kernel_decide
theorem stats5399 : actualRows5399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5399=2892 := by core033_kernel_decide
theorem rows5400 : actualRows5400=WordField.canonicalRows actualModulus 5400 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5400 : actualRows5400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5400=2892 := by core033_kernel_decide
theorem rows5401 : actualRows5401=WordField.canonicalRows actualModulus 5401 (.bxor 5399 5400) := by core033_kernel_decide
theorem stats5401 : actualRows5401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5401=7428 := by core033_kernel_decide
theorem rows5402 : actualRows5402=WordField.canonicalRows actualModulus 5402 (.bnot 5401) := by core033_kernel_decide
theorem stats5402 : actualRows5402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5402=6276 := by core033_kernel_decide
theorem rows5403 : actualRows5403=WordField.canonicalRows actualModulus 5403 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5403 : actualRows5403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5403=2892 := by core033_kernel_decide
theorem rows5404 : actualRows5404=WordField.canonicalRows actualModulus 5404 (.badd 5402 5403) := by core033_kernel_decide
theorem stats5404 : actualRows5404.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5404=5388 := by core033_kernel_decide
theorem rows5405 : actualRows5405=WordField.canonicalRows actualModulus 5405 (.bnot 5404) := by core033_kernel_decide
theorem stats5405 : actualRows5405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5405=6276 := by core033_kernel_decide
theorem rows5406 : actualRows5406=WordField.canonicalRows actualModulus 5406 (.band 5405 1965) := by core033_kernel_decide
theorem stats5406 : actualRows5406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5406=5124 := by core033_kernel_decide
theorem rows5407 : actualRows5407=WordField.canonicalRows actualModulus 5407 (.bxor 5380 5406) := by core033_kernel_decide
theorem stats5407 : actualRows5407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5407=7428 := by core033_kernel_decide
def partRows82 : List R1CS.Row := actualRows5344++actualRows5345++actualRows5346++actualRows5347++actualRows5348++actualRows5349++actualRows5350++actualRows5351++actualRows5352++actualRows5353++actualRows5354++actualRows5355++actualRows5356++actualRows5357++actualRows5358++actualRows5359++actualRows5360++actualRows5361++actualRows5362++actualRows5363++actualRows5364++actualRows5365++actualRows5366++actualRows5367++actualRows5368++actualRows5369++actualRows5370++actualRows5371++actualRows5372++actualRows5373++actualRows5374++actualRows5375++actualRows5376++actualRows5377++actualRows5378++actualRows5379++actualRows5380++actualRows5381++actualRows5382++actualRows5383++actualRows5384++actualRows5385++actualRows5386++actualRows5387++actualRows5388++actualRows5389++actualRows5390++actualRows5391++actualRows5392++actualRows5393++actualRows5394++actualRows5395++actualRows5396++actualRows5397++actualRows5398++actualRows5399++actualRows5400++actualRows5401++actualRows5402++actualRows5403++actualRows5404++actualRows5405++actualRows5406++actualRows5407
def partOps82 : List WordIR.Op := [.bnot 5343,.band 5338 5344,.bxor 5333 5345,.shr 5346 31,.literal (BitVec.ofNat 32 1),.bxor 5347 5348,.bnot 5349,.literal (BitVec.ofNat 32 1),.badd 5350 5351,.bnot 5352,.band 5353 1962,.bxor 5328 5354,.literal (BitVec.ofNat 32 2),.bxor 616 5356,.literal (BitVec.ofNat 32 0),.bnot 5358,.band 5357 5359,.literal (BitVec.ofNat 32 2),.bxor 616 5361,.literal (BitVec.ofNat 32 0),.bnot 5363,.bxor 5362 5364,.literal (BitVec.ofNat 32 2),.bxor 616 5366,.literal (BitVec.ofNat 32 0),.bnot 5368,.badd 5367 5369,.bnot 5370,.band 5365 5371,.bxor 5360 5372,.shr 5373 31,.literal (BitVec.ofNat 32 1),.bxor 5374 5375,.bnot 5376,.literal (BitVec.ofNat 32 1),.badd 5377 5378,.band 5379 2157,.literal (BitVec.ofNat 32 2),.bxor 616 5381,.literal (BitVec.ofNat 32 0),.bnot 5383,.band 5382 5384,.literal (BitVec.ofNat 32 2),.bxor 616 5386,.literal (BitVec.ofNat 32 0),.bnot 5388,.bxor 5387 5389,.literal (BitVec.ofNat 32 2),.bxor 616 5391,.literal (BitVec.ofNat 32 0),.bnot 5393,.badd 5392 5394,.bnot 5395,.band 5390 5396,.bxor 5385 5397,.shr 5398 31,.literal (BitVec.ofNat 32 1),.bxor 5399 5400,.bnot 5401,.literal (BitVec.ofNat 32 1),.badd 5402 5403,.bnot 5404,.band 5405 1965,.bxor 5380 5406]
theorem partExact82 : partRows82=WordField.rows actualModulus 5344 partOps82 := by
  simp only [partRows82,partOps82,WordField.rows,rows5344,rows5345,rows5346,rows5347,rows5348,rows5349,rows5350,rows5351,rows5352,rows5353,rows5354,rows5355,rows5356,rows5357,rows5358,rows5359,rows5360,rows5361,rows5362,rows5363,rows5364,rows5365,rows5366,rows5367,rows5368,rows5369,rows5370,rows5371,rows5372,rows5373,rows5374,rows5375,rows5376,rows5377,rows5378,rows5379,rows5380,rows5381,rows5382,rows5383,rows5384,rows5385,rows5386,rows5387,rows5388,rows5389,rows5390,rows5391,rows5392,rows5393,rows5394,rows5395,rows5396,rows5397,rows5398,rows5399,rows5400,rows5401,rows5402,rows5403,rows5404,rows5405,rows5406,rows5407,List.append_assoc,List.append_nil]
theorem partLength82 : partOps82.length=64 := by decide
theorem partStats82 : partRows82.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows82=334944 := by
  simp only [partRows82,List.length_append,MatrixRowBlocks.rows_weight_append,stats5344.1,stats5344.2,stats5345.1,stats5345.2,stats5346.1,stats5346.2,stats5347.1,stats5347.2,stats5348.1,stats5348.2,stats5349.1,stats5349.2,stats5350.1,stats5350.2,stats5351.1,stats5351.2,stats5352.1,stats5352.2,stats5353.1,stats5353.2,stats5354.1,stats5354.2,stats5355.1,stats5355.2,stats5356.1,stats5356.2,stats5357.1,stats5357.2,stats5358.1,stats5358.2,stats5359.1,stats5359.2,stats5360.1,stats5360.2,stats5361.1,stats5361.2,stats5362.1,stats5362.2,stats5363.1,stats5363.2,stats5364.1,stats5364.2,stats5365.1,stats5365.2,stats5366.1,stats5366.2,stats5367.1,stats5367.2,stats5368.1,stats5368.2,stats5369.1,stats5369.2,stats5370.1,stats5370.2,stats5371.1,stats5371.2,stats5372.1,stats5372.2,stats5373.1,stats5373.2,stats5374.1,stats5374.2,stats5375.1,stats5375.2,stats5376.1,stats5376.2,stats5377.1,stats5377.2,stats5378.1,stats5378.2,stats5379.1,stats5379.2,stats5380.1,stats5380.2,stats5381.1,stats5381.2,stats5382.1,stats5382.2,stats5383.1,stats5383.2,stats5384.1,stats5384.2,stats5385.1,stats5385.2,stats5386.1,stats5386.2,stats5387.1,stats5387.2,stats5388.1,stats5388.2,stats5389.1,stats5389.2,stats5390.1,stats5390.2,stats5391.1,stats5391.2,stats5392.1,stats5392.2,stats5393.1,stats5393.2,stats5394.1,stats5394.2,stats5395.1,stats5395.2,stats5396.1,stats5396.2,stats5397.1,stats5397.2,stats5398.1,stats5398.2,stats5399.1,stats5399.2,stats5400.1,stats5400.2,stats5401.1,stats5401.2,stats5402.1,stats5402.2,stats5403.1,stats5403.2,stats5404.1,stats5404.2,stats5405.1,stats5405.2,stats5406.1,stats5406.2,stats5407.1,stats5407.2]
  decide
end PairedPathRoundCheckedRows
