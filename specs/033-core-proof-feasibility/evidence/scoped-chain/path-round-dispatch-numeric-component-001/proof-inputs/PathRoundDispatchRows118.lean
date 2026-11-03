import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData118
import PathRoundDispatchInstructionMatrixData119
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7595 : actualRows7595=WordField.canonicalRows actualModulus 7595 (.rotr 7578 13) := by core033_kernel_decide
theorem stats7595 : actualRows7595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7595=5124 := by core033_kernel_decide
theorem rows7596 : actualRows7596=WordField.canonicalRows actualModulus 7596 (.bxor 7594 7595) := by core033_kernel_decide
theorem stats7596 : actualRows7596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7596=7428 := by core033_kernel_decide
theorem rows7597 : actualRows7597=WordField.canonicalRows actualModulus 7597 (.rotr 7578 22) := by core033_kernel_decide
theorem stats7597 : actualRows7597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7597=5124 := by core033_kernel_decide
theorem rows7598 : actualRows7598=WordField.canonicalRows actualModulus 7598 (.bxor 7596 7597) := by core033_kernel_decide
theorem stats7598 : actualRows7598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7598=7428 := by core033_kernel_decide
theorem rows7599 : actualRows7599=WordField.canonicalRows actualModulus 7599 (.band 7578 1968) := by core033_kernel_decide
theorem stats7599 : actualRows7599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7599=5124 := by core033_kernel_decide
theorem rows7600 : actualRows7600=WordField.canonicalRows actualModulus 7600 (.band 7578 2021) := by core033_kernel_decide
theorem stats7600 : actualRows7600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7600=5124 := by core033_kernel_decide
theorem rows7601 : actualRows7601=WordField.canonicalRows actualModulus 7601 (.bxor 7599 7600) := by core033_kernel_decide
theorem stats7601 : actualRows7601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7601=7428 := by core033_kernel_decide
theorem rows7602 : actualRows7602=WordField.canonicalRows actualModulus 7602 (.band 1968 2021) := by core033_kernel_decide
theorem stats7602 : actualRows7602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7602=5124 := by core033_kernel_decide
theorem rows7603 : actualRows7603=WordField.canonicalRows actualModulus 7603 (.bxor 7601 7602) := by core033_kernel_decide
theorem stats7603 : actualRows7603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7603=7428 := by core033_kernel_decide
theorem rows7604 : actualRows7604=WordField.canonicalRows actualModulus 7604 (.badd 7598 7603) := by core033_kernel_decide
theorem stats7604 : actualRows7604.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7604=5388 := by core033_kernel_decide
theorem rows7605 : actualRows7605=WordField.canonicalRows actualModulus 7605 (.badd 7593 7604) := by core033_kernel_decide
theorem stats7605 : actualRows7605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7605=5388 := by core033_kernel_decide
theorem rows7606 : actualRows7606=WordField.canonicalRows actualModulus 7606 (.badd 2074 7593) := by core033_kernel_decide
theorem stats7606 : actualRows7606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7606=5388 := by core033_kernel_decide
theorem rows7607 : actualRows7607=WordField.canonicalRows actualModulus 7607 (.rotr 7606 6) := by core033_kernel_decide
theorem stats7607 : actualRows7607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7607=5124 := by core033_kernel_decide
theorem rows7608 : actualRows7608=WordField.canonicalRows actualModulus 7608 (.rotr 7606 11) := by core033_kernel_decide
theorem stats7608 : actualRows7608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7608=5124 := by core033_kernel_decide
theorem rows7609 : actualRows7609=WordField.canonicalRows actualModulus 7609 (.bxor 7607 7608) := by core033_kernel_decide
theorem stats7609 : actualRows7609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7609=7428 := by core033_kernel_decide
theorem rows7610 : actualRows7610=WordField.canonicalRows actualModulus 7610 (.rotr 7606 25) := by core033_kernel_decide
theorem stats7610 : actualRows7610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7610=5124 := by core033_kernel_decide
theorem rows7611 : actualRows7611=WordField.canonicalRows actualModulus 7611 (.bxor 7609 7610) := by core033_kernel_decide
theorem stats7611 : actualRows7611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7611=7428 := by core033_kernel_decide
theorem rows7612 : actualRows7612=WordField.canonicalRows actualModulus 7612 (.badd 2233 7611) := by core033_kernel_decide
theorem stats7612 : actualRows7612.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7612=5388 := by core033_kernel_decide
theorem rows7613 : actualRows7613=WordField.canonicalRows actualModulus 7613 (.band 7606 7579) := by core033_kernel_decide
theorem stats7613 : actualRows7613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7613=5124 := by core033_kernel_decide
theorem rows7614 : actualRows7614=WordField.canonicalRows actualModulus 7614 (.bnot 7606) := by core033_kernel_decide
theorem stats7614 : actualRows7614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7614=6276 := by core033_kernel_decide
theorem rows7615 : actualRows7615=WordField.canonicalRows actualModulus 7615 (.band 7614 2180) := by core033_kernel_decide
theorem stats7615 : actualRows7615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7615=5124 := by core033_kernel_decide
theorem rows7616 : actualRows7616=WordField.canonicalRows actualModulus 7616 (.bxor 7613 7615) := by core033_kernel_decide
theorem stats7616 : actualRows7616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7616=7428 := by core033_kernel_decide
theorem rows7617 : actualRows7617=WordField.canonicalRows actualModulus 7617 (.badd 7612 7616) := by core033_kernel_decide
theorem stats7617 : actualRows7617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7617=5388 := by core033_kernel_decide
theorem rows7618 : actualRows7618=WordField.canonicalRows actualModulus 7618 (.literal (BitVec.ofNat 32 3049323471)) := by core033_kernel_decide
theorem stats7618 : actualRows7618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7618=4260 := by core033_kernel_decide
theorem rows7619 : actualRows7619=WordField.canonicalRows actualModulus 7619 (.badd 7617 7618) := by core033_kernel_decide
theorem stats7619 : actualRows7619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7619=5388 := by core033_kernel_decide
theorem rows7620 : actualRows7620=WordField.canonicalRows actualModulus 7620 (.badd 7619 5698) := by core033_kernel_decide
theorem stats7620 : actualRows7620.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7620=5388 := by core033_kernel_decide
theorem rows7621 : actualRows7621=WordField.canonicalRows actualModulus 7621 (.rotr 7605 2) := by core033_kernel_decide
theorem stats7621 : actualRows7621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7621=5124 := by core033_kernel_decide
theorem rows7622 : actualRows7622=WordField.canonicalRows actualModulus 7622 (.rotr 7605 13) := by core033_kernel_decide
theorem stats7622 : actualRows7622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7622=5124 := by core033_kernel_decide
theorem rows7623 : actualRows7623=WordField.canonicalRows actualModulus 7623 (.bxor 7621 7622) := by core033_kernel_decide
theorem stats7623 : actualRows7623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7623=7428 := by core033_kernel_decide
theorem rows7624 : actualRows7624=WordField.canonicalRows actualModulus 7624 (.rotr 7605 22) := by core033_kernel_decide
theorem stats7624 : actualRows7624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7624=5124 := by core033_kernel_decide
theorem rows7625 : actualRows7625=WordField.canonicalRows actualModulus 7625 (.bxor 7623 7624) := by core033_kernel_decide
theorem stats7625 : actualRows7625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7625=7428 := by core033_kernel_decide
theorem rows7626 : actualRows7626=WordField.canonicalRows actualModulus 7626 (.band 7605 7578) := by core033_kernel_decide
theorem stats7626 : actualRows7626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7626=5124 := by core033_kernel_decide
theorem rows7627 : actualRows7627=WordField.canonicalRows actualModulus 7627 (.band 7605 1968) := by core033_kernel_decide
theorem stats7627 : actualRows7627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7627=5124 := by core033_kernel_decide
theorem rows7628 : actualRows7628=WordField.canonicalRows actualModulus 7628 (.bxor 7626 7627) := by core033_kernel_decide
theorem stats7628 : actualRows7628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7628=7428 := by core033_kernel_decide
theorem rows7629 : actualRows7629=WordField.canonicalRows actualModulus 7629 (.band 7578 1968) := by core033_kernel_decide
theorem stats7629 : actualRows7629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7629=5124 := by core033_kernel_decide
theorem rows7630 : actualRows7630=WordField.canonicalRows actualModulus 7630 (.bxor 7628 7629) := by core033_kernel_decide
theorem stats7630 : actualRows7630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7630=7428 := by core033_kernel_decide
theorem rows7631 : actualRows7631=WordField.canonicalRows actualModulus 7631 (.badd 7625 7630) := by core033_kernel_decide
theorem stats7631 : actualRows7631.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7631=5388 := by core033_kernel_decide
theorem rows7632 : actualRows7632=WordField.canonicalRows actualModulus 7632 (.badd 7620 7631) := by core033_kernel_decide
theorem stats7632 : actualRows7632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7632=5388 := by core033_kernel_decide
theorem rows7633 : actualRows7633=WordField.canonicalRows actualModulus 7633 (.badd 2021 7620) := by core033_kernel_decide
theorem stats7633 : actualRows7633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7633=5388 := by core033_kernel_decide
theorem rows7634 : actualRows7634=WordField.canonicalRows actualModulus 7634 (.rotr 7633 6) := by core033_kernel_decide
theorem stats7634 : actualRows7634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7634=5124 := by core033_kernel_decide
theorem rows7635 : actualRows7635=WordField.canonicalRows actualModulus 7635 (.rotr 7633 11) := by core033_kernel_decide
theorem stats7635 : actualRows7635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7635=5124 := by core033_kernel_decide
theorem rows7636 : actualRows7636=WordField.canonicalRows actualModulus 7636 (.bxor 7634 7635) := by core033_kernel_decide
theorem stats7636 : actualRows7636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7636=7428 := by core033_kernel_decide
theorem rows7637 : actualRows7637=WordField.canonicalRows actualModulus 7637 (.rotr 7633 25) := by core033_kernel_decide
theorem stats7637 : actualRows7637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7637=5124 := by core033_kernel_decide
theorem rows7638 : actualRows7638=WordField.canonicalRows actualModulus 7638 (.bxor 7636 7637) := by core033_kernel_decide
theorem stats7638 : actualRows7638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7638=7428 := by core033_kernel_decide
theorem rows7639 : actualRows7639=WordField.canonicalRows actualModulus 7639 (.badd 2180 7638) := by core033_kernel_decide
theorem stats7639 : actualRows7639.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7639=5388 := by core033_kernel_decide
theorem rows7640 : actualRows7640=WordField.canonicalRows actualModulus 7640 (.band 7633 7606) := by core033_kernel_decide
theorem stats7640 : actualRows7640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7640=5124 := by core033_kernel_decide
theorem rows7641 : actualRows7641=WordField.canonicalRows actualModulus 7641 (.bnot 7633) := by core033_kernel_decide
theorem stats7641 : actualRows7641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7641=6276 := by core033_kernel_decide
theorem rows7642 : actualRows7642=WordField.canonicalRows actualModulus 7642 (.band 7641 7579) := by core033_kernel_decide
theorem stats7642 : actualRows7642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7642=5124 := by core033_kernel_decide
theorem rows7643 : actualRows7643=WordField.canonicalRows actualModulus 7643 (.bxor 7640 7642) := by core033_kernel_decide
theorem stats7643 : actualRows7643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7643=7428 := by core033_kernel_decide
theorem rows7644 : actualRows7644=WordField.canonicalRows actualModulus 7644 (.badd 7639 7643) := by core033_kernel_decide
theorem stats7644 : actualRows7644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7644=5388 := by core033_kernel_decide
theorem rows7645 : actualRows7645=WordField.canonicalRows actualModulus 7645 (.literal (BitVec.ofNat 32 3921009573)) := by core033_kernel_decide
theorem stats7645 : actualRows7645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7645=4260 := by core033_kernel_decide
theorem rows7646 : actualRows7646=WordField.canonicalRows actualModulus 7646 (.badd 7644 7645) := by core033_kernel_decide
theorem stats7646 : actualRows7646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7646=5388 := by core033_kernel_decide
theorem rows7647 : actualRows7647=WordField.canonicalRows actualModulus 7647 (.badd 7646 5704) := by core033_kernel_decide
theorem stats7647 : actualRows7647.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7647=5388 := by core033_kernel_decide
theorem rows7648 : actualRows7648=WordField.canonicalRows actualModulus 7648 (.rotr 7632 2) := by core033_kernel_decide
theorem stats7648 : actualRows7648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7648=5124 := by core033_kernel_decide
theorem rows7649 : actualRows7649=WordField.canonicalRows actualModulus 7649 (.rotr 7632 13) := by core033_kernel_decide
theorem stats7649 : actualRows7649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7649=5124 := by core033_kernel_decide
theorem rows7650 : actualRows7650=WordField.canonicalRows actualModulus 7650 (.bxor 7648 7649) := by core033_kernel_decide
theorem stats7650 : actualRows7650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7650=7428 := by core033_kernel_decide
theorem rows7651 : actualRows7651=WordField.canonicalRows actualModulus 7651 (.rotr 7632 22) := by core033_kernel_decide
theorem stats7651 : actualRows7651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7651=5124 := by core033_kernel_decide
theorem rows7652 : actualRows7652=WordField.canonicalRows actualModulus 7652 (.bxor 7650 7651) := by core033_kernel_decide
theorem stats7652 : actualRows7652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7652=7428 := by core033_kernel_decide
theorem rows7653 : actualRows7653=WordField.canonicalRows actualModulus 7653 (.band 7632 7605) := by core033_kernel_decide
theorem stats7653 : actualRows7653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7653=5124 := by core033_kernel_decide
theorem rows7654 : actualRows7654=WordField.canonicalRows actualModulus 7654 (.band 7632 7578) := by core033_kernel_decide
theorem stats7654 : actualRows7654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7654=5124 := by core033_kernel_decide
theorem rows7655 : actualRows7655=WordField.canonicalRows actualModulus 7655 (.bxor 7653 7654) := by core033_kernel_decide
theorem stats7655 : actualRows7655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7655=7428 := by core033_kernel_decide
theorem rows7656 : actualRows7656=WordField.canonicalRows actualModulus 7656 (.band 7605 7578) := by core033_kernel_decide
theorem stats7656 : actualRows7656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7656=5124 := by core033_kernel_decide
theorem rows7657 : actualRows7657=WordField.canonicalRows actualModulus 7657 (.bxor 7655 7656) := by core033_kernel_decide
theorem stats7657 : actualRows7657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7657=7428 := by core033_kernel_decide
theorem rows7658 : actualRows7658=WordField.canonicalRows actualModulus 7658 (.badd 7652 7657) := by core033_kernel_decide
theorem stats7658 : actualRows7658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7658=5388 := by core033_kernel_decide
def partRows118 : List R1CS.Row := actualRows7595++actualRows7596++actualRows7597++actualRows7598++actualRows7599++actualRows7600++actualRows7601++actualRows7602++actualRows7603++actualRows7604++actualRows7605++actualRows7606++actualRows7607++actualRows7608++actualRows7609++actualRows7610++actualRows7611++actualRows7612++actualRows7613++actualRows7614++actualRows7615++actualRows7616++actualRows7617++actualRows7618++actualRows7619++actualRows7620++actualRows7621++actualRows7622++actualRows7623++actualRows7624++actualRows7625++actualRows7626++actualRows7627++actualRows7628++actualRows7629++actualRows7630++actualRows7631++actualRows7632++actualRows7633++actualRows7634++actualRows7635++actualRows7636++actualRows7637++actualRows7638++actualRows7639++actualRows7640++actualRows7641++actualRows7642++actualRows7643++actualRows7644++actualRows7645++actualRows7646++actualRows7647++actualRows7648++actualRows7649++actualRows7650++actualRows7651++actualRows7652++actualRows7653++actualRows7654++actualRows7655++actualRows7656++actualRows7657++actualRows7658
def partOps118 : List WordIR.Op := [.rotr 7578 13,.bxor 7594 7595,.rotr 7578 22,.bxor 7596 7597,.band 7578 1968,.band 7578 2021,.bxor 7599 7600,.band 1968 2021,.bxor 7601 7602,.badd 7598 7603,.badd 7593 7604,.badd 2074 7593,.rotr 7606 6,.rotr 7606 11,.bxor 7607 7608,.rotr 7606 25,.bxor 7609 7610,.badd 2233 7611,.band 7606 7579,.bnot 7606,.band 7614 2180,.bxor 7613 7615,.badd 7612 7616,.literal (BitVec.ofNat 32 3049323471),.badd 7617 7618,.badd 7619 5698,.rotr 7605 2,.rotr 7605 13,.bxor 7621 7622,.rotr 7605 22,.bxor 7623 7624,.band 7605 7578,.band 7605 1968,.bxor 7626 7627,.band 7578 1968,.bxor 7628 7629,.badd 7625 7630,.badd 7620 7631,.badd 2021 7620,.rotr 7633 6,.rotr 7633 11,.bxor 7634 7635,.rotr 7633 25,.bxor 7636 7637,.badd 2180 7638,.band 7633 7606,.bnot 7633,.band 7641 7579,.bxor 7640 7642,.badd 7639 7643,.literal (BitVec.ofNat 32 3921009573),.badd 7644 7645,.badd 7646 5704,.rotr 7632 2,.rotr 7632 13,.bxor 7648 7649,.rotr 7632 22,.bxor 7650 7651,.band 7632 7605,.band 7632 7578,.bxor 7653 7654,.band 7605 7578,.bxor 7655 7656,.badd 7652 7657]
theorem partExact118 : partRows118=WordField.rows actualModulus 7595 partOps118 := by
  simp only [partRows118,partOps118,WordField.rows,rows7595,rows7596,rows7597,rows7598,rows7599,rows7600,rows7601,rows7602,rows7603,rows7604,rows7605,rows7606,rows7607,rows7608,rows7609,rows7610,rows7611,rows7612,rows7613,rows7614,rows7615,rows7616,rows7617,rows7618,rows7619,rows7620,rows7621,rows7622,rows7623,rows7624,rows7625,rows7626,rows7627,rows7628,rows7629,rows7630,rows7631,rows7632,rows7633,rows7634,rows7635,rows7636,rows7637,rows7638,rows7639,rows7640,rows7641,rows7642,rows7643,rows7644,rows7645,rows7646,rows7647,rows7648,rows7649,rows7650,rows7651,rows7652,rows7653,rows7654,rows7655,rows7656,rows7657,rows7658,List.append_assoc,List.append_nil]
