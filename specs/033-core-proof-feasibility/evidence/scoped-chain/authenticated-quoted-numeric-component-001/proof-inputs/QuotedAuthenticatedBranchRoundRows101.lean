import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData102
import AuthenticatedBranchRoundInstructionMatrixData103
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6582 : actualRows6582=WordField.canonicalRows actualModulus 6582 (.band 6575 6581) := by core033_kernel_decide
theorem stats6582 : actualRows6582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6582=5124 := by core033_kernel_decide
theorem rows6583 : actualRows6583=WordField.canonicalRows actualModulus 6583 (.bxor 6570 6582) := by core033_kernel_decide
theorem stats6583 : actualRows6583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6583=7428 := by core033_kernel_decide
theorem rows6584 : actualRows6584=WordField.canonicalRows actualModulus 6584 (.shr 6583 31) := by core033_kernel_decide
theorem stats6584 : actualRows6584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6584=2892 := by core033_kernel_decide
theorem rows6585 : actualRows6585=WordField.canonicalRows actualModulus 6585 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6585 : actualRows6585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6585=2892 := by core033_kernel_decide
theorem rows6586 : actualRows6586=WordField.canonicalRows actualModulus 6586 (.bxor 6584 6585) := by core033_kernel_decide
theorem stats6586 : actualRows6586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6586=7428 := by core033_kernel_decide
theorem rows6587 : actualRows6587=WordField.canonicalRows actualModulus 6587 (.bnot 6586) := by core033_kernel_decide
theorem stats6587 : actualRows6587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6587=6276 := by core033_kernel_decide
theorem rows6588 : actualRows6588=WordField.canonicalRows actualModulus 6588 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6588 : actualRows6588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6588=2892 := by core033_kernel_decide
theorem rows6589 : actualRows6589=WordField.canonicalRows actualModulus 6589 (.badd 6587 6588) := by core033_kernel_decide
theorem stats6589 : actualRows6589.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6589=5388 := by core033_kernel_decide
theorem rows6590 : actualRows6590=WordField.canonicalRows actualModulus 6590 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6590 : actualRows6590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6590=2820 := by core033_kernel_decide
theorem rows6591 : actualRows6591=WordField.canonicalRows actualModulus 6591 (.band 6589 6590) := by core033_kernel_decide
theorem stats6591 : actualRows6591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6591=5124 := by core033_kernel_decide
theorem rows6592 : actualRows6592=WordField.canonicalRows actualModulus 6592 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6592 : actualRows6592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6592=2892 := by core033_kernel_decide
theorem rows6593 : actualRows6593=WordField.canonicalRows actualModulus 6593 (.bxor 1299 6592) := by core033_kernel_decide
theorem stats6593 : actualRows6593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6593=7428 := by core033_kernel_decide
theorem rows6594 : actualRows6594=WordField.canonicalRows actualModulus 6594 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6594 : actualRows6594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6594=2820 := by core033_kernel_decide
theorem rows6595 : actualRows6595=WordField.canonicalRows actualModulus 6595 (.bnot 6594) := by core033_kernel_decide
theorem stats6595 : actualRows6595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6595=6276 := by core033_kernel_decide
theorem rows6596 : actualRows6596=WordField.canonicalRows actualModulus 6596 (.band 6593 6595) := by core033_kernel_decide
theorem stats6596 : actualRows6596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6596=5124 := by core033_kernel_decide
theorem rows6597 : actualRows6597=WordField.canonicalRows actualModulus 6597 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6597 : actualRows6597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6597=2892 := by core033_kernel_decide
theorem rows6598 : actualRows6598=WordField.canonicalRows actualModulus 6598 (.bxor 1299 6597) := by core033_kernel_decide
theorem stats6598 : actualRows6598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6598=7428 := by core033_kernel_decide
theorem rows6599 : actualRows6599=WordField.canonicalRows actualModulus 6599 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6599 : actualRows6599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6599=2820 := by core033_kernel_decide
theorem rows6600 : actualRows6600=WordField.canonicalRows actualModulus 6600 (.bnot 6599) := by core033_kernel_decide
theorem stats6600 : actualRows6600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6600=6276 := by core033_kernel_decide
theorem rows6601 : actualRows6601=WordField.canonicalRows actualModulus 6601 (.bxor 6598 6600) := by core033_kernel_decide
theorem stats6601 : actualRows6601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6601=7428 := by core033_kernel_decide
theorem rows6602 : actualRows6602=WordField.canonicalRows actualModulus 6602 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6602 : actualRows6602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6602=2892 := by core033_kernel_decide
theorem rows6603 : actualRows6603=WordField.canonicalRows actualModulus 6603 (.bxor 1299 6602) := by core033_kernel_decide
theorem stats6603 : actualRows6603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6603=7428 := by core033_kernel_decide
theorem rows6604 : actualRows6604=WordField.canonicalRows actualModulus 6604 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6604 : actualRows6604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6604=2820 := by core033_kernel_decide
theorem rows6605 : actualRows6605=WordField.canonicalRows actualModulus 6605 (.bnot 6604) := by core033_kernel_decide
theorem stats6605 : actualRows6605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6605=6276 := by core033_kernel_decide
theorem rows6606 : actualRows6606=WordField.canonicalRows actualModulus 6606 (.badd 6603 6605) := by core033_kernel_decide
theorem stats6606 : actualRows6606.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6606=5388 := by core033_kernel_decide
theorem rows6607 : actualRows6607=WordField.canonicalRows actualModulus 6607 (.bnot 6606) := by core033_kernel_decide
theorem stats6607 : actualRows6607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6607=6276 := by core033_kernel_decide
theorem rows6608 : actualRows6608=WordField.canonicalRows actualModulus 6608 (.band 6601 6607) := by core033_kernel_decide
theorem stats6608 : actualRows6608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6608=5124 := by core033_kernel_decide
theorem rows6609 : actualRows6609=WordField.canonicalRows actualModulus 6609 (.bxor 6596 6608) := by core033_kernel_decide
theorem stats6609 : actualRows6609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6609=7428 := by core033_kernel_decide
theorem rows6610 : actualRows6610=WordField.canonicalRows actualModulus 6610 (.shr 6609 31) := by core033_kernel_decide
theorem stats6610 : actualRows6610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6610=2892 := by core033_kernel_decide
theorem rows6611 : actualRows6611=WordField.canonicalRows actualModulus 6611 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6611 : actualRows6611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6611=2892 := by core033_kernel_decide
theorem rows6612 : actualRows6612=WordField.canonicalRows actualModulus 6612 (.bxor 6610 6611) := by core033_kernel_decide
theorem stats6612 : actualRows6612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6612=7428 := by core033_kernel_decide
theorem rows6613 : actualRows6613=WordField.canonicalRows actualModulus 6613 (.bnot 6612) := by core033_kernel_decide
theorem stats6613 : actualRows6613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6613=6276 := by core033_kernel_decide
theorem rows6614 : actualRows6614=WordField.canonicalRows actualModulus 6614 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6614 : actualRows6614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6614=2892 := by core033_kernel_decide
theorem rows6615 : actualRows6615=WordField.canonicalRows actualModulus 6615 (.badd 6613 6614) := by core033_kernel_decide
theorem stats6615 : actualRows6615.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6615=5388 := by core033_kernel_decide
theorem rows6616 : actualRows6616=WordField.canonicalRows actualModulus 6616 (.bnot 6615) := by core033_kernel_decide
theorem stats6616 : actualRows6616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6616=6276 := by core033_kernel_decide
theorem rows6617 : actualRows6617=WordField.canonicalRows actualModulus 6617 (.band 6616 2678) := by core033_kernel_decide
theorem stats6617 : actualRows6617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6617=5124 := by core033_kernel_decide
theorem rows6618 : actualRows6618=WordField.canonicalRows actualModulus 6618 (.bxor 6591 6617) := by core033_kernel_decide
theorem stats6618 : actualRows6618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6618=7428 := by core033_kernel_decide
theorem rows6619 : actualRows6619=WordField.canonicalRows actualModulus 6619 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6619 : actualRows6619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6619=2892 := by core033_kernel_decide
theorem rows6620 : actualRows6620=WordField.canonicalRows actualModulus 6620 (.bxor 1299 6619) := by core033_kernel_decide
theorem stats6620 : actualRows6620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6620=7428 := by core033_kernel_decide
theorem rows6621 : actualRows6621=WordField.canonicalRows actualModulus 6621 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6621 : actualRows6621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6621=2820 := by core033_kernel_decide
theorem rows6622 : actualRows6622=WordField.canonicalRows actualModulus 6622 (.bnot 6621) := by core033_kernel_decide
theorem stats6622 : actualRows6622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6622=6276 := by core033_kernel_decide
theorem rows6623 : actualRows6623=WordField.canonicalRows actualModulus 6623 (.band 6620 6622) := by core033_kernel_decide
theorem stats6623 : actualRows6623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6623=5124 := by core033_kernel_decide
theorem rows6624 : actualRows6624=WordField.canonicalRows actualModulus 6624 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6624 : actualRows6624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6624=2892 := by core033_kernel_decide
theorem rows6625 : actualRows6625=WordField.canonicalRows actualModulus 6625 (.bxor 1299 6624) := by core033_kernel_decide
theorem stats6625 : actualRows6625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6625=7428 := by core033_kernel_decide
theorem rows6626 : actualRows6626=WordField.canonicalRows actualModulus 6626 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6626 : actualRows6626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6626=2820 := by core033_kernel_decide
theorem rows6627 : actualRows6627=WordField.canonicalRows actualModulus 6627 (.bnot 6626) := by core033_kernel_decide
theorem stats6627 : actualRows6627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6627=6276 := by core033_kernel_decide
theorem rows6628 : actualRows6628=WordField.canonicalRows actualModulus 6628 (.bxor 6625 6627) := by core033_kernel_decide
theorem stats6628 : actualRows6628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6628=7428 := by core033_kernel_decide
theorem rows6629 : actualRows6629=WordField.canonicalRows actualModulus 6629 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6629 : actualRows6629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6629=2892 := by core033_kernel_decide
theorem rows6630 : actualRows6630=WordField.canonicalRows actualModulus 6630 (.bxor 1299 6629) := by core033_kernel_decide
theorem stats6630 : actualRows6630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6630=7428 := by core033_kernel_decide
theorem rows6631 : actualRows6631=WordField.canonicalRows actualModulus 6631 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6631 : actualRows6631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6631=2820 := by core033_kernel_decide
theorem rows6632 : actualRows6632=WordField.canonicalRows actualModulus 6632 (.bnot 6631) := by core033_kernel_decide
theorem stats6632 : actualRows6632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6632=6276 := by core033_kernel_decide
theorem rows6633 : actualRows6633=WordField.canonicalRows actualModulus 6633 (.badd 6630 6632) := by core033_kernel_decide
theorem stats6633 : actualRows6633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6633=5388 := by core033_kernel_decide
theorem rows6634 : actualRows6634=WordField.canonicalRows actualModulus 6634 (.bnot 6633) := by core033_kernel_decide
theorem stats6634 : actualRows6634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6634=6276 := by core033_kernel_decide
theorem rows6635 : actualRows6635=WordField.canonicalRows actualModulus 6635 (.band 6628 6634) := by core033_kernel_decide
theorem stats6635 : actualRows6635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6635=5124 := by core033_kernel_decide
theorem rows6636 : actualRows6636=WordField.canonicalRows actualModulus 6636 (.bxor 6623 6635) := by core033_kernel_decide
theorem stats6636 : actualRows6636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6636=7428 := by core033_kernel_decide
theorem rows6637 : actualRows6637=WordField.canonicalRows actualModulus 6637 (.shr 6636 31) := by core033_kernel_decide
theorem stats6637 : actualRows6637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6637=2892 := by core033_kernel_decide
theorem rows6638 : actualRows6638=WordField.canonicalRows actualModulus 6638 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6638 : actualRows6638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6638=2892 := by core033_kernel_decide
theorem rows6639 : actualRows6639=WordField.canonicalRows actualModulus 6639 (.bxor 6637 6638) := by core033_kernel_decide
theorem stats6639 : actualRows6639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6639=7428 := by core033_kernel_decide
theorem rows6640 : actualRows6640=WordField.canonicalRows actualModulus 6640 (.bnot 6639) := by core033_kernel_decide
theorem stats6640 : actualRows6640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6640=6276 := by core033_kernel_decide
theorem rows6641 : actualRows6641=WordField.canonicalRows actualModulus 6641 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6641 : actualRows6641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6641=2892 := by core033_kernel_decide
theorem rows6642 : actualRows6642=WordField.canonicalRows actualModulus 6642 (.badd 6640 6641) := by core033_kernel_decide
theorem stats6642 : actualRows6642.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6642=5388 := by core033_kernel_decide
theorem rows6643 : actualRows6643=WordField.canonicalRows actualModulus 6643 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6643 : actualRows6643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6643=2820 := by core033_kernel_decide
theorem rows6644 : actualRows6644=WordField.canonicalRows actualModulus 6644 (.band 6642 6643) := by core033_kernel_decide
theorem stats6644 : actualRows6644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6644=5124 := by core033_kernel_decide
theorem rows6645 : actualRows6645=WordField.canonicalRows actualModulus 6645 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6645 : actualRows6645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6645=2892 := by core033_kernel_decide
def partRows101 : List R1CS.Row := actualRows6582++actualRows6583++actualRows6584++actualRows6585++actualRows6586++actualRows6587++actualRows6588++actualRows6589++actualRows6590++actualRows6591++actualRows6592++actualRows6593++actualRows6594++actualRows6595++actualRows6596++actualRows6597++actualRows6598++actualRows6599++actualRows6600++actualRows6601++actualRows6602++actualRows6603++actualRows6604++actualRows6605++actualRows6606++actualRows6607++actualRows6608++actualRows6609++actualRows6610++actualRows6611++actualRows6612++actualRows6613++actualRows6614++actualRows6615++actualRows6616++actualRows6617++actualRows6618++actualRows6619++actualRows6620++actualRows6621++actualRows6622++actualRows6623++actualRows6624++actualRows6625++actualRows6626++actualRows6627++actualRows6628++actualRows6629++actualRows6630++actualRows6631++actualRows6632++actualRows6633++actualRows6634++actualRows6635++actualRows6636++actualRows6637++actualRows6638++actualRows6639++actualRows6640++actualRows6641++actualRows6642++actualRows6643++actualRows6644++actualRows6645
def partOps101 : List WordIR.Op := [.band 6575 6581,.bxor 6570 6582,.shr 6583 31,.literal (BitVec.ofNat 32 1),.bxor 6584 6585,.bnot 6586,.literal (BitVec.ofNat 32 1),.badd 6587 6588,.literal (BitVec.ofNat 32 0),.band 6589 6590,.literal (BitVec.ofNat 32 2),.bxor 1299 6592,.literal (BitVec.ofNat 32 0),.bnot 6594,.band 6593 6595,.literal (BitVec.ofNat 32 2),.bxor 1299 6597,.literal (BitVec.ofNat 32 0),.bnot 6599,.bxor 6598 6600,.literal (BitVec.ofNat 32 2),.bxor 1299 6602,.literal (BitVec.ofNat 32 0),.bnot 6604,.badd 6603 6605,.bnot 6606,.band 6601 6607,.bxor 6596 6608,.shr 6609 31,.literal (BitVec.ofNat 32 1),.bxor 6610 6611,.bnot 6612,.literal (BitVec.ofNat 32 1),.badd 6613 6614,.bnot 6615,.band 6616 2678,.bxor 6591 6617,.literal (BitVec.ofNat 32 2),.bxor 1299 6619,.literal (BitVec.ofNat 32 0),.bnot 6621,.band 6620 6622,.literal (BitVec.ofNat 32 2),.bxor 1299 6624,.literal (BitVec.ofNat 32 0),.bnot 6626,.bxor 6625 6627,.literal (BitVec.ofNat 32 2),.bxor 1299 6629,.literal (BitVec.ofNat 32 0),.bnot 6631,.badd 6630 6632,.bnot 6633,.band 6628 6634,.bxor 6623 6635,.shr 6636 31,.literal (BitVec.ofNat 32 1),.bxor 6637 6638,.bnot 6639,.literal (BitVec.ofNat 32 1),.badd 6640 6641,.literal (BitVec.ofNat 32 0),.band 6642 6643,.literal (BitVec.ofNat 32 2)]
theorem partExact101 : partRows101=WordField.rows actualModulus 6582 partOps101 := by
  simp only [partRows101,partOps101,WordField.rows,rows6582,rows6583,rows6584,rows6585,rows6586,rows6587,rows6588,rows6589,rows6590,rows6591,rows6592,rows6593,rows6594,rows6595,rows6596,rows6597,rows6598,rows6599,rows6600,rows6601,rows6602,rows6603,rows6604,rows6605,rows6606,rows6607,rows6608,rows6609,rows6610,rows6611,rows6612,rows6613,rows6614,rows6615,rows6616,rows6617,rows6618,rows6619,rows6620,rows6621,rows6622,rows6623,rows6624,rows6625,rows6626,rows6627,rows6628,rows6629,rows6630,rows6631,rows6632,rows6633,rows6634,rows6635,rows6636,rows6637,rows6638,rows6639,rows6640,rows6641,rows6642,rows6643,rows6644,rows6645,List.append_assoc,List.append_nil]
