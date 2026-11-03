import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData57
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3656 : actualRows3656=WordField.canonicalRows actualModulus 3656 (.literal (BitVec.ofNat 32 3329325298)) := by core033_kernel_decide
theorem stats3656 : actualRows3656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3656=4044 := by core033_kernel_decide
theorem rows3657 : actualRows3657=WordField.canonicalRows actualModulus 3657 (.badd 3655 3656) := by core033_kernel_decide
theorem stats3657 : actualRows3657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3657=5388 := by core033_kernel_decide
theorem rows3658 : actualRows3658=WordField.canonicalRows actualModulus 3658 (.badd 3657 1943) := by core033_kernel_decide
theorem stats3658 : actualRows3658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3658=5388 := by core033_kernel_decide
theorem rows3659 : actualRows3659=WordField.canonicalRows actualModulus 3659 (.rotr 3643 2) := by core033_kernel_decide
theorem stats3659 : actualRows3659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3659=5124 := by core033_kernel_decide
theorem rows3660 : actualRows3660=WordField.canonicalRows actualModulus 3660 (.rotr 3643 13) := by core033_kernel_decide
theorem stats3660 : actualRows3660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3660=5124 := by core033_kernel_decide
theorem rows3661 : actualRows3661=WordField.canonicalRows actualModulus 3661 (.bxor 3659 3660) := by core033_kernel_decide
theorem stats3661 : actualRows3661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3661=7428 := by core033_kernel_decide
theorem rows3662 : actualRows3662=WordField.canonicalRows actualModulus 3662 (.rotr 3643 22) := by core033_kernel_decide
theorem stats3662 : actualRows3662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3662=5124 := by core033_kernel_decide
theorem rows3663 : actualRows3663=WordField.canonicalRows actualModulus 3663 (.bxor 3661 3662) := by core033_kernel_decide
theorem stats3663 : actualRows3663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3663=7428 := by core033_kernel_decide
theorem rows3664 : actualRows3664=WordField.canonicalRows actualModulus 3664 (.band 3643 3616) := by core033_kernel_decide
theorem stats3664 : actualRows3664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3664=5124 := by core033_kernel_decide
theorem rows3665 : actualRows3665=WordField.canonicalRows actualModulus 3665 (.band 3643 3589) := by core033_kernel_decide
theorem stats3665 : actualRows3665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3665=5124 := by core033_kernel_decide
theorem rows3666 : actualRows3666=WordField.canonicalRows actualModulus 3666 (.bxor 3664 3665) := by core033_kernel_decide
theorem stats3666 : actualRows3666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3666=7428 := by core033_kernel_decide
theorem rows3667 : actualRows3667=WordField.canonicalRows actualModulus 3667 (.band 3616 3589) := by core033_kernel_decide
theorem stats3667 : actualRows3667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3667=5124 := by core033_kernel_decide
theorem rows3668 : actualRows3668=WordField.canonicalRows actualModulus 3668 (.bxor 3666 3667) := by core033_kernel_decide
theorem stats3668 : actualRows3668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3668=7428 := by core033_kernel_decide
theorem rows3669 : actualRows3669=WordField.canonicalRows actualModulus 3669 (.badd 3663 3668) := by core033_kernel_decide
theorem stats3669 : actualRows3669.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3669=5388 := by core033_kernel_decide
theorem rows3670 : actualRows3670=WordField.canonicalRows actualModulus 3670 (.badd 3658 3669) := by core033_kernel_decide
theorem stats3670 : actualRows3670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3670=5388 := by core033_kernel_decide
theorem rows3671 : actualRows3671=WordField.canonicalRows actualModulus 3671 (.badd 3562 3658) := by core033_kernel_decide
theorem stats3671 : actualRows3671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3671=5388 := by core033_kernel_decide
theorem rows3672 : actualRows3672=WordField.canonicalRows actualModulus 3672 (.badd 0 3670) := by core033_kernel_decide
theorem stats3672 : actualRows3672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3672=5388 := by core033_kernel_decide
theorem rows3673 : actualRows3673=WordField.canonicalRows actualModulus 3673 (.badd 1 3643) := by core033_kernel_decide
theorem stats3673 : actualRows3673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3673=5388 := by core033_kernel_decide
theorem rows3674 : actualRows3674=WordField.canonicalRows actualModulus 3674 (.badd 2 3616) := by core033_kernel_decide
theorem stats3674 : actualRows3674.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3674=5388 := by core033_kernel_decide
theorem rows3675 : actualRows3675=WordField.canonicalRows actualModulus 3675 (.badd 3 3589) := by core033_kernel_decide
theorem stats3675 : actualRows3675.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3675=5388 := by core033_kernel_decide
theorem rows3676 : actualRows3676=WordField.canonicalRows actualModulus 3676 (.badd 4 3671) := by core033_kernel_decide
theorem stats3676 : actualRows3676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3676=5388 := by core033_kernel_decide
theorem rows3677 : actualRows3677=WordField.canonicalRows actualModulus 3677 (.badd 5 3644) := by core033_kernel_decide
theorem stats3677 : actualRows3677.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3677=5388 := by core033_kernel_decide
theorem rows3678 : actualRows3678=WordField.canonicalRows actualModulus 3678 (.badd 6 3617) := by core033_kernel_decide
theorem stats3678 : actualRows3678.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3678=5388 := by core033_kernel_decide
theorem rows3679 : actualRows3679=WordField.canonicalRows actualModulus 3679 (.badd 7 3590) := by core033_kernel_decide
theorem stats3679 : actualRows3679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3679=5388 := by core033_kernel_decide
def partRows56 : List R1CS.Row := actualRows3656++actualRows3657++actualRows3658++actualRows3659++actualRows3660++actualRows3661++actualRows3662++actualRows3663++actualRows3664++actualRows3665++actualRows3666++actualRows3667++actualRows3668++actualRows3669++actualRows3670++actualRows3671++actualRows3672++actualRows3673++actualRows3674++actualRows3675++actualRows3676++actualRows3677++actualRows3678++actualRows3679
def partOps56 : List WordIR.Op := [.literal (BitVec.ofNat 32 3329325298),.badd 3655 3656,.badd 3657 1943,.rotr 3643 2,.rotr 3643 13,.bxor 3659 3660,.rotr 3643 22,.bxor 3661 3662,.band 3643 3616,.band 3643 3589,.bxor 3664 3665,.band 3616 3589,.bxor 3666 3667,.badd 3663 3668,.badd 3658 3669,.badd 3562 3658,.badd 0 3670,.badd 1 3643,.badd 2 3616,.badd 3 3589,.badd 4 3671,.badd 5 3644,.badd 6 3617,.badd 7 3590]
theorem partExact56 : partRows56=WordField.rows actualModulus 3656 partOps56 := by
  simp only [partRows56,partOps56,WordField.rows,rows3656,rows3657,rows3658,rows3659,rows3660,rows3661,rows3662,rows3663,rows3664,rows3665,rows3666,rows3667,rows3668,rows3669,rows3670,rows3671,rows3672,rows3673,rows3674,rows3675,rows3676,rows3677,rows3678,rows3679,List.append_assoc,List.append_nil]
theorem partLength56 : partOps56.length=24 := by decide
theorem partStats56 : partRows56.length=829 ∧ MatrixRowBlocks.rowsWeight partRows56=134544 := by
  simp only [partRows56,List.length_append,MatrixRowBlocks.rows_weight_append,stats3656.1,stats3656.2,stats3657.1,stats3657.2,stats3658.1,stats3658.2,stats3659.1,stats3659.2,stats3660.1,stats3660.2,stats3661.1,stats3661.2,stats3662.1,stats3662.2,stats3663.1,stats3663.2,stats3664.1,stats3664.2,stats3665.1,stats3665.2,stats3666.1,stats3666.2,stats3667.1,stats3667.2,stats3668.1,stats3668.2,stats3669.1,stats3669.2,stats3670.1,stats3670.2,stats3671.1,stats3671.2,stats3672.1,stats3672.2,stats3673.1,stats3673.2,stats3674.1,stats3674.2,stats3675.1,stats3675.2,stats3676.1,stats3676.2,stats3677.1,stats3677.2,stats3678.1,stats3678.2,stats3679.1,stats3679.2]
  decide
end HashBlockCheckedRows