theorem partLength118 : partOps118.length=64 := by decide
theorem partStats118 : partRows118.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows118=373944 := by
  simp only [partRows118,List.length_append,MatrixRowBlocks.rows_weight_append,stats7595.1,stats7595.2,stats7596.1,stats7596.2,stats7597.1,stats7597.2,stats7598.1,stats7598.2,stats7599.1,stats7599.2,stats7600.1,stats7600.2,stats7601.1,stats7601.2,stats7602.1,stats7602.2,stats7603.1,stats7603.2,stats7604.1,stats7604.2,stats7605.1,stats7605.2,stats7606.1,stats7606.2,stats7607.1,stats7607.2,stats7608.1,stats7608.2,stats7609.1,stats7609.2,stats7610.1,stats7610.2,stats7611.1,stats7611.2,stats7612.1,stats7612.2,stats7613.1,stats7613.2,stats7614.1,stats7614.2,stats7615.1,stats7615.2,stats7616.1,stats7616.2,stats7617.1,stats7617.2,stats7618.1,stats7618.2,stats7619.1,stats7619.2,stats7620.1,stats7620.2,stats7621.1,stats7621.2,stats7622.1,stats7622.2,stats7623.1,stats7623.2,stats7624.1,stats7624.2,stats7625.1,stats7625.2,stats7626.1,stats7626.2,stats7627.1,stats7627.2,stats7628.1,stats7628.2,stats7629.1,stats7629.2,stats7630.1,stats7630.2,stats7631.1,stats7631.2,stats7632.1,stats7632.2,stats7633.1,stats7633.2,stats7634.1,stats7634.2,stats7635.1,stats7635.2,stats7636.1,stats7636.2,stats7637.1,stats7637.2,stats7638.1,stats7638.2,stats7639.1,stats7639.2,stats7640.1,stats7640.2,stats7641.1,stats7641.2,stats7642.1,stats7642.2,stats7643.1,stats7643.2,stats7644.1,stats7644.2,stats7645.1,stats7645.2,stats7646.1,stats7646.2,stats7647.1,stats7647.2,stats7648.1,stats7648.2,stats7649.1,stats7649.2,stats7650.1,stats7650.2,stats7651.1,stats7651.2,stats7652.1,stats7652.2,stats7653.1,stats7653.2,stats7654.1,stats7654.2,stats7655.1,stats7655.2,stats7656.1,stats7656.2,stats7657.1,stats7657.2,stats7658.1,stats7658.2]
  decide
end PathRoundDispatchCheckedRows
