import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup68
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4352 : List WordIR.Op := [.bnot 4447]
def bytes4352 : Bytes := ("    let r00001160: u32 = !r0000115f;\n" : String).toByteArray.data.toList
theorem checked4352 : bytes4352=statementBytes 4448 (op4352.map lower) ∧ bytes4352.length=37 := by core033_kernel_decide
def op4353 : List WordIR.Op := [.band 4446 4448]
def bytes4353 : Bytes := ("    let r00001161: u32 = r0000115e & r00001160;\n" : String).toByteArray.data.toList
theorem checked4353 : bytes4353=statementBytes 4449 (op4353.map lower) ∧ bytes4353.length=48 := by core033_kernel_decide
def op4354 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4354 : Bytes := ("    let r00001162: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4354 : bytes4354=statementBytes 4450 (op4354.map lower) ∧ bytes4354.length=41 := by core033_kernel_decide
def op4355 : List WordIR.Op := [.bxor 616 4450]
def bytes4355 : Bytes := ("    let r00001163: u32 = r00000268 ^ r00001162;\n" : String).toByteArray.data.toList
theorem checked4355 : bytes4355=statementBytes 4451 (op4355.map lower) ∧ bytes4355.length=48 := by core033_kernel_decide
def op4356 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4356 : Bytes := ("    let r00001164: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4356 : bytes4356=statementBytes 4452 (op4356.map lower) ∧ bytes4356.length=41 := by core033_kernel_decide
def op4357 : List WordIR.Op := [.bnot 4452]
def bytes4357 : Bytes := ("    let r00001165: u32 = !r00001164;\n" : String).toByteArray.data.toList
theorem checked4357 : bytes4357=statementBytes 4453 (op4357.map lower) ∧ bytes4357.length=37 := by core033_kernel_decide
def op4358 : List WordIR.Op := [.bxor 4451 4453]
def bytes4358 : Bytes := ("    let r00001166: u32 = r00001163 ^ r00001165;\n" : String).toByteArray.data.toList
theorem checked4358 : bytes4358=statementBytes 4454 (op4358.map lower) ∧ bytes4358.length=48 := by core033_kernel_decide
def op4359 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4359 : Bytes := ("    let r00001167: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4359 : bytes4359=statementBytes 4455 (op4359.map lower) ∧ bytes4359.length=41 := by core033_kernel_decide
def op4360 : List WordIR.Op := [.bxor 616 4455]
def bytes4360 : Bytes := ("    let r00001168: u32 = r00000268 ^ r00001167;\n" : String).toByteArray.data.toList
theorem checked4360 : bytes4360=statementBytes 4456 (op4360.map lower) ∧ bytes4360.length=48 := by core033_kernel_decide
def op4361 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4361 : Bytes := ("    let r00001169: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4361 : bytes4361=statementBytes 4457 (op4361.map lower) ∧ bytes4361.length=41 := by core033_kernel_decide
def op4362 : List WordIR.Op := [.bnot 4457]
def bytes4362 : Bytes := ("    let r0000116a: u32 = !r00001169;\n" : String).toByteArray.data.toList
theorem checked4362 : bytes4362=statementBytes 4458 (op4362.map lower) ∧ bytes4362.length=37 := by core033_kernel_decide
def op4363 : List WordIR.Op := [.badd 4456 4458]
def bytes4363 : Bytes := ("    let r0000116b: u32 = r00001168.wrapping_add(r0000116a);\n" : String).toByteArray.data.toList
theorem checked4363 : bytes4363=statementBytes 4459 (op4363.map lower) ∧ bytes4363.length=60 := by core033_kernel_decide
def op4364 : List WordIR.Op := [.bnot 4459]
def bytes4364 : Bytes := ("    let r0000116c: u32 = !r0000116b;\n" : String).toByteArray.data.toList
theorem checked4364 : bytes4364=statementBytes 4460 (op4364.map lower) ∧ bytes4364.length=37 := by core033_kernel_decide
def op4365 : List WordIR.Op := [.band 4454 4460]
def bytes4365 : Bytes := ("    let r0000116d: u32 = r00001166 & r0000116c;\n" : String).toByteArray.data.toList
theorem checked4365 : bytes4365=statementBytes 4461 (op4365.map lower) ∧ bytes4365.length=48 := by core033_kernel_decide
def op4366 : List WordIR.Op := [.bxor 4449 4461]
def bytes4366 : Bytes := ("    let r0000116e: u32 = r00001161 ^ r0000116d;\n" : String).toByteArray.data.toList
theorem checked4366 : bytes4366=statementBytes 4462 (op4366.map lower) ∧ bytes4366.length=48 := by core033_kernel_decide
def op4367 : List WordIR.Op := [.shr 4462 31]
def bytes4367 : Bytes := ("    let r0000116f: u32 = r0000116e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4367 : bytes4367=statementBytes 4463 (op4367.map lower) ∧ bytes4367.length=54 := by core033_kernel_decide
def op4368 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4368 : Bytes := ("    let r00001170: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4368 : bytes4368=statementBytes 4464 (op4368.map lower) ∧ bytes4368.length=41 := by core033_kernel_decide
def op4369 : List WordIR.Op := [.bxor 4463 4464]
def bytes4369 : Bytes := ("    let r00001171: u32 = r0000116f ^ r00001170;\n" : String).toByteArray.data.toList
theorem checked4369 : bytes4369=statementBytes 4465 (op4369.map lower) ∧ bytes4369.length=48 := by core033_kernel_decide
def op4370 : List WordIR.Op := [.bnot 4465]
def bytes4370 : Bytes := ("    let r00001172: u32 = !r00001171;\n" : String).toByteArray.data.toList
theorem checked4370 : bytes4370=statementBytes 4466 (op4370.map lower) ∧ bytes4370.length=37 := by core033_kernel_decide
def op4371 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4371 : Bytes := ("    let r00001173: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4371 : bytes4371=statementBytes 4467 (op4371.map lower) ∧ bytes4371.length=41 := by core033_kernel_decide
def op4372 : List WordIR.Op := [.badd 4466 4467]
def bytes4372 : Bytes := ("    let r00001174: u32 = r00001172.wrapping_add(r00001173);\n" : String).toByteArray.data.toList
theorem checked4372 : bytes4372=statementBytes 4468 (op4372.map lower) ∧ bytes4372.length=60 := by core033_kernel_decide
def op4373 : List WordIR.Op := [.bnot 4468]
def bytes4373 : Bytes := ("    let r00001175: u32 = !r00001174;\n" : String).toByteArray.data.toList
theorem checked4373 : bytes4373=statementBytes 4469 (op4373.map lower) ∧ bytes4373.length=37 := by core033_kernel_decide
def op4374 : List WordIR.Op := [.band 4469 1911]
def bytes4374 : Bytes := ("    let r00001176: u32 = r00001175 & r00000777;\n" : String).toByteArray.data.toList
theorem checked4374 : bytes4374=statementBytes 4470 (op4374.map lower) ∧ bytes4374.length=48 := by core033_kernel_decide
def op4375 : List WordIR.Op := [.bxor 4444 4470]
def bytes4375 : Bytes := ("    let r00001177: u32 = r0000115c ^ r00001176;\n" : String).toByteArray.data.toList
theorem checked4375 : bytes4375=statementBytes 4471 (op4375.map lower) ∧ bytes4375.length=48 := by core033_kernel_decide
def op4376 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4376 : Bytes := ("    let r00001178: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4376 : bytes4376=statementBytes 4472 (op4376.map lower) ∧ bytes4376.length=41 := by core033_kernel_decide
def op4377 : List WordIR.Op := [.bxor 616 4472]
def bytes4377 : Bytes := ("    let r00001179: u32 = r00000268 ^ r00001178;\n" : String).toByteArray.data.toList
theorem checked4377 : bytes4377=statementBytes 4473 (op4377.map lower) ∧ bytes4377.length=48 := by core033_kernel_decide
def op4378 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4378 : Bytes := ("    let r0000117a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4378 : bytes4378=statementBytes 4474 (op4378.map lower) ∧ bytes4378.length=41 := by core033_kernel_decide
def op4379 : List WordIR.Op := [.bnot 4474]
def bytes4379 : Bytes := ("    let r0000117b: u32 = !r0000117a;\n" : String).toByteArray.data.toList
theorem checked4379 : bytes4379=statementBytes 4475 (op4379.map lower) ∧ bytes4379.length=37 := by core033_kernel_decide
def op4380 : List WordIR.Op := [.band 4473 4475]
def bytes4380 : Bytes := ("    let r0000117c: u32 = r00001179 & r0000117b;\n" : String).toByteArray.data.toList
theorem checked4380 : bytes4380=statementBytes 4476 (op4380.map lower) ∧ bytes4380.length=48 := by core033_kernel_decide
def op4381 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4381 : Bytes := ("    let r0000117d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4381 : bytes4381=statementBytes 4477 (op4381.map lower) ∧ bytes4381.length=41 := by core033_kernel_decide
def op4382 : List WordIR.Op := [.bxor 616 4477]
def bytes4382 : Bytes := ("    let r0000117e: u32 = r00000268 ^ r0000117d;\n" : String).toByteArray.data.toList
theorem checked4382 : bytes4382=statementBytes 4478 (op4382.map lower) ∧ bytes4382.length=48 := by core033_kernel_decide
def op4383 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4383 : Bytes := ("    let r0000117f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4383 : bytes4383=statementBytes 4479 (op4383.map lower) ∧ bytes4383.length=41 := by core033_kernel_decide
def op4384 : List WordIR.Op := [.bnot 4479]
def bytes4384 : Bytes := ("    let r00001180: u32 = !r0000117f;\n" : String).toByteArray.data.toList
theorem checked4384 : bytes4384=statementBytes 4480 (op4384.map lower) ∧ bytes4384.length=37 := by core033_kernel_decide
def op4385 : List WordIR.Op := [.bxor 4478 4480]
def bytes4385 : Bytes := ("    let r00001181: u32 = r0000117e ^ r00001180;\n" : String).toByteArray.data.toList
theorem checked4385 : bytes4385=statementBytes 4481 (op4385.map lower) ∧ bytes4385.length=48 := by core033_kernel_decide
def op4386 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4386 : Bytes := ("    let r00001182: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4386 : bytes4386=statementBytes 4482 (op4386.map lower) ∧ bytes4386.length=41 := by core033_kernel_decide
def op4387 : List WordIR.Op := [.bxor 616 4482]
def bytes4387 : Bytes := ("    let r00001183: u32 = r00000268 ^ r00001182;\n" : String).toByteArray.data.toList
theorem checked4387 : bytes4387=statementBytes 4483 (op4387.map lower) ∧ bytes4387.length=48 := by core033_kernel_decide
def op4388 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4388 : Bytes := ("    let r00001184: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4388 : bytes4388=statementBytes 4484 (op4388.map lower) ∧ bytes4388.length=41 := by core033_kernel_decide
def op4389 : List WordIR.Op := [.bnot 4484]
def bytes4389 : Bytes := ("    let r00001185: u32 = !r00001184;\n" : String).toByteArray.data.toList
theorem checked4389 : bytes4389=statementBytes 4485 (op4389.map lower) ∧ bytes4389.length=37 := by core033_kernel_decide
def op4390 : List WordIR.Op := [.badd 4483 4485]
def bytes4390 : Bytes := ("    let r00001186: u32 = r00001183.wrapping_add(r00001185);\n" : String).toByteArray.data.toList
theorem checked4390 : bytes4390=statementBytes 4486 (op4390.map lower) ∧ bytes4390.length=60 := by core033_kernel_decide
def op4391 : List WordIR.Op := [.bnot 4486]
def bytes4391 : Bytes := ("    let r00001187: u32 = !r00001186;\n" : String).toByteArray.data.toList
theorem checked4391 : bytes4391=statementBytes 4487 (op4391.map lower) ∧ bytes4391.length=37 := by core033_kernel_decide
def op4392 : List WordIR.Op := [.band 4481 4487]
def bytes4392 : Bytes := ("    let r00001188: u32 = r00001181 & r00001187;\n" : String).toByteArray.data.toList
theorem checked4392 : bytes4392=statementBytes 4488 (op4392.map lower) ∧ bytes4392.length=48 := by core033_kernel_decide
def op4393 : List WordIR.Op := [.bxor 4476 4488]
def bytes4393 : Bytes := ("    let r00001189: u32 = r0000117c ^ r00001188;\n" : String).toByteArray.data.toList
theorem checked4393 : bytes4393=statementBytes 4489 (op4393.map lower) ∧ bytes4393.length=48 := by core033_kernel_decide
def op4394 : List WordIR.Op := [.shr 4489 31]
def bytes4394 : Bytes := ("    let r0000118a: u32 = r00001189 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4394 : bytes4394=statementBytes 4490 (op4394.map lower) ∧ bytes4394.length=54 := by core033_kernel_decide
def op4395 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4395 : Bytes := ("    let r0000118b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4395 : bytes4395=statementBytes 4491 (op4395.map lower) ∧ bytes4395.length=41 := by core033_kernel_decide
def op4396 : List WordIR.Op := [.bxor 4490 4491]
def bytes4396 : Bytes := ("    let r0000118c: u32 = r0000118a ^ r0000118b;\n" : String).toByteArray.data.toList
theorem checked4396 : bytes4396=statementBytes 4492 (op4396.map lower) ∧ bytes4396.length=48 := by core033_kernel_decide
def op4397 : List WordIR.Op := [.bnot 4492]
def bytes4397 : Bytes := ("    let r0000118d: u32 = !r0000118c;\n" : String).toByteArray.data.toList
theorem checked4397 : bytes4397=statementBytes 4493 (op4397.map lower) ∧ bytes4397.length=37 := by core033_kernel_decide
def op4398 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4398 : Bytes := ("    let r0000118e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4398 : bytes4398=statementBytes 4494 (op4398.map lower) ∧ bytes4398.length=41 := by core033_kernel_decide
def op4399 : List WordIR.Op := [.badd 4493 4494]
def bytes4399 : Bytes := ("    let r0000118f: u32 = r0000118d.wrapping_add(r0000118e);\n" : String).toByteArray.data.toList
theorem checked4399 : bytes4399=statementBytes 4495 (op4399.map lower) ∧ bytes4399.length=60 := by core033_kernel_decide
def op4400 : List WordIR.Op := [.band 4495 2106]
def bytes4400 : Bytes := ("    let r00001190: u32 = r0000118f & r0000083a;\n" : String).toByteArray.data.toList
theorem checked4400 : bytes4400=statementBytes 4496 (op4400.map lower) ∧ bytes4400.length=48 := by core033_kernel_decide
def op4401 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4401 : Bytes := ("    let r00001191: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4401 : bytes4401=statementBytes 4497 (op4401.map lower) ∧ bytes4401.length=41 := by core033_kernel_decide
def op4402 : List WordIR.Op := [.bxor 616 4497]
def bytes4402 : Bytes := ("    let r00001192: u32 = r00000268 ^ r00001191;\n" : String).toByteArray.data.toList
theorem checked4402 : bytes4402=statementBytes 4498 (op4402.map lower) ∧ bytes4402.length=48 := by core033_kernel_decide
def op4403 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4403 : Bytes := ("    let r00001193: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4403 : bytes4403=statementBytes 4499 (op4403.map lower) ∧ bytes4403.length=41 := by core033_kernel_decide
def op4404 : List WordIR.Op := [.bnot 4499]
def bytes4404 : Bytes := ("    let r00001194: u32 = !r00001193;\n" : String).toByteArray.data.toList
theorem checked4404 : bytes4404=statementBytes 4500 (op4404.map lower) ∧ bytes4404.length=37 := by core033_kernel_decide
def op4405 : List WordIR.Op := [.band 4498 4500]
def bytes4405 : Bytes := ("    let r00001195: u32 = r00001192 & r00001194;\n" : String).toByteArray.data.toList
theorem checked4405 : bytes4405=statementBytes 4501 (op4405.map lower) ∧ bytes4405.length=48 := by core033_kernel_decide
def op4406 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4406 : Bytes := ("    let r00001196: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4406 : bytes4406=statementBytes 4502 (op4406.map lower) ∧ bytes4406.length=41 := by core033_kernel_decide
def op4407 : List WordIR.Op := [.bxor 616 4502]
def bytes4407 : Bytes := ("    let r00001197: u32 = r00000268 ^ r00001196;\n" : String).toByteArray.data.toList
theorem checked4407 : bytes4407=statementBytes 4503 (op4407.map lower) ∧ bytes4407.length=48 := by core033_kernel_decide
def op4408 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4408 : Bytes := ("    let r00001198: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4408 : bytes4408=statementBytes 4504 (op4408.map lower) ∧ bytes4408.length=41 := by core033_kernel_decide
def op4409 : List WordIR.Op := [.bnot 4504]
def bytes4409 : Bytes := ("    let r00001199: u32 = !r00001198;\n" : String).toByteArray.data.toList
theorem checked4409 : bytes4409=statementBytes 4505 (op4409.map lower) ∧ bytes4409.length=37 := by core033_kernel_decide
def op4410 : List WordIR.Op := [.bxor 4503 4505]
def bytes4410 : Bytes := ("    let r0000119a: u32 = r00001197 ^ r00001199;\n" : String).toByteArray.data.toList
theorem checked4410 : bytes4410=statementBytes 4506 (op4410.map lower) ∧ bytes4410.length=48 := by core033_kernel_decide
def op4411 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4411 : Bytes := ("    let r0000119b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4411 : bytes4411=statementBytes 4507 (op4411.map lower) ∧ bytes4411.length=41 := by core033_kernel_decide
def op4412 : List WordIR.Op := [.bxor 616 4507]
def bytes4412 : Bytes := ("    let r0000119c: u32 = r00000268 ^ r0000119b;\n" : String).toByteArray.data.toList
theorem checked4412 : bytes4412=statementBytes 4508 (op4412.map lower) ∧ bytes4412.length=48 := by core033_kernel_decide
def op4413 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4413 : Bytes := ("    let r0000119d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4413 : bytes4413=statementBytes 4509 (op4413.map lower) ∧ bytes4413.length=41 := by core033_kernel_decide
def op4414 : List WordIR.Op := [.bnot 4509]
def bytes4414 : Bytes := ("    let r0000119e: u32 = !r0000119d;\n" : String).toByteArray.data.toList
theorem checked4414 : bytes4414=statementBytes 4510 (op4414.map lower) ∧ bytes4414.length=37 := by core033_kernel_decide
def op4415 : List WordIR.Op := [.badd 4508 4510]
def bytes4415 : Bytes := ("    let r0000119f: u32 = r0000119c.wrapping_add(r0000119e);\n" : String).toByteArray.data.toList
theorem checked4415 : bytes4415=statementBytes 4511 (op4415.map lower) ∧ bytes4415.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4352,op4353,op4354,op4355,op4356,op4357,op4358,op4359,op4360,op4361,op4362,op4363,op4364,op4365,op4366,op4367,op4368,op4369,op4370,op4371,op4372,op4373,op4374,op4375,op4376,op4377,op4378,op4379,op4380,op4381,op4382,op4383,op4384,op4385,op4386,op4387,op4388,op4389,op4390,op4391,op4392,op4393,op4394,op4395,op4396,op4397,op4398,op4399,op4400,op4401,op4402,op4403,op4404,op4405,op4406,op4407,op4408,op4409,op4410,op4411,op4412,op4413,op4414,op4415]
def chunks : List Bytes := [bytes4352,bytes4353,bytes4354,bytes4355,bytes4356,bytes4357,bytes4358,bytes4359,bytes4360,bytes4361,bytes4362,bytes4363,bytes4364,bytes4365,bytes4366,bytes4367,bytes4368,bytes4369,bytes4370,bytes4371,bytes4372,bytes4373,bytes4374,bytes4375,bytes4376,bytes4377,bytes4378,bytes4379,bytes4380,bytes4381,bytes4382,bytes4383,bytes4384,bytes4385,bytes4386,bytes4387,bytes4388,bytes4389,bytes4390,bytes4391,bytes4392,bytes4393,bytes4394,bytes4395,bytes4396,bytes4397,bytes4398,bytes4399,bytes4400,bytes4401,bytes4402,bytes4403,bytes4404,bytes4405,bytes4406,bytes4407,bytes4408,bytes4409,bytes4410,bytes4411,bytes4412,bytes4413,bytes4414,bytes4415]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4448 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4352.1 (.cons _ _ _ _ _ checked4353.1 (.cons _ _ _ _ _ checked4354.1 (.cons _ _ _ _ _ checked4355.1 (.cons _ _ _ _ _ checked4356.1 (.cons _ _ _ _ _ checked4357.1 (.cons _ _ _ _ _ checked4358.1 (.cons _ _ _ _ _ checked4359.1 (.cons _ _ _ _ _ checked4360.1 (.cons _ _ _ _ _ checked4361.1 (.cons _ _ _ _ _ checked4362.1 (.cons _ _ _ _ _ checked4363.1 (.cons _ _ _ _ _ checked4364.1 (.cons _ _ _ _ _ checked4365.1 (.cons _ _ _ _ _ checked4366.1 (.cons _ _ _ _ _ checked4367.1 (.cons _ _ _ _ _ checked4368.1 (.cons _ _ _ _ _ checked4369.1 (.cons _ _ _ _ _ checked4370.1 (.cons _ _ _ _ _ checked4371.1 (.cons _ _ _ _ _ checked4372.1 (.cons _ _ _ _ _ checked4373.1 (.cons _ _ _ _ _ checked4374.1 (.cons _ _ _ _ _ checked4375.1 (.cons _ _ _ _ _ checked4376.1 (.cons _ _ _ _ _ checked4377.1 (.cons _ _ _ _ _ checked4378.1 (.cons _ _ _ _ _ checked4379.1 (.cons _ _ _ _ _ checked4380.1 (.cons _ _ _ _ _ checked4381.1 (.cons _ _ _ _ _ checked4382.1 (.cons _ _ _ _ _ checked4383.1 (.cons _ _ _ _ _ checked4384.1 (.cons _ _ _ _ _ checked4385.1 (.cons _ _ _ _ _ checked4386.1 (.cons _ _ _ _ _ checked4387.1 (.cons _ _ _ _ _ checked4388.1 (.cons _ _ _ _ _ checked4389.1 (.cons _ _ _ _ _ checked4390.1 (.cons _ _ _ _ _ checked4391.1 (.cons _ _ _ _ _ checked4392.1 (.cons _ _ _ _ _ checked4393.1 (.cons _ _ _ _ _ checked4394.1 (.cons _ _ _ _ _ checked4395.1 (.cons _ _ _ _ _ checked4396.1 (.cons _ _ _ _ _ checked4397.1 (.cons _ _ _ _ _ checked4398.1 (.cons _ _ _ _ _ checked4399.1 (.cons _ _ _ _ _ checked4400.1 (.cons _ _ _ _ _ checked4401.1 (.cons _ _ _ _ _ checked4402.1 (.cons _ _ _ _ _ checked4403.1 (.cons _ _ _ _ _ checked4404.1 (.cons _ _ _ _ _ checked4405.1 (.cons _ _ _ _ _ checked4406.1 (.cons _ _ _ _ _ checked4407.1 (.cons _ _ _ _ _ checked4408.1 (.cons _ _ _ _ _ checked4409.1 (.cons _ _ _ _ _ checked4410.1 (.cons _ _ _ _ _ checked4411.1 (.cons _ _ _ _ _ checked4412.1 (.cons _ _ _ _ _ checked4413.1 (.cons _ _ _ _ _ checked4414.1 (.cons _ _ _ _ _ checked4415.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4448 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4352.2,checked4353.2,checked4354.2,checked4355.2,checked4356.2,checked4357.2,checked4358.2,checked4359.2,checked4360.2,checked4361.2,checked4362.2,checked4363.2,checked4364.2,checked4365.2,checked4366.2,checked4367.2,checked4368.2,checked4369.2,checked4370.2,checked4371.2,checked4372.2,checked4373.2,checked4374.2,checked4375.2,checked4376.2,checked4377.2,checked4378.2,checked4379.2,checked4380.2,checked4381.2,checked4382.2,checked4383.2,checked4384.2,checked4385.2,checked4386.2,checked4387.2,checked4388.2,checked4389.2,checked4390.2,checked4391.2,checked4392.2,checked4393.2,checked4394.2,checked4395.2,checked4396.2,checked4397.2,checked4398.2,checked4399.2,checked4400.2,checked4401.2,checked4402.2,checked4403.2,checked4404.2,checked4405.2,checked4406.2,checked4407.2,checked4408.2,checked4409.2,checked4410.2,checked4411.2,checked4412.2,checked4413.2,checked4414.2,checked4415.2]
  decide
end ArtifactPairedPathRoundGroup68
