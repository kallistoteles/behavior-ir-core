import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData181
import PairedPathRoundInstructionMatrixData182
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11616 : actualRows11616=WordField.canonicalRows actualModulus 11616 (.bnot 11615) := by core033_kernel_decide
theorem stats11616 : actualRows11616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11616=6276 := by core033_kernel_decide
theorem rows11617 : actualRows11617=WordField.canonicalRows actualModulus 11617 (.badd 11614 11616) := by core033_kernel_decide
theorem stats11617 : actualRows11617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11617=5388 := by core033_kernel_decide
theorem rows11618 : actualRows11618=WordField.canonicalRows actualModulus 11618 (.bnot 11617) := by core033_kernel_decide
theorem stats11618 : actualRows11618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11618=6276 := by core033_kernel_decide
theorem rows11619 : actualRows11619=WordField.canonicalRows actualModulus 11619 (.band 11612 11618) := by core033_kernel_decide
theorem stats11619 : actualRows11619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11619=5124 := by core033_kernel_decide
theorem rows11620 : actualRows11620=WordField.canonicalRows actualModulus 11620 (.bxor 11607 11619) := by core033_kernel_decide
theorem stats11620 : actualRows11620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11620=7428 := by core033_kernel_decide
theorem rows11621 : actualRows11621=WordField.canonicalRows actualModulus 11621 (.shr 11620 31) := by core033_kernel_decide
theorem stats11621 : actualRows11621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11621=2892 := by core033_kernel_decide
theorem rows11622 : actualRows11622=WordField.canonicalRows actualModulus 11622 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11622 : actualRows11622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11622=2892 := by core033_kernel_decide
theorem rows11623 : actualRows11623=WordField.canonicalRows actualModulus 11623 (.bxor 11621 11622) := by core033_kernel_decide
theorem stats11623 : actualRows11623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11623=7428 := by core033_kernel_decide
theorem rows11624 : actualRows11624=WordField.canonicalRows actualModulus 11624 (.bnot 11623) := by core033_kernel_decide
theorem stats11624 : actualRows11624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11624=6276 := by core033_kernel_decide
theorem rows11625 : actualRows11625=WordField.canonicalRows actualModulus 11625 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11625 : actualRows11625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11625=2892 := by core033_kernel_decide
theorem rows11626 : actualRows11626=WordField.canonicalRows actualModulus 11626 (.badd 11624 11625) := by core033_kernel_decide
theorem stats11626 : actualRows11626.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11626=5388 := by core033_kernel_decide
theorem rows11627 : actualRows11627=WordField.canonicalRows actualModulus 11627 (.bnot 11626) := by core033_kernel_decide
theorem stats11627 : actualRows11627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11627=6276 := by core033_kernel_decide
theorem rows11628 : actualRows11628=WordField.canonicalRows actualModulus 11628 (.band 11627 792) := by core033_kernel_decide
theorem stats11628 : actualRows11628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11628=5124 := by core033_kernel_decide
theorem rows11629 : actualRows11629=WordField.canonicalRows actualModulus 11629 (.bxor 11602 11628) := by core033_kernel_decide
theorem stats11629 : actualRows11629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11629=7428 := by core033_kernel_decide
theorem rows11630 : actualRows11630=WordField.canonicalRows actualModulus 11630 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11630 : actualRows11630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11630=2964 := by core033_kernel_decide
theorem rows11631 : actualRows11631=WordField.canonicalRows actualModulus 11631 (.bxor 442 11630) := by core033_kernel_decide
theorem stats11631 : actualRows11631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11631=7428 := by core033_kernel_decide
theorem rows11632 : actualRows11632=WordField.canonicalRows actualModulus 11632 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11632 : actualRows11632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11632=2820 := by core033_kernel_decide
theorem rows11633 : actualRows11633=WordField.canonicalRows actualModulus 11633 (.bnot 11632) := by core033_kernel_decide
theorem stats11633 : actualRows11633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11633=6276 := by core033_kernel_decide
theorem rows11634 : actualRows11634=WordField.canonicalRows actualModulus 11634 (.band 11631 11633) := by core033_kernel_decide
theorem stats11634 : actualRows11634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11634=5124 := by core033_kernel_decide
theorem rows11635 : actualRows11635=WordField.canonicalRows actualModulus 11635 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11635 : actualRows11635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11635=2964 := by core033_kernel_decide
theorem rows11636 : actualRows11636=WordField.canonicalRows actualModulus 11636 (.bxor 442 11635) := by core033_kernel_decide
theorem stats11636 : actualRows11636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11636=7428 := by core033_kernel_decide
theorem rows11637 : actualRows11637=WordField.canonicalRows actualModulus 11637 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11637 : actualRows11637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11637=2820 := by core033_kernel_decide
theorem rows11638 : actualRows11638=WordField.canonicalRows actualModulus 11638 (.bnot 11637) := by core033_kernel_decide
theorem stats11638 : actualRows11638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11638=6276 := by core033_kernel_decide
theorem rows11639 : actualRows11639=WordField.canonicalRows actualModulus 11639 (.bxor 11636 11638) := by core033_kernel_decide
theorem stats11639 : actualRows11639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11639=7428 := by core033_kernel_decide
theorem rows11640 : actualRows11640=WordField.canonicalRows actualModulus 11640 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11640 : actualRows11640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11640=2964 := by core033_kernel_decide
theorem rows11641 : actualRows11641=WordField.canonicalRows actualModulus 11641 (.bxor 442 11640) := by core033_kernel_decide
theorem stats11641 : actualRows11641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11641=7428 := by core033_kernel_decide
theorem rows11642 : actualRows11642=WordField.canonicalRows actualModulus 11642 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11642 : actualRows11642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11642=2820 := by core033_kernel_decide
theorem rows11643 : actualRows11643=WordField.canonicalRows actualModulus 11643 (.bnot 11642) := by core033_kernel_decide
theorem stats11643 : actualRows11643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11643=6276 := by core033_kernel_decide
theorem rows11644 : actualRows11644=WordField.canonicalRows actualModulus 11644 (.badd 11641 11643) := by core033_kernel_decide
theorem stats11644 : actualRows11644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11644=5388 := by core033_kernel_decide
theorem rows11645 : actualRows11645=WordField.canonicalRows actualModulus 11645 (.bnot 11644) := by core033_kernel_decide
theorem stats11645 : actualRows11645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11645=6276 := by core033_kernel_decide
theorem rows11646 : actualRows11646=WordField.canonicalRows actualModulus 11646 (.band 11639 11645) := by core033_kernel_decide
theorem stats11646 : actualRows11646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11646=5124 := by core033_kernel_decide
theorem rows11647 : actualRows11647=WordField.canonicalRows actualModulus 11647 (.bxor 11634 11646) := by core033_kernel_decide
theorem stats11647 : actualRows11647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11647=7428 := by core033_kernel_decide
theorem rows11648 : actualRows11648=WordField.canonicalRows actualModulus 11648 (.shr 11647 31) := by core033_kernel_decide
theorem stats11648 : actualRows11648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11648=2892 := by core033_kernel_decide
theorem rows11649 : actualRows11649=WordField.canonicalRows actualModulus 11649 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11649 : actualRows11649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11649=2892 := by core033_kernel_decide
theorem rows11650 : actualRows11650=WordField.canonicalRows actualModulus 11650 (.bxor 11648 11649) := by core033_kernel_decide
theorem stats11650 : actualRows11650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11650=7428 := by core033_kernel_decide
theorem rows11651 : actualRows11651=WordField.canonicalRows actualModulus 11651 (.bnot 11650) := by core033_kernel_decide
theorem stats11651 : actualRows11651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11651=6276 := by core033_kernel_decide
theorem rows11652 : actualRows11652=WordField.canonicalRows actualModulus 11652 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11652 : actualRows11652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11652=2892 := by core033_kernel_decide
theorem rows11653 : actualRows11653=WordField.canonicalRows actualModulus 11653 (.badd 11651 11652) := by core033_kernel_decide
theorem stats11653 : actualRows11653.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11653=5388 := by core033_kernel_decide
theorem rows11654 : actualRows11654=WordField.canonicalRows actualModulus 11654 (.band 11653 10448) := by core033_kernel_decide
theorem stats11654 : actualRows11654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11654=5124 := by core033_kernel_decide
theorem rows11655 : actualRows11655=WordField.canonicalRows actualModulus 11655 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11655 : actualRows11655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11655=2964 := by core033_kernel_decide
theorem rows11656 : actualRows11656=WordField.canonicalRows actualModulus 11656 (.bxor 442 11655) := by core033_kernel_decide
theorem stats11656 : actualRows11656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11656=7428 := by core033_kernel_decide
theorem rows11657 : actualRows11657=WordField.canonicalRows actualModulus 11657 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11657 : actualRows11657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11657=2820 := by core033_kernel_decide
theorem rows11658 : actualRows11658=WordField.canonicalRows actualModulus 11658 (.bnot 11657) := by core033_kernel_decide
theorem stats11658 : actualRows11658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11658=6276 := by core033_kernel_decide
theorem rows11659 : actualRows11659=WordField.canonicalRows actualModulus 11659 (.band 11656 11658) := by core033_kernel_decide
theorem stats11659 : actualRows11659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11659=5124 := by core033_kernel_decide
theorem rows11660 : actualRows11660=WordField.canonicalRows actualModulus 11660 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11660 : actualRows11660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11660=2964 := by core033_kernel_decide
theorem rows11661 : actualRows11661=WordField.canonicalRows actualModulus 11661 (.bxor 442 11660) := by core033_kernel_decide
theorem stats11661 : actualRows11661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11661=7428 := by core033_kernel_decide
theorem rows11662 : actualRows11662=WordField.canonicalRows actualModulus 11662 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11662 : actualRows11662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11662=2820 := by core033_kernel_decide
theorem rows11663 : actualRows11663=WordField.canonicalRows actualModulus 11663 (.bnot 11662) := by core033_kernel_decide
theorem stats11663 : actualRows11663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11663=6276 := by core033_kernel_decide
theorem rows11664 : actualRows11664=WordField.canonicalRows actualModulus 11664 (.bxor 11661 11663) := by core033_kernel_decide
theorem stats11664 : actualRows11664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11664=7428 := by core033_kernel_decide
theorem rows11665 : actualRows11665=WordField.canonicalRows actualModulus 11665 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11665 : actualRows11665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11665=2964 := by core033_kernel_decide
theorem rows11666 : actualRows11666=WordField.canonicalRows actualModulus 11666 (.bxor 442 11665) := by core033_kernel_decide
theorem stats11666 : actualRows11666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11666=7428 := by core033_kernel_decide
theorem rows11667 : actualRows11667=WordField.canonicalRows actualModulus 11667 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11667 : actualRows11667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11667=2820 := by core033_kernel_decide
theorem rows11668 : actualRows11668=WordField.canonicalRows actualModulus 11668 (.bnot 11667) := by core033_kernel_decide
theorem stats11668 : actualRows11668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11668=6276 := by core033_kernel_decide
theorem rows11669 : actualRows11669=WordField.canonicalRows actualModulus 11669 (.badd 11666 11668) := by core033_kernel_decide
theorem stats11669 : actualRows11669.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11669=5388 := by core033_kernel_decide
theorem rows11670 : actualRows11670=WordField.canonicalRows actualModulus 11670 (.bnot 11669) := by core033_kernel_decide
theorem stats11670 : actualRows11670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11670=6276 := by core033_kernel_decide
theorem rows11671 : actualRows11671=WordField.canonicalRows actualModulus 11671 (.band 11664 11670) := by core033_kernel_decide
theorem stats11671 : actualRows11671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11671=5124 := by core033_kernel_decide
theorem rows11672 : actualRows11672=WordField.canonicalRows actualModulus 11672 (.bxor 11659 11671) := by core033_kernel_decide
theorem stats11672 : actualRows11672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11672=7428 := by core033_kernel_decide
theorem rows11673 : actualRows11673=WordField.canonicalRows actualModulus 11673 (.shr 11672 31) := by core033_kernel_decide
theorem stats11673 : actualRows11673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11673=2892 := by core033_kernel_decide
theorem rows11674 : actualRows11674=WordField.canonicalRows actualModulus 11674 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11674 : actualRows11674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11674=2892 := by core033_kernel_decide
theorem rows11675 : actualRows11675=WordField.canonicalRows actualModulus 11675 (.bxor 11673 11674) := by core033_kernel_decide
theorem stats11675 : actualRows11675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11675=7428 := by core033_kernel_decide
theorem rows11676 : actualRows11676=WordField.canonicalRows actualModulus 11676 (.bnot 11675) := by core033_kernel_decide
theorem stats11676 : actualRows11676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11676=6276 := by core033_kernel_decide
theorem rows11677 : actualRows11677=WordField.canonicalRows actualModulus 11677 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11677 : actualRows11677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11677=2892 := by core033_kernel_decide
theorem rows11678 : actualRows11678=WordField.canonicalRows actualModulus 11678 (.badd 11676 11677) := by core033_kernel_decide
theorem stats11678 : actualRows11678.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11678=5388 := by core033_kernel_decide
theorem rows11679 : actualRows11679=WordField.canonicalRows actualModulus 11679 (.bnot 11678) := by core033_kernel_decide
theorem stats11679 : actualRows11679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11679=6276 := by core033_kernel_decide
def partRows180 : List R1CS.Row := actualRows11616++actualRows11617++actualRows11618++actualRows11619++actualRows11620++actualRows11621++actualRows11622++actualRows11623++actualRows11624++actualRows11625++actualRows11626++actualRows11627++actualRows11628++actualRows11629++actualRows11630++actualRows11631++actualRows11632++actualRows11633++actualRows11634++actualRows11635++actualRows11636++actualRows11637++actualRows11638++actualRows11639++actualRows11640++actualRows11641++actualRows11642++actualRows11643++actualRows11644++actualRows11645++actualRows11646++actualRows11647++actualRows11648++actualRows11649++actualRows11650++actualRows11651++actualRows11652++actualRows11653++actualRows11654++actualRows11655++actualRows11656++actualRows11657++actualRows11658++actualRows11659++actualRows11660++actualRows11661++actualRows11662++actualRows11663++actualRows11664++actualRows11665++actualRows11666++actualRows11667++actualRows11668++actualRows11669++actualRows11670++actualRows11671++actualRows11672++actualRows11673++actualRows11674++actualRows11675++actualRows11676++actualRows11677++actualRows11678++actualRows11679
def partOps180 : List WordIR.Op := [.bnot 11615,.badd 11614 11616,.bnot 11617,.band 11612 11618,.bxor 11607 11619,.shr 11620 31,.literal (BitVec.ofNat 32 1),.bxor 11621 11622,.bnot 11623,.literal (BitVec.ofNat 32 1),.badd 11624 11625,.bnot 11626,.band 11627 792,.bxor 11602 11628,.literal (BitVec.ofNat 32 3),.bxor 442 11630,.literal (BitVec.ofNat 32 0),.bnot 11632,.band 11631 11633,.literal (BitVec.ofNat 32 3),.bxor 442 11635,.literal (BitVec.ofNat 32 0),.bnot 11637,.bxor 11636 11638,.literal (BitVec.ofNat 32 3),.bxor 442 11640,.literal (BitVec.ofNat 32 0),.bnot 11642,.badd 11641 11643,.bnot 11644,.band 11639 11645,.bxor 11634 11646,.shr 11647 31,.literal (BitVec.ofNat 32 1),.bxor 11648 11649,.bnot 11650,.literal (BitVec.ofNat 32 1),.badd 11651 11652,.band 11653 10448,.literal (BitVec.ofNat 32 3),.bxor 442 11655,.literal (BitVec.ofNat 32 0),.bnot 11657,.band 11656 11658,.literal (BitVec.ofNat 32 3),.bxor 442 11660,.literal (BitVec.ofNat 32 0),.bnot 11662,.bxor 11661 11663,.literal (BitVec.ofNat 32 3),.bxor 442 11665,.literal (BitVec.ofNat 32 0),.bnot 11667,.badd 11666 11668,.bnot 11669,.band 11664 11670,.bxor 11659 11671,.shr 11672 31,.literal (BitVec.ofNat 32 1),.bxor 11673 11674,.bnot 11675,.literal (BitVec.ofNat 32 1),.badd 11676 11677,.bnot 11678]
theorem partExact180 : partRows180=WordField.rows actualModulus 11616 partOps180 := by
  simp only [partRows180,partOps180,WordField.rows,rows11616,rows11617,rows11618,rows11619,rows11620,rows11621,rows11622,rows11623,rows11624,rows11625,rows11626,rows11627,rows11628,rows11629,rows11630,rows11631,rows11632,rows11633,rows11634,rows11635,rows11636,rows11637,rows11638,rows11639,rows11640,rows11641,rows11642,rows11643,rows11644,rows11645,rows11646,rows11647,rows11648,rows11649,rows11650,rows11651,rows11652,rows11653,rows11654,rows11655,rows11656,rows11657,rows11658,rows11659,rows11660,rows11661,rows11662,rows11663,rows11664,rows11665,rows11666,rows11667,rows11668,rows11669,rows11670,rows11671,rows11672,rows11673,rows11674,rows11675,rows11676,rows11677,rows11678,rows11679,List.append_assoc,List.append_nil]
