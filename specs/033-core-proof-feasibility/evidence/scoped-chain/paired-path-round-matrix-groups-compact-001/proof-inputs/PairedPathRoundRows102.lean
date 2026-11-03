import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData103
import PairedPathRoundInstructionMatrixData104
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6624 : actualRows6624=WordField.canonicalRows actualModulus 6624 (.band 6621 6623) := by core033_kernel_decide
theorem stats6624 : actualRows6624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6624=5124 := by core033_kernel_decide
theorem rows6625 : actualRows6625=WordField.canonicalRows actualModulus 6625 (.shr 3847 8) := by core033_kernel_decide
theorem stats6625 : actualRows6625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6625=4548 := by core033_kernel_decide
theorem rows6626 : actualRows6626=WordField.canonicalRows actualModulus 6626 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6626 : actualRows6626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6626=2820 := by core033_kernel_decide
theorem rows6627 : actualRows6627=WordField.canonicalRows actualModulus 6627 (.bnot 6626) := by core033_kernel_decide
theorem stats6627 : actualRows6627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6627=6276 := by core033_kernel_decide
theorem rows6628 : actualRows6628=WordField.canonicalRows actualModulus 6628 (.bxor 6625 6627) := by core033_kernel_decide
theorem stats6628 : actualRows6628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6628=7428 := by core033_kernel_decide
theorem rows6629 : actualRows6629=WordField.canonicalRows actualModulus 6629 (.shr 3847 8) := by core033_kernel_decide
theorem stats6629 : actualRows6629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6629=4548 := by core033_kernel_decide
theorem rows6630 : actualRows6630=WordField.canonicalRows actualModulus 6630 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6630 : actualRows6630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6630=2820 := by core033_kernel_decide
theorem rows6631 : actualRows6631=WordField.canonicalRows actualModulus 6631 (.bnot 6630) := by core033_kernel_decide
theorem stats6631 : actualRows6631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6631=6276 := by core033_kernel_decide
theorem rows6632 : actualRows6632=WordField.canonicalRows actualModulus 6632 (.badd 6629 6631) := by core033_kernel_decide
theorem stats6632 : actualRows6632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6632=5388 := by core033_kernel_decide
theorem rows6633 : actualRows6633=WordField.canonicalRows actualModulus 6633 (.bnot 6632) := by core033_kernel_decide
theorem stats6633 : actualRows6633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6633=6276 := by core033_kernel_decide
theorem rows6634 : actualRows6634=WordField.canonicalRows actualModulus 6634 (.band 6628 6633) := by core033_kernel_decide
theorem stats6634 : actualRows6634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6634=5124 := by core033_kernel_decide
theorem rows6635 : actualRows6635=WordField.canonicalRows actualModulus 6635 (.bxor 6624 6634) := by core033_kernel_decide
theorem stats6635 : actualRows6635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6635=7428 := by core033_kernel_decide
theorem rows6636 : actualRows6636=WordField.canonicalRows actualModulus 6636 (.shr 6635 31) := by core033_kernel_decide
theorem stats6636 : actualRows6636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6636=2892 := by core033_kernel_decide
theorem rows6637 : actualRows6637=WordField.canonicalRows actualModulus 6637 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6637 : actualRows6637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6637=2892 := by core033_kernel_decide
theorem rows6638 : actualRows6638=WordField.canonicalRows actualModulus 6638 (.bxor 6636 6637) := by core033_kernel_decide
theorem stats6638 : actualRows6638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6638=7428 := by core033_kernel_decide
theorem rows6639 : actualRows6639=WordField.canonicalRows actualModulus 6639 (.shr 3899 8) := by core033_kernel_decide
theorem stats6639 : actualRows6639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6639=4548 := by core033_kernel_decide
theorem rows6640 : actualRows6640=WordField.canonicalRows actualModulus 6640 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6640 : actualRows6640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6640=2820 := by core033_kernel_decide
theorem rows6641 : actualRows6641=WordField.canonicalRows actualModulus 6641 (.bnot 6640) := by core033_kernel_decide
theorem stats6641 : actualRows6641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6641=6276 := by core033_kernel_decide
theorem rows6642 : actualRows6642=WordField.canonicalRows actualModulus 6642 (.band 6639 6641) := by core033_kernel_decide
theorem stats6642 : actualRows6642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6642=5124 := by core033_kernel_decide
theorem rows6643 : actualRows6643=WordField.canonicalRows actualModulus 6643 (.shr 3899 8) := by core033_kernel_decide
theorem stats6643 : actualRows6643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6643=4548 := by core033_kernel_decide
theorem rows6644 : actualRows6644=WordField.canonicalRows actualModulus 6644 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6644 : actualRows6644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6644=2820 := by core033_kernel_decide
theorem rows6645 : actualRows6645=WordField.canonicalRows actualModulus 6645 (.bnot 6644) := by core033_kernel_decide
theorem stats6645 : actualRows6645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6645=6276 := by core033_kernel_decide
theorem rows6646 : actualRows6646=WordField.canonicalRows actualModulus 6646 (.bxor 6643 6645) := by core033_kernel_decide
theorem stats6646 : actualRows6646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6646=7428 := by core033_kernel_decide
theorem rows6647 : actualRows6647=WordField.canonicalRows actualModulus 6647 (.shr 3899 8) := by core033_kernel_decide
theorem stats6647 : actualRows6647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6647=4548 := by core033_kernel_decide
theorem rows6648 : actualRows6648=WordField.canonicalRows actualModulus 6648 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6648 : actualRows6648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6648=2820 := by core033_kernel_decide
theorem rows6649 : actualRows6649=WordField.canonicalRows actualModulus 6649 (.bnot 6648) := by core033_kernel_decide
theorem stats6649 : actualRows6649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6649=6276 := by core033_kernel_decide
theorem rows6650 : actualRows6650=WordField.canonicalRows actualModulus 6650 (.badd 6647 6649) := by core033_kernel_decide
theorem stats6650 : actualRows6650.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6650=5388 := by core033_kernel_decide
theorem rows6651 : actualRows6651=WordField.canonicalRows actualModulus 6651 (.bnot 6650) := by core033_kernel_decide
theorem stats6651 : actualRows6651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6651=6276 := by core033_kernel_decide
theorem rows6652 : actualRows6652=WordField.canonicalRows actualModulus 6652 (.band 6646 6651) := by core033_kernel_decide
theorem stats6652 : actualRows6652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6652=5124 := by core033_kernel_decide
theorem rows6653 : actualRows6653=WordField.canonicalRows actualModulus 6653 (.bxor 6642 6652) := by core033_kernel_decide
theorem stats6653 : actualRows6653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6653=7428 := by core033_kernel_decide
theorem rows6654 : actualRows6654=WordField.canonicalRows actualModulus 6654 (.shr 6653 31) := by core033_kernel_decide
theorem stats6654 : actualRows6654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6654=2892 := by core033_kernel_decide
theorem rows6655 : actualRows6655=WordField.canonicalRows actualModulus 6655 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6655 : actualRows6655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6655=2892 := by core033_kernel_decide
theorem rows6656 : actualRows6656=WordField.canonicalRows actualModulus 6656 (.bxor 6654 6655) := by core033_kernel_decide
theorem stats6656 : actualRows6656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6656=7428 := by core033_kernel_decide
theorem rows6657 : actualRows6657=WordField.canonicalRows actualModulus 6657 (.shr 3951 8) := by core033_kernel_decide
theorem stats6657 : actualRows6657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6657=4548 := by core033_kernel_decide
theorem rows6658 : actualRows6658=WordField.canonicalRows actualModulus 6658 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6658 : actualRows6658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6658=2820 := by core033_kernel_decide
theorem rows6659 : actualRows6659=WordField.canonicalRows actualModulus 6659 (.bnot 6658) := by core033_kernel_decide
theorem stats6659 : actualRows6659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6659=6276 := by core033_kernel_decide
theorem rows6660 : actualRows6660=WordField.canonicalRows actualModulus 6660 (.band 6657 6659) := by core033_kernel_decide
theorem stats6660 : actualRows6660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6660=5124 := by core033_kernel_decide
theorem rows6661 : actualRows6661=WordField.canonicalRows actualModulus 6661 (.shr 3951 8) := by core033_kernel_decide
theorem stats6661 : actualRows6661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6661=4548 := by core033_kernel_decide
theorem rows6662 : actualRows6662=WordField.canonicalRows actualModulus 6662 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6662 : actualRows6662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6662=2820 := by core033_kernel_decide
theorem rows6663 : actualRows6663=WordField.canonicalRows actualModulus 6663 (.bnot 6662) := by core033_kernel_decide
theorem stats6663 : actualRows6663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6663=6276 := by core033_kernel_decide
theorem rows6664 : actualRows6664=WordField.canonicalRows actualModulus 6664 (.bxor 6661 6663) := by core033_kernel_decide
theorem stats6664 : actualRows6664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6664=7428 := by core033_kernel_decide
theorem rows6665 : actualRows6665=WordField.canonicalRows actualModulus 6665 (.shr 3951 8) := by core033_kernel_decide
theorem stats6665 : actualRows6665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6665=4548 := by core033_kernel_decide
theorem rows6666 : actualRows6666=WordField.canonicalRows actualModulus 6666 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6666 : actualRows6666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6666=2820 := by core033_kernel_decide
theorem rows6667 : actualRows6667=WordField.canonicalRows actualModulus 6667 (.bnot 6666) := by core033_kernel_decide
theorem stats6667 : actualRows6667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6667=6276 := by core033_kernel_decide
theorem rows6668 : actualRows6668=WordField.canonicalRows actualModulus 6668 (.badd 6665 6667) := by core033_kernel_decide
theorem stats6668 : actualRows6668.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6668=5388 := by core033_kernel_decide
theorem rows6669 : actualRows6669=WordField.canonicalRows actualModulus 6669 (.bnot 6668) := by core033_kernel_decide
theorem stats6669 : actualRows6669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6669=6276 := by core033_kernel_decide
theorem rows6670 : actualRows6670=WordField.canonicalRows actualModulus 6670 (.band 6664 6669) := by core033_kernel_decide
theorem stats6670 : actualRows6670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6670=5124 := by core033_kernel_decide
theorem rows6671 : actualRows6671=WordField.canonicalRows actualModulus 6671 (.bxor 6660 6670) := by core033_kernel_decide
theorem stats6671 : actualRows6671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6671=7428 := by core033_kernel_decide
theorem rows6672 : actualRows6672=WordField.canonicalRows actualModulus 6672 (.shr 6671 31) := by core033_kernel_decide
theorem stats6672 : actualRows6672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6672=2892 := by core033_kernel_decide
theorem rows6673 : actualRows6673=WordField.canonicalRows actualModulus 6673 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6673 : actualRows6673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6673=2892 := by core033_kernel_decide
theorem rows6674 : actualRows6674=WordField.canonicalRows actualModulus 6674 (.bxor 6672 6673) := by core033_kernel_decide
theorem stats6674 : actualRows6674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6674=7428 := by core033_kernel_decide
theorem rows6675 : actualRows6675=WordField.canonicalRows actualModulus 6675 (.shr 4003 8) := by core033_kernel_decide
theorem stats6675 : actualRows6675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6675=4548 := by core033_kernel_decide
theorem rows6676 : actualRows6676=WordField.canonicalRows actualModulus 6676 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6676 : actualRows6676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6676=2820 := by core033_kernel_decide
theorem rows6677 : actualRows6677=WordField.canonicalRows actualModulus 6677 (.bnot 6676) := by core033_kernel_decide
theorem stats6677 : actualRows6677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6677=6276 := by core033_kernel_decide
theorem rows6678 : actualRows6678=WordField.canonicalRows actualModulus 6678 (.band 6675 6677) := by core033_kernel_decide
theorem stats6678 : actualRows6678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6678=5124 := by core033_kernel_decide
theorem rows6679 : actualRows6679=WordField.canonicalRows actualModulus 6679 (.shr 4003 8) := by core033_kernel_decide
theorem stats6679 : actualRows6679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6679=4548 := by core033_kernel_decide
theorem rows6680 : actualRows6680=WordField.canonicalRows actualModulus 6680 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6680 : actualRows6680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6680=2820 := by core033_kernel_decide
theorem rows6681 : actualRows6681=WordField.canonicalRows actualModulus 6681 (.bnot 6680) := by core033_kernel_decide
theorem stats6681 : actualRows6681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6681=6276 := by core033_kernel_decide
theorem rows6682 : actualRows6682=WordField.canonicalRows actualModulus 6682 (.bxor 6679 6681) := by core033_kernel_decide
theorem stats6682 : actualRows6682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6682=7428 := by core033_kernel_decide
theorem rows6683 : actualRows6683=WordField.canonicalRows actualModulus 6683 (.shr 4003 8) := by core033_kernel_decide
theorem stats6683 : actualRows6683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6683=4548 := by core033_kernel_decide
theorem rows6684 : actualRows6684=WordField.canonicalRows actualModulus 6684 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6684 : actualRows6684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6684=2820 := by core033_kernel_decide
theorem rows6685 : actualRows6685=WordField.canonicalRows actualModulus 6685 (.bnot 6684) := by core033_kernel_decide
theorem stats6685 : actualRows6685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6685=6276 := by core033_kernel_decide
theorem rows6686 : actualRows6686=WordField.canonicalRows actualModulus 6686 (.badd 6683 6685) := by core033_kernel_decide
theorem stats6686 : actualRows6686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6686=5388 := by core033_kernel_decide
theorem rows6687 : actualRows6687=WordField.canonicalRows actualModulus 6687 (.bnot 6686) := by core033_kernel_decide
theorem stats6687 : actualRows6687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6687=6276 := by core033_kernel_decide
def partRows102 : List R1CS.Row := actualRows6624++actualRows6625++actualRows6626++actualRows6627++actualRows6628++actualRows6629++actualRows6630++actualRows6631++actualRows6632++actualRows6633++actualRows6634++actualRows6635++actualRows6636++actualRows6637++actualRows6638++actualRows6639++actualRows6640++actualRows6641++actualRows6642++actualRows6643++actualRows6644++actualRows6645++actualRows6646++actualRows6647++actualRows6648++actualRows6649++actualRows6650++actualRows6651++actualRows6652++actualRows6653++actualRows6654++actualRows6655++actualRows6656++actualRows6657++actualRows6658++actualRows6659++actualRows6660++actualRows6661++actualRows6662++actualRows6663++actualRows6664++actualRows6665++actualRows6666++actualRows6667++actualRows6668++actualRows6669++actualRows6670++actualRows6671++actualRows6672++actualRows6673++actualRows6674++actualRows6675++actualRows6676++actualRows6677++actualRows6678++actualRows6679++actualRows6680++actualRows6681++actualRows6682++actualRows6683++actualRows6684++actualRows6685++actualRows6686++actualRows6687
def partOps102 : List WordIR.Op := [.band 6621 6623,.shr 3847 8,.literal (BitVec.ofNat 32 0),.bnot 6626,.bxor 6625 6627,.shr 3847 8,.literal (BitVec.ofNat 32 0),.bnot 6630,.badd 6629 6631,.bnot 6632,.band 6628 6633,.bxor 6624 6634,.shr 6635 31,.literal (BitVec.ofNat 32 1),.bxor 6636 6637,.shr 3899 8,.literal (BitVec.ofNat 32 0),.bnot 6640,.band 6639 6641,.shr 3899 8,.literal (BitVec.ofNat 32 0),.bnot 6644,.bxor 6643 6645,.shr 3899 8,.literal (BitVec.ofNat 32 0),.bnot 6648,.badd 6647 6649,.bnot 6650,.band 6646 6651,.bxor 6642 6652,.shr 6653 31,.literal (BitVec.ofNat 32 1),.bxor 6654 6655,.shr 3951 8,.literal (BitVec.ofNat 32 0),.bnot 6658,.band 6657 6659,.shr 3951 8,.literal (BitVec.ofNat 32 0),.bnot 6662,.bxor 6661 6663,.shr 3951 8,.literal (BitVec.ofNat 32 0),.bnot 6666,.badd 6665 6667,.bnot 6668,.band 6664 6669,.bxor 6660 6670,.shr 6671 31,.literal (BitVec.ofNat 32 1),.bxor 6672 6673,.shr 4003 8,.literal (BitVec.ofNat 32 0),.bnot 6676,.band 6675 6677,.shr 4003 8,.literal (BitVec.ofNat 32 0),.bnot 6680,.bxor 6679 6681,.shr 4003 8,.literal (BitVec.ofNat 32 0),.bnot 6684,.badd 6683 6685,.bnot 6686]
theorem partExact102 : partRows102=WordField.rows actualModulus 6624 partOps102 := by
  simp only [partRows102,partOps102,WordField.rows,rows6624,rows6625,rows6626,rows6627,rows6628,rows6629,rows6630,rows6631,rows6632,rows6633,rows6634,rows6635,rows6636,rows6637,rows6638,rows6639,rows6640,rows6641,rows6642,rows6643,rows6644,rows6645,rows6646,rows6647,rows6648,rows6649,rows6650,rows6651,rows6652,rows6653,rows6654,rows6655,rows6656,rows6657,rows6658,rows6659,rows6660,rows6661,rows6662,rows6663,rows6664,rows6665,rows6666,rows6667,rows6668,rows6669,rows6670,rows6671,rows6672,rows6673,rows6674,rows6675,rows6676,rows6677,rows6678,rows6679,rows6680,rows6681,rows6682,rows6683,rows6684,rows6685,rows6686,rows6687,List.append_assoc,List.append_nil]
