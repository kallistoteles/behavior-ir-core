import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData181
import PathRoundDispatchInstructionMatrixData182
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11627 : actualRows11627=WordField.canonicalRows actualModulus 11627 (.bnot 11626) := by core033_kernel_decide
theorem stats11627 : actualRows11627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11627=6276 := by core033_kernel_decide
theorem rows11628 : actualRows11628=WordField.canonicalRows actualModulus 11628 (.band 11627 382) := by core033_kernel_decide
theorem stats11628 : actualRows11628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11628=5124 := by core033_kernel_decide
theorem rows11629 : actualRows11629=WordField.canonicalRows actualModulus 11629 (.bxor 11602 11628) := by core033_kernel_decide
theorem stats11629 : actualRows11629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11629=7428 := by core033_kernel_decide
theorem rows11630 : actualRows11630=WordField.canonicalRows actualModulus 11630 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11630 : actualRows11630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11630=2964 := by core033_kernel_decide
theorem rows11631 : actualRows11631=WordField.canonicalRows actualModulus 11631 (.bxor 0 11630) := by core033_kernel_decide
theorem stats11631 : actualRows11631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11631=7428 := by core033_kernel_decide
theorem rows11632 : actualRows11632=WordField.canonicalRows actualModulus 11632 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11632 : actualRows11632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11632=2820 := by core033_kernel_decide
theorem rows11633 : actualRows11633=WordField.canonicalRows actualModulus 11633 (.bnot 11632) := by core033_kernel_decide
theorem stats11633 : actualRows11633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11633=6276 := by core033_kernel_decide
theorem rows11634 : actualRows11634=WordField.canonicalRows actualModulus 11634 (.band 11631 11633) := by core033_kernel_decide
theorem stats11634 : actualRows11634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11634=5124 := by core033_kernel_decide
theorem rows11635 : actualRows11635=WordField.canonicalRows actualModulus 11635 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11635 : actualRows11635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11635=2964 := by core033_kernel_decide
theorem rows11636 : actualRows11636=WordField.canonicalRows actualModulus 11636 (.bxor 0 11635) := by core033_kernel_decide
theorem stats11636 : actualRows11636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11636=7428 := by core033_kernel_decide
theorem rows11637 : actualRows11637=WordField.canonicalRows actualModulus 11637 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11637 : actualRows11637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11637=2820 := by core033_kernel_decide
theorem rows11638 : actualRows11638=WordField.canonicalRows actualModulus 11638 (.bnot 11637) := by core033_kernel_decide
theorem stats11638 : actualRows11638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11638=6276 := by core033_kernel_decide
theorem rows11639 : actualRows11639=WordField.canonicalRows actualModulus 11639 (.bxor 11636 11638) := by core033_kernel_decide
theorem stats11639 : actualRows11639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11639=7428 := by core033_kernel_decide
theorem rows11640 : actualRows11640=WordField.canonicalRows actualModulus 11640 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11640 : actualRows11640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11640=2964 := by core033_kernel_decide
theorem rows11641 : actualRows11641=WordField.canonicalRows actualModulus 11641 (.bxor 0 11640) := by core033_kernel_decide
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
theorem rows11654 : actualRows11654=WordField.canonicalRows actualModulus 11654 (.band 11653 9936) := by core033_kernel_decide
theorem stats11654 : actualRows11654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11654=5124 := by core033_kernel_decide
theorem rows11655 : actualRows11655=WordField.canonicalRows actualModulus 11655 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11655 : actualRows11655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11655=2964 := by core033_kernel_decide
theorem rows11656 : actualRows11656=WordField.canonicalRows actualModulus 11656 (.bxor 0 11655) := by core033_kernel_decide
theorem stats11656 : actualRows11656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11656=7428 := by core033_kernel_decide
theorem rows11657 : actualRows11657=WordField.canonicalRows actualModulus 11657 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11657 : actualRows11657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11657=2820 := by core033_kernel_decide
theorem rows11658 : actualRows11658=WordField.canonicalRows actualModulus 11658 (.bnot 11657) := by core033_kernel_decide
theorem stats11658 : actualRows11658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11658=6276 := by core033_kernel_decide
theorem rows11659 : actualRows11659=WordField.canonicalRows actualModulus 11659 (.band 11656 11658) := by core033_kernel_decide
theorem stats11659 : actualRows11659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11659=5124 := by core033_kernel_decide
theorem rows11660 : actualRows11660=WordField.canonicalRows actualModulus 11660 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11660 : actualRows11660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11660=2964 := by core033_kernel_decide
theorem rows11661 : actualRows11661=WordField.canonicalRows actualModulus 11661 (.bxor 0 11660) := by core033_kernel_decide
theorem stats11661 : actualRows11661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11661=7428 := by core033_kernel_decide
theorem rows11662 : actualRows11662=WordField.canonicalRows actualModulus 11662 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11662 : actualRows11662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11662=2820 := by core033_kernel_decide
theorem rows11663 : actualRows11663=WordField.canonicalRows actualModulus 11663 (.bnot 11662) := by core033_kernel_decide
theorem stats11663 : actualRows11663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11663=6276 := by core033_kernel_decide
theorem rows11664 : actualRows11664=WordField.canonicalRows actualModulus 11664 (.bxor 11661 11663) := by core033_kernel_decide
theorem stats11664 : actualRows11664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11664=7428 := by core033_kernel_decide
theorem rows11665 : actualRows11665=WordField.canonicalRows actualModulus 11665 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11665 : actualRows11665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11665=2964 := by core033_kernel_decide
theorem rows11666 : actualRows11666=WordField.canonicalRows actualModulus 11666 (.bxor 0 11665) := by core033_kernel_decide
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
theorem rows11680 : actualRows11680=WordField.canonicalRows actualModulus 11680 (.band 11679 393) := by core033_kernel_decide
theorem stats11680 : actualRows11680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11680=5124 := by core033_kernel_decide
theorem rows11681 : actualRows11681=WordField.canonicalRows actualModulus 11681 (.bxor 11654 11680) := by core033_kernel_decide
theorem stats11681 : actualRows11681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11681=7428 := by core033_kernel_decide
theorem rows11682 : actualRows11682=WordField.canonicalRows actualModulus 11682 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11682 : actualRows11682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11682=2964 := by core033_kernel_decide
theorem rows11683 : actualRows11683=WordField.canonicalRows actualModulus 11683 (.bxor 0 11682) := by core033_kernel_decide
theorem stats11683 : actualRows11683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11683=7428 := by core033_kernel_decide
theorem rows11684 : actualRows11684=WordField.canonicalRows actualModulus 11684 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11684 : actualRows11684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11684=2820 := by core033_kernel_decide
theorem rows11685 : actualRows11685=WordField.canonicalRows actualModulus 11685 (.bnot 11684) := by core033_kernel_decide
theorem stats11685 : actualRows11685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11685=6276 := by core033_kernel_decide
theorem rows11686 : actualRows11686=WordField.canonicalRows actualModulus 11686 (.band 11683 11685) := by core033_kernel_decide
theorem stats11686 : actualRows11686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11686=5124 := by core033_kernel_decide
theorem rows11687 : actualRows11687=WordField.canonicalRows actualModulus 11687 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11687 : actualRows11687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11687=2964 := by core033_kernel_decide
theorem rows11688 : actualRows11688=WordField.canonicalRows actualModulus 11688 (.bxor 0 11687) := by core033_kernel_decide
theorem stats11688 : actualRows11688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11688=7428 := by core033_kernel_decide
theorem rows11689 : actualRows11689=WordField.canonicalRows actualModulus 11689 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11689 : actualRows11689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11689=2820 := by core033_kernel_decide
theorem rows11690 : actualRows11690=WordField.canonicalRows actualModulus 11690 (.bnot 11689) := by core033_kernel_decide
theorem stats11690 : actualRows11690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11690=6276 := by core033_kernel_decide
def partRows181 : List R1CS.Row := actualRows11627++actualRows11628++actualRows11629++actualRows11630++actualRows11631++actualRows11632++actualRows11633++actualRows11634++actualRows11635++actualRows11636++actualRows11637++actualRows11638++actualRows11639++actualRows11640++actualRows11641++actualRows11642++actualRows11643++actualRows11644++actualRows11645++actualRows11646++actualRows11647++actualRows11648++actualRows11649++actualRows11650++actualRows11651++actualRows11652++actualRows11653++actualRows11654++actualRows11655++actualRows11656++actualRows11657++actualRows11658++actualRows11659++actualRows11660++actualRows11661++actualRows11662++actualRows11663++actualRows11664++actualRows11665++actualRows11666++actualRows11667++actualRows11668++actualRows11669++actualRows11670++actualRows11671++actualRows11672++actualRows11673++actualRows11674++actualRows11675++actualRows11676++actualRows11677++actualRows11678++actualRows11679++actualRows11680++actualRows11681++actualRows11682++actualRows11683++actualRows11684++actualRows11685++actualRows11686++actualRows11687++actualRows11688++actualRows11689++actualRows11690
def partOps181 : List WordIR.Op := [.bnot 11626,.band 11627 382,.bxor 11602 11628,.literal (BitVec.ofNat 32 3),.bxor 0 11630,.literal (BitVec.ofNat 32 0),.bnot 11632,.band 11631 11633,.literal (BitVec.ofNat 32 3),.bxor 0 11635,.literal (BitVec.ofNat 32 0),.bnot 11637,.bxor 11636 11638,.literal (BitVec.ofNat 32 3),.bxor 0 11640,.literal (BitVec.ofNat 32 0),.bnot 11642,.badd 11641 11643,.bnot 11644,.band 11639 11645,.bxor 11634 11646,.shr 11647 31,.literal (BitVec.ofNat 32 1),.bxor 11648 11649,.bnot 11650,.literal (BitVec.ofNat 32 1),.badd 11651 11652,.band 11653 9936,.literal (BitVec.ofNat 32 3),.bxor 0 11655,.literal (BitVec.ofNat 32 0),.bnot 11657,.band 11656 11658,.literal (BitVec.ofNat 32 3),.bxor 0 11660,.literal (BitVec.ofNat 32 0),.bnot 11662,.bxor 11661 11663,.literal (BitVec.ofNat 32 3),.bxor 0 11665,.literal (BitVec.ofNat 32 0),.bnot 11667,.badd 11666 11668,.bnot 11669,.band 11664 11670,.bxor 11659 11671,.shr 11672 31,.literal (BitVec.ofNat 32 1),.bxor 11673 11674,.bnot 11675,.literal (BitVec.ofNat 32 1),.badd 11676 11677,.bnot 11678,.band 11679 393,.bxor 11654 11680,.literal (BitVec.ofNat 32 3),.bxor 0 11682,.literal (BitVec.ofNat 32 0),.bnot 11684,.band 11683 11685,.literal (BitVec.ofNat 32 3),.bxor 0 11687,.literal (BitVec.ofNat 32 0),.bnot 11689]
theorem partExact181 : partRows181=WordField.rows actualModulus 11627 partOps181 := by
  simp only [partRows181,partOps181,WordField.rows,rows11627,rows11628,rows11629,rows11630,rows11631,rows11632,rows11633,rows11634,rows11635,rows11636,rows11637,rows11638,rows11639,rows11640,rows11641,rows11642,rows11643,rows11644,rows11645,rows11646,rows11647,rows11648,rows11649,rows11650,rows11651,rows11652,rows11653,rows11654,rows11655,rows11656,rows11657,rows11658,rows11659,rows11660,rows11661,rows11662,rows11663,rows11664,rows11665,rows11666,rows11667,rows11668,rows11669,rows11670,rows11671,rows11672,rows11673,rows11674,rows11675,rows11676,rows11677,rows11678,rows11679,rows11680,rows11681,rows11682,rows11683,rows11684,rows11685,rows11686,rows11687,rows11688,rows11689,rows11690,List.append_assoc,List.append_nil]
