import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData83
import FrameHashControllerInstructionMatrixData84
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5355 : actualRows5355=WordField.canonicalRows actualModulus 5355 (.shr 2135 8) := by core033_kernel_decide
theorem stats5355 : actualRows5355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5355=4548 := by core033_kernel_decide
theorem rows5356 : actualRows5356=WordField.canonicalRows actualModulus 5356 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5356 : actualRows5356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5356=2820 := by core033_kernel_decide
theorem rows5357 : actualRows5357=WordField.canonicalRows actualModulus 5357 (.bnot 5356) := by core033_kernel_decide
theorem stats5357 : actualRows5357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5357=6276 := by core033_kernel_decide
theorem rows5358 : actualRows5358=WordField.canonicalRows actualModulus 5358 (.bxor 5355 5357) := by core033_kernel_decide
theorem stats5358 : actualRows5358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5358=7428 := by core033_kernel_decide
theorem rows5359 : actualRows5359=WordField.canonicalRows actualModulus 5359 (.shr 2135 8) := by core033_kernel_decide
theorem stats5359 : actualRows5359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5359=4548 := by core033_kernel_decide
theorem rows5360 : actualRows5360=WordField.canonicalRows actualModulus 5360 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5360 : actualRows5360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5360=2820 := by core033_kernel_decide
theorem rows5361 : actualRows5361=WordField.canonicalRows actualModulus 5361 (.bnot 5360) := by core033_kernel_decide
theorem stats5361 : actualRows5361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5361=6276 := by core033_kernel_decide
theorem rows5362 : actualRows5362=WordField.canonicalRows actualModulus 5362 (.badd 5359 5361) := by core033_kernel_decide
theorem stats5362 : actualRows5362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5362=5388 := by core033_kernel_decide
theorem rows5363 : actualRows5363=WordField.canonicalRows actualModulus 5363 (.bnot 5362) := by core033_kernel_decide
theorem stats5363 : actualRows5363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5363=6276 := by core033_kernel_decide
theorem rows5364 : actualRows5364=WordField.canonicalRows actualModulus 5364 (.band 5358 5363) := by core033_kernel_decide
theorem stats5364 : actualRows5364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5364=5124 := by core033_kernel_decide
theorem rows5365 : actualRows5365=WordField.canonicalRows actualModulus 5365 (.bxor 5354 5364) := by core033_kernel_decide
theorem stats5365 : actualRows5365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5365=7428 := by core033_kernel_decide
theorem rows5366 : actualRows5366=WordField.canonicalRows actualModulus 5366 (.shr 5365 31) := by core033_kernel_decide
theorem stats5366 : actualRows5366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5366=2892 := by core033_kernel_decide
theorem rows5367 : actualRows5367=WordField.canonicalRows actualModulus 5367 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5367 : actualRows5367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5367=2892 := by core033_kernel_decide
theorem rows5368 : actualRows5368=WordField.canonicalRows actualModulus 5368 (.bxor 5366 5367) := by core033_kernel_decide
theorem stats5368 : actualRows5368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5368=7428 := by core033_kernel_decide
theorem rows5369 : actualRows5369=WordField.canonicalRows actualModulus 5369 (.shr 2187 8) := by core033_kernel_decide
theorem stats5369 : actualRows5369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5369=4548 := by core033_kernel_decide
theorem rows5370 : actualRows5370=WordField.canonicalRows actualModulus 5370 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5370 : actualRows5370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5370=2820 := by core033_kernel_decide
theorem rows5371 : actualRows5371=WordField.canonicalRows actualModulus 5371 (.bnot 5370) := by core033_kernel_decide
theorem stats5371 : actualRows5371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5371=6276 := by core033_kernel_decide
theorem rows5372 : actualRows5372=WordField.canonicalRows actualModulus 5372 (.band 5369 5371) := by core033_kernel_decide
theorem stats5372 : actualRows5372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5372=5124 := by core033_kernel_decide
theorem rows5373 : actualRows5373=WordField.canonicalRows actualModulus 5373 (.shr 2187 8) := by core033_kernel_decide
theorem stats5373 : actualRows5373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5373=4548 := by core033_kernel_decide
theorem rows5374 : actualRows5374=WordField.canonicalRows actualModulus 5374 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5374 : actualRows5374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5374=2820 := by core033_kernel_decide
theorem rows5375 : actualRows5375=WordField.canonicalRows actualModulus 5375 (.bnot 5374) := by core033_kernel_decide
theorem stats5375 : actualRows5375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5375=6276 := by core033_kernel_decide
theorem rows5376 : actualRows5376=WordField.canonicalRows actualModulus 5376 (.bxor 5373 5375) := by core033_kernel_decide
theorem stats5376 : actualRows5376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5376=7428 := by core033_kernel_decide
theorem rows5377 : actualRows5377=WordField.canonicalRows actualModulus 5377 (.shr 2187 8) := by core033_kernel_decide
theorem stats5377 : actualRows5377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5377=4548 := by core033_kernel_decide
theorem rows5378 : actualRows5378=WordField.canonicalRows actualModulus 5378 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5378 : actualRows5378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5378=2820 := by core033_kernel_decide
theorem rows5379 : actualRows5379=WordField.canonicalRows actualModulus 5379 (.bnot 5378) := by core033_kernel_decide
theorem stats5379 : actualRows5379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5379=6276 := by core033_kernel_decide
theorem rows5380 : actualRows5380=WordField.canonicalRows actualModulus 5380 (.badd 5377 5379) := by core033_kernel_decide
theorem stats5380 : actualRows5380.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5380=5388 := by core033_kernel_decide
theorem rows5381 : actualRows5381=WordField.canonicalRows actualModulus 5381 (.bnot 5380) := by core033_kernel_decide
theorem stats5381 : actualRows5381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5381=6276 := by core033_kernel_decide
theorem rows5382 : actualRows5382=WordField.canonicalRows actualModulus 5382 (.band 5376 5381) := by core033_kernel_decide
theorem stats5382 : actualRows5382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5382=5124 := by core033_kernel_decide
theorem rows5383 : actualRows5383=WordField.canonicalRows actualModulus 5383 (.bxor 5372 5382) := by core033_kernel_decide
theorem stats5383 : actualRows5383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5383=7428 := by core033_kernel_decide
theorem rows5384 : actualRows5384=WordField.canonicalRows actualModulus 5384 (.shr 5383 31) := by core033_kernel_decide
theorem stats5384 : actualRows5384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5384=2892 := by core033_kernel_decide
theorem rows5385 : actualRows5385=WordField.canonicalRows actualModulus 5385 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5385 : actualRows5385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5385=2892 := by core033_kernel_decide
theorem rows5386 : actualRows5386=WordField.canonicalRows actualModulus 5386 (.bxor 5384 5385) := by core033_kernel_decide
theorem stats5386 : actualRows5386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5386=7428 := by core033_kernel_decide
theorem rows5387 : actualRows5387=WordField.canonicalRows actualModulus 5387 (.shr 2239 8) := by core033_kernel_decide
theorem stats5387 : actualRows5387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5387=4548 := by core033_kernel_decide
theorem rows5388 : actualRows5388=WordField.canonicalRows actualModulus 5388 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5388 : actualRows5388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5388=2820 := by core033_kernel_decide
theorem rows5389 : actualRows5389=WordField.canonicalRows actualModulus 5389 (.bnot 5388) := by core033_kernel_decide
theorem stats5389 : actualRows5389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5389=6276 := by core033_kernel_decide
theorem rows5390 : actualRows5390=WordField.canonicalRows actualModulus 5390 (.band 5387 5389) := by core033_kernel_decide
theorem stats5390 : actualRows5390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5390=5124 := by core033_kernel_decide
theorem rows5391 : actualRows5391=WordField.canonicalRows actualModulus 5391 (.shr 2239 8) := by core033_kernel_decide
theorem stats5391 : actualRows5391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5391=4548 := by core033_kernel_decide
theorem rows5392 : actualRows5392=WordField.canonicalRows actualModulus 5392 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5392 : actualRows5392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5392=2820 := by core033_kernel_decide
theorem rows5393 : actualRows5393=WordField.canonicalRows actualModulus 5393 (.bnot 5392) := by core033_kernel_decide
theorem stats5393 : actualRows5393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5393=6276 := by core033_kernel_decide
theorem rows5394 : actualRows5394=WordField.canonicalRows actualModulus 5394 (.bxor 5391 5393) := by core033_kernel_decide
theorem stats5394 : actualRows5394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5394=7428 := by core033_kernel_decide
theorem rows5395 : actualRows5395=WordField.canonicalRows actualModulus 5395 (.shr 2239 8) := by core033_kernel_decide
theorem stats5395 : actualRows5395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5395=4548 := by core033_kernel_decide
theorem rows5396 : actualRows5396=WordField.canonicalRows actualModulus 5396 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5396 : actualRows5396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5396=2820 := by core033_kernel_decide
theorem rows5397 : actualRows5397=WordField.canonicalRows actualModulus 5397 (.bnot 5396) := by core033_kernel_decide
theorem stats5397 : actualRows5397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5397=6276 := by core033_kernel_decide
theorem rows5398 : actualRows5398=WordField.canonicalRows actualModulus 5398 (.badd 5395 5397) := by core033_kernel_decide
theorem stats5398 : actualRows5398.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5398=5388 := by core033_kernel_decide
theorem rows5399 : actualRows5399=WordField.canonicalRows actualModulus 5399 (.bnot 5398) := by core033_kernel_decide
theorem stats5399 : actualRows5399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5399=6276 := by core033_kernel_decide
theorem rows5400 : actualRows5400=WordField.canonicalRows actualModulus 5400 (.band 5394 5399) := by core033_kernel_decide
theorem stats5400 : actualRows5400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5400=5124 := by core033_kernel_decide
theorem rows5401 : actualRows5401=WordField.canonicalRows actualModulus 5401 (.bxor 5390 5400) := by core033_kernel_decide
theorem stats5401 : actualRows5401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5401=7428 := by core033_kernel_decide
theorem rows5402 : actualRows5402=WordField.canonicalRows actualModulus 5402 (.shr 5401 31) := by core033_kernel_decide
theorem stats5402 : actualRows5402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5402=2892 := by core033_kernel_decide
theorem rows5403 : actualRows5403=WordField.canonicalRows actualModulus 5403 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5403 : actualRows5403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5403=2892 := by core033_kernel_decide
theorem rows5404 : actualRows5404=WordField.canonicalRows actualModulus 5404 (.bxor 5402 5403) := by core033_kernel_decide
theorem stats5404 : actualRows5404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5404=7428 := by core033_kernel_decide
theorem rows5405 : actualRows5405=WordField.canonicalRows actualModulus 5405 (.shr 2291 8) := by core033_kernel_decide
theorem stats5405 : actualRows5405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5405=4548 := by core033_kernel_decide
theorem rows5406 : actualRows5406=WordField.canonicalRows actualModulus 5406 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5406 : actualRows5406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5406=2820 := by core033_kernel_decide
theorem rows5407 : actualRows5407=WordField.canonicalRows actualModulus 5407 (.bnot 5406) := by core033_kernel_decide
theorem stats5407 : actualRows5407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5407=6276 := by core033_kernel_decide
theorem rows5408 : actualRows5408=WordField.canonicalRows actualModulus 5408 (.band 5405 5407) := by core033_kernel_decide
theorem stats5408 : actualRows5408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5408=5124 := by core033_kernel_decide
theorem rows5409 : actualRows5409=WordField.canonicalRows actualModulus 5409 (.shr 2291 8) := by core033_kernel_decide
theorem stats5409 : actualRows5409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5409=4548 := by core033_kernel_decide
theorem rows5410 : actualRows5410=WordField.canonicalRows actualModulus 5410 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5410 : actualRows5410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5410=2820 := by core033_kernel_decide
theorem rows5411 : actualRows5411=WordField.canonicalRows actualModulus 5411 (.bnot 5410) := by core033_kernel_decide
theorem stats5411 : actualRows5411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5411=6276 := by core033_kernel_decide
theorem rows5412 : actualRows5412=WordField.canonicalRows actualModulus 5412 (.bxor 5409 5411) := by core033_kernel_decide
theorem stats5412 : actualRows5412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5412=7428 := by core033_kernel_decide
theorem rows5413 : actualRows5413=WordField.canonicalRows actualModulus 5413 (.shr 2291 8) := by core033_kernel_decide
theorem stats5413 : actualRows5413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5413=4548 := by core033_kernel_decide
theorem rows5414 : actualRows5414=WordField.canonicalRows actualModulus 5414 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5414 : actualRows5414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5414=2820 := by core033_kernel_decide
theorem rows5415 : actualRows5415=WordField.canonicalRows actualModulus 5415 (.bnot 5414) := by core033_kernel_decide
theorem stats5415 : actualRows5415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5415=6276 := by core033_kernel_decide
theorem rows5416 : actualRows5416=WordField.canonicalRows actualModulus 5416 (.badd 5413 5415) := by core033_kernel_decide
theorem stats5416 : actualRows5416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5416=5388 := by core033_kernel_decide
theorem rows5417 : actualRows5417=WordField.canonicalRows actualModulus 5417 (.bnot 5416) := by core033_kernel_decide
theorem stats5417 : actualRows5417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5417=6276 := by core033_kernel_decide
theorem rows5418 : actualRows5418=WordField.canonicalRows actualModulus 5418 (.band 5412 5417) := by core033_kernel_decide
theorem stats5418 : actualRows5418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5418=5124 := by core033_kernel_decide
def partRows83 : List R1CS.Row := actualRows5355++actualRows5356++actualRows5357++actualRows5358++actualRows5359++actualRows5360++actualRows5361++actualRows5362++actualRows5363++actualRows5364++actualRows5365++actualRows5366++actualRows5367++actualRows5368++actualRows5369++actualRows5370++actualRows5371++actualRows5372++actualRows5373++actualRows5374++actualRows5375++actualRows5376++actualRows5377++actualRows5378++actualRows5379++actualRows5380++actualRows5381++actualRows5382++actualRows5383++actualRows5384++actualRows5385++actualRows5386++actualRows5387++actualRows5388++actualRows5389++actualRows5390++actualRows5391++actualRows5392++actualRows5393++actualRows5394++actualRows5395++actualRows5396++actualRows5397++actualRows5398++actualRows5399++actualRows5400++actualRows5401++actualRows5402++actualRows5403++actualRows5404++actualRows5405++actualRows5406++actualRows5407++actualRows5408++actualRows5409++actualRows5410++actualRows5411++actualRows5412++actualRows5413++actualRows5414++actualRows5415++actualRows5416++actualRows5417++actualRows5418
def partOps83 : List WordIR.Op := [.shr 2135 8,.literal (BitVec.ofNat 32 0),.bnot 5356,.bxor 5355 5357,.shr 2135 8,.literal (BitVec.ofNat 32 0),.bnot 5360,.badd 5359 5361,.bnot 5362,.band 5358 5363,.bxor 5354 5364,.shr 5365 31,.literal (BitVec.ofNat 32 1),.bxor 5366 5367,.shr 2187 8,.literal (BitVec.ofNat 32 0),.bnot 5370,.band 5369 5371,.shr 2187 8,.literal (BitVec.ofNat 32 0),.bnot 5374,.bxor 5373 5375,.shr 2187 8,.literal (BitVec.ofNat 32 0),.bnot 5378,.badd 5377 5379,.bnot 5380,.band 5376 5381,.bxor 5372 5382,.shr 5383 31,.literal (BitVec.ofNat 32 1),.bxor 5384 5385,.shr 2239 8,.literal (BitVec.ofNat 32 0),.bnot 5388,.band 5387 5389,.shr 2239 8,.literal (BitVec.ofNat 32 0),.bnot 5392,.bxor 5391 5393,.shr 2239 8,.literal (BitVec.ofNat 32 0),.bnot 5396,.badd 5395 5397,.bnot 5398,.band 5394 5399,.bxor 5390 5400,.shr 5401 31,.literal (BitVec.ofNat 32 1),.bxor 5402 5403,.shr 2291 8,.literal (BitVec.ofNat 32 0),.bnot 5406,.band 5405 5407,.shr 2291 8,.literal (BitVec.ofNat 32 0),.bnot 5410,.bxor 5409 5411,.shr 2291 8,.literal (BitVec.ofNat 32 0),.bnot 5414,.badd 5413 5415,.bnot 5416,.band 5412 5417]
theorem partExact83 : partRows83=WordField.rows actualModulus 5355 partOps83 := by
  simp only [partRows83,partOps83,WordField.rows,rows5355,rows5356,rows5357,rows5358,rows5359,rows5360,rows5361,rows5362,rows5363,rows5364,rows5365,rows5366,rows5367,rows5368,rows5369,rows5370,rows5371,rows5372,rows5373,rows5374,rows5375,rows5376,rows5377,rows5378,rows5379,rows5380,rows5381,rows5382,rows5383,rows5384,rows5385,rows5386,rows5387,rows5388,rows5389,rows5390,rows5391,rows5392,rows5393,rows5394,rows5395,rows5396,rows5397,rows5398,rows5399,rows5400,rows5401,rows5402,rows5403,rows5404,rows5405,rows5406,rows5407,rows5408,rows5409,rows5410,rows5411,rows5412,rows5413,rows5414,rows5415,rows5416,rows5417,rows5418,List.append_assoc,List.append_nil]
