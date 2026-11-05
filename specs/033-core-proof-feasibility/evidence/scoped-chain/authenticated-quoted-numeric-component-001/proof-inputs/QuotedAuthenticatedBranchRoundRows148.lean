import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData149
import AuthenticatedBranchRoundInstructionMatrixData150
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9590 : actualRows9590=WordField.canonicalRows actualModulus 9590 (.badd 9584 9589) := by core033_kernel_decide
theorem stats9590 : actualRows9590.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9590=5388 := by core033_kernel_decide
theorem rows9591 : actualRows9591=WordField.canonicalRows actualModulus 9591 (.badd 9579 9590) := by core033_kernel_decide
theorem stats9591 : actualRows9591.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9591=5388 := by core033_kernel_decide
theorem rows9592 : actualRows9592=WordField.canonicalRows actualModulus 9592 (.badd 9483 9579) := by core033_kernel_decide
theorem stats9592 : actualRows9592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9592=5388 := by core033_kernel_decide
theorem rows9593 : actualRows9593=WordField.canonicalRows actualModulus 9593 (.rotr 9592 6) := by core033_kernel_decide
theorem stats9593 : actualRows9593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9593=5124 := by core033_kernel_decide
theorem rows9594 : actualRows9594=WordField.canonicalRows actualModulus 9594 (.rotr 9592 11) := by core033_kernel_decide
theorem stats9594 : actualRows9594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9594=5124 := by core033_kernel_decide
theorem rows9595 : actualRows9595=WordField.canonicalRows actualModulus 9595 (.bxor 9593 9594) := by core033_kernel_decide
theorem stats9595 : actualRows9595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9595=7428 := by core033_kernel_decide
theorem rows9596 : actualRows9596=WordField.canonicalRows actualModulus 9596 (.rotr 9592 25) := by core033_kernel_decide
theorem stats9596 : actualRows9596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9596=5124 := by core033_kernel_decide
theorem rows9597 : actualRows9597=WordField.canonicalRows actualModulus 9597 (.bxor 9595 9596) := by core033_kernel_decide
theorem stats9597 : actualRows9597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9597=7428 := by core033_kernel_decide
theorem rows9598 : actualRows9598=WordField.canonicalRows actualModulus 9598 (.badd 9511 9597) := by core033_kernel_decide
theorem stats9598 : actualRows9598.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9598=5388 := by core033_kernel_decide
theorem rows9599 : actualRows9599=WordField.canonicalRows actualModulus 9599 (.band 9592 9565) := by core033_kernel_decide
theorem stats9599 : actualRows9599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9599=5124 := by core033_kernel_decide
theorem rows9600 : actualRows9600=WordField.canonicalRows actualModulus 9600 (.bnot 9592) := by core033_kernel_decide
theorem stats9600 : actualRows9600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9600=6276 := by core033_kernel_decide
theorem rows9601 : actualRows9601=WordField.canonicalRows actualModulus 9601 (.band 9600 9538) := by core033_kernel_decide
theorem stats9601 : actualRows9601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9601=5124 := by core033_kernel_decide
theorem rows9602 : actualRows9602=WordField.canonicalRows actualModulus 9602 (.bxor 9599 9601) := by core033_kernel_decide
theorem stats9602 : actualRows9602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9602=7428 := by core033_kernel_decide
theorem rows9603 : actualRows9603=WordField.canonicalRows actualModulus 9603 (.badd 9598 9602) := by core033_kernel_decide
theorem stats9603 : actualRows9603.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9603=5388 := by core033_kernel_decide
theorem rows9604 : actualRows9604=WordField.canonicalRows actualModulus 9604 (.literal (BitVec.ofNat 32 338241895)) := by core033_kernel_decide
theorem stats9604 : actualRows9604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9604=3756 := by core033_kernel_decide
theorem rows9605 : actualRows9605=WordField.canonicalRows actualModulus 9605 (.badd 9603 9604) := by core033_kernel_decide
theorem stats9605 : actualRows9605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9605=5388 := by core033_kernel_decide
theorem rows9606 : actualRows9606=WordField.canonicalRows actualModulus 9606 (.badd 9605 8339) := by core033_kernel_decide
theorem stats9606 : actualRows9606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9606=5388 := by core033_kernel_decide
theorem rows9607 : actualRows9607=WordField.canonicalRows actualModulus 9607 (.rotr 9591 2) := by core033_kernel_decide
theorem stats9607 : actualRows9607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9607=5124 := by core033_kernel_decide
theorem rows9608 : actualRows9608=WordField.canonicalRows actualModulus 9608 (.rotr 9591 13) := by core033_kernel_decide
theorem stats9608 : actualRows9608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9608=5124 := by core033_kernel_decide
theorem rows9609 : actualRows9609=WordField.canonicalRows actualModulus 9609 (.bxor 9607 9608) := by core033_kernel_decide
theorem stats9609 : actualRows9609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9609=7428 := by core033_kernel_decide
theorem rows9610 : actualRows9610=WordField.canonicalRows actualModulus 9610 (.rotr 9591 22) := by core033_kernel_decide
theorem stats9610 : actualRows9610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9610=5124 := by core033_kernel_decide
theorem rows9611 : actualRows9611=WordField.canonicalRows actualModulus 9611 (.bxor 9609 9610) := by core033_kernel_decide
theorem stats9611 : actualRows9611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9611=7428 := by core033_kernel_decide
theorem rows9612 : actualRows9612=WordField.canonicalRows actualModulus 9612 (.band 9591 9564) := by core033_kernel_decide
theorem stats9612 : actualRows9612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9612=5124 := by core033_kernel_decide
theorem rows9613 : actualRows9613=WordField.canonicalRows actualModulus 9613 (.band 9591 9537) := by core033_kernel_decide
theorem stats9613 : actualRows9613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9613=5124 := by core033_kernel_decide
theorem rows9614 : actualRows9614=WordField.canonicalRows actualModulus 9614 (.bxor 9612 9613) := by core033_kernel_decide
theorem stats9614 : actualRows9614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9614=7428 := by core033_kernel_decide
theorem rows9615 : actualRows9615=WordField.canonicalRows actualModulus 9615 (.band 9564 9537) := by core033_kernel_decide
theorem stats9615 : actualRows9615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9615=5124 := by core033_kernel_decide
theorem rows9616 : actualRows9616=WordField.canonicalRows actualModulus 9616 (.bxor 9614 9615) := by core033_kernel_decide
theorem stats9616 : actualRows9616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9616=7428 := by core033_kernel_decide
theorem rows9617 : actualRows9617=WordField.canonicalRows actualModulus 9617 (.badd 9611 9616) := by core033_kernel_decide
theorem stats9617 : actualRows9617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9617=5388 := by core033_kernel_decide
theorem rows9618 : actualRows9618=WordField.canonicalRows actualModulus 9618 (.badd 9606 9617) := by core033_kernel_decide
theorem stats9618 : actualRows9618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9618=5388 := by core033_kernel_decide
theorem rows9619 : actualRows9619=WordField.canonicalRows actualModulus 9619 (.badd 9510 9606) := by core033_kernel_decide
theorem stats9619 : actualRows9619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9619=5388 := by core033_kernel_decide
theorem rows9620 : actualRows9620=WordField.canonicalRows actualModulus 9620 (.rotr 9619 6) := by core033_kernel_decide
theorem stats9620 : actualRows9620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9620=5124 := by core033_kernel_decide
theorem rows9621 : actualRows9621=WordField.canonicalRows actualModulus 9621 (.rotr 9619 11) := by core033_kernel_decide
theorem stats9621 : actualRows9621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9621=5124 := by core033_kernel_decide
theorem rows9622 : actualRows9622=WordField.canonicalRows actualModulus 9622 (.bxor 9620 9621) := by core033_kernel_decide
theorem stats9622 : actualRows9622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9622=7428 := by core033_kernel_decide
theorem rows9623 : actualRows9623=WordField.canonicalRows actualModulus 9623 (.rotr 9619 25) := by core033_kernel_decide
theorem stats9623 : actualRows9623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9623=5124 := by core033_kernel_decide
theorem rows9624 : actualRows9624=WordField.canonicalRows actualModulus 9624 (.bxor 9622 9623) := by core033_kernel_decide
theorem stats9624 : actualRows9624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9624=7428 := by core033_kernel_decide
theorem rows9625 : actualRows9625=WordField.canonicalRows actualModulus 9625 (.badd 9538 9624) := by core033_kernel_decide
theorem stats9625 : actualRows9625.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9625=5388 := by core033_kernel_decide
theorem rows9626 : actualRows9626=WordField.canonicalRows actualModulus 9626 (.band 9619 9592) := by core033_kernel_decide
theorem stats9626 : actualRows9626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9626=5124 := by core033_kernel_decide
theorem rows9627 : actualRows9627=WordField.canonicalRows actualModulus 9627 (.bnot 9619) := by core033_kernel_decide
theorem stats9627 : actualRows9627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9627=6276 := by core033_kernel_decide
theorem rows9628 : actualRows9628=WordField.canonicalRows actualModulus 9628 (.band 9627 9565) := by core033_kernel_decide
theorem stats9628 : actualRows9628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9628=5124 := by core033_kernel_decide
theorem rows9629 : actualRows9629=WordField.canonicalRows actualModulus 9629 (.bxor 9626 9628) := by core033_kernel_decide
theorem stats9629 : actualRows9629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9629=7428 := by core033_kernel_decide
theorem rows9630 : actualRows9630=WordField.canonicalRows actualModulus 9630 (.badd 9625 9629) := by core033_kernel_decide
theorem stats9630 : actualRows9630.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9630=5388 := by core033_kernel_decide
theorem rows9631 : actualRows9631=WordField.canonicalRows actualModulus 9631 (.literal (BitVec.ofNat 32 666307205)) := by core033_kernel_decide
theorem stats9631 : actualRows9631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9631=3900 := by core033_kernel_decide
theorem rows9632 : actualRows9632=WordField.canonicalRows actualModulus 9632 (.badd 9630 9631) := by core033_kernel_decide
theorem stats9632 : actualRows9632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9632=5388 := by core033_kernel_decide
theorem rows9633 : actualRows9633=WordField.canonicalRows actualModulus 9633 (.badd 9632 8352) := by core033_kernel_decide
theorem stats9633 : actualRows9633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9633=5388 := by core033_kernel_decide
theorem rows9634 : actualRows9634=WordField.canonicalRows actualModulus 9634 (.rotr 9618 2) := by core033_kernel_decide
theorem stats9634 : actualRows9634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9634=5124 := by core033_kernel_decide
theorem rows9635 : actualRows9635=WordField.canonicalRows actualModulus 9635 (.rotr 9618 13) := by core033_kernel_decide
theorem stats9635 : actualRows9635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9635=5124 := by core033_kernel_decide
theorem rows9636 : actualRows9636=WordField.canonicalRows actualModulus 9636 (.bxor 9634 9635) := by core033_kernel_decide
theorem stats9636 : actualRows9636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9636=7428 := by core033_kernel_decide
theorem rows9637 : actualRows9637=WordField.canonicalRows actualModulus 9637 (.rotr 9618 22) := by core033_kernel_decide
theorem stats9637 : actualRows9637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9637=5124 := by core033_kernel_decide
theorem rows9638 : actualRows9638=WordField.canonicalRows actualModulus 9638 (.bxor 9636 9637) := by core033_kernel_decide
theorem stats9638 : actualRows9638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9638=7428 := by core033_kernel_decide
theorem rows9639 : actualRows9639=WordField.canonicalRows actualModulus 9639 (.band 9618 9591) := by core033_kernel_decide
theorem stats9639 : actualRows9639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9639=5124 := by core033_kernel_decide
theorem rows9640 : actualRows9640=WordField.canonicalRows actualModulus 9640 (.band 9618 9564) := by core033_kernel_decide
theorem stats9640 : actualRows9640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9640=5124 := by core033_kernel_decide
theorem rows9641 : actualRows9641=WordField.canonicalRows actualModulus 9641 (.bxor 9639 9640) := by core033_kernel_decide
theorem stats9641 : actualRows9641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9641=7428 := by core033_kernel_decide
theorem rows9642 : actualRows9642=WordField.canonicalRows actualModulus 9642 (.band 9591 9564) := by core033_kernel_decide
theorem stats9642 : actualRows9642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9642=5124 := by core033_kernel_decide
theorem rows9643 : actualRows9643=WordField.canonicalRows actualModulus 9643 (.bxor 9641 9642) := by core033_kernel_decide
theorem stats9643 : actualRows9643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9643=7428 := by core033_kernel_decide
theorem rows9644 : actualRows9644=WordField.canonicalRows actualModulus 9644 (.badd 9638 9643) := by core033_kernel_decide
theorem stats9644 : actualRows9644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9644=5388 := by core033_kernel_decide
theorem rows9645 : actualRows9645=WordField.canonicalRows actualModulus 9645 (.badd 9633 9644) := by core033_kernel_decide
theorem stats9645 : actualRows9645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9645=5388 := by core033_kernel_decide
theorem rows9646 : actualRows9646=WordField.canonicalRows actualModulus 9646 (.badd 9537 9633) := by core033_kernel_decide
theorem stats9646 : actualRows9646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9646=5388 := by core033_kernel_decide
theorem rows9647 : actualRows9647=WordField.canonicalRows actualModulus 9647 (.rotr 9646 6) := by core033_kernel_decide
theorem stats9647 : actualRows9647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9647=5124 := by core033_kernel_decide
theorem rows9648 : actualRows9648=WordField.canonicalRows actualModulus 9648 (.rotr 9646 11) := by core033_kernel_decide
theorem stats9648 : actualRows9648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9648=5124 := by core033_kernel_decide
theorem rows9649 : actualRows9649=WordField.canonicalRows actualModulus 9649 (.bxor 9647 9648) := by core033_kernel_decide
theorem stats9649 : actualRows9649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9649=7428 := by core033_kernel_decide
theorem rows9650 : actualRows9650=WordField.canonicalRows actualModulus 9650 (.rotr 9646 25) := by core033_kernel_decide
theorem stats9650 : actualRows9650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9650=5124 := by core033_kernel_decide
theorem rows9651 : actualRows9651=WordField.canonicalRows actualModulus 9651 (.bxor 9649 9650) := by core033_kernel_decide
theorem stats9651 : actualRows9651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9651=7428 := by core033_kernel_decide
theorem rows9652 : actualRows9652=WordField.canonicalRows actualModulus 9652 (.badd 9565 9651) := by core033_kernel_decide
theorem stats9652 : actualRows9652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9652=5388 := by core033_kernel_decide
theorem rows9653 : actualRows9653=WordField.canonicalRows actualModulus 9653 (.band 9646 9619) := by core033_kernel_decide
theorem stats9653 : actualRows9653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9653=5124 := by core033_kernel_decide
def partRows148 : List R1CS.Row := actualRows9590++actualRows9591++actualRows9592++actualRows9593++actualRows9594++actualRows9595++actualRows9596++actualRows9597++actualRows9598++actualRows9599++actualRows9600++actualRows9601++actualRows9602++actualRows9603++actualRows9604++actualRows9605++actualRows9606++actualRows9607++actualRows9608++actualRows9609++actualRows9610++actualRows9611++actualRows9612++actualRows9613++actualRows9614++actualRows9615++actualRows9616++actualRows9617++actualRows9618++actualRows9619++actualRows9620++actualRows9621++actualRows9622++actualRows9623++actualRows9624++actualRows9625++actualRows9626++actualRows9627++actualRows9628++actualRows9629++actualRows9630++actualRows9631++actualRows9632++actualRows9633++actualRows9634++actualRows9635++actualRows9636++actualRows9637++actualRows9638++actualRows9639++actualRows9640++actualRows9641++actualRows9642++actualRows9643++actualRows9644++actualRows9645++actualRows9646++actualRows9647++actualRows9648++actualRows9649++actualRows9650++actualRows9651++actualRows9652++actualRows9653
def partOps148 : List WordIR.Op := [.badd 9584 9589,.badd 9579 9590,.badd 9483 9579,.rotr 9592 6,.rotr 9592 11,.bxor 9593 9594,.rotr 9592 25,.bxor 9595 9596,.badd 9511 9597,.band 9592 9565,.bnot 9592,.band 9600 9538,.bxor 9599 9601,.badd 9598 9602,.literal (BitVec.ofNat 32 338241895),.badd 9603 9604,.badd 9605 8339,.rotr 9591 2,.rotr 9591 13,.bxor 9607 9608,.rotr 9591 22,.bxor 9609 9610,.band 9591 9564,.band 9591 9537,.bxor 9612 9613,.band 9564 9537,.bxor 9614 9615,.badd 9611 9616,.badd 9606 9617,.badd 9510 9606,.rotr 9619 6,.rotr 9619 11,.bxor 9620 9621,.rotr 9619 25,.bxor 9622 9623,.badd 9538 9624,.band 9619 9592,.bnot 9619,.band 9627 9565,.bxor 9626 9628,.badd 9625 9629,.literal (BitVec.ofNat 32 666307205),.badd 9630 9631,.badd 9632 8352,.rotr 9618 2,.rotr 9618 13,.bxor 9634 9635,.rotr 9618 22,.bxor 9636 9637,.band 9618 9591,.band 9618 9564,.bxor 9639 9640,.band 9591 9564,.bxor 9641 9642,.badd 9638 9643,.badd 9633 9644,.badd 9537 9633,.rotr 9646 6,.rotr 9646 11,.bxor 9647 9648,.rotr 9646 25,.bxor 9649 9650,.badd 9565 9651,.band 9646 9619]
theorem partExact148 : partRows148=WordField.rows actualModulus 9590 partOps148 := by
  simp only [partRows148,partOps148,WordField.rows,rows9590,rows9591,rows9592,rows9593,rows9594,rows9595,rows9596,rows9597,rows9598,rows9599,rows9600,rows9601,rows9602,rows9603,rows9604,rows9605,rows9606,rows9607,rows9608,rows9609,rows9610,rows9611,rows9612,rows9613,rows9614,rows9615,rows9616,rows9617,rows9618,rows9619,rows9620,rows9621,rows9622,rows9623,rows9624,rows9625,rows9626,rows9627,rows9628,rows9629,rows9630,rows9631,rows9632,rows9633,rows9634,rows9635,rows9636,rows9637,rows9638,rows9639,rows9640,rows9641,rows9642,rows9643,rows9644,rows9645,rows9646,rows9647,rows9648,rows9649,rows9650,rows9651,rows9652,rows9653,List.append_assoc,List.append_nil]
