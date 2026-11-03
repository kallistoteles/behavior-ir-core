import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData134
import AuthenticatedBranchRoundInstructionMatrixData135
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8630 : actualRows8630=WordField.canonicalRows actualModulus 8630 (.bxor 8628 8629) := by core033_kernel_decide
theorem stats8630 : actualRows8630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8630=7428 := by core033_kernel_decide
theorem rows8631 : actualRows8631=WordField.canonicalRows actualModulus 8631 (.badd 8630 8547) := by core033_kernel_decide
theorem stats8631 : actualRows8631.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8631=5388 := by core033_kernel_decide
theorem rows8632 : actualRows8632=WordField.canonicalRows actualModulus 8632 (.rotr 8443 7) := by core033_kernel_decide
theorem stats8632 : actualRows8632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8632=5124 := by core033_kernel_decide
theorem rows8633 : actualRows8633=WordField.canonicalRows actualModulus 8633 (.rotr 8443 18) := by core033_kernel_decide
theorem stats8633 : actualRows8633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8633=5124 := by core033_kernel_decide
theorem rows8634 : actualRows8634=WordField.canonicalRows actualModulus 8634 (.bxor 8632 8633) := by core033_kernel_decide
theorem stats8634 : actualRows8634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8634=7428 := by core033_kernel_decide
theorem rows8635 : actualRows8635=WordField.canonicalRows actualModulus 8635 (.shr 8443 3) := by core033_kernel_decide
theorem stats8635 : actualRows8635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8635=4908 := by core033_kernel_decide
theorem rows8636 : actualRows8636=WordField.canonicalRows actualModulus 8636 (.bxor 8634 8635) := by core033_kernel_decide
theorem stats8636 : actualRows8636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8636=7428 := by core033_kernel_decide
theorem rows8637 : actualRows8637=WordField.canonicalRows actualModulus 8637 (.badd 8631 8636) := by core033_kernel_decide
theorem stats8637 : actualRows8637.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8637=5388 := by core033_kernel_decide
theorem rows8638 : actualRows8638=WordField.canonicalRows actualModulus 8638 (.badd 8637 8430) := by core033_kernel_decide
theorem stats8638 : actualRows8638.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8638=5388 := by core033_kernel_decide
theorem rows8639 : actualRows8639=WordField.canonicalRows actualModulus 8639 (.rotr 8625 17) := by core033_kernel_decide
theorem stats8639 : actualRows8639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8639=5124 := by core033_kernel_decide
theorem rows8640 : actualRows8640=WordField.canonicalRows actualModulus 8640 (.rotr 8625 19) := by core033_kernel_decide
theorem stats8640 : actualRows8640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8640=5124 := by core033_kernel_decide
theorem rows8641 : actualRows8641=WordField.canonicalRows actualModulus 8641 (.bxor 8639 8640) := by core033_kernel_decide
theorem stats8641 : actualRows8641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8641=7428 := by core033_kernel_decide
theorem rows8642 : actualRows8642=WordField.canonicalRows actualModulus 8642 (.shr 8625 10) := by core033_kernel_decide
theorem stats8642 : actualRows8642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8642=4404 := by core033_kernel_decide
theorem rows8643 : actualRows8643=WordField.canonicalRows actualModulus 8643 (.bxor 8641 8642) := by core033_kernel_decide
theorem stats8643 : actualRows8643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8643=7428 := by core033_kernel_decide
theorem rows8644 : actualRows8644=WordField.canonicalRows actualModulus 8644 (.badd 8643 8560) := by core033_kernel_decide
theorem stats8644 : actualRows8644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8644=5388 := by core033_kernel_decide
theorem rows8645 : actualRows8645=WordField.canonicalRows actualModulus 8645 (.rotr 8456 7) := by core033_kernel_decide
theorem stats8645 : actualRows8645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8645=5124 := by core033_kernel_decide
theorem rows8646 : actualRows8646=WordField.canonicalRows actualModulus 8646 (.rotr 8456 18) := by core033_kernel_decide
theorem stats8646 : actualRows8646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8646=5124 := by core033_kernel_decide
theorem rows8647 : actualRows8647=WordField.canonicalRows actualModulus 8647 (.bxor 8645 8646) := by core033_kernel_decide
theorem stats8647 : actualRows8647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8647=7428 := by core033_kernel_decide
theorem rows8648 : actualRows8648=WordField.canonicalRows actualModulus 8648 (.shr 8456 3) := by core033_kernel_decide
theorem stats8648 : actualRows8648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8648=4908 := by core033_kernel_decide
theorem rows8649 : actualRows8649=WordField.canonicalRows actualModulus 8649 (.bxor 8647 8648) := by core033_kernel_decide
theorem stats8649 : actualRows8649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8649=7428 := by core033_kernel_decide
theorem rows8650 : actualRows8650=WordField.canonicalRows actualModulus 8650 (.badd 8644 8649) := by core033_kernel_decide
theorem stats8650 : actualRows8650.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8650=5388 := by core033_kernel_decide
theorem rows8651 : actualRows8651=WordField.canonicalRows actualModulus 8651 (.badd 8650 8443) := by core033_kernel_decide
theorem stats8651 : actualRows8651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8651=5388 := by core033_kernel_decide
theorem rows8652 : actualRows8652=WordField.canonicalRows actualModulus 8652 (.rotr 8638 17) := by core033_kernel_decide
theorem stats8652 : actualRows8652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8652=5124 := by core033_kernel_decide
theorem rows8653 : actualRows8653=WordField.canonicalRows actualModulus 8653 (.rotr 8638 19) := by core033_kernel_decide
theorem stats8653 : actualRows8653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8653=5124 := by core033_kernel_decide
theorem rows8654 : actualRows8654=WordField.canonicalRows actualModulus 8654 (.bxor 8652 8653) := by core033_kernel_decide
theorem stats8654 : actualRows8654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8654=7428 := by core033_kernel_decide
theorem rows8655 : actualRows8655=WordField.canonicalRows actualModulus 8655 (.shr 8638 10) := by core033_kernel_decide
theorem stats8655 : actualRows8655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8655=4404 := by core033_kernel_decide
theorem rows8656 : actualRows8656=WordField.canonicalRows actualModulus 8656 (.bxor 8654 8655) := by core033_kernel_decide
theorem stats8656 : actualRows8656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8656=7428 := by core033_kernel_decide
theorem rows8657 : actualRows8657=WordField.canonicalRows actualModulus 8657 (.badd 8656 8573) := by core033_kernel_decide
theorem stats8657 : actualRows8657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8657=5388 := by core033_kernel_decide
theorem rows8658 : actualRows8658=WordField.canonicalRows actualModulus 8658 (.rotr 8469 7) := by core033_kernel_decide
theorem stats8658 : actualRows8658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8658=5124 := by core033_kernel_decide
theorem rows8659 : actualRows8659=WordField.canonicalRows actualModulus 8659 (.rotr 8469 18) := by core033_kernel_decide
theorem stats8659 : actualRows8659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8659=5124 := by core033_kernel_decide
theorem rows8660 : actualRows8660=WordField.canonicalRows actualModulus 8660 (.bxor 8658 8659) := by core033_kernel_decide
theorem stats8660 : actualRows8660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8660=7428 := by core033_kernel_decide
theorem rows8661 : actualRows8661=WordField.canonicalRows actualModulus 8661 (.shr 8469 3) := by core033_kernel_decide
theorem stats8661 : actualRows8661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8661=4908 := by core033_kernel_decide
theorem rows8662 : actualRows8662=WordField.canonicalRows actualModulus 8662 (.bxor 8660 8661) := by core033_kernel_decide
theorem stats8662 : actualRows8662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8662=7428 := by core033_kernel_decide
theorem rows8663 : actualRows8663=WordField.canonicalRows actualModulus 8663 (.badd 8657 8662) := by core033_kernel_decide
theorem stats8663 : actualRows8663.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8663=5388 := by core033_kernel_decide
theorem rows8664 : actualRows8664=WordField.canonicalRows actualModulus 8664 (.badd 8663 8456) := by core033_kernel_decide
theorem stats8664 : actualRows8664.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8664=5388 := by core033_kernel_decide
theorem rows8665 : actualRows8665=WordField.canonicalRows actualModulus 8665 (.rotr 8651 17) := by core033_kernel_decide
theorem stats8665 : actualRows8665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8665=5124 := by core033_kernel_decide
theorem rows8666 : actualRows8666=WordField.canonicalRows actualModulus 8666 (.rotr 8651 19) := by core033_kernel_decide
theorem stats8666 : actualRows8666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8666=5124 := by core033_kernel_decide
theorem rows8667 : actualRows8667=WordField.canonicalRows actualModulus 8667 (.bxor 8665 8666) := by core033_kernel_decide
theorem stats8667 : actualRows8667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8667=7428 := by core033_kernel_decide
theorem rows8668 : actualRows8668=WordField.canonicalRows actualModulus 8668 (.shr 8651 10) := by core033_kernel_decide
theorem stats8668 : actualRows8668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8668=4404 := by core033_kernel_decide
theorem rows8669 : actualRows8669=WordField.canonicalRows actualModulus 8669 (.bxor 8667 8668) := by core033_kernel_decide
theorem stats8669 : actualRows8669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8669=7428 := by core033_kernel_decide
theorem rows8670 : actualRows8670=WordField.canonicalRows actualModulus 8670 (.badd 8669 8586) := by core033_kernel_decide
theorem stats8670 : actualRows8670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8670=5388 := by core033_kernel_decide
theorem rows8671 : actualRows8671=WordField.canonicalRows actualModulus 8671 (.rotr 8482 7) := by core033_kernel_decide
theorem stats8671 : actualRows8671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8671=5124 := by core033_kernel_decide
theorem rows8672 : actualRows8672=WordField.canonicalRows actualModulus 8672 (.rotr 8482 18) := by core033_kernel_decide
theorem stats8672 : actualRows8672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8672=5124 := by core033_kernel_decide
theorem rows8673 : actualRows8673=WordField.canonicalRows actualModulus 8673 (.bxor 8671 8672) := by core033_kernel_decide
theorem stats8673 : actualRows8673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8673=7428 := by core033_kernel_decide
theorem rows8674 : actualRows8674=WordField.canonicalRows actualModulus 8674 (.shr 8482 3) := by core033_kernel_decide
theorem stats8674 : actualRows8674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8674=4908 := by core033_kernel_decide
theorem rows8675 : actualRows8675=WordField.canonicalRows actualModulus 8675 (.bxor 8673 8674) := by core033_kernel_decide
theorem stats8675 : actualRows8675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8675=7428 := by core033_kernel_decide
theorem rows8676 : actualRows8676=WordField.canonicalRows actualModulus 8676 (.badd 8670 8675) := by core033_kernel_decide
theorem stats8676 : actualRows8676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8676=5388 := by core033_kernel_decide
theorem rows8677 : actualRows8677=WordField.canonicalRows actualModulus 8677 (.badd 8676 8469) := by core033_kernel_decide
theorem stats8677 : actualRows8677.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8677=5388 := by core033_kernel_decide
theorem rows8678 : actualRows8678=WordField.canonicalRows actualModulus 8678 (.rotr 8664 17) := by core033_kernel_decide
theorem stats8678 : actualRows8678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8678=5124 := by core033_kernel_decide
theorem rows8679 : actualRows8679=WordField.canonicalRows actualModulus 8679 (.rotr 8664 19) := by core033_kernel_decide
theorem stats8679 : actualRows8679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8679=5124 := by core033_kernel_decide
theorem rows8680 : actualRows8680=WordField.canonicalRows actualModulus 8680 (.bxor 8678 8679) := by core033_kernel_decide
theorem stats8680 : actualRows8680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8680=7428 := by core033_kernel_decide
theorem rows8681 : actualRows8681=WordField.canonicalRows actualModulus 8681 (.shr 8664 10) := by core033_kernel_decide
theorem stats8681 : actualRows8681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8681=4404 := by core033_kernel_decide
theorem rows8682 : actualRows8682=WordField.canonicalRows actualModulus 8682 (.bxor 8680 8681) := by core033_kernel_decide
theorem stats8682 : actualRows8682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8682=7428 := by core033_kernel_decide
theorem rows8683 : actualRows8683=WordField.canonicalRows actualModulus 8683 (.badd 8682 8599) := by core033_kernel_decide
theorem stats8683 : actualRows8683.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8683=5388 := by core033_kernel_decide
theorem rows8684 : actualRows8684=WordField.canonicalRows actualModulus 8684 (.rotr 8495 7) := by core033_kernel_decide
theorem stats8684 : actualRows8684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8684=5124 := by core033_kernel_decide
theorem rows8685 : actualRows8685=WordField.canonicalRows actualModulus 8685 (.rotr 8495 18) := by core033_kernel_decide
theorem stats8685 : actualRows8685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8685=5124 := by core033_kernel_decide
theorem rows8686 : actualRows8686=WordField.canonicalRows actualModulus 8686 (.bxor 8684 8685) := by core033_kernel_decide
theorem stats8686 : actualRows8686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8686=7428 := by core033_kernel_decide
theorem rows8687 : actualRows8687=WordField.canonicalRows actualModulus 8687 (.shr 8495 3) := by core033_kernel_decide
theorem stats8687 : actualRows8687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8687=4908 := by core033_kernel_decide
theorem rows8688 : actualRows8688=WordField.canonicalRows actualModulus 8688 (.bxor 8686 8687) := by core033_kernel_decide
theorem stats8688 : actualRows8688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8688=7428 := by core033_kernel_decide
theorem rows8689 : actualRows8689=WordField.canonicalRows actualModulus 8689 (.badd 8683 8688) := by core033_kernel_decide
theorem stats8689 : actualRows8689.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8689=5388 := by core033_kernel_decide
theorem rows8690 : actualRows8690=WordField.canonicalRows actualModulus 8690 (.badd 8689 8482) := by core033_kernel_decide
theorem stats8690 : actualRows8690.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8690=5388 := by core033_kernel_decide
theorem rows8691 : actualRows8691=WordField.canonicalRows actualModulus 8691 (.rotr 8677 17) := by core033_kernel_decide
theorem stats8691 : actualRows8691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8691=5124 := by core033_kernel_decide
theorem rows8692 : actualRows8692=WordField.canonicalRows actualModulus 8692 (.rotr 8677 19) := by core033_kernel_decide
theorem stats8692 : actualRows8692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8692=5124 := by core033_kernel_decide
theorem rows8693 : actualRows8693=WordField.canonicalRows actualModulus 8693 (.bxor 8691 8692) := by core033_kernel_decide
theorem stats8693 : actualRows8693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8693=7428 := by core033_kernel_decide
def partRows133 : List R1CS.Row := actualRows8630++actualRows8631++actualRows8632++actualRows8633++actualRows8634++actualRows8635++actualRows8636++actualRows8637++actualRows8638++actualRows8639++actualRows8640++actualRows8641++actualRows8642++actualRows8643++actualRows8644++actualRows8645++actualRows8646++actualRows8647++actualRows8648++actualRows8649++actualRows8650++actualRows8651++actualRows8652++actualRows8653++actualRows8654++actualRows8655++actualRows8656++actualRows8657++actualRows8658++actualRows8659++actualRows8660++actualRows8661++actualRows8662++actualRows8663++actualRows8664++actualRows8665++actualRows8666++actualRows8667++actualRows8668++actualRows8669++actualRows8670++actualRows8671++actualRows8672++actualRows8673++actualRows8674++actualRows8675++actualRows8676++actualRows8677++actualRows8678++actualRows8679++actualRows8680++actualRows8681++actualRows8682++actualRows8683++actualRows8684++actualRows8685++actualRows8686++actualRows8687++actualRows8688++actualRows8689++actualRows8690++actualRows8691++actualRows8692++actualRows8693
def partOps133 : List WordIR.Op := [.bxor 8628 8629,.badd 8630 8547,.rotr 8443 7,.rotr 8443 18,.bxor 8632 8633,.shr 8443 3,.bxor 8634 8635,.badd 8631 8636,.badd 8637 8430,.rotr 8625 17,.rotr 8625 19,.bxor 8639 8640,.shr 8625 10,.bxor 8641 8642,.badd 8643 8560,.rotr 8456 7,.rotr 8456 18,.bxor 8645 8646,.shr 8456 3,.bxor 8647 8648,.badd 8644 8649,.badd 8650 8443,.rotr 8638 17,.rotr 8638 19,.bxor 8652 8653,.shr 8638 10,.bxor 8654 8655,.badd 8656 8573,.rotr 8469 7,.rotr 8469 18,.bxor 8658 8659,.shr 8469 3,.bxor 8660 8661,.badd 8657 8662,.badd 8663 8456,.rotr 8651 17,.rotr 8651 19,.bxor 8665 8666,.shr 8651 10,.bxor 8667 8668,.badd 8669 8586,.rotr 8482 7,.rotr 8482 18,.bxor 8671 8672,.shr 8482 3,.bxor 8673 8674,.badd 8670 8675,.badd 8676 8469,.rotr 8664 17,.rotr 8664 19,.bxor 8678 8679,.shr 8664 10,.bxor 8680 8681,.badd 8682 8599,.rotr 8495 7,.rotr 8495 18,.bxor 8684 8685,.shr 8495 3,.bxor 8686 8687,.badd 8683 8688,.badd 8689 8482,.rotr 8677 17,.rotr 8677 19,.bxor 8691 8692]
theorem partExact133 : partRows133=WordField.rows actualModulus 8630 partOps133 := by
  simp only [partRows133,partOps133,WordField.rows,rows8630,rows8631,rows8632,rows8633,rows8634,rows8635,rows8636,rows8637,rows8638,rows8639,rows8640,rows8641,rows8642,rows8643,rows8644,rows8645,rows8646,rows8647,rows8648,rows8649,rows8650,rows8651,rows8652,rows8653,rows8654,rows8655,rows8656,rows8657,rows8658,rows8659,rows8660,rows8661,rows8662,rows8663,rows8664,rows8665,rows8666,rows8667,rows8668,rows8669,rows8670,rows8671,rows8672,rows8673,rows8674,rows8675,rows8676,rows8677,rows8678,rows8679,rows8680,rows8681,rows8682,rows8683,rows8684,rows8685,rows8686,rows8687,rows8688,rows8689,rows8690,rows8691,rows8692,rows8693,List.append_assoc,List.append_nil]
