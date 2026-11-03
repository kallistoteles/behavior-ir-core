import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData7
import ParentBranchInstructionMatrixData8
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows474 : actualRows474=WordField.canonicalRows actualModulus 474 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats474 : actualRows474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows474=3396 := by core033_kernel_decide
theorem rows475 : actualRows475=WordField.canonicalRows actualModulus 475 (.band 473 474) := by core033_kernel_decide
theorem stats475 : actualRows475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows475=5124 := by core033_kernel_decide
theorem rows476 : actualRows476=WordField.canonicalRows actualModulus 476 (.shr 19 16) := by core033_kernel_decide
theorem stats476 : actualRows476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows476=3972 := by core033_kernel_decide
theorem rows477 : actualRows477=WordField.canonicalRows actualModulus 477 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats477 : actualRows477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows477=3396 := by core033_kernel_decide
theorem rows478 : actualRows478=WordField.canonicalRows actualModulus 478 (.band 476 477) := by core033_kernel_decide
theorem stats478 : actualRows478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows478=5124 := by core033_kernel_decide
theorem rows479 : actualRows479=WordField.canonicalRows actualModulus 479 (.shr 19 24) := by core033_kernel_decide
theorem stats479 : actualRows479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows479=3396 := by core033_kernel_decide
theorem rows480 : actualRows480=WordField.canonicalRows actualModulus 480 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats480 : actualRows480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows480=3396 := by core033_kernel_decide
theorem rows481 : actualRows481=WordField.canonicalRows actualModulus 481 (.band 479 480) := by core033_kernel_decide
theorem stats481 : actualRows481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows481=5124 := by core033_kernel_decide
theorem rows482 : actualRows482=WordField.canonicalRows actualModulus 482 (.shr 20 0) := by core033_kernel_decide
theorem stats482 : actualRows482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows482=5124 := by core033_kernel_decide
theorem rows483 : actualRows483=WordField.canonicalRows actualModulus 483 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats483 : actualRows483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows483=3396 := by core033_kernel_decide
theorem rows484 : actualRows484=WordField.canonicalRows actualModulus 484 (.band 482 483) := by core033_kernel_decide
theorem stats484 : actualRows484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows484=5124 := by core033_kernel_decide
theorem rows485 : actualRows485=WordField.canonicalRows actualModulus 485 (.shr 20 8) := by core033_kernel_decide
theorem stats485 : actualRows485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows485=4548 := by core033_kernel_decide
theorem rows486 : actualRows486=WordField.canonicalRows actualModulus 486 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats486 : actualRows486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows486=3396 := by core033_kernel_decide
theorem rows487 : actualRows487=WordField.canonicalRows actualModulus 487 (.band 485 486) := by core033_kernel_decide
theorem stats487 : actualRows487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows487=5124 := by core033_kernel_decide
theorem rows488 : actualRows488=WordField.canonicalRows actualModulus 488 (.shr 20 16) := by core033_kernel_decide
theorem stats488 : actualRows488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows488=3972 := by core033_kernel_decide
theorem rows489 : actualRows489=WordField.canonicalRows actualModulus 489 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats489 : actualRows489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows489=3396 := by core033_kernel_decide
theorem rows490 : actualRows490=WordField.canonicalRows actualModulus 490 (.band 488 489) := by core033_kernel_decide
theorem stats490 : actualRows490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows490=5124 := by core033_kernel_decide
theorem rows491 : actualRows491=WordField.canonicalRows actualModulus 491 (.shr 20 24) := by core033_kernel_decide
theorem stats491 : actualRows491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows491=3396 := by core033_kernel_decide
theorem rows492 : actualRows492=WordField.canonicalRows actualModulus 492 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats492 : actualRows492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows492=3396 := by core033_kernel_decide
theorem rows493 : actualRows493=WordField.canonicalRows actualModulus 493 (.band 491 492) := by core033_kernel_decide
theorem stats493 : actualRows493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows493=5124 := by core033_kernel_decide
theorem rows494 : actualRows494=WordField.canonicalRows actualModulus 494 (.shr 21 0) := by core033_kernel_decide
theorem stats494 : actualRows494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows494=5124 := by core033_kernel_decide
theorem rows495 : actualRows495=WordField.canonicalRows actualModulus 495 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats495 : actualRows495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows495=3396 := by core033_kernel_decide
theorem rows496 : actualRows496=WordField.canonicalRows actualModulus 496 (.band 494 495) := by core033_kernel_decide
theorem stats496 : actualRows496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows496=5124 := by core033_kernel_decide
theorem rows497 : actualRows497=WordField.canonicalRows actualModulus 497 (.shr 21 8) := by core033_kernel_decide
theorem stats497 : actualRows497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows497=4548 := by core033_kernel_decide
theorem rows498 : actualRows498=WordField.canonicalRows actualModulus 498 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats498 : actualRows498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows498=3396 := by core033_kernel_decide
theorem rows499 : actualRows499=WordField.canonicalRows actualModulus 499 (.band 497 498) := by core033_kernel_decide
theorem stats499 : actualRows499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows499=5124 := by core033_kernel_decide
theorem rows500 : actualRows500=WordField.canonicalRows actualModulus 500 (.shr 21 16) := by core033_kernel_decide
theorem stats500 : actualRows500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows500=3972 := by core033_kernel_decide
theorem rows501 : actualRows501=WordField.canonicalRows actualModulus 501 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats501 : actualRows501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows501=3396 := by core033_kernel_decide
theorem rows502 : actualRows502=WordField.canonicalRows actualModulus 502 (.band 500 501) := by core033_kernel_decide
theorem stats502 : actualRows502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows502=5124 := by core033_kernel_decide
theorem rows503 : actualRows503=WordField.canonicalRows actualModulus 503 (.shr 21 24) := by core033_kernel_decide
theorem stats503 : actualRows503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows503=3396 := by core033_kernel_decide
theorem rows504 : actualRows504=WordField.canonicalRows actualModulus 504 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats504 : actualRows504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows504=3396 := by core033_kernel_decide
theorem rows505 : actualRows505=WordField.canonicalRows actualModulus 505 (.band 503 504) := by core033_kernel_decide
theorem stats505 : actualRows505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows505=5124 := by core033_kernel_decide
theorem rows506 : actualRows506=WordField.canonicalRows actualModulus 506 (.shr 26 0) := by core033_kernel_decide
theorem stats506 : actualRows506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows506=5124 := by core033_kernel_decide
theorem rows507 : actualRows507=WordField.canonicalRows actualModulus 507 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats507 : actualRows507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows507=3396 := by core033_kernel_decide
theorem rows508 : actualRows508=WordField.canonicalRows actualModulus 508 (.band 506 507) := by core033_kernel_decide
theorem stats508 : actualRows508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows508=5124 := by core033_kernel_decide
theorem rows509 : actualRows509=WordField.canonicalRows actualModulus 509 (.shr 26 8) := by core033_kernel_decide
theorem stats509 : actualRows509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows509=4548 := by core033_kernel_decide
theorem rows510 : actualRows510=WordField.canonicalRows actualModulus 510 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats510 : actualRows510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows510=3396 := by core033_kernel_decide
theorem rows511 : actualRows511=WordField.canonicalRows actualModulus 511 (.band 509 510) := by core033_kernel_decide
theorem stats511 : actualRows511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows511=5124 := by core033_kernel_decide
theorem rows512 : actualRows512=WordField.canonicalRows actualModulus 512 (.shr 26 16) := by core033_kernel_decide
theorem stats512 : actualRows512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows512=3972 := by core033_kernel_decide
theorem rows513 : actualRows513=WordField.canonicalRows actualModulus 513 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats513 : actualRows513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows513=3396 := by core033_kernel_decide
theorem rows514 : actualRows514=WordField.canonicalRows actualModulus 514 (.band 512 513) := by core033_kernel_decide
theorem stats514 : actualRows514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows514=5124 := by core033_kernel_decide
theorem rows515 : actualRows515=WordField.canonicalRows actualModulus 515 (.shr 26 24) := by core033_kernel_decide
theorem stats515 : actualRows515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows515=3396 := by core033_kernel_decide
theorem rows516 : actualRows516=WordField.canonicalRows actualModulus 516 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats516 : actualRows516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows516=3396 := by core033_kernel_decide
theorem rows517 : actualRows517=WordField.canonicalRows actualModulus 517 (.band 515 516) := by core033_kernel_decide
theorem stats517 : actualRows517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows517=5124 := by core033_kernel_decide
theorem rows518 : actualRows518=WordField.canonicalRows actualModulus 518 (.shr 35 0) := by core033_kernel_decide
theorem stats518 : actualRows518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows518=5124 := by core033_kernel_decide
theorem rows519 : actualRows519=WordField.canonicalRows actualModulus 519 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats519 : actualRows519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows519=3396 := by core033_kernel_decide
theorem rows520 : actualRows520=WordField.canonicalRows actualModulus 520 (.band 518 519) := by core033_kernel_decide
theorem stats520 : actualRows520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows520=5124 := by core033_kernel_decide
theorem rows521 : actualRows521=WordField.canonicalRows actualModulus 521 (.shr 35 8) := by core033_kernel_decide
theorem stats521 : actualRows521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows521=4548 := by core033_kernel_decide
theorem rows522 : actualRows522=WordField.canonicalRows actualModulus 522 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats522 : actualRows522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows522=3396 := by core033_kernel_decide
theorem rows523 : actualRows523=WordField.canonicalRows actualModulus 523 (.band 521 522) := by core033_kernel_decide
theorem stats523 : actualRows523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows523=5124 := by core033_kernel_decide
theorem rows524 : actualRows524=WordField.canonicalRows actualModulus 524 (.shr 35 16) := by core033_kernel_decide
theorem stats524 : actualRows524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows524=3972 := by core033_kernel_decide
theorem rows525 : actualRows525=WordField.canonicalRows actualModulus 525 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats525 : actualRows525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows525=3396 := by core033_kernel_decide
theorem rows526 : actualRows526=WordField.canonicalRows actualModulus 526 (.band 524 525) := by core033_kernel_decide
theorem stats526 : actualRows526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows526=5124 := by core033_kernel_decide
theorem rows527 : actualRows527=WordField.canonicalRows actualModulus 527 (.shr 35 24) := by core033_kernel_decide
theorem stats527 : actualRows527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows527=3396 := by core033_kernel_decide
theorem rows528 : actualRows528=WordField.canonicalRows actualModulus 528 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats528 : actualRows528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows528=3396 := by core033_kernel_decide
theorem rows529 : actualRows529=WordField.canonicalRows actualModulus 529 (.band 527 528) := by core033_kernel_decide
theorem stats529 : actualRows529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows529=5124 := by core033_kernel_decide
theorem rows530 : actualRows530=WordField.canonicalRows actualModulus 530 (.shr 161 0) := by core033_kernel_decide
theorem stats530 : actualRows530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows530=5124 := by core033_kernel_decide
theorem rows531 : actualRows531=WordField.canonicalRows actualModulus 531 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats531 : actualRows531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows531=3396 := by core033_kernel_decide
theorem rows532 : actualRows532=WordField.canonicalRows actualModulus 532 (.band 530 531) := by core033_kernel_decide
theorem stats532 : actualRows532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows532=5124 := by core033_kernel_decide
theorem rows533 : actualRows533=WordField.canonicalRows actualModulus 533 (.shr 162 0) := by core033_kernel_decide
theorem stats533 : actualRows533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows533=5124 := by core033_kernel_decide
theorem rows534 : actualRows534=WordField.canonicalRows actualModulus 534 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats534 : actualRows534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows534=3396 := by core033_kernel_decide
theorem rows535 : actualRows535=WordField.canonicalRows actualModulus 535 (.band 533 534) := by core033_kernel_decide
theorem stats535 : actualRows535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows535=5124 := by core033_kernel_decide
theorem rows536 : actualRows536=WordField.canonicalRows actualModulus 536 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats536 : actualRows536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows536=2820 := by core033_kernel_decide
theorem rows537 : actualRows537=WordField.canonicalRows actualModulus 537 (.bnot 536) := by core033_kernel_decide
theorem stats537 : actualRows537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows537=6276 := by core033_kernel_decide
def partRows7 : List R1CS.Row := actualRows474++actualRows475++actualRows476++actualRows477++actualRows478++actualRows479++actualRows480++actualRows481++actualRows482++actualRows483++actualRows484++actualRows485++actualRows486++actualRows487++actualRows488++actualRows489++actualRows490++actualRows491++actualRows492++actualRows493++actualRows494++actualRows495++actualRows496++actualRows497++actualRows498++actualRows499++actualRows500++actualRows501++actualRows502++actualRows503++actualRows504++actualRows505++actualRows506++actualRows507++actualRows508++actualRows509++actualRows510++actualRows511++actualRows512++actualRows513++actualRows514++actualRows515++actualRows516++actualRows517++actualRows518++actualRows519++actualRows520++actualRows521++actualRows522++actualRows523++actualRows524++actualRows525++actualRows526++actualRows527++actualRows528++actualRows529++actualRows530++actualRows531++actualRows532++actualRows533++actualRows534++actualRows535++actualRows536++actualRows537
def partOps7 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 473 474,.shr 19 16,.literal (BitVec.ofNat 32 255),.band 476 477,.shr 19 24,.literal (BitVec.ofNat 32 255),.band 479 480,.shr 20 0,.literal (BitVec.ofNat 32 255),.band 482 483,.shr 20 8,.literal (BitVec.ofNat 32 255),.band 485 486,.shr 20 16,.literal (BitVec.ofNat 32 255),.band 488 489,.shr 20 24,.literal (BitVec.ofNat 32 255),.band 491 492,.shr 21 0,.literal (BitVec.ofNat 32 255),.band 494 495,.shr 21 8,.literal (BitVec.ofNat 32 255),.band 497 498,.shr 21 16,.literal (BitVec.ofNat 32 255),.band 500 501,.shr 21 24,.literal (BitVec.ofNat 32 255),.band 503 504,.shr 26 0,.literal (BitVec.ofNat 32 255),.band 506 507,.shr 26 8,.literal (BitVec.ofNat 32 255),.band 509 510,.shr 26 16,.literal (BitVec.ofNat 32 255),.band 512 513,.shr 26 24,.literal (BitVec.ofNat 32 255),.band 515 516,.shr 35 0,.literal (BitVec.ofNat 32 255),.band 518 519,.shr 35 8,.literal (BitVec.ofNat 32 255),.band 521 522,.shr 35 16,.literal (BitVec.ofNat 32 255),.band 524 525,.shr 35 24,.literal (BitVec.ofNat 32 255),.band 527 528,.shr 161 0,.literal (BitVec.ofNat 32 255),.band 530 531,.shr 162 0,.literal (BitVec.ofNat 32 255),.band 533 534,.literal (BitVec.ofNat 32 0),.bnot 536]
theorem partExact7 : partRows7=WordField.rows actualModulus 474 partOps7 := by
  simp only [partRows7,partOps7,WordField.rows,rows474,rows475,rows476,rows477,rows478,rows479,rows480,rows481,rows482,rows483,rows484,rows485,rows486,rows487,rows488,rows489,rows490,rows491,rows492,rows493,rows494,rows495,rows496,rows497,rows498,rows499,rows500,rows501,rows502,rows503,rows504,rows505,rows506,rows507,rows508,rows509,rows510,rows511,rows512,rows513,rows514,rows515,rows516,rows517,rows518,rows519,rows520,rows521,rows522,rows523,rows524,rows525,rows526,rows527,rows528,rows529,rows530,rows531,rows532,rows533,rows534,rows535,rows536,rows537,List.append_assoc,List.append_nil]
