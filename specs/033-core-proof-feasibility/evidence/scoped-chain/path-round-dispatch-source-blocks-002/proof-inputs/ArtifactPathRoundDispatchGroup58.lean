import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup58
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3712 : List WordIR.Op := [.bxor 96 3754]
def bytes3712 : Bytes := ("    let r00000eab: u32 = r00000060 ^ r00000eaa;\n" : String).toByteArray.data.toList
theorem checked3712 : bytes3712=statementBytes 3755 (op3712.map lower) ∧ bytes3712.length=48 := by core033_kernel_decide
def op3713 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3713 : Bytes := ("    let r00000eac: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3713 : bytes3713=statementBytes 3756 (op3713.map lower) ∧ bytes3713.length=41 := by core033_kernel_decide
def op3714 : List WordIR.Op := [.bnot 3756]
def bytes3714 : Bytes := ("    let r00000ead: u32 = !r00000eac;\n" : String).toByteArray.data.toList
theorem checked3714 : bytes3714=statementBytes 3757 (op3714.map lower) ∧ bytes3714.length=37 := by core033_kernel_decide
def op3715 : List WordIR.Op := [.badd 3755 3757]
def bytes3715 : Bytes := ("    let r00000eae: u32 = r00000eab.wrapping_add(r00000ead);\n" : String).toByteArray.data.toList
theorem checked3715 : bytes3715=statementBytes 3758 (op3715.map lower) ∧ bytes3715.length=60 := by core033_kernel_decide
def op3716 : List WordIR.Op := [.bnot 3758]
def bytes3716 : Bytes := ("    let r00000eaf: u32 = !r00000eae;\n" : String).toByteArray.data.toList
theorem checked3716 : bytes3716=statementBytes 3759 (op3716.map lower) ∧ bytes3716.length=37 := by core033_kernel_decide
def op3717 : List WordIR.Op := [.band 3753 3759]
def bytes3717 : Bytes := ("    let r00000eb0: u32 = r00000ea9 & r00000eaf;\n" : String).toByteArray.data.toList
theorem checked3717 : bytes3717=statementBytes 3760 (op3717.map lower) ∧ bytes3717.length=48 := by core033_kernel_decide
def op3718 : List WordIR.Op := [.bxor 3748 3760]
def bytes3718 : Bytes := ("    let r00000eb1: u32 = r00000ea4 ^ r00000eb0;\n" : String).toByteArray.data.toList
theorem checked3718 : bytes3718=statementBytes 3761 (op3718.map lower) ∧ bytes3718.length=48 := by core033_kernel_decide
def op3719 : List WordIR.Op := [.shr 3761 31]
def bytes3719 : Bytes := ("    let r00000eb2: u32 = r00000eb1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3719 : bytes3719=statementBytes 3762 (op3719.map lower) ∧ bytes3719.length=54 := by core033_kernel_decide
def op3720 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3720 : Bytes := ("    let r00000eb3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3720 : bytes3720=statementBytes 3763 (op3720.map lower) ∧ bytes3720.length=41 := by core033_kernel_decide
def op3721 : List WordIR.Op := [.bxor 3762 3763]
def bytes3721 : Bytes := ("    let r00000eb4: u32 = r00000eb2 ^ r00000eb3;\n" : String).toByteArray.data.toList
theorem checked3721 : bytes3721=statementBytes 3764 (op3721.map lower) ∧ bytes3721.length=48 := by core033_kernel_decide
def op3722 : List WordIR.Op := [.bnot 3764]
def bytes3722 : Bytes := ("    let r00000eb5: u32 = !r00000eb4;\n" : String).toByteArray.data.toList
theorem checked3722 : bytes3722=statementBytes 3765 (op3722.map lower) ∧ bytes3722.length=37 := by core033_kernel_decide
def op3723 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3723 : Bytes := ("    let r00000eb6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3723 : bytes3723=statementBytes 3766 (op3723.map lower) ∧ bytes3723.length=41 := by core033_kernel_decide
def op3724 : List WordIR.Op := [.badd 3765 3766]
def bytes3724 : Bytes := ("    let r00000eb7: u32 = r00000eb5.wrapping_add(r00000eb6);\n" : String).toByteArray.data.toList
theorem checked3724 : bytes3724=statementBytes 3767 (op3724.map lower) ∧ bytes3724.length=60 := by core033_kernel_decide
def op3725 : List WordIR.Op := [.band 3767 1574]
def bytes3725 : Bytes := ("    let r00000eb8: u32 = r00000eb7 & r00000626;\n" : String).toByteArray.data.toList
theorem checked3725 : bytes3725=statementBytes 3768 (op3725.map lower) ∧ bytes3725.length=48 := by core033_kernel_decide
def op3726 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3726 : Bytes := ("    let r00000eb9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3726 : bytes3726=statementBytes 3769 (op3726.map lower) ∧ bytes3726.length=41 := by core033_kernel_decide
def op3727 : List WordIR.Op := [.bxor 96 3769]
def bytes3727 : Bytes := ("    let r00000eba: u32 = r00000060 ^ r00000eb9;\n" : String).toByteArray.data.toList
theorem checked3727 : bytes3727=statementBytes 3770 (op3727.map lower) ∧ bytes3727.length=48 := by core033_kernel_decide
def op3728 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3728 : Bytes := ("    let r00000ebb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3728 : bytes3728=statementBytes 3771 (op3728.map lower) ∧ bytes3728.length=41 := by core033_kernel_decide
def op3729 : List WordIR.Op := [.bnot 3771]
def bytes3729 : Bytes := ("    let r00000ebc: u32 = !r00000ebb;\n" : String).toByteArray.data.toList
theorem checked3729 : bytes3729=statementBytes 3772 (op3729.map lower) ∧ bytes3729.length=37 := by core033_kernel_decide
def op3730 : List WordIR.Op := [.band 3770 3772]
def bytes3730 : Bytes := ("    let r00000ebd: u32 = r00000eba & r00000ebc;\n" : String).toByteArray.data.toList
theorem checked3730 : bytes3730=statementBytes 3773 (op3730.map lower) ∧ bytes3730.length=48 := by core033_kernel_decide
def op3731 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3731 : Bytes := ("    let r00000ebe: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3731 : bytes3731=statementBytes 3774 (op3731.map lower) ∧ bytes3731.length=41 := by core033_kernel_decide
def op3732 : List WordIR.Op := [.bxor 96 3774]
def bytes3732 : Bytes := ("    let r00000ebf: u32 = r00000060 ^ r00000ebe;\n" : String).toByteArray.data.toList
theorem checked3732 : bytes3732=statementBytes 3775 (op3732.map lower) ∧ bytes3732.length=48 := by core033_kernel_decide
def op3733 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3733 : Bytes := ("    let r00000ec0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3733 : bytes3733=statementBytes 3776 (op3733.map lower) ∧ bytes3733.length=41 := by core033_kernel_decide
def op3734 : List WordIR.Op := [.bnot 3776]
def bytes3734 : Bytes := ("    let r00000ec1: u32 = !r00000ec0;\n" : String).toByteArray.data.toList
theorem checked3734 : bytes3734=statementBytes 3777 (op3734.map lower) ∧ bytes3734.length=37 := by core033_kernel_decide
def op3735 : List WordIR.Op := [.bxor 3775 3777]
def bytes3735 : Bytes := ("    let r00000ec2: u32 = r00000ebf ^ r00000ec1;\n" : String).toByteArray.data.toList
theorem checked3735 : bytes3735=statementBytes 3778 (op3735.map lower) ∧ bytes3735.length=48 := by core033_kernel_decide
def op3736 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3736 : Bytes := ("    let r00000ec3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3736 : bytes3736=statementBytes 3779 (op3736.map lower) ∧ bytes3736.length=41 := by core033_kernel_decide
def op3737 : List WordIR.Op := [.bxor 96 3779]
def bytes3737 : Bytes := ("    let r00000ec4: u32 = r00000060 ^ r00000ec3;\n" : String).toByteArray.data.toList
theorem checked3737 : bytes3737=statementBytes 3780 (op3737.map lower) ∧ bytes3737.length=48 := by core033_kernel_decide
def op3738 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3738 : Bytes := ("    let r00000ec5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3738 : bytes3738=statementBytes 3781 (op3738.map lower) ∧ bytes3738.length=41 := by core033_kernel_decide
def op3739 : List WordIR.Op := [.bnot 3781]
def bytes3739 : Bytes := ("    let r00000ec6: u32 = !r00000ec5;\n" : String).toByteArray.data.toList
theorem checked3739 : bytes3739=statementBytes 3782 (op3739.map lower) ∧ bytes3739.length=37 := by core033_kernel_decide
def op3740 : List WordIR.Op := [.badd 3780 3782]
def bytes3740 : Bytes := ("    let r00000ec7: u32 = r00000ec4.wrapping_add(r00000ec6);\n" : String).toByteArray.data.toList
theorem checked3740 : bytes3740=statementBytes 3783 (op3740.map lower) ∧ bytes3740.length=60 := by core033_kernel_decide
def op3741 : List WordIR.Op := [.bnot 3783]
def bytes3741 : Bytes := ("    let r00000ec8: u32 = !r00000ec7;\n" : String).toByteArray.data.toList
theorem checked3741 : bytes3741=statementBytes 3784 (op3741.map lower) ∧ bytes3741.length=37 := by core033_kernel_decide
def op3742 : List WordIR.Op := [.band 3778 3784]
def bytes3742 : Bytes := ("    let r00000ec9: u32 = r00000ec2 & r00000ec8;\n" : String).toByteArray.data.toList
theorem checked3742 : bytes3742=statementBytes 3785 (op3742.map lower) ∧ bytes3742.length=48 := by core033_kernel_decide
def op3743 : List WordIR.Op := [.bxor 3773 3785]
def bytes3743 : Bytes := ("    let r00000eca: u32 = r00000ebd ^ r00000ec9;\n" : String).toByteArray.data.toList
theorem checked3743 : bytes3743=statementBytes 3786 (op3743.map lower) ∧ bytes3743.length=48 := by core033_kernel_decide
def op3744 : List WordIR.Op := [.shr 3786 31]
def bytes3744 : Bytes := ("    let r00000ecb: u32 = r00000eca >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3744 : bytes3744=statementBytes 3787 (op3744.map lower) ∧ bytes3744.length=54 := by core033_kernel_decide
def op3745 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3745 : Bytes := ("    let r00000ecc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3745 : bytes3745=statementBytes 3788 (op3745.map lower) ∧ bytes3745.length=41 := by core033_kernel_decide
def op3746 : List WordIR.Op := [.bxor 3787 3788]
def bytes3746 : Bytes := ("    let r00000ecd: u32 = r00000ecb ^ r00000ecc;\n" : String).toByteArray.data.toList
theorem checked3746 : bytes3746=statementBytes 3789 (op3746.map lower) ∧ bytes3746.length=48 := by core033_kernel_decide
def op3747 : List WordIR.Op := [.bnot 3789]
def bytes3747 : Bytes := ("    let r00000ece: u32 = !r00000ecd;\n" : String).toByteArray.data.toList
theorem checked3747 : bytes3747=statementBytes 3790 (op3747.map lower) ∧ bytes3747.length=37 := by core033_kernel_decide
def op3748 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3748 : Bytes := ("    let r00000ecf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3748 : bytes3748=statementBytes 3791 (op3748.map lower) ∧ bytes3748.length=41 := by core033_kernel_decide
def op3749 : List WordIR.Op := [.badd 3790 3791]
def bytes3749 : Bytes := ("    let r00000ed0: u32 = r00000ece.wrapping_add(r00000ecf);\n" : String).toByteArray.data.toList
theorem checked3749 : bytes3749=statementBytes 3792 (op3749.map lower) ∧ bytes3749.length=60 := by core033_kernel_decide
def op3750 : List WordIR.Op := [.bnot 3792]
def bytes3750 : Bytes := ("    let r00000ed1: u32 = !r00000ed0;\n" : String).toByteArray.data.toList
theorem checked3750 : bytes3750=statementBytes 3793 (op3750.map lower) ∧ bytes3750.length=37 := by core033_kernel_decide
def op3751 : List WordIR.Op := [.band 3793 1382]
def bytes3751 : Bytes := ("    let r00000ed2: u32 = r00000ed1 & r00000566;\n" : String).toByteArray.data.toList
theorem checked3751 : bytes3751=statementBytes 3794 (op3751.map lower) ∧ bytes3751.length=48 := by core033_kernel_decide
def op3752 : List WordIR.Op := [.bxor 3768 3794]
def bytes3752 : Bytes := ("    let r00000ed3: u32 = r00000eb8 ^ r00000ed2;\n" : String).toByteArray.data.toList
theorem checked3752 : bytes3752=statementBytes 3795 (op3752.map lower) ∧ bytes3752.length=48 := by core033_kernel_decide
def op3753 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3753 : Bytes := ("    let r00000ed4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3753 : bytes3753=statementBytes 3796 (op3753.map lower) ∧ bytes3753.length=41 := by core033_kernel_decide
def op3754 : List WordIR.Op := [.bxor 96 3796]
def bytes3754 : Bytes := ("    let r00000ed5: u32 = r00000060 ^ r00000ed4;\n" : String).toByteArray.data.toList
theorem checked3754 : bytes3754=statementBytes 3797 (op3754.map lower) ∧ bytes3754.length=48 := by core033_kernel_decide
def op3755 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3755 : Bytes := ("    let r00000ed6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3755 : bytes3755=statementBytes 3798 (op3755.map lower) ∧ bytes3755.length=41 := by core033_kernel_decide
def op3756 : List WordIR.Op := [.bnot 3798]
def bytes3756 : Bytes := ("    let r00000ed7: u32 = !r00000ed6;\n" : String).toByteArray.data.toList
theorem checked3756 : bytes3756=statementBytes 3799 (op3756.map lower) ∧ bytes3756.length=37 := by core033_kernel_decide
def op3757 : List WordIR.Op := [.band 3797 3799]
def bytes3757 : Bytes := ("    let r00000ed8: u32 = r00000ed5 & r00000ed7;\n" : String).toByteArray.data.toList
theorem checked3757 : bytes3757=statementBytes 3800 (op3757.map lower) ∧ bytes3757.length=48 := by core033_kernel_decide
def op3758 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3758 : Bytes := ("    let r00000ed9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3758 : bytes3758=statementBytes 3801 (op3758.map lower) ∧ bytes3758.length=41 := by core033_kernel_decide
def op3759 : List WordIR.Op := [.bxor 96 3801]
def bytes3759 : Bytes := ("    let r00000eda: u32 = r00000060 ^ r00000ed9;\n" : String).toByteArray.data.toList
theorem checked3759 : bytes3759=statementBytes 3802 (op3759.map lower) ∧ bytes3759.length=48 := by core033_kernel_decide
def op3760 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3760 : Bytes := ("    let r00000edb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3760 : bytes3760=statementBytes 3803 (op3760.map lower) ∧ bytes3760.length=41 := by core033_kernel_decide
def op3761 : List WordIR.Op := [.bnot 3803]
def bytes3761 : Bytes := ("    let r00000edc: u32 = !r00000edb;\n" : String).toByteArray.data.toList
theorem checked3761 : bytes3761=statementBytes 3804 (op3761.map lower) ∧ bytes3761.length=37 := by core033_kernel_decide
def op3762 : List WordIR.Op := [.bxor 3802 3804]
def bytes3762 : Bytes := ("    let r00000edd: u32 = r00000eda ^ r00000edc;\n" : String).toByteArray.data.toList
theorem checked3762 : bytes3762=statementBytes 3805 (op3762.map lower) ∧ bytes3762.length=48 := by core033_kernel_decide
def op3763 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3763 : Bytes := ("    let r00000ede: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3763 : bytes3763=statementBytes 3806 (op3763.map lower) ∧ bytes3763.length=41 := by core033_kernel_decide
def op3764 : List WordIR.Op := [.bxor 96 3806]
def bytes3764 : Bytes := ("    let r00000edf: u32 = r00000060 ^ r00000ede;\n" : String).toByteArray.data.toList
theorem checked3764 : bytes3764=statementBytes 3807 (op3764.map lower) ∧ bytes3764.length=48 := by core033_kernel_decide
def op3765 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3765 : Bytes := ("    let r00000ee0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3765 : bytes3765=statementBytes 3808 (op3765.map lower) ∧ bytes3765.length=41 := by core033_kernel_decide
def op3766 : List WordIR.Op := [.bnot 3808]
def bytes3766 : Bytes := ("    let r00000ee1: u32 = !r00000ee0;\n" : String).toByteArray.data.toList
theorem checked3766 : bytes3766=statementBytes 3809 (op3766.map lower) ∧ bytes3766.length=37 := by core033_kernel_decide
def op3767 : List WordIR.Op := [.badd 3807 3809]
def bytes3767 : Bytes := ("    let r00000ee2: u32 = r00000edf.wrapping_add(r00000ee1);\n" : String).toByteArray.data.toList
theorem checked3767 : bytes3767=statementBytes 3810 (op3767.map lower) ∧ bytes3767.length=60 := by core033_kernel_decide
def op3768 : List WordIR.Op := [.bnot 3810]
def bytes3768 : Bytes := ("    let r00000ee3: u32 = !r00000ee2;\n" : String).toByteArray.data.toList
theorem checked3768 : bytes3768=statementBytes 3811 (op3768.map lower) ∧ bytes3768.length=37 := by core033_kernel_decide
def op3769 : List WordIR.Op := [.band 3805 3811]
def bytes3769 : Bytes := ("    let r00000ee4: u32 = r00000edd & r00000ee3;\n" : String).toByteArray.data.toList
theorem checked3769 : bytes3769=statementBytes 3812 (op3769.map lower) ∧ bytes3769.length=48 := by core033_kernel_decide
def op3770 : List WordIR.Op := [.bxor 3800 3812]
def bytes3770 : Bytes := ("    let r00000ee5: u32 = r00000ed8 ^ r00000ee4;\n" : String).toByteArray.data.toList
theorem checked3770 : bytes3770=statementBytes 3813 (op3770.map lower) ∧ bytes3770.length=48 := by core033_kernel_decide
def op3771 : List WordIR.Op := [.shr 3813 31]
def bytes3771 : Bytes := ("    let r00000ee6: u32 = r00000ee5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3771 : bytes3771=statementBytes 3814 (op3771.map lower) ∧ bytes3771.length=54 := by core033_kernel_decide
def op3772 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3772 : Bytes := ("    let r00000ee7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3772 : bytes3772=statementBytes 3815 (op3772.map lower) ∧ bytes3772.length=41 := by core033_kernel_decide
def op3773 : List WordIR.Op := [.bxor 3814 3815]
def bytes3773 : Bytes := ("    let r00000ee8: u32 = r00000ee6 ^ r00000ee7;\n" : String).toByteArray.data.toList
theorem checked3773 : bytes3773=statementBytes 3816 (op3773.map lower) ∧ bytes3773.length=48 := by core033_kernel_decide
def op3774 : List WordIR.Op := [.bnot 3816]
def bytes3774 : Bytes := ("    let r00000ee9: u32 = !r00000ee8;\n" : String).toByteArray.data.toList
theorem checked3774 : bytes3774=statementBytes 3817 (op3774.map lower) ∧ bytes3774.length=37 := by core033_kernel_decide
def op3775 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3775 : Bytes := ("    let r00000eea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3775 : bytes3775=statementBytes 3818 (op3775.map lower) ∧ bytes3775.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3712,op3713,op3714,op3715,op3716,op3717,op3718,op3719,op3720,op3721,op3722,op3723,op3724,op3725,op3726,op3727,op3728,op3729,op3730,op3731,op3732,op3733,op3734,op3735,op3736,op3737,op3738,op3739,op3740,op3741,op3742,op3743,op3744,op3745,op3746,op3747,op3748,op3749,op3750,op3751,op3752,op3753,op3754,op3755,op3756,op3757,op3758,op3759,op3760,op3761,op3762,op3763,op3764,op3765,op3766,op3767,op3768,op3769,op3770,op3771,op3772,op3773,op3774,op3775]
def chunks : List Bytes := [bytes3712,bytes3713,bytes3714,bytes3715,bytes3716,bytes3717,bytes3718,bytes3719,bytes3720,bytes3721,bytes3722,bytes3723,bytes3724,bytes3725,bytes3726,bytes3727,bytes3728,bytes3729,bytes3730,bytes3731,bytes3732,bytes3733,bytes3734,bytes3735,bytes3736,bytes3737,bytes3738,bytes3739,bytes3740,bytes3741,bytes3742,bytes3743,bytes3744,bytes3745,bytes3746,bytes3747,bytes3748,bytes3749,bytes3750,bytes3751,bytes3752,bytes3753,bytes3754,bytes3755,bytes3756,bytes3757,bytes3758,bytes3759,bytes3760,bytes3761,bytes3762,bytes3763,bytes3764,bytes3765,bytes3766,bytes3767,bytes3768,bytes3769,bytes3770,bytes3771,bytes3772,bytes3773,bytes3774,bytes3775]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3755 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3712.1 (.cons _ _ _ _ _ checked3713.1 (.cons _ _ _ _ _ checked3714.1 (.cons _ _ _ _ _ checked3715.1 (.cons _ _ _ _ _ checked3716.1 (.cons _ _ _ _ _ checked3717.1 (.cons _ _ _ _ _ checked3718.1 (.cons _ _ _ _ _ checked3719.1 (.cons _ _ _ _ _ checked3720.1 (.cons _ _ _ _ _ checked3721.1 (.cons _ _ _ _ _ checked3722.1 (.cons _ _ _ _ _ checked3723.1 (.cons _ _ _ _ _ checked3724.1 (.cons _ _ _ _ _ checked3725.1 (.cons _ _ _ _ _ checked3726.1 (.cons _ _ _ _ _ checked3727.1 (.cons _ _ _ _ _ checked3728.1 (.cons _ _ _ _ _ checked3729.1 (.cons _ _ _ _ _ checked3730.1 (.cons _ _ _ _ _ checked3731.1 (.cons _ _ _ _ _ checked3732.1 (.cons _ _ _ _ _ checked3733.1 (.cons _ _ _ _ _ checked3734.1 (.cons _ _ _ _ _ checked3735.1 (.cons _ _ _ _ _ checked3736.1 (.cons _ _ _ _ _ checked3737.1 (.cons _ _ _ _ _ checked3738.1 (.cons _ _ _ _ _ checked3739.1 (.cons _ _ _ _ _ checked3740.1 (.cons _ _ _ _ _ checked3741.1 (.cons _ _ _ _ _ checked3742.1 (.cons _ _ _ _ _ checked3743.1 (.cons _ _ _ _ _ checked3744.1 (.cons _ _ _ _ _ checked3745.1 (.cons _ _ _ _ _ checked3746.1 (.cons _ _ _ _ _ checked3747.1 (.cons _ _ _ _ _ checked3748.1 (.cons _ _ _ _ _ checked3749.1 (.cons _ _ _ _ _ checked3750.1 (.cons _ _ _ _ _ checked3751.1 (.cons _ _ _ _ _ checked3752.1 (.cons _ _ _ _ _ checked3753.1 (.cons _ _ _ _ _ checked3754.1 (.cons _ _ _ _ _ checked3755.1 (.cons _ _ _ _ _ checked3756.1 (.cons _ _ _ _ _ checked3757.1 (.cons _ _ _ _ _ checked3758.1 (.cons _ _ _ _ _ checked3759.1 (.cons _ _ _ _ _ checked3760.1 (.cons _ _ _ _ _ checked3761.1 (.cons _ _ _ _ _ checked3762.1 (.cons _ _ _ _ _ checked3763.1 (.cons _ _ _ _ _ checked3764.1 (.cons _ _ _ _ _ checked3765.1 (.cons _ _ _ _ _ checked3766.1 (.cons _ _ _ _ _ checked3767.1 (.cons _ _ _ _ _ checked3768.1 (.cons _ _ _ _ _ checked3769.1 (.cons _ _ _ _ _ checked3770.1 (.cons _ _ _ _ _ checked3771.1 (.cons _ _ _ _ _ checked3772.1 (.cons _ _ _ _ _ checked3773.1 (.cons _ _ _ _ _ checked3774.1 (.cons _ _ _ _ _ checked3775.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3755 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3712.2,checked3713.2,checked3714.2,checked3715.2,checked3716.2,checked3717.2,checked3718.2,checked3719.2,checked3720.2,checked3721.2,checked3722.2,checked3723.2,checked3724.2,checked3725.2,checked3726.2,checked3727.2,checked3728.2,checked3729.2,checked3730.2,checked3731.2,checked3732.2,checked3733.2,checked3734.2,checked3735.2,checked3736.2,checked3737.2,checked3738.2,checked3739.2,checked3740.2,checked3741.2,checked3742.2,checked3743.2,checked3744.2,checked3745.2,checked3746.2,checked3747.2,checked3748.2,checked3749.2,checked3750.2,checked3751.2,checked3752.2,checked3753.2,checked3754.2,checked3755.2,checked3756.2,checked3757.2,checked3758.2,checked3759.2,checked3760.2,checked3761.2,checked3762.2,checked3763.2,checked3764.2,checked3765.2,checked3766.2,checked3767.2,checked3768.2,checked3769.2,checked3770.2,checked3771.2,checked3772.2,checked3773.2,checked3774.2,checked3775.2]
  decide
end ArtifactPathRoundDispatchGroup58
