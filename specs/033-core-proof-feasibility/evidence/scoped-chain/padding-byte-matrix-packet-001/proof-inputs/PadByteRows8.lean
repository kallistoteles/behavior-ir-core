import ActualPadByteIR
import ArtifactPadByteBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PadByteInstructionMatrixData8
import PadByteInstructionMatrixData9
namespace PadByteCheckedRows
open Core033 PadByteInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows515 : actualRows515=WordField.canonicalRows actualModulus 515 (.literal (BitVec.ofNat 32 4294967294)) := by core033_kernel_decide
theorem stats515 : actualRows515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows515=5052 := by core033_kernel_decide
theorem rows516 : actualRows516=WordField.canonicalRows actualModulus 516 (.badd 514 515) := by core033_kernel_decide
theorem stats516 : actualRows516.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows516=5388 := by core033_kernel_decide
theorem rows517 : actualRows517=WordField.canonicalRows actualModulus 517 (.bxor 1 516) := by core033_kernel_decide
theorem stats517 : actualRows517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows517=7428 := by core033_kernel_decide
theorem rows518 : actualRows518=WordField.canonicalRows actualModulus 518 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats518 : actualRows518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows518=2820 := by core033_kernel_decide
theorem rows519 : actualRows519=WordField.canonicalRows actualModulus 519 (.bnot 518) := by core033_kernel_decide
theorem stats519 : actualRows519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows519=6276 := by core033_kernel_decide
theorem rows520 : actualRows520=WordField.canonicalRows actualModulus 520 (.badd 517 519) := by core033_kernel_decide
theorem stats520 : actualRows520.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows520=5388 := by core033_kernel_decide
theorem rows521 : actualRows521=WordField.canonicalRows actualModulus 521 (.bnot 520) := by core033_kernel_decide
theorem stats521 : actualRows521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows521=6276 := by core033_kernel_decide
theorem rows522 : actualRows522=WordField.canonicalRows actualModulus 522 (.band 502 521) := by core033_kernel_decide
theorem stats522 : actualRows522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows522=5124 := by core033_kernel_decide
theorem rows523 : actualRows523=WordField.canonicalRows actualModulus 523 (.bxor 484 522) := by core033_kernel_decide
theorem stats523 : actualRows523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows523=7428 := by core033_kernel_decide
theorem rows524 : actualRows524=WordField.canonicalRows actualModulus 524 (.shr 523 31) := by core033_kernel_decide
theorem stats524 : actualRows524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows524=2892 := by core033_kernel_decide
theorem rows525 : actualRows525=WordField.canonicalRows actualModulus 525 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats525 : actualRows525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows525=2892 := by core033_kernel_decide
theorem rows526 : actualRows526=WordField.canonicalRows actualModulus 526 (.bxor 524 525) := by core033_kernel_decide
theorem stats526 : actualRows526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows526=7428 := by core033_kernel_decide
theorem rows527 : actualRows527=WordField.canonicalRows actualModulus 527 (.bnot 526) := by core033_kernel_decide
theorem stats527 : actualRows527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows527=6276 := by core033_kernel_decide
theorem rows528 : actualRows528=WordField.canonicalRows actualModulus 528 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats528 : actualRows528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows528=2892 := by core033_kernel_decide
theorem rows529 : actualRows529=WordField.canonicalRows actualModulus 529 (.badd 527 528) := by core033_kernel_decide
theorem stats529 : actualRows529.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows529=5388 := by core033_kernel_decide
theorem rows530 : actualRows530=WordField.canonicalRows actualModulus 530 (.shr 0 5) := by core033_kernel_decide
theorem stats530 : actualRows530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows530=4764 := by core033_kernel_decide
theorem rows531 : actualRows531=WordField.canonicalRows actualModulus 531 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats531 : actualRows531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows531=3396 := by core033_kernel_decide
theorem rows532 : actualRows532=WordField.canonicalRows actualModulus 532 (.band 530 531) := by core033_kernel_decide
theorem stats532 : actualRows532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows532=5124 := by core033_kernel_decide
theorem rows533 : actualRows533=WordField.canonicalRows actualModulus 533 (.band 529 532) := by core033_kernel_decide
theorem stats533 : actualRows533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows533=5124 := by core033_kernel_decide
theorem rows534 : actualRows534=WordField.canonicalRows actualModulus 534 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats534 : actualRows534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows534=2964 := by core033_kernel_decide
theorem rows535 : actualRows535=WordField.canonicalRows actualModulus 535 (.badd 0 534) := by core033_kernel_decide
theorem stats535 : actualRows535.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows535=5388 := by core033_kernel_decide
theorem rows536 : actualRows536=WordField.canonicalRows actualModulus 536 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats536 : actualRows536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows536=3252 := by core033_kernel_decide
theorem rows537 : actualRows537=WordField.canonicalRows actualModulus 537 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats537 : actualRows537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows537=3252 := by core033_kernel_decide
theorem rows538 : actualRows538=WordField.canonicalRows actualModulus 538 (.band 0 537) := by core033_kernel_decide
theorem stats538 : actualRows538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows538=5124 := by core033_kernel_decide
theorem rows539 : actualRows539=WordField.canonicalRows actualModulus 539 (.bnot 538) := by core033_kernel_decide
theorem stats539 : actualRows539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows539=6276 := by core033_kernel_decide
theorem rows540 : actualRows540=WordField.canonicalRows actualModulus 540 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats540 : actualRows540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows540=2892 := by core033_kernel_decide
theorem rows541 : actualRows541=WordField.canonicalRows actualModulus 541 (.badd 539 540) := by core033_kernel_decide
theorem stats541 : actualRows541.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows541=5388 := by core033_kernel_decide
theorem rows542 : actualRows542=WordField.canonicalRows actualModulus 542 (.badd 536 541) := by core033_kernel_decide
theorem stats542 : actualRows542.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows542=5388 := by core033_kernel_decide
theorem rows543 : actualRows543=WordField.canonicalRows actualModulus 543 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats543 : actualRows543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows543=3252 := by core033_kernel_decide
theorem rows544 : actualRows544=WordField.canonicalRows actualModulus 544 (.band 542 543) := by core033_kernel_decide
theorem stats544 : actualRows544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows544=5124 := by core033_kernel_decide
theorem rows545 : actualRows545=WordField.canonicalRows actualModulus 545 (.badd 535 544) := by core033_kernel_decide
theorem stats545 : actualRows545.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows545=5388 := by core033_kernel_decide
theorem rows546 : actualRows546=WordField.canonicalRows actualModulus 546 (.literal (BitVec.ofNat 32 4294967294)) := by core033_kernel_decide
theorem stats546 : actualRows546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows546=5052 := by core033_kernel_decide
theorem rows547 : actualRows547=WordField.canonicalRows actualModulus 547 (.badd 545 546) := by core033_kernel_decide
theorem stats547 : actualRows547.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows547=5388 := by core033_kernel_decide
theorem rows548 : actualRows548=WordField.canonicalRows actualModulus 548 (.bxor 1 547) := by core033_kernel_decide
theorem stats548 : actualRows548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows548=7428 := by core033_kernel_decide
theorem rows549 : actualRows549=WordField.canonicalRows actualModulus 549 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats549 : actualRows549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows549=2820 := by core033_kernel_decide
theorem rows550 : actualRows550=WordField.canonicalRows actualModulus 550 (.bnot 549) := by core033_kernel_decide
theorem stats550 : actualRows550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows550=6276 := by core033_kernel_decide
theorem rows551 : actualRows551=WordField.canonicalRows actualModulus 551 (.band 548 550) := by core033_kernel_decide
theorem stats551 : actualRows551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows551=5124 := by core033_kernel_decide
theorem rows552 : actualRows552=WordField.canonicalRows actualModulus 552 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats552 : actualRows552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows552=2964 := by core033_kernel_decide
theorem rows553 : actualRows553=WordField.canonicalRows actualModulus 553 (.badd 0 552) := by core033_kernel_decide
theorem stats553 : actualRows553.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows553=5388 := by core033_kernel_decide
theorem rows554 : actualRows554=WordField.canonicalRows actualModulus 554 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats554 : actualRows554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows554=3252 := by core033_kernel_decide
theorem rows555 : actualRows555=WordField.canonicalRows actualModulus 555 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats555 : actualRows555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows555=3252 := by core033_kernel_decide
theorem rows556 : actualRows556=WordField.canonicalRows actualModulus 556 (.band 0 555) := by core033_kernel_decide
theorem stats556 : actualRows556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows556=5124 := by core033_kernel_decide
theorem rows557 : actualRows557=WordField.canonicalRows actualModulus 557 (.bnot 556) := by core033_kernel_decide
theorem stats557 : actualRows557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows557=6276 := by core033_kernel_decide
theorem rows558 : actualRows558=WordField.canonicalRows actualModulus 558 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats558 : actualRows558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows558=2892 := by core033_kernel_decide
theorem rows559 : actualRows559=WordField.canonicalRows actualModulus 559 (.badd 557 558) := by core033_kernel_decide
theorem stats559 : actualRows559.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows559=5388 := by core033_kernel_decide
theorem rows560 : actualRows560=WordField.canonicalRows actualModulus 560 (.badd 554 559) := by core033_kernel_decide
theorem stats560 : actualRows560.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows560=5388 := by core033_kernel_decide
theorem rows561 : actualRows561=WordField.canonicalRows actualModulus 561 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats561 : actualRows561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows561=3252 := by core033_kernel_decide
theorem rows562 : actualRows562=WordField.canonicalRows actualModulus 562 (.band 560 561) := by core033_kernel_decide
theorem stats562 : actualRows562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows562=5124 := by core033_kernel_decide
theorem rows563 : actualRows563=WordField.canonicalRows actualModulus 563 (.badd 553 562) := by core033_kernel_decide
theorem stats563 : actualRows563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows563=5388 := by core033_kernel_decide
theorem rows564 : actualRows564=WordField.canonicalRows actualModulus 564 (.literal (BitVec.ofNat 32 4294967294)) := by core033_kernel_decide
theorem stats564 : actualRows564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows564=5052 := by core033_kernel_decide
theorem rows565 : actualRows565=WordField.canonicalRows actualModulus 565 (.badd 563 564) := by core033_kernel_decide
theorem stats565 : actualRows565.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows565=5388 := by core033_kernel_decide
theorem rows566 : actualRows566=WordField.canonicalRows actualModulus 566 (.bxor 1 565) := by core033_kernel_decide
theorem stats566 : actualRows566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows566=7428 := by core033_kernel_decide
theorem rows567 : actualRows567=WordField.canonicalRows actualModulus 567 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats567 : actualRows567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows567=2820 := by core033_kernel_decide
theorem rows568 : actualRows568=WordField.canonicalRows actualModulus 568 (.bnot 567) := by core033_kernel_decide
theorem stats568 : actualRows568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows568=6276 := by core033_kernel_decide
theorem rows569 : actualRows569=WordField.canonicalRows actualModulus 569 (.bxor 566 568) := by core033_kernel_decide
theorem stats569 : actualRows569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows569=7428 := by core033_kernel_decide
theorem rows570 : actualRows570=WordField.canonicalRows actualModulus 570 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats570 : actualRows570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows570=2964 := by core033_kernel_decide
theorem rows571 : actualRows571=WordField.canonicalRows actualModulus 571 (.badd 0 570) := by core033_kernel_decide
theorem stats571 : actualRows571.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows571=5388 := by core033_kernel_decide
theorem rows572 : actualRows572=WordField.canonicalRows actualModulus 572 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats572 : actualRows572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows572=3252 := by core033_kernel_decide
theorem rows573 : actualRows573=WordField.canonicalRows actualModulus 573 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats573 : actualRows573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows573=3252 := by core033_kernel_decide
theorem rows574 : actualRows574=WordField.canonicalRows actualModulus 574 (.band 0 573) := by core033_kernel_decide
theorem stats574 : actualRows574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows574=5124 := by core033_kernel_decide
theorem rows575 : actualRows575=WordField.canonicalRows actualModulus 575 (.bnot 574) := by core033_kernel_decide
theorem stats575 : actualRows575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows575=6276 := by core033_kernel_decide
theorem rows576 : actualRows576=WordField.canonicalRows actualModulus 576 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats576 : actualRows576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows576=2892 := by core033_kernel_decide
theorem rows577 : actualRows577=WordField.canonicalRows actualModulus 577 (.badd 575 576) := by core033_kernel_decide
theorem stats577 : actualRows577.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows577=5388 := by core033_kernel_decide
theorem rows578 : actualRows578=WordField.canonicalRows actualModulus 578 (.badd 572 577) := by core033_kernel_decide
theorem stats578 : actualRows578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows578=5388 := by core033_kernel_decide
def partRows8 : List R1CS.Row := actualRows515++actualRows516++actualRows517++actualRows518++actualRows519++actualRows520++actualRows521++actualRows522++actualRows523++actualRows524++actualRows525++actualRows526++actualRows527++actualRows528++actualRows529++actualRows530++actualRows531++actualRows532++actualRows533++actualRows534++actualRows535++actualRows536++actualRows537++actualRows538++actualRows539++actualRows540++actualRows541++actualRows542++actualRows543++actualRows544++actualRows545++actualRows546++actualRows547++actualRows548++actualRows549++actualRows550++actualRows551++actualRows552++actualRows553++actualRows554++actualRows555++actualRows556++actualRows557++actualRows558++actualRows559++actualRows560++actualRows561++actualRows562++actualRows563++actualRows564++actualRows565++actualRows566++actualRows567++actualRows568++actualRows569++actualRows570++actualRows571++actualRows572++actualRows573++actualRows574++actualRows575++actualRows576++actualRows577++actualRows578
def partOps8 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967294),.badd 514 515,.bxor 1 516,.literal (BitVec.ofNat 32 0),.bnot 518,.badd 517 519,.bnot 520,.band 502 521,.bxor 484 522,.shr 523 31,.literal (BitVec.ofNat 32 1),.bxor 524 525,.bnot 526,.literal (BitVec.ofNat 32 1),.badd 527 528,.shr 0 5,.literal (BitVec.ofNat 32 255),.band 530 531,.band 529 532,.literal (BitVec.ofNat 32 9),.badd 0 534,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 537,.bnot 538,.literal (BitVec.ofNat 32 1),.badd 539 540,.badd 536 541,.literal (BitVec.ofNat 32 63),.band 542 543,.badd 535 544,.literal (BitVec.ofNat 32 4294967294),.badd 545 546,.bxor 1 547,.literal (BitVec.ofNat 32 0),.bnot 549,.band 548 550,.literal (BitVec.ofNat 32 9),.badd 0 552,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 555,.bnot 556,.literal (BitVec.ofNat 32 1),.badd 557 558,.badd 554 559,.literal (BitVec.ofNat 32 63),.band 560 561,.badd 553 562,.literal (BitVec.ofNat 32 4294967294),.badd 563 564,.bxor 1 565,.literal (BitVec.ofNat 32 0),.bnot 567,.bxor 566 568,.literal (BitVec.ofNat 32 9),.badd 0 570,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 573,.bnot 574,.literal (BitVec.ofNat 32 1),.badd 575 576,.badd 572 577]
theorem partExact8 : partRows8=WordField.rows actualModulus 515 partOps8 := by
  simp only [partRows8,partOps8,WordField.rows,rows515,rows516,rows517,rows518,rows519,rows520,rows521,rows522,rows523,rows524,rows525,rows526,rows527,rows528,rows529,rows530,rows531,rows532,rows533,rows534,rows535,rows536,rows537,rows538,rows539,rows540,rows541,rows542,rows543,rows544,rows545,rows546,rows547,rows548,rows549,rows550,rows551,rows552,rows553,rows554,rows555,rows556,rows557,rows558,rows559,rows560,rows561,rows562,rows563,rows564,rows565,rows566,rows567,rows568,rows569,rows570,rows571,rows572,rows573,rows574,rows575,rows576,rows577,rows578,List.append_assoc,List.append_nil]