theorem partLength101 : partOps101.length=64 := by decide
theorem partStats101 : partRows101.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows101=323496 := by
  simp only [partRows101,List.length_append,MatrixRowBlocks.rows_weight_append,stats6582.1,stats6582.2,stats6583.1,stats6583.2,stats6584.1,stats6584.2,stats6585.1,stats6585.2,stats6586.1,stats6586.2,stats6587.1,stats6587.2,stats6588.1,stats6588.2,stats6589.1,stats6589.2,stats6590.1,stats6590.2,stats6591.1,stats6591.2,stats6592.1,stats6592.2,stats6593.1,stats6593.2,stats6594.1,stats6594.2,stats6595.1,stats6595.2,stats6596.1,stats6596.2,stats6597.1,stats6597.2,stats6598.1,stats6598.2,stats6599.1,stats6599.2,stats6600.1,stats6600.2,stats6601.1,stats6601.2,stats6602.1,stats6602.2,stats6603.1,stats6603.2,stats6604.1,stats6604.2,stats6605.1,stats6605.2,stats6606.1,stats6606.2,stats6607.1,stats6607.2,stats6608.1,stats6608.2,stats6609.1,stats6609.2,stats6610.1,stats6610.2,stats6611.1,stats6611.2,stats6612.1,stats6612.2,stats6613.1,stats6613.2,stats6614.1,stats6614.2,stats6615.1,stats6615.2,stats6616.1,stats6616.2,stats6617.1,stats6617.2,stats6618.1,stats6618.2,stats6619.1,stats6619.2,stats6620.1,stats6620.2,stats6621.1,stats6621.2,stats6622.1,stats6622.2,stats6623.1,stats6623.2,stats6624.1,stats6624.2,stats6625.1,stats6625.2,stats6626.1,stats6626.2,stats6627.1,stats6627.2,stats6628.1,stats6628.2,stats6629.1,stats6629.2,stats6630.1,stats6630.2,stats6631.1,stats6631.2,stats6632.1,stats6632.2,stats6633.1,stats6633.2,stats6634.1,stats6634.2,stats6635.1,stats6635.2,stats6636.1,stats6636.2,stats6637.1,stats6637.2,stats6638.1,stats6638.2,stats6639.1,stats6639.2,stats6640.1,stats6640.2,stats6641.1,stats6641.2,stats6642.1,stats6642.2,stats6643.1,stats6643.2,stats6644.1,stats6644.2,stats6645.1,stats6645.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
