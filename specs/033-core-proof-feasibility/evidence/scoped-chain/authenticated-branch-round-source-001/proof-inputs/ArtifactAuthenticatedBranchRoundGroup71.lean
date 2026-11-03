import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup71
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4544 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4544 : Bytes := ("    let r00001236: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4544 : bytes4544=statementBytes 4662 (op4544.map lower) ∧ bytes4544.length=41 := by core033_kernel_decide
def op4545 : List WordIR.Op := [.bnot 4662]
def bytes4545 : Bytes := ("    let r00001237: u32 = !r00001236;\n" : String).toByteArray.data.toList
theorem checked4545 : bytes4545=statementBytes 4663 (op4545.map lower) ∧ bytes4545.length=37 := by core033_kernel_decide
def op4546 : List WordIR.Op := [.band 4661 4663]
def bytes4546 : Bytes := ("    let r00001238: u32 = r00001235 & r00001237;\n" : String).toByteArray.data.toList
theorem checked4546 : bytes4546=statementBytes 4664 (op4546.map lower) ∧ bytes4546.length=48 := by core033_kernel_decide
def op4547 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4547 : Bytes := ("    let r00001239: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4547 : bytes4547=statementBytes 4665 (op4547.map lower) ∧ bytes4547.length=41 := by core033_kernel_decide
def op4548 : List WordIR.Op := [.bxor 1299 4665]
def bytes4548 : Bytes := ("    let r0000123a: u32 = r00000513 ^ r00001239;\n" : String).toByteArray.data.toList
theorem checked4548 : bytes4548=statementBytes 4666 (op4548.map lower) ∧ bytes4548.length=48 := by core033_kernel_decide
def op4549 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4549 : Bytes := ("    let r0000123b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4549 : bytes4549=statementBytes 4667 (op4549.map lower) ∧ bytes4549.length=41 := by core033_kernel_decide
def op4550 : List WordIR.Op := [.bnot 4667]
def bytes4550 : Bytes := ("    let r0000123c: u32 = !r0000123b;\n" : String).toByteArray.data.toList
theorem checked4550 : bytes4550=statementBytes 4668 (op4550.map lower) ∧ bytes4550.length=37 := by core033_kernel_decide
def op4551 : List WordIR.Op := [.bxor 4666 4668]
def bytes4551 : Bytes := ("    let r0000123d: u32 = r0000123a ^ r0000123c;\n" : String).toByteArray.data.toList
theorem checked4551 : bytes4551=statementBytes 4669 (op4551.map lower) ∧ bytes4551.length=48 := by core033_kernel_decide
def op4552 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4552 : Bytes := ("    let r0000123e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4552 : bytes4552=statementBytes 4670 (op4552.map lower) ∧ bytes4552.length=41 := by core033_kernel_decide
def op4553 : List WordIR.Op := [.bxor 1299 4670]
def bytes4553 : Bytes := ("    let r0000123f: u32 = r00000513 ^ r0000123e;\n" : String).toByteArray.data.toList
theorem checked4553 : bytes4553=statementBytes 4671 (op4553.map lower) ∧ bytes4553.length=48 := by core033_kernel_decide
def op4554 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4554 : Bytes := ("    let r00001240: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4554 : bytes4554=statementBytes 4672 (op4554.map lower) ∧ bytes4554.length=41 := by core033_kernel_decide
def op4555 : List WordIR.Op := [.bnot 4672]
def bytes4555 : Bytes := ("    let r00001241: u32 = !r00001240;\n" : String).toByteArray.data.toList
theorem checked4555 : bytes4555=statementBytes 4673 (op4555.map lower) ∧ bytes4555.length=37 := by core033_kernel_decide
def op4556 : List WordIR.Op := [.badd 4671 4673]
def bytes4556 : Bytes := ("    let r00001242: u32 = r0000123f.wrapping_add(r00001241);\n" : String).toByteArray.data.toList
theorem checked4556 : bytes4556=statementBytes 4674 (op4556.map lower) ∧ bytes4556.length=60 := by core033_kernel_decide
def op4557 : List WordIR.Op := [.bnot 4674]
def bytes4557 : Bytes := ("    let r00001243: u32 = !r00001242;\n" : String).toByteArray.data.toList
theorem checked4557 : bytes4557=statementBytes 4675 (op4557.map lower) ∧ bytes4557.length=37 := by core033_kernel_decide
def op4558 : List WordIR.Op := [.band 4669 4675]
def bytes4558 : Bytes := ("    let r00001244: u32 = r0000123d & r00001243;\n" : String).toByteArray.data.toList
theorem checked4558 : bytes4558=statementBytes 4676 (op4558.map lower) ∧ bytes4558.length=48 := by core033_kernel_decide
def op4559 : List WordIR.Op := [.bxor 4664 4676]
def bytes4559 : Bytes := ("    let r00001245: u32 = r00001238 ^ r00001244;\n" : String).toByteArray.data.toList
theorem checked4559 : bytes4559=statementBytes 4677 (op4559.map lower) ∧ bytes4559.length=48 := by core033_kernel_decide
def op4560 : List WordIR.Op := [.shr 4677 31]
def bytes4560 : Bytes := ("    let r00001246: u32 = r00001245 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4560 : bytes4560=statementBytes 4678 (op4560.map lower) ∧ bytes4560.length=54 := by core033_kernel_decide
def op4561 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4561 : Bytes := ("    let r00001247: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4561 : bytes4561=statementBytes 4679 (op4561.map lower) ∧ bytes4561.length=41 := by core033_kernel_decide
def op4562 : List WordIR.Op := [.bxor 4678 4679]
def bytes4562 : Bytes := ("    let r00001248: u32 = r00001246 ^ r00001247;\n" : String).toByteArray.data.toList
theorem checked4562 : bytes4562=statementBytes 4680 (op4562.map lower) ∧ bytes4562.length=48 := by core033_kernel_decide
def op4563 : List WordIR.Op := [.bnot 4680]
def bytes4563 : Bytes := ("    let r00001249: u32 = !r00001248;\n" : String).toByteArray.data.toList
theorem checked4563 : bytes4563=statementBytes 4681 (op4563.map lower) ∧ bytes4563.length=37 := by core033_kernel_decide
def op4564 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4564 : Bytes := ("    let r0000124a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4564 : bytes4564=statementBytes 4682 (op4564.map lower) ∧ bytes4564.length=41 := by core033_kernel_decide
def op4565 : List WordIR.Op := [.badd 4681 4682]
def bytes4565 : Bytes := ("    let r0000124b: u32 = r00001249.wrapping_add(r0000124a);\n" : String).toByteArray.data.toList
theorem checked4565 : bytes4565=statementBytes 4683 (op4565.map lower) ∧ bytes4565.length=60 := by core033_kernel_decide
def op4566 : List WordIR.Op := [.bnot 4683]
def bytes4566 : Bytes := ("    let r0000124c: u32 = !r0000124b;\n" : String).toByteArray.data.toList
theorem checked4566 : bytes4566=statementBytes 4684 (op4566.map lower) ∧ bytes4566.length=37 := by core033_kernel_decide
def op4567 : List WordIR.Op := [.band 4684 2567]
def bytes4567 : Bytes := ("    let r0000124d: u32 = r0000124c & r00000a07;\n" : String).toByteArray.data.toList
theorem checked4567 : bytes4567=statementBytes 4685 (op4567.map lower) ∧ bytes4567.length=48 := by core033_kernel_decide
def op4568 : List WordIR.Op := [.bxor 4659 4685]
def bytes4568 : Bytes := ("    let r0000124e: u32 = r00001233 ^ r0000124d;\n" : String).toByteArray.data.toList
theorem checked4568 : bytes4568=statementBytes 4686 (op4568.map lower) ∧ bytes4568.length=48 := by core033_kernel_decide
def op4569 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4569 : Bytes := ("    let r0000124f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4569 : bytes4569=statementBytes 4687 (op4569.map lower) ∧ bytes4569.length=41 := by core033_kernel_decide
def op4570 : List WordIR.Op := [.bxor 1299 4687]
def bytes4570 : Bytes := ("    let r00001250: u32 = r00000513 ^ r0000124f;\n" : String).toByteArray.data.toList
theorem checked4570 : bytes4570=statementBytes 4688 (op4570.map lower) ∧ bytes4570.length=48 := by core033_kernel_decide
def op4571 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4571 : Bytes := ("    let r00001251: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4571 : bytes4571=statementBytes 4689 (op4571.map lower) ∧ bytes4571.length=41 := by core033_kernel_decide
def op4572 : List WordIR.Op := [.bnot 4689]
def bytes4572 : Bytes := ("    let r00001252: u32 = !r00001251;\n" : String).toByteArray.data.toList
theorem checked4572 : bytes4572=statementBytes 4690 (op4572.map lower) ∧ bytes4572.length=37 := by core033_kernel_decide
def op4573 : List WordIR.Op := [.band 4688 4690]
def bytes4573 : Bytes := ("    let r00001253: u32 = r00001250 & r00001252;\n" : String).toByteArray.data.toList
theorem checked4573 : bytes4573=statementBytes 4691 (op4573.map lower) ∧ bytes4573.length=48 := by core033_kernel_decide
def op4574 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4574 : Bytes := ("    let r00001254: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4574 : bytes4574=statementBytes 4692 (op4574.map lower) ∧ bytes4574.length=41 := by core033_kernel_decide
def op4575 : List WordIR.Op := [.bxor 1299 4692]
def bytes4575 : Bytes := ("    let r00001255: u32 = r00000513 ^ r00001254;\n" : String).toByteArray.data.toList
theorem checked4575 : bytes4575=statementBytes 4693 (op4575.map lower) ∧ bytes4575.length=48 := by core033_kernel_decide
def op4576 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4576 : Bytes := ("    let r00001256: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4576 : bytes4576=statementBytes 4694 (op4576.map lower) ∧ bytes4576.length=41 := by core033_kernel_decide
def op4577 : List WordIR.Op := [.bnot 4694]
def bytes4577 : Bytes := ("    let r00001257: u32 = !r00001256;\n" : String).toByteArray.data.toList
theorem checked4577 : bytes4577=statementBytes 4695 (op4577.map lower) ∧ bytes4577.length=37 := by core033_kernel_decide
def op4578 : List WordIR.Op := [.bxor 4693 4695]
def bytes4578 : Bytes := ("    let r00001258: u32 = r00001255 ^ r00001257;\n" : String).toByteArray.data.toList
theorem checked4578 : bytes4578=statementBytes 4696 (op4578.map lower) ∧ bytes4578.length=48 := by core033_kernel_decide
def op4579 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4579 : Bytes := ("    let r00001259: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4579 : bytes4579=statementBytes 4697 (op4579.map lower) ∧ bytes4579.length=41 := by core033_kernel_decide
def op4580 : List WordIR.Op := [.bxor 1299 4697]
def bytes4580 : Bytes := ("    let r0000125a: u32 = r00000513 ^ r00001259;\n" : String).toByteArray.data.toList
theorem checked4580 : bytes4580=statementBytes 4698 (op4580.map lower) ∧ bytes4580.length=48 := by core033_kernel_decide
def op4581 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4581 : Bytes := ("    let r0000125b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4581 : bytes4581=statementBytes 4699 (op4581.map lower) ∧ bytes4581.length=41 := by core033_kernel_decide
def op4582 : List WordIR.Op := [.bnot 4699]
def bytes4582 : Bytes := ("    let r0000125c: u32 = !r0000125b;\n" : String).toByteArray.data.toList
theorem checked4582 : bytes4582=statementBytes 4700 (op4582.map lower) ∧ bytes4582.length=37 := by core033_kernel_decide
def op4583 : List WordIR.Op := [.badd 4698 4700]
def bytes4583 : Bytes := ("    let r0000125d: u32 = r0000125a.wrapping_add(r0000125c);\n" : String).toByteArray.data.toList
theorem checked4583 : bytes4583=statementBytes 4701 (op4583.map lower) ∧ bytes4583.length=60 := by core033_kernel_decide
def op4584 : List WordIR.Op := [.bnot 4701]
def bytes4584 : Bytes := ("    let r0000125e: u32 = !r0000125d;\n" : String).toByteArray.data.toList
theorem checked4584 : bytes4584=statementBytes 4702 (op4584.map lower) ∧ bytes4584.length=37 := by core033_kernel_decide
def op4585 : List WordIR.Op := [.band 4696 4702]
def bytes4585 : Bytes := ("    let r0000125f: u32 = r00001258 & r0000125e;\n" : String).toByteArray.data.toList
theorem checked4585 : bytes4585=statementBytes 4703 (op4585.map lower) ∧ bytes4585.length=48 := by core033_kernel_decide
def op4586 : List WordIR.Op := [.bxor 4691 4703]
def bytes4586 : Bytes := ("    let r00001260: u32 = r00001253 ^ r0000125f;\n" : String).toByteArray.data.toList
theorem checked4586 : bytes4586=statementBytes 4704 (op4586.map lower) ∧ bytes4586.length=48 := by core033_kernel_decide
def op4587 : List WordIR.Op := [.shr 4704 31]
def bytes4587 : Bytes := ("    let r00001261: u32 = r00001260 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4587 : bytes4587=statementBytes 4705 (op4587.map lower) ∧ bytes4587.length=54 := by core033_kernel_decide
def op4588 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4588 : Bytes := ("    let r00001262: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4588 : bytes4588=statementBytes 4706 (op4588.map lower) ∧ bytes4588.length=41 := by core033_kernel_decide
def op4589 : List WordIR.Op := [.bxor 4705 4706]
def bytes4589 : Bytes := ("    let r00001263: u32 = r00001261 ^ r00001262;\n" : String).toByteArray.data.toList
theorem checked4589 : bytes4589=statementBytes 4707 (op4589.map lower) ∧ bytes4589.length=48 := by core033_kernel_decide
def op4590 : List WordIR.Op := [.bnot 4707]
def bytes4590 : Bytes := ("    let r00001264: u32 = !r00001263;\n" : String).toByteArray.data.toList
theorem checked4590 : bytes4590=statementBytes 4708 (op4590.map lower) ∧ bytes4590.length=37 := by core033_kernel_decide
def op4591 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4591 : Bytes := ("    let r00001265: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4591 : bytes4591=statementBytes 4709 (op4591.map lower) ∧ bytes4591.length=41 := by core033_kernel_decide
def op4592 : List WordIR.Op := [.badd 4708 4709]
def bytes4592 : Bytes := ("    let r00001266: u32 = r00001264.wrapping_add(r00001265);\n" : String).toByteArray.data.toList
theorem checked4592 : bytes4592=statementBytes 4710 (op4592.map lower) ∧ bytes4592.length=60 := by core033_kernel_decide
def op4593 : List WordIR.Op := [.band 4710 2762]
def bytes4593 : Bytes := ("    let r00001267: u32 = r00001266 & r00000aca;\n" : String).toByteArray.data.toList
theorem checked4593 : bytes4593=statementBytes 4711 (op4593.map lower) ∧ bytes4593.length=48 := by core033_kernel_decide
def op4594 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4594 : Bytes := ("    let r00001268: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4594 : bytes4594=statementBytes 4712 (op4594.map lower) ∧ bytes4594.length=41 := by core033_kernel_decide
def op4595 : List WordIR.Op := [.bxor 1299 4712]
def bytes4595 : Bytes := ("    let r00001269: u32 = r00000513 ^ r00001268;\n" : String).toByteArray.data.toList
theorem checked4595 : bytes4595=statementBytes 4713 (op4595.map lower) ∧ bytes4595.length=48 := by core033_kernel_decide
def op4596 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4596 : Bytes := ("    let r0000126a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4596 : bytes4596=statementBytes 4714 (op4596.map lower) ∧ bytes4596.length=41 := by core033_kernel_decide
def op4597 : List WordIR.Op := [.bnot 4714]
def bytes4597 : Bytes := ("    let r0000126b: u32 = !r0000126a;\n" : String).toByteArray.data.toList
theorem checked4597 : bytes4597=statementBytes 4715 (op4597.map lower) ∧ bytes4597.length=37 := by core033_kernel_decide
def op4598 : List WordIR.Op := [.band 4713 4715]
def bytes4598 : Bytes := ("    let r0000126c: u32 = r00001269 & r0000126b;\n" : String).toByteArray.data.toList
theorem checked4598 : bytes4598=statementBytes 4716 (op4598.map lower) ∧ bytes4598.length=48 := by core033_kernel_decide
def op4599 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4599 : Bytes := ("    let r0000126d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4599 : bytes4599=statementBytes 4717 (op4599.map lower) ∧ bytes4599.length=41 := by core033_kernel_decide
def op4600 : List WordIR.Op := [.bxor 1299 4717]
def bytes4600 : Bytes := ("    let r0000126e: u32 = r00000513 ^ r0000126d;\n" : String).toByteArray.data.toList
theorem checked4600 : bytes4600=statementBytes 4718 (op4600.map lower) ∧ bytes4600.length=48 := by core033_kernel_decide
def op4601 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4601 : Bytes := ("    let r0000126f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4601 : bytes4601=statementBytes 4719 (op4601.map lower) ∧ bytes4601.length=41 := by core033_kernel_decide
def op4602 : List WordIR.Op := [.bnot 4719]
def bytes4602 : Bytes := ("    let r00001270: u32 = !r0000126f;\n" : String).toByteArray.data.toList
theorem checked4602 : bytes4602=statementBytes 4720 (op4602.map lower) ∧ bytes4602.length=37 := by core033_kernel_decide
def op4603 : List WordIR.Op := [.bxor 4718 4720]
def bytes4603 : Bytes := ("    let r00001271: u32 = r0000126e ^ r00001270;\n" : String).toByteArray.data.toList
theorem checked4603 : bytes4603=statementBytes 4721 (op4603.map lower) ∧ bytes4603.length=48 := by core033_kernel_decide
def op4604 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4604 : Bytes := ("    let r00001272: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4604 : bytes4604=statementBytes 4722 (op4604.map lower) ∧ bytes4604.length=41 := by core033_kernel_decide
def op4605 : List WordIR.Op := [.bxor 1299 4722]
def bytes4605 : Bytes := ("    let r00001273: u32 = r00000513 ^ r00001272;\n" : String).toByteArray.data.toList
theorem checked4605 : bytes4605=statementBytes 4723 (op4605.map lower) ∧ bytes4605.length=48 := by core033_kernel_decide
def op4606 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4606 : Bytes := ("    let r00001274: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4606 : bytes4606=statementBytes 4724 (op4606.map lower) ∧ bytes4606.length=41 := by core033_kernel_decide
def op4607 : List WordIR.Op := [.bnot 4724]
def bytes4607 : Bytes := ("    let r00001275: u32 = !r00001274;\n" : String).toByteArray.data.toList
theorem checked4607 : bytes4607=statementBytes 4725 (op4607.map lower) ∧ bytes4607.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4544,op4545,op4546,op4547,op4548,op4549,op4550,op4551,op4552,op4553,op4554,op4555,op4556,op4557,op4558,op4559,op4560,op4561,op4562,op4563,op4564,op4565,op4566,op4567,op4568,op4569,op4570,op4571,op4572,op4573,op4574,op4575,op4576,op4577,op4578,op4579,op4580,op4581,op4582,op4583,op4584,op4585,op4586,op4587,op4588,op4589,op4590,op4591,op4592,op4593,op4594,op4595,op4596,op4597,op4598,op4599,op4600,op4601,op4602,op4603,op4604,op4605,op4606,op4607]
def chunks : List Bytes := [bytes4544,bytes4545,bytes4546,bytes4547,bytes4548,bytes4549,bytes4550,bytes4551,bytes4552,bytes4553,bytes4554,bytes4555,bytes4556,bytes4557,bytes4558,bytes4559,bytes4560,bytes4561,bytes4562,bytes4563,bytes4564,bytes4565,bytes4566,bytes4567,bytes4568,bytes4569,bytes4570,bytes4571,bytes4572,bytes4573,bytes4574,bytes4575,bytes4576,bytes4577,bytes4578,bytes4579,bytes4580,bytes4581,bytes4582,bytes4583,bytes4584,bytes4585,bytes4586,bytes4587,bytes4588,bytes4589,bytes4590,bytes4591,bytes4592,bytes4593,bytes4594,bytes4595,bytes4596,bytes4597,bytes4598,bytes4599,bytes4600,bytes4601,bytes4602,bytes4603,bytes4604,bytes4605,bytes4606,bytes4607]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4662 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4544.1 (.cons _ _ _ _ _ checked4545.1 (.cons _ _ _ _ _ checked4546.1 (.cons _ _ _ _ _ checked4547.1 (.cons _ _ _ _ _ checked4548.1 (.cons _ _ _ _ _ checked4549.1 (.cons _ _ _ _ _ checked4550.1 (.cons _ _ _ _ _ checked4551.1 (.cons _ _ _ _ _ checked4552.1 (.cons _ _ _ _ _ checked4553.1 (.cons _ _ _ _ _ checked4554.1 (.cons _ _ _ _ _ checked4555.1 (.cons _ _ _ _ _ checked4556.1 (.cons _ _ _ _ _ checked4557.1 (.cons _ _ _ _ _ checked4558.1 (.cons _ _ _ _ _ checked4559.1 (.cons _ _ _ _ _ checked4560.1 (.cons _ _ _ _ _ checked4561.1 (.cons _ _ _ _ _ checked4562.1 (.cons _ _ _ _ _ checked4563.1 (.cons _ _ _ _ _ checked4564.1 (.cons _ _ _ _ _ checked4565.1 (.cons _ _ _ _ _ checked4566.1 (.cons _ _ _ _ _ checked4567.1 (.cons _ _ _ _ _ checked4568.1 (.cons _ _ _ _ _ checked4569.1 (.cons _ _ _ _ _ checked4570.1 (.cons _ _ _ _ _ checked4571.1 (.cons _ _ _ _ _ checked4572.1 (.cons _ _ _ _ _ checked4573.1 (.cons _ _ _ _ _ checked4574.1 (.cons _ _ _ _ _ checked4575.1 (.cons _ _ _ _ _ checked4576.1 (.cons _ _ _ _ _ checked4577.1 (.cons _ _ _ _ _ checked4578.1 (.cons _ _ _ _ _ checked4579.1 (.cons _ _ _ _ _ checked4580.1 (.cons _ _ _ _ _ checked4581.1 (.cons _ _ _ _ _ checked4582.1 (.cons _ _ _ _ _ checked4583.1 (.cons _ _ _ _ _ checked4584.1 (.cons _ _ _ _ _ checked4585.1 (.cons _ _ _ _ _ checked4586.1 (.cons _ _ _ _ _ checked4587.1 (.cons _ _ _ _ _ checked4588.1 (.cons _ _ _ _ _ checked4589.1 (.cons _ _ _ _ _ checked4590.1 (.cons _ _ _ _ _ checked4591.1 (.cons _ _ _ _ _ checked4592.1 (.cons _ _ _ _ _ checked4593.1 (.cons _ _ _ _ _ checked4594.1 (.cons _ _ _ _ _ checked4595.1 (.cons _ _ _ _ _ checked4596.1 (.cons _ _ _ _ _ checked4597.1 (.cons _ _ _ _ _ checked4598.1 (.cons _ _ _ _ _ checked4599.1 (.cons _ _ _ _ _ checked4600.1 (.cons _ _ _ _ _ checked4601.1 (.cons _ _ _ _ _ checked4602.1 (.cons _ _ _ _ _ checked4603.1 (.cons _ _ _ _ _ checked4604.1 (.cons _ _ _ _ _ checked4605.1 (.cons _ _ _ _ _ checked4606.1 (.cons _ _ _ _ _ checked4607.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4662 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4544.2,checked4545.2,checked4546.2,checked4547.2,checked4548.2,checked4549.2,checked4550.2,checked4551.2,checked4552.2,checked4553.2,checked4554.2,checked4555.2,checked4556.2,checked4557.2,checked4558.2,checked4559.2,checked4560.2,checked4561.2,checked4562.2,checked4563.2,checked4564.2,checked4565.2,checked4566.2,checked4567.2,checked4568.2,checked4569.2,checked4570.2,checked4571.2,checked4572.2,checked4573.2,checked4574.2,checked4575.2,checked4576.2,checked4577.2,checked4578.2,checked4579.2,checked4580.2,checked4581.2,checked4582.2,checked4583.2,checked4584.2,checked4585.2,checked4586.2,checked4587.2,checked4588.2,checked4589.2,checked4590.2,checked4591.2,checked4592.2,checked4593.2,checked4594.2,checked4595.2,checked4596.2,checked4597.2,checked4598.2,checked4599.2,checked4600.2,checked4601.2,checked4602.2,checked4603.2,checked4604.2,checked4605.2,checked4606.2,checked4607.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup71
