import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData83
import PathRoundDispatchInstructionMatrixData84
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5355 : actualRows5355=WordField.canonicalRows actualModulus 5355 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5355 : actualRows5355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5355=2892 := by core033_kernel_decide
theorem rows5356 : actualRows5356=WordField.canonicalRows actualModulus 5356 (.bxor 5354 5355) := by core033_kernel_decide
theorem stats5356 : actualRows5356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5356=7428 := by core033_kernel_decide
theorem rows5357 : actualRows5357=WordField.canonicalRows actualModulus 5357 (.bnot 5356) := by core033_kernel_decide
theorem stats5357 : actualRows5357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5357=6276 := by core033_kernel_decide
theorem rows5358 : actualRows5358=WordField.canonicalRows actualModulus 5358 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5358 : actualRows5358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5358=2892 := by core033_kernel_decide
theorem rows5359 : actualRows5359=WordField.canonicalRows actualModulus 5359 (.badd 5357 5358) := by core033_kernel_decide
theorem stats5359 : actualRows5359.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5359=5388 := by core033_kernel_decide
theorem rows5360 : actualRows5360=WordField.canonicalRows actualModulus 5360 (.bnot 5359) := by core033_kernel_decide
theorem stats5360 : actualRows5360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5360=6276 := by core033_kernel_decide
theorem rows5361 : actualRows5361=WordField.canonicalRows actualModulus 5361 (.band 5360 1472) := by core033_kernel_decide
theorem stats5361 : actualRows5361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5361=5124 := by core033_kernel_decide
theorem rows5362 : actualRows5362=WordField.canonicalRows actualModulus 5362 (.bxor 5335 5361) := by core033_kernel_decide
theorem stats5362 : actualRows5362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5362=7428 := by core033_kernel_decide
theorem rows5363 : actualRows5363=WordField.canonicalRows actualModulus 5363 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5363 : actualRows5363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5363=2892 := by core033_kernel_decide
theorem rows5364 : actualRows5364=WordField.canonicalRows actualModulus 5364 (.bxor 96 5363) := by core033_kernel_decide
theorem stats5364 : actualRows5364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5364=7428 := by core033_kernel_decide
theorem rows5365 : actualRows5365=WordField.canonicalRows actualModulus 5365 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5365 : actualRows5365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5365=2820 := by core033_kernel_decide
theorem rows5366 : actualRows5366=WordField.canonicalRows actualModulus 5366 (.bnot 5365) := by core033_kernel_decide
theorem stats5366 : actualRows5366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5366=6276 := by core033_kernel_decide
theorem rows5367 : actualRows5367=WordField.canonicalRows actualModulus 5367 (.band 5364 5366) := by core033_kernel_decide
theorem stats5367 : actualRows5367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5367=5124 := by core033_kernel_decide
theorem rows5368 : actualRows5368=WordField.canonicalRows actualModulus 5368 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5368 : actualRows5368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5368=2892 := by core033_kernel_decide
theorem rows5369 : actualRows5369=WordField.canonicalRows actualModulus 5369 (.bxor 96 5368) := by core033_kernel_decide
theorem stats5369 : actualRows5369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5369=7428 := by core033_kernel_decide
theorem rows5370 : actualRows5370=WordField.canonicalRows actualModulus 5370 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5370 : actualRows5370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5370=2820 := by core033_kernel_decide
theorem rows5371 : actualRows5371=WordField.canonicalRows actualModulus 5371 (.bnot 5370) := by core033_kernel_decide
theorem stats5371 : actualRows5371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5371=6276 := by core033_kernel_decide
theorem rows5372 : actualRows5372=WordField.canonicalRows actualModulus 5372 (.bxor 5369 5371) := by core033_kernel_decide
theorem stats5372 : actualRows5372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5372=7428 := by core033_kernel_decide
theorem rows5373 : actualRows5373=WordField.canonicalRows actualModulus 5373 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5373 : actualRows5373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5373=2892 := by core033_kernel_decide
theorem rows5374 : actualRows5374=WordField.canonicalRows actualModulus 5374 (.bxor 96 5373) := by core033_kernel_decide
theorem stats5374 : actualRows5374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5374=7428 := by core033_kernel_decide
theorem rows5375 : actualRows5375=WordField.canonicalRows actualModulus 5375 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5375 : actualRows5375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5375=2820 := by core033_kernel_decide
theorem rows5376 : actualRows5376=WordField.canonicalRows actualModulus 5376 (.bnot 5375) := by core033_kernel_decide
theorem stats5376 : actualRows5376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5376=6276 := by core033_kernel_decide
theorem rows5377 : actualRows5377=WordField.canonicalRows actualModulus 5377 (.badd 5374 5376) := by core033_kernel_decide
theorem stats5377 : actualRows5377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5377=5388 := by core033_kernel_decide
theorem rows5378 : actualRows5378=WordField.canonicalRows actualModulus 5378 (.bnot 5377) := by core033_kernel_decide
theorem stats5378 : actualRows5378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5378=6276 := by core033_kernel_decide
theorem rows5379 : actualRows5379=WordField.canonicalRows actualModulus 5379 (.band 5372 5378) := by core033_kernel_decide
theorem stats5379 : actualRows5379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5379=5124 := by core033_kernel_decide
theorem rows5380 : actualRows5380=WordField.canonicalRows actualModulus 5380 (.bxor 5367 5379) := by core033_kernel_decide
theorem stats5380 : actualRows5380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5380=7428 := by core033_kernel_decide
theorem rows5381 : actualRows5381=WordField.canonicalRows actualModulus 5381 (.shr 5380 31) := by core033_kernel_decide
theorem stats5381 : actualRows5381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5381=2892 := by core033_kernel_decide
theorem rows5382 : actualRows5382=WordField.canonicalRows actualModulus 5382 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5382 : actualRows5382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5382=2892 := by core033_kernel_decide
theorem rows5383 : actualRows5383=WordField.canonicalRows actualModulus 5383 (.bxor 5381 5382) := by core033_kernel_decide
theorem stats5383 : actualRows5383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5383=7428 := by core033_kernel_decide
theorem rows5384 : actualRows5384=WordField.canonicalRows actualModulus 5384 (.bnot 5383) := by core033_kernel_decide
theorem stats5384 : actualRows5384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5384=6276 := by core033_kernel_decide
theorem rows5385 : actualRows5385=WordField.canonicalRows actualModulus 5385 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5385 : actualRows5385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5385=2892 := by core033_kernel_decide
theorem rows5386 : actualRows5386=WordField.canonicalRows actualModulus 5386 (.badd 5384 5385) := by core033_kernel_decide
theorem stats5386 : actualRows5386.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5386=5388 := by core033_kernel_decide
theorem rows5387 : actualRows5387=WordField.canonicalRows actualModulus 5387 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5387 : actualRows5387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5387=2820 := by core033_kernel_decide
theorem rows5388 : actualRows5388=WordField.canonicalRows actualModulus 5388 (.band 5386 5387) := by core033_kernel_decide
theorem stats5388 : actualRows5388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5388=5124 := by core033_kernel_decide
theorem rows5389 : actualRows5389=WordField.canonicalRows actualModulus 5389 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5389 : actualRows5389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5389=2892 := by core033_kernel_decide
theorem rows5390 : actualRows5390=WordField.canonicalRows actualModulus 5390 (.bxor 96 5389) := by core033_kernel_decide
theorem stats5390 : actualRows5390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5390=7428 := by core033_kernel_decide
theorem rows5391 : actualRows5391=WordField.canonicalRows actualModulus 5391 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5391 : actualRows5391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5391=2820 := by core033_kernel_decide
theorem rows5392 : actualRows5392=WordField.canonicalRows actualModulus 5392 (.bnot 5391) := by core033_kernel_decide
theorem stats5392 : actualRows5392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5392=6276 := by core033_kernel_decide
theorem rows5393 : actualRows5393=WordField.canonicalRows actualModulus 5393 (.band 5390 5392) := by core033_kernel_decide
theorem stats5393 : actualRows5393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5393=5124 := by core033_kernel_decide
theorem rows5394 : actualRows5394=WordField.canonicalRows actualModulus 5394 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5394 : actualRows5394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5394=2892 := by core033_kernel_decide
theorem rows5395 : actualRows5395=WordField.canonicalRows actualModulus 5395 (.bxor 96 5394) := by core033_kernel_decide
theorem stats5395 : actualRows5395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5395=7428 := by core033_kernel_decide
theorem rows5396 : actualRows5396=WordField.canonicalRows actualModulus 5396 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5396 : actualRows5396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5396=2820 := by core033_kernel_decide
theorem rows5397 : actualRows5397=WordField.canonicalRows actualModulus 5397 (.bnot 5396) := by core033_kernel_decide
theorem stats5397 : actualRows5397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5397=6276 := by core033_kernel_decide
theorem rows5398 : actualRows5398=WordField.canonicalRows actualModulus 5398 (.bxor 5395 5397) := by core033_kernel_decide
theorem stats5398 : actualRows5398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5398=7428 := by core033_kernel_decide
theorem rows5399 : actualRows5399=WordField.canonicalRows actualModulus 5399 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5399 : actualRows5399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5399=2892 := by core033_kernel_decide
theorem rows5400 : actualRows5400=WordField.canonicalRows actualModulus 5400 (.bxor 96 5399) := by core033_kernel_decide
theorem stats5400 : actualRows5400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5400=7428 := by core033_kernel_decide
theorem rows5401 : actualRows5401=WordField.canonicalRows actualModulus 5401 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5401 : actualRows5401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5401=2820 := by core033_kernel_decide
theorem rows5402 : actualRows5402=WordField.canonicalRows actualModulus 5402 (.bnot 5401) := by core033_kernel_decide
theorem stats5402 : actualRows5402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5402=6276 := by core033_kernel_decide
theorem rows5403 : actualRows5403=WordField.canonicalRows actualModulus 5403 (.badd 5400 5402) := by core033_kernel_decide
theorem stats5403 : actualRows5403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5403=5388 := by core033_kernel_decide
theorem rows5404 : actualRows5404=WordField.canonicalRows actualModulus 5404 (.bnot 5403) := by core033_kernel_decide
theorem stats5404 : actualRows5404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5404=6276 := by core033_kernel_decide
theorem rows5405 : actualRows5405=WordField.canonicalRows actualModulus 5405 (.band 5398 5404) := by core033_kernel_decide
theorem stats5405 : actualRows5405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5405=5124 := by core033_kernel_decide
theorem rows5406 : actualRows5406=WordField.canonicalRows actualModulus 5406 (.bxor 5393 5405) := by core033_kernel_decide
theorem stats5406 : actualRows5406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5406=7428 := by core033_kernel_decide
theorem rows5407 : actualRows5407=WordField.canonicalRows actualModulus 5407 (.shr 5406 31) := by core033_kernel_decide
theorem stats5407 : actualRows5407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5407=2892 := by core033_kernel_decide
theorem rows5408 : actualRows5408=WordField.canonicalRows actualModulus 5408 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5408 : actualRows5408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5408=2892 := by core033_kernel_decide
theorem rows5409 : actualRows5409=WordField.canonicalRows actualModulus 5409 (.bxor 5407 5408) := by core033_kernel_decide
theorem stats5409 : actualRows5409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5409=7428 := by core033_kernel_decide
theorem rows5410 : actualRows5410=WordField.canonicalRows actualModulus 5410 (.bnot 5409) := by core033_kernel_decide
theorem stats5410 : actualRows5410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5410=6276 := by core033_kernel_decide
theorem rows5411 : actualRows5411=WordField.canonicalRows actualModulus 5411 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5411 : actualRows5411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5411=2892 := by core033_kernel_decide
theorem rows5412 : actualRows5412=WordField.canonicalRows actualModulus 5412 (.badd 5410 5411) := by core033_kernel_decide
theorem stats5412 : actualRows5412.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5412=5388 := by core033_kernel_decide
theorem rows5413 : actualRows5413=WordField.canonicalRows actualModulus 5413 (.bnot 5412) := by core033_kernel_decide
theorem stats5413 : actualRows5413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5413=6276 := by core033_kernel_decide
theorem rows5414 : actualRows5414=WordField.canonicalRows actualModulus 5414 (.band 5413 1475) := by core033_kernel_decide
theorem stats5414 : actualRows5414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5414=5124 := by core033_kernel_decide
theorem rows5415 : actualRows5415=WordField.canonicalRows actualModulus 5415 (.bxor 5388 5414) := by core033_kernel_decide
theorem stats5415 : actualRows5415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5415=7428 := by core033_kernel_decide
theorem rows5416 : actualRows5416=WordField.canonicalRows actualModulus 5416 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5416 : actualRows5416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5416=2892 := by core033_kernel_decide
theorem rows5417 : actualRows5417=WordField.canonicalRows actualModulus 5417 (.bxor 96 5416) := by core033_kernel_decide
theorem stats5417 : actualRows5417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5417=7428 := by core033_kernel_decide
theorem rows5418 : actualRows5418=WordField.canonicalRows actualModulus 5418 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5418 : actualRows5418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5418=2820 := by core033_kernel_decide
def partRows83 : List R1CS.Row := actualRows5355++actualRows5356++actualRows5357++actualRows5358++actualRows5359++actualRows5360++actualRows5361++actualRows5362++actualRows5363++actualRows5364++actualRows5365++actualRows5366++actualRows5367++actualRows5368++actualRows5369++actualRows5370++actualRows5371++actualRows5372++actualRows5373++actualRows5374++actualRows5375++actualRows5376++actualRows5377++actualRows5378++actualRows5379++actualRows5380++actualRows5381++actualRows5382++actualRows5383++actualRows5384++actualRows5385++actualRows5386++actualRows5387++actualRows5388++actualRows5389++actualRows5390++actualRows5391++actualRows5392++actualRows5393++actualRows5394++actualRows5395++actualRows5396++actualRows5397++actualRows5398++actualRows5399++actualRows5400++actualRows5401++actualRows5402++actualRows5403++actualRows5404++actualRows5405++actualRows5406++actualRows5407++actualRows5408++actualRows5409++actualRows5410++actualRows5411++actualRows5412++actualRows5413++actualRows5414++actualRows5415++actualRows5416++actualRows5417++actualRows5418
def partOps83 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 5354 5355,.bnot 5356,.literal (BitVec.ofNat 32 1),.badd 5357 5358,.bnot 5359,.band 5360 1472,.bxor 5335 5361,.literal (BitVec.ofNat 32 2),.bxor 96 5363,.literal (BitVec.ofNat 32 0),.bnot 5365,.band 5364 5366,.literal (BitVec.ofNat 32 2),.bxor 96 5368,.literal (BitVec.ofNat 32 0),.bnot 5370,.bxor 5369 5371,.literal (BitVec.ofNat 32 2),.bxor 96 5373,.literal (BitVec.ofNat 32 0),.bnot 5375,.badd 5374 5376,.bnot 5377,.band 5372 5378,.bxor 5367 5379,.shr 5380 31,.literal (BitVec.ofNat 32 1),.bxor 5381 5382,.bnot 5383,.literal (BitVec.ofNat 32 1),.badd 5384 5385,.literal (BitVec.ofNat 32 0),.band 5386 5387,.literal (BitVec.ofNat 32 2),.bxor 96 5389,.literal (BitVec.ofNat 32 0),.bnot 5391,.band 5390 5392,.literal (BitVec.ofNat 32 2),.bxor 96 5394,.literal (BitVec.ofNat 32 0),.bnot 5396,.bxor 5395 5397,.literal (BitVec.ofNat 32 2),.bxor 96 5399,.literal (BitVec.ofNat 32 0),.bnot 5401,.badd 5400 5402,.bnot 5403,.band 5398 5404,.bxor 5393 5405,.shr 5406 31,.literal (BitVec.ofNat 32 1),.bxor 5407 5408,.bnot 5409,.literal (BitVec.ofNat 32 1),.badd 5410 5411,.bnot 5412,.band 5413 1475,.bxor 5388 5414,.literal (BitVec.ofNat 32 2),.bxor 96 5416,.literal (BitVec.ofNat 32 0)]
theorem partExact83 : partRows83=WordField.rows actualModulus 5355 partOps83 := by
  simp only [partRows83,partOps83,WordField.rows,rows5355,rows5356,rows5357,rows5358,rows5359,rows5360,rows5361,rows5362,rows5363,rows5364,rows5365,rows5366,rows5367,rows5368,rows5369,rows5370,rows5371,rows5372,rows5373,rows5374,rows5375,rows5376,rows5377,rows5378,rows5379,rows5380,rows5381,rows5382,rows5383,rows5384,rows5385,rows5386,rows5387,rows5388,rows5389,rows5390,rows5391,rows5392,rows5393,rows5394,rows5395,rows5396,rows5397,rows5398,rows5399,rows5400,rows5401,rows5402,rows5403,rows5404,rows5405,rows5406,rows5407,rows5408,rows5409,rows5410,rows5411,rows5412,rows5413,rows5414,rows5415,rows5416,rows5417,rows5418,List.append_assoc,List.append_nil]
