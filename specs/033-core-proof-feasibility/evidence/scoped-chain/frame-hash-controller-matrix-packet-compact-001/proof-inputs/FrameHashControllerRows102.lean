import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData102
import FrameHashControllerInstructionMatrixData103
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6571 : actualRows6571=WordField.canonicalRows actualModulus 6571 (.bxor 6569 6570) := by core033_kernel_decide
theorem stats6571 : actualRows6571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6571=7428 := by core033_kernel_decide
theorem rows6572 : actualRows6572=WordField.canonicalRows actualModulus 6572 (.shr 6555 10) := by core033_kernel_decide
theorem stats6572 : actualRows6572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6572=4404 := by core033_kernel_decide
theorem rows6573 : actualRows6573=WordField.canonicalRows actualModulus 6573 (.bxor 6571 6572) := by core033_kernel_decide
theorem stats6573 : actualRows6573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6573=7428 := by core033_kernel_decide
theorem rows6574 : actualRows6574=WordField.canonicalRows actualModulus 6574 (.badd 6573 6490) := by core033_kernel_decide
theorem stats6574 : actualRows6574.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6574=5388 := by core033_kernel_decide
theorem rows6575 : actualRows6575=WordField.canonicalRows actualModulus 6575 (.rotr 5248 7) := by core033_kernel_decide
theorem stats6575 : actualRows6575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6575=5124 := by core033_kernel_decide
theorem rows6576 : actualRows6576=WordField.canonicalRows actualModulus 6576 (.rotr 5248 18) := by core033_kernel_decide
theorem stats6576 : actualRows6576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6576=5124 := by core033_kernel_decide
theorem rows6577 : actualRows6577=WordField.canonicalRows actualModulus 6577 (.bxor 6575 6576) := by core033_kernel_decide
theorem stats6577 : actualRows6577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6577=7428 := by core033_kernel_decide
theorem rows6578 : actualRows6578=WordField.canonicalRows actualModulus 6578 (.shr 5248 3) := by core033_kernel_decide
theorem stats6578 : actualRows6578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6578=4908 := by core033_kernel_decide
theorem rows6579 : actualRows6579=WordField.canonicalRows actualModulus 6579 (.bxor 6577 6578) := by core033_kernel_decide
theorem stats6579 : actualRows6579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6579=7428 := by core033_kernel_decide
theorem rows6580 : actualRows6580=WordField.canonicalRows actualModulus 6580 (.badd 6574 6579) := by core033_kernel_decide
theorem stats6580 : actualRows6580.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6580=5388 := by core033_kernel_decide
theorem rows6581 : actualRows6581=WordField.canonicalRows actualModulus 6581 (.badd 6580 5242) := by core033_kernel_decide
theorem stats6581 : actualRows6581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6581=5388 := by core033_kernel_decide
theorem rows6582 : actualRows6582=WordField.canonicalRows actualModulus 6582 (.rotr 6568 17) := by core033_kernel_decide
theorem stats6582 : actualRows6582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6582=5124 := by core033_kernel_decide
theorem rows6583 : actualRows6583=WordField.canonicalRows actualModulus 6583 (.rotr 6568 19) := by core033_kernel_decide
theorem stats6583 : actualRows6583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6583=5124 := by core033_kernel_decide
theorem rows6584 : actualRows6584=WordField.canonicalRows actualModulus 6584 (.bxor 6582 6583) := by core033_kernel_decide
theorem stats6584 : actualRows6584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6584=7428 := by core033_kernel_decide
theorem rows6585 : actualRows6585=WordField.canonicalRows actualModulus 6585 (.shr 6568 10) := by core033_kernel_decide
theorem stats6585 : actualRows6585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6585=4404 := by core033_kernel_decide
theorem rows6586 : actualRows6586=WordField.canonicalRows actualModulus 6586 (.bxor 6584 6585) := by core033_kernel_decide
theorem stats6586 : actualRows6586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6586=7428 := by core033_kernel_decide
theorem rows6587 : actualRows6587=WordField.canonicalRows actualModulus 6587 (.badd 6586 6503) := by core033_kernel_decide
theorem stats6587 : actualRows6587.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6587=5388 := by core033_kernel_decide
theorem rows6588 : actualRows6588=WordField.canonicalRows actualModulus 6588 (.rotr 5254 7) := by core033_kernel_decide
theorem stats6588 : actualRows6588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6588=5124 := by core033_kernel_decide
theorem rows6589 : actualRows6589=WordField.canonicalRows actualModulus 6589 (.rotr 5254 18) := by core033_kernel_decide
theorem stats6589 : actualRows6589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6589=5124 := by core033_kernel_decide
theorem rows6590 : actualRows6590=WordField.canonicalRows actualModulus 6590 (.bxor 6588 6589) := by core033_kernel_decide
theorem stats6590 : actualRows6590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6590=7428 := by core033_kernel_decide
theorem rows6591 : actualRows6591=WordField.canonicalRows actualModulus 6591 (.shr 5254 3) := by core033_kernel_decide
theorem stats6591 : actualRows6591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6591=4908 := by core033_kernel_decide
theorem rows6592 : actualRows6592=WordField.canonicalRows actualModulus 6592 (.bxor 6590 6591) := by core033_kernel_decide
theorem stats6592 : actualRows6592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6592=7428 := by core033_kernel_decide
theorem rows6593 : actualRows6593=WordField.canonicalRows actualModulus 6593 (.badd 6587 6592) := by core033_kernel_decide
theorem stats6593 : actualRows6593.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6593=5388 := by core033_kernel_decide
theorem rows6594 : actualRows6594=WordField.canonicalRows actualModulus 6594 (.badd 6593 5248) := by core033_kernel_decide
theorem stats6594 : actualRows6594.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6594=5388 := by core033_kernel_decide
theorem rows6595 : actualRows6595=WordField.canonicalRows actualModulus 6595 (.rotr 6581 17) := by core033_kernel_decide
theorem stats6595 : actualRows6595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6595=5124 := by core033_kernel_decide
theorem rows6596 : actualRows6596=WordField.canonicalRows actualModulus 6596 (.rotr 6581 19) := by core033_kernel_decide
theorem stats6596 : actualRows6596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6596=5124 := by core033_kernel_decide
theorem rows6597 : actualRows6597=WordField.canonicalRows actualModulus 6597 (.bxor 6595 6596) := by core033_kernel_decide
theorem stats6597 : actualRows6597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6597=7428 := by core033_kernel_decide
theorem rows6598 : actualRows6598=WordField.canonicalRows actualModulus 6598 (.shr 6581 10) := by core033_kernel_decide
theorem stats6598 : actualRows6598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6598=4404 := by core033_kernel_decide
theorem rows6599 : actualRows6599=WordField.canonicalRows actualModulus 6599 (.bxor 6597 6598) := by core033_kernel_decide
theorem stats6599 : actualRows6599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6599=7428 := by core033_kernel_decide
theorem rows6600 : actualRows6600=WordField.canonicalRows actualModulus 6600 (.badd 6599 6516) := by core033_kernel_decide
theorem stats6600 : actualRows6600.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6600=5388 := by core033_kernel_decide
theorem rows6601 : actualRows6601=WordField.canonicalRows actualModulus 6601 (.rotr 5260 7) := by core033_kernel_decide
theorem stats6601 : actualRows6601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6601=5124 := by core033_kernel_decide
theorem rows6602 : actualRows6602=WordField.canonicalRows actualModulus 6602 (.rotr 5260 18) := by core033_kernel_decide
theorem stats6602 : actualRows6602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6602=5124 := by core033_kernel_decide
theorem rows6603 : actualRows6603=WordField.canonicalRows actualModulus 6603 (.bxor 6601 6602) := by core033_kernel_decide
theorem stats6603 : actualRows6603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6603=7428 := by core033_kernel_decide
theorem rows6604 : actualRows6604=WordField.canonicalRows actualModulus 6604 (.shr 5260 3) := by core033_kernel_decide
theorem stats6604 : actualRows6604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6604=4908 := by core033_kernel_decide
theorem rows6605 : actualRows6605=WordField.canonicalRows actualModulus 6605 (.bxor 6603 6604) := by core033_kernel_decide
theorem stats6605 : actualRows6605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6605=7428 := by core033_kernel_decide
theorem rows6606 : actualRows6606=WordField.canonicalRows actualModulus 6606 (.badd 6600 6605) := by core033_kernel_decide
theorem stats6606 : actualRows6606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6606=5388 := by core033_kernel_decide
theorem rows6607 : actualRows6607=WordField.canonicalRows actualModulus 6607 (.badd 6606 5254) := by core033_kernel_decide
theorem stats6607 : actualRows6607.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6607=5388 := by core033_kernel_decide
theorem rows6608 : actualRows6608=WordField.canonicalRows actualModulus 6608 (.rotr 6594 17) := by core033_kernel_decide
theorem stats6608 : actualRows6608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6608=5124 := by core033_kernel_decide
theorem rows6609 : actualRows6609=WordField.canonicalRows actualModulus 6609 (.rotr 6594 19) := by core033_kernel_decide
theorem stats6609 : actualRows6609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6609=5124 := by core033_kernel_decide
theorem rows6610 : actualRows6610=WordField.canonicalRows actualModulus 6610 (.bxor 6608 6609) := by core033_kernel_decide
theorem stats6610 : actualRows6610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6610=7428 := by core033_kernel_decide
theorem rows6611 : actualRows6611=WordField.canonicalRows actualModulus 6611 (.shr 6594 10) := by core033_kernel_decide
theorem stats6611 : actualRows6611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6611=4404 := by core033_kernel_decide
theorem rows6612 : actualRows6612=WordField.canonicalRows actualModulus 6612 (.bxor 6610 6611) := by core033_kernel_decide
theorem stats6612 : actualRows6612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6612=7428 := by core033_kernel_decide
theorem rows6613 : actualRows6613=WordField.canonicalRows actualModulus 6613 (.badd 6612 6529) := by core033_kernel_decide
theorem stats6613 : actualRows6613.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6613=5388 := by core033_kernel_decide
theorem rows6614 : actualRows6614=WordField.canonicalRows actualModulus 6614 (.rotr 6425 7) := by core033_kernel_decide
theorem stats6614 : actualRows6614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6614=5124 := by core033_kernel_decide
theorem rows6615 : actualRows6615=WordField.canonicalRows actualModulus 6615 (.rotr 6425 18) := by core033_kernel_decide
theorem stats6615 : actualRows6615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6615=5124 := by core033_kernel_decide
theorem rows6616 : actualRows6616=WordField.canonicalRows actualModulus 6616 (.bxor 6614 6615) := by core033_kernel_decide
theorem stats6616 : actualRows6616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6616=7428 := by core033_kernel_decide
theorem rows6617 : actualRows6617=WordField.canonicalRows actualModulus 6617 (.shr 6425 3) := by core033_kernel_decide
theorem stats6617 : actualRows6617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6617=4908 := by core033_kernel_decide
theorem rows6618 : actualRows6618=WordField.canonicalRows actualModulus 6618 (.bxor 6616 6617) := by core033_kernel_decide
theorem stats6618 : actualRows6618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6618=7428 := by core033_kernel_decide
theorem rows6619 : actualRows6619=WordField.canonicalRows actualModulus 6619 (.badd 6613 6618) := by core033_kernel_decide
theorem stats6619 : actualRows6619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6619=5388 := by core033_kernel_decide
theorem rows6620 : actualRows6620=WordField.canonicalRows actualModulus 6620 (.badd 6619 5260) := by core033_kernel_decide
theorem stats6620 : actualRows6620.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6620=5388 := by core033_kernel_decide
theorem rows6621 : actualRows6621=WordField.canonicalRows actualModulus 6621 (.rotr 6607 17) := by core033_kernel_decide
theorem stats6621 : actualRows6621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6621=5124 := by core033_kernel_decide
theorem rows6622 : actualRows6622=WordField.canonicalRows actualModulus 6622 (.rotr 6607 19) := by core033_kernel_decide
theorem stats6622 : actualRows6622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6622=5124 := by core033_kernel_decide
theorem rows6623 : actualRows6623=WordField.canonicalRows actualModulus 6623 (.bxor 6621 6622) := by core033_kernel_decide
theorem stats6623 : actualRows6623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6623=7428 := by core033_kernel_decide
theorem rows6624 : actualRows6624=WordField.canonicalRows actualModulus 6624 (.shr 6607 10) := by core033_kernel_decide
theorem stats6624 : actualRows6624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6624=4404 := by core033_kernel_decide
theorem rows6625 : actualRows6625=WordField.canonicalRows actualModulus 6625 (.bxor 6623 6624) := by core033_kernel_decide
theorem stats6625 : actualRows6625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6625=7428 := by core033_kernel_decide
theorem rows6626 : actualRows6626=WordField.canonicalRows actualModulus 6626 (.badd 6625 6542) := by core033_kernel_decide
theorem stats6626 : actualRows6626.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6626=5388 := by core033_kernel_decide
theorem rows6627 : actualRows6627=WordField.canonicalRows actualModulus 6627 (.rotr 6438 7) := by core033_kernel_decide
theorem stats6627 : actualRows6627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6627=5124 := by core033_kernel_decide
theorem rows6628 : actualRows6628=WordField.canonicalRows actualModulus 6628 (.rotr 6438 18) := by core033_kernel_decide
theorem stats6628 : actualRows6628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6628=5124 := by core033_kernel_decide
theorem rows6629 : actualRows6629=WordField.canonicalRows actualModulus 6629 (.bxor 6627 6628) := by core033_kernel_decide
theorem stats6629 : actualRows6629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6629=7428 := by core033_kernel_decide
theorem rows6630 : actualRows6630=WordField.canonicalRows actualModulus 6630 (.shr 6438 3) := by core033_kernel_decide
theorem stats6630 : actualRows6630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6630=4908 := by core033_kernel_decide
theorem rows6631 : actualRows6631=WordField.canonicalRows actualModulus 6631 (.bxor 6629 6630) := by core033_kernel_decide
theorem stats6631 : actualRows6631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6631=7428 := by core033_kernel_decide
theorem rows6632 : actualRows6632=WordField.canonicalRows actualModulus 6632 (.badd 6626 6631) := by core033_kernel_decide
theorem stats6632 : actualRows6632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6632=5388 := by core033_kernel_decide
theorem rows6633 : actualRows6633=WordField.canonicalRows actualModulus 6633 (.badd 6632 6425) := by core033_kernel_decide
theorem stats6633 : actualRows6633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6633=5388 := by core033_kernel_decide
theorem rows6634 : actualRows6634=WordField.canonicalRows actualModulus 6634 (.rotr 6620 17) := by core033_kernel_decide
theorem stats6634 : actualRows6634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6634=5124 := by core033_kernel_decide
def partRows102 : List R1CS.Row := actualRows6571++actualRows6572++actualRows6573++actualRows6574++actualRows6575++actualRows6576++actualRows6577++actualRows6578++actualRows6579++actualRows6580++actualRows6581++actualRows6582++actualRows6583++actualRows6584++actualRows6585++actualRows6586++actualRows6587++actualRows6588++actualRows6589++actualRows6590++actualRows6591++actualRows6592++actualRows6593++actualRows6594++actualRows6595++actualRows6596++actualRows6597++actualRows6598++actualRows6599++actualRows6600++actualRows6601++actualRows6602++actualRows6603++actualRows6604++actualRows6605++actualRows6606++actualRows6607++actualRows6608++actualRows6609++actualRows6610++actualRows6611++actualRows6612++actualRows6613++actualRows6614++actualRows6615++actualRows6616++actualRows6617++actualRows6618++actualRows6619++actualRows6620++actualRows6621++actualRows6622++actualRows6623++actualRows6624++actualRows6625++actualRows6626++actualRows6627++actualRows6628++actualRows6629++actualRows6630++actualRows6631++actualRows6632++actualRows6633++actualRows6634
def partOps102 : List WordIR.Op := [.bxor 6569 6570,.shr 6555 10,.bxor 6571 6572,.badd 6573 6490,.rotr 5248 7,.rotr 5248 18,.bxor 6575 6576,.shr 5248 3,.bxor 6577 6578,.badd 6574 6579,.badd 6580 5242,.rotr 6568 17,.rotr 6568 19,.bxor 6582 6583,.shr 6568 10,.bxor 6584 6585,.badd 6586 6503,.rotr 5254 7,.rotr 5254 18,.bxor 6588 6589,.shr 5254 3,.bxor 6590 6591,.badd 6587 6592,.badd 6593 5248,.rotr 6581 17,.rotr 6581 19,.bxor 6595 6596,.shr 6581 10,.bxor 6597 6598,.badd 6599 6516,.rotr 5260 7,.rotr 5260 18,.bxor 6601 6602,.shr 5260 3,.bxor 6603 6604,.badd 6600 6605,.badd 6606 5254,.rotr 6594 17,.rotr 6594 19,.bxor 6608 6609,.shr 6594 10,.bxor 6610 6611,.badd 6612 6529,.rotr 6425 7,.rotr 6425 18,.bxor 6614 6615,.shr 6425 3,.bxor 6616 6617,.badd 6613 6618,.badd 6619 5260,.rotr 6607 17,.rotr 6607 19,.bxor 6621 6622,.shr 6607 10,.bxor 6623 6624,.badd 6625 6542,.rotr 6438 7,.rotr 6438 18,.bxor 6627 6628,.shr 6438 3,.bxor 6629 6630,.badd 6626 6631,.badd 6632 6425,.rotr 6620 17]
theorem partExact102 : partRows102=WordField.rows actualModulus 6571 partOps102 := by
  simp only [partRows102,partOps102,WordField.rows,rows6571,rows6572,rows6573,rows6574,rows6575,rows6576,rows6577,rows6578,rows6579,rows6580,rows6581,rows6582,rows6583,rows6584,rows6585,rows6586,rows6587,rows6588,rows6589,rows6590,rows6591,rows6592,rows6593,rows6594,rows6595,rows6596,rows6597,rows6598,rows6599,rows6600,rows6601,rows6602,rows6603,rows6604,rows6605,rows6606,rows6607,rows6608,rows6609,rows6610,rows6611,rows6612,rows6613,rows6614,rows6615,rows6616,rows6617,rows6618,rows6619,rows6620,rows6621,rows6622,rows6623,rows6624,rows6625,rows6626,rows6627,rows6628,rows6629,rows6630,rows6631,rows6632,rows6633,rows6634,List.append_assoc,List.append_nil]
