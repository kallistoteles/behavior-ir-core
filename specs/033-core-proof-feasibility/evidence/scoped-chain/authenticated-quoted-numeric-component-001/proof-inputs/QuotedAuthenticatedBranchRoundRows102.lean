import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData103
import AuthenticatedBranchRoundInstructionMatrixData104
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6646 : actualRows6646=WordField.canonicalRows actualModulus 6646 (.bxor 1299 6645) := by core033_kernel_decide
theorem stats6646 : actualRows6646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6646=7428 := by core033_kernel_decide
theorem rows6647 : actualRows6647=WordField.canonicalRows actualModulus 6647 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6647 : actualRows6647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6647=2820 := by core033_kernel_decide
theorem rows6648 : actualRows6648=WordField.canonicalRows actualModulus 6648 (.bnot 6647) := by core033_kernel_decide
theorem stats6648 : actualRows6648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6648=6276 := by core033_kernel_decide
theorem rows6649 : actualRows6649=WordField.canonicalRows actualModulus 6649 (.band 6646 6648) := by core033_kernel_decide
theorem stats6649 : actualRows6649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6649=5124 := by core033_kernel_decide
theorem rows6650 : actualRows6650=WordField.canonicalRows actualModulus 6650 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6650 : actualRows6650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6650=2892 := by core033_kernel_decide
theorem rows6651 : actualRows6651=WordField.canonicalRows actualModulus 6651 (.bxor 1299 6650) := by core033_kernel_decide
theorem stats6651 : actualRows6651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6651=7428 := by core033_kernel_decide
theorem rows6652 : actualRows6652=WordField.canonicalRows actualModulus 6652 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6652 : actualRows6652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6652=2820 := by core033_kernel_decide
theorem rows6653 : actualRows6653=WordField.canonicalRows actualModulus 6653 (.bnot 6652) := by core033_kernel_decide
theorem stats6653 : actualRows6653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6653=6276 := by core033_kernel_decide
theorem rows6654 : actualRows6654=WordField.canonicalRows actualModulus 6654 (.bxor 6651 6653) := by core033_kernel_decide
theorem stats6654 : actualRows6654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6654=7428 := by core033_kernel_decide
theorem rows6655 : actualRows6655=WordField.canonicalRows actualModulus 6655 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6655 : actualRows6655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6655=2892 := by core033_kernel_decide
theorem rows6656 : actualRows6656=WordField.canonicalRows actualModulus 6656 (.bxor 1299 6655) := by core033_kernel_decide
theorem stats6656 : actualRows6656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6656=7428 := by core033_kernel_decide
theorem rows6657 : actualRows6657=WordField.canonicalRows actualModulus 6657 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6657 : actualRows6657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6657=2820 := by core033_kernel_decide
theorem rows6658 : actualRows6658=WordField.canonicalRows actualModulus 6658 (.bnot 6657) := by core033_kernel_decide
theorem stats6658 : actualRows6658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6658=6276 := by core033_kernel_decide
theorem rows6659 : actualRows6659=WordField.canonicalRows actualModulus 6659 (.badd 6656 6658) := by core033_kernel_decide
theorem stats6659 : actualRows6659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6659=5388 := by core033_kernel_decide
theorem rows6660 : actualRows6660=WordField.canonicalRows actualModulus 6660 (.bnot 6659) := by core033_kernel_decide
theorem stats6660 : actualRows6660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6660=6276 := by core033_kernel_decide
theorem rows6661 : actualRows6661=WordField.canonicalRows actualModulus 6661 (.band 6654 6660) := by core033_kernel_decide
theorem stats6661 : actualRows6661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6661=5124 := by core033_kernel_decide
theorem rows6662 : actualRows6662=WordField.canonicalRows actualModulus 6662 (.bxor 6649 6661) := by core033_kernel_decide
theorem stats6662 : actualRows6662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6662=7428 := by core033_kernel_decide
theorem rows6663 : actualRows6663=WordField.canonicalRows actualModulus 6663 (.shr 6662 31) := by core033_kernel_decide
theorem stats6663 : actualRows6663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6663=2892 := by core033_kernel_decide
theorem rows6664 : actualRows6664=WordField.canonicalRows actualModulus 6664 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6664 : actualRows6664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6664=2892 := by core033_kernel_decide
theorem rows6665 : actualRows6665=WordField.canonicalRows actualModulus 6665 (.bxor 6663 6664) := by core033_kernel_decide
theorem stats6665 : actualRows6665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6665=7428 := by core033_kernel_decide
theorem rows6666 : actualRows6666=WordField.canonicalRows actualModulus 6666 (.bnot 6665) := by core033_kernel_decide
theorem stats6666 : actualRows6666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6666=6276 := by core033_kernel_decide
theorem rows6667 : actualRows6667=WordField.canonicalRows actualModulus 6667 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6667 : actualRows6667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6667=2892 := by core033_kernel_decide
theorem rows6668 : actualRows6668=WordField.canonicalRows actualModulus 6668 (.badd 6666 6667) := by core033_kernel_decide
theorem stats6668 : actualRows6668.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6668=5388 := by core033_kernel_decide
theorem rows6669 : actualRows6669=WordField.canonicalRows actualModulus 6669 (.bnot 6668) := by core033_kernel_decide
theorem stats6669 : actualRows6669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6669=6276 := by core033_kernel_decide
theorem rows6670 : actualRows6670=WordField.canonicalRows actualModulus 6670 (.band 6669 2681) := by core033_kernel_decide
theorem stats6670 : actualRows6670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6670=5124 := by core033_kernel_decide
theorem rows6671 : actualRows6671=WordField.canonicalRows actualModulus 6671 (.bxor 6644 6670) := by core033_kernel_decide
theorem stats6671 : actualRows6671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6671=7428 := by core033_kernel_decide
theorem rows6672 : actualRows6672=WordField.canonicalRows actualModulus 6672 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6672 : actualRows6672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6672=2892 := by core033_kernel_decide
theorem rows6673 : actualRows6673=WordField.canonicalRows actualModulus 6673 (.bxor 1299 6672) := by core033_kernel_decide
theorem stats6673 : actualRows6673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6673=7428 := by core033_kernel_decide
theorem rows6674 : actualRows6674=WordField.canonicalRows actualModulus 6674 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6674 : actualRows6674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6674=2820 := by core033_kernel_decide
theorem rows6675 : actualRows6675=WordField.canonicalRows actualModulus 6675 (.bnot 6674) := by core033_kernel_decide
theorem stats6675 : actualRows6675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6675=6276 := by core033_kernel_decide
theorem rows6676 : actualRows6676=WordField.canonicalRows actualModulus 6676 (.band 6673 6675) := by core033_kernel_decide
theorem stats6676 : actualRows6676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6676=5124 := by core033_kernel_decide
theorem rows6677 : actualRows6677=WordField.canonicalRows actualModulus 6677 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6677 : actualRows6677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6677=2892 := by core033_kernel_decide
theorem rows6678 : actualRows6678=WordField.canonicalRows actualModulus 6678 (.bxor 1299 6677) := by core033_kernel_decide
theorem stats6678 : actualRows6678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6678=7428 := by core033_kernel_decide
theorem rows6679 : actualRows6679=WordField.canonicalRows actualModulus 6679 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6679 : actualRows6679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6679=2820 := by core033_kernel_decide
theorem rows6680 : actualRows6680=WordField.canonicalRows actualModulus 6680 (.bnot 6679) := by core033_kernel_decide
theorem stats6680 : actualRows6680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6680=6276 := by core033_kernel_decide
theorem rows6681 : actualRows6681=WordField.canonicalRows actualModulus 6681 (.bxor 6678 6680) := by core033_kernel_decide
theorem stats6681 : actualRows6681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6681=7428 := by core033_kernel_decide
theorem rows6682 : actualRows6682=WordField.canonicalRows actualModulus 6682 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6682 : actualRows6682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6682=2892 := by core033_kernel_decide
theorem rows6683 : actualRows6683=WordField.canonicalRows actualModulus 6683 (.bxor 1299 6682) := by core033_kernel_decide
theorem stats6683 : actualRows6683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6683=7428 := by core033_kernel_decide
theorem rows6684 : actualRows6684=WordField.canonicalRows actualModulus 6684 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6684 : actualRows6684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6684=2820 := by core033_kernel_decide
theorem rows6685 : actualRows6685=WordField.canonicalRows actualModulus 6685 (.bnot 6684) := by core033_kernel_decide
theorem stats6685 : actualRows6685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6685=6276 := by core033_kernel_decide
theorem rows6686 : actualRows6686=WordField.canonicalRows actualModulus 6686 (.badd 6683 6685) := by core033_kernel_decide
theorem stats6686 : actualRows6686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6686=5388 := by core033_kernel_decide
theorem rows6687 : actualRows6687=WordField.canonicalRows actualModulus 6687 (.bnot 6686) := by core033_kernel_decide
theorem stats6687 : actualRows6687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6687=6276 := by core033_kernel_decide
theorem rows6688 : actualRows6688=WordField.canonicalRows actualModulus 6688 (.band 6681 6687) := by core033_kernel_decide
theorem stats6688 : actualRows6688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6688=5124 := by core033_kernel_decide
theorem rows6689 : actualRows6689=WordField.canonicalRows actualModulus 6689 (.bxor 6676 6688) := by core033_kernel_decide
theorem stats6689 : actualRows6689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6689=7428 := by core033_kernel_decide
theorem rows6690 : actualRows6690=WordField.canonicalRows actualModulus 6690 (.shr 6689 31) := by core033_kernel_decide
theorem stats6690 : actualRows6690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6690=2892 := by core033_kernel_decide
theorem rows6691 : actualRows6691=WordField.canonicalRows actualModulus 6691 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6691 : actualRows6691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6691=2892 := by core033_kernel_decide
theorem rows6692 : actualRows6692=WordField.canonicalRows actualModulus 6692 (.bxor 6690 6691) := by core033_kernel_decide
theorem stats6692 : actualRows6692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6692=7428 := by core033_kernel_decide
theorem rows6693 : actualRows6693=WordField.canonicalRows actualModulus 6693 (.bnot 6692) := by core033_kernel_decide
theorem stats6693 : actualRows6693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6693=6276 := by core033_kernel_decide
theorem rows6694 : actualRows6694=WordField.canonicalRows actualModulus 6694 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6694 : actualRows6694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6694=2892 := by core033_kernel_decide
theorem rows6695 : actualRows6695=WordField.canonicalRows actualModulus 6695 (.badd 6693 6694) := by core033_kernel_decide
theorem stats6695 : actualRows6695.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6695=5388 := by core033_kernel_decide
theorem rows6696 : actualRows6696=WordField.canonicalRows actualModulus 6696 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6696 : actualRows6696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6696=2820 := by core033_kernel_decide
theorem rows6697 : actualRows6697=WordField.canonicalRows actualModulus 6697 (.band 6695 6696) := by core033_kernel_decide
theorem stats6697 : actualRows6697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6697=5124 := by core033_kernel_decide
theorem rows6698 : actualRows6698=WordField.canonicalRows actualModulus 6698 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6698 : actualRows6698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6698=2892 := by core033_kernel_decide
theorem rows6699 : actualRows6699=WordField.canonicalRows actualModulus 6699 (.bxor 1299 6698) := by core033_kernel_decide
theorem stats6699 : actualRows6699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6699=7428 := by core033_kernel_decide
theorem rows6700 : actualRows6700=WordField.canonicalRows actualModulus 6700 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6700 : actualRows6700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6700=2820 := by core033_kernel_decide
theorem rows6701 : actualRows6701=WordField.canonicalRows actualModulus 6701 (.bnot 6700) := by core033_kernel_decide
theorem stats6701 : actualRows6701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6701=6276 := by core033_kernel_decide
theorem rows6702 : actualRows6702=WordField.canonicalRows actualModulus 6702 (.band 6699 6701) := by core033_kernel_decide
theorem stats6702 : actualRows6702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6702=5124 := by core033_kernel_decide
theorem rows6703 : actualRows6703=WordField.canonicalRows actualModulus 6703 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6703 : actualRows6703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6703=2892 := by core033_kernel_decide
theorem rows6704 : actualRows6704=WordField.canonicalRows actualModulus 6704 (.bxor 1299 6703) := by core033_kernel_decide
theorem stats6704 : actualRows6704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6704=7428 := by core033_kernel_decide
theorem rows6705 : actualRows6705=WordField.canonicalRows actualModulus 6705 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6705 : actualRows6705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6705=2820 := by core033_kernel_decide
theorem rows6706 : actualRows6706=WordField.canonicalRows actualModulus 6706 (.bnot 6705) := by core033_kernel_decide
theorem stats6706 : actualRows6706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6706=6276 := by core033_kernel_decide
theorem rows6707 : actualRows6707=WordField.canonicalRows actualModulus 6707 (.bxor 6704 6706) := by core033_kernel_decide
theorem stats6707 : actualRows6707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6707=7428 := by core033_kernel_decide
theorem rows6708 : actualRows6708=WordField.canonicalRows actualModulus 6708 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6708 : actualRows6708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6708=2892 := by core033_kernel_decide
theorem rows6709 : actualRows6709=WordField.canonicalRows actualModulus 6709 (.bxor 1299 6708) := by core033_kernel_decide
theorem stats6709 : actualRows6709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6709=7428 := by core033_kernel_decide
def partRows102 : List R1CS.Row := actualRows6646++actualRows6647++actualRows6648++actualRows6649++actualRows6650++actualRows6651++actualRows6652++actualRows6653++actualRows6654++actualRows6655++actualRows6656++actualRows6657++actualRows6658++actualRows6659++actualRows6660++actualRows6661++actualRows6662++actualRows6663++actualRows6664++actualRows6665++actualRows6666++actualRows6667++actualRows6668++actualRows6669++actualRows6670++actualRows6671++actualRows6672++actualRows6673++actualRows6674++actualRows6675++actualRows6676++actualRows6677++actualRows6678++actualRows6679++actualRows6680++actualRows6681++actualRows6682++actualRows6683++actualRows6684++actualRows6685++actualRows6686++actualRows6687++actualRows6688++actualRows6689++actualRows6690++actualRows6691++actualRows6692++actualRows6693++actualRows6694++actualRows6695++actualRows6696++actualRows6697++actualRows6698++actualRows6699++actualRows6700++actualRows6701++actualRows6702++actualRows6703++actualRows6704++actualRows6705++actualRows6706++actualRows6707++actualRows6708++actualRows6709
def partOps102 : List WordIR.Op := [.bxor 1299 6645,.literal (BitVec.ofNat 32 0),.bnot 6647,.band 6646 6648,.literal (BitVec.ofNat 32 2),.bxor 1299 6650,.literal (BitVec.ofNat 32 0),.bnot 6652,.bxor 6651 6653,.literal (BitVec.ofNat 32 2),.bxor 1299 6655,.literal (BitVec.ofNat 32 0),.bnot 6657,.badd 6656 6658,.bnot 6659,.band 6654 6660,.bxor 6649 6661,.shr 6662 31,.literal (BitVec.ofNat 32 1),.bxor 6663 6664,.bnot 6665,.literal (BitVec.ofNat 32 1),.badd 6666 6667,.bnot 6668,.band 6669 2681,.bxor 6644 6670,.literal (BitVec.ofNat 32 2),.bxor 1299 6672,.literal (BitVec.ofNat 32 0),.bnot 6674,.band 6673 6675,.literal (BitVec.ofNat 32 2),.bxor 1299 6677,.literal (BitVec.ofNat 32 0),.bnot 6679,.bxor 6678 6680,.literal (BitVec.ofNat 32 2),.bxor 1299 6682,.literal (BitVec.ofNat 32 0),.bnot 6684,.badd 6683 6685,.bnot 6686,.band 6681 6687,.bxor 6676 6688,.shr 6689 31,.literal (BitVec.ofNat 32 1),.bxor 6690 6691,.bnot 6692,.literal (BitVec.ofNat 32 1),.badd 6693 6694,.literal (BitVec.ofNat 32 0),.band 6695 6696,.literal (BitVec.ofNat 32 2),.bxor 1299 6698,.literal (BitVec.ofNat 32 0),.bnot 6700,.band 6699 6701,.literal (BitVec.ofNat 32 2),.bxor 1299 6703,.literal (BitVec.ofNat 32 0),.bnot 6705,.bxor 6704 6706,.literal (BitVec.ofNat 32 2),.bxor 1299 6708]
theorem partExact102 : partRows102=WordField.rows actualModulus 6646 partOps102 := by
  simp only [partRows102,partOps102,WordField.rows,rows6646,rows6647,rows6648,rows6649,rows6650,rows6651,rows6652,rows6653,rows6654,rows6655,rows6656,rows6657,rows6658,rows6659,rows6660,rows6661,rows6662,rows6663,rows6664,rows6665,rows6666,rows6667,rows6668,rows6669,rows6670,rows6671,rows6672,rows6673,rows6674,rows6675,rows6676,rows6677,rows6678,rows6679,rows6680,rows6681,rows6682,rows6683,rows6684,rows6685,rows6686,rows6687,rows6688,rows6689,rows6690,rows6691,rows6692,rows6693,rows6694,rows6695,rows6696,rows6697,rows6698,rows6699,rows6700,rows6701,rows6702,rows6703,rows6704,rows6705,rows6706,rows6707,rows6708,rows6709,List.append_assoc,List.append_nil]
