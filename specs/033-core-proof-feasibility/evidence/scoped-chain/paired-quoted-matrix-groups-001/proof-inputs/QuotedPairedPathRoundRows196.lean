import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData197
import PairedPathRoundInstructionMatrixData198
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12640 : actualRows12640=WordField.canonicalRows actualModulus 12640 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12640 : actualRows12640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12640=2892 := by core033_kernel_decide
theorem rows12641 : actualRows12641=WordField.canonicalRows actualModulus 12641 (.badd 12639 12640) := by core033_kernel_decide
theorem stats12641 : actualRows12641.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12641=5388 := by core033_kernel_decide
theorem rows12642 : actualRows12642=WordField.canonicalRows actualModulus 12642 (.band 12641 10333) := by core033_kernel_decide
theorem stats12642 : actualRows12642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12642=5124 := by core033_kernel_decide
theorem rows12643 : actualRows12643=WordField.canonicalRows actualModulus 12643 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12643 : actualRows12643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12643=2964 := by core033_kernel_decide
theorem rows12644 : actualRows12644=WordField.canonicalRows actualModulus 12644 (.bxor 442 12643) := by core033_kernel_decide
theorem stats12644 : actualRows12644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12644=7428 := by core033_kernel_decide
theorem rows12645 : actualRows12645=WordField.canonicalRows actualModulus 12645 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12645 : actualRows12645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12645=2820 := by core033_kernel_decide
theorem rows12646 : actualRows12646=WordField.canonicalRows actualModulus 12646 (.bnot 12645) := by core033_kernel_decide
theorem stats12646 : actualRows12646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12646=6276 := by core033_kernel_decide
theorem rows12647 : actualRows12647=WordField.canonicalRows actualModulus 12647 (.band 12644 12646) := by core033_kernel_decide
theorem stats12647 : actualRows12647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12647=5124 := by core033_kernel_decide
theorem rows12648 : actualRows12648=WordField.canonicalRows actualModulus 12648 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12648 : actualRows12648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12648=2964 := by core033_kernel_decide
theorem rows12649 : actualRows12649=WordField.canonicalRows actualModulus 12649 (.bxor 442 12648) := by core033_kernel_decide
theorem stats12649 : actualRows12649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12649=7428 := by core033_kernel_decide
theorem rows12650 : actualRows12650=WordField.canonicalRows actualModulus 12650 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12650 : actualRows12650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12650=2820 := by core033_kernel_decide
theorem rows12651 : actualRows12651=WordField.canonicalRows actualModulus 12651 (.bnot 12650) := by core033_kernel_decide
theorem stats12651 : actualRows12651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12651=6276 := by core033_kernel_decide
theorem rows12652 : actualRows12652=WordField.canonicalRows actualModulus 12652 (.bxor 12649 12651) := by core033_kernel_decide
theorem stats12652 : actualRows12652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12652=7428 := by core033_kernel_decide
theorem rows12653 : actualRows12653=WordField.canonicalRows actualModulus 12653 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12653 : actualRows12653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12653=2964 := by core033_kernel_decide
theorem rows12654 : actualRows12654=WordField.canonicalRows actualModulus 12654 (.bxor 442 12653) := by core033_kernel_decide
theorem stats12654 : actualRows12654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12654=7428 := by core033_kernel_decide
theorem rows12655 : actualRows12655=WordField.canonicalRows actualModulus 12655 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12655 : actualRows12655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12655=2820 := by core033_kernel_decide
theorem rows12656 : actualRows12656=WordField.canonicalRows actualModulus 12656 (.bnot 12655) := by core033_kernel_decide
theorem stats12656 : actualRows12656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12656=6276 := by core033_kernel_decide
theorem rows12657 : actualRows12657=WordField.canonicalRows actualModulus 12657 (.badd 12654 12656) := by core033_kernel_decide
theorem stats12657 : actualRows12657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12657=5388 := by core033_kernel_decide
theorem rows12658 : actualRows12658=WordField.canonicalRows actualModulus 12658 (.bnot 12657) := by core033_kernel_decide
theorem stats12658 : actualRows12658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12658=6276 := by core033_kernel_decide
theorem rows12659 : actualRows12659=WordField.canonicalRows actualModulus 12659 (.band 12652 12658) := by core033_kernel_decide
theorem stats12659 : actualRows12659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12659=5124 := by core033_kernel_decide
theorem rows12660 : actualRows12660=WordField.canonicalRows actualModulus 12660 (.bxor 12647 12659) := by core033_kernel_decide
theorem stats12660 : actualRows12660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12660=7428 := by core033_kernel_decide
theorem rows12661 : actualRows12661=WordField.canonicalRows actualModulus 12661 (.shr 12660 31) := by core033_kernel_decide
theorem stats12661 : actualRows12661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12661=2892 := by core033_kernel_decide
theorem rows12662 : actualRows12662=WordField.canonicalRows actualModulus 12662 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12662 : actualRows12662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12662=2892 := by core033_kernel_decide
theorem rows12663 : actualRows12663=WordField.canonicalRows actualModulus 12663 (.bxor 12661 12662) := by core033_kernel_decide
theorem stats12663 : actualRows12663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12663=7428 := by core033_kernel_decide
theorem rows12664 : actualRows12664=WordField.canonicalRows actualModulus 12664 (.bnot 12663) := by core033_kernel_decide
theorem stats12664 : actualRows12664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12664=6276 := by core033_kernel_decide
theorem rows12665 : actualRows12665=WordField.canonicalRows actualModulus 12665 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12665 : actualRows12665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12665=2892 := by core033_kernel_decide
theorem rows12666 : actualRows12666=WordField.canonicalRows actualModulus 12666 (.badd 12664 12665) := by core033_kernel_decide
theorem stats12666 : actualRows12666.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12666=5388 := by core033_kernel_decide
theorem rows12667 : actualRows12667=WordField.canonicalRows actualModulus 12667 (.bnot 12666) := by core033_kernel_decide
theorem stats12667 : actualRows12667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12667=6276 := by core033_kernel_decide
theorem rows12668 : actualRows12668=WordField.canonicalRows actualModulus 12668 (.band 12667 9802) := by core033_kernel_decide
theorem stats12668 : actualRows12668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12668=5124 := by core033_kernel_decide
theorem rows12669 : actualRows12669=WordField.canonicalRows actualModulus 12669 (.bxor 12642 12668) := by core033_kernel_decide
theorem stats12669 : actualRows12669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12669=7428 := by core033_kernel_decide
theorem rows12670 : actualRows12670=WordField.canonicalRows actualModulus 12670 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12670 : actualRows12670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12670=2964 := by core033_kernel_decide
theorem rows12671 : actualRows12671=WordField.canonicalRows actualModulus 12671 (.bxor 442 12670) := by core033_kernel_decide
theorem stats12671 : actualRows12671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12671=7428 := by core033_kernel_decide
theorem rows12672 : actualRows12672=WordField.canonicalRows actualModulus 12672 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12672 : actualRows12672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12672=2820 := by core033_kernel_decide
theorem rows12673 : actualRows12673=WordField.canonicalRows actualModulus 12673 (.bnot 12672) := by core033_kernel_decide
theorem stats12673 : actualRows12673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12673=6276 := by core033_kernel_decide
theorem rows12674 : actualRows12674=WordField.canonicalRows actualModulus 12674 (.band 12671 12673) := by core033_kernel_decide
theorem stats12674 : actualRows12674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12674=5124 := by core033_kernel_decide
theorem rows12675 : actualRows12675=WordField.canonicalRows actualModulus 12675 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12675 : actualRows12675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12675=2964 := by core033_kernel_decide
theorem rows12676 : actualRows12676=WordField.canonicalRows actualModulus 12676 (.bxor 442 12675) := by core033_kernel_decide
theorem stats12676 : actualRows12676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12676=7428 := by core033_kernel_decide
theorem rows12677 : actualRows12677=WordField.canonicalRows actualModulus 12677 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12677 : actualRows12677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12677=2820 := by core033_kernel_decide
theorem rows12678 : actualRows12678=WordField.canonicalRows actualModulus 12678 (.bnot 12677) := by core033_kernel_decide
theorem stats12678 : actualRows12678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12678=6276 := by core033_kernel_decide
theorem rows12679 : actualRows12679=WordField.canonicalRows actualModulus 12679 (.bxor 12676 12678) := by core033_kernel_decide
theorem stats12679 : actualRows12679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12679=7428 := by core033_kernel_decide
theorem rows12680 : actualRows12680=WordField.canonicalRows actualModulus 12680 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12680 : actualRows12680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12680=2964 := by core033_kernel_decide
theorem rows12681 : actualRows12681=WordField.canonicalRows actualModulus 12681 (.bxor 442 12680) := by core033_kernel_decide
theorem stats12681 : actualRows12681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12681=7428 := by core033_kernel_decide
theorem rows12682 : actualRows12682=WordField.canonicalRows actualModulus 12682 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12682 : actualRows12682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12682=2820 := by core033_kernel_decide
theorem rows12683 : actualRows12683=WordField.canonicalRows actualModulus 12683 (.bnot 12682) := by core033_kernel_decide
theorem stats12683 : actualRows12683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12683=6276 := by core033_kernel_decide
theorem rows12684 : actualRows12684=WordField.canonicalRows actualModulus 12684 (.badd 12681 12683) := by core033_kernel_decide
theorem stats12684 : actualRows12684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12684=5388 := by core033_kernel_decide
theorem rows12685 : actualRows12685=WordField.canonicalRows actualModulus 12685 (.bnot 12684) := by core033_kernel_decide
theorem stats12685 : actualRows12685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12685=6276 := by core033_kernel_decide
theorem rows12686 : actualRows12686=WordField.canonicalRows actualModulus 12686 (.band 12679 12685) := by core033_kernel_decide
theorem stats12686 : actualRows12686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12686=5124 := by core033_kernel_decide
theorem rows12687 : actualRows12687=WordField.canonicalRows actualModulus 12687 (.bxor 12674 12686) := by core033_kernel_decide
theorem stats12687 : actualRows12687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12687=7428 := by core033_kernel_decide
theorem rows12688 : actualRows12688=WordField.canonicalRows actualModulus 12688 (.shr 12687 31) := by core033_kernel_decide
theorem stats12688 : actualRows12688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12688=2892 := by core033_kernel_decide
theorem rows12689 : actualRows12689=WordField.canonicalRows actualModulus 12689 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12689 : actualRows12689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12689=2892 := by core033_kernel_decide
theorem rows12690 : actualRows12690=WordField.canonicalRows actualModulus 12690 (.bxor 12688 12689) := by core033_kernel_decide
theorem stats12690 : actualRows12690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12690=7428 := by core033_kernel_decide
theorem rows12691 : actualRows12691=WordField.canonicalRows actualModulus 12691 (.bnot 12690) := by core033_kernel_decide
theorem stats12691 : actualRows12691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12691=6276 := by core033_kernel_decide
theorem rows12692 : actualRows12692=WordField.canonicalRows actualModulus 12692 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12692 : actualRows12692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12692=2892 := by core033_kernel_decide
theorem rows12693 : actualRows12693=WordField.canonicalRows actualModulus 12693 (.badd 12691 12692) := by core033_kernel_decide
theorem stats12693 : actualRows12693.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12693=5388 := by core033_kernel_decide
theorem rows12694 : actualRows12694=WordField.canonicalRows actualModulus 12694 (.band 12693 10344) := by core033_kernel_decide
theorem stats12694 : actualRows12694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12694=5124 := by core033_kernel_decide
theorem rows12695 : actualRows12695=WordField.canonicalRows actualModulus 12695 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12695 : actualRows12695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12695=2964 := by core033_kernel_decide
theorem rows12696 : actualRows12696=WordField.canonicalRows actualModulus 12696 (.bxor 442 12695) := by core033_kernel_decide
theorem stats12696 : actualRows12696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12696=7428 := by core033_kernel_decide
theorem rows12697 : actualRows12697=WordField.canonicalRows actualModulus 12697 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12697 : actualRows12697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12697=2820 := by core033_kernel_decide
theorem rows12698 : actualRows12698=WordField.canonicalRows actualModulus 12698 (.bnot 12697) := by core033_kernel_decide
theorem stats12698 : actualRows12698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12698=6276 := by core033_kernel_decide
theorem rows12699 : actualRows12699=WordField.canonicalRows actualModulus 12699 (.band 12696 12698) := by core033_kernel_decide
theorem stats12699 : actualRows12699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12699=5124 := by core033_kernel_decide
theorem rows12700 : actualRows12700=WordField.canonicalRows actualModulus 12700 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12700 : actualRows12700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12700=2964 := by core033_kernel_decide
theorem rows12701 : actualRows12701=WordField.canonicalRows actualModulus 12701 (.bxor 442 12700) := by core033_kernel_decide
theorem stats12701 : actualRows12701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12701=7428 := by core033_kernel_decide
theorem rows12702 : actualRows12702=WordField.canonicalRows actualModulus 12702 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12702 : actualRows12702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12702=2820 := by core033_kernel_decide
theorem rows12703 : actualRows12703=WordField.canonicalRows actualModulus 12703 (.bnot 12702) := by core033_kernel_decide
theorem stats12703 : actualRows12703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12703=6276 := by core033_kernel_decide
def partRows196 : List R1CS.Row := actualRows12640++actualRows12641++actualRows12642++actualRows12643++actualRows12644++actualRows12645++actualRows12646++actualRows12647++actualRows12648++actualRows12649++actualRows12650++actualRows12651++actualRows12652++actualRows12653++actualRows12654++actualRows12655++actualRows12656++actualRows12657++actualRows12658++actualRows12659++actualRows12660++actualRows12661++actualRows12662++actualRows12663++actualRows12664++actualRows12665++actualRows12666++actualRows12667++actualRows12668++actualRows12669++actualRows12670++actualRows12671++actualRows12672++actualRows12673++actualRows12674++actualRows12675++actualRows12676++actualRows12677++actualRows12678++actualRows12679++actualRows12680++actualRows12681++actualRows12682++actualRows12683++actualRows12684++actualRows12685++actualRows12686++actualRows12687++actualRows12688++actualRows12689++actualRows12690++actualRows12691++actualRows12692++actualRows12693++actualRows12694++actualRows12695++actualRows12696++actualRows12697++actualRows12698++actualRows12699++actualRows12700++actualRows12701++actualRows12702++actualRows12703
def partOps196 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 12639 12640,.band 12641 10333,.literal (BitVec.ofNat 32 3),.bxor 442 12643,.literal (BitVec.ofNat 32 0),.bnot 12645,.band 12644 12646,.literal (BitVec.ofNat 32 3),.bxor 442 12648,.literal (BitVec.ofNat 32 0),.bnot 12650,.bxor 12649 12651,.literal (BitVec.ofNat 32 3),.bxor 442 12653,.literal (BitVec.ofNat 32 0),.bnot 12655,.badd 12654 12656,.bnot 12657,.band 12652 12658,.bxor 12647 12659,.shr 12660 31,.literal (BitVec.ofNat 32 1),.bxor 12661 12662,.bnot 12663,.literal (BitVec.ofNat 32 1),.badd 12664 12665,.bnot 12666,.band 12667 9802,.bxor 12642 12668,.literal (BitVec.ofNat 32 3),.bxor 442 12670,.literal (BitVec.ofNat 32 0),.bnot 12672,.band 12671 12673,.literal (BitVec.ofNat 32 3),.bxor 442 12675,.literal (BitVec.ofNat 32 0),.bnot 12677,.bxor 12676 12678,.literal (BitVec.ofNat 32 3),.bxor 442 12680,.literal (BitVec.ofNat 32 0),.bnot 12682,.badd 12681 12683,.bnot 12684,.band 12679 12685,.bxor 12674 12686,.shr 12687 31,.literal (BitVec.ofNat 32 1),.bxor 12688 12689,.bnot 12690,.literal (BitVec.ofNat 32 1),.badd 12691 12692,.band 12693 10344,.literal (BitVec.ofNat 32 3),.bxor 442 12695,.literal (BitVec.ofNat 32 0),.bnot 12697,.band 12696 12698,.literal (BitVec.ofNat 32 3),.bxor 442 12700,.literal (BitVec.ofNat 32 0),.bnot 12702]
theorem partExact196 : partRows196=WordField.rows actualModulus 12640 partOps196 := by
  simp only [partRows196,partOps196,WordField.rows,rows12640,rows12641,rows12642,rows12643,rows12644,rows12645,rows12646,rows12647,rows12648,rows12649,rows12650,rows12651,rows12652,rows12653,rows12654,rows12655,rows12656,rows12657,rows12658,rows12659,rows12660,rows12661,rows12662,rows12663,rows12664,rows12665,rows12666,rows12667,rows12668,rows12669,rows12670,rows12671,rows12672,rows12673,rows12674,rows12675,rows12676,rows12677,rows12678,rows12679,rows12680,rows12681,rows12682,rows12683,rows12684,rows12685,rows12686,rows12687,rows12688,rows12689,rows12690,rows12691,rows12692,rows12693,rows12694,rows12695,rows12696,rows12697,rows12698,rows12699,rows12700,rows12701,rows12702,rows12703,List.append_assoc,List.append_nil]
