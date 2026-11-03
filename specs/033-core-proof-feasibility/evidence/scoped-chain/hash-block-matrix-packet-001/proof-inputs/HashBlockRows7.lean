import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData8
import HashBlockInstructionMatrixData9
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows520 : actualRows520=WordField.canonicalRows actualModulus 520 (.bnot 519) := by core033_kernel_decide
theorem stats520 : actualRows520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows520=6276 := by core033_kernel_decide
theorem rows521 : actualRows521=WordField.canonicalRows actualModulus 521 (.badd 518 520) := by core033_kernel_decide
theorem stats521 : actualRows521.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows521=5388 := by core033_kernel_decide
theorem rows522 : actualRows522=WordField.canonicalRows actualModulus 522 (.bnot 521) := by core033_kernel_decide
theorem stats522 : actualRows522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows522=6276 := by core033_kernel_decide
theorem rows523 : actualRows523=WordField.canonicalRows actualModulus 523 (.band 517 522) := by core033_kernel_decide
theorem stats523 : actualRows523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows523=5124 := by core033_kernel_decide
theorem rows524 : actualRows524=WordField.canonicalRows actualModulus 524 (.bxor 513 523) := by core033_kernel_decide
theorem stats524 : actualRows524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows524=7428 := by core033_kernel_decide
theorem rows525 : actualRows525=WordField.canonicalRows actualModulus 525 (.shr 524 31) := by core033_kernel_decide
theorem stats525 : actualRows525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows525=2892 := by core033_kernel_decide
theorem rows526 : actualRows526=WordField.canonicalRows actualModulus 526 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats526 : actualRows526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows526=2892 := by core033_kernel_decide
theorem rows527 : actualRows527=WordField.canonicalRows actualModulus 527 (.bxor 525 526) := by core033_kernel_decide
theorem stats527 : actualRows527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows527=7428 := by core033_kernel_decide
theorem rows528 : actualRows528=WordField.canonicalRows actualModulus 528 (.shr 28 8) := by core033_kernel_decide
theorem stats528 : actualRows528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows528=4548 := by core033_kernel_decide
theorem rows529 : actualRows529=WordField.canonicalRows actualModulus 529 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats529 : actualRows529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows529=2820 := by core033_kernel_decide
theorem rows530 : actualRows530=WordField.canonicalRows actualModulus 530 (.bnot 529) := by core033_kernel_decide
theorem stats530 : actualRows530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows530=6276 := by core033_kernel_decide
theorem rows531 : actualRows531=WordField.canonicalRows actualModulus 531 (.band 528 530) := by core033_kernel_decide
theorem stats531 : actualRows531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows531=5124 := by core033_kernel_decide
theorem rows532 : actualRows532=WordField.canonicalRows actualModulus 532 (.shr 28 8) := by core033_kernel_decide
theorem stats532 : actualRows532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows532=4548 := by core033_kernel_decide
theorem rows533 : actualRows533=WordField.canonicalRows actualModulus 533 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats533 : actualRows533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows533=2820 := by core033_kernel_decide
theorem rows534 : actualRows534=WordField.canonicalRows actualModulus 534 (.bnot 533) := by core033_kernel_decide
theorem stats534 : actualRows534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows534=6276 := by core033_kernel_decide
theorem rows535 : actualRows535=WordField.canonicalRows actualModulus 535 (.bxor 532 534) := by core033_kernel_decide
theorem stats535 : actualRows535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows535=7428 := by core033_kernel_decide
theorem rows536 : actualRows536=WordField.canonicalRows actualModulus 536 (.shr 28 8) := by core033_kernel_decide
theorem stats536 : actualRows536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows536=4548 := by core033_kernel_decide
theorem rows537 : actualRows537=WordField.canonicalRows actualModulus 537 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats537 : actualRows537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows537=2820 := by core033_kernel_decide
theorem rows538 : actualRows538=WordField.canonicalRows actualModulus 538 (.bnot 537) := by core033_kernel_decide
theorem stats538 : actualRows538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows538=6276 := by core033_kernel_decide
theorem rows539 : actualRows539=WordField.canonicalRows actualModulus 539 (.badd 536 538) := by core033_kernel_decide
theorem stats539 : actualRows539.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows539=5388 := by core033_kernel_decide
theorem rows540 : actualRows540=WordField.canonicalRows actualModulus 540 (.bnot 539) := by core033_kernel_decide
theorem stats540 : actualRows540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows540=6276 := by core033_kernel_decide
theorem rows541 : actualRows541=WordField.canonicalRows actualModulus 541 (.band 535 540) := by core033_kernel_decide
theorem stats541 : actualRows541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows541=5124 := by core033_kernel_decide
theorem rows542 : actualRows542=WordField.canonicalRows actualModulus 542 (.bxor 531 541) := by core033_kernel_decide
theorem stats542 : actualRows542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows542=7428 := by core033_kernel_decide
theorem rows543 : actualRows543=WordField.canonicalRows actualModulus 543 (.shr 542 31) := by core033_kernel_decide
theorem stats543 : actualRows543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows543=2892 := by core033_kernel_decide
theorem rows544 : actualRows544=WordField.canonicalRows actualModulus 544 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats544 : actualRows544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows544=2892 := by core033_kernel_decide
theorem rows545 : actualRows545=WordField.canonicalRows actualModulus 545 (.bxor 543 544) := by core033_kernel_decide
theorem stats545 : actualRows545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows545=7428 := by core033_kernel_decide
theorem rows546 : actualRows546=WordField.canonicalRows actualModulus 546 (.shr 29 8) := by core033_kernel_decide
theorem stats546 : actualRows546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows546=4548 := by core033_kernel_decide
theorem rows547 : actualRows547=WordField.canonicalRows actualModulus 547 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats547 : actualRows547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows547=2820 := by core033_kernel_decide
theorem rows548 : actualRows548=WordField.canonicalRows actualModulus 548 (.bnot 547) := by core033_kernel_decide
theorem stats548 : actualRows548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows548=6276 := by core033_kernel_decide
theorem rows549 : actualRows549=WordField.canonicalRows actualModulus 549 (.band 546 548) := by core033_kernel_decide
theorem stats549 : actualRows549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows549=5124 := by core033_kernel_decide
theorem rows550 : actualRows550=WordField.canonicalRows actualModulus 550 (.shr 29 8) := by core033_kernel_decide
theorem stats550 : actualRows550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows550=4548 := by core033_kernel_decide
theorem rows551 : actualRows551=WordField.canonicalRows actualModulus 551 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats551 : actualRows551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows551=2820 := by core033_kernel_decide
theorem rows552 : actualRows552=WordField.canonicalRows actualModulus 552 (.bnot 551) := by core033_kernel_decide
theorem stats552 : actualRows552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows552=6276 := by core033_kernel_decide
theorem rows553 : actualRows553=WordField.canonicalRows actualModulus 553 (.bxor 550 552) := by core033_kernel_decide
theorem stats553 : actualRows553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows553=7428 := by core033_kernel_decide
theorem rows554 : actualRows554=WordField.canonicalRows actualModulus 554 (.shr 29 8) := by core033_kernel_decide
theorem stats554 : actualRows554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows554=4548 := by core033_kernel_decide
theorem rows555 : actualRows555=WordField.canonicalRows actualModulus 555 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats555 : actualRows555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows555=2820 := by core033_kernel_decide
theorem rows556 : actualRows556=WordField.canonicalRows actualModulus 556 (.bnot 555) := by core033_kernel_decide
theorem stats556 : actualRows556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows556=6276 := by core033_kernel_decide
theorem rows557 : actualRows557=WordField.canonicalRows actualModulus 557 (.badd 554 556) := by core033_kernel_decide
theorem stats557 : actualRows557.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows557=5388 := by core033_kernel_decide
theorem rows558 : actualRows558=WordField.canonicalRows actualModulus 558 (.bnot 557) := by core033_kernel_decide
theorem stats558 : actualRows558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows558=6276 := by core033_kernel_decide
theorem rows559 : actualRows559=WordField.canonicalRows actualModulus 559 (.band 553 558) := by core033_kernel_decide
theorem stats559 : actualRows559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows559=5124 := by core033_kernel_decide
theorem rows560 : actualRows560=WordField.canonicalRows actualModulus 560 (.bxor 549 559) := by core033_kernel_decide
theorem stats560 : actualRows560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows560=7428 := by core033_kernel_decide
theorem rows561 : actualRows561=WordField.canonicalRows actualModulus 561 (.shr 560 31) := by core033_kernel_decide
theorem stats561 : actualRows561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows561=2892 := by core033_kernel_decide
theorem rows562 : actualRows562=WordField.canonicalRows actualModulus 562 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats562 : actualRows562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows562=2892 := by core033_kernel_decide
theorem rows563 : actualRows563=WordField.canonicalRows actualModulus 563 (.bxor 561 562) := by core033_kernel_decide
theorem stats563 : actualRows563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows563=7428 := by core033_kernel_decide
theorem rows564 : actualRows564=WordField.canonicalRows actualModulus 564 (.shr 30 8) := by core033_kernel_decide
theorem stats564 : actualRows564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows564=4548 := by core033_kernel_decide
theorem rows565 : actualRows565=WordField.canonicalRows actualModulus 565 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats565 : actualRows565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows565=2820 := by core033_kernel_decide
theorem rows566 : actualRows566=WordField.canonicalRows actualModulus 566 (.bnot 565) := by core033_kernel_decide
theorem stats566 : actualRows566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows566=6276 := by core033_kernel_decide
theorem rows567 : actualRows567=WordField.canonicalRows actualModulus 567 (.band 564 566) := by core033_kernel_decide
theorem stats567 : actualRows567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows567=5124 := by core033_kernel_decide
theorem rows568 : actualRows568=WordField.canonicalRows actualModulus 568 (.shr 30 8) := by core033_kernel_decide
theorem stats568 : actualRows568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows568=4548 := by core033_kernel_decide
theorem rows569 : actualRows569=WordField.canonicalRows actualModulus 569 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats569 : actualRows569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows569=2820 := by core033_kernel_decide
theorem rows570 : actualRows570=WordField.canonicalRows actualModulus 570 (.bnot 569) := by core033_kernel_decide
theorem stats570 : actualRows570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows570=6276 := by core033_kernel_decide
theorem rows571 : actualRows571=WordField.canonicalRows actualModulus 571 (.bxor 568 570) := by core033_kernel_decide
theorem stats571 : actualRows571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows571=7428 := by core033_kernel_decide
theorem rows572 : actualRows572=WordField.canonicalRows actualModulus 572 (.shr 30 8) := by core033_kernel_decide
theorem stats572 : actualRows572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows572=4548 := by core033_kernel_decide
theorem rows573 : actualRows573=WordField.canonicalRows actualModulus 573 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats573 : actualRows573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows573=2820 := by core033_kernel_decide
theorem rows574 : actualRows574=WordField.canonicalRows actualModulus 574 (.bnot 573) := by core033_kernel_decide
theorem stats574 : actualRows574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows574=6276 := by core033_kernel_decide
theorem rows575 : actualRows575=WordField.canonicalRows actualModulus 575 (.badd 572 574) := by core033_kernel_decide
theorem stats575 : actualRows575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows575=5388 := by core033_kernel_decide
theorem rows576 : actualRows576=WordField.canonicalRows actualModulus 576 (.bnot 575) := by core033_kernel_decide
theorem stats576 : actualRows576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows576=6276 := by core033_kernel_decide
theorem rows577 : actualRows577=WordField.canonicalRows actualModulus 577 (.band 571 576) := by core033_kernel_decide
theorem stats577 : actualRows577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows577=5124 := by core033_kernel_decide
theorem rows578 : actualRows578=WordField.canonicalRows actualModulus 578 (.bxor 567 577) := by core033_kernel_decide
theorem stats578 : actualRows578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows578=7428 := by core033_kernel_decide
theorem rows579 : actualRows579=WordField.canonicalRows actualModulus 579 (.shr 578 31) := by core033_kernel_decide
theorem stats579 : actualRows579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows579=2892 := by core033_kernel_decide
theorem rows580 : actualRows580=WordField.canonicalRows actualModulus 580 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats580 : actualRows580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows580=2892 := by core033_kernel_decide
theorem rows581 : actualRows581=WordField.canonicalRows actualModulus 581 (.bxor 579 580) := by core033_kernel_decide
theorem stats581 : actualRows581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows581=7428 := by core033_kernel_decide
theorem rows582 : actualRows582=WordField.canonicalRows actualModulus 582 (.shr 31 8) := by core033_kernel_decide
theorem stats582 : actualRows582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows582=4548 := by core033_kernel_decide
theorem rows583 : actualRows583=WordField.canonicalRows actualModulus 583 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats583 : actualRows583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows583=2820 := by core033_kernel_decide
def partRows7 : List R1CS.Row := actualRows520++actualRows521++actualRows522++actualRows523++actualRows524++actualRows525++actualRows526++actualRows527++actualRows528++actualRows529++actualRows530++actualRows531++actualRows532++actualRows533++actualRows534++actualRows535++actualRows536++actualRows537++actualRows538++actualRows539++actualRows540++actualRows541++actualRows542++actualRows543++actualRows544++actualRows545++actualRows546++actualRows547++actualRows548++actualRows549++actualRows550++actualRows551++actualRows552++actualRows553++actualRows554++actualRows555++actualRows556++actualRows557++actualRows558++actualRows559++actualRows560++actualRows561++actualRows562++actualRows563++actualRows564++actualRows565++actualRows566++actualRows567++actualRows568++actualRows569++actualRows570++actualRows571++actualRows572++actualRows573++actualRows574++actualRows575++actualRows576++actualRows577++actualRows578++actualRows579++actualRows580++actualRows581++actualRows582++actualRows583
def partOps7 : List WordIR.Op := [.bnot 519,.badd 518 520,.bnot 521,.band 517 522,.bxor 513 523,.shr 524 31,.literal (BitVec.ofNat 32 1),.bxor 525 526,.shr 28 8,.literal (BitVec.ofNat 32 0),.bnot 529,.band 528 530,.shr 28 8,.literal (BitVec.ofNat 32 0),.bnot 533,.bxor 532 534,.shr 28 8,.literal (BitVec.ofNat 32 0),.bnot 537,.badd 536 538,.bnot 539,.band 535 540,.bxor 531 541,.shr 542 31,.literal (BitVec.ofNat 32 1),.bxor 543 544,.shr 29 8,.literal (BitVec.ofNat 32 0),.bnot 547,.band 546 548,.shr 29 8,.literal (BitVec.ofNat 32 0),.bnot 551,.bxor 550 552,.shr 29 8,.literal (BitVec.ofNat 32 0),.bnot 555,.badd 554 556,.bnot 557,.band 553 558,.bxor 549 559,.shr 560 31,.literal (BitVec.ofNat 32 1),.bxor 561 562,.shr 30 8,.literal (BitVec.ofNat 32 0),.bnot 565,.band 564 566,.shr 30 8,.literal (BitVec.ofNat 32 0),.bnot 569,.bxor 568 570,.shr 30 8,.literal (BitVec.ofNat 32 0),.bnot 573,.badd 572 574,.bnot 575,.band 571 576,.bxor 567 577,.shr 578 31,.literal (BitVec.ofNat 32 1),.bxor 579 580,.shr 31 8,.literal (BitVec.ofNat 32 0)]
theorem partExact7 : partRows7=WordField.rows actualModulus 520 partOps7 := by
  simp only [partRows7,partOps7,WordField.rows,rows520,rows521,rows522,rows523,rows524,rows525,rows526,rows527,rows528,rows529,rows530,rows531,rows532,rows533,rows534,rows535,rows536,rows537,rows538,rows539,rows540,rows541,rows542,rows543,rows544,rows545,rows546,rows547,rows548,rows549,rows550,rows551,rows552,rows553,rows554,rows555,rows556,rows557,rows558,rows559,rows560,rows561,rows562,rows563,rows564,rows565,rows566,rows567,rows568,rows569,rows570,rows571,rows572,rows573,rows574,rows575,rows576,rows577,rows578,rows579,rows580,rows581,rows582,rows583,List.append_assoc,List.append_nil]
