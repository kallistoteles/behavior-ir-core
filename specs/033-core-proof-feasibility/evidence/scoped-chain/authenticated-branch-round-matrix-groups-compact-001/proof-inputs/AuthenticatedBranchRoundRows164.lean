import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData165
import AuthenticatedBranchRoundInstructionMatrixData166
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10614 : actualRows10614=WordField.canonicalRows actualModulus 10614 (.bnot 10609) := by core033_kernel_decide
theorem stats10614 : actualRows10614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10614=6276 := by core033_kernel_decide
theorem rows10615 : actualRows10615=WordField.canonicalRows actualModulus 10615 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10615 : actualRows10615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10615=2892 := by core033_kernel_decide
theorem rows10616 : actualRows10616=WordField.canonicalRows actualModulus 10616 (.badd 10614 10615) := by core033_kernel_decide
theorem stats10616 : actualRows10616.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10616=5388 := by core033_kernel_decide
theorem rows10617 : actualRows10617=WordField.canonicalRows actualModulus 10617 (.bnot 10616) := by core033_kernel_decide
theorem stats10617 : actualRows10617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10617=6276 := by core033_kernel_decide
theorem rows10618 : actualRows10618=WordField.canonicalRows actualModulus 10618 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10618 : actualRows10618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10618=2964 := by core033_kernel_decide
theorem rows10619 : actualRows10619=WordField.canonicalRows actualModulus 10619 (.band 10617 10618) := by core033_kernel_decide
theorem stats10619 : actualRows10619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10619=5124 := by core033_kernel_decide
theorem rows10620 : actualRows10620=WordField.canonicalRows actualModulus 10620 (.bxor 10613 10619) := by core033_kernel_decide
theorem stats10620 : actualRows10620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10620=7428 := by core033_kernel_decide
theorem rows10621 : actualRows10621=WordField.canonicalRows actualModulus 10621 (.bnot 10609) := by core033_kernel_decide
theorem stats10621 : actualRows10621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10621=6276 := by core033_kernel_decide
theorem rows10622 : actualRows10622=WordField.canonicalRows actualModulus 10622 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10622 : actualRows10622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10622=2892 := by core033_kernel_decide
theorem rows10623 : actualRows10623=WordField.canonicalRows actualModulus 10623 (.badd 10621 10622) := by core033_kernel_decide
theorem stats10623 : actualRows10623.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10623=5388 := by core033_kernel_decide
theorem rows10624 : actualRows10624=WordField.canonicalRows actualModulus 10624 (.band 10623 703) := by core033_kernel_decide
theorem stats10624 : actualRows10624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10624=5124 := by core033_kernel_decide
theorem rows10625 : actualRows10625=WordField.canonicalRows actualModulus 10625 (.bnot 10609) := by core033_kernel_decide
theorem stats10625 : actualRows10625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10625=6276 := by core033_kernel_decide
theorem rows10626 : actualRows10626=WordField.canonicalRows actualModulus 10626 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10626 : actualRows10626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10626=2892 := by core033_kernel_decide
theorem rows10627 : actualRows10627=WordField.canonicalRows actualModulus 10627 (.badd 10625 10626) := by core033_kernel_decide
theorem stats10627 : actualRows10627.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10627=5388 := by core033_kernel_decide
theorem rows10628 : actualRows10628=WordField.canonicalRows actualModulus 10628 (.bnot 10627) := by core033_kernel_decide
theorem stats10628 : actualRows10628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10628=6276 := by core033_kernel_decide
theorem rows10629 : actualRows10629=WordField.canonicalRows actualModulus 10629 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10629 : actualRows10629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10629=2892 := by core033_kernel_decide
theorem rows10630 : actualRows10630=WordField.canonicalRows actualModulus 10630 (.band 10628 10629) := by core033_kernel_decide
theorem stats10630 : actualRows10630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10630=5124 := by core033_kernel_decide
theorem rows10631 : actualRows10631=WordField.canonicalRows actualModulus 10631 (.bxor 10624 10630) := by core033_kernel_decide
theorem stats10631 : actualRows10631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10631=7428 := by core033_kernel_decide
theorem rows10632 : actualRows10632=WordField.canonicalRows actualModulus 10632 (.bnot 10609) := by core033_kernel_decide
theorem stats10632 : actualRows10632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10632=6276 := by core033_kernel_decide
theorem rows10633 : actualRows10633=WordField.canonicalRows actualModulus 10633 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10633 : actualRows10633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10633=2892 := by core033_kernel_decide
theorem rows10634 : actualRows10634=WordField.canonicalRows actualModulus 10634 (.badd 10632 10633) := by core033_kernel_decide
theorem stats10634 : actualRows10634.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10634=5388 := by core033_kernel_decide
theorem rows10635 : actualRows10635=WordField.canonicalRows actualModulus 10635 (.band 10634 715) := by core033_kernel_decide
theorem stats10635 : actualRows10635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10635=5124 := by core033_kernel_decide
theorem rows10636 : actualRows10636=WordField.canonicalRows actualModulus 10636 (.bnot 10609) := by core033_kernel_decide
theorem stats10636 : actualRows10636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10636=6276 := by core033_kernel_decide
theorem rows10637 : actualRows10637=WordField.canonicalRows actualModulus 10637 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10637 : actualRows10637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10637=2892 := by core033_kernel_decide
theorem rows10638 : actualRows10638=WordField.canonicalRows actualModulus 10638 (.badd 10636 10637) := by core033_kernel_decide
theorem stats10638 : actualRows10638.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10638=5388 := by core033_kernel_decide
theorem rows10639 : actualRows10639=WordField.canonicalRows actualModulus 10639 (.bnot 10638) := by core033_kernel_decide
theorem stats10639 : actualRows10639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10639=6276 := by core033_kernel_decide
theorem rows10640 : actualRows10640=WordField.canonicalRows actualModulus 10640 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10640 : actualRows10640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10640=2820 := by core033_kernel_decide
theorem rows10641 : actualRows10641=WordField.canonicalRows actualModulus 10641 (.band 10639 10640) := by core033_kernel_decide
theorem stats10641 : actualRows10641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10641=5124 := by core033_kernel_decide
theorem rows10642 : actualRows10642=WordField.canonicalRows actualModulus 10642 (.bxor 10635 10641) := by core033_kernel_decide
theorem stats10642 : actualRows10642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10642=7428 := by core033_kernel_decide
theorem rows10643 : actualRows10643=WordField.canonicalRows actualModulus 10643 (.bnot 10609) := by core033_kernel_decide
theorem stats10643 : actualRows10643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10643=6276 := by core033_kernel_decide
theorem rows10644 : actualRows10644=WordField.canonicalRows actualModulus 10644 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10644 : actualRows10644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10644=2892 := by core033_kernel_decide
theorem rows10645 : actualRows10645=WordField.canonicalRows actualModulus 10645 (.badd 10643 10644) := by core033_kernel_decide
theorem stats10645 : actualRows10645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10645=5388 := by core033_kernel_decide
theorem rows10646 : actualRows10646=WordField.canonicalRows actualModulus 10646 (.band 10645 726) := by core033_kernel_decide
theorem stats10646 : actualRows10646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10646=5124 := by core033_kernel_decide
theorem rows10647 : actualRows10647=WordField.canonicalRows actualModulus 10647 (.bnot 10609) := by core033_kernel_decide
theorem stats10647 : actualRows10647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10647=6276 := by core033_kernel_decide
theorem rows10648 : actualRows10648=WordField.canonicalRows actualModulus 10648 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10648 : actualRows10648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10648=2892 := by core033_kernel_decide
theorem rows10649 : actualRows10649=WordField.canonicalRows actualModulus 10649 (.badd 10647 10648) := by core033_kernel_decide
theorem stats10649 : actualRows10649.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10649=5388 := by core033_kernel_decide
theorem rows10650 : actualRows10650=WordField.canonicalRows actualModulus 10650 (.bnot 10649) := by core033_kernel_decide
theorem stats10650 : actualRows10650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10650=6276 := by core033_kernel_decide
theorem rows10651 : actualRows10651=WordField.canonicalRows actualModulus 10651 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10651 : actualRows10651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10651=2820 := by core033_kernel_decide
theorem rows10652 : actualRows10652=WordField.canonicalRows actualModulus 10652 (.band 10650 10651) := by core033_kernel_decide
theorem stats10652 : actualRows10652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10652=5124 := by core033_kernel_decide
theorem rows10653 : actualRows10653=WordField.canonicalRows actualModulus 10653 (.bxor 10646 10652) := by core033_kernel_decide
theorem stats10653 : actualRows10653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10653=7428 := by core033_kernel_decide
theorem rows10654 : actualRows10654=WordField.canonicalRows actualModulus 10654 (.bnot 10609) := by core033_kernel_decide
theorem stats10654 : actualRows10654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10654=6276 := by core033_kernel_decide
theorem rows10655 : actualRows10655=WordField.canonicalRows actualModulus 10655 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10655 : actualRows10655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10655=2892 := by core033_kernel_decide
theorem rows10656 : actualRows10656=WordField.canonicalRows actualModulus 10656 (.badd 10654 10655) := by core033_kernel_decide
theorem stats10656 : actualRows10656.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10656=5388 := by core033_kernel_decide
theorem rows10657 : actualRows10657=WordField.canonicalRows actualModulus 10657 (.band 10656 737) := by core033_kernel_decide
theorem stats10657 : actualRows10657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10657=5124 := by core033_kernel_decide
theorem rows10658 : actualRows10658=WordField.canonicalRows actualModulus 10658 (.bnot 10609) := by core033_kernel_decide
theorem stats10658 : actualRows10658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10658=6276 := by core033_kernel_decide
theorem rows10659 : actualRows10659=WordField.canonicalRows actualModulus 10659 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10659 : actualRows10659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10659=2892 := by core033_kernel_decide
theorem rows10660 : actualRows10660=WordField.canonicalRows actualModulus 10660 (.badd 10658 10659) := by core033_kernel_decide
theorem stats10660 : actualRows10660.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10660=5388 := by core033_kernel_decide
theorem rows10661 : actualRows10661=WordField.canonicalRows actualModulus 10661 (.bnot 10660) := by core033_kernel_decide
theorem stats10661 : actualRows10661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10661=6276 := by core033_kernel_decide
theorem rows10662 : actualRows10662=WordField.canonicalRows actualModulus 10662 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10662 : actualRows10662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10662=2820 := by core033_kernel_decide
theorem rows10663 : actualRows10663=WordField.canonicalRows actualModulus 10663 (.band 10661 10662) := by core033_kernel_decide
theorem stats10663 : actualRows10663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10663=5124 := by core033_kernel_decide
theorem rows10664 : actualRows10664=WordField.canonicalRows actualModulus 10664 (.bxor 10657 10663) := by core033_kernel_decide
theorem stats10664 : actualRows10664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10664=7428 := by core033_kernel_decide
theorem rows10665 : actualRows10665=WordField.canonicalRows actualModulus 10665 (.bnot 10609) := by core033_kernel_decide
theorem stats10665 : actualRows10665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10665=6276 := by core033_kernel_decide
theorem rows10666 : actualRows10666=WordField.canonicalRows actualModulus 10666 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10666 : actualRows10666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10666=2892 := by core033_kernel_decide
theorem rows10667 : actualRows10667=WordField.canonicalRows actualModulus 10667 (.badd 10665 10666) := by core033_kernel_decide
theorem stats10667 : actualRows10667.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10667=5388 := by core033_kernel_decide
theorem rows10668 : actualRows10668=WordField.canonicalRows actualModulus 10668 (.band 10667 748) := by core033_kernel_decide
theorem stats10668 : actualRows10668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10668=5124 := by core033_kernel_decide
theorem rows10669 : actualRows10669=WordField.canonicalRows actualModulus 10669 (.bnot 10609) := by core033_kernel_decide
theorem stats10669 : actualRows10669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10669=6276 := by core033_kernel_decide
theorem rows10670 : actualRows10670=WordField.canonicalRows actualModulus 10670 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10670 : actualRows10670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10670=2892 := by core033_kernel_decide
theorem rows10671 : actualRows10671=WordField.canonicalRows actualModulus 10671 (.badd 10669 10670) := by core033_kernel_decide
theorem stats10671 : actualRows10671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10671=5388 := by core033_kernel_decide
theorem rows10672 : actualRows10672=WordField.canonicalRows actualModulus 10672 (.bnot 10671) := by core033_kernel_decide
theorem stats10672 : actualRows10672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10672=6276 := by core033_kernel_decide
theorem rows10673 : actualRows10673=WordField.canonicalRows actualModulus 10673 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10673 : actualRows10673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10673=2820 := by core033_kernel_decide
theorem rows10674 : actualRows10674=WordField.canonicalRows actualModulus 10674 (.band 10672 10673) := by core033_kernel_decide
theorem stats10674 : actualRows10674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10674=5124 := by core033_kernel_decide
theorem rows10675 : actualRows10675=WordField.canonicalRows actualModulus 10675 (.bxor 10668 10674) := by core033_kernel_decide
theorem stats10675 : actualRows10675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10675=7428 := by core033_kernel_decide
theorem rows10676 : actualRows10676=WordField.canonicalRows actualModulus 10676 (.bnot 10609) := by core033_kernel_decide
theorem stats10676 : actualRows10676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10676=6276 := by core033_kernel_decide
theorem rows10677 : actualRows10677=WordField.canonicalRows actualModulus 10677 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10677 : actualRows10677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10677=2892 := by core033_kernel_decide
def partRows164 : List R1CS.Row := actualRows10614++actualRows10615++actualRows10616++actualRows10617++actualRows10618++actualRows10619++actualRows10620++actualRows10621++actualRows10622++actualRows10623++actualRows10624++actualRows10625++actualRows10626++actualRows10627++actualRows10628++actualRows10629++actualRows10630++actualRows10631++actualRows10632++actualRows10633++actualRows10634++actualRows10635++actualRows10636++actualRows10637++actualRows10638++actualRows10639++actualRows10640++actualRows10641++actualRows10642++actualRows10643++actualRows10644++actualRows10645++actualRows10646++actualRows10647++actualRows10648++actualRows10649++actualRows10650++actualRows10651++actualRows10652++actualRows10653++actualRows10654++actualRows10655++actualRows10656++actualRows10657++actualRows10658++actualRows10659++actualRows10660++actualRows10661++actualRows10662++actualRows10663++actualRows10664++actualRows10665++actualRows10666++actualRows10667++actualRows10668++actualRows10669++actualRows10670++actualRows10671++actualRows10672++actualRows10673++actualRows10674++actualRows10675++actualRows10676++actualRows10677
def partOps164 : List WordIR.Op := [.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10614 10615,.bnot 10616,.literal (BitVec.ofNat 32 3),.band 10617 10618,.bxor 10613 10619,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10621 10622,.band 10623 703,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10625 10626,.bnot 10627,.literal (BitVec.ofNat 32 1),.band 10628 10629,.bxor 10624 10630,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10632 10633,.band 10634 715,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10636 10637,.bnot 10638,.literal (BitVec.ofNat 32 0),.band 10639 10640,.bxor 10635 10641,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10643 10644,.band 10645 726,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10647 10648,.bnot 10649,.literal (BitVec.ofNat 32 0),.band 10650 10651,.bxor 10646 10652,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10654 10655,.band 10656 737,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10658 10659,.bnot 10660,.literal (BitVec.ofNat 32 0),.band 10661 10662,.bxor 10657 10663,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10665 10666,.band 10667 748,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10669 10670,.bnot 10671,.literal (BitVec.ofNat 32 0),.band 10672 10673,.bxor 10668 10674,.bnot 10609,.literal (BitVec.ofNat 32 1)]
theorem partExact164 : partRows164=WordField.rows actualModulus 10614 partOps164 := by
  simp only [partRows164,partOps164,WordField.rows,rows10614,rows10615,rows10616,rows10617,rows10618,rows10619,rows10620,rows10621,rows10622,rows10623,rows10624,rows10625,rows10626,rows10627,rows10628,rows10629,rows10630,rows10631,rows10632,rows10633,rows10634,rows10635,rows10636,rows10637,rows10638,rows10639,rows10640,rows10641,rows10642,rows10643,rows10644,rows10645,rows10646,rows10647,rows10648,rows10649,rows10650,rows10651,rows10652,rows10653,rows10654,rows10655,rows10656,rows10657,rows10658,rows10659,rows10660,rows10661,rows10662,rows10663,rows10664,rows10665,rows10666,rows10667,rows10668,rows10669,rows10670,rows10671,rows10672,rows10673,rows10674,rows10675,rows10676,rows10677,List.append_assoc,List.append_nil]
