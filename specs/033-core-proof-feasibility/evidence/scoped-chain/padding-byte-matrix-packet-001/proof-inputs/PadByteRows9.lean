import ActualPadByteIR
import ArtifactPadByteBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PadByteInstructionMatrixData9
import PadByteInstructionMatrixData10
namespace PadByteCheckedRows
open Core033 PadByteInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows579 : actualRows579=WordField.canonicalRows actualModulus 579 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats579 : actualRows579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows579=3252 := by core033_kernel_decide
theorem rows580 : actualRows580=WordField.canonicalRows actualModulus 580 (.band 578 579) := by core033_kernel_decide
theorem stats580 : actualRows580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows580=5124 := by core033_kernel_decide
theorem rows581 : actualRows581=WordField.canonicalRows actualModulus 581 (.badd 571 580) := by core033_kernel_decide
theorem stats581 : actualRows581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows581=5388 := by core033_kernel_decide
theorem rows582 : actualRows582=WordField.canonicalRows actualModulus 582 (.literal (BitVec.ofNat 32 4294967294)) := by core033_kernel_decide
theorem stats582 : actualRows582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows582=5052 := by core033_kernel_decide
theorem rows583 : actualRows583=WordField.canonicalRows actualModulus 583 (.badd 581 582) := by core033_kernel_decide
theorem stats583 : actualRows583.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows583=5388 := by core033_kernel_decide
theorem rows584 : actualRows584=WordField.canonicalRows actualModulus 584 (.bxor 1 583) := by core033_kernel_decide
theorem stats584 : actualRows584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows584=7428 := by core033_kernel_decide
theorem rows585 : actualRows585=WordField.canonicalRows actualModulus 585 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats585 : actualRows585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows585=2820 := by core033_kernel_decide
theorem rows586 : actualRows586=WordField.canonicalRows actualModulus 586 (.bnot 585) := by core033_kernel_decide
theorem stats586 : actualRows586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows586=6276 := by core033_kernel_decide
theorem rows587 : actualRows587=WordField.canonicalRows actualModulus 587 (.badd 584 586) := by core033_kernel_decide
theorem stats587 : actualRows587.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows587=5388 := by core033_kernel_decide
theorem rows588 : actualRows588=WordField.canonicalRows actualModulus 588 (.bnot 587) := by core033_kernel_decide
theorem stats588 : actualRows588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows588=6276 := by core033_kernel_decide
theorem rows589 : actualRows589=WordField.canonicalRows actualModulus 589 (.band 569 588) := by core033_kernel_decide
theorem stats589 : actualRows589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows589=5124 := by core033_kernel_decide
theorem rows590 : actualRows590=WordField.canonicalRows actualModulus 590 (.bxor 551 589) := by core033_kernel_decide
theorem stats590 : actualRows590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows590=7428 := by core033_kernel_decide
theorem rows591 : actualRows591=WordField.canonicalRows actualModulus 591 (.shr 590 31) := by core033_kernel_decide
theorem stats591 : actualRows591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows591=2892 := by core033_kernel_decide
theorem rows592 : actualRows592=WordField.canonicalRows actualModulus 592 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats592 : actualRows592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows592=2892 := by core033_kernel_decide
theorem rows593 : actualRows593=WordField.canonicalRows actualModulus 593 (.bxor 591 592) := by core033_kernel_decide
theorem stats593 : actualRows593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows593=7428 := by core033_kernel_decide
theorem rows594 : actualRows594=WordField.canonicalRows actualModulus 594 (.bnot 593) := by core033_kernel_decide
theorem stats594 : actualRows594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows594=6276 := by core033_kernel_decide
theorem rows595 : actualRows595=WordField.canonicalRows actualModulus 595 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats595 : actualRows595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows595=2892 := by core033_kernel_decide
theorem rows596 : actualRows596=WordField.canonicalRows actualModulus 596 (.badd 594 595) := by core033_kernel_decide
theorem stats596 : actualRows596.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows596=5388 := by core033_kernel_decide
theorem rows597 : actualRows597=WordField.canonicalRows actualModulus 597 (.bnot 596) := by core033_kernel_decide
theorem stats597 : actualRows597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows597=6276 := by core033_kernel_decide
theorem rows598 : actualRows598=WordField.canonicalRows actualModulus 598 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats598 : actualRows598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows598=2964 := by core033_kernel_decide
theorem rows599 : actualRows599=WordField.canonicalRows actualModulus 599 (.badd 0 598) := by core033_kernel_decide
theorem stats599 : actualRows599.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows599=5388 := by core033_kernel_decide
theorem rows600 : actualRows600=WordField.canonicalRows actualModulus 600 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats600 : actualRows600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows600=3252 := by core033_kernel_decide
theorem rows601 : actualRows601=WordField.canonicalRows actualModulus 601 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats601 : actualRows601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows601=3252 := by core033_kernel_decide
theorem rows602 : actualRows602=WordField.canonicalRows actualModulus 602 (.band 0 601) := by core033_kernel_decide
theorem stats602 : actualRows602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows602=5124 := by core033_kernel_decide
theorem rows603 : actualRows603=WordField.canonicalRows actualModulus 603 (.bnot 602) := by core033_kernel_decide
theorem stats603 : actualRows603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows603=6276 := by core033_kernel_decide
theorem rows604 : actualRows604=WordField.canonicalRows actualModulus 604 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats604 : actualRows604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows604=2892 := by core033_kernel_decide
theorem rows605 : actualRows605=WordField.canonicalRows actualModulus 605 (.badd 603 604) := by core033_kernel_decide
theorem stats605 : actualRows605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows605=5388 := by core033_kernel_decide
theorem rows606 : actualRows606=WordField.canonicalRows actualModulus 606 (.badd 600 605) := by core033_kernel_decide
theorem stats606 : actualRows606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows606=5388 := by core033_kernel_decide
theorem rows607 : actualRows607=WordField.canonicalRows actualModulus 607 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats607 : actualRows607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows607=3252 := by core033_kernel_decide
theorem rows608 : actualRows608=WordField.canonicalRows actualModulus 608 (.band 606 607) := by core033_kernel_decide
theorem stats608 : actualRows608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows608=5124 := by core033_kernel_decide
theorem rows609 : actualRows609=WordField.canonicalRows actualModulus 609 (.badd 599 608) := by core033_kernel_decide
theorem stats609 : actualRows609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows609=5388 := by core033_kernel_decide
theorem rows610 : actualRows610=WordField.canonicalRows actualModulus 610 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats610 : actualRows610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows610=5124 := by core033_kernel_decide
theorem rows611 : actualRows611=WordField.canonicalRows actualModulus 611 (.badd 609 610) := by core033_kernel_decide
theorem stats611 : actualRows611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows611=5388 := by core033_kernel_decide
theorem rows612 : actualRows612=WordField.canonicalRows actualModulus 612 (.bxor 1 611) := by core033_kernel_decide
theorem stats612 : actualRows612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows612=7428 := by core033_kernel_decide
theorem rows613 : actualRows613=WordField.canonicalRows actualModulus 613 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats613 : actualRows613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows613=2820 := by core033_kernel_decide
theorem rows614 : actualRows614=WordField.canonicalRows actualModulus 614 (.bnot 613) := by core033_kernel_decide
theorem stats614 : actualRows614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows614=6276 := by core033_kernel_decide
theorem rows615 : actualRows615=WordField.canonicalRows actualModulus 615 (.band 612 614) := by core033_kernel_decide
theorem stats615 : actualRows615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows615=5124 := by core033_kernel_decide
theorem rows616 : actualRows616=WordField.canonicalRows actualModulus 616 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats616 : actualRows616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows616=2964 := by core033_kernel_decide
theorem rows617 : actualRows617=WordField.canonicalRows actualModulus 617 (.badd 0 616) := by core033_kernel_decide
theorem stats617 : actualRows617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows617=5388 := by core033_kernel_decide
theorem rows618 : actualRows618=WordField.canonicalRows actualModulus 618 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats618 : actualRows618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows618=3252 := by core033_kernel_decide
theorem rows619 : actualRows619=WordField.canonicalRows actualModulus 619 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats619 : actualRows619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows619=3252 := by core033_kernel_decide
theorem rows620 : actualRows620=WordField.canonicalRows actualModulus 620 (.band 0 619) := by core033_kernel_decide
theorem stats620 : actualRows620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows620=5124 := by core033_kernel_decide
theorem rows621 : actualRows621=WordField.canonicalRows actualModulus 621 (.bnot 620) := by core033_kernel_decide
theorem stats621 : actualRows621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows621=6276 := by core033_kernel_decide
theorem rows622 : actualRows622=WordField.canonicalRows actualModulus 622 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats622 : actualRows622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows622=2892 := by core033_kernel_decide
theorem rows623 : actualRows623=WordField.canonicalRows actualModulus 623 (.badd 621 622) := by core033_kernel_decide
theorem stats623 : actualRows623.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows623=5388 := by core033_kernel_decide
theorem rows624 : actualRows624=WordField.canonicalRows actualModulus 624 (.badd 618 623) := by core033_kernel_decide
theorem stats624 : actualRows624.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows624=5388 := by core033_kernel_decide
theorem rows625 : actualRows625=WordField.canonicalRows actualModulus 625 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats625 : actualRows625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows625=3252 := by core033_kernel_decide
theorem rows626 : actualRows626=WordField.canonicalRows actualModulus 626 (.band 624 625) := by core033_kernel_decide
theorem stats626 : actualRows626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows626=5124 := by core033_kernel_decide
theorem rows627 : actualRows627=WordField.canonicalRows actualModulus 627 (.badd 617 626) := by core033_kernel_decide
theorem stats627 : actualRows627.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows627=5388 := by core033_kernel_decide
theorem rows628 : actualRows628=WordField.canonicalRows actualModulus 628 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats628 : actualRows628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows628=5124 := by core033_kernel_decide
theorem rows629 : actualRows629=WordField.canonicalRows actualModulus 629 (.badd 627 628) := by core033_kernel_decide
theorem stats629 : actualRows629.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows629=5388 := by core033_kernel_decide
theorem rows630 : actualRows630=WordField.canonicalRows actualModulus 630 (.bxor 1 629) := by core033_kernel_decide
theorem stats630 : actualRows630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows630=7428 := by core033_kernel_decide
theorem rows631 : actualRows631=WordField.canonicalRows actualModulus 631 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats631 : actualRows631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows631=2820 := by core033_kernel_decide
theorem rows632 : actualRows632=WordField.canonicalRows actualModulus 632 (.bnot 631) := by core033_kernel_decide
theorem stats632 : actualRows632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows632=6276 := by core033_kernel_decide
theorem rows633 : actualRows633=WordField.canonicalRows actualModulus 633 (.bxor 630 632) := by core033_kernel_decide
theorem stats633 : actualRows633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows633=7428 := by core033_kernel_decide
theorem rows634 : actualRows634=WordField.canonicalRows actualModulus 634 (.literal (BitVec.ofNat 32 9)) := by core033_kernel_decide
theorem stats634 : actualRows634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows634=2964 := by core033_kernel_decide
theorem rows635 : actualRows635=WordField.canonicalRows actualModulus 635 (.badd 0 634) := by core033_kernel_decide
theorem stats635 : actualRows635.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows635=5388 := by core033_kernel_decide
theorem rows636 : actualRows636=WordField.canonicalRows actualModulus 636 (.literal (BitVec.ofNat 32 119)) := by core033_kernel_decide
theorem stats636 : actualRows636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows636=3252 := by core033_kernel_decide
theorem rows637 : actualRows637=WordField.canonicalRows actualModulus 637 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats637 : actualRows637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows637=3252 := by core033_kernel_decide
theorem rows638 : actualRows638=WordField.canonicalRows actualModulus 638 (.band 0 637) := by core033_kernel_decide
theorem stats638 : actualRows638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows638=5124 := by core033_kernel_decide
theorem rows639 : actualRows639=WordField.canonicalRows actualModulus 639 (.bnot 638) := by core033_kernel_decide
theorem stats639 : actualRows639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows639=6276 := by core033_kernel_decide
theorem rows640 : actualRows640=WordField.canonicalRows actualModulus 640 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats640 : actualRows640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows640=2892 := by core033_kernel_decide
theorem rows641 : actualRows641=WordField.canonicalRows actualModulus 641 (.badd 639 640) := by core033_kernel_decide
theorem stats641 : actualRows641.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows641=5388 := by core033_kernel_decide
theorem rows642 : actualRows642=WordField.canonicalRows actualModulus 642 (.badd 636 641) := by core033_kernel_decide
theorem stats642 : actualRows642.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows642=5388 := by core033_kernel_decide
def partRows9 : List R1CS.Row := actualRows579++actualRows580++actualRows581++actualRows582++actualRows583++actualRows584++actualRows585++actualRows586++actualRows587++actualRows588++actualRows589++actualRows590++actualRows591++actualRows592++actualRows593++actualRows594++actualRows595++actualRows596++actualRows597++actualRows598++actualRows599++actualRows600++actualRows601++actualRows602++actualRows603++actualRows604++actualRows605++actualRows606++actualRows607++actualRows608++actualRows609++actualRows610++actualRows611++actualRows612++actualRows613++actualRows614++actualRows615++actualRows616++actualRows617++actualRows618++actualRows619++actualRows620++actualRows621++actualRows622++actualRows623++actualRows624++actualRows625++actualRows626++actualRows627++actualRows628++actualRows629++actualRows630++actualRows631++actualRows632++actualRows633++actualRows634++actualRows635++actualRows636++actualRows637++actualRows638++actualRows639++actualRows640++actualRows641++actualRows642
def partOps9 : List WordIR.Op := [.literal (BitVec.ofNat 32 63),.band 578 579,.badd 571 580,.literal (BitVec.ofNat 32 4294967294),.badd 581 582,.bxor 1 583,.literal (BitVec.ofNat 32 0),.bnot 585,.badd 584 586,.bnot 587,.band 569 588,.bxor 551 589,.shr 590 31,.literal (BitVec.ofNat 32 1),.bxor 591 592,.bnot 593,.literal (BitVec.ofNat 32 1),.badd 594 595,.bnot 596,.literal (BitVec.ofNat 32 9),.badd 0 598,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 601,.bnot 602,.literal (BitVec.ofNat 32 1),.badd 603 604,.badd 600 605,.literal (BitVec.ofNat 32 63),.band 606 607,.badd 599 608,.literal (BitVec.ofNat 32 4294967295),.badd 609 610,.bxor 1 611,.literal (BitVec.ofNat 32 0),.bnot 613,.band 612 614,.literal (BitVec.ofNat 32 9),.badd 0 616,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 619,.bnot 620,.literal (BitVec.ofNat 32 1),.badd 621 622,.badd 618 623,.literal (BitVec.ofNat 32 63),.band 624 625,.badd 617 626,.literal (BitVec.ofNat 32 4294967295),.badd 627 628,.bxor 1 629,.literal (BitVec.ofNat 32 0),.bnot 631,.bxor 630 632,.literal (BitVec.ofNat 32 9),.badd 0 634,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 637,.bnot 638,.literal (BitVec.ofNat 32 1),.badd 639 640,.badd 636 641]
theorem partExact9 : partRows9=WordField.rows actualModulus 579 partOps9 := by
  simp only [partRows9,partOps9,WordField.rows,rows579,rows580,rows581,rows582,rows583,rows584,rows585,rows586,rows587,rows588,rows589,rows590,rows591,rows592,rows593,rows594,rows595,rows596,rows597,rows598,rows599,rows600,rows601,rows602,rows603,rows604,rows605,rows606,rows607,rows608,rows609,rows610,rows611,rows612,rows613,rows614,rows615,rows616,rows617,rows618,rows619,rows620,rows621,rows622,rows623,rows624,rows625,rows626,rows627,rows628,rows629,rows630,rows631,rows632,rows633,rows634,rows635,rows636,rows637,rows638,rows639,rows640,rows641,rows642,List.append_assoc,List.append_nil]
