import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData7
import PathRoundDispatchInstructionMatrixData8
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows491 : actualRows491=WordField.canonicalRows actualModulus 491 (.band 489 490) := by core033_kernel_decide
theorem stats491 : actualRows491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows491=5124 := by core033_kernel_decide
theorem rows492 : actualRows492=WordField.canonicalRows actualModulus 492 (.bxor 485 491) := by core033_kernel_decide
theorem stats492 : actualRows492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows492=7428 := by core033_kernel_decide
theorem rows493 : actualRows493=WordField.canonicalRows actualModulus 493 (.bnot 85) := by core033_kernel_decide
theorem stats493 : actualRows493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows493=6276 := by core033_kernel_decide
theorem rows494 : actualRows494=WordField.canonicalRows actualModulus 494 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats494 : actualRows494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows494=2892 := by core033_kernel_decide
theorem rows495 : actualRows495=WordField.canonicalRows actualModulus 495 (.badd 493 494) := by core033_kernel_decide
theorem stats495 : actualRows495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows495=5388 := by core033_kernel_decide
theorem rows496 : actualRows496=WordField.canonicalRows actualModulus 496 (.band 495 37) := by core033_kernel_decide
theorem stats496 : actualRows496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows496=5124 := by core033_kernel_decide
theorem rows497 : actualRows497=WordField.canonicalRows actualModulus 497 (.bnot 85) := by core033_kernel_decide
theorem stats497 : actualRows497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows497=6276 := by core033_kernel_decide
theorem rows498 : actualRows498=WordField.canonicalRows actualModulus 498 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats498 : actualRows498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows498=2892 := by core033_kernel_decide
theorem rows499 : actualRows499=WordField.canonicalRows actualModulus 499 (.badd 497 498) := by core033_kernel_decide
theorem stats499 : actualRows499.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows499=5388 := by core033_kernel_decide
theorem rows500 : actualRows500=WordField.canonicalRows actualModulus 500 (.bnot 499) := by core033_kernel_decide
theorem stats500 : actualRows500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows500=6276 := by core033_kernel_decide
theorem rows501 : actualRows501=WordField.canonicalRows actualModulus 501 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats501 : actualRows501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows501=2820 := by core033_kernel_decide
theorem rows502 : actualRows502=WordField.canonicalRows actualModulus 502 (.band 500 501) := by core033_kernel_decide
theorem stats502 : actualRows502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows502=5124 := by core033_kernel_decide
theorem rows503 : actualRows503=WordField.canonicalRows actualModulus 503 (.bxor 496 502) := by core033_kernel_decide
theorem stats503 : actualRows503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows503=7428 := by core033_kernel_decide
theorem rows504 : actualRows504=WordField.canonicalRows actualModulus 504 (.bnot 85) := by core033_kernel_decide
theorem stats504 : actualRows504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows504=6276 := by core033_kernel_decide
theorem rows505 : actualRows505=WordField.canonicalRows actualModulus 505 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats505 : actualRows505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows505=2892 := by core033_kernel_decide
theorem rows506 : actualRows506=WordField.canonicalRows actualModulus 506 (.badd 504 505) := by core033_kernel_decide
theorem stats506 : actualRows506.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows506=5388 := by core033_kernel_decide
theorem rows507 : actualRows507=WordField.canonicalRows actualModulus 507 (.band 506 38) := by core033_kernel_decide
theorem stats507 : actualRows507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows507=5124 := by core033_kernel_decide
theorem rows508 : actualRows508=WordField.canonicalRows actualModulus 508 (.bnot 85) := by core033_kernel_decide
theorem stats508 : actualRows508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows508=6276 := by core033_kernel_decide
theorem rows509 : actualRows509=WordField.canonicalRows actualModulus 509 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats509 : actualRows509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows509=2892 := by core033_kernel_decide
theorem rows510 : actualRows510=WordField.canonicalRows actualModulus 510 (.badd 508 509) := by core033_kernel_decide
theorem stats510 : actualRows510.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows510=5388 := by core033_kernel_decide
theorem rows511 : actualRows511=WordField.canonicalRows actualModulus 511 (.bnot 510) := by core033_kernel_decide
theorem stats511 : actualRows511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows511=6276 := by core033_kernel_decide
theorem rows512 : actualRows512=WordField.canonicalRows actualModulus 512 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats512 : actualRows512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows512=2820 := by core033_kernel_decide
theorem rows513 : actualRows513=WordField.canonicalRows actualModulus 513 (.band 511 512) := by core033_kernel_decide
theorem stats513 : actualRows513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows513=5124 := by core033_kernel_decide
theorem rows514 : actualRows514=WordField.canonicalRows actualModulus 514 (.bxor 507 513) := by core033_kernel_decide
theorem stats514 : actualRows514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows514=7428 := by core033_kernel_decide
theorem rows515 : actualRows515=WordField.canonicalRows actualModulus 515 (.bnot 85) := by core033_kernel_decide
theorem stats515 : actualRows515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows515=6276 := by core033_kernel_decide
theorem rows516 : actualRows516=WordField.canonicalRows actualModulus 516 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats516 : actualRows516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows516=2892 := by core033_kernel_decide
theorem rows517 : actualRows517=WordField.canonicalRows actualModulus 517 (.badd 515 516) := by core033_kernel_decide
theorem stats517 : actualRows517.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows517=5388 := by core033_kernel_decide
theorem rows518 : actualRows518=WordField.canonicalRows actualModulus 518 (.band 517 39) := by core033_kernel_decide
theorem stats518 : actualRows518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows518=5124 := by core033_kernel_decide
theorem rows519 : actualRows519=WordField.canonicalRows actualModulus 519 (.bnot 85) := by core033_kernel_decide
theorem stats519 : actualRows519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows519=6276 := by core033_kernel_decide
theorem rows520 : actualRows520=WordField.canonicalRows actualModulus 520 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats520 : actualRows520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows520=2892 := by core033_kernel_decide
theorem rows521 : actualRows521=WordField.canonicalRows actualModulus 521 (.badd 519 520) := by core033_kernel_decide
theorem stats521 : actualRows521.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows521=5388 := by core033_kernel_decide
theorem rows522 : actualRows522=WordField.canonicalRows actualModulus 522 (.bnot 521) := by core033_kernel_decide
theorem stats522 : actualRows522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows522=6276 := by core033_kernel_decide
theorem rows523 : actualRows523=WordField.canonicalRows actualModulus 523 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats523 : actualRows523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows523=2820 := by core033_kernel_decide
theorem rows524 : actualRows524=WordField.canonicalRows actualModulus 524 (.band 522 523) := by core033_kernel_decide
theorem stats524 : actualRows524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows524=5124 := by core033_kernel_decide
theorem rows525 : actualRows525=WordField.canonicalRows actualModulus 525 (.bxor 518 524) := by core033_kernel_decide
theorem stats525 : actualRows525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows525=7428 := by core033_kernel_decide
theorem rows526 : actualRows526=WordField.canonicalRows actualModulus 526 (.bnot 85) := by core033_kernel_decide
theorem stats526 : actualRows526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows526=6276 := by core033_kernel_decide
theorem rows527 : actualRows527=WordField.canonicalRows actualModulus 527 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats527 : actualRows527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows527=2892 := by core033_kernel_decide
theorem rows528 : actualRows528=WordField.canonicalRows actualModulus 528 (.badd 526 527) := by core033_kernel_decide
theorem stats528 : actualRows528.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows528=5388 := by core033_kernel_decide
theorem rows529 : actualRows529=WordField.canonicalRows actualModulus 529 (.band 528 40) := by core033_kernel_decide
theorem stats529 : actualRows529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows529=5124 := by core033_kernel_decide
theorem rows530 : actualRows530=WordField.canonicalRows actualModulus 530 (.bnot 85) := by core033_kernel_decide
theorem stats530 : actualRows530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows530=6276 := by core033_kernel_decide
theorem rows531 : actualRows531=WordField.canonicalRows actualModulus 531 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats531 : actualRows531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows531=2892 := by core033_kernel_decide
theorem rows532 : actualRows532=WordField.canonicalRows actualModulus 532 (.badd 530 531) := by core033_kernel_decide
theorem stats532 : actualRows532.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows532=5388 := by core033_kernel_decide
theorem rows533 : actualRows533=WordField.canonicalRows actualModulus 533 (.bnot 532) := by core033_kernel_decide
theorem stats533 : actualRows533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows533=6276 := by core033_kernel_decide
theorem rows534 : actualRows534=WordField.canonicalRows actualModulus 534 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats534 : actualRows534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows534=2820 := by core033_kernel_decide
theorem rows535 : actualRows535=WordField.canonicalRows actualModulus 535 (.band 533 534) := by core033_kernel_decide
theorem stats535 : actualRows535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows535=5124 := by core033_kernel_decide
theorem rows536 : actualRows536=WordField.canonicalRows actualModulus 536 (.bxor 529 535) := by core033_kernel_decide
theorem stats536 : actualRows536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows536=7428 := by core033_kernel_decide
theorem rows537 : actualRows537=WordField.canonicalRows actualModulus 537 (.bnot 85) := by core033_kernel_decide
theorem stats537 : actualRows537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows537=6276 := by core033_kernel_decide
theorem rows538 : actualRows538=WordField.canonicalRows actualModulus 538 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats538 : actualRows538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows538=2892 := by core033_kernel_decide
theorem rows539 : actualRows539=WordField.canonicalRows actualModulus 539 (.badd 537 538) := by core033_kernel_decide
theorem stats539 : actualRows539.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows539=5388 := by core033_kernel_decide
theorem rows540 : actualRows540=WordField.canonicalRows actualModulus 540 (.band 539 41) := by core033_kernel_decide
theorem stats540 : actualRows540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows540=5124 := by core033_kernel_decide
theorem rows541 : actualRows541=WordField.canonicalRows actualModulus 541 (.bnot 85) := by core033_kernel_decide
theorem stats541 : actualRows541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows541=6276 := by core033_kernel_decide
theorem rows542 : actualRows542=WordField.canonicalRows actualModulus 542 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats542 : actualRows542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows542=2892 := by core033_kernel_decide
theorem rows543 : actualRows543=WordField.canonicalRows actualModulus 543 (.badd 541 542) := by core033_kernel_decide
theorem stats543 : actualRows543.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows543=5388 := by core033_kernel_decide
theorem rows544 : actualRows544=WordField.canonicalRows actualModulus 544 (.bnot 543) := by core033_kernel_decide
theorem stats544 : actualRows544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows544=6276 := by core033_kernel_decide
theorem rows545 : actualRows545=WordField.canonicalRows actualModulus 545 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats545 : actualRows545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows545=2820 := by core033_kernel_decide
theorem rows546 : actualRows546=WordField.canonicalRows actualModulus 546 (.band 544 545) := by core033_kernel_decide
theorem stats546 : actualRows546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows546=5124 := by core033_kernel_decide
theorem rows547 : actualRows547=WordField.canonicalRows actualModulus 547 (.bxor 540 546) := by core033_kernel_decide
theorem stats547 : actualRows547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows547=7428 := by core033_kernel_decide
theorem rows548 : actualRows548=WordField.canonicalRows actualModulus 548 (.bnot 85) := by core033_kernel_decide
theorem stats548 : actualRows548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows548=6276 := by core033_kernel_decide
theorem rows549 : actualRows549=WordField.canonicalRows actualModulus 549 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats549 : actualRows549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows549=2892 := by core033_kernel_decide
theorem rows550 : actualRows550=WordField.canonicalRows actualModulus 550 (.badd 548 549) := by core033_kernel_decide
theorem stats550 : actualRows550.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows550=5388 := by core033_kernel_decide
theorem rows551 : actualRows551=WordField.canonicalRows actualModulus 551 (.band 550 42) := by core033_kernel_decide
theorem stats551 : actualRows551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows551=5124 := by core033_kernel_decide
theorem rows552 : actualRows552=WordField.canonicalRows actualModulus 552 (.bnot 85) := by core033_kernel_decide
theorem stats552 : actualRows552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows552=6276 := by core033_kernel_decide
theorem rows553 : actualRows553=WordField.canonicalRows actualModulus 553 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats553 : actualRows553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows553=2892 := by core033_kernel_decide
theorem rows554 : actualRows554=WordField.canonicalRows actualModulus 554 (.badd 552 553) := by core033_kernel_decide
theorem stats554 : actualRows554.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows554=5388 := by core033_kernel_decide
def partRows7 : List R1CS.Row := actualRows491++actualRows492++actualRows493++actualRows494++actualRows495++actualRows496++actualRows497++actualRows498++actualRows499++actualRows500++actualRows501++actualRows502++actualRows503++actualRows504++actualRows505++actualRows506++actualRows507++actualRows508++actualRows509++actualRows510++actualRows511++actualRows512++actualRows513++actualRows514++actualRows515++actualRows516++actualRows517++actualRows518++actualRows519++actualRows520++actualRows521++actualRows522++actualRows523++actualRows524++actualRows525++actualRows526++actualRows527++actualRows528++actualRows529++actualRows530++actualRows531++actualRows532++actualRows533++actualRows534++actualRows535++actualRows536++actualRows537++actualRows538++actualRows539++actualRows540++actualRows541++actualRows542++actualRows543++actualRows544++actualRows545++actualRows546++actualRows547++actualRows548++actualRows549++actualRows550++actualRows551++actualRows552++actualRows553++actualRows554
def partOps7 : List WordIR.Op := [.band 489 490,.bxor 485 491,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 493 494,.band 495 37,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 497 498,.bnot 499,.literal (BitVec.ofNat 32 0),.band 500 501,.bxor 496 502,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 504 505,.band 506 38,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 508 509,.bnot 510,.literal (BitVec.ofNat 32 0),.band 511 512,.bxor 507 513,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 515 516,.band 517 39,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 519 520,.bnot 521,.literal (BitVec.ofNat 32 0),.band 522 523,.bxor 518 524,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 526 527,.band 528 40,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 530 531,.bnot 532,.literal (BitVec.ofNat 32 0),.band 533 534,.bxor 529 535,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 537 538,.band 539 41,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 541 542,.bnot 543,.literal (BitVec.ofNat 32 0),.band 544 545,.bxor 540 546,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 548 549,.band 550 42,.bnot 85,.literal (BitVec.ofNat 32 1),.badd 552 553]
theorem partExact7 : partRows7=WordField.rows actualModulus 491 partOps7 := by
  simp only [partRows7,partOps7,WordField.rows,rows491,rows492,rows493,rows494,rows495,rows496,rows497,rows498,rows499,rows500,rows501,rows502,rows503,rows504,rows505,rows506,rows507,rows508,rows509,rows510,rows511,rows512,rows513,rows514,rows515,rows516,rows517,rows518,rows519,rows520,rows521,rows522,rows523,rows524,rows525,rows526,rows527,rows528,rows529,rows530,rows531,rows532,rows533,rows534,rows535,rows536,rows537,rows538,rows539,rows540,rows541,rows542,rows543,rows544,rows545,rows546,rows547,rows548,rows549,rows550,rows551,rows552,rows553,rows554,List.append_assoc,List.append_nil]