theorem partLength7 : partOps7.length=64 := by decide
theorem partStats7 : partRows7.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows7=273792 := by
  simp only [partRows7,List.length_append,MatrixRowBlocks.rows_weight_append,stats474.1,stats474.2,stats475.1,stats475.2,stats476.1,stats476.2,stats477.1,stats477.2,stats478.1,stats478.2,stats479.1,stats479.2,stats480.1,stats480.2,stats481.1,stats481.2,stats482.1,stats482.2,stats483.1,stats483.2,stats484.1,stats484.2,stats485.1,stats485.2,stats486.1,stats486.2,stats487.1,stats487.2,stats488.1,stats488.2,stats489.1,stats489.2,stats490.1,stats490.2,stats491.1,stats491.2,stats492.1,stats492.2,stats493.1,stats493.2,stats494.1,stats494.2,stats495.1,stats495.2,stats496.1,stats496.2,stats497.1,stats497.2,stats498.1,stats498.2,stats499.1,stats499.2,stats500.1,stats500.2,stats501.1,stats501.2,stats502.1,stats502.2,stats503.1,stats503.2,stats504.1,stats504.2,stats505.1,stats505.2,stats506.1,stats506.2,stats507.1,stats507.2,stats508.1,stats508.2,stats509.1,stats509.2,stats510.1,stats510.2,stats511.1,stats511.2,stats512.1,stats512.2,stats513.1,stats513.2,stats514.1,stats514.2,stats515.1,stats515.2,stats516.1,stats516.2,stats517.1,stats517.2,stats518.1,stats518.2,stats519.1,stats519.2,stats520.1,stats520.2,stats521.1,stats521.2,stats522.1,stats522.2,stats523.1,stats523.2,stats524.1,stats524.2,stats525.1,stats525.2,stats526.1,stats526.2,stats527.1,stats527.2,stats528.1,stats528.2,stats529.1,stats529.2,stats530.1,stats530.2,stats531.1,stats531.2,stats532.1,stats532.2,stats533.1,stats533.2,stats534.1,stats534.2,stats535.1,stats535.2,stats536.1,stats536.2,stats537.1,stats537.2]
  decide
end ParentBranchCheckedRows
