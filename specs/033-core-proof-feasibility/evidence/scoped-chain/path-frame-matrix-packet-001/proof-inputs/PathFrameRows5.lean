import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData5
import PathFrameInstructionMatrixData6
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows354 : actualRows354=WordField.canonicalRows actualModulus 354 (.band 353 18) := by core033_kernel_decide
theorem stats354 : actualRows354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows354=5124 := by core033_kernel_decide
theorem rows355 : actualRows355=WordField.canonicalRows actualModulus 355 (.bnot 350) := by core033_kernel_decide
theorem stats355 : actualRows355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows355=6276 := by core033_kernel_decide
theorem rows356 : actualRows356=WordField.canonicalRows actualModulus 356 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats356 : actualRows356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows356=2892 := by core033_kernel_decide
theorem rows357 : actualRows357=WordField.canonicalRows actualModulus 357 (.badd 355 356) := by core033_kernel_decide
theorem stats357 : actualRows357.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows357=5388 := by core033_kernel_decide
theorem rows358 : actualRows358=WordField.canonicalRows actualModulus 358 (.bnot 357) := by core033_kernel_decide
theorem stats358 : actualRows358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows358=6276 := by core033_kernel_decide
theorem rows359 : actualRows359=WordField.canonicalRows actualModulus 359 (.band 358 10) := by core033_kernel_decide
theorem stats359 : actualRows359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows359=5124 := by core033_kernel_decide
theorem rows360 : actualRows360=WordField.canonicalRows actualModulus 360 (.bxor 354 359) := by core033_kernel_decide
theorem stats360 : actualRows360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows360=7428 := by core033_kernel_decide
theorem rows361 : actualRows361=WordField.canonicalRows actualModulus 361 (.bnot 350) := by core033_kernel_decide
theorem stats361 : actualRows361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows361=6276 := by core033_kernel_decide
theorem rows362 : actualRows362=WordField.canonicalRows actualModulus 362 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats362 : actualRows362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows362=2892 := by core033_kernel_decide
theorem rows363 : actualRows363=WordField.canonicalRows actualModulus 363 (.badd 361 362) := by core033_kernel_decide
theorem stats363 : actualRows363.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows363=5388 := by core033_kernel_decide
theorem rows364 : actualRows364=WordField.canonicalRows actualModulus 364 (.band 363 19) := by core033_kernel_decide
theorem stats364 : actualRows364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows364=5124 := by core033_kernel_decide
theorem rows365 : actualRows365=WordField.canonicalRows actualModulus 365 (.bnot 350) := by core033_kernel_decide
theorem stats365 : actualRows365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows365=6276 := by core033_kernel_decide
theorem rows366 : actualRows366=WordField.canonicalRows actualModulus 366 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats366 : actualRows366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows366=2892 := by core033_kernel_decide
theorem rows367 : actualRows367=WordField.canonicalRows actualModulus 367 (.badd 365 366) := by core033_kernel_decide
theorem stats367 : actualRows367.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows367=5388 := by core033_kernel_decide
theorem rows368 : actualRows368=WordField.canonicalRows actualModulus 368 (.bnot 367) := by core033_kernel_decide
theorem stats368 : actualRows368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows368=6276 := by core033_kernel_decide
theorem rows369 : actualRows369=WordField.canonicalRows actualModulus 369 (.band 368 11) := by core033_kernel_decide
theorem stats369 : actualRows369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows369=5124 := by core033_kernel_decide
theorem rows370 : actualRows370=WordField.canonicalRows actualModulus 370 (.bxor 364 369) := by core033_kernel_decide
theorem stats370 : actualRows370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows370=7428 := by core033_kernel_decide
theorem rows371 : actualRows371=WordField.canonicalRows actualModulus 371 (.bnot 350) := by core033_kernel_decide
theorem stats371 : actualRows371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows371=6276 := by core033_kernel_decide
theorem rows372 : actualRows372=WordField.canonicalRows actualModulus 372 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats372 : actualRows372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows372=2892 := by core033_kernel_decide
theorem rows373 : actualRows373=WordField.canonicalRows actualModulus 373 (.badd 371 372) := by core033_kernel_decide
theorem stats373 : actualRows373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows373=5388 := by core033_kernel_decide
theorem rows374 : actualRows374=WordField.canonicalRows actualModulus 374 (.band 373 20) := by core033_kernel_decide
theorem stats374 : actualRows374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows374=5124 := by core033_kernel_decide
theorem rows375 : actualRows375=WordField.canonicalRows actualModulus 375 (.bnot 350) := by core033_kernel_decide
theorem stats375 : actualRows375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows375=6276 := by core033_kernel_decide
theorem rows376 : actualRows376=WordField.canonicalRows actualModulus 376 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats376 : actualRows376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows376=2892 := by core033_kernel_decide
theorem rows377 : actualRows377=WordField.canonicalRows actualModulus 377 (.badd 375 376) := by core033_kernel_decide
theorem stats377 : actualRows377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows377=5388 := by core033_kernel_decide
theorem rows378 : actualRows378=WordField.canonicalRows actualModulus 378 (.bnot 377) := by core033_kernel_decide
theorem stats378 : actualRows378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows378=6276 := by core033_kernel_decide
theorem rows379 : actualRows379=WordField.canonicalRows actualModulus 379 (.band 378 12) := by core033_kernel_decide
theorem stats379 : actualRows379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows379=5124 := by core033_kernel_decide
theorem rows380 : actualRows380=WordField.canonicalRows actualModulus 380 (.bxor 374 379) := by core033_kernel_decide
theorem stats380 : actualRows380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows380=7428 := by core033_kernel_decide
theorem rows381 : actualRows381=WordField.canonicalRows actualModulus 381 (.bnot 350) := by core033_kernel_decide
theorem stats381 : actualRows381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows381=6276 := by core033_kernel_decide
theorem rows382 : actualRows382=WordField.canonicalRows actualModulus 382 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats382 : actualRows382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows382=2892 := by core033_kernel_decide
theorem rows383 : actualRows383=WordField.canonicalRows actualModulus 383 (.badd 381 382) := by core033_kernel_decide
theorem stats383 : actualRows383.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows383=5388 := by core033_kernel_decide
theorem rows384 : actualRows384=WordField.canonicalRows actualModulus 384 (.band 383 21) := by core033_kernel_decide
theorem stats384 : actualRows384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows384=5124 := by core033_kernel_decide
theorem rows385 : actualRows385=WordField.canonicalRows actualModulus 385 (.bnot 350) := by core033_kernel_decide
theorem stats385 : actualRows385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows385=6276 := by core033_kernel_decide
theorem rows386 : actualRows386=WordField.canonicalRows actualModulus 386 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats386 : actualRows386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows386=2892 := by core033_kernel_decide
theorem rows387 : actualRows387=WordField.canonicalRows actualModulus 387 (.badd 385 386) := by core033_kernel_decide
theorem stats387 : actualRows387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows387=5388 := by core033_kernel_decide
theorem rows388 : actualRows388=WordField.canonicalRows actualModulus 388 (.bnot 387) := by core033_kernel_decide
theorem stats388 : actualRows388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows388=6276 := by core033_kernel_decide
theorem rows389 : actualRows389=WordField.canonicalRows actualModulus 389 (.band 388 13) := by core033_kernel_decide
theorem stats389 : actualRows389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows389=5124 := by core033_kernel_decide
theorem rows390 : actualRows390=WordField.canonicalRows actualModulus 390 (.bxor 384 389) := by core033_kernel_decide
theorem stats390 : actualRows390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows390=7428 := by core033_kernel_decide
theorem rows391 : actualRows391=WordField.canonicalRows actualModulus 391 (.bnot 350) := by core033_kernel_decide
theorem stats391 : actualRows391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows391=6276 := by core033_kernel_decide
theorem rows392 : actualRows392=WordField.canonicalRows actualModulus 392 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats392 : actualRows392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows392=2892 := by core033_kernel_decide
theorem rows393 : actualRows393=WordField.canonicalRows actualModulus 393 (.badd 391 392) := by core033_kernel_decide
theorem stats393 : actualRows393.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows393=5388 := by core033_kernel_decide
theorem rows394 : actualRows394=WordField.canonicalRows actualModulus 394 (.band 393 22) := by core033_kernel_decide
theorem stats394 : actualRows394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows394=5124 := by core033_kernel_decide
theorem rows395 : actualRows395=WordField.canonicalRows actualModulus 395 (.bnot 350) := by core033_kernel_decide
theorem stats395 : actualRows395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows395=6276 := by core033_kernel_decide
theorem rows396 : actualRows396=WordField.canonicalRows actualModulus 396 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats396 : actualRows396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows396=2892 := by core033_kernel_decide
theorem rows397 : actualRows397=WordField.canonicalRows actualModulus 397 (.badd 395 396) := by core033_kernel_decide
theorem stats397 : actualRows397.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows397=5388 := by core033_kernel_decide
theorem rows398 : actualRows398=WordField.canonicalRows actualModulus 398 (.bnot 397) := by core033_kernel_decide
theorem stats398 : actualRows398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows398=6276 := by core033_kernel_decide
theorem rows399 : actualRows399=WordField.canonicalRows actualModulus 399 (.band 398 14) := by core033_kernel_decide
theorem stats399 : actualRows399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows399=5124 := by core033_kernel_decide
theorem rows400 : actualRows400=WordField.canonicalRows actualModulus 400 (.bxor 394 399) := by core033_kernel_decide
theorem stats400 : actualRows400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows400=7428 := by core033_kernel_decide
theorem rows401 : actualRows401=WordField.canonicalRows actualModulus 401 (.bnot 350) := by core033_kernel_decide
theorem stats401 : actualRows401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows401=6276 := by core033_kernel_decide
theorem rows402 : actualRows402=WordField.canonicalRows actualModulus 402 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats402 : actualRows402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows402=2892 := by core033_kernel_decide
theorem rows403 : actualRows403=WordField.canonicalRows actualModulus 403 (.badd 401 402) := by core033_kernel_decide
theorem stats403 : actualRows403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows403=5388 := by core033_kernel_decide
theorem rows404 : actualRows404=WordField.canonicalRows actualModulus 404 (.band 403 23) := by core033_kernel_decide
theorem stats404 : actualRows404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows404=5124 := by core033_kernel_decide
theorem rows405 : actualRows405=WordField.canonicalRows actualModulus 405 (.bnot 350) := by core033_kernel_decide
theorem stats405 : actualRows405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows405=6276 := by core033_kernel_decide
theorem rows406 : actualRows406=WordField.canonicalRows actualModulus 406 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats406 : actualRows406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows406=2892 := by core033_kernel_decide
theorem rows407 : actualRows407=WordField.canonicalRows actualModulus 407 (.badd 405 406) := by core033_kernel_decide
theorem stats407 : actualRows407.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows407=5388 := by core033_kernel_decide
theorem rows408 : actualRows408=WordField.canonicalRows actualModulus 408 (.bnot 407) := by core033_kernel_decide
theorem stats408 : actualRows408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows408=6276 := by core033_kernel_decide
theorem rows409 : actualRows409=WordField.canonicalRows actualModulus 409 (.band 408 15) := by core033_kernel_decide
theorem stats409 : actualRows409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows409=5124 := by core033_kernel_decide
theorem rows410 : actualRows410=WordField.canonicalRows actualModulus 410 (.bxor 404 409) := by core033_kernel_decide
theorem stats410 : actualRows410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows410=7428 := by core033_kernel_decide
theorem rows411 : actualRows411=WordField.canonicalRows actualModulus 411 (.bnot 350) := by core033_kernel_decide
theorem stats411 : actualRows411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows411=6276 := by core033_kernel_decide
theorem rows412 : actualRows412=WordField.canonicalRows actualModulus 412 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats412 : actualRows412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows412=2892 := by core033_kernel_decide
theorem rows413 : actualRows413=WordField.canonicalRows actualModulus 413 (.badd 411 412) := by core033_kernel_decide
theorem stats413 : actualRows413.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows413=5388 := by core033_kernel_decide
theorem rows414 : actualRows414=WordField.canonicalRows actualModulus 414 (.band 413 24) := by core033_kernel_decide
theorem stats414 : actualRows414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows414=5124 := by core033_kernel_decide
theorem rows415 : actualRows415=WordField.canonicalRows actualModulus 415 (.bnot 350) := by core033_kernel_decide
theorem stats415 : actualRows415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows415=6276 := by core033_kernel_decide
theorem rows416 : actualRows416=WordField.canonicalRows actualModulus 416 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats416 : actualRows416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows416=2892 := by core033_kernel_decide
theorem rows417 : actualRows417=WordField.canonicalRows actualModulus 417 (.badd 415 416) := by core033_kernel_decide
theorem stats417 : actualRows417.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows417=5388 := by core033_kernel_decide
def partRows5 : List R1CS.Row := actualRows354++actualRows355++actualRows356++actualRows357++actualRows358++actualRows359++actualRows360++actualRows361++actualRows362++actualRows363++actualRows364++actualRows365++actualRows366++actualRows367++actualRows368++actualRows369++actualRows370++actualRows371++actualRows372++actualRows373++actualRows374++actualRows375++actualRows376++actualRows377++actualRows378++actualRows379++actualRows380++actualRows381++actualRows382++actualRows383++actualRows384++actualRows385++actualRows386++actualRows387++actualRows388++actualRows389++actualRows390++actualRows391++actualRows392++actualRows393++actualRows394++actualRows395++actualRows396++actualRows397++actualRows398++actualRows399++actualRows400++actualRows401++actualRows402++actualRows403++actualRows404++actualRows405++actualRows406++actualRows407++actualRows408++actualRows409++actualRows410++actualRows411++actualRows412++actualRows413++actualRows414++actualRows415++actualRows416++actualRows417
def partOps5 : List WordIR.Op := [.band 353 18,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 355 356,.bnot 357,.band 358 10,.bxor 354 359,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 361 362,.band 363 19,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 365 366,.bnot 367,.band 368 11,.bxor 364 369,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 371 372,.band 373 20,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 375 376,.bnot 377,.band 378 12,.bxor 374 379,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 381 382,.band 383 21,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 385 386,.bnot 387,.band 388 13,.bxor 384 389,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 391 392,.band 393 22,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 395 396,.bnot 397,.band 398 14,.bxor 394 399,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 401 402,.band 403 23,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 405 406,.bnot 407,.band 408 15,.bxor 404 409,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 411 412,.band 413 24,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 415 416]
theorem partExact5 : partRows5=WordField.rows actualModulus 354 partOps5 := by
  simp only [partRows5,partOps5,WordField.rows,rows354,rows355,rows356,rows357,rows358,rows359,rows360,rows361,rows362,rows363,rows364,rows365,rows366,rows367,rows368,rows369,rows370,rows371,rows372,rows373,rows374,rows375,rows376,rows377,rows378,rows379,rows380,rows381,rows382,rows383,rows384,rows385,rows386,rows387,rows388,rows389,rows390,rows391,rows392,rows393,rows394,rows395,rows396,rows397,rows398,rows399,rows400,rows401,rows402,rows403,rows404,rows405,rows406,rows407,rows408,rows409,rows410,rows411,rows412,rows413,rows414,rows415,rows416,rows417,List.append_assoc,List.append_nil]