theorem partLength180 : partOps180.length=64 := by decide
theorem partStats180 : partRows180.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows180=334488 := by
  simp only [partRows180,List.length_append,MatrixRowBlocks.rows_weight_append,stats11616.1,stats11616.2,stats11617.1,stats11617.2,stats11618.1,stats11618.2,stats11619.1,stats11619.2,stats11620.1,stats11620.2,stats11621.1,stats11621.2,stats11622.1,stats11622.2,stats11623.1,stats11623.2,stats11624.1,stats11624.2,stats11625.1,stats11625.2,stats11626.1,stats11626.2,stats11627.1,stats11627.2,stats11628.1,stats11628.2,stats11629.1,stats11629.2,stats11630.1,stats11630.2,stats11631.1,stats11631.2,stats11632.1,stats11632.2,stats11633.1,stats11633.2,stats11634.1,stats11634.2,stats11635.1,stats11635.2,stats11636.1,stats11636.2,stats11637.1,stats11637.2,stats11638.1,stats11638.2,stats11639.1,stats11639.2,stats11640.1,stats11640.2,stats11641.1,stats11641.2,stats11642.1,stats11642.2,stats11643.1,stats11643.2,stats11644.1,stats11644.2,stats11645.1,stats11645.2,stats11646.1,stats11646.2,stats11647.1,stats11647.2,stats11648.1,stats11648.2,stats11649.1,stats11649.2,stats11650.1,stats11650.2,stats11651.1,stats11651.2,stats11652.1,stats11652.2,stats11653.1,stats11653.2,stats11654.1,stats11654.2,stats11655.1,stats11655.2,stats11656.1,stats11656.2,stats11657.1,stats11657.2,stats11658.1,stats11658.2,stats11659.1,stats11659.2,stats11660.1,stats11660.2,stats11661.1,stats11661.2,stats11662.1,stats11662.2,stats11663.1,stats11663.2,stats11664.1,stats11664.2,stats11665.1,stats11665.2,stats11666.1,stats11666.2,stats11667.1,stats11667.2,stats11668.1,stats11668.2,stats11669.1,stats11669.2,stats11670.1,stats11670.2,stats11671.1,stats11671.2,stats11672.1,stats11672.2,stats11673.1,stats11673.2,stats11674.1,stats11674.2,stats11675.1,stats11675.2,stats11676.1,stats11676.2,stats11677.1,stats11677.2,stats11678.1,stats11678.2,stats11679.1,stats11679.2]
  decide
end PairedPathRoundCheckedRows
