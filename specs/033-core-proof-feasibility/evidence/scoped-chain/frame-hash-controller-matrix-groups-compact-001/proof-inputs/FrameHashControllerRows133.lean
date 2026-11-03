import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData133
import FrameHashControllerInstructionMatrixData134
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8555 : actualRows8555=WordField.canonicalRows actualModulus 8555 (.band 8548 8521) := by core033_kernel_decide
theorem stats8555 : actualRows8555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8555=5124 := by core033_kernel_decide
theorem rows8556 : actualRows8556=WordField.canonicalRows actualModulus 8556 (.bnot 8548) := by core033_kernel_decide
theorem stats8556 : actualRows8556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8556=6276 := by core033_kernel_decide
theorem rows8557 : actualRows8557=WordField.canonicalRows actualModulus 8557 (.band 8556 8494) := by core033_kernel_decide
theorem stats8557 : actualRows8557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8557=5124 := by core033_kernel_decide
theorem rows8558 : actualRows8558=WordField.canonicalRows actualModulus 8558 (.bxor 8555 8557) := by core033_kernel_decide
theorem stats8558 : actualRows8558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8558=7428 := by core033_kernel_decide
theorem rows8559 : actualRows8559=WordField.canonicalRows actualModulus 8559 (.badd 8554 8558) := by core033_kernel_decide
theorem stats8559 : actualRows8559.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8559=5388 := by core033_kernel_decide
theorem rows8560 : actualRows8560=WordField.canonicalRows actualModulus 8560 (.literal (BitVec.ofNat 32 1955562222)) := by core033_kernel_decide
theorem stats8560 : actualRows8560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8560=4044 := by core033_kernel_decide
theorem rows8561 : actualRows8561=WordField.canonicalRows actualModulus 8561 (.badd 8559 8560) := by core033_kernel_decide
theorem stats8561 : actualRows8561.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8561=5388 := by core033_kernel_decide
theorem rows8562 : actualRows8562=WordField.canonicalRows actualModulus 8562 (.badd 8561 6945) := by core033_kernel_decide
theorem stats8562 : actualRows8562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8562=5388 := by core033_kernel_decide
theorem rows8563 : actualRows8563=WordField.canonicalRows actualModulus 8563 (.rotr 8547 2) := by core033_kernel_decide
theorem stats8563 : actualRows8563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8563=5124 := by core033_kernel_decide
theorem rows8564 : actualRows8564=WordField.canonicalRows actualModulus 8564 (.rotr 8547 13) := by core033_kernel_decide
theorem stats8564 : actualRows8564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8564=5124 := by core033_kernel_decide
theorem rows8565 : actualRows8565=WordField.canonicalRows actualModulus 8565 (.bxor 8563 8564) := by core033_kernel_decide
theorem stats8565 : actualRows8565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8565=7428 := by core033_kernel_decide
theorem rows8566 : actualRows8566=WordField.canonicalRows actualModulus 8566 (.rotr 8547 22) := by core033_kernel_decide
theorem stats8566 : actualRows8566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8566=5124 := by core033_kernel_decide
theorem rows8567 : actualRows8567=WordField.canonicalRows actualModulus 8567 (.bxor 8565 8566) := by core033_kernel_decide
theorem stats8567 : actualRows8567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8567=7428 := by core033_kernel_decide
theorem rows8568 : actualRows8568=WordField.canonicalRows actualModulus 8568 (.band 8547 8520) := by core033_kernel_decide
theorem stats8568 : actualRows8568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8568=5124 := by core033_kernel_decide
theorem rows8569 : actualRows8569=WordField.canonicalRows actualModulus 8569 (.band 8547 8493) := by core033_kernel_decide
theorem stats8569 : actualRows8569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8569=5124 := by core033_kernel_decide
theorem rows8570 : actualRows8570=WordField.canonicalRows actualModulus 8570 (.bxor 8568 8569) := by core033_kernel_decide
theorem stats8570 : actualRows8570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8570=7428 := by core033_kernel_decide
theorem rows8571 : actualRows8571=WordField.canonicalRows actualModulus 8571 (.band 8520 8493) := by core033_kernel_decide
theorem stats8571 : actualRows8571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8571=5124 := by core033_kernel_decide
theorem rows8572 : actualRows8572=WordField.canonicalRows actualModulus 8572 (.bxor 8570 8571) := by core033_kernel_decide
theorem stats8572 : actualRows8572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8572=7428 := by core033_kernel_decide
theorem rows8573 : actualRows8573=WordField.canonicalRows actualModulus 8573 (.badd 8567 8572) := by core033_kernel_decide
theorem stats8573 : actualRows8573.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8573=5388 := by core033_kernel_decide
theorem rows8574 : actualRows8574=WordField.canonicalRows actualModulus 8574 (.badd 8562 8573) := by core033_kernel_decide
theorem stats8574 : actualRows8574.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8574=5388 := by core033_kernel_decide
theorem rows8575 : actualRows8575=WordField.canonicalRows actualModulus 8575 (.badd 8466 8562) := by core033_kernel_decide
theorem stats8575 : actualRows8575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8575=5388 := by core033_kernel_decide
theorem rows8576 : actualRows8576=WordField.canonicalRows actualModulus 8576 (.rotr 8575 6) := by core033_kernel_decide
theorem stats8576 : actualRows8576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8576=5124 := by core033_kernel_decide
theorem rows8577 : actualRows8577=WordField.canonicalRows actualModulus 8577 (.rotr 8575 11) := by core033_kernel_decide
theorem stats8577 : actualRows8577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8577=5124 := by core033_kernel_decide
theorem rows8578 : actualRows8578=WordField.canonicalRows actualModulus 8578 (.bxor 8576 8577) := by core033_kernel_decide
theorem stats8578 : actualRows8578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8578=7428 := by core033_kernel_decide
theorem rows8579 : actualRows8579=WordField.canonicalRows actualModulus 8579 (.rotr 8575 25) := by core033_kernel_decide
theorem stats8579 : actualRows8579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8579=5124 := by core033_kernel_decide
theorem rows8580 : actualRows8580=WordField.canonicalRows actualModulus 8580 (.bxor 8578 8579) := by core033_kernel_decide
theorem stats8580 : actualRows8580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8580=7428 := by core033_kernel_decide
theorem rows8581 : actualRows8581=WordField.canonicalRows actualModulus 8581 (.badd 8494 8580) := by core033_kernel_decide
theorem stats8581 : actualRows8581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8581=5388 := by core033_kernel_decide
theorem rows8582 : actualRows8582=WordField.canonicalRows actualModulus 8582 (.band 8575 8548) := by core033_kernel_decide
theorem stats8582 : actualRows8582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8582=5124 := by core033_kernel_decide
theorem rows8583 : actualRows8583=WordField.canonicalRows actualModulus 8583 (.bnot 8575) := by core033_kernel_decide
theorem stats8583 : actualRows8583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8583=6276 := by core033_kernel_decide
theorem rows8584 : actualRows8584=WordField.canonicalRows actualModulus 8584 (.band 8583 8521) := by core033_kernel_decide
theorem stats8584 : actualRows8584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8584=5124 := by core033_kernel_decide
theorem rows8585 : actualRows8585=WordField.canonicalRows actualModulus 8585 (.bxor 8582 8584) := by core033_kernel_decide
theorem stats8585 : actualRows8585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8585=7428 := by core033_kernel_decide
theorem rows8586 : actualRows8586=WordField.canonicalRows actualModulus 8586 (.badd 8581 8585) := by core033_kernel_decide
theorem stats8586 : actualRows8586.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8586=5388 := by core033_kernel_decide
theorem rows8587 : actualRows8587=WordField.canonicalRows actualModulus 8587 (.literal (BitVec.ofNat 32 2024104815)) := by core033_kernel_decide
theorem stats8587 : actualRows8587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8587=4116 := by core033_kernel_decide
theorem rows8588 : actualRows8588=WordField.canonicalRows actualModulus 8588 (.badd 8586 8587) := by core033_kernel_decide
theorem stats8588 : actualRows8588.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8588=5388 := by core033_kernel_decide
theorem rows8589 : actualRows8589=WordField.canonicalRows actualModulus 8589 (.badd 8588 6958) := by core033_kernel_decide
theorem stats8589 : actualRows8589.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8589=5388 := by core033_kernel_decide
theorem rows8590 : actualRows8590=WordField.canonicalRows actualModulus 8590 (.rotr 8574 2) := by core033_kernel_decide
theorem stats8590 : actualRows8590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8590=5124 := by core033_kernel_decide
theorem rows8591 : actualRows8591=WordField.canonicalRows actualModulus 8591 (.rotr 8574 13) := by core033_kernel_decide
theorem stats8591 : actualRows8591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8591=5124 := by core033_kernel_decide
theorem rows8592 : actualRows8592=WordField.canonicalRows actualModulus 8592 (.bxor 8590 8591) := by core033_kernel_decide
theorem stats8592 : actualRows8592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8592=7428 := by core033_kernel_decide
theorem rows8593 : actualRows8593=WordField.canonicalRows actualModulus 8593 (.rotr 8574 22) := by core033_kernel_decide
theorem stats8593 : actualRows8593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8593=5124 := by core033_kernel_decide
theorem rows8594 : actualRows8594=WordField.canonicalRows actualModulus 8594 (.bxor 8592 8593) := by core033_kernel_decide
theorem stats8594 : actualRows8594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8594=7428 := by core033_kernel_decide
theorem rows8595 : actualRows8595=WordField.canonicalRows actualModulus 8595 (.band 8574 8547) := by core033_kernel_decide
theorem stats8595 : actualRows8595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8595=5124 := by core033_kernel_decide
theorem rows8596 : actualRows8596=WordField.canonicalRows actualModulus 8596 (.band 8574 8520) := by core033_kernel_decide
theorem stats8596 : actualRows8596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8596=5124 := by core033_kernel_decide
theorem rows8597 : actualRows8597=WordField.canonicalRows actualModulus 8597 (.bxor 8595 8596) := by core033_kernel_decide
theorem stats8597 : actualRows8597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8597=7428 := by core033_kernel_decide
theorem rows8598 : actualRows8598=WordField.canonicalRows actualModulus 8598 (.band 8547 8520) := by core033_kernel_decide
theorem stats8598 : actualRows8598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8598=5124 := by core033_kernel_decide
theorem rows8599 : actualRows8599=WordField.canonicalRows actualModulus 8599 (.bxor 8597 8598) := by core033_kernel_decide
theorem stats8599 : actualRows8599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8599=7428 := by core033_kernel_decide
theorem rows8600 : actualRows8600=WordField.canonicalRows actualModulus 8600 (.badd 8594 8599) := by core033_kernel_decide
theorem stats8600 : actualRows8600.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8600=5388 := by core033_kernel_decide
theorem rows8601 : actualRows8601=WordField.canonicalRows actualModulus 8601 (.badd 8589 8600) := by core033_kernel_decide
theorem stats8601 : actualRows8601.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8601=5388 := by core033_kernel_decide
theorem rows8602 : actualRows8602=WordField.canonicalRows actualModulus 8602 (.badd 8493 8589) := by core033_kernel_decide
theorem stats8602 : actualRows8602.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8602=5388 := by core033_kernel_decide
theorem rows8603 : actualRows8603=WordField.canonicalRows actualModulus 8603 (.rotr 8602 6) := by core033_kernel_decide
theorem stats8603 : actualRows8603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8603=5124 := by core033_kernel_decide
theorem rows8604 : actualRows8604=WordField.canonicalRows actualModulus 8604 (.rotr 8602 11) := by core033_kernel_decide
theorem stats8604 : actualRows8604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8604=5124 := by core033_kernel_decide
theorem rows8605 : actualRows8605=WordField.canonicalRows actualModulus 8605 (.bxor 8603 8604) := by core033_kernel_decide
theorem stats8605 : actualRows8605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8605=7428 := by core033_kernel_decide
theorem rows8606 : actualRows8606=WordField.canonicalRows actualModulus 8606 (.rotr 8602 25) := by core033_kernel_decide
theorem stats8606 : actualRows8606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8606=5124 := by core033_kernel_decide
theorem rows8607 : actualRows8607=WordField.canonicalRows actualModulus 8607 (.bxor 8605 8606) := by core033_kernel_decide
theorem stats8607 : actualRows8607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8607=7428 := by core033_kernel_decide
theorem rows8608 : actualRows8608=WordField.canonicalRows actualModulus 8608 (.badd 8521 8607) := by core033_kernel_decide
theorem stats8608 : actualRows8608.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8608=5388 := by core033_kernel_decide
theorem rows8609 : actualRows8609=WordField.canonicalRows actualModulus 8609 (.band 8602 8575) := by core033_kernel_decide
theorem stats8609 : actualRows8609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8609=5124 := by core033_kernel_decide
theorem rows8610 : actualRows8610=WordField.canonicalRows actualModulus 8610 (.bnot 8602) := by core033_kernel_decide
theorem stats8610 : actualRows8610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8610=6276 := by core033_kernel_decide
theorem rows8611 : actualRows8611=WordField.canonicalRows actualModulus 8611 (.band 8610 8548) := by core033_kernel_decide
theorem stats8611 : actualRows8611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8611=5124 := by core033_kernel_decide
theorem rows8612 : actualRows8612=WordField.canonicalRows actualModulus 8612 (.bxor 8609 8611) := by core033_kernel_decide
theorem stats8612 : actualRows8612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8612=7428 := by core033_kernel_decide
theorem rows8613 : actualRows8613=WordField.canonicalRows actualModulus 8613 (.badd 8608 8612) := by core033_kernel_decide
theorem stats8613 : actualRows8613.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8613=5388 := by core033_kernel_decide
theorem rows8614 : actualRows8614=WordField.canonicalRows actualModulus 8614 (.literal (BitVec.ofNat 32 2227730452)) := by core033_kernel_decide
theorem stats8614 : actualRows8614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8614=3612 := by core033_kernel_decide
theorem rows8615 : actualRows8615=WordField.canonicalRows actualModulus 8615 (.badd 8613 8614) := by core033_kernel_decide
theorem stats8615 : actualRows8615.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8615=5388 := by core033_kernel_decide
theorem rows8616 : actualRows8616=WordField.canonicalRows actualModulus 8616 (.badd 8615 6971) := by core033_kernel_decide
theorem stats8616 : actualRows8616.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8616=5388 := by core033_kernel_decide
theorem rows8617 : actualRows8617=WordField.canonicalRows actualModulus 8617 (.rotr 8601 2) := by core033_kernel_decide
theorem stats8617 : actualRows8617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8617=5124 := by core033_kernel_decide
theorem rows8618 : actualRows8618=WordField.canonicalRows actualModulus 8618 (.rotr 8601 13) := by core033_kernel_decide
theorem stats8618 : actualRows8618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8618=5124 := by core033_kernel_decide
def partRows133 : List R1CS.Row := actualRows8555++actualRows8556++actualRows8557++actualRows8558++actualRows8559++actualRows8560++actualRows8561++actualRows8562++actualRows8563++actualRows8564++actualRows8565++actualRows8566++actualRows8567++actualRows8568++actualRows8569++actualRows8570++actualRows8571++actualRows8572++actualRows8573++actualRows8574++actualRows8575++actualRows8576++actualRows8577++actualRows8578++actualRows8579++actualRows8580++actualRows8581++actualRows8582++actualRows8583++actualRows8584++actualRows8585++actualRows8586++actualRows8587++actualRows8588++actualRows8589++actualRows8590++actualRows8591++actualRows8592++actualRows8593++actualRows8594++actualRows8595++actualRows8596++actualRows8597++actualRows8598++actualRows8599++actualRows8600++actualRows8601++actualRows8602++actualRows8603++actualRows8604++actualRows8605++actualRows8606++actualRows8607++actualRows8608++actualRows8609++actualRows8610++actualRows8611++actualRows8612++actualRows8613++actualRows8614++actualRows8615++actualRows8616++actualRows8617++actualRows8618
def partOps133 : List WordIR.Op := [.band 8548 8521,.bnot 8548,.band 8556 8494,.bxor 8555 8557,.badd 8554 8558,.literal (BitVec.ofNat 32 1955562222),.badd 8559 8560,.badd 8561 6945,.rotr 8547 2,.rotr 8547 13,.bxor 8563 8564,.rotr 8547 22,.bxor 8565 8566,.band 8547 8520,.band 8547 8493,.bxor 8568 8569,.band 8520 8493,.bxor 8570 8571,.badd 8567 8572,.badd 8562 8573,.badd 8466 8562,.rotr 8575 6,.rotr 8575 11,.bxor 8576 8577,.rotr 8575 25,.bxor 8578 8579,.badd 8494 8580,.band 8575 8548,.bnot 8575,.band 8583 8521,.bxor 8582 8584,.badd 8581 8585,.literal (BitVec.ofNat 32 2024104815),.badd 8586 8587,.badd 8588 6958,.rotr 8574 2,.rotr 8574 13,.bxor 8590 8591,.rotr 8574 22,.bxor 8592 8593,.band 8574 8547,.band 8574 8520,.bxor 8595 8596,.band 8547 8520,.bxor 8597 8598,.badd 8594 8599,.badd 8589 8600,.badd 8493 8589,.rotr 8602 6,.rotr 8602 11,.bxor 8603 8604,.rotr 8602 25,.bxor 8605 8606,.badd 8521 8607,.band 8602 8575,.bnot 8602,.band 8610 8548,.bxor 8609 8611,.badd 8608 8612,.literal (BitVec.ofNat 32 2227730452),.badd 8613 8614,.badd 8615 6971,.rotr 8601 2,.rotr 8601 13]
theorem partExact133 : partRows133=WordField.rows actualModulus 8555 partOps133 := by
  simp only [partRows133,partOps133,WordField.rows,rows8555,rows8556,rows8557,rows8558,rows8559,rows8560,rows8561,rows8562,rows8563,rows8564,rows8565,rows8566,rows8567,rows8568,rows8569,rows8570,rows8571,rows8572,rows8573,rows8574,rows8575,rows8576,rows8577,rows8578,rows8579,rows8580,rows8581,rows8582,rows8583,rows8584,rows8585,rows8586,rows8587,rows8588,rows8589,rows8590,rows8591,rows8592,rows8593,rows8594,rows8595,rows8596,rows8597,rows8598,rows8599,rows8600,rows8601,rows8602,rows8603,rows8604,rows8605,rows8606,rows8607,rows8608,rows8609,rows8610,rows8611,rows8612,rows8613,rows8614,rows8615,rows8616,rows8617,rows8618,List.append_assoc,List.append_nil]
