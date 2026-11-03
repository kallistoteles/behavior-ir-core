import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup58
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3712 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3712 : Bytes := ("    let r00000ef6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3712 : bytes3712=statementBytes 3830 (op3712.map lower) ∧ bytes3712.length=41 := by core033_kernel_decide
def op3713 : List WordIR.Op := [.bnot 3830]
def bytes3713 : Bytes := ("    let r00000ef7: u32 = !r00000ef6;\n" : String).toByteArray.data.toList
theorem checked3713 : bytes3713=statementBytes 3831 (op3713.map lower) ∧ bytes3713.length=37 := by core033_kernel_decide
def op3714 : List WordIR.Op := [.band 3829 3831]
def bytes3714 : Bytes := ("    let r00000ef8: u32 = r00000ef5 & r00000ef7;\n" : String).toByteArray.data.toList
theorem checked3714 : bytes3714=statementBytes 3832 (op3714.map lower) ∧ bytes3714.length=48 := by core033_kernel_decide
def op3715 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3715 : Bytes := ("    let r00000ef9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3715 : bytes3715=statementBytes 3833 (op3715.map lower) ∧ bytes3715.length=41 := by core033_kernel_decide
def op3716 : List WordIR.Op := [.bxor 1299 3833]
def bytes3716 : Bytes := ("    let r00000efa: u32 = r00000513 ^ r00000ef9;\n" : String).toByteArray.data.toList
theorem checked3716 : bytes3716=statementBytes 3834 (op3716.map lower) ∧ bytes3716.length=48 := by core033_kernel_decide
def op3717 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3717 : Bytes := ("    let r00000efb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3717 : bytes3717=statementBytes 3835 (op3717.map lower) ∧ bytes3717.length=41 := by core033_kernel_decide
def op3718 : List WordIR.Op := [.bnot 3835]
def bytes3718 : Bytes := ("    let r00000efc: u32 = !r00000efb;\n" : String).toByteArray.data.toList
theorem checked3718 : bytes3718=statementBytes 3836 (op3718.map lower) ∧ bytes3718.length=37 := by core033_kernel_decide
def op3719 : List WordIR.Op := [.bxor 3834 3836]
def bytes3719 : Bytes := ("    let r00000efd: u32 = r00000efa ^ r00000efc;\n" : String).toByteArray.data.toList
theorem checked3719 : bytes3719=statementBytes 3837 (op3719.map lower) ∧ bytes3719.length=48 := by core033_kernel_decide
def op3720 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3720 : Bytes := ("    let r00000efe: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3720 : bytes3720=statementBytes 3838 (op3720.map lower) ∧ bytes3720.length=41 := by core033_kernel_decide
def op3721 : List WordIR.Op := [.bxor 1299 3838]
def bytes3721 : Bytes := ("    let r00000eff: u32 = r00000513 ^ r00000efe;\n" : String).toByteArray.data.toList
theorem checked3721 : bytes3721=statementBytes 3839 (op3721.map lower) ∧ bytes3721.length=48 := by core033_kernel_decide
def op3722 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3722 : Bytes := ("    let r00000f00: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3722 : bytes3722=statementBytes 3840 (op3722.map lower) ∧ bytes3722.length=41 := by core033_kernel_decide
def op3723 : List WordIR.Op := [.bnot 3840]
def bytes3723 : Bytes := ("    let r00000f01: u32 = !r00000f00;\n" : String).toByteArray.data.toList
theorem checked3723 : bytes3723=statementBytes 3841 (op3723.map lower) ∧ bytes3723.length=37 := by core033_kernel_decide
def op3724 : List WordIR.Op := [.badd 3839 3841]
def bytes3724 : Bytes := ("    let r00000f02: u32 = r00000eff.wrapping_add(r00000f01);\n" : String).toByteArray.data.toList
theorem checked3724 : bytes3724=statementBytes 3842 (op3724.map lower) ∧ bytes3724.length=60 := by core033_kernel_decide
def op3725 : List WordIR.Op := [.bnot 3842]
def bytes3725 : Bytes := ("    let r00000f03: u32 = !r00000f02;\n" : String).toByteArray.data.toList
theorem checked3725 : bytes3725=statementBytes 3843 (op3725.map lower) ∧ bytes3725.length=37 := by core033_kernel_decide
def op3726 : List WordIR.Op := [.band 3837 3843]
def bytes3726 : Bytes := ("    let r00000f04: u32 = r00000efd & r00000f03;\n" : String).toByteArray.data.toList
theorem checked3726 : bytes3726=statementBytes 3844 (op3726.map lower) ∧ bytes3726.length=48 := by core033_kernel_decide
def op3727 : List WordIR.Op := [.bxor 3832 3844]
def bytes3727 : Bytes := ("    let r00000f05: u32 = r00000ef8 ^ r00000f04;\n" : String).toByteArray.data.toList
theorem checked3727 : bytes3727=statementBytes 3845 (op3727.map lower) ∧ bytes3727.length=48 := by core033_kernel_decide
def op3728 : List WordIR.Op := [.shr 3845 31]
def bytes3728 : Bytes := ("    let r00000f06: u32 = r00000f05 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3728 : bytes3728=statementBytes 3846 (op3728.map lower) ∧ bytes3728.length=54 := by core033_kernel_decide
def op3729 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3729 : Bytes := ("    let r00000f07: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3729 : bytes3729=statementBytes 3847 (op3729.map lower) ∧ bytes3729.length=41 := by core033_kernel_decide
def op3730 : List WordIR.Op := [.bxor 3846 3847]
def bytes3730 : Bytes := ("    let r00000f08: u32 = r00000f06 ^ r00000f07;\n" : String).toByteArray.data.toList
theorem checked3730 : bytes3730=statementBytes 3848 (op3730.map lower) ∧ bytes3730.length=48 := by core033_kernel_decide
def op3731 : List WordIR.Op := [.bnot 3848]
def bytes3731 : Bytes := ("    let r00000f09: u32 = !r00000f08;\n" : String).toByteArray.data.toList
theorem checked3731 : bytes3731=statementBytes 3849 (op3731.map lower) ∧ bytes3731.length=37 := by core033_kernel_decide
def op3732 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3732 : Bytes := ("    let r00000f0a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3732 : bytes3732=statementBytes 3850 (op3732.map lower) ∧ bytes3732.length=41 := by core033_kernel_decide
def op3733 : List WordIR.Op := [.badd 3849 3850]
def bytes3733 : Bytes := ("    let r00000f0b: u32 = r00000f09.wrapping_add(r00000f0a);\n" : String).toByteArray.data.toList
theorem checked3733 : bytes3733=statementBytes 3851 (op3733.map lower) ∧ bytes3733.length=60 := by core033_kernel_decide
def op3734 : List WordIR.Op := [.bnot 3851]
def bytes3734 : Bytes := ("    let r00000f0c: u32 = !r00000f0b;\n" : String).toByteArray.data.toList
theorem checked3734 : bytes3734=statementBytes 3852 (op3734.map lower) ∧ bytes3734.length=37 := by core033_kernel_decide
def op3735 : List WordIR.Op := [.band 3852 2551]
def bytes3735 : Bytes := ("    let r00000f0d: u32 = r00000f0c & r000009f7;\n" : String).toByteArray.data.toList
theorem checked3735 : bytes3735=statementBytes 3853 (op3735.map lower) ∧ bytes3735.length=48 := by core033_kernel_decide
def op3736 : List WordIR.Op := [.bxor 3827 3853]
def bytes3736 : Bytes := ("    let r00000f0e: u32 = r00000ef3 ^ r00000f0d;\n" : String).toByteArray.data.toList
theorem checked3736 : bytes3736=statementBytes 3854 (op3736.map lower) ∧ bytes3736.length=48 := by core033_kernel_decide
def op3737 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3737 : Bytes := ("    let r00000f0f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3737 : bytes3737=statementBytes 3855 (op3737.map lower) ∧ bytes3737.length=41 := by core033_kernel_decide
def op3738 : List WordIR.Op := [.bxor 1299 3855]
def bytes3738 : Bytes := ("    let r00000f10: u32 = r00000513 ^ r00000f0f;\n" : String).toByteArray.data.toList
theorem checked3738 : bytes3738=statementBytes 3856 (op3738.map lower) ∧ bytes3738.length=48 := by core033_kernel_decide
def op3739 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3739 : Bytes := ("    let r00000f11: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3739 : bytes3739=statementBytes 3857 (op3739.map lower) ∧ bytes3739.length=41 := by core033_kernel_decide
def op3740 : List WordIR.Op := [.bnot 3857]
def bytes3740 : Bytes := ("    let r00000f12: u32 = !r00000f11;\n" : String).toByteArray.data.toList
theorem checked3740 : bytes3740=statementBytes 3858 (op3740.map lower) ∧ bytes3740.length=37 := by core033_kernel_decide
def op3741 : List WordIR.Op := [.band 3856 3858]
def bytes3741 : Bytes := ("    let r00000f13: u32 = r00000f10 & r00000f12;\n" : String).toByteArray.data.toList
theorem checked3741 : bytes3741=statementBytes 3859 (op3741.map lower) ∧ bytes3741.length=48 := by core033_kernel_decide
def op3742 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3742 : Bytes := ("    let r00000f14: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3742 : bytes3742=statementBytes 3860 (op3742.map lower) ∧ bytes3742.length=41 := by core033_kernel_decide
def op3743 : List WordIR.Op := [.bxor 1299 3860]
def bytes3743 : Bytes := ("    let r00000f15: u32 = r00000513 ^ r00000f14;\n" : String).toByteArray.data.toList
theorem checked3743 : bytes3743=statementBytes 3861 (op3743.map lower) ∧ bytes3743.length=48 := by core033_kernel_decide
def op3744 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3744 : Bytes := ("    let r00000f16: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3744 : bytes3744=statementBytes 3862 (op3744.map lower) ∧ bytes3744.length=41 := by core033_kernel_decide
def op3745 : List WordIR.Op := [.bnot 3862]
def bytes3745 : Bytes := ("    let r00000f17: u32 = !r00000f16;\n" : String).toByteArray.data.toList
theorem checked3745 : bytes3745=statementBytes 3863 (op3745.map lower) ∧ bytes3745.length=37 := by core033_kernel_decide
def op3746 : List WordIR.Op := [.bxor 3861 3863]
def bytes3746 : Bytes := ("    let r00000f18: u32 = r00000f15 ^ r00000f17;\n" : String).toByteArray.data.toList
theorem checked3746 : bytes3746=statementBytes 3864 (op3746.map lower) ∧ bytes3746.length=48 := by core033_kernel_decide
def op3747 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3747 : Bytes := ("    let r00000f19: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3747 : bytes3747=statementBytes 3865 (op3747.map lower) ∧ bytes3747.length=41 := by core033_kernel_decide
def op3748 : List WordIR.Op := [.bxor 1299 3865]
def bytes3748 : Bytes := ("    let r00000f1a: u32 = r00000513 ^ r00000f19;\n" : String).toByteArray.data.toList
theorem checked3748 : bytes3748=statementBytes 3866 (op3748.map lower) ∧ bytes3748.length=48 := by core033_kernel_decide
def op3749 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3749 : Bytes := ("    let r00000f1b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3749 : bytes3749=statementBytes 3867 (op3749.map lower) ∧ bytes3749.length=41 := by core033_kernel_decide
def op3750 : List WordIR.Op := [.bnot 3867]
def bytes3750 : Bytes := ("    let r00000f1c: u32 = !r00000f1b;\n" : String).toByteArray.data.toList
theorem checked3750 : bytes3750=statementBytes 3868 (op3750.map lower) ∧ bytes3750.length=37 := by core033_kernel_decide
def op3751 : List WordIR.Op := [.badd 3866 3868]
def bytes3751 : Bytes := ("    let r00000f1d: u32 = r00000f1a.wrapping_add(r00000f1c);\n" : String).toByteArray.data.toList
theorem checked3751 : bytes3751=statementBytes 3869 (op3751.map lower) ∧ bytes3751.length=60 := by core033_kernel_decide
def op3752 : List WordIR.Op := [.bnot 3869]
def bytes3752 : Bytes := ("    let r00000f1e: u32 = !r00000f1d;\n" : String).toByteArray.data.toList
theorem checked3752 : bytes3752=statementBytes 3870 (op3752.map lower) ∧ bytes3752.length=37 := by core033_kernel_decide
def op3753 : List WordIR.Op := [.band 3864 3870]
def bytes3753 : Bytes := ("    let r00000f1f: u32 = r00000f18 & r00000f1e;\n" : String).toByteArray.data.toList
theorem checked3753 : bytes3753=statementBytes 3871 (op3753.map lower) ∧ bytes3753.length=48 := by core033_kernel_decide
def op3754 : List WordIR.Op := [.bxor 3859 3871]
def bytes3754 : Bytes := ("    let r00000f20: u32 = r00000f13 ^ r00000f1f;\n" : String).toByteArray.data.toList
theorem checked3754 : bytes3754=statementBytes 3872 (op3754.map lower) ∧ bytes3754.length=48 := by core033_kernel_decide
def op3755 : List WordIR.Op := [.shr 3872 31]
def bytes3755 : Bytes := ("    let r00000f21: u32 = r00000f20 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3755 : bytes3755=statementBytes 3873 (op3755.map lower) ∧ bytes3755.length=54 := by core033_kernel_decide
def op3756 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3756 : Bytes := ("    let r00000f22: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3756 : bytes3756=statementBytes 3874 (op3756.map lower) ∧ bytes3756.length=41 := by core033_kernel_decide
def op3757 : List WordIR.Op := [.bxor 3873 3874]
def bytes3757 : Bytes := ("    let r00000f23: u32 = r00000f21 ^ r00000f22;\n" : String).toByteArray.data.toList
theorem checked3757 : bytes3757=statementBytes 3875 (op3757.map lower) ∧ bytes3757.length=48 := by core033_kernel_decide
def op3758 : List WordIR.Op := [.bnot 3875]
def bytes3758 : Bytes := ("    let r00000f24: u32 = !r00000f23;\n" : String).toByteArray.data.toList
theorem checked3758 : bytes3758=statementBytes 3876 (op3758.map lower) ∧ bytes3758.length=37 := by core033_kernel_decide
def op3759 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3759 : Bytes := ("    let r00000f25: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3759 : bytes3759=statementBytes 3877 (op3759.map lower) ∧ bytes3759.length=41 := by core033_kernel_decide
def op3760 : List WordIR.Op := [.badd 3876 3877]
def bytes3760 : Bytes := ("    let r00000f26: u32 = r00000f24.wrapping_add(r00000f25);\n" : String).toByteArray.data.toList
theorem checked3760 : bytes3760=statementBytes 3878 (op3760.map lower) ∧ bytes3760.length=60 := by core033_kernel_decide
def op3761 : List WordIR.Op := [.band 3878 2714]
def bytes3761 : Bytes := ("    let r00000f27: u32 = r00000f26 & r00000a9a;\n" : String).toByteArray.data.toList
theorem checked3761 : bytes3761=statementBytes 3879 (op3761.map lower) ∧ bytes3761.length=48 := by core033_kernel_decide
def op3762 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3762 : Bytes := ("    let r00000f28: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3762 : bytes3762=statementBytes 3880 (op3762.map lower) ∧ bytes3762.length=41 := by core033_kernel_decide
def op3763 : List WordIR.Op := [.bxor 1299 3880]
def bytes3763 : Bytes := ("    let r00000f29: u32 = r00000513 ^ r00000f28;\n" : String).toByteArray.data.toList
theorem checked3763 : bytes3763=statementBytes 3881 (op3763.map lower) ∧ bytes3763.length=48 := by core033_kernel_decide
def op3764 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3764 : Bytes := ("    let r00000f2a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3764 : bytes3764=statementBytes 3882 (op3764.map lower) ∧ bytes3764.length=41 := by core033_kernel_decide
def op3765 : List WordIR.Op := [.bnot 3882]
def bytes3765 : Bytes := ("    let r00000f2b: u32 = !r00000f2a;\n" : String).toByteArray.data.toList
theorem checked3765 : bytes3765=statementBytes 3883 (op3765.map lower) ∧ bytes3765.length=37 := by core033_kernel_decide
def op3766 : List WordIR.Op := [.band 3881 3883]
def bytes3766 : Bytes := ("    let r00000f2c: u32 = r00000f29 & r00000f2b;\n" : String).toByteArray.data.toList
theorem checked3766 : bytes3766=statementBytes 3884 (op3766.map lower) ∧ bytes3766.length=48 := by core033_kernel_decide
def op3767 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3767 : Bytes := ("    let r00000f2d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3767 : bytes3767=statementBytes 3885 (op3767.map lower) ∧ bytes3767.length=41 := by core033_kernel_decide
def op3768 : List WordIR.Op := [.bxor 1299 3885]
def bytes3768 : Bytes := ("    let r00000f2e: u32 = r00000513 ^ r00000f2d;\n" : String).toByteArray.data.toList
theorem checked3768 : bytes3768=statementBytes 3886 (op3768.map lower) ∧ bytes3768.length=48 := by core033_kernel_decide
def op3769 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3769 : Bytes := ("    let r00000f2f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3769 : bytes3769=statementBytes 3887 (op3769.map lower) ∧ bytes3769.length=41 := by core033_kernel_decide
def op3770 : List WordIR.Op := [.bnot 3887]
def bytes3770 : Bytes := ("    let r00000f30: u32 = !r00000f2f;\n" : String).toByteArray.data.toList
theorem checked3770 : bytes3770=statementBytes 3888 (op3770.map lower) ∧ bytes3770.length=37 := by core033_kernel_decide
def op3771 : List WordIR.Op := [.bxor 3886 3888]
def bytes3771 : Bytes := ("    let r00000f31: u32 = r00000f2e ^ r00000f30;\n" : String).toByteArray.data.toList
theorem checked3771 : bytes3771=statementBytes 3889 (op3771.map lower) ∧ bytes3771.length=48 := by core033_kernel_decide
def op3772 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3772 : Bytes := ("    let r00000f32: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3772 : bytes3772=statementBytes 3890 (op3772.map lower) ∧ bytes3772.length=41 := by core033_kernel_decide
def op3773 : List WordIR.Op := [.bxor 1299 3890]
def bytes3773 : Bytes := ("    let r00000f33: u32 = r00000513 ^ r00000f32;\n" : String).toByteArray.data.toList
theorem checked3773 : bytes3773=statementBytes 3891 (op3773.map lower) ∧ bytes3773.length=48 := by core033_kernel_decide
def op3774 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3774 : Bytes := ("    let r00000f34: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3774 : bytes3774=statementBytes 3892 (op3774.map lower) ∧ bytes3774.length=41 := by core033_kernel_decide
def op3775 : List WordIR.Op := [.bnot 3892]
def bytes3775 : Bytes := ("    let r00000f35: u32 = !r00000f34;\n" : String).toByteArray.data.toList
theorem checked3775 : bytes3775=statementBytes 3893 (op3775.map lower) ∧ bytes3775.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3712,op3713,op3714,op3715,op3716,op3717,op3718,op3719,op3720,op3721,op3722,op3723,op3724,op3725,op3726,op3727,op3728,op3729,op3730,op3731,op3732,op3733,op3734,op3735,op3736,op3737,op3738,op3739,op3740,op3741,op3742,op3743,op3744,op3745,op3746,op3747,op3748,op3749,op3750,op3751,op3752,op3753,op3754,op3755,op3756,op3757,op3758,op3759,op3760,op3761,op3762,op3763,op3764,op3765,op3766,op3767,op3768,op3769,op3770,op3771,op3772,op3773,op3774,op3775]
def chunks : List Bytes := [bytes3712,bytes3713,bytes3714,bytes3715,bytes3716,bytes3717,bytes3718,bytes3719,bytes3720,bytes3721,bytes3722,bytes3723,bytes3724,bytes3725,bytes3726,bytes3727,bytes3728,bytes3729,bytes3730,bytes3731,bytes3732,bytes3733,bytes3734,bytes3735,bytes3736,bytes3737,bytes3738,bytes3739,bytes3740,bytes3741,bytes3742,bytes3743,bytes3744,bytes3745,bytes3746,bytes3747,bytes3748,bytes3749,bytes3750,bytes3751,bytes3752,bytes3753,bytes3754,bytes3755,bytes3756,bytes3757,bytes3758,bytes3759,bytes3760,bytes3761,bytes3762,bytes3763,bytes3764,bytes3765,bytes3766,bytes3767,bytes3768,bytes3769,bytes3770,bytes3771,bytes3772,bytes3773,bytes3774,bytes3775]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3830 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3712.1 (.cons _ _ _ _ _ checked3713.1 (.cons _ _ _ _ _ checked3714.1 (.cons _ _ _ _ _ checked3715.1 (.cons _ _ _ _ _ checked3716.1 (.cons _ _ _ _ _ checked3717.1 (.cons _ _ _ _ _ checked3718.1 (.cons _ _ _ _ _ checked3719.1 (.cons _ _ _ _ _ checked3720.1 (.cons _ _ _ _ _ checked3721.1 (.cons _ _ _ _ _ checked3722.1 (.cons _ _ _ _ _ checked3723.1 (.cons _ _ _ _ _ checked3724.1 (.cons _ _ _ _ _ checked3725.1 (.cons _ _ _ _ _ checked3726.1 (.cons _ _ _ _ _ checked3727.1 (.cons _ _ _ _ _ checked3728.1 (.cons _ _ _ _ _ checked3729.1 (.cons _ _ _ _ _ checked3730.1 (.cons _ _ _ _ _ checked3731.1 (.cons _ _ _ _ _ checked3732.1 (.cons _ _ _ _ _ checked3733.1 (.cons _ _ _ _ _ checked3734.1 (.cons _ _ _ _ _ checked3735.1 (.cons _ _ _ _ _ checked3736.1 (.cons _ _ _ _ _ checked3737.1 (.cons _ _ _ _ _ checked3738.1 (.cons _ _ _ _ _ checked3739.1 (.cons _ _ _ _ _ checked3740.1 (.cons _ _ _ _ _ checked3741.1 (.cons _ _ _ _ _ checked3742.1 (.cons _ _ _ _ _ checked3743.1 (.cons _ _ _ _ _ checked3744.1 (.cons _ _ _ _ _ checked3745.1 (.cons _ _ _ _ _ checked3746.1 (.cons _ _ _ _ _ checked3747.1 (.cons _ _ _ _ _ checked3748.1 (.cons _ _ _ _ _ checked3749.1 (.cons _ _ _ _ _ checked3750.1 (.cons _ _ _ _ _ checked3751.1 (.cons _ _ _ _ _ checked3752.1 (.cons _ _ _ _ _ checked3753.1 (.cons _ _ _ _ _ checked3754.1 (.cons _ _ _ _ _ checked3755.1 (.cons _ _ _ _ _ checked3756.1 (.cons _ _ _ _ _ checked3757.1 (.cons _ _ _ _ _ checked3758.1 (.cons _ _ _ _ _ checked3759.1 (.cons _ _ _ _ _ checked3760.1 (.cons _ _ _ _ _ checked3761.1 (.cons _ _ _ _ _ checked3762.1 (.cons _ _ _ _ _ checked3763.1 (.cons _ _ _ _ _ checked3764.1 (.cons _ _ _ _ _ checked3765.1 (.cons _ _ _ _ _ checked3766.1 (.cons _ _ _ _ _ checked3767.1 (.cons _ _ _ _ _ checked3768.1 (.cons _ _ _ _ _ checked3769.1 (.cons _ _ _ _ _ checked3770.1 (.cons _ _ _ _ _ checked3771.1 (.cons _ _ _ _ _ checked3772.1 (.cons _ _ _ _ _ checked3773.1 (.cons _ _ _ _ _ checked3774.1 (.cons _ _ _ _ _ checked3775.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3830 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3712.2,checked3713.2,checked3714.2,checked3715.2,checked3716.2,checked3717.2,checked3718.2,checked3719.2,checked3720.2,checked3721.2,checked3722.2,checked3723.2,checked3724.2,checked3725.2,checked3726.2,checked3727.2,checked3728.2,checked3729.2,checked3730.2,checked3731.2,checked3732.2,checked3733.2,checked3734.2,checked3735.2,checked3736.2,checked3737.2,checked3738.2,checked3739.2,checked3740.2,checked3741.2,checked3742.2,checked3743.2,checked3744.2,checked3745.2,checked3746.2,checked3747.2,checked3748.2,checked3749.2,checked3750.2,checked3751.2,checked3752.2,checked3753.2,checked3754.2,checked3755.2,checked3756.2,checked3757.2,checked3758.2,checked3759.2,checked3760.2,checked3761.2,checked3762.2,checked3763.2,checked3764.2,checked3765.2,checked3766.2,checked3767.2,checked3768.2,checked3769.2,checked3770.2,checked3771.2,checked3772.2,checked3773.2,checked3774.2,checked3775.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup58