theorem partLength83 : partOps83.length=64 := by decide
theorem partStats83 : partRows83.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows83=324240 := by
  simp only [partRows83,List.length_append,MatrixRowBlocks.rows_weight_append,stats5355.1,stats5355.2,stats5356.1,stats5356.2,stats5357.1,stats5357.2,stats5358.1,stats5358.2,stats5359.1,stats5359.2,stats5360.1,stats5360.2,stats5361.1,stats5361.2,stats5362.1,stats5362.2,stats5363.1,stats5363.2,stats5364.1,stats5364.2,stats5365.1,stats5365.2,stats5366.1,stats5366.2,stats5367.1,stats5367.2,stats5368.1,stats5368.2,stats5369.1,stats5369.2,stats5370.1,stats5370.2,stats5371.1,stats5371.2,stats5372.1,stats5372.2,stats5373.1,stats5373.2,stats5374.1,stats5374.2,stats5375.1,stats5375.2,stats5376.1,stats5376.2,stats5377.1,stats5377.2,stats5378.1,stats5378.2,stats5379.1,stats5379.2,stats5380.1,stats5380.2,stats5381.1,stats5381.2,stats5382.1,stats5382.2,stats5383.1,stats5383.2,stats5384.1,stats5384.2,stats5385.1,stats5385.2,stats5386.1,stats5386.2,stats5387.1,stats5387.2,stats5388.1,stats5388.2,stats5389.1,stats5389.2,stats5390.1,stats5390.2,stats5391.1,stats5391.2,stats5392.1,stats5392.2,stats5393.1,stats5393.2,stats5394.1,stats5394.2,stats5395.1,stats5395.2,stats5396.1,stats5396.2,stats5397.1,stats5397.2,stats5398.1,stats5398.2,stats5399.1,stats5399.2,stats5400.1,stats5400.2,stats5401.1,stats5401.2,stats5402.1,stats5402.2,stats5403.1,stats5403.2,stats5404.1,stats5404.2,stats5405.1,stats5405.2,stats5406.1,stats5406.2,stats5407.1,stats5407.2,stats5408.1,stats5408.2,stats5409.1,stats5409.2,stats5410.1,stats5410.2,stats5411.1,stats5411.2,stats5412.1,stats5412.2,stats5413.1,stats5413.2,stats5414.1,stats5414.2,stats5415.1,stats5415.2,stats5416.1,stats5416.2,stats5417.1,stats5417.2,stats5418.1,stats5418.2]
  decide
end FrameHashControllerCheckedRows
