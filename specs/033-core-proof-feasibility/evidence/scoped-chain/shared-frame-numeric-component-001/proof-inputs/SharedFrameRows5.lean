import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData5
import SharedFrameInstructionMatrixData6
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows363 : actualRows363=WordField.canonicalRows actualModulus 363 (.badd 360 50) := by core033_kernel_decide
theorem stats363 : actualRows363.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows363=5388 := by core033_kernel_decide
theorem rows364 : actualRows364=WordField.canonicalRows actualModulus 364 (.bnot 363) := by core033_kernel_decide
theorem stats364 : actualRows364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows364=6276 := by core033_kernel_decide
theorem rows365 : actualRows365=WordField.canonicalRows actualModulus 365 (.band 362 364) := by core033_kernel_decide
theorem stats365 : actualRows365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows365=5124 := by core033_kernel_decide
theorem rows366 : actualRows366=WordField.canonicalRows actualModulus 366 (.bxor 361 365) := by core033_kernel_decide
theorem stats366 : actualRows366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows366=7428 := by core033_kernel_decide
theorem rows367 : actualRows367=WordField.canonicalRows actualModulus 367 (.shr 366 31) := by core033_kernel_decide
theorem stats367 : actualRows367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows367=2892 := by core033_kernel_decide
theorem rows368 : actualRows368=WordField.canonicalRows actualModulus 368 (.bxor 367 43) := by core033_kernel_decide
theorem stats368 : actualRows368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows368=7428 := by core033_kernel_decide
theorem rows369 : actualRows369=WordField.canonicalRows actualModulus 369 (.shr 266 1) := by core033_kernel_decide
theorem stats369 : actualRows369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows369=5052 := by core033_kernel_decide
theorem rows370 : actualRows370=WordField.canonicalRows actualModulus 370 (.band 369 50) := by core033_kernel_decide
theorem stats370 : actualRows370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows370=5124 := by core033_kernel_decide
theorem rows371 : actualRows371=WordField.canonicalRows actualModulus 371 (.bxor 369 50) := by core033_kernel_decide
theorem stats371 : actualRows371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows371=7428 := by core033_kernel_decide
theorem rows372 : actualRows372=WordField.canonicalRows actualModulus 372 (.badd 369 50) := by core033_kernel_decide
theorem stats372 : actualRows372.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows372=5388 := by core033_kernel_decide
theorem rows373 : actualRows373=WordField.canonicalRows actualModulus 373 (.bnot 372) := by core033_kernel_decide
theorem stats373 : actualRows373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows373=6276 := by core033_kernel_decide
theorem rows374 : actualRows374=WordField.canonicalRows actualModulus 374 (.band 371 373) := by core033_kernel_decide
theorem stats374 : actualRows374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows374=5124 := by core033_kernel_decide
theorem rows375 : actualRows375=WordField.canonicalRows actualModulus 375 (.bxor 370 374) := by core033_kernel_decide
theorem stats375 : actualRows375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows375=7428 := by core033_kernel_decide
theorem rows376 : actualRows376=WordField.canonicalRows actualModulus 376 (.shr 375 31) := by core033_kernel_decide
theorem stats376 : actualRows376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows376=2892 := by core033_kernel_decide
theorem rows377 : actualRows377=WordField.canonicalRows actualModulus 377 (.bxor 376 43) := by core033_kernel_decide
theorem stats377 : actualRows377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows377=7428 := by core033_kernel_decide
theorem rows378 : actualRows378=WordField.canonicalRows actualModulus 378 (.literal (BitVec.ofNat 32 99)) := by core033_kernel_decide
theorem stats378 : actualRows378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows378=3108 := by core033_kernel_decide
theorem rows379 : actualRows379=WordField.canonicalRows actualModulus 379 (.literal (BitVec.ofNat 32 111)) := by core033_kernel_decide
theorem stats379 : actualRows379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows379=3252 := by core033_kernel_decide
theorem rows380 : actualRows380=WordField.canonicalRows actualModulus 380 (.literal (BitVec.ofNat 32 114)) := by core033_kernel_decide
theorem stats380 : actualRows380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows380=3108 := by core033_kernel_decide
theorem rows381 : actualRows381=WordField.canonicalRows actualModulus 381 (.literal (BitVec.ofNat 32 101)) := by core033_kernel_decide
theorem stats381 : actualRows381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows381=3108 := by core033_kernel_decide
theorem rows382 : actualRows382=WordField.canonicalRows actualModulus 382 (.literal (BitVec.ofNat 32 48)) := by core033_kernel_decide
theorem stats382 : actualRows382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows382=2964 := by core033_kernel_decide
theorem rows383 : actualRows383=WordField.canonicalRows actualModulus 383 (.literal (BitVec.ofNat 32 51)) := by core033_kernel_decide
theorem stats383 : actualRows383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows383=3108 := by core033_kernel_decide
theorem rows384 : actualRows384=WordField.canonicalRows actualModulus 384 (.literal (BitVec.ofNat 32 46)) := by core033_kernel_decide
theorem stats384 : actualRows384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows384=3108 := by core033_kernel_decide
theorem rows385 : actualRows385=WordField.canonicalRows actualModulus 385 (.literal (BitVec.ofNat 32 115)) := by core033_kernel_decide
theorem stats385 : actualRows385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows385=3180 := by core033_kernel_decide
theorem rows386 : actualRows386=WordField.canonicalRows actualModulus 386 (.literal (BitVec.ofNat 32 109)) := by core033_kernel_decide
theorem stats386 : actualRows386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows386=3180 := by core033_kernel_decide
theorem rows387 : actualRows387=WordField.canonicalRows actualModulus 387 (.literal (BitVec.ofNat 32 97)) := by core033_kernel_decide
theorem stats387 : actualRows387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows387=3036 := by core033_kernel_decide
theorem rows388 : actualRows388=WordField.canonicalRows actualModulus 388 (.literal (BitVec.ofNat 32 110)) := by core033_kernel_decide
theorem stats388 : actualRows388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows388=3180 := by core033_kernel_decide
theorem rows389 : actualRows389=WordField.canonicalRows actualModulus 389 (.literal (BitVec.ofNat 32 116)) := by core033_kernel_decide
theorem stats389 : actualRows389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows389=3108 := by core033_kernel_decide
theorem rows390 : actualRows390=WordField.canonicalRows actualModulus 390 (.literal (BitVec.ofNat 32 105)) := by core033_kernel_decide
theorem stats390 : actualRows390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows390=3108 := by core033_kernel_decide
theorem rows391 : actualRows391=WordField.canonicalRows actualModulus 391 (.literal (BitVec.ofNat 32 118)) := by core033_kernel_decide
theorem stats391 : actualRows391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows391=3180 := by core033_kernel_decide
theorem rows392 : actualRows392=WordField.canonicalRows actualModulus 392 (.literal (BitVec.ofNat 32 49)) := by core033_kernel_decide
theorem stats392 : actualRows392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows392=3036 := by core033_kernel_decide
theorem rows393 : actualRows393=WordField.canonicalRows actualModulus 393 (.literal (BitVec.ofNat 32 81)) := by core033_kernel_decide
theorem stats393 : actualRows393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows393=3036 := by core033_kernel_decide
theorem rows394 : actualRows394=WordField.canonicalRows actualModulus 394 (.shr 1 0) := by core033_kernel_decide
theorem stats394 : actualRows394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows394=5124 := by core033_kernel_decide
theorem rows395 : actualRows395=WordField.canonicalRows actualModulus 395 (.band 394 46) := by core033_kernel_decide
theorem stats395 : actualRows395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows395=5124 := by core033_kernel_decide
theorem rows396 : actualRows396=WordField.canonicalRows actualModulus 396 (.shr 47 0) := by core033_kernel_decide
theorem stats396 : actualRows396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows396=5124 := by core033_kernel_decide
theorem rows397 : actualRows397=WordField.canonicalRows actualModulus 397 (.band 396 46) := by core033_kernel_decide
theorem stats397 : actualRows397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows397=5124 := by core033_kernel_decide
theorem rows398 : actualRows398=WordField.canonicalRows actualModulus 398 (.band 82 46) := by core033_kernel_decide
theorem stats398 : actualRows398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows398=5124 := by core033_kernel_decide
theorem rows399 : actualRows399=WordField.canonicalRows actualModulus 399 (.shr 197 0) := by core033_kernel_decide
theorem stats399 : actualRows399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows399=5124 := by core033_kernel_decide
theorem rows400 : actualRows400=WordField.canonicalRows actualModulus 400 (.band 399 46) := by core033_kernel_decide
theorem stats400 : actualRows400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows400=5124 := by core033_kernel_decide
theorem rows401 : actualRows401=WordField.canonicalRows actualModulus 401 (.shr 197 8) := by core033_kernel_decide
theorem stats401 : actualRows401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows401=4548 := by core033_kernel_decide
theorem rows402 : actualRows402=WordField.canonicalRows actualModulus 402 (.band 401 46) := by core033_kernel_decide
theorem stats402 : actualRows402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows402=5124 := by core033_kernel_decide
theorem rows403 : actualRows403=WordField.canonicalRows actualModulus 403 (.shr 197 16) := by core033_kernel_decide
theorem stats403 : actualRows403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows403=3972 := by core033_kernel_decide
theorem rows404 : actualRows404=WordField.canonicalRows actualModulus 404 (.band 403 46) := by core033_kernel_decide
theorem stats404 : actualRows404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows404=5124 := by core033_kernel_decide
theorem rows405 : actualRows405=WordField.canonicalRows actualModulus 405 (.shr 197 24) := by core033_kernel_decide
theorem stats405 : actualRows405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows405=3396 := by core033_kernel_decide
theorem rows406 : actualRows406=WordField.canonicalRows actualModulus 406 (.band 405 46) := by core033_kernel_decide
theorem stats406 : actualRows406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows406=5124 := by core033_kernel_decide
theorem rows407 : actualRows407=WordField.canonicalRows actualModulus 407 (.shr 200 0) := by core033_kernel_decide
theorem stats407 : actualRows407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows407=5124 := by core033_kernel_decide
theorem rows408 : actualRows408=WordField.canonicalRows actualModulus 408 (.band 407 46) := by core033_kernel_decide
theorem stats408 : actualRows408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows408=5124 := by core033_kernel_decide
theorem rows409 : actualRows409=WordField.canonicalRows actualModulus 409 (.shr 200 8) := by core033_kernel_decide
theorem stats409 : actualRows409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows409=4548 := by core033_kernel_decide
theorem rows410 : actualRows410=WordField.canonicalRows actualModulus 410 (.band 409 46) := by core033_kernel_decide
theorem stats410 : actualRows410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows410=5124 := by core033_kernel_decide
theorem rows411 : actualRows411=WordField.canonicalRows actualModulus 411 (.shr 200 16) := by core033_kernel_decide
theorem stats411 : actualRows411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows411=3972 := by core033_kernel_decide
theorem rows412 : actualRows412=WordField.canonicalRows actualModulus 412 (.band 411 46) := by core033_kernel_decide
theorem stats412 : actualRows412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows412=5124 := by core033_kernel_decide
theorem rows413 : actualRows413=WordField.canonicalRows actualModulus 413 (.shr 200 24) := by core033_kernel_decide
theorem stats413 : actualRows413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows413=3396 := by core033_kernel_decide
theorem rows414 : actualRows414=WordField.canonicalRows actualModulus 414 (.band 413 46) := by core033_kernel_decide
theorem stats414 : actualRows414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows414=5124 := by core033_kernel_decide
theorem rows415 : actualRows415=WordField.canonicalRows actualModulus 415 (.shr 203 0) := by core033_kernel_decide
theorem stats415 : actualRows415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows415=5124 := by core033_kernel_decide
theorem rows416 : actualRows416=WordField.canonicalRows actualModulus 416 (.band 415 46) := by core033_kernel_decide
theorem stats416 : actualRows416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows416=5124 := by core033_kernel_decide
theorem rows417 : actualRows417=WordField.canonicalRows actualModulus 417 (.shr 203 8) := by core033_kernel_decide
theorem stats417 : actualRows417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows417=4548 := by core033_kernel_decide
theorem rows418 : actualRows418=WordField.canonicalRows actualModulus 418 (.band 417 46) := by core033_kernel_decide
theorem stats418 : actualRows418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows418=5124 := by core033_kernel_decide
theorem rows419 : actualRows419=WordField.canonicalRows actualModulus 419 (.shr 203 16) := by core033_kernel_decide
theorem stats419 : actualRows419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows419=3972 := by core033_kernel_decide
theorem rows420 : actualRows420=WordField.canonicalRows actualModulus 420 (.band 419 46) := by core033_kernel_decide
theorem stats420 : actualRows420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows420=5124 := by core033_kernel_decide
theorem rows421 : actualRows421=WordField.canonicalRows actualModulus 421 (.shr 203 24) := by core033_kernel_decide
theorem stats421 : actualRows421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows421=3396 := by core033_kernel_decide
theorem rows422 : actualRows422=WordField.canonicalRows actualModulus 422 (.band 421 46) := by core033_kernel_decide
theorem stats422 : actualRows422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows422=5124 := by core033_kernel_decide
theorem rows423 : actualRows423=WordField.canonicalRows actualModulus 423 (.shr 206 0) := by core033_kernel_decide
theorem stats423 : actualRows423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows423=5124 := by core033_kernel_decide
theorem rows424 : actualRows424=WordField.canonicalRows actualModulus 424 (.band 423 46) := by core033_kernel_decide
theorem stats424 : actualRows424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows424=5124 := by core033_kernel_decide
theorem rows425 : actualRows425=WordField.canonicalRows actualModulus 425 (.shr 206 8) := by core033_kernel_decide
theorem stats425 : actualRows425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows425=4548 := by core033_kernel_decide
theorem rows426 : actualRows426=WordField.canonicalRows actualModulus 426 (.band 425 46) := by core033_kernel_decide
theorem stats426 : actualRows426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows426=5124 := by core033_kernel_decide
def partRows5 : List R1CS.Row := actualRows363++actualRows364++actualRows365++actualRows366++actualRows367++actualRows368++actualRows369++actualRows370++actualRows371++actualRows372++actualRows373++actualRows374++actualRows375++actualRows376++actualRows377++actualRows378++actualRows379++actualRows380++actualRows381++actualRows382++actualRows383++actualRows384++actualRows385++actualRows386++actualRows387++actualRows388++actualRows389++actualRows390++actualRows391++actualRows392++actualRows393++actualRows394++actualRows395++actualRows396++actualRows397++actualRows398++actualRows399++actualRows400++actualRows401++actualRows402++actualRows403++actualRows404++actualRows405++actualRows406++actualRows407++actualRows408++actualRows409++actualRows410++actualRows411++actualRows412++actualRows413++actualRows414++actualRows415++actualRows416++actualRows417++actualRows418++actualRows419++actualRows420++actualRows421++actualRows422++actualRows423++actualRows424++actualRows425++actualRows426
def partOps5 : List WordIR.Op := [.badd 360 50,.bnot 363,.band 362 364,.bxor 361 365,.shr 366 31,.bxor 367 43,.shr 266 1,.band 369 50,.bxor 369 50,.badd 369 50,.bnot 372,.band 371 373,.bxor 370 374,.shr 375 31,.bxor 376 43,.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 48),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 115),.literal (BitVec.ofNat 32 109),.literal (BitVec.ofNat 32 97),.literal (BitVec.ofNat 32 110),.literal (BitVec.ofNat 32 116),.literal (BitVec.ofNat 32 105),.literal (BitVec.ofNat 32 118),.literal (BitVec.ofNat 32 49),.literal (BitVec.ofNat 32 81),.shr 1 0,.band 394 46,.shr 47 0,.band 396 46,.band 82 46,.shr 197 0,.band 399 46,.shr 197 8,.band 401 46,.shr 197 16,.band 403 46,.shr 197 24,.band 405 46,.shr 200 0,.band 407 46,.shr 200 8,.band 409 46,.shr 200 16,.band 411 46,.shr 200 24,.band 413 46,.shr 203 0,.band 415 46,.shr 203 8,.band 417 46,.shr 203 16,.band 419 46,.shr 203 24,.band 421 46,.shr 206 0,.band 423 46,.shr 206 8,.band 425 46]
theorem partExact5 : partRows5=WordField.rows actualModulus 363 partOps5 := by
  simp only [partRows5,partOps5,WordField.rows,rows363,rows364,rows365,rows366,rows367,rows368,rows369,rows370,rows371,rows372,rows373,rows374,rows375,rows376,rows377,rows378,rows379,rows380,rows381,rows382,rows383,rows384,rows385,rows386,rows387,rows388,rows389,rows390,rows391,rows392,rows393,rows394,rows395,rows396,rows397,rows398,rows399,rows400,rows401,rows402,rows403,rows404,rows405,rows406,rows407,rows408,rows409,rows410,rows411,rows412,rows413,rows414,rows415,rows416,rows417,rows418,rows419,rows420,rows421,rows422,rows423,rows424,rows425,rows426,List.append_assoc,List.append_nil]