theorem partLength196 : partOps196.length=64 := by decide
theorem partStats196 : partRows196.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows196=327456 := by
  simp only [partRows196,List.length_append,MatrixRowBlocks.rows_weight_append,stats12640.1,stats12640.2,stats12641.1,stats12641.2,stats12642.1,stats12642.2,stats12643.1,stats12643.2,stats12644.1,stats12644.2,stats12645.1,stats12645.2,stats12646.1,stats12646.2,stats12647.1,stats12647.2,stats12648.1,stats12648.2,stats12649.1,stats12649.2,stats12650.1,stats12650.2,stats12651.1,stats12651.2,stats12652.1,stats12652.2,stats12653.1,stats12653.2,stats12654.1,stats12654.2,stats12655.1,stats12655.2,stats12656.1,stats12656.2,stats12657.1,stats12657.2,stats12658.1,stats12658.2,stats12659.1,stats12659.2,stats12660.1,stats12660.2,stats12661.1,stats12661.2,stats12662.1,stats12662.2,stats12663.1,stats12663.2,stats12664.1,stats12664.2,stats12665.1,stats12665.2,stats12666.1,stats12666.2,stats12667.1,stats12667.2,stats12668.1,stats12668.2,stats12669.1,stats12669.2,stats12670.1,stats12670.2,stats12671.1,stats12671.2,stats12672.1,stats12672.2,stats12673.1,stats12673.2,stats12674.1,stats12674.2,stats12675.1,stats12675.2,stats12676.1,stats12676.2,stats12677.1,stats12677.2,stats12678.1,stats12678.2,stats12679.1,stats12679.2,stats12680.1,stats12680.2,stats12681.1,stats12681.2,stats12682.1,stats12682.2,stats12683.1,stats12683.2,stats12684.1,stats12684.2,stats12685.1,stats12685.2,stats12686.1,stats12686.2,stats12687.1,stats12687.2,stats12688.1,stats12688.2,stats12689.1,stats12689.2,stats12690.1,stats12690.2,stats12691.1,stats12691.2,stats12692.1,stats12692.2,stats12693.1,stats12693.2,stats12694.1,stats12694.2,stats12695.1,stats12695.2,stats12696.1,stats12696.2,stats12697.1,stats12697.2,stats12698.1,stats12698.2,stats12699.1,stats12699.2,stats12700.1,stats12700.2,stats12701.1,stats12701.2,stats12702.1,stats12702.2,stats12703.1,stats12703.2]
  decide
end QuotedPairedPathRoundCheckedRows
