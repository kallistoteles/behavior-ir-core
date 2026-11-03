import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup63
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4032 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4032 : Bytes := ("    let r00000feb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4032 : bytes4032=statementBytes 4075 (op4032.map lower) ∧ bytes4032.length=41 := by core033_kernel_decide
def op4033 : List WordIR.Op := [.bxor 4074 4075]
def bytes4033 : Bytes := ("    let r00000fec: u32 = r00000fea ^ r00000feb;\n" : String).toByteArray.data.toList
theorem checked4033 : bytes4033=statementBytes 4076 (op4033.map lower) ∧ bytes4033.length=48 := by core033_kernel_decide
def op4034 : List WordIR.Op := [.bnot 4076]
def bytes4034 : Bytes := ("    let r00000fed: u32 = !r00000fec;\n" : String).toByteArray.data.toList
theorem checked4034 : bytes4034=statementBytes 4077 (op4034.map lower) ∧ bytes4034.length=37 := by core033_kernel_decide
def op4035 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4035 : Bytes := ("    let r00000fee: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4035 : bytes4035=statementBytes 4078 (op4035.map lower) ∧ bytes4035.length=41 := by core033_kernel_decide
def op4036 : List WordIR.Op := [.badd 4077 4078]
def bytes4036 : Bytes := ("    let r00000fef: u32 = r00000fed.wrapping_add(r00000fee);\n" : String).toByteArray.data.toList
theorem checked4036 : bytes4036=statementBytes 4079 (op4036.map lower) ∧ bytes4036.length=60 := by core033_kernel_decide
def op4037 : List WordIR.Op := [.band 4079 1592]
def bytes4037 : Bytes := ("    let r00000ff0: u32 = r00000fef & r00000638;\n" : String).toByteArray.data.toList
theorem checked4037 : bytes4037=statementBytes 4080 (op4037.map lower) ∧ bytes4037.length=48 := by core033_kernel_decide
def op4038 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4038 : Bytes := ("    let r00000ff1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4038 : bytes4038=statementBytes 4081 (op4038.map lower) ∧ bytes4038.length=41 := by core033_kernel_decide
def op4039 : List WordIR.Op := [.bxor 96 4081]
def bytes4039 : Bytes := ("    let r00000ff2: u32 = r00000060 ^ r00000ff1;\n" : String).toByteArray.data.toList
theorem checked4039 : bytes4039=statementBytes 4082 (op4039.map lower) ∧ bytes4039.length=48 := by core033_kernel_decide
def op4040 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4040 : Bytes := ("    let r00000ff3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4040 : bytes4040=statementBytes 4083 (op4040.map lower) ∧ bytes4040.length=41 := by core033_kernel_decide
def op4041 : List WordIR.Op := [.bnot 4083]
def bytes4041 : Bytes := ("    let r00000ff4: u32 = !r00000ff3;\n" : String).toByteArray.data.toList
theorem checked4041 : bytes4041=statementBytes 4084 (op4041.map lower) ∧ bytes4041.length=37 := by core033_kernel_decide
def op4042 : List WordIR.Op := [.band 4082 4084]
def bytes4042 : Bytes := ("    let r00000ff5: u32 = r00000ff2 & r00000ff4;\n" : String).toByteArray.data.toList
theorem checked4042 : bytes4042=statementBytes 4085 (op4042.map lower) ∧ bytes4042.length=48 := by core033_kernel_decide
def op4043 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4043 : Bytes := ("    let r00000ff6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4043 : bytes4043=statementBytes 4086 (op4043.map lower) ∧ bytes4043.length=41 := by core033_kernel_decide
def op4044 : List WordIR.Op := [.bxor 96 4086]
def bytes4044 : Bytes := ("    let r00000ff7: u32 = r00000060 ^ r00000ff6;\n" : String).toByteArray.data.toList
theorem checked4044 : bytes4044=statementBytes 4087 (op4044.map lower) ∧ bytes4044.length=48 := by core033_kernel_decide
def op4045 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4045 : Bytes := ("    let r00000ff8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4045 : bytes4045=statementBytes 4088 (op4045.map lower) ∧ bytes4045.length=41 := by core033_kernel_decide
def op4046 : List WordIR.Op := [.bnot 4088]
def bytes4046 : Bytes := ("    let r00000ff9: u32 = !r00000ff8;\n" : String).toByteArray.data.toList
theorem checked4046 : bytes4046=statementBytes 4089 (op4046.map lower) ∧ bytes4046.length=37 := by core033_kernel_decide
def op4047 : List WordIR.Op := [.bxor 4087 4089]
def bytes4047 : Bytes := ("    let r00000ffa: u32 = r00000ff7 ^ r00000ff9;\n" : String).toByteArray.data.toList
theorem checked4047 : bytes4047=statementBytes 4090 (op4047.map lower) ∧ bytes4047.length=48 := by core033_kernel_decide
def op4048 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4048 : Bytes := ("    let r00000ffb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4048 : bytes4048=statementBytes 4091 (op4048.map lower) ∧ bytes4048.length=41 := by core033_kernel_decide
def op4049 : List WordIR.Op := [.bxor 96 4091]
def bytes4049 : Bytes := ("    let r00000ffc: u32 = r00000060 ^ r00000ffb;\n" : String).toByteArray.data.toList
theorem checked4049 : bytes4049=statementBytes 4092 (op4049.map lower) ∧ bytes4049.length=48 := by core033_kernel_decide
def op4050 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4050 : Bytes := ("    let r00000ffd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4050 : bytes4050=statementBytes 4093 (op4050.map lower) ∧ bytes4050.length=41 := by core033_kernel_decide
def op4051 : List WordIR.Op := [.bnot 4093]
def bytes4051 : Bytes := ("    let r00000ffe: u32 = !r00000ffd;\n" : String).toByteArray.data.toList
theorem checked4051 : bytes4051=statementBytes 4094 (op4051.map lower) ∧ bytes4051.length=37 := by core033_kernel_decide
def op4052 : List WordIR.Op := [.badd 4092 4094]
def bytes4052 : Bytes := ("    let r00000fff: u32 = r00000ffc.wrapping_add(r00000ffe);\n" : String).toByteArray.data.toList
theorem checked4052 : bytes4052=statementBytes 4095 (op4052.map lower) ∧ bytes4052.length=60 := by core033_kernel_decide
def op4053 : List WordIR.Op := [.bnot 4095]
def bytes4053 : Bytes := ("    let r00001000: u32 = !r00000fff;\n" : String).toByteArray.data.toList
theorem checked4053 : bytes4053=statementBytes 4096 (op4053.map lower) ∧ bytes4053.length=37 := by core033_kernel_decide
def op4054 : List WordIR.Op := [.band 4090 4096]
def bytes4054 : Bytes := ("    let r00001001: u32 = r00000ffa & r00001000;\n" : String).toByteArray.data.toList
theorem checked4054 : bytes4054=statementBytes 4097 (op4054.map lower) ∧ bytes4054.length=48 := by core033_kernel_decide
def op4055 : List WordIR.Op := [.bxor 4085 4097]
def bytes4055 : Bytes := ("    let r00001002: u32 = r00000ff5 ^ r00001001;\n" : String).toByteArray.data.toList
theorem checked4055 : bytes4055=statementBytes 4098 (op4055.map lower) ∧ bytes4055.length=48 := by core033_kernel_decide
def op4056 : List WordIR.Op := [.shr 4098 31]
def bytes4056 : Bytes := ("    let r00001003: u32 = r00001002 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4056 : bytes4056=statementBytes 4099 (op4056.map lower) ∧ bytes4056.length=54 := by core033_kernel_decide
def op4057 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4057 : Bytes := ("    let r00001004: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4057 : bytes4057=statementBytes 4100 (op4057.map lower) ∧ bytes4057.length=41 := by core033_kernel_decide
def op4058 : List WordIR.Op := [.bxor 4099 4100]
def bytes4058 : Bytes := ("    let r00001005: u32 = r00001003 ^ r00001004;\n" : String).toByteArray.data.toList
theorem checked4058 : bytes4058=statementBytes 4101 (op4058.map lower) ∧ bytes4058.length=48 := by core033_kernel_decide
def op4059 : List WordIR.Op := [.bnot 4101]
def bytes4059 : Bytes := ("    let r00001006: u32 = !r00001005;\n" : String).toByteArray.data.toList
theorem checked4059 : bytes4059=statementBytes 4102 (op4059.map lower) ∧ bytes4059.length=37 := by core033_kernel_decide
def op4060 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4060 : Bytes := ("    let r00001007: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4060 : bytes4060=statementBytes 4103 (op4060.map lower) ∧ bytes4060.length=41 := by core033_kernel_decide
def op4061 : List WordIR.Op := [.badd 4102 4103]
def bytes4061 : Bytes := ("    let r00001008: u32 = r00001006.wrapping_add(r00001007);\n" : String).toByteArray.data.toList
theorem checked4061 : bytes4061=statementBytes 4104 (op4061.map lower) ∧ bytes4061.length=60 := by core033_kernel_decide
def op4062 : List WordIR.Op := [.bnot 4104]
def bytes4062 : Bytes := ("    let r00001009: u32 = !r00001008;\n" : String).toByteArray.data.toList
theorem checked4062 : bytes4062=statementBytes 4105 (op4062.map lower) ∧ bytes4062.length=37 := by core033_kernel_decide
def op4063 : List WordIR.Op := [.band 4105 1400]
def bytes4063 : Bytes := ("    let r0000100a: u32 = r00001009 & r00000578;\n" : String).toByteArray.data.toList
theorem checked4063 : bytes4063=statementBytes 4106 (op4063.map lower) ∧ bytes4063.length=48 := by core033_kernel_decide
def op4064 : List WordIR.Op := [.bxor 4080 4106]
def bytes4064 : Bytes := ("    let r0000100b: u32 = r00000ff0 ^ r0000100a;\n" : String).toByteArray.data.toList
theorem checked4064 : bytes4064=statementBytes 4107 (op4064.map lower) ∧ bytes4064.length=48 := by core033_kernel_decide
def op4065 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4065 : Bytes := ("    let r0000100c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4065 : bytes4065=statementBytes 4108 (op4065.map lower) ∧ bytes4065.length=41 := by core033_kernel_decide
def op4066 : List WordIR.Op := [.bxor 96 4108]
def bytes4066 : Bytes := ("    let r0000100d: u32 = r00000060 ^ r0000100c;\n" : String).toByteArray.data.toList
theorem checked4066 : bytes4066=statementBytes 4109 (op4066.map lower) ∧ bytes4066.length=48 := by core033_kernel_decide
def op4067 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4067 : Bytes := ("    let r0000100e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4067 : bytes4067=statementBytes 4110 (op4067.map lower) ∧ bytes4067.length=41 := by core033_kernel_decide
def op4068 : List WordIR.Op := [.bnot 4110]
def bytes4068 : Bytes := ("    let r0000100f: u32 = !r0000100e;\n" : String).toByteArray.data.toList
theorem checked4068 : bytes4068=statementBytes 4111 (op4068.map lower) ∧ bytes4068.length=37 := by core033_kernel_decide
def op4069 : List WordIR.Op := [.band 4109 4111]
def bytes4069 : Bytes := ("    let r00001010: u32 = r0000100d & r0000100f;\n" : String).toByteArray.data.toList
theorem checked4069 : bytes4069=statementBytes 4112 (op4069.map lower) ∧ bytes4069.length=48 := by core033_kernel_decide
def op4070 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4070 : Bytes := ("    let r00001011: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4070 : bytes4070=statementBytes 4113 (op4070.map lower) ∧ bytes4070.length=41 := by core033_kernel_decide
def op4071 : List WordIR.Op := [.bxor 96 4113]
def bytes4071 : Bytes := ("    let r00001012: u32 = r00000060 ^ r00001011;\n" : String).toByteArray.data.toList
theorem checked4071 : bytes4071=statementBytes 4114 (op4071.map lower) ∧ bytes4071.length=48 := by core033_kernel_decide
def op4072 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4072 : Bytes := ("    let r00001013: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4072 : bytes4072=statementBytes 4115 (op4072.map lower) ∧ bytes4072.length=41 := by core033_kernel_decide
def op4073 : List WordIR.Op := [.bnot 4115]
def bytes4073 : Bytes := ("    let r00001014: u32 = !r00001013;\n" : String).toByteArray.data.toList
theorem checked4073 : bytes4073=statementBytes 4116 (op4073.map lower) ∧ bytes4073.length=37 := by core033_kernel_decide
def op4074 : List WordIR.Op := [.bxor 4114 4116]
def bytes4074 : Bytes := ("    let r00001015: u32 = r00001012 ^ r00001014;\n" : String).toByteArray.data.toList
theorem checked4074 : bytes4074=statementBytes 4117 (op4074.map lower) ∧ bytes4074.length=48 := by core033_kernel_decide
def op4075 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4075 : Bytes := ("    let r00001016: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4075 : bytes4075=statementBytes 4118 (op4075.map lower) ∧ bytes4075.length=41 := by core033_kernel_decide
def op4076 : List WordIR.Op := [.bxor 96 4118]
def bytes4076 : Bytes := ("    let r00001017: u32 = r00000060 ^ r00001016;\n" : String).toByteArray.data.toList
theorem checked4076 : bytes4076=statementBytes 4119 (op4076.map lower) ∧ bytes4076.length=48 := by core033_kernel_decide
def op4077 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4077 : Bytes := ("    let r00001018: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4077 : bytes4077=statementBytes 4120 (op4077.map lower) ∧ bytes4077.length=41 := by core033_kernel_decide
def op4078 : List WordIR.Op := [.bnot 4120]
def bytes4078 : Bytes := ("    let r00001019: u32 = !r00001018;\n" : String).toByteArray.data.toList
theorem checked4078 : bytes4078=statementBytes 4121 (op4078.map lower) ∧ bytes4078.length=37 := by core033_kernel_decide
def op4079 : List WordIR.Op := [.badd 4119 4121]
def bytes4079 : Bytes := ("    let r0000101a: u32 = r00001017.wrapping_add(r00001019);\n" : String).toByteArray.data.toList
theorem checked4079 : bytes4079=statementBytes 4122 (op4079.map lower) ∧ bytes4079.length=60 := by core033_kernel_decide
def op4080 : List WordIR.Op := [.bnot 4122]
def bytes4080 : Bytes := ("    let r0000101b: u32 = !r0000101a;\n" : String).toByteArray.data.toList
theorem checked4080 : bytes4080=statementBytes 4123 (op4080.map lower) ∧ bytes4080.length=37 := by core033_kernel_decide
def op4081 : List WordIR.Op := [.band 4117 4123]
def bytes4081 : Bytes := ("    let r0000101c: u32 = r00001015 & r0000101b;\n" : String).toByteArray.data.toList
theorem checked4081 : bytes4081=statementBytes 4124 (op4081.map lower) ∧ bytes4081.length=48 := by core033_kernel_decide
def op4082 : List WordIR.Op := [.bxor 4112 4124]
def bytes4082 : Bytes := ("    let r0000101d: u32 = r00001010 ^ r0000101c;\n" : String).toByteArray.data.toList
theorem checked4082 : bytes4082=statementBytes 4125 (op4082.map lower) ∧ bytes4082.length=48 := by core033_kernel_decide
def op4083 : List WordIR.Op := [.shr 4125 31]
def bytes4083 : Bytes := ("    let r0000101e: u32 = r0000101d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4083 : bytes4083=statementBytes 4126 (op4083.map lower) ∧ bytes4083.length=54 := by core033_kernel_decide
def op4084 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4084 : Bytes := ("    let r0000101f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4084 : bytes4084=statementBytes 4127 (op4084.map lower) ∧ bytes4084.length=41 := by core033_kernel_decide
def op4085 : List WordIR.Op := [.bxor 4126 4127]
def bytes4085 : Bytes := ("    let r00001020: u32 = r0000101e ^ r0000101f;\n" : String).toByteArray.data.toList
theorem checked4085 : bytes4085=statementBytes 4128 (op4085.map lower) ∧ bytes4085.length=48 := by core033_kernel_decide
def op4086 : List WordIR.Op := [.bnot 4128]
def bytes4086 : Bytes := ("    let r00001021: u32 = !r00001020;\n" : String).toByteArray.data.toList
theorem checked4086 : bytes4086=statementBytes 4129 (op4086.map lower) ∧ bytes4086.length=37 := by core033_kernel_decide
def op4087 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4087 : Bytes := ("    let r00001022: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4087 : bytes4087=statementBytes 4130 (op4087.map lower) ∧ bytes4087.length=41 := by core033_kernel_decide
def op4088 : List WordIR.Op := [.badd 4129 4130]
def bytes4088 : Bytes := ("    let r00001023: u32 = r00001021.wrapping_add(r00001022);\n" : String).toByteArray.data.toList
theorem checked4088 : bytes4088=statementBytes 4131 (op4088.map lower) ∧ bytes4088.length=60 := by core033_kernel_decide
def op4089 : List WordIR.Op := [.band 4131 1595]
def bytes4089 : Bytes := ("    let r00001024: u32 = r00001023 & r0000063b;\n" : String).toByteArray.data.toList
theorem checked4089 : bytes4089=statementBytes 4132 (op4089.map lower) ∧ bytes4089.length=48 := by core033_kernel_decide
def op4090 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4090 : Bytes := ("    let r00001025: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4090 : bytes4090=statementBytes 4133 (op4090.map lower) ∧ bytes4090.length=41 := by core033_kernel_decide
def op4091 : List WordIR.Op := [.bxor 96 4133]
def bytes4091 : Bytes := ("    let r00001026: u32 = r00000060 ^ r00001025;\n" : String).toByteArray.data.toList
theorem checked4091 : bytes4091=statementBytes 4134 (op4091.map lower) ∧ bytes4091.length=48 := by core033_kernel_decide
def op4092 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4092 : Bytes := ("    let r00001027: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4092 : bytes4092=statementBytes 4135 (op4092.map lower) ∧ bytes4092.length=41 := by core033_kernel_decide
def op4093 : List WordIR.Op := [.bnot 4135]
def bytes4093 : Bytes := ("    let r00001028: u32 = !r00001027;\n" : String).toByteArray.data.toList
theorem checked4093 : bytes4093=statementBytes 4136 (op4093.map lower) ∧ bytes4093.length=37 := by core033_kernel_decide
def op4094 : List WordIR.Op := [.band 4134 4136]
def bytes4094 : Bytes := ("    let r00001029: u32 = r00001026 & r00001028;\n" : String).toByteArray.data.toList
theorem checked4094 : bytes4094=statementBytes 4137 (op4094.map lower) ∧ bytes4094.length=48 := by core033_kernel_decide
def op4095 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4095 : Bytes := ("    let r0000102a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4095 : bytes4095=statementBytes 4138 (op4095.map lower) ∧ bytes4095.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4032,op4033,op4034,op4035,op4036,op4037,op4038,op4039,op4040,op4041,op4042,op4043,op4044,op4045,op4046,op4047,op4048,op4049,op4050,op4051,op4052,op4053,op4054,op4055,op4056,op4057,op4058,op4059,op4060,op4061,op4062,op4063,op4064,op4065,op4066,op4067,op4068,op4069,op4070,op4071,op4072,op4073,op4074,op4075,op4076,op4077,op4078,op4079,op4080,op4081,op4082,op4083,op4084,op4085,op4086,op4087,op4088,op4089,op4090,op4091,op4092,op4093,op4094,op4095]
def chunks : List Bytes := [bytes4032,bytes4033,bytes4034,bytes4035,bytes4036,bytes4037,bytes4038,bytes4039,bytes4040,bytes4041,bytes4042,bytes4043,bytes4044,bytes4045,bytes4046,bytes4047,bytes4048,bytes4049,bytes4050,bytes4051,bytes4052,bytes4053,bytes4054,bytes4055,bytes4056,bytes4057,bytes4058,bytes4059,bytes4060,bytes4061,bytes4062,bytes4063,bytes4064,bytes4065,bytes4066,bytes4067,bytes4068,bytes4069,bytes4070,bytes4071,bytes4072,bytes4073,bytes4074,bytes4075,bytes4076,bytes4077,bytes4078,bytes4079,bytes4080,bytes4081,bytes4082,bytes4083,bytes4084,bytes4085,bytes4086,bytes4087,bytes4088,bytes4089,bytes4090,bytes4091,bytes4092,bytes4093,bytes4094,bytes4095]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4075 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4032.1 (.cons _ _ _ _ _ checked4033.1 (.cons _ _ _ _ _ checked4034.1 (.cons _ _ _ _ _ checked4035.1 (.cons _ _ _ _ _ checked4036.1 (.cons _ _ _ _ _ checked4037.1 (.cons _ _ _ _ _ checked4038.1 (.cons _ _ _ _ _ checked4039.1 (.cons _ _ _ _ _ checked4040.1 (.cons _ _ _ _ _ checked4041.1 (.cons _ _ _ _ _ checked4042.1 (.cons _ _ _ _ _ checked4043.1 (.cons _ _ _ _ _ checked4044.1 (.cons _ _ _ _ _ checked4045.1 (.cons _ _ _ _ _ checked4046.1 (.cons _ _ _ _ _ checked4047.1 (.cons _ _ _ _ _ checked4048.1 (.cons _ _ _ _ _ checked4049.1 (.cons _ _ _ _ _ checked4050.1 (.cons _ _ _ _ _ checked4051.1 (.cons _ _ _ _ _ checked4052.1 (.cons _ _ _ _ _ checked4053.1 (.cons _ _ _ _ _ checked4054.1 (.cons _ _ _ _ _ checked4055.1 (.cons _ _ _ _ _ checked4056.1 (.cons _ _ _ _ _ checked4057.1 (.cons _ _ _ _ _ checked4058.1 (.cons _ _ _ _ _ checked4059.1 (.cons _ _ _ _ _ checked4060.1 (.cons _ _ _ _ _ checked4061.1 (.cons _ _ _ _ _ checked4062.1 (.cons _ _ _ _ _ checked4063.1 (.cons _ _ _ _ _ checked4064.1 (.cons _ _ _ _ _ checked4065.1 (.cons _ _ _ _ _ checked4066.1 (.cons _ _ _ _ _ checked4067.1 (.cons _ _ _ _ _ checked4068.1 (.cons _ _ _ _ _ checked4069.1 (.cons _ _ _ _ _ checked4070.1 (.cons _ _ _ _ _ checked4071.1 (.cons _ _ _ _ _ checked4072.1 (.cons _ _ _ _ _ checked4073.1 (.cons _ _ _ _ _ checked4074.1 (.cons _ _ _ _ _ checked4075.1 (.cons _ _ _ _ _ checked4076.1 (.cons _ _ _ _ _ checked4077.1 (.cons _ _ _ _ _ checked4078.1 (.cons _ _ _ _ _ checked4079.1 (.cons _ _ _ _ _ checked4080.1 (.cons _ _ _ _ _ checked4081.1 (.cons _ _ _ _ _ checked4082.1 (.cons _ _ _ _ _ checked4083.1 (.cons _ _ _ _ _ checked4084.1 (.cons _ _ _ _ _ checked4085.1 (.cons _ _ _ _ _ checked4086.1 (.cons _ _ _ _ _ checked4087.1 (.cons _ _ _ _ _ checked4088.1 (.cons _ _ _ _ _ checked4089.1 (.cons _ _ _ _ _ checked4090.1 (.cons _ _ _ _ _ checked4091.1 (.cons _ _ _ _ _ checked4092.1 (.cons _ _ _ _ _ checked4093.1 (.cons _ _ _ _ _ checked4094.1 (.cons _ _ _ _ _ checked4095.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4075 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4032.2,checked4033.2,checked4034.2,checked4035.2,checked4036.2,checked4037.2,checked4038.2,checked4039.2,checked4040.2,checked4041.2,checked4042.2,checked4043.2,checked4044.2,checked4045.2,checked4046.2,checked4047.2,checked4048.2,checked4049.2,checked4050.2,checked4051.2,checked4052.2,checked4053.2,checked4054.2,checked4055.2,checked4056.2,checked4057.2,checked4058.2,checked4059.2,checked4060.2,checked4061.2,checked4062.2,checked4063.2,checked4064.2,checked4065.2,checked4066.2,checked4067.2,checked4068.2,checked4069.2,checked4070.2,checked4071.2,checked4072.2,checked4073.2,checked4074.2,checked4075.2,checked4076.2,checked4077.2,checked4078.2,checked4079.2,checked4080.2,checked4081.2,checked4082.2,checked4083.2,checked4084.2,checked4085.2,checked4086.2,checked4087.2,checked4088.2,checked4089.2,checked4090.2,checked4091.2,checked4092.2,checked4093.2,checked4094.2,checked4095.2]
  decide
end ArtifactPathRoundDispatchGroup63
