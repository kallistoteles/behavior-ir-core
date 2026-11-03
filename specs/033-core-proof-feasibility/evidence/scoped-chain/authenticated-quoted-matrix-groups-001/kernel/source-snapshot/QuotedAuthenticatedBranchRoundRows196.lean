import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData197
import AuthenticatedBranchRoundInstructionMatrixData198
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12662 : actualRows12662=WordField.canonicalRows actualModulus 12662 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12662 : actualRows12662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12662=2820 := by core033_kernel_decide
theorem rows12663 : actualRows12663=WordField.canonicalRows actualModulus 12663 (.bnot 12662) := by core033_kernel_decide
theorem stats12663 : actualRows12663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12663=6276 := by core033_kernel_decide
theorem rows12664 : actualRows12664=WordField.canonicalRows actualModulus 12664 (.badd 12661 12663) := by core033_kernel_decide
theorem stats12664 : actualRows12664.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12664=5388 := by core033_kernel_decide
theorem rows12665 : actualRows12665=WordField.canonicalRows actualModulus 12665 (.bnot 12664) := by core033_kernel_decide
theorem stats12665 : actualRows12665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12665=6276 := by core033_kernel_decide
theorem rows12666 : actualRows12666=WordField.canonicalRows actualModulus 12666 (.band 12659 12665) := by core033_kernel_decide
theorem stats12666 : actualRows12666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12666=5124 := by core033_kernel_decide
theorem rows12667 : actualRows12667=WordField.canonicalRows actualModulus 12667 (.bxor 12654 12666) := by core033_kernel_decide
theorem stats12667 : actualRows12667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12667=7428 := by core033_kernel_decide
theorem rows12668 : actualRows12668=WordField.canonicalRows actualModulus 12668 (.shr 12667 31) := by core033_kernel_decide
theorem stats12668 : actualRows12668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12668=2892 := by core033_kernel_decide
theorem rows12669 : actualRows12669=WordField.canonicalRows actualModulus 12669 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12669 : actualRows12669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12669=2892 := by core033_kernel_decide
theorem rows12670 : actualRows12670=WordField.canonicalRows actualModulus 12670 (.bxor 12668 12669) := by core033_kernel_decide
theorem stats12670 : actualRows12670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12670=7428 := by core033_kernel_decide
theorem rows12671 : actualRows12671=WordField.canonicalRows actualModulus 12671 (.bnot 12670) := by core033_kernel_decide
theorem stats12671 : actualRows12671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12671=6276 := by core033_kernel_decide
theorem rows12672 : actualRows12672=WordField.canonicalRows actualModulus 12672 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12672 : actualRows12672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12672=2892 := by core033_kernel_decide
theorem rows12673 : actualRows12673=WordField.canonicalRows actualModulus 12673 (.badd 12671 12672) := by core033_kernel_decide
theorem stats12673 : actualRows12673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12673=5388 := by core033_kernel_decide
theorem rows12674 : actualRows12674=WordField.canonicalRows actualModulus 12674 (.bnot 12673) := by core033_kernel_decide
theorem stats12674 : actualRows12674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12674=6276 := by core033_kernel_decide
theorem rows12675 : actualRows12675=WordField.canonicalRows actualModulus 12675 (.band 12674 1552) := by core033_kernel_decide
theorem stats12675 : actualRows12675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12675=5124 := by core033_kernel_decide
theorem rows12676 : actualRows12676=WordField.canonicalRows actualModulus 12676 (.bxor 12649 12675) := by core033_kernel_decide
theorem stats12676 : actualRows12676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12676=7428 := by core033_kernel_decide
theorem rows12677 : actualRows12677=WordField.canonicalRows actualModulus 12677 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12677 : actualRows12677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12677=2964 := by core033_kernel_decide
theorem rows12678 : actualRows12678=WordField.canonicalRows actualModulus 12678 (.bxor 693 12677) := by core033_kernel_decide
theorem stats12678 : actualRows12678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12678=7428 := by core033_kernel_decide
theorem rows12679 : actualRows12679=WordField.canonicalRows actualModulus 12679 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12679 : actualRows12679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12679=2820 := by core033_kernel_decide
theorem rows12680 : actualRows12680=WordField.canonicalRows actualModulus 12680 (.bnot 12679) := by core033_kernel_decide
theorem stats12680 : actualRows12680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12680=6276 := by core033_kernel_decide
theorem rows12681 : actualRows12681=WordField.canonicalRows actualModulus 12681 (.band 12678 12680) := by core033_kernel_decide
theorem stats12681 : actualRows12681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12681=5124 := by core033_kernel_decide
theorem rows12682 : actualRows12682=WordField.canonicalRows actualModulus 12682 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12682 : actualRows12682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12682=2964 := by core033_kernel_decide
theorem rows12683 : actualRows12683=WordField.canonicalRows actualModulus 12683 (.bxor 693 12682) := by core033_kernel_decide
theorem stats12683 : actualRows12683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12683=7428 := by core033_kernel_decide
theorem rows12684 : actualRows12684=WordField.canonicalRows actualModulus 12684 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12684 : actualRows12684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12684=2820 := by core033_kernel_decide
theorem rows12685 : actualRows12685=WordField.canonicalRows actualModulus 12685 (.bnot 12684) := by core033_kernel_decide
theorem stats12685 : actualRows12685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12685=6276 := by core033_kernel_decide
theorem rows12686 : actualRows12686=WordField.canonicalRows actualModulus 12686 (.bxor 12683 12685) := by core033_kernel_decide
theorem stats12686 : actualRows12686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12686=7428 := by core033_kernel_decide
theorem rows12687 : actualRows12687=WordField.canonicalRows actualModulus 12687 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12687 : actualRows12687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12687=2964 := by core033_kernel_decide
theorem rows12688 : actualRows12688=WordField.canonicalRows actualModulus 12688 (.bxor 693 12687) := by core033_kernel_decide
theorem stats12688 : actualRows12688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12688=7428 := by core033_kernel_decide
theorem rows12689 : actualRows12689=WordField.canonicalRows actualModulus 12689 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12689 : actualRows12689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12689=2820 := by core033_kernel_decide
theorem rows12690 : actualRows12690=WordField.canonicalRows actualModulus 12690 (.bnot 12689) := by core033_kernel_decide
theorem stats12690 : actualRows12690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12690=6276 := by core033_kernel_decide
theorem rows12691 : actualRows12691=WordField.canonicalRows actualModulus 12691 (.badd 12688 12690) := by core033_kernel_decide
theorem stats12691 : actualRows12691.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12691=5388 := by core033_kernel_decide
theorem rows12692 : actualRows12692=WordField.canonicalRows actualModulus 12692 (.bnot 12691) := by core033_kernel_decide
theorem stats12692 : actualRows12692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12692=6276 := by core033_kernel_decide
theorem rows12693 : actualRows12693=WordField.canonicalRows actualModulus 12693 (.band 12686 12692) := by core033_kernel_decide
theorem stats12693 : actualRows12693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12693=5124 := by core033_kernel_decide
theorem rows12694 : actualRows12694=WordField.canonicalRows actualModulus 12694 (.bxor 12681 12693) := by core033_kernel_decide
theorem stats12694 : actualRows12694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12694=7428 := by core033_kernel_decide
theorem rows12695 : actualRows12695=WordField.canonicalRows actualModulus 12695 (.shr 12694 31) := by core033_kernel_decide
theorem stats12695 : actualRows12695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12695=2892 := by core033_kernel_decide
theorem rows12696 : actualRows12696=WordField.canonicalRows actualModulus 12696 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12696 : actualRows12696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12696=2892 := by core033_kernel_decide
theorem rows12697 : actualRows12697=WordField.canonicalRows actualModulus 12697 (.bxor 12695 12696) := by core033_kernel_decide
theorem stats12697 : actualRows12697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12697=7428 := by core033_kernel_decide
theorem rows12698 : actualRows12698=WordField.canonicalRows actualModulus 12698 (.bnot 12697) := by core033_kernel_decide
theorem stats12698 : actualRows12698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12698=6276 := by core033_kernel_decide
theorem rows12699 : actualRows12699=WordField.canonicalRows actualModulus 12699 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12699 : actualRows12699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12699=2892 := by core033_kernel_decide
theorem rows12700 : actualRows12700=WordField.canonicalRows actualModulus 12700 (.badd 12698 12699) := by core033_kernel_decide
theorem stats12700 : actualRows12700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12700=5388 := by core033_kernel_decide
theorem rows12701 : actualRows12701=WordField.canonicalRows actualModulus 12701 (.band 12700 10884) := by core033_kernel_decide
theorem stats12701 : actualRows12701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12701=5124 := by core033_kernel_decide
theorem rows12702 : actualRows12702=WordField.canonicalRows actualModulus 12702 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12702 : actualRows12702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12702=2964 := by core033_kernel_decide
theorem rows12703 : actualRows12703=WordField.canonicalRows actualModulus 12703 (.bxor 693 12702) := by core033_kernel_decide
theorem stats12703 : actualRows12703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12703=7428 := by core033_kernel_decide
theorem rows12704 : actualRows12704=WordField.canonicalRows actualModulus 12704 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12704 : actualRows12704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12704=2820 := by core033_kernel_decide
theorem rows12705 : actualRows12705=WordField.canonicalRows actualModulus 12705 (.bnot 12704) := by core033_kernel_decide
theorem stats12705 : actualRows12705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12705=6276 := by core033_kernel_decide
theorem rows12706 : actualRows12706=WordField.canonicalRows actualModulus 12706 (.band 12703 12705) := by core033_kernel_decide
theorem stats12706 : actualRows12706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12706=5124 := by core033_kernel_decide
theorem rows12707 : actualRows12707=WordField.canonicalRows actualModulus 12707 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12707 : actualRows12707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12707=2964 := by core033_kernel_decide
theorem rows12708 : actualRows12708=WordField.canonicalRows actualModulus 12708 (.bxor 693 12707) := by core033_kernel_decide
theorem stats12708 : actualRows12708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12708=7428 := by core033_kernel_decide
theorem rows12709 : actualRows12709=WordField.canonicalRows actualModulus 12709 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12709 : actualRows12709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12709=2820 := by core033_kernel_decide
theorem rows12710 : actualRows12710=WordField.canonicalRows actualModulus 12710 (.bnot 12709) := by core033_kernel_decide
theorem stats12710 : actualRows12710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12710=6276 := by core033_kernel_decide
theorem rows12711 : actualRows12711=WordField.canonicalRows actualModulus 12711 (.bxor 12708 12710) := by core033_kernel_decide
theorem stats12711 : actualRows12711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12711=7428 := by core033_kernel_decide
theorem rows12712 : actualRows12712=WordField.canonicalRows actualModulus 12712 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12712 : actualRows12712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12712=2964 := by core033_kernel_decide
theorem rows12713 : actualRows12713=WordField.canonicalRows actualModulus 12713 (.bxor 693 12712) := by core033_kernel_decide
theorem stats12713 : actualRows12713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12713=7428 := by core033_kernel_decide
theorem rows12714 : actualRows12714=WordField.canonicalRows actualModulus 12714 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12714 : actualRows12714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12714=2820 := by core033_kernel_decide
theorem rows12715 : actualRows12715=WordField.canonicalRows actualModulus 12715 (.bnot 12714) := by core033_kernel_decide
theorem stats12715 : actualRows12715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12715=6276 := by core033_kernel_decide
theorem rows12716 : actualRows12716=WordField.canonicalRows actualModulus 12716 (.badd 12713 12715) := by core033_kernel_decide
theorem stats12716 : actualRows12716.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12716=5388 := by core033_kernel_decide
theorem rows12717 : actualRows12717=WordField.canonicalRows actualModulus 12717 (.bnot 12716) := by core033_kernel_decide
theorem stats12717 : actualRows12717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12717=6276 := by core033_kernel_decide
theorem rows12718 : actualRows12718=WordField.canonicalRows actualModulus 12718 (.band 12711 12717) := by core033_kernel_decide
theorem stats12718 : actualRows12718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12718=5124 := by core033_kernel_decide
theorem rows12719 : actualRows12719=WordField.canonicalRows actualModulus 12719 (.bxor 12706 12718) := by core033_kernel_decide
theorem stats12719 : actualRows12719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12719=7428 := by core033_kernel_decide
theorem rows12720 : actualRows12720=WordField.canonicalRows actualModulus 12720 (.shr 12719 31) := by core033_kernel_decide
theorem stats12720 : actualRows12720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12720=2892 := by core033_kernel_decide
theorem rows12721 : actualRows12721=WordField.canonicalRows actualModulus 12721 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12721 : actualRows12721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12721=2892 := by core033_kernel_decide
theorem rows12722 : actualRows12722=WordField.canonicalRows actualModulus 12722 (.bxor 12720 12721) := by core033_kernel_decide
theorem stats12722 : actualRows12722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12722=7428 := by core033_kernel_decide
theorem rows12723 : actualRows12723=WordField.canonicalRows actualModulus 12723 (.bnot 12722) := by core033_kernel_decide
theorem stats12723 : actualRows12723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12723=6276 := by core033_kernel_decide
theorem rows12724 : actualRows12724=WordField.canonicalRows actualModulus 12724 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12724 : actualRows12724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12724=2892 := by core033_kernel_decide
theorem rows12725 : actualRows12725=WordField.canonicalRows actualModulus 12725 (.badd 12723 12724) := by core033_kernel_decide
theorem stats12725 : actualRows12725.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12725=5388 := by core033_kernel_decide
def partRows196 : List R1CS.Row := actualRows12662++actualRows12663++actualRows12664++actualRows12665++actualRows12666++actualRows12667++actualRows12668++actualRows12669++actualRows12670++actualRows12671++actualRows12672++actualRows12673++actualRows12674++actualRows12675++actualRows12676++actualRows12677++actualRows12678++actualRows12679++actualRows12680++actualRows12681++actualRows12682++actualRows12683++actualRows12684++actualRows12685++actualRows12686++actualRows12687++actualRows12688++actualRows12689++actualRows12690++actualRows12691++actualRows12692++actualRows12693++actualRows12694++actualRows12695++actualRows12696++actualRows12697++actualRows12698++actualRows12699++actualRows12700++actualRows12701++actualRows12702++actualRows12703++actualRows12704++actualRows12705++actualRows12706++actualRows12707++actualRows12708++actualRows12709++actualRows12710++actualRows12711++actualRows12712++actualRows12713++actualRows12714++actualRows12715++actualRows12716++actualRows12717++actualRows12718++actualRows12719++actualRows12720++actualRows12721++actualRows12722++actualRows12723++actualRows12724++actualRows12725
def partOps196 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 12662,.badd 12661 12663,.bnot 12664,.band 12659 12665,.bxor 12654 12666,.shr 12667 31,.literal (BitVec.ofNat 32 1),.bxor 12668 12669,.bnot 12670,.literal (BitVec.ofNat 32 1),.badd 12671 12672,.bnot 12673,.band 12674 1552,.bxor 12649 12675,.literal (BitVec.ofNat 32 3),.bxor 693 12677,.literal (BitVec.ofNat 32 0),.bnot 12679,.band 12678 12680,.literal (BitVec.ofNat 32 3),.bxor 693 12682,.literal (BitVec.ofNat 32 0),.bnot 12684,.bxor 12683 12685,.literal (BitVec.ofNat 32 3),.bxor 693 12687,.literal (BitVec.ofNat 32 0),.bnot 12689,.badd 12688 12690,.bnot 12691,.band 12686 12692,.bxor 12681 12693,.shr 12694 31,.literal (BitVec.ofNat 32 1),.bxor 12695 12696,.bnot 12697,.literal (BitVec.ofNat 32 1),.badd 12698 12699,.band 12700 10884,.literal (BitVec.ofNat 32 3),.bxor 693 12702,.literal (BitVec.ofNat 32 0),.bnot 12704,.band 12703 12705,.literal (BitVec.ofNat 32 3),.bxor 693 12707,.literal (BitVec.ofNat 32 0),.bnot 12709,.bxor 12708 12710,.literal (BitVec.ofNat 32 3),.bxor 693 12712,.literal (BitVec.ofNat 32 0),.bnot 12714,.badd 12713 12715,.bnot 12716,.band 12711 12717,.bxor 12706 12718,.shr 12719 31,.literal (BitVec.ofNat 32 1),.bxor 12720 12721,.bnot 12722,.literal (BitVec.ofNat 32 1),.badd 12723 12724]
theorem partExact196 : partRows196=WordField.rows actualModulus 12662 partOps196 := by
  simp only [partRows196,partOps196,WordField.rows,rows12662,rows12663,rows12664,rows12665,rows12666,rows12667,rows12668,rows12669,rows12670,rows12671,rows12672,rows12673,rows12674,rows12675,rows12676,rows12677,rows12678,rows12679,rows12680,rows12681,rows12682,rows12683,rows12684,rows12685,rows12686,rows12687,rows12688,rows12689,rows12690,rows12691,rows12692,rows12693,rows12694,rows12695,rows12696,rows12697,rows12698,rows12699,rows12700,rows12701,rows12702,rows12703,rows12704,rows12705,rows12706,rows12707,rows12708,rows12709,rows12710,rows12711,rows12712,rows12713,rows12714,rows12715,rows12716,rows12717,rows12718,rows12719,rows12720,rows12721,rows12722,rows12723,rows12724,rows12725,List.append_assoc,List.append_nil]