theorem partLength148 : partOps148.length=64 := by decide
theorem partStats148 : partRows148.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows148=369264 := by
  simp only [partRows148,List.length_append,MatrixRowBlocks.rows_weight_append,stats9590.1,stats9590.2,stats9591.1,stats9591.2,stats9592.1,stats9592.2,stats9593.1,stats9593.2,stats9594.1,stats9594.2,stats9595.1,stats9595.2,stats9596.1,stats9596.2,stats9597.1,stats9597.2,stats9598.1,stats9598.2,stats9599.1,stats9599.2,stats9600.1,stats9600.2,stats9601.1,stats9601.2,stats9602.1,stats9602.2,stats9603.1,stats9603.2,stats9604.1,stats9604.2,stats9605.1,stats9605.2,stats9606.1,stats9606.2,stats9607.1,stats9607.2,stats9608.1,stats9608.2,stats9609.1,stats9609.2,stats9610.1,stats9610.2,stats9611.1,stats9611.2,stats9612.1,stats9612.2,stats9613.1,stats9613.2,stats9614.1,stats9614.2,stats9615.1,stats9615.2,stats9616.1,stats9616.2,stats9617.1,stats9617.2,stats9618.1,stats9618.2,stats9619.1,stats9619.2,stats9620.1,stats9620.2,stats9621.1,stats9621.2,stats9622.1,stats9622.2,stats9623.1,stats9623.2,stats9624.1,stats9624.2,stats9625.1,stats9625.2,stats9626.1,stats9626.2,stats9627.1,stats9627.2,stats9628.1,stats9628.2,stats9629.1,stats9629.2,stats9630.1,stats9630.2,stats9631.1,stats9631.2,stats9632.1,stats9632.2,stats9633.1,stats9633.2,stats9634.1,stats9634.2,stats9635.1,stats9635.2,stats9636.1,stats9636.2,stats9637.1,stats9637.2,stats9638.1,stats9638.2,stats9639.1,stats9639.2,stats9640.1,stats9640.2,stats9641.1,stats9641.2,stats9642.1,stats9642.2,stats9643.1,stats9643.2,stats9644.1,stats9644.2,stats9645.1,stats9645.2,stats9646.1,stats9646.2,stats9647.1,stats9647.2,stats9648.1,stats9648.2,stats9649.1,stats9649.2,stats9650.1,stats9650.2,stats9651.1,stats9651.2,stats9652.1,stats9652.2,stats9653.1,stats9653.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
