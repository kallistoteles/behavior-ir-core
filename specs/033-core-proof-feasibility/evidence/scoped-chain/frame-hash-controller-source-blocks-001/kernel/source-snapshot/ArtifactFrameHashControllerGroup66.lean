import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup66
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4224 : List WordIR.Op := [.bxor 4240 4266]
def bytes4224 : Bytes := ("    let r000010ab: u32 = r00001090 ^ r000010aa;\n" : String).toByteArray.data.toList
theorem checked4224 : bytes4224=statementBytes 4267 (op4224.map lower) ∧ bytes4224.length=48 := by core033_kernel_decide
def op4225 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4225 : Bytes := ("    let r000010ac: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4225 : bytes4225=statementBytes 4268 (op4225.map lower) ∧ bytes4225.length=41 := by core033_kernel_decide
def op4226 : List WordIR.Op := [.bxor 0 4268]
def bytes4226 : Bytes := ("    let r000010ad: u32 = r00000000 ^ r000010ac;\n" : String).toByteArray.data.toList
theorem checked4226 : bytes4226=statementBytes 4269 (op4226.map lower) ∧ bytes4226.length=48 := by core033_kernel_decide
def op4227 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4227 : Bytes := ("    let r000010ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4227 : bytes4227=statementBytes 4270 (op4227.map lower) ∧ bytes4227.length=41 := by core033_kernel_decide
def op4228 : List WordIR.Op := [.bnot 4270]
def bytes4228 : Bytes := ("    let r000010af: u32 = !r000010ae;\n" : String).toByteArray.data.toList
theorem checked4228 : bytes4228=statementBytes 4271 (op4228.map lower) ∧ bytes4228.length=37 := by core033_kernel_decide
def op4229 : List WordIR.Op := [.band 4269 4271]
def bytes4229 : Bytes := ("    let r000010b0: u32 = r000010ad & r000010af;\n" : String).toByteArray.data.toList
theorem checked4229 : bytes4229=statementBytes 4272 (op4229.map lower) ∧ bytes4229.length=48 := by core033_kernel_decide
def op4230 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4230 : Bytes := ("    let r000010b1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4230 : bytes4230=statementBytes 4273 (op4230.map lower) ∧ bytes4230.length=41 := by core033_kernel_decide
def op4231 : List WordIR.Op := [.bxor 0 4273]
def bytes4231 : Bytes := ("    let r000010b2: u32 = r00000000 ^ r000010b1;\n" : String).toByteArray.data.toList
theorem checked4231 : bytes4231=statementBytes 4274 (op4231.map lower) ∧ bytes4231.length=48 := by core033_kernel_decide
def op4232 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4232 : Bytes := ("    let r000010b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4232 : bytes4232=statementBytes 4275 (op4232.map lower) ∧ bytes4232.length=41 := by core033_kernel_decide
def op4233 : List WordIR.Op := [.bnot 4275]
def bytes4233 : Bytes := ("    let r000010b4: u32 = !r000010b3;\n" : String).toByteArray.data.toList
theorem checked4233 : bytes4233=statementBytes 4276 (op4233.map lower) ∧ bytes4233.length=37 := by core033_kernel_decide
def op4234 : List WordIR.Op := [.bxor 4274 4276]
def bytes4234 : Bytes := ("    let r000010b5: u32 = r000010b2 ^ r000010b4;\n" : String).toByteArray.data.toList
theorem checked4234 : bytes4234=statementBytes 4277 (op4234.map lower) ∧ bytes4234.length=48 := by core033_kernel_decide
def op4235 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4235 : Bytes := ("    let r000010b6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4235 : bytes4235=statementBytes 4278 (op4235.map lower) ∧ bytes4235.length=41 := by core033_kernel_decide
def op4236 : List WordIR.Op := [.bxor 0 4278]
def bytes4236 : Bytes := ("    let r000010b7: u32 = r00000000 ^ r000010b6;\n" : String).toByteArray.data.toList
theorem checked4236 : bytes4236=statementBytes 4279 (op4236.map lower) ∧ bytes4236.length=48 := by core033_kernel_decide
def op4237 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4237 : Bytes := ("    let r000010b8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4237 : bytes4237=statementBytes 4280 (op4237.map lower) ∧ bytes4237.length=41 := by core033_kernel_decide
def op4238 : List WordIR.Op := [.bnot 4280]
def bytes4238 : Bytes := ("    let r000010b9: u32 = !r000010b8;\n" : String).toByteArray.data.toList
theorem checked4238 : bytes4238=statementBytes 4281 (op4238.map lower) ∧ bytes4238.length=37 := by core033_kernel_decide
def op4239 : List WordIR.Op := [.badd 4279 4281]
def bytes4239 : Bytes := ("    let r000010ba: u32 = r000010b7.wrapping_add(r000010b9);\n" : String).toByteArray.data.toList
theorem checked4239 : bytes4239=statementBytes 4282 (op4239.map lower) ∧ bytes4239.length=60 := by core033_kernel_decide
def op4240 : List WordIR.Op := [.bnot 4282]
def bytes4240 : Bytes := ("    let r000010bb: u32 = !r000010ba;\n" : String).toByteArray.data.toList
theorem checked4240 : bytes4240=statementBytes 4283 (op4240.map lower) ∧ bytes4240.length=37 := by core033_kernel_decide
def op4241 : List WordIR.Op := [.band 4277 4283]
def bytes4241 : Bytes := ("    let r000010bc: u32 = r000010b5 & r000010bb;\n" : String).toByteArray.data.toList
theorem checked4241 : bytes4241=statementBytes 4284 (op4241.map lower) ∧ bytes4241.length=48 := by core033_kernel_decide
def op4242 : List WordIR.Op := [.bxor 4272 4284]
def bytes4242 : Bytes := ("    let r000010bd: u32 = r000010b0 ^ r000010bc;\n" : String).toByteArray.data.toList
theorem checked4242 : bytes4242=statementBytes 4285 (op4242.map lower) ∧ bytes4242.length=48 := by core033_kernel_decide
def op4243 : List WordIR.Op := [.shr 4285 31]
def bytes4243 : Bytes := ("    let r000010be: u32 = r000010bd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4243 : bytes4243=statementBytes 4286 (op4243.map lower) ∧ bytes4243.length=54 := by core033_kernel_decide
def op4244 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4244 : Bytes := ("    let r000010bf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4244 : bytes4244=statementBytes 4287 (op4244.map lower) ∧ bytes4244.length=41 := by core033_kernel_decide
def op4245 : List WordIR.Op := [.bxor 4286 4287]
def bytes4245 : Bytes := ("    let r000010c0: u32 = r000010be ^ r000010bf;\n" : String).toByteArray.data.toList
theorem checked4245 : bytes4245=statementBytes 4288 (op4245.map lower) ∧ bytes4245.length=48 := by core033_kernel_decide
def op4246 : List WordIR.Op := [.bnot 4288]
def bytes4246 : Bytes := ("    let r000010c1: u32 = !r000010c0;\n" : String).toByteArray.data.toList
theorem checked4246 : bytes4246=statementBytes 4289 (op4246.map lower) ∧ bytes4246.length=37 := by core033_kernel_decide
def op4247 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4247 : Bytes := ("    let r000010c2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4247 : bytes4247=statementBytes 4290 (op4247.map lower) ∧ bytes4247.length=41 := by core033_kernel_decide
def op4248 : List WordIR.Op := [.badd 4289 4290]
def bytes4248 : Bytes := ("    let r000010c3: u32 = r000010c1.wrapping_add(r000010c2);\n" : String).toByteArray.data.toList
theorem checked4248 : bytes4248=statementBytes 4291 (op4248.map lower) ∧ bytes4248.length=60 := by core033_kernel_decide
def op4249 : List WordIR.Op := [.band 4291 1118]
def bytes4249 : Bytes := ("    let r000010c4: u32 = r000010c3 & r0000045e;\n" : String).toByteArray.data.toList
theorem checked4249 : bytes4249=statementBytes 4292 (op4249.map lower) ∧ bytes4249.length=48 := by core033_kernel_decide
def op4250 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4250 : Bytes := ("    let r000010c5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4250 : bytes4250=statementBytes 4293 (op4250.map lower) ∧ bytes4250.length=41 := by core033_kernel_decide
def op4251 : List WordIR.Op := [.bxor 0 4293]
def bytes4251 : Bytes := ("    let r000010c6: u32 = r00000000 ^ r000010c5;\n" : String).toByteArray.data.toList
theorem checked4251 : bytes4251=statementBytes 4294 (op4251.map lower) ∧ bytes4251.length=48 := by core033_kernel_decide
def op4252 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4252 : Bytes := ("    let r000010c7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4252 : bytes4252=statementBytes 4295 (op4252.map lower) ∧ bytes4252.length=41 := by core033_kernel_decide
def op4253 : List WordIR.Op := [.bnot 4295]
def bytes4253 : Bytes := ("    let r000010c8: u32 = !r000010c7;\n" : String).toByteArray.data.toList
theorem checked4253 : bytes4253=statementBytes 4296 (op4253.map lower) ∧ bytes4253.length=37 := by core033_kernel_decide
def op4254 : List WordIR.Op := [.band 4294 4296]
def bytes4254 : Bytes := ("    let r000010c9: u32 = r000010c6 & r000010c8;\n" : String).toByteArray.data.toList
theorem checked4254 : bytes4254=statementBytes 4297 (op4254.map lower) ∧ bytes4254.length=48 := by core033_kernel_decide
def op4255 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4255 : Bytes := ("    let r000010ca: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4255 : bytes4255=statementBytes 4298 (op4255.map lower) ∧ bytes4255.length=41 := by core033_kernel_decide
def op4256 : List WordIR.Op := [.bxor 0 4298]
def bytes4256 : Bytes := ("    let r000010cb: u32 = r00000000 ^ r000010ca;\n" : String).toByteArray.data.toList
theorem checked4256 : bytes4256=statementBytes 4299 (op4256.map lower) ∧ bytes4256.length=48 := by core033_kernel_decide
def op4257 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4257 : Bytes := ("    let r000010cc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4257 : bytes4257=statementBytes 4300 (op4257.map lower) ∧ bytes4257.length=41 := by core033_kernel_decide
def op4258 : List WordIR.Op := [.bnot 4300]
def bytes4258 : Bytes := ("    let r000010cd: u32 = !r000010cc;\n" : String).toByteArray.data.toList
theorem checked4258 : bytes4258=statementBytes 4301 (op4258.map lower) ∧ bytes4258.length=37 := by core033_kernel_decide
def op4259 : List WordIR.Op := [.bxor 4299 4301]
def bytes4259 : Bytes := ("    let r000010ce: u32 = r000010cb ^ r000010cd;\n" : String).toByteArray.data.toList
theorem checked4259 : bytes4259=statementBytes 4302 (op4259.map lower) ∧ bytes4259.length=48 := by core033_kernel_decide
def op4260 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4260 : Bytes := ("    let r000010cf: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4260 : bytes4260=statementBytes 4303 (op4260.map lower) ∧ bytes4260.length=41 := by core033_kernel_decide
def op4261 : List WordIR.Op := [.bxor 0 4303]
def bytes4261 : Bytes := ("    let r000010d0: u32 = r00000000 ^ r000010cf;\n" : String).toByteArray.data.toList
theorem checked4261 : bytes4261=statementBytes 4304 (op4261.map lower) ∧ bytes4261.length=48 := by core033_kernel_decide
def op4262 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4262 : Bytes := ("    let r000010d1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4262 : bytes4262=statementBytes 4305 (op4262.map lower) ∧ bytes4262.length=41 := by core033_kernel_decide
def op4263 : List WordIR.Op := [.bnot 4305]
def bytes4263 : Bytes := ("    let r000010d2: u32 = !r000010d1;\n" : String).toByteArray.data.toList
theorem checked4263 : bytes4263=statementBytes 4306 (op4263.map lower) ∧ bytes4263.length=37 := by core033_kernel_decide
def op4264 : List WordIR.Op := [.badd 4304 4306]
def bytes4264 : Bytes := ("    let r000010d3: u32 = r000010d0.wrapping_add(r000010d2);\n" : String).toByteArray.data.toList
theorem checked4264 : bytes4264=statementBytes 4307 (op4264.map lower) ∧ bytes4264.length=60 := by core033_kernel_decide
def op4265 : List WordIR.Op := [.bnot 4307]
def bytes4265 : Bytes := ("    let r000010d4: u32 = !r000010d3;\n" : String).toByteArray.data.toList
theorem checked4265 : bytes4265=statementBytes 4308 (op4265.map lower) ∧ bytes4265.length=37 := by core033_kernel_decide
def op4266 : List WordIR.Op := [.band 4302 4308]
def bytes4266 : Bytes := ("    let r000010d5: u32 = r000010ce & r000010d4;\n" : String).toByteArray.data.toList
theorem checked4266 : bytes4266=statementBytes 4309 (op4266.map lower) ∧ bytes4266.length=48 := by core033_kernel_decide
def op4267 : List WordIR.Op := [.bxor 4297 4309]
def bytes4267 : Bytes := ("    let r000010d6: u32 = r000010c9 ^ r000010d5;\n" : String).toByteArray.data.toList
theorem checked4267 : bytes4267=statementBytes 4310 (op4267.map lower) ∧ bytes4267.length=48 := by core033_kernel_decide
def op4268 : List WordIR.Op := [.shr 4310 31]
def bytes4268 : Bytes := ("    let r000010d7: u32 = r000010d6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4268 : bytes4268=statementBytes 4311 (op4268.map lower) ∧ bytes4268.length=54 := by core033_kernel_decide
def op4269 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4269 : Bytes := ("    let r000010d8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4269 : bytes4269=statementBytes 4312 (op4269.map lower) ∧ bytes4269.length=41 := by core033_kernel_decide
def op4270 : List WordIR.Op := [.bxor 4311 4312]
def bytes4270 : Bytes := ("    let r000010d9: u32 = r000010d7 ^ r000010d8;\n" : String).toByteArray.data.toList
theorem checked4270 : bytes4270=statementBytes 4313 (op4270.map lower) ∧ bytes4270.length=48 := by core033_kernel_decide
def op4271 : List WordIR.Op := [.bnot 4313]
def bytes4271 : Bytes := ("    let r000010da: u32 = !r000010d9;\n" : String).toByteArray.data.toList
theorem checked4271 : bytes4271=statementBytes 4314 (op4271.map lower) ∧ bytes4271.length=37 := by core033_kernel_decide
def op4272 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4272 : Bytes := ("    let r000010db: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4272 : bytes4272=statementBytes 4315 (op4272.map lower) ∧ bytes4272.length=41 := by core033_kernel_decide
def op4273 : List WordIR.Op := [.badd 4314 4315]
def bytes4273 : Bytes := ("    let r000010dc: u32 = r000010da.wrapping_add(r000010db);\n" : String).toByteArray.data.toList
theorem checked4273 : bytes4273=statementBytes 4316 (op4273.map lower) ∧ bytes4273.length=60 := by core033_kernel_decide
def op4274 : List WordIR.Op := [.bnot 4316]
def bytes4274 : Bytes := ("    let r000010dd: u32 = !r000010dc;\n" : String).toByteArray.data.toList
theorem checked4274 : bytes4274=statementBytes 4317 (op4274.map lower) ∧ bytes4274.length=37 := by core033_kernel_decide
def op4275 : List WordIR.Op := [.band 4317 926]
def bytes4275 : Bytes := ("    let r000010de: u32 = r000010dd & r0000039e;\n" : String).toByteArray.data.toList
theorem checked4275 : bytes4275=statementBytes 4318 (op4275.map lower) ∧ bytes4275.length=48 := by core033_kernel_decide
def op4276 : List WordIR.Op := [.bxor 4292 4318]
def bytes4276 : Bytes := ("    let r000010df: u32 = r000010c4 ^ r000010de;\n" : String).toByteArray.data.toList
theorem checked4276 : bytes4276=statementBytes 4319 (op4276.map lower) ∧ bytes4276.length=48 := by core033_kernel_decide
def op4277 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4277 : Bytes := ("    let r000010e0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4277 : bytes4277=statementBytes 4320 (op4277.map lower) ∧ bytes4277.length=41 := by core033_kernel_decide
def op4278 : List WordIR.Op := [.bxor 0 4320]
def bytes4278 : Bytes := ("    let r000010e1: u32 = r00000000 ^ r000010e0;\n" : String).toByteArray.data.toList
theorem checked4278 : bytes4278=statementBytes 4321 (op4278.map lower) ∧ bytes4278.length=48 := by core033_kernel_decide
def op4279 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4279 : Bytes := ("    let r000010e2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4279 : bytes4279=statementBytes 4322 (op4279.map lower) ∧ bytes4279.length=41 := by core033_kernel_decide
def op4280 : List WordIR.Op := [.bnot 4322]
def bytes4280 : Bytes := ("    let r000010e3: u32 = !r000010e2;\n" : String).toByteArray.data.toList
theorem checked4280 : bytes4280=statementBytes 4323 (op4280.map lower) ∧ bytes4280.length=37 := by core033_kernel_decide
def op4281 : List WordIR.Op := [.band 4321 4323]
def bytes4281 : Bytes := ("    let r000010e4: u32 = r000010e1 & r000010e3;\n" : String).toByteArray.data.toList
theorem checked4281 : bytes4281=statementBytes 4324 (op4281.map lower) ∧ bytes4281.length=48 := by core033_kernel_decide
def op4282 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4282 : Bytes := ("    let r000010e5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4282 : bytes4282=statementBytes 4325 (op4282.map lower) ∧ bytes4282.length=41 := by core033_kernel_decide
def op4283 : List WordIR.Op := [.bxor 0 4325]
def bytes4283 : Bytes := ("    let r000010e6: u32 = r00000000 ^ r000010e5;\n" : String).toByteArray.data.toList
theorem checked4283 : bytes4283=statementBytes 4326 (op4283.map lower) ∧ bytes4283.length=48 := by core033_kernel_decide
def op4284 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4284 : Bytes := ("    let r000010e7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4284 : bytes4284=statementBytes 4327 (op4284.map lower) ∧ bytes4284.length=41 := by core033_kernel_decide
def op4285 : List WordIR.Op := [.bnot 4327]
def bytes4285 : Bytes := ("    let r000010e8: u32 = !r000010e7;\n" : String).toByteArray.data.toList
theorem checked4285 : bytes4285=statementBytes 4328 (op4285.map lower) ∧ bytes4285.length=37 := by core033_kernel_decide
def op4286 : List WordIR.Op := [.bxor 4326 4328]
def bytes4286 : Bytes := ("    let r000010e9: u32 = r000010e6 ^ r000010e8;\n" : String).toByteArray.data.toList
theorem checked4286 : bytes4286=statementBytes 4329 (op4286.map lower) ∧ bytes4286.length=48 := by core033_kernel_decide
def op4287 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4287 : Bytes := ("    let r000010ea: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4287 : bytes4287=statementBytes 4330 (op4287.map lower) ∧ bytes4287.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4224,op4225,op4226,op4227,op4228,op4229,op4230,op4231,op4232,op4233,op4234,op4235,op4236,op4237,op4238,op4239,op4240,op4241,op4242,op4243,op4244,op4245,op4246,op4247,op4248,op4249,op4250,op4251,op4252,op4253,op4254,op4255,op4256,op4257,op4258,op4259,op4260,op4261,op4262,op4263,op4264,op4265,op4266,op4267,op4268,op4269,op4270,op4271,op4272,op4273,op4274,op4275,op4276,op4277,op4278,op4279,op4280,op4281,op4282,op4283,op4284,op4285,op4286,op4287]
def chunks : List Bytes := [bytes4224,bytes4225,bytes4226,bytes4227,bytes4228,bytes4229,bytes4230,bytes4231,bytes4232,bytes4233,bytes4234,bytes4235,bytes4236,bytes4237,bytes4238,bytes4239,bytes4240,bytes4241,bytes4242,bytes4243,bytes4244,bytes4245,bytes4246,bytes4247,bytes4248,bytes4249,bytes4250,bytes4251,bytes4252,bytes4253,bytes4254,bytes4255,bytes4256,bytes4257,bytes4258,bytes4259,bytes4260,bytes4261,bytes4262,bytes4263,bytes4264,bytes4265,bytes4266,bytes4267,bytes4268,bytes4269,bytes4270,bytes4271,bytes4272,bytes4273,bytes4274,bytes4275,bytes4276,bytes4277,bytes4278,bytes4279,bytes4280,bytes4281,bytes4282,bytes4283,bytes4284,bytes4285,bytes4286,bytes4287]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4267 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4224.1 (.cons _ _ _ _ _ checked4225.1 (.cons _ _ _ _ _ checked4226.1 (.cons _ _ _ _ _ checked4227.1 (.cons _ _ _ _ _ checked4228.1 (.cons _ _ _ _ _ checked4229.1 (.cons _ _ _ _ _ checked4230.1 (.cons _ _ _ _ _ checked4231.1 (.cons _ _ _ _ _ checked4232.1 (.cons _ _ _ _ _ checked4233.1 (.cons _ _ _ _ _ checked4234.1 (.cons _ _ _ _ _ checked4235.1 (.cons _ _ _ _ _ checked4236.1 (.cons _ _ _ _ _ checked4237.1 (.cons _ _ _ _ _ checked4238.1 (.cons _ _ _ _ _ checked4239.1 (.cons _ _ _ _ _ checked4240.1 (.cons _ _ _ _ _ checked4241.1 (.cons _ _ _ _ _ checked4242.1 (.cons _ _ _ _ _ checked4243.1 (.cons _ _ _ _ _ checked4244.1 (.cons _ _ _ _ _ checked4245.1 (.cons _ _ _ _ _ checked4246.1 (.cons _ _ _ _ _ checked4247.1 (.cons _ _ _ _ _ checked4248.1 (.cons _ _ _ _ _ checked4249.1 (.cons _ _ _ _ _ checked4250.1 (.cons _ _ _ _ _ checked4251.1 (.cons _ _ _ _ _ checked4252.1 (.cons _ _ _ _ _ checked4253.1 (.cons _ _ _ _ _ checked4254.1 (.cons _ _ _ _ _ checked4255.1 (.cons _ _ _ _ _ checked4256.1 (.cons _ _ _ _ _ checked4257.1 (.cons _ _ _ _ _ checked4258.1 (.cons _ _ _ _ _ checked4259.1 (.cons _ _ _ _ _ checked4260.1 (.cons _ _ _ _ _ checked4261.1 (.cons _ _ _ _ _ checked4262.1 (.cons _ _ _ _ _ checked4263.1 (.cons _ _ _ _ _ checked4264.1 (.cons _ _ _ _ _ checked4265.1 (.cons _ _ _ _ _ checked4266.1 (.cons _ _ _ _ _ checked4267.1 (.cons _ _ _ _ _ checked4268.1 (.cons _ _ _ _ _ checked4269.1 (.cons _ _ _ _ _ checked4270.1 (.cons _ _ _ _ _ checked4271.1 (.cons _ _ _ _ _ checked4272.1 (.cons _ _ _ _ _ checked4273.1 (.cons _ _ _ _ _ checked4274.1 (.cons _ _ _ _ _ checked4275.1 (.cons _ _ _ _ _ checked4276.1 (.cons _ _ _ _ _ checked4277.1 (.cons _ _ _ _ _ checked4278.1 (.cons _ _ _ _ _ checked4279.1 (.cons _ _ _ _ _ checked4280.1 (.cons _ _ _ _ _ checked4281.1 (.cons _ _ _ _ _ checked4282.1 (.cons _ _ _ _ _ checked4283.1 (.cons _ _ _ _ _ checked4284.1 (.cons _ _ _ _ _ checked4285.1 (.cons _ _ _ _ _ checked4286.1 (.cons _ _ _ _ _ checked4287.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4267 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4224.2,checked4225.2,checked4226.2,checked4227.2,checked4228.2,checked4229.2,checked4230.2,checked4231.2,checked4232.2,checked4233.2,checked4234.2,checked4235.2,checked4236.2,checked4237.2,checked4238.2,checked4239.2,checked4240.2,checked4241.2,checked4242.2,checked4243.2,checked4244.2,checked4245.2,checked4246.2,checked4247.2,checked4248.2,checked4249.2,checked4250.2,checked4251.2,checked4252.2,checked4253.2,checked4254.2,checked4255.2,checked4256.2,checked4257.2,checked4258.2,checked4259.2,checked4260.2,checked4261.2,checked4262.2,checked4263.2,checked4264.2,checked4265.2,checked4266.2,checked4267.2,checked4268.2,checked4269.2,checked4270.2,checked4271.2,checked4272.2,checked4273.2,checked4274.2,checked4275.2,checked4276.2,checked4277.2,checked4278.2,checked4279.2,checked4280.2,checked4281.2,checked4282.2,checked4283.2,checked4284.2,checked4285.2,checked4286.2,checked4287.2]
  decide
end ArtifactFrameHashControllerGroup66
