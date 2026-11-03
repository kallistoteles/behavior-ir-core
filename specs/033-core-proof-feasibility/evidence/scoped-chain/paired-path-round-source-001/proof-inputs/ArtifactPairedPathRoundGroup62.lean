import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup62
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3968 : List WordIR.Op := [.bnot 4063]
def bytes3968 : Bytes := ("    let r00000fe0: u32 = !r00000fdf;\n" : String).toByteArray.data.toList
theorem checked3968 : bytes3968=statementBytes 4064 (op3968.map lower) ∧ bytes3968.length=37 := by core033_kernel_decide
def op3969 : List WordIR.Op := [.bxor 4062 4064]
def bytes3969 : Bytes := ("    let r00000fe1: u32 = r00000fde ^ r00000fe0;\n" : String).toByteArray.data.toList
theorem checked3969 : bytes3969=statementBytes 4065 (op3969.map lower) ∧ bytes3969.length=48 := by core033_kernel_decide
def op3970 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3970 : Bytes := ("    let r00000fe2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3970 : bytes3970=statementBytes 4066 (op3970.map lower) ∧ bytes3970.length=41 := by core033_kernel_decide
def op3971 : List WordIR.Op := [.bxor 616 4066]
def bytes3971 : Bytes := ("    let r00000fe3: u32 = r00000268 ^ r00000fe2;\n" : String).toByteArray.data.toList
theorem checked3971 : bytes3971=statementBytes 4067 (op3971.map lower) ∧ bytes3971.length=48 := by core033_kernel_decide
def op3972 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3972 : Bytes := ("    let r00000fe4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3972 : bytes3972=statementBytes 4068 (op3972.map lower) ∧ bytes3972.length=41 := by core033_kernel_decide
def op3973 : List WordIR.Op := [.bnot 4068]
def bytes3973 : Bytes := ("    let r00000fe5: u32 = !r00000fe4;\n" : String).toByteArray.data.toList
theorem checked3973 : bytes3973=statementBytes 4069 (op3973.map lower) ∧ bytes3973.length=37 := by core033_kernel_decide
def op3974 : List WordIR.Op := [.badd 4067 4069]
def bytes3974 : Bytes := ("    let r00000fe6: u32 = r00000fe3.wrapping_add(r00000fe5);\n" : String).toByteArray.data.toList
theorem checked3974 : bytes3974=statementBytes 4070 (op3974.map lower) ∧ bytes3974.length=60 := by core033_kernel_decide
def op3975 : List WordIR.Op := [.bnot 4070]
def bytes3975 : Bytes := ("    let r00000fe7: u32 = !r00000fe6;\n" : String).toByteArray.data.toList
theorem checked3975 : bytes3975=statementBytes 4071 (op3975.map lower) ∧ bytes3975.length=37 := by core033_kernel_decide
def op3976 : List WordIR.Op := [.band 4065 4071]
def bytes3976 : Bytes := ("    let r00000fe8: u32 = r00000fe1 & r00000fe7;\n" : String).toByteArray.data.toList
theorem checked3976 : bytes3976=statementBytes 4072 (op3976.map lower) ∧ bytes3976.length=48 := by core033_kernel_decide
def op3977 : List WordIR.Op := [.bxor 4060 4072]
def bytes3977 : Bytes := ("    let r00000fe9: u32 = r00000fdc ^ r00000fe8;\n" : String).toByteArray.data.toList
theorem checked3977 : bytes3977=statementBytes 4073 (op3977.map lower) ∧ bytes3977.length=48 := by core033_kernel_decide
def op3978 : List WordIR.Op := [.shr 4073 31]
def bytes3978 : Bytes := ("    let r00000fea: u32 = r00000fe9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3978 : bytes3978=statementBytes 4074 (op3978.map lower) ∧ bytes3978.length=54 := by core033_kernel_decide
def op3979 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3979 : Bytes := ("    let r00000feb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3979 : bytes3979=statementBytes 4075 (op3979.map lower) ∧ bytes3979.length=41 := by core033_kernel_decide
def op3980 : List WordIR.Op := [.bxor 4074 4075]
def bytes3980 : Bytes := ("    let r00000fec: u32 = r00000fea ^ r00000feb;\n" : String).toByteArray.data.toList
theorem checked3980 : bytes3980=statementBytes 4076 (op3980.map lower) ∧ bytes3980.length=48 := by core033_kernel_decide
def op3981 : List WordIR.Op := [.bnot 4076]
def bytes3981 : Bytes := ("    let r00000fed: u32 = !r00000fec;\n" : String).toByteArray.data.toList
theorem checked3981 : bytes3981=statementBytes 4077 (op3981.map lower) ∧ bytes3981.length=37 := by core033_kernel_decide
def op3982 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3982 : Bytes := ("    let r00000fee: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3982 : bytes3982=statementBytes 4078 (op3982.map lower) ∧ bytes3982.length=41 := by core033_kernel_decide
def op3983 : List WordIR.Op := [.badd 4077 4078]
def bytes3983 : Bytes := ("    let r00000fef: u32 = r00000fed.wrapping_add(r00000fee);\n" : String).toByteArray.data.toList
theorem checked3983 : bytes3983=statementBytes 4079 (op3983.map lower) ∧ bytes3983.length=60 := by core033_kernel_decide
def op3984 : List WordIR.Op := [.band 4079 2082]
def bytes3984 : Bytes := ("    let r00000ff0: u32 = r00000fef & r00000822;\n" : String).toByteArray.data.toList
theorem checked3984 : bytes3984=statementBytes 4080 (op3984.map lower) ∧ bytes3984.length=48 := by core033_kernel_decide
def op3985 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3985 : Bytes := ("    let r00000ff1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3985 : bytes3985=statementBytes 4081 (op3985.map lower) ∧ bytes3985.length=41 := by core033_kernel_decide
def op3986 : List WordIR.Op := [.bxor 616 4081]
def bytes3986 : Bytes := ("    let r00000ff2: u32 = r00000268 ^ r00000ff1;\n" : String).toByteArray.data.toList
theorem checked3986 : bytes3986=statementBytes 4082 (op3986.map lower) ∧ bytes3986.length=48 := by core033_kernel_decide
def op3987 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3987 : Bytes := ("    let r00000ff3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3987 : bytes3987=statementBytes 4083 (op3987.map lower) ∧ bytes3987.length=41 := by core033_kernel_decide
def op3988 : List WordIR.Op := [.bnot 4083]
def bytes3988 : Bytes := ("    let r00000ff4: u32 = !r00000ff3;\n" : String).toByteArray.data.toList
theorem checked3988 : bytes3988=statementBytes 4084 (op3988.map lower) ∧ bytes3988.length=37 := by core033_kernel_decide
def op3989 : List WordIR.Op := [.band 4082 4084]
def bytes3989 : Bytes := ("    let r00000ff5: u32 = r00000ff2 & r00000ff4;\n" : String).toByteArray.data.toList
theorem checked3989 : bytes3989=statementBytes 4085 (op3989.map lower) ∧ bytes3989.length=48 := by core033_kernel_decide
def op3990 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3990 : Bytes := ("    let r00000ff6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3990 : bytes3990=statementBytes 4086 (op3990.map lower) ∧ bytes3990.length=41 := by core033_kernel_decide
def op3991 : List WordIR.Op := [.bxor 616 4086]
def bytes3991 : Bytes := ("    let r00000ff7: u32 = r00000268 ^ r00000ff6;\n" : String).toByteArray.data.toList
theorem checked3991 : bytes3991=statementBytes 4087 (op3991.map lower) ∧ bytes3991.length=48 := by core033_kernel_decide
def op3992 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3992 : Bytes := ("    let r00000ff8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3992 : bytes3992=statementBytes 4088 (op3992.map lower) ∧ bytes3992.length=41 := by core033_kernel_decide
def op3993 : List WordIR.Op := [.bnot 4088]
def bytes3993 : Bytes := ("    let r00000ff9: u32 = !r00000ff8;\n" : String).toByteArray.data.toList
theorem checked3993 : bytes3993=statementBytes 4089 (op3993.map lower) ∧ bytes3993.length=37 := by core033_kernel_decide
def op3994 : List WordIR.Op := [.bxor 4087 4089]
def bytes3994 : Bytes := ("    let r00000ffa: u32 = r00000ff7 ^ r00000ff9;\n" : String).toByteArray.data.toList
theorem checked3994 : bytes3994=statementBytes 4090 (op3994.map lower) ∧ bytes3994.length=48 := by core033_kernel_decide
def op3995 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3995 : Bytes := ("    let r00000ffb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3995 : bytes3995=statementBytes 4091 (op3995.map lower) ∧ bytes3995.length=41 := by core033_kernel_decide
def op3996 : List WordIR.Op := [.bxor 616 4091]
def bytes3996 : Bytes := ("    let r00000ffc: u32 = r00000268 ^ r00000ffb;\n" : String).toByteArray.data.toList
theorem checked3996 : bytes3996=statementBytes 4092 (op3996.map lower) ∧ bytes3996.length=48 := by core033_kernel_decide
def op3997 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3997 : Bytes := ("    let r00000ffd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3997 : bytes3997=statementBytes 4093 (op3997.map lower) ∧ bytes3997.length=41 := by core033_kernel_decide
def op3998 : List WordIR.Op := [.bnot 4093]
def bytes3998 : Bytes := ("    let r00000ffe: u32 = !r00000ffd;\n" : String).toByteArray.data.toList
theorem checked3998 : bytes3998=statementBytes 4094 (op3998.map lower) ∧ bytes3998.length=37 := by core033_kernel_decide
def op3999 : List WordIR.Op := [.badd 4092 4094]
def bytes3999 : Bytes := ("    let r00000fff: u32 = r00000ffc.wrapping_add(r00000ffe);\n" : String).toByteArray.data.toList
theorem checked3999 : bytes3999=statementBytes 4095 (op3999.map lower) ∧ bytes3999.length=60 := by core033_kernel_decide
def op4000 : List WordIR.Op := [.bnot 4095]
def bytes4000 : Bytes := ("    let r00001000: u32 = !r00000fff;\n" : String).toByteArray.data.toList
theorem checked4000 : bytes4000=statementBytes 4096 (op4000.map lower) ∧ bytes4000.length=37 := by core033_kernel_decide
def op4001 : List WordIR.Op := [.band 4090 4096]
def bytes4001 : Bytes := ("    let r00001001: u32 = r00000ffa & r00001000;\n" : String).toByteArray.data.toList
theorem checked4001 : bytes4001=statementBytes 4097 (op4001.map lower) ∧ bytes4001.length=48 := by core033_kernel_decide
def op4002 : List WordIR.Op := [.bxor 4085 4097]
def bytes4002 : Bytes := ("    let r00001002: u32 = r00000ff5 ^ r00001001;\n" : String).toByteArray.data.toList
theorem checked4002 : bytes4002=statementBytes 4098 (op4002.map lower) ∧ bytes4002.length=48 := by core033_kernel_decide
def op4003 : List WordIR.Op := [.shr 4098 31]
def bytes4003 : Bytes := ("    let r00001003: u32 = r00001002 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4003 : bytes4003=statementBytes 4099 (op4003.map lower) ∧ bytes4003.length=54 := by core033_kernel_decide
def op4004 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4004 : Bytes := ("    let r00001004: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4004 : bytes4004=statementBytes 4100 (op4004.map lower) ∧ bytes4004.length=41 := by core033_kernel_decide
def op4005 : List WordIR.Op := [.bxor 4099 4100]
def bytes4005 : Bytes := ("    let r00001005: u32 = r00001003 ^ r00001004;\n" : String).toByteArray.data.toList
theorem checked4005 : bytes4005=statementBytes 4101 (op4005.map lower) ∧ bytes4005.length=48 := by core033_kernel_decide
def op4006 : List WordIR.Op := [.bnot 4101]
def bytes4006 : Bytes := ("    let r00001006: u32 = !r00001005;\n" : String).toByteArray.data.toList
theorem checked4006 : bytes4006=statementBytes 4102 (op4006.map lower) ∧ bytes4006.length=37 := by core033_kernel_decide
def op4007 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4007 : Bytes := ("    let r00001007: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4007 : bytes4007=statementBytes 4103 (op4007.map lower) ∧ bytes4007.length=41 := by core033_kernel_decide
def op4008 : List WordIR.Op := [.badd 4102 4103]
def bytes4008 : Bytes := ("    let r00001008: u32 = r00001006.wrapping_add(r00001007);\n" : String).toByteArray.data.toList
theorem checked4008 : bytes4008=statementBytes 4104 (op4008.map lower) ∧ bytes4008.length=60 := by core033_kernel_decide
def op4009 : List WordIR.Op := [.bnot 4104]
def bytes4009 : Bytes := ("    let r00001009: u32 = !r00001008;\n" : String).toByteArray.data.toList
theorem checked4009 : bytes4009=statementBytes 4105 (op4009.map lower) ∧ bytes4009.length=37 := by core033_kernel_decide
def op4010 : List WordIR.Op := [.band 4105 1890]
def bytes4010 : Bytes := ("    let r0000100a: u32 = r00001009 & r00000762;\n" : String).toByteArray.data.toList
theorem checked4010 : bytes4010=statementBytes 4106 (op4010.map lower) ∧ bytes4010.length=48 := by core033_kernel_decide
def op4011 : List WordIR.Op := [.bxor 4080 4106]
def bytes4011 : Bytes := ("    let r0000100b: u32 = r00000ff0 ^ r0000100a;\n" : String).toByteArray.data.toList
theorem checked4011 : bytes4011=statementBytes 4107 (op4011.map lower) ∧ bytes4011.length=48 := by core033_kernel_decide
def op4012 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4012 : Bytes := ("    let r0000100c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4012 : bytes4012=statementBytes 4108 (op4012.map lower) ∧ bytes4012.length=41 := by core033_kernel_decide
def op4013 : List WordIR.Op := [.bxor 616 4108]
def bytes4013 : Bytes := ("    let r0000100d: u32 = r00000268 ^ r0000100c;\n" : String).toByteArray.data.toList
theorem checked4013 : bytes4013=statementBytes 4109 (op4013.map lower) ∧ bytes4013.length=48 := by core033_kernel_decide
def op4014 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4014 : Bytes := ("    let r0000100e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4014 : bytes4014=statementBytes 4110 (op4014.map lower) ∧ bytes4014.length=41 := by core033_kernel_decide
def op4015 : List WordIR.Op := [.bnot 4110]
def bytes4015 : Bytes := ("    let r0000100f: u32 = !r0000100e;\n" : String).toByteArray.data.toList
theorem checked4015 : bytes4015=statementBytes 4111 (op4015.map lower) ∧ bytes4015.length=37 := by core033_kernel_decide
def op4016 : List WordIR.Op := [.band 4109 4111]
def bytes4016 : Bytes := ("    let r00001010: u32 = r0000100d & r0000100f;\n" : String).toByteArray.data.toList
theorem checked4016 : bytes4016=statementBytes 4112 (op4016.map lower) ∧ bytes4016.length=48 := by core033_kernel_decide
def op4017 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4017 : Bytes := ("    let r00001011: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4017 : bytes4017=statementBytes 4113 (op4017.map lower) ∧ bytes4017.length=41 := by core033_kernel_decide
def op4018 : List WordIR.Op := [.bxor 616 4113]
def bytes4018 : Bytes := ("    let r00001012: u32 = r00000268 ^ r00001011;\n" : String).toByteArray.data.toList
theorem checked4018 : bytes4018=statementBytes 4114 (op4018.map lower) ∧ bytes4018.length=48 := by core033_kernel_decide
def op4019 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4019 : Bytes := ("    let r00001013: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4019 : bytes4019=statementBytes 4115 (op4019.map lower) ∧ bytes4019.length=41 := by core033_kernel_decide
def op4020 : List WordIR.Op := [.bnot 4115]
def bytes4020 : Bytes := ("    let r00001014: u32 = !r00001013;\n" : String).toByteArray.data.toList
theorem checked4020 : bytes4020=statementBytes 4116 (op4020.map lower) ∧ bytes4020.length=37 := by core033_kernel_decide
def op4021 : List WordIR.Op := [.bxor 4114 4116]
def bytes4021 : Bytes := ("    let r00001015: u32 = r00001012 ^ r00001014;\n" : String).toByteArray.data.toList
theorem checked4021 : bytes4021=statementBytes 4117 (op4021.map lower) ∧ bytes4021.length=48 := by core033_kernel_decide
def op4022 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4022 : Bytes := ("    let r00001016: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4022 : bytes4022=statementBytes 4118 (op4022.map lower) ∧ bytes4022.length=41 := by core033_kernel_decide
def op4023 : List WordIR.Op := [.bxor 616 4118]
def bytes4023 : Bytes := ("    let r00001017: u32 = r00000268 ^ r00001016;\n" : String).toByteArray.data.toList
theorem checked4023 : bytes4023=statementBytes 4119 (op4023.map lower) ∧ bytes4023.length=48 := by core033_kernel_decide
def op4024 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4024 : Bytes := ("    let r00001018: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4024 : bytes4024=statementBytes 4120 (op4024.map lower) ∧ bytes4024.length=41 := by core033_kernel_decide
def op4025 : List WordIR.Op := [.bnot 4120]
def bytes4025 : Bytes := ("    let r00001019: u32 = !r00001018;\n" : String).toByteArray.data.toList
theorem checked4025 : bytes4025=statementBytes 4121 (op4025.map lower) ∧ bytes4025.length=37 := by core033_kernel_decide
def op4026 : List WordIR.Op := [.badd 4119 4121]
def bytes4026 : Bytes := ("    let r0000101a: u32 = r00001017.wrapping_add(r00001019);\n" : String).toByteArray.data.toList
theorem checked4026 : bytes4026=statementBytes 4122 (op4026.map lower) ∧ bytes4026.length=60 := by core033_kernel_decide
def op4027 : List WordIR.Op := [.bnot 4122]
def bytes4027 : Bytes := ("    let r0000101b: u32 = !r0000101a;\n" : String).toByteArray.data.toList
theorem checked4027 : bytes4027=statementBytes 4123 (op4027.map lower) ∧ bytes4027.length=37 := by core033_kernel_decide
def op4028 : List WordIR.Op := [.band 4117 4123]
def bytes4028 : Bytes := ("    let r0000101c: u32 = r00001015 & r0000101b;\n" : String).toByteArray.data.toList
theorem checked4028 : bytes4028=statementBytes 4124 (op4028.map lower) ∧ bytes4028.length=48 := by core033_kernel_decide
def op4029 : List WordIR.Op := [.bxor 4112 4124]
def bytes4029 : Bytes := ("    let r0000101d: u32 = r00001010 ^ r0000101c;\n" : String).toByteArray.data.toList
theorem checked4029 : bytes4029=statementBytes 4125 (op4029.map lower) ∧ bytes4029.length=48 := by core033_kernel_decide
def op4030 : List WordIR.Op := [.shr 4125 31]
def bytes4030 : Bytes := ("    let r0000101e: u32 = r0000101d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4030 : bytes4030=statementBytes 4126 (op4030.map lower) ∧ bytes4030.length=54 := by core033_kernel_decide
def op4031 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4031 : Bytes := ("    let r0000101f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4031 : bytes4031=statementBytes 4127 (op4031.map lower) ∧ bytes4031.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3968,op3969,op3970,op3971,op3972,op3973,op3974,op3975,op3976,op3977,op3978,op3979,op3980,op3981,op3982,op3983,op3984,op3985,op3986,op3987,op3988,op3989,op3990,op3991,op3992,op3993,op3994,op3995,op3996,op3997,op3998,op3999,op4000,op4001,op4002,op4003,op4004,op4005,op4006,op4007,op4008,op4009,op4010,op4011,op4012,op4013,op4014,op4015,op4016,op4017,op4018,op4019,op4020,op4021,op4022,op4023,op4024,op4025,op4026,op4027,op4028,op4029,op4030,op4031]
def chunks : List Bytes := [bytes3968,bytes3969,bytes3970,bytes3971,bytes3972,bytes3973,bytes3974,bytes3975,bytes3976,bytes3977,bytes3978,bytes3979,bytes3980,bytes3981,bytes3982,bytes3983,bytes3984,bytes3985,bytes3986,bytes3987,bytes3988,bytes3989,bytes3990,bytes3991,bytes3992,bytes3993,bytes3994,bytes3995,bytes3996,bytes3997,bytes3998,bytes3999,bytes4000,bytes4001,bytes4002,bytes4003,bytes4004,bytes4005,bytes4006,bytes4007,bytes4008,bytes4009,bytes4010,bytes4011,bytes4012,bytes4013,bytes4014,bytes4015,bytes4016,bytes4017,bytes4018,bytes4019,bytes4020,bytes4021,bytes4022,bytes4023,bytes4024,bytes4025,bytes4026,bytes4027,bytes4028,bytes4029,bytes4030,bytes4031]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4064 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3968.1 (.cons _ _ _ _ _ checked3969.1 (.cons _ _ _ _ _ checked3970.1 (.cons _ _ _ _ _ checked3971.1 (.cons _ _ _ _ _ checked3972.1 (.cons _ _ _ _ _ checked3973.1 (.cons _ _ _ _ _ checked3974.1 (.cons _ _ _ _ _ checked3975.1 (.cons _ _ _ _ _ checked3976.1 (.cons _ _ _ _ _ checked3977.1 (.cons _ _ _ _ _ checked3978.1 (.cons _ _ _ _ _ checked3979.1 (.cons _ _ _ _ _ checked3980.1 (.cons _ _ _ _ _ checked3981.1 (.cons _ _ _ _ _ checked3982.1 (.cons _ _ _ _ _ checked3983.1 (.cons _ _ _ _ _ checked3984.1 (.cons _ _ _ _ _ checked3985.1 (.cons _ _ _ _ _ checked3986.1 (.cons _ _ _ _ _ checked3987.1 (.cons _ _ _ _ _ checked3988.1 (.cons _ _ _ _ _ checked3989.1 (.cons _ _ _ _ _ checked3990.1 (.cons _ _ _ _ _ checked3991.1 (.cons _ _ _ _ _ checked3992.1 (.cons _ _ _ _ _ checked3993.1 (.cons _ _ _ _ _ checked3994.1 (.cons _ _ _ _ _ checked3995.1 (.cons _ _ _ _ _ checked3996.1 (.cons _ _ _ _ _ checked3997.1 (.cons _ _ _ _ _ checked3998.1 (.cons _ _ _ _ _ checked3999.1 (.cons _ _ _ _ _ checked4000.1 (.cons _ _ _ _ _ checked4001.1 (.cons _ _ _ _ _ checked4002.1 (.cons _ _ _ _ _ checked4003.1 (.cons _ _ _ _ _ checked4004.1 (.cons _ _ _ _ _ checked4005.1 (.cons _ _ _ _ _ checked4006.1 (.cons _ _ _ _ _ checked4007.1 (.cons _ _ _ _ _ checked4008.1 (.cons _ _ _ _ _ checked4009.1 (.cons _ _ _ _ _ checked4010.1 (.cons _ _ _ _ _ checked4011.1 (.cons _ _ _ _ _ checked4012.1 (.cons _ _ _ _ _ checked4013.1 (.cons _ _ _ _ _ checked4014.1 (.cons _ _ _ _ _ checked4015.1 (.cons _ _ _ _ _ checked4016.1 (.cons _ _ _ _ _ checked4017.1 (.cons _ _ _ _ _ checked4018.1 (.cons _ _ _ _ _ checked4019.1 (.cons _ _ _ _ _ checked4020.1 (.cons _ _ _ _ _ checked4021.1 (.cons _ _ _ _ _ checked4022.1 (.cons _ _ _ _ _ checked4023.1 (.cons _ _ _ _ _ checked4024.1 (.cons _ _ _ _ _ checked4025.1 (.cons _ _ _ _ _ checked4026.1 (.cons _ _ _ _ _ checked4027.1 (.cons _ _ _ _ _ checked4028.1 (.cons _ _ _ _ _ checked4029.1 (.cons _ _ _ _ _ checked4030.1 (.cons _ _ _ _ _ checked4031.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4064 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3968.2,checked3969.2,checked3970.2,checked3971.2,checked3972.2,checked3973.2,checked3974.2,checked3975.2,checked3976.2,checked3977.2,checked3978.2,checked3979.2,checked3980.2,checked3981.2,checked3982.2,checked3983.2,checked3984.2,checked3985.2,checked3986.2,checked3987.2,checked3988.2,checked3989.2,checked3990.2,checked3991.2,checked3992.2,checked3993.2,checked3994.2,checked3995.2,checked3996.2,checked3997.2,checked3998.2,checked3999.2,checked4000.2,checked4001.2,checked4002.2,checked4003.2,checked4004.2,checked4005.2,checked4006.2,checked4007.2,checked4008.2,checked4009.2,checked4010.2,checked4011.2,checked4012.2,checked4013.2,checked4014.2,checked4015.2,checked4016.2,checked4017.2,checked4018.2,checked4019.2,checked4020.2,checked4021.2,checked4022.2,checked4023.2,checked4024.2,checked4025.2,checked4026.2,checked4027.2,checked4028.2,checked4029.2,checked4030.2,checked4031.2]
  decide
end ArtifactPairedPathRoundGroup62