theorem partLength7 : partOps7.length=64 := by decide
theorem partStats7 : partRows7.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows7=326208 := by
  simp only [partRows7,List.length_append,MatrixRowBlocks.rows_weight_append,stats491.1,stats491.2,stats492.1,stats492.2,stats493.1,stats493.2,stats494.1,stats494.2,stats495.1,stats495.2,stats496.1,stats496.2,stats497.1,stats497.2,stats498.1,stats498.2,stats499.1,stats499.2,stats500.1,stats500.2,stats501.1,stats501.2,stats502.1,stats502.2,stats503.1,stats503.2,stats504.1,stats504.2,stats505.1,stats505.2,stats506.1,stats506.2,stats507.1,stats507.2,stats508.1,stats508.2,stats509.1,stats509.2,stats510.1,stats510.2,stats511.1,stats511.2,stats512.1,stats512.2,stats513.1,stats513.2,stats514.1,stats514.2,stats515.1,stats515.2,stats516.1,stats516.2,stats517.1,stats517.2,stats518.1,stats518.2,stats519.1,stats519.2,stats520.1,stats520.2,stats521.1,stats521.2,stats522.1,stats522.2,stats523.1,stats523.2,stats524.1,stats524.2,stats525.1,stats525.2,stats526.1,stats526.2,stats527.1,stats527.2,stats528.1,stats528.2,stats529.1,stats529.2,stats530.1,stats530.2,stats531.1,stats531.2,stats532.1,stats532.2,stats533.1,stats533.2,stats534.1,stats534.2,stats535.1,stats535.2,stats536.1,stats536.2,stats537.1,stats537.2,stats538.1,stats538.2,stats539.1,stats539.2,stats540.1,stats540.2,stats541.1,stats541.2,stats542.1,stats542.2,stats543.1,stats543.2,stats544.1,stats544.2,stats545.1,stats545.2,stats546.1,stats546.2,stats547.1,stats547.2,stats548.1,stats548.2,stats549.1,stats549.2,stats550.1,stats550.2,stats551.1,stats551.2,stats552.1,stats552.2,stats553.1,stats553.2,stats554.1,stats554.2]
  decide
end PathRoundDispatchCheckedRows
