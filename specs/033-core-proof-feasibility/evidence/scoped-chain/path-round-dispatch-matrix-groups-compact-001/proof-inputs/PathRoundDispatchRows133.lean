import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData133
import PathRoundDispatchInstructionMatrixData134
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8555 : actualRows8555=WordField.canonicalRows actualModulus 8555 (.rotr 8551 25) := by core033_kernel_decide
theorem stats8555 : actualRows8555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8555=5124 := by core033_kernel_decide
theorem rows8556 : actualRows8556=WordField.canonicalRows actualModulus 8556 (.bxor 8554 8555) := by core033_kernel_decide
theorem stats8556 : actualRows8556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8556=7428 := by core033_kernel_decide
theorem rows8557 : actualRows8557=WordField.canonicalRows actualModulus 8557 (.badd 8470 8556) := by core033_kernel_decide
theorem stats8557 : actualRows8557.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8557=5388 := by core033_kernel_decide
theorem rows8558 : actualRows8558=WordField.canonicalRows actualModulus 8558 (.band 8551 8524) := by core033_kernel_decide
theorem stats8558 : actualRows8558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8558=5124 := by core033_kernel_decide
theorem rows8559 : actualRows8559=WordField.canonicalRows actualModulus 8559 (.bnot 8551) := by core033_kernel_decide
theorem stats8559 : actualRows8559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8559=6276 := by core033_kernel_decide
theorem rows8560 : actualRows8560=WordField.canonicalRows actualModulus 8560 (.band 8559 8497) := by core033_kernel_decide
theorem stats8560 : actualRows8560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8560=5124 := by core033_kernel_decide
theorem rows8561 : actualRows8561=WordField.canonicalRows actualModulus 8561 (.bxor 8558 8560) := by core033_kernel_decide
theorem stats8561 : actualRows8561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8561=7428 := by core033_kernel_decide
theorem rows8562 : actualRows8562=WordField.canonicalRows actualModulus 8562 (.badd 8557 8561) := by core033_kernel_decide
theorem stats8562 : actualRows8562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8562=5388 := by core033_kernel_decide
theorem rows8563 : actualRows8563=WordField.canonicalRows actualModulus 8563 (.literal (BitVec.ofNat 32 1986661051)) := by core033_kernel_decide
theorem stats8563 : actualRows8563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8563=4044 := by core033_kernel_decide
theorem rows8564 : actualRows8564=WordField.canonicalRows actualModulus 8564 (.badd 8562 8563) := by core033_kernel_decide
theorem stats8564 : actualRows8564.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8564=5388 := by core033_kernel_decide
theorem rows8565 : actualRows8565=WordField.canonicalRows actualModulus 8565 (.badd 8564 7214) := by core033_kernel_decide
theorem stats8565 : actualRows8565.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8565=5388 := by core033_kernel_decide
theorem rows8566 : actualRows8566=WordField.canonicalRows actualModulus 8566 (.rotr 8550 2) := by core033_kernel_decide
theorem stats8566 : actualRows8566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8566=5124 := by core033_kernel_decide
theorem rows8567 : actualRows8567=WordField.canonicalRows actualModulus 8567 (.rotr 8550 13) := by core033_kernel_decide
theorem stats8567 : actualRows8567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8567=5124 := by core033_kernel_decide
theorem rows8568 : actualRows8568=WordField.canonicalRows actualModulus 8568 (.bxor 8566 8567) := by core033_kernel_decide
theorem stats8568 : actualRows8568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8568=7428 := by core033_kernel_decide
theorem rows8569 : actualRows8569=WordField.canonicalRows actualModulus 8569 (.rotr 8550 22) := by core033_kernel_decide
theorem stats8569 : actualRows8569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8569=5124 := by core033_kernel_decide
theorem rows8570 : actualRows8570=WordField.canonicalRows actualModulus 8570 (.bxor 8568 8569) := by core033_kernel_decide
theorem stats8570 : actualRows8570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8570=7428 := by core033_kernel_decide
theorem rows8571 : actualRows8571=WordField.canonicalRows actualModulus 8571 (.band 8550 8523) := by core033_kernel_decide
theorem stats8571 : actualRows8571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8571=5124 := by core033_kernel_decide
theorem rows8572 : actualRows8572=WordField.canonicalRows actualModulus 8572 (.band 8550 8496) := by core033_kernel_decide
theorem stats8572 : actualRows8572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8572=5124 := by core033_kernel_decide
theorem rows8573 : actualRows8573=WordField.canonicalRows actualModulus 8573 (.bxor 8571 8572) := by core033_kernel_decide
theorem stats8573 : actualRows8573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8573=7428 := by core033_kernel_decide
theorem rows8574 : actualRows8574=WordField.canonicalRows actualModulus 8574 (.band 8523 8496) := by core033_kernel_decide
theorem stats8574 : actualRows8574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8574=5124 := by core033_kernel_decide
theorem rows8575 : actualRows8575=WordField.canonicalRows actualModulus 8575 (.bxor 8573 8574) := by core033_kernel_decide
theorem stats8575 : actualRows8575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8575=7428 := by core033_kernel_decide
theorem rows8576 : actualRows8576=WordField.canonicalRows actualModulus 8576 (.badd 8570 8575) := by core033_kernel_decide
theorem stats8576 : actualRows8576.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8576=5388 := by core033_kernel_decide
theorem rows8577 : actualRows8577=WordField.canonicalRows actualModulus 8577 (.badd 8565 8576) := by core033_kernel_decide
theorem stats8577 : actualRows8577.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8577=5388 := by core033_kernel_decide
theorem rows8578 : actualRows8578=WordField.canonicalRows actualModulus 8578 (.badd 8469 8565) := by core033_kernel_decide
theorem stats8578 : actualRows8578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8578=5388 := by core033_kernel_decide
theorem rows8579 : actualRows8579=WordField.canonicalRows actualModulus 8579 (.rotr 8578 6) := by core033_kernel_decide
theorem stats8579 : actualRows8579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8579=5124 := by core033_kernel_decide
theorem rows8580 : actualRows8580=WordField.canonicalRows actualModulus 8580 (.rotr 8578 11) := by core033_kernel_decide
theorem stats8580 : actualRows8580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8580=5124 := by core033_kernel_decide
theorem rows8581 : actualRows8581=WordField.canonicalRows actualModulus 8581 (.bxor 8579 8580) := by core033_kernel_decide
theorem stats8581 : actualRows8581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8581=7428 := by core033_kernel_decide
theorem rows8582 : actualRows8582=WordField.canonicalRows actualModulus 8582 (.rotr 8578 25) := by core033_kernel_decide
theorem stats8582 : actualRows8582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8582=5124 := by core033_kernel_decide
theorem rows8583 : actualRows8583=WordField.canonicalRows actualModulus 8583 (.bxor 8581 8582) := by core033_kernel_decide
theorem stats8583 : actualRows8583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8583=7428 := by core033_kernel_decide
theorem rows8584 : actualRows8584=WordField.canonicalRows actualModulus 8584 (.badd 8497 8583) := by core033_kernel_decide
theorem stats8584 : actualRows8584.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8584=5388 := by core033_kernel_decide
theorem rows8585 : actualRows8585=WordField.canonicalRows actualModulus 8585 (.band 8578 8551) := by core033_kernel_decide
theorem stats8585 : actualRows8585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8585=5124 := by core033_kernel_decide
theorem rows8586 : actualRows8586=WordField.canonicalRows actualModulus 8586 (.bnot 8578) := by core033_kernel_decide
theorem stats8586 : actualRows8586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8586=6276 := by core033_kernel_decide
theorem rows8587 : actualRows8587=WordField.canonicalRows actualModulus 8587 (.band 8586 8524) := by core033_kernel_decide
theorem stats8587 : actualRows8587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8587=5124 := by core033_kernel_decide
theorem rows8588 : actualRows8588=WordField.canonicalRows actualModulus 8588 (.bxor 8585 8587) := by core033_kernel_decide
theorem stats8588 : actualRows8588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8588=7428 := by core033_kernel_decide
theorem rows8589 : actualRows8589=WordField.canonicalRows actualModulus 8589 (.badd 8584 8588) := by core033_kernel_decide
theorem stats8589 : actualRows8589.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8589=5388 := by core033_kernel_decide
theorem rows8590 : actualRows8590=WordField.canonicalRows actualModulus 8590 (.literal (BitVec.ofNat 32 2177026350)) := by core033_kernel_decide
theorem stats8590 : actualRows8590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8590=3756 := by core033_kernel_decide
theorem rows8591 : actualRows8591=WordField.canonicalRows actualModulus 8591 (.badd 8589 8590) := by core033_kernel_decide
theorem stats8591 : actualRows8591.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8591=5388 := by core033_kernel_decide
theorem rows8592 : actualRows8592=WordField.canonicalRows actualModulus 8592 (.badd 8591 7227) := by core033_kernel_decide
theorem stats8592 : actualRows8592.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8592=5388 := by core033_kernel_decide
theorem rows8593 : actualRows8593=WordField.canonicalRows actualModulus 8593 (.rotr 8577 2) := by core033_kernel_decide
theorem stats8593 : actualRows8593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8593=5124 := by core033_kernel_decide
theorem rows8594 : actualRows8594=WordField.canonicalRows actualModulus 8594 (.rotr 8577 13) := by core033_kernel_decide
theorem stats8594 : actualRows8594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8594=5124 := by core033_kernel_decide
theorem rows8595 : actualRows8595=WordField.canonicalRows actualModulus 8595 (.bxor 8593 8594) := by core033_kernel_decide
theorem stats8595 : actualRows8595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8595=7428 := by core033_kernel_decide
theorem rows8596 : actualRows8596=WordField.canonicalRows actualModulus 8596 (.rotr 8577 22) := by core033_kernel_decide
theorem stats8596 : actualRows8596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8596=5124 := by core033_kernel_decide
theorem rows8597 : actualRows8597=WordField.canonicalRows actualModulus 8597 (.bxor 8595 8596) := by core033_kernel_decide
theorem stats8597 : actualRows8597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8597=7428 := by core033_kernel_decide
theorem rows8598 : actualRows8598=WordField.canonicalRows actualModulus 8598 (.band 8577 8550) := by core033_kernel_decide
theorem stats8598 : actualRows8598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8598=5124 := by core033_kernel_decide
theorem rows8599 : actualRows8599=WordField.canonicalRows actualModulus 8599 (.band 8577 8523) := by core033_kernel_decide
theorem stats8599 : actualRows8599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8599=5124 := by core033_kernel_decide
theorem rows8600 : actualRows8600=WordField.canonicalRows actualModulus 8600 (.bxor 8598 8599) := by core033_kernel_decide
theorem stats8600 : actualRows8600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8600=7428 := by core033_kernel_decide
theorem rows8601 : actualRows8601=WordField.canonicalRows actualModulus 8601 (.band 8550 8523) := by core033_kernel_decide
theorem stats8601 : actualRows8601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8601=5124 := by core033_kernel_decide
theorem rows8602 : actualRows8602=WordField.canonicalRows actualModulus 8602 (.bxor 8600 8601) := by core033_kernel_decide
theorem stats8602 : actualRows8602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8602=7428 := by core033_kernel_decide
theorem rows8603 : actualRows8603=WordField.canonicalRows actualModulus 8603 (.badd 8597 8602) := by core033_kernel_decide
theorem stats8603 : actualRows8603.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8603=5388 := by core033_kernel_decide
theorem rows8604 : actualRows8604=WordField.canonicalRows actualModulus 8604 (.badd 8592 8603) := by core033_kernel_decide
theorem stats8604 : actualRows8604.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8604=5388 := by core033_kernel_decide
theorem rows8605 : actualRows8605=WordField.canonicalRows actualModulus 8605 (.badd 8496 8592) := by core033_kernel_decide
theorem stats8605 : actualRows8605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8605=5388 := by core033_kernel_decide
theorem rows8606 : actualRows8606=WordField.canonicalRows actualModulus 8606 (.rotr 8605 6) := by core033_kernel_decide
theorem stats8606 : actualRows8606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8606=5124 := by core033_kernel_decide
theorem rows8607 : actualRows8607=WordField.canonicalRows actualModulus 8607 (.rotr 8605 11) := by core033_kernel_decide
theorem stats8607 : actualRows8607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8607=5124 := by core033_kernel_decide
theorem rows8608 : actualRows8608=WordField.canonicalRows actualModulus 8608 (.bxor 8606 8607) := by core033_kernel_decide
theorem stats8608 : actualRows8608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8608=7428 := by core033_kernel_decide
theorem rows8609 : actualRows8609=WordField.canonicalRows actualModulus 8609 (.rotr 8605 25) := by core033_kernel_decide
theorem stats8609 : actualRows8609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8609=5124 := by core033_kernel_decide
theorem rows8610 : actualRows8610=WordField.canonicalRows actualModulus 8610 (.bxor 8608 8609) := by core033_kernel_decide
theorem stats8610 : actualRows8610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8610=7428 := by core033_kernel_decide
theorem rows8611 : actualRows8611=WordField.canonicalRows actualModulus 8611 (.badd 8524 8610) := by core033_kernel_decide
theorem stats8611 : actualRows8611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8611=5388 := by core033_kernel_decide
theorem rows8612 : actualRows8612=WordField.canonicalRows actualModulus 8612 (.band 8605 8578) := by core033_kernel_decide
theorem stats8612 : actualRows8612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8612=5124 := by core033_kernel_decide
theorem rows8613 : actualRows8613=WordField.canonicalRows actualModulus 8613 (.bnot 8605) := by core033_kernel_decide
theorem stats8613 : actualRows8613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8613=6276 := by core033_kernel_decide
theorem rows8614 : actualRows8614=WordField.canonicalRows actualModulus 8614 (.band 8613 8551) := by core033_kernel_decide
theorem stats8614 : actualRows8614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8614=5124 := by core033_kernel_decide
theorem rows8615 : actualRows8615=WordField.canonicalRows actualModulus 8615 (.bxor 8612 8614) := by core033_kernel_decide
theorem stats8615 : actualRows8615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8615=7428 := by core033_kernel_decide
theorem rows8616 : actualRows8616=WordField.canonicalRows actualModulus 8616 (.badd 8611 8615) := by core033_kernel_decide
theorem stats8616 : actualRows8616.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8616=5388 := by core033_kernel_decide
theorem rows8617 : actualRows8617=WordField.canonicalRows actualModulus 8617 (.literal (BitVec.ofNat 32 2456956037)) := by core033_kernel_decide
theorem stats8617 : actualRows8617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8617=3756 := by core033_kernel_decide
theorem rows8618 : actualRows8618=WordField.canonicalRows actualModulus 8618 (.badd 8616 8617) := by core033_kernel_decide
theorem stats8618 : actualRows8618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8618=5388 := by core033_kernel_decide
def partRows133 : List R1CS.Row := actualRows8555++actualRows8556++actualRows8557++actualRows8558++actualRows8559++actualRows8560++actualRows8561++actualRows8562++actualRows8563++actualRows8564++actualRows8565++actualRows8566++actualRows8567++actualRows8568++actualRows8569++actualRows8570++actualRows8571++actualRows8572++actualRows8573++actualRows8574++actualRows8575++actualRows8576++actualRows8577++actualRows8578++actualRows8579++actualRows8580++actualRows8581++actualRows8582++actualRows8583++actualRows8584++actualRows8585++actualRows8586++actualRows8587++actualRows8588++actualRows8589++actualRows8590++actualRows8591++actualRows8592++actualRows8593++actualRows8594++actualRows8595++actualRows8596++actualRows8597++actualRows8598++actualRows8599++actualRows8600++actualRows8601++actualRows8602++actualRows8603++actualRows8604++actualRows8605++actualRows8606++actualRows8607++actualRows8608++actualRows8609++actualRows8610++actualRows8611++actualRows8612++actualRows8613++actualRows8614++actualRows8615++actualRows8616++actualRows8617++actualRows8618
def partOps133 : List WordIR.Op := [.rotr 8551 25,.bxor 8554 8555,.badd 8470 8556,.band 8551 8524,.bnot 8551,.band 8559 8497,.bxor 8558 8560,.badd 8557 8561,.literal (BitVec.ofNat 32 1986661051),.badd 8562 8563,.badd 8564 7214,.rotr 8550 2,.rotr 8550 13,.bxor 8566 8567,.rotr 8550 22,.bxor 8568 8569,.band 8550 8523,.band 8550 8496,.bxor 8571 8572,.band 8523 8496,.bxor 8573 8574,.badd 8570 8575,.badd 8565 8576,.badd 8469 8565,.rotr 8578 6,.rotr 8578 11,.bxor 8579 8580,.rotr 8578 25,.bxor 8581 8582,.badd 8497 8583,.band 8578 8551,.bnot 8578,.band 8586 8524,.bxor 8585 8587,.badd 8584 8588,.literal (BitVec.ofNat 32 2177026350),.badd 8589 8590,.badd 8591 7227,.rotr 8577 2,.rotr 8577 13,.bxor 8593 8594,.rotr 8577 22,.bxor 8595 8596,.band 8577 8550,.band 8577 8523,.bxor 8598 8599,.band 8550 8523,.bxor 8600 8601,.badd 8597 8602,.badd 8592 8603,.badd 8496 8592,.rotr 8605 6,.rotr 8605 11,.bxor 8606 8607,.rotr 8605 25,.bxor 8608 8609,.badd 8524 8610,.band 8605 8578,.bnot 8605,.band 8613 8551,.bxor 8612 8614,.badd 8611 8615,.literal (BitVec.ofNat 32 2456956037),.badd 8616 8617]
theorem partExact133 : partRows133=WordField.rows actualModulus 8555 partOps133 := by
  simp only [partRows133,partOps133,WordField.rows,rows8555,rows8556,rows8557,rows8558,rows8559,rows8560,rows8561,rows8562,rows8563,rows8564,rows8565,rows8566,rows8567,rows8568,rows8569,rows8570,rows8571,rows8572,rows8573,rows8574,rows8575,rows8576,rows8577,rows8578,rows8579,rows8580,rows8581,rows8582,rows8583,rows8584,rows8585,rows8586,rows8587,rows8588,rows8589,rows8590,rows8591,rows8592,rows8593,rows8594,rows8595,rows8596,rows8597,rows8598,rows8599,rows8600,rows8601,rows8602,rows8603,rows8604,rows8605,rows8606,rows8607,rows8608,rows8609,rows8610,rows8611,rows8612,rows8613,rows8614,rows8615,rows8616,rows8617,rows8618,List.append_assoc,List.append_nil]
