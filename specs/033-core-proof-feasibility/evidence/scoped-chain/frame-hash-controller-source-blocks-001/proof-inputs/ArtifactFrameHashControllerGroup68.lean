import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup68
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4352 : List WordIR.Op := [.badd 4393 4394]
def bytes4352 : Bytes := ("    let r0000112b: u32 = r00001129.wrapping_add(r0000112a);\n" : String).toByteArray.data.toList
theorem checked4352 : bytes4352=statementBytes 4395 (op4352.map lower) ∧ bytes4352.length=60 := by core033_kernel_decide
def op4353 : List WordIR.Op := [.band 4395 1124]
def bytes4353 : Bytes := ("    let r0000112c: u32 = r0000112b & r00000464;\n" : String).toByteArray.data.toList
theorem checked4353 : bytes4353=statementBytes 4396 (op4353.map lower) ∧ bytes4353.length=48 := by core033_kernel_decide
def op4354 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4354 : Bytes := ("    let r0000112d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4354 : bytes4354=statementBytes 4397 (op4354.map lower) ∧ bytes4354.length=41 := by core033_kernel_decide
def op4355 : List WordIR.Op := [.bxor 0 4397]
def bytes4355 : Bytes := ("    let r0000112e: u32 = r00000000 ^ r0000112d;\n" : String).toByteArray.data.toList
theorem checked4355 : bytes4355=statementBytes 4398 (op4355.map lower) ∧ bytes4355.length=48 := by core033_kernel_decide
def op4356 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4356 : Bytes := ("    let r0000112f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4356 : bytes4356=statementBytes 4399 (op4356.map lower) ∧ bytes4356.length=41 := by core033_kernel_decide
def op4357 : List WordIR.Op := [.bnot 4399]
def bytes4357 : Bytes := ("    let r00001130: u32 = !r0000112f;\n" : String).toByteArray.data.toList
theorem checked4357 : bytes4357=statementBytes 4400 (op4357.map lower) ∧ bytes4357.length=37 := by core033_kernel_decide
def op4358 : List WordIR.Op := [.band 4398 4400]
def bytes4358 : Bytes := ("    let r00001131: u32 = r0000112e & r00001130;\n" : String).toByteArray.data.toList
theorem checked4358 : bytes4358=statementBytes 4401 (op4358.map lower) ∧ bytes4358.length=48 := by core033_kernel_decide
def op4359 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4359 : Bytes := ("    let r00001132: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4359 : bytes4359=statementBytes 4402 (op4359.map lower) ∧ bytes4359.length=41 := by core033_kernel_decide
def op4360 : List WordIR.Op := [.bxor 0 4402]
def bytes4360 : Bytes := ("    let r00001133: u32 = r00000000 ^ r00001132;\n" : String).toByteArray.data.toList
theorem checked4360 : bytes4360=statementBytes 4403 (op4360.map lower) ∧ bytes4360.length=48 := by core033_kernel_decide
def op4361 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4361 : Bytes := ("    let r00001134: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4361 : bytes4361=statementBytes 4404 (op4361.map lower) ∧ bytes4361.length=41 := by core033_kernel_decide
def op4362 : List WordIR.Op := [.bnot 4404]
def bytes4362 : Bytes := ("    let r00001135: u32 = !r00001134;\n" : String).toByteArray.data.toList
theorem checked4362 : bytes4362=statementBytes 4405 (op4362.map lower) ∧ bytes4362.length=37 := by core033_kernel_decide
def op4363 : List WordIR.Op := [.bxor 4403 4405]
def bytes4363 : Bytes := ("    let r00001136: u32 = r00001133 ^ r00001135;\n" : String).toByteArray.data.toList
theorem checked4363 : bytes4363=statementBytes 4406 (op4363.map lower) ∧ bytes4363.length=48 := by core033_kernel_decide
def op4364 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4364 : Bytes := ("    let r00001137: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4364 : bytes4364=statementBytes 4407 (op4364.map lower) ∧ bytes4364.length=41 := by core033_kernel_decide
def op4365 : List WordIR.Op := [.bxor 0 4407]
def bytes4365 : Bytes := ("    let r00001138: u32 = r00000000 ^ r00001137;\n" : String).toByteArray.data.toList
theorem checked4365 : bytes4365=statementBytes 4408 (op4365.map lower) ∧ bytes4365.length=48 := by core033_kernel_decide
def op4366 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4366 : Bytes := ("    let r00001139: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4366 : bytes4366=statementBytes 4409 (op4366.map lower) ∧ bytes4366.length=41 := by core033_kernel_decide
def op4367 : List WordIR.Op := [.bnot 4409]
def bytes4367 : Bytes := ("    let r0000113a: u32 = !r00001139;\n" : String).toByteArray.data.toList
theorem checked4367 : bytes4367=statementBytes 4410 (op4367.map lower) ∧ bytes4367.length=37 := by core033_kernel_decide
def op4368 : List WordIR.Op := [.badd 4408 4410]
def bytes4368 : Bytes := ("    let r0000113b: u32 = r00001138.wrapping_add(r0000113a);\n" : String).toByteArray.data.toList
theorem checked4368 : bytes4368=statementBytes 4411 (op4368.map lower) ∧ bytes4368.length=60 := by core033_kernel_decide
def op4369 : List WordIR.Op := [.bnot 4411]
def bytes4369 : Bytes := ("    let r0000113c: u32 = !r0000113b;\n" : String).toByteArray.data.toList
theorem checked4369 : bytes4369=statementBytes 4412 (op4369.map lower) ∧ bytes4369.length=37 := by core033_kernel_decide
def op4370 : List WordIR.Op := [.band 4406 4412]
def bytes4370 : Bytes := ("    let r0000113d: u32 = r00001136 & r0000113c;\n" : String).toByteArray.data.toList
theorem checked4370 : bytes4370=statementBytes 4413 (op4370.map lower) ∧ bytes4370.length=48 := by core033_kernel_decide
def op4371 : List WordIR.Op := [.bxor 4401 4413]
def bytes4371 : Bytes := ("    let r0000113e: u32 = r00001131 ^ r0000113d;\n" : String).toByteArray.data.toList
theorem checked4371 : bytes4371=statementBytes 4414 (op4371.map lower) ∧ bytes4371.length=48 := by core033_kernel_decide
def op4372 : List WordIR.Op := [.shr 4414 31]
def bytes4372 : Bytes := ("    let r0000113f: u32 = r0000113e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4372 : bytes4372=statementBytes 4415 (op4372.map lower) ∧ bytes4372.length=54 := by core033_kernel_decide
def op4373 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4373 : Bytes := ("    let r00001140: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4373 : bytes4373=statementBytes 4416 (op4373.map lower) ∧ bytes4373.length=41 := by core033_kernel_decide
def op4374 : List WordIR.Op := [.bxor 4415 4416]
def bytes4374 : Bytes := ("    let r00001141: u32 = r0000113f ^ r00001140;\n" : String).toByteArray.data.toList
theorem checked4374 : bytes4374=statementBytes 4417 (op4374.map lower) ∧ bytes4374.length=48 := by core033_kernel_decide
def op4375 : List WordIR.Op := [.bnot 4417]
def bytes4375 : Bytes := ("    let r00001142: u32 = !r00001141;\n" : String).toByteArray.data.toList
theorem checked4375 : bytes4375=statementBytes 4418 (op4375.map lower) ∧ bytes4375.length=37 := by core033_kernel_decide
def op4376 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4376 : Bytes := ("    let r00001143: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4376 : bytes4376=statementBytes 4419 (op4376.map lower) ∧ bytes4376.length=41 := by core033_kernel_decide
def op4377 : List WordIR.Op := [.badd 4418 4419]
def bytes4377 : Bytes := ("    let r00001144: u32 = r00001142.wrapping_add(r00001143);\n" : String).toByteArray.data.toList
theorem checked4377 : bytes4377=statementBytes 4420 (op4377.map lower) ∧ bytes4377.length=60 := by core033_kernel_decide
def op4378 : List WordIR.Op := [.bnot 4420]
def bytes4378 : Bytes := ("    let r00001145: u32 = !r00001144;\n" : String).toByteArray.data.toList
theorem checked4378 : bytes4378=statementBytes 4421 (op4378.map lower) ∧ bytes4378.length=37 := by core033_kernel_decide
def op4379 : List WordIR.Op := [.band 4421 932]
def bytes4379 : Bytes := ("    let r00001146: u32 = r00001145 & r000003a4;\n" : String).toByteArray.data.toList
theorem checked4379 : bytes4379=statementBytes 4422 (op4379.map lower) ∧ bytes4379.length=48 := by core033_kernel_decide
def op4380 : List WordIR.Op := [.bxor 4396 4422]
def bytes4380 : Bytes := ("    let r00001147: u32 = r0000112c ^ r00001146;\n" : String).toByteArray.data.toList
theorem checked4380 : bytes4380=statementBytes 4423 (op4380.map lower) ∧ bytes4380.length=48 := by core033_kernel_decide
def op4381 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4381 : Bytes := ("    let r00001148: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4381 : bytes4381=statementBytes 4424 (op4381.map lower) ∧ bytes4381.length=41 := by core033_kernel_decide
def op4382 : List WordIR.Op := [.bxor 0 4424]
def bytes4382 : Bytes := ("    let r00001149: u32 = r00000000 ^ r00001148;\n" : String).toByteArray.data.toList
theorem checked4382 : bytes4382=statementBytes 4425 (op4382.map lower) ∧ bytes4382.length=48 := by core033_kernel_decide
def op4383 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4383 : Bytes := ("    let r0000114a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4383 : bytes4383=statementBytes 4426 (op4383.map lower) ∧ bytes4383.length=41 := by core033_kernel_decide
def op4384 : List WordIR.Op := [.bnot 4426]
def bytes4384 : Bytes := ("    let r0000114b: u32 = !r0000114a;\n" : String).toByteArray.data.toList
theorem checked4384 : bytes4384=statementBytes 4427 (op4384.map lower) ∧ bytes4384.length=37 := by core033_kernel_decide
def op4385 : List WordIR.Op := [.band 4425 4427]
def bytes4385 : Bytes := ("    let r0000114c: u32 = r00001149 & r0000114b;\n" : String).toByteArray.data.toList
theorem checked4385 : bytes4385=statementBytes 4428 (op4385.map lower) ∧ bytes4385.length=48 := by core033_kernel_decide
def op4386 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4386 : Bytes := ("    let r0000114d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4386 : bytes4386=statementBytes 4429 (op4386.map lower) ∧ bytes4386.length=41 := by core033_kernel_decide
def op4387 : List WordIR.Op := [.bxor 0 4429]
def bytes4387 : Bytes := ("    let r0000114e: u32 = r00000000 ^ r0000114d;\n" : String).toByteArray.data.toList
theorem checked4387 : bytes4387=statementBytes 4430 (op4387.map lower) ∧ bytes4387.length=48 := by core033_kernel_decide
def op4388 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4388 : Bytes := ("    let r0000114f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4388 : bytes4388=statementBytes 4431 (op4388.map lower) ∧ bytes4388.length=41 := by core033_kernel_decide
def op4389 : List WordIR.Op := [.bnot 4431]
def bytes4389 : Bytes := ("    let r00001150: u32 = !r0000114f;\n" : String).toByteArray.data.toList
theorem checked4389 : bytes4389=statementBytes 4432 (op4389.map lower) ∧ bytes4389.length=37 := by core033_kernel_decide
def op4390 : List WordIR.Op := [.bxor 4430 4432]
def bytes4390 : Bytes := ("    let r00001151: u32 = r0000114e ^ r00001150;\n" : String).toByteArray.data.toList
theorem checked4390 : bytes4390=statementBytes 4433 (op4390.map lower) ∧ bytes4390.length=48 := by core033_kernel_decide
def op4391 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4391 : Bytes := ("    let r00001152: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4391 : bytes4391=statementBytes 4434 (op4391.map lower) ∧ bytes4391.length=41 := by core033_kernel_decide
def op4392 : List WordIR.Op := [.bxor 0 4434]
def bytes4392 : Bytes := ("    let r00001153: u32 = r00000000 ^ r00001152;\n" : String).toByteArray.data.toList
theorem checked4392 : bytes4392=statementBytes 4435 (op4392.map lower) ∧ bytes4392.length=48 := by core033_kernel_decide
def op4393 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4393 : Bytes := ("    let r00001154: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4393 : bytes4393=statementBytes 4436 (op4393.map lower) ∧ bytes4393.length=41 := by core033_kernel_decide
def op4394 : List WordIR.Op := [.bnot 4436]
def bytes4394 : Bytes := ("    let r00001155: u32 = !r00001154;\n" : String).toByteArray.data.toList
theorem checked4394 : bytes4394=statementBytes 4437 (op4394.map lower) ∧ bytes4394.length=37 := by core033_kernel_decide
def op4395 : List WordIR.Op := [.badd 4435 4437]
def bytes4395 : Bytes := ("    let r00001156: u32 = r00001153.wrapping_add(r00001155);\n" : String).toByteArray.data.toList
theorem checked4395 : bytes4395=statementBytes 4438 (op4395.map lower) ∧ bytes4395.length=60 := by core033_kernel_decide
def op4396 : List WordIR.Op := [.bnot 4438]
def bytes4396 : Bytes := ("    let r00001157: u32 = !r00001156;\n" : String).toByteArray.data.toList
theorem checked4396 : bytes4396=statementBytes 4439 (op4396.map lower) ∧ bytes4396.length=37 := by core033_kernel_decide
def op4397 : List WordIR.Op := [.band 4433 4439]
def bytes4397 : Bytes := ("    let r00001158: u32 = r00001151 & r00001157;\n" : String).toByteArray.data.toList
theorem checked4397 : bytes4397=statementBytes 4440 (op4397.map lower) ∧ bytes4397.length=48 := by core033_kernel_decide
def op4398 : List WordIR.Op := [.bxor 4428 4440]
def bytes4398 : Bytes := ("    let r00001159: u32 = r0000114c ^ r00001158;\n" : String).toByteArray.data.toList
theorem checked4398 : bytes4398=statementBytes 4441 (op4398.map lower) ∧ bytes4398.length=48 := by core033_kernel_decide
def op4399 : List WordIR.Op := [.shr 4441 31]
def bytes4399 : Bytes := ("    let r0000115a: u32 = r00001159 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4399 : bytes4399=statementBytes 4442 (op4399.map lower) ∧ bytes4399.length=54 := by core033_kernel_decide
def op4400 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4400 : Bytes := ("    let r0000115b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4400 : bytes4400=statementBytes 4443 (op4400.map lower) ∧ bytes4400.length=41 := by core033_kernel_decide
def op4401 : List WordIR.Op := [.bxor 4442 4443]
def bytes4401 : Bytes := ("    let r0000115c: u32 = r0000115a ^ r0000115b;\n" : String).toByteArray.data.toList
theorem checked4401 : bytes4401=statementBytes 4444 (op4401.map lower) ∧ bytes4401.length=48 := by core033_kernel_decide
def op4402 : List WordIR.Op := [.bnot 4444]
def bytes4402 : Bytes := ("    let r0000115d: u32 = !r0000115c;\n" : String).toByteArray.data.toList
theorem checked4402 : bytes4402=statementBytes 4445 (op4402.map lower) ∧ bytes4402.length=37 := by core033_kernel_decide
def op4403 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4403 : Bytes := ("    let r0000115e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4403 : bytes4403=statementBytes 4446 (op4403.map lower) ∧ bytes4403.length=41 := by core033_kernel_decide
def op4404 : List WordIR.Op := [.badd 4445 4446]
def bytes4404 : Bytes := ("    let r0000115f: u32 = r0000115d.wrapping_add(r0000115e);\n" : String).toByteArray.data.toList
theorem checked4404 : bytes4404=statementBytes 4447 (op4404.map lower) ∧ bytes4404.length=60 := by core033_kernel_decide
def op4405 : List WordIR.Op := [.band 4447 1127]
def bytes4405 : Bytes := ("    let r00001160: u32 = r0000115f & r00000467;\n" : String).toByteArray.data.toList
theorem checked4405 : bytes4405=statementBytes 4448 (op4405.map lower) ∧ bytes4405.length=48 := by core033_kernel_decide
def op4406 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4406 : Bytes := ("    let r00001161: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4406 : bytes4406=statementBytes 4449 (op4406.map lower) ∧ bytes4406.length=41 := by core033_kernel_decide
def op4407 : List WordIR.Op := [.bxor 0 4449]
def bytes4407 : Bytes := ("    let r00001162: u32 = r00000000 ^ r00001161;\n" : String).toByteArray.data.toList
theorem checked4407 : bytes4407=statementBytes 4450 (op4407.map lower) ∧ bytes4407.length=48 := by core033_kernel_decide
def op4408 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4408 : Bytes := ("    let r00001163: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4408 : bytes4408=statementBytes 4451 (op4408.map lower) ∧ bytes4408.length=41 := by core033_kernel_decide
def op4409 : List WordIR.Op := [.bnot 4451]
def bytes4409 : Bytes := ("    let r00001164: u32 = !r00001163;\n" : String).toByteArray.data.toList
theorem checked4409 : bytes4409=statementBytes 4452 (op4409.map lower) ∧ bytes4409.length=37 := by core033_kernel_decide
def op4410 : List WordIR.Op := [.band 4450 4452]
def bytes4410 : Bytes := ("    let r00001165: u32 = r00001162 & r00001164;\n" : String).toByteArray.data.toList
theorem checked4410 : bytes4410=statementBytes 4453 (op4410.map lower) ∧ bytes4410.length=48 := by core033_kernel_decide
def op4411 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4411 : Bytes := ("    let r00001166: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4411 : bytes4411=statementBytes 4454 (op4411.map lower) ∧ bytes4411.length=41 := by core033_kernel_decide
def op4412 : List WordIR.Op := [.bxor 0 4454]
def bytes4412 : Bytes := ("    let r00001167: u32 = r00000000 ^ r00001166;\n" : String).toByteArray.data.toList
theorem checked4412 : bytes4412=statementBytes 4455 (op4412.map lower) ∧ bytes4412.length=48 := by core033_kernel_decide
def op4413 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4413 : Bytes := ("    let r00001168: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4413 : bytes4413=statementBytes 4456 (op4413.map lower) ∧ bytes4413.length=41 := by core033_kernel_decide
def op4414 : List WordIR.Op := [.bnot 4456]
def bytes4414 : Bytes := ("    let r00001169: u32 = !r00001168;\n" : String).toByteArray.data.toList
theorem checked4414 : bytes4414=statementBytes 4457 (op4414.map lower) ∧ bytes4414.length=37 := by core033_kernel_decide
def op4415 : List WordIR.Op := [.bxor 4455 4457]
def bytes4415 : Bytes := ("    let r0000116a: u32 = r00001167 ^ r00001169;\n" : String).toByteArray.data.toList
theorem checked4415 : bytes4415=statementBytes 4458 (op4415.map lower) ∧ bytes4415.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4352,op4353,op4354,op4355,op4356,op4357,op4358,op4359,op4360,op4361,op4362,op4363,op4364,op4365,op4366,op4367,op4368,op4369,op4370,op4371,op4372,op4373,op4374,op4375,op4376,op4377,op4378,op4379,op4380,op4381,op4382,op4383,op4384,op4385,op4386,op4387,op4388,op4389,op4390,op4391,op4392,op4393,op4394,op4395,op4396,op4397,op4398,op4399,op4400,op4401,op4402,op4403,op4404,op4405,op4406,op4407,op4408,op4409,op4410,op4411,op4412,op4413,op4414,op4415]
def chunks : List Bytes := [bytes4352,bytes4353,bytes4354,bytes4355,bytes4356,bytes4357,bytes4358,bytes4359,bytes4360,bytes4361,bytes4362,bytes4363,bytes4364,bytes4365,bytes4366,bytes4367,bytes4368,bytes4369,bytes4370,bytes4371,bytes4372,bytes4373,bytes4374,bytes4375,bytes4376,bytes4377,bytes4378,bytes4379,bytes4380,bytes4381,bytes4382,bytes4383,bytes4384,bytes4385,bytes4386,bytes4387,bytes4388,bytes4389,bytes4390,bytes4391,bytes4392,bytes4393,bytes4394,bytes4395,bytes4396,bytes4397,bytes4398,bytes4399,bytes4400,bytes4401,bytes4402,bytes4403,bytes4404,bytes4405,bytes4406,bytes4407,bytes4408,bytes4409,bytes4410,bytes4411,bytes4412,bytes4413,bytes4414,bytes4415]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4395 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4352.1 (.cons _ _ _ _ _ checked4353.1 (.cons _ _ _ _ _ checked4354.1 (.cons _ _ _ _ _ checked4355.1 (.cons _ _ _ _ _ checked4356.1 (.cons _ _ _ _ _ checked4357.1 (.cons _ _ _ _ _ checked4358.1 (.cons _ _ _ _ _ checked4359.1 (.cons _ _ _ _ _ checked4360.1 (.cons _ _ _ _ _ checked4361.1 (.cons _ _ _ _ _ checked4362.1 (.cons _ _ _ _ _ checked4363.1 (.cons _ _ _ _ _ checked4364.1 (.cons _ _ _ _ _ checked4365.1 (.cons _ _ _ _ _ checked4366.1 (.cons _ _ _ _ _ checked4367.1 (.cons _ _ _ _ _ checked4368.1 (.cons _ _ _ _ _ checked4369.1 (.cons _ _ _ _ _ checked4370.1 (.cons _ _ _ _ _ checked4371.1 (.cons _ _ _ _ _ checked4372.1 (.cons _ _ _ _ _ checked4373.1 (.cons _ _ _ _ _ checked4374.1 (.cons _ _ _ _ _ checked4375.1 (.cons _ _ _ _ _ checked4376.1 (.cons _ _ _ _ _ checked4377.1 (.cons _ _ _ _ _ checked4378.1 (.cons _ _ _ _ _ checked4379.1 (.cons _ _ _ _ _ checked4380.1 (.cons _ _ _ _ _ checked4381.1 (.cons _ _ _ _ _ checked4382.1 (.cons _ _ _ _ _ checked4383.1 (.cons _ _ _ _ _ checked4384.1 (.cons _ _ _ _ _ checked4385.1 (.cons _ _ _ _ _ checked4386.1 (.cons _ _ _ _ _ checked4387.1 (.cons _ _ _ _ _ checked4388.1 (.cons _ _ _ _ _ checked4389.1 (.cons _ _ _ _ _ checked4390.1 (.cons _ _ _ _ _ checked4391.1 (.cons _ _ _ _ _ checked4392.1 (.cons _ _ _ _ _ checked4393.1 (.cons _ _ _ _ _ checked4394.1 (.cons _ _ _ _ _ checked4395.1 (.cons _ _ _ _ _ checked4396.1 (.cons _ _ _ _ _ checked4397.1 (.cons _ _ _ _ _ checked4398.1 (.cons _ _ _ _ _ checked4399.1 (.cons _ _ _ _ _ checked4400.1 (.cons _ _ _ _ _ checked4401.1 (.cons _ _ _ _ _ checked4402.1 (.cons _ _ _ _ _ checked4403.1 (.cons _ _ _ _ _ checked4404.1 (.cons _ _ _ _ _ checked4405.1 (.cons _ _ _ _ _ checked4406.1 (.cons _ _ _ _ _ checked4407.1 (.cons _ _ _ _ _ checked4408.1 (.cons _ _ _ _ _ checked4409.1 (.cons _ _ _ _ _ checked4410.1 (.cons _ _ _ _ _ checked4411.1 (.cons _ _ _ _ _ checked4412.1 (.cons _ _ _ _ _ checked4413.1 (.cons _ _ _ _ _ checked4414.1 (.cons _ _ _ _ _ checked4415.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4395 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4352.2,checked4353.2,checked4354.2,checked4355.2,checked4356.2,checked4357.2,checked4358.2,checked4359.2,checked4360.2,checked4361.2,checked4362.2,checked4363.2,checked4364.2,checked4365.2,checked4366.2,checked4367.2,checked4368.2,checked4369.2,checked4370.2,checked4371.2,checked4372.2,checked4373.2,checked4374.2,checked4375.2,checked4376.2,checked4377.2,checked4378.2,checked4379.2,checked4380.2,checked4381.2,checked4382.2,checked4383.2,checked4384.2,checked4385.2,checked4386.2,checked4387.2,checked4388.2,checked4389.2,checked4390.2,checked4391.2,checked4392.2,checked4393.2,checked4394.2,checked4395.2,checked4396.2,checked4397.2,checked4398.2,checked4399.2,checked4400.2,checked4401.2,checked4402.2,checked4403.2,checked4404.2,checked4405.2,checked4406.2,checked4407.2,checked4408.2,checked4409.2,checked4410.2,checked4411.2,checked4412.2,checked4413.2,checked4414.2,checked4415.2]
  decide
end ArtifactFrameHashControllerGroup68
