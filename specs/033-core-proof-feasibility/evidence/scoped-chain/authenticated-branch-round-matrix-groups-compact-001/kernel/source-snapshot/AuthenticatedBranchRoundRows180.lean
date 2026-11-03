import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData181
import AuthenticatedBranchRoundInstructionMatrixData182
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11638 : actualRows11638=WordField.canonicalRows actualModulus 11638 (.bxor 693 11637) := by core033_kernel_decide
theorem stats11638 : actualRows11638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11638=7428 := by core033_kernel_decide
theorem rows11639 : actualRows11639=WordField.canonicalRows actualModulus 11639 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11639 : actualRows11639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11639=2820 := by core033_kernel_decide
theorem rows11640 : actualRows11640=WordField.canonicalRows actualModulus 11640 (.bnot 11639) := by core033_kernel_decide
theorem stats11640 : actualRows11640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11640=6276 := by core033_kernel_decide
theorem rows11641 : actualRows11641=WordField.canonicalRows actualModulus 11641 (.band 11638 11640) := by core033_kernel_decide
theorem stats11641 : actualRows11641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11641=5124 := by core033_kernel_decide
theorem rows11642 : actualRows11642=WordField.canonicalRows actualModulus 11642 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11642 : actualRows11642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11642=2964 := by core033_kernel_decide
theorem rows11643 : actualRows11643=WordField.canonicalRows actualModulus 11643 (.bxor 693 11642) := by core033_kernel_decide
theorem stats11643 : actualRows11643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11643=7428 := by core033_kernel_decide
theorem rows11644 : actualRows11644=WordField.canonicalRows actualModulus 11644 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11644 : actualRows11644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11644=2820 := by core033_kernel_decide
theorem rows11645 : actualRows11645=WordField.canonicalRows actualModulus 11645 (.bnot 11644) := by core033_kernel_decide
theorem stats11645 : actualRows11645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11645=6276 := by core033_kernel_decide
theorem rows11646 : actualRows11646=WordField.canonicalRows actualModulus 11646 (.bxor 11643 11645) := by core033_kernel_decide
theorem stats11646 : actualRows11646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11646=7428 := by core033_kernel_decide
theorem rows11647 : actualRows11647=WordField.canonicalRows actualModulus 11647 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11647 : actualRows11647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11647=2964 := by core033_kernel_decide
theorem rows11648 : actualRows11648=WordField.canonicalRows actualModulus 11648 (.bxor 693 11647) := by core033_kernel_decide
theorem stats11648 : actualRows11648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11648=7428 := by core033_kernel_decide
theorem rows11649 : actualRows11649=WordField.canonicalRows actualModulus 11649 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11649 : actualRows11649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11649=2820 := by core033_kernel_decide
theorem rows11650 : actualRows11650=WordField.canonicalRows actualModulus 11650 (.bnot 11649) := by core033_kernel_decide
theorem stats11650 : actualRows11650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11650=6276 := by core033_kernel_decide
theorem rows11651 : actualRows11651=WordField.canonicalRows actualModulus 11651 (.badd 11648 11650) := by core033_kernel_decide
theorem stats11651 : actualRows11651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11651=5388 := by core033_kernel_decide
theorem rows11652 : actualRows11652=WordField.canonicalRows actualModulus 11652 (.bnot 11651) := by core033_kernel_decide
theorem stats11652 : actualRows11652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11652=6276 := by core033_kernel_decide
theorem rows11653 : actualRows11653=WordField.canonicalRows actualModulus 11653 (.band 11646 11652) := by core033_kernel_decide
theorem stats11653 : actualRows11653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11653=5124 := by core033_kernel_decide
theorem rows11654 : actualRows11654=WordField.canonicalRows actualModulus 11654 (.bxor 11641 11653) := by core033_kernel_decide
theorem stats11654 : actualRows11654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11654=7428 := by core033_kernel_decide
theorem rows11655 : actualRows11655=WordField.canonicalRows actualModulus 11655 (.shr 11654 31) := by core033_kernel_decide
theorem stats11655 : actualRows11655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11655=2892 := by core033_kernel_decide
theorem rows11656 : actualRows11656=WordField.canonicalRows actualModulus 11656 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11656 : actualRows11656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11656=2892 := by core033_kernel_decide
theorem rows11657 : actualRows11657=WordField.canonicalRows actualModulus 11657 (.bxor 11655 11656) := by core033_kernel_decide
theorem stats11657 : actualRows11657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11657=7428 := by core033_kernel_decide
theorem rows11658 : actualRows11658=WordField.canonicalRows actualModulus 11658 (.bnot 11657) := by core033_kernel_decide
theorem stats11658 : actualRows11658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11658=6276 := by core033_kernel_decide
theorem rows11659 : actualRows11659=WordField.canonicalRows actualModulus 11659 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11659 : actualRows11659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11659=2892 := by core033_kernel_decide
theorem rows11660 : actualRows11660=WordField.canonicalRows actualModulus 11660 (.badd 11658 11659) := by core033_kernel_decide
theorem stats11660 : actualRows11660.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11660=5388 := by core033_kernel_decide
theorem rows11661 : actualRows11661=WordField.canonicalRows actualModulus 11661 (.band 11660 10664) := by core033_kernel_decide
theorem stats11661 : actualRows11661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11661=5124 := by core033_kernel_decide
theorem rows11662 : actualRows11662=WordField.canonicalRows actualModulus 11662 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11662 : actualRows11662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11662=2964 := by core033_kernel_decide
theorem rows11663 : actualRows11663=WordField.canonicalRows actualModulus 11663 (.bxor 693 11662) := by core033_kernel_decide
theorem stats11663 : actualRows11663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11663=7428 := by core033_kernel_decide
theorem rows11664 : actualRows11664=WordField.canonicalRows actualModulus 11664 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11664 : actualRows11664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11664=2820 := by core033_kernel_decide
theorem rows11665 : actualRows11665=WordField.canonicalRows actualModulus 11665 (.bnot 11664) := by core033_kernel_decide
theorem stats11665 : actualRows11665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11665=6276 := by core033_kernel_decide
theorem rows11666 : actualRows11666=WordField.canonicalRows actualModulus 11666 (.band 11663 11665) := by core033_kernel_decide
theorem stats11666 : actualRows11666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11666=5124 := by core033_kernel_decide
theorem rows11667 : actualRows11667=WordField.canonicalRows actualModulus 11667 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11667 : actualRows11667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11667=2964 := by core033_kernel_decide
theorem rows11668 : actualRows11668=WordField.canonicalRows actualModulus 11668 (.bxor 693 11667) := by core033_kernel_decide
theorem stats11668 : actualRows11668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11668=7428 := by core033_kernel_decide
theorem rows11669 : actualRows11669=WordField.canonicalRows actualModulus 11669 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11669 : actualRows11669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11669=2820 := by core033_kernel_decide
theorem rows11670 : actualRows11670=WordField.canonicalRows actualModulus 11670 (.bnot 11669) := by core033_kernel_decide
theorem stats11670 : actualRows11670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11670=6276 := by core033_kernel_decide
theorem rows11671 : actualRows11671=WordField.canonicalRows actualModulus 11671 (.bxor 11668 11670) := by core033_kernel_decide
theorem stats11671 : actualRows11671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11671=7428 := by core033_kernel_decide
theorem rows11672 : actualRows11672=WordField.canonicalRows actualModulus 11672 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11672 : actualRows11672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11672=2964 := by core033_kernel_decide
theorem rows11673 : actualRows11673=WordField.canonicalRows actualModulus 11673 (.bxor 693 11672) := by core033_kernel_decide
theorem stats11673 : actualRows11673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11673=7428 := by core033_kernel_decide
theorem rows11674 : actualRows11674=WordField.canonicalRows actualModulus 11674 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11674 : actualRows11674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11674=2820 := by core033_kernel_decide
theorem rows11675 : actualRows11675=WordField.canonicalRows actualModulus 11675 (.bnot 11674) := by core033_kernel_decide
theorem stats11675 : actualRows11675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11675=6276 := by core033_kernel_decide
theorem rows11676 : actualRows11676=WordField.canonicalRows actualModulus 11676 (.badd 11673 11675) := by core033_kernel_decide
theorem stats11676 : actualRows11676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11676=5388 := by core033_kernel_decide
theorem rows11677 : actualRows11677=WordField.canonicalRows actualModulus 11677 (.bnot 11676) := by core033_kernel_decide
theorem stats11677 : actualRows11677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11677=6276 := by core033_kernel_decide
theorem rows11678 : actualRows11678=WordField.canonicalRows actualModulus 11678 (.band 11671 11677) := by core033_kernel_decide
theorem stats11678 : actualRows11678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11678=5124 := by core033_kernel_decide
theorem rows11679 : actualRows11679=WordField.canonicalRows actualModulus 11679 (.bxor 11666 11678) := by core033_kernel_decide
theorem stats11679 : actualRows11679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11679=7428 := by core033_kernel_decide
theorem rows11680 : actualRows11680=WordField.canonicalRows actualModulus 11680 (.shr 11679 31) := by core033_kernel_decide
theorem stats11680 : actualRows11680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11680=2892 := by core033_kernel_decide
theorem rows11681 : actualRows11681=WordField.canonicalRows actualModulus 11681 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11681 : actualRows11681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11681=2892 := by core033_kernel_decide
theorem rows11682 : actualRows11682=WordField.canonicalRows actualModulus 11682 (.bxor 11680 11681) := by core033_kernel_decide
theorem stats11682 : actualRows11682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11682=7428 := by core033_kernel_decide
theorem rows11683 : actualRows11683=WordField.canonicalRows actualModulus 11683 (.bnot 11682) := by core033_kernel_decide
theorem stats11683 : actualRows11683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11683=6276 := by core033_kernel_decide
theorem rows11684 : actualRows11684=WordField.canonicalRows actualModulus 11684 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11684 : actualRows11684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11684=2892 := by core033_kernel_decide
theorem rows11685 : actualRows11685=WordField.canonicalRows actualModulus 11685 (.badd 11683 11684) := by core033_kernel_decide
theorem stats11685 : actualRows11685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11685=5388 := by core033_kernel_decide
theorem rows11686 : actualRows11686=WordField.canonicalRows actualModulus 11686 (.bnot 11685) := by core033_kernel_decide
theorem stats11686 : actualRows11686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11686=6276 := by core033_kernel_decide
theorem rows11687 : actualRows11687=WordField.canonicalRows actualModulus 11687 (.band 11686 1343) := by core033_kernel_decide
theorem stats11687 : actualRows11687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11687=5124 := by core033_kernel_decide
theorem rows11688 : actualRows11688=WordField.canonicalRows actualModulus 11688 (.bxor 11661 11687) := by core033_kernel_decide
theorem stats11688 : actualRows11688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11688=7428 := by core033_kernel_decide
theorem rows11689 : actualRows11689=WordField.canonicalRows actualModulus 11689 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11689 : actualRows11689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11689=2964 := by core033_kernel_decide
theorem rows11690 : actualRows11690=WordField.canonicalRows actualModulus 11690 (.bxor 693 11689) := by core033_kernel_decide
theorem stats11690 : actualRows11690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11690=7428 := by core033_kernel_decide
theorem rows11691 : actualRows11691=WordField.canonicalRows actualModulus 11691 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11691 : actualRows11691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11691=2820 := by core033_kernel_decide
theorem rows11692 : actualRows11692=WordField.canonicalRows actualModulus 11692 (.bnot 11691) := by core033_kernel_decide
theorem stats11692 : actualRows11692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11692=6276 := by core033_kernel_decide
theorem rows11693 : actualRows11693=WordField.canonicalRows actualModulus 11693 (.band 11690 11692) := by core033_kernel_decide
theorem stats11693 : actualRows11693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11693=5124 := by core033_kernel_decide
theorem rows11694 : actualRows11694=WordField.canonicalRows actualModulus 11694 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11694 : actualRows11694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11694=2964 := by core033_kernel_decide
theorem rows11695 : actualRows11695=WordField.canonicalRows actualModulus 11695 (.bxor 693 11694) := by core033_kernel_decide
theorem stats11695 : actualRows11695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11695=7428 := by core033_kernel_decide
theorem rows11696 : actualRows11696=WordField.canonicalRows actualModulus 11696 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11696 : actualRows11696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11696=2820 := by core033_kernel_decide
theorem rows11697 : actualRows11697=WordField.canonicalRows actualModulus 11697 (.bnot 11696) := by core033_kernel_decide
theorem stats11697 : actualRows11697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11697=6276 := by core033_kernel_decide
theorem rows11698 : actualRows11698=WordField.canonicalRows actualModulus 11698 (.bxor 11695 11697) := by core033_kernel_decide
theorem stats11698 : actualRows11698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11698=7428 := by core033_kernel_decide
theorem rows11699 : actualRows11699=WordField.canonicalRows actualModulus 11699 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11699 : actualRows11699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11699=2964 := by core033_kernel_decide
theorem rows11700 : actualRows11700=WordField.canonicalRows actualModulus 11700 (.bxor 693 11699) := by core033_kernel_decide
theorem stats11700 : actualRows11700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11700=7428 := by core033_kernel_decide
theorem rows11701 : actualRows11701=WordField.canonicalRows actualModulus 11701 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11701 : actualRows11701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11701=2820 := by core033_kernel_decide
def partRows180 : List R1CS.Row := actualRows11638++actualRows11639++actualRows11640++actualRows11641++actualRows11642++actualRows11643++actualRows11644++actualRows11645++actualRows11646++actualRows11647++actualRows11648++actualRows11649++actualRows11650++actualRows11651++actualRows11652++actualRows11653++actualRows11654++actualRows11655++actualRows11656++actualRows11657++actualRows11658++actualRows11659++actualRows11660++actualRows11661++actualRows11662++actualRows11663++actualRows11664++actualRows11665++actualRows11666++actualRows11667++actualRows11668++actualRows11669++actualRows11670++actualRows11671++actualRows11672++actualRows11673++actualRows11674++actualRows11675++actualRows11676++actualRows11677++actualRows11678++actualRows11679++actualRows11680++actualRows11681++actualRows11682++actualRows11683++actualRows11684++actualRows11685++actualRows11686++actualRows11687++actualRows11688++actualRows11689++actualRows11690++actualRows11691++actualRows11692++actualRows11693++actualRows11694++actualRows11695++actualRows11696++actualRows11697++actualRows11698++actualRows11699++actualRows11700++actualRows11701
def partOps180 : List WordIR.Op := [.bxor 693 11637,.literal (BitVec.ofNat 32 0),.bnot 11639,.band 11638 11640,.literal (BitVec.ofNat 32 3),.bxor 693 11642,.literal (BitVec.ofNat 32 0),.bnot 11644,.bxor 11643 11645,.literal (BitVec.ofNat 32 3),.bxor 693 11647,.literal (BitVec.ofNat 32 0),.bnot 11649,.badd 11648 11650,.bnot 11651,.band 11646 11652,.bxor 11641 11653,.shr 11654 31,.literal (BitVec.ofNat 32 1),.bxor 11655 11656,.bnot 11657,.literal (BitVec.ofNat 32 1),.badd 11658 11659,.band 11660 10664,.literal (BitVec.ofNat 32 3),.bxor 693 11662,.literal (BitVec.ofNat 32 0),.bnot 11664,.band 11663 11665,.literal (BitVec.ofNat 32 3),.bxor 693 11667,.literal (BitVec.ofNat 32 0),.bnot 11669,.bxor 11668 11670,.literal (BitVec.ofNat 32 3),.bxor 693 11672,.literal (BitVec.ofNat 32 0),.bnot 11674,.badd 11673 11675,.bnot 11676,.band 11671 11677,.bxor 11666 11678,.shr 11679 31,.literal (BitVec.ofNat 32 1),.bxor 11680 11681,.bnot 11682,.literal (BitVec.ofNat 32 1),.badd 11683 11684,.bnot 11685,.band 11686 1343,.bxor 11661 11687,.literal (BitVec.ofNat 32 3),.bxor 693 11689,.literal (BitVec.ofNat 32 0),.bnot 11691,.band 11690 11692,.literal (BitVec.ofNat 32 3),.bxor 693 11694,.literal (BitVec.ofNat 32 0),.bnot 11696,.bxor 11695 11697,.literal (BitVec.ofNat 32 3),.bxor 693 11699,.literal (BitVec.ofNat 32 0)]
theorem partExact180 : partRows180=WordField.rows actualModulus 11638 partOps180 := by
  simp only [partRows180,partOps180,WordField.rows,rows11638,rows11639,rows11640,rows11641,rows11642,rows11643,rows11644,rows11645,rows11646,rows11647,rows11648,rows11649,rows11650,rows11651,rows11652,rows11653,rows11654,rows11655,rows11656,rows11657,rows11658,rows11659,rows11660,rows11661,rows11662,rows11663,rows11664,rows11665,rows11666,rows11667,rows11668,rows11669,rows11670,rows11671,rows11672,rows11673,rows11674,rows11675,rows11676,rows11677,rows11678,rows11679,rows11680,rows11681,rows11682,rows11683,rows11684,rows11685,rows11686,rows11687,rows11688,rows11689,rows11690,rows11691,rows11692,rows11693,rows11694,rows11695,rows11696,rows11697,rows11698,rows11699,rows11700,rows11701,List.append_assoc,List.append_nil]
