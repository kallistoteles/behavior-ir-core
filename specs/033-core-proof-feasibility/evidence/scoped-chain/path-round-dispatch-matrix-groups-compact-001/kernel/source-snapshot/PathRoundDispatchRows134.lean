import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData134
import PathRoundDispatchInstructionMatrixData135
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8619 : actualRows8619=WordField.canonicalRows actualModulus 8619 (.badd 8618 7240) := by core033_kernel_decide
theorem stats8619 : actualRows8619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8619=5388 := by core033_kernel_decide
theorem rows8620 : actualRows8620=WordField.canonicalRows actualModulus 8620 (.rotr 8604 2) := by core033_kernel_decide
theorem stats8620 : actualRows8620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8620=5124 := by core033_kernel_decide
theorem rows8621 : actualRows8621=WordField.canonicalRows actualModulus 8621 (.rotr 8604 13) := by core033_kernel_decide
theorem stats8621 : actualRows8621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8621=5124 := by core033_kernel_decide
theorem rows8622 : actualRows8622=WordField.canonicalRows actualModulus 8622 (.bxor 8620 8621) := by core033_kernel_decide
theorem stats8622 : actualRows8622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8622=7428 := by core033_kernel_decide
theorem rows8623 : actualRows8623=WordField.canonicalRows actualModulus 8623 (.rotr 8604 22) := by core033_kernel_decide
theorem stats8623 : actualRows8623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8623=5124 := by core033_kernel_decide
theorem rows8624 : actualRows8624=WordField.canonicalRows actualModulus 8624 (.bxor 8622 8623) := by core033_kernel_decide
theorem stats8624 : actualRows8624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8624=7428 := by core033_kernel_decide
theorem rows8625 : actualRows8625=WordField.canonicalRows actualModulus 8625 (.band 8604 8577) := by core033_kernel_decide
theorem stats8625 : actualRows8625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8625=5124 := by core033_kernel_decide
theorem rows8626 : actualRows8626=WordField.canonicalRows actualModulus 8626 (.band 8604 8550) := by core033_kernel_decide
theorem stats8626 : actualRows8626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8626=5124 := by core033_kernel_decide
theorem rows8627 : actualRows8627=WordField.canonicalRows actualModulus 8627 (.bxor 8625 8626) := by core033_kernel_decide
theorem stats8627 : actualRows8627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8627=7428 := by core033_kernel_decide
theorem rows8628 : actualRows8628=WordField.canonicalRows actualModulus 8628 (.band 8577 8550) := by core033_kernel_decide
theorem stats8628 : actualRows8628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8628=5124 := by core033_kernel_decide
theorem rows8629 : actualRows8629=WordField.canonicalRows actualModulus 8629 (.bxor 8627 8628) := by core033_kernel_decide
theorem stats8629 : actualRows8629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8629=7428 := by core033_kernel_decide
theorem rows8630 : actualRows8630=WordField.canonicalRows actualModulus 8630 (.badd 8624 8629) := by core033_kernel_decide
theorem stats8630 : actualRows8630.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8630=5388 := by core033_kernel_decide
theorem rows8631 : actualRows8631=WordField.canonicalRows actualModulus 8631 (.badd 8619 8630) := by core033_kernel_decide
theorem stats8631 : actualRows8631.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8631=5388 := by core033_kernel_decide
theorem rows8632 : actualRows8632=WordField.canonicalRows actualModulus 8632 (.badd 8523 8619) := by core033_kernel_decide
theorem stats8632 : actualRows8632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8632=5388 := by core033_kernel_decide
theorem rows8633 : actualRows8633=WordField.canonicalRows actualModulus 8633 (.rotr 8632 6) := by core033_kernel_decide
theorem stats8633 : actualRows8633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8633=5124 := by core033_kernel_decide
theorem rows8634 : actualRows8634=WordField.canonicalRows actualModulus 8634 (.rotr 8632 11) := by core033_kernel_decide
theorem stats8634 : actualRows8634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8634=5124 := by core033_kernel_decide
theorem rows8635 : actualRows8635=WordField.canonicalRows actualModulus 8635 (.bxor 8633 8634) := by core033_kernel_decide
theorem stats8635 : actualRows8635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8635=7428 := by core033_kernel_decide
theorem rows8636 : actualRows8636=WordField.canonicalRows actualModulus 8636 (.rotr 8632 25) := by core033_kernel_decide
theorem stats8636 : actualRows8636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8636=5124 := by core033_kernel_decide
theorem rows8637 : actualRows8637=WordField.canonicalRows actualModulus 8637 (.bxor 8635 8636) := by core033_kernel_decide
theorem stats8637 : actualRows8637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8637=7428 := by core033_kernel_decide
theorem rows8638 : actualRows8638=WordField.canonicalRows actualModulus 8638 (.badd 8551 8637) := by core033_kernel_decide
theorem stats8638 : actualRows8638.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8638=5388 := by core033_kernel_decide
theorem rows8639 : actualRows8639=WordField.canonicalRows actualModulus 8639 (.band 8632 8605) := by core033_kernel_decide
theorem stats8639 : actualRows8639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8639=5124 := by core033_kernel_decide
theorem rows8640 : actualRows8640=WordField.canonicalRows actualModulus 8640 (.bnot 8632) := by core033_kernel_decide
theorem stats8640 : actualRows8640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8640=6276 := by core033_kernel_decide
theorem rows8641 : actualRows8641=WordField.canonicalRows actualModulus 8641 (.band 8640 8578) := by core033_kernel_decide
theorem stats8641 : actualRows8641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8641=5124 := by core033_kernel_decide
theorem rows8642 : actualRows8642=WordField.canonicalRows actualModulus 8642 (.bxor 8639 8641) := by core033_kernel_decide
theorem stats8642 : actualRows8642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8642=7428 := by core033_kernel_decide
theorem rows8643 : actualRows8643=WordField.canonicalRows actualModulus 8643 (.badd 8638 8642) := by core033_kernel_decide
theorem stats8643 : actualRows8643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8643=5388 := by core033_kernel_decide
theorem rows8644 : actualRows8644=WordField.canonicalRows actualModulus 8644 (.literal (BitVec.ofNat 32 2730485921)) := by core033_kernel_decide
theorem stats8644 : actualRows8644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8644=4044 := by core033_kernel_decide
theorem rows8645 : actualRows8645=WordField.canonicalRows actualModulus 8645 (.badd 8643 8644) := by core033_kernel_decide
theorem stats8645 : actualRows8645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8645=5388 := by core033_kernel_decide
theorem rows8646 : actualRows8646=WordField.canonicalRows actualModulus 8646 (.badd 8645 7253) := by core033_kernel_decide
theorem stats8646 : actualRows8646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8646=5388 := by core033_kernel_decide
theorem rows8647 : actualRows8647=WordField.canonicalRows actualModulus 8647 (.rotr 8631 2) := by core033_kernel_decide
theorem stats8647 : actualRows8647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8647=5124 := by core033_kernel_decide
theorem rows8648 : actualRows8648=WordField.canonicalRows actualModulus 8648 (.rotr 8631 13) := by core033_kernel_decide
theorem stats8648 : actualRows8648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8648=5124 := by core033_kernel_decide
theorem rows8649 : actualRows8649=WordField.canonicalRows actualModulus 8649 (.bxor 8647 8648) := by core033_kernel_decide
theorem stats8649 : actualRows8649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8649=7428 := by core033_kernel_decide
theorem rows8650 : actualRows8650=WordField.canonicalRows actualModulus 8650 (.rotr 8631 22) := by core033_kernel_decide
theorem stats8650 : actualRows8650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8650=5124 := by core033_kernel_decide
theorem rows8651 : actualRows8651=WordField.canonicalRows actualModulus 8651 (.bxor 8649 8650) := by core033_kernel_decide
theorem stats8651 : actualRows8651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8651=7428 := by core033_kernel_decide
theorem rows8652 : actualRows8652=WordField.canonicalRows actualModulus 8652 (.band 8631 8604) := by core033_kernel_decide
theorem stats8652 : actualRows8652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8652=5124 := by core033_kernel_decide
theorem rows8653 : actualRows8653=WordField.canonicalRows actualModulus 8653 (.band 8631 8577) := by core033_kernel_decide
theorem stats8653 : actualRows8653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8653=5124 := by core033_kernel_decide
theorem rows8654 : actualRows8654=WordField.canonicalRows actualModulus 8654 (.bxor 8652 8653) := by core033_kernel_decide
theorem stats8654 : actualRows8654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8654=7428 := by core033_kernel_decide
theorem rows8655 : actualRows8655=WordField.canonicalRows actualModulus 8655 (.band 8604 8577) := by core033_kernel_decide
theorem stats8655 : actualRows8655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8655=5124 := by core033_kernel_decide
theorem rows8656 : actualRows8656=WordField.canonicalRows actualModulus 8656 (.bxor 8654 8655) := by core033_kernel_decide
theorem stats8656 : actualRows8656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8656=7428 := by core033_kernel_decide
theorem rows8657 : actualRows8657=WordField.canonicalRows actualModulus 8657 (.badd 8651 8656) := by core033_kernel_decide
theorem stats8657 : actualRows8657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8657=5388 := by core033_kernel_decide
theorem rows8658 : actualRows8658=WordField.canonicalRows actualModulus 8658 (.badd 8646 8657) := by core033_kernel_decide
theorem stats8658 : actualRows8658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8658=5388 := by core033_kernel_decide
theorem rows8659 : actualRows8659=WordField.canonicalRows actualModulus 8659 (.badd 8550 8646) := by core033_kernel_decide
theorem stats8659 : actualRows8659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8659=5388 := by core033_kernel_decide
theorem rows8660 : actualRows8660=WordField.canonicalRows actualModulus 8660 (.rotr 8659 6) := by core033_kernel_decide
theorem stats8660 : actualRows8660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8660=5124 := by core033_kernel_decide
theorem rows8661 : actualRows8661=WordField.canonicalRows actualModulus 8661 (.rotr 8659 11) := by core033_kernel_decide
theorem stats8661 : actualRows8661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8661=5124 := by core033_kernel_decide
theorem rows8662 : actualRows8662=WordField.canonicalRows actualModulus 8662 (.bxor 8660 8661) := by core033_kernel_decide
theorem stats8662 : actualRows8662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8662=7428 := by core033_kernel_decide
theorem rows8663 : actualRows8663=WordField.canonicalRows actualModulus 8663 (.rotr 8659 25) := by core033_kernel_decide
theorem stats8663 : actualRows8663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8663=5124 := by core033_kernel_decide
theorem rows8664 : actualRows8664=WordField.canonicalRows actualModulus 8664 (.bxor 8662 8663) := by core033_kernel_decide
theorem stats8664 : actualRows8664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8664=7428 := by core033_kernel_decide
theorem rows8665 : actualRows8665=WordField.canonicalRows actualModulus 8665 (.badd 8578 8664) := by core033_kernel_decide
theorem stats8665 : actualRows8665.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8665=5388 := by core033_kernel_decide
theorem rows8666 : actualRows8666=WordField.canonicalRows actualModulus 8666 (.band 8659 8632) := by core033_kernel_decide
theorem stats8666 : actualRows8666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8666=5124 := by core033_kernel_decide
theorem rows8667 : actualRows8667=WordField.canonicalRows actualModulus 8667 (.bnot 8659) := by core033_kernel_decide
theorem stats8667 : actualRows8667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8667=6276 := by core033_kernel_decide
theorem rows8668 : actualRows8668=WordField.canonicalRows actualModulus 8668 (.band 8667 8605) := by core033_kernel_decide
theorem stats8668 : actualRows8668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8668=5124 := by core033_kernel_decide
theorem rows8669 : actualRows8669=WordField.canonicalRows actualModulus 8669 (.bxor 8666 8668) := by core033_kernel_decide
theorem stats8669 : actualRows8669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8669=7428 := by core033_kernel_decide
theorem rows8670 : actualRows8670=WordField.canonicalRows actualModulus 8670 (.badd 8665 8669) := by core033_kernel_decide
theorem stats8670 : actualRows8670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8670=5388 := by core033_kernel_decide
theorem rows8671 : actualRows8671=WordField.canonicalRows actualModulus 8671 (.literal (BitVec.ofNat 32 2820302411)) := by core033_kernel_decide
theorem stats8671 : actualRows8671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8671=3828 := by core033_kernel_decide
theorem rows8672 : actualRows8672=WordField.canonicalRows actualModulus 8672 (.badd 8670 8671) := by core033_kernel_decide
theorem stats8672 : actualRows8672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8672=5388 := by core033_kernel_decide
theorem rows8673 : actualRows8673=WordField.canonicalRows actualModulus 8673 (.badd 8672 7266) := by core033_kernel_decide
theorem stats8673 : actualRows8673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8673=5388 := by core033_kernel_decide
theorem rows8674 : actualRows8674=WordField.canonicalRows actualModulus 8674 (.rotr 8658 2) := by core033_kernel_decide
theorem stats8674 : actualRows8674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8674=5124 := by core033_kernel_decide
theorem rows8675 : actualRows8675=WordField.canonicalRows actualModulus 8675 (.rotr 8658 13) := by core033_kernel_decide
theorem stats8675 : actualRows8675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8675=5124 := by core033_kernel_decide
theorem rows8676 : actualRows8676=WordField.canonicalRows actualModulus 8676 (.bxor 8674 8675) := by core033_kernel_decide
theorem stats8676 : actualRows8676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8676=7428 := by core033_kernel_decide
theorem rows8677 : actualRows8677=WordField.canonicalRows actualModulus 8677 (.rotr 8658 22) := by core033_kernel_decide
theorem stats8677 : actualRows8677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8677=5124 := by core033_kernel_decide
theorem rows8678 : actualRows8678=WordField.canonicalRows actualModulus 8678 (.bxor 8676 8677) := by core033_kernel_decide
theorem stats8678 : actualRows8678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8678=7428 := by core033_kernel_decide
theorem rows8679 : actualRows8679=WordField.canonicalRows actualModulus 8679 (.band 8658 8631) := by core033_kernel_decide
theorem stats8679 : actualRows8679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8679=5124 := by core033_kernel_decide
theorem rows8680 : actualRows8680=WordField.canonicalRows actualModulus 8680 (.band 8658 8604) := by core033_kernel_decide
theorem stats8680 : actualRows8680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8680=5124 := by core033_kernel_decide
theorem rows8681 : actualRows8681=WordField.canonicalRows actualModulus 8681 (.bxor 8679 8680) := by core033_kernel_decide
theorem stats8681 : actualRows8681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8681=7428 := by core033_kernel_decide
theorem rows8682 : actualRows8682=WordField.canonicalRows actualModulus 8682 (.band 8631 8604) := by core033_kernel_decide
theorem stats8682 : actualRows8682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8682=5124 := by core033_kernel_decide
def partRows134 : List R1CS.Row := actualRows8619++actualRows8620++actualRows8621++actualRows8622++actualRows8623++actualRows8624++actualRows8625++actualRows8626++actualRows8627++actualRows8628++actualRows8629++actualRows8630++actualRows8631++actualRows8632++actualRows8633++actualRows8634++actualRows8635++actualRows8636++actualRows8637++actualRows8638++actualRows8639++actualRows8640++actualRows8641++actualRows8642++actualRows8643++actualRows8644++actualRows8645++actualRows8646++actualRows8647++actualRows8648++actualRows8649++actualRows8650++actualRows8651++actualRows8652++actualRows8653++actualRows8654++actualRows8655++actualRows8656++actualRows8657++actualRows8658++actualRows8659++actualRows8660++actualRows8661++actualRows8662++actualRows8663++actualRows8664++actualRows8665++actualRows8666++actualRows8667++actualRows8668++actualRows8669++actualRows8670++actualRows8671++actualRows8672++actualRows8673++actualRows8674++actualRows8675++actualRows8676++actualRows8677++actualRows8678++actualRows8679++actualRows8680++actualRows8681++actualRows8682
def partOps134 : List WordIR.Op := [.badd 8618 7240,.rotr 8604 2,.rotr 8604 13,.bxor 8620 8621,.rotr 8604 22,.bxor 8622 8623,.band 8604 8577,.band 8604 8550,.bxor 8625 8626,.band 8577 8550,.bxor 8627 8628,.badd 8624 8629,.badd 8619 8630,.badd 8523 8619,.rotr 8632 6,.rotr 8632 11,.bxor 8633 8634,.rotr 8632 25,.bxor 8635 8636,.badd 8551 8637,.band 8632 8605,.bnot 8632,.band 8640 8578,.bxor 8639 8641,.badd 8638 8642,.literal (BitVec.ofNat 32 2730485921),.badd 8643 8644,.badd 8645 7253,.rotr 8631 2,.rotr 8631 13,.bxor 8647 8648,.rotr 8631 22,.bxor 8649 8650,.band 8631 8604,.band 8631 8577,.bxor 8652 8653,.band 8604 8577,.bxor 8654 8655,.badd 8651 8656,.badd 8646 8657,.badd 8550 8646,.rotr 8659 6,.rotr 8659 11,.bxor 8660 8661,.rotr 8659 25,.bxor 8662 8663,.badd 8578 8664,.band 8659 8632,.bnot 8659,.band 8667 8605,.bxor 8666 8668,.badd 8665 8669,.literal (BitVec.ofNat 32 2820302411),.badd 8670 8671,.badd 8672 7266,.rotr 8658 2,.rotr 8658 13,.bxor 8674 8675,.rotr 8658 22,.bxor 8676 8677,.band 8658 8631,.band 8658 8604,.bxor 8679 8680,.band 8631 8604]
theorem partExact134 : partRows134=WordField.rows actualModulus 8619 partOps134 := by
  simp only [partRows134,partOps134,WordField.rows,rows8619,rows8620,rows8621,rows8622,rows8623,rows8624,rows8625,rows8626,rows8627,rows8628,rows8629,rows8630,rows8631,rows8632,rows8633,rows8634,rows8635,rows8636,rows8637,rows8638,rows8639,rows8640,rows8641,rows8642,rows8643,rows8644,rows8645,rows8646,rows8647,rows8648,rows8649,rows8650,rows8651,rows8652,rows8653,rows8654,rows8655,rows8656,rows8657,rows8658,rows8659,rows8660,rows8661,rows8662,rows8663,rows8664,rows8665,rows8666,rows8667,rows8668,rows8669,rows8670,rows8671,rows8672,rows8673,rows8674,rows8675,rows8676,rows8677,rows8678,rows8679,rows8680,rows8681,rows8682,List.append_assoc,List.append_nil]
