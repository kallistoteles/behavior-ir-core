import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData149
import PairedPathRoundInstructionMatrixData150
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9568 : actualRows9568=WordField.canonicalRows actualModulus 9568 (.badd 9563 9567) := by core033_kernel_decide
theorem stats9568 : actualRows9568.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9568=5388 := by core033_kernel_decide
theorem rows9569 : actualRows9569=WordField.canonicalRows actualModulus 9569 (.literal (BitVec.ofNat 32 1747873779)) := by core033_kernel_decide
theorem stats9569 : actualRows9569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9569=4188 := by core033_kernel_decide
theorem rows9570 : actualRows9570=WordField.canonicalRows actualModulus 9570 (.badd 9568 9569) := by core033_kernel_decide
theorem stats9570 : actualRows9570.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9570=5388 := by core033_kernel_decide
theorem rows9571 : actualRows9571=WordField.canonicalRows actualModulus 9571 (.badd 9570 7968) := by core033_kernel_decide
theorem stats9571 : actualRows9571.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9571=5388 := by core033_kernel_decide
theorem rows9572 : actualRows9572=WordField.canonicalRows actualModulus 9572 (.rotr 9556 2) := by core033_kernel_decide
theorem stats9572 : actualRows9572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9572=5124 := by core033_kernel_decide
theorem rows9573 : actualRows9573=WordField.canonicalRows actualModulus 9573 (.rotr 9556 13) := by core033_kernel_decide
theorem stats9573 : actualRows9573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9573=5124 := by core033_kernel_decide
theorem rows9574 : actualRows9574=WordField.canonicalRows actualModulus 9574 (.bxor 9572 9573) := by core033_kernel_decide
theorem stats9574 : actualRows9574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9574=7428 := by core033_kernel_decide
theorem rows9575 : actualRows9575=WordField.canonicalRows actualModulus 9575 (.rotr 9556 22) := by core033_kernel_decide
theorem stats9575 : actualRows9575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9575=5124 := by core033_kernel_decide
theorem rows9576 : actualRows9576=WordField.canonicalRows actualModulus 9576 (.bxor 9574 9575) := by core033_kernel_decide
theorem stats9576 : actualRows9576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9576=7428 := by core033_kernel_decide
theorem rows9577 : actualRows9577=WordField.canonicalRows actualModulus 9577 (.band 9556 9529) := by core033_kernel_decide
theorem stats9577 : actualRows9577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9577=5124 := by core033_kernel_decide
theorem rows9578 : actualRows9578=WordField.canonicalRows actualModulus 9578 (.band 9556 9502) := by core033_kernel_decide
theorem stats9578 : actualRows9578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9578=5124 := by core033_kernel_decide
theorem rows9579 : actualRows9579=WordField.canonicalRows actualModulus 9579 (.bxor 9577 9578) := by core033_kernel_decide
theorem stats9579 : actualRows9579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9579=7428 := by core033_kernel_decide
theorem rows9580 : actualRows9580=WordField.canonicalRows actualModulus 9580 (.band 9529 9502) := by core033_kernel_decide
theorem stats9580 : actualRows9580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9580=5124 := by core033_kernel_decide
theorem rows9581 : actualRows9581=WordField.canonicalRows actualModulus 9581 (.bxor 9579 9580) := by core033_kernel_decide
theorem stats9581 : actualRows9581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9581=7428 := by core033_kernel_decide
theorem rows9582 : actualRows9582=WordField.canonicalRows actualModulus 9582 (.badd 9576 9581) := by core033_kernel_decide
theorem stats9582 : actualRows9582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9582=5388 := by core033_kernel_decide
theorem rows9583 : actualRows9583=WordField.canonicalRows actualModulus 9583 (.badd 9571 9582) := by core033_kernel_decide
theorem stats9583 : actualRows9583.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9583=5388 := by core033_kernel_decide
theorem rows9584 : actualRows9584=WordField.canonicalRows actualModulus 9584 (.badd 9475 9571) := by core033_kernel_decide
theorem stats9584 : actualRows9584.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9584=5388 := by core033_kernel_decide
theorem rows9585 : actualRows9585=WordField.canonicalRows actualModulus 9585 (.rotr 9584 6) := by core033_kernel_decide
theorem stats9585 : actualRows9585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9585=5124 := by core033_kernel_decide
theorem rows9586 : actualRows9586=WordField.canonicalRows actualModulus 9586 (.rotr 9584 11) := by core033_kernel_decide
theorem stats9586 : actualRows9586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9586=5124 := by core033_kernel_decide
theorem rows9587 : actualRows9587=WordField.canonicalRows actualModulus 9587 (.bxor 9585 9586) := by core033_kernel_decide
theorem stats9587 : actualRows9587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9587=7428 := by core033_kernel_decide
theorem rows9588 : actualRows9588=WordField.canonicalRows actualModulus 9588 (.rotr 9584 25) := by core033_kernel_decide
theorem stats9588 : actualRows9588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9588=5124 := by core033_kernel_decide
theorem rows9589 : actualRows9589=WordField.canonicalRows actualModulus 9589 (.bxor 9587 9588) := by core033_kernel_decide
theorem stats9589 : actualRows9589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9589=7428 := by core033_kernel_decide
theorem rows9590 : actualRows9590=WordField.canonicalRows actualModulus 9590 (.badd 9503 9589) := by core033_kernel_decide
theorem stats9590 : actualRows9590.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9590=5388 := by core033_kernel_decide
theorem rows9591 : actualRows9591=WordField.canonicalRows actualModulus 9591 (.band 9584 9557) := by core033_kernel_decide
theorem stats9591 : actualRows9591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9591=5124 := by core033_kernel_decide
theorem rows9592 : actualRows9592=WordField.canonicalRows actualModulus 9592 (.bnot 9584) := by core033_kernel_decide
theorem stats9592 : actualRows9592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9592=6276 := by core033_kernel_decide
theorem rows9593 : actualRows9593=WordField.canonicalRows actualModulus 9593 (.band 9592 9530) := by core033_kernel_decide
theorem stats9593 : actualRows9593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9593=5124 := by core033_kernel_decide
theorem rows9594 : actualRows9594=WordField.canonicalRows actualModulus 9594 (.bxor 9591 9593) := by core033_kernel_decide
theorem stats9594 : actualRows9594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9594=7428 := by core033_kernel_decide
theorem rows9595 : actualRows9595=WordField.canonicalRows actualModulus 9595 (.badd 9590 9594) := by core033_kernel_decide
theorem stats9595 : actualRows9595.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9595=5388 := by core033_kernel_decide
theorem rows9596 : actualRows9596=WordField.canonicalRows actualModulus 9596 (.literal (BitVec.ofNat 32 1955562222)) := by core033_kernel_decide
theorem stats9596 : actualRows9596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9596=4044 := by core033_kernel_decide
theorem rows9597 : actualRows9597=WordField.canonicalRows actualModulus 9597 (.badd 9595 9596) := by core033_kernel_decide
theorem stats9597 : actualRows9597.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9597=5388 := by core033_kernel_decide
theorem rows9598 : actualRows9598=WordField.canonicalRows actualModulus 9598 (.badd 9597 7981) := by core033_kernel_decide
theorem stats9598 : actualRows9598.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9598=5388 := by core033_kernel_decide
theorem rows9599 : actualRows9599=WordField.canonicalRows actualModulus 9599 (.rotr 9583 2) := by core033_kernel_decide
theorem stats9599 : actualRows9599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9599=5124 := by core033_kernel_decide
theorem rows9600 : actualRows9600=WordField.canonicalRows actualModulus 9600 (.rotr 9583 13) := by core033_kernel_decide
theorem stats9600 : actualRows9600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9600=5124 := by core033_kernel_decide
theorem rows9601 : actualRows9601=WordField.canonicalRows actualModulus 9601 (.bxor 9599 9600) := by core033_kernel_decide
theorem stats9601 : actualRows9601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9601=7428 := by core033_kernel_decide
theorem rows9602 : actualRows9602=WordField.canonicalRows actualModulus 9602 (.rotr 9583 22) := by core033_kernel_decide
theorem stats9602 : actualRows9602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9602=5124 := by core033_kernel_decide
theorem rows9603 : actualRows9603=WordField.canonicalRows actualModulus 9603 (.bxor 9601 9602) := by core033_kernel_decide
theorem stats9603 : actualRows9603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9603=7428 := by core033_kernel_decide
theorem rows9604 : actualRows9604=WordField.canonicalRows actualModulus 9604 (.band 9583 9556) := by core033_kernel_decide
theorem stats9604 : actualRows9604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9604=5124 := by core033_kernel_decide
theorem rows9605 : actualRows9605=WordField.canonicalRows actualModulus 9605 (.band 9583 9529) := by core033_kernel_decide
theorem stats9605 : actualRows9605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9605=5124 := by core033_kernel_decide
theorem rows9606 : actualRows9606=WordField.canonicalRows actualModulus 9606 (.bxor 9604 9605) := by core033_kernel_decide
theorem stats9606 : actualRows9606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9606=7428 := by core033_kernel_decide
theorem rows9607 : actualRows9607=WordField.canonicalRows actualModulus 9607 (.band 9556 9529) := by core033_kernel_decide
theorem stats9607 : actualRows9607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9607=5124 := by core033_kernel_decide
theorem rows9608 : actualRows9608=WordField.canonicalRows actualModulus 9608 (.bxor 9606 9607) := by core033_kernel_decide
theorem stats9608 : actualRows9608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9608=7428 := by core033_kernel_decide
theorem rows9609 : actualRows9609=WordField.canonicalRows actualModulus 9609 (.badd 9603 9608) := by core033_kernel_decide
theorem stats9609 : actualRows9609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9609=5388 := by core033_kernel_decide
theorem rows9610 : actualRows9610=WordField.canonicalRows actualModulus 9610 (.badd 9598 9609) := by core033_kernel_decide
theorem stats9610 : actualRows9610.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9610=5388 := by core033_kernel_decide
theorem rows9611 : actualRows9611=WordField.canonicalRows actualModulus 9611 (.badd 9502 9598) := by core033_kernel_decide
theorem stats9611 : actualRows9611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9611=5388 := by core033_kernel_decide
theorem rows9612 : actualRows9612=WordField.canonicalRows actualModulus 9612 (.rotr 9611 6) := by core033_kernel_decide
theorem stats9612 : actualRows9612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9612=5124 := by core033_kernel_decide
theorem rows9613 : actualRows9613=WordField.canonicalRows actualModulus 9613 (.rotr 9611 11) := by core033_kernel_decide
theorem stats9613 : actualRows9613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9613=5124 := by core033_kernel_decide
theorem rows9614 : actualRows9614=WordField.canonicalRows actualModulus 9614 (.bxor 9612 9613) := by core033_kernel_decide
theorem stats9614 : actualRows9614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9614=7428 := by core033_kernel_decide
theorem rows9615 : actualRows9615=WordField.canonicalRows actualModulus 9615 (.rotr 9611 25) := by core033_kernel_decide
theorem stats9615 : actualRows9615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9615=5124 := by core033_kernel_decide
theorem rows9616 : actualRows9616=WordField.canonicalRows actualModulus 9616 (.bxor 9614 9615) := by core033_kernel_decide
theorem stats9616 : actualRows9616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9616=7428 := by core033_kernel_decide
theorem rows9617 : actualRows9617=WordField.canonicalRows actualModulus 9617 (.badd 9530 9616) := by core033_kernel_decide
theorem stats9617 : actualRows9617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9617=5388 := by core033_kernel_decide
theorem rows9618 : actualRows9618=WordField.canonicalRows actualModulus 9618 (.band 9611 9584) := by core033_kernel_decide
theorem stats9618 : actualRows9618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9618=5124 := by core033_kernel_decide
theorem rows9619 : actualRows9619=WordField.canonicalRows actualModulus 9619 (.bnot 9611) := by core033_kernel_decide
theorem stats9619 : actualRows9619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9619=6276 := by core033_kernel_decide
theorem rows9620 : actualRows9620=WordField.canonicalRows actualModulus 9620 (.band 9619 9557) := by core033_kernel_decide
theorem stats9620 : actualRows9620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9620=5124 := by core033_kernel_decide
theorem rows9621 : actualRows9621=WordField.canonicalRows actualModulus 9621 (.bxor 9618 9620) := by core033_kernel_decide
theorem stats9621 : actualRows9621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9621=7428 := by core033_kernel_decide
theorem rows9622 : actualRows9622=WordField.canonicalRows actualModulus 9622 (.badd 9617 9621) := by core033_kernel_decide
theorem stats9622 : actualRows9622.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9622=5388 := by core033_kernel_decide
theorem rows9623 : actualRows9623=WordField.canonicalRows actualModulus 9623 (.literal (BitVec.ofNat 32 2024104815)) := by core033_kernel_decide
theorem stats9623 : actualRows9623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9623=4116 := by core033_kernel_decide
theorem rows9624 : actualRows9624=WordField.canonicalRows actualModulus 9624 (.badd 9622 9623) := by core033_kernel_decide
theorem stats9624 : actualRows9624.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9624=5388 := by core033_kernel_decide
theorem rows9625 : actualRows9625=WordField.canonicalRows actualModulus 9625 (.badd 9624 7994) := by core033_kernel_decide
theorem stats9625 : actualRows9625.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9625=5388 := by core033_kernel_decide
theorem rows9626 : actualRows9626=WordField.canonicalRows actualModulus 9626 (.rotr 9610 2) := by core033_kernel_decide
theorem stats9626 : actualRows9626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9626=5124 := by core033_kernel_decide
theorem rows9627 : actualRows9627=WordField.canonicalRows actualModulus 9627 (.rotr 9610 13) := by core033_kernel_decide
theorem stats9627 : actualRows9627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9627=5124 := by core033_kernel_decide
theorem rows9628 : actualRows9628=WordField.canonicalRows actualModulus 9628 (.bxor 9626 9627) := by core033_kernel_decide
theorem stats9628 : actualRows9628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9628=7428 := by core033_kernel_decide
theorem rows9629 : actualRows9629=WordField.canonicalRows actualModulus 9629 (.rotr 9610 22) := by core033_kernel_decide
theorem stats9629 : actualRows9629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9629=5124 := by core033_kernel_decide
theorem rows9630 : actualRows9630=WordField.canonicalRows actualModulus 9630 (.bxor 9628 9629) := by core033_kernel_decide
theorem stats9630 : actualRows9630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9630=7428 := by core033_kernel_decide
theorem rows9631 : actualRows9631=WordField.canonicalRows actualModulus 9631 (.band 9610 9583) := by core033_kernel_decide
theorem stats9631 : actualRows9631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9631=5124 := by core033_kernel_decide
def partRows148 : List R1CS.Row := actualRows9568++actualRows9569++actualRows9570++actualRows9571++actualRows9572++actualRows9573++actualRows9574++actualRows9575++actualRows9576++actualRows9577++actualRows9578++actualRows9579++actualRows9580++actualRows9581++actualRows9582++actualRows9583++actualRows9584++actualRows9585++actualRows9586++actualRows9587++actualRows9588++actualRows9589++actualRows9590++actualRows9591++actualRows9592++actualRows9593++actualRows9594++actualRows9595++actualRows9596++actualRows9597++actualRows9598++actualRows9599++actualRows9600++actualRows9601++actualRows9602++actualRows9603++actualRows9604++actualRows9605++actualRows9606++actualRows9607++actualRows9608++actualRows9609++actualRows9610++actualRows9611++actualRows9612++actualRows9613++actualRows9614++actualRows9615++actualRows9616++actualRows9617++actualRows9618++actualRows9619++actualRows9620++actualRows9621++actualRows9622++actualRows9623++actualRows9624++actualRows9625++actualRows9626++actualRows9627++actualRows9628++actualRows9629++actualRows9630++actualRows9631
def partOps148 : List WordIR.Op := [.badd 9563 9567,.literal (BitVec.ofNat 32 1747873779),.badd 9568 9569,.badd 9570 7968,.rotr 9556 2,.rotr 9556 13,.bxor 9572 9573,.rotr 9556 22,.bxor 9574 9575,.band 9556 9529,.band 9556 9502,.bxor 9577 9578,.band 9529 9502,.bxor 9579 9580,.badd 9576 9581,.badd 9571 9582,.badd 9475 9571,.rotr 9584 6,.rotr 9584 11,.bxor 9585 9586,.rotr 9584 25,.bxor 9587 9588,.badd 9503 9589,.band 9584 9557,.bnot 9584,.band 9592 9530,.bxor 9591 9593,.badd 9590 9594,.literal (BitVec.ofNat 32 1955562222),.badd 9595 9596,.badd 9597 7981,.rotr 9583 2,.rotr 9583 13,.bxor 9599 9600,.rotr 9583 22,.bxor 9601 9602,.band 9583 9556,.band 9583 9529,.bxor 9604 9605,.band 9556 9529,.bxor 9606 9607,.badd 9603 9608,.badd 9598 9609,.badd 9502 9598,.rotr 9611 6,.rotr 9611 11,.bxor 9612 9613,.rotr 9611 25,.bxor 9614 9615,.badd 9530 9616,.band 9611 9584,.bnot 9611,.band 9619 9557,.bxor 9618 9620,.badd 9617 9621,.literal (BitVec.ofNat 32 2024104815),.badd 9622 9623,.badd 9624 7994,.rotr 9610 2,.rotr 9610 13,.bxor 9626 9627,.rotr 9610 22,.bxor 9628 9629,.band 9610 9583]
theorem partExact148 : partRows148=WordField.rows actualModulus 9568 partOps148 := by
  simp only [partRows148,partOps148,WordField.rows,rows9568,rows9569,rows9570,rows9571,rows9572,rows9573,rows9574,rows9575,rows9576,rows9577,rows9578,rows9579,rows9580,rows9581,rows9582,rows9583,rows9584,rows9585,rows9586,rows9587,rows9588,rows9589,rows9590,rows9591,rows9592,rows9593,rows9594,rows9595,rows9596,rows9597,rows9598,rows9599,rows9600,rows9601,rows9602,rows9603,rows9604,rows9605,rows9606,rows9607,rows9608,rows9609,rows9610,rows9611,rows9612,rows9613,rows9614,rows9615,rows9616,rows9617,rows9618,rows9619,rows9620,rows9621,rows9622,rows9623,rows9624,rows9625,rows9626,rows9627,rows9628,rows9629,rows9630,rows9631,List.append_assoc,List.append_nil]
