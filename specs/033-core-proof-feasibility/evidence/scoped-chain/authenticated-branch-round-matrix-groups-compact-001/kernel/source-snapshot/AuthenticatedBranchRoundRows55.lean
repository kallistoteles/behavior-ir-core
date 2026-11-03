import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData56
import AuthenticatedBranchRoundInstructionMatrixData57
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3638 : actualRows3638=WordField.canonicalRows actualModulus 3638 (.shr 3637 31) := by core033_kernel_decide
theorem stats3638 : actualRows3638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3638=2892 := by core033_kernel_decide
theorem rows3639 : actualRows3639=WordField.canonicalRows actualModulus 3639 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3639 : actualRows3639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3639=2892 := by core033_kernel_decide
theorem rows3640 : actualRows3640=WordField.canonicalRows actualModulus 3640 (.bxor 3638 3639) := by core033_kernel_decide
theorem stats3640 : actualRows3640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3640=7428 := by core033_kernel_decide
theorem rows3641 : actualRows3641=WordField.canonicalRows actualModulus 3641 (.bnot 3640) := by core033_kernel_decide
theorem stats3641 : actualRows3641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3641=6276 := by core033_kernel_decide
theorem rows3642 : actualRows3642=WordField.canonicalRows actualModulus 3642 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3642 : actualRows3642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3642=2892 := by core033_kernel_decide
theorem rows3643 : actualRows3643=WordField.canonicalRows actualModulus 3643 (.badd 3641 3642) := by core033_kernel_decide
theorem stats3643 : actualRows3643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3643=5388 := by core033_kernel_decide
theorem rows3644 : actualRows3644=WordField.canonicalRows actualModulus 3644 (.bnot 3643) := by core033_kernel_decide
theorem stats3644 : actualRows3644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3644=6276 := by core033_kernel_decide
theorem rows3645 : actualRows3645=WordField.canonicalRows actualModulus 3645 (.band 3644 2547) := by core033_kernel_decide
theorem stats3645 : actualRows3645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3645=5124 := by core033_kernel_decide
theorem rows3646 : actualRows3646=WordField.canonicalRows actualModulus 3646 (.bxor 3619 3645) := by core033_kernel_decide
theorem stats3646 : actualRows3646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3646=7428 := by core033_kernel_decide
theorem rows3647 : actualRows3647=WordField.canonicalRows actualModulus 3647 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3647 : actualRows3647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3647=2892 := by core033_kernel_decide
theorem rows3648 : actualRows3648=WordField.canonicalRows actualModulus 3648 (.bxor 1299 3647) := by core033_kernel_decide
theorem stats3648 : actualRows3648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3648=7428 := by core033_kernel_decide
theorem rows3649 : actualRows3649=WordField.canonicalRows actualModulus 3649 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3649 : actualRows3649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3649=2820 := by core033_kernel_decide
theorem rows3650 : actualRows3650=WordField.canonicalRows actualModulus 3650 (.bnot 3649) := by core033_kernel_decide
theorem stats3650 : actualRows3650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3650=6276 := by core033_kernel_decide
theorem rows3651 : actualRows3651=WordField.canonicalRows actualModulus 3651 (.band 3648 3650) := by core033_kernel_decide
theorem stats3651 : actualRows3651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3651=5124 := by core033_kernel_decide
theorem rows3652 : actualRows3652=WordField.canonicalRows actualModulus 3652 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3652 : actualRows3652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3652=2892 := by core033_kernel_decide
theorem rows3653 : actualRows3653=WordField.canonicalRows actualModulus 3653 (.bxor 1299 3652) := by core033_kernel_decide
theorem stats3653 : actualRows3653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3653=7428 := by core033_kernel_decide
theorem rows3654 : actualRows3654=WordField.canonicalRows actualModulus 3654 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3654 : actualRows3654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3654=2820 := by core033_kernel_decide
theorem rows3655 : actualRows3655=WordField.canonicalRows actualModulus 3655 (.bnot 3654) := by core033_kernel_decide
theorem stats3655 : actualRows3655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3655=6276 := by core033_kernel_decide
theorem rows3656 : actualRows3656=WordField.canonicalRows actualModulus 3656 (.bxor 3653 3655) := by core033_kernel_decide
theorem stats3656 : actualRows3656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3656=7428 := by core033_kernel_decide
theorem rows3657 : actualRows3657=WordField.canonicalRows actualModulus 3657 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3657 : actualRows3657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3657=2892 := by core033_kernel_decide
theorem rows3658 : actualRows3658=WordField.canonicalRows actualModulus 3658 (.bxor 1299 3657) := by core033_kernel_decide
theorem stats3658 : actualRows3658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3658=7428 := by core033_kernel_decide
theorem rows3659 : actualRows3659=WordField.canonicalRows actualModulus 3659 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3659 : actualRows3659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3659=2820 := by core033_kernel_decide
theorem rows3660 : actualRows3660=WordField.canonicalRows actualModulus 3660 (.bnot 3659) := by core033_kernel_decide
theorem stats3660 : actualRows3660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3660=6276 := by core033_kernel_decide
theorem rows3661 : actualRows3661=WordField.canonicalRows actualModulus 3661 (.badd 3658 3660) := by core033_kernel_decide
theorem stats3661 : actualRows3661.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3661=5388 := by core033_kernel_decide
theorem rows3662 : actualRows3662=WordField.canonicalRows actualModulus 3662 (.bnot 3661) := by core033_kernel_decide
theorem stats3662 : actualRows3662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3662=6276 := by core033_kernel_decide
theorem rows3663 : actualRows3663=WordField.canonicalRows actualModulus 3663 (.band 3656 3662) := by core033_kernel_decide
theorem stats3663 : actualRows3663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3663=5124 := by core033_kernel_decide
theorem rows3664 : actualRows3664=WordField.canonicalRows actualModulus 3664 (.bxor 3651 3663) := by core033_kernel_decide
theorem stats3664 : actualRows3664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3664=7428 := by core033_kernel_decide
theorem rows3665 : actualRows3665=WordField.canonicalRows actualModulus 3665 (.shr 3664 31) := by core033_kernel_decide
theorem stats3665 : actualRows3665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3665=2892 := by core033_kernel_decide
theorem rows3666 : actualRows3666=WordField.canonicalRows actualModulus 3666 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3666 : actualRows3666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3666=2892 := by core033_kernel_decide
theorem rows3667 : actualRows3667=WordField.canonicalRows actualModulus 3667 (.bxor 3665 3666) := by core033_kernel_decide
theorem stats3667 : actualRows3667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3667=7428 := by core033_kernel_decide
theorem rows3668 : actualRows3668=WordField.canonicalRows actualModulus 3668 (.bnot 3667) := by core033_kernel_decide
theorem stats3668 : actualRows3668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3668=6276 := by core033_kernel_decide
theorem rows3669 : actualRows3669=WordField.canonicalRows actualModulus 3669 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3669 : actualRows3669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3669=2892 := by core033_kernel_decide
theorem rows3670 : actualRows3670=WordField.canonicalRows actualModulus 3670 (.badd 3668 3669) := by core033_kernel_decide
theorem stats3670 : actualRows3670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3670=5388 := by core033_kernel_decide
theorem rows3671 : actualRows3671=WordField.canonicalRows actualModulus 3671 (.band 3670 2702) := by core033_kernel_decide
theorem stats3671 : actualRows3671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3671=5124 := by core033_kernel_decide
theorem rows3672 : actualRows3672=WordField.canonicalRows actualModulus 3672 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3672 : actualRows3672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3672=2892 := by core033_kernel_decide
theorem rows3673 : actualRows3673=WordField.canonicalRows actualModulus 3673 (.bxor 1299 3672) := by core033_kernel_decide
theorem stats3673 : actualRows3673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3673=7428 := by core033_kernel_decide
theorem rows3674 : actualRows3674=WordField.canonicalRows actualModulus 3674 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3674 : actualRows3674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3674=2820 := by core033_kernel_decide
theorem rows3675 : actualRows3675=WordField.canonicalRows actualModulus 3675 (.bnot 3674) := by core033_kernel_decide
theorem stats3675 : actualRows3675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3675=6276 := by core033_kernel_decide
theorem rows3676 : actualRows3676=WordField.canonicalRows actualModulus 3676 (.band 3673 3675) := by core033_kernel_decide
theorem stats3676 : actualRows3676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3676=5124 := by core033_kernel_decide
theorem rows3677 : actualRows3677=WordField.canonicalRows actualModulus 3677 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3677 : actualRows3677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3677=2892 := by core033_kernel_decide
theorem rows3678 : actualRows3678=WordField.canonicalRows actualModulus 3678 (.bxor 1299 3677) := by core033_kernel_decide
theorem stats3678 : actualRows3678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3678=7428 := by core033_kernel_decide
theorem rows3679 : actualRows3679=WordField.canonicalRows actualModulus 3679 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3679 : actualRows3679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3679=2820 := by core033_kernel_decide
theorem rows3680 : actualRows3680=WordField.canonicalRows actualModulus 3680 (.bnot 3679) := by core033_kernel_decide
theorem stats3680 : actualRows3680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3680=6276 := by core033_kernel_decide
theorem rows3681 : actualRows3681=WordField.canonicalRows actualModulus 3681 (.bxor 3678 3680) := by core033_kernel_decide
theorem stats3681 : actualRows3681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3681=7428 := by core033_kernel_decide
theorem rows3682 : actualRows3682=WordField.canonicalRows actualModulus 3682 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3682 : actualRows3682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3682=2892 := by core033_kernel_decide
theorem rows3683 : actualRows3683=WordField.canonicalRows actualModulus 3683 (.bxor 1299 3682) := by core033_kernel_decide
theorem stats3683 : actualRows3683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3683=7428 := by core033_kernel_decide
theorem rows3684 : actualRows3684=WordField.canonicalRows actualModulus 3684 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3684 : actualRows3684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3684=2820 := by core033_kernel_decide
theorem rows3685 : actualRows3685=WordField.canonicalRows actualModulus 3685 (.bnot 3684) := by core033_kernel_decide
theorem stats3685 : actualRows3685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3685=6276 := by core033_kernel_decide
theorem rows3686 : actualRows3686=WordField.canonicalRows actualModulus 3686 (.badd 3683 3685) := by core033_kernel_decide
theorem stats3686 : actualRows3686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3686=5388 := by core033_kernel_decide
theorem rows3687 : actualRows3687=WordField.canonicalRows actualModulus 3687 (.bnot 3686) := by core033_kernel_decide
theorem stats3687 : actualRows3687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3687=6276 := by core033_kernel_decide
theorem rows3688 : actualRows3688=WordField.canonicalRows actualModulus 3688 (.band 3681 3687) := by core033_kernel_decide
theorem stats3688 : actualRows3688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3688=5124 := by core033_kernel_decide
theorem rows3689 : actualRows3689=WordField.canonicalRows actualModulus 3689 (.bxor 3676 3688) := by core033_kernel_decide
theorem stats3689 : actualRows3689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3689=7428 := by core033_kernel_decide
theorem rows3690 : actualRows3690=WordField.canonicalRows actualModulus 3690 (.shr 3689 31) := by core033_kernel_decide
theorem stats3690 : actualRows3690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3690=2892 := by core033_kernel_decide
theorem rows3691 : actualRows3691=WordField.canonicalRows actualModulus 3691 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3691 : actualRows3691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3691=2892 := by core033_kernel_decide
theorem rows3692 : actualRows3692=WordField.canonicalRows actualModulus 3692 (.bxor 3690 3691) := by core033_kernel_decide
theorem stats3692 : actualRows3692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3692=7428 := by core033_kernel_decide
theorem rows3693 : actualRows3693=WordField.canonicalRows actualModulus 3693 (.bnot 3692) := by core033_kernel_decide
theorem stats3693 : actualRows3693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3693=6276 := by core033_kernel_decide
theorem rows3694 : actualRows3694=WordField.canonicalRows actualModulus 3694 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3694 : actualRows3694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3694=2892 := by core033_kernel_decide
theorem rows3695 : actualRows3695=WordField.canonicalRows actualModulus 3695 (.badd 3693 3694) := by core033_kernel_decide
theorem stats3695 : actualRows3695.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3695=5388 := by core033_kernel_decide
theorem rows3696 : actualRows3696=WordField.canonicalRows actualModulus 3696 (.bnot 3695) := by core033_kernel_decide
theorem stats3696 : actualRows3696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3696=6276 := by core033_kernel_decide
theorem rows3697 : actualRows3697=WordField.canonicalRows actualModulus 3697 (.band 3696 2548) := by core033_kernel_decide
theorem stats3697 : actualRows3697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3697=5124 := by core033_kernel_decide
theorem rows3698 : actualRows3698=WordField.canonicalRows actualModulus 3698 (.bxor 3671 3697) := by core033_kernel_decide
theorem stats3698 : actualRows3698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3698=7428 := by core033_kernel_decide
theorem rows3699 : actualRows3699=WordField.canonicalRows actualModulus 3699 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3699 : actualRows3699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3699=2892 := by core033_kernel_decide
theorem rows3700 : actualRows3700=WordField.canonicalRows actualModulus 3700 (.bxor 1299 3699) := by core033_kernel_decide
theorem stats3700 : actualRows3700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3700=7428 := by core033_kernel_decide
theorem rows3701 : actualRows3701=WordField.canonicalRows actualModulus 3701 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3701 : actualRows3701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3701=2820 := by core033_kernel_decide
def partRows55 : List R1CS.Row := actualRows3638++actualRows3639++actualRows3640++actualRows3641++actualRows3642++actualRows3643++actualRows3644++actualRows3645++actualRows3646++actualRows3647++actualRows3648++actualRows3649++actualRows3650++actualRows3651++actualRows3652++actualRows3653++actualRows3654++actualRows3655++actualRows3656++actualRows3657++actualRows3658++actualRows3659++actualRows3660++actualRows3661++actualRows3662++actualRows3663++actualRows3664++actualRows3665++actualRows3666++actualRows3667++actualRows3668++actualRows3669++actualRows3670++actualRows3671++actualRows3672++actualRows3673++actualRows3674++actualRows3675++actualRows3676++actualRows3677++actualRows3678++actualRows3679++actualRows3680++actualRows3681++actualRows3682++actualRows3683++actualRows3684++actualRows3685++actualRows3686++actualRows3687++actualRows3688++actualRows3689++actualRows3690++actualRows3691++actualRows3692++actualRows3693++actualRows3694++actualRows3695++actualRows3696++actualRows3697++actualRows3698++actualRows3699++actualRows3700++actualRows3701
def partOps55 : List WordIR.Op := [.shr 3637 31,.literal (BitVec.ofNat 32 1),.bxor 3638 3639,.bnot 3640,.literal (BitVec.ofNat 32 1),.badd 3641 3642,.bnot 3643,.band 3644 2547,.bxor 3619 3645,.literal (BitVec.ofNat 32 2),.bxor 1299 3647,.literal (BitVec.ofNat 32 0),.bnot 3649,.band 3648 3650,.literal (BitVec.ofNat 32 2),.bxor 1299 3652,.literal (BitVec.ofNat 32 0),.bnot 3654,.bxor 3653 3655,.literal (BitVec.ofNat 32 2),.bxor 1299 3657,.literal (BitVec.ofNat 32 0),.bnot 3659,.badd 3658 3660,.bnot 3661,.band 3656 3662,.bxor 3651 3663,.shr 3664 31,.literal (BitVec.ofNat 32 1),.bxor 3665 3666,.bnot 3667,.literal (BitVec.ofNat 32 1),.badd 3668 3669,.band 3670 2702,.literal (BitVec.ofNat 32 2),.bxor 1299 3672,.literal (BitVec.ofNat 32 0),.bnot 3674,.band 3673 3675,.literal (BitVec.ofNat 32 2),.bxor 1299 3677,.literal (BitVec.ofNat 32 0),.bnot 3679,.bxor 3678 3680,.literal (BitVec.ofNat 32 2),.bxor 1299 3682,.literal (BitVec.ofNat 32 0),.bnot 3684,.badd 3683 3685,.bnot 3686,.band 3681 3687,.bxor 3676 3688,.shr 3689 31,.literal (BitVec.ofNat 32 1),.bxor 3690 3691,.bnot 3692,.literal (BitVec.ofNat 32 1),.badd 3693 3694,.bnot 3695,.band 3696 2548,.bxor 3671 3697,.literal (BitVec.ofNat 32 2),.bxor 1299 3699,.literal (BitVec.ofNat 32 0)]
theorem partExact55 : partRows55=WordField.rows actualModulus 3638 partOps55 := by
  simp only [partRows55,partOps55,WordField.rows,rows3638,rows3639,rows3640,rows3641,rows3642,rows3643,rows3644,rows3645,rows3646,rows3647,rows3648,rows3649,rows3650,rows3651,rows3652,rows3653,rows3654,rows3655,rows3656,rows3657,rows3658,rows3659,rows3660,rows3661,rows3662,rows3663,rows3664,rows3665,rows3666,rows3667,rows3668,rows3669,rows3670,rows3671,rows3672,rows3673,rows3674,rows3675,rows3676,rows3677,rows3678,rows3679,rows3680,rows3681,rows3682,rows3683,rows3684,rows3685,rows3686,rows3687,rows3688,rows3689,rows3690,rows3691,rows3692,rows3693,rows3694,rows3695,rows3696,rows3697,rows3698,rows3699,rows3700,rows3701,List.append_assoc,List.append_nil]
