import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup59
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3776 : List WordIR.Op := [.badd 3817 3818]
def bytes3776 : Bytes := ("    let r00000eeb: u32 = r00000ee9.wrapping_add(r00000eea);\n" : String).toByteArray.data.toList
theorem checked3776 : bytes3776=statementBytes 3819 (op3776.map lower) ∧ bytes3776.length=60 := by core033_kernel_decide
def op3777 : List WordIR.Op := [.band 3819 1577]
def bytes3777 : Bytes := ("    let r00000eec: u32 = r00000eeb & r00000629;\n" : String).toByteArray.data.toList
theorem checked3777 : bytes3777=statementBytes 3820 (op3777.map lower) ∧ bytes3777.length=48 := by core033_kernel_decide
def op3778 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3778 : Bytes := ("    let r00000eed: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3778 : bytes3778=statementBytes 3821 (op3778.map lower) ∧ bytes3778.length=41 := by core033_kernel_decide
def op3779 : List WordIR.Op := [.bxor 96 3821]
def bytes3779 : Bytes := ("    let r00000eee: u32 = r00000060 ^ r00000eed;\n" : String).toByteArray.data.toList
theorem checked3779 : bytes3779=statementBytes 3822 (op3779.map lower) ∧ bytes3779.length=48 := by core033_kernel_decide
def op3780 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3780 : Bytes := ("    let r00000eef: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3780 : bytes3780=statementBytes 3823 (op3780.map lower) ∧ bytes3780.length=41 := by core033_kernel_decide
def op3781 : List WordIR.Op := [.bnot 3823]
def bytes3781 : Bytes := ("    let r00000ef0: u32 = !r00000eef;\n" : String).toByteArray.data.toList
theorem checked3781 : bytes3781=statementBytes 3824 (op3781.map lower) ∧ bytes3781.length=37 := by core033_kernel_decide
def op3782 : List WordIR.Op := [.band 3822 3824]
def bytes3782 : Bytes := ("    let r00000ef1: u32 = r00000eee & r00000ef0;\n" : String).toByteArray.data.toList
theorem checked3782 : bytes3782=statementBytes 3825 (op3782.map lower) ∧ bytes3782.length=48 := by core033_kernel_decide
def op3783 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3783 : Bytes := ("    let r00000ef2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3783 : bytes3783=statementBytes 3826 (op3783.map lower) ∧ bytes3783.length=41 := by core033_kernel_decide
def op3784 : List WordIR.Op := [.bxor 96 3826]
def bytes3784 : Bytes := ("    let r00000ef3: u32 = r00000060 ^ r00000ef2;\n" : String).toByteArray.data.toList
theorem checked3784 : bytes3784=statementBytes 3827 (op3784.map lower) ∧ bytes3784.length=48 := by core033_kernel_decide
def op3785 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3785 : Bytes := ("    let r00000ef4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3785 : bytes3785=statementBytes 3828 (op3785.map lower) ∧ bytes3785.length=41 := by core033_kernel_decide
def op3786 : List WordIR.Op := [.bnot 3828]
def bytes3786 : Bytes := ("    let r00000ef5: u32 = !r00000ef4;\n" : String).toByteArray.data.toList
theorem checked3786 : bytes3786=statementBytes 3829 (op3786.map lower) ∧ bytes3786.length=37 := by core033_kernel_decide
def op3787 : List WordIR.Op := [.bxor 3827 3829]
def bytes3787 : Bytes := ("    let r00000ef6: u32 = r00000ef3 ^ r00000ef5;\n" : String).toByteArray.data.toList
theorem checked3787 : bytes3787=statementBytes 3830 (op3787.map lower) ∧ bytes3787.length=48 := by core033_kernel_decide
def op3788 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3788 : Bytes := ("    let r00000ef7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3788 : bytes3788=statementBytes 3831 (op3788.map lower) ∧ bytes3788.length=41 := by core033_kernel_decide
def op3789 : List WordIR.Op := [.bxor 96 3831]
def bytes3789 : Bytes := ("    let r00000ef8: u32 = r00000060 ^ r00000ef7;\n" : String).toByteArray.data.toList
theorem checked3789 : bytes3789=statementBytes 3832 (op3789.map lower) ∧ bytes3789.length=48 := by core033_kernel_decide
def op3790 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3790 : Bytes := ("    let r00000ef9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3790 : bytes3790=statementBytes 3833 (op3790.map lower) ∧ bytes3790.length=41 := by core033_kernel_decide
def op3791 : List WordIR.Op := [.bnot 3833]
def bytes3791 : Bytes := ("    let r00000efa: u32 = !r00000ef9;\n" : String).toByteArray.data.toList
theorem checked3791 : bytes3791=statementBytes 3834 (op3791.map lower) ∧ bytes3791.length=37 := by core033_kernel_decide
def op3792 : List WordIR.Op := [.badd 3832 3834]
def bytes3792 : Bytes := ("    let r00000efb: u32 = r00000ef8.wrapping_add(r00000efa);\n" : String).toByteArray.data.toList
theorem checked3792 : bytes3792=statementBytes 3835 (op3792.map lower) ∧ bytes3792.length=60 := by core033_kernel_decide
def op3793 : List WordIR.Op := [.bnot 3835]
def bytes3793 : Bytes := ("    let r00000efc: u32 = !r00000efb;\n" : String).toByteArray.data.toList
theorem checked3793 : bytes3793=statementBytes 3836 (op3793.map lower) ∧ bytes3793.length=37 := by core033_kernel_decide
def op3794 : List WordIR.Op := [.band 3830 3836]
def bytes3794 : Bytes := ("    let r00000efd: u32 = r00000ef6 & r00000efc;\n" : String).toByteArray.data.toList
theorem checked3794 : bytes3794=statementBytes 3837 (op3794.map lower) ∧ bytes3794.length=48 := by core033_kernel_decide
def op3795 : List WordIR.Op := [.bxor 3825 3837]
def bytes3795 : Bytes := ("    let r00000efe: u32 = r00000ef1 ^ r00000efd;\n" : String).toByteArray.data.toList
theorem checked3795 : bytes3795=statementBytes 3838 (op3795.map lower) ∧ bytes3795.length=48 := by core033_kernel_decide
def op3796 : List WordIR.Op := [.shr 3838 31]
def bytes3796 : Bytes := ("    let r00000eff: u32 = r00000efe >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3796 : bytes3796=statementBytes 3839 (op3796.map lower) ∧ bytes3796.length=54 := by core033_kernel_decide
def op3797 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3797 : Bytes := ("    let r00000f00: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3797 : bytes3797=statementBytes 3840 (op3797.map lower) ∧ bytes3797.length=41 := by core033_kernel_decide
def op3798 : List WordIR.Op := [.bxor 3839 3840]
def bytes3798 : Bytes := ("    let r00000f01: u32 = r00000eff ^ r00000f00;\n" : String).toByteArray.data.toList
theorem checked3798 : bytes3798=statementBytes 3841 (op3798.map lower) ∧ bytes3798.length=48 := by core033_kernel_decide
def op3799 : List WordIR.Op := [.bnot 3841]
def bytes3799 : Bytes := ("    let r00000f02: u32 = !r00000f01;\n" : String).toByteArray.data.toList
theorem checked3799 : bytes3799=statementBytes 3842 (op3799.map lower) ∧ bytes3799.length=37 := by core033_kernel_decide
def op3800 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3800 : Bytes := ("    let r00000f03: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3800 : bytes3800=statementBytes 3843 (op3800.map lower) ∧ bytes3800.length=41 := by core033_kernel_decide
def op3801 : List WordIR.Op := [.badd 3842 3843]
def bytes3801 : Bytes := ("    let r00000f04: u32 = r00000f02.wrapping_add(r00000f03);\n" : String).toByteArray.data.toList
theorem checked3801 : bytes3801=statementBytes 3844 (op3801.map lower) ∧ bytes3801.length=60 := by core033_kernel_decide
def op3802 : List WordIR.Op := [.bnot 3844]
def bytes3802 : Bytes := ("    let r00000f05: u32 = !r00000f04;\n" : String).toByteArray.data.toList
theorem checked3802 : bytes3802=statementBytes 3845 (op3802.map lower) ∧ bytes3802.length=37 := by core033_kernel_decide
def op3803 : List WordIR.Op := [.band 3845 1385]
def bytes3803 : Bytes := ("    let r00000f06: u32 = r00000f05 & r00000569;\n" : String).toByteArray.data.toList
theorem checked3803 : bytes3803=statementBytes 3846 (op3803.map lower) ∧ bytes3803.length=48 := by core033_kernel_decide
def op3804 : List WordIR.Op := [.bxor 3820 3846]
def bytes3804 : Bytes := ("    let r00000f07: u32 = r00000eec ^ r00000f06;\n" : String).toByteArray.data.toList
theorem checked3804 : bytes3804=statementBytes 3847 (op3804.map lower) ∧ bytes3804.length=48 := by core033_kernel_decide
def op3805 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3805 : Bytes := ("    let r00000f08: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3805 : bytes3805=statementBytes 3848 (op3805.map lower) ∧ bytes3805.length=41 := by core033_kernel_decide
def op3806 : List WordIR.Op := [.bxor 96 3848]
def bytes3806 : Bytes := ("    let r00000f09: u32 = r00000060 ^ r00000f08;\n" : String).toByteArray.data.toList
theorem checked3806 : bytes3806=statementBytes 3849 (op3806.map lower) ∧ bytes3806.length=48 := by core033_kernel_decide
def op3807 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3807 : Bytes := ("    let r00000f0a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3807 : bytes3807=statementBytes 3850 (op3807.map lower) ∧ bytes3807.length=41 := by core033_kernel_decide
def op3808 : List WordIR.Op := [.bnot 3850]
def bytes3808 : Bytes := ("    let r00000f0b: u32 = !r00000f0a;\n" : String).toByteArray.data.toList
theorem checked3808 : bytes3808=statementBytes 3851 (op3808.map lower) ∧ bytes3808.length=37 := by core033_kernel_decide
def op3809 : List WordIR.Op := [.band 3849 3851]
def bytes3809 : Bytes := ("    let r00000f0c: u32 = r00000f09 & r00000f0b;\n" : String).toByteArray.data.toList
theorem checked3809 : bytes3809=statementBytes 3852 (op3809.map lower) ∧ bytes3809.length=48 := by core033_kernel_decide
def op3810 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3810 : Bytes := ("    let r00000f0d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3810 : bytes3810=statementBytes 3853 (op3810.map lower) ∧ bytes3810.length=41 := by core033_kernel_decide
def op3811 : List WordIR.Op := [.bxor 96 3853]
def bytes3811 : Bytes := ("    let r00000f0e: u32 = r00000060 ^ r00000f0d;\n" : String).toByteArray.data.toList
theorem checked3811 : bytes3811=statementBytes 3854 (op3811.map lower) ∧ bytes3811.length=48 := by core033_kernel_decide
def op3812 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3812 : Bytes := ("    let r00000f0f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3812 : bytes3812=statementBytes 3855 (op3812.map lower) ∧ bytes3812.length=41 := by core033_kernel_decide
def op3813 : List WordIR.Op := [.bnot 3855]
def bytes3813 : Bytes := ("    let r00000f10: u32 = !r00000f0f;\n" : String).toByteArray.data.toList
theorem checked3813 : bytes3813=statementBytes 3856 (op3813.map lower) ∧ bytes3813.length=37 := by core033_kernel_decide
def op3814 : List WordIR.Op := [.bxor 3854 3856]
def bytes3814 : Bytes := ("    let r00000f11: u32 = r00000f0e ^ r00000f10;\n" : String).toByteArray.data.toList
theorem checked3814 : bytes3814=statementBytes 3857 (op3814.map lower) ∧ bytes3814.length=48 := by core033_kernel_decide
def op3815 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3815 : Bytes := ("    let r00000f12: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3815 : bytes3815=statementBytes 3858 (op3815.map lower) ∧ bytes3815.length=41 := by core033_kernel_decide
def op3816 : List WordIR.Op := [.bxor 96 3858]
def bytes3816 : Bytes := ("    let r00000f13: u32 = r00000060 ^ r00000f12;\n" : String).toByteArray.data.toList
theorem checked3816 : bytes3816=statementBytes 3859 (op3816.map lower) ∧ bytes3816.length=48 := by core033_kernel_decide
def op3817 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3817 : Bytes := ("    let r00000f14: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3817 : bytes3817=statementBytes 3860 (op3817.map lower) ∧ bytes3817.length=41 := by core033_kernel_decide
def op3818 : List WordIR.Op := [.bnot 3860]
def bytes3818 : Bytes := ("    let r00000f15: u32 = !r00000f14;\n" : String).toByteArray.data.toList
theorem checked3818 : bytes3818=statementBytes 3861 (op3818.map lower) ∧ bytes3818.length=37 := by core033_kernel_decide
def op3819 : List WordIR.Op := [.badd 3859 3861]
def bytes3819 : Bytes := ("    let r00000f16: u32 = r00000f13.wrapping_add(r00000f15);\n" : String).toByteArray.data.toList
theorem checked3819 : bytes3819=statementBytes 3862 (op3819.map lower) ∧ bytes3819.length=60 := by core033_kernel_decide
def op3820 : List WordIR.Op := [.bnot 3862]
def bytes3820 : Bytes := ("    let r00000f17: u32 = !r00000f16;\n" : String).toByteArray.data.toList
theorem checked3820 : bytes3820=statementBytes 3863 (op3820.map lower) ∧ bytes3820.length=37 := by core033_kernel_decide
def op3821 : List WordIR.Op := [.band 3857 3863]
def bytes3821 : Bytes := ("    let r00000f18: u32 = r00000f11 & r00000f17;\n" : String).toByteArray.data.toList
theorem checked3821 : bytes3821=statementBytes 3864 (op3821.map lower) ∧ bytes3821.length=48 := by core033_kernel_decide
def op3822 : List WordIR.Op := [.bxor 3852 3864]
def bytes3822 : Bytes := ("    let r00000f19: u32 = r00000f0c ^ r00000f18;\n" : String).toByteArray.data.toList
theorem checked3822 : bytes3822=statementBytes 3865 (op3822.map lower) ∧ bytes3822.length=48 := by core033_kernel_decide
def op3823 : List WordIR.Op := [.shr 3865 31]
def bytes3823 : Bytes := ("    let r00000f1a: u32 = r00000f19 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3823 : bytes3823=statementBytes 3866 (op3823.map lower) ∧ bytes3823.length=54 := by core033_kernel_decide
def op3824 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3824 : Bytes := ("    let r00000f1b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3824 : bytes3824=statementBytes 3867 (op3824.map lower) ∧ bytes3824.length=41 := by core033_kernel_decide
def op3825 : List WordIR.Op := [.bxor 3866 3867]
def bytes3825 : Bytes := ("    let r00000f1c: u32 = r00000f1a ^ r00000f1b;\n" : String).toByteArray.data.toList
theorem checked3825 : bytes3825=statementBytes 3868 (op3825.map lower) ∧ bytes3825.length=48 := by core033_kernel_decide
def op3826 : List WordIR.Op := [.bnot 3868]
def bytes3826 : Bytes := ("    let r00000f1d: u32 = !r00000f1c;\n" : String).toByteArray.data.toList
theorem checked3826 : bytes3826=statementBytes 3869 (op3826.map lower) ∧ bytes3826.length=37 := by core033_kernel_decide
def op3827 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3827 : Bytes := ("    let r00000f1e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3827 : bytes3827=statementBytes 3870 (op3827.map lower) ∧ bytes3827.length=41 := by core033_kernel_decide
def op3828 : List WordIR.Op := [.badd 3869 3870]
def bytes3828 : Bytes := ("    let r00000f1f: u32 = r00000f1d.wrapping_add(r00000f1e);\n" : String).toByteArray.data.toList
theorem checked3828 : bytes3828=statementBytes 3871 (op3828.map lower) ∧ bytes3828.length=60 := by core033_kernel_decide
def op3829 : List WordIR.Op := [.band 3871 1580]
def bytes3829 : Bytes := ("    let r00000f20: u32 = r00000f1f & r0000062c;\n" : String).toByteArray.data.toList
theorem checked3829 : bytes3829=statementBytes 3872 (op3829.map lower) ∧ bytes3829.length=48 := by core033_kernel_decide
def op3830 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3830 : Bytes := ("    let r00000f21: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3830 : bytes3830=statementBytes 3873 (op3830.map lower) ∧ bytes3830.length=41 := by core033_kernel_decide
def op3831 : List WordIR.Op := [.bxor 96 3873]
def bytes3831 : Bytes := ("    let r00000f22: u32 = r00000060 ^ r00000f21;\n" : String).toByteArray.data.toList
theorem checked3831 : bytes3831=statementBytes 3874 (op3831.map lower) ∧ bytes3831.length=48 := by core033_kernel_decide
def op3832 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3832 : Bytes := ("    let r00000f23: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3832 : bytes3832=statementBytes 3875 (op3832.map lower) ∧ bytes3832.length=41 := by core033_kernel_decide
def op3833 : List WordIR.Op := [.bnot 3875]
def bytes3833 : Bytes := ("    let r00000f24: u32 = !r00000f23;\n" : String).toByteArray.data.toList
theorem checked3833 : bytes3833=statementBytes 3876 (op3833.map lower) ∧ bytes3833.length=37 := by core033_kernel_decide
def op3834 : List WordIR.Op := [.band 3874 3876]
def bytes3834 : Bytes := ("    let r00000f25: u32 = r00000f22 & r00000f24;\n" : String).toByteArray.data.toList
theorem checked3834 : bytes3834=statementBytes 3877 (op3834.map lower) ∧ bytes3834.length=48 := by core033_kernel_decide
def op3835 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3835 : Bytes := ("    let r00000f26: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3835 : bytes3835=statementBytes 3878 (op3835.map lower) ∧ bytes3835.length=41 := by core033_kernel_decide
def op3836 : List WordIR.Op := [.bxor 96 3878]
def bytes3836 : Bytes := ("    let r00000f27: u32 = r00000060 ^ r00000f26;\n" : String).toByteArray.data.toList
theorem checked3836 : bytes3836=statementBytes 3879 (op3836.map lower) ∧ bytes3836.length=48 := by core033_kernel_decide
def op3837 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3837 : Bytes := ("    let r00000f28: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3837 : bytes3837=statementBytes 3880 (op3837.map lower) ∧ bytes3837.length=41 := by core033_kernel_decide
def op3838 : List WordIR.Op := [.bnot 3880]
def bytes3838 : Bytes := ("    let r00000f29: u32 = !r00000f28;\n" : String).toByteArray.data.toList
theorem checked3838 : bytes3838=statementBytes 3881 (op3838.map lower) ∧ bytes3838.length=37 := by core033_kernel_decide
def op3839 : List WordIR.Op := [.bxor 3879 3881]
def bytes3839 : Bytes := ("    let r00000f2a: u32 = r00000f27 ^ r00000f29;\n" : String).toByteArray.data.toList
theorem checked3839 : bytes3839=statementBytes 3882 (op3839.map lower) ∧ bytes3839.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3776,op3777,op3778,op3779,op3780,op3781,op3782,op3783,op3784,op3785,op3786,op3787,op3788,op3789,op3790,op3791,op3792,op3793,op3794,op3795,op3796,op3797,op3798,op3799,op3800,op3801,op3802,op3803,op3804,op3805,op3806,op3807,op3808,op3809,op3810,op3811,op3812,op3813,op3814,op3815,op3816,op3817,op3818,op3819,op3820,op3821,op3822,op3823,op3824,op3825,op3826,op3827,op3828,op3829,op3830,op3831,op3832,op3833,op3834,op3835,op3836,op3837,op3838,op3839]
def chunks : List Bytes := [bytes3776,bytes3777,bytes3778,bytes3779,bytes3780,bytes3781,bytes3782,bytes3783,bytes3784,bytes3785,bytes3786,bytes3787,bytes3788,bytes3789,bytes3790,bytes3791,bytes3792,bytes3793,bytes3794,bytes3795,bytes3796,bytes3797,bytes3798,bytes3799,bytes3800,bytes3801,bytes3802,bytes3803,bytes3804,bytes3805,bytes3806,bytes3807,bytes3808,bytes3809,bytes3810,bytes3811,bytes3812,bytes3813,bytes3814,bytes3815,bytes3816,bytes3817,bytes3818,bytes3819,bytes3820,bytes3821,bytes3822,bytes3823,bytes3824,bytes3825,bytes3826,bytes3827,bytes3828,bytes3829,bytes3830,bytes3831,bytes3832,bytes3833,bytes3834,bytes3835,bytes3836,bytes3837,bytes3838,bytes3839]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3819 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3776.1 (.cons _ _ _ _ _ checked3777.1 (.cons _ _ _ _ _ checked3778.1 (.cons _ _ _ _ _ checked3779.1 (.cons _ _ _ _ _ checked3780.1 (.cons _ _ _ _ _ checked3781.1 (.cons _ _ _ _ _ checked3782.1 (.cons _ _ _ _ _ checked3783.1 (.cons _ _ _ _ _ checked3784.1 (.cons _ _ _ _ _ checked3785.1 (.cons _ _ _ _ _ checked3786.1 (.cons _ _ _ _ _ checked3787.1 (.cons _ _ _ _ _ checked3788.1 (.cons _ _ _ _ _ checked3789.1 (.cons _ _ _ _ _ checked3790.1 (.cons _ _ _ _ _ checked3791.1 (.cons _ _ _ _ _ checked3792.1 (.cons _ _ _ _ _ checked3793.1 (.cons _ _ _ _ _ checked3794.1 (.cons _ _ _ _ _ checked3795.1 (.cons _ _ _ _ _ checked3796.1 (.cons _ _ _ _ _ checked3797.1 (.cons _ _ _ _ _ checked3798.1 (.cons _ _ _ _ _ checked3799.1 (.cons _ _ _ _ _ checked3800.1 (.cons _ _ _ _ _ checked3801.1 (.cons _ _ _ _ _ checked3802.1 (.cons _ _ _ _ _ checked3803.1 (.cons _ _ _ _ _ checked3804.1 (.cons _ _ _ _ _ checked3805.1 (.cons _ _ _ _ _ checked3806.1 (.cons _ _ _ _ _ checked3807.1 (.cons _ _ _ _ _ checked3808.1 (.cons _ _ _ _ _ checked3809.1 (.cons _ _ _ _ _ checked3810.1 (.cons _ _ _ _ _ checked3811.1 (.cons _ _ _ _ _ checked3812.1 (.cons _ _ _ _ _ checked3813.1 (.cons _ _ _ _ _ checked3814.1 (.cons _ _ _ _ _ checked3815.1 (.cons _ _ _ _ _ checked3816.1 (.cons _ _ _ _ _ checked3817.1 (.cons _ _ _ _ _ checked3818.1 (.cons _ _ _ _ _ checked3819.1 (.cons _ _ _ _ _ checked3820.1 (.cons _ _ _ _ _ checked3821.1 (.cons _ _ _ _ _ checked3822.1 (.cons _ _ _ _ _ checked3823.1 (.cons _ _ _ _ _ checked3824.1 (.cons _ _ _ _ _ checked3825.1 (.cons _ _ _ _ _ checked3826.1 (.cons _ _ _ _ _ checked3827.1 (.cons _ _ _ _ _ checked3828.1 (.cons _ _ _ _ _ checked3829.1 (.cons _ _ _ _ _ checked3830.1 (.cons _ _ _ _ _ checked3831.1 (.cons _ _ _ _ _ checked3832.1 (.cons _ _ _ _ _ checked3833.1 (.cons _ _ _ _ _ checked3834.1 (.cons _ _ _ _ _ checked3835.1 (.cons _ _ _ _ _ checked3836.1 (.cons _ _ _ _ _ checked3837.1 (.cons _ _ _ _ _ checked3838.1 (.cons _ _ _ _ _ checked3839.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3819 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3776.2,checked3777.2,checked3778.2,checked3779.2,checked3780.2,checked3781.2,checked3782.2,checked3783.2,checked3784.2,checked3785.2,checked3786.2,checked3787.2,checked3788.2,checked3789.2,checked3790.2,checked3791.2,checked3792.2,checked3793.2,checked3794.2,checked3795.2,checked3796.2,checked3797.2,checked3798.2,checked3799.2,checked3800.2,checked3801.2,checked3802.2,checked3803.2,checked3804.2,checked3805.2,checked3806.2,checked3807.2,checked3808.2,checked3809.2,checked3810.2,checked3811.2,checked3812.2,checked3813.2,checked3814.2,checked3815.2,checked3816.2,checked3817.2,checked3818.2,checked3819.2,checked3820.2,checked3821.2,checked3822.2,checked3823.2,checked3824.2,checked3825.2,checked3826.2,checked3827.2,checked3828.2,checked3829.2,checked3830.2,checked3831.2,checked3832.2,checked3833.2,checked3834.2,checked3835.2,checked3836.2,checked3837.2,checked3838.2,checked3839.2]
  decide
end ArtifactPathRoundDispatchGroup59
