import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData8
import PathFrameInstructionMatrixData9
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows546 : actualRows546=WordField.canonicalRows actualModulus 546 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats546 : actualRows546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows546=2892 := by core033_kernel_decide
theorem rows547 : actualRows547=WordField.canonicalRows actualModulus 547 (.badd 545 546) := by core033_kernel_decide
theorem stats547 : actualRows547.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows547=5388 := by core033_kernel_decide
theorem rows548 : actualRows548=WordField.canonicalRows actualModulus 548 (.bnot 547) := by core033_kernel_decide
theorem stats548 : actualRows548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows548=6276 := by core033_kernel_decide
theorem rows549 : actualRows549=WordField.canonicalRows actualModulus 549 (.band 548 25) := by core033_kernel_decide
theorem stats549 : actualRows549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows549=5124 := by core033_kernel_decide
theorem rows550 : actualRows550=WordField.canonicalRows actualModulus 550 (.bxor 544 549) := by core033_kernel_decide
theorem stats550 : actualRows550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows550=7428 := by core033_kernel_decide
theorem rows551 : actualRows551=WordField.canonicalRows actualModulus 551 (.bnot 350) := by core033_kernel_decide
theorem stats551 : actualRows551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows551=6276 := by core033_kernel_decide
theorem rows552 : actualRows552=WordField.canonicalRows actualModulus 552 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats552 : actualRows552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows552=2892 := by core033_kernel_decide
theorem rows553 : actualRows553=WordField.canonicalRows actualModulus 553 (.badd 551 552) := by core033_kernel_decide
theorem stats553 : actualRows553.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows553=5388 := by core033_kernel_decide
theorem rows554 : actualRows554=WordField.canonicalRows actualModulus 554 (.band 553 26) := by core033_kernel_decide
theorem stats554 : actualRows554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows554=5124 := by core033_kernel_decide
theorem rows555 : actualRows555=WordField.canonicalRows actualModulus 555 (.bnot 350) := by core033_kernel_decide
theorem stats555 : actualRows555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows555=6276 := by core033_kernel_decide
theorem rows556 : actualRows556=WordField.canonicalRows actualModulus 556 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats556 : actualRows556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows556=2892 := by core033_kernel_decide
theorem rows557 : actualRows557=WordField.canonicalRows actualModulus 557 (.badd 555 556) := by core033_kernel_decide
theorem stats557 : actualRows557.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows557=5388 := by core033_kernel_decide
theorem rows558 : actualRows558=WordField.canonicalRows actualModulus 558 (.bnot 557) := by core033_kernel_decide
theorem stats558 : actualRows558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows558=6276 := by core033_kernel_decide
theorem rows559 : actualRows559=WordField.canonicalRows actualModulus 559 (.band 558 28) := by core033_kernel_decide
theorem stats559 : actualRows559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows559=5124 := by core033_kernel_decide
theorem rows560 : actualRows560=WordField.canonicalRows actualModulus 560 (.bxor 554 559) := by core033_kernel_decide
theorem stats560 : actualRows560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows560=7428 := by core033_kernel_decide
theorem rows561 : actualRows561=WordField.canonicalRows actualModulus 561 (.bnot 350) := by core033_kernel_decide
theorem stats561 : actualRows561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows561=6276 := by core033_kernel_decide
theorem rows562 : actualRows562=WordField.canonicalRows actualModulus 562 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats562 : actualRows562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows562=2892 := by core033_kernel_decide
theorem rows563 : actualRows563=WordField.canonicalRows actualModulus 563 (.badd 561 562) := by core033_kernel_decide
theorem stats563 : actualRows563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows563=5388 := by core033_kernel_decide
theorem rows564 : actualRows564=WordField.canonicalRows actualModulus 564 (.band 563 27) := by core033_kernel_decide
theorem stats564 : actualRows564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows564=5124 := by core033_kernel_decide
theorem rows565 : actualRows565=WordField.canonicalRows actualModulus 565 (.bnot 350) := by core033_kernel_decide
theorem stats565 : actualRows565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows565=6276 := by core033_kernel_decide
theorem rows566 : actualRows566=WordField.canonicalRows actualModulus 566 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats566 : actualRows566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows566=2892 := by core033_kernel_decide
theorem rows567 : actualRows567=WordField.canonicalRows actualModulus 567 (.badd 565 566) := by core033_kernel_decide
theorem stats567 : actualRows567.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows567=5388 := by core033_kernel_decide
theorem rows568 : actualRows568=WordField.canonicalRows actualModulus 568 (.bnot 567) := by core033_kernel_decide
theorem stats568 : actualRows568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows568=6276 := by core033_kernel_decide
theorem rows569 : actualRows569=WordField.canonicalRows actualModulus 569 (.band 568 29) := by core033_kernel_decide
theorem stats569 : actualRows569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows569=5124 := by core033_kernel_decide
theorem rows570 : actualRows570=WordField.canonicalRows actualModulus 570 (.bxor 564 569) := by core033_kernel_decide
theorem stats570 : actualRows570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows570=7428 := by core033_kernel_decide
theorem rows571 : actualRows571=WordField.canonicalRows actualModulus 571 (.bnot 350) := by core033_kernel_decide
theorem stats571 : actualRows571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows571=6276 := by core033_kernel_decide
theorem rows572 : actualRows572=WordField.canonicalRows actualModulus 572 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats572 : actualRows572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows572=2892 := by core033_kernel_decide
theorem rows573 : actualRows573=WordField.canonicalRows actualModulus 573 (.badd 571 572) := by core033_kernel_decide
theorem stats573 : actualRows573.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows573=5388 := by core033_kernel_decide
theorem rows574 : actualRows574=WordField.canonicalRows actualModulus 574 (.band 573 30) := by core033_kernel_decide
theorem stats574 : actualRows574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows574=5124 := by core033_kernel_decide
theorem rows575 : actualRows575=WordField.canonicalRows actualModulus 575 (.bnot 350) := by core033_kernel_decide
theorem stats575 : actualRows575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows575=6276 := by core033_kernel_decide
theorem rows576 : actualRows576=WordField.canonicalRows actualModulus 576 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats576 : actualRows576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows576=2892 := by core033_kernel_decide
theorem rows577 : actualRows577=WordField.canonicalRows actualModulus 577 (.badd 575 576) := by core033_kernel_decide
theorem stats577 : actualRows577.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows577=5388 := by core033_kernel_decide
theorem rows578 : actualRows578=WordField.canonicalRows actualModulus 578 (.bnot 577) := by core033_kernel_decide
theorem stats578 : actualRows578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows578=6276 := by core033_kernel_decide
theorem rows579 : actualRows579=WordField.canonicalRows actualModulus 579 (.band 578 31) := by core033_kernel_decide
theorem stats579 : actualRows579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows579=5124 := by core033_kernel_decide
theorem rows580 : actualRows580=WordField.canonicalRows actualModulus 580 (.bxor 574 579) := by core033_kernel_decide
theorem stats580 : actualRows580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows580=7428 := by core033_kernel_decide
theorem rows581 : actualRows581=WordField.canonicalRows actualModulus 581 (.bnot 350) := by core033_kernel_decide
theorem stats581 : actualRows581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows581=6276 := by core033_kernel_decide
theorem rows582 : actualRows582=WordField.canonicalRows actualModulus 582 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats582 : actualRows582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows582=2892 := by core033_kernel_decide
theorem rows583 : actualRows583=WordField.canonicalRows actualModulus 583 (.badd 581 582) := by core033_kernel_decide
theorem stats583 : actualRows583.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows583=5388 := by core033_kernel_decide
theorem rows584 : actualRows584=WordField.canonicalRows actualModulus 584 (.band 583 32) := by core033_kernel_decide
theorem stats584 : actualRows584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows584=5124 := by core033_kernel_decide
theorem rows585 : actualRows585=WordField.canonicalRows actualModulus 585 (.bnot 350) := by core033_kernel_decide
theorem stats585 : actualRows585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows585=6276 := by core033_kernel_decide
theorem rows586 : actualRows586=WordField.canonicalRows actualModulus 586 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats586 : actualRows586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows586=2892 := by core033_kernel_decide
theorem rows587 : actualRows587=WordField.canonicalRows actualModulus 587 (.badd 585 586) := by core033_kernel_decide
theorem stats587 : actualRows587.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows587=5388 := by core033_kernel_decide
theorem rows588 : actualRows588=WordField.canonicalRows actualModulus 588 (.bnot 587) := by core033_kernel_decide
theorem stats588 : actualRows588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows588=6276 := by core033_kernel_decide
theorem rows589 : actualRows589=WordField.canonicalRows actualModulus 589 (.band 588 33) := by core033_kernel_decide
theorem stats589 : actualRows589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows589=5124 := by core033_kernel_decide
theorem rows590 : actualRows590=WordField.canonicalRows actualModulus 590 (.bxor 584 589) := by core033_kernel_decide
theorem stats590 : actualRows590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows590=7428 := by core033_kernel_decide
theorem rows591 : actualRows591=WordField.canonicalRows actualModulus 591 (.shr 350 1) := by core033_kernel_decide
theorem stats591 : actualRows591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows591=5052 := by core033_kernel_decide
theorem rows592 : actualRows592=WordField.canonicalRows actualModulus 592 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats592 : actualRows592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows592=2820 := by core033_kernel_decide
theorem rows593 : actualRows593=WordField.canonicalRows actualModulus 593 (.bnot 592) := by core033_kernel_decide
theorem stats593 : actualRows593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows593=6276 := by core033_kernel_decide
theorem rows594 : actualRows594=WordField.canonicalRows actualModulus 594 (.band 591 593) := by core033_kernel_decide
theorem stats594 : actualRows594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows594=5124 := by core033_kernel_decide
theorem rows595 : actualRows595=WordField.canonicalRows actualModulus 595 (.shr 350 1) := by core033_kernel_decide
theorem stats595 : actualRows595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows595=5052 := by core033_kernel_decide
theorem rows596 : actualRows596=WordField.canonicalRows actualModulus 596 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats596 : actualRows596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows596=2820 := by core033_kernel_decide
theorem rows597 : actualRows597=WordField.canonicalRows actualModulus 597 (.bnot 596) := by core033_kernel_decide
theorem stats597 : actualRows597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows597=6276 := by core033_kernel_decide
theorem rows598 : actualRows598=WordField.canonicalRows actualModulus 598 (.bxor 595 597) := by core033_kernel_decide
theorem stats598 : actualRows598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows598=7428 := by core033_kernel_decide
theorem rows599 : actualRows599=WordField.canonicalRows actualModulus 599 (.shr 350 1) := by core033_kernel_decide
theorem stats599 : actualRows599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows599=5052 := by core033_kernel_decide
theorem rows600 : actualRows600=WordField.canonicalRows actualModulus 600 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats600 : actualRows600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows600=2820 := by core033_kernel_decide
theorem rows601 : actualRows601=WordField.canonicalRows actualModulus 601 (.bnot 600) := by core033_kernel_decide
theorem stats601 : actualRows601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows601=6276 := by core033_kernel_decide
theorem rows602 : actualRows602=WordField.canonicalRows actualModulus 602 (.badd 599 601) := by core033_kernel_decide
theorem stats602 : actualRows602.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows602=5388 := by core033_kernel_decide
theorem rows603 : actualRows603=WordField.canonicalRows actualModulus 603 (.bnot 602) := by core033_kernel_decide
theorem stats603 : actualRows603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows603=6276 := by core033_kernel_decide
theorem rows604 : actualRows604=WordField.canonicalRows actualModulus 604 (.band 598 603) := by core033_kernel_decide
theorem stats604 : actualRows604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows604=5124 := by core033_kernel_decide
theorem rows605 : actualRows605=WordField.canonicalRows actualModulus 605 (.bxor 594 604) := by core033_kernel_decide
theorem stats605 : actualRows605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows605=7428 := by core033_kernel_decide
theorem rows606 : actualRows606=WordField.canonicalRows actualModulus 606 (.shr 605 31) := by core033_kernel_decide
theorem stats606 : actualRows606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows606=2892 := by core033_kernel_decide
theorem rows607 : actualRows607=WordField.canonicalRows actualModulus 607 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats607 : actualRows607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows607=2892 := by core033_kernel_decide
theorem rows608 : actualRows608=WordField.canonicalRows actualModulus 608 (.bxor 606 607) := by core033_kernel_decide
theorem stats608 : actualRows608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows608=7428 := by core033_kernel_decide
theorem rows609 : actualRows609=WordField.canonicalRows actualModulus 609 (.badd 440 560) := by core033_kernel_decide
theorem stats609 : actualRows609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows609=5388 := by core033_kernel_decide
def partRows8 : List R1CS.Row := actualRows546++actualRows547++actualRows548++actualRows549++actualRows550++actualRows551++actualRows552++actualRows553++actualRows554++actualRows555++actualRows556++actualRows557++actualRows558++actualRows559++actualRows560++actualRows561++actualRows562++actualRows563++actualRows564++actualRows565++actualRows566++actualRows567++actualRows568++actualRows569++actualRows570++actualRows571++actualRows572++actualRows573++actualRows574++actualRows575++actualRows576++actualRows577++actualRows578++actualRows579++actualRows580++actualRows581++actualRows582++actualRows583++actualRows584++actualRows585++actualRows586++actualRows587++actualRows588++actualRows589++actualRows590++actualRows591++actualRows592++actualRows593++actualRows594++actualRows595++actualRows596++actualRows597++actualRows598++actualRows599++actualRows600++actualRows601++actualRows602++actualRows603++actualRows604++actualRows605++actualRows606++actualRows607++actualRows608++actualRows609
def partOps8 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 545 546,.bnot 547,.band 548 25,.bxor 544 549,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 551 552,.band 553 26,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 555 556,.bnot 557,.band 558 28,.bxor 554 559,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 561 562,.band 563 27,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 565 566,.bnot 567,.band 568 29,.bxor 564 569,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 571 572,.band 573 30,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 575 576,.bnot 577,.band 578 31,.bxor 574 579,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 581 582,.band 583 32,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 585 586,.bnot 587,.band 588 33,.bxor 584 589,.shr 350 1,.literal (BitVec.ofNat 32 0),.bnot 592,.band 591 593,.shr 350 1,.literal (BitVec.ofNat 32 0),.bnot 596,.bxor 595 597,.shr 350 1,.literal (BitVec.ofNat 32 0),.bnot 600,.badd 599 601,.bnot 602,.band 598 603,.bxor 594 604,.shr 605 31,.literal (BitVec.ofNat 32 1),.bxor 606 607,.badd 440 560]
theorem partExact8 : partRows8=WordField.rows actualModulus 546 partOps8 := by
  simp only [partRows8,partOps8,WordField.rows,rows546,rows547,rows548,rows549,rows550,rows551,rows552,rows553,rows554,rows555,rows556,rows557,rows558,rows559,rows560,rows561,rows562,rows563,rows564,rows565,rows566,rows567,rows568,rows569,rows570,rows571,rows572,rows573,rows574,rows575,rows576,rows577,rows578,rows579,rows580,rows581,rows582,rows583,rows584,rows585,rows586,rows587,rows588,rows589,rows590,rows591,rows592,rows593,rows594,rows595,rows596,rows597,rows598,rows599,rows600,rows601,rows602,rows603,rows604,rows605,rows606,rows607,rows608,rows609,List.append_assoc,List.append_nil]
