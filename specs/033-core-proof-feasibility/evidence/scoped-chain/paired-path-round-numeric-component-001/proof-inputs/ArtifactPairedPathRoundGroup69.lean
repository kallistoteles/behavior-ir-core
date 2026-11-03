import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup69
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4416 : List WordIR.Op := [.bnot 4511]
def bytes4416 : Bytes := ("    let r000011a0: u32 = !r0000119f;\n" : String).toByteArray.data.toList
theorem checked4416 : bytes4416=statementBytes 4512 (op4416.map lower) ∧ bytes4416.length=37 := by core033_kernel_decide
def op4417 : List WordIR.Op := [.band 4506 4512]
def bytes4417 : Bytes := ("    let r000011a1: u32 = r0000119a & r000011a0;\n" : String).toByteArray.data.toList
theorem checked4417 : bytes4417=statementBytes 4513 (op4417.map lower) ∧ bytes4417.length=48 := by core033_kernel_decide
def op4418 : List WordIR.Op := [.bxor 4501 4513]
def bytes4418 : Bytes := ("    let r000011a2: u32 = r00001195 ^ r000011a1;\n" : String).toByteArray.data.toList
theorem checked4418 : bytes4418=statementBytes 4514 (op4418.map lower) ∧ bytes4418.length=48 := by core033_kernel_decide
def op4419 : List WordIR.Op := [.shr 4514 31]
def bytes4419 : Bytes := ("    let r000011a3: u32 = r000011a2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4419 : bytes4419=statementBytes 4515 (op4419.map lower) ∧ bytes4419.length=54 := by core033_kernel_decide
def op4420 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4420 : Bytes := ("    let r000011a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4420 : bytes4420=statementBytes 4516 (op4420.map lower) ∧ bytes4420.length=41 := by core033_kernel_decide
def op4421 : List WordIR.Op := [.bxor 4515 4516]
def bytes4421 : Bytes := ("    let r000011a5: u32 = r000011a3 ^ r000011a4;\n" : String).toByteArray.data.toList
theorem checked4421 : bytes4421=statementBytes 4517 (op4421.map lower) ∧ bytes4421.length=48 := by core033_kernel_decide
def op4422 : List WordIR.Op := [.bnot 4517]
def bytes4422 : Bytes := ("    let r000011a6: u32 = !r000011a5;\n" : String).toByteArray.data.toList
theorem checked4422 : bytes4422=statementBytes 4518 (op4422.map lower) ∧ bytes4422.length=37 := by core033_kernel_decide
def op4423 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4423 : Bytes := ("    let r000011a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4423 : bytes4423=statementBytes 4519 (op4423.map lower) ∧ bytes4423.length=41 := by core033_kernel_decide
def op4424 : List WordIR.Op := [.badd 4518 4519]
def bytes4424 : Bytes := ("    let r000011a8: u32 = r000011a6.wrapping_add(r000011a7);\n" : String).toByteArray.data.toList
theorem checked4424 : bytes4424=statementBytes 4520 (op4424.map lower) ∧ bytes4424.length=60 := by core033_kernel_decide
def op4425 : List WordIR.Op := [.bnot 4520]
def bytes4425 : Bytes := ("    let r000011a9: u32 = !r000011a8;\n" : String).toByteArray.data.toList
theorem checked4425 : bytes4425=statementBytes 4521 (op4425.map lower) ∧ bytes4425.length=37 := by core033_kernel_decide
def op4426 : List WordIR.Op := [.band 4521 1914]
def bytes4426 : Bytes := ("    let r000011aa: u32 = r000011a9 & r0000077a;\n" : String).toByteArray.data.toList
theorem checked4426 : bytes4426=statementBytes 4522 (op4426.map lower) ∧ bytes4426.length=48 := by core033_kernel_decide
def op4427 : List WordIR.Op := [.bxor 4496 4522]
def bytes4427 : Bytes := ("    let r000011ab: u32 = r00001190 ^ r000011aa;\n" : String).toByteArray.data.toList
theorem checked4427 : bytes4427=statementBytes 4523 (op4427.map lower) ∧ bytes4427.length=48 := by core033_kernel_decide
def op4428 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4428 : Bytes := ("    let r000011ac: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4428 : bytes4428=statementBytes 4524 (op4428.map lower) ∧ bytes4428.length=41 := by core033_kernel_decide
def op4429 : List WordIR.Op := [.bxor 616 4524]
def bytes4429 : Bytes := ("    let r000011ad: u32 = r00000268 ^ r000011ac;\n" : String).toByteArray.data.toList
theorem checked4429 : bytes4429=statementBytes 4525 (op4429.map lower) ∧ bytes4429.length=48 := by core033_kernel_decide
def op4430 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4430 : Bytes := ("    let r000011ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4430 : bytes4430=statementBytes 4526 (op4430.map lower) ∧ bytes4430.length=41 := by core033_kernel_decide
def op4431 : List WordIR.Op := [.bnot 4526]
def bytes4431 : Bytes := ("    let r000011af: u32 = !r000011ae;\n" : String).toByteArray.data.toList
theorem checked4431 : bytes4431=statementBytes 4527 (op4431.map lower) ∧ bytes4431.length=37 := by core033_kernel_decide
def op4432 : List WordIR.Op := [.band 4525 4527]
def bytes4432 : Bytes := ("    let r000011b0: u32 = r000011ad & r000011af;\n" : String).toByteArray.data.toList
theorem checked4432 : bytes4432=statementBytes 4528 (op4432.map lower) ∧ bytes4432.length=48 := by core033_kernel_decide
def op4433 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4433 : Bytes := ("    let r000011b1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4433 : bytes4433=statementBytes 4529 (op4433.map lower) ∧ bytes4433.length=41 := by core033_kernel_decide
def op4434 : List WordIR.Op := [.bxor 616 4529]
def bytes4434 : Bytes := ("    let r000011b2: u32 = r00000268 ^ r000011b1;\n" : String).toByteArray.data.toList
theorem checked4434 : bytes4434=statementBytes 4530 (op4434.map lower) ∧ bytes4434.length=48 := by core033_kernel_decide
def op4435 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4435 : Bytes := ("    let r000011b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4435 : bytes4435=statementBytes 4531 (op4435.map lower) ∧ bytes4435.length=41 := by core033_kernel_decide
def op4436 : List WordIR.Op := [.bnot 4531]
def bytes4436 : Bytes := ("    let r000011b4: u32 = !r000011b3;\n" : String).toByteArray.data.toList
theorem checked4436 : bytes4436=statementBytes 4532 (op4436.map lower) ∧ bytes4436.length=37 := by core033_kernel_decide
def op4437 : List WordIR.Op := [.bxor 4530 4532]
def bytes4437 : Bytes := ("    let r000011b5: u32 = r000011b2 ^ r000011b4;\n" : String).toByteArray.data.toList
theorem checked4437 : bytes4437=statementBytes 4533 (op4437.map lower) ∧ bytes4437.length=48 := by core033_kernel_decide
def op4438 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4438 : Bytes := ("    let r000011b6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4438 : bytes4438=statementBytes 4534 (op4438.map lower) ∧ bytes4438.length=41 := by core033_kernel_decide
def op4439 : List WordIR.Op := [.bxor 616 4534]
def bytes4439 : Bytes := ("    let r000011b7: u32 = r00000268 ^ r000011b6;\n" : String).toByteArray.data.toList
theorem checked4439 : bytes4439=statementBytes 4535 (op4439.map lower) ∧ bytes4439.length=48 := by core033_kernel_decide
def op4440 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4440 : Bytes := ("    let r000011b8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4440 : bytes4440=statementBytes 4536 (op4440.map lower) ∧ bytes4440.length=41 := by core033_kernel_decide
def op4441 : List WordIR.Op := [.bnot 4536]
def bytes4441 : Bytes := ("    let r000011b9: u32 = !r000011b8;\n" : String).toByteArray.data.toList
theorem checked4441 : bytes4441=statementBytes 4537 (op4441.map lower) ∧ bytes4441.length=37 := by core033_kernel_decide
def op4442 : List WordIR.Op := [.badd 4535 4537]
def bytes4442 : Bytes := ("    let r000011ba: u32 = r000011b7.wrapping_add(r000011b9);\n" : String).toByteArray.data.toList
theorem checked4442 : bytes4442=statementBytes 4538 (op4442.map lower) ∧ bytes4442.length=60 := by core033_kernel_decide
def op4443 : List WordIR.Op := [.bnot 4538]
def bytes4443 : Bytes := ("    let r000011bb: u32 = !r000011ba;\n" : String).toByteArray.data.toList
theorem checked4443 : bytes4443=statementBytes 4539 (op4443.map lower) ∧ bytes4443.length=37 := by core033_kernel_decide
def op4444 : List WordIR.Op := [.band 4533 4539]
def bytes4444 : Bytes := ("    let r000011bc: u32 = r000011b5 & r000011bb;\n" : String).toByteArray.data.toList
theorem checked4444 : bytes4444=statementBytes 4540 (op4444.map lower) ∧ bytes4444.length=48 := by core033_kernel_decide
def op4445 : List WordIR.Op := [.bxor 4528 4540]
def bytes4445 : Bytes := ("    let r000011bd: u32 = r000011b0 ^ r000011bc;\n" : String).toByteArray.data.toList
theorem checked4445 : bytes4445=statementBytes 4541 (op4445.map lower) ∧ bytes4445.length=48 := by core033_kernel_decide
def op4446 : List WordIR.Op := [.shr 4541 31]
def bytes4446 : Bytes := ("    let r000011be: u32 = r000011bd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4446 : bytes4446=statementBytes 4542 (op4446.map lower) ∧ bytes4446.length=54 := by core033_kernel_decide
def op4447 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4447 : Bytes := ("    let r000011bf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4447 : bytes4447=statementBytes 4543 (op4447.map lower) ∧ bytes4447.length=41 := by core033_kernel_decide
def op4448 : List WordIR.Op := [.bxor 4542 4543]
def bytes4448 : Bytes := ("    let r000011c0: u32 = r000011be ^ r000011bf;\n" : String).toByteArray.data.toList
theorem checked4448 : bytes4448=statementBytes 4544 (op4448.map lower) ∧ bytes4448.length=48 := by core033_kernel_decide
def op4449 : List WordIR.Op := [.bnot 4544]
def bytes4449 : Bytes := ("    let r000011c1: u32 = !r000011c0;\n" : String).toByteArray.data.toList
theorem checked4449 : bytes4449=statementBytes 4545 (op4449.map lower) ∧ bytes4449.length=37 := by core033_kernel_decide
def op4450 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4450 : Bytes := ("    let r000011c2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4450 : bytes4450=statementBytes 4546 (op4450.map lower) ∧ bytes4450.length=41 := by core033_kernel_decide
def op4451 : List WordIR.Op := [.badd 4545 4546]
def bytes4451 : Bytes := ("    let r000011c3: u32 = r000011c1.wrapping_add(r000011c2);\n" : String).toByteArray.data.toList
theorem checked4451 : bytes4451=statementBytes 4547 (op4451.map lower) ∧ bytes4451.length=60 := by core033_kernel_decide
def op4452 : List WordIR.Op := [.band 4547 2109]
def bytes4452 : Bytes := ("    let r000011c4: u32 = r000011c3 & r0000083d;\n" : String).toByteArray.data.toList
theorem checked4452 : bytes4452=statementBytes 4548 (op4452.map lower) ∧ bytes4452.length=48 := by core033_kernel_decide
def op4453 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4453 : Bytes := ("    let r000011c5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4453 : bytes4453=statementBytes 4549 (op4453.map lower) ∧ bytes4453.length=41 := by core033_kernel_decide
def op4454 : List WordIR.Op := [.bxor 616 4549]
def bytes4454 : Bytes := ("    let r000011c6: u32 = r00000268 ^ r000011c5;\n" : String).toByteArray.data.toList
theorem checked4454 : bytes4454=statementBytes 4550 (op4454.map lower) ∧ bytes4454.length=48 := by core033_kernel_decide
def op4455 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4455 : Bytes := ("    let r000011c7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4455 : bytes4455=statementBytes 4551 (op4455.map lower) ∧ bytes4455.length=41 := by core033_kernel_decide
def op4456 : List WordIR.Op := [.bnot 4551]
def bytes4456 : Bytes := ("    let r000011c8: u32 = !r000011c7;\n" : String).toByteArray.data.toList
theorem checked4456 : bytes4456=statementBytes 4552 (op4456.map lower) ∧ bytes4456.length=37 := by core033_kernel_decide
def op4457 : List WordIR.Op := [.band 4550 4552]
def bytes4457 : Bytes := ("    let r000011c9: u32 = r000011c6 & r000011c8;\n" : String).toByteArray.data.toList
theorem checked4457 : bytes4457=statementBytes 4553 (op4457.map lower) ∧ bytes4457.length=48 := by core033_kernel_decide
def op4458 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4458 : Bytes := ("    let r000011ca: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4458 : bytes4458=statementBytes 4554 (op4458.map lower) ∧ bytes4458.length=41 := by core033_kernel_decide
def op4459 : List WordIR.Op := [.bxor 616 4554]
def bytes4459 : Bytes := ("    let r000011cb: u32 = r00000268 ^ r000011ca;\n" : String).toByteArray.data.toList
theorem checked4459 : bytes4459=statementBytes 4555 (op4459.map lower) ∧ bytes4459.length=48 := by core033_kernel_decide
def op4460 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4460 : Bytes := ("    let r000011cc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4460 : bytes4460=statementBytes 4556 (op4460.map lower) ∧ bytes4460.length=41 := by core033_kernel_decide
def op4461 : List WordIR.Op := [.bnot 4556]
def bytes4461 : Bytes := ("    let r000011cd: u32 = !r000011cc;\n" : String).toByteArray.data.toList
theorem checked4461 : bytes4461=statementBytes 4557 (op4461.map lower) ∧ bytes4461.length=37 := by core033_kernel_decide
def op4462 : List WordIR.Op := [.bxor 4555 4557]
def bytes4462 : Bytes := ("    let r000011ce: u32 = r000011cb ^ r000011cd;\n" : String).toByteArray.data.toList
theorem checked4462 : bytes4462=statementBytes 4558 (op4462.map lower) ∧ bytes4462.length=48 := by core033_kernel_decide
def op4463 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4463 : Bytes := ("    let r000011cf: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4463 : bytes4463=statementBytes 4559 (op4463.map lower) ∧ bytes4463.length=41 := by core033_kernel_decide
def op4464 : List WordIR.Op := [.bxor 616 4559]
def bytes4464 : Bytes := ("    let r000011d0: u32 = r00000268 ^ r000011cf;\n" : String).toByteArray.data.toList
theorem checked4464 : bytes4464=statementBytes 4560 (op4464.map lower) ∧ bytes4464.length=48 := by core033_kernel_decide
def op4465 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4465 : Bytes := ("    let r000011d1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4465 : bytes4465=statementBytes 4561 (op4465.map lower) ∧ bytes4465.length=41 := by core033_kernel_decide
def op4466 : List WordIR.Op := [.bnot 4561]
def bytes4466 : Bytes := ("    let r000011d2: u32 = !r000011d1;\n" : String).toByteArray.data.toList
theorem checked4466 : bytes4466=statementBytes 4562 (op4466.map lower) ∧ bytes4466.length=37 := by core033_kernel_decide
def op4467 : List WordIR.Op := [.badd 4560 4562]
def bytes4467 : Bytes := ("    let r000011d3: u32 = r000011d0.wrapping_add(r000011d2);\n" : String).toByteArray.data.toList
theorem checked4467 : bytes4467=statementBytes 4563 (op4467.map lower) ∧ bytes4467.length=60 := by core033_kernel_decide
def op4468 : List WordIR.Op := [.bnot 4563]
def bytes4468 : Bytes := ("    let r000011d4: u32 = !r000011d3;\n" : String).toByteArray.data.toList
theorem checked4468 : bytes4468=statementBytes 4564 (op4468.map lower) ∧ bytes4468.length=37 := by core033_kernel_decide
def op4469 : List WordIR.Op := [.band 4558 4564]
def bytes4469 : Bytes := ("    let r000011d5: u32 = r000011ce & r000011d4;\n" : String).toByteArray.data.toList
theorem checked4469 : bytes4469=statementBytes 4565 (op4469.map lower) ∧ bytes4469.length=48 := by core033_kernel_decide
def op4470 : List WordIR.Op := [.bxor 4553 4565]
def bytes4470 : Bytes := ("    let r000011d6: u32 = r000011c9 ^ r000011d5;\n" : String).toByteArray.data.toList
theorem checked4470 : bytes4470=statementBytes 4566 (op4470.map lower) ∧ bytes4470.length=48 := by core033_kernel_decide
def op4471 : List WordIR.Op := [.shr 4566 31]
def bytes4471 : Bytes := ("    let r000011d7: u32 = r000011d6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4471 : bytes4471=statementBytes 4567 (op4471.map lower) ∧ bytes4471.length=54 := by core033_kernel_decide
def op4472 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4472 : Bytes := ("    let r000011d8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4472 : bytes4472=statementBytes 4568 (op4472.map lower) ∧ bytes4472.length=41 := by core033_kernel_decide
def op4473 : List WordIR.Op := [.bxor 4567 4568]
def bytes4473 : Bytes := ("    let r000011d9: u32 = r000011d7 ^ r000011d8;\n" : String).toByteArray.data.toList
theorem checked4473 : bytes4473=statementBytes 4569 (op4473.map lower) ∧ bytes4473.length=48 := by core033_kernel_decide
def op4474 : List WordIR.Op := [.bnot 4569]
def bytes4474 : Bytes := ("    let r000011da: u32 = !r000011d9;\n" : String).toByteArray.data.toList
theorem checked4474 : bytes4474=statementBytes 4570 (op4474.map lower) ∧ bytes4474.length=37 := by core033_kernel_decide
def op4475 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4475 : Bytes := ("    let r000011db: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4475 : bytes4475=statementBytes 4571 (op4475.map lower) ∧ bytes4475.length=41 := by core033_kernel_decide
def op4476 : List WordIR.Op := [.badd 4570 4571]
def bytes4476 : Bytes := ("    let r000011dc: u32 = r000011da.wrapping_add(r000011db);\n" : String).toByteArray.data.toList
theorem checked4476 : bytes4476=statementBytes 4572 (op4476.map lower) ∧ bytes4476.length=60 := by core033_kernel_decide
def op4477 : List WordIR.Op := [.bnot 4572]
def bytes4477 : Bytes := ("    let r000011dd: u32 = !r000011dc;\n" : String).toByteArray.data.toList
theorem checked4477 : bytes4477=statementBytes 4573 (op4477.map lower) ∧ bytes4477.length=37 := by core033_kernel_decide
def op4478 : List WordIR.Op := [.band 4573 1917]
def bytes4478 : Bytes := ("    let r000011de: u32 = r000011dd & r0000077d;\n" : String).toByteArray.data.toList
theorem checked4478 : bytes4478=statementBytes 4574 (op4478.map lower) ∧ bytes4478.length=48 := by core033_kernel_decide
def op4479 : List WordIR.Op := [.bxor 4548 4574]
def bytes4479 : Bytes := ("    let r000011df: u32 = r000011c4 ^ r000011de;\n" : String).toByteArray.data.toList
theorem checked4479 : bytes4479=statementBytes 4575 (op4479.map lower) ∧ bytes4479.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4416,op4417,op4418,op4419,op4420,op4421,op4422,op4423,op4424,op4425,op4426,op4427,op4428,op4429,op4430,op4431,op4432,op4433,op4434,op4435,op4436,op4437,op4438,op4439,op4440,op4441,op4442,op4443,op4444,op4445,op4446,op4447,op4448,op4449,op4450,op4451,op4452,op4453,op4454,op4455,op4456,op4457,op4458,op4459,op4460,op4461,op4462,op4463,op4464,op4465,op4466,op4467,op4468,op4469,op4470,op4471,op4472,op4473,op4474,op4475,op4476,op4477,op4478,op4479]
def chunks : List Bytes := [bytes4416,bytes4417,bytes4418,bytes4419,bytes4420,bytes4421,bytes4422,bytes4423,bytes4424,bytes4425,bytes4426,bytes4427,bytes4428,bytes4429,bytes4430,bytes4431,bytes4432,bytes4433,bytes4434,bytes4435,bytes4436,bytes4437,bytes4438,bytes4439,bytes4440,bytes4441,bytes4442,bytes4443,bytes4444,bytes4445,bytes4446,bytes4447,bytes4448,bytes4449,bytes4450,bytes4451,bytes4452,bytes4453,bytes4454,bytes4455,bytes4456,bytes4457,bytes4458,bytes4459,bytes4460,bytes4461,bytes4462,bytes4463,bytes4464,bytes4465,bytes4466,bytes4467,bytes4468,bytes4469,bytes4470,bytes4471,bytes4472,bytes4473,bytes4474,bytes4475,bytes4476,bytes4477,bytes4478,bytes4479]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4512 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4416.1 (.cons _ _ _ _ _ checked4417.1 (.cons _ _ _ _ _ checked4418.1 (.cons _ _ _ _ _ checked4419.1 (.cons _ _ _ _ _ checked4420.1 (.cons _ _ _ _ _ checked4421.1 (.cons _ _ _ _ _ checked4422.1 (.cons _ _ _ _ _ checked4423.1 (.cons _ _ _ _ _ checked4424.1 (.cons _ _ _ _ _ checked4425.1 (.cons _ _ _ _ _ checked4426.1 (.cons _ _ _ _ _ checked4427.1 (.cons _ _ _ _ _ checked4428.1 (.cons _ _ _ _ _ checked4429.1 (.cons _ _ _ _ _ checked4430.1 (.cons _ _ _ _ _ checked4431.1 (.cons _ _ _ _ _ checked4432.1 (.cons _ _ _ _ _ checked4433.1 (.cons _ _ _ _ _ checked4434.1 (.cons _ _ _ _ _ checked4435.1 (.cons _ _ _ _ _ checked4436.1 (.cons _ _ _ _ _ checked4437.1 (.cons _ _ _ _ _ checked4438.1 (.cons _ _ _ _ _ checked4439.1 (.cons _ _ _ _ _ checked4440.1 (.cons _ _ _ _ _ checked4441.1 (.cons _ _ _ _ _ checked4442.1 (.cons _ _ _ _ _ checked4443.1 (.cons _ _ _ _ _ checked4444.1 (.cons _ _ _ _ _ checked4445.1 (.cons _ _ _ _ _ checked4446.1 (.cons _ _ _ _ _ checked4447.1 (.cons _ _ _ _ _ checked4448.1 (.cons _ _ _ _ _ checked4449.1 (.cons _ _ _ _ _ checked4450.1 (.cons _ _ _ _ _ checked4451.1 (.cons _ _ _ _ _ checked4452.1 (.cons _ _ _ _ _ checked4453.1 (.cons _ _ _ _ _ checked4454.1 (.cons _ _ _ _ _ checked4455.1 (.cons _ _ _ _ _ checked4456.1 (.cons _ _ _ _ _ checked4457.1 (.cons _ _ _ _ _ checked4458.1 (.cons _ _ _ _ _ checked4459.1 (.cons _ _ _ _ _ checked4460.1 (.cons _ _ _ _ _ checked4461.1 (.cons _ _ _ _ _ checked4462.1 (.cons _ _ _ _ _ checked4463.1 (.cons _ _ _ _ _ checked4464.1 (.cons _ _ _ _ _ checked4465.1 (.cons _ _ _ _ _ checked4466.1 (.cons _ _ _ _ _ checked4467.1 (.cons _ _ _ _ _ checked4468.1 (.cons _ _ _ _ _ checked4469.1 (.cons _ _ _ _ _ checked4470.1 (.cons _ _ _ _ _ checked4471.1 (.cons _ _ _ _ _ checked4472.1 (.cons _ _ _ _ _ checked4473.1 (.cons _ _ _ _ _ checked4474.1 (.cons _ _ _ _ _ checked4475.1 (.cons _ _ _ _ _ checked4476.1 (.cons _ _ _ _ _ checked4477.1 (.cons _ _ _ _ _ checked4478.1 (.cons _ _ _ _ _ checked4479.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4512 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2870 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4416.2,checked4417.2,checked4418.2,checked4419.2,checked4420.2,checked4421.2,checked4422.2,checked4423.2,checked4424.2,checked4425.2,checked4426.2,checked4427.2,checked4428.2,checked4429.2,checked4430.2,checked4431.2,checked4432.2,checked4433.2,checked4434.2,checked4435.2,checked4436.2,checked4437.2,checked4438.2,checked4439.2,checked4440.2,checked4441.2,checked4442.2,checked4443.2,checked4444.2,checked4445.2,checked4446.2,checked4447.2,checked4448.2,checked4449.2,checked4450.2,checked4451.2,checked4452.2,checked4453.2,checked4454.2,checked4455.2,checked4456.2,checked4457.2,checked4458.2,checked4459.2,checked4460.2,checked4461.2,checked4462.2,checked4463.2,checked4464.2,checked4465.2,checked4466.2,checked4467.2,checked4468.2,checked4469.2,checked4470.2,checked4471.2,checked4472.2,checked4473.2,checked4474.2,checked4475.2,checked4476.2,checked4477.2,checked4478.2,checked4479.2]
  decide
end ArtifactPairedPathRoundGroup69