theorem partLength133 : partOps133.length=64 := by decide
theorem partStats133 : partRows133.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows133=368928 := by
  simp only [partRows133,List.length_append,MatrixRowBlocks.rows_weight_append,stats8555.1,stats8555.2,stats8556.1,stats8556.2,stats8557.1,stats8557.2,stats8558.1,stats8558.2,stats8559.1,stats8559.2,stats8560.1,stats8560.2,stats8561.1,stats8561.2,stats8562.1,stats8562.2,stats8563.1,stats8563.2,stats8564.1,stats8564.2,stats8565.1,stats8565.2,stats8566.1,stats8566.2,stats8567.1,stats8567.2,stats8568.1,stats8568.2,stats8569.1,stats8569.2,stats8570.1,stats8570.2,stats8571.1,stats8571.2,stats8572.1,stats8572.2,stats8573.1,stats8573.2,stats8574.1,stats8574.2,stats8575.1,stats8575.2,stats8576.1,stats8576.2,stats8577.1,stats8577.2,stats8578.1,stats8578.2,stats8579.1,stats8579.2,stats8580.1,stats8580.2,stats8581.1,stats8581.2,stats8582.1,stats8582.2,stats8583.1,stats8583.2,stats8584.1,stats8584.2,stats8585.1,stats8585.2,stats8586.1,stats8586.2,stats8587.1,stats8587.2,stats8588.1,stats8588.2,stats8589.1,stats8589.2,stats8590.1,stats8590.2,stats8591.1,stats8591.2,stats8592.1,stats8592.2,stats8593.1,stats8593.2,stats8594.1,stats8594.2,stats8595.1,stats8595.2,stats8596.1,stats8596.2,stats8597.1,stats8597.2,stats8598.1,stats8598.2,stats8599.1,stats8599.2,stats8600.1,stats8600.2,stats8601.1,stats8601.2,stats8602.1,stats8602.2,stats8603.1,stats8603.2,stats8604.1,stats8604.2,stats8605.1,stats8605.2,stats8606.1,stats8606.2,stats8607.1,stats8607.2,stats8608.1,stats8608.2,stats8609.1,stats8609.2,stats8610.1,stats8610.2,stats8611.1,stats8611.2,stats8612.1,stats8612.2,stats8613.1,stats8613.2,stats8614.1,stats8614.2,stats8615.1,stats8615.2,stats8616.1,stats8616.2,stats8617.1,stats8617.2,stats8618.1,stats8618.2]
  decide
end PathRoundDispatchCheckedRows
