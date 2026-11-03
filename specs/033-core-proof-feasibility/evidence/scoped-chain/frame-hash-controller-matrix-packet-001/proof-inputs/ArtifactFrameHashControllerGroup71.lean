import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup71
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4544 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4544 : Bytes := ("    let r000011eb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4544 : bytes4544=statementBytes 4587 (op4544.map lower) ∧ bytes4544.length=41 := by core033_kernel_decide
def op4545 : List WordIR.Op := [.bxor 0 4587]
def bytes4545 : Bytes := ("    let r000011ec: u32 = r00000000 ^ r000011eb;\n" : String).toByteArray.data.toList
theorem checked4545 : bytes4545=statementBytes 4588 (op4545.map lower) ∧ bytes4545.length=48 := by core033_kernel_decide
def op4546 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4546 : Bytes := ("    let r000011ed: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4546 : bytes4546=statementBytes 4589 (op4546.map lower) ∧ bytes4546.length=41 := by core033_kernel_decide
def op4547 : List WordIR.Op := [.bnot 4589]
def bytes4547 : Bytes := ("    let r000011ee: u32 = !r000011ed;\n" : String).toByteArray.data.toList
theorem checked4547 : bytes4547=statementBytes 4590 (op4547.map lower) ∧ bytes4547.length=37 := by core033_kernel_decide
def op4548 : List WordIR.Op := [.bxor 4588 4590]
def bytes4548 : Bytes := ("    let r000011ef: u32 = r000011ec ^ r000011ee;\n" : String).toByteArray.data.toList
theorem checked4548 : bytes4548=statementBytes 4591 (op4548.map lower) ∧ bytes4548.length=48 := by core033_kernel_decide
def op4549 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4549 : Bytes := ("    let r000011f0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4549 : bytes4549=statementBytes 4592 (op4549.map lower) ∧ bytes4549.length=41 := by core033_kernel_decide
def op4550 : List WordIR.Op := [.bxor 0 4592]
def bytes4550 : Bytes := ("    let r000011f1: u32 = r00000000 ^ r000011f0;\n" : String).toByteArray.data.toList
theorem checked4550 : bytes4550=statementBytes 4593 (op4550.map lower) ∧ bytes4550.length=48 := by core033_kernel_decide
def op4551 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4551 : Bytes := ("    let r000011f2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4551 : bytes4551=statementBytes 4594 (op4551.map lower) ∧ bytes4551.length=41 := by core033_kernel_decide
def op4552 : List WordIR.Op := [.bnot 4594]
def bytes4552 : Bytes := ("    let r000011f3: u32 = !r000011f2;\n" : String).toByteArray.data.toList
theorem checked4552 : bytes4552=statementBytes 4595 (op4552.map lower) ∧ bytes4552.length=37 := by core033_kernel_decide
def op4553 : List WordIR.Op := [.badd 4593 4595]
def bytes4553 : Bytes := ("    let r000011f4: u32 = r000011f1.wrapping_add(r000011f3);\n" : String).toByteArray.data.toList
theorem checked4553 : bytes4553=statementBytes 4596 (op4553.map lower) ∧ bytes4553.length=60 := by core033_kernel_decide
def op4554 : List WordIR.Op := [.bnot 4596]
def bytes4554 : Bytes := ("    let r000011f5: u32 = !r000011f4;\n" : String).toByteArray.data.toList
theorem checked4554 : bytes4554=statementBytes 4597 (op4554.map lower) ∧ bytes4554.length=37 := by core033_kernel_decide
def op4555 : List WordIR.Op := [.band 4591 4597]
def bytes4555 : Bytes := ("    let r000011f6: u32 = r000011ef & r000011f5;\n" : String).toByteArray.data.toList
theorem checked4555 : bytes4555=statementBytes 4598 (op4555.map lower) ∧ bytes4555.length=48 := by core033_kernel_decide
def op4556 : List WordIR.Op := [.bxor 4586 4598]
def bytes4556 : Bytes := ("    let r000011f7: u32 = r000011ea ^ r000011f6;\n" : String).toByteArray.data.toList
theorem checked4556 : bytes4556=statementBytes 4599 (op4556.map lower) ∧ bytes4556.length=48 := by core033_kernel_decide
def op4557 : List WordIR.Op := [.shr 4599 31]
def bytes4557 : Bytes := ("    let r000011f8: u32 = r000011f7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4557 : bytes4557=statementBytes 4600 (op4557.map lower) ∧ bytes4557.length=54 := by core033_kernel_decide
def op4558 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4558 : Bytes := ("    let r000011f9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4558 : bytes4558=statementBytes 4601 (op4558.map lower) ∧ bytes4558.length=41 := by core033_kernel_decide
def op4559 : List WordIR.Op := [.bxor 4600 4601]
def bytes4559 : Bytes := ("    let r000011fa: u32 = r000011f8 ^ r000011f9;\n" : String).toByteArray.data.toList
theorem checked4559 : bytes4559=statementBytes 4602 (op4559.map lower) ∧ bytes4559.length=48 := by core033_kernel_decide
def op4560 : List WordIR.Op := [.bnot 4602]
def bytes4560 : Bytes := ("    let r000011fb: u32 = !r000011fa;\n" : String).toByteArray.data.toList
theorem checked4560 : bytes4560=statementBytes 4603 (op4560.map lower) ∧ bytes4560.length=37 := by core033_kernel_decide
def op4561 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4561 : Bytes := ("    let r000011fc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4561 : bytes4561=statementBytes 4604 (op4561.map lower) ∧ bytes4561.length=41 := by core033_kernel_decide
def op4562 : List WordIR.Op := [.badd 4603 4604]
def bytes4562 : Bytes := ("    let r000011fd: u32 = r000011fb.wrapping_add(r000011fc);\n" : String).toByteArray.data.toList
theorem checked4562 : bytes4562=statementBytes 4605 (op4562.map lower) ∧ bytes4562.length=60 := by core033_kernel_decide
def op4563 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4563 : Bytes := ("    let r000011fe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4563 : bytes4563=statementBytes 4606 (op4563.map lower) ∧ bytes4563.length=41 := by core033_kernel_decide
def op4564 : List WordIR.Op := [.band 4605 4606]
def bytes4564 : Bytes := ("    let r000011ff: u32 = r000011fd & r000011fe;\n" : String).toByteArray.data.toList
theorem checked4564 : bytes4564=statementBytes 4607 (op4564.map lower) ∧ bytes4564.length=48 := by core033_kernel_decide
def op4565 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4565 : Bytes := ("    let r00001200: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4565 : bytes4565=statementBytes 4608 (op4565.map lower) ∧ bytes4565.length=41 := by core033_kernel_decide
def op4566 : List WordIR.Op := [.bxor 0 4608]
def bytes4566 : Bytes := ("    let r00001201: u32 = r00000000 ^ r00001200;\n" : String).toByteArray.data.toList
theorem checked4566 : bytes4566=statementBytes 4609 (op4566.map lower) ∧ bytes4566.length=48 := by core033_kernel_decide
def op4567 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4567 : Bytes := ("    let r00001202: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4567 : bytes4567=statementBytes 4610 (op4567.map lower) ∧ bytes4567.length=41 := by core033_kernel_decide
def op4568 : List WordIR.Op := [.bnot 4610]
def bytes4568 : Bytes := ("    let r00001203: u32 = !r00001202;\n" : String).toByteArray.data.toList
theorem checked4568 : bytes4568=statementBytes 4611 (op4568.map lower) ∧ bytes4568.length=37 := by core033_kernel_decide
def op4569 : List WordIR.Op := [.band 4609 4611]
def bytes4569 : Bytes := ("    let r00001204: u32 = r00001201 & r00001203;\n" : String).toByteArray.data.toList
theorem checked4569 : bytes4569=statementBytes 4612 (op4569.map lower) ∧ bytes4569.length=48 := by core033_kernel_decide
def op4570 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4570 : Bytes := ("    let r00001205: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4570 : bytes4570=statementBytes 4613 (op4570.map lower) ∧ bytes4570.length=41 := by core033_kernel_decide
def op4571 : List WordIR.Op := [.bxor 0 4613]
def bytes4571 : Bytes := ("    let r00001206: u32 = r00000000 ^ r00001205;\n" : String).toByteArray.data.toList
theorem checked4571 : bytes4571=statementBytes 4614 (op4571.map lower) ∧ bytes4571.length=48 := by core033_kernel_decide
def op4572 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4572 : Bytes := ("    let r00001207: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4572 : bytes4572=statementBytes 4615 (op4572.map lower) ∧ bytes4572.length=41 := by core033_kernel_decide
def op4573 : List WordIR.Op := [.bnot 4615]
def bytes4573 : Bytes := ("    let r00001208: u32 = !r00001207;\n" : String).toByteArray.data.toList
theorem checked4573 : bytes4573=statementBytes 4616 (op4573.map lower) ∧ bytes4573.length=37 := by core033_kernel_decide
def op4574 : List WordIR.Op := [.bxor 4614 4616]
def bytes4574 : Bytes := ("    let r00001209: u32 = r00001206 ^ r00001208;\n" : String).toByteArray.data.toList
theorem checked4574 : bytes4574=statementBytes 4617 (op4574.map lower) ∧ bytes4574.length=48 := by core033_kernel_decide
def op4575 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4575 : Bytes := ("    let r0000120a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4575 : bytes4575=statementBytes 4618 (op4575.map lower) ∧ bytes4575.length=41 := by core033_kernel_decide
def op4576 : List WordIR.Op := [.bxor 0 4618]
def bytes4576 : Bytes := ("    let r0000120b: u32 = r00000000 ^ r0000120a;\n" : String).toByteArray.data.toList
theorem checked4576 : bytes4576=statementBytes 4619 (op4576.map lower) ∧ bytes4576.length=48 := by core033_kernel_decide
def op4577 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4577 : Bytes := ("    let r0000120c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4577 : bytes4577=statementBytes 4620 (op4577.map lower) ∧ bytes4577.length=41 := by core033_kernel_decide
def op4578 : List WordIR.Op := [.bnot 4620]
def bytes4578 : Bytes := ("    let r0000120d: u32 = !r0000120c;\n" : String).toByteArray.data.toList
theorem checked4578 : bytes4578=statementBytes 4621 (op4578.map lower) ∧ bytes4578.length=37 := by core033_kernel_decide
def op4579 : List WordIR.Op := [.badd 4619 4621]
def bytes4579 : Bytes := ("    let r0000120e: u32 = r0000120b.wrapping_add(r0000120d);\n" : String).toByteArray.data.toList
theorem checked4579 : bytes4579=statementBytes 4622 (op4579.map lower) ∧ bytes4579.length=60 := by core033_kernel_decide
def op4580 : List WordIR.Op := [.bnot 4622]
def bytes4580 : Bytes := ("    let r0000120f: u32 = !r0000120e;\n" : String).toByteArray.data.toList
theorem checked4580 : bytes4580=statementBytes 4623 (op4580.map lower) ∧ bytes4580.length=37 := by core033_kernel_decide
def op4581 : List WordIR.Op := [.band 4617 4623]
def bytes4581 : Bytes := ("    let r00001210: u32 = r00001209 & r0000120f;\n" : String).toByteArray.data.toList
theorem checked4581 : bytes4581=statementBytes 4624 (op4581.map lower) ∧ bytes4581.length=48 := by core033_kernel_decide
def op4582 : List WordIR.Op := [.bxor 4612 4624]
def bytes4582 : Bytes := ("    let r00001211: u32 = r00001204 ^ r00001210;\n" : String).toByteArray.data.toList
theorem checked4582 : bytes4582=statementBytes 4625 (op4582.map lower) ∧ bytes4582.length=48 := by core033_kernel_decide
def op4583 : List WordIR.Op := [.shr 4625 31]
def bytes4583 : Bytes := ("    let r00001212: u32 = r00001211 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4583 : bytes4583=statementBytes 4626 (op4583.map lower) ∧ bytes4583.length=54 := by core033_kernel_decide
def op4584 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4584 : Bytes := ("    let r00001213: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4584 : bytes4584=statementBytes 4627 (op4584.map lower) ∧ bytes4584.length=41 := by core033_kernel_decide
def op4585 : List WordIR.Op := [.bxor 4626 4627]
def bytes4585 : Bytes := ("    let r00001214: u32 = r00001212 ^ r00001213;\n" : String).toByteArray.data.toList
theorem checked4585 : bytes4585=statementBytes 4628 (op4585.map lower) ∧ bytes4585.length=48 := by core033_kernel_decide
def op4586 : List WordIR.Op := [.bnot 4628]
def bytes4586 : Bytes := ("    let r00001215: u32 = !r00001214;\n" : String).toByteArray.data.toList
theorem checked4586 : bytes4586=statementBytes 4629 (op4586.map lower) ∧ bytes4586.length=37 := by core033_kernel_decide
def op4587 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4587 : Bytes := ("    let r00001216: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4587 : bytes4587=statementBytes 4630 (op4587.map lower) ∧ bytes4587.length=41 := by core033_kernel_decide
def op4588 : List WordIR.Op := [.badd 4629 4630]
def bytes4588 : Bytes := ("    let r00001217: u32 = r00001215.wrapping_add(r00001216);\n" : String).toByteArray.data.toList
theorem checked4588 : bytes4588=statementBytes 4631 (op4588.map lower) ∧ bytes4588.length=60 := by core033_kernel_decide
def op4589 : List WordIR.Op := [.bnot 4631]
def bytes4589 : Bytes := ("    let r00001218: u32 = !r00001217;\n" : String).toByteArray.data.toList
theorem checked4589 : bytes4589=statementBytes 4632 (op4589.map lower) ∧ bytes4589.length=37 := by core033_kernel_decide
def op4590 : List WordIR.Op := [.band 4632 944]
def bytes4590 : Bytes := ("    let r00001219: u32 = r00001218 & r000003b0;\n" : String).toByteArray.data.toList
theorem checked4590 : bytes4590=statementBytes 4633 (op4590.map lower) ∧ bytes4590.length=48 := by core033_kernel_decide
def op4591 : List WordIR.Op := [.bxor 4607 4633]
def bytes4591 : Bytes := ("    let r0000121a: u32 = r000011ff ^ r00001219;\n" : String).toByteArray.data.toList
theorem checked4591 : bytes4591=statementBytes 4634 (op4591.map lower) ∧ bytes4591.length=48 := by core033_kernel_decide
def op4592 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4592 : Bytes := ("    let r0000121b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4592 : bytes4592=statementBytes 4635 (op4592.map lower) ∧ bytes4592.length=41 := by core033_kernel_decide
def op4593 : List WordIR.Op := [.bxor 0 4635]
def bytes4593 : Bytes := ("    let r0000121c: u32 = r00000000 ^ r0000121b;\n" : String).toByteArray.data.toList
theorem checked4593 : bytes4593=statementBytes 4636 (op4593.map lower) ∧ bytes4593.length=48 := by core033_kernel_decide
def op4594 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4594 : Bytes := ("    let r0000121d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4594 : bytes4594=statementBytes 4637 (op4594.map lower) ∧ bytes4594.length=41 := by core033_kernel_decide
def op4595 : List WordIR.Op := [.bnot 4637]
def bytes4595 : Bytes := ("    let r0000121e: u32 = !r0000121d;\n" : String).toByteArray.data.toList
theorem checked4595 : bytes4595=statementBytes 4638 (op4595.map lower) ∧ bytes4595.length=37 := by core033_kernel_decide
def op4596 : List WordIR.Op := [.band 4636 4638]
def bytes4596 : Bytes := ("    let r0000121f: u32 = r0000121c & r0000121e;\n" : String).toByteArray.data.toList
theorem checked4596 : bytes4596=statementBytes 4639 (op4596.map lower) ∧ bytes4596.length=48 := by core033_kernel_decide
def op4597 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4597 : Bytes := ("    let r00001220: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4597 : bytes4597=statementBytes 4640 (op4597.map lower) ∧ bytes4597.length=41 := by core033_kernel_decide
def op4598 : List WordIR.Op := [.bxor 0 4640]
def bytes4598 : Bytes := ("    let r00001221: u32 = r00000000 ^ r00001220;\n" : String).toByteArray.data.toList
theorem checked4598 : bytes4598=statementBytes 4641 (op4598.map lower) ∧ bytes4598.length=48 := by core033_kernel_decide
def op4599 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4599 : Bytes := ("    let r00001222: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4599 : bytes4599=statementBytes 4642 (op4599.map lower) ∧ bytes4599.length=41 := by core033_kernel_decide
def op4600 : List WordIR.Op := [.bnot 4642]
def bytes4600 : Bytes := ("    let r00001223: u32 = !r00001222;\n" : String).toByteArray.data.toList
theorem checked4600 : bytes4600=statementBytes 4643 (op4600.map lower) ∧ bytes4600.length=37 := by core033_kernel_decide
def op4601 : List WordIR.Op := [.bxor 4641 4643]
def bytes4601 : Bytes := ("    let r00001224: u32 = r00001221 ^ r00001223;\n" : String).toByteArray.data.toList
theorem checked4601 : bytes4601=statementBytes 4644 (op4601.map lower) ∧ bytes4601.length=48 := by core033_kernel_decide
def op4602 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4602 : Bytes := ("    let r00001225: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4602 : bytes4602=statementBytes 4645 (op4602.map lower) ∧ bytes4602.length=41 := by core033_kernel_decide
def op4603 : List WordIR.Op := [.bxor 0 4645]
def bytes4603 : Bytes := ("    let r00001226: u32 = r00000000 ^ r00001225;\n" : String).toByteArray.data.toList
theorem checked4603 : bytes4603=statementBytes 4646 (op4603.map lower) ∧ bytes4603.length=48 := by core033_kernel_decide
def op4604 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4604 : Bytes := ("    let r00001227: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4604 : bytes4604=statementBytes 4647 (op4604.map lower) ∧ bytes4604.length=41 := by core033_kernel_decide
def op4605 : List WordIR.Op := [.bnot 4647]
def bytes4605 : Bytes := ("    let r00001228: u32 = !r00001227;\n" : String).toByteArray.data.toList
theorem checked4605 : bytes4605=statementBytes 4648 (op4605.map lower) ∧ bytes4605.length=37 := by core033_kernel_decide
def op4606 : List WordIR.Op := [.badd 4646 4648]
def bytes4606 : Bytes := ("    let r00001229: u32 = r00001226.wrapping_add(r00001228);\n" : String).toByteArray.data.toList
theorem checked4606 : bytes4606=statementBytes 4649 (op4606.map lower) ∧ bytes4606.length=60 := by core033_kernel_decide
def op4607 : List WordIR.Op := [.bnot 4649]
def bytes4607 : Bytes := ("    let r0000122a: u32 = !r00001229;\n" : String).toByteArray.data.toList
theorem checked4607 : bytes4607=statementBytes 4650 (op4607.map lower) ∧ bytes4607.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4544,op4545,op4546,op4547,op4548,op4549,op4550,op4551,op4552,op4553,op4554,op4555,op4556,op4557,op4558,op4559,op4560,op4561,op4562,op4563,op4564,op4565,op4566,op4567,op4568,op4569,op4570,op4571,op4572,op4573,op4574,op4575,op4576,op4577,op4578,op4579,op4580,op4581,op4582,op4583,op4584,op4585,op4586,op4587,op4588,op4589,op4590,op4591,op4592,op4593,op4594,op4595,op4596,op4597,op4598,op4599,op4600,op4601,op4602,op4603,op4604,op4605,op4606,op4607]
def chunks : List Bytes := [bytes4544,bytes4545,bytes4546,bytes4547,bytes4548,bytes4549,bytes4550,bytes4551,bytes4552,bytes4553,bytes4554,bytes4555,bytes4556,bytes4557,bytes4558,bytes4559,bytes4560,bytes4561,bytes4562,bytes4563,bytes4564,bytes4565,bytes4566,bytes4567,bytes4568,bytes4569,bytes4570,bytes4571,bytes4572,bytes4573,bytes4574,bytes4575,bytes4576,bytes4577,bytes4578,bytes4579,bytes4580,bytes4581,bytes4582,bytes4583,bytes4584,bytes4585,bytes4586,bytes4587,bytes4588,bytes4589,bytes4590,bytes4591,bytes4592,bytes4593,bytes4594,bytes4595,bytes4596,bytes4597,bytes4598,bytes4599,bytes4600,bytes4601,bytes4602,bytes4603,bytes4604,bytes4605,bytes4606,bytes4607]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4587 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4544.1 (.cons _ _ _ _ _ checked4545.1 (.cons _ _ _ _ _ checked4546.1 (.cons _ _ _ _ _ checked4547.1 (.cons _ _ _ _ _ checked4548.1 (.cons _ _ _ _ _ checked4549.1 (.cons _ _ _ _ _ checked4550.1 (.cons _ _ _ _ _ checked4551.1 (.cons _ _ _ _ _ checked4552.1 (.cons _ _ _ _ _ checked4553.1 (.cons _ _ _ _ _ checked4554.1 (.cons _ _ _ _ _ checked4555.1 (.cons _ _ _ _ _ checked4556.1 (.cons _ _ _ _ _ checked4557.1 (.cons _ _ _ _ _ checked4558.1 (.cons _ _ _ _ _ checked4559.1 (.cons _ _ _ _ _ checked4560.1 (.cons _ _ _ _ _ checked4561.1 (.cons _ _ _ _ _ checked4562.1 (.cons _ _ _ _ _ checked4563.1 (.cons _ _ _ _ _ checked4564.1 (.cons _ _ _ _ _ checked4565.1 (.cons _ _ _ _ _ checked4566.1 (.cons _ _ _ _ _ checked4567.1 (.cons _ _ _ _ _ checked4568.1 (.cons _ _ _ _ _ checked4569.1 (.cons _ _ _ _ _ checked4570.1 (.cons _ _ _ _ _ checked4571.1 (.cons _ _ _ _ _ checked4572.1 (.cons _ _ _ _ _ checked4573.1 (.cons _ _ _ _ _ checked4574.1 (.cons _ _ _ _ _ checked4575.1 (.cons _ _ _ _ _ checked4576.1 (.cons _ _ _ _ _ checked4577.1 (.cons _ _ _ _ _ checked4578.1 (.cons _ _ _ _ _ checked4579.1 (.cons _ _ _ _ _ checked4580.1 (.cons _ _ _ _ _ checked4581.1 (.cons _ _ _ _ _ checked4582.1 (.cons _ _ _ _ _ checked4583.1 (.cons _ _ _ _ _ checked4584.1 (.cons _ _ _ _ _ checked4585.1 (.cons _ _ _ _ _ checked4586.1 (.cons _ _ _ _ _ checked4587.1 (.cons _ _ _ _ _ checked4588.1 (.cons _ _ _ _ _ checked4589.1 (.cons _ _ _ _ _ checked4590.1 (.cons _ _ _ _ _ checked4591.1 (.cons _ _ _ _ _ checked4592.1 (.cons _ _ _ _ _ checked4593.1 (.cons _ _ _ _ _ checked4594.1 (.cons _ _ _ _ _ checked4595.1 (.cons _ _ _ _ _ checked4596.1 (.cons _ _ _ _ _ checked4597.1 (.cons _ _ _ _ _ checked4598.1 (.cons _ _ _ _ _ checked4599.1 (.cons _ _ _ _ _ checked4600.1 (.cons _ _ _ _ _ checked4601.1 (.cons _ _ _ _ _ checked4602.1 (.cons _ _ _ _ _ checked4603.1 (.cons _ _ _ _ _ checked4604.1 (.cons _ _ _ _ _ checked4605.1 (.cons _ _ _ _ _ checked4606.1 (.cons _ _ _ _ _ checked4607.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4587 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2843 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4544.2,checked4545.2,checked4546.2,checked4547.2,checked4548.2,checked4549.2,checked4550.2,checked4551.2,checked4552.2,checked4553.2,checked4554.2,checked4555.2,checked4556.2,checked4557.2,checked4558.2,checked4559.2,checked4560.2,checked4561.2,checked4562.2,checked4563.2,checked4564.2,checked4565.2,checked4566.2,checked4567.2,checked4568.2,checked4569.2,checked4570.2,checked4571.2,checked4572.2,checked4573.2,checked4574.2,checked4575.2,checked4576.2,checked4577.2,checked4578.2,checked4579.2,checked4580.2,checked4581.2,checked4582.2,checked4583.2,checked4584.2,checked4585.2,checked4586.2,checked4587.2,checked4588.2,checked4589.2,checked4590.2,checked4591.2,checked4592.2,checked4593.2,checked4594.2,checked4595.2,checked4596.2,checked4597.2,checked4598.2,checked4599.2,checked4600.2,checked4601.2,checked4602.2,checked4603.2,checked4604.2,checked4605.2,checked4606.2,checked4607.2]
  decide
end ArtifactFrameHashControllerGroup71
