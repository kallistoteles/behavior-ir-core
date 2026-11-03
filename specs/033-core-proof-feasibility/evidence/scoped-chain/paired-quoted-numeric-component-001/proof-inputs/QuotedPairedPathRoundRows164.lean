import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData165
import PairedPathRoundInstructionMatrixData166
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10592 : actualRows10592=WordField.canonicalRows actualModulus 10592 (.band 10300 10311) := by core033_kernel_decide
theorem stats10592 : actualRows10592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10592=5124 := by core033_kernel_decide
theorem rows10593 : actualRows10593=WordField.canonicalRows actualModulus 10593 (.shr 10278 1) := by core033_kernel_decide
theorem stats10593 : actualRows10593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10593=5052 := by core033_kernel_decide
theorem rows10594 : actualRows10594=WordField.canonicalRows actualModulus 10594 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10594 : actualRows10594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10594=2820 := by core033_kernel_decide
theorem rows10595 : actualRows10595=WordField.canonicalRows actualModulus 10595 (.bnot 10594) := by core033_kernel_decide
theorem stats10595 : actualRows10595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10595=6276 := by core033_kernel_decide
theorem rows10596 : actualRows10596=WordField.canonicalRows actualModulus 10596 (.band 10593 10595) := by core033_kernel_decide
theorem stats10596 : actualRows10596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10596=5124 := by core033_kernel_decide
theorem rows10597 : actualRows10597=WordField.canonicalRows actualModulus 10597 (.shr 10278 1) := by core033_kernel_decide
theorem stats10597 : actualRows10597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10597=5052 := by core033_kernel_decide
theorem rows10598 : actualRows10598=WordField.canonicalRows actualModulus 10598 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10598 : actualRows10598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10598=2820 := by core033_kernel_decide
theorem rows10599 : actualRows10599=WordField.canonicalRows actualModulus 10599 (.bnot 10598) := by core033_kernel_decide
theorem stats10599 : actualRows10599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10599=6276 := by core033_kernel_decide
theorem rows10600 : actualRows10600=WordField.canonicalRows actualModulus 10600 (.bxor 10597 10599) := by core033_kernel_decide
theorem stats10600 : actualRows10600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10600=7428 := by core033_kernel_decide
theorem rows10601 : actualRows10601=WordField.canonicalRows actualModulus 10601 (.shr 10278 1) := by core033_kernel_decide
theorem stats10601 : actualRows10601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10601=5052 := by core033_kernel_decide
theorem rows10602 : actualRows10602=WordField.canonicalRows actualModulus 10602 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10602 : actualRows10602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10602=2820 := by core033_kernel_decide
theorem rows10603 : actualRows10603=WordField.canonicalRows actualModulus 10603 (.bnot 10602) := by core033_kernel_decide
theorem stats10603 : actualRows10603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10603=6276 := by core033_kernel_decide
theorem rows10604 : actualRows10604=WordField.canonicalRows actualModulus 10604 (.badd 10601 10603) := by core033_kernel_decide
theorem stats10604 : actualRows10604.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10604=5388 := by core033_kernel_decide
theorem rows10605 : actualRows10605=WordField.canonicalRows actualModulus 10605 (.bnot 10604) := by core033_kernel_decide
theorem stats10605 : actualRows10605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10605=6276 := by core033_kernel_decide
theorem rows10606 : actualRows10606=WordField.canonicalRows actualModulus 10606 (.band 10600 10605) := by core033_kernel_decide
theorem stats10606 : actualRows10606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10606=5124 := by core033_kernel_decide
theorem rows10607 : actualRows10607=WordField.canonicalRows actualModulus 10607 (.bxor 10596 10606) := by core033_kernel_decide
theorem stats10607 : actualRows10607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10607=7428 := by core033_kernel_decide
theorem rows10608 : actualRows10608=WordField.canonicalRows actualModulus 10608 (.shr 10607 31) := by core033_kernel_decide
theorem stats10608 : actualRows10608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10608=2892 := by core033_kernel_decide
theorem rows10609 : actualRows10609=WordField.canonicalRows actualModulus 10609 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10609 : actualRows10609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10609=2892 := by core033_kernel_decide
theorem rows10610 : actualRows10610=WordField.canonicalRows actualModulus 10610 (.bxor 10608 10609) := by core033_kernel_decide
theorem stats10610 : actualRows10610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10610=7428 := by core033_kernel_decide
theorem rows10611 : actualRows10611=WordField.canonicalRows actualModulus 10611 (.shr 10289 1) := by core033_kernel_decide
theorem stats10611 : actualRows10611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10611=5052 := by core033_kernel_decide
theorem rows10612 : actualRows10612=WordField.canonicalRows actualModulus 10612 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10612 : actualRows10612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10612=2820 := by core033_kernel_decide
theorem rows10613 : actualRows10613=WordField.canonicalRows actualModulus 10613 (.bnot 10612) := by core033_kernel_decide
theorem stats10613 : actualRows10613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10613=6276 := by core033_kernel_decide
theorem rows10614 : actualRows10614=WordField.canonicalRows actualModulus 10614 (.band 10611 10613) := by core033_kernel_decide
theorem stats10614 : actualRows10614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10614=5124 := by core033_kernel_decide
theorem rows10615 : actualRows10615=WordField.canonicalRows actualModulus 10615 (.shr 10289 1) := by core033_kernel_decide
theorem stats10615 : actualRows10615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10615=5052 := by core033_kernel_decide
theorem rows10616 : actualRows10616=WordField.canonicalRows actualModulus 10616 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10616 : actualRows10616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10616=2820 := by core033_kernel_decide
theorem rows10617 : actualRows10617=WordField.canonicalRows actualModulus 10617 (.bnot 10616) := by core033_kernel_decide
theorem stats10617 : actualRows10617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10617=6276 := by core033_kernel_decide
theorem rows10618 : actualRows10618=WordField.canonicalRows actualModulus 10618 (.bxor 10615 10617) := by core033_kernel_decide
theorem stats10618 : actualRows10618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10618=7428 := by core033_kernel_decide
theorem rows10619 : actualRows10619=WordField.canonicalRows actualModulus 10619 (.shr 10289 1) := by core033_kernel_decide
theorem stats10619 : actualRows10619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10619=5052 := by core033_kernel_decide
theorem rows10620 : actualRows10620=WordField.canonicalRows actualModulus 10620 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10620 : actualRows10620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10620=2820 := by core033_kernel_decide
theorem rows10621 : actualRows10621=WordField.canonicalRows actualModulus 10621 (.bnot 10620) := by core033_kernel_decide
theorem stats10621 : actualRows10621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10621=6276 := by core033_kernel_decide
theorem rows10622 : actualRows10622=WordField.canonicalRows actualModulus 10622 (.badd 10619 10621) := by core033_kernel_decide
theorem stats10622 : actualRows10622.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10622=5388 := by core033_kernel_decide
theorem rows10623 : actualRows10623=WordField.canonicalRows actualModulus 10623 (.bnot 10622) := by core033_kernel_decide
theorem stats10623 : actualRows10623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10623=6276 := by core033_kernel_decide
theorem rows10624 : actualRows10624=WordField.canonicalRows actualModulus 10624 (.band 10618 10623) := by core033_kernel_decide
theorem stats10624 : actualRows10624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10624=5124 := by core033_kernel_decide
theorem rows10625 : actualRows10625=WordField.canonicalRows actualModulus 10625 (.bxor 10614 10624) := by core033_kernel_decide
theorem stats10625 : actualRows10625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10625=7428 := by core033_kernel_decide
theorem rows10626 : actualRows10626=WordField.canonicalRows actualModulus 10626 (.shr 10625 31) := by core033_kernel_decide
theorem stats10626 : actualRows10626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10626=2892 := by core033_kernel_decide
theorem rows10627 : actualRows10627=WordField.canonicalRows actualModulus 10627 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10627 : actualRows10627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10627=2892 := by core033_kernel_decide
theorem rows10628 : actualRows10628=WordField.canonicalRows actualModulus 10628 (.bxor 10626 10627) := by core033_kernel_decide
theorem stats10628 : actualRows10628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10628=7428 := by core033_kernel_decide
theorem rows10629 : actualRows10629=WordField.canonicalRows actualModulus 10629 (.shr 10300 1) := by core033_kernel_decide
theorem stats10629 : actualRows10629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10629=5052 := by core033_kernel_decide
theorem rows10630 : actualRows10630=WordField.canonicalRows actualModulus 10630 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10630 : actualRows10630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10630=2820 := by core033_kernel_decide
theorem rows10631 : actualRows10631=WordField.canonicalRows actualModulus 10631 (.bnot 10630) := by core033_kernel_decide
theorem stats10631 : actualRows10631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10631=6276 := by core033_kernel_decide
theorem rows10632 : actualRows10632=WordField.canonicalRows actualModulus 10632 (.band 10629 10631) := by core033_kernel_decide
theorem stats10632 : actualRows10632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10632=5124 := by core033_kernel_decide
theorem rows10633 : actualRows10633=WordField.canonicalRows actualModulus 10633 (.shr 10300 1) := by core033_kernel_decide
theorem stats10633 : actualRows10633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10633=5052 := by core033_kernel_decide
theorem rows10634 : actualRows10634=WordField.canonicalRows actualModulus 10634 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10634 : actualRows10634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10634=2820 := by core033_kernel_decide
theorem rows10635 : actualRows10635=WordField.canonicalRows actualModulus 10635 (.bnot 10634) := by core033_kernel_decide
theorem stats10635 : actualRows10635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10635=6276 := by core033_kernel_decide
theorem rows10636 : actualRows10636=WordField.canonicalRows actualModulus 10636 (.bxor 10633 10635) := by core033_kernel_decide
theorem stats10636 : actualRows10636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10636=7428 := by core033_kernel_decide
theorem rows10637 : actualRows10637=WordField.canonicalRows actualModulus 10637 (.shr 10300 1) := by core033_kernel_decide
theorem stats10637 : actualRows10637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10637=5052 := by core033_kernel_decide
theorem rows10638 : actualRows10638=WordField.canonicalRows actualModulus 10638 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10638 : actualRows10638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10638=2820 := by core033_kernel_decide
theorem rows10639 : actualRows10639=WordField.canonicalRows actualModulus 10639 (.bnot 10638) := by core033_kernel_decide
theorem stats10639 : actualRows10639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10639=6276 := by core033_kernel_decide
theorem rows10640 : actualRows10640=WordField.canonicalRows actualModulus 10640 (.badd 10637 10639) := by core033_kernel_decide
theorem stats10640 : actualRows10640.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10640=5388 := by core033_kernel_decide
theorem rows10641 : actualRows10641=WordField.canonicalRows actualModulus 10641 (.bnot 10640) := by core033_kernel_decide
theorem stats10641 : actualRows10641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10641=6276 := by core033_kernel_decide
theorem rows10642 : actualRows10642=WordField.canonicalRows actualModulus 10642 (.band 10636 10641) := by core033_kernel_decide
theorem stats10642 : actualRows10642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10642=5124 := by core033_kernel_decide
theorem rows10643 : actualRows10643=WordField.canonicalRows actualModulus 10643 (.bxor 10632 10642) := by core033_kernel_decide
theorem stats10643 : actualRows10643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10643=7428 := by core033_kernel_decide
theorem rows10644 : actualRows10644=WordField.canonicalRows actualModulus 10644 (.shr 10643 31) := by core033_kernel_decide
theorem stats10644 : actualRows10644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10644=2892 := by core033_kernel_decide
theorem rows10645 : actualRows10645=WordField.canonicalRows actualModulus 10645 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10645 : actualRows10645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10645=2892 := by core033_kernel_decide
theorem rows10646 : actualRows10646=WordField.canonicalRows actualModulus 10646 (.bxor 10644 10645) := by core033_kernel_decide
theorem stats10646 : actualRows10646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10646=7428 := by core033_kernel_decide
theorem rows10647 : actualRows10647=WordField.canonicalRows actualModulus 10647 (.shr 10311 1) := by core033_kernel_decide
theorem stats10647 : actualRows10647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10647=5052 := by core033_kernel_decide
theorem rows10648 : actualRows10648=WordField.canonicalRows actualModulus 10648 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10648 : actualRows10648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10648=2820 := by core033_kernel_decide
theorem rows10649 : actualRows10649=WordField.canonicalRows actualModulus 10649 (.bnot 10648) := by core033_kernel_decide
theorem stats10649 : actualRows10649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10649=6276 := by core033_kernel_decide
theorem rows10650 : actualRows10650=WordField.canonicalRows actualModulus 10650 (.band 10647 10649) := by core033_kernel_decide
theorem stats10650 : actualRows10650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10650=5124 := by core033_kernel_decide
theorem rows10651 : actualRows10651=WordField.canonicalRows actualModulus 10651 (.shr 10311 1) := by core033_kernel_decide
theorem stats10651 : actualRows10651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10651=5052 := by core033_kernel_decide
theorem rows10652 : actualRows10652=WordField.canonicalRows actualModulus 10652 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10652 : actualRows10652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10652=2820 := by core033_kernel_decide
theorem rows10653 : actualRows10653=WordField.canonicalRows actualModulus 10653 (.bnot 10652) := by core033_kernel_decide
theorem stats10653 : actualRows10653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10653=6276 := by core033_kernel_decide
theorem rows10654 : actualRows10654=WordField.canonicalRows actualModulus 10654 (.bxor 10651 10653) := by core033_kernel_decide
theorem stats10654 : actualRows10654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10654=7428 := by core033_kernel_decide
theorem rows10655 : actualRows10655=WordField.canonicalRows actualModulus 10655 (.shr 10311 1) := by core033_kernel_decide
theorem stats10655 : actualRows10655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10655=5052 := by core033_kernel_decide
def partRows164 : List R1CS.Row := actualRows10592++actualRows10593++actualRows10594++actualRows10595++actualRows10596++actualRows10597++actualRows10598++actualRows10599++actualRows10600++actualRows10601++actualRows10602++actualRows10603++actualRows10604++actualRows10605++actualRows10606++actualRows10607++actualRows10608++actualRows10609++actualRows10610++actualRows10611++actualRows10612++actualRows10613++actualRows10614++actualRows10615++actualRows10616++actualRows10617++actualRows10618++actualRows10619++actualRows10620++actualRows10621++actualRows10622++actualRows10623++actualRows10624++actualRows10625++actualRows10626++actualRows10627++actualRows10628++actualRows10629++actualRows10630++actualRows10631++actualRows10632++actualRows10633++actualRows10634++actualRows10635++actualRows10636++actualRows10637++actualRows10638++actualRows10639++actualRows10640++actualRows10641++actualRows10642++actualRows10643++actualRows10644++actualRows10645++actualRows10646++actualRows10647++actualRows10648++actualRows10649++actualRows10650++actualRows10651++actualRows10652++actualRows10653++actualRows10654++actualRows10655
def partOps164 : List WordIR.Op := [.band 10300 10311,.shr 10278 1,.literal (BitVec.ofNat 32 0),.bnot 10594,.band 10593 10595,.shr 10278 1,.literal (BitVec.ofNat 32 0),.bnot 10598,.bxor 10597 10599,.shr 10278 1,.literal (BitVec.ofNat 32 0),.bnot 10602,.badd 10601 10603,.bnot 10604,.band 10600 10605,.bxor 10596 10606,.shr 10607 31,.literal (BitVec.ofNat 32 1),.bxor 10608 10609,.shr 10289 1,.literal (BitVec.ofNat 32 0),.bnot 10612,.band 10611 10613,.shr 10289 1,.literal (BitVec.ofNat 32 0),.bnot 10616,.bxor 10615 10617,.shr 10289 1,.literal (BitVec.ofNat 32 0),.bnot 10620,.badd 10619 10621,.bnot 10622,.band 10618 10623,.bxor 10614 10624,.shr 10625 31,.literal (BitVec.ofNat 32 1),.bxor 10626 10627,.shr 10300 1,.literal (BitVec.ofNat 32 0),.bnot 10630,.band 10629 10631,.shr 10300 1,.literal (BitVec.ofNat 32 0),.bnot 10634,.bxor 10633 10635,.shr 10300 1,.literal (BitVec.ofNat 32 0),.bnot 10638,.badd 10637 10639,.bnot 10640,.band 10636 10641,.bxor 10632 10642,.shr 10643 31,.literal (BitVec.ofNat 32 1),.bxor 10644 10645,.shr 10311 1,.literal (BitVec.ofNat 32 0),.bnot 10648,.band 10647 10649,.shr 10311 1,.literal (BitVec.ofNat 32 0),.bnot 10652,.bxor 10651 10653,.shr 10311 1]
theorem partExact164 : partRows164=WordField.rows actualModulus 10592 partOps164 := by
  simp only [partRows164,partOps164,WordField.rows,rows10592,rows10593,rows10594,rows10595,rows10596,rows10597,rows10598,rows10599,rows10600,rows10601,rows10602,rows10603,rows10604,rows10605,rows10606,rows10607,rows10608,rows10609,rows10610,rows10611,rows10612,rows10613,rows10614,rows10615,rows10616,rows10617,rows10618,rows10619,rows10620,rows10621,rows10622,rows10623,rows10624,rows10625,rows10626,rows10627,rows10628,rows10629,rows10630,rows10631,rows10632,rows10633,rows10634,rows10635,rows10636,rows10637,rows10638,rows10639,rows10640,rows10641,rows10642,rows10643,rows10644,rows10645,rows10646,rows10647,rows10648,rows10649,rows10650,rows10651,rows10652,rows10653,rows10654,rows10655,List.append_assoc,List.append_nil]
