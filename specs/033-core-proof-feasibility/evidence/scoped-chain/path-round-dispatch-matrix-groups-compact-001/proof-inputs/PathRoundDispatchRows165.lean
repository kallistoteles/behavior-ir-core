import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData165
import PathRoundDispatchInstructionMatrixData166
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10603 : actualRows10603=WordField.canonicalRows actualModulus 10603 (.bnot 10602) := by core033_kernel_decide
theorem stats10603 : actualRows10603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10603=6276 := by core033_kernel_decide
theorem rows10604 : actualRows10604=WordField.canonicalRows actualModulus 10604 (.badd 10601 10603) := by core033_kernel_decide
theorem stats10604 : actualRows10604.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10604=5388 := by core033_kernel_decide
theorem rows10605 : actualRows10605=WordField.canonicalRows actualModulus 10605 (.bnot 10604) := by core033_kernel_decide
theorem stats10605 : actualRows10605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10605=6276 := by core033_kernel_decide
theorem rows10606 : actualRows10606=WordField.canonicalRows actualModulus 10606 (.band 10599 10605) := by core033_kernel_decide
theorem stats10606 : actualRows10606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10606=5124 := by core033_kernel_decide
theorem rows10607 : actualRows10607=WordField.canonicalRows actualModulus 10607 (.bxor 10594 10606) := by core033_kernel_decide
theorem stats10607 : actualRows10607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10607=7428 := by core033_kernel_decide
theorem rows10608 : actualRows10608=WordField.canonicalRows actualModulus 10608 (.shr 10607 31) := by core033_kernel_decide
theorem stats10608 : actualRows10608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10608=2892 := by core033_kernel_decide
theorem rows10609 : actualRows10609=WordField.canonicalRows actualModulus 10609 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10609 : actualRows10609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10609=2892 := by core033_kernel_decide
theorem rows10610 : actualRows10610=WordField.canonicalRows actualModulus 10610 (.bxor 10608 10609) := by core033_kernel_decide
theorem stats10610 : actualRows10610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10610=7428 := by core033_kernel_decide
theorem rows10611 : actualRows10611=WordField.canonicalRows actualModulus 10611 (.bnot 10610) := by core033_kernel_decide
theorem stats10611 : actualRows10611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10611=6276 := by core033_kernel_decide
theorem rows10612 : actualRows10612=WordField.canonicalRows actualModulus 10612 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10612 : actualRows10612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10612=2892 := by core033_kernel_decide
theorem rows10613 : actualRows10613=WordField.canonicalRows actualModulus 10613 (.badd 10611 10612) := by core033_kernel_decide
theorem stats10613 : actualRows10613.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10613=5388 := by core033_kernel_decide
theorem rows10614 : actualRows10614=WordField.canonicalRows actualModulus 10614 (.band 10613 9494) := by core033_kernel_decide
theorem stats10614 : actualRows10614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10614=5124 := by core033_kernel_decide
theorem rows10615 : actualRows10615=WordField.canonicalRows actualModulus 10615 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10615 : actualRows10615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10615=2964 := by core033_kernel_decide
theorem rows10616 : actualRows10616=WordField.canonicalRows actualModulus 10616 (.bxor 0 10615) := by core033_kernel_decide
theorem stats10616 : actualRows10616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10616=7428 := by core033_kernel_decide
theorem rows10617 : actualRows10617=WordField.canonicalRows actualModulus 10617 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10617 : actualRows10617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10617=2820 := by core033_kernel_decide
theorem rows10618 : actualRows10618=WordField.canonicalRows actualModulus 10618 (.bnot 10617) := by core033_kernel_decide
theorem stats10618 : actualRows10618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10618=6276 := by core033_kernel_decide
theorem rows10619 : actualRows10619=WordField.canonicalRows actualModulus 10619 (.band 10616 10618) := by core033_kernel_decide
theorem stats10619 : actualRows10619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10619=5124 := by core033_kernel_decide
theorem rows10620 : actualRows10620=WordField.canonicalRows actualModulus 10620 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10620 : actualRows10620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10620=2964 := by core033_kernel_decide
theorem rows10621 : actualRows10621=WordField.canonicalRows actualModulus 10621 (.bxor 0 10620) := by core033_kernel_decide
theorem stats10621 : actualRows10621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10621=7428 := by core033_kernel_decide
theorem rows10622 : actualRows10622=WordField.canonicalRows actualModulus 10622 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10622 : actualRows10622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10622=2820 := by core033_kernel_decide
theorem rows10623 : actualRows10623=WordField.canonicalRows actualModulus 10623 (.bnot 10622) := by core033_kernel_decide
theorem stats10623 : actualRows10623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10623=6276 := by core033_kernel_decide
theorem rows10624 : actualRows10624=WordField.canonicalRows actualModulus 10624 (.bxor 10621 10623) := by core033_kernel_decide
theorem stats10624 : actualRows10624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10624=7428 := by core033_kernel_decide
theorem rows10625 : actualRows10625=WordField.canonicalRows actualModulus 10625 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10625 : actualRows10625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10625=2964 := by core033_kernel_decide
theorem rows10626 : actualRows10626=WordField.canonicalRows actualModulus 10626 (.bxor 0 10625) := by core033_kernel_decide
theorem stats10626 : actualRows10626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10626=7428 := by core033_kernel_decide
theorem rows10627 : actualRows10627=WordField.canonicalRows actualModulus 10627 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10627 : actualRows10627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10627=2820 := by core033_kernel_decide
theorem rows10628 : actualRows10628=WordField.canonicalRows actualModulus 10628 (.bnot 10627) := by core033_kernel_decide
theorem stats10628 : actualRows10628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10628=6276 := by core033_kernel_decide
theorem rows10629 : actualRows10629=WordField.canonicalRows actualModulus 10629 (.badd 10626 10628) := by core033_kernel_decide
theorem stats10629 : actualRows10629.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10629=5388 := by core033_kernel_decide
theorem rows10630 : actualRows10630=WordField.canonicalRows actualModulus 10630 (.bnot 10629) := by core033_kernel_decide
theorem stats10630 : actualRows10630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10630=6276 := by core033_kernel_decide
theorem rows10631 : actualRows10631=WordField.canonicalRows actualModulus 10631 (.band 10624 10630) := by core033_kernel_decide
theorem stats10631 : actualRows10631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10631=5124 := by core033_kernel_decide
theorem rows10632 : actualRows10632=WordField.canonicalRows actualModulus 10632 (.bxor 10619 10631) := by core033_kernel_decide
theorem stats10632 : actualRows10632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10632=7428 := by core033_kernel_decide
theorem rows10633 : actualRows10633=WordField.canonicalRows actualModulus 10633 (.shr 10632 31) := by core033_kernel_decide
theorem stats10633 : actualRows10633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10633=2892 := by core033_kernel_decide
theorem rows10634 : actualRows10634=WordField.canonicalRows actualModulus 10634 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10634 : actualRows10634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10634=2892 := by core033_kernel_decide
theorem rows10635 : actualRows10635=WordField.canonicalRows actualModulus 10635 (.bxor 10633 10634) := by core033_kernel_decide
theorem stats10635 : actualRows10635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10635=7428 := by core033_kernel_decide
theorem rows10636 : actualRows10636=WordField.canonicalRows actualModulus 10636 (.bnot 10635) := by core033_kernel_decide
theorem stats10636 : actualRows10636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10636=6276 := by core033_kernel_decide
theorem rows10637 : actualRows10637=WordField.canonicalRows actualModulus 10637 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10637 : actualRows10637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10637=2892 := by core033_kernel_decide
theorem rows10638 : actualRows10638=WordField.canonicalRows actualModulus 10638 (.badd 10636 10637) := by core033_kernel_decide
theorem stats10638 : actualRows10638.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10638=5388 := by core033_kernel_decide
theorem rows10639 : actualRows10639=WordField.canonicalRows actualModulus 10639 (.bnot 10638) := by core033_kernel_decide
theorem stats10639 : actualRows10639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10639=6276 := by core033_kernel_decide
theorem rows10640 : actualRows10640=WordField.canonicalRows actualModulus 10640 (.band 10639 173) := by core033_kernel_decide
theorem stats10640 : actualRows10640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10640=5124 := by core033_kernel_decide
theorem rows10641 : actualRows10641=WordField.canonicalRows actualModulus 10641 (.bxor 10614 10640) := by core033_kernel_decide
theorem stats10641 : actualRows10641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10641=7428 := by core033_kernel_decide
theorem rows10642 : actualRows10642=WordField.canonicalRows actualModulus 10642 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10642 : actualRows10642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10642=2964 := by core033_kernel_decide
theorem rows10643 : actualRows10643=WordField.canonicalRows actualModulus 10643 (.bxor 0 10642) := by core033_kernel_decide
theorem stats10643 : actualRows10643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10643=7428 := by core033_kernel_decide
theorem rows10644 : actualRows10644=WordField.canonicalRows actualModulus 10644 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10644 : actualRows10644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10644=2820 := by core033_kernel_decide
theorem rows10645 : actualRows10645=WordField.canonicalRows actualModulus 10645 (.bnot 10644) := by core033_kernel_decide
theorem stats10645 : actualRows10645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10645=6276 := by core033_kernel_decide
theorem rows10646 : actualRows10646=WordField.canonicalRows actualModulus 10646 (.band 10643 10645) := by core033_kernel_decide
theorem stats10646 : actualRows10646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10646=5124 := by core033_kernel_decide
theorem rows10647 : actualRows10647=WordField.canonicalRows actualModulus 10647 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10647 : actualRows10647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10647=2964 := by core033_kernel_decide
theorem rows10648 : actualRows10648=WordField.canonicalRows actualModulus 10648 (.bxor 0 10647) := by core033_kernel_decide
theorem stats10648 : actualRows10648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10648=7428 := by core033_kernel_decide
theorem rows10649 : actualRows10649=WordField.canonicalRows actualModulus 10649 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10649 : actualRows10649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10649=2820 := by core033_kernel_decide
theorem rows10650 : actualRows10650=WordField.canonicalRows actualModulus 10650 (.bnot 10649) := by core033_kernel_decide
theorem stats10650 : actualRows10650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10650=6276 := by core033_kernel_decide
theorem rows10651 : actualRows10651=WordField.canonicalRows actualModulus 10651 (.bxor 10648 10650) := by core033_kernel_decide
theorem stats10651 : actualRows10651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10651=7428 := by core033_kernel_decide
theorem rows10652 : actualRows10652=WordField.canonicalRows actualModulus 10652 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10652 : actualRows10652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10652=2964 := by core033_kernel_decide
theorem rows10653 : actualRows10653=WordField.canonicalRows actualModulus 10653 (.bxor 0 10652) := by core033_kernel_decide
theorem stats10653 : actualRows10653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10653=7428 := by core033_kernel_decide
theorem rows10654 : actualRows10654=WordField.canonicalRows actualModulus 10654 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10654 : actualRows10654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10654=2820 := by core033_kernel_decide
theorem rows10655 : actualRows10655=WordField.canonicalRows actualModulus 10655 (.bnot 10654) := by core033_kernel_decide
theorem stats10655 : actualRows10655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10655=6276 := by core033_kernel_decide
theorem rows10656 : actualRows10656=WordField.canonicalRows actualModulus 10656 (.badd 10653 10655) := by core033_kernel_decide
theorem stats10656 : actualRows10656.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10656=5388 := by core033_kernel_decide
theorem rows10657 : actualRows10657=WordField.canonicalRows actualModulus 10657 (.bnot 10656) := by core033_kernel_decide
theorem stats10657 : actualRows10657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10657=6276 := by core033_kernel_decide
theorem rows10658 : actualRows10658=WordField.canonicalRows actualModulus 10658 (.band 10651 10657) := by core033_kernel_decide
theorem stats10658 : actualRows10658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10658=5124 := by core033_kernel_decide
theorem rows10659 : actualRows10659=WordField.canonicalRows actualModulus 10659 (.bxor 10646 10658) := by core033_kernel_decide
theorem stats10659 : actualRows10659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10659=7428 := by core033_kernel_decide
theorem rows10660 : actualRows10660=WordField.canonicalRows actualModulus 10660 (.shr 10659 31) := by core033_kernel_decide
theorem stats10660 : actualRows10660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10660=2892 := by core033_kernel_decide
theorem rows10661 : actualRows10661=WordField.canonicalRows actualModulus 10661 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10661 : actualRows10661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10661=2892 := by core033_kernel_decide
theorem rows10662 : actualRows10662=WordField.canonicalRows actualModulus 10662 (.bxor 10660 10661) := by core033_kernel_decide
theorem stats10662 : actualRows10662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10662=7428 := by core033_kernel_decide
theorem rows10663 : actualRows10663=WordField.canonicalRows actualModulus 10663 (.bnot 10662) := by core033_kernel_decide
theorem stats10663 : actualRows10663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10663=6276 := by core033_kernel_decide
theorem rows10664 : actualRows10664=WordField.canonicalRows actualModulus 10664 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10664 : actualRows10664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10664=2892 := by core033_kernel_decide
theorem rows10665 : actualRows10665=WordField.canonicalRows actualModulus 10665 (.badd 10663 10664) := by core033_kernel_decide
theorem stats10665 : actualRows10665.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10665=5388 := by core033_kernel_decide
theorem rows10666 : actualRows10666=WordField.canonicalRows actualModulus 10666 (.band 10665 9505) := by core033_kernel_decide
theorem stats10666 : actualRows10666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10666=5124 := by core033_kernel_decide
def partRows165 : List R1CS.Row := actualRows10603++actualRows10604++actualRows10605++actualRows10606++actualRows10607++actualRows10608++actualRows10609++actualRows10610++actualRows10611++actualRows10612++actualRows10613++actualRows10614++actualRows10615++actualRows10616++actualRows10617++actualRows10618++actualRows10619++actualRows10620++actualRows10621++actualRows10622++actualRows10623++actualRows10624++actualRows10625++actualRows10626++actualRows10627++actualRows10628++actualRows10629++actualRows10630++actualRows10631++actualRows10632++actualRows10633++actualRows10634++actualRows10635++actualRows10636++actualRows10637++actualRows10638++actualRows10639++actualRows10640++actualRows10641++actualRows10642++actualRows10643++actualRows10644++actualRows10645++actualRows10646++actualRows10647++actualRows10648++actualRows10649++actualRows10650++actualRows10651++actualRows10652++actualRows10653++actualRows10654++actualRows10655++actualRows10656++actualRows10657++actualRows10658++actualRows10659++actualRows10660++actualRows10661++actualRows10662++actualRows10663++actualRows10664++actualRows10665++actualRows10666
def partOps165 : List WordIR.Op := [.bnot 10602,.badd 10601 10603,.bnot 10604,.band 10599 10605,.bxor 10594 10606,.shr 10607 31,.literal (BitVec.ofNat 32 1),.bxor 10608 10609,.bnot 10610,.literal (BitVec.ofNat 32 1),.badd 10611 10612,.band 10613 9494,.literal (BitVec.ofNat 32 3),.bxor 0 10615,.literal (BitVec.ofNat 32 0),.bnot 10617,.band 10616 10618,.literal (BitVec.ofNat 32 3),.bxor 0 10620,.literal (BitVec.ofNat 32 0),.bnot 10622,.bxor 10621 10623,.literal (BitVec.ofNat 32 3),.bxor 0 10625,.literal (BitVec.ofNat 32 0),.bnot 10627,.badd 10626 10628,.bnot 10629,.band 10624 10630,.bxor 10619 10631,.shr 10632 31,.literal (BitVec.ofNat 32 1),.bxor 10633 10634,.bnot 10635,.literal (BitVec.ofNat 32 1),.badd 10636 10637,.bnot 10638,.band 10639 173,.bxor 10614 10640,.literal (BitVec.ofNat 32 3),.bxor 0 10642,.literal (BitVec.ofNat 32 0),.bnot 10644,.band 10643 10645,.literal (BitVec.ofNat 32 3),.bxor 0 10647,.literal (BitVec.ofNat 32 0),.bnot 10649,.bxor 10648 10650,.literal (BitVec.ofNat 32 3),.bxor 0 10652,.literal (BitVec.ofNat 32 0),.bnot 10654,.badd 10653 10655,.bnot 10656,.band 10651 10657,.bxor 10646 10658,.shr 10659 31,.literal (BitVec.ofNat 32 1),.bxor 10660 10661,.bnot 10662,.literal (BitVec.ofNat 32 1),.badd 10663 10664,.band 10665 9505]
theorem partExact165 : partRows165=WordField.rows actualModulus 10603 partOps165 := by
  simp only [partRows165,partOps165,WordField.rows,rows10603,rows10604,rows10605,rows10606,rows10607,rows10608,rows10609,rows10610,rows10611,rows10612,rows10613,rows10614,rows10615,rows10616,rows10617,rows10618,rows10619,rows10620,rows10621,rows10622,rows10623,rows10624,rows10625,rows10626,rows10627,rows10628,rows10629,rows10630,rows10631,rows10632,rows10633,rows10634,rows10635,rows10636,rows10637,rows10638,rows10639,rows10640,rows10641,rows10642,rows10643,rows10644,rows10645,rows10646,rows10647,rows10648,rows10649,rows10650,rows10651,rows10652,rows10653,rows10654,rows10655,rows10656,rows10657,rows10658,rows10659,rows10660,rows10661,rows10662,rows10663,rows10664,rows10665,rows10666,List.append_assoc,List.append_nil]