theorem partLength180 : partOps180.length=64 := by decide
theorem partStats180 : partRows180.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows180=331728 := by
  simp only [partRows180,List.length_append,MatrixRowBlocks.rows_weight_append,stats11638.1,stats11638.2,stats11639.1,stats11639.2,stats11640.1,stats11640.2,stats11641.1,stats11641.2,stats11642.1,stats11642.2,stats11643.1,stats11643.2,stats11644.1,stats11644.2,stats11645.1,stats11645.2,stats11646.1,stats11646.2,stats11647.1,stats11647.2,stats11648.1,stats11648.2,stats11649.1,stats11649.2,stats11650.1,stats11650.2,stats11651.1,stats11651.2,stats11652.1,stats11652.2,stats11653.1,stats11653.2,stats11654.1,stats11654.2,stats11655.1,stats11655.2,stats11656.1,stats11656.2,stats11657.1,stats11657.2,stats11658.1,stats11658.2,stats11659.1,stats11659.2,stats11660.1,stats11660.2,stats11661.1,stats11661.2,stats11662.1,stats11662.2,stats11663.1,stats11663.2,stats11664.1,stats11664.2,stats11665.1,stats11665.2,stats11666.1,stats11666.2,stats11667.1,stats11667.2,stats11668.1,stats11668.2,stats11669.1,stats11669.2,stats11670.1,stats11670.2,stats11671.1,stats11671.2,stats11672.1,stats11672.2,stats11673.1,stats11673.2,stats11674.1,stats11674.2,stats11675.1,stats11675.2,stats11676.1,stats11676.2,stats11677.1,stats11677.2,stats11678.1,stats11678.2,stats11679.1,stats11679.2,stats11680.1,stats11680.2,stats11681.1,stats11681.2,stats11682.1,stats11682.2,stats11683.1,stats11683.2,stats11684.1,stats11684.2,stats11685.1,stats11685.2,stats11686.1,stats11686.2,stats11687.1,stats11687.2,stats11688.1,stats11688.2,stats11689.1,stats11689.2,stats11690.1,stats11690.2,stats11691.1,stats11691.2,stats11692.1,stats11692.2,stats11693.1,stats11693.2,stats11694.1,stats11694.2,stats11695.1,stats11695.2,stats11696.1,stats11696.2,stats11697.1,stats11697.2,stats11698.1,stats11698.2,stats11699.1,stats11699.2,stats11700.1,stats11700.2,stats11701.1,stats11701.2]
  decide
end AuthenticatedBranchRoundCheckedRows
