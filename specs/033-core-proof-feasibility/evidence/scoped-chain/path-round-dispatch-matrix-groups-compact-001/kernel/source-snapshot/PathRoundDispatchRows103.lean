import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData103
import PathRoundDispatchInstructionMatrixData104
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6635 : actualRows6635=WordField.canonicalRows actualModulus 6635 (.bnot 6634) := by core033_kernel_decide
theorem stats6635 : actualRows6635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6635=6276 := by core033_kernel_decide
theorem rows6636 : actualRows6636=WordField.canonicalRows actualModulus 6636 (.band 6630 6635) := by core033_kernel_decide
theorem stats6636 : actualRows6636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6636=5124 := by core033_kernel_decide
theorem rows6637 : actualRows6637=WordField.canonicalRows actualModulus 6637 (.bxor 6626 6636) := by core033_kernel_decide
theorem stats6637 : actualRows6637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6637=7428 := by core033_kernel_decide
theorem rows6638 : actualRows6638=WordField.canonicalRows actualModulus 6638 (.shr 6637 31) := by core033_kernel_decide
theorem stats6638 : actualRows6638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6638=2892 := by core033_kernel_decide
theorem rows6639 : actualRows6639=WordField.canonicalRows actualModulus 6639 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6639 : actualRows6639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6639=2892 := by core033_kernel_decide
theorem rows6640 : actualRows6640=WordField.canonicalRows actualModulus 6640 (.bxor 6638 6639) := by core033_kernel_decide
theorem stats6640 : actualRows6640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6640=7428 := by core033_kernel_decide
theorem rows6641 : actualRows6641=WordField.canonicalRows actualModulus 6641 (.shr 4887 8) := by core033_kernel_decide
theorem stats6641 : actualRows6641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6641=4548 := by core033_kernel_decide
theorem rows6642 : actualRows6642=WordField.canonicalRows actualModulus 6642 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6642 : actualRows6642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6642=2820 := by core033_kernel_decide
theorem rows6643 : actualRows6643=WordField.canonicalRows actualModulus 6643 (.bnot 6642) := by core033_kernel_decide
theorem stats6643 : actualRows6643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6643=6276 := by core033_kernel_decide
theorem rows6644 : actualRows6644=WordField.canonicalRows actualModulus 6644 (.band 6641 6643) := by core033_kernel_decide
theorem stats6644 : actualRows6644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6644=5124 := by core033_kernel_decide
theorem rows6645 : actualRows6645=WordField.canonicalRows actualModulus 6645 (.shr 4887 8) := by core033_kernel_decide
theorem stats6645 : actualRows6645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6645=4548 := by core033_kernel_decide
theorem rows6646 : actualRows6646=WordField.canonicalRows actualModulus 6646 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6646 : actualRows6646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6646=2820 := by core033_kernel_decide
theorem rows6647 : actualRows6647=WordField.canonicalRows actualModulus 6647 (.bnot 6646) := by core033_kernel_decide
theorem stats6647 : actualRows6647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6647=6276 := by core033_kernel_decide
theorem rows6648 : actualRows6648=WordField.canonicalRows actualModulus 6648 (.bxor 6645 6647) := by core033_kernel_decide
theorem stats6648 : actualRows6648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6648=7428 := by core033_kernel_decide
theorem rows6649 : actualRows6649=WordField.canonicalRows actualModulus 6649 (.shr 4887 8) := by core033_kernel_decide
theorem stats6649 : actualRows6649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6649=4548 := by core033_kernel_decide
theorem rows6650 : actualRows6650=WordField.canonicalRows actualModulus 6650 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6650 : actualRows6650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6650=2820 := by core033_kernel_decide
theorem rows6651 : actualRows6651=WordField.canonicalRows actualModulus 6651 (.bnot 6650) := by core033_kernel_decide
theorem stats6651 : actualRows6651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6651=6276 := by core033_kernel_decide
theorem rows6652 : actualRows6652=WordField.canonicalRows actualModulus 6652 (.badd 6649 6651) := by core033_kernel_decide
theorem stats6652 : actualRows6652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6652=5388 := by core033_kernel_decide
theorem rows6653 : actualRows6653=WordField.canonicalRows actualModulus 6653 (.bnot 6652) := by core033_kernel_decide
theorem stats6653 : actualRows6653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6653=6276 := by core033_kernel_decide
theorem rows6654 : actualRows6654=WordField.canonicalRows actualModulus 6654 (.band 6648 6653) := by core033_kernel_decide
theorem stats6654 : actualRows6654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6654=5124 := by core033_kernel_decide
theorem rows6655 : actualRows6655=WordField.canonicalRows actualModulus 6655 (.bxor 6644 6654) := by core033_kernel_decide
theorem stats6655 : actualRows6655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6655=7428 := by core033_kernel_decide
theorem rows6656 : actualRows6656=WordField.canonicalRows actualModulus 6656 (.shr 6655 31) := by core033_kernel_decide
theorem stats6656 : actualRows6656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6656=2892 := by core033_kernel_decide
theorem rows6657 : actualRows6657=WordField.canonicalRows actualModulus 6657 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6657 : actualRows6657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6657=2892 := by core033_kernel_decide
theorem rows6658 : actualRows6658=WordField.canonicalRows actualModulus 6658 (.bxor 6656 6657) := by core033_kernel_decide
theorem stats6658 : actualRows6658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6658=7428 := by core033_kernel_decide
theorem rows6659 : actualRows6659=WordField.canonicalRows actualModulus 6659 (.shr 4939 8) := by core033_kernel_decide
theorem stats6659 : actualRows6659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6659=4548 := by core033_kernel_decide
theorem rows6660 : actualRows6660=WordField.canonicalRows actualModulus 6660 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6660 : actualRows6660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6660=2820 := by core033_kernel_decide
theorem rows6661 : actualRows6661=WordField.canonicalRows actualModulus 6661 (.bnot 6660) := by core033_kernel_decide
theorem stats6661 : actualRows6661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6661=6276 := by core033_kernel_decide
theorem rows6662 : actualRows6662=WordField.canonicalRows actualModulus 6662 (.band 6659 6661) := by core033_kernel_decide
theorem stats6662 : actualRows6662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6662=5124 := by core033_kernel_decide
theorem rows6663 : actualRows6663=WordField.canonicalRows actualModulus 6663 (.shr 4939 8) := by core033_kernel_decide
theorem stats6663 : actualRows6663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6663=4548 := by core033_kernel_decide
theorem rows6664 : actualRows6664=WordField.canonicalRows actualModulus 6664 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6664 : actualRows6664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6664=2820 := by core033_kernel_decide
theorem rows6665 : actualRows6665=WordField.canonicalRows actualModulus 6665 (.bnot 6664) := by core033_kernel_decide
theorem stats6665 : actualRows6665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6665=6276 := by core033_kernel_decide
theorem rows6666 : actualRows6666=WordField.canonicalRows actualModulus 6666 (.bxor 6663 6665) := by core033_kernel_decide
theorem stats6666 : actualRows6666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6666=7428 := by core033_kernel_decide
theorem rows6667 : actualRows6667=WordField.canonicalRows actualModulus 6667 (.shr 4939 8) := by core033_kernel_decide
theorem stats6667 : actualRows6667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6667=4548 := by core033_kernel_decide
theorem rows6668 : actualRows6668=WordField.canonicalRows actualModulus 6668 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6668 : actualRows6668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6668=2820 := by core033_kernel_decide
theorem rows6669 : actualRows6669=WordField.canonicalRows actualModulus 6669 (.bnot 6668) := by core033_kernel_decide
theorem stats6669 : actualRows6669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6669=6276 := by core033_kernel_decide
theorem rows6670 : actualRows6670=WordField.canonicalRows actualModulus 6670 (.badd 6667 6669) := by core033_kernel_decide
theorem stats6670 : actualRows6670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6670=5388 := by core033_kernel_decide
theorem rows6671 : actualRows6671=WordField.canonicalRows actualModulus 6671 (.bnot 6670) := by core033_kernel_decide
theorem stats6671 : actualRows6671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6671=6276 := by core033_kernel_decide
theorem rows6672 : actualRows6672=WordField.canonicalRows actualModulus 6672 (.band 6666 6671) := by core033_kernel_decide
theorem stats6672 : actualRows6672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6672=5124 := by core033_kernel_decide
theorem rows6673 : actualRows6673=WordField.canonicalRows actualModulus 6673 (.bxor 6662 6672) := by core033_kernel_decide
theorem stats6673 : actualRows6673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6673=7428 := by core033_kernel_decide
theorem rows6674 : actualRows6674=WordField.canonicalRows actualModulus 6674 (.shr 6673 31) := by core033_kernel_decide
theorem stats6674 : actualRows6674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6674=2892 := by core033_kernel_decide
theorem rows6675 : actualRows6675=WordField.canonicalRows actualModulus 6675 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6675 : actualRows6675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6675=2892 := by core033_kernel_decide
theorem rows6676 : actualRows6676=WordField.canonicalRows actualModulus 6676 (.bxor 6674 6675) := by core033_kernel_decide
theorem stats6676 : actualRows6676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6676=7428 := by core033_kernel_decide
theorem rows6677 : actualRows6677=WordField.canonicalRows actualModulus 6677 (.shr 4991 8) := by core033_kernel_decide
theorem stats6677 : actualRows6677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6677=4548 := by core033_kernel_decide
theorem rows6678 : actualRows6678=WordField.canonicalRows actualModulus 6678 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6678 : actualRows6678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6678=2820 := by core033_kernel_decide
theorem rows6679 : actualRows6679=WordField.canonicalRows actualModulus 6679 (.bnot 6678) := by core033_kernel_decide
theorem stats6679 : actualRows6679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6679=6276 := by core033_kernel_decide
theorem rows6680 : actualRows6680=WordField.canonicalRows actualModulus 6680 (.band 6677 6679) := by core033_kernel_decide
theorem stats6680 : actualRows6680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6680=5124 := by core033_kernel_decide
theorem rows6681 : actualRows6681=WordField.canonicalRows actualModulus 6681 (.shr 4991 8) := by core033_kernel_decide
theorem stats6681 : actualRows6681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6681=4548 := by core033_kernel_decide
theorem rows6682 : actualRows6682=WordField.canonicalRows actualModulus 6682 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6682 : actualRows6682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6682=2820 := by core033_kernel_decide
theorem rows6683 : actualRows6683=WordField.canonicalRows actualModulus 6683 (.bnot 6682) := by core033_kernel_decide
theorem stats6683 : actualRows6683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6683=6276 := by core033_kernel_decide
theorem rows6684 : actualRows6684=WordField.canonicalRows actualModulus 6684 (.bxor 6681 6683) := by core033_kernel_decide
theorem stats6684 : actualRows6684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6684=7428 := by core033_kernel_decide
theorem rows6685 : actualRows6685=WordField.canonicalRows actualModulus 6685 (.shr 4991 8) := by core033_kernel_decide
theorem stats6685 : actualRows6685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6685=4548 := by core033_kernel_decide
theorem rows6686 : actualRows6686=WordField.canonicalRows actualModulus 6686 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6686 : actualRows6686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6686=2820 := by core033_kernel_decide
theorem rows6687 : actualRows6687=WordField.canonicalRows actualModulus 6687 (.bnot 6686) := by core033_kernel_decide
theorem stats6687 : actualRows6687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6687=6276 := by core033_kernel_decide
theorem rows6688 : actualRows6688=WordField.canonicalRows actualModulus 6688 (.badd 6685 6687) := by core033_kernel_decide
theorem stats6688 : actualRows6688.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6688=5388 := by core033_kernel_decide
theorem rows6689 : actualRows6689=WordField.canonicalRows actualModulus 6689 (.bnot 6688) := by core033_kernel_decide
theorem stats6689 : actualRows6689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6689=6276 := by core033_kernel_decide
theorem rows6690 : actualRows6690=WordField.canonicalRows actualModulus 6690 (.band 6684 6689) := by core033_kernel_decide
theorem stats6690 : actualRows6690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6690=5124 := by core033_kernel_decide
theorem rows6691 : actualRows6691=WordField.canonicalRows actualModulus 6691 (.bxor 6680 6690) := by core033_kernel_decide
theorem stats6691 : actualRows6691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6691=7428 := by core033_kernel_decide
theorem rows6692 : actualRows6692=WordField.canonicalRows actualModulus 6692 (.shr 6691 31) := by core033_kernel_decide
theorem stats6692 : actualRows6692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6692=2892 := by core033_kernel_decide
theorem rows6693 : actualRows6693=WordField.canonicalRows actualModulus 6693 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6693 : actualRows6693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6693=2892 := by core033_kernel_decide
theorem rows6694 : actualRows6694=WordField.canonicalRows actualModulus 6694 (.bxor 6692 6693) := by core033_kernel_decide
theorem stats6694 : actualRows6694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6694=7428 := by core033_kernel_decide
theorem rows6695 : actualRows6695=WordField.canonicalRows actualModulus 6695 (.shr 5044 8) := by core033_kernel_decide
theorem stats6695 : actualRows6695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6695=4548 := by core033_kernel_decide
theorem rows6696 : actualRows6696=WordField.canonicalRows actualModulus 6696 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6696 : actualRows6696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6696=2820 := by core033_kernel_decide
theorem rows6697 : actualRows6697=WordField.canonicalRows actualModulus 6697 (.bnot 6696) := by core033_kernel_decide
theorem stats6697 : actualRows6697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6697=6276 := by core033_kernel_decide
theorem rows6698 : actualRows6698=WordField.canonicalRows actualModulus 6698 (.band 6695 6697) := by core033_kernel_decide
theorem stats6698 : actualRows6698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6698=5124 := by core033_kernel_decide
def partRows103 : List R1CS.Row := actualRows6635++actualRows6636++actualRows6637++actualRows6638++actualRows6639++actualRows6640++actualRows6641++actualRows6642++actualRows6643++actualRows6644++actualRows6645++actualRows6646++actualRows6647++actualRows6648++actualRows6649++actualRows6650++actualRows6651++actualRows6652++actualRows6653++actualRows6654++actualRows6655++actualRows6656++actualRows6657++actualRows6658++actualRows6659++actualRows6660++actualRows6661++actualRows6662++actualRows6663++actualRows6664++actualRows6665++actualRows6666++actualRows6667++actualRows6668++actualRows6669++actualRows6670++actualRows6671++actualRows6672++actualRows6673++actualRows6674++actualRows6675++actualRows6676++actualRows6677++actualRows6678++actualRows6679++actualRows6680++actualRows6681++actualRows6682++actualRows6683++actualRows6684++actualRows6685++actualRows6686++actualRows6687++actualRows6688++actualRows6689++actualRows6690++actualRows6691++actualRows6692++actualRows6693++actualRows6694++actualRows6695++actualRows6696++actualRows6697++actualRows6698
def partOps103 : List WordIR.Op := [.bnot 6634,.band 6630 6635,.bxor 6626 6636,.shr 6637 31,.literal (BitVec.ofNat 32 1),.bxor 6638 6639,.shr 4887 8,.literal (BitVec.ofNat 32 0),.bnot 6642,.band 6641 6643,.shr 4887 8,.literal (BitVec.ofNat 32 0),.bnot 6646,.bxor 6645 6647,.shr 4887 8,.literal (BitVec.ofNat 32 0),.bnot 6650,.badd 6649 6651,.bnot 6652,.band 6648 6653,.bxor 6644 6654,.shr 6655 31,.literal (BitVec.ofNat 32 1),.bxor 6656 6657,.shr 4939 8,.literal (BitVec.ofNat 32 0),.bnot 6660,.band 6659 6661,.shr 4939 8,.literal (BitVec.ofNat 32 0),.bnot 6664,.bxor 6663 6665,.shr 4939 8,.literal (BitVec.ofNat 32 0),.bnot 6668,.badd 6667 6669,.bnot 6670,.band 6666 6671,.bxor 6662 6672,.shr 6673 31,.literal (BitVec.ofNat 32 1),.bxor 6674 6675,.shr 4991 8,.literal (BitVec.ofNat 32 0),.bnot 6678,.band 6677 6679,.shr 4991 8,.literal (BitVec.ofNat 32 0),.bnot 6682,.bxor 6681 6683,.shr 4991 8,.literal (BitVec.ofNat 32 0),.bnot 6686,.badd 6685 6687,.bnot 6688,.band 6684 6689,.bxor 6680 6690,.shr 6691 31,.literal (BitVec.ofNat 32 1),.bxor 6692 6693,.shr 5044 8,.literal (BitVec.ofNat 32 0),.bnot 6696,.band 6695 6697]
theorem partExact103 : partRows103=WordField.rows actualModulus 6635 partOps103 := by
  simp only [partRows103,partOps103,WordField.rows,rows6635,rows6636,rows6637,rows6638,rows6639,rows6640,rows6641,rows6642,rows6643,rows6644,rows6645,rows6646,rows6647,rows6648,rows6649,rows6650,rows6651,rows6652,rows6653,rows6654,rows6655,rows6656,rows6657,rows6658,rows6659,rows6660,rows6661,rows6662,rows6663,rows6664,rows6665,rows6666,rows6667,rows6668,rows6669,rows6670,rows6671,rows6672,rows6673,rows6674,rows6675,rows6676,rows6677,rows6678,rows6679,rows6680,rows6681,rows6682,rows6683,rows6684,rows6685,rows6686,rows6687,rows6688,rows6689,rows6690,rows6691,rows6692,rows6693,rows6694,rows6695,rows6696,rows6697,rows6698,List.append_assoc,List.append_nil]
