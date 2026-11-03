import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData7
import HashBlockInstructionMatrixData8
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows456 : actualRows456=WordField.canonicalRows actualModulus 456 (.shr 24 8) := by core033_kernel_decide
theorem stats456 : actualRows456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows456=4548 := by core033_kernel_decide
theorem rows457 : actualRows457=WordField.canonicalRows actualModulus 457 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats457 : actualRows457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows457=2820 := by core033_kernel_decide
theorem rows458 : actualRows458=WordField.canonicalRows actualModulus 458 (.bnot 457) := by core033_kernel_decide
theorem stats458 : actualRows458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows458=6276 := by core033_kernel_decide
theorem rows459 : actualRows459=WordField.canonicalRows actualModulus 459 (.band 456 458) := by core033_kernel_decide
theorem stats459 : actualRows459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows459=5124 := by core033_kernel_decide
theorem rows460 : actualRows460=WordField.canonicalRows actualModulus 460 (.shr 24 8) := by core033_kernel_decide
theorem stats460 : actualRows460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows460=4548 := by core033_kernel_decide
theorem rows461 : actualRows461=WordField.canonicalRows actualModulus 461 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats461 : actualRows461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows461=2820 := by core033_kernel_decide
theorem rows462 : actualRows462=WordField.canonicalRows actualModulus 462 (.bnot 461) := by core033_kernel_decide
theorem stats462 : actualRows462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows462=6276 := by core033_kernel_decide
theorem rows463 : actualRows463=WordField.canonicalRows actualModulus 463 (.bxor 460 462) := by core033_kernel_decide
theorem stats463 : actualRows463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows463=7428 := by core033_kernel_decide
theorem rows464 : actualRows464=WordField.canonicalRows actualModulus 464 (.shr 24 8) := by core033_kernel_decide
theorem stats464 : actualRows464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows464=4548 := by core033_kernel_decide
theorem rows465 : actualRows465=WordField.canonicalRows actualModulus 465 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats465 : actualRows465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows465=2820 := by core033_kernel_decide
theorem rows466 : actualRows466=WordField.canonicalRows actualModulus 466 (.bnot 465) := by core033_kernel_decide
theorem stats466 : actualRows466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows466=6276 := by core033_kernel_decide
theorem rows467 : actualRows467=WordField.canonicalRows actualModulus 467 (.badd 464 466) := by core033_kernel_decide
theorem stats467 : actualRows467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows467=5388 := by core033_kernel_decide
theorem rows468 : actualRows468=WordField.canonicalRows actualModulus 468 (.bnot 467) := by core033_kernel_decide
theorem stats468 : actualRows468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows468=6276 := by core033_kernel_decide
theorem rows469 : actualRows469=WordField.canonicalRows actualModulus 469 (.band 463 468) := by core033_kernel_decide
theorem stats469 : actualRows469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows469=5124 := by core033_kernel_decide
theorem rows470 : actualRows470=WordField.canonicalRows actualModulus 470 (.bxor 459 469) := by core033_kernel_decide
theorem stats470 : actualRows470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows470=7428 := by core033_kernel_decide
theorem rows471 : actualRows471=WordField.canonicalRows actualModulus 471 (.shr 470 31) := by core033_kernel_decide
theorem stats471 : actualRows471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows471=2892 := by core033_kernel_decide
theorem rows472 : actualRows472=WordField.canonicalRows actualModulus 472 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats472 : actualRows472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows472=2892 := by core033_kernel_decide
theorem rows473 : actualRows473=WordField.canonicalRows actualModulus 473 (.bxor 471 472) := by core033_kernel_decide
theorem stats473 : actualRows473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows473=7428 := by core033_kernel_decide
theorem rows474 : actualRows474=WordField.canonicalRows actualModulus 474 (.shr 25 8) := by core033_kernel_decide
theorem stats474 : actualRows474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows474=4548 := by core033_kernel_decide
theorem rows475 : actualRows475=WordField.canonicalRows actualModulus 475 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats475 : actualRows475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows475=2820 := by core033_kernel_decide
theorem rows476 : actualRows476=WordField.canonicalRows actualModulus 476 (.bnot 475) := by core033_kernel_decide
theorem stats476 : actualRows476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows476=6276 := by core033_kernel_decide
theorem rows477 : actualRows477=WordField.canonicalRows actualModulus 477 (.band 474 476) := by core033_kernel_decide
theorem stats477 : actualRows477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows477=5124 := by core033_kernel_decide
theorem rows478 : actualRows478=WordField.canonicalRows actualModulus 478 (.shr 25 8) := by core033_kernel_decide
theorem stats478 : actualRows478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows478=4548 := by core033_kernel_decide
theorem rows479 : actualRows479=WordField.canonicalRows actualModulus 479 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats479 : actualRows479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows479=2820 := by core033_kernel_decide
theorem rows480 : actualRows480=WordField.canonicalRows actualModulus 480 (.bnot 479) := by core033_kernel_decide
theorem stats480 : actualRows480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows480=6276 := by core033_kernel_decide
theorem rows481 : actualRows481=WordField.canonicalRows actualModulus 481 (.bxor 478 480) := by core033_kernel_decide
theorem stats481 : actualRows481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows481=7428 := by core033_kernel_decide
theorem rows482 : actualRows482=WordField.canonicalRows actualModulus 482 (.shr 25 8) := by core033_kernel_decide
theorem stats482 : actualRows482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows482=4548 := by core033_kernel_decide
theorem rows483 : actualRows483=WordField.canonicalRows actualModulus 483 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats483 : actualRows483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows483=2820 := by core033_kernel_decide
theorem rows484 : actualRows484=WordField.canonicalRows actualModulus 484 (.bnot 483) := by core033_kernel_decide
theorem stats484 : actualRows484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows484=6276 := by core033_kernel_decide
theorem rows485 : actualRows485=WordField.canonicalRows actualModulus 485 (.badd 482 484) := by core033_kernel_decide
theorem stats485 : actualRows485.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows485=5388 := by core033_kernel_decide
theorem rows486 : actualRows486=WordField.canonicalRows actualModulus 486 (.bnot 485) := by core033_kernel_decide
theorem stats486 : actualRows486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows486=6276 := by core033_kernel_decide
theorem rows487 : actualRows487=WordField.canonicalRows actualModulus 487 (.band 481 486) := by core033_kernel_decide
theorem stats487 : actualRows487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows487=5124 := by core033_kernel_decide
theorem rows488 : actualRows488=WordField.canonicalRows actualModulus 488 (.bxor 477 487) := by core033_kernel_decide
theorem stats488 : actualRows488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows488=7428 := by core033_kernel_decide
theorem rows489 : actualRows489=WordField.canonicalRows actualModulus 489 (.shr 488 31) := by core033_kernel_decide
theorem stats489 : actualRows489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows489=2892 := by core033_kernel_decide
theorem rows490 : actualRows490=WordField.canonicalRows actualModulus 490 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats490 : actualRows490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows490=2892 := by core033_kernel_decide
theorem rows491 : actualRows491=WordField.canonicalRows actualModulus 491 (.bxor 489 490) := by core033_kernel_decide
theorem stats491 : actualRows491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows491=7428 := by core033_kernel_decide
theorem rows492 : actualRows492=WordField.canonicalRows actualModulus 492 (.shr 26 8) := by core033_kernel_decide
theorem stats492 : actualRows492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows492=4548 := by core033_kernel_decide
theorem rows493 : actualRows493=WordField.canonicalRows actualModulus 493 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats493 : actualRows493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows493=2820 := by core033_kernel_decide
theorem rows494 : actualRows494=WordField.canonicalRows actualModulus 494 (.bnot 493) := by core033_kernel_decide
theorem stats494 : actualRows494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows494=6276 := by core033_kernel_decide
theorem rows495 : actualRows495=WordField.canonicalRows actualModulus 495 (.band 492 494) := by core033_kernel_decide
theorem stats495 : actualRows495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows495=5124 := by core033_kernel_decide
theorem rows496 : actualRows496=WordField.canonicalRows actualModulus 496 (.shr 26 8) := by core033_kernel_decide
theorem stats496 : actualRows496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows496=4548 := by core033_kernel_decide
theorem rows497 : actualRows497=WordField.canonicalRows actualModulus 497 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats497 : actualRows497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows497=2820 := by core033_kernel_decide
theorem rows498 : actualRows498=WordField.canonicalRows actualModulus 498 (.bnot 497) := by core033_kernel_decide
theorem stats498 : actualRows498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows498=6276 := by core033_kernel_decide
theorem rows499 : actualRows499=WordField.canonicalRows actualModulus 499 (.bxor 496 498) := by core033_kernel_decide
theorem stats499 : actualRows499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows499=7428 := by core033_kernel_decide
theorem rows500 : actualRows500=WordField.canonicalRows actualModulus 500 (.shr 26 8) := by core033_kernel_decide
theorem stats500 : actualRows500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows500=4548 := by core033_kernel_decide
theorem rows501 : actualRows501=WordField.canonicalRows actualModulus 501 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats501 : actualRows501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows501=2820 := by core033_kernel_decide
theorem rows502 : actualRows502=WordField.canonicalRows actualModulus 502 (.bnot 501) := by core033_kernel_decide
theorem stats502 : actualRows502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows502=6276 := by core033_kernel_decide
theorem rows503 : actualRows503=WordField.canonicalRows actualModulus 503 (.badd 500 502) := by core033_kernel_decide
theorem stats503 : actualRows503.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows503=5388 := by core033_kernel_decide
theorem rows504 : actualRows504=WordField.canonicalRows actualModulus 504 (.bnot 503) := by core033_kernel_decide
theorem stats504 : actualRows504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows504=6276 := by core033_kernel_decide
theorem rows505 : actualRows505=WordField.canonicalRows actualModulus 505 (.band 499 504) := by core033_kernel_decide
theorem stats505 : actualRows505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows505=5124 := by core033_kernel_decide
theorem rows506 : actualRows506=WordField.canonicalRows actualModulus 506 (.bxor 495 505) := by core033_kernel_decide
theorem stats506 : actualRows506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows506=7428 := by core033_kernel_decide
theorem rows507 : actualRows507=WordField.canonicalRows actualModulus 507 (.shr 506 31) := by core033_kernel_decide
theorem stats507 : actualRows507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows507=2892 := by core033_kernel_decide
theorem rows508 : actualRows508=WordField.canonicalRows actualModulus 508 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats508 : actualRows508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows508=2892 := by core033_kernel_decide
theorem rows509 : actualRows509=WordField.canonicalRows actualModulus 509 (.bxor 507 508) := by core033_kernel_decide
theorem stats509 : actualRows509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows509=7428 := by core033_kernel_decide
theorem rows510 : actualRows510=WordField.canonicalRows actualModulus 510 (.shr 27 8) := by core033_kernel_decide
theorem stats510 : actualRows510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows510=4548 := by core033_kernel_decide
theorem rows511 : actualRows511=WordField.canonicalRows actualModulus 511 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats511 : actualRows511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows511=2820 := by core033_kernel_decide
theorem rows512 : actualRows512=WordField.canonicalRows actualModulus 512 (.bnot 511) := by core033_kernel_decide
theorem stats512 : actualRows512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows512=6276 := by core033_kernel_decide
theorem rows513 : actualRows513=WordField.canonicalRows actualModulus 513 (.band 510 512) := by core033_kernel_decide
theorem stats513 : actualRows513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows513=5124 := by core033_kernel_decide
theorem rows514 : actualRows514=WordField.canonicalRows actualModulus 514 (.shr 27 8) := by core033_kernel_decide
theorem stats514 : actualRows514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows514=4548 := by core033_kernel_decide
theorem rows515 : actualRows515=WordField.canonicalRows actualModulus 515 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats515 : actualRows515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows515=2820 := by core033_kernel_decide
theorem rows516 : actualRows516=WordField.canonicalRows actualModulus 516 (.bnot 515) := by core033_kernel_decide
theorem stats516 : actualRows516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows516=6276 := by core033_kernel_decide
theorem rows517 : actualRows517=WordField.canonicalRows actualModulus 517 (.bxor 514 516) := by core033_kernel_decide
theorem stats517 : actualRows517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows517=7428 := by core033_kernel_decide
theorem rows518 : actualRows518=WordField.canonicalRows actualModulus 518 (.shr 27 8) := by core033_kernel_decide
theorem stats518 : actualRows518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows518=4548 := by core033_kernel_decide
theorem rows519 : actualRows519=WordField.canonicalRows actualModulus 519 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats519 : actualRows519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows519=2820 := by core033_kernel_decide
def partRows6 : List R1CS.Row := actualRows456++actualRows457++actualRows458++actualRows459++actualRows460++actualRows461++actualRows462++actualRows463++actualRows464++actualRows465++actualRows466++actualRows467++actualRows468++actualRows469++actualRows470++actualRows471++actualRows472++actualRows473++actualRows474++actualRows475++actualRows476++actualRows477++actualRows478++actualRows479++actualRows480++actualRows481++actualRows482++actualRows483++actualRows484++actualRows485++actualRows486++actualRows487++actualRows488++actualRows489++actualRows490++actualRows491++actualRows492++actualRows493++actualRows494++actualRows495++actualRows496++actualRows497++actualRows498++actualRows499++actualRows500++actualRows501++actualRows502++actualRows503++actualRows504++actualRows505++actualRows506++actualRows507++actualRows508++actualRows509++actualRows510++actualRows511++actualRows512++actualRows513++actualRows514++actualRows515++actualRows516++actualRows517++actualRows518++actualRows519
def partOps6 : List WordIR.Op := [.shr 24 8,.literal (BitVec.ofNat 32 0),.bnot 457,.band 456 458,.shr 24 8,.literal (BitVec.ofNat 32 0),.bnot 461,.bxor 460 462,.shr 24 8,.literal (BitVec.ofNat 32 0),.bnot 465,.badd 464 466,.bnot 467,.band 463 468,.bxor 459 469,.shr 470 31,.literal (BitVec.ofNat 32 1),.bxor 471 472,.shr 25 8,.literal (BitVec.ofNat 32 0),.bnot 475,.band 474 476,.shr 25 8,.literal (BitVec.ofNat 32 0),.bnot 479,.bxor 478 480,.shr 25 8,.literal (BitVec.ofNat 32 0),.bnot 483,.badd 482 484,.bnot 485,.band 481 486,.bxor 477 487,.shr 488 31,.literal (BitVec.ofNat 32 1),.bxor 489 490,.shr 26 8,.literal (BitVec.ofNat 32 0),.bnot 493,.band 492 494,.shr 26 8,.literal (BitVec.ofNat 32 0),.bnot 497,.bxor 496 498,.shr 26 8,.literal (BitVec.ofNat 32 0),.bnot 501,.badd 500 502,.bnot 503,.band 499 504,.bxor 495 505,.shr 506 31,.literal (BitVec.ofNat 32 1),.bxor 507 508,.shr 27 8,.literal (BitVec.ofNat 32 0),.bnot 511,.band 510 512,.shr 27 8,.literal (BitVec.ofNat 32 0),.bnot 515,.bxor 514 516,.shr 27 8,.literal (BitVec.ofNat 32 0)]
theorem partExact6 : partRows6=WordField.rows actualModulus 456 partOps6 := by
  simp only [partRows6,partOps6,WordField.rows,rows456,rows457,rows458,rows459,rows460,rows461,rows462,rows463,rows464,rows465,rows466,rows467,rows468,rows469,rows470,rows471,rows472,rows473,rows474,rows475,rows476,rows477,rows478,rows479,rows480,rows481,rows482,rows483,rows484,rows485,rows486,rows487,rows488,rows489,rows490,rows491,rows492,rows493,rows494,rows495,rows496,rows497,rows498,rows499,rows500,rows501,rows502,rows503,rows504,rows505,rows506,rows507,rows508,rows509,rows510,rows511,rows512,rows513,rows514,rows515,rows516,rows517,rows518,rows519,List.append_assoc,List.append_nil]
