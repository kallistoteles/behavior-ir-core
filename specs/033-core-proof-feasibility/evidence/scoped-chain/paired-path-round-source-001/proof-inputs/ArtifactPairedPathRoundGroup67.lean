import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup67
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4288 : List WordIR.Op := [.band 4377 4383]
def bytes4288 : Bytes := ("    let r00001120: u32 = r00001119 & r0000111f;\n" : String).toByteArray.data.toList
theorem checked4288 : bytes4288=statementBytes 4384 (op4288.map lower) ∧ bytes4288.length=48 := by core033_kernel_decide
def op4289 : List WordIR.Op := [.bxor 4372 4384]
def bytes4289 : Bytes := ("    let r00001121: u32 = r00001114 ^ r00001120;\n" : String).toByteArray.data.toList
theorem checked4289 : bytes4289=statementBytes 4385 (op4289.map lower) ∧ bytes4289.length=48 := by core033_kernel_decide
def op4290 : List WordIR.Op := [.shr 4385 31]
def bytes4290 : Bytes := ("    let r00001122: u32 = r00001121 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4290 : bytes4290=statementBytes 4386 (op4290.map lower) ∧ bytes4290.length=54 := by core033_kernel_decide
def op4291 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4291 : Bytes := ("    let r00001123: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4291 : bytes4291=statementBytes 4387 (op4291.map lower) ∧ bytes4291.length=41 := by core033_kernel_decide
def op4292 : List WordIR.Op := [.bxor 4386 4387]
def bytes4292 : Bytes := ("    let r00001124: u32 = r00001122 ^ r00001123;\n" : String).toByteArray.data.toList
theorem checked4292 : bytes4292=statementBytes 4388 (op4292.map lower) ∧ bytes4292.length=48 := by core033_kernel_decide
def op4293 : List WordIR.Op := [.bnot 4388]
def bytes4293 : Bytes := ("    let r00001125: u32 = !r00001124;\n" : String).toByteArray.data.toList
theorem checked4293 : bytes4293=statementBytes 4389 (op4293.map lower) ∧ bytes4293.length=37 := by core033_kernel_decide
def op4294 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4294 : Bytes := ("    let r00001126: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4294 : bytes4294=statementBytes 4390 (op4294.map lower) ∧ bytes4294.length=41 := by core033_kernel_decide
def op4295 : List WordIR.Op := [.badd 4389 4390]
def bytes4295 : Bytes := ("    let r00001127: u32 = r00001125.wrapping_add(r00001126);\n" : String).toByteArray.data.toList
theorem checked4295 : bytes4295=statementBytes 4391 (op4295.map lower) ∧ bytes4295.length=60 := by core033_kernel_decide
def op4296 : List WordIR.Op := [.band 4391 2100]
def bytes4296 : Bytes := ("    let r00001128: u32 = r00001127 & r00000834;\n" : String).toByteArray.data.toList
theorem checked4296 : bytes4296=statementBytes 4392 (op4296.map lower) ∧ bytes4296.length=48 := by core033_kernel_decide
def op4297 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4297 : Bytes := ("    let r00001129: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4297 : bytes4297=statementBytes 4393 (op4297.map lower) ∧ bytes4297.length=41 := by core033_kernel_decide
def op4298 : List WordIR.Op := [.bxor 616 4393]
def bytes4298 : Bytes := ("    let r0000112a: u32 = r00000268 ^ r00001129;\n" : String).toByteArray.data.toList
theorem checked4298 : bytes4298=statementBytes 4394 (op4298.map lower) ∧ bytes4298.length=48 := by core033_kernel_decide
def op4299 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4299 : Bytes := ("    let r0000112b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4299 : bytes4299=statementBytes 4395 (op4299.map lower) ∧ bytes4299.length=41 := by core033_kernel_decide
def op4300 : List WordIR.Op := [.bnot 4395]
def bytes4300 : Bytes := ("    let r0000112c: u32 = !r0000112b;\n" : String).toByteArray.data.toList
theorem checked4300 : bytes4300=statementBytes 4396 (op4300.map lower) ∧ bytes4300.length=37 := by core033_kernel_decide
def op4301 : List WordIR.Op := [.band 4394 4396]
def bytes4301 : Bytes := ("    let r0000112d: u32 = r0000112a & r0000112c;\n" : String).toByteArray.data.toList
theorem checked4301 : bytes4301=statementBytes 4397 (op4301.map lower) ∧ bytes4301.length=48 := by core033_kernel_decide
def op4302 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4302 : Bytes := ("    let r0000112e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4302 : bytes4302=statementBytes 4398 (op4302.map lower) ∧ bytes4302.length=41 := by core033_kernel_decide
def op4303 : List WordIR.Op := [.bxor 616 4398]
def bytes4303 : Bytes := ("    let r0000112f: u32 = r00000268 ^ r0000112e;\n" : String).toByteArray.data.toList
theorem checked4303 : bytes4303=statementBytes 4399 (op4303.map lower) ∧ bytes4303.length=48 := by core033_kernel_decide
def op4304 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4304 : Bytes := ("    let r00001130: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4304 : bytes4304=statementBytes 4400 (op4304.map lower) ∧ bytes4304.length=41 := by core033_kernel_decide
def op4305 : List WordIR.Op := [.bnot 4400]
def bytes4305 : Bytes := ("    let r00001131: u32 = !r00001130;\n" : String).toByteArray.data.toList
theorem checked4305 : bytes4305=statementBytes 4401 (op4305.map lower) ∧ bytes4305.length=37 := by core033_kernel_decide
def op4306 : List WordIR.Op := [.bxor 4399 4401]
def bytes4306 : Bytes := ("    let r00001132: u32 = r0000112f ^ r00001131;\n" : String).toByteArray.data.toList
theorem checked4306 : bytes4306=statementBytes 4402 (op4306.map lower) ∧ bytes4306.length=48 := by core033_kernel_decide
def op4307 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4307 : Bytes := ("    let r00001133: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4307 : bytes4307=statementBytes 4403 (op4307.map lower) ∧ bytes4307.length=41 := by core033_kernel_decide
def op4308 : List WordIR.Op := [.bxor 616 4403]
def bytes4308 : Bytes := ("    let r00001134: u32 = r00000268 ^ r00001133;\n" : String).toByteArray.data.toList
theorem checked4308 : bytes4308=statementBytes 4404 (op4308.map lower) ∧ bytes4308.length=48 := by core033_kernel_decide
def op4309 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4309 : Bytes := ("    let r00001135: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4309 : bytes4309=statementBytes 4405 (op4309.map lower) ∧ bytes4309.length=41 := by core033_kernel_decide
def op4310 : List WordIR.Op := [.bnot 4405]
def bytes4310 : Bytes := ("    let r00001136: u32 = !r00001135;\n" : String).toByteArray.data.toList
theorem checked4310 : bytes4310=statementBytes 4406 (op4310.map lower) ∧ bytes4310.length=37 := by core033_kernel_decide
def op4311 : List WordIR.Op := [.badd 4404 4406]
def bytes4311 : Bytes := ("    let r00001137: u32 = r00001134.wrapping_add(r00001136);\n" : String).toByteArray.data.toList
theorem checked4311 : bytes4311=statementBytes 4407 (op4311.map lower) ∧ bytes4311.length=60 := by core033_kernel_decide
def op4312 : List WordIR.Op := [.bnot 4407]
def bytes4312 : Bytes := ("    let r00001138: u32 = !r00001137;\n" : String).toByteArray.data.toList
theorem checked4312 : bytes4312=statementBytes 4408 (op4312.map lower) ∧ bytes4312.length=37 := by core033_kernel_decide
def op4313 : List WordIR.Op := [.band 4402 4408]
def bytes4313 : Bytes := ("    let r00001139: u32 = r00001132 & r00001138;\n" : String).toByteArray.data.toList
theorem checked4313 : bytes4313=statementBytes 4409 (op4313.map lower) ∧ bytes4313.length=48 := by core033_kernel_decide
def op4314 : List WordIR.Op := [.bxor 4397 4409]
def bytes4314 : Bytes := ("    let r0000113a: u32 = r0000112d ^ r00001139;\n" : String).toByteArray.data.toList
theorem checked4314 : bytes4314=statementBytes 4410 (op4314.map lower) ∧ bytes4314.length=48 := by core033_kernel_decide
def op4315 : List WordIR.Op := [.shr 4410 31]
def bytes4315 : Bytes := ("    let r0000113b: u32 = r0000113a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4315 : bytes4315=statementBytes 4411 (op4315.map lower) ∧ bytes4315.length=54 := by core033_kernel_decide
def op4316 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4316 : Bytes := ("    let r0000113c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4316 : bytes4316=statementBytes 4412 (op4316.map lower) ∧ bytes4316.length=41 := by core033_kernel_decide
def op4317 : List WordIR.Op := [.bxor 4411 4412]
def bytes4317 : Bytes := ("    let r0000113d: u32 = r0000113b ^ r0000113c;\n" : String).toByteArray.data.toList
theorem checked4317 : bytes4317=statementBytes 4413 (op4317.map lower) ∧ bytes4317.length=48 := by core033_kernel_decide
def op4318 : List WordIR.Op := [.bnot 4413]
def bytes4318 : Bytes := ("    let r0000113e: u32 = !r0000113d;\n" : String).toByteArray.data.toList
theorem checked4318 : bytes4318=statementBytes 4414 (op4318.map lower) ∧ bytes4318.length=37 := by core033_kernel_decide
def op4319 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4319 : Bytes := ("    let r0000113f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4319 : bytes4319=statementBytes 4415 (op4319.map lower) ∧ bytes4319.length=41 := by core033_kernel_decide
def op4320 : List WordIR.Op := [.badd 4414 4415]
def bytes4320 : Bytes := ("    let r00001140: u32 = r0000113e.wrapping_add(r0000113f);\n" : String).toByteArray.data.toList
theorem checked4320 : bytes4320=statementBytes 4416 (op4320.map lower) ∧ bytes4320.length=60 := by core033_kernel_decide
def op4321 : List WordIR.Op := [.bnot 4416]
def bytes4321 : Bytes := ("    let r00001141: u32 = !r00001140;\n" : String).toByteArray.data.toList
theorem checked4321 : bytes4321=statementBytes 4417 (op4321.map lower) ∧ bytes4321.length=37 := by core033_kernel_decide
def op4322 : List WordIR.Op := [.band 4417 1908]
def bytes4322 : Bytes := ("    let r00001142: u32 = r00001141 & r00000774;\n" : String).toByteArray.data.toList
theorem checked4322 : bytes4322=statementBytes 4418 (op4322.map lower) ∧ bytes4322.length=48 := by core033_kernel_decide
def op4323 : List WordIR.Op := [.bxor 4392 4418]
def bytes4323 : Bytes := ("    let r00001143: u32 = r00001128 ^ r00001142;\n" : String).toByteArray.data.toList
theorem checked4323 : bytes4323=statementBytes 4419 (op4323.map lower) ∧ bytes4323.length=48 := by core033_kernel_decide
def op4324 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4324 : Bytes := ("    let r00001144: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4324 : bytes4324=statementBytes 4420 (op4324.map lower) ∧ bytes4324.length=41 := by core033_kernel_decide
def op4325 : List WordIR.Op := [.bxor 616 4420]
def bytes4325 : Bytes := ("    let r00001145: u32 = r00000268 ^ r00001144;\n" : String).toByteArray.data.toList
theorem checked4325 : bytes4325=statementBytes 4421 (op4325.map lower) ∧ bytes4325.length=48 := by core033_kernel_decide
def op4326 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4326 : Bytes := ("    let r00001146: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4326 : bytes4326=statementBytes 4422 (op4326.map lower) ∧ bytes4326.length=41 := by core033_kernel_decide
def op4327 : List WordIR.Op := [.bnot 4422]
def bytes4327 : Bytes := ("    let r00001147: u32 = !r00001146;\n" : String).toByteArray.data.toList
theorem checked4327 : bytes4327=statementBytes 4423 (op4327.map lower) ∧ bytes4327.length=37 := by core033_kernel_decide
def op4328 : List WordIR.Op := [.band 4421 4423]
def bytes4328 : Bytes := ("    let r00001148: u32 = r00001145 & r00001147;\n" : String).toByteArray.data.toList
theorem checked4328 : bytes4328=statementBytes 4424 (op4328.map lower) ∧ bytes4328.length=48 := by core033_kernel_decide
def op4329 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4329 : Bytes := ("    let r00001149: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4329 : bytes4329=statementBytes 4425 (op4329.map lower) ∧ bytes4329.length=41 := by core033_kernel_decide
def op4330 : List WordIR.Op := [.bxor 616 4425]
def bytes4330 : Bytes := ("    let r0000114a: u32 = r00000268 ^ r00001149;\n" : String).toByteArray.data.toList
theorem checked4330 : bytes4330=statementBytes 4426 (op4330.map lower) ∧ bytes4330.length=48 := by core033_kernel_decide
def op4331 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4331 : Bytes := ("    let r0000114b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4331 : bytes4331=statementBytes 4427 (op4331.map lower) ∧ bytes4331.length=41 := by core033_kernel_decide
def op4332 : List WordIR.Op := [.bnot 4427]
def bytes4332 : Bytes := ("    let r0000114c: u32 = !r0000114b;\n" : String).toByteArray.data.toList
theorem checked4332 : bytes4332=statementBytes 4428 (op4332.map lower) ∧ bytes4332.length=37 := by core033_kernel_decide
def op4333 : List WordIR.Op := [.bxor 4426 4428]
def bytes4333 : Bytes := ("    let r0000114d: u32 = r0000114a ^ r0000114c;\n" : String).toByteArray.data.toList
theorem checked4333 : bytes4333=statementBytes 4429 (op4333.map lower) ∧ bytes4333.length=48 := by core033_kernel_decide
def op4334 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4334 : Bytes := ("    let r0000114e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4334 : bytes4334=statementBytes 4430 (op4334.map lower) ∧ bytes4334.length=41 := by core033_kernel_decide
def op4335 : List WordIR.Op := [.bxor 616 4430]
def bytes4335 : Bytes := ("    let r0000114f: u32 = r00000268 ^ r0000114e;\n" : String).toByteArray.data.toList
theorem checked4335 : bytes4335=statementBytes 4431 (op4335.map lower) ∧ bytes4335.length=48 := by core033_kernel_decide
def op4336 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4336 : Bytes := ("    let r00001150: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4336 : bytes4336=statementBytes 4432 (op4336.map lower) ∧ bytes4336.length=41 := by core033_kernel_decide
def op4337 : List WordIR.Op := [.bnot 4432]
def bytes4337 : Bytes := ("    let r00001151: u32 = !r00001150;\n" : String).toByteArray.data.toList
theorem checked4337 : bytes4337=statementBytes 4433 (op4337.map lower) ∧ bytes4337.length=37 := by core033_kernel_decide
def op4338 : List WordIR.Op := [.badd 4431 4433]
def bytes4338 : Bytes := ("    let r00001152: u32 = r0000114f.wrapping_add(r00001151);\n" : String).toByteArray.data.toList
theorem checked4338 : bytes4338=statementBytes 4434 (op4338.map lower) ∧ bytes4338.length=60 := by core033_kernel_decide
def op4339 : List WordIR.Op := [.bnot 4434]
def bytes4339 : Bytes := ("    let r00001153: u32 = !r00001152;\n" : String).toByteArray.data.toList
theorem checked4339 : bytes4339=statementBytes 4435 (op4339.map lower) ∧ bytes4339.length=37 := by core033_kernel_decide
def op4340 : List WordIR.Op := [.band 4429 4435]
def bytes4340 : Bytes := ("    let r00001154: u32 = r0000114d & r00001153;\n" : String).toByteArray.data.toList
theorem checked4340 : bytes4340=statementBytes 4436 (op4340.map lower) ∧ bytes4340.length=48 := by core033_kernel_decide
def op4341 : List WordIR.Op := [.bxor 4424 4436]
def bytes4341 : Bytes := ("    let r00001155: u32 = r00001148 ^ r00001154;\n" : String).toByteArray.data.toList
theorem checked4341 : bytes4341=statementBytes 4437 (op4341.map lower) ∧ bytes4341.length=48 := by core033_kernel_decide
def op4342 : List WordIR.Op := [.shr 4437 31]
def bytes4342 : Bytes := ("    let r00001156: u32 = r00001155 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4342 : bytes4342=statementBytes 4438 (op4342.map lower) ∧ bytes4342.length=54 := by core033_kernel_decide
def op4343 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4343 : Bytes := ("    let r00001157: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4343 : bytes4343=statementBytes 4439 (op4343.map lower) ∧ bytes4343.length=41 := by core033_kernel_decide
def op4344 : List WordIR.Op := [.bxor 4438 4439]
def bytes4344 : Bytes := ("    let r00001158: u32 = r00001156 ^ r00001157;\n" : String).toByteArray.data.toList
theorem checked4344 : bytes4344=statementBytes 4440 (op4344.map lower) ∧ bytes4344.length=48 := by core033_kernel_decide
def op4345 : List WordIR.Op := [.bnot 4440]
def bytes4345 : Bytes := ("    let r00001159: u32 = !r00001158;\n" : String).toByteArray.data.toList
theorem checked4345 : bytes4345=statementBytes 4441 (op4345.map lower) ∧ bytes4345.length=37 := by core033_kernel_decide
def op4346 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4346 : Bytes := ("    let r0000115a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4346 : bytes4346=statementBytes 4442 (op4346.map lower) ∧ bytes4346.length=41 := by core033_kernel_decide
def op4347 : List WordIR.Op := [.badd 4441 4442]
def bytes4347 : Bytes := ("    let r0000115b: u32 = r00001159.wrapping_add(r0000115a);\n" : String).toByteArray.data.toList
theorem checked4347 : bytes4347=statementBytes 4443 (op4347.map lower) ∧ bytes4347.length=60 := by core033_kernel_decide
def op4348 : List WordIR.Op := [.band 4443 2103]
def bytes4348 : Bytes := ("    let r0000115c: u32 = r0000115b & r00000837;\n" : String).toByteArray.data.toList
theorem checked4348 : bytes4348=statementBytes 4444 (op4348.map lower) ∧ bytes4348.length=48 := by core033_kernel_decide
def op4349 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4349 : Bytes := ("    let r0000115d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4349 : bytes4349=statementBytes 4445 (op4349.map lower) ∧ bytes4349.length=41 := by core033_kernel_decide
def op4350 : List WordIR.Op := [.bxor 616 4445]
def bytes4350 : Bytes := ("    let r0000115e: u32 = r00000268 ^ r0000115d;\n" : String).toByteArray.data.toList
theorem checked4350 : bytes4350=statementBytes 4446 (op4350.map lower) ∧ bytes4350.length=48 := by core033_kernel_decide
def op4351 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4351 : Bytes := ("    let r0000115f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4351 : bytes4351=statementBytes 4447 (op4351.map lower) ∧ bytes4351.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4288,op4289,op4290,op4291,op4292,op4293,op4294,op4295,op4296,op4297,op4298,op4299,op4300,op4301,op4302,op4303,op4304,op4305,op4306,op4307,op4308,op4309,op4310,op4311,op4312,op4313,op4314,op4315,op4316,op4317,op4318,op4319,op4320,op4321,op4322,op4323,op4324,op4325,op4326,op4327,op4328,op4329,op4330,op4331,op4332,op4333,op4334,op4335,op4336,op4337,op4338,op4339,op4340,op4341,op4342,op4343,op4344,op4345,op4346,op4347,op4348,op4349,op4350,op4351]
def chunks : List Bytes := [bytes4288,bytes4289,bytes4290,bytes4291,bytes4292,bytes4293,bytes4294,bytes4295,bytes4296,bytes4297,bytes4298,bytes4299,bytes4300,bytes4301,bytes4302,bytes4303,bytes4304,bytes4305,bytes4306,bytes4307,bytes4308,bytes4309,bytes4310,bytes4311,bytes4312,bytes4313,bytes4314,bytes4315,bytes4316,bytes4317,bytes4318,bytes4319,bytes4320,bytes4321,bytes4322,bytes4323,bytes4324,bytes4325,bytes4326,bytes4327,bytes4328,bytes4329,bytes4330,bytes4331,bytes4332,bytes4333,bytes4334,bytes4335,bytes4336,bytes4337,bytes4338,bytes4339,bytes4340,bytes4341,bytes4342,bytes4343,bytes4344,bytes4345,bytes4346,bytes4347,bytes4348,bytes4349,bytes4350,bytes4351]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4384 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4288.1 (.cons _ _ _ _ _ checked4289.1 (.cons _ _ _ _ _ checked4290.1 (.cons _ _ _ _ _ checked4291.1 (.cons _ _ _ _ _ checked4292.1 (.cons _ _ _ _ _ checked4293.1 (.cons _ _ _ _ _ checked4294.1 (.cons _ _ _ _ _ checked4295.1 (.cons _ _ _ _ _ checked4296.1 (.cons _ _ _ _ _ checked4297.1 (.cons _ _ _ _ _ checked4298.1 (.cons _ _ _ _ _ checked4299.1 (.cons _ _ _ _ _ checked4300.1 (.cons _ _ _ _ _ checked4301.1 (.cons _ _ _ _ _ checked4302.1 (.cons _ _ _ _ _ checked4303.1 (.cons _ _ _ _ _ checked4304.1 (.cons _ _ _ _ _ checked4305.1 (.cons _ _ _ _ _ checked4306.1 (.cons _ _ _ _ _ checked4307.1 (.cons _ _ _ _ _ checked4308.1 (.cons _ _ _ _ _ checked4309.1 (.cons _ _ _ _ _ checked4310.1 (.cons _ _ _ _ _ checked4311.1 (.cons _ _ _ _ _ checked4312.1 (.cons _ _ _ _ _ checked4313.1 (.cons _ _ _ _ _ checked4314.1 (.cons _ _ _ _ _ checked4315.1 (.cons _ _ _ _ _ checked4316.1 (.cons _ _ _ _ _ checked4317.1 (.cons _ _ _ _ _ checked4318.1 (.cons _ _ _ _ _ checked4319.1 (.cons _ _ _ _ _ checked4320.1 (.cons _ _ _ _ _ checked4321.1 (.cons _ _ _ _ _ checked4322.1 (.cons _ _ _ _ _ checked4323.1 (.cons _ _ _ _ _ checked4324.1 (.cons _ _ _ _ _ checked4325.1 (.cons _ _ _ _ _ checked4326.1 (.cons _ _ _ _ _ checked4327.1 (.cons _ _ _ _ _ checked4328.1 (.cons _ _ _ _ _ checked4329.1 (.cons _ _ _ _ _ checked4330.1 (.cons _ _ _ _ _ checked4331.1 (.cons _ _ _ _ _ checked4332.1 (.cons _ _ _ _ _ checked4333.1 (.cons _ _ _ _ _ checked4334.1 (.cons _ _ _ _ _ checked4335.1 (.cons _ _ _ _ _ checked4336.1 (.cons _ _ _ _ _ checked4337.1 (.cons _ _ _ _ _ checked4338.1 (.cons _ _ _ _ _ checked4339.1 (.cons _ _ _ _ _ checked4340.1 (.cons _ _ _ _ _ checked4341.1 (.cons _ _ _ _ _ checked4342.1 (.cons _ _ _ _ _ checked4343.1 (.cons _ _ _ _ _ checked4344.1 (.cons _ _ _ _ _ checked4345.1 (.cons _ _ _ _ _ checked4346.1 (.cons _ _ _ _ _ checked4347.1 (.cons _ _ _ _ _ checked4348.1 (.cons _ _ _ _ _ checked4349.1 (.cons _ _ _ _ _ checked4350.1 (.cons _ _ _ _ _ checked4351.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4384 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2878 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4288.2,checked4289.2,checked4290.2,checked4291.2,checked4292.2,checked4293.2,checked4294.2,checked4295.2,checked4296.2,checked4297.2,checked4298.2,checked4299.2,checked4300.2,checked4301.2,checked4302.2,checked4303.2,checked4304.2,checked4305.2,checked4306.2,checked4307.2,checked4308.2,checked4309.2,checked4310.2,checked4311.2,checked4312.2,checked4313.2,checked4314.2,checked4315.2,checked4316.2,checked4317.2,checked4318.2,checked4319.2,checked4320.2,checked4321.2,checked4322.2,checked4323.2,checked4324.2,checked4325.2,checked4326.2,checked4327.2,checked4328.2,checked4329.2,checked4330.2,checked4331.2,checked4332.2,checked4333.2,checked4334.2,checked4335.2,checked4336.2,checked4337.2,checked4338.2,checked4339.2,checked4340.2,checked4341.2,checked4342.2,checked4343.2,checked4344.2,checked4345.2,checked4346.2,checked4347.2,checked4348.2,checked4349.2,checked4350.2,checked4351.2]
  decide
end ArtifactPairedPathRoundGroup67