theorem partLength164 : partOps164.length=64 := by decide
theorem partStats164 : partRows164.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows164=325008 := by
  simp only [partRows164,List.length_append,MatrixRowBlocks.rows_weight_append,stats10614.1,stats10614.2,stats10615.1,stats10615.2,stats10616.1,stats10616.2,stats10617.1,stats10617.2,stats10618.1,stats10618.2,stats10619.1,stats10619.2,stats10620.1,stats10620.2,stats10621.1,stats10621.2,stats10622.1,stats10622.2,stats10623.1,stats10623.2,stats10624.1,stats10624.2,stats10625.1,stats10625.2,stats10626.1,stats10626.2,stats10627.1,stats10627.2,stats10628.1,stats10628.2,stats10629.1,stats10629.2,stats10630.1,stats10630.2,stats10631.1,stats10631.2,stats10632.1,stats10632.2,stats10633.1,stats10633.2,stats10634.1,stats10634.2,stats10635.1,stats10635.2,stats10636.1,stats10636.2,stats10637.1,stats10637.2,stats10638.1,stats10638.2,stats10639.1,stats10639.2,stats10640.1,stats10640.2,stats10641.1,stats10641.2,stats10642.1,stats10642.2,stats10643.1,stats10643.2,stats10644.1,stats10644.2,stats10645.1,stats10645.2,stats10646.1,stats10646.2,stats10647.1,stats10647.2,stats10648.1,stats10648.2,stats10649.1,stats10649.2,stats10650.1,stats10650.2,stats10651.1,stats10651.2,stats10652.1,stats10652.2,stats10653.1,stats10653.2,stats10654.1,stats10654.2,stats10655.1,stats10655.2,stats10656.1,stats10656.2,stats10657.1,stats10657.2,stats10658.1,stats10658.2,stats10659.1,stats10659.2,stats10660.1,stats10660.2,stats10661.1,stats10661.2,stats10662.1,stats10662.2,stats10663.1,stats10663.2,stats10664.1,stats10664.2,stats10665.1,stats10665.2,stats10666.1,stats10666.2,stats10667.1,stats10667.2,stats10668.1,stats10668.2,stats10669.1,stats10669.2,stats10670.1,stats10670.2,stats10671.1,stats10671.2,stats10672.1,stats10672.2,stats10673.1,stats10673.2,stats10674.1,stats10674.2,stats10675.1,stats10675.2,stats10676.1,stats10676.2,stats10677.1,stats10677.2]
  decide
end AuthenticatedBranchRoundCheckedRows
