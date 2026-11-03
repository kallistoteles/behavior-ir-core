import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData133
import AuthenticatedBranchRoundInstructionMatrixData134
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8566 : actualRows8566=WordField.canonicalRows actualModulus 8566 (.badd 8565 8482) := by core033_kernel_decide
theorem stats8566 : actualRows8566.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8566=5388 := by core033_kernel_decide
theorem rows8567 : actualRows8567=WordField.canonicalRows actualModulus 8567 (.rotr 8378 7) := by core033_kernel_decide
theorem stats8567 : actualRows8567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8567=5124 := by core033_kernel_decide
theorem rows8568 : actualRows8568=WordField.canonicalRows actualModulus 8568 (.rotr 8378 18) := by core033_kernel_decide
theorem stats8568 : actualRows8568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8568=5124 := by core033_kernel_decide
theorem rows8569 : actualRows8569=WordField.canonicalRows actualModulus 8569 (.bxor 8567 8568) := by core033_kernel_decide
theorem stats8569 : actualRows8569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8569=7428 := by core033_kernel_decide
theorem rows8570 : actualRows8570=WordField.canonicalRows actualModulus 8570 (.shr 8378 3) := by core033_kernel_decide
theorem stats8570 : actualRows8570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8570=4908 := by core033_kernel_decide
theorem rows8571 : actualRows8571=WordField.canonicalRows actualModulus 8571 (.bxor 8569 8570) := by core033_kernel_decide
theorem stats8571 : actualRows8571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8571=7428 := by core033_kernel_decide
theorem rows8572 : actualRows8572=WordField.canonicalRows actualModulus 8572 (.badd 8566 8571) := by core033_kernel_decide
theorem stats8572 : actualRows8572.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8572=5388 := by core033_kernel_decide
theorem rows8573 : actualRows8573=WordField.canonicalRows actualModulus 8573 (.badd 8572 8365) := by core033_kernel_decide
theorem stats8573 : actualRows8573.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8573=5388 := by core033_kernel_decide
theorem rows8574 : actualRows8574=WordField.canonicalRows actualModulus 8574 (.rotr 8560 17) := by core033_kernel_decide
theorem stats8574 : actualRows8574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8574=5124 := by core033_kernel_decide
theorem rows8575 : actualRows8575=WordField.canonicalRows actualModulus 8575 (.rotr 8560 19) := by core033_kernel_decide
theorem stats8575 : actualRows8575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8575=5124 := by core033_kernel_decide
theorem rows8576 : actualRows8576=WordField.canonicalRows actualModulus 8576 (.bxor 8574 8575) := by core033_kernel_decide
theorem stats8576 : actualRows8576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8576=7428 := by core033_kernel_decide
theorem rows8577 : actualRows8577=WordField.canonicalRows actualModulus 8577 (.shr 8560 10) := by core033_kernel_decide
theorem stats8577 : actualRows8577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8577=4404 := by core033_kernel_decide
theorem rows8578 : actualRows8578=WordField.canonicalRows actualModulus 8578 (.bxor 8576 8577) := by core033_kernel_decide
theorem stats8578 : actualRows8578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8578=7428 := by core033_kernel_decide
theorem rows8579 : actualRows8579=WordField.canonicalRows actualModulus 8579 (.badd 8578 8495) := by core033_kernel_decide
theorem stats8579 : actualRows8579.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8579=5388 := by core033_kernel_decide
theorem rows8580 : actualRows8580=WordField.canonicalRows actualModulus 8580 (.rotr 8391 7) := by core033_kernel_decide
theorem stats8580 : actualRows8580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8580=5124 := by core033_kernel_decide
theorem rows8581 : actualRows8581=WordField.canonicalRows actualModulus 8581 (.rotr 8391 18) := by core033_kernel_decide
theorem stats8581 : actualRows8581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8581=5124 := by core033_kernel_decide
theorem rows8582 : actualRows8582=WordField.canonicalRows actualModulus 8582 (.bxor 8580 8581) := by core033_kernel_decide
theorem stats8582 : actualRows8582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8582=7428 := by core033_kernel_decide
theorem rows8583 : actualRows8583=WordField.canonicalRows actualModulus 8583 (.shr 8391 3) := by core033_kernel_decide
theorem stats8583 : actualRows8583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8583=4908 := by core033_kernel_decide
theorem rows8584 : actualRows8584=WordField.canonicalRows actualModulus 8584 (.bxor 8582 8583) := by core033_kernel_decide
theorem stats8584 : actualRows8584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8584=7428 := by core033_kernel_decide
theorem rows8585 : actualRows8585=WordField.canonicalRows actualModulus 8585 (.badd 8579 8584) := by core033_kernel_decide
theorem stats8585 : actualRows8585.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8585=5388 := by core033_kernel_decide
theorem rows8586 : actualRows8586=WordField.canonicalRows actualModulus 8586 (.badd 8585 8378) := by core033_kernel_decide
theorem stats8586 : actualRows8586.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8586=5388 := by core033_kernel_decide
theorem rows8587 : actualRows8587=WordField.canonicalRows actualModulus 8587 (.rotr 8573 17) := by core033_kernel_decide
theorem stats8587 : actualRows8587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8587=5124 := by core033_kernel_decide
theorem rows8588 : actualRows8588=WordField.canonicalRows actualModulus 8588 (.rotr 8573 19) := by core033_kernel_decide
theorem stats8588 : actualRows8588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8588=5124 := by core033_kernel_decide
theorem rows8589 : actualRows8589=WordField.canonicalRows actualModulus 8589 (.bxor 8587 8588) := by core033_kernel_decide
theorem stats8589 : actualRows8589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8589=7428 := by core033_kernel_decide
theorem rows8590 : actualRows8590=WordField.canonicalRows actualModulus 8590 (.shr 8573 10) := by core033_kernel_decide
theorem stats8590 : actualRows8590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8590=4404 := by core033_kernel_decide
theorem rows8591 : actualRows8591=WordField.canonicalRows actualModulus 8591 (.bxor 8589 8590) := by core033_kernel_decide
theorem stats8591 : actualRows8591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8591=7428 := by core033_kernel_decide
theorem rows8592 : actualRows8592=WordField.canonicalRows actualModulus 8592 (.badd 8591 8508) := by core033_kernel_decide
theorem stats8592 : actualRows8592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8592=5388 := by core033_kernel_decide
theorem rows8593 : actualRows8593=WordField.canonicalRows actualModulus 8593 (.rotr 8404 7) := by core033_kernel_decide
theorem stats8593 : actualRows8593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8593=5124 := by core033_kernel_decide
theorem rows8594 : actualRows8594=WordField.canonicalRows actualModulus 8594 (.rotr 8404 18) := by core033_kernel_decide
theorem stats8594 : actualRows8594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8594=5124 := by core033_kernel_decide
theorem rows8595 : actualRows8595=WordField.canonicalRows actualModulus 8595 (.bxor 8593 8594) := by core033_kernel_decide
theorem stats8595 : actualRows8595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8595=7428 := by core033_kernel_decide
theorem rows8596 : actualRows8596=WordField.canonicalRows actualModulus 8596 (.shr 8404 3) := by core033_kernel_decide
theorem stats8596 : actualRows8596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8596=4908 := by core033_kernel_decide
theorem rows8597 : actualRows8597=WordField.canonicalRows actualModulus 8597 (.bxor 8595 8596) := by core033_kernel_decide
theorem stats8597 : actualRows8597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8597=7428 := by core033_kernel_decide
theorem rows8598 : actualRows8598=WordField.canonicalRows actualModulus 8598 (.badd 8592 8597) := by core033_kernel_decide
theorem stats8598 : actualRows8598.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8598=5388 := by core033_kernel_decide
theorem rows8599 : actualRows8599=WordField.canonicalRows actualModulus 8599 (.badd 8598 8391) := by core033_kernel_decide
theorem stats8599 : actualRows8599.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8599=5388 := by core033_kernel_decide
theorem rows8600 : actualRows8600=WordField.canonicalRows actualModulus 8600 (.rotr 8586 17) := by core033_kernel_decide
theorem stats8600 : actualRows8600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8600=5124 := by core033_kernel_decide
theorem rows8601 : actualRows8601=WordField.canonicalRows actualModulus 8601 (.rotr 8586 19) := by core033_kernel_decide
theorem stats8601 : actualRows8601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8601=5124 := by core033_kernel_decide
theorem rows8602 : actualRows8602=WordField.canonicalRows actualModulus 8602 (.bxor 8600 8601) := by core033_kernel_decide
theorem stats8602 : actualRows8602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8602=7428 := by core033_kernel_decide
theorem rows8603 : actualRows8603=WordField.canonicalRows actualModulus 8603 (.shr 8586 10) := by core033_kernel_decide
theorem stats8603 : actualRows8603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8603=4404 := by core033_kernel_decide
theorem rows8604 : actualRows8604=WordField.canonicalRows actualModulus 8604 (.bxor 8602 8603) := by core033_kernel_decide
theorem stats8604 : actualRows8604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8604=7428 := by core033_kernel_decide
theorem rows8605 : actualRows8605=WordField.canonicalRows actualModulus 8605 (.badd 8604 8521) := by core033_kernel_decide
theorem stats8605 : actualRows8605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8605=5388 := by core033_kernel_decide
theorem rows8606 : actualRows8606=WordField.canonicalRows actualModulus 8606 (.rotr 8417 7) := by core033_kernel_decide
theorem stats8606 : actualRows8606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8606=5124 := by core033_kernel_decide
theorem rows8607 : actualRows8607=WordField.canonicalRows actualModulus 8607 (.rotr 8417 18) := by core033_kernel_decide
theorem stats8607 : actualRows8607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8607=5124 := by core033_kernel_decide
theorem rows8608 : actualRows8608=WordField.canonicalRows actualModulus 8608 (.bxor 8606 8607) := by core033_kernel_decide
theorem stats8608 : actualRows8608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8608=7428 := by core033_kernel_decide
theorem rows8609 : actualRows8609=WordField.canonicalRows actualModulus 8609 (.shr 8417 3) := by core033_kernel_decide
theorem stats8609 : actualRows8609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8609=4908 := by core033_kernel_decide
theorem rows8610 : actualRows8610=WordField.canonicalRows actualModulus 8610 (.bxor 8608 8609) := by core033_kernel_decide
theorem stats8610 : actualRows8610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8610=7428 := by core033_kernel_decide
theorem rows8611 : actualRows8611=WordField.canonicalRows actualModulus 8611 (.badd 8605 8610) := by core033_kernel_decide
theorem stats8611 : actualRows8611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8611=5388 := by core033_kernel_decide
theorem rows8612 : actualRows8612=WordField.canonicalRows actualModulus 8612 (.badd 8611 8404) := by core033_kernel_decide
theorem stats8612 : actualRows8612.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8612=5388 := by core033_kernel_decide
theorem rows8613 : actualRows8613=WordField.canonicalRows actualModulus 8613 (.rotr 8599 17) := by core033_kernel_decide
theorem stats8613 : actualRows8613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8613=5124 := by core033_kernel_decide
theorem rows8614 : actualRows8614=WordField.canonicalRows actualModulus 8614 (.rotr 8599 19) := by core033_kernel_decide
theorem stats8614 : actualRows8614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8614=5124 := by core033_kernel_decide
theorem rows8615 : actualRows8615=WordField.canonicalRows actualModulus 8615 (.bxor 8613 8614) := by core033_kernel_decide
theorem stats8615 : actualRows8615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8615=7428 := by core033_kernel_decide
theorem rows8616 : actualRows8616=WordField.canonicalRows actualModulus 8616 (.shr 8599 10) := by core033_kernel_decide
theorem stats8616 : actualRows8616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8616=4404 := by core033_kernel_decide
theorem rows8617 : actualRows8617=WordField.canonicalRows actualModulus 8617 (.bxor 8615 8616) := by core033_kernel_decide
theorem stats8617 : actualRows8617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8617=7428 := by core033_kernel_decide
theorem rows8618 : actualRows8618=WordField.canonicalRows actualModulus 8618 (.badd 8617 8534) := by core033_kernel_decide
theorem stats8618 : actualRows8618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8618=5388 := by core033_kernel_decide
theorem rows8619 : actualRows8619=WordField.canonicalRows actualModulus 8619 (.rotr 8430 7) := by core033_kernel_decide
theorem stats8619 : actualRows8619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8619=5124 := by core033_kernel_decide
theorem rows8620 : actualRows8620=WordField.canonicalRows actualModulus 8620 (.rotr 8430 18) := by core033_kernel_decide
theorem stats8620 : actualRows8620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8620=5124 := by core033_kernel_decide
theorem rows8621 : actualRows8621=WordField.canonicalRows actualModulus 8621 (.bxor 8619 8620) := by core033_kernel_decide
theorem stats8621 : actualRows8621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8621=7428 := by core033_kernel_decide
theorem rows8622 : actualRows8622=WordField.canonicalRows actualModulus 8622 (.shr 8430 3) := by core033_kernel_decide
theorem stats8622 : actualRows8622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8622=4908 := by core033_kernel_decide
theorem rows8623 : actualRows8623=WordField.canonicalRows actualModulus 8623 (.bxor 8621 8622) := by core033_kernel_decide
theorem stats8623 : actualRows8623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8623=7428 := by core033_kernel_decide
theorem rows8624 : actualRows8624=WordField.canonicalRows actualModulus 8624 (.badd 8618 8623) := by core033_kernel_decide
theorem stats8624 : actualRows8624.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8624=5388 := by core033_kernel_decide
theorem rows8625 : actualRows8625=WordField.canonicalRows actualModulus 8625 (.badd 8624 8417) := by core033_kernel_decide
theorem stats8625 : actualRows8625.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8625=5388 := by core033_kernel_decide
theorem rows8626 : actualRows8626=WordField.canonicalRows actualModulus 8626 (.rotr 8612 17) := by core033_kernel_decide
theorem stats8626 : actualRows8626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8626=5124 := by core033_kernel_decide
theorem rows8627 : actualRows8627=WordField.canonicalRows actualModulus 8627 (.rotr 8612 19) := by core033_kernel_decide
theorem stats8627 : actualRows8627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8627=5124 := by core033_kernel_decide
theorem rows8628 : actualRows8628=WordField.canonicalRows actualModulus 8628 (.bxor 8626 8627) := by core033_kernel_decide
theorem stats8628 : actualRows8628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8628=7428 := by core033_kernel_decide
theorem rows8629 : actualRows8629=WordField.canonicalRows actualModulus 8629 (.shr 8612 10) := by core033_kernel_decide
theorem stats8629 : actualRows8629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8629=4404 := by core033_kernel_decide
def partRows132 : List R1CS.Row := actualRows8566++actualRows8567++actualRows8568++actualRows8569++actualRows8570++actualRows8571++actualRows8572++actualRows8573++actualRows8574++actualRows8575++actualRows8576++actualRows8577++actualRows8578++actualRows8579++actualRows8580++actualRows8581++actualRows8582++actualRows8583++actualRows8584++actualRows8585++actualRows8586++actualRows8587++actualRows8588++actualRows8589++actualRows8590++actualRows8591++actualRows8592++actualRows8593++actualRows8594++actualRows8595++actualRows8596++actualRows8597++actualRows8598++actualRows8599++actualRows8600++actualRows8601++actualRows8602++actualRows8603++actualRows8604++actualRows8605++actualRows8606++actualRows8607++actualRows8608++actualRows8609++actualRows8610++actualRows8611++actualRows8612++actualRows8613++actualRows8614++actualRows8615++actualRows8616++actualRows8617++actualRows8618++actualRows8619++actualRows8620++actualRows8621++actualRows8622++actualRows8623++actualRows8624++actualRows8625++actualRows8626++actualRows8627++actualRows8628++actualRows8629
def partOps132 : List WordIR.Op := [.badd 8565 8482,.rotr 8378 7,.rotr 8378 18,.bxor 8567 8568,.shr 8378 3,.bxor 8569 8570,.badd 8566 8571,.badd 8572 8365,.rotr 8560 17,.rotr 8560 19,.bxor 8574 8575,.shr 8560 10,.bxor 8576 8577,.badd 8578 8495,.rotr 8391 7,.rotr 8391 18,.bxor 8580 8581,.shr 8391 3,.bxor 8582 8583,.badd 8579 8584,.badd 8585 8378,.rotr 8573 17,.rotr 8573 19,.bxor 8587 8588,.shr 8573 10,.bxor 8589 8590,.badd 8591 8508,.rotr 8404 7,.rotr 8404 18,.bxor 8593 8594,.shr 8404 3,.bxor 8595 8596,.badd 8592 8597,.badd 8598 8391,.rotr 8586 17,.rotr 8586 19,.bxor 8600 8601,.shr 8586 10,.bxor 8602 8603,.badd 8604 8521,.rotr 8417 7,.rotr 8417 18,.bxor 8606 8607,.shr 8417 3,.bxor 8608 8609,.badd 8605 8610,.badd 8611 8404,.rotr 8599 17,.rotr 8599 19,.bxor 8613 8614,.shr 8599 10,.bxor 8615 8616,.badd 8617 8534,.rotr 8430 7,.rotr 8430 18,.bxor 8619 8620,.shr 8430 3,.bxor 8621 8622,.badd 8618 8623,.badd 8624 8417,.rotr 8612 17,.rotr 8612 19,.bxor 8626 8627,.shr 8612 10]
theorem partExact132 : partRows132=WordField.rows actualModulus 8566 partOps132 := by
  simp only [partRows132,partOps132,WordField.rows,rows8566,rows8567,rows8568,rows8569,rows8570,rows8571,rows8572,rows8573,rows8574,rows8575,rows8576,rows8577,rows8578,rows8579,rows8580,rows8581,rows8582,rows8583,rows8584,rows8585,rows8586,rows8587,rows8588,rows8589,rows8590,rows8591,rows8592,rows8593,rows8594,rows8595,rows8596,rows8597,rows8598,rows8599,rows8600,rows8601,rows8602,rows8603,rows8604,rows8605,rows8606,rows8607,rows8608,rows8609,rows8610,rows8611,rows8612,rows8613,rows8614,rows8615,rows8616,rows8617,rows8618,rows8619,rows8620,rows8621,rows8622,rows8623,rows8624,rows8625,rows8626,rows8627,rows8628,rows8629,List.append_assoc,List.append_nil]