theorem partLength6 : partOps6.length=64 := by decide
theorem partStats6 : partRows6.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows6=319944 := by
  simp only [partRows6,List.length_append,MatrixRowBlocks.rows_weight_append,stats456.1,stats456.2,stats457.1,stats457.2,stats458.1,stats458.2,stats459.1,stats459.2,stats460.1,stats460.2,stats461.1,stats461.2,stats462.1,stats462.2,stats463.1,stats463.2,stats464.1,stats464.2,stats465.1,stats465.2,stats466.1,stats466.2,stats467.1,stats467.2,stats468.1,stats468.2,stats469.1,stats469.2,stats470.1,stats470.2,stats471.1,stats471.2,stats472.1,stats472.2,stats473.1,stats473.2,stats474.1,stats474.2,stats475.1,stats475.2,stats476.1,stats476.2,stats477.1,stats477.2,stats478.1,stats478.2,stats479.1,stats479.2,stats480.1,stats480.2,stats481.1,stats481.2,stats482.1,stats482.2,stats483.1,stats483.2,stats484.1,stats484.2,stats485.1,stats485.2,stats486.1,stats486.2,stats487.1,stats487.2,stats488.1,stats488.2,stats489.1,stats489.2,stats490.1,stats490.2,stats491.1,stats491.2,stats492.1,stats492.2,stats493.1,stats493.2,stats494.1,stats494.2,stats495.1,stats495.2,stats496.1,stats496.2,stats497.1,stats497.2,stats498.1,stats498.2,stats499.1,stats499.2,stats500.1,stats500.2,stats501.1,stats501.2,stats502.1,stats502.2,stats503.1,stats503.2,stats504.1,stats504.2,stats505.1,stats505.2,stats506.1,stats506.2,stats507.1,stats507.2,stats508.1,stats508.2,stats509.1,stats509.2,stats510.1,stats510.2,stats511.1,stats511.2,stats512.1,stats512.2,stats513.1,stats513.2,stats514.1,stats514.2,stats515.1,stats515.2,stats516.1,stats516.2,stats517.1,stats517.2,stats518.1,stats518.2,stats519.1,stats519.2]
  decide
end HashBlockCheckedRows
