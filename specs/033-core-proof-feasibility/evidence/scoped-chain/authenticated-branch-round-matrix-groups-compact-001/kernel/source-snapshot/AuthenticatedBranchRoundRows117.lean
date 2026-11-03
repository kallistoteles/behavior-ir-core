import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData118
import AuthenticatedBranchRoundInstructionMatrixData119
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7606 : actualRows7606=WordField.canonicalRows actualModulus 7606 (.bxor 7595 7605) := by core033_kernel_decide
theorem stats7606 : actualRows7606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7606=7428 := by core033_kernel_decide
theorem rows7607 : actualRows7607=WordField.canonicalRows actualModulus 7607 (.shr 7606 31) := by core033_kernel_decide
theorem stats7607 : actualRows7607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7607=2892 := by core033_kernel_decide
theorem rows7608 : actualRows7608=WordField.canonicalRows actualModulus 7608 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7608 : actualRows7608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7608=2892 := by core033_kernel_decide
theorem rows7609 : actualRows7609=WordField.canonicalRows actualModulus 7609 (.bxor 7607 7608) := by core033_kernel_decide
theorem stats7609 : actualRows7609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7609=7428 := by core033_kernel_decide
theorem rows7610 : actualRows7610=WordField.canonicalRows actualModulus 7610 (.shr 5414 8) := by core033_kernel_decide
theorem stats7610 : actualRows7610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7610=4548 := by core033_kernel_decide
theorem rows7611 : actualRows7611=WordField.canonicalRows actualModulus 7611 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7611 : actualRows7611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7611=2820 := by core033_kernel_decide
theorem rows7612 : actualRows7612=WordField.canonicalRows actualModulus 7612 (.bnot 7611) := by core033_kernel_decide
theorem stats7612 : actualRows7612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7612=6276 := by core033_kernel_decide
theorem rows7613 : actualRows7613=WordField.canonicalRows actualModulus 7613 (.band 7610 7612) := by core033_kernel_decide
theorem stats7613 : actualRows7613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7613=5124 := by core033_kernel_decide
theorem rows7614 : actualRows7614=WordField.canonicalRows actualModulus 7614 (.shr 5414 8) := by core033_kernel_decide
theorem stats7614 : actualRows7614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7614=4548 := by core033_kernel_decide
theorem rows7615 : actualRows7615=WordField.canonicalRows actualModulus 7615 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7615 : actualRows7615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7615=2820 := by core033_kernel_decide
theorem rows7616 : actualRows7616=WordField.canonicalRows actualModulus 7616 (.bnot 7615) := by core033_kernel_decide
theorem stats7616 : actualRows7616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7616=6276 := by core033_kernel_decide
theorem rows7617 : actualRows7617=WordField.canonicalRows actualModulus 7617 (.bxor 7614 7616) := by core033_kernel_decide
theorem stats7617 : actualRows7617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7617=7428 := by core033_kernel_decide
theorem rows7618 : actualRows7618=WordField.canonicalRows actualModulus 7618 (.shr 5414 8) := by core033_kernel_decide
theorem stats7618 : actualRows7618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7618=4548 := by core033_kernel_decide
theorem rows7619 : actualRows7619=WordField.canonicalRows actualModulus 7619 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7619 : actualRows7619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7619=2820 := by core033_kernel_decide
theorem rows7620 : actualRows7620=WordField.canonicalRows actualModulus 7620 (.bnot 7619) := by core033_kernel_decide
theorem stats7620 : actualRows7620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7620=6276 := by core033_kernel_decide
theorem rows7621 : actualRows7621=WordField.canonicalRows actualModulus 7621 (.badd 7618 7620) := by core033_kernel_decide
theorem stats7621 : actualRows7621.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7621=5388 := by core033_kernel_decide
theorem rows7622 : actualRows7622=WordField.canonicalRows actualModulus 7622 (.bnot 7621) := by core033_kernel_decide
theorem stats7622 : actualRows7622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7622=6276 := by core033_kernel_decide
theorem rows7623 : actualRows7623=WordField.canonicalRows actualModulus 7623 (.band 7617 7622) := by core033_kernel_decide
theorem stats7623 : actualRows7623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7623=5124 := by core033_kernel_decide
theorem rows7624 : actualRows7624=WordField.canonicalRows actualModulus 7624 (.bxor 7613 7623) := by core033_kernel_decide
theorem stats7624 : actualRows7624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7624=7428 := by core033_kernel_decide
theorem rows7625 : actualRows7625=WordField.canonicalRows actualModulus 7625 (.shr 7624 31) := by core033_kernel_decide
theorem stats7625 : actualRows7625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7625=2892 := by core033_kernel_decide
theorem rows7626 : actualRows7626=WordField.canonicalRows actualModulus 7626 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7626 : actualRows7626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7626=2892 := by core033_kernel_decide
theorem rows7627 : actualRows7627=WordField.canonicalRows actualModulus 7627 (.bxor 7625 7626) := by core033_kernel_decide
theorem stats7627 : actualRows7627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7627=7428 := by core033_kernel_decide
theorem rows7628 : actualRows7628=WordField.canonicalRows actualModulus 7628 (.shr 5466 8) := by core033_kernel_decide
theorem stats7628 : actualRows7628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7628=4548 := by core033_kernel_decide
theorem rows7629 : actualRows7629=WordField.canonicalRows actualModulus 7629 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7629 : actualRows7629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7629=2820 := by core033_kernel_decide
theorem rows7630 : actualRows7630=WordField.canonicalRows actualModulus 7630 (.bnot 7629) := by core033_kernel_decide
theorem stats7630 : actualRows7630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7630=6276 := by core033_kernel_decide
theorem rows7631 : actualRows7631=WordField.canonicalRows actualModulus 7631 (.band 7628 7630) := by core033_kernel_decide
theorem stats7631 : actualRows7631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7631=5124 := by core033_kernel_decide
theorem rows7632 : actualRows7632=WordField.canonicalRows actualModulus 7632 (.shr 5466 8) := by core033_kernel_decide
theorem stats7632 : actualRows7632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7632=4548 := by core033_kernel_decide
theorem rows7633 : actualRows7633=WordField.canonicalRows actualModulus 7633 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7633 : actualRows7633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7633=2820 := by core033_kernel_decide
theorem rows7634 : actualRows7634=WordField.canonicalRows actualModulus 7634 (.bnot 7633) := by core033_kernel_decide
theorem stats7634 : actualRows7634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7634=6276 := by core033_kernel_decide
theorem rows7635 : actualRows7635=WordField.canonicalRows actualModulus 7635 (.bxor 7632 7634) := by core033_kernel_decide
theorem stats7635 : actualRows7635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7635=7428 := by core033_kernel_decide
theorem rows7636 : actualRows7636=WordField.canonicalRows actualModulus 7636 (.shr 5466 8) := by core033_kernel_decide
theorem stats7636 : actualRows7636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7636=4548 := by core033_kernel_decide
theorem rows7637 : actualRows7637=WordField.canonicalRows actualModulus 7637 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7637 : actualRows7637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7637=2820 := by core033_kernel_decide
theorem rows7638 : actualRows7638=WordField.canonicalRows actualModulus 7638 (.bnot 7637) := by core033_kernel_decide
theorem stats7638 : actualRows7638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7638=6276 := by core033_kernel_decide
theorem rows7639 : actualRows7639=WordField.canonicalRows actualModulus 7639 (.badd 7636 7638) := by core033_kernel_decide
theorem stats7639 : actualRows7639.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7639=5388 := by core033_kernel_decide
theorem rows7640 : actualRows7640=WordField.canonicalRows actualModulus 7640 (.bnot 7639) := by core033_kernel_decide
theorem stats7640 : actualRows7640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7640=6276 := by core033_kernel_decide
theorem rows7641 : actualRows7641=WordField.canonicalRows actualModulus 7641 (.band 7635 7640) := by core033_kernel_decide
theorem stats7641 : actualRows7641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7641=5124 := by core033_kernel_decide
theorem rows7642 : actualRows7642=WordField.canonicalRows actualModulus 7642 (.bxor 7631 7641) := by core033_kernel_decide
theorem stats7642 : actualRows7642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7642=7428 := by core033_kernel_decide
theorem rows7643 : actualRows7643=WordField.canonicalRows actualModulus 7643 (.shr 7642 31) := by core033_kernel_decide
theorem stats7643 : actualRows7643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7643=2892 := by core033_kernel_decide
theorem rows7644 : actualRows7644=WordField.canonicalRows actualModulus 7644 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7644 : actualRows7644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7644=2892 := by core033_kernel_decide
theorem rows7645 : actualRows7645=WordField.canonicalRows actualModulus 7645 (.bxor 7643 7644) := by core033_kernel_decide
theorem stats7645 : actualRows7645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7645=7428 := by core033_kernel_decide
theorem rows7646 : actualRows7646=WordField.canonicalRows actualModulus 7646 (.shr 5518 8) := by core033_kernel_decide
theorem stats7646 : actualRows7646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7646=4548 := by core033_kernel_decide
theorem rows7647 : actualRows7647=WordField.canonicalRows actualModulus 7647 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7647 : actualRows7647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7647=2820 := by core033_kernel_decide
theorem rows7648 : actualRows7648=WordField.canonicalRows actualModulus 7648 (.bnot 7647) := by core033_kernel_decide
theorem stats7648 : actualRows7648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7648=6276 := by core033_kernel_decide
theorem rows7649 : actualRows7649=WordField.canonicalRows actualModulus 7649 (.band 7646 7648) := by core033_kernel_decide
theorem stats7649 : actualRows7649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7649=5124 := by core033_kernel_decide
theorem rows7650 : actualRows7650=WordField.canonicalRows actualModulus 7650 (.shr 5518 8) := by core033_kernel_decide
theorem stats7650 : actualRows7650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7650=4548 := by core033_kernel_decide
theorem rows7651 : actualRows7651=WordField.canonicalRows actualModulus 7651 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7651 : actualRows7651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7651=2820 := by core033_kernel_decide
theorem rows7652 : actualRows7652=WordField.canonicalRows actualModulus 7652 (.bnot 7651) := by core033_kernel_decide
theorem stats7652 : actualRows7652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7652=6276 := by core033_kernel_decide
theorem rows7653 : actualRows7653=WordField.canonicalRows actualModulus 7653 (.bxor 7650 7652) := by core033_kernel_decide
theorem stats7653 : actualRows7653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7653=7428 := by core033_kernel_decide
theorem rows7654 : actualRows7654=WordField.canonicalRows actualModulus 7654 (.shr 5518 8) := by core033_kernel_decide
theorem stats7654 : actualRows7654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7654=4548 := by core033_kernel_decide
theorem rows7655 : actualRows7655=WordField.canonicalRows actualModulus 7655 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7655 : actualRows7655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7655=2820 := by core033_kernel_decide
theorem rows7656 : actualRows7656=WordField.canonicalRows actualModulus 7656 (.bnot 7655) := by core033_kernel_decide
theorem stats7656 : actualRows7656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7656=6276 := by core033_kernel_decide
theorem rows7657 : actualRows7657=WordField.canonicalRows actualModulus 7657 (.badd 7654 7656) := by core033_kernel_decide
theorem stats7657 : actualRows7657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7657=5388 := by core033_kernel_decide
theorem rows7658 : actualRows7658=WordField.canonicalRows actualModulus 7658 (.bnot 7657) := by core033_kernel_decide
theorem stats7658 : actualRows7658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7658=6276 := by core033_kernel_decide
theorem rows7659 : actualRows7659=WordField.canonicalRows actualModulus 7659 (.band 7653 7658) := by core033_kernel_decide
theorem stats7659 : actualRows7659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7659=5124 := by core033_kernel_decide
theorem rows7660 : actualRows7660=WordField.canonicalRows actualModulus 7660 (.bxor 7649 7659) := by core033_kernel_decide
theorem stats7660 : actualRows7660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7660=7428 := by core033_kernel_decide
theorem rows7661 : actualRows7661=WordField.canonicalRows actualModulus 7661 (.shr 7660 31) := by core033_kernel_decide
theorem stats7661 : actualRows7661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7661=2892 := by core033_kernel_decide
theorem rows7662 : actualRows7662=WordField.canonicalRows actualModulus 7662 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7662 : actualRows7662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7662=2892 := by core033_kernel_decide
theorem rows7663 : actualRows7663=WordField.canonicalRows actualModulus 7663 (.bxor 7661 7662) := by core033_kernel_decide
theorem stats7663 : actualRows7663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7663=7428 := by core033_kernel_decide
theorem rows7664 : actualRows7664=WordField.canonicalRows actualModulus 7664 (.shr 5570 8) := by core033_kernel_decide
theorem stats7664 : actualRows7664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7664=4548 := by core033_kernel_decide
theorem rows7665 : actualRows7665=WordField.canonicalRows actualModulus 7665 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7665 : actualRows7665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7665=2820 := by core033_kernel_decide
theorem rows7666 : actualRows7666=WordField.canonicalRows actualModulus 7666 (.bnot 7665) := by core033_kernel_decide
theorem stats7666 : actualRows7666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7666=6276 := by core033_kernel_decide
theorem rows7667 : actualRows7667=WordField.canonicalRows actualModulus 7667 (.band 7664 7666) := by core033_kernel_decide
theorem stats7667 : actualRows7667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7667=5124 := by core033_kernel_decide
theorem rows7668 : actualRows7668=WordField.canonicalRows actualModulus 7668 (.shr 5570 8) := by core033_kernel_decide
theorem stats7668 : actualRows7668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7668=4548 := by core033_kernel_decide
theorem rows7669 : actualRows7669=WordField.canonicalRows actualModulus 7669 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7669 : actualRows7669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7669=2820 := by core033_kernel_decide
def partRows117 : List R1CS.Row := actualRows7606++actualRows7607++actualRows7608++actualRows7609++actualRows7610++actualRows7611++actualRows7612++actualRows7613++actualRows7614++actualRows7615++actualRows7616++actualRows7617++actualRows7618++actualRows7619++actualRows7620++actualRows7621++actualRows7622++actualRows7623++actualRows7624++actualRows7625++actualRows7626++actualRows7627++actualRows7628++actualRows7629++actualRows7630++actualRows7631++actualRows7632++actualRows7633++actualRows7634++actualRows7635++actualRows7636++actualRows7637++actualRows7638++actualRows7639++actualRows7640++actualRows7641++actualRows7642++actualRows7643++actualRows7644++actualRows7645++actualRows7646++actualRows7647++actualRows7648++actualRows7649++actualRows7650++actualRows7651++actualRows7652++actualRows7653++actualRows7654++actualRows7655++actualRows7656++actualRows7657++actualRows7658++actualRows7659++actualRows7660++actualRows7661++actualRows7662++actualRows7663++actualRows7664++actualRows7665++actualRows7666++actualRows7667++actualRows7668++actualRows7669
def partOps117 : List WordIR.Op := [.bxor 7595 7605,.shr 7606 31,.literal (BitVec.ofNat 32 1),.bxor 7607 7608,.shr 5414 8,.literal (BitVec.ofNat 32 0),.bnot 7611,.band 7610 7612,.shr 5414 8,.literal (BitVec.ofNat 32 0),.bnot 7615,.bxor 7614 7616,.shr 5414 8,.literal (BitVec.ofNat 32 0),.bnot 7619,.badd 7618 7620,.bnot 7621,.band 7617 7622,.bxor 7613 7623,.shr 7624 31,.literal (BitVec.ofNat 32 1),.bxor 7625 7626,.shr 5466 8,.literal (BitVec.ofNat 32 0),.bnot 7629,.band 7628 7630,.shr 5466 8,.literal (BitVec.ofNat 32 0),.bnot 7633,.bxor 7632 7634,.shr 5466 8,.literal (BitVec.ofNat 32 0),.bnot 7637,.badd 7636 7638,.bnot 7639,.band 7635 7640,.bxor 7631 7641,.shr 7642 31,.literal (BitVec.ofNat 32 1),.bxor 7643 7644,.shr 5518 8,.literal (BitVec.ofNat 32 0),.bnot 7647,.band 7646 7648,.shr 5518 8,.literal (BitVec.ofNat 32 0),.bnot 7651,.bxor 7650 7652,.shr 5518 8,.literal (BitVec.ofNat 32 0),.bnot 7655,.badd 7654 7656,.bnot 7657,.band 7653 7658,.bxor 7649 7659,.shr 7660 31,.literal (BitVec.ofNat 32 1),.bxor 7661 7662,.shr 5570 8,.literal (BitVec.ofNat 32 0),.bnot 7665,.band 7664 7666,.shr 5570 8,.literal (BitVec.ofNat 32 0)]
theorem partExact117 : partRows117=WordField.rows actualModulus 7606 partOps117 := by
  simp only [partRows117,partOps117,WordField.rows,rows7606,rows7607,rows7608,rows7609,rows7610,rows7611,rows7612,rows7613,rows7614,rows7615,rows7616,rows7617,rows7618,rows7619,rows7620,rows7621,rows7622,rows7623,rows7624,rows7625,rows7626,rows7627,rows7628,rows7629,rows7630,rows7631,rows7632,rows7633,rows7634,rows7635,rows7636,rows7637,rows7638,rows7639,rows7640,rows7641,rows7642,rows7643,rows7644,rows7645,rows7646,rows7647,rows7648,rows7649,rows7650,rows7651,rows7652,rows7653,rows7654,rows7655,rows7656,rows7657,rows7658,rows7659,rows7660,rows7661,rows7662,rows7663,rows7664,rows7665,rows7666,rows7667,rows7668,rows7669,List.append_assoc,List.append_nil]
