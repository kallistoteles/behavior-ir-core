import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData102
import PairedPathRoundInstructionMatrixData103
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6560 : actualRows6560=WordField.canonicalRows actualModulus 6560 (.badd 6557 6559) := by core033_kernel_decide
theorem stats6560 : actualRows6560.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6560=5388 := by core033_kernel_decide
theorem rows6561 : actualRows6561=WordField.canonicalRows actualModulus 6561 (.bnot 6560) := by core033_kernel_decide
theorem stats6561 : actualRows6561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6561=6276 := by core033_kernel_decide
theorem rows6562 : actualRows6562=WordField.canonicalRows actualModulus 6562 (.band 6556 6561) := by core033_kernel_decide
theorem stats6562 : actualRows6562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6562=5124 := by core033_kernel_decide
theorem rows6563 : actualRows6563=WordField.canonicalRows actualModulus 6563 (.bxor 6552 6562) := by core033_kernel_decide
theorem stats6563 : actualRows6563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6563=7428 := by core033_kernel_decide
theorem rows6564 : actualRows6564=WordField.canonicalRows actualModulus 6564 (.shr 6563 31) := by core033_kernel_decide
theorem stats6564 : actualRows6564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6564=2892 := by core033_kernel_decide
theorem rows6565 : actualRows6565=WordField.canonicalRows actualModulus 6565 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6565 : actualRows6565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6565=2892 := by core033_kernel_decide
theorem rows6566 : actualRows6566=WordField.canonicalRows actualModulus 6566 (.bxor 6564 6565) := by core033_kernel_decide
theorem stats6566 : actualRows6566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6566=7428 := by core033_kernel_decide
theorem rows6567 : actualRows6567=WordField.canonicalRows actualModulus 6567 (.shr 3691 8) := by core033_kernel_decide
theorem stats6567 : actualRows6567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6567=4548 := by core033_kernel_decide
theorem rows6568 : actualRows6568=WordField.canonicalRows actualModulus 6568 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6568 : actualRows6568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6568=2820 := by core033_kernel_decide
theorem rows6569 : actualRows6569=WordField.canonicalRows actualModulus 6569 (.bnot 6568) := by core033_kernel_decide
theorem stats6569 : actualRows6569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6569=6276 := by core033_kernel_decide
theorem rows6570 : actualRows6570=WordField.canonicalRows actualModulus 6570 (.band 6567 6569) := by core033_kernel_decide
theorem stats6570 : actualRows6570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6570=5124 := by core033_kernel_decide
theorem rows6571 : actualRows6571=WordField.canonicalRows actualModulus 6571 (.shr 3691 8) := by core033_kernel_decide
theorem stats6571 : actualRows6571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6571=4548 := by core033_kernel_decide
theorem rows6572 : actualRows6572=WordField.canonicalRows actualModulus 6572 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6572 : actualRows6572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6572=2820 := by core033_kernel_decide
theorem rows6573 : actualRows6573=WordField.canonicalRows actualModulus 6573 (.bnot 6572) := by core033_kernel_decide
theorem stats6573 : actualRows6573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6573=6276 := by core033_kernel_decide
theorem rows6574 : actualRows6574=WordField.canonicalRows actualModulus 6574 (.bxor 6571 6573) := by core033_kernel_decide
theorem stats6574 : actualRows6574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6574=7428 := by core033_kernel_decide
theorem rows6575 : actualRows6575=WordField.canonicalRows actualModulus 6575 (.shr 3691 8) := by core033_kernel_decide
theorem stats6575 : actualRows6575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6575=4548 := by core033_kernel_decide
theorem rows6576 : actualRows6576=WordField.canonicalRows actualModulus 6576 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6576 : actualRows6576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6576=2820 := by core033_kernel_decide
theorem rows6577 : actualRows6577=WordField.canonicalRows actualModulus 6577 (.bnot 6576) := by core033_kernel_decide
theorem stats6577 : actualRows6577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6577=6276 := by core033_kernel_decide
theorem rows6578 : actualRows6578=WordField.canonicalRows actualModulus 6578 (.badd 6575 6577) := by core033_kernel_decide
theorem stats6578 : actualRows6578.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6578=5388 := by core033_kernel_decide
theorem rows6579 : actualRows6579=WordField.canonicalRows actualModulus 6579 (.bnot 6578) := by core033_kernel_decide
theorem stats6579 : actualRows6579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6579=6276 := by core033_kernel_decide
theorem rows6580 : actualRows6580=WordField.canonicalRows actualModulus 6580 (.band 6574 6579) := by core033_kernel_decide
theorem stats6580 : actualRows6580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6580=5124 := by core033_kernel_decide
theorem rows6581 : actualRows6581=WordField.canonicalRows actualModulus 6581 (.bxor 6570 6580) := by core033_kernel_decide
theorem stats6581 : actualRows6581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6581=7428 := by core033_kernel_decide
theorem rows6582 : actualRows6582=WordField.canonicalRows actualModulus 6582 (.shr 6581 31) := by core033_kernel_decide
theorem stats6582 : actualRows6582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6582=2892 := by core033_kernel_decide
theorem rows6583 : actualRows6583=WordField.canonicalRows actualModulus 6583 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6583 : actualRows6583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6583=2892 := by core033_kernel_decide
theorem rows6584 : actualRows6584=WordField.canonicalRows actualModulus 6584 (.bxor 6582 6583) := by core033_kernel_decide
theorem stats6584 : actualRows6584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6584=7428 := by core033_kernel_decide
theorem rows6585 : actualRows6585=WordField.canonicalRows actualModulus 6585 (.shr 3743 8) := by core033_kernel_decide
theorem stats6585 : actualRows6585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6585=4548 := by core033_kernel_decide
theorem rows6586 : actualRows6586=WordField.canonicalRows actualModulus 6586 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6586 : actualRows6586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6586=2820 := by core033_kernel_decide
theorem rows6587 : actualRows6587=WordField.canonicalRows actualModulus 6587 (.bnot 6586) := by core033_kernel_decide
theorem stats6587 : actualRows6587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6587=6276 := by core033_kernel_decide
theorem rows6588 : actualRows6588=WordField.canonicalRows actualModulus 6588 (.band 6585 6587) := by core033_kernel_decide
theorem stats6588 : actualRows6588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6588=5124 := by core033_kernel_decide
theorem rows6589 : actualRows6589=WordField.canonicalRows actualModulus 6589 (.shr 3743 8) := by core033_kernel_decide
theorem stats6589 : actualRows6589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6589=4548 := by core033_kernel_decide
theorem rows6590 : actualRows6590=WordField.canonicalRows actualModulus 6590 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6590 : actualRows6590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6590=2820 := by core033_kernel_decide
theorem rows6591 : actualRows6591=WordField.canonicalRows actualModulus 6591 (.bnot 6590) := by core033_kernel_decide
theorem stats6591 : actualRows6591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6591=6276 := by core033_kernel_decide
theorem rows6592 : actualRows6592=WordField.canonicalRows actualModulus 6592 (.bxor 6589 6591) := by core033_kernel_decide
theorem stats6592 : actualRows6592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6592=7428 := by core033_kernel_decide
theorem rows6593 : actualRows6593=WordField.canonicalRows actualModulus 6593 (.shr 3743 8) := by core033_kernel_decide
theorem stats6593 : actualRows6593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6593=4548 := by core033_kernel_decide
theorem rows6594 : actualRows6594=WordField.canonicalRows actualModulus 6594 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6594 : actualRows6594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6594=2820 := by core033_kernel_decide
theorem rows6595 : actualRows6595=WordField.canonicalRows actualModulus 6595 (.bnot 6594) := by core033_kernel_decide
theorem stats6595 : actualRows6595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6595=6276 := by core033_kernel_decide
theorem rows6596 : actualRows6596=WordField.canonicalRows actualModulus 6596 (.badd 6593 6595) := by core033_kernel_decide
theorem stats6596 : actualRows6596.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6596=5388 := by core033_kernel_decide
theorem rows6597 : actualRows6597=WordField.canonicalRows actualModulus 6597 (.bnot 6596) := by core033_kernel_decide
theorem stats6597 : actualRows6597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6597=6276 := by core033_kernel_decide
theorem rows6598 : actualRows6598=WordField.canonicalRows actualModulus 6598 (.band 6592 6597) := by core033_kernel_decide
theorem stats6598 : actualRows6598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6598=5124 := by core033_kernel_decide
theorem rows6599 : actualRows6599=WordField.canonicalRows actualModulus 6599 (.bxor 6588 6598) := by core033_kernel_decide
theorem stats6599 : actualRows6599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6599=7428 := by core033_kernel_decide
theorem rows6600 : actualRows6600=WordField.canonicalRows actualModulus 6600 (.shr 6599 31) := by core033_kernel_decide
theorem stats6600 : actualRows6600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6600=2892 := by core033_kernel_decide
theorem rows6601 : actualRows6601=WordField.canonicalRows actualModulus 6601 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6601 : actualRows6601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6601=2892 := by core033_kernel_decide
theorem rows6602 : actualRows6602=WordField.canonicalRows actualModulus 6602 (.bxor 6600 6601) := by core033_kernel_decide
theorem stats6602 : actualRows6602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6602=7428 := by core033_kernel_decide
theorem rows6603 : actualRows6603=WordField.canonicalRows actualModulus 6603 (.shr 3795 8) := by core033_kernel_decide
theorem stats6603 : actualRows6603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6603=4548 := by core033_kernel_decide
theorem rows6604 : actualRows6604=WordField.canonicalRows actualModulus 6604 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6604 : actualRows6604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6604=2820 := by core033_kernel_decide
theorem rows6605 : actualRows6605=WordField.canonicalRows actualModulus 6605 (.bnot 6604) := by core033_kernel_decide
theorem stats6605 : actualRows6605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6605=6276 := by core033_kernel_decide
theorem rows6606 : actualRows6606=WordField.canonicalRows actualModulus 6606 (.band 6603 6605) := by core033_kernel_decide
theorem stats6606 : actualRows6606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6606=5124 := by core033_kernel_decide
theorem rows6607 : actualRows6607=WordField.canonicalRows actualModulus 6607 (.shr 3795 8) := by core033_kernel_decide
theorem stats6607 : actualRows6607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6607=4548 := by core033_kernel_decide
theorem rows6608 : actualRows6608=WordField.canonicalRows actualModulus 6608 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6608 : actualRows6608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6608=2820 := by core033_kernel_decide
theorem rows6609 : actualRows6609=WordField.canonicalRows actualModulus 6609 (.bnot 6608) := by core033_kernel_decide
theorem stats6609 : actualRows6609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6609=6276 := by core033_kernel_decide
theorem rows6610 : actualRows6610=WordField.canonicalRows actualModulus 6610 (.bxor 6607 6609) := by core033_kernel_decide
theorem stats6610 : actualRows6610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6610=7428 := by core033_kernel_decide
theorem rows6611 : actualRows6611=WordField.canonicalRows actualModulus 6611 (.shr 3795 8) := by core033_kernel_decide
theorem stats6611 : actualRows6611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6611=4548 := by core033_kernel_decide
theorem rows6612 : actualRows6612=WordField.canonicalRows actualModulus 6612 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6612 : actualRows6612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6612=2820 := by core033_kernel_decide
theorem rows6613 : actualRows6613=WordField.canonicalRows actualModulus 6613 (.bnot 6612) := by core033_kernel_decide
theorem stats6613 : actualRows6613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6613=6276 := by core033_kernel_decide
theorem rows6614 : actualRows6614=WordField.canonicalRows actualModulus 6614 (.badd 6611 6613) := by core033_kernel_decide
theorem stats6614 : actualRows6614.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6614=5388 := by core033_kernel_decide
theorem rows6615 : actualRows6615=WordField.canonicalRows actualModulus 6615 (.bnot 6614) := by core033_kernel_decide
theorem stats6615 : actualRows6615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6615=6276 := by core033_kernel_decide
theorem rows6616 : actualRows6616=WordField.canonicalRows actualModulus 6616 (.band 6610 6615) := by core033_kernel_decide
theorem stats6616 : actualRows6616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6616=5124 := by core033_kernel_decide
theorem rows6617 : actualRows6617=WordField.canonicalRows actualModulus 6617 (.bxor 6606 6616) := by core033_kernel_decide
theorem stats6617 : actualRows6617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6617=7428 := by core033_kernel_decide
theorem rows6618 : actualRows6618=WordField.canonicalRows actualModulus 6618 (.shr 6617 31) := by core033_kernel_decide
theorem stats6618 : actualRows6618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6618=2892 := by core033_kernel_decide
theorem rows6619 : actualRows6619=WordField.canonicalRows actualModulus 6619 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6619 : actualRows6619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6619=2892 := by core033_kernel_decide
theorem rows6620 : actualRows6620=WordField.canonicalRows actualModulus 6620 (.bxor 6618 6619) := by core033_kernel_decide
theorem stats6620 : actualRows6620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6620=7428 := by core033_kernel_decide
theorem rows6621 : actualRows6621=WordField.canonicalRows actualModulus 6621 (.shr 3847 8) := by core033_kernel_decide
theorem stats6621 : actualRows6621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6621=4548 := by core033_kernel_decide
theorem rows6622 : actualRows6622=WordField.canonicalRows actualModulus 6622 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6622 : actualRows6622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6622=2820 := by core033_kernel_decide
theorem rows6623 : actualRows6623=WordField.canonicalRows actualModulus 6623 (.bnot 6622) := by core033_kernel_decide
theorem stats6623 : actualRows6623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6623=6276 := by core033_kernel_decide
def partRows101 : List R1CS.Row := actualRows6560++actualRows6561++actualRows6562++actualRows6563++actualRows6564++actualRows6565++actualRows6566++actualRows6567++actualRows6568++actualRows6569++actualRows6570++actualRows6571++actualRows6572++actualRows6573++actualRows6574++actualRows6575++actualRows6576++actualRows6577++actualRows6578++actualRows6579++actualRows6580++actualRows6581++actualRows6582++actualRows6583++actualRows6584++actualRows6585++actualRows6586++actualRows6587++actualRows6588++actualRows6589++actualRows6590++actualRows6591++actualRows6592++actualRows6593++actualRows6594++actualRows6595++actualRows6596++actualRows6597++actualRows6598++actualRows6599++actualRows6600++actualRows6601++actualRows6602++actualRows6603++actualRows6604++actualRows6605++actualRows6606++actualRows6607++actualRows6608++actualRows6609++actualRows6610++actualRows6611++actualRows6612++actualRows6613++actualRows6614++actualRows6615++actualRows6616++actualRows6617++actualRows6618++actualRows6619++actualRows6620++actualRows6621++actualRows6622++actualRows6623
def partOps101 : List WordIR.Op := [.badd 6557 6559,.bnot 6560,.band 6556 6561,.bxor 6552 6562,.shr 6563 31,.literal (BitVec.ofNat 32 1),.bxor 6564 6565,.shr 3691 8,.literal (BitVec.ofNat 32 0),.bnot 6568,.band 6567 6569,.shr 3691 8,.literal (BitVec.ofNat 32 0),.bnot 6572,.bxor 6571 6573,.shr 3691 8,.literal (BitVec.ofNat 32 0),.bnot 6576,.badd 6575 6577,.bnot 6578,.band 6574 6579,.bxor 6570 6580,.shr 6581 31,.literal (BitVec.ofNat 32 1),.bxor 6582 6583,.shr 3743 8,.literal (BitVec.ofNat 32 0),.bnot 6586,.band 6585 6587,.shr 3743 8,.literal (BitVec.ofNat 32 0),.bnot 6590,.bxor 6589 6591,.shr 3743 8,.literal (BitVec.ofNat 32 0),.bnot 6594,.badd 6593 6595,.bnot 6596,.band 6592 6597,.bxor 6588 6598,.shr 6599 31,.literal (BitVec.ofNat 32 1),.bxor 6600 6601,.shr 3795 8,.literal (BitVec.ofNat 32 0),.bnot 6604,.band 6603 6605,.shr 3795 8,.literal (BitVec.ofNat 32 0),.bnot 6608,.bxor 6607 6609,.shr 3795 8,.literal (BitVec.ofNat 32 0),.bnot 6612,.badd 6611 6613,.bnot 6614,.band 6610 6615,.bxor 6606 6616,.shr 6617 31,.literal (BitVec.ofNat 32 1),.bxor 6618 6619,.shr 3847 8,.literal (BitVec.ofNat 32 0),.bnot 6622]
theorem partExact101 : partRows101=WordField.rows actualModulus 6560 partOps101 := by
  simp only [partRows101,partOps101,WordField.rows,rows6560,rows6561,rows6562,rows6563,rows6564,rows6565,rows6566,rows6567,rows6568,rows6569,rows6570,rows6571,rows6572,rows6573,rows6574,rows6575,rows6576,rows6577,rows6578,rows6579,rows6580,rows6581,rows6582,rows6583,rows6584,rows6585,rows6586,rows6587,rows6588,rows6589,rows6590,rows6591,rows6592,rows6593,rows6594,rows6595,rows6596,rows6597,rows6598,rows6599,rows6600,rows6601,rows6602,rows6603,rows6604,rows6605,rows6606,rows6607,rows6608,rows6609,rows6610,rows6611,rows6612,rows6613,rows6614,rows6615,rows6616,rows6617,rows6618,rows6619,rows6620,rows6621,rows6622,rows6623,List.append_assoc,List.append_nil]