theorem partLength102 : partOps102.length=64 := by decide
theorem partStats102 : partRows102.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows102=373296 := by
  simp only [partRows102,List.length_append,MatrixRowBlocks.rows_weight_append,stats6571.1,stats6571.2,stats6572.1,stats6572.2,stats6573.1,stats6573.2,stats6574.1,stats6574.2,stats6575.1,stats6575.2,stats6576.1,stats6576.2,stats6577.1,stats6577.2,stats6578.1,stats6578.2,stats6579.1,stats6579.2,stats6580.1,stats6580.2,stats6581.1,stats6581.2,stats6582.1,stats6582.2,stats6583.1,stats6583.2,stats6584.1,stats6584.2,stats6585.1,stats6585.2,stats6586.1,stats6586.2,stats6587.1,stats6587.2,stats6588.1,stats6588.2,stats6589.1,stats6589.2,stats6590.1,stats6590.2,stats6591.1,stats6591.2,stats6592.1,stats6592.2,stats6593.1,stats6593.2,stats6594.1,stats6594.2,stats6595.1,stats6595.2,stats6596.1,stats6596.2,stats6597.1,stats6597.2,stats6598.1,stats6598.2,stats6599.1,stats6599.2,stats6600.1,stats6600.2,stats6601.1,stats6601.2,stats6602.1,stats6602.2,stats6603.1,stats6603.2,stats6604.1,stats6604.2,stats6605.1,stats6605.2,stats6606.1,stats6606.2,stats6607.1,stats6607.2,stats6608.1,stats6608.2,stats6609.1,stats6609.2,stats6610.1,stats6610.2,stats6611.1,stats6611.2,stats6612.1,stats6612.2,stats6613.1,stats6613.2,stats6614.1,stats6614.2,stats6615.1,stats6615.2,stats6616.1,stats6616.2,stats6617.1,stats6617.2,stats6618.1,stats6618.2,stats6619.1,stats6619.2,stats6620.1,stats6620.2,stats6621.1,stats6621.2,stats6622.1,stats6622.2,stats6623.1,stats6623.2,stats6624.1,stats6624.2,stats6625.1,stats6625.2,stats6626.1,stats6626.2,stats6627.1,stats6627.2,stats6628.1,stats6628.2,stats6629.1,stats6629.2,stats6630.1,stats6630.2,stats6631.1,stats6631.2,stats6632.1,stats6632.2,stats6633.1,stats6633.2,stats6634.1,stats6634.2]
  decide
end FrameHashControllerCheckedRows