theorem partLength133 : partOps133.length=64 := by decide
theorem partStats133 : partRows133.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows133=374016 := by
  simp only [partRows133,List.length_append,MatrixRowBlocks.rows_weight_append,stats8630.1,stats8630.2,stats8631.1,stats8631.2,stats8632.1,stats8632.2,stats8633.1,stats8633.2,stats8634.1,stats8634.2,stats8635.1,stats8635.2,stats8636.1,stats8636.2,stats8637.1,stats8637.2,stats8638.1,stats8638.2,stats8639.1,stats8639.2,stats8640.1,stats8640.2,stats8641.1,stats8641.2,stats8642.1,stats8642.2,stats8643.1,stats8643.2,stats8644.1,stats8644.2,stats8645.1,stats8645.2,stats8646.1,stats8646.2,stats8647.1,stats8647.2,stats8648.1,stats8648.2,stats8649.1,stats8649.2,stats8650.1,stats8650.2,stats8651.1,stats8651.2,stats8652.1,stats8652.2,stats8653.1,stats8653.2,stats8654.1,stats8654.2,stats8655.1,stats8655.2,stats8656.1,stats8656.2,stats8657.1,stats8657.2,stats8658.1,stats8658.2,stats8659.1,stats8659.2,stats8660.1,stats8660.2,stats8661.1,stats8661.2,stats8662.1,stats8662.2,stats8663.1,stats8663.2,stats8664.1,stats8664.2,stats8665.1,stats8665.2,stats8666.1,stats8666.2,stats8667.1,stats8667.2,stats8668.1,stats8668.2,stats8669.1,stats8669.2,stats8670.1,stats8670.2,stats8671.1,stats8671.2,stats8672.1,stats8672.2,stats8673.1,stats8673.2,stats8674.1,stats8674.2,stats8675.1,stats8675.2,stats8676.1,stats8676.2,stats8677.1,stats8677.2,stats8678.1,stats8678.2,stats8679.1,stats8679.2,stats8680.1,stats8680.2,stats8681.1,stats8681.2,stats8682.1,stats8682.2,stats8683.1,stats8683.2,stats8684.1,stats8684.2,stats8685.1,stats8685.2,stats8686.1,stats8686.2,stats8687.1,stats8687.2,stats8688.1,stats8688.2,stats8689.1,stats8689.2,stats8690.1,stats8690.2,stats8691.1,stats8691.2,stats8692.1,stats8692.2,stats8693.1,stats8693.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
