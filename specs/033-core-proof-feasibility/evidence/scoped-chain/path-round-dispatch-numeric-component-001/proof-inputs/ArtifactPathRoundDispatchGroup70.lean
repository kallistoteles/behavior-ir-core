import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup70
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4480 : List WordIR.Op := [.bxor 4496 4522]
def bytes4480 : Bytes := ("    let r000011ab: u32 = r00001190 ^ r000011aa;\n" : String).toByteArray.data.toList
theorem checked4480 : bytes4480=statementBytes 4523 (op4480.map lower) ∧ bytes4480.length=48 := by core033_kernel_decide
def op4481 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4481 : Bytes := ("    let r000011ac: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4481 : bytes4481=statementBytes 4524 (op4481.map lower) ∧ bytes4481.length=41 := by core033_kernel_decide
def op4482 : List WordIR.Op := [.bxor 96 4524]
def bytes4482 : Bytes := ("    let r000011ad: u32 = r00000060 ^ r000011ac;\n" : String).toByteArray.data.toList
theorem checked4482 : bytes4482=statementBytes 4525 (op4482.map lower) ∧ bytes4482.length=48 := by core033_kernel_decide
def op4483 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4483 : Bytes := ("    let r000011ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4483 : bytes4483=statementBytes 4526 (op4483.map lower) ∧ bytes4483.length=41 := by core033_kernel_decide
def op4484 : List WordIR.Op := [.bnot 4526]
def bytes4484 : Bytes := ("    let r000011af: u32 = !r000011ae;\n" : String).toByteArray.data.toList
theorem checked4484 : bytes4484=statementBytes 4527 (op4484.map lower) ∧ bytes4484.length=37 := by core033_kernel_decide
def op4485 : List WordIR.Op := [.band 4525 4527]
def bytes4485 : Bytes := ("    let r000011b0: u32 = r000011ad & r000011af;\n" : String).toByteArray.data.toList
theorem checked4485 : bytes4485=statementBytes 4528 (op4485.map lower) ∧ bytes4485.length=48 := by core033_kernel_decide
def op4486 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4486 : Bytes := ("    let r000011b1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4486 : bytes4486=statementBytes 4529 (op4486.map lower) ∧ bytes4486.length=41 := by core033_kernel_decide
def op4487 : List WordIR.Op := [.bxor 96 4529]
def bytes4487 : Bytes := ("    let r000011b2: u32 = r00000060 ^ r000011b1;\n" : String).toByteArray.data.toList
theorem checked4487 : bytes4487=statementBytes 4530 (op4487.map lower) ∧ bytes4487.length=48 := by core033_kernel_decide
def op4488 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4488 : Bytes := ("    let r000011b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4488 : bytes4488=statementBytes 4531 (op4488.map lower) ∧ bytes4488.length=41 := by core033_kernel_decide
def op4489 : List WordIR.Op := [.bnot 4531]
def bytes4489 : Bytes := ("    let r000011b4: u32 = !r000011b3;\n" : String).toByteArray.data.toList
theorem checked4489 : bytes4489=statementBytes 4532 (op4489.map lower) ∧ bytes4489.length=37 := by core033_kernel_decide
def op4490 : List WordIR.Op := [.bxor 4530 4532]
def bytes4490 : Bytes := ("    let r000011b5: u32 = r000011b2 ^ r000011b4;\n" : String).toByteArray.data.toList
theorem checked4490 : bytes4490=statementBytes 4533 (op4490.map lower) ∧ bytes4490.length=48 := by core033_kernel_decide
def op4491 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4491 : Bytes := ("    let r000011b6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4491 : bytes4491=statementBytes 4534 (op4491.map lower) ∧ bytes4491.length=41 := by core033_kernel_decide
def op4492 : List WordIR.Op := [.bxor 96 4534]
def bytes4492 : Bytes := ("    let r000011b7: u32 = r00000060 ^ r000011b6;\n" : String).toByteArray.data.toList
theorem checked4492 : bytes4492=statementBytes 4535 (op4492.map lower) ∧ bytes4492.length=48 := by core033_kernel_decide
def op4493 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4493 : Bytes := ("    let r000011b8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4493 : bytes4493=statementBytes 4536 (op4493.map lower) ∧ bytes4493.length=41 := by core033_kernel_decide
def op4494 : List WordIR.Op := [.bnot 4536]
def bytes4494 : Bytes := ("    let r000011b9: u32 = !r000011b8;\n" : String).toByteArray.data.toList
theorem checked4494 : bytes4494=statementBytes 4537 (op4494.map lower) ∧ bytes4494.length=37 := by core033_kernel_decide
def op4495 : List WordIR.Op := [.badd 4535 4537]
def bytes4495 : Bytes := ("    let r000011ba: u32 = r000011b7.wrapping_add(r000011b9);\n" : String).toByteArray.data.toList
theorem checked4495 : bytes4495=statementBytes 4538 (op4495.map lower) ∧ bytes4495.length=60 := by core033_kernel_decide
def op4496 : List WordIR.Op := [.bnot 4538]
def bytes4496 : Bytes := ("    let r000011bb: u32 = !r000011ba;\n" : String).toByteArray.data.toList
theorem checked4496 : bytes4496=statementBytes 4539 (op4496.map lower) ∧ bytes4496.length=37 := by core033_kernel_decide
def op4497 : List WordIR.Op := [.band 4533 4539]
def bytes4497 : Bytes := ("    let r000011bc: u32 = r000011b5 & r000011bb;\n" : String).toByteArray.data.toList
theorem checked4497 : bytes4497=statementBytes 4540 (op4497.map lower) ∧ bytes4497.length=48 := by core033_kernel_decide
def op4498 : List WordIR.Op := [.bxor 4528 4540]
def bytes4498 : Bytes := ("    let r000011bd: u32 = r000011b0 ^ r000011bc;\n" : String).toByteArray.data.toList
theorem checked4498 : bytes4498=statementBytes 4541 (op4498.map lower) ∧ bytes4498.length=48 := by core033_kernel_decide
def op4499 : List WordIR.Op := [.shr 4541 31]
def bytes4499 : Bytes := ("    let r000011be: u32 = r000011bd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4499 : bytes4499=statementBytes 4542 (op4499.map lower) ∧ bytes4499.length=54 := by core033_kernel_decide
def op4500 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4500 : Bytes := ("    let r000011bf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4500 : bytes4500=statementBytes 4543 (op4500.map lower) ∧ bytes4500.length=41 := by core033_kernel_decide
def op4501 : List WordIR.Op := [.bxor 4542 4543]
def bytes4501 : Bytes := ("    let r000011c0: u32 = r000011be ^ r000011bf;\n" : String).toByteArray.data.toList
theorem checked4501 : bytes4501=statementBytes 4544 (op4501.map lower) ∧ bytes4501.length=48 := by core033_kernel_decide
def op4502 : List WordIR.Op := [.bnot 4544]
def bytes4502 : Bytes := ("    let r000011c1: u32 = !r000011c0;\n" : String).toByteArray.data.toList
theorem checked4502 : bytes4502=statementBytes 4545 (op4502.map lower) ∧ bytes4502.length=37 := by core033_kernel_decide
def op4503 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4503 : Bytes := ("    let r000011c2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4503 : bytes4503=statementBytes 4546 (op4503.map lower) ∧ bytes4503.length=41 := by core033_kernel_decide
def op4504 : List WordIR.Op := [.badd 4545 4546]
def bytes4504 : Bytes := ("    let r000011c3: u32 = r000011c1.wrapping_add(r000011c2);\n" : String).toByteArray.data.toList
theorem checked4504 : bytes4504=statementBytes 4547 (op4504.map lower) ∧ bytes4504.length=60 := by core033_kernel_decide
def op4505 : List WordIR.Op := [.band 4547 1619]
def bytes4505 : Bytes := ("    let r000011c4: u32 = r000011c3 & r00000653;\n" : String).toByteArray.data.toList
theorem checked4505 : bytes4505=statementBytes 4548 (op4505.map lower) ∧ bytes4505.length=48 := by core033_kernel_decide
def op4506 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4506 : Bytes := ("    let r000011c5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4506 : bytes4506=statementBytes 4549 (op4506.map lower) ∧ bytes4506.length=41 := by core033_kernel_decide
def op4507 : List WordIR.Op := [.bxor 96 4549]
def bytes4507 : Bytes := ("    let r000011c6: u32 = r00000060 ^ r000011c5;\n" : String).toByteArray.data.toList
theorem checked4507 : bytes4507=statementBytes 4550 (op4507.map lower) ∧ bytes4507.length=48 := by core033_kernel_decide
def op4508 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4508 : Bytes := ("    let r000011c7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4508 : bytes4508=statementBytes 4551 (op4508.map lower) ∧ bytes4508.length=41 := by core033_kernel_decide
def op4509 : List WordIR.Op := [.bnot 4551]
def bytes4509 : Bytes := ("    let r000011c8: u32 = !r000011c7;\n" : String).toByteArray.data.toList
theorem checked4509 : bytes4509=statementBytes 4552 (op4509.map lower) ∧ bytes4509.length=37 := by core033_kernel_decide
def op4510 : List WordIR.Op := [.band 4550 4552]
def bytes4510 : Bytes := ("    let r000011c9: u32 = r000011c6 & r000011c8;\n" : String).toByteArray.data.toList
theorem checked4510 : bytes4510=statementBytes 4553 (op4510.map lower) ∧ bytes4510.length=48 := by core033_kernel_decide
def op4511 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4511 : Bytes := ("    let r000011ca: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4511 : bytes4511=statementBytes 4554 (op4511.map lower) ∧ bytes4511.length=41 := by core033_kernel_decide
def op4512 : List WordIR.Op := [.bxor 96 4554]
def bytes4512 : Bytes := ("    let r000011cb: u32 = r00000060 ^ r000011ca;\n" : String).toByteArray.data.toList
theorem checked4512 : bytes4512=statementBytes 4555 (op4512.map lower) ∧ bytes4512.length=48 := by core033_kernel_decide
def op4513 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4513 : Bytes := ("    let r000011cc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4513 : bytes4513=statementBytes 4556 (op4513.map lower) ∧ bytes4513.length=41 := by core033_kernel_decide
def op4514 : List WordIR.Op := [.bnot 4556]
def bytes4514 : Bytes := ("    let r000011cd: u32 = !r000011cc;\n" : String).toByteArray.data.toList
theorem checked4514 : bytes4514=statementBytes 4557 (op4514.map lower) ∧ bytes4514.length=37 := by core033_kernel_decide
def op4515 : List WordIR.Op := [.bxor 4555 4557]
def bytes4515 : Bytes := ("    let r000011ce: u32 = r000011cb ^ r000011cd;\n" : String).toByteArray.data.toList
theorem checked4515 : bytes4515=statementBytes 4558 (op4515.map lower) ∧ bytes4515.length=48 := by core033_kernel_decide
def op4516 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4516 : Bytes := ("    let r000011cf: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4516 : bytes4516=statementBytes 4559 (op4516.map lower) ∧ bytes4516.length=41 := by core033_kernel_decide
def op4517 : List WordIR.Op := [.bxor 96 4559]
def bytes4517 : Bytes := ("    let r000011d0: u32 = r00000060 ^ r000011cf;\n" : String).toByteArray.data.toList
theorem checked4517 : bytes4517=statementBytes 4560 (op4517.map lower) ∧ bytes4517.length=48 := by core033_kernel_decide
def op4518 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4518 : Bytes := ("    let r000011d1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4518 : bytes4518=statementBytes 4561 (op4518.map lower) ∧ bytes4518.length=41 := by core033_kernel_decide
def op4519 : List WordIR.Op := [.bnot 4561]
def bytes4519 : Bytes := ("    let r000011d2: u32 = !r000011d1;\n" : String).toByteArray.data.toList
theorem checked4519 : bytes4519=statementBytes 4562 (op4519.map lower) ∧ bytes4519.length=37 := by core033_kernel_decide
def op4520 : List WordIR.Op := [.badd 4560 4562]
def bytes4520 : Bytes := ("    let r000011d3: u32 = r000011d0.wrapping_add(r000011d2);\n" : String).toByteArray.data.toList
theorem checked4520 : bytes4520=statementBytes 4563 (op4520.map lower) ∧ bytes4520.length=60 := by core033_kernel_decide
def op4521 : List WordIR.Op := [.bnot 4563]
def bytes4521 : Bytes := ("    let r000011d4: u32 = !r000011d3;\n" : String).toByteArray.data.toList
theorem checked4521 : bytes4521=statementBytes 4564 (op4521.map lower) ∧ bytes4521.length=37 := by core033_kernel_decide
def op4522 : List WordIR.Op := [.band 4558 4564]
def bytes4522 : Bytes := ("    let r000011d5: u32 = r000011ce & r000011d4;\n" : String).toByteArray.data.toList
theorem checked4522 : bytes4522=statementBytes 4565 (op4522.map lower) ∧ bytes4522.length=48 := by core033_kernel_decide
def op4523 : List WordIR.Op := [.bxor 4553 4565]
def bytes4523 : Bytes := ("    let r000011d6: u32 = r000011c9 ^ r000011d5;\n" : String).toByteArray.data.toList
theorem checked4523 : bytes4523=statementBytes 4566 (op4523.map lower) ∧ bytes4523.length=48 := by core033_kernel_decide
def op4524 : List WordIR.Op := [.shr 4566 31]
def bytes4524 : Bytes := ("    let r000011d7: u32 = r000011d6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4524 : bytes4524=statementBytes 4567 (op4524.map lower) ∧ bytes4524.length=54 := by core033_kernel_decide
def op4525 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4525 : Bytes := ("    let r000011d8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4525 : bytes4525=statementBytes 4568 (op4525.map lower) ∧ bytes4525.length=41 := by core033_kernel_decide
def op4526 : List WordIR.Op := [.bxor 4567 4568]
def bytes4526 : Bytes := ("    let r000011d9: u32 = r000011d7 ^ r000011d8;\n" : String).toByteArray.data.toList
theorem checked4526 : bytes4526=statementBytes 4569 (op4526.map lower) ∧ bytes4526.length=48 := by core033_kernel_decide
def op4527 : List WordIR.Op := [.bnot 4569]
def bytes4527 : Bytes := ("    let r000011da: u32 = !r000011d9;\n" : String).toByteArray.data.toList
theorem checked4527 : bytes4527=statementBytes 4570 (op4527.map lower) ∧ bytes4527.length=37 := by core033_kernel_decide
def op4528 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4528 : Bytes := ("    let r000011db: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4528 : bytes4528=statementBytes 4571 (op4528.map lower) ∧ bytes4528.length=41 := by core033_kernel_decide
def op4529 : List WordIR.Op := [.badd 4570 4571]
def bytes4529 : Bytes := ("    let r000011dc: u32 = r000011da.wrapping_add(r000011db);\n" : String).toByteArray.data.toList
theorem checked4529 : bytes4529=statementBytes 4572 (op4529.map lower) ∧ bytes4529.length=60 := by core033_kernel_decide
def op4530 : List WordIR.Op := [.bnot 4572]
def bytes4530 : Bytes := ("    let r000011dd: u32 = !r000011dc;\n" : String).toByteArray.data.toList
theorem checked4530 : bytes4530=statementBytes 4573 (op4530.map lower) ∧ bytes4530.length=37 := by core033_kernel_decide
def op4531 : List WordIR.Op := [.band 4573 1427]
def bytes4531 : Bytes := ("    let r000011de: u32 = r000011dd & r00000593;\n" : String).toByteArray.data.toList
theorem checked4531 : bytes4531=statementBytes 4574 (op4531.map lower) ∧ bytes4531.length=48 := by core033_kernel_decide
def op4532 : List WordIR.Op := [.bxor 4548 4574]
def bytes4532 : Bytes := ("    let r000011df: u32 = r000011c4 ^ r000011de;\n" : String).toByteArray.data.toList
theorem checked4532 : bytes4532=statementBytes 4575 (op4532.map lower) ∧ bytes4532.length=48 := by core033_kernel_decide
def op4533 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4533 : Bytes := ("    let r000011e0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4533 : bytes4533=statementBytes 4576 (op4533.map lower) ∧ bytes4533.length=41 := by core033_kernel_decide
def op4534 : List WordIR.Op := [.bxor 96 4576]
def bytes4534 : Bytes := ("    let r000011e1: u32 = r00000060 ^ r000011e0;\n" : String).toByteArray.data.toList
theorem checked4534 : bytes4534=statementBytes 4577 (op4534.map lower) ∧ bytes4534.length=48 := by core033_kernel_decide
def op4535 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4535 : Bytes := ("    let r000011e2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4535 : bytes4535=statementBytes 4578 (op4535.map lower) ∧ bytes4535.length=41 := by core033_kernel_decide
def op4536 : List WordIR.Op := [.bnot 4578]
def bytes4536 : Bytes := ("    let r000011e3: u32 = !r000011e2;\n" : String).toByteArray.data.toList
theorem checked4536 : bytes4536=statementBytes 4579 (op4536.map lower) ∧ bytes4536.length=37 := by core033_kernel_decide
def op4537 : List WordIR.Op := [.band 4577 4579]
def bytes4537 : Bytes := ("    let r000011e4: u32 = r000011e1 & r000011e3;\n" : String).toByteArray.data.toList
theorem checked4537 : bytes4537=statementBytes 4580 (op4537.map lower) ∧ bytes4537.length=48 := by core033_kernel_decide
def op4538 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4538 : Bytes := ("    let r000011e5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4538 : bytes4538=statementBytes 4581 (op4538.map lower) ∧ bytes4538.length=41 := by core033_kernel_decide
def op4539 : List WordIR.Op := [.bxor 96 4581]
def bytes4539 : Bytes := ("    let r000011e6: u32 = r00000060 ^ r000011e5;\n" : String).toByteArray.data.toList
theorem checked4539 : bytes4539=statementBytes 4582 (op4539.map lower) ∧ bytes4539.length=48 := by core033_kernel_decide
def op4540 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4540 : Bytes := ("    let r000011e7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4540 : bytes4540=statementBytes 4583 (op4540.map lower) ∧ bytes4540.length=41 := by core033_kernel_decide
def op4541 : List WordIR.Op := [.bnot 4583]
def bytes4541 : Bytes := ("    let r000011e8: u32 = !r000011e7;\n" : String).toByteArray.data.toList
theorem checked4541 : bytes4541=statementBytes 4584 (op4541.map lower) ∧ bytes4541.length=37 := by core033_kernel_decide
def op4542 : List WordIR.Op := [.bxor 4582 4584]
def bytes4542 : Bytes := ("    let r000011e9: u32 = r000011e6 ^ r000011e8;\n" : String).toByteArray.data.toList
theorem checked4542 : bytes4542=statementBytes 4585 (op4542.map lower) ∧ bytes4542.length=48 := by core033_kernel_decide
def op4543 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4543 : Bytes := ("    let r000011ea: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4543 : bytes4543=statementBytes 4586 (op4543.map lower) ∧ bytes4543.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4480,op4481,op4482,op4483,op4484,op4485,op4486,op4487,op4488,op4489,op4490,op4491,op4492,op4493,op4494,op4495,op4496,op4497,op4498,op4499,op4500,op4501,op4502,op4503,op4504,op4505,op4506,op4507,op4508,op4509,op4510,op4511,op4512,op4513,op4514,op4515,op4516,op4517,op4518,op4519,op4520,op4521,op4522,op4523,op4524,op4525,op4526,op4527,op4528,op4529,op4530,op4531,op4532,op4533,op4534,op4535,op4536,op4537,op4538,op4539,op4540,op4541,op4542,op4543]
def chunks : List Bytes := [bytes4480,bytes4481,bytes4482,bytes4483,bytes4484,bytes4485,bytes4486,bytes4487,bytes4488,bytes4489,bytes4490,bytes4491,bytes4492,bytes4493,bytes4494,bytes4495,bytes4496,bytes4497,bytes4498,bytes4499,bytes4500,bytes4501,bytes4502,bytes4503,bytes4504,bytes4505,bytes4506,bytes4507,bytes4508,bytes4509,bytes4510,bytes4511,bytes4512,bytes4513,bytes4514,bytes4515,bytes4516,bytes4517,bytes4518,bytes4519,bytes4520,bytes4521,bytes4522,bytes4523,bytes4524,bytes4525,bytes4526,bytes4527,bytes4528,bytes4529,bytes4530,bytes4531,bytes4532,bytes4533,bytes4534,bytes4535,bytes4536,bytes4537,bytes4538,bytes4539,bytes4540,bytes4541,bytes4542,bytes4543]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4523 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4480.1 (.cons _ _ _ _ _ checked4481.1 (.cons _ _ _ _ _ checked4482.1 (.cons _ _ _ _ _ checked4483.1 (.cons _ _ _ _ _ checked4484.1 (.cons _ _ _ _ _ checked4485.1 (.cons _ _ _ _ _ checked4486.1 (.cons _ _ _ _ _ checked4487.1 (.cons _ _ _ _ _ checked4488.1 (.cons _ _ _ _ _ checked4489.1 (.cons _ _ _ _ _ checked4490.1 (.cons _ _ _ _ _ checked4491.1 (.cons _ _ _ _ _ checked4492.1 (.cons _ _ _ _ _ checked4493.1 (.cons _ _ _ _ _ checked4494.1 (.cons _ _ _ _ _ checked4495.1 (.cons _ _ _ _ _ checked4496.1 (.cons _ _ _ _ _ checked4497.1 (.cons _ _ _ _ _ checked4498.1 (.cons _ _ _ _ _ checked4499.1 (.cons _ _ _ _ _ checked4500.1 (.cons _ _ _ _ _ checked4501.1 (.cons _ _ _ _ _ checked4502.1 (.cons _ _ _ _ _ checked4503.1 (.cons _ _ _ _ _ checked4504.1 (.cons _ _ _ _ _ checked4505.1 (.cons _ _ _ _ _ checked4506.1 (.cons _ _ _ _ _ checked4507.1 (.cons _ _ _ _ _ checked4508.1 (.cons _ _ _ _ _ checked4509.1 (.cons _ _ _ _ _ checked4510.1 (.cons _ _ _ _ _ checked4511.1 (.cons _ _ _ _ _ checked4512.1 (.cons _ _ _ _ _ checked4513.1 (.cons _ _ _ _ _ checked4514.1 (.cons _ _ _ _ _ checked4515.1 (.cons _ _ _ _ _ checked4516.1 (.cons _ _ _ _ _ checked4517.1 (.cons _ _ _ _ _ checked4518.1 (.cons _ _ _ _ _ checked4519.1 (.cons _ _ _ _ _ checked4520.1 (.cons _ _ _ _ _ checked4521.1 (.cons _ _ _ _ _ checked4522.1 (.cons _ _ _ _ _ checked4523.1 (.cons _ _ _ _ _ checked4524.1 (.cons _ _ _ _ _ checked4525.1 (.cons _ _ _ _ _ checked4526.1 (.cons _ _ _ _ _ checked4527.1 (.cons _ _ _ _ _ checked4528.1 (.cons _ _ _ _ _ checked4529.1 (.cons _ _ _ _ _ checked4530.1 (.cons _ _ _ _ _ checked4531.1 (.cons _ _ _ _ _ checked4532.1 (.cons _ _ _ _ _ checked4533.1 (.cons _ _ _ _ _ checked4534.1 (.cons _ _ _ _ _ checked4535.1 (.cons _ _ _ _ _ checked4536.1 (.cons _ _ _ _ _ checked4537.1 (.cons _ _ _ _ _ checked4538.1 (.cons _ _ _ _ _ checked4539.1 (.cons _ _ _ _ _ checked4540.1 (.cons _ _ _ _ _ checked4541.1 (.cons _ _ _ _ _ checked4542.1 (.cons _ _ _ _ _ checked4543.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4523 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4480.2,checked4481.2,checked4482.2,checked4483.2,checked4484.2,checked4485.2,checked4486.2,checked4487.2,checked4488.2,checked4489.2,checked4490.2,checked4491.2,checked4492.2,checked4493.2,checked4494.2,checked4495.2,checked4496.2,checked4497.2,checked4498.2,checked4499.2,checked4500.2,checked4501.2,checked4502.2,checked4503.2,checked4504.2,checked4505.2,checked4506.2,checked4507.2,checked4508.2,checked4509.2,checked4510.2,checked4511.2,checked4512.2,checked4513.2,checked4514.2,checked4515.2,checked4516.2,checked4517.2,checked4518.2,checked4519.2,checked4520.2,checked4521.2,checked4522.2,checked4523.2,checked4524.2,checked4525.2,checked4526.2,checked4527.2,checked4528.2,checked4529.2,checked4530.2,checked4531.2,checked4532.2,checked4533.2,checked4534.2,checked4535.2,checked4536.2,checked4537.2,checked4538.2,checked4539.2,checked4540.2,checked4541.2,checked4542.2,checked4543.2]
  decide
end ArtifactPathRoundDispatchGroup70
