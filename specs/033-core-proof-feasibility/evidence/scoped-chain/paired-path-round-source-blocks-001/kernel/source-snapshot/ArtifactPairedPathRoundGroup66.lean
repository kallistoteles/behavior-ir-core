import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup66
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4224 : List WordIR.Op := [.band 4317 4319]
def bytes4224 : Bytes := ("    let r000010e0: u32 = r000010dd & r000010df;\n" : String).toByteArray.data.toList
theorem checked4224 : bytes4224=statementBytes 4320 (op4224.map lower) ∧ bytes4224.length=48 := by core033_kernel_decide
def op4225 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4225 : Bytes := ("    let r000010e1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4225 : bytes4225=statementBytes 4321 (op4225.map lower) ∧ bytes4225.length=41 := by core033_kernel_decide
def op4226 : List WordIR.Op := [.bxor 616 4321]
def bytes4226 : Bytes := ("    let r000010e2: u32 = r00000268 ^ r000010e1;\n" : String).toByteArray.data.toList
theorem checked4226 : bytes4226=statementBytes 4322 (op4226.map lower) ∧ bytes4226.length=48 := by core033_kernel_decide
def op4227 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4227 : Bytes := ("    let r000010e3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4227 : bytes4227=statementBytes 4323 (op4227.map lower) ∧ bytes4227.length=41 := by core033_kernel_decide
def op4228 : List WordIR.Op := [.bnot 4323]
def bytes4228 : Bytes := ("    let r000010e4: u32 = !r000010e3;\n" : String).toByteArray.data.toList
theorem checked4228 : bytes4228=statementBytes 4324 (op4228.map lower) ∧ bytes4228.length=37 := by core033_kernel_decide
def op4229 : List WordIR.Op := [.bxor 4322 4324]
def bytes4229 : Bytes := ("    let r000010e5: u32 = r000010e2 ^ r000010e4;\n" : String).toByteArray.data.toList
theorem checked4229 : bytes4229=statementBytes 4325 (op4229.map lower) ∧ bytes4229.length=48 := by core033_kernel_decide
def op4230 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4230 : Bytes := ("    let r000010e6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4230 : bytes4230=statementBytes 4326 (op4230.map lower) ∧ bytes4230.length=41 := by core033_kernel_decide
def op4231 : List WordIR.Op := [.bxor 616 4326]
def bytes4231 : Bytes := ("    let r000010e7: u32 = r00000268 ^ r000010e6;\n" : String).toByteArray.data.toList
theorem checked4231 : bytes4231=statementBytes 4327 (op4231.map lower) ∧ bytes4231.length=48 := by core033_kernel_decide
def op4232 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4232 : Bytes := ("    let r000010e8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4232 : bytes4232=statementBytes 4328 (op4232.map lower) ∧ bytes4232.length=41 := by core033_kernel_decide
def op4233 : List WordIR.Op := [.bnot 4328]
def bytes4233 : Bytes := ("    let r000010e9: u32 = !r000010e8;\n" : String).toByteArray.data.toList
theorem checked4233 : bytes4233=statementBytes 4329 (op4233.map lower) ∧ bytes4233.length=37 := by core033_kernel_decide
def op4234 : List WordIR.Op := [.badd 4327 4329]
def bytes4234 : Bytes := ("    let r000010ea: u32 = r000010e7.wrapping_add(r000010e9);\n" : String).toByteArray.data.toList
theorem checked4234 : bytes4234=statementBytes 4330 (op4234.map lower) ∧ bytes4234.length=60 := by core033_kernel_decide
def op4235 : List WordIR.Op := [.bnot 4330]
def bytes4235 : Bytes := ("    let r000010eb: u32 = !r000010ea;\n" : String).toByteArray.data.toList
theorem checked4235 : bytes4235=statementBytes 4331 (op4235.map lower) ∧ bytes4235.length=37 := by core033_kernel_decide
def op4236 : List WordIR.Op := [.band 4325 4331]
def bytes4236 : Bytes := ("    let r000010ec: u32 = r000010e5 & r000010eb;\n" : String).toByteArray.data.toList
theorem checked4236 : bytes4236=statementBytes 4332 (op4236.map lower) ∧ bytes4236.length=48 := by core033_kernel_decide
def op4237 : List WordIR.Op := [.bxor 4320 4332]
def bytes4237 : Bytes := ("    let r000010ed: u32 = r000010e0 ^ r000010ec;\n" : String).toByteArray.data.toList
theorem checked4237 : bytes4237=statementBytes 4333 (op4237.map lower) ∧ bytes4237.length=48 := by core033_kernel_decide
def op4238 : List WordIR.Op := [.shr 4333 31]
def bytes4238 : Bytes := ("    let r000010ee: u32 = r000010ed >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4238 : bytes4238=statementBytes 4334 (op4238.map lower) ∧ bytes4238.length=54 := by core033_kernel_decide
def op4239 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4239 : Bytes := ("    let r000010ef: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4239 : bytes4239=statementBytes 4335 (op4239.map lower) ∧ bytes4239.length=41 := by core033_kernel_decide
def op4240 : List WordIR.Op := [.bxor 4334 4335]
def bytes4240 : Bytes := ("    let r000010f0: u32 = r000010ee ^ r000010ef;\n" : String).toByteArray.data.toList
theorem checked4240 : bytes4240=statementBytes 4336 (op4240.map lower) ∧ bytes4240.length=48 := by core033_kernel_decide
def op4241 : List WordIR.Op := [.bnot 4336]
def bytes4241 : Bytes := ("    let r000010f1: u32 = !r000010f0;\n" : String).toByteArray.data.toList
theorem checked4241 : bytes4241=statementBytes 4337 (op4241.map lower) ∧ bytes4241.length=37 := by core033_kernel_decide
def op4242 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4242 : Bytes := ("    let r000010f2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4242 : bytes4242=statementBytes 4338 (op4242.map lower) ∧ bytes4242.length=41 := by core033_kernel_decide
def op4243 : List WordIR.Op := [.badd 4337 4338]
def bytes4243 : Bytes := ("    let r000010f3: u32 = r000010f1.wrapping_add(r000010f2);\n" : String).toByteArray.data.toList
theorem checked4243 : bytes4243=statementBytes 4339 (op4243.map lower) ∧ bytes4243.length=60 := by core033_kernel_decide
def op4244 : List WordIR.Op := [.band 4339 2097]
def bytes4244 : Bytes := ("    let r000010f4: u32 = r000010f3 & r00000831;\n" : String).toByteArray.data.toList
theorem checked4244 : bytes4244=statementBytes 4340 (op4244.map lower) ∧ bytes4244.length=48 := by core033_kernel_decide
def op4245 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4245 : Bytes := ("    let r000010f5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4245 : bytes4245=statementBytes 4341 (op4245.map lower) ∧ bytes4245.length=41 := by core033_kernel_decide
def op4246 : List WordIR.Op := [.bxor 616 4341]
def bytes4246 : Bytes := ("    let r000010f6: u32 = r00000268 ^ r000010f5;\n" : String).toByteArray.data.toList
theorem checked4246 : bytes4246=statementBytes 4342 (op4246.map lower) ∧ bytes4246.length=48 := by core033_kernel_decide
def op4247 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4247 : Bytes := ("    let r000010f7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4247 : bytes4247=statementBytes 4343 (op4247.map lower) ∧ bytes4247.length=41 := by core033_kernel_decide
def op4248 : List WordIR.Op := [.bnot 4343]
def bytes4248 : Bytes := ("    let r000010f8: u32 = !r000010f7;\n" : String).toByteArray.data.toList
theorem checked4248 : bytes4248=statementBytes 4344 (op4248.map lower) ∧ bytes4248.length=37 := by core033_kernel_decide
def op4249 : List WordIR.Op := [.band 4342 4344]
def bytes4249 : Bytes := ("    let r000010f9: u32 = r000010f6 & r000010f8;\n" : String).toByteArray.data.toList
theorem checked4249 : bytes4249=statementBytes 4345 (op4249.map lower) ∧ bytes4249.length=48 := by core033_kernel_decide
def op4250 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4250 : Bytes := ("    let r000010fa: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4250 : bytes4250=statementBytes 4346 (op4250.map lower) ∧ bytes4250.length=41 := by core033_kernel_decide
def op4251 : List WordIR.Op := [.bxor 616 4346]
def bytes4251 : Bytes := ("    let r000010fb: u32 = r00000268 ^ r000010fa;\n" : String).toByteArray.data.toList
theorem checked4251 : bytes4251=statementBytes 4347 (op4251.map lower) ∧ bytes4251.length=48 := by core033_kernel_decide
def op4252 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4252 : Bytes := ("    let r000010fc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4252 : bytes4252=statementBytes 4348 (op4252.map lower) ∧ bytes4252.length=41 := by core033_kernel_decide
def op4253 : List WordIR.Op := [.bnot 4348]
def bytes4253 : Bytes := ("    let r000010fd: u32 = !r000010fc;\n" : String).toByteArray.data.toList
theorem checked4253 : bytes4253=statementBytes 4349 (op4253.map lower) ∧ bytes4253.length=37 := by core033_kernel_decide
def op4254 : List WordIR.Op := [.bxor 4347 4349]
def bytes4254 : Bytes := ("    let r000010fe: u32 = r000010fb ^ r000010fd;\n" : String).toByteArray.data.toList
theorem checked4254 : bytes4254=statementBytes 4350 (op4254.map lower) ∧ bytes4254.length=48 := by core033_kernel_decide
def op4255 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4255 : Bytes := ("    let r000010ff: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4255 : bytes4255=statementBytes 4351 (op4255.map lower) ∧ bytes4255.length=41 := by core033_kernel_decide
def op4256 : List WordIR.Op := [.bxor 616 4351]
def bytes4256 : Bytes := ("    let r00001100: u32 = r00000268 ^ r000010ff;\n" : String).toByteArray.data.toList
theorem checked4256 : bytes4256=statementBytes 4352 (op4256.map lower) ∧ bytes4256.length=48 := by core033_kernel_decide
def op4257 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4257 : Bytes := ("    let r00001101: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4257 : bytes4257=statementBytes 4353 (op4257.map lower) ∧ bytes4257.length=41 := by core033_kernel_decide
def op4258 : List WordIR.Op := [.bnot 4353]
def bytes4258 : Bytes := ("    let r00001102: u32 = !r00001101;\n" : String).toByteArray.data.toList
theorem checked4258 : bytes4258=statementBytes 4354 (op4258.map lower) ∧ bytes4258.length=37 := by core033_kernel_decide
def op4259 : List WordIR.Op := [.badd 4352 4354]
def bytes4259 : Bytes := ("    let r00001103: u32 = r00001100.wrapping_add(r00001102);\n" : String).toByteArray.data.toList
theorem checked4259 : bytes4259=statementBytes 4355 (op4259.map lower) ∧ bytes4259.length=60 := by core033_kernel_decide
def op4260 : List WordIR.Op := [.bnot 4355]
def bytes4260 : Bytes := ("    let r00001104: u32 = !r00001103;\n" : String).toByteArray.data.toList
theorem checked4260 : bytes4260=statementBytes 4356 (op4260.map lower) ∧ bytes4260.length=37 := by core033_kernel_decide
def op4261 : List WordIR.Op := [.band 4350 4356]
def bytes4261 : Bytes := ("    let r00001105: u32 = r000010fe & r00001104;\n" : String).toByteArray.data.toList
theorem checked4261 : bytes4261=statementBytes 4357 (op4261.map lower) ∧ bytes4261.length=48 := by core033_kernel_decide
def op4262 : List WordIR.Op := [.bxor 4345 4357]
def bytes4262 : Bytes := ("    let r00001106: u32 = r000010f9 ^ r00001105;\n" : String).toByteArray.data.toList
theorem checked4262 : bytes4262=statementBytes 4358 (op4262.map lower) ∧ bytes4262.length=48 := by core033_kernel_decide
def op4263 : List WordIR.Op := [.shr 4358 31]
def bytes4263 : Bytes := ("    let r00001107: u32 = r00001106 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4263 : bytes4263=statementBytes 4359 (op4263.map lower) ∧ bytes4263.length=54 := by core033_kernel_decide
def op4264 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4264 : Bytes := ("    let r00001108: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4264 : bytes4264=statementBytes 4360 (op4264.map lower) ∧ bytes4264.length=41 := by core033_kernel_decide
def op4265 : List WordIR.Op := [.bxor 4359 4360]
def bytes4265 : Bytes := ("    let r00001109: u32 = r00001107 ^ r00001108;\n" : String).toByteArray.data.toList
theorem checked4265 : bytes4265=statementBytes 4361 (op4265.map lower) ∧ bytes4265.length=48 := by core033_kernel_decide
def op4266 : List WordIR.Op := [.bnot 4361]
def bytes4266 : Bytes := ("    let r0000110a: u32 = !r00001109;\n" : String).toByteArray.data.toList
theorem checked4266 : bytes4266=statementBytes 4362 (op4266.map lower) ∧ bytes4266.length=37 := by core033_kernel_decide
def op4267 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4267 : Bytes := ("    let r0000110b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4267 : bytes4267=statementBytes 4363 (op4267.map lower) ∧ bytes4267.length=41 := by core033_kernel_decide
def op4268 : List WordIR.Op := [.badd 4362 4363]
def bytes4268 : Bytes := ("    let r0000110c: u32 = r0000110a.wrapping_add(r0000110b);\n" : String).toByteArray.data.toList
theorem checked4268 : bytes4268=statementBytes 4364 (op4268.map lower) ∧ bytes4268.length=60 := by core033_kernel_decide
def op4269 : List WordIR.Op := [.bnot 4364]
def bytes4269 : Bytes := ("    let r0000110d: u32 = !r0000110c;\n" : String).toByteArray.data.toList
theorem checked4269 : bytes4269=statementBytes 4365 (op4269.map lower) ∧ bytes4269.length=37 := by core033_kernel_decide
def op4270 : List WordIR.Op := [.band 4365 1905]
def bytes4270 : Bytes := ("    let r0000110e: u32 = r0000110d & r00000771;\n" : String).toByteArray.data.toList
theorem checked4270 : bytes4270=statementBytes 4366 (op4270.map lower) ∧ bytes4270.length=48 := by core033_kernel_decide
def op4271 : List WordIR.Op := [.bxor 4340 4366]
def bytes4271 : Bytes := ("    let r0000110f: u32 = r000010f4 ^ r0000110e;\n" : String).toByteArray.data.toList
theorem checked4271 : bytes4271=statementBytes 4367 (op4271.map lower) ∧ bytes4271.length=48 := by core033_kernel_decide
def op4272 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4272 : Bytes := ("    let r00001110: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4272 : bytes4272=statementBytes 4368 (op4272.map lower) ∧ bytes4272.length=41 := by core033_kernel_decide
def op4273 : List WordIR.Op := [.bxor 616 4368]
def bytes4273 : Bytes := ("    let r00001111: u32 = r00000268 ^ r00001110;\n" : String).toByteArray.data.toList
theorem checked4273 : bytes4273=statementBytes 4369 (op4273.map lower) ∧ bytes4273.length=48 := by core033_kernel_decide
def op4274 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4274 : Bytes := ("    let r00001112: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4274 : bytes4274=statementBytes 4370 (op4274.map lower) ∧ bytes4274.length=41 := by core033_kernel_decide
def op4275 : List WordIR.Op := [.bnot 4370]
def bytes4275 : Bytes := ("    let r00001113: u32 = !r00001112;\n" : String).toByteArray.data.toList
theorem checked4275 : bytes4275=statementBytes 4371 (op4275.map lower) ∧ bytes4275.length=37 := by core033_kernel_decide
def op4276 : List WordIR.Op := [.band 4369 4371]
def bytes4276 : Bytes := ("    let r00001114: u32 = r00001111 & r00001113;\n" : String).toByteArray.data.toList
theorem checked4276 : bytes4276=statementBytes 4372 (op4276.map lower) ∧ bytes4276.length=48 := by core033_kernel_decide
def op4277 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4277 : Bytes := ("    let r00001115: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4277 : bytes4277=statementBytes 4373 (op4277.map lower) ∧ bytes4277.length=41 := by core033_kernel_decide
def op4278 : List WordIR.Op := [.bxor 616 4373]
def bytes4278 : Bytes := ("    let r00001116: u32 = r00000268 ^ r00001115;\n" : String).toByteArray.data.toList
theorem checked4278 : bytes4278=statementBytes 4374 (op4278.map lower) ∧ bytes4278.length=48 := by core033_kernel_decide
def op4279 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4279 : Bytes := ("    let r00001117: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4279 : bytes4279=statementBytes 4375 (op4279.map lower) ∧ bytes4279.length=41 := by core033_kernel_decide
def op4280 : List WordIR.Op := [.bnot 4375]
def bytes4280 : Bytes := ("    let r00001118: u32 = !r00001117;\n" : String).toByteArray.data.toList
theorem checked4280 : bytes4280=statementBytes 4376 (op4280.map lower) ∧ bytes4280.length=37 := by core033_kernel_decide
def op4281 : List WordIR.Op := [.bxor 4374 4376]
def bytes4281 : Bytes := ("    let r00001119: u32 = r00001116 ^ r00001118;\n" : String).toByteArray.data.toList
theorem checked4281 : bytes4281=statementBytes 4377 (op4281.map lower) ∧ bytes4281.length=48 := by core033_kernel_decide
def op4282 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4282 : Bytes := ("    let r0000111a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4282 : bytes4282=statementBytes 4378 (op4282.map lower) ∧ bytes4282.length=41 := by core033_kernel_decide
def op4283 : List WordIR.Op := [.bxor 616 4378]
def bytes4283 : Bytes := ("    let r0000111b: u32 = r00000268 ^ r0000111a;\n" : String).toByteArray.data.toList
theorem checked4283 : bytes4283=statementBytes 4379 (op4283.map lower) ∧ bytes4283.length=48 := by core033_kernel_decide
def op4284 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4284 : Bytes := ("    let r0000111c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4284 : bytes4284=statementBytes 4380 (op4284.map lower) ∧ bytes4284.length=41 := by core033_kernel_decide
def op4285 : List WordIR.Op := [.bnot 4380]
def bytes4285 : Bytes := ("    let r0000111d: u32 = !r0000111c;\n" : String).toByteArray.data.toList
theorem checked4285 : bytes4285=statementBytes 4381 (op4285.map lower) ∧ bytes4285.length=37 := by core033_kernel_decide
def op4286 : List WordIR.Op := [.badd 4379 4381]
def bytes4286 : Bytes := ("    let r0000111e: u32 = r0000111b.wrapping_add(r0000111d);\n" : String).toByteArray.data.toList
theorem checked4286 : bytes4286=statementBytes 4382 (op4286.map lower) ∧ bytes4286.length=60 := by core033_kernel_decide
def op4287 : List WordIR.Op := [.bnot 4382]
def bytes4287 : Bytes := ("    let r0000111f: u32 = !r0000111e;\n" : String).toByteArray.data.toList
theorem checked4287 : bytes4287=statementBytes 4383 (op4287.map lower) ∧ bytes4287.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4224,op4225,op4226,op4227,op4228,op4229,op4230,op4231,op4232,op4233,op4234,op4235,op4236,op4237,op4238,op4239,op4240,op4241,op4242,op4243,op4244,op4245,op4246,op4247,op4248,op4249,op4250,op4251,op4252,op4253,op4254,op4255,op4256,op4257,op4258,op4259,op4260,op4261,op4262,op4263,op4264,op4265,op4266,op4267,op4268,op4269,op4270,op4271,op4272,op4273,op4274,op4275,op4276,op4277,op4278,op4279,op4280,op4281,op4282,op4283,op4284,op4285,op4286,op4287]
def chunks : List Bytes := [bytes4224,bytes4225,bytes4226,bytes4227,bytes4228,bytes4229,bytes4230,bytes4231,bytes4232,bytes4233,bytes4234,bytes4235,bytes4236,bytes4237,bytes4238,bytes4239,bytes4240,bytes4241,bytes4242,bytes4243,bytes4244,bytes4245,bytes4246,bytes4247,bytes4248,bytes4249,bytes4250,bytes4251,bytes4252,bytes4253,bytes4254,bytes4255,bytes4256,bytes4257,bytes4258,bytes4259,bytes4260,bytes4261,bytes4262,bytes4263,bytes4264,bytes4265,bytes4266,bytes4267,bytes4268,bytes4269,bytes4270,bytes4271,bytes4272,bytes4273,bytes4274,bytes4275,bytes4276,bytes4277,bytes4278,bytes4279,bytes4280,bytes4281,bytes4282,bytes4283,bytes4284,bytes4285,bytes4286,bytes4287]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4320 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4224.1 (.cons _ _ _ _ _ checked4225.1 (.cons _ _ _ _ _ checked4226.1 (.cons _ _ _ _ _ checked4227.1 (.cons _ _ _ _ _ checked4228.1 (.cons _ _ _ _ _ checked4229.1 (.cons _ _ _ _ _ checked4230.1 (.cons _ _ _ _ _ checked4231.1 (.cons _ _ _ _ _ checked4232.1 (.cons _ _ _ _ _ checked4233.1 (.cons _ _ _ _ _ checked4234.1 (.cons _ _ _ _ _ checked4235.1 (.cons _ _ _ _ _ checked4236.1 (.cons _ _ _ _ _ checked4237.1 (.cons _ _ _ _ _ checked4238.1 (.cons _ _ _ _ _ checked4239.1 (.cons _ _ _ _ _ checked4240.1 (.cons _ _ _ _ _ checked4241.1 (.cons _ _ _ _ _ checked4242.1 (.cons _ _ _ _ _ checked4243.1 (.cons _ _ _ _ _ checked4244.1 (.cons _ _ _ _ _ checked4245.1 (.cons _ _ _ _ _ checked4246.1 (.cons _ _ _ _ _ checked4247.1 (.cons _ _ _ _ _ checked4248.1 (.cons _ _ _ _ _ checked4249.1 (.cons _ _ _ _ _ checked4250.1 (.cons _ _ _ _ _ checked4251.1 (.cons _ _ _ _ _ checked4252.1 (.cons _ _ _ _ _ checked4253.1 (.cons _ _ _ _ _ checked4254.1 (.cons _ _ _ _ _ checked4255.1 (.cons _ _ _ _ _ checked4256.1 (.cons _ _ _ _ _ checked4257.1 (.cons _ _ _ _ _ checked4258.1 (.cons _ _ _ _ _ checked4259.1 (.cons _ _ _ _ _ checked4260.1 (.cons _ _ _ _ _ checked4261.1 (.cons _ _ _ _ _ checked4262.1 (.cons _ _ _ _ _ checked4263.1 (.cons _ _ _ _ _ checked4264.1 (.cons _ _ _ _ _ checked4265.1 (.cons _ _ _ _ _ checked4266.1 (.cons _ _ _ _ _ checked4267.1 (.cons _ _ _ _ _ checked4268.1 (.cons _ _ _ _ _ checked4269.1 (.cons _ _ _ _ _ checked4270.1 (.cons _ _ _ _ _ checked4271.1 (.cons _ _ _ _ _ checked4272.1 (.cons _ _ _ _ _ checked4273.1 (.cons _ _ _ _ _ checked4274.1 (.cons _ _ _ _ _ checked4275.1 (.cons _ _ _ _ _ checked4276.1 (.cons _ _ _ _ _ checked4277.1 (.cons _ _ _ _ _ checked4278.1 (.cons _ _ _ _ _ checked4279.1 (.cons _ _ _ _ _ checked4280.1 (.cons _ _ _ _ _ checked4281.1 (.cons _ _ _ _ _ checked4282.1 (.cons _ _ _ _ _ checked4283.1 (.cons _ _ _ _ _ checked4284.1 (.cons _ _ _ _ _ checked4285.1 (.cons _ _ _ _ _ checked4286.1 (.cons _ _ _ _ _ checked4287.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4320 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4224.2,checked4225.2,checked4226.2,checked4227.2,checked4228.2,checked4229.2,checked4230.2,checked4231.2,checked4232.2,checked4233.2,checked4234.2,checked4235.2,checked4236.2,checked4237.2,checked4238.2,checked4239.2,checked4240.2,checked4241.2,checked4242.2,checked4243.2,checked4244.2,checked4245.2,checked4246.2,checked4247.2,checked4248.2,checked4249.2,checked4250.2,checked4251.2,checked4252.2,checked4253.2,checked4254.2,checked4255.2,checked4256.2,checked4257.2,checked4258.2,checked4259.2,checked4260.2,checked4261.2,checked4262.2,checked4263.2,checked4264.2,checked4265.2,checked4266.2,checked4267.2,checked4268.2,checked4269.2,checked4270.2,checked4271.2,checked4272.2,checked4273.2,checked4274.2,checked4275.2,checked4276.2,checked4277.2,checked4278.2,checked4279.2,checked4280.2,checked4281.2,checked4282.2,checked4283.2,checked4284.2,checked4285.2,checked4286.2,checked4287.2]
  decide
end ArtifactPairedPathRoundGroup66
