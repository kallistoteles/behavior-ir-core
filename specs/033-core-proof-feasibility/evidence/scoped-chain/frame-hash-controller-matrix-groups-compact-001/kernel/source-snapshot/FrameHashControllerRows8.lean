import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData8
import FrameHashControllerInstructionMatrixData9
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows555 : actualRows555=WordField.canonicalRows actualModulus 555 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats555 : actualRows555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows555=2892 := by core033_kernel_decide
theorem rows556 : actualRows556=WordField.canonicalRows actualModulus 556 (.badd 554 555) := by core033_kernel_decide
theorem stats556 : actualRows556.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows556=5388 := by core033_kernel_decide
theorem rows557 : actualRows557=WordField.canonicalRows actualModulus 557 (.bnot 556) := by core033_kernel_decide
theorem stats557 : actualRows557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows557=6276 := by core033_kernel_decide
theorem rows558 : actualRows558=WordField.canonicalRows actualModulus 558 (.band 557 26) := by core033_kernel_decide
theorem stats558 : actualRows558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows558=5124 := by core033_kernel_decide
theorem rows559 : actualRows559=WordField.canonicalRows actualModulus 559 (.bxor 553 558) := by core033_kernel_decide
theorem stats559 : actualRows559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows559=7428 := by core033_kernel_decide
theorem rows560 : actualRows560=WordField.canonicalRows actualModulus 560 (.bnot 359) := by core033_kernel_decide
theorem stats560 : actualRows560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows560=6276 := by core033_kernel_decide
theorem rows561 : actualRows561=WordField.canonicalRows actualModulus 561 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats561 : actualRows561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows561=2892 := by core033_kernel_decide
theorem rows562 : actualRows562=WordField.canonicalRows actualModulus 562 (.badd 560 561) := by core033_kernel_decide
theorem stats562 : actualRows562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows562=5388 := by core033_kernel_decide
theorem rows563 : actualRows563=WordField.canonicalRows actualModulus 563 (.band 562 27) := by core033_kernel_decide
theorem stats563 : actualRows563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows563=5124 := by core033_kernel_decide
theorem rows564 : actualRows564=WordField.canonicalRows actualModulus 564 (.bnot 359) := by core033_kernel_decide
theorem stats564 : actualRows564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows564=6276 := by core033_kernel_decide
theorem rows565 : actualRows565=WordField.canonicalRows actualModulus 565 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats565 : actualRows565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows565=2892 := by core033_kernel_decide
theorem rows566 : actualRows566=WordField.canonicalRows actualModulus 566 (.badd 564 565) := by core033_kernel_decide
theorem stats566 : actualRows566.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows566=5388 := by core033_kernel_decide
theorem rows567 : actualRows567=WordField.canonicalRows actualModulus 567 (.bnot 566) := by core033_kernel_decide
theorem stats567 : actualRows567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows567=6276 := by core033_kernel_decide
theorem rows568 : actualRows568=WordField.canonicalRows actualModulus 568 (.band 567 29) := by core033_kernel_decide
theorem stats568 : actualRows568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows568=5124 := by core033_kernel_decide
theorem rows569 : actualRows569=WordField.canonicalRows actualModulus 569 (.bxor 563 568) := by core033_kernel_decide
theorem stats569 : actualRows569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows569=7428 := by core033_kernel_decide
theorem rows570 : actualRows570=WordField.canonicalRows actualModulus 570 (.bnot 359) := by core033_kernel_decide
theorem stats570 : actualRows570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows570=6276 := by core033_kernel_decide
theorem rows571 : actualRows571=WordField.canonicalRows actualModulus 571 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats571 : actualRows571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows571=2892 := by core033_kernel_decide
theorem rows572 : actualRows572=WordField.canonicalRows actualModulus 572 (.badd 570 571) := by core033_kernel_decide
theorem stats572 : actualRows572.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows572=5388 := by core033_kernel_decide
theorem rows573 : actualRows573=WordField.canonicalRows actualModulus 573 (.band 572 28) := by core033_kernel_decide
theorem stats573 : actualRows573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows573=5124 := by core033_kernel_decide
theorem rows574 : actualRows574=WordField.canonicalRows actualModulus 574 (.bnot 359) := by core033_kernel_decide
theorem stats574 : actualRows574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows574=6276 := by core033_kernel_decide
theorem rows575 : actualRows575=WordField.canonicalRows actualModulus 575 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats575 : actualRows575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows575=2892 := by core033_kernel_decide
theorem rows576 : actualRows576=WordField.canonicalRows actualModulus 576 (.badd 574 575) := by core033_kernel_decide
theorem stats576 : actualRows576.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows576=5388 := by core033_kernel_decide
theorem rows577 : actualRows577=WordField.canonicalRows actualModulus 577 (.bnot 576) := by core033_kernel_decide
theorem stats577 : actualRows577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows577=6276 := by core033_kernel_decide
theorem rows578 : actualRows578=WordField.canonicalRows actualModulus 578 (.band 577 30) := by core033_kernel_decide
theorem stats578 : actualRows578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows578=5124 := by core033_kernel_decide
theorem rows579 : actualRows579=WordField.canonicalRows actualModulus 579 (.bxor 573 578) := by core033_kernel_decide
theorem stats579 : actualRows579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows579=7428 := by core033_kernel_decide
theorem rows580 : actualRows580=WordField.canonicalRows actualModulus 580 (.bnot 359) := by core033_kernel_decide
theorem stats580 : actualRows580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows580=6276 := by core033_kernel_decide
theorem rows581 : actualRows581=WordField.canonicalRows actualModulus 581 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats581 : actualRows581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows581=2892 := by core033_kernel_decide
theorem rows582 : actualRows582=WordField.canonicalRows actualModulus 582 (.badd 580 581) := by core033_kernel_decide
theorem stats582 : actualRows582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows582=5388 := by core033_kernel_decide
theorem rows583 : actualRows583=WordField.canonicalRows actualModulus 583 (.band 582 31) := by core033_kernel_decide
theorem stats583 : actualRows583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows583=5124 := by core033_kernel_decide
theorem rows584 : actualRows584=WordField.canonicalRows actualModulus 584 (.bnot 359) := by core033_kernel_decide
theorem stats584 : actualRows584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows584=6276 := by core033_kernel_decide
theorem rows585 : actualRows585=WordField.canonicalRows actualModulus 585 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats585 : actualRows585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows585=2892 := by core033_kernel_decide
theorem rows586 : actualRows586=WordField.canonicalRows actualModulus 586 (.badd 584 585) := by core033_kernel_decide
theorem stats586 : actualRows586.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows586=5388 := by core033_kernel_decide
theorem rows587 : actualRows587=WordField.canonicalRows actualModulus 587 (.bnot 586) := by core033_kernel_decide
theorem stats587 : actualRows587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows587=6276 := by core033_kernel_decide
theorem rows588 : actualRows588=WordField.canonicalRows actualModulus 588 (.band 587 32) := by core033_kernel_decide
theorem stats588 : actualRows588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows588=5124 := by core033_kernel_decide
theorem rows589 : actualRows589=WordField.canonicalRows actualModulus 589 (.bxor 583 588) := by core033_kernel_decide
theorem stats589 : actualRows589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows589=7428 := by core033_kernel_decide
theorem rows590 : actualRows590=WordField.canonicalRows actualModulus 590 (.bnot 359) := by core033_kernel_decide
theorem stats590 : actualRows590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows590=6276 := by core033_kernel_decide
theorem rows591 : actualRows591=WordField.canonicalRows actualModulus 591 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats591 : actualRows591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows591=2892 := by core033_kernel_decide
theorem rows592 : actualRows592=WordField.canonicalRows actualModulus 592 (.badd 590 591) := by core033_kernel_decide
theorem stats592 : actualRows592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows592=5388 := by core033_kernel_decide
theorem rows593 : actualRows593=WordField.canonicalRows actualModulus 593 (.band 592 33) := by core033_kernel_decide
theorem stats593 : actualRows593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows593=5124 := by core033_kernel_decide
theorem rows594 : actualRows594=WordField.canonicalRows actualModulus 594 (.bnot 359) := by core033_kernel_decide
theorem stats594 : actualRows594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows594=6276 := by core033_kernel_decide
theorem rows595 : actualRows595=WordField.canonicalRows actualModulus 595 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats595 : actualRows595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows595=2892 := by core033_kernel_decide
theorem rows596 : actualRows596=WordField.canonicalRows actualModulus 596 (.badd 594 595) := by core033_kernel_decide
theorem stats596 : actualRows596.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows596=5388 := by core033_kernel_decide
theorem rows597 : actualRows597=WordField.canonicalRows actualModulus 597 (.bnot 596) := by core033_kernel_decide
theorem stats597 : actualRows597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows597=6276 := by core033_kernel_decide
theorem rows598 : actualRows598=WordField.canonicalRows actualModulus 598 (.band 597 34) := by core033_kernel_decide
theorem stats598 : actualRows598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows598=5124 := by core033_kernel_decide
theorem rows599 : actualRows599=WordField.canonicalRows actualModulus 599 (.bxor 593 598) := by core033_kernel_decide
theorem stats599 : actualRows599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows599=7428 := by core033_kernel_decide
theorem rows600 : actualRows600=WordField.canonicalRows actualModulus 600 (.shr 359 1) := by core033_kernel_decide
theorem stats600 : actualRows600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows600=5052 := by core033_kernel_decide
theorem rows601 : actualRows601=WordField.canonicalRows actualModulus 601 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats601 : actualRows601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows601=2820 := by core033_kernel_decide
theorem rows602 : actualRows602=WordField.canonicalRows actualModulus 602 (.bnot 601) := by core033_kernel_decide
theorem stats602 : actualRows602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows602=6276 := by core033_kernel_decide
theorem rows603 : actualRows603=WordField.canonicalRows actualModulus 603 (.band 600 602) := by core033_kernel_decide
theorem stats603 : actualRows603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows603=5124 := by core033_kernel_decide
theorem rows604 : actualRows604=WordField.canonicalRows actualModulus 604 (.shr 359 1) := by core033_kernel_decide
theorem stats604 : actualRows604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows604=5052 := by core033_kernel_decide
theorem rows605 : actualRows605=WordField.canonicalRows actualModulus 605 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats605 : actualRows605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows605=2820 := by core033_kernel_decide
theorem rows606 : actualRows606=WordField.canonicalRows actualModulus 606 (.bnot 605) := by core033_kernel_decide
theorem stats606 : actualRows606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows606=6276 := by core033_kernel_decide
theorem rows607 : actualRows607=WordField.canonicalRows actualModulus 607 (.bxor 604 606) := by core033_kernel_decide
theorem stats607 : actualRows607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows607=7428 := by core033_kernel_decide
theorem rows608 : actualRows608=WordField.canonicalRows actualModulus 608 (.shr 359 1) := by core033_kernel_decide
theorem stats608 : actualRows608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows608=5052 := by core033_kernel_decide
theorem rows609 : actualRows609=WordField.canonicalRows actualModulus 609 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats609 : actualRows609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows609=2820 := by core033_kernel_decide
theorem rows610 : actualRows610=WordField.canonicalRows actualModulus 610 (.bnot 609) := by core033_kernel_decide
theorem stats610 : actualRows610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows610=6276 := by core033_kernel_decide
theorem rows611 : actualRows611=WordField.canonicalRows actualModulus 611 (.badd 608 610) := by core033_kernel_decide
theorem stats611 : actualRows611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows611=5388 := by core033_kernel_decide
theorem rows612 : actualRows612=WordField.canonicalRows actualModulus 612 (.bnot 611) := by core033_kernel_decide
theorem stats612 : actualRows612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows612=6276 := by core033_kernel_decide
theorem rows613 : actualRows613=WordField.canonicalRows actualModulus 613 (.band 607 612) := by core033_kernel_decide
theorem stats613 : actualRows613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows613=5124 := by core033_kernel_decide
theorem rows614 : actualRows614=WordField.canonicalRows actualModulus 614 (.bxor 603 613) := by core033_kernel_decide
theorem stats614 : actualRows614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows614=7428 := by core033_kernel_decide
theorem rows615 : actualRows615=WordField.canonicalRows actualModulus 615 (.shr 614 31) := by core033_kernel_decide
theorem stats615 : actualRows615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows615=2892 := by core033_kernel_decide
theorem rows616 : actualRows616=WordField.canonicalRows actualModulus 616 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats616 : actualRows616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows616=2892 := by core033_kernel_decide
theorem rows617 : actualRows617=WordField.canonicalRows actualModulus 617 (.bxor 615 616) := by core033_kernel_decide
theorem stats617 : actualRows617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows617=7428 := by core033_kernel_decide
theorem rows618 : actualRows618=WordField.canonicalRows actualModulus 618 (.badd 449 569) := by core033_kernel_decide
theorem stats618 : actualRows618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows618=5388 := by core033_kernel_decide
def partRows8 : List R1CS.Row := actualRows555++actualRows556++actualRows557++actualRows558++actualRows559++actualRows560++actualRows561++actualRows562++actualRows563++actualRows564++actualRows565++actualRows566++actualRows567++actualRows568++actualRows569++actualRows570++actualRows571++actualRows572++actualRows573++actualRows574++actualRows575++actualRows576++actualRows577++actualRows578++actualRows579++actualRows580++actualRows581++actualRows582++actualRows583++actualRows584++actualRows585++actualRows586++actualRows587++actualRows588++actualRows589++actualRows590++actualRows591++actualRows592++actualRows593++actualRows594++actualRows595++actualRows596++actualRows597++actualRows598++actualRows599++actualRows600++actualRows601++actualRows602++actualRows603++actualRows604++actualRows605++actualRows606++actualRows607++actualRows608++actualRows609++actualRows610++actualRows611++actualRows612++actualRows613++actualRows614++actualRows615++actualRows616++actualRows617++actualRows618
def partOps8 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 554 555,.bnot 556,.band 557 26,.bxor 553 558,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 560 561,.band 562 27,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 564 565,.bnot 566,.band 567 29,.bxor 563 568,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 570 571,.band 572 28,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 574 575,.bnot 576,.band 577 30,.bxor 573 578,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 580 581,.band 582 31,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 584 585,.bnot 586,.band 587 32,.bxor 583 588,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 590 591,.band 592 33,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 594 595,.bnot 596,.band 597 34,.bxor 593 598,.shr 359 1,.literal (BitVec.ofNat 32 0),.bnot 601,.band 600 602,.shr 359 1,.literal (BitVec.ofNat 32 0),.bnot 605,.bxor 604 606,.shr 359 1,.literal (BitVec.ofNat 32 0),.bnot 609,.badd 608 610,.bnot 611,.band 607 612,.bxor 603 613,.shr 614 31,.literal (BitVec.ofNat 32 1),.bxor 615 616,.badd 449 569]
theorem partExact8 : partRows8=WordField.rows actualModulus 555 partOps8 := by
  simp only [partRows8,partOps8,WordField.rows,rows555,rows556,rows557,rows558,rows559,rows560,rows561,rows562,rows563,rows564,rows565,rows566,rows567,rows568,rows569,rows570,rows571,rows572,rows573,rows574,rows575,rows576,rows577,rows578,rows579,rows580,rows581,rows582,rows583,rows584,rows585,rows586,rows587,rows588,rows589,rows590,rows591,rows592,rows593,rows594,rows595,rows596,rows597,rows598,rows599,rows600,rows601,rows602,rows603,rows604,rows605,rows606,rows607,rows608,rows609,rows610,rows611,rows612,rows613,rows614,rows615,rows616,rows617,rows618,List.append_assoc,List.append_nil]