theorem partLength101 : partOps101.length=64 := by decide
theorem partStats101 : partRows101.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows101=323808 := by
  simp only [partRows101,List.length_append,MatrixRowBlocks.rows_weight_append,stats6560.1,stats6560.2,stats6561.1,stats6561.2,stats6562.1,stats6562.2,stats6563.1,stats6563.2,stats6564.1,stats6564.2,stats6565.1,stats6565.2,stats6566.1,stats6566.2,stats6567.1,stats6567.2,stats6568.1,stats6568.2,stats6569.1,stats6569.2,stats6570.1,stats6570.2,stats6571.1,stats6571.2,stats6572.1,stats6572.2,stats6573.1,stats6573.2,stats6574.1,stats6574.2,stats6575.1,stats6575.2,stats6576.1,stats6576.2,stats6577.1,stats6577.2,stats6578.1,stats6578.2,stats6579.1,stats6579.2,stats6580.1,stats6580.2,stats6581.1,stats6581.2,stats6582.1,stats6582.2,stats6583.1,stats6583.2,stats6584.1,stats6584.2,stats6585.1,stats6585.2,stats6586.1,stats6586.2,stats6587.1,stats6587.2,stats6588.1,stats6588.2,stats6589.1,stats6589.2,stats6590.1,stats6590.2,stats6591.1,stats6591.2,stats6592.1,stats6592.2,stats6593.1,stats6593.2,stats6594.1,stats6594.2,stats6595.1,stats6595.2,stats6596.1,stats6596.2,stats6597.1,stats6597.2,stats6598.1,stats6598.2,stats6599.1,stats6599.2,stats6600.1,stats6600.2,stats6601.1,stats6601.2,stats6602.1,stats6602.2,stats6603.1,stats6603.2,stats6604.1,stats6604.2,stats6605.1,stats6605.2,stats6606.1,stats6606.2,stats6607.1,stats6607.2,stats6608.1,stats6608.2,stats6609.1,stats6609.2,stats6610.1,stats6610.2,stats6611.1,stats6611.2,stats6612.1,stats6612.2,stats6613.1,stats6613.2,stats6614.1,stats6614.2,stats6615.1,stats6615.2,stats6616.1,stats6616.2,stats6617.1,stats6617.2,stats6618.1,stats6618.2,stats6619.1,stats6619.2,stats6620.1,stats6620.2,stats6621.1,stats6621.2,stats6622.1,stats6622.2,stats6623.1,stats6623.2]
  decide
end QuotedPairedPathRoundCheckedRows
