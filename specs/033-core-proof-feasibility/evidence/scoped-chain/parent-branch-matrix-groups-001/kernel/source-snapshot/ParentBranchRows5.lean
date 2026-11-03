import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData5
import ParentBranchInstructionMatrixData6
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows346 : actualRows346=WordField.canonicalRows actualModulus 346 (.band 344 345) := by core033_kernel_decide
theorem stats346 : actualRows346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows346=5124 := by core033_kernel_decide
theorem rows347 : actualRows347=WordField.canonicalRows actualModulus 347 (.shr 8 24) := by core033_kernel_decide
theorem stats347 : actualRows347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows347=3396 := by core033_kernel_decide
theorem rows348 : actualRows348=WordField.canonicalRows actualModulus 348 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats348 : actualRows348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows348=3396 := by core033_kernel_decide
theorem rows349 : actualRows349=WordField.canonicalRows actualModulus 349 (.band 347 348) := by core033_kernel_decide
theorem stats349 : actualRows349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows349=5124 := by core033_kernel_decide
theorem rows350 : actualRows350=WordField.canonicalRows actualModulus 350 (.shr 9 0) := by core033_kernel_decide
theorem stats350 : actualRows350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows350=5124 := by core033_kernel_decide
theorem rows351 : actualRows351=WordField.canonicalRows actualModulus 351 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats351 : actualRows351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows351=3396 := by core033_kernel_decide
theorem rows352 : actualRows352=WordField.canonicalRows actualModulus 352 (.band 350 351) := by core033_kernel_decide
theorem stats352 : actualRows352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows352=5124 := by core033_kernel_decide
theorem rows353 : actualRows353=WordField.canonicalRows actualModulus 353 (.shr 9 8) := by core033_kernel_decide
theorem stats353 : actualRows353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows353=4548 := by core033_kernel_decide
theorem rows354 : actualRows354=WordField.canonicalRows actualModulus 354 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats354 : actualRows354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows354=3396 := by core033_kernel_decide
theorem rows355 : actualRows355=WordField.canonicalRows actualModulus 355 (.band 353 354) := by core033_kernel_decide
theorem stats355 : actualRows355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows355=5124 := by core033_kernel_decide
theorem rows356 : actualRows356=WordField.canonicalRows actualModulus 356 (.shr 9 16) := by core033_kernel_decide
theorem stats356 : actualRows356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows356=3972 := by core033_kernel_decide
theorem rows357 : actualRows357=WordField.canonicalRows actualModulus 357 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats357 : actualRows357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows357=3396 := by core033_kernel_decide
theorem rows358 : actualRows358=WordField.canonicalRows actualModulus 358 (.band 356 357) := by core033_kernel_decide
theorem stats358 : actualRows358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows358=5124 := by core033_kernel_decide
theorem rows359 : actualRows359=WordField.canonicalRows actualModulus 359 (.shr 9 24) := by core033_kernel_decide
theorem stats359 : actualRows359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows359=3396 := by core033_kernel_decide
theorem rows360 : actualRows360=WordField.canonicalRows actualModulus 360 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats360 : actualRows360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows360=3396 := by core033_kernel_decide
theorem rows361 : actualRows361=WordField.canonicalRows actualModulus 361 (.band 359 360) := by core033_kernel_decide
theorem stats361 : actualRows361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows361=5124 := by core033_kernel_decide
theorem rows362 : actualRows362=WordField.canonicalRows actualModulus 362 (.shr 10 0) := by core033_kernel_decide
theorem stats362 : actualRows362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows362=5124 := by core033_kernel_decide
theorem rows363 : actualRows363=WordField.canonicalRows actualModulus 363 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats363 : actualRows363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows363=3396 := by core033_kernel_decide
theorem rows364 : actualRows364=WordField.canonicalRows actualModulus 364 (.band 362 363) := by core033_kernel_decide
theorem stats364 : actualRows364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows364=5124 := by core033_kernel_decide
theorem rows365 : actualRows365=WordField.canonicalRows actualModulus 365 (.shr 10 8) := by core033_kernel_decide
theorem stats365 : actualRows365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows365=4548 := by core033_kernel_decide
theorem rows366 : actualRows366=WordField.canonicalRows actualModulus 366 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats366 : actualRows366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows366=3396 := by core033_kernel_decide
theorem rows367 : actualRows367=WordField.canonicalRows actualModulus 367 (.band 365 366) := by core033_kernel_decide
theorem stats367 : actualRows367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows367=5124 := by core033_kernel_decide
theorem rows368 : actualRows368=WordField.canonicalRows actualModulus 368 (.shr 10 16) := by core033_kernel_decide
theorem stats368 : actualRows368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows368=3972 := by core033_kernel_decide
theorem rows369 : actualRows369=WordField.canonicalRows actualModulus 369 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats369 : actualRows369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows369=3396 := by core033_kernel_decide
theorem rows370 : actualRows370=WordField.canonicalRows actualModulus 370 (.band 368 369) := by core033_kernel_decide
theorem stats370 : actualRows370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows370=5124 := by core033_kernel_decide
theorem rows371 : actualRows371=WordField.canonicalRows actualModulus 371 (.shr 10 24) := by core033_kernel_decide
theorem stats371 : actualRows371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows371=3396 := by core033_kernel_decide
theorem rows372 : actualRows372=WordField.canonicalRows actualModulus 372 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats372 : actualRows372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows372=3396 := by core033_kernel_decide
theorem rows373 : actualRows373=WordField.canonicalRows actualModulus 373 (.band 371 372) := by core033_kernel_decide
theorem stats373 : actualRows373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows373=5124 := by core033_kernel_decide
theorem rows374 : actualRows374=WordField.canonicalRows actualModulus 374 (.shr 11 0) := by core033_kernel_decide
theorem stats374 : actualRows374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows374=5124 := by core033_kernel_decide
theorem rows375 : actualRows375=WordField.canonicalRows actualModulus 375 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats375 : actualRows375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows375=3396 := by core033_kernel_decide
theorem rows376 : actualRows376=WordField.canonicalRows actualModulus 376 (.band 374 375) := by core033_kernel_decide
theorem stats376 : actualRows376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows376=5124 := by core033_kernel_decide
theorem rows377 : actualRows377=WordField.canonicalRows actualModulus 377 (.shr 11 8) := by core033_kernel_decide
theorem stats377 : actualRows377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows377=4548 := by core033_kernel_decide
theorem rows378 : actualRows378=WordField.canonicalRows actualModulus 378 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats378 : actualRows378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows378=3396 := by core033_kernel_decide
theorem rows379 : actualRows379=WordField.canonicalRows actualModulus 379 (.band 377 378) := by core033_kernel_decide
theorem stats379 : actualRows379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows379=5124 := by core033_kernel_decide
theorem rows380 : actualRows380=WordField.canonicalRows actualModulus 380 (.shr 11 16) := by core033_kernel_decide
theorem stats380 : actualRows380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows380=3972 := by core033_kernel_decide
theorem rows381 : actualRows381=WordField.canonicalRows actualModulus 381 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats381 : actualRows381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows381=3396 := by core033_kernel_decide
theorem rows382 : actualRows382=WordField.canonicalRows actualModulus 382 (.band 380 381) := by core033_kernel_decide
theorem stats382 : actualRows382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows382=5124 := by core033_kernel_decide
theorem rows383 : actualRows383=WordField.canonicalRows actualModulus 383 (.shr 11 24) := by core033_kernel_decide
theorem stats383 : actualRows383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows383=3396 := by core033_kernel_decide
theorem rows384 : actualRows384=WordField.canonicalRows actualModulus 384 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats384 : actualRows384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows384=3396 := by core033_kernel_decide
theorem rows385 : actualRows385=WordField.canonicalRows actualModulus 385 (.band 383 384) := by core033_kernel_decide
theorem stats385 : actualRows385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows385=5124 := by core033_kernel_decide
theorem rows386 : actualRows386=WordField.canonicalRows actualModulus 386 (.shr 12 0) := by core033_kernel_decide
theorem stats386 : actualRows386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows386=5124 := by core033_kernel_decide
theorem rows387 : actualRows387=WordField.canonicalRows actualModulus 387 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats387 : actualRows387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows387=3396 := by core033_kernel_decide
theorem rows388 : actualRows388=WordField.canonicalRows actualModulus 388 (.band 386 387) := by core033_kernel_decide
theorem stats388 : actualRows388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows388=5124 := by core033_kernel_decide
theorem rows389 : actualRows389=WordField.canonicalRows actualModulus 389 (.shr 12 8) := by core033_kernel_decide
theorem stats389 : actualRows389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows389=4548 := by core033_kernel_decide
theorem rows390 : actualRows390=WordField.canonicalRows actualModulus 390 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats390 : actualRows390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows390=3396 := by core033_kernel_decide
theorem rows391 : actualRows391=WordField.canonicalRows actualModulus 391 (.band 389 390) := by core033_kernel_decide
theorem stats391 : actualRows391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows391=5124 := by core033_kernel_decide
theorem rows392 : actualRows392=WordField.canonicalRows actualModulus 392 (.shr 12 16) := by core033_kernel_decide
theorem stats392 : actualRows392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows392=3972 := by core033_kernel_decide
theorem rows393 : actualRows393=WordField.canonicalRows actualModulus 393 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats393 : actualRows393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows393=3396 := by core033_kernel_decide
theorem rows394 : actualRows394=WordField.canonicalRows actualModulus 394 (.band 392 393) := by core033_kernel_decide
theorem stats394 : actualRows394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows394=5124 := by core033_kernel_decide
theorem rows395 : actualRows395=WordField.canonicalRows actualModulus 395 (.shr 12 24) := by core033_kernel_decide
theorem stats395 : actualRows395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows395=3396 := by core033_kernel_decide
theorem rows396 : actualRows396=WordField.canonicalRows actualModulus 396 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats396 : actualRows396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows396=3396 := by core033_kernel_decide
theorem rows397 : actualRows397=WordField.canonicalRows actualModulus 397 (.band 395 396) := by core033_kernel_decide
theorem stats397 : actualRows397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows397=5124 := by core033_kernel_decide
theorem rows398 : actualRows398=WordField.canonicalRows actualModulus 398 (.shr 13 0) := by core033_kernel_decide
theorem stats398 : actualRows398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows398=5124 := by core033_kernel_decide
theorem rows399 : actualRows399=WordField.canonicalRows actualModulus 399 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats399 : actualRows399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows399=3396 := by core033_kernel_decide
theorem rows400 : actualRows400=WordField.canonicalRows actualModulus 400 (.band 398 399) := by core033_kernel_decide
theorem stats400 : actualRows400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows400=5124 := by core033_kernel_decide
theorem rows401 : actualRows401=WordField.canonicalRows actualModulus 401 (.shr 13 8) := by core033_kernel_decide
theorem stats401 : actualRows401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows401=4548 := by core033_kernel_decide
theorem rows402 : actualRows402=WordField.canonicalRows actualModulus 402 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats402 : actualRows402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows402=3396 := by core033_kernel_decide
theorem rows403 : actualRows403=WordField.canonicalRows actualModulus 403 (.band 401 402) := by core033_kernel_decide
theorem stats403 : actualRows403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows403=5124 := by core033_kernel_decide
theorem rows404 : actualRows404=WordField.canonicalRows actualModulus 404 (.shr 13 16) := by core033_kernel_decide
theorem stats404 : actualRows404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows404=3972 := by core033_kernel_decide
theorem rows405 : actualRows405=WordField.canonicalRows actualModulus 405 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats405 : actualRows405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows405=3396 := by core033_kernel_decide
theorem rows406 : actualRows406=WordField.canonicalRows actualModulus 406 (.band 404 405) := by core033_kernel_decide
theorem stats406 : actualRows406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows406=5124 := by core033_kernel_decide
theorem rows407 : actualRows407=WordField.canonicalRows actualModulus 407 (.shr 13 24) := by core033_kernel_decide
theorem stats407 : actualRows407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows407=3396 := by core033_kernel_decide
theorem rows408 : actualRows408=WordField.canonicalRows actualModulus 408 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats408 : actualRows408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows408=3396 := by core033_kernel_decide
theorem rows409 : actualRows409=WordField.canonicalRows actualModulus 409 (.band 407 408) := by core033_kernel_decide
theorem stats409 : actualRows409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows409=5124 := by core033_kernel_decide
def partRows5 : List R1CS.Row := actualRows346++actualRows347++actualRows348++actualRows349++actualRows350++actualRows351++actualRows352++actualRows353++actualRows354++actualRows355++actualRows356++actualRows357++actualRows358++actualRows359++actualRows360++actualRows361++actualRows362++actualRows363++actualRows364++actualRows365++actualRows366++actualRows367++actualRows368++actualRows369++actualRows370++actualRows371++actualRows372++actualRows373++actualRows374++actualRows375++actualRows376++actualRows377++actualRows378++actualRows379++actualRows380++actualRows381++actualRows382++actualRows383++actualRows384++actualRows385++actualRows386++actualRows387++actualRows388++actualRows389++actualRows390++actualRows391++actualRows392++actualRows393++actualRows394++actualRows395++actualRows396++actualRows397++actualRows398++actualRows399++actualRows400++actualRows401++actualRows402++actualRows403++actualRows404++actualRows405++actualRows406++actualRows407++actualRows408++actualRows409
def partOps5 : List WordIR.Op := [.band 344 345,.shr 8 24,.literal (BitVec.ofNat 32 255),.band 347 348,.shr 9 0,.literal (BitVec.ofNat 32 255),.band 350 351,.shr 9 8,.literal (BitVec.ofNat 32 255),.band 353 354,.shr 9 16,.literal (BitVec.ofNat 32 255),.band 356 357,.shr 9 24,.literal (BitVec.ofNat 32 255),.band 359 360,.shr 10 0,.literal (BitVec.ofNat 32 255),.band 362 363,.shr 10 8,.literal (BitVec.ofNat 32 255),.band 365 366,.shr 10 16,.literal (BitVec.ofNat 32 255),.band 368 369,.shr 10 24,.literal (BitVec.ofNat 32 255),.band 371 372,.shr 11 0,.literal (BitVec.ofNat 32 255),.band 374 375,.shr 11 8,.literal (BitVec.ofNat 32 255),.band 377 378,.shr 11 16,.literal (BitVec.ofNat 32 255),.band 380 381,.shr 11 24,.literal (BitVec.ofNat 32 255),.band 383 384,.shr 12 0,.literal (BitVec.ofNat 32 255),.band 386 387,.shr 12 8,.literal (BitVec.ofNat 32 255),.band 389 390,.shr 12 16,.literal (BitVec.ofNat 32 255),.band 392 393,.shr 12 24,.literal (BitVec.ofNat 32 255),.band 395 396,.shr 13 0,.literal (BitVec.ofNat 32 255),.band 398 399,.shr 13 8,.literal (BitVec.ofNat 32 255),.band 401 402,.shr 13 16,.literal (BitVec.ofNat 32 255),.band 404 405,.shr 13 24,.literal (BitVec.ofNat 32 255),.band 407 408]
theorem partExact5 : partRows5=WordField.rows actualModulus 346 partOps5 := by
  simp only [partRows5,partOps5,WordField.rows,rows346,rows347,rows348,rows349,rows350,rows351,rows352,rows353,rows354,rows355,rows356,rows357,rows358,rows359,rows360,rows361,rows362,rows363,rows364,rows365,rows366,rows367,rows368,rows369,rows370,rows371,rows372,rows373,rows374,rows375,rows376,rows377,rows378,rows379,rows380,rows381,rows382,rows383,rows384,rows385,rows386,rows387,rows388,rows389,rows390,rows391,rows392,rows393,rows394,rows395,rows396,rows397,rows398,rows399,rows400,rows401,rows402,rows403,rows404,rows405,rows406,rows407,rows408,rows409,List.append_assoc,List.append_nil]