theorem partLength181 : partOps181.length=64 := by decide
theorem partStats181 : partRows181.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows181=332880 := by
  simp only [partRows181,List.length_append,MatrixRowBlocks.rows_weight_append,stats11627.1,stats11627.2,stats11628.1,stats11628.2,stats11629.1,stats11629.2,stats11630.1,stats11630.2,stats11631.1,stats11631.2,stats11632.1,stats11632.2,stats11633.1,stats11633.2,stats11634.1,stats11634.2,stats11635.1,stats11635.2,stats11636.1,stats11636.2,stats11637.1,stats11637.2,stats11638.1,stats11638.2,stats11639.1,stats11639.2,stats11640.1,stats11640.2,stats11641.1,stats11641.2,stats11642.1,stats11642.2,stats11643.1,stats11643.2,stats11644.1,stats11644.2,stats11645.1,stats11645.2,stats11646.1,stats11646.2,stats11647.1,stats11647.2,stats11648.1,stats11648.2,stats11649.1,stats11649.2,stats11650.1,stats11650.2,stats11651.1,stats11651.2,stats11652.1,stats11652.2,stats11653.1,stats11653.2,stats11654.1,stats11654.2,stats11655.1,stats11655.2,stats11656.1,stats11656.2,stats11657.1,stats11657.2,stats11658.1,stats11658.2,stats11659.1,stats11659.2,stats11660.1,stats11660.2,stats11661.1,stats11661.2,stats11662.1,stats11662.2,stats11663.1,stats11663.2,stats11664.1,stats11664.2,stats11665.1,stats11665.2,stats11666.1,stats11666.2,stats11667.1,stats11667.2,stats11668.1,stats11668.2,stats11669.1,stats11669.2,stats11670.1,stats11670.2,stats11671.1,stats11671.2,stats11672.1,stats11672.2,stats11673.1,stats11673.2,stats11674.1,stats11674.2,stats11675.1,stats11675.2,stats11676.1,stats11676.2,stats11677.1,stats11677.2,stats11678.1,stats11678.2,stats11679.1,stats11679.2,stats11680.1,stats11680.2,stats11681.1,stats11681.2,stats11682.1,stats11682.2,stats11683.1,stats11683.2,stats11684.1,stats11684.2,stats11685.1,stats11685.2,stats11686.1,stats11686.2,stats11687.1,stats11687.2,stats11688.1,stats11688.2,stats11689.1,stats11689.2,stats11690.1,stats11690.2]
  decide
end PathRoundDispatchCheckedRows
