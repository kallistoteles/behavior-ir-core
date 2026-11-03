import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData87
import FrameHashControllerInstructionMatrixData88
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5611 : actualRows5611=WordField.canonicalRows actualModulus 5611 (.shr 2863 8) := by core033_kernel_decide
theorem stats5611 : actualRows5611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5611=4548 := by core033_kernel_decide
theorem rows5612 : actualRows5612=WordField.canonicalRows actualModulus 5612 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5612 : actualRows5612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5612=2820 := by core033_kernel_decide
theorem rows5613 : actualRows5613=WordField.canonicalRows actualModulus 5613 (.bnot 5612) := by core033_kernel_decide
theorem stats5613 : actualRows5613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5613=6276 := by core033_kernel_decide
theorem rows5614 : actualRows5614=WordField.canonicalRows actualModulus 5614 (.badd 5611 5613) := by core033_kernel_decide
theorem stats5614 : actualRows5614.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5614=5388 := by core033_kernel_decide
theorem rows5615 : actualRows5615=WordField.canonicalRows actualModulus 5615 (.bnot 5614) := by core033_kernel_decide
theorem stats5615 : actualRows5615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5615=6276 := by core033_kernel_decide
theorem rows5616 : actualRows5616=WordField.canonicalRows actualModulus 5616 (.band 5610 5615) := by core033_kernel_decide
theorem stats5616 : actualRows5616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5616=5124 := by core033_kernel_decide
theorem rows5617 : actualRows5617=WordField.canonicalRows actualModulus 5617 (.bxor 5606 5616) := by core033_kernel_decide
theorem stats5617 : actualRows5617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5617=7428 := by core033_kernel_decide
theorem rows5618 : actualRows5618=WordField.canonicalRows actualModulus 5618 (.shr 5617 31) := by core033_kernel_decide
theorem stats5618 : actualRows5618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5618=2892 := by core033_kernel_decide
theorem rows5619 : actualRows5619=WordField.canonicalRows actualModulus 5619 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5619 : actualRows5619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5619=2892 := by core033_kernel_decide
theorem rows5620 : actualRows5620=WordField.canonicalRows actualModulus 5620 (.bxor 5618 5619) := by core033_kernel_decide
theorem stats5620 : actualRows5620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5620=7428 := by core033_kernel_decide
theorem rows5621 : actualRows5621=WordField.canonicalRows actualModulus 5621 (.shr 2915 8) := by core033_kernel_decide
theorem stats5621 : actualRows5621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5621=4548 := by core033_kernel_decide
theorem rows5622 : actualRows5622=WordField.canonicalRows actualModulus 5622 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5622 : actualRows5622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5622=2820 := by core033_kernel_decide
theorem rows5623 : actualRows5623=WordField.canonicalRows actualModulus 5623 (.bnot 5622) := by core033_kernel_decide
theorem stats5623 : actualRows5623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5623=6276 := by core033_kernel_decide
theorem rows5624 : actualRows5624=WordField.canonicalRows actualModulus 5624 (.band 5621 5623) := by core033_kernel_decide
theorem stats5624 : actualRows5624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5624=5124 := by core033_kernel_decide
theorem rows5625 : actualRows5625=WordField.canonicalRows actualModulus 5625 (.shr 2915 8) := by core033_kernel_decide
theorem stats5625 : actualRows5625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5625=4548 := by core033_kernel_decide
theorem rows5626 : actualRows5626=WordField.canonicalRows actualModulus 5626 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5626 : actualRows5626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5626=2820 := by core033_kernel_decide
theorem rows5627 : actualRows5627=WordField.canonicalRows actualModulus 5627 (.bnot 5626) := by core033_kernel_decide
theorem stats5627 : actualRows5627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5627=6276 := by core033_kernel_decide
theorem rows5628 : actualRows5628=WordField.canonicalRows actualModulus 5628 (.bxor 5625 5627) := by core033_kernel_decide
theorem stats5628 : actualRows5628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5628=7428 := by core033_kernel_decide
theorem rows5629 : actualRows5629=WordField.canonicalRows actualModulus 5629 (.shr 2915 8) := by core033_kernel_decide
theorem stats5629 : actualRows5629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5629=4548 := by core033_kernel_decide
theorem rows5630 : actualRows5630=WordField.canonicalRows actualModulus 5630 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5630 : actualRows5630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5630=2820 := by core033_kernel_decide
theorem rows5631 : actualRows5631=WordField.canonicalRows actualModulus 5631 (.bnot 5630) := by core033_kernel_decide
theorem stats5631 : actualRows5631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5631=6276 := by core033_kernel_decide
theorem rows5632 : actualRows5632=WordField.canonicalRows actualModulus 5632 (.badd 5629 5631) := by core033_kernel_decide
theorem stats5632 : actualRows5632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5632=5388 := by core033_kernel_decide
theorem rows5633 : actualRows5633=WordField.canonicalRows actualModulus 5633 (.bnot 5632) := by core033_kernel_decide
theorem stats5633 : actualRows5633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5633=6276 := by core033_kernel_decide
theorem rows5634 : actualRows5634=WordField.canonicalRows actualModulus 5634 (.band 5628 5633) := by core033_kernel_decide
theorem stats5634 : actualRows5634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5634=5124 := by core033_kernel_decide
theorem rows5635 : actualRows5635=WordField.canonicalRows actualModulus 5635 (.bxor 5624 5634) := by core033_kernel_decide
theorem stats5635 : actualRows5635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5635=7428 := by core033_kernel_decide
theorem rows5636 : actualRows5636=WordField.canonicalRows actualModulus 5636 (.shr 5635 31) := by core033_kernel_decide
theorem stats5636 : actualRows5636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5636=2892 := by core033_kernel_decide
theorem rows5637 : actualRows5637=WordField.canonicalRows actualModulus 5637 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5637 : actualRows5637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5637=2892 := by core033_kernel_decide
theorem rows5638 : actualRows5638=WordField.canonicalRows actualModulus 5638 (.bxor 5636 5637) := by core033_kernel_decide
theorem stats5638 : actualRows5638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5638=7428 := by core033_kernel_decide
theorem rows5639 : actualRows5639=WordField.canonicalRows actualModulus 5639 (.shr 2967 8) := by core033_kernel_decide
theorem stats5639 : actualRows5639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5639=4548 := by core033_kernel_decide
theorem rows5640 : actualRows5640=WordField.canonicalRows actualModulus 5640 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5640 : actualRows5640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5640=2820 := by core033_kernel_decide
theorem rows5641 : actualRows5641=WordField.canonicalRows actualModulus 5641 (.bnot 5640) := by core033_kernel_decide
theorem stats5641 : actualRows5641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5641=6276 := by core033_kernel_decide
theorem rows5642 : actualRows5642=WordField.canonicalRows actualModulus 5642 (.band 5639 5641) := by core033_kernel_decide
theorem stats5642 : actualRows5642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5642=5124 := by core033_kernel_decide
theorem rows5643 : actualRows5643=WordField.canonicalRows actualModulus 5643 (.shr 2967 8) := by core033_kernel_decide
theorem stats5643 : actualRows5643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5643=4548 := by core033_kernel_decide
theorem rows5644 : actualRows5644=WordField.canonicalRows actualModulus 5644 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5644 : actualRows5644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5644=2820 := by core033_kernel_decide
theorem rows5645 : actualRows5645=WordField.canonicalRows actualModulus 5645 (.bnot 5644) := by core033_kernel_decide
theorem stats5645 : actualRows5645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5645=6276 := by core033_kernel_decide
theorem rows5646 : actualRows5646=WordField.canonicalRows actualModulus 5646 (.bxor 5643 5645) := by core033_kernel_decide
theorem stats5646 : actualRows5646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5646=7428 := by core033_kernel_decide
theorem rows5647 : actualRows5647=WordField.canonicalRows actualModulus 5647 (.shr 2967 8) := by core033_kernel_decide
theorem stats5647 : actualRows5647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5647=4548 := by core033_kernel_decide
theorem rows5648 : actualRows5648=WordField.canonicalRows actualModulus 5648 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5648 : actualRows5648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5648=2820 := by core033_kernel_decide
theorem rows5649 : actualRows5649=WordField.canonicalRows actualModulus 5649 (.bnot 5648) := by core033_kernel_decide
theorem stats5649 : actualRows5649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5649=6276 := by core033_kernel_decide
theorem rows5650 : actualRows5650=WordField.canonicalRows actualModulus 5650 (.badd 5647 5649) := by core033_kernel_decide
theorem stats5650 : actualRows5650.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5650=5388 := by core033_kernel_decide
theorem rows5651 : actualRows5651=WordField.canonicalRows actualModulus 5651 (.bnot 5650) := by core033_kernel_decide
theorem stats5651 : actualRows5651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5651=6276 := by core033_kernel_decide
theorem rows5652 : actualRows5652=WordField.canonicalRows actualModulus 5652 (.band 5646 5651) := by core033_kernel_decide
theorem stats5652 : actualRows5652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5652=5124 := by core033_kernel_decide
theorem rows5653 : actualRows5653=WordField.canonicalRows actualModulus 5653 (.bxor 5642 5652) := by core033_kernel_decide
theorem stats5653 : actualRows5653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5653=7428 := by core033_kernel_decide
theorem rows5654 : actualRows5654=WordField.canonicalRows actualModulus 5654 (.shr 5653 31) := by core033_kernel_decide
theorem stats5654 : actualRows5654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5654=2892 := by core033_kernel_decide
theorem rows5655 : actualRows5655=WordField.canonicalRows actualModulus 5655 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5655 : actualRows5655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5655=2892 := by core033_kernel_decide
theorem rows5656 : actualRows5656=WordField.canonicalRows actualModulus 5656 (.bxor 5654 5655) := by core033_kernel_decide
theorem stats5656 : actualRows5656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5656=7428 := by core033_kernel_decide
theorem rows5657 : actualRows5657=WordField.canonicalRows actualModulus 5657 (.shr 3019 8) := by core033_kernel_decide
theorem stats5657 : actualRows5657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5657=4548 := by core033_kernel_decide
theorem rows5658 : actualRows5658=WordField.canonicalRows actualModulus 5658 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5658 : actualRows5658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5658=2820 := by core033_kernel_decide
theorem rows5659 : actualRows5659=WordField.canonicalRows actualModulus 5659 (.bnot 5658) := by core033_kernel_decide
theorem stats5659 : actualRows5659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5659=6276 := by core033_kernel_decide
theorem rows5660 : actualRows5660=WordField.canonicalRows actualModulus 5660 (.band 5657 5659) := by core033_kernel_decide
theorem stats5660 : actualRows5660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5660=5124 := by core033_kernel_decide
theorem rows5661 : actualRows5661=WordField.canonicalRows actualModulus 5661 (.shr 3019 8) := by core033_kernel_decide
theorem stats5661 : actualRows5661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5661=4548 := by core033_kernel_decide
theorem rows5662 : actualRows5662=WordField.canonicalRows actualModulus 5662 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5662 : actualRows5662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5662=2820 := by core033_kernel_decide
theorem rows5663 : actualRows5663=WordField.canonicalRows actualModulus 5663 (.bnot 5662) := by core033_kernel_decide
theorem stats5663 : actualRows5663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5663=6276 := by core033_kernel_decide
theorem rows5664 : actualRows5664=WordField.canonicalRows actualModulus 5664 (.bxor 5661 5663) := by core033_kernel_decide
theorem stats5664 : actualRows5664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5664=7428 := by core033_kernel_decide
theorem rows5665 : actualRows5665=WordField.canonicalRows actualModulus 5665 (.shr 3019 8) := by core033_kernel_decide
theorem stats5665 : actualRows5665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5665=4548 := by core033_kernel_decide
theorem rows5666 : actualRows5666=WordField.canonicalRows actualModulus 5666 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5666 : actualRows5666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5666=2820 := by core033_kernel_decide
theorem rows5667 : actualRows5667=WordField.canonicalRows actualModulus 5667 (.bnot 5666) := by core033_kernel_decide
theorem stats5667 : actualRows5667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5667=6276 := by core033_kernel_decide
theorem rows5668 : actualRows5668=WordField.canonicalRows actualModulus 5668 (.badd 5665 5667) := by core033_kernel_decide
theorem stats5668 : actualRows5668.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5668=5388 := by core033_kernel_decide
theorem rows5669 : actualRows5669=WordField.canonicalRows actualModulus 5669 (.bnot 5668) := by core033_kernel_decide
theorem stats5669 : actualRows5669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5669=6276 := by core033_kernel_decide
theorem rows5670 : actualRows5670=WordField.canonicalRows actualModulus 5670 (.band 5664 5669) := by core033_kernel_decide
theorem stats5670 : actualRows5670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5670=5124 := by core033_kernel_decide
theorem rows5671 : actualRows5671=WordField.canonicalRows actualModulus 5671 (.bxor 5660 5670) := by core033_kernel_decide
theorem stats5671 : actualRows5671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5671=7428 := by core033_kernel_decide
theorem rows5672 : actualRows5672=WordField.canonicalRows actualModulus 5672 (.shr 5671 31) := by core033_kernel_decide
theorem stats5672 : actualRows5672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5672=2892 := by core033_kernel_decide
theorem rows5673 : actualRows5673=WordField.canonicalRows actualModulus 5673 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5673 : actualRows5673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5673=2892 := by core033_kernel_decide
theorem rows5674 : actualRows5674=WordField.canonicalRows actualModulus 5674 (.bxor 5672 5673) := by core033_kernel_decide
theorem stats5674 : actualRows5674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5674=7428 := by core033_kernel_decide
def partRows87 : List R1CS.Row := actualRows5611++actualRows5612++actualRows5613++actualRows5614++actualRows5615++actualRows5616++actualRows5617++actualRows5618++actualRows5619++actualRows5620++actualRows5621++actualRows5622++actualRows5623++actualRows5624++actualRows5625++actualRows5626++actualRows5627++actualRows5628++actualRows5629++actualRows5630++actualRows5631++actualRows5632++actualRows5633++actualRows5634++actualRows5635++actualRows5636++actualRows5637++actualRows5638++actualRows5639++actualRows5640++actualRows5641++actualRows5642++actualRows5643++actualRows5644++actualRows5645++actualRows5646++actualRows5647++actualRows5648++actualRows5649++actualRows5650++actualRows5651++actualRows5652++actualRows5653++actualRows5654++actualRows5655++actualRows5656++actualRows5657++actualRows5658++actualRows5659++actualRows5660++actualRows5661++actualRows5662++actualRows5663++actualRows5664++actualRows5665++actualRows5666++actualRows5667++actualRows5668++actualRows5669++actualRows5670++actualRows5671++actualRows5672++actualRows5673++actualRows5674
def partOps87 : List WordIR.Op := [.shr 2863 8,.literal (BitVec.ofNat 32 0),.bnot 5612,.badd 5611 5613,.bnot 5614,.band 5610 5615,.bxor 5606 5616,.shr 5617 31,.literal (BitVec.ofNat 32 1),.bxor 5618 5619,.shr 2915 8,.literal (BitVec.ofNat 32 0),.bnot 5622,.band 5621 5623,.shr 2915 8,.literal (BitVec.ofNat 32 0),.bnot 5626,.bxor 5625 5627,.shr 2915 8,.literal (BitVec.ofNat 32 0),.bnot 5630,.badd 5629 5631,.bnot 5632,.band 5628 5633,.bxor 5624 5634,.shr 5635 31,.literal (BitVec.ofNat 32 1),.bxor 5636 5637,.shr 2967 8,.literal (BitVec.ofNat 32 0),.bnot 5640,.band 5639 5641,.shr 2967 8,.literal (BitVec.ofNat 32 0),.bnot 5644,.bxor 5643 5645,.shr 2967 8,.literal (BitVec.ofNat 32 0),.bnot 5648,.badd 5647 5649,.bnot 5650,.band 5646 5651,.bxor 5642 5652,.shr 5653 31,.literal (BitVec.ofNat 32 1),.bxor 5654 5655,.shr 3019 8,.literal (BitVec.ofNat 32 0),.bnot 5658,.band 5657 5659,.shr 3019 8,.literal (BitVec.ofNat 32 0),.bnot 5662,.bxor 5661 5663,.shr 3019 8,.literal (BitVec.ofNat 32 0),.bnot 5666,.badd 5665 5667,.bnot 5668,.band 5664 5669,.bxor 5660 5670,.shr 5671 31,.literal (BitVec.ofNat 32 1),.bxor 5672 5673]
theorem partExact87 : partRows87=WordField.rows actualModulus 5611 partOps87 := by
  simp only [partRows87,partOps87,WordField.rows,rows5611,rows5612,rows5613,rows5614,rows5615,rows5616,rows5617,rows5618,rows5619,rows5620,rows5621,rows5622,rows5623,rows5624,rows5625,rows5626,rows5627,rows5628,rows5629,rows5630,rows5631,rows5632,rows5633,rows5634,rows5635,rows5636,rows5637,rows5638,rows5639,rows5640,rows5641,rows5642,rows5643,rows5644,rows5645,rows5646,rows5647,rows5648,rows5649,rows5650,rows5651,rows5652,rows5653,rows5654,rows5655,rows5656,rows5657,rows5658,rows5659,rows5660,rows5661,rows5662,rows5663,rows5664,rows5665,rows5666,rows5667,rows5668,rows5669,rows5670,rows5671,rows5672,rows5673,rows5674,List.append_assoc,List.append_nil]
