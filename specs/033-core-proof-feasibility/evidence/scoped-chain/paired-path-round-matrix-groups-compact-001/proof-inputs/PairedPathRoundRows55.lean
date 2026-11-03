import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData56
import PairedPathRoundInstructionMatrixData57
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3616 : actualRows3616=WordField.canonicalRows actualModulus 3616 (.bnot 3615) := by core033_kernel_decide
theorem stats3616 : actualRows3616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3616=6276 := by core033_kernel_decide
theorem rows3617 : actualRows3617=WordField.canonicalRows actualModulus 3617 (.band 3614 3616) := by core033_kernel_decide
theorem stats3617 : actualRows3617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3617=5124 := by core033_kernel_decide
theorem rows3618 : actualRows3618=WordField.canonicalRows actualModulus 3618 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3618 : actualRows3618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3618=2892 := by core033_kernel_decide
theorem rows3619 : actualRows3619=WordField.canonicalRows actualModulus 3619 (.bxor 616 3618) := by core033_kernel_decide
theorem stats3619 : actualRows3619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3619=7428 := by core033_kernel_decide
theorem rows3620 : actualRows3620=WordField.canonicalRows actualModulus 3620 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3620 : actualRows3620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3620=2820 := by core033_kernel_decide
theorem rows3621 : actualRows3621=WordField.canonicalRows actualModulus 3621 (.bnot 3620) := by core033_kernel_decide
theorem stats3621 : actualRows3621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3621=6276 := by core033_kernel_decide
theorem rows3622 : actualRows3622=WordField.canonicalRows actualModulus 3622 (.bxor 3619 3621) := by core033_kernel_decide
theorem stats3622 : actualRows3622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3622=7428 := by core033_kernel_decide
theorem rows3623 : actualRows3623=WordField.canonicalRows actualModulus 3623 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3623 : actualRows3623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3623=2892 := by core033_kernel_decide
theorem rows3624 : actualRows3624=WordField.canonicalRows actualModulus 3624 (.bxor 616 3623) := by core033_kernel_decide
theorem stats3624 : actualRows3624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3624=7428 := by core033_kernel_decide
theorem rows3625 : actualRows3625=WordField.canonicalRows actualModulus 3625 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3625 : actualRows3625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3625=2820 := by core033_kernel_decide
theorem rows3626 : actualRows3626=WordField.canonicalRows actualModulus 3626 (.bnot 3625) := by core033_kernel_decide
theorem stats3626 : actualRows3626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3626=6276 := by core033_kernel_decide
theorem rows3627 : actualRows3627=WordField.canonicalRows actualModulus 3627 (.badd 3624 3626) := by core033_kernel_decide
theorem stats3627 : actualRows3627.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3627=5388 := by core033_kernel_decide
theorem rows3628 : actualRows3628=WordField.canonicalRows actualModulus 3628 (.bnot 3627) := by core033_kernel_decide
theorem stats3628 : actualRows3628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3628=6276 := by core033_kernel_decide
theorem rows3629 : actualRows3629=WordField.canonicalRows actualModulus 3629 (.band 3622 3628) := by core033_kernel_decide
theorem stats3629 : actualRows3629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3629=5124 := by core033_kernel_decide
theorem rows3630 : actualRows3630=WordField.canonicalRows actualModulus 3630 (.bxor 3617 3629) := by core033_kernel_decide
theorem stats3630 : actualRows3630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3630=7428 := by core033_kernel_decide
theorem rows3631 : actualRows3631=WordField.canonicalRows actualModulus 3631 (.shr 3630 31) := by core033_kernel_decide
theorem stats3631 : actualRows3631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3631=2892 := by core033_kernel_decide
theorem rows3632 : actualRows3632=WordField.canonicalRows actualModulus 3632 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3632 : actualRows3632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3632=2892 := by core033_kernel_decide
theorem rows3633 : actualRows3633=WordField.canonicalRows actualModulus 3633 (.bxor 3631 3632) := by core033_kernel_decide
theorem stats3633 : actualRows3633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3633=7428 := by core033_kernel_decide
theorem rows3634 : actualRows3634=WordField.canonicalRows actualModulus 3634 (.bnot 3633) := by core033_kernel_decide
theorem stats3634 : actualRows3634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3634=6276 := by core033_kernel_decide
theorem rows3635 : actualRows3635=WordField.canonicalRows actualModulus 3635 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3635 : actualRows3635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3635=2892 := by core033_kernel_decide
theorem rows3636 : actualRows3636=WordField.canonicalRows actualModulus 3636 (.badd 3634 3635) := by core033_kernel_decide
theorem stats3636 : actualRows3636.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3636=5388 := by core033_kernel_decide
theorem rows3637 : actualRows3637=WordField.canonicalRows actualModulus 3637 (.bnot 3636) := by core033_kernel_decide
theorem stats3637 : actualRows3637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3637=6276 := by core033_kernel_decide
theorem rows3638 : actualRows3638=WordField.canonicalRows actualModulus 3638 (.band 3637 1877) := by core033_kernel_decide
theorem stats3638 : actualRows3638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3638=5124 := by core033_kernel_decide
theorem rows3639 : actualRows3639=WordField.canonicalRows actualModulus 3639 (.bxor 3612 3638) := by core033_kernel_decide
theorem stats3639 : actualRows3639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3639=7428 := by core033_kernel_decide
theorem rows3640 : actualRows3640=WordField.canonicalRows actualModulus 3640 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3640 : actualRows3640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3640=2892 := by core033_kernel_decide
theorem rows3641 : actualRows3641=WordField.canonicalRows actualModulus 3641 (.bxor 616 3640) := by core033_kernel_decide
theorem stats3641 : actualRows3641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3641=7428 := by core033_kernel_decide
theorem rows3642 : actualRows3642=WordField.canonicalRows actualModulus 3642 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3642 : actualRows3642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3642=2820 := by core033_kernel_decide
theorem rows3643 : actualRows3643=WordField.canonicalRows actualModulus 3643 (.bnot 3642) := by core033_kernel_decide
theorem stats3643 : actualRows3643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3643=6276 := by core033_kernel_decide
theorem rows3644 : actualRows3644=WordField.canonicalRows actualModulus 3644 (.band 3641 3643) := by core033_kernel_decide
theorem stats3644 : actualRows3644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3644=5124 := by core033_kernel_decide
theorem rows3645 : actualRows3645=WordField.canonicalRows actualModulus 3645 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3645 : actualRows3645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3645=2892 := by core033_kernel_decide
theorem rows3646 : actualRows3646=WordField.canonicalRows actualModulus 3646 (.bxor 616 3645) := by core033_kernel_decide
theorem stats3646 : actualRows3646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3646=7428 := by core033_kernel_decide
theorem rows3647 : actualRows3647=WordField.canonicalRows actualModulus 3647 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3647 : actualRows3647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3647=2820 := by core033_kernel_decide
theorem rows3648 : actualRows3648=WordField.canonicalRows actualModulus 3648 (.bnot 3647) := by core033_kernel_decide
theorem stats3648 : actualRows3648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3648=6276 := by core033_kernel_decide
theorem rows3649 : actualRows3649=WordField.canonicalRows actualModulus 3649 (.bxor 3646 3648) := by core033_kernel_decide
theorem stats3649 : actualRows3649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3649=7428 := by core033_kernel_decide
theorem rows3650 : actualRows3650=WordField.canonicalRows actualModulus 3650 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3650 : actualRows3650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3650=2892 := by core033_kernel_decide
theorem rows3651 : actualRows3651=WordField.canonicalRows actualModulus 3651 (.bxor 616 3650) := by core033_kernel_decide
theorem stats3651 : actualRows3651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3651=7428 := by core033_kernel_decide
theorem rows3652 : actualRows3652=WordField.canonicalRows actualModulus 3652 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3652 : actualRows3652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3652=2820 := by core033_kernel_decide
theorem rows3653 : actualRows3653=WordField.canonicalRows actualModulus 3653 (.bnot 3652) := by core033_kernel_decide
theorem stats3653 : actualRows3653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3653=6276 := by core033_kernel_decide
theorem rows3654 : actualRows3654=WordField.canonicalRows actualModulus 3654 (.badd 3651 3653) := by core033_kernel_decide
theorem stats3654 : actualRows3654.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3654=5388 := by core033_kernel_decide
theorem rows3655 : actualRows3655=WordField.canonicalRows actualModulus 3655 (.bnot 3654) := by core033_kernel_decide
theorem stats3655 : actualRows3655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3655=6276 := by core033_kernel_decide
theorem rows3656 : actualRows3656=WordField.canonicalRows actualModulus 3656 (.band 3649 3655) := by core033_kernel_decide
theorem stats3656 : actualRows3656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3656=5124 := by core033_kernel_decide
theorem rows3657 : actualRows3657=WordField.canonicalRows actualModulus 3657 (.bxor 3644 3656) := by core033_kernel_decide
theorem stats3657 : actualRows3657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3657=7428 := by core033_kernel_decide
theorem rows3658 : actualRows3658=WordField.canonicalRows actualModulus 3658 (.shr 3657 31) := by core033_kernel_decide
theorem stats3658 : actualRows3658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3658=2892 := by core033_kernel_decide
theorem rows3659 : actualRows3659=WordField.canonicalRows actualModulus 3659 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3659 : actualRows3659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3659=2892 := by core033_kernel_decide
theorem rows3660 : actualRows3660=WordField.canonicalRows actualModulus 3660 (.bxor 3658 3659) := by core033_kernel_decide
theorem stats3660 : actualRows3660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3660=7428 := by core033_kernel_decide
theorem rows3661 : actualRows3661=WordField.canonicalRows actualModulus 3661 (.bnot 3660) := by core033_kernel_decide
theorem stats3661 : actualRows3661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3661=6276 := by core033_kernel_decide
theorem rows3662 : actualRows3662=WordField.canonicalRows actualModulus 3662 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3662 : actualRows3662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3662=2892 := by core033_kernel_decide
theorem rows3663 : actualRows3663=WordField.canonicalRows actualModulus 3663 (.badd 3661 3662) := by core033_kernel_decide
theorem stats3663 : actualRows3663.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3663=5388 := by core033_kernel_decide
theorem rows3664 : actualRows3664=WordField.canonicalRows actualModulus 3664 (.band 3663 2058) := by core033_kernel_decide
theorem stats3664 : actualRows3664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3664=5124 := by core033_kernel_decide
theorem rows3665 : actualRows3665=WordField.canonicalRows actualModulus 3665 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3665 : actualRows3665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3665=2892 := by core033_kernel_decide
theorem rows3666 : actualRows3666=WordField.canonicalRows actualModulus 3666 (.bxor 616 3665) := by core033_kernel_decide
theorem stats3666 : actualRows3666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3666=7428 := by core033_kernel_decide
theorem rows3667 : actualRows3667=WordField.canonicalRows actualModulus 3667 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3667 : actualRows3667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3667=2820 := by core033_kernel_decide
theorem rows3668 : actualRows3668=WordField.canonicalRows actualModulus 3668 (.bnot 3667) := by core033_kernel_decide
theorem stats3668 : actualRows3668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3668=6276 := by core033_kernel_decide
theorem rows3669 : actualRows3669=WordField.canonicalRows actualModulus 3669 (.band 3666 3668) := by core033_kernel_decide
theorem stats3669 : actualRows3669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3669=5124 := by core033_kernel_decide
theorem rows3670 : actualRows3670=WordField.canonicalRows actualModulus 3670 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3670 : actualRows3670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3670=2892 := by core033_kernel_decide
theorem rows3671 : actualRows3671=WordField.canonicalRows actualModulus 3671 (.bxor 616 3670) := by core033_kernel_decide
theorem stats3671 : actualRows3671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3671=7428 := by core033_kernel_decide
theorem rows3672 : actualRows3672=WordField.canonicalRows actualModulus 3672 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3672 : actualRows3672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3672=2820 := by core033_kernel_decide
theorem rows3673 : actualRows3673=WordField.canonicalRows actualModulus 3673 (.bnot 3672) := by core033_kernel_decide
theorem stats3673 : actualRows3673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3673=6276 := by core033_kernel_decide
theorem rows3674 : actualRows3674=WordField.canonicalRows actualModulus 3674 (.bxor 3671 3673) := by core033_kernel_decide
theorem stats3674 : actualRows3674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3674=7428 := by core033_kernel_decide
theorem rows3675 : actualRows3675=WordField.canonicalRows actualModulus 3675 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3675 : actualRows3675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3675=2892 := by core033_kernel_decide
theorem rows3676 : actualRows3676=WordField.canonicalRows actualModulus 3676 (.bxor 616 3675) := by core033_kernel_decide
theorem stats3676 : actualRows3676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3676=7428 := by core033_kernel_decide
theorem rows3677 : actualRows3677=WordField.canonicalRows actualModulus 3677 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3677 : actualRows3677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3677=2820 := by core033_kernel_decide
theorem rows3678 : actualRows3678=WordField.canonicalRows actualModulus 3678 (.bnot 3677) := by core033_kernel_decide
theorem stats3678 : actualRows3678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3678=6276 := by core033_kernel_decide
theorem rows3679 : actualRows3679=WordField.canonicalRows actualModulus 3679 (.badd 3676 3678) := by core033_kernel_decide
theorem stats3679 : actualRows3679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3679=5388 := by core033_kernel_decide
def partRows55 : List R1CS.Row := actualRows3616++actualRows3617++actualRows3618++actualRows3619++actualRows3620++actualRows3621++actualRows3622++actualRows3623++actualRows3624++actualRows3625++actualRows3626++actualRows3627++actualRows3628++actualRows3629++actualRows3630++actualRows3631++actualRows3632++actualRows3633++actualRows3634++actualRows3635++actualRows3636++actualRows3637++actualRows3638++actualRows3639++actualRows3640++actualRows3641++actualRows3642++actualRows3643++actualRows3644++actualRows3645++actualRows3646++actualRows3647++actualRows3648++actualRows3649++actualRows3650++actualRows3651++actualRows3652++actualRows3653++actualRows3654++actualRows3655++actualRows3656++actualRows3657++actualRows3658++actualRows3659++actualRows3660++actualRows3661++actualRows3662++actualRows3663++actualRows3664++actualRows3665++actualRows3666++actualRows3667++actualRows3668++actualRows3669++actualRows3670++actualRows3671++actualRows3672++actualRows3673++actualRows3674++actualRows3675++actualRows3676++actualRows3677++actualRows3678++actualRows3679
def partOps55 : List WordIR.Op := [.bnot 3615,.band 3614 3616,.literal (BitVec.ofNat 32 2),.bxor 616 3618,.literal (BitVec.ofNat 32 0),.bnot 3620,.bxor 3619 3621,.literal (BitVec.ofNat 32 2),.bxor 616 3623,.literal (BitVec.ofNat 32 0),.bnot 3625,.badd 3624 3626,.bnot 3627,.band 3622 3628,.bxor 3617 3629,.shr 3630 31,.literal (BitVec.ofNat 32 1),.bxor 3631 3632,.bnot 3633,.literal (BitVec.ofNat 32 1),.badd 3634 3635,.bnot 3636,.band 3637 1877,.bxor 3612 3638,.literal (BitVec.ofNat 32 2),.bxor 616 3640,.literal (BitVec.ofNat 32 0),.bnot 3642,.band 3641 3643,.literal (BitVec.ofNat 32 2),.bxor 616 3645,.literal (BitVec.ofNat 32 0),.bnot 3647,.bxor 3646 3648,.literal (BitVec.ofNat 32 2),.bxor 616 3650,.literal (BitVec.ofNat 32 0),.bnot 3652,.badd 3651 3653,.bnot 3654,.band 3649 3655,.bxor 3644 3656,.shr 3657 31,.literal (BitVec.ofNat 32 1),.bxor 3658 3659,.bnot 3660,.literal (BitVec.ofNat 32 1),.badd 3661 3662,.band 3663 2058,.literal (BitVec.ofNat 32 2),.bxor 616 3665,.literal (BitVec.ofNat 32 0),.bnot 3667,.band 3666 3668,.literal (BitVec.ofNat 32 2),.bxor 616 3670,.literal (BitVec.ofNat 32 0),.bnot 3672,.bxor 3671 3673,.literal (BitVec.ofNat 32 2),.bxor 616 3675,.literal (BitVec.ofNat 32 0),.bnot 3677,.badd 3676 3678]
theorem partExact55 : partRows55=WordField.rows actualModulus 3616 partOps55 := by
  simp only [partRows55,partOps55,WordField.rows,rows3616,rows3617,rows3618,rows3619,rows3620,rows3621,rows3622,rows3623,rows3624,rows3625,rows3626,rows3627,rows3628,rows3629,rows3630,rows3631,rows3632,rows3633,rows3634,rows3635,rows3636,rows3637,rows3638,rows3639,rows3640,rows3641,rows3642,rows3643,rows3644,rows3645,rows3646,rows3647,rows3648,rows3649,rows3650,rows3651,rows3652,rows3653,rows3654,rows3655,rows3656,rows3657,rows3658,rows3659,rows3660,rows3661,rows3662,rows3663,rows3664,rows3665,rows3666,rows3667,rows3668,rows3669,rows3670,rows3671,rows3672,rows3673,rows3674,rows3675,rows3676,rows3677,rows3678,rows3679,List.append_assoc,List.append_nil]