theorem partLength165 : partOps165.length=64 := by decide
theorem partStats165 : partRows165.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows165=333336 := by
  simp only [partRows165,List.length_append,MatrixRowBlocks.rows_weight_append,stats10603.1,stats10603.2,stats10604.1,stats10604.2,stats10605.1,stats10605.2,stats10606.1,stats10606.2,stats10607.1,stats10607.2,stats10608.1,stats10608.2,stats10609.1,stats10609.2,stats10610.1,stats10610.2,stats10611.1,stats10611.2,stats10612.1,stats10612.2,stats10613.1,stats10613.2,stats10614.1,stats10614.2,stats10615.1,stats10615.2,stats10616.1,stats10616.2,stats10617.1,stats10617.2,stats10618.1,stats10618.2,stats10619.1,stats10619.2,stats10620.1,stats10620.2,stats10621.1,stats10621.2,stats10622.1,stats10622.2,stats10623.1,stats10623.2,stats10624.1,stats10624.2,stats10625.1,stats10625.2,stats10626.1,stats10626.2,stats10627.1,stats10627.2,stats10628.1,stats10628.2,stats10629.1,stats10629.2,stats10630.1,stats10630.2,stats10631.1,stats10631.2,stats10632.1,stats10632.2,stats10633.1,stats10633.2,stats10634.1,stats10634.2,stats10635.1,stats10635.2,stats10636.1,stats10636.2,stats10637.1,stats10637.2,stats10638.1,stats10638.2,stats10639.1,stats10639.2,stats10640.1,stats10640.2,stats10641.1,stats10641.2,stats10642.1,stats10642.2,stats10643.1,stats10643.2,stats10644.1,stats10644.2,stats10645.1,stats10645.2,stats10646.1,stats10646.2,stats10647.1,stats10647.2,stats10648.1,stats10648.2,stats10649.1,stats10649.2,stats10650.1,stats10650.2,stats10651.1,stats10651.2,stats10652.1,stats10652.2,stats10653.1,stats10653.2,stats10654.1,stats10654.2,stats10655.1,stats10655.2,stats10656.1,stats10656.2,stats10657.1,stats10657.2,stats10658.1,stats10658.2,stats10659.1,stats10659.2,stats10660.1,stats10660.2,stats10661.1,stats10661.2,stats10662.1,stats10662.2,stats10663.1,stats10663.2,stats10664.1,stats10664.2,stats10665.1,stats10665.2,stats10666.1,stats10666.2]
  decide
end PathRoundDispatchCheckedRows