theorem partLength5 : partOps5.length=64 := by decide
theorem partStats5 : partRows5.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows5=272640 := by
  simp only [partRows5,List.length_append,MatrixRowBlocks.rows_weight_append,stats346.1,stats346.2,stats347.1,stats347.2,stats348.1,stats348.2,stats349.1,stats349.2,stats350.1,stats350.2,stats351.1,stats351.2,stats352.1,stats352.2,stats353.1,stats353.2,stats354.1,stats354.2,stats355.1,stats355.2,stats356.1,stats356.2,stats357.1,stats357.2,stats358.1,stats358.2,stats359.1,stats359.2,stats360.1,stats360.2,stats361.1,stats361.2,stats362.1,stats362.2,stats363.1,stats363.2,stats364.1,stats364.2,stats365.1,stats365.2,stats366.1,stats366.2,stats367.1,stats367.2,stats368.1,stats368.2,stats369.1,stats369.2,stats370.1,stats370.2,stats371.1,stats371.2,stats372.1,stats372.2,stats373.1,stats373.2,stats374.1,stats374.2,stats375.1,stats375.2,stats376.1,stats376.2,stats377.1,stats377.2,stats378.1,stats378.2,stats379.1,stats379.2,stats380.1,stats380.2,stats381.1,stats381.2,stats382.1,stats382.2,stats383.1,stats383.2,stats384.1,stats384.2,stats385.1,stats385.2,stats386.1,stats386.2,stats387.1,stats387.2,stats388.1,stats388.2,stats389.1,stats389.2,stats390.1,stats390.2,stats391.1,stats391.2,stats392.1,stats392.2,stats393.1,stats393.2,stats394.1,stats394.2,stats395.1,stats395.2,stats396.1,stats396.2,stats397.1,stats397.2,stats398.1,stats398.2,stats399.1,stats399.2,stats400.1,stats400.2,stats401.1,stats401.2,stats402.1,stats402.2,stats403.1,stats403.2,stats404.1,stats404.2,stats405.1,stats405.2,stats406.1,stats406.2,stats407.1,stats407.2,stats408.1,stats408.2,stats409.1,stats409.2]
  decide
end ParentBranchCheckedRows
