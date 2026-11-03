import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup69
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4416 : List WordIR.Op := [.badd 4456 4458]
def bytes4416 : Bytes := ("    let r0000116b: u32 = r00001168.wrapping_add(r0000116a);\n" : String).toByteArray.data.toList
theorem checked4416 : bytes4416=statementBytes 4459 (op4416.map lower) ∧ bytes4416.length=60 := by core033_kernel_decide
def op4417 : List WordIR.Op := [.bnot 4459]
def bytes4417 : Bytes := ("    let r0000116c: u32 = !r0000116b;\n" : String).toByteArray.data.toList
theorem checked4417 : bytes4417=statementBytes 4460 (op4417.map lower) ∧ bytes4417.length=37 := by core033_kernel_decide
def op4418 : List WordIR.Op := [.band 4454 4460]
def bytes4418 : Bytes := ("    let r0000116d: u32 = r00001166 & r0000116c;\n" : String).toByteArray.data.toList
theorem checked4418 : bytes4418=statementBytes 4461 (op4418.map lower) ∧ bytes4418.length=48 := by core033_kernel_decide
def op4419 : List WordIR.Op := [.bxor 4449 4461]
def bytes4419 : Bytes := ("    let r0000116e: u32 = r00001161 ^ r0000116d;\n" : String).toByteArray.data.toList
theorem checked4419 : bytes4419=statementBytes 4462 (op4419.map lower) ∧ bytes4419.length=48 := by core033_kernel_decide
def op4420 : List WordIR.Op := [.shr 4462 31]
def bytes4420 : Bytes := ("    let r0000116f: u32 = r0000116e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4420 : bytes4420=statementBytes 4463 (op4420.map lower) ∧ bytes4420.length=54 := by core033_kernel_decide
def op4421 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4421 : Bytes := ("    let r00001170: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4421 : bytes4421=statementBytes 4464 (op4421.map lower) ∧ bytes4421.length=41 := by core033_kernel_decide
def op4422 : List WordIR.Op := [.bxor 4463 4464]
def bytes4422 : Bytes := ("    let r00001171: u32 = r0000116f ^ r00001170;\n" : String).toByteArray.data.toList
theorem checked4422 : bytes4422=statementBytes 4465 (op4422.map lower) ∧ bytes4422.length=48 := by core033_kernel_decide
def op4423 : List WordIR.Op := [.bnot 4465]
def bytes4423 : Bytes := ("    let r00001172: u32 = !r00001171;\n" : String).toByteArray.data.toList
theorem checked4423 : bytes4423=statementBytes 4466 (op4423.map lower) ∧ bytes4423.length=37 := by core033_kernel_decide
def op4424 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4424 : Bytes := ("    let r00001173: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4424 : bytes4424=statementBytes 4467 (op4424.map lower) ∧ bytes4424.length=41 := by core033_kernel_decide
def op4425 : List WordIR.Op := [.badd 4466 4467]
def bytes4425 : Bytes := ("    let r00001174: u32 = r00001172.wrapping_add(r00001173);\n" : String).toByteArray.data.toList
theorem checked4425 : bytes4425=statementBytes 4468 (op4425.map lower) ∧ bytes4425.length=60 := by core033_kernel_decide
def op4426 : List WordIR.Op := [.bnot 4468]
def bytes4426 : Bytes := ("    let r00001175: u32 = !r00001174;\n" : String).toByteArray.data.toList
theorem checked4426 : bytes4426=statementBytes 4469 (op4426.map lower) ∧ bytes4426.length=37 := by core033_kernel_decide
def op4427 : List WordIR.Op := [.band 4469 1421]
def bytes4427 : Bytes := ("    let r00001176: u32 = r00001175 & r0000058d;\n" : String).toByteArray.data.toList
theorem checked4427 : bytes4427=statementBytes 4470 (op4427.map lower) ∧ bytes4427.length=48 := by core033_kernel_decide
def op4428 : List WordIR.Op := [.bxor 4444 4470]
def bytes4428 : Bytes := ("    let r00001177: u32 = r0000115c ^ r00001176;\n" : String).toByteArray.data.toList
theorem checked4428 : bytes4428=statementBytes 4471 (op4428.map lower) ∧ bytes4428.length=48 := by core033_kernel_decide
def op4429 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4429 : Bytes := ("    let r00001178: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4429 : bytes4429=statementBytes 4472 (op4429.map lower) ∧ bytes4429.length=41 := by core033_kernel_decide
def op4430 : List WordIR.Op := [.bxor 96 4472]
def bytes4430 : Bytes := ("    let r00001179: u32 = r00000060 ^ r00001178;\n" : String).toByteArray.data.toList
theorem checked4430 : bytes4430=statementBytes 4473 (op4430.map lower) ∧ bytes4430.length=48 := by core033_kernel_decide
def op4431 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4431 : Bytes := ("    let r0000117a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4431 : bytes4431=statementBytes 4474 (op4431.map lower) ∧ bytes4431.length=41 := by core033_kernel_decide
def op4432 : List WordIR.Op := [.bnot 4474]
def bytes4432 : Bytes := ("    let r0000117b: u32 = !r0000117a;\n" : String).toByteArray.data.toList
theorem checked4432 : bytes4432=statementBytes 4475 (op4432.map lower) ∧ bytes4432.length=37 := by core033_kernel_decide
def op4433 : List WordIR.Op := [.band 4473 4475]
def bytes4433 : Bytes := ("    let r0000117c: u32 = r00001179 & r0000117b;\n" : String).toByteArray.data.toList
theorem checked4433 : bytes4433=statementBytes 4476 (op4433.map lower) ∧ bytes4433.length=48 := by core033_kernel_decide
def op4434 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4434 : Bytes := ("    let r0000117d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4434 : bytes4434=statementBytes 4477 (op4434.map lower) ∧ bytes4434.length=41 := by core033_kernel_decide
def op4435 : List WordIR.Op := [.bxor 96 4477]
def bytes4435 : Bytes := ("    let r0000117e: u32 = r00000060 ^ r0000117d;\n" : String).toByteArray.data.toList
theorem checked4435 : bytes4435=statementBytes 4478 (op4435.map lower) ∧ bytes4435.length=48 := by core033_kernel_decide
def op4436 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4436 : Bytes := ("    let r0000117f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4436 : bytes4436=statementBytes 4479 (op4436.map lower) ∧ bytes4436.length=41 := by core033_kernel_decide
def op4437 : List WordIR.Op := [.bnot 4479]
def bytes4437 : Bytes := ("    let r00001180: u32 = !r0000117f;\n" : String).toByteArray.data.toList
theorem checked4437 : bytes4437=statementBytes 4480 (op4437.map lower) ∧ bytes4437.length=37 := by core033_kernel_decide
def op4438 : List WordIR.Op := [.bxor 4478 4480]
def bytes4438 : Bytes := ("    let r00001181: u32 = r0000117e ^ r00001180;\n" : String).toByteArray.data.toList
theorem checked4438 : bytes4438=statementBytes 4481 (op4438.map lower) ∧ bytes4438.length=48 := by core033_kernel_decide
def op4439 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4439 : Bytes := ("    let r00001182: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4439 : bytes4439=statementBytes 4482 (op4439.map lower) ∧ bytes4439.length=41 := by core033_kernel_decide
def op4440 : List WordIR.Op := [.bxor 96 4482]
def bytes4440 : Bytes := ("    let r00001183: u32 = r00000060 ^ r00001182;\n" : String).toByteArray.data.toList
theorem checked4440 : bytes4440=statementBytes 4483 (op4440.map lower) ∧ bytes4440.length=48 := by core033_kernel_decide
def op4441 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4441 : Bytes := ("    let r00001184: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4441 : bytes4441=statementBytes 4484 (op4441.map lower) ∧ bytes4441.length=41 := by core033_kernel_decide
def op4442 : List WordIR.Op := [.bnot 4484]
def bytes4442 : Bytes := ("    let r00001185: u32 = !r00001184;\n" : String).toByteArray.data.toList
theorem checked4442 : bytes4442=statementBytes 4485 (op4442.map lower) ∧ bytes4442.length=37 := by core033_kernel_decide
def op4443 : List WordIR.Op := [.badd 4483 4485]
def bytes4443 : Bytes := ("    let r00001186: u32 = r00001183.wrapping_add(r00001185);\n" : String).toByteArray.data.toList
theorem checked4443 : bytes4443=statementBytes 4486 (op4443.map lower) ∧ bytes4443.length=60 := by core033_kernel_decide
def op4444 : List WordIR.Op := [.bnot 4486]
def bytes4444 : Bytes := ("    let r00001187: u32 = !r00001186;\n" : String).toByteArray.data.toList
theorem checked4444 : bytes4444=statementBytes 4487 (op4444.map lower) ∧ bytes4444.length=37 := by core033_kernel_decide
def op4445 : List WordIR.Op := [.band 4481 4487]
def bytes4445 : Bytes := ("    let r00001188: u32 = r00001181 & r00001187;\n" : String).toByteArray.data.toList
theorem checked4445 : bytes4445=statementBytes 4488 (op4445.map lower) ∧ bytes4445.length=48 := by core033_kernel_decide
def op4446 : List WordIR.Op := [.bxor 4476 4488]
def bytes4446 : Bytes := ("    let r00001189: u32 = r0000117c ^ r00001188;\n" : String).toByteArray.data.toList
theorem checked4446 : bytes4446=statementBytes 4489 (op4446.map lower) ∧ bytes4446.length=48 := by core033_kernel_decide
def op4447 : List WordIR.Op := [.shr 4489 31]
def bytes4447 : Bytes := ("    let r0000118a: u32 = r00001189 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4447 : bytes4447=statementBytes 4490 (op4447.map lower) ∧ bytes4447.length=54 := by core033_kernel_decide
def op4448 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4448 : Bytes := ("    let r0000118b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4448 : bytes4448=statementBytes 4491 (op4448.map lower) ∧ bytes4448.length=41 := by core033_kernel_decide
def op4449 : List WordIR.Op := [.bxor 4490 4491]
def bytes4449 : Bytes := ("    let r0000118c: u32 = r0000118a ^ r0000118b;\n" : String).toByteArray.data.toList
theorem checked4449 : bytes4449=statementBytes 4492 (op4449.map lower) ∧ bytes4449.length=48 := by core033_kernel_decide
def op4450 : List WordIR.Op := [.bnot 4492]
def bytes4450 : Bytes := ("    let r0000118d: u32 = !r0000118c;\n" : String).toByteArray.data.toList
theorem checked4450 : bytes4450=statementBytes 4493 (op4450.map lower) ∧ bytes4450.length=37 := by core033_kernel_decide
def op4451 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4451 : Bytes := ("    let r0000118e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4451 : bytes4451=statementBytes 4494 (op4451.map lower) ∧ bytes4451.length=41 := by core033_kernel_decide
def op4452 : List WordIR.Op := [.badd 4493 4494]
def bytes4452 : Bytes := ("    let r0000118f: u32 = r0000118d.wrapping_add(r0000118e);\n" : String).toByteArray.data.toList
theorem checked4452 : bytes4452=statementBytes 4495 (op4452.map lower) ∧ bytes4452.length=60 := by core033_kernel_decide
def op4453 : List WordIR.Op := [.band 4495 1616]
def bytes4453 : Bytes := ("    let r00001190: u32 = r0000118f & r00000650;\n" : String).toByteArray.data.toList
theorem checked4453 : bytes4453=statementBytes 4496 (op4453.map lower) ∧ bytes4453.length=48 := by core033_kernel_decide
def op4454 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4454 : Bytes := ("    let r00001191: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4454 : bytes4454=statementBytes 4497 (op4454.map lower) ∧ bytes4454.length=41 := by core033_kernel_decide
def op4455 : List WordIR.Op := [.bxor 96 4497]
def bytes4455 : Bytes := ("    let r00001192: u32 = r00000060 ^ r00001191;\n" : String).toByteArray.data.toList
theorem checked4455 : bytes4455=statementBytes 4498 (op4455.map lower) ∧ bytes4455.length=48 := by core033_kernel_decide
def op4456 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4456 : Bytes := ("    let r00001193: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4456 : bytes4456=statementBytes 4499 (op4456.map lower) ∧ bytes4456.length=41 := by core033_kernel_decide
def op4457 : List WordIR.Op := [.bnot 4499]
def bytes4457 : Bytes := ("    let r00001194: u32 = !r00001193;\n" : String).toByteArray.data.toList
theorem checked4457 : bytes4457=statementBytes 4500 (op4457.map lower) ∧ bytes4457.length=37 := by core033_kernel_decide
def op4458 : List WordIR.Op := [.band 4498 4500]
def bytes4458 : Bytes := ("    let r00001195: u32 = r00001192 & r00001194;\n" : String).toByteArray.data.toList
theorem checked4458 : bytes4458=statementBytes 4501 (op4458.map lower) ∧ bytes4458.length=48 := by core033_kernel_decide
def op4459 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4459 : Bytes := ("    let r00001196: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4459 : bytes4459=statementBytes 4502 (op4459.map lower) ∧ bytes4459.length=41 := by core033_kernel_decide
def op4460 : List WordIR.Op := [.bxor 96 4502]
def bytes4460 : Bytes := ("    let r00001197: u32 = r00000060 ^ r00001196;\n" : String).toByteArray.data.toList
theorem checked4460 : bytes4460=statementBytes 4503 (op4460.map lower) ∧ bytes4460.length=48 := by core033_kernel_decide
def op4461 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4461 : Bytes := ("    let r00001198: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4461 : bytes4461=statementBytes 4504 (op4461.map lower) ∧ bytes4461.length=41 := by core033_kernel_decide
def op4462 : List WordIR.Op := [.bnot 4504]
def bytes4462 : Bytes := ("    let r00001199: u32 = !r00001198;\n" : String).toByteArray.data.toList
theorem checked4462 : bytes4462=statementBytes 4505 (op4462.map lower) ∧ bytes4462.length=37 := by core033_kernel_decide
def op4463 : List WordIR.Op := [.bxor 4503 4505]
def bytes4463 : Bytes := ("    let r0000119a: u32 = r00001197 ^ r00001199;\n" : String).toByteArray.data.toList
theorem checked4463 : bytes4463=statementBytes 4506 (op4463.map lower) ∧ bytes4463.length=48 := by core033_kernel_decide
def op4464 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4464 : Bytes := ("    let r0000119b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4464 : bytes4464=statementBytes 4507 (op4464.map lower) ∧ bytes4464.length=41 := by core033_kernel_decide
def op4465 : List WordIR.Op := [.bxor 96 4507]
def bytes4465 : Bytes := ("    let r0000119c: u32 = r00000060 ^ r0000119b;\n" : String).toByteArray.data.toList
theorem checked4465 : bytes4465=statementBytes 4508 (op4465.map lower) ∧ bytes4465.length=48 := by core033_kernel_decide
def op4466 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4466 : Bytes := ("    let r0000119d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4466 : bytes4466=statementBytes 4509 (op4466.map lower) ∧ bytes4466.length=41 := by core033_kernel_decide
def op4467 : List WordIR.Op := [.bnot 4509]
def bytes4467 : Bytes := ("    let r0000119e: u32 = !r0000119d;\n" : String).toByteArray.data.toList
theorem checked4467 : bytes4467=statementBytes 4510 (op4467.map lower) ∧ bytes4467.length=37 := by core033_kernel_decide
def op4468 : List WordIR.Op := [.badd 4508 4510]
def bytes4468 : Bytes := ("    let r0000119f: u32 = r0000119c.wrapping_add(r0000119e);\n" : String).toByteArray.data.toList
theorem checked4468 : bytes4468=statementBytes 4511 (op4468.map lower) ∧ bytes4468.length=60 := by core033_kernel_decide
def op4469 : List WordIR.Op := [.bnot 4511]
def bytes4469 : Bytes := ("    let r000011a0: u32 = !r0000119f;\n" : String).toByteArray.data.toList
theorem checked4469 : bytes4469=statementBytes 4512 (op4469.map lower) ∧ bytes4469.length=37 := by core033_kernel_decide
def op4470 : List WordIR.Op := [.band 4506 4512]
def bytes4470 : Bytes := ("    let r000011a1: u32 = r0000119a & r000011a0;\n" : String).toByteArray.data.toList
theorem checked4470 : bytes4470=statementBytes 4513 (op4470.map lower) ∧ bytes4470.length=48 := by core033_kernel_decide
def op4471 : List WordIR.Op := [.bxor 4501 4513]
def bytes4471 : Bytes := ("    let r000011a2: u32 = r00001195 ^ r000011a1;\n" : String).toByteArray.data.toList
theorem checked4471 : bytes4471=statementBytes 4514 (op4471.map lower) ∧ bytes4471.length=48 := by core033_kernel_decide
def op4472 : List WordIR.Op := [.shr 4514 31]
def bytes4472 : Bytes := ("    let r000011a3: u32 = r000011a2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4472 : bytes4472=statementBytes 4515 (op4472.map lower) ∧ bytes4472.length=54 := by core033_kernel_decide
def op4473 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4473 : Bytes := ("    let r000011a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4473 : bytes4473=statementBytes 4516 (op4473.map lower) ∧ bytes4473.length=41 := by core033_kernel_decide
def op4474 : List WordIR.Op := [.bxor 4515 4516]
def bytes4474 : Bytes := ("    let r000011a5: u32 = r000011a3 ^ r000011a4;\n" : String).toByteArray.data.toList
theorem checked4474 : bytes4474=statementBytes 4517 (op4474.map lower) ∧ bytes4474.length=48 := by core033_kernel_decide
def op4475 : List WordIR.Op := [.bnot 4517]
def bytes4475 : Bytes := ("    let r000011a6: u32 = !r000011a5;\n" : String).toByteArray.data.toList
theorem checked4475 : bytes4475=statementBytes 4518 (op4475.map lower) ∧ bytes4475.length=37 := by core033_kernel_decide
def op4476 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4476 : Bytes := ("    let r000011a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4476 : bytes4476=statementBytes 4519 (op4476.map lower) ∧ bytes4476.length=41 := by core033_kernel_decide
def op4477 : List WordIR.Op := [.badd 4518 4519]
def bytes4477 : Bytes := ("    let r000011a8: u32 = r000011a6.wrapping_add(r000011a7);\n" : String).toByteArray.data.toList
theorem checked4477 : bytes4477=statementBytes 4520 (op4477.map lower) ∧ bytes4477.length=60 := by core033_kernel_decide
def op4478 : List WordIR.Op := [.bnot 4520]
def bytes4478 : Bytes := ("    let r000011a9: u32 = !r000011a8;\n" : String).toByteArray.data.toList
theorem checked4478 : bytes4478=statementBytes 4521 (op4478.map lower) ∧ bytes4478.length=37 := by core033_kernel_decide
def op4479 : List WordIR.Op := [.band 4521 1424]
def bytes4479 : Bytes := ("    let r000011aa: u32 = r000011a9 & r00000590;\n" : String).toByteArray.data.toList
theorem checked4479 : bytes4479=statementBytes 4522 (op4479.map lower) ∧ bytes4479.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4416,op4417,op4418,op4419,op4420,op4421,op4422,op4423,op4424,op4425,op4426,op4427,op4428,op4429,op4430,op4431,op4432,op4433,op4434,op4435,op4436,op4437,op4438,op4439,op4440,op4441,op4442,op4443,op4444,op4445,op4446,op4447,op4448,op4449,op4450,op4451,op4452,op4453,op4454,op4455,op4456,op4457,op4458,op4459,op4460,op4461,op4462,op4463,op4464,op4465,op4466,op4467,op4468,op4469,op4470,op4471,op4472,op4473,op4474,op4475,op4476,op4477,op4478,op4479]
def chunks : List Bytes := [bytes4416,bytes4417,bytes4418,bytes4419,bytes4420,bytes4421,bytes4422,bytes4423,bytes4424,bytes4425,bytes4426,bytes4427,bytes4428,bytes4429,bytes4430,bytes4431,bytes4432,bytes4433,bytes4434,bytes4435,bytes4436,bytes4437,bytes4438,bytes4439,bytes4440,bytes4441,bytes4442,bytes4443,bytes4444,bytes4445,bytes4446,bytes4447,bytes4448,bytes4449,bytes4450,bytes4451,bytes4452,bytes4453,bytes4454,bytes4455,bytes4456,bytes4457,bytes4458,bytes4459,bytes4460,bytes4461,bytes4462,bytes4463,bytes4464,bytes4465,bytes4466,bytes4467,bytes4468,bytes4469,bytes4470,bytes4471,bytes4472,bytes4473,bytes4474,bytes4475,bytes4476,bytes4477,bytes4478,bytes4479]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4459 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4416.1 (.cons _ _ _ _ _ checked4417.1 (.cons _ _ _ _ _ checked4418.1 (.cons _ _ _ _ _ checked4419.1 (.cons _ _ _ _ _ checked4420.1 (.cons _ _ _ _ _ checked4421.1 (.cons _ _ _ _ _ checked4422.1 (.cons _ _ _ _ _ checked4423.1 (.cons _ _ _ _ _ checked4424.1 (.cons _ _ _ _ _ checked4425.1 (.cons _ _ _ _ _ checked4426.1 (.cons _ _ _ _ _ checked4427.1 (.cons _ _ _ _ _ checked4428.1 (.cons _ _ _ _ _ checked4429.1 (.cons _ _ _ _ _ checked4430.1 (.cons _ _ _ _ _ checked4431.1 (.cons _ _ _ _ _ checked4432.1 (.cons _ _ _ _ _ checked4433.1 (.cons _ _ _ _ _ checked4434.1 (.cons _ _ _ _ _ checked4435.1 (.cons _ _ _ _ _ checked4436.1 (.cons _ _ _ _ _ checked4437.1 (.cons _ _ _ _ _ checked4438.1 (.cons _ _ _ _ _ checked4439.1 (.cons _ _ _ _ _ checked4440.1 (.cons _ _ _ _ _ checked4441.1 (.cons _ _ _ _ _ checked4442.1 (.cons _ _ _ _ _ checked4443.1 (.cons _ _ _ _ _ checked4444.1 (.cons _ _ _ _ _ checked4445.1 (.cons _ _ _ _ _ checked4446.1 (.cons _ _ _ _ _ checked4447.1 (.cons _ _ _ _ _ checked4448.1 (.cons _ _ _ _ _ checked4449.1 (.cons _ _ _ _ _ checked4450.1 (.cons _ _ _ _ _ checked4451.1 (.cons _ _ _ _ _ checked4452.1 (.cons _ _ _ _ _ checked4453.1 (.cons _ _ _ _ _ checked4454.1 (.cons _ _ _ _ _ checked4455.1 (.cons _ _ _ _ _ checked4456.1 (.cons _ _ _ _ _ checked4457.1 (.cons _ _ _ _ _ checked4458.1 (.cons _ _ _ _ _ checked4459.1 (.cons _ _ _ _ _ checked4460.1 (.cons _ _ _ _ _ checked4461.1 (.cons _ _ _ _ _ checked4462.1 (.cons _ _ _ _ _ checked4463.1 (.cons _ _ _ _ _ checked4464.1 (.cons _ _ _ _ _ checked4465.1 (.cons _ _ _ _ _ checked4466.1 (.cons _ _ _ _ _ checked4467.1 (.cons _ _ _ _ _ checked4468.1 (.cons _ _ _ _ _ checked4469.1 (.cons _ _ _ _ _ checked4470.1 (.cons _ _ _ _ _ checked4471.1 (.cons _ _ _ _ _ checked4472.1 (.cons _ _ _ _ _ checked4473.1 (.cons _ _ _ _ _ checked4474.1 (.cons _ _ _ _ _ checked4475.1 (.cons _ _ _ _ _ checked4476.1 (.cons _ _ _ _ _ checked4477.1 (.cons _ _ _ _ _ checked4478.1 (.cons _ _ _ _ _ checked4479.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4459 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2882 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4416.2,checked4417.2,checked4418.2,checked4419.2,checked4420.2,checked4421.2,checked4422.2,checked4423.2,checked4424.2,checked4425.2,checked4426.2,checked4427.2,checked4428.2,checked4429.2,checked4430.2,checked4431.2,checked4432.2,checked4433.2,checked4434.2,checked4435.2,checked4436.2,checked4437.2,checked4438.2,checked4439.2,checked4440.2,checked4441.2,checked4442.2,checked4443.2,checked4444.2,checked4445.2,checked4446.2,checked4447.2,checked4448.2,checked4449.2,checked4450.2,checked4451.2,checked4452.2,checked4453.2,checked4454.2,checked4455.2,checked4456.2,checked4457.2,checked4458.2,checked4459.2,checked4460.2,checked4461.2,checked4462.2,checked4463.2,checked4464.2,checked4465.2,checked4466.2,checked4467.2,checked4468.2,checked4469.2,checked4470.2,checked4471.2,checked4472.2,checked4473.2,checked4474.2,checked4475.2,checked4476.2,checked4477.2,checked4478.2,checked4479.2]
  decide
end ArtifactPathRoundDispatchGroup69