theorem partLength9 : partOps9.length=64 := by decide
theorem partStats9 : partRows9.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows9=312912 := by
  simp only [partRows9,List.length_append,MatrixRowBlocks.rows_weight_append,stats579.1,stats579.2,stats580.1,stats580.2,stats581.1,stats581.2,stats582.1,stats582.2,stats583.1,stats583.2,stats584.1,stats584.2,stats585.1,stats585.2,stats586.1,stats586.2,stats587.1,stats587.2,stats588.1,stats588.2,stats589.1,stats589.2,stats590.1,stats590.2,stats591.1,stats591.2,stats592.1,stats592.2,stats593.1,stats593.2,stats594.1,stats594.2,stats595.1,stats595.2,stats596.1,stats596.2,stats597.1,stats597.2,stats598.1,stats598.2,stats599.1,stats599.2,stats600.1,stats600.2,stats601.1,stats601.2,stats602.1,stats602.2,stats603.1,stats603.2,stats604.1,stats604.2,stats605.1,stats605.2,stats606.1,stats606.2,stats607.1,stats607.2,stats608.1,stats608.2,stats609.1,stats609.2,stats610.1,stats610.2,stats611.1,stats611.2,stats612.1,stats612.2,stats613.1,stats613.2,stats614.1,stats614.2,stats615.1,stats615.2,stats616.1,stats616.2,stats617.1,stats617.2,stats618.1,stats618.2,stats619.1,stats619.2,stats620.1,stats620.2,stats621.1,stats621.2,stats622.1,stats622.2,stats623.1,stats623.2,stats624.1,stats624.2,stats625.1,stats625.2,stats626.1,stats626.2,stats627.1,stats627.2,stats628.1,stats628.2,stats629.1,stats629.2,stats630.1,stats630.2,stats631.1,stats631.2,stats632.1,stats632.2,stats633.1,stats633.2,stats634.1,stats634.2,stats635.1,stats635.2,stats636.1,stats636.2,stats637.1,stats637.2,stats638.1,stats638.2,stats639.1,stats639.2,stats640.1,stats640.2,stats641.1,stats641.2,stats642.1,stats642.2]
  decide
end PadByteCheckedRows