theorem partLength8 : partOps8.length=64 := by decide
theorem partStats8 : partRows8.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows8=337176 := by
  simp only [partRows8,List.length_append,MatrixRowBlocks.rows_weight_append,stats555.1,stats555.2,stats556.1,stats556.2,stats557.1,stats557.2,stats558.1,stats558.2,stats559.1,stats559.2,stats560.1,stats560.2,stats561.1,stats561.2,stats562.1,stats562.2,stats563.1,stats563.2,stats564.1,stats564.2,stats565.1,stats565.2,stats566.1,stats566.2,stats567.1,stats567.2,stats568.1,stats568.2,stats569.1,stats569.2,stats570.1,stats570.2,stats571.1,stats571.2,stats572.1,stats572.2,stats573.1,stats573.2,stats574.1,stats574.2,stats575.1,stats575.2,stats576.1,stats576.2,stats577.1,stats577.2,stats578.1,stats578.2,stats579.1,stats579.2,stats580.1,stats580.2,stats581.1,stats581.2,stats582.1,stats582.2,stats583.1,stats583.2,stats584.1,stats584.2,stats585.1,stats585.2,stats586.1,stats586.2,stats587.1,stats587.2,stats588.1,stats588.2,stats589.1,stats589.2,stats590.1,stats590.2,stats591.1,stats591.2,stats592.1,stats592.2,stats593.1,stats593.2,stats594.1,stats594.2,stats595.1,stats595.2,stats596.1,stats596.2,stats597.1,stats597.2,stats598.1,stats598.2,stats599.1,stats599.2,stats600.1,stats600.2,stats601.1,stats601.2,stats602.1,stats602.2,stats603.1,stats603.2,stats604.1,stats604.2,stats605.1,stats605.2,stats606.1,stats606.2,stats607.1,stats607.2,stats608.1,stats608.2,stats609.1,stats609.2,stats610.1,stats610.2,stats611.1,stats611.2,stats612.1,stats612.2,stats613.1,stats613.2,stats614.1,stats614.2,stats615.1,stats615.2,stats616.1,stats616.2,stats617.1,stats617.2,stats618.1,stats618.2]
  decide
end FrameHashControllerCheckedRows