theorem partLength7 : partOps7.length=64 := by decide
theorem partStats7 : partRows7.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows7=323808 := by
  simp only [partRows7,List.length_append,MatrixRowBlocks.rows_weight_append,stats520.1,stats520.2,stats521.1,stats521.2,stats522.1,stats522.2,stats523.1,stats523.2,stats524.1,stats524.2,stats525.1,stats525.2,stats526.1,stats526.2,stats527.1,stats527.2,stats528.1,stats528.2,stats529.1,stats529.2,stats530.1,stats530.2,stats531.1,stats531.2,stats532.1,stats532.2,stats533.1,stats533.2,stats534.1,stats534.2,stats535.1,stats535.2,stats536.1,stats536.2,stats537.1,stats537.2,stats538.1,stats538.2,stats539.1,stats539.2,stats540.1,stats540.2,stats541.1,stats541.2,stats542.1,stats542.2,stats543.1,stats543.2,stats544.1,stats544.2,stats545.1,stats545.2,stats546.1,stats546.2,stats547.1,stats547.2,stats548.1,stats548.2,stats549.1,stats549.2,stats550.1,stats550.2,stats551.1,stats551.2,stats552.1,stats552.2,stats553.1,stats553.2,stats554.1,stats554.2,stats555.1,stats555.2,stats556.1,stats556.2,stats557.1,stats557.2,stats558.1,stats558.2,stats559.1,stats559.2,stats560.1,stats560.2,stats561.1,stats561.2,stats562.1,stats562.2,stats563.1,stats563.2,stats564.1,stats564.2,stats565.1,stats565.2,stats566.1,stats566.2,stats567.1,stats567.2,stats568.1,stats568.2,stats569.1,stats569.2,stats570.1,stats570.2,stats571.1,stats571.2,stats572.1,stats572.2,stats573.1,stats573.2,stats574.1,stats574.2,stats575.1,stats575.2,stats576.1,stats576.2,stats577.1,stats577.2,stats578.1,stats578.2,stats579.1,stats579.2,stats580.1,stats580.2,stats581.1,stats581.2,stats582.1,stats582.2,stats583.1,stats583.2]
  decide
end HashBlockCheckedRows
