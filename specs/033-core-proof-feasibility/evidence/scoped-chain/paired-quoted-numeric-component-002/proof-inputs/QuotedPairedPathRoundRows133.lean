import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData134
import PairedPathRoundInstructionMatrixData135
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8608 : actualRows8608=WordField.canonicalRows actualModulus 8608 (.band 8557 8530) := by core033_kernel_decide
theorem stats8608 : actualRows8608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8608=5124 := by core033_kernel_decide
theorem rows8609 : actualRows8609=WordField.canonicalRows actualModulus 8609 (.bxor 8607 8608) := by core033_kernel_decide
theorem stats8609 : actualRows8609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8609=7428 := by core033_kernel_decide
theorem rows8610 : actualRows8610=WordField.canonicalRows actualModulus 8610 (.badd 8604 8609) := by core033_kernel_decide
theorem stats8610 : actualRows8610.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8610=5388 := by core033_kernel_decide
theorem rows8611 : actualRows8611=WordField.canonicalRows actualModulus 8611 (.badd 8599 8610) := by core033_kernel_decide
theorem stats8611 : actualRows8611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8611=5388 := by core033_kernel_decide
theorem rows8612 : actualRows8612=WordField.canonicalRows actualModulus 8612 (.badd 8503 8599) := by core033_kernel_decide
theorem stats8612 : actualRows8612.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8612=5388 := by core033_kernel_decide
theorem rows8613 : actualRows8613=WordField.canonicalRows actualModulus 8613 (.rotr 8612 6) := by core033_kernel_decide
theorem stats8613 : actualRows8613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8613=5124 := by core033_kernel_decide
theorem rows8614 : actualRows8614=WordField.canonicalRows actualModulus 8614 (.rotr 8612 11) := by core033_kernel_decide
theorem stats8614 : actualRows8614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8614=5124 := by core033_kernel_decide
theorem rows8615 : actualRows8615=WordField.canonicalRows actualModulus 8615 (.bxor 8613 8614) := by core033_kernel_decide
theorem stats8615 : actualRows8615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8615=7428 := by core033_kernel_decide
theorem rows8616 : actualRows8616=WordField.canonicalRows actualModulus 8616 (.rotr 8612 25) := by core033_kernel_decide
theorem stats8616 : actualRows8616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8616=5124 := by core033_kernel_decide
theorem rows8617 : actualRows8617=WordField.canonicalRows actualModulus 8617 (.bxor 8615 8616) := by core033_kernel_decide
theorem stats8617 : actualRows8617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8617=7428 := by core033_kernel_decide
theorem rows8618 : actualRows8618=WordField.canonicalRows actualModulus 8618 (.badd 8531 8617) := by core033_kernel_decide
theorem stats8618 : actualRows8618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8618=5388 := by core033_kernel_decide
theorem rows8619 : actualRows8619=WordField.canonicalRows actualModulus 8619 (.band 8612 8585) := by core033_kernel_decide
theorem stats8619 : actualRows8619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8619=5124 := by core033_kernel_decide
theorem rows8620 : actualRows8620=WordField.canonicalRows actualModulus 8620 (.bnot 8612) := by core033_kernel_decide
theorem stats8620 : actualRows8620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8620=6276 := by core033_kernel_decide
theorem rows8621 : actualRows8621=WordField.canonicalRows actualModulus 8621 (.band 8620 8558) := by core033_kernel_decide
theorem stats8621 : actualRows8621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8621=5124 := by core033_kernel_decide
theorem rows8622 : actualRows8622=WordField.canonicalRows actualModulus 8622 (.bxor 8619 8621) := by core033_kernel_decide
theorem stats8622 : actualRows8622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8622=7428 := by core033_kernel_decide
theorem rows8623 : actualRows8623=WordField.canonicalRows actualModulus 8623 (.badd 8618 8622) := by core033_kernel_decide
theorem stats8623 : actualRows8623.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8623=5388 := by core033_kernel_decide
theorem rows8624 : actualRows8624=WordField.canonicalRows actualModulus 8624 (.literal (BitVec.ofNat 32 770255983)) := by core033_kernel_decide
theorem stats8624 : actualRows8624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8624=4116 := by core033_kernel_decide
theorem rows8625 : actualRows8625=WordField.canonicalRows actualModulus 8625 (.badd 8623 8624) := by core033_kernel_decide
theorem stats8625 : actualRows8625.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8625=5388 := by core033_kernel_decide
theorem rows8626 : actualRows8626=WordField.canonicalRows actualModulus 8626 (.badd 8625 7513) := by core033_kernel_decide
theorem stats8626 : actualRows8626.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8626=5388 := by core033_kernel_decide
theorem rows8627 : actualRows8627=WordField.canonicalRows actualModulus 8627 (.rotr 8611 2) := by core033_kernel_decide
theorem stats8627 : actualRows8627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8627=5124 := by core033_kernel_decide
theorem rows8628 : actualRows8628=WordField.canonicalRows actualModulus 8628 (.rotr 8611 13) := by core033_kernel_decide
theorem stats8628 : actualRows8628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8628=5124 := by core033_kernel_decide
theorem rows8629 : actualRows8629=WordField.canonicalRows actualModulus 8629 (.bxor 8627 8628) := by core033_kernel_decide
theorem stats8629 : actualRows8629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8629=7428 := by core033_kernel_decide
theorem rows8630 : actualRows8630=WordField.canonicalRows actualModulus 8630 (.rotr 8611 22) := by core033_kernel_decide
theorem stats8630 : actualRows8630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8630=5124 := by core033_kernel_decide
theorem rows8631 : actualRows8631=WordField.canonicalRows actualModulus 8631 (.bxor 8629 8630) := by core033_kernel_decide
theorem stats8631 : actualRows8631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8631=7428 := by core033_kernel_decide
theorem rows8632 : actualRows8632=WordField.canonicalRows actualModulus 8632 (.band 8611 8584) := by core033_kernel_decide
theorem stats8632 : actualRows8632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8632=5124 := by core033_kernel_decide
theorem rows8633 : actualRows8633=WordField.canonicalRows actualModulus 8633 (.band 8611 8557) := by core033_kernel_decide
theorem stats8633 : actualRows8633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8633=5124 := by core033_kernel_decide
theorem rows8634 : actualRows8634=WordField.canonicalRows actualModulus 8634 (.bxor 8632 8633) := by core033_kernel_decide
theorem stats8634 : actualRows8634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8634=7428 := by core033_kernel_decide
theorem rows8635 : actualRows8635=WordField.canonicalRows actualModulus 8635 (.band 8584 8557) := by core033_kernel_decide
theorem stats8635 : actualRows8635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8635=5124 := by core033_kernel_decide
theorem rows8636 : actualRows8636=WordField.canonicalRows actualModulus 8636 (.bxor 8634 8635) := by core033_kernel_decide
theorem stats8636 : actualRows8636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8636=7428 := by core033_kernel_decide
theorem rows8637 : actualRows8637=WordField.canonicalRows actualModulus 8637 (.badd 8631 8636) := by core033_kernel_decide
theorem stats8637 : actualRows8637.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8637=5388 := by core033_kernel_decide
theorem rows8638 : actualRows8638=WordField.canonicalRows actualModulus 8638 (.badd 8626 8637) := by core033_kernel_decide
theorem stats8638 : actualRows8638.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8638=5388 := by core033_kernel_decide
theorem rows8639 : actualRows8639=WordField.canonicalRows actualModulus 8639 (.badd 8530 8626) := by core033_kernel_decide
theorem stats8639 : actualRows8639.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8639=5388 := by core033_kernel_decide
theorem rows8640 : actualRows8640=WordField.canonicalRows actualModulus 8640 (.rotr 8639 6) := by core033_kernel_decide
theorem stats8640 : actualRows8640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8640=5124 := by core033_kernel_decide
theorem rows8641 : actualRows8641=WordField.canonicalRows actualModulus 8641 (.rotr 8639 11) := by core033_kernel_decide
theorem stats8641 : actualRows8641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8641=5124 := by core033_kernel_decide
theorem rows8642 : actualRows8642=WordField.canonicalRows actualModulus 8642 (.bxor 8640 8641) := by core033_kernel_decide
theorem stats8642 : actualRows8642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8642=7428 := by core033_kernel_decide
theorem rows8643 : actualRows8643=WordField.canonicalRows actualModulus 8643 (.rotr 8639 25) := by core033_kernel_decide
theorem stats8643 : actualRows8643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8643=5124 := by core033_kernel_decide
theorem rows8644 : actualRows8644=WordField.canonicalRows actualModulus 8644 (.bxor 8642 8643) := by core033_kernel_decide
theorem stats8644 : actualRows8644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8644=7428 := by core033_kernel_decide
theorem rows8645 : actualRows8645=WordField.canonicalRows actualModulus 8645 (.badd 8558 8644) := by core033_kernel_decide
theorem stats8645 : actualRows8645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8645=5388 := by core033_kernel_decide
theorem rows8646 : actualRows8646=WordField.canonicalRows actualModulus 8646 (.band 8639 8612) := by core033_kernel_decide
theorem stats8646 : actualRows8646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8646=5124 := by core033_kernel_decide
theorem rows8647 : actualRows8647=WordField.canonicalRows actualModulus 8647 (.bnot 8639) := by core033_kernel_decide
theorem stats8647 : actualRows8647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8647=6276 := by core033_kernel_decide
theorem rows8648 : actualRows8648=WordField.canonicalRows actualModulus 8648 (.band 8647 8585) := by core033_kernel_decide
theorem stats8648 : actualRows8648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8648=5124 := by core033_kernel_decide
theorem rows8649 : actualRows8649=WordField.canonicalRows actualModulus 8649 (.bxor 8646 8648) := by core033_kernel_decide
theorem stats8649 : actualRows8649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8649=7428 := by core033_kernel_decide
theorem rows8650 : actualRows8650=WordField.canonicalRows actualModulus 8650 (.badd 8645 8649) := by core033_kernel_decide
theorem stats8650 : actualRows8650.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8650=5388 := by core033_kernel_decide
theorem rows8651 : actualRows8651=WordField.canonicalRows actualModulus 8651 (.literal (BitVec.ofNat 32 1249150122)) := by core033_kernel_decide
theorem stats8651 : actualRows8651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8651=3756 := by core033_kernel_decide
theorem rows8652 : actualRows8652=WordField.canonicalRows actualModulus 8652 (.badd 8650 8651) := by core033_kernel_decide
theorem stats8652 : actualRows8652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8652=5388 := by core033_kernel_decide
theorem rows8653 : actualRows8653=WordField.canonicalRows actualModulus 8653 (.badd 8652 7526) := by core033_kernel_decide
theorem stats8653 : actualRows8653.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8653=5388 := by core033_kernel_decide
theorem rows8654 : actualRows8654=WordField.canonicalRows actualModulus 8654 (.rotr 8638 2) := by core033_kernel_decide
theorem stats8654 : actualRows8654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8654=5124 := by core033_kernel_decide
theorem rows8655 : actualRows8655=WordField.canonicalRows actualModulus 8655 (.rotr 8638 13) := by core033_kernel_decide
theorem stats8655 : actualRows8655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8655=5124 := by core033_kernel_decide
theorem rows8656 : actualRows8656=WordField.canonicalRows actualModulus 8656 (.bxor 8654 8655) := by core033_kernel_decide
theorem stats8656 : actualRows8656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8656=7428 := by core033_kernel_decide
theorem rows8657 : actualRows8657=WordField.canonicalRows actualModulus 8657 (.rotr 8638 22) := by core033_kernel_decide
theorem stats8657 : actualRows8657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8657=5124 := by core033_kernel_decide
theorem rows8658 : actualRows8658=WordField.canonicalRows actualModulus 8658 (.bxor 8656 8657) := by core033_kernel_decide
theorem stats8658 : actualRows8658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8658=7428 := by core033_kernel_decide
theorem rows8659 : actualRows8659=WordField.canonicalRows actualModulus 8659 (.band 8638 8611) := by core033_kernel_decide
theorem stats8659 : actualRows8659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8659=5124 := by core033_kernel_decide
theorem rows8660 : actualRows8660=WordField.canonicalRows actualModulus 8660 (.band 8638 8584) := by core033_kernel_decide
theorem stats8660 : actualRows8660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8660=5124 := by core033_kernel_decide
theorem rows8661 : actualRows8661=WordField.canonicalRows actualModulus 8661 (.bxor 8659 8660) := by core033_kernel_decide
theorem stats8661 : actualRows8661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8661=7428 := by core033_kernel_decide
theorem rows8662 : actualRows8662=WordField.canonicalRows actualModulus 8662 (.band 8611 8584) := by core033_kernel_decide
theorem stats8662 : actualRows8662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8662=5124 := by core033_kernel_decide
theorem rows8663 : actualRows8663=WordField.canonicalRows actualModulus 8663 (.bxor 8661 8662) := by core033_kernel_decide
theorem stats8663 : actualRows8663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8663=7428 := by core033_kernel_decide
theorem rows8664 : actualRows8664=WordField.canonicalRows actualModulus 8664 (.badd 8658 8663) := by core033_kernel_decide
theorem stats8664 : actualRows8664.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8664=5388 := by core033_kernel_decide
theorem rows8665 : actualRows8665=WordField.canonicalRows actualModulus 8665 (.badd 8653 8664) := by core033_kernel_decide
theorem stats8665 : actualRows8665.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8665=5388 := by core033_kernel_decide
theorem rows8666 : actualRows8666=WordField.canonicalRows actualModulus 8666 (.badd 8557 8653) := by core033_kernel_decide
theorem stats8666 : actualRows8666.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8666=5388 := by core033_kernel_decide
theorem rows8667 : actualRows8667=WordField.canonicalRows actualModulus 8667 (.rotr 8666 6) := by core033_kernel_decide
theorem stats8667 : actualRows8667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8667=5124 := by core033_kernel_decide
theorem rows8668 : actualRows8668=WordField.canonicalRows actualModulus 8668 (.rotr 8666 11) := by core033_kernel_decide
theorem stats8668 : actualRows8668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8668=5124 := by core033_kernel_decide
theorem rows8669 : actualRows8669=WordField.canonicalRows actualModulus 8669 (.bxor 8667 8668) := by core033_kernel_decide
theorem stats8669 : actualRows8669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8669=7428 := by core033_kernel_decide
theorem rows8670 : actualRows8670=WordField.canonicalRows actualModulus 8670 (.rotr 8666 25) := by core033_kernel_decide
theorem stats8670 : actualRows8670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8670=5124 := by core033_kernel_decide
theorem rows8671 : actualRows8671=WordField.canonicalRows actualModulus 8671 (.bxor 8669 8670) := by core033_kernel_decide
theorem stats8671 : actualRows8671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8671=7428 := by core033_kernel_decide
def partRows133 : List R1CS.Row := actualRows8608++actualRows8609++actualRows8610++actualRows8611++actualRows8612++actualRows8613++actualRows8614++actualRows8615++actualRows8616++actualRows8617++actualRows8618++actualRows8619++actualRows8620++actualRows8621++actualRows8622++actualRows8623++actualRows8624++actualRows8625++actualRows8626++actualRows8627++actualRows8628++actualRows8629++actualRows8630++actualRows8631++actualRows8632++actualRows8633++actualRows8634++actualRows8635++actualRows8636++actualRows8637++actualRows8638++actualRows8639++actualRows8640++actualRows8641++actualRows8642++actualRows8643++actualRows8644++actualRows8645++actualRows8646++actualRows8647++actualRows8648++actualRows8649++actualRows8650++actualRows8651++actualRows8652++actualRows8653++actualRows8654++actualRows8655++actualRows8656++actualRows8657++actualRows8658++actualRows8659++actualRows8660++actualRows8661++actualRows8662++actualRows8663++actualRows8664++actualRows8665++actualRows8666++actualRows8667++actualRows8668++actualRows8669++actualRows8670++actualRows8671
def partOps133 : List WordIR.Op := [.band 8557 8530,.bxor 8607 8608,.badd 8604 8609,.badd 8599 8610,.badd 8503 8599,.rotr 8612 6,.rotr 8612 11,.bxor 8613 8614,.rotr 8612 25,.bxor 8615 8616,.badd 8531 8617,.band 8612 8585,.bnot 8612,.band 8620 8558,.bxor 8619 8621,.badd 8618 8622,.literal (BitVec.ofNat 32 770255983),.badd 8623 8624,.badd 8625 7513,.rotr 8611 2,.rotr 8611 13,.bxor 8627 8628,.rotr 8611 22,.bxor 8629 8630,.band 8611 8584,.band 8611 8557,.bxor 8632 8633,.band 8584 8557,.bxor 8634 8635,.badd 8631 8636,.badd 8626 8637,.badd 8530 8626,.rotr 8639 6,.rotr 8639 11,.bxor 8640 8641,.rotr 8639 25,.bxor 8642 8643,.badd 8558 8644,.band 8639 8612,.bnot 8639,.band 8647 8585,.bxor 8646 8648,.badd 8645 8649,.literal (BitVec.ofNat 32 1249150122),.badd 8650 8651,.badd 8652 7526,.rotr 8638 2,.rotr 8638 13,.bxor 8654 8655,.rotr 8638 22,.bxor 8656 8657,.band 8638 8611,.band 8638 8584,.bxor 8659 8660,.band 8611 8584,.bxor 8661 8662,.badd 8658 8663,.badd 8653 8664,.badd 8557 8653,.rotr 8666 6,.rotr 8666 11,.bxor 8667 8668,.rotr 8666 25,.bxor 8669 8670]
theorem partExact133 : partRows133=WordField.rows actualModulus 8608 partOps133 := by
  simp only [partRows133,partOps133,WordField.rows,rows8608,rows8609,rows8610,rows8611,rows8612,rows8613,rows8614,rows8615,rows8616,rows8617,rows8618,rows8619,rows8620,rows8621,rows8622,rows8623,rows8624,rows8625,rows8626,rows8627,rows8628,rows8629,rows8630,rows8631,rows8632,rows8633,rows8634,rows8635,rows8636,rows8637,rows8638,rows8639,rows8640,rows8641,rows8642,rows8643,rows8644,rows8645,rows8646,rows8647,rows8648,rows8649,rows8650,rows8651,rows8652,rows8653,rows8654,rows8655,rows8656,rows8657,rows8658,rows8659,rows8660,rows8661,rows8662,rows8663,rows8664,rows8665,rows8666,rows8667,rows8668,rows8669,rows8670,rows8671,List.append_assoc,List.append_nil]
