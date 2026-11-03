import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData103
import FrameHashControllerInstructionMatrixData104
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6635 : actualRows6635=WordField.canonicalRows actualModulus 6635 (.rotr 6620 19) := by core033_kernel_decide
theorem stats6635 : actualRows6635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6635=5124 := by core033_kernel_decide
theorem rows6636 : actualRows6636=WordField.canonicalRows actualModulus 6636 (.bxor 6634 6635) := by core033_kernel_decide
theorem stats6636 : actualRows6636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6636=7428 := by core033_kernel_decide
theorem rows6637 : actualRows6637=WordField.canonicalRows actualModulus 6637 (.shr 6620 10) := by core033_kernel_decide
theorem stats6637 : actualRows6637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6637=4404 := by core033_kernel_decide
theorem rows6638 : actualRows6638=WordField.canonicalRows actualModulus 6638 (.bxor 6636 6637) := by core033_kernel_decide
theorem stats6638 : actualRows6638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6638=7428 := by core033_kernel_decide
theorem rows6639 : actualRows6639=WordField.canonicalRows actualModulus 6639 (.badd 6638 6555) := by core033_kernel_decide
theorem stats6639 : actualRows6639.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6639=5388 := by core033_kernel_decide
theorem rows6640 : actualRows6640=WordField.canonicalRows actualModulus 6640 (.rotr 6451 7) := by core033_kernel_decide
theorem stats6640 : actualRows6640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6640=5124 := by core033_kernel_decide
theorem rows6641 : actualRows6641=WordField.canonicalRows actualModulus 6641 (.rotr 6451 18) := by core033_kernel_decide
theorem stats6641 : actualRows6641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6641=5124 := by core033_kernel_decide
theorem rows6642 : actualRows6642=WordField.canonicalRows actualModulus 6642 (.bxor 6640 6641) := by core033_kernel_decide
theorem stats6642 : actualRows6642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6642=7428 := by core033_kernel_decide
theorem rows6643 : actualRows6643=WordField.canonicalRows actualModulus 6643 (.shr 6451 3) := by core033_kernel_decide
theorem stats6643 : actualRows6643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6643=4908 := by core033_kernel_decide
theorem rows6644 : actualRows6644=WordField.canonicalRows actualModulus 6644 (.bxor 6642 6643) := by core033_kernel_decide
theorem stats6644 : actualRows6644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6644=7428 := by core033_kernel_decide
theorem rows6645 : actualRows6645=WordField.canonicalRows actualModulus 6645 (.badd 6639 6644) := by core033_kernel_decide
theorem stats6645 : actualRows6645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6645=5388 := by core033_kernel_decide
theorem rows6646 : actualRows6646=WordField.canonicalRows actualModulus 6646 (.badd 6645 6438) := by core033_kernel_decide
theorem stats6646 : actualRows6646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6646=5388 := by core033_kernel_decide
theorem rows6647 : actualRows6647=WordField.canonicalRows actualModulus 6647 (.rotr 6633 17) := by core033_kernel_decide
theorem stats6647 : actualRows6647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6647=5124 := by core033_kernel_decide
theorem rows6648 : actualRows6648=WordField.canonicalRows actualModulus 6648 (.rotr 6633 19) := by core033_kernel_decide
theorem stats6648 : actualRows6648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6648=5124 := by core033_kernel_decide
theorem rows6649 : actualRows6649=WordField.canonicalRows actualModulus 6649 (.bxor 6647 6648) := by core033_kernel_decide
theorem stats6649 : actualRows6649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6649=7428 := by core033_kernel_decide
theorem rows6650 : actualRows6650=WordField.canonicalRows actualModulus 6650 (.shr 6633 10) := by core033_kernel_decide
theorem stats6650 : actualRows6650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6650=4404 := by core033_kernel_decide
theorem rows6651 : actualRows6651=WordField.canonicalRows actualModulus 6651 (.bxor 6649 6650) := by core033_kernel_decide
theorem stats6651 : actualRows6651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6651=7428 := by core033_kernel_decide
theorem rows6652 : actualRows6652=WordField.canonicalRows actualModulus 6652 (.badd 6651 6568) := by core033_kernel_decide
theorem stats6652 : actualRows6652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6652=5388 := by core033_kernel_decide
theorem rows6653 : actualRows6653=WordField.canonicalRows actualModulus 6653 (.rotr 6464 7) := by core033_kernel_decide
theorem stats6653 : actualRows6653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6653=5124 := by core033_kernel_decide
theorem rows6654 : actualRows6654=WordField.canonicalRows actualModulus 6654 (.rotr 6464 18) := by core033_kernel_decide
theorem stats6654 : actualRows6654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6654=5124 := by core033_kernel_decide
theorem rows6655 : actualRows6655=WordField.canonicalRows actualModulus 6655 (.bxor 6653 6654) := by core033_kernel_decide
theorem stats6655 : actualRows6655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6655=7428 := by core033_kernel_decide
theorem rows6656 : actualRows6656=WordField.canonicalRows actualModulus 6656 (.shr 6464 3) := by core033_kernel_decide
theorem stats6656 : actualRows6656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6656=4908 := by core033_kernel_decide
theorem rows6657 : actualRows6657=WordField.canonicalRows actualModulus 6657 (.bxor 6655 6656) := by core033_kernel_decide
theorem stats6657 : actualRows6657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6657=7428 := by core033_kernel_decide
theorem rows6658 : actualRows6658=WordField.canonicalRows actualModulus 6658 (.badd 6652 6657) := by core033_kernel_decide
theorem stats6658 : actualRows6658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6658=5388 := by core033_kernel_decide
theorem rows6659 : actualRows6659=WordField.canonicalRows actualModulus 6659 (.badd 6658 6451) := by core033_kernel_decide
theorem stats6659 : actualRows6659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6659=5388 := by core033_kernel_decide
theorem rows6660 : actualRows6660=WordField.canonicalRows actualModulus 6660 (.rotr 6646 17) := by core033_kernel_decide
theorem stats6660 : actualRows6660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6660=5124 := by core033_kernel_decide
theorem rows6661 : actualRows6661=WordField.canonicalRows actualModulus 6661 (.rotr 6646 19) := by core033_kernel_decide
theorem stats6661 : actualRows6661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6661=5124 := by core033_kernel_decide
theorem rows6662 : actualRows6662=WordField.canonicalRows actualModulus 6662 (.bxor 6660 6661) := by core033_kernel_decide
theorem stats6662 : actualRows6662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6662=7428 := by core033_kernel_decide
theorem rows6663 : actualRows6663=WordField.canonicalRows actualModulus 6663 (.shr 6646 10) := by core033_kernel_decide
theorem stats6663 : actualRows6663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6663=4404 := by core033_kernel_decide
theorem rows6664 : actualRows6664=WordField.canonicalRows actualModulus 6664 (.bxor 6662 6663) := by core033_kernel_decide
theorem stats6664 : actualRows6664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6664=7428 := by core033_kernel_decide
theorem rows6665 : actualRows6665=WordField.canonicalRows actualModulus 6665 (.badd 6664 6581) := by core033_kernel_decide
theorem stats6665 : actualRows6665.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6665=5388 := by core033_kernel_decide
theorem rows6666 : actualRows6666=WordField.canonicalRows actualModulus 6666 (.rotr 6477 7) := by core033_kernel_decide
theorem stats6666 : actualRows6666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6666=5124 := by core033_kernel_decide
theorem rows6667 : actualRows6667=WordField.canonicalRows actualModulus 6667 (.rotr 6477 18) := by core033_kernel_decide
theorem stats6667 : actualRows6667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6667=5124 := by core033_kernel_decide
theorem rows6668 : actualRows6668=WordField.canonicalRows actualModulus 6668 (.bxor 6666 6667) := by core033_kernel_decide
theorem stats6668 : actualRows6668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6668=7428 := by core033_kernel_decide
theorem rows6669 : actualRows6669=WordField.canonicalRows actualModulus 6669 (.shr 6477 3) := by core033_kernel_decide
theorem stats6669 : actualRows6669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6669=4908 := by core033_kernel_decide
theorem rows6670 : actualRows6670=WordField.canonicalRows actualModulus 6670 (.bxor 6668 6669) := by core033_kernel_decide
theorem stats6670 : actualRows6670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6670=7428 := by core033_kernel_decide
theorem rows6671 : actualRows6671=WordField.canonicalRows actualModulus 6671 (.badd 6665 6670) := by core033_kernel_decide
theorem stats6671 : actualRows6671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6671=5388 := by core033_kernel_decide
theorem rows6672 : actualRows6672=WordField.canonicalRows actualModulus 6672 (.badd 6671 6464) := by core033_kernel_decide
theorem stats6672 : actualRows6672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6672=5388 := by core033_kernel_decide
theorem rows6673 : actualRows6673=WordField.canonicalRows actualModulus 6673 (.rotr 6659 17) := by core033_kernel_decide
theorem stats6673 : actualRows6673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6673=5124 := by core033_kernel_decide
theorem rows6674 : actualRows6674=WordField.canonicalRows actualModulus 6674 (.rotr 6659 19) := by core033_kernel_decide
theorem stats6674 : actualRows6674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6674=5124 := by core033_kernel_decide
theorem rows6675 : actualRows6675=WordField.canonicalRows actualModulus 6675 (.bxor 6673 6674) := by core033_kernel_decide
theorem stats6675 : actualRows6675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6675=7428 := by core033_kernel_decide
theorem rows6676 : actualRows6676=WordField.canonicalRows actualModulus 6676 (.shr 6659 10) := by core033_kernel_decide
theorem stats6676 : actualRows6676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6676=4404 := by core033_kernel_decide
theorem rows6677 : actualRows6677=WordField.canonicalRows actualModulus 6677 (.bxor 6675 6676) := by core033_kernel_decide
theorem stats6677 : actualRows6677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6677=7428 := by core033_kernel_decide
theorem rows6678 : actualRows6678=WordField.canonicalRows actualModulus 6678 (.badd 6677 6594) := by core033_kernel_decide
theorem stats6678 : actualRows6678.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6678=5388 := by core033_kernel_decide
theorem rows6679 : actualRows6679=WordField.canonicalRows actualModulus 6679 (.rotr 6490 7) := by core033_kernel_decide
theorem stats6679 : actualRows6679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6679=5124 := by core033_kernel_decide
theorem rows6680 : actualRows6680=WordField.canonicalRows actualModulus 6680 (.rotr 6490 18) := by core033_kernel_decide
theorem stats6680 : actualRows6680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6680=5124 := by core033_kernel_decide
theorem rows6681 : actualRows6681=WordField.canonicalRows actualModulus 6681 (.bxor 6679 6680) := by core033_kernel_decide
theorem stats6681 : actualRows6681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6681=7428 := by core033_kernel_decide
theorem rows6682 : actualRows6682=WordField.canonicalRows actualModulus 6682 (.shr 6490 3) := by core033_kernel_decide
theorem stats6682 : actualRows6682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6682=4908 := by core033_kernel_decide
theorem rows6683 : actualRows6683=WordField.canonicalRows actualModulus 6683 (.bxor 6681 6682) := by core033_kernel_decide
theorem stats6683 : actualRows6683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6683=7428 := by core033_kernel_decide
theorem rows6684 : actualRows6684=WordField.canonicalRows actualModulus 6684 (.badd 6678 6683) := by core033_kernel_decide
theorem stats6684 : actualRows6684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6684=5388 := by core033_kernel_decide
theorem rows6685 : actualRows6685=WordField.canonicalRows actualModulus 6685 (.badd 6684 6477) := by core033_kernel_decide
theorem stats6685 : actualRows6685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6685=5388 := by core033_kernel_decide
theorem rows6686 : actualRows6686=WordField.canonicalRows actualModulus 6686 (.rotr 6672 17) := by core033_kernel_decide
theorem stats6686 : actualRows6686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6686=5124 := by core033_kernel_decide
theorem rows6687 : actualRows6687=WordField.canonicalRows actualModulus 6687 (.rotr 6672 19) := by core033_kernel_decide
theorem stats6687 : actualRows6687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6687=5124 := by core033_kernel_decide
theorem rows6688 : actualRows6688=WordField.canonicalRows actualModulus 6688 (.bxor 6686 6687) := by core033_kernel_decide
theorem stats6688 : actualRows6688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6688=7428 := by core033_kernel_decide
theorem rows6689 : actualRows6689=WordField.canonicalRows actualModulus 6689 (.shr 6672 10) := by core033_kernel_decide
theorem stats6689 : actualRows6689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6689=4404 := by core033_kernel_decide
theorem rows6690 : actualRows6690=WordField.canonicalRows actualModulus 6690 (.bxor 6688 6689) := by core033_kernel_decide
theorem stats6690 : actualRows6690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6690=7428 := by core033_kernel_decide
theorem rows6691 : actualRows6691=WordField.canonicalRows actualModulus 6691 (.badd 6690 6607) := by core033_kernel_decide
theorem stats6691 : actualRows6691.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6691=5388 := by core033_kernel_decide
theorem rows6692 : actualRows6692=WordField.canonicalRows actualModulus 6692 (.rotr 6503 7) := by core033_kernel_decide
theorem stats6692 : actualRows6692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6692=5124 := by core033_kernel_decide
theorem rows6693 : actualRows6693=WordField.canonicalRows actualModulus 6693 (.rotr 6503 18) := by core033_kernel_decide
theorem stats6693 : actualRows6693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6693=5124 := by core033_kernel_decide
theorem rows6694 : actualRows6694=WordField.canonicalRows actualModulus 6694 (.bxor 6692 6693) := by core033_kernel_decide
theorem stats6694 : actualRows6694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6694=7428 := by core033_kernel_decide
theorem rows6695 : actualRows6695=WordField.canonicalRows actualModulus 6695 (.shr 6503 3) := by core033_kernel_decide
theorem stats6695 : actualRows6695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6695=4908 := by core033_kernel_decide
theorem rows6696 : actualRows6696=WordField.canonicalRows actualModulus 6696 (.bxor 6694 6695) := by core033_kernel_decide
theorem stats6696 : actualRows6696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6696=7428 := by core033_kernel_decide
theorem rows6697 : actualRows6697=WordField.canonicalRows actualModulus 6697 (.badd 6691 6696) := by core033_kernel_decide
theorem stats6697 : actualRows6697.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6697=5388 := by core033_kernel_decide
theorem rows6698 : actualRows6698=WordField.canonicalRows actualModulus 6698 (.badd 6697 6490) := by core033_kernel_decide
theorem stats6698 : actualRows6698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6698=5388 := by core033_kernel_decide
def partRows103 : List R1CS.Row := actualRows6635++actualRows6636++actualRows6637++actualRows6638++actualRows6639++actualRows6640++actualRows6641++actualRows6642++actualRows6643++actualRows6644++actualRows6645++actualRows6646++actualRows6647++actualRows6648++actualRows6649++actualRows6650++actualRows6651++actualRows6652++actualRows6653++actualRows6654++actualRows6655++actualRows6656++actualRows6657++actualRows6658++actualRows6659++actualRows6660++actualRows6661++actualRows6662++actualRows6663++actualRows6664++actualRows6665++actualRows6666++actualRows6667++actualRows6668++actualRows6669++actualRows6670++actualRows6671++actualRows6672++actualRows6673++actualRows6674++actualRows6675++actualRows6676++actualRows6677++actualRows6678++actualRows6679++actualRows6680++actualRows6681++actualRows6682++actualRows6683++actualRows6684++actualRows6685++actualRows6686++actualRows6687++actualRows6688++actualRows6689++actualRows6690++actualRows6691++actualRows6692++actualRows6693++actualRows6694++actualRows6695++actualRows6696++actualRows6697++actualRows6698
def partOps103 : List WordIR.Op := [.rotr 6620 19,.bxor 6634 6635,.shr 6620 10,.bxor 6636 6637,.badd 6638 6555,.rotr 6451 7,.rotr 6451 18,.bxor 6640 6641,.shr 6451 3,.bxor 6642 6643,.badd 6639 6644,.badd 6645 6438,.rotr 6633 17,.rotr 6633 19,.bxor 6647 6648,.shr 6633 10,.bxor 6649 6650,.badd 6651 6568,.rotr 6464 7,.rotr 6464 18,.bxor 6653 6654,.shr 6464 3,.bxor 6655 6656,.badd 6652 6657,.badd 6658 6451,.rotr 6646 17,.rotr 6646 19,.bxor 6660 6661,.shr 6646 10,.bxor 6662 6663,.badd 6664 6581,.rotr 6477 7,.rotr 6477 18,.bxor 6666 6667,.shr 6477 3,.bxor 6668 6669,.badd 6665 6670,.badd 6671 6464,.rotr 6659 17,.rotr 6659 19,.bxor 6673 6674,.shr 6659 10,.bxor 6675 6676,.badd 6677 6594,.rotr 6490 7,.rotr 6490 18,.bxor 6679 6680,.shr 6490 3,.bxor 6681 6682,.badd 6678 6683,.badd 6684 6477,.rotr 6672 17,.rotr 6672 19,.bxor 6686 6687,.shr 6672 10,.bxor 6688 6689,.badd 6690 6607,.rotr 6503 7,.rotr 6503 18,.bxor 6692 6693,.shr 6503 3,.bxor 6694 6695,.badd 6691 6696,.badd 6697 6490]
theorem partExact103 : partRows103=WordField.rows actualModulus 6635 partOps103 := by
  simp only [partRows103,partOps103,WordField.rows,rows6635,rows6636,rows6637,rows6638,rows6639,rows6640,rows6641,rows6642,rows6643,rows6644,rows6645,rows6646,rows6647,rows6648,rows6649,rows6650,rows6651,rows6652,rows6653,rows6654,rows6655,rows6656,rows6657,rows6658,rows6659,rows6660,rows6661,rows6662,rows6663,rows6664,rows6665,rows6666,rows6667,rows6668,rows6669,rows6670,rows6671,rows6672,rows6673,rows6674,rows6675,rows6676,rows6677,rows6678,rows6679,rows6680,rows6681,rows6682,rows6683,rows6684,rows6685,rows6686,rows6687,rows6688,rows6689,rows6690,rows6691,rows6692,rows6693,rows6694,rows6695,rows6696,rows6697,rows6698,List.append_assoc,List.append_nil]
