import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData56
import SharedFrameInstructionMatrixData57
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3627 : actualRows3627=WordField.canonicalRows actualModulus 3627 (.rotr 3608 22) := by core033_kernel_decide
theorem stats3627 : actualRows3627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3627=5124 := by core033_kernel_decide
theorem rows3628 : actualRows3628=WordField.canonicalRows actualModulus 3628 (.bxor 3626 3627) := by core033_kernel_decide
theorem stats3628 : actualRows3628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3628=7428 := by core033_kernel_decide
theorem rows3629 : actualRows3629=WordField.canonicalRows actualModulus 3629 (.band 3608 3582) := by core033_kernel_decide
theorem stats3629 : actualRows3629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3629=5124 := by core033_kernel_decide
theorem rows3630 : actualRows3630=WordField.canonicalRows actualModulus 3630 (.band 3608 3556) := by core033_kernel_decide
theorem stats3630 : actualRows3630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3630=5124 := by core033_kernel_decide
theorem rows3631 : actualRows3631=WordField.canonicalRows actualModulus 3631 (.bxor 3629 3630) := by core033_kernel_decide
theorem stats3631 : actualRows3631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3631=7428 := by core033_kernel_decide
theorem rows3632 : actualRows3632=WordField.canonicalRows actualModulus 3632 (.bxor 3631 3603) := by core033_kernel_decide
theorem stats3632 : actualRows3632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3632=7428 := by core033_kernel_decide
theorem rows3633 : actualRows3633=WordField.canonicalRows actualModulus 3633 (.badd 3628 3632) := by core033_kernel_decide
theorem stats3633 : actualRows3633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3633=5388 := by core033_kernel_decide
theorem rows3634 : actualRows3634=WordField.canonicalRows actualModulus 3634 (.badd 3623 3633) := by core033_kernel_decide
theorem stats3634 : actualRows3634.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3634=5388 := by core033_kernel_decide
theorem rows3635 : actualRows3635=WordField.canonicalRows actualModulus 3635 (.badd 3530 3623) := by core033_kernel_decide
theorem stats3635 : actualRows3635.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3635=5388 := by core033_kernel_decide
theorem rows3636 : actualRows3636=WordField.canonicalRows actualModulus 3636 (.rotr 3635 6) := by core033_kernel_decide
theorem stats3636 : actualRows3636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3636=5124 := by core033_kernel_decide
theorem rows3637 : actualRows3637=WordField.canonicalRows actualModulus 3637 (.rotr 3635 11) := by core033_kernel_decide
theorem stats3637 : actualRows3637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3637=5124 := by core033_kernel_decide
theorem rows3638 : actualRows3638=WordField.canonicalRows actualModulus 3638 (.bxor 3636 3637) := by core033_kernel_decide
theorem stats3638 : actualRows3638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3638=7428 := by core033_kernel_decide
theorem rows3639 : actualRows3639=WordField.canonicalRows actualModulus 3639 (.rotr 3635 25) := by core033_kernel_decide
theorem stats3639 : actualRows3639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3639=5124 := by core033_kernel_decide
theorem rows3640 : actualRows3640=WordField.canonicalRows actualModulus 3640 (.bxor 3638 3639) := by core033_kernel_decide
theorem stats3640 : actualRows3640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3640=7428 := by core033_kernel_decide
theorem rows3641 : actualRows3641=WordField.canonicalRows actualModulus 3641 (.badd 3557 3640) := by core033_kernel_decide
theorem stats3641 : actualRows3641.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3641=5388 := by core033_kernel_decide
theorem rows3642 : actualRows3642=WordField.canonicalRows actualModulus 3642 (.band 3635 3609) := by core033_kernel_decide
theorem stats3642 : actualRows3642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3642=5124 := by core033_kernel_decide
theorem rows3643 : actualRows3643=WordField.canonicalRows actualModulus 3643 (.bnot 3635) := by core033_kernel_decide
theorem stats3643 : actualRows3643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3643=6276 := by core033_kernel_decide
theorem rows3644 : actualRows3644=WordField.canonicalRows actualModulus 3644 (.band 3643 3583) := by core033_kernel_decide
theorem stats3644 : actualRows3644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3644=5124 := by core033_kernel_decide
theorem rows3645 : actualRows3645=WordField.canonicalRows actualModulus 3645 (.bxor 3642 3644) := by core033_kernel_decide
theorem stats3645 : actualRows3645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3645=7428 := by core033_kernel_decide
theorem rows3646 : actualRows3646=WordField.canonicalRows actualModulus 3646 (.badd 3641 3645) := by core033_kernel_decide
theorem stats3646 : actualRows3646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3646=5388 := by core033_kernel_decide
theorem rows3647 : actualRows3647=WordField.canonicalRows actualModulus 3647 (.literal (BitVec.ofNat 32 2024104815)) := by core033_kernel_decide
theorem stats3647 : actualRows3647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3647=4116 := by core033_kernel_decide
theorem rows3648 : actualRows3648=WordField.canonicalRows actualModulus 3648 (.badd 3646 3647) := by core033_kernel_decide
theorem stats3648 : actualRows3648.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3648=5388 := by core033_kernel_decide
theorem rows3649 : actualRows3649=WordField.canonicalRows actualModulus 3649 (.badd 3648 2074) := by core033_kernel_decide
theorem stats3649 : actualRows3649.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3649=5388 := by core033_kernel_decide
theorem rows3650 : actualRows3650=WordField.canonicalRows actualModulus 3650 (.rotr 3634 2) := by core033_kernel_decide
theorem stats3650 : actualRows3650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3650=5124 := by core033_kernel_decide
theorem rows3651 : actualRows3651=WordField.canonicalRows actualModulus 3651 (.rotr 3634 13) := by core033_kernel_decide
theorem stats3651 : actualRows3651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3651=5124 := by core033_kernel_decide
theorem rows3652 : actualRows3652=WordField.canonicalRows actualModulus 3652 (.bxor 3650 3651) := by core033_kernel_decide
theorem stats3652 : actualRows3652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3652=7428 := by core033_kernel_decide
theorem rows3653 : actualRows3653=WordField.canonicalRows actualModulus 3653 (.rotr 3634 22) := by core033_kernel_decide
theorem stats3653 : actualRows3653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3653=5124 := by core033_kernel_decide
theorem rows3654 : actualRows3654=WordField.canonicalRows actualModulus 3654 (.bxor 3652 3653) := by core033_kernel_decide
theorem stats3654 : actualRows3654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3654=7428 := by core033_kernel_decide
theorem rows3655 : actualRows3655=WordField.canonicalRows actualModulus 3655 (.band 3634 3608) := by core033_kernel_decide
theorem stats3655 : actualRows3655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3655=5124 := by core033_kernel_decide
theorem rows3656 : actualRows3656=WordField.canonicalRows actualModulus 3656 (.band 3634 3582) := by core033_kernel_decide
theorem stats3656 : actualRows3656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3656=5124 := by core033_kernel_decide
theorem rows3657 : actualRows3657=WordField.canonicalRows actualModulus 3657 (.bxor 3655 3656) := by core033_kernel_decide
theorem stats3657 : actualRows3657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3657=7428 := by core033_kernel_decide
theorem rows3658 : actualRows3658=WordField.canonicalRows actualModulus 3658 (.bxor 3657 3629) := by core033_kernel_decide
theorem stats3658 : actualRows3658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3658=7428 := by core033_kernel_decide
theorem rows3659 : actualRows3659=WordField.canonicalRows actualModulus 3659 (.badd 3654 3658) := by core033_kernel_decide
theorem stats3659 : actualRows3659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3659=5388 := by core033_kernel_decide
theorem rows3660 : actualRows3660=WordField.canonicalRows actualModulus 3660 (.badd 3649 3659) := by core033_kernel_decide
theorem stats3660 : actualRows3660.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3660=5388 := by core033_kernel_decide
theorem rows3661 : actualRows3661=WordField.canonicalRows actualModulus 3661 (.badd 3556 3649) := by core033_kernel_decide
theorem stats3661 : actualRows3661.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3661=5388 := by core033_kernel_decide
theorem rows3662 : actualRows3662=WordField.canonicalRows actualModulus 3662 (.rotr 3661 6) := by core033_kernel_decide
theorem stats3662 : actualRows3662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3662=5124 := by core033_kernel_decide
theorem rows3663 : actualRows3663=WordField.canonicalRows actualModulus 3663 (.rotr 3661 11) := by core033_kernel_decide
theorem stats3663 : actualRows3663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3663=5124 := by core033_kernel_decide
theorem rows3664 : actualRows3664=WordField.canonicalRows actualModulus 3664 (.bxor 3662 3663) := by core033_kernel_decide
theorem stats3664 : actualRows3664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3664=7428 := by core033_kernel_decide
theorem rows3665 : actualRows3665=WordField.canonicalRows actualModulus 3665 (.rotr 3661 25) := by core033_kernel_decide
theorem stats3665 : actualRows3665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3665=5124 := by core033_kernel_decide
theorem rows3666 : actualRows3666=WordField.canonicalRows actualModulus 3666 (.bxor 3664 3665) := by core033_kernel_decide
theorem stats3666 : actualRows3666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3666=7428 := by core033_kernel_decide
theorem rows3667 : actualRows3667=WordField.canonicalRows actualModulus 3667 (.badd 3583 3666) := by core033_kernel_decide
theorem stats3667 : actualRows3667.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3667=5388 := by core033_kernel_decide
theorem rows3668 : actualRows3668=WordField.canonicalRows actualModulus 3668 (.band 3661 3635) := by core033_kernel_decide
theorem stats3668 : actualRows3668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3668=5124 := by core033_kernel_decide
theorem rows3669 : actualRows3669=WordField.canonicalRows actualModulus 3669 (.bnot 3661) := by core033_kernel_decide
theorem stats3669 : actualRows3669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3669=6276 := by core033_kernel_decide
theorem rows3670 : actualRows3670=WordField.canonicalRows actualModulus 3670 (.band 3669 3609) := by core033_kernel_decide
theorem stats3670 : actualRows3670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3670=5124 := by core033_kernel_decide
theorem rows3671 : actualRows3671=WordField.canonicalRows actualModulus 3671 (.bxor 3668 3670) := by core033_kernel_decide
theorem stats3671 : actualRows3671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3671=7428 := by core033_kernel_decide
theorem rows3672 : actualRows3672=WordField.canonicalRows actualModulus 3672 (.badd 3667 3671) := by core033_kernel_decide
theorem stats3672 : actualRows3672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3672=5388 := by core033_kernel_decide
theorem rows3673 : actualRows3673=WordField.canonicalRows actualModulus 3673 (.literal (BitVec.ofNat 32 2227730452)) := by core033_kernel_decide
theorem stats3673 : actualRows3673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3673=3612 := by core033_kernel_decide
theorem rows3674 : actualRows3674=WordField.canonicalRows actualModulus 3674 (.badd 3672 3673) := by core033_kernel_decide
theorem stats3674 : actualRows3674.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3674=5388 := by core033_kernel_decide
theorem rows3675 : actualRows3675=WordField.canonicalRows actualModulus 3675 (.badd 3674 2087) := by core033_kernel_decide
theorem stats3675 : actualRows3675.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3675=5388 := by core033_kernel_decide
theorem rows3676 : actualRows3676=WordField.canonicalRows actualModulus 3676 (.rotr 3660 2) := by core033_kernel_decide
theorem stats3676 : actualRows3676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3676=5124 := by core033_kernel_decide
theorem rows3677 : actualRows3677=WordField.canonicalRows actualModulus 3677 (.rotr 3660 13) := by core033_kernel_decide
theorem stats3677 : actualRows3677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3677=5124 := by core033_kernel_decide
theorem rows3678 : actualRows3678=WordField.canonicalRows actualModulus 3678 (.bxor 3676 3677) := by core033_kernel_decide
theorem stats3678 : actualRows3678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3678=7428 := by core033_kernel_decide
theorem rows3679 : actualRows3679=WordField.canonicalRows actualModulus 3679 (.rotr 3660 22) := by core033_kernel_decide
theorem stats3679 : actualRows3679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3679=5124 := by core033_kernel_decide
theorem rows3680 : actualRows3680=WordField.canonicalRows actualModulus 3680 (.bxor 3678 3679) := by core033_kernel_decide
theorem stats3680 : actualRows3680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3680=7428 := by core033_kernel_decide
theorem rows3681 : actualRows3681=WordField.canonicalRows actualModulus 3681 (.band 3660 3634) := by core033_kernel_decide
theorem stats3681 : actualRows3681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3681=5124 := by core033_kernel_decide
theorem rows3682 : actualRows3682=WordField.canonicalRows actualModulus 3682 (.band 3660 3608) := by core033_kernel_decide
theorem stats3682 : actualRows3682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3682=5124 := by core033_kernel_decide
theorem rows3683 : actualRows3683=WordField.canonicalRows actualModulus 3683 (.bxor 3681 3682) := by core033_kernel_decide
theorem stats3683 : actualRows3683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3683=7428 := by core033_kernel_decide
theorem rows3684 : actualRows3684=WordField.canonicalRows actualModulus 3684 (.bxor 3683 3655) := by core033_kernel_decide
theorem stats3684 : actualRows3684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3684=7428 := by core033_kernel_decide
theorem rows3685 : actualRows3685=WordField.canonicalRows actualModulus 3685 (.badd 3680 3684) := by core033_kernel_decide
theorem stats3685 : actualRows3685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3685=5388 := by core033_kernel_decide
theorem rows3686 : actualRows3686=WordField.canonicalRows actualModulus 3686 (.badd 3675 3685) := by core033_kernel_decide
theorem stats3686 : actualRows3686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3686=5388 := by core033_kernel_decide
theorem rows3687 : actualRows3687=WordField.canonicalRows actualModulus 3687 (.badd 3582 3675) := by core033_kernel_decide
theorem stats3687 : actualRows3687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3687=5388 := by core033_kernel_decide
theorem rows3688 : actualRows3688=WordField.canonicalRows actualModulus 3688 (.rotr 3687 6) := by core033_kernel_decide
theorem stats3688 : actualRows3688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3688=5124 := by core033_kernel_decide
theorem rows3689 : actualRows3689=WordField.canonicalRows actualModulus 3689 (.rotr 3687 11) := by core033_kernel_decide
theorem stats3689 : actualRows3689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3689=5124 := by core033_kernel_decide
theorem rows3690 : actualRows3690=WordField.canonicalRows actualModulus 3690 (.bxor 3688 3689) := by core033_kernel_decide
theorem stats3690 : actualRows3690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3690=7428 := by core033_kernel_decide
def partRows56 : List R1CS.Row := actualRows3627++actualRows3628++actualRows3629++actualRows3630++actualRows3631++actualRows3632++actualRows3633++actualRows3634++actualRows3635++actualRows3636++actualRows3637++actualRows3638++actualRows3639++actualRows3640++actualRows3641++actualRows3642++actualRows3643++actualRows3644++actualRows3645++actualRows3646++actualRows3647++actualRows3648++actualRows3649++actualRows3650++actualRows3651++actualRows3652++actualRows3653++actualRows3654++actualRows3655++actualRows3656++actualRows3657++actualRows3658++actualRows3659++actualRows3660++actualRows3661++actualRows3662++actualRows3663++actualRows3664++actualRows3665++actualRows3666++actualRows3667++actualRows3668++actualRows3669++actualRows3670++actualRows3671++actualRows3672++actualRows3673++actualRows3674++actualRows3675++actualRows3676++actualRows3677++actualRows3678++actualRows3679++actualRows3680++actualRows3681++actualRows3682++actualRows3683++actualRows3684++actualRows3685++actualRows3686++actualRows3687++actualRows3688++actualRows3689++actualRows3690
def partOps56 : List WordIR.Op := [.rotr 3608 22,.bxor 3626 3627,.band 3608 3582,.band 3608 3556,.bxor 3629 3630,.bxor 3631 3603,.badd 3628 3632,.badd 3623 3633,.badd 3530 3623,.rotr 3635 6,.rotr 3635 11,.bxor 3636 3637,.rotr 3635 25,.bxor 3638 3639,.badd 3557 3640,.band 3635 3609,.bnot 3635,.band 3643 3583,.bxor 3642 3644,.badd 3641 3645,.literal (BitVec.ofNat 32 2024104815),.badd 3646 3647,.badd 3648 2074,.rotr 3634 2,.rotr 3634 13,.bxor 3650 3651,.rotr 3634 22,.bxor 3652 3653,.band 3634 3608,.band 3634 3582,.bxor 3655 3656,.bxor 3657 3629,.badd 3654 3658,.badd 3649 3659,.badd 3556 3649,.rotr 3661 6,.rotr 3661 11,.bxor 3662 3663,.rotr 3661 25,.bxor 3664 3665,.badd 3583 3666,.band 3661 3635,.bnot 3661,.band 3669 3609,.bxor 3668 3670,.badd 3667 3671,.literal (BitVec.ofNat 32 2227730452),.badd 3672 3673,.badd 3674 2087,.rotr 3660 2,.rotr 3660 13,.bxor 3676 3677,.rotr 3660 22,.bxor 3678 3679,.band 3660 3634,.band 3660 3608,.bxor 3681 3682,.bxor 3683 3655,.badd 3680 3684,.badd 3675 3685,.badd 3582 3675,.rotr 3687 6,.rotr 3687 11,.bxor 3688 3689]
theorem partExact56 : partRows56=WordField.rows actualModulus 3627 partOps56 := by
  simp only [partRows56,partOps56,WordField.rows,rows3627,rows3628,rows3629,rows3630,rows3631,rows3632,rows3633,rows3634,rows3635,rows3636,rows3637,rows3638,rows3639,rows3640,rows3641,rows3642,rows3643,rows3644,rows3645,rows3646,rows3647,rows3648,rows3649,rows3650,rows3651,rows3652,rows3653,rows3654,rows3655,rows3656,rows3657,rows3658,rows3659,rows3660,rows3661,rows3662,rows3663,rows3664,rows3665,rows3666,rows3667,rows3668,rows3669,rows3670,rows3671,rows3672,rows3673,rows3674,rows3675,rows3676,rows3677,rows3678,rows3679,rows3680,rows3681,rows3682,rows3683,rows3684,rows3685,rows3686,rows3687,rows3688,rows3689,rows3690,List.append_assoc,List.append_nil]
