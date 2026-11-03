import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup57
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3648 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3648 : Bytes := ("    let r00000ea0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3648 : bytes3648=statementBytes 3744 (op3648.map lower) ∧ bytes3648.length=41 := by core033_kernel_decide
def op3649 : List WordIR.Op := [.bxor 616 3744]
def bytes3649 : Bytes := ("    let r00000ea1: u32 = r00000268 ^ r00000ea0;\n" : String).toByteArray.data.toList
theorem checked3649 : bytes3649=statementBytes 3745 (op3649.map lower) ∧ bytes3649.length=48 := by core033_kernel_decide
def op3650 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3650 : Bytes := ("    let r00000ea2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3650 : bytes3650=statementBytes 3746 (op3650.map lower) ∧ bytes3650.length=41 := by core033_kernel_decide
def op3651 : List WordIR.Op := [.bnot 3746]
def bytes3651 : Bytes := ("    let r00000ea3: u32 = !r00000ea2;\n" : String).toByteArray.data.toList
theorem checked3651 : bytes3651=statementBytes 3747 (op3651.map lower) ∧ bytes3651.length=37 := by core033_kernel_decide
def op3652 : List WordIR.Op := [.band 3745 3747]
def bytes3652 : Bytes := ("    let r00000ea4: u32 = r00000ea1 & r00000ea3;\n" : String).toByteArray.data.toList
theorem checked3652 : bytes3652=statementBytes 3748 (op3652.map lower) ∧ bytes3652.length=48 := by core033_kernel_decide
def op3653 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3653 : Bytes := ("    let r00000ea5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3653 : bytes3653=statementBytes 3749 (op3653.map lower) ∧ bytes3653.length=41 := by core033_kernel_decide
def op3654 : List WordIR.Op := [.bxor 616 3749]
def bytes3654 : Bytes := ("    let r00000ea6: u32 = r00000268 ^ r00000ea5;\n" : String).toByteArray.data.toList
theorem checked3654 : bytes3654=statementBytes 3750 (op3654.map lower) ∧ bytes3654.length=48 := by core033_kernel_decide
def op3655 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3655 : Bytes := ("    let r00000ea7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3655 : bytes3655=statementBytes 3751 (op3655.map lower) ∧ bytes3655.length=41 := by core033_kernel_decide
def op3656 : List WordIR.Op := [.bnot 3751]
def bytes3656 : Bytes := ("    let r00000ea8: u32 = !r00000ea7;\n" : String).toByteArray.data.toList
theorem checked3656 : bytes3656=statementBytes 3752 (op3656.map lower) ∧ bytes3656.length=37 := by core033_kernel_decide
def op3657 : List WordIR.Op := [.bxor 3750 3752]
def bytes3657 : Bytes := ("    let r00000ea9: u32 = r00000ea6 ^ r00000ea8;\n" : String).toByteArray.data.toList
theorem checked3657 : bytes3657=statementBytes 3753 (op3657.map lower) ∧ bytes3657.length=48 := by core033_kernel_decide
def op3658 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3658 : Bytes := ("    let r00000eaa: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3658 : bytes3658=statementBytes 3754 (op3658.map lower) ∧ bytes3658.length=41 := by core033_kernel_decide
def op3659 : List WordIR.Op := [.bxor 616 3754]
def bytes3659 : Bytes := ("    let r00000eab: u32 = r00000268 ^ r00000eaa;\n" : String).toByteArray.data.toList
theorem checked3659 : bytes3659=statementBytes 3755 (op3659.map lower) ∧ bytes3659.length=48 := by core033_kernel_decide
def op3660 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3660 : Bytes := ("    let r00000eac: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3660 : bytes3660=statementBytes 3756 (op3660.map lower) ∧ bytes3660.length=41 := by core033_kernel_decide
def op3661 : List WordIR.Op := [.bnot 3756]
def bytes3661 : Bytes := ("    let r00000ead: u32 = !r00000eac;\n" : String).toByteArray.data.toList
theorem checked3661 : bytes3661=statementBytes 3757 (op3661.map lower) ∧ bytes3661.length=37 := by core033_kernel_decide
def op3662 : List WordIR.Op := [.badd 3755 3757]
def bytes3662 : Bytes := ("    let r00000eae: u32 = r00000eab.wrapping_add(r00000ead);\n" : String).toByteArray.data.toList
theorem checked3662 : bytes3662=statementBytes 3758 (op3662.map lower) ∧ bytes3662.length=60 := by core033_kernel_decide
def op3663 : List WordIR.Op := [.bnot 3758]
def bytes3663 : Bytes := ("    let r00000eaf: u32 = !r00000eae;\n" : String).toByteArray.data.toList
theorem checked3663 : bytes3663=statementBytes 3759 (op3663.map lower) ∧ bytes3663.length=37 := by core033_kernel_decide
def op3664 : List WordIR.Op := [.band 3753 3759]
def bytes3664 : Bytes := ("    let r00000eb0: u32 = r00000ea9 & r00000eaf;\n" : String).toByteArray.data.toList
theorem checked3664 : bytes3664=statementBytes 3760 (op3664.map lower) ∧ bytes3664.length=48 := by core033_kernel_decide
def op3665 : List WordIR.Op := [.bxor 3748 3760]
def bytes3665 : Bytes := ("    let r00000eb1: u32 = r00000ea4 ^ r00000eb0;\n" : String).toByteArray.data.toList
theorem checked3665 : bytes3665=statementBytes 3761 (op3665.map lower) ∧ bytes3665.length=48 := by core033_kernel_decide
def op3666 : List WordIR.Op := [.shr 3761 31]
def bytes3666 : Bytes := ("    let r00000eb2: u32 = r00000eb1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3666 : bytes3666=statementBytes 3762 (op3666.map lower) ∧ bytes3666.length=54 := by core033_kernel_decide
def op3667 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3667 : Bytes := ("    let r00000eb3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3667 : bytes3667=statementBytes 3763 (op3667.map lower) ∧ bytes3667.length=41 := by core033_kernel_decide
def op3668 : List WordIR.Op := [.bxor 3762 3763]
def bytes3668 : Bytes := ("    let r00000eb4: u32 = r00000eb2 ^ r00000eb3;\n" : String).toByteArray.data.toList
theorem checked3668 : bytes3668=statementBytes 3764 (op3668.map lower) ∧ bytes3668.length=48 := by core033_kernel_decide
def op3669 : List WordIR.Op := [.bnot 3764]
def bytes3669 : Bytes := ("    let r00000eb5: u32 = !r00000eb4;\n" : String).toByteArray.data.toList
theorem checked3669 : bytes3669=statementBytes 3765 (op3669.map lower) ∧ bytes3669.length=37 := by core033_kernel_decide
def op3670 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3670 : Bytes := ("    let r00000eb6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3670 : bytes3670=statementBytes 3766 (op3670.map lower) ∧ bytes3670.length=41 := by core033_kernel_decide
def op3671 : List WordIR.Op := [.badd 3765 3766]
def bytes3671 : Bytes := ("    let r00000eb7: u32 = r00000eb5.wrapping_add(r00000eb6);\n" : String).toByteArray.data.toList
theorem checked3671 : bytes3671=statementBytes 3767 (op3671.map lower) ∧ bytes3671.length=60 := by core033_kernel_decide
def op3672 : List WordIR.Op := [.band 3767 2064]
def bytes3672 : Bytes := ("    let r00000eb8: u32 = r00000eb7 & r00000810;\n" : String).toByteArray.data.toList
theorem checked3672 : bytes3672=statementBytes 3768 (op3672.map lower) ∧ bytes3672.length=48 := by core033_kernel_decide
def op3673 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3673 : Bytes := ("    let r00000eb9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3673 : bytes3673=statementBytes 3769 (op3673.map lower) ∧ bytes3673.length=41 := by core033_kernel_decide
def op3674 : List WordIR.Op := [.bxor 616 3769]
def bytes3674 : Bytes := ("    let r00000eba: u32 = r00000268 ^ r00000eb9;\n" : String).toByteArray.data.toList
theorem checked3674 : bytes3674=statementBytes 3770 (op3674.map lower) ∧ bytes3674.length=48 := by core033_kernel_decide
def op3675 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3675 : Bytes := ("    let r00000ebb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3675 : bytes3675=statementBytes 3771 (op3675.map lower) ∧ bytes3675.length=41 := by core033_kernel_decide
def op3676 : List WordIR.Op := [.bnot 3771]
def bytes3676 : Bytes := ("    let r00000ebc: u32 = !r00000ebb;\n" : String).toByteArray.data.toList
theorem checked3676 : bytes3676=statementBytes 3772 (op3676.map lower) ∧ bytes3676.length=37 := by core033_kernel_decide
def op3677 : List WordIR.Op := [.band 3770 3772]
def bytes3677 : Bytes := ("    let r00000ebd: u32 = r00000eba & r00000ebc;\n" : String).toByteArray.data.toList
theorem checked3677 : bytes3677=statementBytes 3773 (op3677.map lower) ∧ bytes3677.length=48 := by core033_kernel_decide
def op3678 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3678 : Bytes := ("    let r00000ebe: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3678 : bytes3678=statementBytes 3774 (op3678.map lower) ∧ bytes3678.length=41 := by core033_kernel_decide
def op3679 : List WordIR.Op := [.bxor 616 3774]
def bytes3679 : Bytes := ("    let r00000ebf: u32 = r00000268 ^ r00000ebe;\n" : String).toByteArray.data.toList
theorem checked3679 : bytes3679=statementBytes 3775 (op3679.map lower) ∧ bytes3679.length=48 := by core033_kernel_decide
def op3680 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3680 : Bytes := ("    let r00000ec0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3680 : bytes3680=statementBytes 3776 (op3680.map lower) ∧ bytes3680.length=41 := by core033_kernel_decide
def op3681 : List WordIR.Op := [.bnot 3776]
def bytes3681 : Bytes := ("    let r00000ec1: u32 = !r00000ec0;\n" : String).toByteArray.data.toList
theorem checked3681 : bytes3681=statementBytes 3777 (op3681.map lower) ∧ bytes3681.length=37 := by core033_kernel_decide
def op3682 : List WordIR.Op := [.bxor 3775 3777]
def bytes3682 : Bytes := ("    let r00000ec2: u32 = r00000ebf ^ r00000ec1;\n" : String).toByteArray.data.toList
theorem checked3682 : bytes3682=statementBytes 3778 (op3682.map lower) ∧ bytes3682.length=48 := by core033_kernel_decide
def op3683 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3683 : Bytes := ("    let r00000ec3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3683 : bytes3683=statementBytes 3779 (op3683.map lower) ∧ bytes3683.length=41 := by core033_kernel_decide
def op3684 : List WordIR.Op := [.bxor 616 3779]
def bytes3684 : Bytes := ("    let r00000ec4: u32 = r00000268 ^ r00000ec3;\n" : String).toByteArray.data.toList
theorem checked3684 : bytes3684=statementBytes 3780 (op3684.map lower) ∧ bytes3684.length=48 := by core033_kernel_decide
def op3685 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3685 : Bytes := ("    let r00000ec5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3685 : bytes3685=statementBytes 3781 (op3685.map lower) ∧ bytes3685.length=41 := by core033_kernel_decide
def op3686 : List WordIR.Op := [.bnot 3781]
def bytes3686 : Bytes := ("    let r00000ec6: u32 = !r00000ec5;\n" : String).toByteArray.data.toList
theorem checked3686 : bytes3686=statementBytes 3782 (op3686.map lower) ∧ bytes3686.length=37 := by core033_kernel_decide
def op3687 : List WordIR.Op := [.badd 3780 3782]
def bytes3687 : Bytes := ("    let r00000ec7: u32 = r00000ec4.wrapping_add(r00000ec6);\n" : String).toByteArray.data.toList
theorem checked3687 : bytes3687=statementBytes 3783 (op3687.map lower) ∧ bytes3687.length=60 := by core033_kernel_decide
def op3688 : List WordIR.Op := [.bnot 3783]
def bytes3688 : Bytes := ("    let r00000ec8: u32 = !r00000ec7;\n" : String).toByteArray.data.toList
theorem checked3688 : bytes3688=statementBytes 3784 (op3688.map lower) ∧ bytes3688.length=37 := by core033_kernel_decide
def op3689 : List WordIR.Op := [.band 3778 3784]
def bytes3689 : Bytes := ("    let r00000ec9: u32 = r00000ec2 & r00000ec8;\n" : String).toByteArray.data.toList
theorem checked3689 : bytes3689=statementBytes 3785 (op3689.map lower) ∧ bytes3689.length=48 := by core033_kernel_decide
def op3690 : List WordIR.Op := [.bxor 3773 3785]
def bytes3690 : Bytes := ("    let r00000eca: u32 = r00000ebd ^ r00000ec9;\n" : String).toByteArray.data.toList
theorem checked3690 : bytes3690=statementBytes 3786 (op3690.map lower) ∧ bytes3690.length=48 := by core033_kernel_decide
def op3691 : List WordIR.Op := [.shr 3786 31]
def bytes3691 : Bytes := ("    let r00000ecb: u32 = r00000eca >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3691 : bytes3691=statementBytes 3787 (op3691.map lower) ∧ bytes3691.length=54 := by core033_kernel_decide
def op3692 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3692 : Bytes := ("    let r00000ecc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3692 : bytes3692=statementBytes 3788 (op3692.map lower) ∧ bytes3692.length=41 := by core033_kernel_decide
def op3693 : List WordIR.Op := [.bxor 3787 3788]
def bytes3693 : Bytes := ("    let r00000ecd: u32 = r00000ecb ^ r00000ecc;\n" : String).toByteArray.data.toList
theorem checked3693 : bytes3693=statementBytes 3789 (op3693.map lower) ∧ bytes3693.length=48 := by core033_kernel_decide
def op3694 : List WordIR.Op := [.bnot 3789]
def bytes3694 : Bytes := ("    let r00000ece: u32 = !r00000ecd;\n" : String).toByteArray.data.toList
theorem checked3694 : bytes3694=statementBytes 3790 (op3694.map lower) ∧ bytes3694.length=37 := by core033_kernel_decide
def op3695 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3695 : Bytes := ("    let r00000ecf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3695 : bytes3695=statementBytes 3791 (op3695.map lower) ∧ bytes3695.length=41 := by core033_kernel_decide
def op3696 : List WordIR.Op := [.badd 3790 3791]
def bytes3696 : Bytes := ("    let r00000ed0: u32 = r00000ece.wrapping_add(r00000ecf);\n" : String).toByteArray.data.toList
theorem checked3696 : bytes3696=statementBytes 3792 (op3696.map lower) ∧ bytes3696.length=60 := by core033_kernel_decide
def op3697 : List WordIR.Op := [.bnot 3792]
def bytes3697 : Bytes := ("    let r00000ed1: u32 = !r00000ed0;\n" : String).toByteArray.data.toList
theorem checked3697 : bytes3697=statementBytes 3793 (op3697.map lower) ∧ bytes3697.length=37 := by core033_kernel_decide
def op3698 : List WordIR.Op := [.band 3793 1880]
def bytes3698 : Bytes := ("    let r00000ed2: u32 = r00000ed1 & r00000758;\n" : String).toByteArray.data.toList
theorem checked3698 : bytes3698=statementBytes 3794 (op3698.map lower) ∧ bytes3698.length=48 := by core033_kernel_decide
def op3699 : List WordIR.Op := [.bxor 3768 3794]
def bytes3699 : Bytes := ("    let r00000ed3: u32 = r00000eb8 ^ r00000ed2;\n" : String).toByteArray.data.toList
theorem checked3699 : bytes3699=statementBytes 3795 (op3699.map lower) ∧ bytes3699.length=48 := by core033_kernel_decide
def op3700 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3700 : Bytes := ("    let r00000ed4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3700 : bytes3700=statementBytes 3796 (op3700.map lower) ∧ bytes3700.length=41 := by core033_kernel_decide
def op3701 : List WordIR.Op := [.bxor 616 3796]
def bytes3701 : Bytes := ("    let r00000ed5: u32 = r00000268 ^ r00000ed4;\n" : String).toByteArray.data.toList
theorem checked3701 : bytes3701=statementBytes 3797 (op3701.map lower) ∧ bytes3701.length=48 := by core033_kernel_decide
def op3702 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3702 : Bytes := ("    let r00000ed6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3702 : bytes3702=statementBytes 3798 (op3702.map lower) ∧ bytes3702.length=41 := by core033_kernel_decide
def op3703 : List WordIR.Op := [.bnot 3798]
def bytes3703 : Bytes := ("    let r00000ed7: u32 = !r00000ed6;\n" : String).toByteArray.data.toList
theorem checked3703 : bytes3703=statementBytes 3799 (op3703.map lower) ∧ bytes3703.length=37 := by core033_kernel_decide
def op3704 : List WordIR.Op := [.band 3797 3799]
def bytes3704 : Bytes := ("    let r00000ed8: u32 = r00000ed5 & r00000ed7;\n" : String).toByteArray.data.toList
theorem checked3704 : bytes3704=statementBytes 3800 (op3704.map lower) ∧ bytes3704.length=48 := by core033_kernel_decide
def op3705 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3705 : Bytes := ("    let r00000ed9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3705 : bytes3705=statementBytes 3801 (op3705.map lower) ∧ bytes3705.length=41 := by core033_kernel_decide
def op3706 : List WordIR.Op := [.bxor 616 3801]
def bytes3706 : Bytes := ("    let r00000eda: u32 = r00000268 ^ r00000ed9;\n" : String).toByteArray.data.toList
theorem checked3706 : bytes3706=statementBytes 3802 (op3706.map lower) ∧ bytes3706.length=48 := by core033_kernel_decide
def op3707 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3707 : Bytes := ("    let r00000edb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3707 : bytes3707=statementBytes 3803 (op3707.map lower) ∧ bytes3707.length=41 := by core033_kernel_decide
def op3708 : List WordIR.Op := [.bnot 3803]
def bytes3708 : Bytes := ("    let r00000edc: u32 = !r00000edb;\n" : String).toByteArray.data.toList
theorem checked3708 : bytes3708=statementBytes 3804 (op3708.map lower) ∧ bytes3708.length=37 := by core033_kernel_decide
def op3709 : List WordIR.Op := [.bxor 3802 3804]
def bytes3709 : Bytes := ("    let r00000edd: u32 = r00000eda ^ r00000edc;\n" : String).toByteArray.data.toList
theorem checked3709 : bytes3709=statementBytes 3805 (op3709.map lower) ∧ bytes3709.length=48 := by core033_kernel_decide
def op3710 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3710 : Bytes := ("    let r00000ede: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3710 : bytes3710=statementBytes 3806 (op3710.map lower) ∧ bytes3710.length=41 := by core033_kernel_decide
def op3711 : List WordIR.Op := [.bxor 616 3806]
def bytes3711 : Bytes := ("    let r00000edf: u32 = r00000268 ^ r00000ede;\n" : String).toByteArray.data.toList
theorem checked3711 : bytes3711=statementBytes 3807 (op3711.map lower) ∧ bytes3711.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3648,op3649,op3650,op3651,op3652,op3653,op3654,op3655,op3656,op3657,op3658,op3659,op3660,op3661,op3662,op3663,op3664,op3665,op3666,op3667,op3668,op3669,op3670,op3671,op3672,op3673,op3674,op3675,op3676,op3677,op3678,op3679,op3680,op3681,op3682,op3683,op3684,op3685,op3686,op3687,op3688,op3689,op3690,op3691,op3692,op3693,op3694,op3695,op3696,op3697,op3698,op3699,op3700,op3701,op3702,op3703,op3704,op3705,op3706,op3707,op3708,op3709,op3710,op3711]
def chunks : List Bytes := [bytes3648,bytes3649,bytes3650,bytes3651,bytes3652,bytes3653,bytes3654,bytes3655,bytes3656,bytes3657,bytes3658,bytes3659,bytes3660,bytes3661,bytes3662,bytes3663,bytes3664,bytes3665,bytes3666,bytes3667,bytes3668,bytes3669,bytes3670,bytes3671,bytes3672,bytes3673,bytes3674,bytes3675,bytes3676,bytes3677,bytes3678,bytes3679,bytes3680,bytes3681,bytes3682,bytes3683,bytes3684,bytes3685,bytes3686,bytes3687,bytes3688,bytes3689,bytes3690,bytes3691,bytes3692,bytes3693,bytes3694,bytes3695,bytes3696,bytes3697,bytes3698,bytes3699,bytes3700,bytes3701,bytes3702,bytes3703,bytes3704,bytes3705,bytes3706,bytes3707,bytes3708,bytes3709,bytes3710,bytes3711]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3744 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3648.1 (.cons _ _ _ _ _ checked3649.1 (.cons _ _ _ _ _ checked3650.1 (.cons _ _ _ _ _ checked3651.1 (.cons _ _ _ _ _ checked3652.1 (.cons _ _ _ _ _ checked3653.1 (.cons _ _ _ _ _ checked3654.1 (.cons _ _ _ _ _ checked3655.1 (.cons _ _ _ _ _ checked3656.1 (.cons _ _ _ _ _ checked3657.1 (.cons _ _ _ _ _ checked3658.1 (.cons _ _ _ _ _ checked3659.1 (.cons _ _ _ _ _ checked3660.1 (.cons _ _ _ _ _ checked3661.1 (.cons _ _ _ _ _ checked3662.1 (.cons _ _ _ _ _ checked3663.1 (.cons _ _ _ _ _ checked3664.1 (.cons _ _ _ _ _ checked3665.1 (.cons _ _ _ _ _ checked3666.1 (.cons _ _ _ _ _ checked3667.1 (.cons _ _ _ _ _ checked3668.1 (.cons _ _ _ _ _ checked3669.1 (.cons _ _ _ _ _ checked3670.1 (.cons _ _ _ _ _ checked3671.1 (.cons _ _ _ _ _ checked3672.1 (.cons _ _ _ _ _ checked3673.1 (.cons _ _ _ _ _ checked3674.1 (.cons _ _ _ _ _ checked3675.1 (.cons _ _ _ _ _ checked3676.1 (.cons _ _ _ _ _ checked3677.1 (.cons _ _ _ _ _ checked3678.1 (.cons _ _ _ _ _ checked3679.1 (.cons _ _ _ _ _ checked3680.1 (.cons _ _ _ _ _ checked3681.1 (.cons _ _ _ _ _ checked3682.1 (.cons _ _ _ _ _ checked3683.1 (.cons _ _ _ _ _ checked3684.1 (.cons _ _ _ _ _ checked3685.1 (.cons _ _ _ _ _ checked3686.1 (.cons _ _ _ _ _ checked3687.1 (.cons _ _ _ _ _ checked3688.1 (.cons _ _ _ _ _ checked3689.1 (.cons _ _ _ _ _ checked3690.1 (.cons _ _ _ _ _ checked3691.1 (.cons _ _ _ _ _ checked3692.1 (.cons _ _ _ _ _ checked3693.1 (.cons _ _ _ _ _ checked3694.1 (.cons _ _ _ _ _ checked3695.1 (.cons _ _ _ _ _ checked3696.1 (.cons _ _ _ _ _ checked3697.1 (.cons _ _ _ _ _ checked3698.1 (.cons _ _ _ _ _ checked3699.1 (.cons _ _ _ _ _ checked3700.1 (.cons _ _ _ _ _ checked3701.1 (.cons _ _ _ _ _ checked3702.1 (.cons _ _ _ _ _ checked3703.1 (.cons _ _ _ _ _ checked3704.1 (.cons _ _ _ _ _ checked3705.1 (.cons _ _ _ _ _ checked3706.1 (.cons _ _ _ _ _ checked3707.1 (.cons _ _ _ _ _ checked3708.1 (.cons _ _ _ _ _ checked3709.1 (.cons _ _ _ _ _ checked3710.1 (.cons _ _ _ _ _ checked3711.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3744 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3648.2,checked3649.2,checked3650.2,checked3651.2,checked3652.2,checked3653.2,checked3654.2,checked3655.2,checked3656.2,checked3657.2,checked3658.2,checked3659.2,checked3660.2,checked3661.2,checked3662.2,checked3663.2,checked3664.2,checked3665.2,checked3666.2,checked3667.2,checked3668.2,checked3669.2,checked3670.2,checked3671.2,checked3672.2,checked3673.2,checked3674.2,checked3675.2,checked3676.2,checked3677.2,checked3678.2,checked3679.2,checked3680.2,checked3681.2,checked3682.2,checked3683.2,checked3684.2,checked3685.2,checked3686.2,checked3687.2,checked3688.2,checked3689.2,checked3690.2,checked3691.2,checked3692.2,checked3693.2,checked3694.2,checked3695.2,checked3696.2,checked3697.2,checked3698.2,checked3699.2,checked3700.2,checked3701.2,checked3702.2,checked3703.2,checked3704.2,checked3705.2,checked3706.2,checked3707.2,checked3708.2,checked3709.2,checked3710.2,checked3711.2]
  decide
end ArtifactPairedPathRoundGroup57
