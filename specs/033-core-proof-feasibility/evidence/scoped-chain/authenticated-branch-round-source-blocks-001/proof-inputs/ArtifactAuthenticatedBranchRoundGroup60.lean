import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup60
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3840 : List WordIR.Op := [.bxor 3931 3957]
def bytes3840 : Bytes := ("    let r00000f76: u32 = r00000f5b ^ r00000f75;\n" : String).toByteArray.data.toList
theorem checked3840 : bytes3840=statementBytes 3958 (op3840.map lower) ∧ bytes3840.length=48 := by core033_kernel_decide
def op3841 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3841 : Bytes := ("    let r00000f77: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3841 : bytes3841=statementBytes 3959 (op3841.map lower) ∧ bytes3841.length=41 := by core033_kernel_decide
def op3842 : List WordIR.Op := [.bxor 1299 3959]
def bytes3842 : Bytes := ("    let r00000f78: u32 = r00000513 ^ r00000f77;\n" : String).toByteArray.data.toList
theorem checked3842 : bytes3842=statementBytes 3960 (op3842.map lower) ∧ bytes3842.length=48 := by core033_kernel_decide
def op3843 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3843 : Bytes := ("    let r00000f79: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3843 : bytes3843=statementBytes 3961 (op3843.map lower) ∧ bytes3843.length=41 := by core033_kernel_decide
def op3844 : List WordIR.Op := [.bnot 3961]
def bytes3844 : Bytes := ("    let r00000f7a: u32 = !r00000f79;\n" : String).toByteArray.data.toList
theorem checked3844 : bytes3844=statementBytes 3962 (op3844.map lower) ∧ bytes3844.length=37 := by core033_kernel_decide
def op3845 : List WordIR.Op := [.band 3960 3962]
def bytes3845 : Bytes := ("    let r00000f7b: u32 = r00000f78 & r00000f7a;\n" : String).toByteArray.data.toList
theorem checked3845 : bytes3845=statementBytes 3963 (op3845.map lower) ∧ bytes3845.length=48 := by core033_kernel_decide
def op3846 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3846 : Bytes := ("    let r00000f7c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3846 : bytes3846=statementBytes 3964 (op3846.map lower) ∧ bytes3846.length=41 := by core033_kernel_decide
def op3847 : List WordIR.Op := [.bxor 1299 3964]
def bytes3847 : Bytes := ("    let r00000f7d: u32 = r00000513 ^ r00000f7c;\n" : String).toByteArray.data.toList
theorem checked3847 : bytes3847=statementBytes 3965 (op3847.map lower) ∧ bytes3847.length=48 := by core033_kernel_decide
def op3848 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3848 : Bytes := ("    let r00000f7e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3848 : bytes3848=statementBytes 3966 (op3848.map lower) ∧ bytes3848.length=41 := by core033_kernel_decide
def op3849 : List WordIR.Op := [.bnot 3966]
def bytes3849 : Bytes := ("    let r00000f7f: u32 = !r00000f7e;\n" : String).toByteArray.data.toList
theorem checked3849 : bytes3849=statementBytes 3967 (op3849.map lower) ∧ bytes3849.length=37 := by core033_kernel_decide
def op3850 : List WordIR.Op := [.bxor 3965 3967]
def bytes3850 : Bytes := ("    let r00000f80: u32 = r00000f7d ^ r00000f7f;\n" : String).toByteArray.data.toList
theorem checked3850 : bytes3850=statementBytes 3968 (op3850.map lower) ∧ bytes3850.length=48 := by core033_kernel_decide
def op3851 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3851 : Bytes := ("    let r00000f81: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3851 : bytes3851=statementBytes 3969 (op3851.map lower) ∧ bytes3851.length=41 := by core033_kernel_decide
def op3852 : List WordIR.Op := [.bxor 1299 3969]
def bytes3852 : Bytes := ("    let r00000f82: u32 = r00000513 ^ r00000f81;\n" : String).toByteArray.data.toList
theorem checked3852 : bytes3852=statementBytes 3970 (op3852.map lower) ∧ bytes3852.length=48 := by core033_kernel_decide
def op3853 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3853 : Bytes := ("    let r00000f83: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3853 : bytes3853=statementBytes 3971 (op3853.map lower) ∧ bytes3853.length=41 := by core033_kernel_decide
def op3854 : List WordIR.Op := [.bnot 3971]
def bytes3854 : Bytes := ("    let r00000f84: u32 = !r00000f83;\n" : String).toByteArray.data.toList
theorem checked3854 : bytes3854=statementBytes 3972 (op3854.map lower) ∧ bytes3854.length=37 := by core033_kernel_decide
def op3855 : List WordIR.Op := [.badd 3970 3972]
def bytes3855 : Bytes := ("    let r00000f85: u32 = r00000f82.wrapping_add(r00000f84);\n" : String).toByteArray.data.toList
theorem checked3855 : bytes3855=statementBytes 3973 (op3855.map lower) ∧ bytes3855.length=60 := by core033_kernel_decide
def op3856 : List WordIR.Op := [.bnot 3973]
def bytes3856 : Bytes := ("    let r00000f86: u32 = !r00000f85;\n" : String).toByteArray.data.toList
theorem checked3856 : bytes3856=statementBytes 3974 (op3856.map lower) ∧ bytes3856.length=37 := by core033_kernel_decide
def op3857 : List WordIR.Op := [.band 3968 3974]
def bytes3857 : Bytes := ("    let r00000f87: u32 = r00000f80 & r00000f86;\n" : String).toByteArray.data.toList
theorem checked3857 : bytes3857=statementBytes 3975 (op3857.map lower) ∧ bytes3857.length=48 := by core033_kernel_decide
def op3858 : List WordIR.Op := [.bxor 3963 3975]
def bytes3858 : Bytes := ("    let r00000f88: u32 = r00000f7b ^ r00000f87;\n" : String).toByteArray.data.toList
theorem checked3858 : bytes3858=statementBytes 3976 (op3858.map lower) ∧ bytes3858.length=48 := by core033_kernel_decide
def op3859 : List WordIR.Op := [.shr 3976 31]
def bytes3859 : Bytes := ("    let r00000f89: u32 = r00000f88 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3859 : bytes3859=statementBytes 3977 (op3859.map lower) ∧ bytes3859.length=54 := by core033_kernel_decide
def op3860 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3860 : Bytes := ("    let r00000f8a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3860 : bytes3860=statementBytes 3978 (op3860.map lower) ∧ bytes3860.length=41 := by core033_kernel_decide
def op3861 : List WordIR.Op := [.bxor 3977 3978]
def bytes3861 : Bytes := ("    let r00000f8b: u32 = r00000f89 ^ r00000f8a;\n" : String).toByteArray.data.toList
theorem checked3861 : bytes3861=statementBytes 3979 (op3861.map lower) ∧ bytes3861.length=48 := by core033_kernel_decide
def op3862 : List WordIR.Op := [.bnot 3979]
def bytes3862 : Bytes := ("    let r00000f8c: u32 = !r00000f8b;\n" : String).toByteArray.data.toList
theorem checked3862 : bytes3862=statementBytes 3980 (op3862.map lower) ∧ bytes3862.length=37 := by core033_kernel_decide
def op3863 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3863 : Bytes := ("    let r00000f8d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3863 : bytes3863=statementBytes 3981 (op3863.map lower) ∧ bytes3863.length=41 := by core033_kernel_decide
def op3864 : List WordIR.Op := [.badd 3980 3981]
def bytes3864 : Bytes := ("    let r00000f8e: u32 = r00000f8c.wrapping_add(r00000f8d);\n" : String).toByteArray.data.toList
theorem checked3864 : bytes3864=statementBytes 3982 (op3864.map lower) ∧ bytes3864.length=60 := by core033_kernel_decide
def op3865 : List WordIR.Op := [.band 3982 2720]
def bytes3865 : Bytes := ("    let r00000f8f: u32 = r00000f8e & r00000aa0;\n" : String).toByteArray.data.toList
theorem checked3865 : bytes3865=statementBytes 3983 (op3865.map lower) ∧ bytes3865.length=48 := by core033_kernel_decide
def op3866 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3866 : Bytes := ("    let r00000f90: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3866 : bytes3866=statementBytes 3984 (op3866.map lower) ∧ bytes3866.length=41 := by core033_kernel_decide
def op3867 : List WordIR.Op := [.bxor 1299 3984]
def bytes3867 : Bytes := ("    let r00000f91: u32 = r00000513 ^ r00000f90;\n" : String).toByteArray.data.toList
theorem checked3867 : bytes3867=statementBytes 3985 (op3867.map lower) ∧ bytes3867.length=48 := by core033_kernel_decide
def op3868 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3868 : Bytes := ("    let r00000f92: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3868 : bytes3868=statementBytes 3986 (op3868.map lower) ∧ bytes3868.length=41 := by core033_kernel_decide
def op3869 : List WordIR.Op := [.bnot 3986]
def bytes3869 : Bytes := ("    let r00000f93: u32 = !r00000f92;\n" : String).toByteArray.data.toList
theorem checked3869 : bytes3869=statementBytes 3987 (op3869.map lower) ∧ bytes3869.length=37 := by core033_kernel_decide
def op3870 : List WordIR.Op := [.band 3985 3987]
def bytes3870 : Bytes := ("    let r00000f94: u32 = r00000f91 & r00000f93;\n" : String).toByteArray.data.toList
theorem checked3870 : bytes3870=statementBytes 3988 (op3870.map lower) ∧ bytes3870.length=48 := by core033_kernel_decide
def op3871 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3871 : Bytes := ("    let r00000f95: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3871 : bytes3871=statementBytes 3989 (op3871.map lower) ∧ bytes3871.length=41 := by core033_kernel_decide
def op3872 : List WordIR.Op := [.bxor 1299 3989]
def bytes3872 : Bytes := ("    let r00000f96: u32 = r00000513 ^ r00000f95;\n" : String).toByteArray.data.toList
theorem checked3872 : bytes3872=statementBytes 3990 (op3872.map lower) ∧ bytes3872.length=48 := by core033_kernel_decide
def op3873 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3873 : Bytes := ("    let r00000f97: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3873 : bytes3873=statementBytes 3991 (op3873.map lower) ∧ bytes3873.length=41 := by core033_kernel_decide
def op3874 : List WordIR.Op := [.bnot 3991]
def bytes3874 : Bytes := ("    let r00000f98: u32 = !r00000f97;\n" : String).toByteArray.data.toList
theorem checked3874 : bytes3874=statementBytes 3992 (op3874.map lower) ∧ bytes3874.length=37 := by core033_kernel_decide
def op3875 : List WordIR.Op := [.bxor 3990 3992]
def bytes3875 : Bytes := ("    let r00000f99: u32 = r00000f96 ^ r00000f98;\n" : String).toByteArray.data.toList
theorem checked3875 : bytes3875=statementBytes 3993 (op3875.map lower) ∧ bytes3875.length=48 := by core033_kernel_decide
def op3876 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3876 : Bytes := ("    let r00000f9a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3876 : bytes3876=statementBytes 3994 (op3876.map lower) ∧ bytes3876.length=41 := by core033_kernel_decide
def op3877 : List WordIR.Op := [.bxor 1299 3994]
def bytes3877 : Bytes := ("    let r00000f9b: u32 = r00000513 ^ r00000f9a;\n" : String).toByteArray.data.toList
theorem checked3877 : bytes3877=statementBytes 3995 (op3877.map lower) ∧ bytes3877.length=48 := by core033_kernel_decide
def op3878 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3878 : Bytes := ("    let r00000f9c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3878 : bytes3878=statementBytes 3996 (op3878.map lower) ∧ bytes3878.length=41 := by core033_kernel_decide
def op3879 : List WordIR.Op := [.bnot 3996]
def bytes3879 : Bytes := ("    let r00000f9d: u32 = !r00000f9c;\n" : String).toByteArray.data.toList
theorem checked3879 : bytes3879=statementBytes 3997 (op3879.map lower) ∧ bytes3879.length=37 := by core033_kernel_decide
def op3880 : List WordIR.Op := [.badd 3995 3997]
def bytes3880 : Bytes := ("    let r00000f9e: u32 = r00000f9b.wrapping_add(r00000f9d);\n" : String).toByteArray.data.toList
theorem checked3880 : bytes3880=statementBytes 3998 (op3880.map lower) ∧ bytes3880.length=60 := by core033_kernel_decide
def op3881 : List WordIR.Op := [.bnot 3998]
def bytes3881 : Bytes := ("    let r00000f9f: u32 = !r00000f9e;\n" : String).toByteArray.data.toList
theorem checked3881 : bytes3881=statementBytes 3999 (op3881.map lower) ∧ bytes3881.length=37 := by core033_kernel_decide
def op3882 : List WordIR.Op := [.band 3993 3999]
def bytes3882 : Bytes := ("    let r00000fa0: u32 = r00000f99 & r00000f9f;\n" : String).toByteArray.data.toList
theorem checked3882 : bytes3882=statementBytes 4000 (op3882.map lower) ∧ bytes3882.length=48 := by core033_kernel_decide
def op3883 : List WordIR.Op := [.bxor 3988 4000]
def bytes3883 : Bytes := ("    let r00000fa1: u32 = r00000f94 ^ r00000fa0;\n" : String).toByteArray.data.toList
theorem checked3883 : bytes3883=statementBytes 4001 (op3883.map lower) ∧ bytes3883.length=48 := by core033_kernel_decide
def op3884 : List WordIR.Op := [.shr 4001 31]
def bytes3884 : Bytes := ("    let r00000fa2: u32 = r00000fa1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3884 : bytes3884=statementBytes 4002 (op3884.map lower) ∧ bytes3884.length=54 := by core033_kernel_decide
def op3885 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3885 : Bytes := ("    let r00000fa3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3885 : bytes3885=statementBytes 4003 (op3885.map lower) ∧ bytes3885.length=41 := by core033_kernel_decide
def op3886 : List WordIR.Op := [.bxor 4002 4003]
def bytes3886 : Bytes := ("    let r00000fa4: u32 = r00000fa2 ^ r00000fa3;\n" : String).toByteArray.data.toList
theorem checked3886 : bytes3886=statementBytes 4004 (op3886.map lower) ∧ bytes3886.length=48 := by core033_kernel_decide
def op3887 : List WordIR.Op := [.bnot 4004]
def bytes3887 : Bytes := ("    let r00000fa5: u32 = !r00000fa4;\n" : String).toByteArray.data.toList
theorem checked3887 : bytes3887=statementBytes 4005 (op3887.map lower) ∧ bytes3887.length=37 := by core033_kernel_decide
def op3888 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3888 : Bytes := ("    let r00000fa6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3888 : bytes3888=statementBytes 4006 (op3888.map lower) ∧ bytes3888.length=41 := by core033_kernel_decide
def op3889 : List WordIR.Op := [.badd 4005 4006]
def bytes3889 : Bytes := ("    let r00000fa7: u32 = r00000fa5.wrapping_add(r00000fa6);\n" : String).toByteArray.data.toList
theorem checked3889 : bytes3889=statementBytes 4007 (op3889.map lower) ∧ bytes3889.length=60 := by core033_kernel_decide
def op3890 : List WordIR.Op := [.bnot 4007]
def bytes3890 : Bytes := ("    let r00000fa8: u32 = !r00000fa7;\n" : String).toByteArray.data.toList
theorem checked3890 : bytes3890=statementBytes 4008 (op3890.map lower) ∧ bytes3890.length=37 := by core033_kernel_decide
def op3891 : List WordIR.Op := [.band 4008 2554]
def bytes3891 : Bytes := ("    let r00000fa9: u32 = r00000fa8 & r000009fa;\n" : String).toByteArray.data.toList
theorem checked3891 : bytes3891=statementBytes 4009 (op3891.map lower) ∧ bytes3891.length=48 := by core033_kernel_decide
def op3892 : List WordIR.Op := [.bxor 3983 4009]
def bytes3892 : Bytes := ("    let r00000faa: u32 = r00000f8f ^ r00000fa9;\n" : String).toByteArray.data.toList
theorem checked3892 : bytes3892=statementBytes 4010 (op3892.map lower) ∧ bytes3892.length=48 := by core033_kernel_decide
def op3893 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3893 : Bytes := ("    let r00000fab: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3893 : bytes3893=statementBytes 4011 (op3893.map lower) ∧ bytes3893.length=41 := by core033_kernel_decide
def op3894 : List WordIR.Op := [.bxor 1299 4011]
def bytes3894 : Bytes := ("    let r00000fac: u32 = r00000513 ^ r00000fab;\n" : String).toByteArray.data.toList
theorem checked3894 : bytes3894=statementBytes 4012 (op3894.map lower) ∧ bytes3894.length=48 := by core033_kernel_decide
def op3895 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3895 : Bytes := ("    let r00000fad: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3895 : bytes3895=statementBytes 4013 (op3895.map lower) ∧ bytes3895.length=41 := by core033_kernel_decide
def op3896 : List WordIR.Op := [.bnot 4013]
def bytes3896 : Bytes := ("    let r00000fae: u32 = !r00000fad;\n" : String).toByteArray.data.toList
theorem checked3896 : bytes3896=statementBytes 4014 (op3896.map lower) ∧ bytes3896.length=37 := by core033_kernel_decide
def op3897 : List WordIR.Op := [.band 4012 4014]
def bytes3897 : Bytes := ("    let r00000faf: u32 = r00000fac & r00000fae;\n" : String).toByteArray.data.toList
theorem checked3897 : bytes3897=statementBytes 4015 (op3897.map lower) ∧ bytes3897.length=48 := by core033_kernel_decide
def op3898 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3898 : Bytes := ("    let r00000fb0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3898 : bytes3898=statementBytes 4016 (op3898.map lower) ∧ bytes3898.length=41 := by core033_kernel_decide
def op3899 : List WordIR.Op := [.bxor 1299 4016]
def bytes3899 : Bytes := ("    let r00000fb1: u32 = r00000513 ^ r00000fb0;\n" : String).toByteArray.data.toList
theorem checked3899 : bytes3899=statementBytes 4017 (op3899.map lower) ∧ bytes3899.length=48 := by core033_kernel_decide
def op3900 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3900 : Bytes := ("    let r00000fb2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3900 : bytes3900=statementBytes 4018 (op3900.map lower) ∧ bytes3900.length=41 := by core033_kernel_decide
def op3901 : List WordIR.Op := [.bnot 4018]
def bytes3901 : Bytes := ("    let r00000fb3: u32 = !r00000fb2;\n" : String).toByteArray.data.toList
theorem checked3901 : bytes3901=statementBytes 4019 (op3901.map lower) ∧ bytes3901.length=37 := by core033_kernel_decide
def op3902 : List WordIR.Op := [.bxor 4017 4019]
def bytes3902 : Bytes := ("    let r00000fb4: u32 = r00000fb1 ^ r00000fb3;\n" : String).toByteArray.data.toList
theorem checked3902 : bytes3902=statementBytes 4020 (op3902.map lower) ∧ bytes3902.length=48 := by core033_kernel_decide
def op3903 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3903 : Bytes := ("    let r00000fb5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3903 : bytes3903=statementBytes 4021 (op3903.map lower) ∧ bytes3903.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3840,op3841,op3842,op3843,op3844,op3845,op3846,op3847,op3848,op3849,op3850,op3851,op3852,op3853,op3854,op3855,op3856,op3857,op3858,op3859,op3860,op3861,op3862,op3863,op3864,op3865,op3866,op3867,op3868,op3869,op3870,op3871,op3872,op3873,op3874,op3875,op3876,op3877,op3878,op3879,op3880,op3881,op3882,op3883,op3884,op3885,op3886,op3887,op3888,op3889,op3890,op3891,op3892,op3893,op3894,op3895,op3896,op3897,op3898,op3899,op3900,op3901,op3902,op3903]
def chunks : List Bytes := [bytes3840,bytes3841,bytes3842,bytes3843,bytes3844,bytes3845,bytes3846,bytes3847,bytes3848,bytes3849,bytes3850,bytes3851,bytes3852,bytes3853,bytes3854,bytes3855,bytes3856,bytes3857,bytes3858,bytes3859,bytes3860,bytes3861,bytes3862,bytes3863,bytes3864,bytes3865,bytes3866,bytes3867,bytes3868,bytes3869,bytes3870,bytes3871,bytes3872,bytes3873,bytes3874,bytes3875,bytes3876,bytes3877,bytes3878,bytes3879,bytes3880,bytes3881,bytes3882,bytes3883,bytes3884,bytes3885,bytes3886,bytes3887,bytes3888,bytes3889,bytes3890,bytes3891,bytes3892,bytes3893,bytes3894,bytes3895,bytes3896,bytes3897,bytes3898,bytes3899,bytes3900,bytes3901,bytes3902,bytes3903]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3958 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3840.1 (.cons _ _ _ _ _ checked3841.1 (.cons _ _ _ _ _ checked3842.1 (.cons _ _ _ _ _ checked3843.1 (.cons _ _ _ _ _ checked3844.1 (.cons _ _ _ _ _ checked3845.1 (.cons _ _ _ _ _ checked3846.1 (.cons _ _ _ _ _ checked3847.1 (.cons _ _ _ _ _ checked3848.1 (.cons _ _ _ _ _ checked3849.1 (.cons _ _ _ _ _ checked3850.1 (.cons _ _ _ _ _ checked3851.1 (.cons _ _ _ _ _ checked3852.1 (.cons _ _ _ _ _ checked3853.1 (.cons _ _ _ _ _ checked3854.1 (.cons _ _ _ _ _ checked3855.1 (.cons _ _ _ _ _ checked3856.1 (.cons _ _ _ _ _ checked3857.1 (.cons _ _ _ _ _ checked3858.1 (.cons _ _ _ _ _ checked3859.1 (.cons _ _ _ _ _ checked3860.1 (.cons _ _ _ _ _ checked3861.1 (.cons _ _ _ _ _ checked3862.1 (.cons _ _ _ _ _ checked3863.1 (.cons _ _ _ _ _ checked3864.1 (.cons _ _ _ _ _ checked3865.1 (.cons _ _ _ _ _ checked3866.1 (.cons _ _ _ _ _ checked3867.1 (.cons _ _ _ _ _ checked3868.1 (.cons _ _ _ _ _ checked3869.1 (.cons _ _ _ _ _ checked3870.1 (.cons _ _ _ _ _ checked3871.1 (.cons _ _ _ _ _ checked3872.1 (.cons _ _ _ _ _ checked3873.1 (.cons _ _ _ _ _ checked3874.1 (.cons _ _ _ _ _ checked3875.1 (.cons _ _ _ _ _ checked3876.1 (.cons _ _ _ _ _ checked3877.1 (.cons _ _ _ _ _ checked3878.1 (.cons _ _ _ _ _ checked3879.1 (.cons _ _ _ _ _ checked3880.1 (.cons _ _ _ _ _ checked3881.1 (.cons _ _ _ _ _ checked3882.1 (.cons _ _ _ _ _ checked3883.1 (.cons _ _ _ _ _ checked3884.1 (.cons _ _ _ _ _ checked3885.1 (.cons _ _ _ _ _ checked3886.1 (.cons _ _ _ _ _ checked3887.1 (.cons _ _ _ _ _ checked3888.1 (.cons _ _ _ _ _ checked3889.1 (.cons _ _ _ _ _ checked3890.1 (.cons _ _ _ _ _ checked3891.1 (.cons _ _ _ _ _ checked3892.1 (.cons _ _ _ _ _ checked3893.1 (.cons _ _ _ _ _ checked3894.1 (.cons _ _ _ _ _ checked3895.1 (.cons _ _ _ _ _ checked3896.1 (.cons _ _ _ _ _ checked3897.1 (.cons _ _ _ _ _ checked3898.1 (.cons _ _ _ _ _ checked3899.1 (.cons _ _ _ _ _ checked3900.1 (.cons _ _ _ _ _ checked3901.1 (.cons _ _ _ _ _ checked3902.1 (.cons _ _ _ _ _ checked3903.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3958 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3840.2,checked3841.2,checked3842.2,checked3843.2,checked3844.2,checked3845.2,checked3846.2,checked3847.2,checked3848.2,checked3849.2,checked3850.2,checked3851.2,checked3852.2,checked3853.2,checked3854.2,checked3855.2,checked3856.2,checked3857.2,checked3858.2,checked3859.2,checked3860.2,checked3861.2,checked3862.2,checked3863.2,checked3864.2,checked3865.2,checked3866.2,checked3867.2,checked3868.2,checked3869.2,checked3870.2,checked3871.2,checked3872.2,checked3873.2,checked3874.2,checked3875.2,checked3876.2,checked3877.2,checked3878.2,checked3879.2,checked3880.2,checked3881.2,checked3882.2,checked3883.2,checked3884.2,checked3885.2,checked3886.2,checked3887.2,checked3888.2,checked3889.2,checked3890.2,checked3891.2,checked3892.2,checked3893.2,checked3894.2,checked3895.2,checked3896.2,checked3897.2,checked3898.2,checked3899.2,checked3900.2,checked3901.2,checked3902.2,checked3903.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup60