theorem partLength5 : partOps5.length=64 := by decide
theorem partStats5 : partRows5.length=2178 ∧ MatrixRowBlocks.rowsWeight partRows5=294624 := by
  simp only [partRows5,List.length_append,MatrixRowBlocks.rows_weight_append,stats363.1,stats363.2,stats364.1,stats364.2,stats365.1,stats365.2,stats366.1,stats366.2,stats367.1,stats367.2,stats368.1,stats368.2,stats369.1,stats369.2,stats370.1,stats370.2,stats371.1,stats371.2,stats372.1,stats372.2,stats373.1,stats373.2,stats374.1,stats374.2,stats375.1,stats375.2,stats376.1,stats376.2,stats377.1,stats377.2,stats378.1,stats378.2,stats379.1,stats379.2,stats380.1,stats380.2,stats381.1,stats381.2,stats382.1,stats382.2,stats383.1,stats383.2,stats384.1,stats384.2,stats385.1,stats385.2,stats386.1,stats386.2,stats387.1,stats387.2,stats388.1,stats388.2,stats389.1,stats389.2,stats390.1,stats390.2,stats391.1,stats391.2,stats392.1,stats392.2,stats393.1,stats393.2,stats394.1,stats394.2,stats395.1,stats395.2,stats396.1,stats396.2,stats397.1,stats397.2,stats398.1,stats398.2,stats399.1,stats399.2,stats400.1,stats400.2,stats401.1,stats401.2,stats402.1,stats402.2,stats403.1,stats403.2,stats404.1,stats404.2,stats405.1,stats405.2,stats406.1,stats406.2,stats407.1,stats407.2,stats408.1,stats408.2,stats409.1,stats409.2,stats410.1,stats410.2,stats411.1,stats411.2,stats412.1,stats412.2,stats413.1,stats413.2,stats414.1,stats414.2,stats415.1,stats415.2,stats416.1,stats416.2,stats417.1,stats417.2,stats418.1,stats418.2,stats419.1,stats419.2,stats420.1,stats420.2,stats421.1,stats421.2,stats422.1,stats422.2,stats423.1,stats423.2,stats424.1,stats424.2,stats425.1,stats425.2,stats426.1,stats426.2]
  decide
end SharedFrameCheckedRows
