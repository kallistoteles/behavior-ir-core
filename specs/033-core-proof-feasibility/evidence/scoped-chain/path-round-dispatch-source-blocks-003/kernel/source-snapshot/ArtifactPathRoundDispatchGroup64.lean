import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup64
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4096 : List WordIR.Op := [.bxor 96 4138]
def bytes4096 : Bytes := ("    let r0000102b: u32 = r00000060 ^ r0000102a;\n" : String).toByteArray.data.toList
theorem checked4096 : bytes4096=statementBytes 4139 (op4096.map lower) ∧ bytes4096.length=48 := by core033_kernel_decide
def op4097 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4097 : Bytes := ("    let r0000102c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4097 : bytes4097=statementBytes 4140 (op4097.map lower) ∧ bytes4097.length=41 := by core033_kernel_decide
def op4098 : List WordIR.Op := [.bnot 4140]
def bytes4098 : Bytes := ("    let r0000102d: u32 = !r0000102c;\n" : String).toByteArray.data.toList
theorem checked4098 : bytes4098=statementBytes 4141 (op4098.map lower) ∧ bytes4098.length=37 := by core033_kernel_decide
def op4099 : List WordIR.Op := [.bxor 4139 4141]
def bytes4099 : Bytes := ("    let r0000102e: u32 = r0000102b ^ r0000102d;\n" : String).toByteArray.data.toList
theorem checked4099 : bytes4099=statementBytes 4142 (op4099.map lower) ∧ bytes4099.length=48 := by core033_kernel_decide
def op4100 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4100 : Bytes := ("    let r0000102f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4100 : bytes4100=statementBytes 4143 (op4100.map lower) ∧ bytes4100.length=41 := by core033_kernel_decide
def op4101 : List WordIR.Op := [.bxor 96 4143]
def bytes4101 : Bytes := ("    let r00001030: u32 = r00000060 ^ r0000102f;\n" : String).toByteArray.data.toList
theorem checked4101 : bytes4101=statementBytes 4144 (op4101.map lower) ∧ bytes4101.length=48 := by core033_kernel_decide
def op4102 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4102 : Bytes := ("    let r00001031: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4102 : bytes4102=statementBytes 4145 (op4102.map lower) ∧ bytes4102.length=41 := by core033_kernel_decide
def op4103 : List WordIR.Op := [.bnot 4145]
def bytes4103 : Bytes := ("    let r00001032: u32 = !r00001031;\n" : String).toByteArray.data.toList
theorem checked4103 : bytes4103=statementBytes 4146 (op4103.map lower) ∧ bytes4103.length=37 := by core033_kernel_decide
def op4104 : List WordIR.Op := [.badd 4144 4146]
def bytes4104 : Bytes := ("    let r00001033: u32 = r00001030.wrapping_add(r00001032);\n" : String).toByteArray.data.toList
theorem checked4104 : bytes4104=statementBytes 4147 (op4104.map lower) ∧ bytes4104.length=60 := by core033_kernel_decide
def op4105 : List WordIR.Op := [.bnot 4147]
def bytes4105 : Bytes := ("    let r00001034: u32 = !r00001033;\n" : String).toByteArray.data.toList
theorem checked4105 : bytes4105=statementBytes 4148 (op4105.map lower) ∧ bytes4105.length=37 := by core033_kernel_decide
def op4106 : List WordIR.Op := [.band 4142 4148]
def bytes4106 : Bytes := ("    let r00001035: u32 = r0000102e & r00001034;\n" : String).toByteArray.data.toList
theorem checked4106 : bytes4106=statementBytes 4149 (op4106.map lower) ∧ bytes4106.length=48 := by core033_kernel_decide
def op4107 : List WordIR.Op := [.bxor 4137 4149]
def bytes4107 : Bytes := ("    let r00001036: u32 = r00001029 ^ r00001035;\n" : String).toByteArray.data.toList
theorem checked4107 : bytes4107=statementBytes 4150 (op4107.map lower) ∧ bytes4107.length=48 := by core033_kernel_decide
def op4108 : List WordIR.Op := [.shr 4150 31]
def bytes4108 : Bytes := ("    let r00001037: u32 = r00001036 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4108 : bytes4108=statementBytes 4151 (op4108.map lower) ∧ bytes4108.length=54 := by core033_kernel_decide
def op4109 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4109 : Bytes := ("    let r00001038: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4109 : bytes4109=statementBytes 4152 (op4109.map lower) ∧ bytes4109.length=41 := by core033_kernel_decide
def op4110 : List WordIR.Op := [.bxor 4151 4152]
def bytes4110 : Bytes := ("    let r00001039: u32 = r00001037 ^ r00001038;\n" : String).toByteArray.data.toList
theorem checked4110 : bytes4110=statementBytes 4153 (op4110.map lower) ∧ bytes4110.length=48 := by core033_kernel_decide
def op4111 : List WordIR.Op := [.bnot 4153]
def bytes4111 : Bytes := ("    let r0000103a: u32 = !r00001039;\n" : String).toByteArray.data.toList
theorem checked4111 : bytes4111=statementBytes 4154 (op4111.map lower) ∧ bytes4111.length=37 := by core033_kernel_decide
def op4112 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4112 : Bytes := ("    let r0000103b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4112 : bytes4112=statementBytes 4155 (op4112.map lower) ∧ bytes4112.length=41 := by core033_kernel_decide
def op4113 : List WordIR.Op := [.badd 4154 4155]
def bytes4113 : Bytes := ("    let r0000103c: u32 = r0000103a.wrapping_add(r0000103b);\n" : String).toByteArray.data.toList
theorem checked4113 : bytes4113=statementBytes 4156 (op4113.map lower) ∧ bytes4113.length=60 := by core033_kernel_decide
def op4114 : List WordIR.Op := [.bnot 4156]
def bytes4114 : Bytes := ("    let r0000103d: u32 = !r0000103c;\n" : String).toByteArray.data.toList
theorem checked4114 : bytes4114=statementBytes 4157 (op4114.map lower) ∧ bytes4114.length=37 := by core033_kernel_decide
def op4115 : List WordIR.Op := [.band 4157 1403]
def bytes4115 : Bytes := ("    let r0000103e: u32 = r0000103d & r0000057b;\n" : String).toByteArray.data.toList
theorem checked4115 : bytes4115=statementBytes 4158 (op4115.map lower) ∧ bytes4115.length=48 := by core033_kernel_decide
def op4116 : List WordIR.Op := [.bxor 4132 4158]
def bytes4116 : Bytes := ("    let r0000103f: u32 = r00001024 ^ r0000103e;\n" : String).toByteArray.data.toList
theorem checked4116 : bytes4116=statementBytes 4159 (op4116.map lower) ∧ bytes4116.length=48 := by core033_kernel_decide
def op4117 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4117 : Bytes := ("    let r00001040: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4117 : bytes4117=statementBytes 4160 (op4117.map lower) ∧ bytes4117.length=41 := by core033_kernel_decide
def op4118 : List WordIR.Op := [.bxor 96 4160]
def bytes4118 : Bytes := ("    let r00001041: u32 = r00000060 ^ r00001040;\n" : String).toByteArray.data.toList
theorem checked4118 : bytes4118=statementBytes 4161 (op4118.map lower) ∧ bytes4118.length=48 := by core033_kernel_decide
def op4119 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4119 : Bytes := ("    let r00001042: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4119 : bytes4119=statementBytes 4162 (op4119.map lower) ∧ bytes4119.length=41 := by core033_kernel_decide
def op4120 : List WordIR.Op := [.bnot 4162]
def bytes4120 : Bytes := ("    let r00001043: u32 = !r00001042;\n" : String).toByteArray.data.toList
theorem checked4120 : bytes4120=statementBytes 4163 (op4120.map lower) ∧ bytes4120.length=37 := by core033_kernel_decide
def op4121 : List WordIR.Op := [.band 4161 4163]
def bytes4121 : Bytes := ("    let r00001044: u32 = r00001041 & r00001043;\n" : String).toByteArray.data.toList
theorem checked4121 : bytes4121=statementBytes 4164 (op4121.map lower) ∧ bytes4121.length=48 := by core033_kernel_decide
def op4122 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4122 : Bytes := ("    let r00001045: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4122 : bytes4122=statementBytes 4165 (op4122.map lower) ∧ bytes4122.length=41 := by core033_kernel_decide
def op4123 : List WordIR.Op := [.bxor 96 4165]
def bytes4123 : Bytes := ("    let r00001046: u32 = r00000060 ^ r00001045;\n" : String).toByteArray.data.toList
theorem checked4123 : bytes4123=statementBytes 4166 (op4123.map lower) ∧ bytes4123.length=48 := by core033_kernel_decide
def op4124 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4124 : Bytes := ("    let r00001047: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4124 : bytes4124=statementBytes 4167 (op4124.map lower) ∧ bytes4124.length=41 := by core033_kernel_decide
def op4125 : List WordIR.Op := [.bnot 4167]
def bytes4125 : Bytes := ("    let r00001048: u32 = !r00001047;\n" : String).toByteArray.data.toList
theorem checked4125 : bytes4125=statementBytes 4168 (op4125.map lower) ∧ bytes4125.length=37 := by core033_kernel_decide
def op4126 : List WordIR.Op := [.bxor 4166 4168]
def bytes4126 : Bytes := ("    let r00001049: u32 = r00001046 ^ r00001048;\n" : String).toByteArray.data.toList
theorem checked4126 : bytes4126=statementBytes 4169 (op4126.map lower) ∧ bytes4126.length=48 := by core033_kernel_decide
def op4127 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4127 : Bytes := ("    let r0000104a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4127 : bytes4127=statementBytes 4170 (op4127.map lower) ∧ bytes4127.length=41 := by core033_kernel_decide
def op4128 : List WordIR.Op := [.bxor 96 4170]
def bytes4128 : Bytes := ("    let r0000104b: u32 = r00000060 ^ r0000104a;\n" : String).toByteArray.data.toList
theorem checked4128 : bytes4128=statementBytes 4171 (op4128.map lower) ∧ bytes4128.length=48 := by core033_kernel_decide
def op4129 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4129 : Bytes := ("    let r0000104c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4129 : bytes4129=statementBytes 4172 (op4129.map lower) ∧ bytes4129.length=41 := by core033_kernel_decide
def op4130 : List WordIR.Op := [.bnot 4172]
def bytes4130 : Bytes := ("    let r0000104d: u32 = !r0000104c;\n" : String).toByteArray.data.toList
theorem checked4130 : bytes4130=statementBytes 4173 (op4130.map lower) ∧ bytes4130.length=37 := by core033_kernel_decide
def op4131 : List WordIR.Op := [.badd 4171 4173]
def bytes4131 : Bytes := ("    let r0000104e: u32 = r0000104b.wrapping_add(r0000104d);\n" : String).toByteArray.data.toList
theorem checked4131 : bytes4131=statementBytes 4174 (op4131.map lower) ∧ bytes4131.length=60 := by core033_kernel_decide
def op4132 : List WordIR.Op := [.bnot 4174]
def bytes4132 : Bytes := ("    let r0000104f: u32 = !r0000104e;\n" : String).toByteArray.data.toList
theorem checked4132 : bytes4132=statementBytes 4175 (op4132.map lower) ∧ bytes4132.length=37 := by core033_kernel_decide
def op4133 : List WordIR.Op := [.band 4169 4175]
def bytes4133 : Bytes := ("    let r00001050: u32 = r00001049 & r0000104f;\n" : String).toByteArray.data.toList
theorem checked4133 : bytes4133=statementBytes 4176 (op4133.map lower) ∧ bytes4133.length=48 := by core033_kernel_decide
def op4134 : List WordIR.Op := [.bxor 4164 4176]
def bytes4134 : Bytes := ("    let r00001051: u32 = r00001044 ^ r00001050;\n" : String).toByteArray.data.toList
theorem checked4134 : bytes4134=statementBytes 4177 (op4134.map lower) ∧ bytes4134.length=48 := by core033_kernel_decide
def op4135 : List WordIR.Op := [.shr 4177 31]
def bytes4135 : Bytes := ("    let r00001052: u32 = r00001051 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4135 : bytes4135=statementBytes 4178 (op4135.map lower) ∧ bytes4135.length=54 := by core033_kernel_decide
def op4136 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4136 : Bytes := ("    let r00001053: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4136 : bytes4136=statementBytes 4179 (op4136.map lower) ∧ bytes4136.length=41 := by core033_kernel_decide
def op4137 : List WordIR.Op := [.bxor 4178 4179]
def bytes4137 : Bytes := ("    let r00001054: u32 = r00001052 ^ r00001053;\n" : String).toByteArray.data.toList
theorem checked4137 : bytes4137=statementBytes 4180 (op4137.map lower) ∧ bytes4137.length=48 := by core033_kernel_decide
def op4138 : List WordIR.Op := [.bnot 4180]
def bytes4138 : Bytes := ("    let r00001055: u32 = !r00001054;\n" : String).toByteArray.data.toList
theorem checked4138 : bytes4138=statementBytes 4181 (op4138.map lower) ∧ bytes4138.length=37 := by core033_kernel_decide
def op4139 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4139 : Bytes := ("    let r00001056: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4139 : bytes4139=statementBytes 4182 (op4139.map lower) ∧ bytes4139.length=41 := by core033_kernel_decide
def op4140 : List WordIR.Op := [.badd 4181 4182]
def bytes4140 : Bytes := ("    let r00001057: u32 = r00001055.wrapping_add(r00001056);\n" : String).toByteArray.data.toList
theorem checked4140 : bytes4140=statementBytes 4183 (op4140.map lower) ∧ bytes4140.length=60 := by core033_kernel_decide
def op4141 : List WordIR.Op := [.band 4183 1598]
def bytes4141 : Bytes := ("    let r00001058: u32 = r00001057 & r0000063e;\n" : String).toByteArray.data.toList
theorem checked4141 : bytes4141=statementBytes 4184 (op4141.map lower) ∧ bytes4141.length=48 := by core033_kernel_decide
def op4142 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4142 : Bytes := ("    let r00001059: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4142 : bytes4142=statementBytes 4185 (op4142.map lower) ∧ bytes4142.length=41 := by core033_kernel_decide
def op4143 : List WordIR.Op := [.bxor 96 4185]
def bytes4143 : Bytes := ("    let r0000105a: u32 = r00000060 ^ r00001059;\n" : String).toByteArray.data.toList
theorem checked4143 : bytes4143=statementBytes 4186 (op4143.map lower) ∧ bytes4143.length=48 := by core033_kernel_decide
def op4144 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4144 : Bytes := ("    let r0000105b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4144 : bytes4144=statementBytes 4187 (op4144.map lower) ∧ bytes4144.length=41 := by core033_kernel_decide
def op4145 : List WordIR.Op := [.bnot 4187]
def bytes4145 : Bytes := ("    let r0000105c: u32 = !r0000105b;\n" : String).toByteArray.data.toList
theorem checked4145 : bytes4145=statementBytes 4188 (op4145.map lower) ∧ bytes4145.length=37 := by core033_kernel_decide
def op4146 : List WordIR.Op := [.band 4186 4188]
def bytes4146 : Bytes := ("    let r0000105d: u32 = r0000105a & r0000105c;\n" : String).toByteArray.data.toList
theorem checked4146 : bytes4146=statementBytes 4189 (op4146.map lower) ∧ bytes4146.length=48 := by core033_kernel_decide
def op4147 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4147 : Bytes := ("    let r0000105e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4147 : bytes4147=statementBytes 4190 (op4147.map lower) ∧ bytes4147.length=41 := by core033_kernel_decide
def op4148 : List WordIR.Op := [.bxor 96 4190]
def bytes4148 : Bytes := ("    let r0000105f: u32 = r00000060 ^ r0000105e;\n" : String).toByteArray.data.toList
theorem checked4148 : bytes4148=statementBytes 4191 (op4148.map lower) ∧ bytes4148.length=48 := by core033_kernel_decide
def op4149 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4149 : Bytes := ("    let r00001060: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4149 : bytes4149=statementBytes 4192 (op4149.map lower) ∧ bytes4149.length=41 := by core033_kernel_decide
def op4150 : List WordIR.Op := [.bnot 4192]
def bytes4150 : Bytes := ("    let r00001061: u32 = !r00001060;\n" : String).toByteArray.data.toList
theorem checked4150 : bytes4150=statementBytes 4193 (op4150.map lower) ∧ bytes4150.length=37 := by core033_kernel_decide
def op4151 : List WordIR.Op := [.bxor 4191 4193]
def bytes4151 : Bytes := ("    let r00001062: u32 = r0000105f ^ r00001061;\n" : String).toByteArray.data.toList
theorem checked4151 : bytes4151=statementBytes 4194 (op4151.map lower) ∧ bytes4151.length=48 := by core033_kernel_decide
def op4152 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4152 : Bytes := ("    let r00001063: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4152 : bytes4152=statementBytes 4195 (op4152.map lower) ∧ bytes4152.length=41 := by core033_kernel_decide
def op4153 : List WordIR.Op := [.bxor 96 4195]
def bytes4153 : Bytes := ("    let r00001064: u32 = r00000060 ^ r00001063;\n" : String).toByteArray.data.toList
theorem checked4153 : bytes4153=statementBytes 4196 (op4153.map lower) ∧ bytes4153.length=48 := by core033_kernel_decide
def op4154 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4154 : Bytes := ("    let r00001065: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4154 : bytes4154=statementBytes 4197 (op4154.map lower) ∧ bytes4154.length=41 := by core033_kernel_decide
def op4155 : List WordIR.Op := [.bnot 4197]
def bytes4155 : Bytes := ("    let r00001066: u32 = !r00001065;\n" : String).toByteArray.data.toList
theorem checked4155 : bytes4155=statementBytes 4198 (op4155.map lower) ∧ bytes4155.length=37 := by core033_kernel_decide
def op4156 : List WordIR.Op := [.badd 4196 4198]
def bytes4156 : Bytes := ("    let r00001067: u32 = r00001064.wrapping_add(r00001066);\n" : String).toByteArray.data.toList
theorem checked4156 : bytes4156=statementBytes 4199 (op4156.map lower) ∧ bytes4156.length=60 := by core033_kernel_decide
def op4157 : List WordIR.Op := [.bnot 4199]
def bytes4157 : Bytes := ("    let r00001068: u32 = !r00001067;\n" : String).toByteArray.data.toList
theorem checked4157 : bytes4157=statementBytes 4200 (op4157.map lower) ∧ bytes4157.length=37 := by core033_kernel_decide
def op4158 : List WordIR.Op := [.band 4194 4200]
def bytes4158 : Bytes := ("    let r00001069: u32 = r00001062 & r00001068;\n" : String).toByteArray.data.toList
theorem checked4158 : bytes4158=statementBytes 4201 (op4158.map lower) ∧ bytes4158.length=48 := by core033_kernel_decide
def op4159 : List WordIR.Op := [.bxor 4189 4201]
def bytes4159 : Bytes := ("    let r0000106a: u32 = r0000105d ^ r00001069;\n" : String).toByteArray.data.toList
theorem checked4159 : bytes4159=statementBytes 4202 (op4159.map lower) ∧ bytes4159.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4096,op4097,op4098,op4099,op4100,op4101,op4102,op4103,op4104,op4105,op4106,op4107,op4108,op4109,op4110,op4111,op4112,op4113,op4114,op4115,op4116,op4117,op4118,op4119,op4120,op4121,op4122,op4123,op4124,op4125,op4126,op4127,op4128,op4129,op4130,op4131,op4132,op4133,op4134,op4135,op4136,op4137,op4138,op4139,op4140,op4141,op4142,op4143,op4144,op4145,op4146,op4147,op4148,op4149,op4150,op4151,op4152,op4153,op4154,op4155,op4156,op4157,op4158,op4159]
def chunks : List Bytes := [bytes4096,bytes4097,bytes4098,bytes4099,bytes4100,bytes4101,bytes4102,bytes4103,bytes4104,bytes4105,bytes4106,bytes4107,bytes4108,bytes4109,bytes4110,bytes4111,bytes4112,bytes4113,bytes4114,bytes4115,bytes4116,bytes4117,bytes4118,bytes4119,bytes4120,bytes4121,bytes4122,bytes4123,bytes4124,bytes4125,bytes4126,bytes4127,bytes4128,bytes4129,bytes4130,bytes4131,bytes4132,bytes4133,bytes4134,bytes4135,bytes4136,bytes4137,bytes4138,bytes4139,bytes4140,bytes4141,bytes4142,bytes4143,bytes4144,bytes4145,bytes4146,bytes4147,bytes4148,bytes4149,bytes4150,bytes4151,bytes4152,bytes4153,bytes4154,bytes4155,bytes4156,bytes4157,bytes4158,bytes4159]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4139 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4096.1 (.cons _ _ _ _ _ checked4097.1 (.cons _ _ _ _ _ checked4098.1 (.cons _ _ _ _ _ checked4099.1 (.cons _ _ _ _ _ checked4100.1 (.cons _ _ _ _ _ checked4101.1 (.cons _ _ _ _ _ checked4102.1 (.cons _ _ _ _ _ checked4103.1 (.cons _ _ _ _ _ checked4104.1 (.cons _ _ _ _ _ checked4105.1 (.cons _ _ _ _ _ checked4106.1 (.cons _ _ _ _ _ checked4107.1 (.cons _ _ _ _ _ checked4108.1 (.cons _ _ _ _ _ checked4109.1 (.cons _ _ _ _ _ checked4110.1 (.cons _ _ _ _ _ checked4111.1 (.cons _ _ _ _ _ checked4112.1 (.cons _ _ _ _ _ checked4113.1 (.cons _ _ _ _ _ checked4114.1 (.cons _ _ _ _ _ checked4115.1 (.cons _ _ _ _ _ checked4116.1 (.cons _ _ _ _ _ checked4117.1 (.cons _ _ _ _ _ checked4118.1 (.cons _ _ _ _ _ checked4119.1 (.cons _ _ _ _ _ checked4120.1 (.cons _ _ _ _ _ checked4121.1 (.cons _ _ _ _ _ checked4122.1 (.cons _ _ _ _ _ checked4123.1 (.cons _ _ _ _ _ checked4124.1 (.cons _ _ _ _ _ checked4125.1 (.cons _ _ _ _ _ checked4126.1 (.cons _ _ _ _ _ checked4127.1 (.cons _ _ _ _ _ checked4128.1 (.cons _ _ _ _ _ checked4129.1 (.cons _ _ _ _ _ checked4130.1 (.cons _ _ _ _ _ checked4131.1 (.cons _ _ _ _ _ checked4132.1 (.cons _ _ _ _ _ checked4133.1 (.cons _ _ _ _ _ checked4134.1 (.cons _ _ _ _ _ checked4135.1 (.cons _ _ _ _ _ checked4136.1 (.cons _ _ _ _ _ checked4137.1 (.cons _ _ _ _ _ checked4138.1 (.cons _ _ _ _ _ checked4139.1 (.cons _ _ _ _ _ checked4140.1 (.cons _ _ _ _ _ checked4141.1 (.cons _ _ _ _ _ checked4142.1 (.cons _ _ _ _ _ checked4143.1 (.cons _ _ _ _ _ checked4144.1 (.cons _ _ _ _ _ checked4145.1 (.cons _ _ _ _ _ checked4146.1 (.cons _ _ _ _ _ checked4147.1 (.cons _ _ _ _ _ checked4148.1 (.cons _ _ _ _ _ checked4149.1 (.cons _ _ _ _ _ checked4150.1 (.cons _ _ _ _ _ checked4151.1 (.cons _ _ _ _ _ checked4152.1 (.cons _ _ _ _ _ checked4153.1 (.cons _ _ _ _ _ checked4154.1 (.cons _ _ _ _ _ checked4155.1 (.cons _ _ _ _ _ checked4156.1 (.cons _ _ _ _ _ checked4157.1 (.cons _ _ _ _ _ checked4158.1 (.cons _ _ _ _ _ checked4159.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4139 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2857 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4096.2,checked4097.2,checked4098.2,checked4099.2,checked4100.2,checked4101.2,checked4102.2,checked4103.2,checked4104.2,checked4105.2,checked4106.2,checked4107.2,checked4108.2,checked4109.2,checked4110.2,checked4111.2,checked4112.2,checked4113.2,checked4114.2,checked4115.2,checked4116.2,checked4117.2,checked4118.2,checked4119.2,checked4120.2,checked4121.2,checked4122.2,checked4123.2,checked4124.2,checked4125.2,checked4126.2,checked4127.2,checked4128.2,checked4129.2,checked4130.2,checked4131.2,checked4132.2,checked4133.2,checked4134.2,checked4135.2,checked4136.2,checked4137.2,checked4138.2,checked4139.2,checked4140.2,checked4141.2,checked4142.2,checked4143.2,checked4144.2,checked4145.2,checked4146.2,checked4147.2,checked4148.2,checked4149.2,checked4150.2,checked4151.2,checked4152.2,checked4153.2,checked4154.2,checked4155.2,checked4156.2,checked4157.2,checked4158.2,checked4159.2]
  decide
end ArtifactPathRoundDispatchGroup64
