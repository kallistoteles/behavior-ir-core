import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup62
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3968 : List WordIR.Op := [.bnot 4010]
def bytes3968 : Bytes := ("    let r00000fab: u32 = !r00000faa;\n" : String).toByteArray.data.toList
theorem checked3968 : bytes3968=statementBytes 4011 (op3968.map lower) ∧ bytes3968.length=37 := by core033_kernel_decide
def op3969 : List WordIR.Op := [.band 4009 4011]
def bytes3969 : Bytes := ("    let r00000fac: u32 = r00000fa9 & r00000fab;\n" : String).toByteArray.data.toList
theorem checked3969 : bytes3969=statementBytes 4012 (op3969.map lower) ∧ bytes3969.length=48 := by core033_kernel_decide
def op3970 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3970 : Bytes := ("    let r00000fad: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3970 : bytes3970=statementBytes 4013 (op3970.map lower) ∧ bytes3970.length=41 := by core033_kernel_decide
def op3971 : List WordIR.Op := [.bxor 0 4013]
def bytes3971 : Bytes := ("    let r00000fae: u32 = r00000000 ^ r00000fad;\n" : String).toByteArray.data.toList
theorem checked3971 : bytes3971=statementBytes 4014 (op3971.map lower) ∧ bytes3971.length=48 := by core033_kernel_decide
def op3972 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3972 : Bytes := ("    let r00000faf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3972 : bytes3972=statementBytes 4015 (op3972.map lower) ∧ bytes3972.length=41 := by core033_kernel_decide
def op3973 : List WordIR.Op := [.bnot 4015]
def bytes3973 : Bytes := ("    let r00000fb0: u32 = !r00000faf;\n" : String).toByteArray.data.toList
theorem checked3973 : bytes3973=statementBytes 4016 (op3973.map lower) ∧ bytes3973.length=37 := by core033_kernel_decide
def op3974 : List WordIR.Op := [.bxor 4014 4016]
def bytes3974 : Bytes := ("    let r00000fb1: u32 = r00000fae ^ r00000fb0;\n" : String).toByteArray.data.toList
theorem checked3974 : bytes3974=statementBytes 4017 (op3974.map lower) ∧ bytes3974.length=48 := by core033_kernel_decide
def op3975 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3975 : Bytes := ("    let r00000fb2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3975 : bytes3975=statementBytes 4018 (op3975.map lower) ∧ bytes3975.length=41 := by core033_kernel_decide
def op3976 : List WordIR.Op := [.bxor 0 4018]
def bytes3976 : Bytes := ("    let r00000fb3: u32 = r00000000 ^ r00000fb2;\n" : String).toByteArray.data.toList
theorem checked3976 : bytes3976=statementBytes 4019 (op3976.map lower) ∧ bytes3976.length=48 := by core033_kernel_decide
def op3977 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3977 : Bytes := ("    let r00000fb4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3977 : bytes3977=statementBytes 4020 (op3977.map lower) ∧ bytes3977.length=41 := by core033_kernel_decide
def op3978 : List WordIR.Op := [.bnot 4020]
def bytes3978 : Bytes := ("    let r00000fb5: u32 = !r00000fb4;\n" : String).toByteArray.data.toList
theorem checked3978 : bytes3978=statementBytes 4021 (op3978.map lower) ∧ bytes3978.length=37 := by core033_kernel_decide
def op3979 : List WordIR.Op := [.badd 4019 4021]
def bytes3979 : Bytes := ("    let r00000fb6: u32 = r00000fb3.wrapping_add(r00000fb5);\n" : String).toByteArray.data.toList
theorem checked3979 : bytes3979=statementBytes 4022 (op3979.map lower) ∧ bytes3979.length=60 := by core033_kernel_decide
def op3980 : List WordIR.Op := [.bnot 4022]
def bytes3980 : Bytes := ("    let r00000fb7: u32 = !r00000fb6;\n" : String).toByteArray.data.toList
theorem checked3980 : bytes3980=statementBytes 4023 (op3980.map lower) ∧ bytes3980.length=37 := by core033_kernel_decide
def op3981 : List WordIR.Op := [.band 4017 4023]
def bytes3981 : Bytes := ("    let r00000fb8: u32 = r00000fb1 & r00000fb7;\n" : String).toByteArray.data.toList
theorem checked3981 : bytes3981=statementBytes 4024 (op3981.map lower) ∧ bytes3981.length=48 := by core033_kernel_decide
def op3982 : List WordIR.Op := [.bxor 4012 4024]
def bytes3982 : Bytes := ("    let r00000fb9: u32 = r00000fac ^ r00000fb8;\n" : String).toByteArray.data.toList
theorem checked3982 : bytes3982=statementBytes 4025 (op3982.map lower) ∧ bytes3982.length=48 := by core033_kernel_decide
def op3983 : List WordIR.Op := [.shr 4025 31]
def bytes3983 : Bytes := ("    let r00000fba: u32 = r00000fb9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3983 : bytes3983=statementBytes 4026 (op3983.map lower) ∧ bytes3983.length=54 := by core033_kernel_decide
def op3984 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3984 : Bytes := ("    let r00000fbb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3984 : bytes3984=statementBytes 4027 (op3984.map lower) ∧ bytes3984.length=41 := by core033_kernel_decide
def op3985 : List WordIR.Op := [.bxor 4026 4027]
def bytes3985 : Bytes := ("    let r00000fbc: u32 = r00000fba ^ r00000fbb;\n" : String).toByteArray.data.toList
theorem checked3985 : bytes3985=statementBytes 4028 (op3985.map lower) ∧ bytes3985.length=48 := by core033_kernel_decide
def op3986 : List WordIR.Op := [.bnot 4028]
def bytes3986 : Bytes := ("    let r00000fbd: u32 = !r00000fbc;\n" : String).toByteArray.data.toList
theorem checked3986 : bytes3986=statementBytes 4029 (op3986.map lower) ∧ bytes3986.length=37 := by core033_kernel_decide
def op3987 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3987 : Bytes := ("    let r00000fbe: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3987 : bytes3987=statementBytes 4030 (op3987.map lower) ∧ bytes3987.length=41 := by core033_kernel_decide
def op3988 : List WordIR.Op := [.badd 4029 4030]
def bytes3988 : Bytes := ("    let r00000fbf: u32 = r00000fbd.wrapping_add(r00000fbe);\n" : String).toByteArray.data.toList
theorem checked3988 : bytes3988=statementBytes 4031 (op3988.map lower) ∧ bytes3988.length=60 := by core033_kernel_decide
def op3989 : List WordIR.Op := [.band 4031 1103]
def bytes3989 : Bytes := ("    let r00000fc0: u32 = r00000fbf & r0000044f;\n" : String).toByteArray.data.toList
theorem checked3989 : bytes3989=statementBytes 4032 (op3989.map lower) ∧ bytes3989.length=48 := by core033_kernel_decide
def op3990 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3990 : Bytes := ("    let r00000fc1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3990 : bytes3990=statementBytes 4033 (op3990.map lower) ∧ bytes3990.length=41 := by core033_kernel_decide
def op3991 : List WordIR.Op := [.bxor 0 4033]
def bytes3991 : Bytes := ("    let r00000fc2: u32 = r00000000 ^ r00000fc1;\n" : String).toByteArray.data.toList
theorem checked3991 : bytes3991=statementBytes 4034 (op3991.map lower) ∧ bytes3991.length=48 := by core033_kernel_decide
def op3992 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3992 : Bytes := ("    let r00000fc3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3992 : bytes3992=statementBytes 4035 (op3992.map lower) ∧ bytes3992.length=41 := by core033_kernel_decide
def op3993 : List WordIR.Op := [.bnot 4035]
def bytes3993 : Bytes := ("    let r00000fc4: u32 = !r00000fc3;\n" : String).toByteArray.data.toList
theorem checked3993 : bytes3993=statementBytes 4036 (op3993.map lower) ∧ bytes3993.length=37 := by core033_kernel_decide
def op3994 : List WordIR.Op := [.band 4034 4036]
def bytes3994 : Bytes := ("    let r00000fc5: u32 = r00000fc2 & r00000fc4;\n" : String).toByteArray.data.toList
theorem checked3994 : bytes3994=statementBytes 4037 (op3994.map lower) ∧ bytes3994.length=48 := by core033_kernel_decide
def op3995 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3995 : Bytes := ("    let r00000fc6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3995 : bytes3995=statementBytes 4038 (op3995.map lower) ∧ bytes3995.length=41 := by core033_kernel_decide
def op3996 : List WordIR.Op := [.bxor 0 4038]
def bytes3996 : Bytes := ("    let r00000fc7: u32 = r00000000 ^ r00000fc6;\n" : String).toByteArray.data.toList
theorem checked3996 : bytes3996=statementBytes 4039 (op3996.map lower) ∧ bytes3996.length=48 := by core033_kernel_decide
def op3997 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3997 : Bytes := ("    let r00000fc8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3997 : bytes3997=statementBytes 4040 (op3997.map lower) ∧ bytes3997.length=41 := by core033_kernel_decide
def op3998 : List WordIR.Op := [.bnot 4040]
def bytes3998 : Bytes := ("    let r00000fc9: u32 = !r00000fc8;\n" : String).toByteArray.data.toList
theorem checked3998 : bytes3998=statementBytes 4041 (op3998.map lower) ∧ bytes3998.length=37 := by core033_kernel_decide
def op3999 : List WordIR.Op := [.bxor 4039 4041]
def bytes3999 : Bytes := ("    let r00000fca: u32 = r00000fc7 ^ r00000fc9;\n" : String).toByteArray.data.toList
theorem checked3999 : bytes3999=statementBytes 4042 (op3999.map lower) ∧ bytes3999.length=48 := by core033_kernel_decide
def op4000 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4000 : Bytes := ("    let r00000fcb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4000 : bytes4000=statementBytes 4043 (op4000.map lower) ∧ bytes4000.length=41 := by core033_kernel_decide
def op4001 : List WordIR.Op := [.bxor 0 4043]
def bytes4001 : Bytes := ("    let r00000fcc: u32 = r00000000 ^ r00000fcb;\n" : String).toByteArray.data.toList
theorem checked4001 : bytes4001=statementBytes 4044 (op4001.map lower) ∧ bytes4001.length=48 := by core033_kernel_decide
def op4002 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4002 : Bytes := ("    let r00000fcd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4002 : bytes4002=statementBytes 4045 (op4002.map lower) ∧ bytes4002.length=41 := by core033_kernel_decide
def op4003 : List WordIR.Op := [.bnot 4045]
def bytes4003 : Bytes := ("    let r00000fce: u32 = !r00000fcd;\n" : String).toByteArray.data.toList
theorem checked4003 : bytes4003=statementBytes 4046 (op4003.map lower) ∧ bytes4003.length=37 := by core033_kernel_decide
def op4004 : List WordIR.Op := [.badd 4044 4046]
def bytes4004 : Bytes := ("    let r00000fcf: u32 = r00000fcc.wrapping_add(r00000fce);\n" : String).toByteArray.data.toList
theorem checked4004 : bytes4004=statementBytes 4047 (op4004.map lower) ∧ bytes4004.length=60 := by core033_kernel_decide
def op4005 : List WordIR.Op := [.bnot 4047]
def bytes4005 : Bytes := ("    let r00000fd0: u32 = !r00000fcf;\n" : String).toByteArray.data.toList
theorem checked4005 : bytes4005=statementBytes 4048 (op4005.map lower) ∧ bytes4005.length=37 := by core033_kernel_decide
def op4006 : List WordIR.Op := [.band 4042 4048]
def bytes4006 : Bytes := ("    let r00000fd1: u32 = r00000fca & r00000fd0;\n" : String).toByteArray.data.toList
theorem checked4006 : bytes4006=statementBytes 4049 (op4006.map lower) ∧ bytes4006.length=48 := by core033_kernel_decide
def op4007 : List WordIR.Op := [.bxor 4037 4049]
def bytes4007 : Bytes := ("    let r00000fd2: u32 = r00000fc5 ^ r00000fd1;\n" : String).toByteArray.data.toList
theorem checked4007 : bytes4007=statementBytes 4050 (op4007.map lower) ∧ bytes4007.length=48 := by core033_kernel_decide
def op4008 : List WordIR.Op := [.shr 4050 31]
def bytes4008 : Bytes := ("    let r00000fd3: u32 = r00000fd2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4008 : bytes4008=statementBytes 4051 (op4008.map lower) ∧ bytes4008.length=54 := by core033_kernel_decide
def op4009 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4009 : Bytes := ("    let r00000fd4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4009 : bytes4009=statementBytes 4052 (op4009.map lower) ∧ bytes4009.length=41 := by core033_kernel_decide
def op4010 : List WordIR.Op := [.bxor 4051 4052]
def bytes4010 : Bytes := ("    let r00000fd5: u32 = r00000fd3 ^ r00000fd4;\n" : String).toByteArray.data.toList
theorem checked4010 : bytes4010=statementBytes 4053 (op4010.map lower) ∧ bytes4010.length=48 := by core033_kernel_decide
def op4011 : List WordIR.Op := [.bnot 4053]
def bytes4011 : Bytes := ("    let r00000fd6: u32 = !r00000fd5;\n" : String).toByteArray.data.toList
theorem checked4011 : bytes4011=statementBytes 4054 (op4011.map lower) ∧ bytes4011.length=37 := by core033_kernel_decide
def op4012 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4012 : Bytes := ("    let r00000fd7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4012 : bytes4012=statementBytes 4055 (op4012.map lower) ∧ bytes4012.length=41 := by core033_kernel_decide
def op4013 : List WordIR.Op := [.badd 4054 4055]
def bytes4013 : Bytes := ("    let r00000fd8: u32 = r00000fd6.wrapping_add(r00000fd7);\n" : String).toByteArray.data.toList
theorem checked4013 : bytes4013=statementBytes 4056 (op4013.map lower) ∧ bytes4013.length=60 := by core033_kernel_decide
def op4014 : List WordIR.Op := [.bnot 4056]
def bytes4014 : Bytes := ("    let r00000fd9: u32 = !r00000fd8;\n" : String).toByteArray.data.toList
theorem checked4014 : bytes4014=statementBytes 4057 (op4014.map lower) ∧ bytes4014.length=37 := by core033_kernel_decide
def op4015 : List WordIR.Op := [.band 4057 911]
def bytes4015 : Bytes := ("    let r00000fda: u32 = r00000fd9 & r0000038f;\n" : String).toByteArray.data.toList
theorem checked4015 : bytes4015=statementBytes 4058 (op4015.map lower) ∧ bytes4015.length=48 := by core033_kernel_decide
def op4016 : List WordIR.Op := [.bxor 4032 4058]
def bytes4016 : Bytes := ("    let r00000fdb: u32 = r00000fc0 ^ r00000fda;\n" : String).toByteArray.data.toList
theorem checked4016 : bytes4016=statementBytes 4059 (op4016.map lower) ∧ bytes4016.length=48 := by core033_kernel_decide
def op4017 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4017 : Bytes := ("    let r00000fdc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4017 : bytes4017=statementBytes 4060 (op4017.map lower) ∧ bytes4017.length=41 := by core033_kernel_decide
def op4018 : List WordIR.Op := [.bxor 0 4060]
def bytes4018 : Bytes := ("    let r00000fdd: u32 = r00000000 ^ r00000fdc;\n" : String).toByteArray.data.toList
theorem checked4018 : bytes4018=statementBytes 4061 (op4018.map lower) ∧ bytes4018.length=48 := by core033_kernel_decide
def op4019 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4019 : Bytes := ("    let r00000fde: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4019 : bytes4019=statementBytes 4062 (op4019.map lower) ∧ bytes4019.length=41 := by core033_kernel_decide
def op4020 : List WordIR.Op := [.bnot 4062]
def bytes4020 : Bytes := ("    let r00000fdf: u32 = !r00000fde;\n" : String).toByteArray.data.toList
theorem checked4020 : bytes4020=statementBytes 4063 (op4020.map lower) ∧ bytes4020.length=37 := by core033_kernel_decide
def op4021 : List WordIR.Op := [.band 4061 4063]
def bytes4021 : Bytes := ("    let r00000fe0: u32 = r00000fdd & r00000fdf;\n" : String).toByteArray.data.toList
theorem checked4021 : bytes4021=statementBytes 4064 (op4021.map lower) ∧ bytes4021.length=48 := by core033_kernel_decide
def op4022 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4022 : Bytes := ("    let r00000fe1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4022 : bytes4022=statementBytes 4065 (op4022.map lower) ∧ bytes4022.length=41 := by core033_kernel_decide
def op4023 : List WordIR.Op := [.bxor 0 4065]
def bytes4023 : Bytes := ("    let r00000fe2: u32 = r00000000 ^ r00000fe1;\n" : String).toByteArray.data.toList
theorem checked4023 : bytes4023=statementBytes 4066 (op4023.map lower) ∧ bytes4023.length=48 := by core033_kernel_decide
def op4024 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4024 : Bytes := ("    let r00000fe3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4024 : bytes4024=statementBytes 4067 (op4024.map lower) ∧ bytes4024.length=41 := by core033_kernel_decide
def op4025 : List WordIR.Op := [.bnot 4067]
def bytes4025 : Bytes := ("    let r00000fe4: u32 = !r00000fe3;\n" : String).toByteArray.data.toList
theorem checked4025 : bytes4025=statementBytes 4068 (op4025.map lower) ∧ bytes4025.length=37 := by core033_kernel_decide
def op4026 : List WordIR.Op := [.bxor 4066 4068]
def bytes4026 : Bytes := ("    let r00000fe5: u32 = r00000fe2 ^ r00000fe4;\n" : String).toByteArray.data.toList
theorem checked4026 : bytes4026=statementBytes 4069 (op4026.map lower) ∧ bytes4026.length=48 := by core033_kernel_decide
def op4027 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4027 : Bytes := ("    let r00000fe6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4027 : bytes4027=statementBytes 4070 (op4027.map lower) ∧ bytes4027.length=41 := by core033_kernel_decide
def op4028 : List WordIR.Op := [.bxor 0 4070]
def bytes4028 : Bytes := ("    let r00000fe7: u32 = r00000000 ^ r00000fe6;\n" : String).toByteArray.data.toList
theorem checked4028 : bytes4028=statementBytes 4071 (op4028.map lower) ∧ bytes4028.length=48 := by core033_kernel_decide
def op4029 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4029 : Bytes := ("    let r00000fe8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4029 : bytes4029=statementBytes 4072 (op4029.map lower) ∧ bytes4029.length=41 := by core033_kernel_decide
def op4030 : List WordIR.Op := [.bnot 4072]
def bytes4030 : Bytes := ("    let r00000fe9: u32 = !r00000fe8;\n" : String).toByteArray.data.toList
theorem checked4030 : bytes4030=statementBytes 4073 (op4030.map lower) ∧ bytes4030.length=37 := by core033_kernel_decide
def op4031 : List WordIR.Op := [.badd 4071 4073]
def bytes4031 : Bytes := ("    let r00000fea: u32 = r00000fe7.wrapping_add(r00000fe9);\n" : String).toByteArray.data.toList
theorem checked4031 : bytes4031=statementBytes 4074 (op4031.map lower) ∧ bytes4031.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3968,op3969,op3970,op3971,op3972,op3973,op3974,op3975,op3976,op3977,op3978,op3979,op3980,op3981,op3982,op3983,op3984,op3985,op3986,op3987,op3988,op3989,op3990,op3991,op3992,op3993,op3994,op3995,op3996,op3997,op3998,op3999,op4000,op4001,op4002,op4003,op4004,op4005,op4006,op4007,op4008,op4009,op4010,op4011,op4012,op4013,op4014,op4015,op4016,op4017,op4018,op4019,op4020,op4021,op4022,op4023,op4024,op4025,op4026,op4027,op4028,op4029,op4030,op4031]
def chunks : List Bytes := [bytes3968,bytes3969,bytes3970,bytes3971,bytes3972,bytes3973,bytes3974,bytes3975,bytes3976,bytes3977,bytes3978,bytes3979,bytes3980,bytes3981,bytes3982,bytes3983,bytes3984,bytes3985,bytes3986,bytes3987,bytes3988,bytes3989,bytes3990,bytes3991,bytes3992,bytes3993,bytes3994,bytes3995,bytes3996,bytes3997,bytes3998,bytes3999,bytes4000,bytes4001,bytes4002,bytes4003,bytes4004,bytes4005,bytes4006,bytes4007,bytes4008,bytes4009,bytes4010,bytes4011,bytes4012,bytes4013,bytes4014,bytes4015,bytes4016,bytes4017,bytes4018,bytes4019,bytes4020,bytes4021,bytes4022,bytes4023,bytes4024,bytes4025,bytes4026,bytes4027,bytes4028,bytes4029,bytes4030,bytes4031]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4011 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3968.1 (.cons _ _ _ _ _ checked3969.1 (.cons _ _ _ _ _ checked3970.1 (.cons _ _ _ _ _ checked3971.1 (.cons _ _ _ _ _ checked3972.1 (.cons _ _ _ _ _ checked3973.1 (.cons _ _ _ _ _ checked3974.1 (.cons _ _ _ _ _ checked3975.1 (.cons _ _ _ _ _ checked3976.1 (.cons _ _ _ _ _ checked3977.1 (.cons _ _ _ _ _ checked3978.1 (.cons _ _ _ _ _ checked3979.1 (.cons _ _ _ _ _ checked3980.1 (.cons _ _ _ _ _ checked3981.1 (.cons _ _ _ _ _ checked3982.1 (.cons _ _ _ _ _ checked3983.1 (.cons _ _ _ _ _ checked3984.1 (.cons _ _ _ _ _ checked3985.1 (.cons _ _ _ _ _ checked3986.1 (.cons _ _ _ _ _ checked3987.1 (.cons _ _ _ _ _ checked3988.1 (.cons _ _ _ _ _ checked3989.1 (.cons _ _ _ _ _ checked3990.1 (.cons _ _ _ _ _ checked3991.1 (.cons _ _ _ _ _ checked3992.1 (.cons _ _ _ _ _ checked3993.1 (.cons _ _ _ _ _ checked3994.1 (.cons _ _ _ _ _ checked3995.1 (.cons _ _ _ _ _ checked3996.1 (.cons _ _ _ _ _ checked3997.1 (.cons _ _ _ _ _ checked3998.1 (.cons _ _ _ _ _ checked3999.1 (.cons _ _ _ _ _ checked4000.1 (.cons _ _ _ _ _ checked4001.1 (.cons _ _ _ _ _ checked4002.1 (.cons _ _ _ _ _ checked4003.1 (.cons _ _ _ _ _ checked4004.1 (.cons _ _ _ _ _ checked4005.1 (.cons _ _ _ _ _ checked4006.1 (.cons _ _ _ _ _ checked4007.1 (.cons _ _ _ _ _ checked4008.1 (.cons _ _ _ _ _ checked4009.1 (.cons _ _ _ _ _ checked4010.1 (.cons _ _ _ _ _ checked4011.1 (.cons _ _ _ _ _ checked4012.1 (.cons _ _ _ _ _ checked4013.1 (.cons _ _ _ _ _ checked4014.1 (.cons _ _ _ _ _ checked4015.1 (.cons _ _ _ _ _ checked4016.1 (.cons _ _ _ _ _ checked4017.1 (.cons _ _ _ _ _ checked4018.1 (.cons _ _ _ _ _ checked4019.1 (.cons _ _ _ _ _ checked4020.1 (.cons _ _ _ _ _ checked4021.1 (.cons _ _ _ _ _ checked4022.1 (.cons _ _ _ _ _ checked4023.1 (.cons _ _ _ _ _ checked4024.1 (.cons _ _ _ _ _ checked4025.1 (.cons _ _ _ _ _ checked4026.1 (.cons _ _ _ _ _ checked4027.1 (.cons _ _ _ _ _ checked4028.1 (.cons _ _ _ _ _ checked4029.1 (.cons _ _ _ _ _ checked4030.1 (.cons _ _ _ _ _ checked4031.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4011 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3968.2,checked3969.2,checked3970.2,checked3971.2,checked3972.2,checked3973.2,checked3974.2,checked3975.2,checked3976.2,checked3977.2,checked3978.2,checked3979.2,checked3980.2,checked3981.2,checked3982.2,checked3983.2,checked3984.2,checked3985.2,checked3986.2,checked3987.2,checked3988.2,checked3989.2,checked3990.2,checked3991.2,checked3992.2,checked3993.2,checked3994.2,checked3995.2,checked3996.2,checked3997.2,checked3998.2,checked3999.2,checked4000.2,checked4001.2,checked4002.2,checked4003.2,checked4004.2,checked4005.2,checked4006.2,checked4007.2,checked4008.2,checked4009.2,checked4010.2,checked4011.2,checked4012.2,checked4013.2,checked4014.2,checked4015.2,checked4016.2,checked4017.2,checked4018.2,checked4019.2,checked4020.2,checked4021.2,checked4022.2,checked4023.2,checked4024.2,checked4025.2,checked4026.2,checked4027.2,checked4028.2,checked4029.2,checked4030.2,checked4031.2]
  decide
end ArtifactFrameHashControllerGroup62
