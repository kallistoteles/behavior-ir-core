import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup72
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4608 : List WordIR.Op := [.badd 4649 4650]
def bytes4608 : Bytes := ("    let r0000122b: u32 = r00001229.wrapping_add(r0000122a);\n" : String).toByteArray.data.toList
theorem checked4608 : bytes4608=statementBytes 4651 (op4608.map lower) ∧ bytes4608.length=60 := by core033_kernel_decide
def op4609 : List WordIR.Op := [.band 4651 1625]
def bytes4609 : Bytes := ("    let r0000122c: u32 = r0000122b & r00000659;\n" : String).toByteArray.data.toList
theorem checked4609 : bytes4609=statementBytes 4652 (op4609.map lower) ∧ bytes4609.length=48 := by core033_kernel_decide
def op4610 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4610 : Bytes := ("    let r0000122d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4610 : bytes4610=statementBytes 4653 (op4610.map lower) ∧ bytes4610.length=41 := by core033_kernel_decide
def op4611 : List WordIR.Op := [.bxor 96 4653]
def bytes4611 : Bytes := ("    let r0000122e: u32 = r00000060 ^ r0000122d;\n" : String).toByteArray.data.toList
theorem checked4611 : bytes4611=statementBytes 4654 (op4611.map lower) ∧ bytes4611.length=48 := by core033_kernel_decide
def op4612 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4612 : Bytes := ("    let r0000122f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4612 : bytes4612=statementBytes 4655 (op4612.map lower) ∧ bytes4612.length=41 := by core033_kernel_decide
def op4613 : List WordIR.Op := [.bnot 4655]
def bytes4613 : Bytes := ("    let r00001230: u32 = !r0000122f;\n" : String).toByteArray.data.toList
theorem checked4613 : bytes4613=statementBytes 4656 (op4613.map lower) ∧ bytes4613.length=37 := by core033_kernel_decide
def op4614 : List WordIR.Op := [.band 4654 4656]
def bytes4614 : Bytes := ("    let r00001231: u32 = r0000122e & r00001230;\n" : String).toByteArray.data.toList
theorem checked4614 : bytes4614=statementBytes 4657 (op4614.map lower) ∧ bytes4614.length=48 := by core033_kernel_decide
def op4615 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4615 : Bytes := ("    let r00001232: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4615 : bytes4615=statementBytes 4658 (op4615.map lower) ∧ bytes4615.length=41 := by core033_kernel_decide
def op4616 : List WordIR.Op := [.bxor 96 4658]
def bytes4616 : Bytes := ("    let r00001233: u32 = r00000060 ^ r00001232;\n" : String).toByteArray.data.toList
theorem checked4616 : bytes4616=statementBytes 4659 (op4616.map lower) ∧ bytes4616.length=48 := by core033_kernel_decide
def op4617 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4617 : Bytes := ("    let r00001234: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4617 : bytes4617=statementBytes 4660 (op4617.map lower) ∧ bytes4617.length=41 := by core033_kernel_decide
def op4618 : List WordIR.Op := [.bnot 4660]
def bytes4618 : Bytes := ("    let r00001235: u32 = !r00001234;\n" : String).toByteArray.data.toList
theorem checked4618 : bytes4618=statementBytes 4661 (op4618.map lower) ∧ bytes4618.length=37 := by core033_kernel_decide
def op4619 : List WordIR.Op := [.bxor 4659 4661]
def bytes4619 : Bytes := ("    let r00001236: u32 = r00001233 ^ r00001235;\n" : String).toByteArray.data.toList
theorem checked4619 : bytes4619=statementBytes 4662 (op4619.map lower) ∧ bytes4619.length=48 := by core033_kernel_decide
def op4620 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4620 : Bytes := ("    let r00001237: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4620 : bytes4620=statementBytes 4663 (op4620.map lower) ∧ bytes4620.length=41 := by core033_kernel_decide
def op4621 : List WordIR.Op := [.bxor 96 4663]
def bytes4621 : Bytes := ("    let r00001238: u32 = r00000060 ^ r00001237;\n" : String).toByteArray.data.toList
theorem checked4621 : bytes4621=statementBytes 4664 (op4621.map lower) ∧ bytes4621.length=48 := by core033_kernel_decide
def op4622 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4622 : Bytes := ("    let r00001239: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4622 : bytes4622=statementBytes 4665 (op4622.map lower) ∧ bytes4622.length=41 := by core033_kernel_decide
def op4623 : List WordIR.Op := [.bnot 4665]
def bytes4623 : Bytes := ("    let r0000123a: u32 = !r00001239;\n" : String).toByteArray.data.toList
theorem checked4623 : bytes4623=statementBytes 4666 (op4623.map lower) ∧ bytes4623.length=37 := by core033_kernel_decide
def op4624 : List WordIR.Op := [.badd 4664 4666]
def bytes4624 : Bytes := ("    let r0000123b: u32 = r00001238.wrapping_add(r0000123a);\n" : String).toByteArray.data.toList
theorem checked4624 : bytes4624=statementBytes 4667 (op4624.map lower) ∧ bytes4624.length=60 := by core033_kernel_decide
def op4625 : List WordIR.Op := [.bnot 4667]
def bytes4625 : Bytes := ("    let r0000123c: u32 = !r0000123b;\n" : String).toByteArray.data.toList
theorem checked4625 : bytes4625=statementBytes 4668 (op4625.map lower) ∧ bytes4625.length=37 := by core033_kernel_decide
def op4626 : List WordIR.Op := [.band 4662 4668]
def bytes4626 : Bytes := ("    let r0000123d: u32 = r00001236 & r0000123c;\n" : String).toByteArray.data.toList
theorem checked4626 : bytes4626=statementBytes 4669 (op4626.map lower) ∧ bytes4626.length=48 := by core033_kernel_decide
def op4627 : List WordIR.Op := [.bxor 4657 4669]
def bytes4627 : Bytes := ("    let r0000123e: u32 = r00001231 ^ r0000123d;\n" : String).toByteArray.data.toList
theorem checked4627 : bytes4627=statementBytes 4670 (op4627.map lower) ∧ bytes4627.length=48 := by core033_kernel_decide
def op4628 : List WordIR.Op := [.shr 4670 31]
def bytes4628 : Bytes := ("    let r0000123f: u32 = r0000123e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4628 : bytes4628=statementBytes 4671 (op4628.map lower) ∧ bytes4628.length=54 := by core033_kernel_decide
def op4629 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4629 : Bytes := ("    let r00001240: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4629 : bytes4629=statementBytes 4672 (op4629.map lower) ∧ bytes4629.length=41 := by core033_kernel_decide
def op4630 : List WordIR.Op := [.bxor 4671 4672]
def bytes4630 : Bytes := ("    let r00001241: u32 = r0000123f ^ r00001240;\n" : String).toByteArray.data.toList
theorem checked4630 : bytes4630=statementBytes 4673 (op4630.map lower) ∧ bytes4630.length=48 := by core033_kernel_decide
def op4631 : List WordIR.Op := [.bnot 4673]
def bytes4631 : Bytes := ("    let r00001242: u32 = !r00001241;\n" : String).toByteArray.data.toList
theorem checked4631 : bytes4631=statementBytes 4674 (op4631.map lower) ∧ bytes4631.length=37 := by core033_kernel_decide
def op4632 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4632 : Bytes := ("    let r00001243: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4632 : bytes4632=statementBytes 4675 (op4632.map lower) ∧ bytes4632.length=41 := by core033_kernel_decide
def op4633 : List WordIR.Op := [.badd 4674 4675]
def bytes4633 : Bytes := ("    let r00001244: u32 = r00001242.wrapping_add(r00001243);\n" : String).toByteArray.data.toList
theorem checked4633 : bytes4633=statementBytes 4676 (op4633.map lower) ∧ bytes4633.length=60 := by core033_kernel_decide
def op4634 : List WordIR.Op := [.bnot 4676]
def bytes4634 : Bytes := ("    let r00001245: u32 = !r00001244;\n" : String).toByteArray.data.toList
theorem checked4634 : bytes4634=statementBytes 4677 (op4634.map lower) ∧ bytes4634.length=37 := by core033_kernel_decide
def op4635 : List WordIR.Op := [.band 4677 1433]
def bytes4635 : Bytes := ("    let r00001246: u32 = r00001245 & r00000599;\n" : String).toByteArray.data.toList
theorem checked4635 : bytes4635=statementBytes 4678 (op4635.map lower) ∧ bytes4635.length=48 := by core033_kernel_decide
def op4636 : List WordIR.Op := [.bxor 4652 4678]
def bytes4636 : Bytes := ("    let r00001247: u32 = r0000122c ^ r00001246;\n" : String).toByteArray.data.toList
theorem checked4636 : bytes4636=statementBytes 4679 (op4636.map lower) ∧ bytes4636.length=48 := by core033_kernel_decide
def op4637 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4637 : Bytes := ("    let r00001248: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4637 : bytes4637=statementBytes 4680 (op4637.map lower) ∧ bytes4637.length=41 := by core033_kernel_decide
def op4638 : List WordIR.Op := [.bxor 96 4680]
def bytes4638 : Bytes := ("    let r00001249: u32 = r00000060 ^ r00001248;\n" : String).toByteArray.data.toList
theorem checked4638 : bytes4638=statementBytes 4681 (op4638.map lower) ∧ bytes4638.length=48 := by core033_kernel_decide
def op4639 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4639 : Bytes := ("    let r0000124a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4639 : bytes4639=statementBytes 4682 (op4639.map lower) ∧ bytes4639.length=41 := by core033_kernel_decide
def op4640 : List WordIR.Op := [.bnot 4682]
def bytes4640 : Bytes := ("    let r0000124b: u32 = !r0000124a;\n" : String).toByteArray.data.toList
theorem checked4640 : bytes4640=statementBytes 4683 (op4640.map lower) ∧ bytes4640.length=37 := by core033_kernel_decide
def op4641 : List WordIR.Op := [.band 4681 4683]
def bytes4641 : Bytes := ("    let r0000124c: u32 = r00001249 & r0000124b;\n" : String).toByteArray.data.toList
theorem checked4641 : bytes4641=statementBytes 4684 (op4641.map lower) ∧ bytes4641.length=48 := by core033_kernel_decide
def op4642 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4642 : Bytes := ("    let r0000124d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4642 : bytes4642=statementBytes 4685 (op4642.map lower) ∧ bytes4642.length=41 := by core033_kernel_decide
def op4643 : List WordIR.Op := [.bxor 96 4685]
def bytes4643 : Bytes := ("    let r0000124e: u32 = r00000060 ^ r0000124d;\n" : String).toByteArray.data.toList
theorem checked4643 : bytes4643=statementBytes 4686 (op4643.map lower) ∧ bytes4643.length=48 := by core033_kernel_decide
def op4644 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4644 : Bytes := ("    let r0000124f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4644 : bytes4644=statementBytes 4687 (op4644.map lower) ∧ bytes4644.length=41 := by core033_kernel_decide
def op4645 : List WordIR.Op := [.bnot 4687]
def bytes4645 : Bytes := ("    let r00001250: u32 = !r0000124f;\n" : String).toByteArray.data.toList
theorem checked4645 : bytes4645=statementBytes 4688 (op4645.map lower) ∧ bytes4645.length=37 := by core033_kernel_decide
def op4646 : List WordIR.Op := [.bxor 4686 4688]
def bytes4646 : Bytes := ("    let r00001251: u32 = r0000124e ^ r00001250;\n" : String).toByteArray.data.toList
theorem checked4646 : bytes4646=statementBytes 4689 (op4646.map lower) ∧ bytes4646.length=48 := by core033_kernel_decide
def op4647 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4647 : Bytes := ("    let r00001252: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4647 : bytes4647=statementBytes 4690 (op4647.map lower) ∧ bytes4647.length=41 := by core033_kernel_decide
def op4648 : List WordIR.Op := [.bxor 96 4690]
def bytes4648 : Bytes := ("    let r00001253: u32 = r00000060 ^ r00001252;\n" : String).toByteArray.data.toList
theorem checked4648 : bytes4648=statementBytes 4691 (op4648.map lower) ∧ bytes4648.length=48 := by core033_kernel_decide
def op4649 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4649 : Bytes := ("    let r00001254: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4649 : bytes4649=statementBytes 4692 (op4649.map lower) ∧ bytes4649.length=41 := by core033_kernel_decide
def op4650 : List WordIR.Op := [.bnot 4692]
def bytes4650 : Bytes := ("    let r00001255: u32 = !r00001254;\n" : String).toByteArray.data.toList
theorem checked4650 : bytes4650=statementBytes 4693 (op4650.map lower) ∧ bytes4650.length=37 := by core033_kernel_decide
def op4651 : List WordIR.Op := [.badd 4691 4693]
def bytes4651 : Bytes := ("    let r00001256: u32 = r00001253.wrapping_add(r00001255);\n" : String).toByteArray.data.toList
theorem checked4651 : bytes4651=statementBytes 4694 (op4651.map lower) ∧ bytes4651.length=60 := by core033_kernel_decide
def op4652 : List WordIR.Op := [.bnot 4694]
def bytes4652 : Bytes := ("    let r00001257: u32 = !r00001256;\n" : String).toByteArray.data.toList
theorem checked4652 : bytes4652=statementBytes 4695 (op4652.map lower) ∧ bytes4652.length=37 := by core033_kernel_decide
def op4653 : List WordIR.Op := [.band 4689 4695]
def bytes4653 : Bytes := ("    let r00001258: u32 = r00001251 & r00001257;\n" : String).toByteArray.data.toList
theorem checked4653 : bytes4653=statementBytes 4696 (op4653.map lower) ∧ bytes4653.length=48 := by core033_kernel_decide
def op4654 : List WordIR.Op := [.bxor 4684 4696]
def bytes4654 : Bytes := ("    let r00001259: u32 = r0000124c ^ r00001258;\n" : String).toByteArray.data.toList
theorem checked4654 : bytes4654=statementBytes 4697 (op4654.map lower) ∧ bytes4654.length=48 := by core033_kernel_decide
def op4655 : List WordIR.Op := [.shr 4697 31]
def bytes4655 : Bytes := ("    let r0000125a: u32 = r00001259 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4655 : bytes4655=statementBytes 4698 (op4655.map lower) ∧ bytes4655.length=54 := by core033_kernel_decide
def op4656 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4656 : Bytes := ("    let r0000125b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4656 : bytes4656=statementBytes 4699 (op4656.map lower) ∧ bytes4656.length=41 := by core033_kernel_decide
def op4657 : List WordIR.Op := [.bxor 4698 4699]
def bytes4657 : Bytes := ("    let r0000125c: u32 = r0000125a ^ r0000125b;\n" : String).toByteArray.data.toList
theorem checked4657 : bytes4657=statementBytes 4700 (op4657.map lower) ∧ bytes4657.length=48 := by core033_kernel_decide
def op4658 : List WordIR.Op := [.bnot 4700]
def bytes4658 : Bytes := ("    let r0000125d: u32 = !r0000125c;\n" : String).toByteArray.data.toList
theorem checked4658 : bytes4658=statementBytes 4701 (op4658.map lower) ∧ bytes4658.length=37 := by core033_kernel_decide
def op4659 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4659 : Bytes := ("    let r0000125e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4659 : bytes4659=statementBytes 4702 (op4659.map lower) ∧ bytes4659.length=41 := by core033_kernel_decide
def op4660 : List WordIR.Op := [.badd 4701 4702]
def bytes4660 : Bytes := ("    let r0000125f: u32 = r0000125d.wrapping_add(r0000125e);\n" : String).toByteArray.data.toList
theorem checked4660 : bytes4660=statementBytes 4703 (op4660.map lower) ∧ bytes4660.length=60 := by core033_kernel_decide
def op4661 : List WordIR.Op := [.band 4703 1628]
def bytes4661 : Bytes := ("    let r00001260: u32 = r0000125f & r0000065c;\n" : String).toByteArray.data.toList
theorem checked4661 : bytes4661=statementBytes 4704 (op4661.map lower) ∧ bytes4661.length=48 := by core033_kernel_decide
def op4662 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4662 : Bytes := ("    let r00001261: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4662 : bytes4662=statementBytes 4705 (op4662.map lower) ∧ bytes4662.length=41 := by core033_kernel_decide
def op4663 : List WordIR.Op := [.bxor 96 4705]
def bytes4663 : Bytes := ("    let r00001262: u32 = r00000060 ^ r00001261;\n" : String).toByteArray.data.toList
theorem checked4663 : bytes4663=statementBytes 4706 (op4663.map lower) ∧ bytes4663.length=48 := by core033_kernel_decide
def op4664 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4664 : Bytes := ("    let r00001263: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4664 : bytes4664=statementBytes 4707 (op4664.map lower) ∧ bytes4664.length=41 := by core033_kernel_decide
def op4665 : List WordIR.Op := [.bnot 4707]
def bytes4665 : Bytes := ("    let r00001264: u32 = !r00001263;\n" : String).toByteArray.data.toList
theorem checked4665 : bytes4665=statementBytes 4708 (op4665.map lower) ∧ bytes4665.length=37 := by core033_kernel_decide
def op4666 : List WordIR.Op := [.band 4706 4708]
def bytes4666 : Bytes := ("    let r00001265: u32 = r00001262 & r00001264;\n" : String).toByteArray.data.toList
theorem checked4666 : bytes4666=statementBytes 4709 (op4666.map lower) ∧ bytes4666.length=48 := by core033_kernel_decide
def op4667 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4667 : Bytes := ("    let r00001266: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4667 : bytes4667=statementBytes 4710 (op4667.map lower) ∧ bytes4667.length=41 := by core033_kernel_decide
def op4668 : List WordIR.Op := [.bxor 96 4710]
def bytes4668 : Bytes := ("    let r00001267: u32 = r00000060 ^ r00001266;\n" : String).toByteArray.data.toList
theorem checked4668 : bytes4668=statementBytes 4711 (op4668.map lower) ∧ bytes4668.length=48 := by core033_kernel_decide
def op4669 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4669 : Bytes := ("    let r00001268: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4669 : bytes4669=statementBytes 4712 (op4669.map lower) ∧ bytes4669.length=41 := by core033_kernel_decide
def op4670 : List WordIR.Op := [.bnot 4712]
def bytes4670 : Bytes := ("    let r00001269: u32 = !r00001268;\n" : String).toByteArray.data.toList
theorem checked4670 : bytes4670=statementBytes 4713 (op4670.map lower) ∧ bytes4670.length=37 := by core033_kernel_decide
def op4671 : List WordIR.Op := [.bxor 4711 4713]
def bytes4671 : Bytes := ("    let r0000126a: u32 = r00001267 ^ r00001269;\n" : String).toByteArray.data.toList
theorem checked4671 : bytes4671=statementBytes 4714 (op4671.map lower) ∧ bytes4671.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4608,op4609,op4610,op4611,op4612,op4613,op4614,op4615,op4616,op4617,op4618,op4619,op4620,op4621,op4622,op4623,op4624,op4625,op4626,op4627,op4628,op4629,op4630,op4631,op4632,op4633,op4634,op4635,op4636,op4637,op4638,op4639,op4640,op4641,op4642,op4643,op4644,op4645,op4646,op4647,op4648,op4649,op4650,op4651,op4652,op4653,op4654,op4655,op4656,op4657,op4658,op4659,op4660,op4661,op4662,op4663,op4664,op4665,op4666,op4667,op4668,op4669,op4670,op4671]
def chunks : List Bytes := [bytes4608,bytes4609,bytes4610,bytes4611,bytes4612,bytes4613,bytes4614,bytes4615,bytes4616,bytes4617,bytes4618,bytes4619,bytes4620,bytes4621,bytes4622,bytes4623,bytes4624,bytes4625,bytes4626,bytes4627,bytes4628,bytes4629,bytes4630,bytes4631,bytes4632,bytes4633,bytes4634,bytes4635,bytes4636,bytes4637,bytes4638,bytes4639,bytes4640,bytes4641,bytes4642,bytes4643,bytes4644,bytes4645,bytes4646,bytes4647,bytes4648,bytes4649,bytes4650,bytes4651,bytes4652,bytes4653,bytes4654,bytes4655,bytes4656,bytes4657,bytes4658,bytes4659,bytes4660,bytes4661,bytes4662,bytes4663,bytes4664,bytes4665,bytes4666,bytes4667,bytes4668,bytes4669,bytes4670,bytes4671]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4651 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4608.1 (.cons _ _ _ _ _ checked4609.1 (.cons _ _ _ _ _ checked4610.1 (.cons _ _ _ _ _ checked4611.1 (.cons _ _ _ _ _ checked4612.1 (.cons _ _ _ _ _ checked4613.1 (.cons _ _ _ _ _ checked4614.1 (.cons _ _ _ _ _ checked4615.1 (.cons _ _ _ _ _ checked4616.1 (.cons _ _ _ _ _ checked4617.1 (.cons _ _ _ _ _ checked4618.1 (.cons _ _ _ _ _ checked4619.1 (.cons _ _ _ _ _ checked4620.1 (.cons _ _ _ _ _ checked4621.1 (.cons _ _ _ _ _ checked4622.1 (.cons _ _ _ _ _ checked4623.1 (.cons _ _ _ _ _ checked4624.1 (.cons _ _ _ _ _ checked4625.1 (.cons _ _ _ _ _ checked4626.1 (.cons _ _ _ _ _ checked4627.1 (.cons _ _ _ _ _ checked4628.1 (.cons _ _ _ _ _ checked4629.1 (.cons _ _ _ _ _ checked4630.1 (.cons _ _ _ _ _ checked4631.1 (.cons _ _ _ _ _ checked4632.1 (.cons _ _ _ _ _ checked4633.1 (.cons _ _ _ _ _ checked4634.1 (.cons _ _ _ _ _ checked4635.1 (.cons _ _ _ _ _ checked4636.1 (.cons _ _ _ _ _ checked4637.1 (.cons _ _ _ _ _ checked4638.1 (.cons _ _ _ _ _ checked4639.1 (.cons _ _ _ _ _ checked4640.1 (.cons _ _ _ _ _ checked4641.1 (.cons _ _ _ _ _ checked4642.1 (.cons _ _ _ _ _ checked4643.1 (.cons _ _ _ _ _ checked4644.1 (.cons _ _ _ _ _ checked4645.1 (.cons _ _ _ _ _ checked4646.1 (.cons _ _ _ _ _ checked4647.1 (.cons _ _ _ _ _ checked4648.1 (.cons _ _ _ _ _ checked4649.1 (.cons _ _ _ _ _ checked4650.1 (.cons _ _ _ _ _ checked4651.1 (.cons _ _ _ _ _ checked4652.1 (.cons _ _ _ _ _ checked4653.1 (.cons _ _ _ _ _ checked4654.1 (.cons _ _ _ _ _ checked4655.1 (.cons _ _ _ _ _ checked4656.1 (.cons _ _ _ _ _ checked4657.1 (.cons _ _ _ _ _ checked4658.1 (.cons _ _ _ _ _ checked4659.1 (.cons _ _ _ _ _ checked4660.1 (.cons _ _ _ _ _ checked4661.1 (.cons _ _ _ _ _ checked4662.1 (.cons _ _ _ _ _ checked4663.1 (.cons _ _ _ _ _ checked4664.1 (.cons _ _ _ _ _ checked4665.1 (.cons _ _ _ _ _ checked4666.1 (.cons _ _ _ _ _ checked4667.1 (.cons _ _ _ _ _ checked4668.1 (.cons _ _ _ _ _ checked4669.1 (.cons _ _ _ _ _ checked4670.1 (.cons _ _ _ _ _ checked4671.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4651 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4608.2,checked4609.2,checked4610.2,checked4611.2,checked4612.2,checked4613.2,checked4614.2,checked4615.2,checked4616.2,checked4617.2,checked4618.2,checked4619.2,checked4620.2,checked4621.2,checked4622.2,checked4623.2,checked4624.2,checked4625.2,checked4626.2,checked4627.2,checked4628.2,checked4629.2,checked4630.2,checked4631.2,checked4632.2,checked4633.2,checked4634.2,checked4635.2,checked4636.2,checked4637.2,checked4638.2,checked4639.2,checked4640.2,checked4641.2,checked4642.2,checked4643.2,checked4644.2,checked4645.2,checked4646.2,checked4647.2,checked4648.2,checked4649.2,checked4650.2,checked4651.2,checked4652.2,checked4653.2,checked4654.2,checked4655.2,checked4656.2,checked4657.2,checked4658.2,checked4659.2,checked4660.2,checked4661.2,checked4662.2,checked4663.2,checked4664.2,checked4665.2,checked4666.2,checked4667.2,checked4668.2,checked4669.2,checked4670.2,checked4671.2]
  decide
end ArtifactPathRoundDispatchGroup72