theorem partLength5 : partOps5.length=64 := by decide
theorem partStats5 : partRows5.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows5=338064 := by
  simp only [partRows5,List.length_append,MatrixRowBlocks.rows_weight_append,stats354.1,stats354.2,stats355.1,stats355.2,stats356.1,stats356.2,stats357.1,stats357.2,stats358.1,stats358.2,stats359.1,stats359.2,stats360.1,stats360.2,stats361.1,stats361.2,stats362.1,stats362.2,stats363.1,stats363.2,stats364.1,stats364.2,stats365.1,stats365.2,stats366.1,stats366.2,stats367.1,stats367.2,stats368.1,stats368.2,stats369.1,stats369.2,stats370.1,stats370.2,stats371.1,stats371.2,stats372.1,stats372.2,stats373.1,stats373.2,stats374.1,stats374.2,stats375.1,stats375.2,stats376.1,stats376.2,stats377.1,stats377.2,stats378.1,stats378.2,stats379.1,stats379.2,stats380.1,stats380.2,stats381.1,stats381.2,stats382.1,stats382.2,stats383.1,stats383.2,stats384.1,stats384.2,stats385.1,stats385.2,stats386.1,stats386.2,stats387.1,stats387.2,stats388.1,stats388.2,stats389.1,stats389.2,stats390.1,stats390.2,stats391.1,stats391.2,stats392.1,stats392.2,stats393.1,stats393.2,stats394.1,stats394.2,stats395.1,stats395.2,stats396.1,stats396.2,stats397.1,stats397.2,stats398.1,stats398.2,stats399.1,stats399.2,stats400.1,stats400.2,stats401.1,stats401.2,stats402.1,stats402.2,stats403.1,stats403.2,stats404.1,stats404.2,stats405.1,stats405.2,stats406.1,stats406.2,stats407.1,stats407.2,stats408.1,stats408.2,stats409.1,stats409.2,stats410.1,stats410.2,stats411.1,stats411.2,stats412.1,stats412.2,stats413.1,stats413.2,stats414.1,stats414.2,stats415.1,stats415.2,stats416.1,stats416.2,stats417.1,stats417.2]
  decide
end PathFrameCheckedRows