theorem partLength132 : partOps132.length=64 := by decide
theorem partStats132 : partRows132.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows132=370992 := by
  simp only [partRows132,List.length_append,MatrixRowBlocks.rows_weight_append,stats8566.1,stats8566.2,stats8567.1,stats8567.2,stats8568.1,stats8568.2,stats8569.1,stats8569.2,stats8570.1,stats8570.2,stats8571.1,stats8571.2,stats8572.1,stats8572.2,stats8573.1,stats8573.2,stats8574.1,stats8574.2,stats8575.1,stats8575.2,stats8576.1,stats8576.2,stats8577.1,stats8577.2,stats8578.1,stats8578.2,stats8579.1,stats8579.2,stats8580.1,stats8580.2,stats8581.1,stats8581.2,stats8582.1,stats8582.2,stats8583.1,stats8583.2,stats8584.1,stats8584.2,stats8585.1,stats8585.2,stats8586.1,stats8586.2,stats8587.1,stats8587.2,stats8588.1,stats8588.2,stats8589.1,stats8589.2,stats8590.1,stats8590.2,stats8591.1,stats8591.2,stats8592.1,stats8592.2,stats8593.1,stats8593.2,stats8594.1,stats8594.2,stats8595.1,stats8595.2,stats8596.1,stats8596.2,stats8597.1,stats8597.2,stats8598.1,stats8598.2,stats8599.1,stats8599.2,stats8600.1,stats8600.2,stats8601.1,stats8601.2,stats8602.1,stats8602.2,stats8603.1,stats8603.2,stats8604.1,stats8604.2,stats8605.1,stats8605.2,stats8606.1,stats8606.2,stats8607.1,stats8607.2,stats8608.1,stats8608.2,stats8609.1,stats8609.2,stats8610.1,stats8610.2,stats8611.1,stats8611.2,stats8612.1,stats8612.2,stats8613.1,stats8613.2,stats8614.1,stats8614.2,stats8615.1,stats8615.2,stats8616.1,stats8616.2,stats8617.1,stats8617.2,stats8618.1,stats8618.2,stats8619.1,stats8619.2,stats8620.1,stats8620.2,stats8621.1,stats8621.2,stats8622.1,stats8622.2,stats8623.1,stats8623.2,stats8624.1,stats8624.2,stats8625.1,stats8625.2,stats8626.1,stats8626.2,stats8627.1,stats8627.2,stats8628.1,stats8628.2,stats8629.1,stats8629.2]
  decide
end AuthenticatedBranchRoundCheckedRows
