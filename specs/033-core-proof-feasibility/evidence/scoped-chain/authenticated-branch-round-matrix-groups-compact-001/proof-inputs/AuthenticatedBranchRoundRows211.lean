import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData212
import AuthenticatedBranchRoundInstructionMatrixData213
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13622 : actualRows13622=WordField.canonicalRows actualModulus 13622 (.bxor 13619 13621) := by core033_kernel_decide
theorem stats13622 : actualRows13622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13622=7428 := by core033_kernel_decide
theorem rows13623 : actualRows13623=WordField.canonicalRows actualModulus 13623 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13623 : actualRows13623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13623=2964 := by core033_kernel_decide
theorem rows13624 : actualRows13624=WordField.canonicalRows actualModulus 13624 (.bxor 693 13623) := by core033_kernel_decide
theorem stats13624 : actualRows13624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13624=7428 := by core033_kernel_decide
theorem rows13625 : actualRows13625=WordField.canonicalRows actualModulus 13625 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13625 : actualRows13625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13625=2820 := by core033_kernel_decide
theorem rows13626 : actualRows13626=WordField.canonicalRows actualModulus 13626 (.bnot 13625) := by core033_kernel_decide
theorem stats13626 : actualRows13626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13626=6276 := by core033_kernel_decide
theorem rows13627 : actualRows13627=WordField.canonicalRows actualModulus 13627 (.badd 13624 13626) := by core033_kernel_decide
theorem stats13627 : actualRows13627.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13627=5388 := by core033_kernel_decide
theorem rows13628 : actualRows13628=WordField.canonicalRows actualModulus 13628 (.bnot 13627) := by core033_kernel_decide
theorem stats13628 : actualRows13628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13628=6276 := by core033_kernel_decide
theorem rows13629 : actualRows13629=WordField.canonicalRows actualModulus 13629 (.band 13622 13628) := by core033_kernel_decide
theorem stats13629 : actualRows13629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13629=5124 := by core033_kernel_decide
theorem rows13630 : actualRows13630=WordField.canonicalRows actualModulus 13630 (.bxor 13617 13629) := by core033_kernel_decide
theorem stats13630 : actualRows13630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13630=7428 := by core033_kernel_decide
theorem rows13631 : actualRows13631=WordField.canonicalRows actualModulus 13631 (.shr 13630 31) := by core033_kernel_decide
theorem stats13631 : actualRows13631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13631=2892 := by core033_kernel_decide
theorem rows13632 : actualRows13632=WordField.canonicalRows actualModulus 13632 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13632 : actualRows13632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13632=2892 := by core033_kernel_decide
theorem rows13633 : actualRows13633=WordField.canonicalRows actualModulus 13633 (.bxor 13631 13632) := by core033_kernel_decide
theorem stats13633 : actualRows13633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13633=7428 := by core033_kernel_decide
theorem rows13634 : actualRows13634=WordField.canonicalRows actualModulus 13634 (.bnot 13633) := by core033_kernel_decide
theorem stats13634 : actualRows13634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13634=6276 := by core033_kernel_decide
theorem rows13635 : actualRows13635=WordField.canonicalRows actualModulus 13635 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13635 : actualRows13635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13635=2892 := by core033_kernel_decide
theorem rows13636 : actualRows13636=WordField.canonicalRows actualModulus 13636 (.badd 13634 13635) := by core033_kernel_decide
theorem stats13636 : actualRows13636.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13636=5388 := by core033_kernel_decide
theorem rows13637 : actualRows13637=WordField.canonicalRows actualModulus 13637 (.band 13636 11082) := by core033_kernel_decide
theorem stats13637 : actualRows13637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13637=5124 := by core033_kernel_decide
theorem rows13638 : actualRows13638=WordField.canonicalRows actualModulus 13638 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13638 : actualRows13638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13638=2964 := by core033_kernel_decide
theorem rows13639 : actualRows13639=WordField.canonicalRows actualModulus 13639 (.bxor 693 13638) := by core033_kernel_decide
theorem stats13639 : actualRows13639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13639=7428 := by core033_kernel_decide
theorem rows13640 : actualRows13640=WordField.canonicalRows actualModulus 13640 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13640 : actualRows13640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13640=2820 := by core033_kernel_decide
theorem rows13641 : actualRows13641=WordField.canonicalRows actualModulus 13641 (.bnot 13640) := by core033_kernel_decide
theorem stats13641 : actualRows13641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13641=6276 := by core033_kernel_decide
theorem rows13642 : actualRows13642=WordField.canonicalRows actualModulus 13642 (.band 13639 13641) := by core033_kernel_decide
theorem stats13642 : actualRows13642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13642=5124 := by core033_kernel_decide
theorem rows13643 : actualRows13643=WordField.canonicalRows actualModulus 13643 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13643 : actualRows13643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13643=2964 := by core033_kernel_decide
theorem rows13644 : actualRows13644=WordField.canonicalRows actualModulus 13644 (.bxor 693 13643) := by core033_kernel_decide
theorem stats13644 : actualRows13644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13644=7428 := by core033_kernel_decide
theorem rows13645 : actualRows13645=WordField.canonicalRows actualModulus 13645 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13645 : actualRows13645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13645=2820 := by core033_kernel_decide
theorem rows13646 : actualRows13646=WordField.canonicalRows actualModulus 13646 (.bnot 13645) := by core033_kernel_decide
theorem stats13646 : actualRows13646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13646=6276 := by core033_kernel_decide
theorem rows13647 : actualRows13647=WordField.canonicalRows actualModulus 13647 (.bxor 13644 13646) := by core033_kernel_decide
theorem stats13647 : actualRows13647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13647=7428 := by core033_kernel_decide
theorem rows13648 : actualRows13648=WordField.canonicalRows actualModulus 13648 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13648 : actualRows13648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13648=2964 := by core033_kernel_decide
theorem rows13649 : actualRows13649=WordField.canonicalRows actualModulus 13649 (.bxor 693 13648) := by core033_kernel_decide
theorem stats13649 : actualRows13649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13649=7428 := by core033_kernel_decide
theorem rows13650 : actualRows13650=WordField.canonicalRows actualModulus 13650 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13650 : actualRows13650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13650=2820 := by core033_kernel_decide
theorem rows13651 : actualRows13651=WordField.canonicalRows actualModulus 13651 (.bnot 13650) := by core033_kernel_decide
theorem stats13651 : actualRows13651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13651=6276 := by core033_kernel_decide
theorem rows13652 : actualRows13652=WordField.canonicalRows actualModulus 13652 (.badd 13649 13651) := by core033_kernel_decide
theorem stats13652 : actualRows13652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13652=5388 := by core033_kernel_decide
theorem rows13653 : actualRows13653=WordField.canonicalRows actualModulus 13653 (.bnot 13652) := by core033_kernel_decide
theorem stats13653 : actualRows13653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13653=6276 := by core033_kernel_decide
theorem rows13654 : actualRows13654=WordField.canonicalRows actualModulus 13654 (.band 13647 13653) := by core033_kernel_decide
theorem stats13654 : actualRows13654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13654=5124 := by core033_kernel_decide
theorem rows13655 : actualRows13655=WordField.canonicalRows actualModulus 13655 (.bxor 13642 13654) := by core033_kernel_decide
theorem stats13655 : actualRows13655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13655=7428 := by core033_kernel_decide
theorem rows13656 : actualRows13656=WordField.canonicalRows actualModulus 13656 (.shr 13655 31) := by core033_kernel_decide
theorem stats13656 : actualRows13656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13656=2892 := by core033_kernel_decide
theorem rows13657 : actualRows13657=WordField.canonicalRows actualModulus 13657 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13657 : actualRows13657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13657=2892 := by core033_kernel_decide
theorem rows13658 : actualRows13658=WordField.canonicalRows actualModulus 13658 (.bxor 13656 13657) := by core033_kernel_decide
theorem stats13658 : actualRows13658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13658=7428 := by core033_kernel_decide
theorem rows13659 : actualRows13659=WordField.canonicalRows actualModulus 13659 (.bnot 13658) := by core033_kernel_decide
theorem stats13659 : actualRows13659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13659=6276 := by core033_kernel_decide
theorem rows13660 : actualRows13660=WordField.canonicalRows actualModulus 13660 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13660 : actualRows13660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13660=2892 := by core033_kernel_decide
theorem rows13661 : actualRows13661=WordField.canonicalRows actualModulus 13661 (.badd 13659 13660) := by core033_kernel_decide
theorem stats13661 : actualRows13661.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13661=5388 := by core033_kernel_decide
theorem rows13662 : actualRows13662=WordField.canonicalRows actualModulus 13662 (.bnot 13661) := by core033_kernel_decide
theorem stats13662 : actualRows13662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13662=6276 := by core033_kernel_decide
theorem rows13663 : actualRows13663=WordField.canonicalRows actualModulus 13663 (.band 13662 10491) := by core033_kernel_decide
theorem stats13663 : actualRows13663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13663=5124 := by core033_kernel_decide
theorem rows13664 : actualRows13664=WordField.canonicalRows actualModulus 13664 (.bxor 13637 13663) := by core033_kernel_decide
theorem stats13664 : actualRows13664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13664=7428 := by core033_kernel_decide
theorem rows13665 : actualRows13665=WordField.canonicalRows actualModulus 13665 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13665 : actualRows13665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13665=2892 := by core033_kernel_decide
theorem rows13666 : actualRows13666=WordField.canonicalRows actualModulus 13666 (.bxor 693 13665) := by core033_kernel_decide
theorem stats13666 : actualRows13666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13666=7428 := by core033_kernel_decide
theorem rows13667 : actualRows13667=WordField.canonicalRows actualModulus 13667 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13667 : actualRows13667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13667=2820 := by core033_kernel_decide
theorem rows13668 : actualRows13668=WordField.canonicalRows actualModulus 13668 (.bnot 13667) := by core033_kernel_decide
theorem stats13668 : actualRows13668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13668=6276 := by core033_kernel_decide
theorem rows13669 : actualRows13669=WordField.canonicalRows actualModulus 13669 (.band 13666 13668) := by core033_kernel_decide
theorem stats13669 : actualRows13669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13669=5124 := by core033_kernel_decide
theorem rows13670 : actualRows13670=WordField.canonicalRows actualModulus 13670 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13670 : actualRows13670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13670=2892 := by core033_kernel_decide
theorem rows13671 : actualRows13671=WordField.canonicalRows actualModulus 13671 (.bxor 693 13670) := by core033_kernel_decide
theorem stats13671 : actualRows13671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13671=7428 := by core033_kernel_decide
theorem rows13672 : actualRows13672=WordField.canonicalRows actualModulus 13672 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13672 : actualRows13672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13672=2820 := by core033_kernel_decide
theorem rows13673 : actualRows13673=WordField.canonicalRows actualModulus 13673 (.bnot 13672) := by core033_kernel_decide
theorem stats13673 : actualRows13673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13673=6276 := by core033_kernel_decide
theorem rows13674 : actualRows13674=WordField.canonicalRows actualModulus 13674 (.bxor 13671 13673) := by core033_kernel_decide
theorem stats13674 : actualRows13674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13674=7428 := by core033_kernel_decide
theorem rows13675 : actualRows13675=WordField.canonicalRows actualModulus 13675 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13675 : actualRows13675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13675=2892 := by core033_kernel_decide
theorem rows13676 : actualRows13676=WordField.canonicalRows actualModulus 13676 (.bxor 693 13675) := by core033_kernel_decide
theorem stats13676 : actualRows13676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13676=7428 := by core033_kernel_decide
theorem rows13677 : actualRows13677=WordField.canonicalRows actualModulus 13677 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13677 : actualRows13677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13677=2820 := by core033_kernel_decide
theorem rows13678 : actualRows13678=WordField.canonicalRows actualModulus 13678 (.bnot 13677) := by core033_kernel_decide
theorem stats13678 : actualRows13678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13678=6276 := by core033_kernel_decide
theorem rows13679 : actualRows13679=WordField.canonicalRows actualModulus 13679 (.badd 13676 13678) := by core033_kernel_decide
theorem stats13679 : actualRows13679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13679=5388 := by core033_kernel_decide
theorem rows13680 : actualRows13680=WordField.canonicalRows actualModulus 13680 (.bnot 13679) := by core033_kernel_decide
theorem stats13680 : actualRows13680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13680=6276 := by core033_kernel_decide
theorem rows13681 : actualRows13681=WordField.canonicalRows actualModulus 13681 (.band 13674 13680) := by core033_kernel_decide
theorem stats13681 : actualRows13681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13681=5124 := by core033_kernel_decide
theorem rows13682 : actualRows13682=WordField.canonicalRows actualModulus 13682 (.bxor 13669 13681) := by core033_kernel_decide
theorem stats13682 : actualRows13682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13682=7428 := by core033_kernel_decide
theorem rows13683 : actualRows13683=WordField.canonicalRows actualModulus 13683 (.shr 13682 31) := by core033_kernel_decide
theorem stats13683 : actualRows13683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13683=2892 := by core033_kernel_decide
theorem rows13684 : actualRows13684=WordField.canonicalRows actualModulus 13684 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13684 : actualRows13684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13684=2892 := by core033_kernel_decide
theorem rows13685 : actualRows13685=WordField.canonicalRows actualModulus 13685 (.bxor 13683 13684) := by core033_kernel_decide
theorem stats13685 : actualRows13685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13685=7428 := by core033_kernel_decide
def partRows211 : List R1CS.Row := actualRows13622++actualRows13623++actualRows13624++actualRows13625++actualRows13626++actualRows13627++actualRows13628++actualRows13629++actualRows13630++actualRows13631++actualRows13632++actualRows13633++actualRows13634++actualRows13635++actualRows13636++actualRows13637++actualRows13638++actualRows13639++actualRows13640++actualRows13641++actualRows13642++actualRows13643++actualRows13644++actualRows13645++actualRows13646++actualRows13647++actualRows13648++actualRows13649++actualRows13650++actualRows13651++actualRows13652++actualRows13653++actualRows13654++actualRows13655++actualRows13656++actualRows13657++actualRows13658++actualRows13659++actualRows13660++actualRows13661++actualRows13662++actualRows13663++actualRows13664++actualRows13665++actualRows13666++actualRows13667++actualRows13668++actualRows13669++actualRows13670++actualRows13671++actualRows13672++actualRows13673++actualRows13674++actualRows13675++actualRows13676++actualRows13677++actualRows13678++actualRows13679++actualRows13680++actualRows13681++actualRows13682++actualRows13683++actualRows13684++actualRows13685
def partOps211 : List WordIR.Op := [.bxor 13619 13621,.literal (BitVec.ofNat 32 3),.bxor 693 13623,.literal (BitVec.ofNat 32 0),.bnot 13625,.badd 13624 13626,.bnot 13627,.band 13622 13628,.bxor 13617 13629,.shr 13630 31,.literal (BitVec.ofNat 32 1),.bxor 13631 13632,.bnot 13633,.literal (BitVec.ofNat 32 1),.badd 13634 13635,.band 13636 11082,.literal (BitVec.ofNat 32 3),.bxor 693 13638,.literal (BitVec.ofNat 32 0),.bnot 13640,.band 13639 13641,.literal (BitVec.ofNat 32 3),.bxor 693 13643,.literal (BitVec.ofNat 32 0),.bnot 13645,.bxor 13644 13646,.literal (BitVec.ofNat 32 3),.bxor 693 13648,.literal (BitVec.ofNat 32 0),.bnot 13650,.badd 13649 13651,.bnot 13652,.band 13647 13653,.bxor 13642 13654,.shr 13655 31,.literal (BitVec.ofNat 32 1),.bxor 13656 13657,.bnot 13658,.literal (BitVec.ofNat 32 1),.badd 13659 13660,.bnot 13661,.band 13662 10491,.bxor 13637 13663,.literal (BitVec.ofNat 32 1),.bxor 693 13665,.literal (BitVec.ofNat 32 0),.bnot 13667,.band 13666 13668,.literal (BitVec.ofNat 32 1),.bxor 693 13670,.literal (BitVec.ofNat 32 0),.bnot 13672,.bxor 13671 13673,.literal (BitVec.ofNat 32 1),.bxor 693 13675,.literal (BitVec.ofNat 32 0),.bnot 13677,.badd 13676 13678,.bnot 13679,.band 13674 13680,.bxor 13669 13681,.shr 13682 31,.literal (BitVec.ofNat 32 1),.bxor 13683 13684]
theorem partExact211 : partRows211=WordField.rows actualModulus 13622 partOps211 := by
  simp only [partRows211,partOps211,WordField.rows,rows13622,rows13623,rows13624,rows13625,rows13626,rows13627,rows13628,rows13629,rows13630,rows13631,rows13632,rows13633,rows13634,rows13635,rows13636,rows13637,rows13638,rows13639,rows13640,rows13641,rows13642,rows13643,rows13644,rows13645,rows13646,rows13647,rows13648,rows13649,rows13650,rows13651,rows13652,rows13653,rows13654,rows13655,rows13656,rows13657,rows13658,rows13659,rows13660,rows13661,rows13662,rows13663,rows13664,rows13665,rows13666,rows13667,rows13668,rows13669,rows13670,rows13671,rows13672,rows13673,rows13674,rows13675,rows13676,rows13677,rows13678,rows13679,rows13680,rows13681,rows13682,rows13683,rows13684,rows13685,List.append_assoc,List.append_nil]
