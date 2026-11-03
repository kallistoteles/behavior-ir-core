import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup63
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4032 : List WordIR.Op := [.bxor 4126 4127]
def bytes4032 : Bytes := ("    let r00001020: u32 = r0000101e ^ r0000101f;\n" : String).toByteArray.data.toList
theorem checked4032 : bytes4032=statementBytes 4128 (op4032.map lower) ∧ bytes4032.length=48 := by core033_kernel_decide
def op4033 : List WordIR.Op := [.bnot 4128]
def bytes4033 : Bytes := ("    let r00001021: u32 = !r00001020;\n" : String).toByteArray.data.toList
theorem checked4033 : bytes4033=statementBytes 4129 (op4033.map lower) ∧ bytes4033.length=37 := by core033_kernel_decide
def op4034 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4034 : Bytes := ("    let r00001022: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4034 : bytes4034=statementBytes 4130 (op4034.map lower) ∧ bytes4034.length=41 := by core033_kernel_decide
def op4035 : List WordIR.Op := [.badd 4129 4130]
def bytes4035 : Bytes := ("    let r00001023: u32 = r00001021.wrapping_add(r00001022);\n" : String).toByteArray.data.toList
theorem checked4035 : bytes4035=statementBytes 4131 (op4035.map lower) ∧ bytes4035.length=60 := by core033_kernel_decide
def op4036 : List WordIR.Op := [.band 4131 2085]
def bytes4036 : Bytes := ("    let r00001024: u32 = r00001023 & r00000825;\n" : String).toByteArray.data.toList
theorem checked4036 : bytes4036=statementBytes 4132 (op4036.map lower) ∧ bytes4036.length=48 := by core033_kernel_decide
def op4037 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4037 : Bytes := ("    let r00001025: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4037 : bytes4037=statementBytes 4133 (op4037.map lower) ∧ bytes4037.length=41 := by core033_kernel_decide
def op4038 : List WordIR.Op := [.bxor 616 4133]
def bytes4038 : Bytes := ("    let r00001026: u32 = r00000268 ^ r00001025;\n" : String).toByteArray.data.toList
theorem checked4038 : bytes4038=statementBytes 4134 (op4038.map lower) ∧ bytes4038.length=48 := by core033_kernel_decide
def op4039 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4039 : Bytes := ("    let r00001027: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4039 : bytes4039=statementBytes 4135 (op4039.map lower) ∧ bytes4039.length=41 := by core033_kernel_decide
def op4040 : List WordIR.Op := [.bnot 4135]
def bytes4040 : Bytes := ("    let r00001028: u32 = !r00001027;\n" : String).toByteArray.data.toList
theorem checked4040 : bytes4040=statementBytes 4136 (op4040.map lower) ∧ bytes4040.length=37 := by core033_kernel_decide
def op4041 : List WordIR.Op := [.band 4134 4136]
def bytes4041 : Bytes := ("    let r00001029: u32 = r00001026 & r00001028;\n" : String).toByteArray.data.toList
theorem checked4041 : bytes4041=statementBytes 4137 (op4041.map lower) ∧ bytes4041.length=48 := by core033_kernel_decide
def op4042 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4042 : Bytes := ("    let r0000102a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4042 : bytes4042=statementBytes 4138 (op4042.map lower) ∧ bytes4042.length=41 := by core033_kernel_decide
def op4043 : List WordIR.Op := [.bxor 616 4138]
def bytes4043 : Bytes := ("    let r0000102b: u32 = r00000268 ^ r0000102a;\n" : String).toByteArray.data.toList
theorem checked4043 : bytes4043=statementBytes 4139 (op4043.map lower) ∧ bytes4043.length=48 := by core033_kernel_decide
def op4044 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4044 : Bytes := ("    let r0000102c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4044 : bytes4044=statementBytes 4140 (op4044.map lower) ∧ bytes4044.length=41 := by core033_kernel_decide
def op4045 : List WordIR.Op := [.bnot 4140]
def bytes4045 : Bytes := ("    let r0000102d: u32 = !r0000102c;\n" : String).toByteArray.data.toList
theorem checked4045 : bytes4045=statementBytes 4141 (op4045.map lower) ∧ bytes4045.length=37 := by core033_kernel_decide
def op4046 : List WordIR.Op := [.bxor 4139 4141]
def bytes4046 : Bytes := ("    let r0000102e: u32 = r0000102b ^ r0000102d;\n" : String).toByteArray.data.toList
theorem checked4046 : bytes4046=statementBytes 4142 (op4046.map lower) ∧ bytes4046.length=48 := by core033_kernel_decide
def op4047 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4047 : Bytes := ("    let r0000102f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4047 : bytes4047=statementBytes 4143 (op4047.map lower) ∧ bytes4047.length=41 := by core033_kernel_decide
def op4048 : List WordIR.Op := [.bxor 616 4143]
def bytes4048 : Bytes := ("    let r00001030: u32 = r00000268 ^ r0000102f;\n" : String).toByteArray.data.toList
theorem checked4048 : bytes4048=statementBytes 4144 (op4048.map lower) ∧ bytes4048.length=48 := by core033_kernel_decide
def op4049 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4049 : Bytes := ("    let r00001031: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4049 : bytes4049=statementBytes 4145 (op4049.map lower) ∧ bytes4049.length=41 := by core033_kernel_decide
def op4050 : List WordIR.Op := [.bnot 4145]
def bytes4050 : Bytes := ("    let r00001032: u32 = !r00001031;\n" : String).toByteArray.data.toList
theorem checked4050 : bytes4050=statementBytes 4146 (op4050.map lower) ∧ bytes4050.length=37 := by core033_kernel_decide
def op4051 : List WordIR.Op := [.badd 4144 4146]
def bytes4051 : Bytes := ("    let r00001033: u32 = r00001030.wrapping_add(r00001032);\n" : String).toByteArray.data.toList
theorem checked4051 : bytes4051=statementBytes 4147 (op4051.map lower) ∧ bytes4051.length=60 := by core033_kernel_decide
def op4052 : List WordIR.Op := [.bnot 4147]
def bytes4052 : Bytes := ("    let r00001034: u32 = !r00001033;\n" : String).toByteArray.data.toList
theorem checked4052 : bytes4052=statementBytes 4148 (op4052.map lower) ∧ bytes4052.length=37 := by core033_kernel_decide
def op4053 : List WordIR.Op := [.band 4142 4148]
def bytes4053 : Bytes := ("    let r00001035: u32 = r0000102e & r00001034;\n" : String).toByteArray.data.toList
theorem checked4053 : bytes4053=statementBytes 4149 (op4053.map lower) ∧ bytes4053.length=48 := by core033_kernel_decide
def op4054 : List WordIR.Op := [.bxor 4137 4149]
def bytes4054 : Bytes := ("    let r00001036: u32 = r00001029 ^ r00001035;\n" : String).toByteArray.data.toList
theorem checked4054 : bytes4054=statementBytes 4150 (op4054.map lower) ∧ bytes4054.length=48 := by core033_kernel_decide
def op4055 : List WordIR.Op := [.shr 4150 31]
def bytes4055 : Bytes := ("    let r00001037: u32 = r00001036 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4055 : bytes4055=statementBytes 4151 (op4055.map lower) ∧ bytes4055.length=54 := by core033_kernel_decide
def op4056 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4056 : Bytes := ("    let r00001038: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4056 : bytes4056=statementBytes 4152 (op4056.map lower) ∧ bytes4056.length=41 := by core033_kernel_decide
def op4057 : List WordIR.Op := [.bxor 4151 4152]
def bytes4057 : Bytes := ("    let r00001039: u32 = r00001037 ^ r00001038;\n" : String).toByteArray.data.toList
theorem checked4057 : bytes4057=statementBytes 4153 (op4057.map lower) ∧ bytes4057.length=48 := by core033_kernel_decide
def op4058 : List WordIR.Op := [.bnot 4153]
def bytes4058 : Bytes := ("    let r0000103a: u32 = !r00001039;\n" : String).toByteArray.data.toList
theorem checked4058 : bytes4058=statementBytes 4154 (op4058.map lower) ∧ bytes4058.length=37 := by core033_kernel_decide
def op4059 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4059 : Bytes := ("    let r0000103b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4059 : bytes4059=statementBytes 4155 (op4059.map lower) ∧ bytes4059.length=41 := by core033_kernel_decide
def op4060 : List WordIR.Op := [.badd 4154 4155]
def bytes4060 : Bytes := ("    let r0000103c: u32 = r0000103a.wrapping_add(r0000103b);\n" : String).toByteArray.data.toList
theorem checked4060 : bytes4060=statementBytes 4156 (op4060.map lower) ∧ bytes4060.length=60 := by core033_kernel_decide
def op4061 : List WordIR.Op := [.bnot 4156]
def bytes4061 : Bytes := ("    let r0000103d: u32 = !r0000103c;\n" : String).toByteArray.data.toList
theorem checked4061 : bytes4061=statementBytes 4157 (op4061.map lower) ∧ bytes4061.length=37 := by core033_kernel_decide
def op4062 : List WordIR.Op := [.band 4157 1893]
def bytes4062 : Bytes := ("    let r0000103e: u32 = r0000103d & r00000765;\n" : String).toByteArray.data.toList
theorem checked4062 : bytes4062=statementBytes 4158 (op4062.map lower) ∧ bytes4062.length=48 := by core033_kernel_decide
def op4063 : List WordIR.Op := [.bxor 4132 4158]
def bytes4063 : Bytes := ("    let r0000103f: u32 = r00001024 ^ r0000103e;\n" : String).toByteArray.data.toList
theorem checked4063 : bytes4063=statementBytes 4159 (op4063.map lower) ∧ bytes4063.length=48 := by core033_kernel_decide
def op4064 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4064 : Bytes := ("    let r00001040: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4064 : bytes4064=statementBytes 4160 (op4064.map lower) ∧ bytes4064.length=41 := by core033_kernel_decide
def op4065 : List WordIR.Op := [.bxor 616 4160]
def bytes4065 : Bytes := ("    let r00001041: u32 = r00000268 ^ r00001040;\n" : String).toByteArray.data.toList
theorem checked4065 : bytes4065=statementBytes 4161 (op4065.map lower) ∧ bytes4065.length=48 := by core033_kernel_decide
def op4066 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4066 : Bytes := ("    let r00001042: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4066 : bytes4066=statementBytes 4162 (op4066.map lower) ∧ bytes4066.length=41 := by core033_kernel_decide
def op4067 : List WordIR.Op := [.bnot 4162]
def bytes4067 : Bytes := ("    let r00001043: u32 = !r00001042;\n" : String).toByteArray.data.toList
theorem checked4067 : bytes4067=statementBytes 4163 (op4067.map lower) ∧ bytes4067.length=37 := by core033_kernel_decide
def op4068 : List WordIR.Op := [.band 4161 4163]
def bytes4068 : Bytes := ("    let r00001044: u32 = r00001041 & r00001043;\n" : String).toByteArray.data.toList
theorem checked4068 : bytes4068=statementBytes 4164 (op4068.map lower) ∧ bytes4068.length=48 := by core033_kernel_decide
def op4069 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4069 : Bytes := ("    let r00001045: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4069 : bytes4069=statementBytes 4165 (op4069.map lower) ∧ bytes4069.length=41 := by core033_kernel_decide
def op4070 : List WordIR.Op := [.bxor 616 4165]
def bytes4070 : Bytes := ("    let r00001046: u32 = r00000268 ^ r00001045;\n" : String).toByteArray.data.toList
theorem checked4070 : bytes4070=statementBytes 4166 (op4070.map lower) ∧ bytes4070.length=48 := by core033_kernel_decide
def op4071 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4071 : Bytes := ("    let r00001047: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4071 : bytes4071=statementBytes 4167 (op4071.map lower) ∧ bytes4071.length=41 := by core033_kernel_decide
def op4072 : List WordIR.Op := [.bnot 4167]
def bytes4072 : Bytes := ("    let r00001048: u32 = !r00001047;\n" : String).toByteArray.data.toList
theorem checked4072 : bytes4072=statementBytes 4168 (op4072.map lower) ∧ bytes4072.length=37 := by core033_kernel_decide
def op4073 : List WordIR.Op := [.bxor 4166 4168]
def bytes4073 : Bytes := ("    let r00001049: u32 = r00001046 ^ r00001048;\n" : String).toByteArray.data.toList
theorem checked4073 : bytes4073=statementBytes 4169 (op4073.map lower) ∧ bytes4073.length=48 := by core033_kernel_decide
def op4074 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4074 : Bytes := ("    let r0000104a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4074 : bytes4074=statementBytes 4170 (op4074.map lower) ∧ bytes4074.length=41 := by core033_kernel_decide
def op4075 : List WordIR.Op := [.bxor 616 4170]
def bytes4075 : Bytes := ("    let r0000104b: u32 = r00000268 ^ r0000104a;\n" : String).toByteArray.data.toList
theorem checked4075 : bytes4075=statementBytes 4171 (op4075.map lower) ∧ bytes4075.length=48 := by core033_kernel_decide
def op4076 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4076 : Bytes := ("    let r0000104c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4076 : bytes4076=statementBytes 4172 (op4076.map lower) ∧ bytes4076.length=41 := by core033_kernel_decide
def op4077 : List WordIR.Op := [.bnot 4172]
def bytes4077 : Bytes := ("    let r0000104d: u32 = !r0000104c;\n" : String).toByteArray.data.toList
theorem checked4077 : bytes4077=statementBytes 4173 (op4077.map lower) ∧ bytes4077.length=37 := by core033_kernel_decide
def op4078 : List WordIR.Op := [.badd 4171 4173]
def bytes4078 : Bytes := ("    let r0000104e: u32 = r0000104b.wrapping_add(r0000104d);\n" : String).toByteArray.data.toList
theorem checked4078 : bytes4078=statementBytes 4174 (op4078.map lower) ∧ bytes4078.length=60 := by core033_kernel_decide
def op4079 : List WordIR.Op := [.bnot 4174]
def bytes4079 : Bytes := ("    let r0000104f: u32 = !r0000104e;\n" : String).toByteArray.data.toList
theorem checked4079 : bytes4079=statementBytes 4175 (op4079.map lower) ∧ bytes4079.length=37 := by core033_kernel_decide
def op4080 : List WordIR.Op := [.band 4169 4175]
def bytes4080 : Bytes := ("    let r00001050: u32 = r00001049 & r0000104f;\n" : String).toByteArray.data.toList
theorem checked4080 : bytes4080=statementBytes 4176 (op4080.map lower) ∧ bytes4080.length=48 := by core033_kernel_decide
def op4081 : List WordIR.Op := [.bxor 4164 4176]
def bytes4081 : Bytes := ("    let r00001051: u32 = r00001044 ^ r00001050;\n" : String).toByteArray.data.toList
theorem checked4081 : bytes4081=statementBytes 4177 (op4081.map lower) ∧ bytes4081.length=48 := by core033_kernel_decide
def op4082 : List WordIR.Op := [.shr 4177 31]
def bytes4082 : Bytes := ("    let r00001052: u32 = r00001051 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4082 : bytes4082=statementBytes 4178 (op4082.map lower) ∧ bytes4082.length=54 := by core033_kernel_decide
def op4083 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4083 : Bytes := ("    let r00001053: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4083 : bytes4083=statementBytes 4179 (op4083.map lower) ∧ bytes4083.length=41 := by core033_kernel_decide
def op4084 : List WordIR.Op := [.bxor 4178 4179]
def bytes4084 : Bytes := ("    let r00001054: u32 = r00001052 ^ r00001053;\n" : String).toByteArray.data.toList
theorem checked4084 : bytes4084=statementBytes 4180 (op4084.map lower) ∧ bytes4084.length=48 := by core033_kernel_decide
def op4085 : List WordIR.Op := [.bnot 4180]
def bytes4085 : Bytes := ("    let r00001055: u32 = !r00001054;\n" : String).toByteArray.data.toList
theorem checked4085 : bytes4085=statementBytes 4181 (op4085.map lower) ∧ bytes4085.length=37 := by core033_kernel_decide
def op4086 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4086 : Bytes := ("    let r00001056: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4086 : bytes4086=statementBytes 4182 (op4086.map lower) ∧ bytes4086.length=41 := by core033_kernel_decide
def op4087 : List WordIR.Op := [.badd 4181 4182]
def bytes4087 : Bytes := ("    let r00001057: u32 = r00001055.wrapping_add(r00001056);\n" : String).toByteArray.data.toList
theorem checked4087 : bytes4087=statementBytes 4183 (op4087.map lower) ∧ bytes4087.length=60 := by core033_kernel_decide
def op4088 : List WordIR.Op := [.band 4183 2088]
def bytes4088 : Bytes := ("    let r00001058: u32 = r00001057 & r00000828;\n" : String).toByteArray.data.toList
theorem checked4088 : bytes4088=statementBytes 4184 (op4088.map lower) ∧ bytes4088.length=48 := by core033_kernel_decide
def op4089 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4089 : Bytes := ("    let r00001059: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4089 : bytes4089=statementBytes 4185 (op4089.map lower) ∧ bytes4089.length=41 := by core033_kernel_decide
def op4090 : List WordIR.Op := [.bxor 616 4185]
def bytes4090 : Bytes := ("    let r0000105a: u32 = r00000268 ^ r00001059;\n" : String).toByteArray.data.toList
theorem checked4090 : bytes4090=statementBytes 4186 (op4090.map lower) ∧ bytes4090.length=48 := by core033_kernel_decide
def op4091 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4091 : Bytes := ("    let r0000105b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4091 : bytes4091=statementBytes 4187 (op4091.map lower) ∧ bytes4091.length=41 := by core033_kernel_decide
def op4092 : List WordIR.Op := [.bnot 4187]
def bytes4092 : Bytes := ("    let r0000105c: u32 = !r0000105b;\n" : String).toByteArray.data.toList
theorem checked4092 : bytes4092=statementBytes 4188 (op4092.map lower) ∧ bytes4092.length=37 := by core033_kernel_decide
def op4093 : List WordIR.Op := [.band 4186 4188]
def bytes4093 : Bytes := ("    let r0000105d: u32 = r0000105a & r0000105c;\n" : String).toByteArray.data.toList
theorem checked4093 : bytes4093=statementBytes 4189 (op4093.map lower) ∧ bytes4093.length=48 := by core033_kernel_decide
def op4094 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4094 : Bytes := ("    let r0000105e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4094 : bytes4094=statementBytes 4190 (op4094.map lower) ∧ bytes4094.length=41 := by core033_kernel_decide
def op4095 : List WordIR.Op := [.bxor 616 4190]
def bytes4095 : Bytes := ("    let r0000105f: u32 = r00000268 ^ r0000105e;\n" : String).toByteArray.data.toList
theorem checked4095 : bytes4095=statementBytes 4191 (op4095.map lower) ∧ bytes4095.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4032,op4033,op4034,op4035,op4036,op4037,op4038,op4039,op4040,op4041,op4042,op4043,op4044,op4045,op4046,op4047,op4048,op4049,op4050,op4051,op4052,op4053,op4054,op4055,op4056,op4057,op4058,op4059,op4060,op4061,op4062,op4063,op4064,op4065,op4066,op4067,op4068,op4069,op4070,op4071,op4072,op4073,op4074,op4075,op4076,op4077,op4078,op4079,op4080,op4081,op4082,op4083,op4084,op4085,op4086,op4087,op4088,op4089,op4090,op4091,op4092,op4093,op4094,op4095]
def chunks : List Bytes := [bytes4032,bytes4033,bytes4034,bytes4035,bytes4036,bytes4037,bytes4038,bytes4039,bytes4040,bytes4041,bytes4042,bytes4043,bytes4044,bytes4045,bytes4046,bytes4047,bytes4048,bytes4049,bytes4050,bytes4051,bytes4052,bytes4053,bytes4054,bytes4055,bytes4056,bytes4057,bytes4058,bytes4059,bytes4060,bytes4061,bytes4062,bytes4063,bytes4064,bytes4065,bytes4066,bytes4067,bytes4068,bytes4069,bytes4070,bytes4071,bytes4072,bytes4073,bytes4074,bytes4075,bytes4076,bytes4077,bytes4078,bytes4079,bytes4080,bytes4081,bytes4082,bytes4083,bytes4084,bytes4085,bytes4086,bytes4087,bytes4088,bytes4089,bytes4090,bytes4091,bytes4092,bytes4093,bytes4094,bytes4095]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4128 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4032.1 (.cons _ _ _ _ _ checked4033.1 (.cons _ _ _ _ _ checked4034.1 (.cons _ _ _ _ _ checked4035.1 (.cons _ _ _ _ _ checked4036.1 (.cons _ _ _ _ _ checked4037.1 (.cons _ _ _ _ _ checked4038.1 (.cons _ _ _ _ _ checked4039.1 (.cons _ _ _ _ _ checked4040.1 (.cons _ _ _ _ _ checked4041.1 (.cons _ _ _ _ _ checked4042.1 (.cons _ _ _ _ _ checked4043.1 (.cons _ _ _ _ _ checked4044.1 (.cons _ _ _ _ _ checked4045.1 (.cons _ _ _ _ _ checked4046.1 (.cons _ _ _ _ _ checked4047.1 (.cons _ _ _ _ _ checked4048.1 (.cons _ _ _ _ _ checked4049.1 (.cons _ _ _ _ _ checked4050.1 (.cons _ _ _ _ _ checked4051.1 (.cons _ _ _ _ _ checked4052.1 (.cons _ _ _ _ _ checked4053.1 (.cons _ _ _ _ _ checked4054.1 (.cons _ _ _ _ _ checked4055.1 (.cons _ _ _ _ _ checked4056.1 (.cons _ _ _ _ _ checked4057.1 (.cons _ _ _ _ _ checked4058.1 (.cons _ _ _ _ _ checked4059.1 (.cons _ _ _ _ _ checked4060.1 (.cons _ _ _ _ _ checked4061.1 (.cons _ _ _ _ _ checked4062.1 (.cons _ _ _ _ _ checked4063.1 (.cons _ _ _ _ _ checked4064.1 (.cons _ _ _ _ _ checked4065.1 (.cons _ _ _ _ _ checked4066.1 (.cons _ _ _ _ _ checked4067.1 (.cons _ _ _ _ _ checked4068.1 (.cons _ _ _ _ _ checked4069.1 (.cons _ _ _ _ _ checked4070.1 (.cons _ _ _ _ _ checked4071.1 (.cons _ _ _ _ _ checked4072.1 (.cons _ _ _ _ _ checked4073.1 (.cons _ _ _ _ _ checked4074.1 (.cons _ _ _ _ _ checked4075.1 (.cons _ _ _ _ _ checked4076.1 (.cons _ _ _ _ _ checked4077.1 (.cons _ _ _ _ _ checked4078.1 (.cons _ _ _ _ _ checked4079.1 (.cons _ _ _ _ _ checked4080.1 (.cons _ _ _ _ _ checked4081.1 (.cons _ _ _ _ _ checked4082.1 (.cons _ _ _ _ _ checked4083.1 (.cons _ _ _ _ _ checked4084.1 (.cons _ _ _ _ _ checked4085.1 (.cons _ _ _ _ _ checked4086.1 (.cons _ _ _ _ _ checked4087.1 (.cons _ _ _ _ _ checked4088.1 (.cons _ _ _ _ _ checked4089.1 (.cons _ _ _ _ _ checked4090.1 (.cons _ _ _ _ _ checked4091.1 (.cons _ _ _ _ _ checked4092.1 (.cons _ _ _ _ _ checked4093.1 (.cons _ _ _ _ _ checked4094.1 (.cons _ _ _ _ _ checked4095.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4128 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4032.2,checked4033.2,checked4034.2,checked4035.2,checked4036.2,checked4037.2,checked4038.2,checked4039.2,checked4040.2,checked4041.2,checked4042.2,checked4043.2,checked4044.2,checked4045.2,checked4046.2,checked4047.2,checked4048.2,checked4049.2,checked4050.2,checked4051.2,checked4052.2,checked4053.2,checked4054.2,checked4055.2,checked4056.2,checked4057.2,checked4058.2,checked4059.2,checked4060.2,checked4061.2,checked4062.2,checked4063.2,checked4064.2,checked4065.2,checked4066.2,checked4067.2,checked4068.2,checked4069.2,checked4070.2,checked4071.2,checked4072.2,checked4073.2,checked4074.2,checked4075.2,checked4076.2,checked4077.2,checked4078.2,checked4079.2,checked4080.2,checked4081.2,checked4082.2,checked4083.2,checked4084.2,checked4085.2,checked4086.2,checked4087.2,checked4088.2,checked4089.2,checked4090.2,checked4091.2,checked4092.2,checked4093.2,checked4094.2,checked4095.2]
  decide
end ArtifactPairedPathRoundGroup63