theorem partLength55 : partOps55.length=64 := by decide
theorem partStats55 : partRows55.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows55=329256 := by
  simp only [partRows55,List.length_append,MatrixRowBlocks.rows_weight_append,stats3638.1,stats3638.2,stats3639.1,stats3639.2,stats3640.1,stats3640.2,stats3641.1,stats3641.2,stats3642.1,stats3642.2,stats3643.1,stats3643.2,stats3644.1,stats3644.2,stats3645.1,stats3645.2,stats3646.1,stats3646.2,stats3647.1,stats3647.2,stats3648.1,stats3648.2,stats3649.1,stats3649.2,stats3650.1,stats3650.2,stats3651.1,stats3651.2,stats3652.1,stats3652.2,stats3653.1,stats3653.2,stats3654.1,stats3654.2,stats3655.1,stats3655.2,stats3656.1,stats3656.2,stats3657.1,stats3657.2,stats3658.1,stats3658.2,stats3659.1,stats3659.2,stats3660.1,stats3660.2,stats3661.1,stats3661.2,stats3662.1,stats3662.2,stats3663.1,stats3663.2,stats3664.1,stats3664.2,stats3665.1,stats3665.2,stats3666.1,stats3666.2,stats3667.1,stats3667.2,stats3668.1,stats3668.2,stats3669.1,stats3669.2,stats3670.1,stats3670.2,stats3671.1,stats3671.2,stats3672.1,stats3672.2,stats3673.1,stats3673.2,stats3674.1,stats3674.2,stats3675.1,stats3675.2,stats3676.1,stats3676.2,stats3677.1,stats3677.2,stats3678.1,stats3678.2,stats3679.1,stats3679.2,stats3680.1,stats3680.2,stats3681.1,stats3681.2,stats3682.1,stats3682.2,stats3683.1,stats3683.2,stats3684.1,stats3684.2,stats3685.1,stats3685.2,stats3686.1,stats3686.2,stats3687.1,stats3687.2,stats3688.1,stats3688.2,stats3689.1,stats3689.2,stats3690.1,stats3690.2,stats3691.1,stats3691.2,stats3692.1,stats3692.2,stats3693.1,stats3693.2,stats3694.1,stats3694.2,stats3695.1,stats3695.2,stats3696.1,stats3696.2,stats3697.1,stats3697.2,stats3698.1,stats3698.2,stats3699.1,stats3699.2,stats3700.1,stats3700.2,stats3701.1,stats3701.2]
  decide
end AuthenticatedBranchRoundCheckedRows