theorem partLength164 : partOps164.length=64 := by decide
theorem partStats164 : partRows164.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows164=328296 := by
  simp only [partRows164,List.length_append,MatrixRowBlocks.rows_weight_append,stats10592.1,stats10592.2,stats10593.1,stats10593.2,stats10594.1,stats10594.2,stats10595.1,stats10595.2,stats10596.1,stats10596.2,stats10597.1,stats10597.2,stats10598.1,stats10598.2,stats10599.1,stats10599.2,stats10600.1,stats10600.2,stats10601.1,stats10601.2,stats10602.1,stats10602.2,stats10603.1,stats10603.2,stats10604.1,stats10604.2,stats10605.1,stats10605.2,stats10606.1,stats10606.2,stats10607.1,stats10607.2,stats10608.1,stats10608.2,stats10609.1,stats10609.2,stats10610.1,stats10610.2,stats10611.1,stats10611.2,stats10612.1,stats10612.2,stats10613.1,stats10613.2,stats10614.1,stats10614.2,stats10615.1,stats10615.2,stats10616.1,stats10616.2,stats10617.1,stats10617.2,stats10618.1,stats10618.2,stats10619.1,stats10619.2,stats10620.1,stats10620.2,stats10621.1,stats10621.2,stats10622.1,stats10622.2,stats10623.1,stats10623.2,stats10624.1,stats10624.2,stats10625.1,stats10625.2,stats10626.1,stats10626.2,stats10627.1,stats10627.2,stats10628.1,stats10628.2,stats10629.1,stats10629.2,stats10630.1,stats10630.2,stats10631.1,stats10631.2,stats10632.1,stats10632.2,stats10633.1,stats10633.2,stats10634.1,stats10634.2,stats10635.1,stats10635.2,stats10636.1,stats10636.2,stats10637.1,stats10637.2,stats10638.1,stats10638.2,stats10639.1,stats10639.2,stats10640.1,stats10640.2,stats10641.1,stats10641.2,stats10642.1,stats10642.2,stats10643.1,stats10643.2,stats10644.1,stats10644.2,stats10645.1,stats10645.2,stats10646.1,stats10646.2,stats10647.1,stats10647.2,stats10648.1,stats10648.2,stats10649.1,stats10649.2,stats10650.1,stats10650.2,stats10651.1,stats10651.2,stats10652.1,stats10652.2,stats10653.1,stats10653.2,stats10654.1,stats10654.2,stats10655.1,stats10655.2]
  decide
end QuotedPairedPathRoundCheckedRows