theorem partLength103 : partOps103.length=64 := by decide
theorem partStats103 : partRows103.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows103=373296 := by
  simp only [partRows103,List.length_append,MatrixRowBlocks.rows_weight_append,stats6635.1,stats6635.2,stats6636.1,stats6636.2,stats6637.1,stats6637.2,stats6638.1,stats6638.2,stats6639.1,stats6639.2,stats6640.1,stats6640.2,stats6641.1,stats6641.2,stats6642.1,stats6642.2,stats6643.1,stats6643.2,stats6644.1,stats6644.2,stats6645.1,stats6645.2,stats6646.1,stats6646.2,stats6647.1,stats6647.2,stats6648.1,stats6648.2,stats6649.1,stats6649.2,stats6650.1,stats6650.2,stats6651.1,stats6651.2,stats6652.1,stats6652.2,stats6653.1,stats6653.2,stats6654.1,stats6654.2,stats6655.1,stats6655.2,stats6656.1,stats6656.2,stats6657.1,stats6657.2,stats6658.1,stats6658.2,stats6659.1,stats6659.2,stats6660.1,stats6660.2,stats6661.1,stats6661.2,stats6662.1,stats6662.2,stats6663.1,stats6663.2,stats6664.1,stats6664.2,stats6665.1,stats6665.2,stats6666.1,stats6666.2,stats6667.1,stats6667.2,stats6668.1,stats6668.2,stats6669.1,stats6669.2,stats6670.1,stats6670.2,stats6671.1,stats6671.2,stats6672.1,stats6672.2,stats6673.1,stats6673.2,stats6674.1,stats6674.2,stats6675.1,stats6675.2,stats6676.1,stats6676.2,stats6677.1,stats6677.2,stats6678.1,stats6678.2,stats6679.1,stats6679.2,stats6680.1,stats6680.2,stats6681.1,stats6681.2,stats6682.1,stats6682.2,stats6683.1,stats6683.2,stats6684.1,stats6684.2,stats6685.1,stats6685.2,stats6686.1,stats6686.2,stats6687.1,stats6687.2,stats6688.1,stats6688.2,stats6689.1,stats6689.2,stats6690.1,stats6690.2,stats6691.1,stats6691.2,stats6692.1,stats6692.2,stats6693.1,stats6693.2,stats6694.1,stats6694.2,stats6695.1,stats6695.2,stats6696.1,stats6696.2,stats6697.1,stats6697.2,stats6698.1,stats6698.2]
  decide
end FrameHashControllerCheckedRows