theorem partLength102 : partOps102.length=64 := by decide
theorem partStats102 : partRows102.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows102=331152 := by
  simp only [partRows102,List.length_append,MatrixRowBlocks.rows_weight_append,stats6646.1,stats6646.2,stats6647.1,stats6647.2,stats6648.1,stats6648.2,stats6649.1,stats6649.2,stats6650.1,stats6650.2,stats6651.1,stats6651.2,stats6652.1,stats6652.2,stats6653.1,stats6653.2,stats6654.1,stats6654.2,stats6655.1,stats6655.2,stats6656.1,stats6656.2,stats6657.1,stats6657.2,stats6658.1,stats6658.2,stats6659.1,stats6659.2,stats6660.1,stats6660.2,stats6661.1,stats6661.2,stats6662.1,stats6662.2,stats6663.1,stats6663.2,stats6664.1,stats6664.2,stats6665.1,stats6665.2,stats6666.1,stats6666.2,stats6667.1,stats6667.2,stats6668.1,stats6668.2,stats6669.1,stats6669.2,stats6670.1,stats6670.2,stats6671.1,stats6671.2,stats6672.1,stats6672.2,stats6673.1,stats6673.2,stats6674.1,stats6674.2,stats6675.1,stats6675.2,stats6676.1,stats6676.2,stats6677.1,stats6677.2,stats6678.1,stats6678.2,stats6679.1,stats6679.2,stats6680.1,stats6680.2,stats6681.1,stats6681.2,stats6682.1,stats6682.2,stats6683.1,stats6683.2,stats6684.1,stats6684.2,stats6685.1,stats6685.2,stats6686.1,stats6686.2,stats6687.1,stats6687.2,stats6688.1,stats6688.2,stats6689.1,stats6689.2,stats6690.1,stats6690.2,stats6691.1,stats6691.2,stats6692.1,stats6692.2,stats6693.1,stats6693.2,stats6694.1,stats6694.2,stats6695.1,stats6695.2,stats6696.1,stats6696.2,stats6697.1,stats6697.2,stats6698.1,stats6698.2,stats6699.1,stats6699.2,stats6700.1,stats6700.2,stats6701.1,stats6701.2,stats6702.1,stats6702.2,stats6703.1,stats6703.2,stats6704.1,stats6704.2,stats6705.1,stats6705.2,stats6706.1,stats6706.2,stats6707.1,stats6707.2,stats6708.1,stats6708.2,stats6709.1,stats6709.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