theorem partLength148 : partOps148.length=64 := by decide
theorem partStats148 : partRows148.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows148=368568 := by
  simp only [partRows148,List.length_append,MatrixRowBlocks.rows_weight_append,stats9568.1,stats9568.2,stats9569.1,stats9569.2,stats9570.1,stats9570.2,stats9571.1,stats9571.2,stats9572.1,stats9572.2,stats9573.1,stats9573.2,stats9574.1,stats9574.2,stats9575.1,stats9575.2,stats9576.1,stats9576.2,stats9577.1,stats9577.2,stats9578.1,stats9578.2,stats9579.1,stats9579.2,stats9580.1,stats9580.2,stats9581.1,stats9581.2,stats9582.1,stats9582.2,stats9583.1,stats9583.2,stats9584.1,stats9584.2,stats9585.1,stats9585.2,stats9586.1,stats9586.2,stats9587.1,stats9587.2,stats9588.1,stats9588.2,stats9589.1,stats9589.2,stats9590.1,stats9590.2,stats9591.1,stats9591.2,stats9592.1,stats9592.2,stats9593.1,stats9593.2,stats9594.1,stats9594.2,stats9595.1,stats9595.2,stats9596.1,stats9596.2,stats9597.1,stats9597.2,stats9598.1,stats9598.2,stats9599.1,stats9599.2,stats9600.1,stats9600.2,stats9601.1,stats9601.2,stats9602.1,stats9602.2,stats9603.1,stats9603.2,stats9604.1,stats9604.2,stats9605.1,stats9605.2,stats9606.1,stats9606.2,stats9607.1,stats9607.2,stats9608.1,stats9608.2,stats9609.1,stats9609.2,stats9610.1,stats9610.2,stats9611.1,stats9611.2,stats9612.1,stats9612.2,stats9613.1,stats9613.2,stats9614.1,stats9614.2,stats9615.1,stats9615.2,stats9616.1,stats9616.2,stats9617.1,stats9617.2,stats9618.1,stats9618.2,stats9619.1,stats9619.2,stats9620.1,stats9620.2,stats9621.1,stats9621.2,stats9622.1,stats9622.2,stats9623.1,stats9623.2,stats9624.1,stats9624.2,stats9625.1,stats9625.2,stats9626.1,stats9626.2,stats9627.1,stats9627.2,stats9628.1,stats9628.2,stats9629.1,stats9629.2,stats9630.1,stats9630.2,stats9631.1,stats9631.2]
  decide
end PairedPathRoundCheckedRows