theorem partLength117 : partOps117.length=64 := by decide
theorem partStats117 : partRows117.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows117=319512 := by
  simp only [partRows117,List.length_append,MatrixRowBlocks.rows_weight_append,stats7606.1,stats7606.2,stats7607.1,stats7607.2,stats7608.1,stats7608.2,stats7609.1,stats7609.2,stats7610.1,stats7610.2,stats7611.1,stats7611.2,stats7612.1,stats7612.2,stats7613.1,stats7613.2,stats7614.1,stats7614.2,stats7615.1,stats7615.2,stats7616.1,stats7616.2,stats7617.1,stats7617.2,stats7618.1,stats7618.2,stats7619.1,stats7619.2,stats7620.1,stats7620.2,stats7621.1,stats7621.2,stats7622.1,stats7622.2,stats7623.1,stats7623.2,stats7624.1,stats7624.2,stats7625.1,stats7625.2,stats7626.1,stats7626.2,stats7627.1,stats7627.2,stats7628.1,stats7628.2,stats7629.1,stats7629.2,stats7630.1,stats7630.2,stats7631.1,stats7631.2,stats7632.1,stats7632.2,stats7633.1,stats7633.2,stats7634.1,stats7634.2,stats7635.1,stats7635.2,stats7636.1,stats7636.2,stats7637.1,stats7637.2,stats7638.1,stats7638.2,stats7639.1,stats7639.2,stats7640.1,stats7640.2,stats7641.1,stats7641.2,stats7642.1,stats7642.2,stats7643.1,stats7643.2,stats7644.1,stats7644.2,stats7645.1,stats7645.2,stats7646.1,stats7646.2,stats7647.1,stats7647.2,stats7648.1,stats7648.2,stats7649.1,stats7649.2,stats7650.1,stats7650.2,stats7651.1,stats7651.2,stats7652.1,stats7652.2,stats7653.1,stats7653.2,stats7654.1,stats7654.2,stats7655.1,stats7655.2,stats7656.1,stats7656.2,stats7657.1,stats7657.2,stats7658.1,stats7658.2,stats7659.1,stats7659.2,stats7660.1,stats7660.2,stats7661.1,stats7661.2,stats7662.1,stats7662.2,stats7663.1,stats7663.2,stats7664.1,stats7664.2,stats7665.1,stats7665.2,stats7666.1,stats7666.2,stats7667.1,stats7667.2,stats7668.1,stats7668.2,stats7669.1,stats7669.2]
  decide
end AuthenticatedBranchRoundCheckedRows