theorem partLength83 : partOps83.length=64 := by decide
theorem partStats83 : partRows83.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows83=329184 := by
  simp only [partRows83,List.length_append,MatrixRowBlocks.rows_weight_append,stats5355.1,stats5355.2,stats5356.1,stats5356.2,stats5357.1,stats5357.2,stats5358.1,stats5358.2,stats5359.1,stats5359.2,stats5360.1,stats5360.2,stats5361.1,stats5361.2,stats5362.1,stats5362.2,stats5363.1,stats5363.2,stats5364.1,stats5364.2,stats5365.1,stats5365.2,stats5366.1,stats5366.2,stats5367.1,stats5367.2,stats5368.1,stats5368.2,stats5369.1,stats5369.2,stats5370.1,stats5370.2,stats5371.1,stats5371.2,stats5372.1,stats5372.2,stats5373.1,stats5373.2,stats5374.1,stats5374.2,stats5375.1,stats5375.2,stats5376.1,stats5376.2,stats5377.1,stats5377.2,stats5378.1,stats5378.2,stats5379.1,stats5379.2,stats5380.1,stats5380.2,stats5381.1,stats5381.2,stats5382.1,stats5382.2,stats5383.1,stats5383.2,stats5384.1,stats5384.2,stats5385.1,stats5385.2,stats5386.1,stats5386.2,stats5387.1,stats5387.2,stats5388.1,stats5388.2,stats5389.1,stats5389.2,stats5390.1,stats5390.2,stats5391.1,stats5391.2,stats5392.1,stats5392.2,stats5393.1,stats5393.2,stats5394.1,stats5394.2,stats5395.1,stats5395.2,stats5396.1,stats5396.2,stats5397.1,stats5397.2,stats5398.1,stats5398.2,stats5399.1,stats5399.2,stats5400.1,stats5400.2,stats5401.1,stats5401.2,stats5402.1,stats5402.2,stats5403.1,stats5403.2,stats5404.1,stats5404.2,stats5405.1,stats5405.2,stats5406.1,stats5406.2,stats5407.1,stats5407.2,stats5408.1,stats5408.2,stats5409.1,stats5409.2,stats5410.1,stats5410.2,stats5411.1,stats5411.2,stats5412.1,stats5412.2,stats5413.1,stats5413.2,stats5414.1,stats5414.2,stats5415.1,stats5415.2,stats5416.1,stats5416.2,stats5417.1,stats5417.2,stats5418.1,stats5418.2]
  decide
end PathRoundDispatchCheckedRows
