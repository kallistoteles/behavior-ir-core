import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup65
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4160 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4160 : Bytes := ("    let r000010a0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4160 : bytes4160=statementBytes 4256 (op4160.map lower) ∧ bytes4160.length=41 := by core033_kernel_decide
def op4161 : List WordIR.Op := [.bxor 4255 4256]
def bytes4161 : Bytes := ("    let r000010a1: u32 = r0000109f ^ r000010a0;\n" : String).toByteArray.data.toList
theorem checked4161 : bytes4161=statementBytes 4257 (op4161.map lower) ∧ bytes4161.length=48 := by core033_kernel_decide
def op4162 : List WordIR.Op := [.bnot 4257]
def bytes4162 : Bytes := ("    let r000010a2: u32 = !r000010a1;\n" : String).toByteArray.data.toList
theorem checked4162 : bytes4162=statementBytes 4258 (op4162.map lower) ∧ bytes4162.length=37 := by core033_kernel_decide
def op4163 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4163 : Bytes := ("    let r000010a3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4163 : bytes4163=statementBytes 4259 (op4163.map lower) ∧ bytes4163.length=41 := by core033_kernel_decide
def op4164 : List WordIR.Op := [.badd 4258 4259]
def bytes4164 : Bytes := ("    let r000010a4: u32 = r000010a2.wrapping_add(r000010a3);\n" : String).toByteArray.data.toList
theorem checked4164 : bytes4164=statementBytes 4260 (op4164.map lower) ∧ bytes4164.length=60 := by core033_kernel_decide
def op4165 : List WordIR.Op := [.bnot 4260]
def bytes4165 : Bytes := ("    let r000010a5: u32 = !r000010a4;\n" : String).toByteArray.data.toList
theorem checked4165 : bytes4165=statementBytes 4261 (op4165.map lower) ∧ bytes4165.length=37 := by core033_kernel_decide
def op4166 : List WordIR.Op := [.band 4261 1899]
def bytes4166 : Bytes := ("    let r000010a6: u32 = r000010a5 & r0000076b;\n" : String).toByteArray.data.toList
theorem checked4166 : bytes4166=statementBytes 4262 (op4166.map lower) ∧ bytes4166.length=48 := by core033_kernel_decide
def op4167 : List WordIR.Op := [.bxor 4236 4262]
def bytes4167 : Bytes := ("    let r000010a7: u32 = r0000108c ^ r000010a6;\n" : String).toByteArray.data.toList
theorem checked4167 : bytes4167=statementBytes 4263 (op4167.map lower) ∧ bytes4167.length=48 := by core033_kernel_decide
def op4168 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4168 : Bytes := ("    let r000010a8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4168 : bytes4168=statementBytes 4264 (op4168.map lower) ∧ bytes4168.length=41 := by core033_kernel_decide
def op4169 : List WordIR.Op := [.bxor 616 4264]
def bytes4169 : Bytes := ("    let r000010a9: u32 = r00000268 ^ r000010a8;\n" : String).toByteArray.data.toList
theorem checked4169 : bytes4169=statementBytes 4265 (op4169.map lower) ∧ bytes4169.length=48 := by core033_kernel_decide
def op4170 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4170 : Bytes := ("    let r000010aa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4170 : bytes4170=statementBytes 4266 (op4170.map lower) ∧ bytes4170.length=41 := by core033_kernel_decide
def op4171 : List WordIR.Op := [.bnot 4266]
def bytes4171 : Bytes := ("    let r000010ab: u32 = !r000010aa;\n" : String).toByteArray.data.toList
theorem checked4171 : bytes4171=statementBytes 4267 (op4171.map lower) ∧ bytes4171.length=37 := by core033_kernel_decide
def op4172 : List WordIR.Op := [.band 4265 4267]
def bytes4172 : Bytes := ("    let r000010ac: u32 = r000010a9 & r000010ab;\n" : String).toByteArray.data.toList
theorem checked4172 : bytes4172=statementBytes 4268 (op4172.map lower) ∧ bytes4172.length=48 := by core033_kernel_decide
def op4173 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4173 : Bytes := ("    let r000010ad: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4173 : bytes4173=statementBytes 4269 (op4173.map lower) ∧ bytes4173.length=41 := by core033_kernel_decide
def op4174 : List WordIR.Op := [.bxor 616 4269]
def bytes4174 : Bytes := ("    let r000010ae: u32 = r00000268 ^ r000010ad;\n" : String).toByteArray.data.toList
theorem checked4174 : bytes4174=statementBytes 4270 (op4174.map lower) ∧ bytes4174.length=48 := by core033_kernel_decide
def op4175 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4175 : Bytes := ("    let r000010af: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4175 : bytes4175=statementBytes 4271 (op4175.map lower) ∧ bytes4175.length=41 := by core033_kernel_decide
def op4176 : List WordIR.Op := [.bnot 4271]
def bytes4176 : Bytes := ("    let r000010b0: u32 = !r000010af;\n" : String).toByteArray.data.toList
theorem checked4176 : bytes4176=statementBytes 4272 (op4176.map lower) ∧ bytes4176.length=37 := by core033_kernel_decide
def op4177 : List WordIR.Op := [.bxor 4270 4272]
def bytes4177 : Bytes := ("    let r000010b1: u32 = r000010ae ^ r000010b0;\n" : String).toByteArray.data.toList
theorem checked4177 : bytes4177=statementBytes 4273 (op4177.map lower) ∧ bytes4177.length=48 := by core033_kernel_decide
def op4178 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4178 : Bytes := ("    let r000010b2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4178 : bytes4178=statementBytes 4274 (op4178.map lower) ∧ bytes4178.length=41 := by core033_kernel_decide
def op4179 : List WordIR.Op := [.bxor 616 4274]
def bytes4179 : Bytes := ("    let r000010b3: u32 = r00000268 ^ r000010b2;\n" : String).toByteArray.data.toList
theorem checked4179 : bytes4179=statementBytes 4275 (op4179.map lower) ∧ bytes4179.length=48 := by core033_kernel_decide
def op4180 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4180 : Bytes := ("    let r000010b4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4180 : bytes4180=statementBytes 4276 (op4180.map lower) ∧ bytes4180.length=41 := by core033_kernel_decide
def op4181 : List WordIR.Op := [.bnot 4276]
def bytes4181 : Bytes := ("    let r000010b5: u32 = !r000010b4;\n" : String).toByteArray.data.toList
theorem checked4181 : bytes4181=statementBytes 4277 (op4181.map lower) ∧ bytes4181.length=37 := by core033_kernel_decide
def op4182 : List WordIR.Op := [.badd 4275 4277]
def bytes4182 : Bytes := ("    let r000010b6: u32 = r000010b3.wrapping_add(r000010b5);\n" : String).toByteArray.data.toList
theorem checked4182 : bytes4182=statementBytes 4278 (op4182.map lower) ∧ bytes4182.length=60 := by core033_kernel_decide
def op4183 : List WordIR.Op := [.bnot 4278]
def bytes4183 : Bytes := ("    let r000010b7: u32 = !r000010b6;\n" : String).toByteArray.data.toList
theorem checked4183 : bytes4183=statementBytes 4279 (op4183.map lower) ∧ bytes4183.length=37 := by core033_kernel_decide
def op4184 : List WordIR.Op := [.band 4273 4279]
def bytes4184 : Bytes := ("    let r000010b8: u32 = r000010b1 & r000010b7;\n" : String).toByteArray.data.toList
theorem checked4184 : bytes4184=statementBytes 4280 (op4184.map lower) ∧ bytes4184.length=48 := by core033_kernel_decide
def op4185 : List WordIR.Op := [.bxor 4268 4280]
def bytes4185 : Bytes := ("    let r000010b9: u32 = r000010ac ^ r000010b8;\n" : String).toByteArray.data.toList
theorem checked4185 : bytes4185=statementBytes 4281 (op4185.map lower) ∧ bytes4185.length=48 := by core033_kernel_decide
def op4186 : List WordIR.Op := [.shr 4281 31]
def bytes4186 : Bytes := ("    let r000010ba: u32 = r000010b9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4186 : bytes4186=statementBytes 4282 (op4186.map lower) ∧ bytes4186.length=54 := by core033_kernel_decide
def op4187 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4187 : Bytes := ("    let r000010bb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4187 : bytes4187=statementBytes 4283 (op4187.map lower) ∧ bytes4187.length=41 := by core033_kernel_decide
def op4188 : List WordIR.Op := [.bxor 4282 4283]
def bytes4188 : Bytes := ("    let r000010bc: u32 = r000010ba ^ r000010bb;\n" : String).toByteArray.data.toList
theorem checked4188 : bytes4188=statementBytes 4284 (op4188.map lower) ∧ bytes4188.length=48 := by core033_kernel_decide
def op4189 : List WordIR.Op := [.bnot 4284]
def bytes4189 : Bytes := ("    let r000010bd: u32 = !r000010bc;\n" : String).toByteArray.data.toList
theorem checked4189 : bytes4189=statementBytes 4285 (op4189.map lower) ∧ bytes4189.length=37 := by core033_kernel_decide
def op4190 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4190 : Bytes := ("    let r000010be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4190 : bytes4190=statementBytes 4286 (op4190.map lower) ∧ bytes4190.length=41 := by core033_kernel_decide
def op4191 : List WordIR.Op := [.badd 4285 4286]
def bytes4191 : Bytes := ("    let r000010bf: u32 = r000010bd.wrapping_add(r000010be);\n" : String).toByteArray.data.toList
theorem checked4191 : bytes4191=statementBytes 4287 (op4191.map lower) ∧ bytes4191.length=60 := by core033_kernel_decide
def op4192 : List WordIR.Op := [.band 4287 2094]
def bytes4192 : Bytes := ("    let r000010c0: u32 = r000010bf & r0000082e;\n" : String).toByteArray.data.toList
theorem checked4192 : bytes4192=statementBytes 4288 (op4192.map lower) ∧ bytes4192.length=48 := by core033_kernel_decide
def op4193 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4193 : Bytes := ("    let r000010c1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4193 : bytes4193=statementBytes 4289 (op4193.map lower) ∧ bytes4193.length=41 := by core033_kernel_decide
def op4194 : List WordIR.Op := [.bxor 616 4289]
def bytes4194 : Bytes := ("    let r000010c2: u32 = r00000268 ^ r000010c1;\n" : String).toByteArray.data.toList
theorem checked4194 : bytes4194=statementBytes 4290 (op4194.map lower) ∧ bytes4194.length=48 := by core033_kernel_decide
def op4195 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4195 : Bytes := ("    let r000010c3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4195 : bytes4195=statementBytes 4291 (op4195.map lower) ∧ bytes4195.length=41 := by core033_kernel_decide
def op4196 : List WordIR.Op := [.bnot 4291]
def bytes4196 : Bytes := ("    let r000010c4: u32 = !r000010c3;\n" : String).toByteArray.data.toList
theorem checked4196 : bytes4196=statementBytes 4292 (op4196.map lower) ∧ bytes4196.length=37 := by core033_kernel_decide
def op4197 : List WordIR.Op := [.band 4290 4292]
def bytes4197 : Bytes := ("    let r000010c5: u32 = r000010c2 & r000010c4;\n" : String).toByteArray.data.toList
theorem checked4197 : bytes4197=statementBytes 4293 (op4197.map lower) ∧ bytes4197.length=48 := by core033_kernel_decide
def op4198 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4198 : Bytes := ("    let r000010c6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4198 : bytes4198=statementBytes 4294 (op4198.map lower) ∧ bytes4198.length=41 := by core033_kernel_decide
def op4199 : List WordIR.Op := [.bxor 616 4294]
def bytes4199 : Bytes := ("    let r000010c7: u32 = r00000268 ^ r000010c6;\n" : String).toByteArray.data.toList
theorem checked4199 : bytes4199=statementBytes 4295 (op4199.map lower) ∧ bytes4199.length=48 := by core033_kernel_decide
def op4200 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4200 : Bytes := ("    let r000010c8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4200 : bytes4200=statementBytes 4296 (op4200.map lower) ∧ bytes4200.length=41 := by core033_kernel_decide
def op4201 : List WordIR.Op := [.bnot 4296]
def bytes4201 : Bytes := ("    let r000010c9: u32 = !r000010c8;\n" : String).toByteArray.data.toList
theorem checked4201 : bytes4201=statementBytes 4297 (op4201.map lower) ∧ bytes4201.length=37 := by core033_kernel_decide
def op4202 : List WordIR.Op := [.bxor 4295 4297]
def bytes4202 : Bytes := ("    let r000010ca: u32 = r000010c7 ^ r000010c9;\n" : String).toByteArray.data.toList
theorem checked4202 : bytes4202=statementBytes 4298 (op4202.map lower) ∧ bytes4202.length=48 := by core033_kernel_decide
def op4203 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4203 : Bytes := ("    let r000010cb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4203 : bytes4203=statementBytes 4299 (op4203.map lower) ∧ bytes4203.length=41 := by core033_kernel_decide
def op4204 : List WordIR.Op := [.bxor 616 4299]
def bytes4204 : Bytes := ("    let r000010cc: u32 = r00000268 ^ r000010cb;\n" : String).toByteArray.data.toList
theorem checked4204 : bytes4204=statementBytes 4300 (op4204.map lower) ∧ bytes4204.length=48 := by core033_kernel_decide
def op4205 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4205 : Bytes := ("    let r000010cd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4205 : bytes4205=statementBytes 4301 (op4205.map lower) ∧ bytes4205.length=41 := by core033_kernel_decide
def op4206 : List WordIR.Op := [.bnot 4301]
def bytes4206 : Bytes := ("    let r000010ce: u32 = !r000010cd;\n" : String).toByteArray.data.toList
theorem checked4206 : bytes4206=statementBytes 4302 (op4206.map lower) ∧ bytes4206.length=37 := by core033_kernel_decide
def op4207 : List WordIR.Op := [.badd 4300 4302]
def bytes4207 : Bytes := ("    let r000010cf: u32 = r000010cc.wrapping_add(r000010ce);\n" : String).toByteArray.data.toList
theorem checked4207 : bytes4207=statementBytes 4303 (op4207.map lower) ∧ bytes4207.length=60 := by core033_kernel_decide
def op4208 : List WordIR.Op := [.bnot 4303]
def bytes4208 : Bytes := ("    let r000010d0: u32 = !r000010cf;\n" : String).toByteArray.data.toList
theorem checked4208 : bytes4208=statementBytes 4304 (op4208.map lower) ∧ bytes4208.length=37 := by core033_kernel_decide
def op4209 : List WordIR.Op := [.band 4298 4304]
def bytes4209 : Bytes := ("    let r000010d1: u32 = r000010ca & r000010d0;\n" : String).toByteArray.data.toList
theorem checked4209 : bytes4209=statementBytes 4305 (op4209.map lower) ∧ bytes4209.length=48 := by core033_kernel_decide
def op4210 : List WordIR.Op := [.bxor 4293 4305]
def bytes4210 : Bytes := ("    let r000010d2: u32 = r000010c5 ^ r000010d1;\n" : String).toByteArray.data.toList
theorem checked4210 : bytes4210=statementBytes 4306 (op4210.map lower) ∧ bytes4210.length=48 := by core033_kernel_decide
def op4211 : List WordIR.Op := [.shr 4306 31]
def bytes4211 : Bytes := ("    let r000010d3: u32 = r000010d2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4211 : bytes4211=statementBytes 4307 (op4211.map lower) ∧ bytes4211.length=54 := by core033_kernel_decide
def op4212 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4212 : Bytes := ("    let r000010d4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4212 : bytes4212=statementBytes 4308 (op4212.map lower) ∧ bytes4212.length=41 := by core033_kernel_decide
def op4213 : List WordIR.Op := [.bxor 4307 4308]
def bytes4213 : Bytes := ("    let r000010d5: u32 = r000010d3 ^ r000010d4;\n" : String).toByteArray.data.toList
theorem checked4213 : bytes4213=statementBytes 4309 (op4213.map lower) ∧ bytes4213.length=48 := by core033_kernel_decide
def op4214 : List WordIR.Op := [.bnot 4309]
def bytes4214 : Bytes := ("    let r000010d6: u32 = !r000010d5;\n" : String).toByteArray.data.toList
theorem checked4214 : bytes4214=statementBytes 4310 (op4214.map lower) ∧ bytes4214.length=37 := by core033_kernel_decide
def op4215 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4215 : Bytes := ("    let r000010d7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4215 : bytes4215=statementBytes 4311 (op4215.map lower) ∧ bytes4215.length=41 := by core033_kernel_decide
def op4216 : List WordIR.Op := [.badd 4310 4311]
def bytes4216 : Bytes := ("    let r000010d8: u32 = r000010d6.wrapping_add(r000010d7);\n" : String).toByteArray.data.toList
theorem checked4216 : bytes4216=statementBytes 4312 (op4216.map lower) ∧ bytes4216.length=60 := by core033_kernel_decide
def op4217 : List WordIR.Op := [.bnot 4312]
def bytes4217 : Bytes := ("    let r000010d9: u32 = !r000010d8;\n" : String).toByteArray.data.toList
theorem checked4217 : bytes4217=statementBytes 4313 (op4217.map lower) ∧ bytes4217.length=37 := by core033_kernel_decide
def op4218 : List WordIR.Op := [.band 4313 1902]
def bytes4218 : Bytes := ("    let r000010da: u32 = r000010d9 & r0000076e;\n" : String).toByteArray.data.toList
theorem checked4218 : bytes4218=statementBytes 4314 (op4218.map lower) ∧ bytes4218.length=48 := by core033_kernel_decide
def op4219 : List WordIR.Op := [.bxor 4288 4314]
def bytes4219 : Bytes := ("    let r000010db: u32 = r000010c0 ^ r000010da;\n" : String).toByteArray.data.toList
theorem checked4219 : bytes4219=statementBytes 4315 (op4219.map lower) ∧ bytes4219.length=48 := by core033_kernel_decide
def op4220 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4220 : Bytes := ("    let r000010dc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4220 : bytes4220=statementBytes 4316 (op4220.map lower) ∧ bytes4220.length=41 := by core033_kernel_decide
def op4221 : List WordIR.Op := [.bxor 616 4316]
def bytes4221 : Bytes := ("    let r000010dd: u32 = r00000268 ^ r000010dc;\n" : String).toByteArray.data.toList
theorem checked4221 : bytes4221=statementBytes 4317 (op4221.map lower) ∧ bytes4221.length=48 := by core033_kernel_decide
def op4222 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4222 : Bytes := ("    let r000010de: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4222 : bytes4222=statementBytes 4318 (op4222.map lower) ∧ bytes4222.length=41 := by core033_kernel_decide
def op4223 : List WordIR.Op := [.bnot 4318]
def bytes4223 : Bytes := ("    let r000010df: u32 = !r000010de;\n" : String).toByteArray.data.toList
theorem checked4223 : bytes4223=statementBytes 4319 (op4223.map lower) ∧ bytes4223.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4160,op4161,op4162,op4163,op4164,op4165,op4166,op4167,op4168,op4169,op4170,op4171,op4172,op4173,op4174,op4175,op4176,op4177,op4178,op4179,op4180,op4181,op4182,op4183,op4184,op4185,op4186,op4187,op4188,op4189,op4190,op4191,op4192,op4193,op4194,op4195,op4196,op4197,op4198,op4199,op4200,op4201,op4202,op4203,op4204,op4205,op4206,op4207,op4208,op4209,op4210,op4211,op4212,op4213,op4214,op4215,op4216,op4217,op4218,op4219,op4220,op4221,op4222,op4223]
def chunks : List Bytes := [bytes4160,bytes4161,bytes4162,bytes4163,bytes4164,bytes4165,bytes4166,bytes4167,bytes4168,bytes4169,bytes4170,bytes4171,bytes4172,bytes4173,bytes4174,bytes4175,bytes4176,bytes4177,bytes4178,bytes4179,bytes4180,bytes4181,bytes4182,bytes4183,bytes4184,bytes4185,bytes4186,bytes4187,bytes4188,bytes4189,bytes4190,bytes4191,bytes4192,bytes4193,bytes4194,bytes4195,bytes4196,bytes4197,bytes4198,bytes4199,bytes4200,bytes4201,bytes4202,bytes4203,bytes4204,bytes4205,bytes4206,bytes4207,bytes4208,bytes4209,bytes4210,bytes4211,bytes4212,bytes4213,bytes4214,bytes4215,bytes4216,bytes4217,bytes4218,bytes4219,bytes4220,bytes4221,bytes4222,bytes4223]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4256 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4160.1 (.cons _ _ _ _ _ checked4161.1 (.cons _ _ _ _ _ checked4162.1 (.cons _ _ _ _ _ checked4163.1 (.cons _ _ _ _ _ checked4164.1 (.cons _ _ _ _ _ checked4165.1 (.cons _ _ _ _ _ checked4166.1 (.cons _ _ _ _ _ checked4167.1 (.cons _ _ _ _ _ checked4168.1 (.cons _ _ _ _ _ checked4169.1 (.cons _ _ _ _ _ checked4170.1 (.cons _ _ _ _ _ checked4171.1 (.cons _ _ _ _ _ checked4172.1 (.cons _ _ _ _ _ checked4173.1 (.cons _ _ _ _ _ checked4174.1 (.cons _ _ _ _ _ checked4175.1 (.cons _ _ _ _ _ checked4176.1 (.cons _ _ _ _ _ checked4177.1 (.cons _ _ _ _ _ checked4178.1 (.cons _ _ _ _ _ checked4179.1 (.cons _ _ _ _ _ checked4180.1 (.cons _ _ _ _ _ checked4181.1 (.cons _ _ _ _ _ checked4182.1 (.cons _ _ _ _ _ checked4183.1 (.cons _ _ _ _ _ checked4184.1 (.cons _ _ _ _ _ checked4185.1 (.cons _ _ _ _ _ checked4186.1 (.cons _ _ _ _ _ checked4187.1 (.cons _ _ _ _ _ checked4188.1 (.cons _ _ _ _ _ checked4189.1 (.cons _ _ _ _ _ checked4190.1 (.cons _ _ _ _ _ checked4191.1 (.cons _ _ _ _ _ checked4192.1 (.cons _ _ _ _ _ checked4193.1 (.cons _ _ _ _ _ checked4194.1 (.cons _ _ _ _ _ checked4195.1 (.cons _ _ _ _ _ checked4196.1 (.cons _ _ _ _ _ checked4197.1 (.cons _ _ _ _ _ checked4198.1 (.cons _ _ _ _ _ checked4199.1 (.cons _ _ _ _ _ checked4200.1 (.cons _ _ _ _ _ checked4201.1 (.cons _ _ _ _ _ checked4202.1 (.cons _ _ _ _ _ checked4203.1 (.cons _ _ _ _ _ checked4204.1 (.cons _ _ _ _ _ checked4205.1 (.cons _ _ _ _ _ checked4206.1 (.cons _ _ _ _ _ checked4207.1 (.cons _ _ _ _ _ checked4208.1 (.cons _ _ _ _ _ checked4209.1 (.cons _ _ _ _ _ checked4210.1 (.cons _ _ _ _ _ checked4211.1 (.cons _ _ _ _ _ checked4212.1 (.cons _ _ _ _ _ checked4213.1 (.cons _ _ _ _ _ checked4214.1 (.cons _ _ _ _ _ checked4215.1 (.cons _ _ _ _ _ checked4216.1 (.cons _ _ _ _ _ checked4217.1 (.cons _ _ _ _ _ checked4218.1 (.cons _ _ _ _ _ checked4219.1 (.cons _ _ _ _ _ checked4220.1 (.cons _ _ _ _ _ checked4221.1 (.cons _ _ _ _ _ checked4222.1 (.cons _ _ _ _ _ checked4223.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4256 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4160.2,checked4161.2,checked4162.2,checked4163.2,checked4164.2,checked4165.2,checked4166.2,checked4167.2,checked4168.2,checked4169.2,checked4170.2,checked4171.2,checked4172.2,checked4173.2,checked4174.2,checked4175.2,checked4176.2,checked4177.2,checked4178.2,checked4179.2,checked4180.2,checked4181.2,checked4182.2,checked4183.2,checked4184.2,checked4185.2,checked4186.2,checked4187.2,checked4188.2,checked4189.2,checked4190.2,checked4191.2,checked4192.2,checked4193.2,checked4194.2,checked4195.2,checked4196.2,checked4197.2,checked4198.2,checked4199.2,checked4200.2,checked4201.2,checked4202.2,checked4203.2,checked4204.2,checked4205.2,checked4206.2,checked4207.2,checked4208.2,checked4209.2,checked4210.2,checked4211.2,checked4212.2,checked4213.2,checked4214.2,checked4215.2,checked4216.2,checked4217.2,checked4218.2,checked4219.2,checked4220.2,checked4221.2,checked4222.2,checked4223.2]
  decide
end ArtifactPairedPathRoundGroup65
