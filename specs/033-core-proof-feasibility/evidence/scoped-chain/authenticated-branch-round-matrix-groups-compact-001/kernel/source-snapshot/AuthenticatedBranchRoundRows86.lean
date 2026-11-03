import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData87
import AuthenticatedBranchRoundInstructionMatrixData88
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5622 : actualRows5622=WordField.canonicalRows actualModulus 5622 (.bxor 5595 5621) := by core033_kernel_decide
theorem stats5622 : actualRows5622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5622=7428 := by core033_kernel_decide
theorem rows5623 : actualRows5623=WordField.canonicalRows actualModulus 5623 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5623 : actualRows5623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5623=2892 := by core033_kernel_decide
theorem rows5624 : actualRows5624=WordField.canonicalRows actualModulus 5624 (.bxor 1299 5623) := by core033_kernel_decide
theorem stats5624 : actualRows5624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5624=7428 := by core033_kernel_decide
theorem rows5625 : actualRows5625=WordField.canonicalRows actualModulus 5625 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5625 : actualRows5625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5625=2820 := by core033_kernel_decide
theorem rows5626 : actualRows5626=WordField.canonicalRows actualModulus 5626 (.bnot 5625) := by core033_kernel_decide
theorem stats5626 : actualRows5626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5626=6276 := by core033_kernel_decide
theorem rows5627 : actualRows5627=WordField.canonicalRows actualModulus 5627 (.band 5624 5626) := by core033_kernel_decide
theorem stats5627 : actualRows5627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5627=5124 := by core033_kernel_decide
theorem rows5628 : actualRows5628=WordField.canonicalRows actualModulus 5628 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5628 : actualRows5628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5628=2892 := by core033_kernel_decide
theorem rows5629 : actualRows5629=WordField.canonicalRows actualModulus 5629 (.bxor 1299 5628) := by core033_kernel_decide
theorem stats5629 : actualRows5629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5629=7428 := by core033_kernel_decide
theorem rows5630 : actualRows5630=WordField.canonicalRows actualModulus 5630 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5630 : actualRows5630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5630=2820 := by core033_kernel_decide
theorem rows5631 : actualRows5631=WordField.canonicalRows actualModulus 5631 (.bnot 5630) := by core033_kernel_decide
theorem stats5631 : actualRows5631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5631=6276 := by core033_kernel_decide
theorem rows5632 : actualRows5632=WordField.canonicalRows actualModulus 5632 (.bxor 5629 5631) := by core033_kernel_decide
theorem stats5632 : actualRows5632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5632=7428 := by core033_kernel_decide
theorem rows5633 : actualRows5633=WordField.canonicalRows actualModulus 5633 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5633 : actualRows5633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5633=2892 := by core033_kernel_decide
theorem rows5634 : actualRows5634=WordField.canonicalRows actualModulus 5634 (.bxor 1299 5633) := by core033_kernel_decide
theorem stats5634 : actualRows5634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5634=7428 := by core033_kernel_decide
theorem rows5635 : actualRows5635=WordField.canonicalRows actualModulus 5635 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5635 : actualRows5635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5635=2820 := by core033_kernel_decide
theorem rows5636 : actualRows5636=WordField.canonicalRows actualModulus 5636 (.bnot 5635) := by core033_kernel_decide
theorem stats5636 : actualRows5636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5636=6276 := by core033_kernel_decide
theorem rows5637 : actualRows5637=WordField.canonicalRows actualModulus 5637 (.badd 5634 5636) := by core033_kernel_decide
theorem stats5637 : actualRows5637.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5637=5388 := by core033_kernel_decide
theorem rows5638 : actualRows5638=WordField.canonicalRows actualModulus 5638 (.bnot 5637) := by core033_kernel_decide
theorem stats5638 : actualRows5638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5638=6276 := by core033_kernel_decide
theorem rows5639 : actualRows5639=WordField.canonicalRows actualModulus 5639 (.band 5632 5638) := by core033_kernel_decide
theorem stats5639 : actualRows5639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5639=5124 := by core033_kernel_decide
theorem rows5640 : actualRows5640=WordField.canonicalRows actualModulus 5640 (.bxor 5627 5639) := by core033_kernel_decide
theorem stats5640 : actualRows5640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5640=7428 := by core033_kernel_decide
theorem rows5641 : actualRows5641=WordField.canonicalRows actualModulus 5641 (.shr 5640 31) := by core033_kernel_decide
theorem stats5641 : actualRows5641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5641=2892 := by core033_kernel_decide
theorem rows5642 : actualRows5642=WordField.canonicalRows actualModulus 5642 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5642 : actualRows5642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5642=2892 := by core033_kernel_decide
theorem rows5643 : actualRows5643=WordField.canonicalRows actualModulus 5643 (.bxor 5641 5642) := by core033_kernel_decide
theorem stats5643 : actualRows5643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5643=7428 := by core033_kernel_decide
theorem rows5644 : actualRows5644=WordField.canonicalRows actualModulus 5644 (.bnot 5643) := by core033_kernel_decide
theorem stats5644 : actualRows5644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5644=6276 := by core033_kernel_decide
theorem rows5645 : actualRows5645=WordField.canonicalRows actualModulus 5645 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5645 : actualRows5645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5645=2892 := by core033_kernel_decide
theorem rows5646 : actualRows5646=WordField.canonicalRows actualModulus 5646 (.badd 5644 5645) := by core033_kernel_decide
theorem stats5646 : actualRows5646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5646=5388 := by core033_kernel_decide
theorem rows5647 : actualRows5647=WordField.canonicalRows actualModulus 5647 (.band 5646 2816) := by core033_kernel_decide
theorem stats5647 : actualRows5647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5647=5124 := by core033_kernel_decide
theorem rows5648 : actualRows5648=WordField.canonicalRows actualModulus 5648 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5648 : actualRows5648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5648=2892 := by core033_kernel_decide
theorem rows5649 : actualRows5649=WordField.canonicalRows actualModulus 5649 (.bxor 1299 5648) := by core033_kernel_decide
theorem stats5649 : actualRows5649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5649=7428 := by core033_kernel_decide
theorem rows5650 : actualRows5650=WordField.canonicalRows actualModulus 5650 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5650 : actualRows5650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5650=2820 := by core033_kernel_decide
theorem rows5651 : actualRows5651=WordField.canonicalRows actualModulus 5651 (.bnot 5650) := by core033_kernel_decide
theorem stats5651 : actualRows5651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5651=6276 := by core033_kernel_decide
theorem rows5652 : actualRows5652=WordField.canonicalRows actualModulus 5652 (.band 5649 5651) := by core033_kernel_decide
theorem stats5652 : actualRows5652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5652=5124 := by core033_kernel_decide
theorem rows5653 : actualRows5653=WordField.canonicalRows actualModulus 5653 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5653 : actualRows5653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5653=2892 := by core033_kernel_decide
theorem rows5654 : actualRows5654=WordField.canonicalRows actualModulus 5654 (.bxor 1299 5653) := by core033_kernel_decide
theorem stats5654 : actualRows5654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5654=7428 := by core033_kernel_decide
theorem rows5655 : actualRows5655=WordField.canonicalRows actualModulus 5655 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5655 : actualRows5655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5655=2820 := by core033_kernel_decide
theorem rows5656 : actualRows5656=WordField.canonicalRows actualModulus 5656 (.bnot 5655) := by core033_kernel_decide
theorem stats5656 : actualRows5656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5656=6276 := by core033_kernel_decide
theorem rows5657 : actualRows5657=WordField.canonicalRows actualModulus 5657 (.bxor 5654 5656) := by core033_kernel_decide
theorem stats5657 : actualRows5657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5657=7428 := by core033_kernel_decide
theorem rows5658 : actualRows5658=WordField.canonicalRows actualModulus 5658 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5658 : actualRows5658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5658=2892 := by core033_kernel_decide
theorem rows5659 : actualRows5659=WordField.canonicalRows actualModulus 5659 (.bxor 1299 5658) := by core033_kernel_decide
theorem stats5659 : actualRows5659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5659=7428 := by core033_kernel_decide
theorem rows5660 : actualRows5660=WordField.canonicalRows actualModulus 5660 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5660 : actualRows5660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5660=2820 := by core033_kernel_decide
theorem rows5661 : actualRows5661=WordField.canonicalRows actualModulus 5661 (.bnot 5660) := by core033_kernel_decide
theorem stats5661 : actualRows5661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5661=6276 := by core033_kernel_decide
theorem rows5662 : actualRows5662=WordField.canonicalRows actualModulus 5662 (.badd 5659 5661) := by core033_kernel_decide
theorem stats5662 : actualRows5662.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5662=5388 := by core033_kernel_decide
theorem rows5663 : actualRows5663=WordField.canonicalRows actualModulus 5663 (.bnot 5662) := by core033_kernel_decide
theorem stats5663 : actualRows5663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5663=6276 := by core033_kernel_decide
theorem rows5664 : actualRows5664=WordField.canonicalRows actualModulus 5664 (.band 5657 5663) := by core033_kernel_decide
theorem stats5664 : actualRows5664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5664=5124 := by core033_kernel_decide
theorem rows5665 : actualRows5665=WordField.canonicalRows actualModulus 5665 (.bxor 5652 5664) := by core033_kernel_decide
theorem stats5665 : actualRows5665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5665=7428 := by core033_kernel_decide
theorem rows5666 : actualRows5666=WordField.canonicalRows actualModulus 5666 (.shr 5665 31) := by core033_kernel_decide
theorem stats5666 : actualRows5666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5666=2892 := by core033_kernel_decide
theorem rows5667 : actualRows5667=WordField.canonicalRows actualModulus 5667 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5667 : actualRows5667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5667=2892 := by core033_kernel_decide
theorem rows5668 : actualRows5668=WordField.canonicalRows actualModulus 5668 (.bxor 5666 5667) := by core033_kernel_decide
theorem stats5668 : actualRows5668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5668=7428 := by core033_kernel_decide
theorem rows5669 : actualRows5669=WordField.canonicalRows actualModulus 5669 (.bnot 5668) := by core033_kernel_decide
theorem stats5669 : actualRows5669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5669=6276 := by core033_kernel_decide
theorem rows5670 : actualRows5670=WordField.canonicalRows actualModulus 5670 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5670 : actualRows5670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5670=2892 := by core033_kernel_decide
theorem rows5671 : actualRows5671=WordField.canonicalRows actualModulus 5671 (.badd 5669 5670) := by core033_kernel_decide
theorem stats5671 : actualRows5671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5671=5388 := by core033_kernel_decide
theorem rows5672 : actualRows5672=WordField.canonicalRows actualModulus 5672 (.bnot 5671) := by core033_kernel_decide
theorem stats5672 : actualRows5672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5672=6276 := by core033_kernel_decide
theorem rows5673 : actualRows5673=WordField.canonicalRows actualModulus 5673 (.band 5672 2624) := by core033_kernel_decide
theorem stats5673 : actualRows5673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5673=5124 := by core033_kernel_decide
theorem rows5674 : actualRows5674=WordField.canonicalRows actualModulus 5674 (.bxor 5647 5673) := by core033_kernel_decide
theorem stats5674 : actualRows5674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5674=7428 := by core033_kernel_decide
theorem rows5675 : actualRows5675=WordField.canonicalRows actualModulus 5675 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5675 : actualRows5675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5675=2892 := by core033_kernel_decide
theorem rows5676 : actualRows5676=WordField.canonicalRows actualModulus 5676 (.bxor 1299 5675) := by core033_kernel_decide
theorem stats5676 : actualRows5676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5676=7428 := by core033_kernel_decide
theorem rows5677 : actualRows5677=WordField.canonicalRows actualModulus 5677 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5677 : actualRows5677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5677=2820 := by core033_kernel_decide
theorem rows5678 : actualRows5678=WordField.canonicalRows actualModulus 5678 (.bnot 5677) := by core033_kernel_decide
theorem stats5678 : actualRows5678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5678=6276 := by core033_kernel_decide
theorem rows5679 : actualRows5679=WordField.canonicalRows actualModulus 5679 (.band 5676 5678) := by core033_kernel_decide
theorem stats5679 : actualRows5679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5679=5124 := by core033_kernel_decide
theorem rows5680 : actualRows5680=WordField.canonicalRows actualModulus 5680 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5680 : actualRows5680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5680=2892 := by core033_kernel_decide
theorem rows5681 : actualRows5681=WordField.canonicalRows actualModulus 5681 (.bxor 1299 5680) := by core033_kernel_decide
theorem stats5681 : actualRows5681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5681=7428 := by core033_kernel_decide
theorem rows5682 : actualRows5682=WordField.canonicalRows actualModulus 5682 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5682 : actualRows5682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5682=2820 := by core033_kernel_decide
theorem rows5683 : actualRows5683=WordField.canonicalRows actualModulus 5683 (.bnot 5682) := by core033_kernel_decide
theorem stats5683 : actualRows5683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5683=6276 := by core033_kernel_decide
theorem rows5684 : actualRows5684=WordField.canonicalRows actualModulus 5684 (.bxor 5681 5683) := by core033_kernel_decide
theorem stats5684 : actualRows5684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5684=7428 := by core033_kernel_decide
theorem rows5685 : actualRows5685=WordField.canonicalRows actualModulus 5685 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5685 : actualRows5685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5685=2892 := by core033_kernel_decide
def partRows86 : List R1CS.Row := actualRows5622++actualRows5623++actualRows5624++actualRows5625++actualRows5626++actualRows5627++actualRows5628++actualRows5629++actualRows5630++actualRows5631++actualRows5632++actualRows5633++actualRows5634++actualRows5635++actualRows5636++actualRows5637++actualRows5638++actualRows5639++actualRows5640++actualRows5641++actualRows5642++actualRows5643++actualRows5644++actualRows5645++actualRows5646++actualRows5647++actualRows5648++actualRows5649++actualRows5650++actualRows5651++actualRows5652++actualRows5653++actualRows5654++actualRows5655++actualRows5656++actualRows5657++actualRows5658++actualRows5659++actualRows5660++actualRows5661++actualRows5662++actualRows5663++actualRows5664++actualRows5665++actualRows5666++actualRows5667++actualRows5668++actualRows5669++actualRows5670++actualRows5671++actualRows5672++actualRows5673++actualRows5674++actualRows5675++actualRows5676++actualRows5677++actualRows5678++actualRows5679++actualRows5680++actualRows5681++actualRows5682++actualRows5683++actualRows5684++actualRows5685
def partOps86 : List WordIR.Op := [.bxor 5595 5621,.literal (BitVec.ofNat 32 2),.bxor 1299 5623,.literal (BitVec.ofNat 32 0),.bnot 5625,.band 5624 5626,.literal (BitVec.ofNat 32 2),.bxor 1299 5628,.literal (BitVec.ofNat 32 0),.bnot 5630,.bxor 5629 5631,.literal (BitVec.ofNat 32 2),.bxor 1299 5633,.literal (BitVec.ofNat 32 0),.bnot 5635,.badd 5634 5636,.bnot 5637,.band 5632 5638,.bxor 5627 5639,.shr 5640 31,.literal (BitVec.ofNat 32 1),.bxor 5641 5642,.bnot 5643,.literal (BitVec.ofNat 32 1),.badd 5644 5645,.band 5646 2816,.literal (BitVec.ofNat 32 2),.bxor 1299 5648,.literal (BitVec.ofNat 32 0),.bnot 5650,.band 5649 5651,.literal (BitVec.ofNat 32 2),.bxor 1299 5653,.literal (BitVec.ofNat 32 0),.bnot 5655,.bxor 5654 5656,.literal (BitVec.ofNat 32 2),.bxor 1299 5658,.literal (BitVec.ofNat 32 0),.bnot 5660,.badd 5659 5661,.bnot 5662,.band 5657 5663,.bxor 5652 5664,.shr 5665 31,.literal (BitVec.ofNat 32 1),.bxor 5666 5667,.bnot 5668,.literal (BitVec.ofNat 32 1),.badd 5669 5670,.bnot 5671,.band 5672 2624,.bxor 5647 5673,.literal (BitVec.ofNat 32 2),.bxor 1299 5675,.literal (BitVec.ofNat 32 0),.bnot 5677,.band 5676 5678,.literal (BitVec.ofNat 32 2),.bxor 1299 5680,.literal (BitVec.ofNat 32 0),.bnot 5682,.bxor 5681 5683,.literal (BitVec.ofNat 32 2)]
theorem partExact86 : partRows86=WordField.rows actualModulus 5622 partOps86 := by
  simp only [partRows86,partOps86,WordField.rows,rows5622,rows5623,rows5624,rows5625,rows5626,rows5627,rows5628,rows5629,rows5630,rows5631,rows5632,rows5633,rows5634,rows5635,rows5636,rows5637,rows5638,rows5639,rows5640,rows5641,rows5642,rows5643,rows5644,rows5645,rows5646,rows5647,rows5648,rows5649,rows5650,rows5651,rows5652,rows5653,rows5654,rows5655,rows5656,rows5657,rows5658,rows5659,rows5660,rows5661,rows5662,rows5663,rows5664,rows5665,rows5666,rows5667,rows5668,rows5669,rows5670,rows5671,rows5672,rows5673,rows5674,rows5675,rows5676,rows5677,rows5678,rows5679,rows5680,rows5681,rows5682,rows5683,rows5684,rows5685,List.append_assoc,List.append_nil]