theorem partLength103 : partOps103.length=64 := by decide
theorem partStats103 : partRows103.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows103=323544 := by
  simp only [partRows103,List.length_append,MatrixRowBlocks.rows_weight_append,stats6635.1,stats6635.2,stats6636.1,stats6636.2,stats6637.1,stats6637.2,stats6638.1,stats6638.2,stats6639.1,stats6639.2,stats6640.1,stats6640.2,stats6641.1,stats6641.2,stats6642.1,stats6642.2,stats6643.1,stats6643.2,stats6644.1,stats6644.2,stats6645.1,stats6645.2,stats6646.1,stats6646.2,stats6647.1,stats6647.2,stats6648.1,stats6648.2,stats6649.1,stats6649.2,stats6650.1,stats6650.2,stats6651.1,stats6651.2,stats6652.1,stats6652.2,stats6653.1,stats6653.2,stats6654.1,stats6654.2,stats6655.1,stats6655.2,stats6656.1,stats6656.2,stats6657.1,stats6657.2,stats6658.1,stats6658.2,stats6659.1,stats6659.2,stats6660.1,stats6660.2,stats6661.1,stats6661.2,stats6662.1,stats6662.2,stats6663.1,stats6663.2,stats6664.1,stats6664.2,stats6665.1,stats6665.2,stats6666.1,stats6666.2,stats6667.1,stats6667.2,stats6668.1,stats6668.2,stats6669.1,stats6669.2,stats6670.1,stats6670.2,stats6671.1,stats6671.2,stats6672.1,stats6672.2,stats6673.1,stats6673.2,stats6674.1,stats6674.2,stats6675.1,stats6675.2,stats6676.1,stats6676.2,stats6677.1,stats6677.2,stats6678.1,stats6678.2,stats6679.1,stats6679.2,stats6680.1,stats6680.2,stats6681.1,stats6681.2,stats6682.1,stats6682.2,stats6683.1,stats6683.2,stats6684.1,stats6684.2,stats6685.1,stats6685.2,stats6686.1,stats6686.2,stats6687.1,stats6687.2,stats6688.1,stats6688.2,stats6689.1,stats6689.2,stats6690.1,stats6690.2,stats6691.1,stats6691.2,stats6692.1,stats6692.2,stats6693.1,stats6693.2,stats6694.1,stats6694.2,stats6695.1,stats6695.2,stats6696.1,stats6696.2,stats6697.1,stats6697.2,stats6698.1,stats6698.2]
  decide
end PathRoundDispatchCheckedRows