theorem partLength8 : partOps8.length=64 := by decide
theorem partStats8 : partRows8.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows8=337176 := by
  simp only [partRows8,List.length_append,MatrixRowBlocks.rows_weight_append,stats546.1,stats546.2,stats547.1,stats547.2,stats548.1,stats548.2,stats549.1,stats549.2,stats550.1,stats550.2,stats551.1,stats551.2,stats552.1,stats552.2,stats553.1,stats553.2,stats554.1,stats554.2,stats555.1,stats555.2,stats556.1,stats556.2,stats557.1,stats557.2,stats558.1,stats558.2,stats559.1,stats559.2,stats560.1,stats560.2,stats561.1,stats561.2,stats562.1,stats562.2,stats563.1,stats563.2,stats564.1,stats564.2,stats565.1,stats565.2,stats566.1,stats566.2,stats567.1,stats567.2,stats568.1,stats568.2,stats569.1,stats569.2,stats570.1,stats570.2,stats571.1,stats571.2,stats572.1,stats572.2,stats573.1,stats573.2,stats574.1,stats574.2,stats575.1,stats575.2,stats576.1,stats576.2,stats577.1,stats577.2,stats578.1,stats578.2,stats579.1,stats579.2,stats580.1,stats580.2,stats581.1,stats581.2,stats582.1,stats582.2,stats583.1,stats583.2,stats584.1,stats584.2,stats585.1,stats585.2,stats586.1,stats586.2,stats587.1,stats587.2,stats588.1,stats588.2,stats589.1,stats589.2,stats590.1,stats590.2,stats591.1,stats591.2,stats592.1,stats592.2,stats593.1,stats593.2,stats594.1,stats594.2,stats595.1,stats595.2,stats596.1,stats596.2,stats597.1,stats597.2,stats598.1,stats598.2,stats599.1,stats599.2,stats600.1,stats600.2,stats601.1,stats601.2,stats602.1,stats602.2,stats603.1,stats603.2,stats604.1,stats604.2,stats605.1,stats605.2,stats606.1,stats606.2,stats607.1,stats607.2,stats608.1,stats608.2,stats609.1,stats609.2]
  decide
end PathFrameCheckedRows