theorem partLength8 : partOps8.length=64 := by decide
theorem partStats8 : partRows8.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows8=311136 := by
  simp only [partRows8,List.length_append,MatrixRowBlocks.rows_weight_append,stats515.1,stats515.2,stats516.1,stats516.2,stats517.1,stats517.2,stats518.1,stats518.2,stats519.1,stats519.2,stats520.1,stats520.2,stats521.1,stats521.2,stats522.1,stats522.2,stats523.1,stats523.2,stats524.1,stats524.2,stats525.1,stats525.2,stats526.1,stats526.2,stats527.1,stats527.2,stats528.1,stats528.2,stats529.1,stats529.2,stats530.1,stats530.2,stats531.1,stats531.2,stats532.1,stats532.2,stats533.1,stats533.2,stats534.1,stats534.2,stats535.1,stats535.2,stats536.1,stats536.2,stats537.1,stats537.2,stats538.1,stats538.2,stats539.1,stats539.2,stats540.1,stats540.2,stats541.1,stats541.2,stats542.1,stats542.2,stats543.1,stats543.2,stats544.1,stats544.2,stats545.1,stats545.2,stats546.1,stats546.2,stats547.1,stats547.2,stats548.1,stats548.2,stats549.1,stats549.2,stats550.1,stats550.2,stats551.1,stats551.2,stats552.1,stats552.2,stats553.1,stats553.2,stats554.1,stats554.2,stats555.1,stats555.2,stats556.1,stats556.2,stats557.1,stats557.2,stats558.1,stats558.2,stats559.1,stats559.2,stats560.1,stats560.2,stats561.1,stats561.2,stats562.1,stats562.2,stats563.1,stats563.2,stats564.1,stats564.2,stats565.1,stats565.2,stats566.1,stats566.2,stats567.1,stats567.2,stats568.1,stats568.2,stats569.1,stats569.2,stats570.1,stats570.2,stats571.1,stats571.2,stats572.1,stats572.2,stats573.1,stats573.2,stats574.1,stats574.2,stats575.1,stats575.2,stats576.1,stats576.2,stats577.1,stats577.2,stats578.1,stats578.2]
  decide
end PadByteCheckedRows