theorem partLength56 : partOps56.length=64 := by decide
theorem partStats56 : partRows56.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows56=373680 := by
  simp only [partRows56,List.length_append,MatrixRowBlocks.rows_weight_append,stats3627.1,stats3627.2,stats3628.1,stats3628.2,stats3629.1,stats3629.2,stats3630.1,stats3630.2,stats3631.1,stats3631.2,stats3632.1,stats3632.2,stats3633.1,stats3633.2,stats3634.1,stats3634.2,stats3635.1,stats3635.2,stats3636.1,stats3636.2,stats3637.1,stats3637.2,stats3638.1,stats3638.2,stats3639.1,stats3639.2,stats3640.1,stats3640.2,stats3641.1,stats3641.2,stats3642.1,stats3642.2,stats3643.1,stats3643.2,stats3644.1,stats3644.2,stats3645.1,stats3645.2,stats3646.1,stats3646.2,stats3647.1,stats3647.2,stats3648.1,stats3648.2,stats3649.1,stats3649.2,stats3650.1,stats3650.2,stats3651.1,stats3651.2,stats3652.1,stats3652.2,stats3653.1,stats3653.2,stats3654.1,stats3654.2,stats3655.1,stats3655.2,stats3656.1,stats3656.2,stats3657.1,stats3657.2,stats3658.1,stats3658.2,stats3659.1,stats3659.2,stats3660.1,stats3660.2,stats3661.1,stats3661.2,stats3662.1,stats3662.2,stats3663.1,stats3663.2,stats3664.1,stats3664.2,stats3665.1,stats3665.2,stats3666.1,stats3666.2,stats3667.1,stats3667.2,stats3668.1,stats3668.2,stats3669.1,stats3669.2,stats3670.1,stats3670.2,stats3671.1,stats3671.2,stats3672.1,stats3672.2,stats3673.1,stats3673.2,stats3674.1,stats3674.2,stats3675.1,stats3675.2,stats3676.1,stats3676.2,stats3677.1,stats3677.2,stats3678.1,stats3678.2,stats3679.1,stats3679.2,stats3680.1,stats3680.2,stats3681.1,stats3681.2,stats3682.1,stats3682.2,stats3683.1,stats3683.2,stats3684.1,stats3684.2,stats3685.1,stats3685.2,stats3686.1,stats3686.2,stats3687.1,stats3687.2,stats3688.1,stats3688.2,stats3689.1,stats3689.2,stats3690.1,stats3690.2]
  decide
end SharedFrameCheckedRows