theorem partLength134 : partOps134.length=64 := by decide
theorem partStats134 : partRows134.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows134=370992 := by
  simp only [partRows134,List.length_append,MatrixRowBlocks.rows_weight_append,stats8619.1,stats8619.2,stats8620.1,stats8620.2,stats8621.1,stats8621.2,stats8622.1,stats8622.2,stats8623.1,stats8623.2,stats8624.1,stats8624.2,stats8625.1,stats8625.2,stats8626.1,stats8626.2,stats8627.1,stats8627.2,stats8628.1,stats8628.2,stats8629.1,stats8629.2,stats8630.1,stats8630.2,stats8631.1,stats8631.2,stats8632.1,stats8632.2,stats8633.1,stats8633.2,stats8634.1,stats8634.2,stats8635.1,stats8635.2,stats8636.1,stats8636.2,stats8637.1,stats8637.2,stats8638.1,stats8638.2,stats8639.1,stats8639.2,stats8640.1,stats8640.2,stats8641.1,stats8641.2,stats8642.1,stats8642.2,stats8643.1,stats8643.2,stats8644.1,stats8644.2,stats8645.1,stats8645.2,stats8646.1,stats8646.2,stats8647.1,stats8647.2,stats8648.1,stats8648.2,stats8649.1,stats8649.2,stats8650.1,stats8650.2,stats8651.1,stats8651.2,stats8652.1,stats8652.2,stats8653.1,stats8653.2,stats8654.1,stats8654.2,stats8655.1,stats8655.2,stats8656.1,stats8656.2,stats8657.1,stats8657.2,stats8658.1,stats8658.2,stats8659.1,stats8659.2,stats8660.1,stats8660.2,stats8661.1,stats8661.2,stats8662.1,stats8662.2,stats8663.1,stats8663.2,stats8664.1,stats8664.2,stats8665.1,stats8665.2,stats8666.1,stats8666.2,stats8667.1,stats8667.2,stats8668.1,stats8668.2,stats8669.1,stats8669.2,stats8670.1,stats8670.2,stats8671.1,stats8671.2,stats8672.1,stats8672.2,stats8673.1,stats8673.2,stats8674.1,stats8674.2,stats8675.1,stats8675.2,stats8676.1,stats8676.2,stats8677.1,stats8677.2,stats8678.1,stats8678.2,stats8679.1,stats8679.2,stats8680.1,stats8680.2,stats8681.1,stats8681.2,stats8682.1,stats8682.2]
  decide
end PathRoundDispatchCheckedRows
