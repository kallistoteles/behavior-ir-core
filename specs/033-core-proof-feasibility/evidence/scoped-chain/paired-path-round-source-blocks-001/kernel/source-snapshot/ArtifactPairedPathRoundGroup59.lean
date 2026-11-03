import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup59
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3776 : List WordIR.Op := [.band 3871 2070]
def bytes3776 : Bytes := ("    let r00000f20: u32 = r00000f1f & r00000816;\n" : String).toByteArray.data.toList
theorem checked3776 : bytes3776=statementBytes 3872 (op3776.map lower) ∧ bytes3776.length=48 := by core033_kernel_decide
def op3777 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3777 : Bytes := ("    let r00000f21: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3777 : bytes3777=statementBytes 3873 (op3777.map lower) ∧ bytes3777.length=41 := by core033_kernel_decide
def op3778 : List WordIR.Op := [.bxor 616 3873]
def bytes3778 : Bytes := ("    let r00000f22: u32 = r00000268 ^ r00000f21;\n" : String).toByteArray.data.toList
theorem checked3778 : bytes3778=statementBytes 3874 (op3778.map lower) ∧ bytes3778.length=48 := by core033_kernel_decide
def op3779 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3779 : Bytes := ("    let r00000f23: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3779 : bytes3779=statementBytes 3875 (op3779.map lower) ∧ bytes3779.length=41 := by core033_kernel_decide
def op3780 : List WordIR.Op := [.bnot 3875]
def bytes3780 : Bytes := ("    let r00000f24: u32 = !r00000f23;\n" : String).toByteArray.data.toList
theorem checked3780 : bytes3780=statementBytes 3876 (op3780.map lower) ∧ bytes3780.length=37 := by core033_kernel_decide
def op3781 : List WordIR.Op := [.band 3874 3876]
def bytes3781 : Bytes := ("    let r00000f25: u32 = r00000f22 & r00000f24;\n" : String).toByteArray.data.toList
theorem checked3781 : bytes3781=statementBytes 3877 (op3781.map lower) ∧ bytes3781.length=48 := by core033_kernel_decide
def op3782 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3782 : Bytes := ("    let r00000f26: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3782 : bytes3782=statementBytes 3878 (op3782.map lower) ∧ bytes3782.length=41 := by core033_kernel_decide
def op3783 : List WordIR.Op := [.bxor 616 3878]
def bytes3783 : Bytes := ("    let r00000f27: u32 = r00000268 ^ r00000f26;\n" : String).toByteArray.data.toList
theorem checked3783 : bytes3783=statementBytes 3879 (op3783.map lower) ∧ bytes3783.length=48 := by core033_kernel_decide
def op3784 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3784 : Bytes := ("    let r00000f28: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3784 : bytes3784=statementBytes 3880 (op3784.map lower) ∧ bytes3784.length=41 := by core033_kernel_decide
def op3785 : List WordIR.Op := [.bnot 3880]
def bytes3785 : Bytes := ("    let r00000f29: u32 = !r00000f28;\n" : String).toByteArray.data.toList
theorem checked3785 : bytes3785=statementBytes 3881 (op3785.map lower) ∧ bytes3785.length=37 := by core033_kernel_decide
def op3786 : List WordIR.Op := [.bxor 3879 3881]
def bytes3786 : Bytes := ("    let r00000f2a: u32 = r00000f27 ^ r00000f29;\n" : String).toByteArray.data.toList
theorem checked3786 : bytes3786=statementBytes 3882 (op3786.map lower) ∧ bytes3786.length=48 := by core033_kernel_decide
def op3787 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3787 : Bytes := ("    let r00000f2b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3787 : bytes3787=statementBytes 3883 (op3787.map lower) ∧ bytes3787.length=41 := by core033_kernel_decide
def op3788 : List WordIR.Op := [.bxor 616 3883]
def bytes3788 : Bytes := ("    let r00000f2c: u32 = r00000268 ^ r00000f2b;\n" : String).toByteArray.data.toList
theorem checked3788 : bytes3788=statementBytes 3884 (op3788.map lower) ∧ bytes3788.length=48 := by core033_kernel_decide
def op3789 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3789 : Bytes := ("    let r00000f2d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3789 : bytes3789=statementBytes 3885 (op3789.map lower) ∧ bytes3789.length=41 := by core033_kernel_decide
def op3790 : List WordIR.Op := [.bnot 3885]
def bytes3790 : Bytes := ("    let r00000f2e: u32 = !r00000f2d;\n" : String).toByteArray.data.toList
theorem checked3790 : bytes3790=statementBytes 3886 (op3790.map lower) ∧ bytes3790.length=37 := by core033_kernel_decide
def op3791 : List WordIR.Op := [.badd 3884 3886]
def bytes3791 : Bytes := ("    let r00000f2f: u32 = r00000f2c.wrapping_add(r00000f2e);\n" : String).toByteArray.data.toList
theorem checked3791 : bytes3791=statementBytes 3887 (op3791.map lower) ∧ bytes3791.length=60 := by core033_kernel_decide
def op3792 : List WordIR.Op := [.bnot 3887]
def bytes3792 : Bytes := ("    let r00000f30: u32 = !r00000f2f;\n" : String).toByteArray.data.toList
theorem checked3792 : bytes3792=statementBytes 3888 (op3792.map lower) ∧ bytes3792.length=37 := by core033_kernel_decide
def op3793 : List WordIR.Op := [.band 3882 3888]
def bytes3793 : Bytes := ("    let r00000f31: u32 = r00000f2a & r00000f30;\n" : String).toByteArray.data.toList
theorem checked3793 : bytes3793=statementBytes 3889 (op3793.map lower) ∧ bytes3793.length=48 := by core033_kernel_decide
def op3794 : List WordIR.Op := [.bxor 3877 3889]
def bytes3794 : Bytes := ("    let r00000f32: u32 = r00000f25 ^ r00000f31;\n" : String).toByteArray.data.toList
theorem checked3794 : bytes3794=statementBytes 3890 (op3794.map lower) ∧ bytes3794.length=48 := by core033_kernel_decide
def op3795 : List WordIR.Op := [.shr 3890 31]
def bytes3795 : Bytes := ("    let r00000f33: u32 = r00000f32 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3795 : bytes3795=statementBytes 3891 (op3795.map lower) ∧ bytes3795.length=54 := by core033_kernel_decide
def op3796 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3796 : Bytes := ("    let r00000f34: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3796 : bytes3796=statementBytes 3892 (op3796.map lower) ∧ bytes3796.length=41 := by core033_kernel_decide
def op3797 : List WordIR.Op := [.bxor 3891 3892]
def bytes3797 : Bytes := ("    let r00000f35: u32 = r00000f33 ^ r00000f34;\n" : String).toByteArray.data.toList
theorem checked3797 : bytes3797=statementBytes 3893 (op3797.map lower) ∧ bytes3797.length=48 := by core033_kernel_decide
def op3798 : List WordIR.Op := [.bnot 3893]
def bytes3798 : Bytes := ("    let r00000f36: u32 = !r00000f35;\n" : String).toByteArray.data.toList
theorem checked3798 : bytes3798=statementBytes 3894 (op3798.map lower) ∧ bytes3798.length=37 := by core033_kernel_decide
def op3799 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3799 : Bytes := ("    let r00000f37: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3799 : bytes3799=statementBytes 3895 (op3799.map lower) ∧ bytes3799.length=41 := by core033_kernel_decide
def op3800 : List WordIR.Op := [.badd 3894 3895]
def bytes3800 : Bytes := ("    let r00000f38: u32 = r00000f36.wrapping_add(r00000f37);\n" : String).toByteArray.data.toList
theorem checked3800 : bytes3800=statementBytes 3896 (op3800.map lower) ∧ bytes3800.length=60 := by core033_kernel_decide
def op3801 : List WordIR.Op := [.bnot 3896]
def bytes3801 : Bytes := ("    let r00000f39: u32 = !r00000f38;\n" : String).toByteArray.data.toList
theorem checked3801 : bytes3801=statementBytes 3897 (op3801.map lower) ∧ bytes3801.length=37 := by core033_kernel_decide
def op3802 : List WordIR.Op := [.band 3897 1882]
def bytes3802 : Bytes := ("    let r00000f3a: u32 = r00000f39 & r0000075a;\n" : String).toByteArray.data.toList
theorem checked3802 : bytes3802=statementBytes 3898 (op3802.map lower) ∧ bytes3802.length=48 := by core033_kernel_decide
def op3803 : List WordIR.Op := [.bxor 3872 3898]
def bytes3803 : Bytes := ("    let r00000f3b: u32 = r00000f20 ^ r00000f3a;\n" : String).toByteArray.data.toList
theorem checked3803 : bytes3803=statementBytes 3899 (op3803.map lower) ∧ bytes3803.length=48 := by core033_kernel_decide
def op3804 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3804 : Bytes := ("    let r00000f3c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3804 : bytes3804=statementBytes 3900 (op3804.map lower) ∧ bytes3804.length=41 := by core033_kernel_decide
def op3805 : List WordIR.Op := [.bxor 616 3900]
def bytes3805 : Bytes := ("    let r00000f3d: u32 = r00000268 ^ r00000f3c;\n" : String).toByteArray.data.toList
theorem checked3805 : bytes3805=statementBytes 3901 (op3805.map lower) ∧ bytes3805.length=48 := by core033_kernel_decide
def op3806 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3806 : Bytes := ("    let r00000f3e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3806 : bytes3806=statementBytes 3902 (op3806.map lower) ∧ bytes3806.length=41 := by core033_kernel_decide
def op3807 : List WordIR.Op := [.bnot 3902]
def bytes3807 : Bytes := ("    let r00000f3f: u32 = !r00000f3e;\n" : String).toByteArray.data.toList
theorem checked3807 : bytes3807=statementBytes 3903 (op3807.map lower) ∧ bytes3807.length=37 := by core033_kernel_decide
def op3808 : List WordIR.Op := [.band 3901 3903]
def bytes3808 : Bytes := ("    let r00000f40: u32 = r00000f3d & r00000f3f;\n" : String).toByteArray.data.toList
theorem checked3808 : bytes3808=statementBytes 3904 (op3808.map lower) ∧ bytes3808.length=48 := by core033_kernel_decide
def op3809 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3809 : Bytes := ("    let r00000f41: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3809 : bytes3809=statementBytes 3905 (op3809.map lower) ∧ bytes3809.length=41 := by core033_kernel_decide
def op3810 : List WordIR.Op := [.bxor 616 3905]
def bytes3810 : Bytes := ("    let r00000f42: u32 = r00000268 ^ r00000f41;\n" : String).toByteArray.data.toList
theorem checked3810 : bytes3810=statementBytes 3906 (op3810.map lower) ∧ bytes3810.length=48 := by core033_kernel_decide
def op3811 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3811 : Bytes := ("    let r00000f43: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3811 : bytes3811=statementBytes 3907 (op3811.map lower) ∧ bytes3811.length=41 := by core033_kernel_decide
def op3812 : List WordIR.Op := [.bnot 3907]
def bytes3812 : Bytes := ("    let r00000f44: u32 = !r00000f43;\n" : String).toByteArray.data.toList
theorem checked3812 : bytes3812=statementBytes 3908 (op3812.map lower) ∧ bytes3812.length=37 := by core033_kernel_decide
def op3813 : List WordIR.Op := [.bxor 3906 3908]
def bytes3813 : Bytes := ("    let r00000f45: u32 = r00000f42 ^ r00000f44;\n" : String).toByteArray.data.toList
theorem checked3813 : bytes3813=statementBytes 3909 (op3813.map lower) ∧ bytes3813.length=48 := by core033_kernel_decide
def op3814 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3814 : Bytes := ("    let r00000f46: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3814 : bytes3814=statementBytes 3910 (op3814.map lower) ∧ bytes3814.length=41 := by core033_kernel_decide
def op3815 : List WordIR.Op := [.bxor 616 3910]
def bytes3815 : Bytes := ("    let r00000f47: u32 = r00000268 ^ r00000f46;\n" : String).toByteArray.data.toList
theorem checked3815 : bytes3815=statementBytes 3911 (op3815.map lower) ∧ bytes3815.length=48 := by core033_kernel_decide
def op3816 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3816 : Bytes := ("    let r00000f48: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3816 : bytes3816=statementBytes 3912 (op3816.map lower) ∧ bytes3816.length=41 := by core033_kernel_decide
def op3817 : List WordIR.Op := [.bnot 3912]
def bytes3817 : Bytes := ("    let r00000f49: u32 = !r00000f48;\n" : String).toByteArray.data.toList
theorem checked3817 : bytes3817=statementBytes 3913 (op3817.map lower) ∧ bytes3817.length=37 := by core033_kernel_decide
def op3818 : List WordIR.Op := [.badd 3911 3913]
def bytes3818 : Bytes := ("    let r00000f4a: u32 = r00000f47.wrapping_add(r00000f49);\n" : String).toByteArray.data.toList
theorem checked3818 : bytes3818=statementBytes 3914 (op3818.map lower) ∧ bytes3818.length=60 := by core033_kernel_decide
def op3819 : List WordIR.Op := [.bnot 3914]
def bytes3819 : Bytes := ("    let r00000f4b: u32 = !r00000f4a;\n" : String).toByteArray.data.toList
theorem checked3819 : bytes3819=statementBytes 3915 (op3819.map lower) ∧ bytes3819.length=37 := by core033_kernel_decide
def op3820 : List WordIR.Op := [.band 3909 3915]
def bytes3820 : Bytes := ("    let r00000f4c: u32 = r00000f45 & r00000f4b;\n" : String).toByteArray.data.toList
theorem checked3820 : bytes3820=statementBytes 3916 (op3820.map lower) ∧ bytes3820.length=48 := by core033_kernel_decide
def op3821 : List WordIR.Op := [.bxor 3904 3916]
def bytes3821 : Bytes := ("    let r00000f4d: u32 = r00000f40 ^ r00000f4c;\n" : String).toByteArray.data.toList
theorem checked3821 : bytes3821=statementBytes 3917 (op3821.map lower) ∧ bytes3821.length=48 := by core033_kernel_decide
def op3822 : List WordIR.Op := [.shr 3917 31]
def bytes3822 : Bytes := ("    let r00000f4e: u32 = r00000f4d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3822 : bytes3822=statementBytes 3918 (op3822.map lower) ∧ bytes3822.length=54 := by core033_kernel_decide
def op3823 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3823 : Bytes := ("    let r00000f4f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3823 : bytes3823=statementBytes 3919 (op3823.map lower) ∧ bytes3823.length=41 := by core033_kernel_decide
def op3824 : List WordIR.Op := [.bxor 3918 3919]
def bytes3824 : Bytes := ("    let r00000f50: u32 = r00000f4e ^ r00000f4f;\n" : String).toByteArray.data.toList
theorem checked3824 : bytes3824=statementBytes 3920 (op3824.map lower) ∧ bytes3824.length=48 := by core033_kernel_decide
def op3825 : List WordIR.Op := [.bnot 3920]
def bytes3825 : Bytes := ("    let r00000f51: u32 = !r00000f50;\n" : String).toByteArray.data.toList
theorem checked3825 : bytes3825=statementBytes 3921 (op3825.map lower) ∧ bytes3825.length=37 := by core033_kernel_decide
def op3826 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3826 : Bytes := ("    let r00000f52: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3826 : bytes3826=statementBytes 3922 (op3826.map lower) ∧ bytes3826.length=41 := by core033_kernel_decide
def op3827 : List WordIR.Op := [.badd 3921 3922]
def bytes3827 : Bytes := ("    let r00000f53: u32 = r00000f51.wrapping_add(r00000f52);\n" : String).toByteArray.data.toList
theorem checked3827 : bytes3827=statementBytes 3923 (op3827.map lower) ∧ bytes3827.length=60 := by core033_kernel_decide
def op3828 : List WordIR.Op := [.band 3923 2073]
def bytes3828 : Bytes := ("    let r00000f54: u32 = r00000f53 & r00000819;\n" : String).toByteArray.data.toList
theorem checked3828 : bytes3828=statementBytes 3924 (op3828.map lower) ∧ bytes3828.length=48 := by core033_kernel_decide
def op3829 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3829 : Bytes := ("    let r00000f55: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3829 : bytes3829=statementBytes 3925 (op3829.map lower) ∧ bytes3829.length=41 := by core033_kernel_decide
def op3830 : List WordIR.Op := [.bxor 616 3925]
def bytes3830 : Bytes := ("    let r00000f56: u32 = r00000268 ^ r00000f55;\n" : String).toByteArray.data.toList
theorem checked3830 : bytes3830=statementBytes 3926 (op3830.map lower) ∧ bytes3830.length=48 := by core033_kernel_decide
def op3831 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3831 : Bytes := ("    let r00000f57: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3831 : bytes3831=statementBytes 3927 (op3831.map lower) ∧ bytes3831.length=41 := by core033_kernel_decide
def op3832 : List WordIR.Op := [.bnot 3927]
def bytes3832 : Bytes := ("    let r00000f58: u32 = !r00000f57;\n" : String).toByteArray.data.toList
theorem checked3832 : bytes3832=statementBytes 3928 (op3832.map lower) ∧ bytes3832.length=37 := by core033_kernel_decide
def op3833 : List WordIR.Op := [.band 3926 3928]
def bytes3833 : Bytes := ("    let r00000f59: u32 = r00000f56 & r00000f58;\n" : String).toByteArray.data.toList
theorem checked3833 : bytes3833=statementBytes 3929 (op3833.map lower) ∧ bytes3833.length=48 := by core033_kernel_decide
def op3834 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3834 : Bytes := ("    let r00000f5a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3834 : bytes3834=statementBytes 3930 (op3834.map lower) ∧ bytes3834.length=41 := by core033_kernel_decide
def op3835 : List WordIR.Op := [.bxor 616 3930]
def bytes3835 : Bytes := ("    let r00000f5b: u32 = r00000268 ^ r00000f5a;\n" : String).toByteArray.data.toList
theorem checked3835 : bytes3835=statementBytes 3931 (op3835.map lower) ∧ bytes3835.length=48 := by core033_kernel_decide
def op3836 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3836 : Bytes := ("    let r00000f5c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3836 : bytes3836=statementBytes 3932 (op3836.map lower) ∧ bytes3836.length=41 := by core033_kernel_decide
def op3837 : List WordIR.Op := [.bnot 3932]
def bytes3837 : Bytes := ("    let r00000f5d: u32 = !r00000f5c;\n" : String).toByteArray.data.toList
theorem checked3837 : bytes3837=statementBytes 3933 (op3837.map lower) ∧ bytes3837.length=37 := by core033_kernel_decide
def op3838 : List WordIR.Op := [.bxor 3931 3933]
def bytes3838 : Bytes := ("    let r00000f5e: u32 = r00000f5b ^ r00000f5d;\n" : String).toByteArray.data.toList
theorem checked3838 : bytes3838=statementBytes 3934 (op3838.map lower) ∧ bytes3838.length=48 := by core033_kernel_decide
def op3839 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3839 : Bytes := ("    let r00000f5f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3839 : bytes3839=statementBytes 3935 (op3839.map lower) ∧ bytes3839.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3776,op3777,op3778,op3779,op3780,op3781,op3782,op3783,op3784,op3785,op3786,op3787,op3788,op3789,op3790,op3791,op3792,op3793,op3794,op3795,op3796,op3797,op3798,op3799,op3800,op3801,op3802,op3803,op3804,op3805,op3806,op3807,op3808,op3809,op3810,op3811,op3812,op3813,op3814,op3815,op3816,op3817,op3818,op3819,op3820,op3821,op3822,op3823,op3824,op3825,op3826,op3827,op3828,op3829,op3830,op3831,op3832,op3833,op3834,op3835,op3836,op3837,op3838,op3839]
def chunks : List Bytes := [bytes3776,bytes3777,bytes3778,bytes3779,bytes3780,bytes3781,bytes3782,bytes3783,bytes3784,bytes3785,bytes3786,bytes3787,bytes3788,bytes3789,bytes3790,bytes3791,bytes3792,bytes3793,bytes3794,bytes3795,bytes3796,bytes3797,bytes3798,bytes3799,bytes3800,bytes3801,bytes3802,bytes3803,bytes3804,bytes3805,bytes3806,bytes3807,bytes3808,bytes3809,bytes3810,bytes3811,bytes3812,bytes3813,bytes3814,bytes3815,bytes3816,bytes3817,bytes3818,bytes3819,bytes3820,bytes3821,bytes3822,bytes3823,bytes3824,bytes3825,bytes3826,bytes3827,bytes3828,bytes3829,bytes3830,bytes3831,bytes3832,bytes3833,bytes3834,bytes3835,bytes3836,bytes3837,bytes3838,bytes3839]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3872 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3776.1 (.cons _ _ _ _ _ checked3777.1 (.cons _ _ _ _ _ checked3778.1 (.cons _ _ _ _ _ checked3779.1 (.cons _ _ _ _ _ checked3780.1 (.cons _ _ _ _ _ checked3781.1 (.cons _ _ _ _ _ checked3782.1 (.cons _ _ _ _ _ checked3783.1 (.cons _ _ _ _ _ checked3784.1 (.cons _ _ _ _ _ checked3785.1 (.cons _ _ _ _ _ checked3786.1 (.cons _ _ _ _ _ checked3787.1 (.cons _ _ _ _ _ checked3788.1 (.cons _ _ _ _ _ checked3789.1 (.cons _ _ _ _ _ checked3790.1 (.cons _ _ _ _ _ checked3791.1 (.cons _ _ _ _ _ checked3792.1 (.cons _ _ _ _ _ checked3793.1 (.cons _ _ _ _ _ checked3794.1 (.cons _ _ _ _ _ checked3795.1 (.cons _ _ _ _ _ checked3796.1 (.cons _ _ _ _ _ checked3797.1 (.cons _ _ _ _ _ checked3798.1 (.cons _ _ _ _ _ checked3799.1 (.cons _ _ _ _ _ checked3800.1 (.cons _ _ _ _ _ checked3801.1 (.cons _ _ _ _ _ checked3802.1 (.cons _ _ _ _ _ checked3803.1 (.cons _ _ _ _ _ checked3804.1 (.cons _ _ _ _ _ checked3805.1 (.cons _ _ _ _ _ checked3806.1 (.cons _ _ _ _ _ checked3807.1 (.cons _ _ _ _ _ checked3808.1 (.cons _ _ _ _ _ checked3809.1 (.cons _ _ _ _ _ checked3810.1 (.cons _ _ _ _ _ checked3811.1 (.cons _ _ _ _ _ checked3812.1 (.cons _ _ _ _ _ checked3813.1 (.cons _ _ _ _ _ checked3814.1 (.cons _ _ _ _ _ checked3815.1 (.cons _ _ _ _ _ checked3816.1 (.cons _ _ _ _ _ checked3817.1 (.cons _ _ _ _ _ checked3818.1 (.cons _ _ _ _ _ checked3819.1 (.cons _ _ _ _ _ checked3820.1 (.cons _ _ _ _ _ checked3821.1 (.cons _ _ _ _ _ checked3822.1 (.cons _ _ _ _ _ checked3823.1 (.cons _ _ _ _ _ checked3824.1 (.cons _ _ _ _ _ checked3825.1 (.cons _ _ _ _ _ checked3826.1 (.cons _ _ _ _ _ checked3827.1 (.cons _ _ _ _ _ checked3828.1 (.cons _ _ _ _ _ checked3829.1 (.cons _ _ _ _ _ checked3830.1 (.cons _ _ _ _ _ checked3831.1 (.cons _ _ _ _ _ checked3832.1 (.cons _ _ _ _ _ checked3833.1 (.cons _ _ _ _ _ checked3834.1 (.cons _ _ _ _ _ checked3835.1 (.cons _ _ _ _ _ checked3836.1 (.cons _ _ _ _ _ checked3837.1 (.cons _ _ _ _ _ checked3838.1 (.cons _ _ _ _ _ checked3839.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3872 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3776.2,checked3777.2,checked3778.2,checked3779.2,checked3780.2,checked3781.2,checked3782.2,checked3783.2,checked3784.2,checked3785.2,checked3786.2,checked3787.2,checked3788.2,checked3789.2,checked3790.2,checked3791.2,checked3792.2,checked3793.2,checked3794.2,checked3795.2,checked3796.2,checked3797.2,checked3798.2,checked3799.2,checked3800.2,checked3801.2,checked3802.2,checked3803.2,checked3804.2,checked3805.2,checked3806.2,checked3807.2,checked3808.2,checked3809.2,checked3810.2,checked3811.2,checked3812.2,checked3813.2,checked3814.2,checked3815.2,checked3816.2,checked3817.2,checked3818.2,checked3819.2,checked3820.2,checked3821.2,checked3822.2,checked3823.2,checked3824.2,checked3825.2,checked3826.2,checked3827.2,checked3828.2,checked3829.2,checked3830.2,checked3831.2,checked3832.2,checked3833.2,checked3834.2,checked3835.2,checked3836.2,checked3837.2,checked3838.2,checked3839.2]
  decide
end ArtifactPairedPathRoundGroup59