theorem partLength55 : partOps55.length=64 := by decide
theorem partStats55 : partRows55.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows55=332568 := by
  simp only [partRows55,List.length_append,MatrixRowBlocks.rows_weight_append,stats3616.1,stats3616.2,stats3617.1,stats3617.2,stats3618.1,stats3618.2,stats3619.1,stats3619.2,stats3620.1,stats3620.2,stats3621.1,stats3621.2,stats3622.1,stats3622.2,stats3623.1,stats3623.2,stats3624.1,stats3624.2,stats3625.1,stats3625.2,stats3626.1,stats3626.2,stats3627.1,stats3627.2,stats3628.1,stats3628.2,stats3629.1,stats3629.2,stats3630.1,stats3630.2,stats3631.1,stats3631.2,stats3632.1,stats3632.2,stats3633.1,stats3633.2,stats3634.1,stats3634.2,stats3635.1,stats3635.2,stats3636.1,stats3636.2,stats3637.1,stats3637.2,stats3638.1,stats3638.2,stats3639.1,stats3639.2,stats3640.1,stats3640.2,stats3641.1,stats3641.2,stats3642.1,stats3642.2,stats3643.1,stats3643.2,stats3644.1,stats3644.2,stats3645.1,stats3645.2,stats3646.1,stats3646.2,stats3647.1,stats3647.2,stats3648.1,stats3648.2,stats3649.1,stats3649.2,stats3650.1,stats3650.2,stats3651.1,stats3651.2,stats3652.1,stats3652.2,stats3653.1,stats3653.2,stats3654.1,stats3654.2,stats3655.1,stats3655.2,stats3656.1,stats3656.2,stats3657.1,stats3657.2,stats3658.1,stats3658.2,stats3659.1,stats3659.2,stats3660.1,stats3660.2,stats3661.1,stats3661.2,stats3662.1,stats3662.2,stats3663.1,stats3663.2,stats3664.1,stats3664.2,stats3665.1,stats3665.2,stats3666.1,stats3666.2,stats3667.1,stats3667.2,stats3668.1,stats3668.2,stats3669.1,stats3669.2,stats3670.1,stats3670.2,stats3671.1,stats3671.2,stats3672.1,stats3672.2,stats3673.1,stats3673.2,stats3674.1,stats3674.2,stats3675.1,stats3675.2,stats3676.1,stats3676.2,stats3677.1,stats3677.2,stats3678.1,stats3678.2,stats3679.1,stats3679.2]
  decide
end PairedPathRoundCheckedRows