theorem partLength87 : partOps87.length=64 := by decide
theorem partStats87 : partRows87.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows87=323808 := by
  simp only [partRows87,List.length_append,MatrixRowBlocks.rows_weight_append,stats5611.1,stats5611.2,stats5612.1,stats5612.2,stats5613.1,stats5613.2,stats5614.1,stats5614.2,stats5615.1,stats5615.2,stats5616.1,stats5616.2,stats5617.1,stats5617.2,stats5618.1,stats5618.2,stats5619.1,stats5619.2,stats5620.1,stats5620.2,stats5621.1,stats5621.2,stats5622.1,stats5622.2,stats5623.1,stats5623.2,stats5624.1,stats5624.2,stats5625.1,stats5625.2,stats5626.1,stats5626.2,stats5627.1,stats5627.2,stats5628.1,stats5628.2,stats5629.1,stats5629.2,stats5630.1,stats5630.2,stats5631.1,stats5631.2,stats5632.1,stats5632.2,stats5633.1,stats5633.2,stats5634.1,stats5634.2,stats5635.1,stats5635.2,stats5636.1,stats5636.2,stats5637.1,stats5637.2,stats5638.1,stats5638.2,stats5639.1,stats5639.2,stats5640.1,stats5640.2,stats5641.1,stats5641.2,stats5642.1,stats5642.2,stats5643.1,stats5643.2,stats5644.1,stats5644.2,stats5645.1,stats5645.2,stats5646.1,stats5646.2,stats5647.1,stats5647.2,stats5648.1,stats5648.2,stats5649.1,stats5649.2,stats5650.1,stats5650.2,stats5651.1,stats5651.2,stats5652.1,stats5652.2,stats5653.1,stats5653.2,stats5654.1,stats5654.2,stats5655.1,stats5655.2,stats5656.1,stats5656.2,stats5657.1,stats5657.2,stats5658.1,stats5658.2,stats5659.1,stats5659.2,stats5660.1,stats5660.2,stats5661.1,stats5661.2,stats5662.1,stats5662.2,stats5663.1,stats5663.2,stats5664.1,stats5664.2,stats5665.1,stats5665.2,stats5666.1,stats5666.2,stats5667.1,stats5667.2,stats5668.1,stats5668.2,stats5669.1,stats5669.2,stats5670.1,stats5670.2,stats5671.1,stats5671.2,stats5672.1,stats5672.2,stats5673.1,stats5673.2,stats5674.1,stats5674.2]
  decide
end FrameHashControllerCheckedRows
