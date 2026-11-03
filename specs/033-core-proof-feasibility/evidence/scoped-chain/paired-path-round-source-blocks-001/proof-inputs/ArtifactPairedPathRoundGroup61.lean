import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup61
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3904 : List WordIR.Op := [.badd 3998 3999]
def bytes3904 : Bytes := ("    let r00000fa0: u32 = r00000f9e.wrapping_add(r00000f9f);\n" : String).toByteArray.data.toList
theorem checked3904 : bytes3904=statementBytes 4000 (op3904.map lower) ∧ bytes3904.length=60 := by core033_kernel_decide
def op3905 : List WordIR.Op := [.bnot 4000]
def bytes3905 : Bytes := ("    let r00000fa1: u32 = !r00000fa0;\n" : String).toByteArray.data.toList
theorem checked3905 : bytes3905=statementBytes 4001 (op3905.map lower) ∧ bytes3905.length=37 := by core033_kernel_decide
def op3906 : List WordIR.Op := [.band 4001 1884]
def bytes3906 : Bytes := ("    let r00000fa2: u32 = r00000fa1 & r0000075c;\n" : String).toByteArray.data.toList
theorem checked3906 : bytes3906=statementBytes 4002 (op3906.map lower) ∧ bytes3906.length=48 := by core033_kernel_decide
def op3907 : List WordIR.Op := [.bxor 3976 4002]
def bytes3907 : Bytes := ("    let r00000fa3: u32 = r00000f88 ^ r00000fa2;\n" : String).toByteArray.data.toList
theorem checked3907 : bytes3907=statementBytes 4003 (op3907.map lower) ∧ bytes3907.length=48 := by core033_kernel_decide
def op3908 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3908 : Bytes := ("    let r00000fa4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3908 : bytes3908=statementBytes 4004 (op3908.map lower) ∧ bytes3908.length=41 := by core033_kernel_decide
def op3909 : List WordIR.Op := [.bxor 616 4004]
def bytes3909 : Bytes := ("    let r00000fa5: u32 = r00000268 ^ r00000fa4;\n" : String).toByteArray.data.toList
theorem checked3909 : bytes3909=statementBytes 4005 (op3909.map lower) ∧ bytes3909.length=48 := by core033_kernel_decide
def op3910 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3910 : Bytes := ("    let r00000fa6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3910 : bytes3910=statementBytes 4006 (op3910.map lower) ∧ bytes3910.length=41 := by core033_kernel_decide
def op3911 : List WordIR.Op := [.bnot 4006]
def bytes3911 : Bytes := ("    let r00000fa7: u32 = !r00000fa6;\n" : String).toByteArray.data.toList
theorem checked3911 : bytes3911=statementBytes 4007 (op3911.map lower) ∧ bytes3911.length=37 := by core033_kernel_decide
def op3912 : List WordIR.Op := [.band 4005 4007]
def bytes3912 : Bytes := ("    let r00000fa8: u32 = r00000fa5 & r00000fa7;\n" : String).toByteArray.data.toList
theorem checked3912 : bytes3912=statementBytes 4008 (op3912.map lower) ∧ bytes3912.length=48 := by core033_kernel_decide
def op3913 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3913 : Bytes := ("    let r00000fa9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3913 : bytes3913=statementBytes 4009 (op3913.map lower) ∧ bytes3913.length=41 := by core033_kernel_decide
def op3914 : List WordIR.Op := [.bxor 616 4009]
def bytes3914 : Bytes := ("    let r00000faa: u32 = r00000268 ^ r00000fa9;\n" : String).toByteArray.data.toList
theorem checked3914 : bytes3914=statementBytes 4010 (op3914.map lower) ∧ bytes3914.length=48 := by core033_kernel_decide
def op3915 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3915 : Bytes := ("    let r00000fab: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3915 : bytes3915=statementBytes 4011 (op3915.map lower) ∧ bytes3915.length=41 := by core033_kernel_decide
def op3916 : List WordIR.Op := [.bnot 4011]
def bytes3916 : Bytes := ("    let r00000fac: u32 = !r00000fab;\n" : String).toByteArray.data.toList
theorem checked3916 : bytes3916=statementBytes 4012 (op3916.map lower) ∧ bytes3916.length=37 := by core033_kernel_decide
def op3917 : List WordIR.Op := [.bxor 4010 4012]
def bytes3917 : Bytes := ("    let r00000fad: u32 = r00000faa ^ r00000fac;\n" : String).toByteArray.data.toList
theorem checked3917 : bytes3917=statementBytes 4013 (op3917.map lower) ∧ bytes3917.length=48 := by core033_kernel_decide
def op3918 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3918 : Bytes := ("    let r00000fae: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3918 : bytes3918=statementBytes 4014 (op3918.map lower) ∧ bytes3918.length=41 := by core033_kernel_decide
def op3919 : List WordIR.Op := [.bxor 616 4014]
def bytes3919 : Bytes := ("    let r00000faf: u32 = r00000268 ^ r00000fae;\n" : String).toByteArray.data.toList
theorem checked3919 : bytes3919=statementBytes 4015 (op3919.map lower) ∧ bytes3919.length=48 := by core033_kernel_decide
def op3920 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3920 : Bytes := ("    let r00000fb0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3920 : bytes3920=statementBytes 4016 (op3920.map lower) ∧ bytes3920.length=41 := by core033_kernel_decide
def op3921 : List WordIR.Op := [.bnot 4016]
def bytes3921 : Bytes := ("    let r00000fb1: u32 = !r00000fb0;\n" : String).toByteArray.data.toList
theorem checked3921 : bytes3921=statementBytes 4017 (op3921.map lower) ∧ bytes3921.length=37 := by core033_kernel_decide
def op3922 : List WordIR.Op := [.badd 4015 4017]
def bytes3922 : Bytes := ("    let r00000fb2: u32 = r00000faf.wrapping_add(r00000fb1);\n" : String).toByteArray.data.toList
theorem checked3922 : bytes3922=statementBytes 4018 (op3922.map lower) ∧ bytes3922.length=60 := by core033_kernel_decide
def op3923 : List WordIR.Op := [.bnot 4018]
def bytes3923 : Bytes := ("    let r00000fb3: u32 = !r00000fb2;\n" : String).toByteArray.data.toList
theorem checked3923 : bytes3923=statementBytes 4019 (op3923.map lower) ∧ bytes3923.length=37 := by core033_kernel_decide
def op3924 : List WordIR.Op := [.band 4013 4019]
def bytes3924 : Bytes := ("    let r00000fb4: u32 = r00000fad & r00000fb3;\n" : String).toByteArray.data.toList
theorem checked3924 : bytes3924=statementBytes 4020 (op3924.map lower) ∧ bytes3924.length=48 := by core033_kernel_decide
def op3925 : List WordIR.Op := [.bxor 4008 4020]
def bytes3925 : Bytes := ("    let r00000fb5: u32 = r00000fa8 ^ r00000fb4;\n" : String).toByteArray.data.toList
theorem checked3925 : bytes3925=statementBytes 4021 (op3925.map lower) ∧ bytes3925.length=48 := by core033_kernel_decide
def op3926 : List WordIR.Op := [.shr 4021 31]
def bytes3926 : Bytes := ("    let r00000fb6: u32 = r00000fb5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3926 : bytes3926=statementBytes 4022 (op3926.map lower) ∧ bytes3926.length=54 := by core033_kernel_decide
def op3927 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3927 : Bytes := ("    let r00000fb7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3927 : bytes3927=statementBytes 4023 (op3927.map lower) ∧ bytes3927.length=41 := by core033_kernel_decide
def op3928 : List WordIR.Op := [.bxor 4022 4023]
def bytes3928 : Bytes := ("    let r00000fb8: u32 = r00000fb6 ^ r00000fb7;\n" : String).toByteArray.data.toList
theorem checked3928 : bytes3928=statementBytes 4024 (op3928.map lower) ∧ bytes3928.length=48 := by core033_kernel_decide
def op3929 : List WordIR.Op := [.bnot 4024]
def bytes3929 : Bytes := ("    let r00000fb9: u32 = !r00000fb8;\n" : String).toByteArray.data.toList
theorem checked3929 : bytes3929=statementBytes 4025 (op3929.map lower) ∧ bytes3929.length=37 := by core033_kernel_decide
def op3930 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3930 : Bytes := ("    let r00000fba: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3930 : bytes3930=statementBytes 4026 (op3930.map lower) ∧ bytes3930.length=41 := by core033_kernel_decide
def op3931 : List WordIR.Op := [.badd 4025 4026]
def bytes3931 : Bytes := ("    let r00000fbb: u32 = r00000fb9.wrapping_add(r00000fba);\n" : String).toByteArray.data.toList
theorem checked3931 : bytes3931=statementBytes 4027 (op3931.map lower) ∧ bytes3931.length=60 := by core033_kernel_decide
def op3932 : List WordIR.Op := [.band 4027 2079]
def bytes3932 : Bytes := ("    let r00000fbc: u32 = r00000fbb & r0000081f;\n" : String).toByteArray.data.toList
theorem checked3932 : bytes3932=statementBytes 4028 (op3932.map lower) ∧ bytes3932.length=48 := by core033_kernel_decide
def op3933 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3933 : Bytes := ("    let r00000fbd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3933 : bytes3933=statementBytes 4029 (op3933.map lower) ∧ bytes3933.length=41 := by core033_kernel_decide
def op3934 : List WordIR.Op := [.bxor 616 4029]
def bytes3934 : Bytes := ("    let r00000fbe: u32 = r00000268 ^ r00000fbd;\n" : String).toByteArray.data.toList
theorem checked3934 : bytes3934=statementBytes 4030 (op3934.map lower) ∧ bytes3934.length=48 := by core033_kernel_decide
def op3935 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3935 : Bytes := ("    let r00000fbf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3935 : bytes3935=statementBytes 4031 (op3935.map lower) ∧ bytes3935.length=41 := by core033_kernel_decide
def op3936 : List WordIR.Op := [.bnot 4031]
def bytes3936 : Bytes := ("    let r00000fc0: u32 = !r00000fbf;\n" : String).toByteArray.data.toList
theorem checked3936 : bytes3936=statementBytes 4032 (op3936.map lower) ∧ bytes3936.length=37 := by core033_kernel_decide
def op3937 : List WordIR.Op := [.band 4030 4032]
def bytes3937 : Bytes := ("    let r00000fc1: u32 = r00000fbe & r00000fc0;\n" : String).toByteArray.data.toList
theorem checked3937 : bytes3937=statementBytes 4033 (op3937.map lower) ∧ bytes3937.length=48 := by core033_kernel_decide
def op3938 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3938 : Bytes := ("    let r00000fc2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3938 : bytes3938=statementBytes 4034 (op3938.map lower) ∧ bytes3938.length=41 := by core033_kernel_decide
def op3939 : List WordIR.Op := [.bxor 616 4034]
def bytes3939 : Bytes := ("    let r00000fc3: u32 = r00000268 ^ r00000fc2;\n" : String).toByteArray.data.toList
theorem checked3939 : bytes3939=statementBytes 4035 (op3939.map lower) ∧ bytes3939.length=48 := by core033_kernel_decide
def op3940 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3940 : Bytes := ("    let r00000fc4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3940 : bytes3940=statementBytes 4036 (op3940.map lower) ∧ bytes3940.length=41 := by core033_kernel_decide
def op3941 : List WordIR.Op := [.bnot 4036]
def bytes3941 : Bytes := ("    let r00000fc5: u32 = !r00000fc4;\n" : String).toByteArray.data.toList
theorem checked3941 : bytes3941=statementBytes 4037 (op3941.map lower) ∧ bytes3941.length=37 := by core033_kernel_decide
def op3942 : List WordIR.Op := [.bxor 4035 4037]
def bytes3942 : Bytes := ("    let r00000fc6: u32 = r00000fc3 ^ r00000fc5;\n" : String).toByteArray.data.toList
theorem checked3942 : bytes3942=statementBytes 4038 (op3942.map lower) ∧ bytes3942.length=48 := by core033_kernel_decide
def op3943 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3943 : Bytes := ("    let r00000fc7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3943 : bytes3943=statementBytes 4039 (op3943.map lower) ∧ bytes3943.length=41 := by core033_kernel_decide
def op3944 : List WordIR.Op := [.bxor 616 4039]
def bytes3944 : Bytes := ("    let r00000fc8: u32 = r00000268 ^ r00000fc7;\n" : String).toByteArray.data.toList
theorem checked3944 : bytes3944=statementBytes 4040 (op3944.map lower) ∧ bytes3944.length=48 := by core033_kernel_decide
def op3945 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3945 : Bytes := ("    let r00000fc9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3945 : bytes3945=statementBytes 4041 (op3945.map lower) ∧ bytes3945.length=41 := by core033_kernel_decide
def op3946 : List WordIR.Op := [.bnot 4041]
def bytes3946 : Bytes := ("    let r00000fca: u32 = !r00000fc9;\n" : String).toByteArray.data.toList
theorem checked3946 : bytes3946=statementBytes 4042 (op3946.map lower) ∧ bytes3946.length=37 := by core033_kernel_decide
def op3947 : List WordIR.Op := [.badd 4040 4042]
def bytes3947 : Bytes := ("    let r00000fcb: u32 = r00000fc8.wrapping_add(r00000fca);\n" : String).toByteArray.data.toList
theorem checked3947 : bytes3947=statementBytes 4043 (op3947.map lower) ∧ bytes3947.length=60 := by core033_kernel_decide
def op3948 : List WordIR.Op := [.bnot 4043]
def bytes3948 : Bytes := ("    let r00000fcc: u32 = !r00000fcb;\n" : String).toByteArray.data.toList
theorem checked3948 : bytes3948=statementBytes 4044 (op3948.map lower) ∧ bytes3948.length=37 := by core033_kernel_decide
def op3949 : List WordIR.Op := [.band 4038 4044]
def bytes3949 : Bytes := ("    let r00000fcd: u32 = r00000fc6 & r00000fcc;\n" : String).toByteArray.data.toList
theorem checked3949 : bytes3949=statementBytes 4045 (op3949.map lower) ∧ bytes3949.length=48 := by core033_kernel_decide
def op3950 : List WordIR.Op := [.bxor 4033 4045]
def bytes3950 : Bytes := ("    let r00000fce: u32 = r00000fc1 ^ r00000fcd;\n" : String).toByteArray.data.toList
theorem checked3950 : bytes3950=statementBytes 4046 (op3950.map lower) ∧ bytes3950.length=48 := by core033_kernel_decide
def op3951 : List WordIR.Op := [.shr 4046 31]
def bytes3951 : Bytes := ("    let r00000fcf: u32 = r00000fce >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3951 : bytes3951=statementBytes 4047 (op3951.map lower) ∧ bytes3951.length=54 := by core033_kernel_decide
def op3952 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3952 : Bytes := ("    let r00000fd0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3952 : bytes3952=statementBytes 4048 (op3952.map lower) ∧ bytes3952.length=41 := by core033_kernel_decide
def op3953 : List WordIR.Op := [.bxor 4047 4048]
def bytes3953 : Bytes := ("    let r00000fd1: u32 = r00000fcf ^ r00000fd0;\n" : String).toByteArray.data.toList
theorem checked3953 : bytes3953=statementBytes 4049 (op3953.map lower) ∧ bytes3953.length=48 := by core033_kernel_decide
def op3954 : List WordIR.Op := [.bnot 4049]
def bytes3954 : Bytes := ("    let r00000fd2: u32 = !r00000fd1;\n" : String).toByteArray.data.toList
theorem checked3954 : bytes3954=statementBytes 4050 (op3954.map lower) ∧ bytes3954.length=37 := by core033_kernel_decide
def op3955 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3955 : Bytes := ("    let r00000fd3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3955 : bytes3955=statementBytes 4051 (op3955.map lower) ∧ bytes3955.length=41 := by core033_kernel_decide
def op3956 : List WordIR.Op := [.badd 4050 4051]
def bytes3956 : Bytes := ("    let r00000fd4: u32 = r00000fd2.wrapping_add(r00000fd3);\n" : String).toByteArray.data.toList
theorem checked3956 : bytes3956=statementBytes 4052 (op3956.map lower) ∧ bytes3956.length=60 := by core033_kernel_decide
def op3957 : List WordIR.Op := [.bnot 4052]
def bytes3957 : Bytes := ("    let r00000fd5: u32 = !r00000fd4;\n" : String).toByteArray.data.toList
theorem checked3957 : bytes3957=statementBytes 4053 (op3957.map lower) ∧ bytes3957.length=37 := by core033_kernel_decide
def op3958 : List WordIR.Op := [.band 4053 1887]
def bytes3958 : Bytes := ("    let r00000fd6: u32 = r00000fd5 & r0000075f;\n" : String).toByteArray.data.toList
theorem checked3958 : bytes3958=statementBytes 4054 (op3958.map lower) ∧ bytes3958.length=48 := by core033_kernel_decide
def op3959 : List WordIR.Op := [.bxor 4028 4054]
def bytes3959 : Bytes := ("    let r00000fd7: u32 = r00000fbc ^ r00000fd6;\n" : String).toByteArray.data.toList
theorem checked3959 : bytes3959=statementBytes 4055 (op3959.map lower) ∧ bytes3959.length=48 := by core033_kernel_decide
def op3960 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3960 : Bytes := ("    let r00000fd8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3960 : bytes3960=statementBytes 4056 (op3960.map lower) ∧ bytes3960.length=41 := by core033_kernel_decide
def op3961 : List WordIR.Op := [.bxor 616 4056]
def bytes3961 : Bytes := ("    let r00000fd9: u32 = r00000268 ^ r00000fd8;\n" : String).toByteArray.data.toList
theorem checked3961 : bytes3961=statementBytes 4057 (op3961.map lower) ∧ bytes3961.length=48 := by core033_kernel_decide
def op3962 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3962 : Bytes := ("    let r00000fda: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3962 : bytes3962=statementBytes 4058 (op3962.map lower) ∧ bytes3962.length=41 := by core033_kernel_decide
def op3963 : List WordIR.Op := [.bnot 4058]
def bytes3963 : Bytes := ("    let r00000fdb: u32 = !r00000fda;\n" : String).toByteArray.data.toList
theorem checked3963 : bytes3963=statementBytes 4059 (op3963.map lower) ∧ bytes3963.length=37 := by core033_kernel_decide
def op3964 : List WordIR.Op := [.band 4057 4059]
def bytes3964 : Bytes := ("    let r00000fdc: u32 = r00000fd9 & r00000fdb;\n" : String).toByteArray.data.toList
theorem checked3964 : bytes3964=statementBytes 4060 (op3964.map lower) ∧ bytes3964.length=48 := by core033_kernel_decide
def op3965 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3965 : Bytes := ("    let r00000fdd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3965 : bytes3965=statementBytes 4061 (op3965.map lower) ∧ bytes3965.length=41 := by core033_kernel_decide
def op3966 : List WordIR.Op := [.bxor 616 4061]
def bytes3966 : Bytes := ("    let r00000fde: u32 = r00000268 ^ r00000fdd;\n" : String).toByteArray.data.toList
theorem checked3966 : bytes3966=statementBytes 4062 (op3966.map lower) ∧ bytes3966.length=48 := by core033_kernel_decide
def op3967 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3967 : Bytes := ("    let r00000fdf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3967 : bytes3967=statementBytes 4063 (op3967.map lower) ∧ bytes3967.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3904,op3905,op3906,op3907,op3908,op3909,op3910,op3911,op3912,op3913,op3914,op3915,op3916,op3917,op3918,op3919,op3920,op3921,op3922,op3923,op3924,op3925,op3926,op3927,op3928,op3929,op3930,op3931,op3932,op3933,op3934,op3935,op3936,op3937,op3938,op3939,op3940,op3941,op3942,op3943,op3944,op3945,op3946,op3947,op3948,op3949,op3950,op3951,op3952,op3953,op3954,op3955,op3956,op3957,op3958,op3959,op3960,op3961,op3962,op3963,op3964,op3965,op3966,op3967]
def chunks : List Bytes := [bytes3904,bytes3905,bytes3906,bytes3907,bytes3908,bytes3909,bytes3910,bytes3911,bytes3912,bytes3913,bytes3914,bytes3915,bytes3916,bytes3917,bytes3918,bytes3919,bytes3920,bytes3921,bytes3922,bytes3923,bytes3924,bytes3925,bytes3926,bytes3927,bytes3928,bytes3929,bytes3930,bytes3931,bytes3932,bytes3933,bytes3934,bytes3935,bytes3936,bytes3937,bytes3938,bytes3939,bytes3940,bytes3941,bytes3942,bytes3943,bytes3944,bytes3945,bytes3946,bytes3947,bytes3948,bytes3949,bytes3950,bytes3951,bytes3952,bytes3953,bytes3954,bytes3955,bytes3956,bytes3957,bytes3958,bytes3959,bytes3960,bytes3961,bytes3962,bytes3963,bytes3964,bytes3965,bytes3966,bytes3967]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4000 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3904.1 (.cons _ _ _ _ _ checked3905.1 (.cons _ _ _ _ _ checked3906.1 (.cons _ _ _ _ _ checked3907.1 (.cons _ _ _ _ _ checked3908.1 (.cons _ _ _ _ _ checked3909.1 (.cons _ _ _ _ _ checked3910.1 (.cons _ _ _ _ _ checked3911.1 (.cons _ _ _ _ _ checked3912.1 (.cons _ _ _ _ _ checked3913.1 (.cons _ _ _ _ _ checked3914.1 (.cons _ _ _ _ _ checked3915.1 (.cons _ _ _ _ _ checked3916.1 (.cons _ _ _ _ _ checked3917.1 (.cons _ _ _ _ _ checked3918.1 (.cons _ _ _ _ _ checked3919.1 (.cons _ _ _ _ _ checked3920.1 (.cons _ _ _ _ _ checked3921.1 (.cons _ _ _ _ _ checked3922.1 (.cons _ _ _ _ _ checked3923.1 (.cons _ _ _ _ _ checked3924.1 (.cons _ _ _ _ _ checked3925.1 (.cons _ _ _ _ _ checked3926.1 (.cons _ _ _ _ _ checked3927.1 (.cons _ _ _ _ _ checked3928.1 (.cons _ _ _ _ _ checked3929.1 (.cons _ _ _ _ _ checked3930.1 (.cons _ _ _ _ _ checked3931.1 (.cons _ _ _ _ _ checked3932.1 (.cons _ _ _ _ _ checked3933.1 (.cons _ _ _ _ _ checked3934.1 (.cons _ _ _ _ _ checked3935.1 (.cons _ _ _ _ _ checked3936.1 (.cons _ _ _ _ _ checked3937.1 (.cons _ _ _ _ _ checked3938.1 (.cons _ _ _ _ _ checked3939.1 (.cons _ _ _ _ _ checked3940.1 (.cons _ _ _ _ _ checked3941.1 (.cons _ _ _ _ _ checked3942.1 (.cons _ _ _ _ _ checked3943.1 (.cons _ _ _ _ _ checked3944.1 (.cons _ _ _ _ _ checked3945.1 (.cons _ _ _ _ _ checked3946.1 (.cons _ _ _ _ _ checked3947.1 (.cons _ _ _ _ _ checked3948.1 (.cons _ _ _ _ _ checked3949.1 (.cons _ _ _ _ _ checked3950.1 (.cons _ _ _ _ _ checked3951.1 (.cons _ _ _ _ _ checked3952.1 (.cons _ _ _ _ _ checked3953.1 (.cons _ _ _ _ _ checked3954.1 (.cons _ _ _ _ _ checked3955.1 (.cons _ _ _ _ _ checked3956.1 (.cons _ _ _ _ _ checked3957.1 (.cons _ _ _ _ _ checked3958.1 (.cons _ _ _ _ _ checked3959.1 (.cons _ _ _ _ _ checked3960.1 (.cons _ _ _ _ _ checked3961.1 (.cons _ _ _ _ _ checked3962.1 (.cons _ _ _ _ _ checked3963.1 (.cons _ _ _ _ _ checked3964.1 (.cons _ _ _ _ _ checked3965.1 (.cons _ _ _ _ _ checked3966.1 (.cons _ _ _ _ _ checked3967.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4000 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3904.2,checked3905.2,checked3906.2,checked3907.2,checked3908.2,checked3909.2,checked3910.2,checked3911.2,checked3912.2,checked3913.2,checked3914.2,checked3915.2,checked3916.2,checked3917.2,checked3918.2,checked3919.2,checked3920.2,checked3921.2,checked3922.2,checked3923.2,checked3924.2,checked3925.2,checked3926.2,checked3927.2,checked3928.2,checked3929.2,checked3930.2,checked3931.2,checked3932.2,checked3933.2,checked3934.2,checked3935.2,checked3936.2,checked3937.2,checked3938.2,checked3939.2,checked3940.2,checked3941.2,checked3942.2,checked3943.2,checked3944.2,checked3945.2,checked3946.2,checked3947.2,checked3948.2,checked3949.2,checked3950.2,checked3951.2,checked3952.2,checked3953.2,checked3954.2,checked3955.2,checked3956.2,checked3957.2,checked3958.2,checked3959.2,checked3960.2,checked3961.2,checked3962.2,checked3963.2,checked3964.2,checked3965.2,checked3966.2,checked3967.2]
  decide
end ArtifactPairedPathRoundGroup61