theorem partLength211 : partOps211.length=64 := by decide
theorem partStats211 : partRows211.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows211=334080 := by
  simp only [partRows211,List.length_append,MatrixRowBlocks.rows_weight_append,stats13622.1,stats13622.2,stats13623.1,stats13623.2,stats13624.1,stats13624.2,stats13625.1,stats13625.2,stats13626.1,stats13626.2,stats13627.1,stats13627.2,stats13628.1,stats13628.2,stats13629.1,stats13629.2,stats13630.1,stats13630.2,stats13631.1,stats13631.2,stats13632.1,stats13632.2,stats13633.1,stats13633.2,stats13634.1,stats13634.2,stats13635.1,stats13635.2,stats13636.1,stats13636.2,stats13637.1,stats13637.2,stats13638.1,stats13638.2,stats13639.1,stats13639.2,stats13640.1,stats13640.2,stats13641.1,stats13641.2,stats13642.1,stats13642.2,stats13643.1,stats13643.2,stats13644.1,stats13644.2,stats13645.1,stats13645.2,stats13646.1,stats13646.2,stats13647.1,stats13647.2,stats13648.1,stats13648.2,stats13649.1,stats13649.2,stats13650.1,stats13650.2,stats13651.1,stats13651.2,stats13652.1,stats13652.2,stats13653.1,stats13653.2,stats13654.1,stats13654.2,stats13655.1,stats13655.2,stats13656.1,stats13656.2,stats13657.1,stats13657.2,stats13658.1,stats13658.2,stats13659.1,stats13659.2,stats13660.1,stats13660.2,stats13661.1,stats13661.2,stats13662.1,stats13662.2,stats13663.1,stats13663.2,stats13664.1,stats13664.2,stats13665.1,stats13665.2,stats13666.1,stats13666.2,stats13667.1,stats13667.2,stats13668.1,stats13668.2,stats13669.1,stats13669.2,stats13670.1,stats13670.2,stats13671.1,stats13671.2,stats13672.1,stats13672.2,stats13673.1,stats13673.2,stats13674.1,stats13674.2,stats13675.1,stats13675.2,stats13676.1,stats13676.2,stats13677.1,stats13677.2,stats13678.1,stats13678.2,stats13679.1,stats13679.2,stats13680.1,stats13680.2,stats13681.1,stats13681.2,stats13682.1,stats13682.2,stats13683.1,stats13683.2,stats13684.1,stats13684.2,stats13685.1,stats13685.2]
  decide
end AuthenticatedBranchRoundCheckedRows