theorem partLength196 : partOps196.length=64 := by decide
theorem partStats196 : partRows196.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows196=331032 := by
  simp only [partRows196,List.length_append,MatrixRowBlocks.rows_weight_append,stats12662.1,stats12662.2,stats12663.1,stats12663.2,stats12664.1,stats12664.2,stats12665.1,stats12665.2,stats12666.1,stats12666.2,stats12667.1,stats12667.2,stats12668.1,stats12668.2,stats12669.1,stats12669.2,stats12670.1,stats12670.2,stats12671.1,stats12671.2,stats12672.1,stats12672.2,stats12673.1,stats12673.2,stats12674.1,stats12674.2,stats12675.1,stats12675.2,stats12676.1,stats12676.2,stats12677.1,stats12677.2,stats12678.1,stats12678.2,stats12679.1,stats12679.2,stats12680.1,stats12680.2,stats12681.1,stats12681.2,stats12682.1,stats12682.2,stats12683.1,stats12683.2,stats12684.1,stats12684.2,stats12685.1,stats12685.2,stats12686.1,stats12686.2,stats12687.1,stats12687.2,stats12688.1,stats12688.2,stats12689.1,stats12689.2,stats12690.1,stats12690.2,stats12691.1,stats12691.2,stats12692.1,stats12692.2,stats12693.1,stats12693.2,stats12694.1,stats12694.2,stats12695.1,stats12695.2,stats12696.1,stats12696.2,stats12697.1,stats12697.2,stats12698.1,stats12698.2,stats12699.1,stats12699.2,stats12700.1,stats12700.2,stats12701.1,stats12701.2,stats12702.1,stats12702.2,stats12703.1,stats12703.2,stats12704.1,stats12704.2,stats12705.1,stats12705.2,stats12706.1,stats12706.2,stats12707.1,stats12707.2,stats12708.1,stats12708.2,stats12709.1,stats12709.2,stats12710.1,stats12710.2,stats12711.1,stats12711.2,stats12712.1,stats12712.2,stats12713.1,stats12713.2,stats12714.1,stats12714.2,stats12715.1,stats12715.2,stats12716.1,stats12716.2,stats12717.1,stats12717.2,stats12718.1,stats12718.2,stats12719.1,stats12719.2,stats12720.1,stats12720.2,stats12721.1,stats12721.2,stats12722.1,stats12722.2,stats12723.1,stats12723.2,stats12724.1,stats12724.2,stats12725.1,stats12725.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