theorem partLength133 : partOps133.length=64 := by decide
theorem partStats133 : partRows133.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows133=366840 := by
  simp only [partRows133,List.length_append,MatrixRowBlocks.rows_weight_append,stats8555.1,stats8555.2,stats8556.1,stats8556.2,stats8557.1,stats8557.2,stats8558.1,stats8558.2,stats8559.1,stats8559.2,stats8560.1,stats8560.2,stats8561.1,stats8561.2,stats8562.1,stats8562.2,stats8563.1,stats8563.2,stats8564.1,stats8564.2,stats8565.1,stats8565.2,stats8566.1,stats8566.2,stats8567.1,stats8567.2,stats8568.1,stats8568.2,stats8569.1,stats8569.2,stats8570.1,stats8570.2,stats8571.1,stats8571.2,stats8572.1,stats8572.2,stats8573.1,stats8573.2,stats8574.1,stats8574.2,stats8575.1,stats8575.2,stats8576.1,stats8576.2,stats8577.1,stats8577.2,stats8578.1,stats8578.2,stats8579.1,stats8579.2,stats8580.1,stats8580.2,stats8581.1,stats8581.2,stats8582.1,stats8582.2,stats8583.1,stats8583.2,stats8584.1,stats8584.2,stats8585.1,stats8585.2,stats8586.1,stats8586.2,stats8587.1,stats8587.2,stats8588.1,stats8588.2,stats8589.1,stats8589.2,stats8590.1,stats8590.2,stats8591.1,stats8591.2,stats8592.1,stats8592.2,stats8593.1,stats8593.2,stats8594.1,stats8594.2,stats8595.1,stats8595.2,stats8596.1,stats8596.2,stats8597.1,stats8597.2,stats8598.1,stats8598.2,stats8599.1,stats8599.2,stats8600.1,stats8600.2,stats8601.1,stats8601.2,stats8602.1,stats8602.2,stats8603.1,stats8603.2,stats8604.1,stats8604.2,stats8605.1,stats8605.2,stats8606.1,stats8606.2,stats8607.1,stats8607.2,stats8608.1,stats8608.2,stats8609.1,stats8609.2,stats8610.1,stats8610.2,stats8611.1,stats8611.2,stats8612.1,stats8612.2,stats8613.1,stats8613.2,stats8614.1,stats8614.2,stats8615.1,stats8615.2,stats8616.1,stats8616.2,stats8617.1,stats8617.2,stats8618.1,stats8618.2]
  decide
end FrameHashControllerCheckedRows