theorem partLength102 : partOps102.length=64 := by decide
theorem partStats102 : partRows102.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows102=324240 := by
  simp only [partRows102,List.length_append,MatrixRowBlocks.rows_weight_append,stats6624.1,stats6624.2,stats6625.1,stats6625.2,stats6626.1,stats6626.2,stats6627.1,stats6627.2,stats6628.1,stats6628.2,stats6629.1,stats6629.2,stats6630.1,stats6630.2,stats6631.1,stats6631.2,stats6632.1,stats6632.2,stats6633.1,stats6633.2,stats6634.1,stats6634.2,stats6635.1,stats6635.2,stats6636.1,stats6636.2,stats6637.1,stats6637.2,stats6638.1,stats6638.2,stats6639.1,stats6639.2,stats6640.1,stats6640.2,stats6641.1,stats6641.2,stats6642.1,stats6642.2,stats6643.1,stats6643.2,stats6644.1,stats6644.2,stats6645.1,stats6645.2,stats6646.1,stats6646.2,stats6647.1,stats6647.2,stats6648.1,stats6648.2,stats6649.1,stats6649.2,stats6650.1,stats6650.2,stats6651.1,stats6651.2,stats6652.1,stats6652.2,stats6653.1,stats6653.2,stats6654.1,stats6654.2,stats6655.1,stats6655.2,stats6656.1,stats6656.2,stats6657.1,stats6657.2,stats6658.1,stats6658.2,stats6659.1,stats6659.2,stats6660.1,stats6660.2,stats6661.1,stats6661.2,stats6662.1,stats6662.2,stats6663.1,stats6663.2,stats6664.1,stats6664.2,stats6665.1,stats6665.2,stats6666.1,stats6666.2,stats6667.1,stats6667.2,stats6668.1,stats6668.2,stats6669.1,stats6669.2,stats6670.1,stats6670.2,stats6671.1,stats6671.2,stats6672.1,stats6672.2,stats6673.1,stats6673.2,stats6674.1,stats6674.2,stats6675.1,stats6675.2,stats6676.1,stats6676.2,stats6677.1,stats6677.2,stats6678.1,stats6678.2,stats6679.1,stats6679.2,stats6680.1,stats6680.2,stats6681.1,stats6681.2,stats6682.1,stats6682.2,stats6683.1,stats6683.2,stats6684.1,stats6684.2,stats6685.1,stats6685.2,stats6686.1,stats6686.2,stats6687.1,stats6687.2]
  decide
end PairedPathRoundCheckedRows