theorem partLength133 : partOps133.length=64 := by decide
theorem partStats133 : partRows133.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows133=371520 := by
  simp only [partRows133,List.length_append,MatrixRowBlocks.rows_weight_append,stats8608.1,stats8608.2,stats8609.1,stats8609.2,stats8610.1,stats8610.2,stats8611.1,stats8611.2,stats8612.1,stats8612.2,stats8613.1,stats8613.2,stats8614.1,stats8614.2,stats8615.1,stats8615.2,stats8616.1,stats8616.2,stats8617.1,stats8617.2,stats8618.1,stats8618.2,stats8619.1,stats8619.2,stats8620.1,stats8620.2,stats8621.1,stats8621.2,stats8622.1,stats8622.2,stats8623.1,stats8623.2,stats8624.1,stats8624.2,stats8625.1,stats8625.2,stats8626.1,stats8626.2,stats8627.1,stats8627.2,stats8628.1,stats8628.2,stats8629.1,stats8629.2,stats8630.1,stats8630.2,stats8631.1,stats8631.2,stats8632.1,stats8632.2,stats8633.1,stats8633.2,stats8634.1,stats8634.2,stats8635.1,stats8635.2,stats8636.1,stats8636.2,stats8637.1,stats8637.2,stats8638.1,stats8638.2,stats8639.1,stats8639.2,stats8640.1,stats8640.2,stats8641.1,stats8641.2,stats8642.1,stats8642.2,stats8643.1,stats8643.2,stats8644.1,stats8644.2,stats8645.1,stats8645.2,stats8646.1,stats8646.2,stats8647.1,stats8647.2,stats8648.1,stats8648.2,stats8649.1,stats8649.2,stats8650.1,stats8650.2,stats8651.1,stats8651.2,stats8652.1,stats8652.2,stats8653.1,stats8653.2,stats8654.1,stats8654.2,stats8655.1,stats8655.2,stats8656.1,stats8656.2,stats8657.1,stats8657.2,stats8658.1,stats8658.2,stats8659.1,stats8659.2,stats8660.1,stats8660.2,stats8661.1,stats8661.2,stats8662.1,stats8662.2,stats8663.1,stats8663.2,stats8664.1,stats8664.2,stats8665.1,stats8665.2,stats8666.1,stats8666.2,stats8667.1,stats8667.2,stats8668.1,stats8668.2,stats8669.1,stats8669.2,stats8670.1,stats8670.2,stats8671.1,stats8671.2]
  decide
end QuotedPairedPathRoundCheckedRows