theorem partLength86 : partOps86.length=64 := by decide
theorem partStats86 : partRows86.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows86=331224 := by
  simp only [partRows86,List.length_append,MatrixRowBlocks.rows_weight_append,stats5622.1,stats5622.2,stats5623.1,stats5623.2,stats5624.1,stats5624.2,stats5625.1,stats5625.2,stats5626.1,stats5626.2,stats5627.1,stats5627.2,stats5628.1,stats5628.2,stats5629.1,stats5629.2,stats5630.1,stats5630.2,stats5631.1,stats5631.2,stats5632.1,stats5632.2,stats5633.1,stats5633.2,stats5634.1,stats5634.2,stats5635.1,stats5635.2,stats5636.1,stats5636.2,stats5637.1,stats5637.2,stats5638.1,stats5638.2,stats5639.1,stats5639.2,stats5640.1,stats5640.2,stats5641.1,stats5641.2,stats5642.1,stats5642.2,stats5643.1,stats5643.2,stats5644.1,stats5644.2,stats5645.1,stats5645.2,stats5646.1,stats5646.2,stats5647.1,stats5647.2,stats5648.1,stats5648.2,stats5649.1,stats5649.2,stats5650.1,stats5650.2,stats5651.1,stats5651.2,stats5652.1,stats5652.2,stats5653.1,stats5653.2,stats5654.1,stats5654.2,stats5655.1,stats5655.2,stats5656.1,stats5656.2,stats5657.1,stats5657.2,stats5658.1,stats5658.2,stats5659.1,stats5659.2,stats5660.1,stats5660.2,stats5661.1,stats5661.2,stats5662.1,stats5662.2,stats5663.1,stats5663.2,stats5664.1,stats5664.2,stats5665.1,stats5665.2,stats5666.1,stats5666.2,stats5667.1,stats5667.2,stats5668.1,stats5668.2,stats5669.1,stats5669.2,stats5670.1,stats5670.2,stats5671.1,stats5671.2,stats5672.1,stats5672.2,stats5673.1,stats5673.2,stats5674.1,stats5674.2,stats5675.1,stats5675.2,stats5676.1,stats5676.2,stats5677.1,stats5677.2,stats5678.1,stats5678.2,stats5679.1,stats5679.2,stats5680.1,stats5680.2,stats5681.1,stats5681.2,stats5682.1,stats5682.2,stats5683.1,stats5683.2,stats5684.1,stats5684.2,stats5685.1,stats5685.2]
  decide
end AuthenticatedBranchRoundCheckedRows
