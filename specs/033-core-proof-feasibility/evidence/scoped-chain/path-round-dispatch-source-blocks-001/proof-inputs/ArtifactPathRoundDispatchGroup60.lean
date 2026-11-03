import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup60
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3840 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3840 : Bytes := ("    let r00000f2b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3840 : bytes3840=statementBytes 3883 (op3840.map lower) ∧ bytes3840.length=41 := by core033_kernel_decide
def op3841 : List WordIR.Op := [.bxor 96 3883]
def bytes3841 : Bytes := ("    let r00000f2c: u32 = r00000060 ^ r00000f2b;\n" : String).toByteArray.data.toList
theorem checked3841 : bytes3841=statementBytes 3884 (op3841.map lower) ∧ bytes3841.length=48 := by core033_kernel_decide
def op3842 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3842 : Bytes := ("    let r00000f2d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3842 : bytes3842=statementBytes 3885 (op3842.map lower) ∧ bytes3842.length=41 := by core033_kernel_decide
def op3843 : List WordIR.Op := [.bnot 3885]
def bytes3843 : Bytes := ("    let r00000f2e: u32 = !r00000f2d;\n" : String).toByteArray.data.toList
theorem checked3843 : bytes3843=statementBytes 3886 (op3843.map lower) ∧ bytes3843.length=37 := by core033_kernel_decide
def op3844 : List WordIR.Op := [.badd 3884 3886]
def bytes3844 : Bytes := ("    let r00000f2f: u32 = r00000f2c.wrapping_add(r00000f2e);\n" : String).toByteArray.data.toList
theorem checked3844 : bytes3844=statementBytes 3887 (op3844.map lower) ∧ bytes3844.length=60 := by core033_kernel_decide
def op3845 : List WordIR.Op := [.bnot 3887]
def bytes3845 : Bytes := ("    let r00000f30: u32 = !r00000f2f;\n" : String).toByteArray.data.toList
theorem checked3845 : bytes3845=statementBytes 3888 (op3845.map lower) ∧ bytes3845.length=37 := by core033_kernel_decide
def op3846 : List WordIR.Op := [.band 3882 3888]
def bytes3846 : Bytes := ("    let r00000f31: u32 = r00000f2a & r00000f30;\n" : String).toByteArray.data.toList
theorem checked3846 : bytes3846=statementBytes 3889 (op3846.map lower) ∧ bytes3846.length=48 := by core033_kernel_decide
def op3847 : List WordIR.Op := [.bxor 3877 3889]
def bytes3847 : Bytes := ("    let r00000f32: u32 = r00000f25 ^ r00000f31;\n" : String).toByteArray.data.toList
theorem checked3847 : bytes3847=statementBytes 3890 (op3847.map lower) ∧ bytes3847.length=48 := by core033_kernel_decide
def op3848 : List WordIR.Op := [.shr 3890 31]
def bytes3848 : Bytes := ("    let r00000f33: u32 = r00000f32 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3848 : bytes3848=statementBytes 3891 (op3848.map lower) ∧ bytes3848.length=54 := by core033_kernel_decide
def op3849 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3849 : Bytes := ("    let r00000f34: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3849 : bytes3849=statementBytes 3892 (op3849.map lower) ∧ bytes3849.length=41 := by core033_kernel_decide
def op3850 : List WordIR.Op := [.bxor 3891 3892]
def bytes3850 : Bytes := ("    let r00000f35: u32 = r00000f33 ^ r00000f34;\n" : String).toByteArray.data.toList
theorem checked3850 : bytes3850=statementBytes 3893 (op3850.map lower) ∧ bytes3850.length=48 := by core033_kernel_decide
def op3851 : List WordIR.Op := [.bnot 3893]
def bytes3851 : Bytes := ("    let r00000f36: u32 = !r00000f35;\n" : String).toByteArray.data.toList
theorem checked3851 : bytes3851=statementBytes 3894 (op3851.map lower) ∧ bytes3851.length=37 := by core033_kernel_decide
def op3852 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3852 : Bytes := ("    let r00000f37: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3852 : bytes3852=statementBytes 3895 (op3852.map lower) ∧ bytes3852.length=41 := by core033_kernel_decide
def op3853 : List WordIR.Op := [.badd 3894 3895]
def bytes3853 : Bytes := ("    let r00000f38: u32 = r00000f36.wrapping_add(r00000f37);\n" : String).toByteArray.data.toList
theorem checked3853 : bytes3853=statementBytes 3896 (op3853.map lower) ∧ bytes3853.length=60 := by core033_kernel_decide
def op3854 : List WordIR.Op := [.bnot 3896]
def bytes3854 : Bytes := ("    let r00000f39: u32 = !r00000f38;\n" : String).toByteArray.data.toList
theorem checked3854 : bytes3854=statementBytes 3897 (op3854.map lower) ∧ bytes3854.length=37 := by core033_kernel_decide
def op3855 : List WordIR.Op := [.band 3897 1388]
def bytes3855 : Bytes := ("    let r00000f3a: u32 = r00000f39 & r0000056c;\n" : String).toByteArray.data.toList
theorem checked3855 : bytes3855=statementBytes 3898 (op3855.map lower) ∧ bytes3855.length=48 := by core033_kernel_decide
def op3856 : List WordIR.Op := [.bxor 3872 3898]
def bytes3856 : Bytes := ("    let r00000f3b: u32 = r00000f20 ^ r00000f3a;\n" : String).toByteArray.data.toList
theorem checked3856 : bytes3856=statementBytes 3899 (op3856.map lower) ∧ bytes3856.length=48 := by core033_kernel_decide
def op3857 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3857 : Bytes := ("    let r00000f3c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3857 : bytes3857=statementBytes 3900 (op3857.map lower) ∧ bytes3857.length=41 := by core033_kernel_decide
def op3858 : List WordIR.Op := [.bxor 96 3900]
def bytes3858 : Bytes := ("    let r00000f3d: u32 = r00000060 ^ r00000f3c;\n" : String).toByteArray.data.toList
theorem checked3858 : bytes3858=statementBytes 3901 (op3858.map lower) ∧ bytes3858.length=48 := by core033_kernel_decide
def op3859 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3859 : Bytes := ("    let r00000f3e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3859 : bytes3859=statementBytes 3902 (op3859.map lower) ∧ bytes3859.length=41 := by core033_kernel_decide
def op3860 : List WordIR.Op := [.bnot 3902]
def bytes3860 : Bytes := ("    let r00000f3f: u32 = !r00000f3e;\n" : String).toByteArray.data.toList
theorem checked3860 : bytes3860=statementBytes 3903 (op3860.map lower) ∧ bytes3860.length=37 := by core033_kernel_decide
def op3861 : List WordIR.Op := [.band 3901 3903]
def bytes3861 : Bytes := ("    let r00000f40: u32 = r00000f3d & r00000f3f;\n" : String).toByteArray.data.toList
theorem checked3861 : bytes3861=statementBytes 3904 (op3861.map lower) ∧ bytes3861.length=48 := by core033_kernel_decide
def op3862 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3862 : Bytes := ("    let r00000f41: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3862 : bytes3862=statementBytes 3905 (op3862.map lower) ∧ bytes3862.length=41 := by core033_kernel_decide
def op3863 : List WordIR.Op := [.bxor 96 3905]
def bytes3863 : Bytes := ("    let r00000f42: u32 = r00000060 ^ r00000f41;\n" : String).toByteArray.data.toList
theorem checked3863 : bytes3863=statementBytes 3906 (op3863.map lower) ∧ bytes3863.length=48 := by core033_kernel_decide
def op3864 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3864 : Bytes := ("    let r00000f43: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3864 : bytes3864=statementBytes 3907 (op3864.map lower) ∧ bytes3864.length=41 := by core033_kernel_decide
def op3865 : List WordIR.Op := [.bnot 3907]
def bytes3865 : Bytes := ("    let r00000f44: u32 = !r00000f43;\n" : String).toByteArray.data.toList
theorem checked3865 : bytes3865=statementBytes 3908 (op3865.map lower) ∧ bytes3865.length=37 := by core033_kernel_decide
def op3866 : List WordIR.Op := [.bxor 3906 3908]
def bytes3866 : Bytes := ("    let r00000f45: u32 = r00000f42 ^ r00000f44;\n" : String).toByteArray.data.toList
theorem checked3866 : bytes3866=statementBytes 3909 (op3866.map lower) ∧ bytes3866.length=48 := by core033_kernel_decide
def op3867 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3867 : Bytes := ("    let r00000f46: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3867 : bytes3867=statementBytes 3910 (op3867.map lower) ∧ bytes3867.length=41 := by core033_kernel_decide
def op3868 : List WordIR.Op := [.bxor 96 3910]
def bytes3868 : Bytes := ("    let r00000f47: u32 = r00000060 ^ r00000f46;\n" : String).toByteArray.data.toList
theorem checked3868 : bytes3868=statementBytes 3911 (op3868.map lower) ∧ bytes3868.length=48 := by core033_kernel_decide
def op3869 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3869 : Bytes := ("    let r00000f48: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3869 : bytes3869=statementBytes 3912 (op3869.map lower) ∧ bytes3869.length=41 := by core033_kernel_decide
def op3870 : List WordIR.Op := [.bnot 3912]
def bytes3870 : Bytes := ("    let r00000f49: u32 = !r00000f48;\n" : String).toByteArray.data.toList
theorem checked3870 : bytes3870=statementBytes 3913 (op3870.map lower) ∧ bytes3870.length=37 := by core033_kernel_decide
def op3871 : List WordIR.Op := [.badd 3911 3913]
def bytes3871 : Bytes := ("    let r00000f4a: u32 = r00000f47.wrapping_add(r00000f49);\n" : String).toByteArray.data.toList
theorem checked3871 : bytes3871=statementBytes 3914 (op3871.map lower) ∧ bytes3871.length=60 := by core033_kernel_decide
def op3872 : List WordIR.Op := [.bnot 3914]
def bytes3872 : Bytes := ("    let r00000f4b: u32 = !r00000f4a;\n" : String).toByteArray.data.toList
theorem checked3872 : bytes3872=statementBytes 3915 (op3872.map lower) ∧ bytes3872.length=37 := by core033_kernel_decide
def op3873 : List WordIR.Op := [.band 3909 3915]
def bytes3873 : Bytes := ("    let r00000f4c: u32 = r00000f45 & r00000f4b;\n" : String).toByteArray.data.toList
theorem checked3873 : bytes3873=statementBytes 3916 (op3873.map lower) ∧ bytes3873.length=48 := by core033_kernel_decide
def op3874 : List WordIR.Op := [.bxor 3904 3916]
def bytes3874 : Bytes := ("    let r00000f4d: u32 = r00000f40 ^ r00000f4c;\n" : String).toByteArray.data.toList
theorem checked3874 : bytes3874=statementBytes 3917 (op3874.map lower) ∧ bytes3874.length=48 := by core033_kernel_decide
def op3875 : List WordIR.Op := [.shr 3917 31]
def bytes3875 : Bytes := ("    let r00000f4e: u32 = r00000f4d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3875 : bytes3875=statementBytes 3918 (op3875.map lower) ∧ bytes3875.length=54 := by core033_kernel_decide
def op3876 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3876 : Bytes := ("    let r00000f4f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3876 : bytes3876=statementBytes 3919 (op3876.map lower) ∧ bytes3876.length=41 := by core033_kernel_decide
def op3877 : List WordIR.Op := [.bxor 3918 3919]
def bytes3877 : Bytes := ("    let r00000f50: u32 = r00000f4e ^ r00000f4f;\n" : String).toByteArray.data.toList
theorem checked3877 : bytes3877=statementBytes 3920 (op3877.map lower) ∧ bytes3877.length=48 := by core033_kernel_decide
def op3878 : List WordIR.Op := [.bnot 3920]
def bytes3878 : Bytes := ("    let r00000f51: u32 = !r00000f50;\n" : String).toByteArray.data.toList
theorem checked3878 : bytes3878=statementBytes 3921 (op3878.map lower) ∧ bytes3878.length=37 := by core033_kernel_decide
def op3879 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3879 : Bytes := ("    let r00000f52: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3879 : bytes3879=statementBytes 3922 (op3879.map lower) ∧ bytes3879.length=41 := by core033_kernel_decide
def op3880 : List WordIR.Op := [.badd 3921 3922]
def bytes3880 : Bytes := ("    let r00000f53: u32 = r00000f51.wrapping_add(r00000f52);\n" : String).toByteArray.data.toList
theorem checked3880 : bytes3880=statementBytes 3923 (op3880.map lower) ∧ bytes3880.length=60 := by core033_kernel_decide
def op3881 : List WordIR.Op := [.band 3923 1583]
def bytes3881 : Bytes := ("    let r00000f54: u32 = r00000f53 & r0000062f;\n" : String).toByteArray.data.toList
theorem checked3881 : bytes3881=statementBytes 3924 (op3881.map lower) ∧ bytes3881.length=48 := by core033_kernel_decide
def op3882 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3882 : Bytes := ("    let r00000f55: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3882 : bytes3882=statementBytes 3925 (op3882.map lower) ∧ bytes3882.length=41 := by core033_kernel_decide
def op3883 : List WordIR.Op := [.bxor 96 3925]
def bytes3883 : Bytes := ("    let r00000f56: u32 = r00000060 ^ r00000f55;\n" : String).toByteArray.data.toList
theorem checked3883 : bytes3883=statementBytes 3926 (op3883.map lower) ∧ bytes3883.length=48 := by core033_kernel_decide
def op3884 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3884 : Bytes := ("    let r00000f57: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3884 : bytes3884=statementBytes 3927 (op3884.map lower) ∧ bytes3884.length=41 := by core033_kernel_decide
def op3885 : List WordIR.Op := [.bnot 3927]
def bytes3885 : Bytes := ("    let r00000f58: u32 = !r00000f57;\n" : String).toByteArray.data.toList
theorem checked3885 : bytes3885=statementBytes 3928 (op3885.map lower) ∧ bytes3885.length=37 := by core033_kernel_decide
def op3886 : List WordIR.Op := [.band 3926 3928]
def bytes3886 : Bytes := ("    let r00000f59: u32 = r00000f56 & r00000f58;\n" : String).toByteArray.data.toList
theorem checked3886 : bytes3886=statementBytes 3929 (op3886.map lower) ∧ bytes3886.length=48 := by core033_kernel_decide
def op3887 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3887 : Bytes := ("    let r00000f5a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3887 : bytes3887=statementBytes 3930 (op3887.map lower) ∧ bytes3887.length=41 := by core033_kernel_decide
def op3888 : List WordIR.Op := [.bxor 96 3930]
def bytes3888 : Bytes := ("    let r00000f5b: u32 = r00000060 ^ r00000f5a;\n" : String).toByteArray.data.toList
theorem checked3888 : bytes3888=statementBytes 3931 (op3888.map lower) ∧ bytes3888.length=48 := by core033_kernel_decide
def op3889 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3889 : Bytes := ("    let r00000f5c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3889 : bytes3889=statementBytes 3932 (op3889.map lower) ∧ bytes3889.length=41 := by core033_kernel_decide
def op3890 : List WordIR.Op := [.bnot 3932]
def bytes3890 : Bytes := ("    let r00000f5d: u32 = !r00000f5c;\n" : String).toByteArray.data.toList
theorem checked3890 : bytes3890=statementBytes 3933 (op3890.map lower) ∧ bytes3890.length=37 := by core033_kernel_decide
def op3891 : List WordIR.Op := [.bxor 3931 3933]
def bytes3891 : Bytes := ("    let r00000f5e: u32 = r00000f5b ^ r00000f5d;\n" : String).toByteArray.data.toList
theorem checked3891 : bytes3891=statementBytes 3934 (op3891.map lower) ∧ bytes3891.length=48 := by core033_kernel_decide
def op3892 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3892 : Bytes := ("    let r00000f5f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3892 : bytes3892=statementBytes 3935 (op3892.map lower) ∧ bytes3892.length=41 := by core033_kernel_decide
def op3893 : List WordIR.Op := [.bxor 96 3935]
def bytes3893 : Bytes := ("    let r00000f60: u32 = r00000060 ^ r00000f5f;\n" : String).toByteArray.data.toList
theorem checked3893 : bytes3893=statementBytes 3936 (op3893.map lower) ∧ bytes3893.length=48 := by core033_kernel_decide
def op3894 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3894 : Bytes := ("    let r00000f61: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3894 : bytes3894=statementBytes 3937 (op3894.map lower) ∧ bytes3894.length=41 := by core033_kernel_decide
def op3895 : List WordIR.Op := [.bnot 3937]
def bytes3895 : Bytes := ("    let r00000f62: u32 = !r00000f61;\n" : String).toByteArray.data.toList
theorem checked3895 : bytes3895=statementBytes 3938 (op3895.map lower) ∧ bytes3895.length=37 := by core033_kernel_decide
def op3896 : List WordIR.Op := [.badd 3936 3938]
def bytes3896 : Bytes := ("    let r00000f63: u32 = r00000f60.wrapping_add(r00000f62);\n" : String).toByteArray.data.toList
theorem checked3896 : bytes3896=statementBytes 3939 (op3896.map lower) ∧ bytes3896.length=60 := by core033_kernel_decide
def op3897 : List WordIR.Op := [.bnot 3939]
def bytes3897 : Bytes := ("    let r00000f64: u32 = !r00000f63;\n" : String).toByteArray.data.toList
theorem checked3897 : bytes3897=statementBytes 3940 (op3897.map lower) ∧ bytes3897.length=37 := by core033_kernel_decide
def op3898 : List WordIR.Op := [.band 3934 3940]
def bytes3898 : Bytes := ("    let r00000f65: u32 = r00000f5e & r00000f64;\n" : String).toByteArray.data.toList
theorem checked3898 : bytes3898=statementBytes 3941 (op3898.map lower) ∧ bytes3898.length=48 := by core033_kernel_decide
def op3899 : List WordIR.Op := [.bxor 3929 3941]
def bytes3899 : Bytes := ("    let r00000f66: u32 = r00000f59 ^ r00000f65;\n" : String).toByteArray.data.toList
theorem checked3899 : bytes3899=statementBytes 3942 (op3899.map lower) ∧ bytes3899.length=48 := by core033_kernel_decide
def op3900 : List WordIR.Op := [.shr 3942 31]
def bytes3900 : Bytes := ("    let r00000f67: u32 = r00000f66 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3900 : bytes3900=statementBytes 3943 (op3900.map lower) ∧ bytes3900.length=54 := by core033_kernel_decide
def op3901 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3901 : Bytes := ("    let r00000f68: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3901 : bytes3901=statementBytes 3944 (op3901.map lower) ∧ bytes3901.length=41 := by core033_kernel_decide
def op3902 : List WordIR.Op := [.bxor 3943 3944]
def bytes3902 : Bytes := ("    let r00000f69: u32 = r00000f67 ^ r00000f68;\n" : String).toByteArray.data.toList
theorem checked3902 : bytes3902=statementBytes 3945 (op3902.map lower) ∧ bytes3902.length=48 := by core033_kernel_decide
def op3903 : List WordIR.Op := [.bnot 3945]
def bytes3903 : Bytes := ("    let r00000f6a: u32 = !r00000f69;\n" : String).toByteArray.data.toList
theorem checked3903 : bytes3903=statementBytes 3946 (op3903.map lower) ∧ bytes3903.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3840,op3841,op3842,op3843,op3844,op3845,op3846,op3847,op3848,op3849,op3850,op3851,op3852,op3853,op3854,op3855,op3856,op3857,op3858,op3859,op3860,op3861,op3862,op3863,op3864,op3865,op3866,op3867,op3868,op3869,op3870,op3871,op3872,op3873,op3874,op3875,op3876,op3877,op3878,op3879,op3880,op3881,op3882,op3883,op3884,op3885,op3886,op3887,op3888,op3889,op3890,op3891,op3892,op3893,op3894,op3895,op3896,op3897,op3898,op3899,op3900,op3901,op3902,op3903]
def chunks : List Bytes := [bytes3840,bytes3841,bytes3842,bytes3843,bytes3844,bytes3845,bytes3846,bytes3847,bytes3848,bytes3849,bytes3850,bytes3851,bytes3852,bytes3853,bytes3854,bytes3855,bytes3856,bytes3857,bytes3858,bytes3859,bytes3860,bytes3861,bytes3862,bytes3863,bytes3864,bytes3865,bytes3866,bytes3867,bytes3868,bytes3869,bytes3870,bytes3871,bytes3872,bytes3873,bytes3874,bytes3875,bytes3876,bytes3877,bytes3878,bytes3879,bytes3880,bytes3881,bytes3882,bytes3883,bytes3884,bytes3885,bytes3886,bytes3887,bytes3888,bytes3889,bytes3890,bytes3891,bytes3892,bytes3893,bytes3894,bytes3895,bytes3896,bytes3897,bytes3898,bytes3899,bytes3900,bytes3901,bytes3902,bytes3903]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3883 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3840.1 (.cons _ _ _ _ _ checked3841.1 (.cons _ _ _ _ _ checked3842.1 (.cons _ _ _ _ _ checked3843.1 (.cons _ _ _ _ _ checked3844.1 (.cons _ _ _ _ _ checked3845.1 (.cons _ _ _ _ _ checked3846.1 (.cons _ _ _ _ _ checked3847.1 (.cons _ _ _ _ _ checked3848.1 (.cons _ _ _ _ _ checked3849.1 (.cons _ _ _ _ _ checked3850.1 (.cons _ _ _ _ _ checked3851.1 (.cons _ _ _ _ _ checked3852.1 (.cons _ _ _ _ _ checked3853.1 (.cons _ _ _ _ _ checked3854.1 (.cons _ _ _ _ _ checked3855.1 (.cons _ _ _ _ _ checked3856.1 (.cons _ _ _ _ _ checked3857.1 (.cons _ _ _ _ _ checked3858.1 (.cons _ _ _ _ _ checked3859.1 (.cons _ _ _ _ _ checked3860.1 (.cons _ _ _ _ _ checked3861.1 (.cons _ _ _ _ _ checked3862.1 (.cons _ _ _ _ _ checked3863.1 (.cons _ _ _ _ _ checked3864.1 (.cons _ _ _ _ _ checked3865.1 (.cons _ _ _ _ _ checked3866.1 (.cons _ _ _ _ _ checked3867.1 (.cons _ _ _ _ _ checked3868.1 (.cons _ _ _ _ _ checked3869.1 (.cons _ _ _ _ _ checked3870.1 (.cons _ _ _ _ _ checked3871.1 (.cons _ _ _ _ _ checked3872.1 (.cons _ _ _ _ _ checked3873.1 (.cons _ _ _ _ _ checked3874.1 (.cons _ _ _ _ _ checked3875.1 (.cons _ _ _ _ _ checked3876.1 (.cons _ _ _ _ _ checked3877.1 (.cons _ _ _ _ _ checked3878.1 (.cons _ _ _ _ _ checked3879.1 (.cons _ _ _ _ _ checked3880.1 (.cons _ _ _ _ _ checked3881.1 (.cons _ _ _ _ _ checked3882.1 (.cons _ _ _ _ _ checked3883.1 (.cons _ _ _ _ _ checked3884.1 (.cons _ _ _ _ _ checked3885.1 (.cons _ _ _ _ _ checked3886.1 (.cons _ _ _ _ _ checked3887.1 (.cons _ _ _ _ _ checked3888.1 (.cons _ _ _ _ _ checked3889.1 (.cons _ _ _ _ _ checked3890.1 (.cons _ _ _ _ _ checked3891.1 (.cons _ _ _ _ _ checked3892.1 (.cons _ _ _ _ _ checked3893.1 (.cons _ _ _ _ _ checked3894.1 (.cons _ _ _ _ _ checked3895.1 (.cons _ _ _ _ _ checked3896.1 (.cons _ _ _ _ _ checked3897.1 (.cons _ _ _ _ _ checked3898.1 (.cons _ _ _ _ _ checked3899.1 (.cons _ _ _ _ _ checked3900.1 (.cons _ _ _ _ _ checked3901.1 (.cons _ _ _ _ _ checked3902.1 (.cons _ _ _ _ _ checked3903.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3883 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3840.2,checked3841.2,checked3842.2,checked3843.2,checked3844.2,checked3845.2,checked3846.2,checked3847.2,checked3848.2,checked3849.2,checked3850.2,checked3851.2,checked3852.2,checked3853.2,checked3854.2,checked3855.2,checked3856.2,checked3857.2,checked3858.2,checked3859.2,checked3860.2,checked3861.2,checked3862.2,checked3863.2,checked3864.2,checked3865.2,checked3866.2,checked3867.2,checked3868.2,checked3869.2,checked3870.2,checked3871.2,checked3872.2,checked3873.2,checked3874.2,checked3875.2,checked3876.2,checked3877.2,checked3878.2,checked3879.2,checked3880.2,checked3881.2,checked3882.2,checked3883.2,checked3884.2,checked3885.2,checked3886.2,checked3887.2,checked3888.2,checked3889.2,checked3890.2,checked3891.2,checked3892.2,checked3893.2,checked3894.2,checked3895.2,checked3896.2,checked3897.2,checked3898.2,checked3899.2,checked3900.2,checked3901.2,checked3902.2,checked3903.2]
  decide
end ArtifactPathRoundDispatchGroup60
