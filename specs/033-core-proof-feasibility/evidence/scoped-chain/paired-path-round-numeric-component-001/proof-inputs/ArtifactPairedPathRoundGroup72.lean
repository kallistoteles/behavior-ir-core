import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup72
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4608 : List WordIR.Op := [.band 4703 2118]
def bytes4608 : Bytes := ("    let r00001260: u32 = r0000125f & r00000846;\n" : String).toByteArray.data.toList
theorem checked4608 : bytes4608=statementBytes 4704 (op4608.map lower) ∧ bytes4608.length=48 := by core033_kernel_decide
def op4609 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4609 : Bytes := ("    let r00001261: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4609 : bytes4609=statementBytes 4705 (op4609.map lower) ∧ bytes4609.length=41 := by core033_kernel_decide
def op4610 : List WordIR.Op := [.bxor 616 4705]
def bytes4610 : Bytes := ("    let r00001262: u32 = r00000268 ^ r00001261;\n" : String).toByteArray.data.toList
theorem checked4610 : bytes4610=statementBytes 4706 (op4610.map lower) ∧ bytes4610.length=48 := by core033_kernel_decide
def op4611 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4611 : Bytes := ("    let r00001263: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4611 : bytes4611=statementBytes 4707 (op4611.map lower) ∧ bytes4611.length=41 := by core033_kernel_decide
def op4612 : List WordIR.Op := [.bnot 4707]
def bytes4612 : Bytes := ("    let r00001264: u32 = !r00001263;\n" : String).toByteArray.data.toList
theorem checked4612 : bytes4612=statementBytes 4708 (op4612.map lower) ∧ bytes4612.length=37 := by core033_kernel_decide
def op4613 : List WordIR.Op := [.band 4706 4708]
def bytes4613 : Bytes := ("    let r00001265: u32 = r00001262 & r00001264;\n" : String).toByteArray.data.toList
theorem checked4613 : bytes4613=statementBytes 4709 (op4613.map lower) ∧ bytes4613.length=48 := by core033_kernel_decide
def op4614 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4614 : Bytes := ("    let r00001266: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4614 : bytes4614=statementBytes 4710 (op4614.map lower) ∧ bytes4614.length=41 := by core033_kernel_decide
def op4615 : List WordIR.Op := [.bxor 616 4710]
def bytes4615 : Bytes := ("    let r00001267: u32 = r00000268 ^ r00001266;\n" : String).toByteArray.data.toList
theorem checked4615 : bytes4615=statementBytes 4711 (op4615.map lower) ∧ bytes4615.length=48 := by core033_kernel_decide
def op4616 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4616 : Bytes := ("    let r00001268: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4616 : bytes4616=statementBytes 4712 (op4616.map lower) ∧ bytes4616.length=41 := by core033_kernel_decide
def op4617 : List WordIR.Op := [.bnot 4712]
def bytes4617 : Bytes := ("    let r00001269: u32 = !r00001268;\n" : String).toByteArray.data.toList
theorem checked4617 : bytes4617=statementBytes 4713 (op4617.map lower) ∧ bytes4617.length=37 := by core033_kernel_decide
def op4618 : List WordIR.Op := [.bxor 4711 4713]
def bytes4618 : Bytes := ("    let r0000126a: u32 = r00001267 ^ r00001269;\n" : String).toByteArray.data.toList
theorem checked4618 : bytes4618=statementBytes 4714 (op4618.map lower) ∧ bytes4618.length=48 := by core033_kernel_decide
def op4619 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4619 : Bytes := ("    let r0000126b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4619 : bytes4619=statementBytes 4715 (op4619.map lower) ∧ bytes4619.length=41 := by core033_kernel_decide
def op4620 : List WordIR.Op := [.bxor 616 4715]
def bytes4620 : Bytes := ("    let r0000126c: u32 = r00000268 ^ r0000126b;\n" : String).toByteArray.data.toList
theorem checked4620 : bytes4620=statementBytes 4716 (op4620.map lower) ∧ bytes4620.length=48 := by core033_kernel_decide
def op4621 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4621 : Bytes := ("    let r0000126d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4621 : bytes4621=statementBytes 4717 (op4621.map lower) ∧ bytes4621.length=41 := by core033_kernel_decide
def op4622 : List WordIR.Op := [.bnot 4717]
def bytes4622 : Bytes := ("    let r0000126e: u32 = !r0000126d;\n" : String).toByteArray.data.toList
theorem checked4622 : bytes4622=statementBytes 4718 (op4622.map lower) ∧ bytes4622.length=37 := by core033_kernel_decide
def op4623 : List WordIR.Op := [.badd 4716 4718]
def bytes4623 : Bytes := ("    let r0000126f: u32 = r0000126c.wrapping_add(r0000126e);\n" : String).toByteArray.data.toList
theorem checked4623 : bytes4623=statementBytes 4719 (op4623.map lower) ∧ bytes4623.length=60 := by core033_kernel_decide
def op4624 : List WordIR.Op := [.bnot 4719]
def bytes4624 : Bytes := ("    let r00001270: u32 = !r0000126f;\n" : String).toByteArray.data.toList
theorem checked4624 : bytes4624=statementBytes 4720 (op4624.map lower) ∧ bytes4624.length=37 := by core033_kernel_decide
def op4625 : List WordIR.Op := [.band 4714 4720]
def bytes4625 : Bytes := ("    let r00001271: u32 = r0000126a & r00001270;\n" : String).toByteArray.data.toList
theorem checked4625 : bytes4625=statementBytes 4721 (op4625.map lower) ∧ bytes4625.length=48 := by core033_kernel_decide
def op4626 : List WordIR.Op := [.bxor 4709 4721]
def bytes4626 : Bytes := ("    let r00001272: u32 = r00001265 ^ r00001271;\n" : String).toByteArray.data.toList
theorem checked4626 : bytes4626=statementBytes 4722 (op4626.map lower) ∧ bytes4626.length=48 := by core033_kernel_decide
def op4627 : List WordIR.Op := [.shr 4722 31]
def bytes4627 : Bytes := ("    let r00001273: u32 = r00001272 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4627 : bytes4627=statementBytes 4723 (op4627.map lower) ∧ bytes4627.length=54 := by core033_kernel_decide
def op4628 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4628 : Bytes := ("    let r00001274: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4628 : bytes4628=statementBytes 4724 (op4628.map lower) ∧ bytes4628.length=41 := by core033_kernel_decide
def op4629 : List WordIR.Op := [.bxor 4723 4724]
def bytes4629 : Bytes := ("    let r00001275: u32 = r00001273 ^ r00001274;\n" : String).toByteArray.data.toList
theorem checked4629 : bytes4629=statementBytes 4725 (op4629.map lower) ∧ bytes4629.length=48 := by core033_kernel_decide
def op4630 : List WordIR.Op := [.bnot 4725]
def bytes4630 : Bytes := ("    let r00001276: u32 = !r00001275;\n" : String).toByteArray.data.toList
theorem checked4630 : bytes4630=statementBytes 4726 (op4630.map lower) ∧ bytes4630.length=37 := by core033_kernel_decide
def op4631 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4631 : Bytes := ("    let r00001277: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4631 : bytes4631=statementBytes 4727 (op4631.map lower) ∧ bytes4631.length=41 := by core033_kernel_decide
def op4632 : List WordIR.Op := [.badd 4726 4727]
def bytes4632 : Bytes := ("    let r00001278: u32 = r00001276.wrapping_add(r00001277);\n" : String).toByteArray.data.toList
theorem checked4632 : bytes4632=statementBytes 4728 (op4632.map lower) ∧ bytes4632.length=60 := by core033_kernel_decide
def op4633 : List WordIR.Op := [.bnot 4728]
def bytes4633 : Bytes := ("    let r00001279: u32 = !r00001278;\n" : String).toByteArray.data.toList
theorem checked4633 : bytes4633=statementBytes 4729 (op4633.map lower) ∧ bytes4633.length=37 := by core033_kernel_decide
def op4634 : List WordIR.Op := [.band 4729 1926]
def bytes4634 : Bytes := ("    let r0000127a: u32 = r00001279 & r00000786;\n" : String).toByteArray.data.toList
theorem checked4634 : bytes4634=statementBytes 4730 (op4634.map lower) ∧ bytes4634.length=48 := by core033_kernel_decide
def op4635 : List WordIR.Op := [.bxor 4704 4730]
def bytes4635 : Bytes := ("    let r0000127b: u32 = r00001260 ^ r0000127a;\n" : String).toByteArray.data.toList
theorem checked4635 : bytes4635=statementBytes 4731 (op4635.map lower) ∧ bytes4635.length=48 := by core033_kernel_decide
def op4636 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4636 : Bytes := ("    let r0000127c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4636 : bytes4636=statementBytes 4732 (op4636.map lower) ∧ bytes4636.length=41 := by core033_kernel_decide
def op4637 : List WordIR.Op := [.bxor 616 4732]
def bytes4637 : Bytes := ("    let r0000127d: u32 = r00000268 ^ r0000127c;\n" : String).toByteArray.data.toList
theorem checked4637 : bytes4637=statementBytes 4733 (op4637.map lower) ∧ bytes4637.length=48 := by core033_kernel_decide
def op4638 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4638 : Bytes := ("    let r0000127e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4638 : bytes4638=statementBytes 4734 (op4638.map lower) ∧ bytes4638.length=41 := by core033_kernel_decide
def op4639 : List WordIR.Op := [.bnot 4734]
def bytes4639 : Bytes := ("    let r0000127f: u32 = !r0000127e;\n" : String).toByteArray.data.toList
theorem checked4639 : bytes4639=statementBytes 4735 (op4639.map lower) ∧ bytes4639.length=37 := by core033_kernel_decide
def op4640 : List WordIR.Op := [.band 4733 4735]
def bytes4640 : Bytes := ("    let r00001280: u32 = r0000127d & r0000127f;\n" : String).toByteArray.data.toList
theorem checked4640 : bytes4640=statementBytes 4736 (op4640.map lower) ∧ bytes4640.length=48 := by core033_kernel_decide
def op4641 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4641 : Bytes := ("    let r00001281: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4641 : bytes4641=statementBytes 4737 (op4641.map lower) ∧ bytes4641.length=41 := by core033_kernel_decide
def op4642 : List WordIR.Op := [.bxor 616 4737]
def bytes4642 : Bytes := ("    let r00001282: u32 = r00000268 ^ r00001281;\n" : String).toByteArray.data.toList
theorem checked4642 : bytes4642=statementBytes 4738 (op4642.map lower) ∧ bytes4642.length=48 := by core033_kernel_decide
def op4643 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4643 : Bytes := ("    let r00001283: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4643 : bytes4643=statementBytes 4739 (op4643.map lower) ∧ bytes4643.length=41 := by core033_kernel_decide
def op4644 : List WordIR.Op := [.bnot 4739]
def bytes4644 : Bytes := ("    let r00001284: u32 = !r00001283;\n" : String).toByteArray.data.toList
theorem checked4644 : bytes4644=statementBytes 4740 (op4644.map lower) ∧ bytes4644.length=37 := by core033_kernel_decide
def op4645 : List WordIR.Op := [.bxor 4738 4740]
def bytes4645 : Bytes := ("    let r00001285: u32 = r00001282 ^ r00001284;\n" : String).toByteArray.data.toList
theorem checked4645 : bytes4645=statementBytes 4741 (op4645.map lower) ∧ bytes4645.length=48 := by core033_kernel_decide
def op4646 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4646 : Bytes := ("    let r00001286: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4646 : bytes4646=statementBytes 4742 (op4646.map lower) ∧ bytes4646.length=41 := by core033_kernel_decide
def op4647 : List WordIR.Op := [.bxor 616 4742]
def bytes4647 : Bytes := ("    let r00001287: u32 = r00000268 ^ r00001286;\n" : String).toByteArray.data.toList
theorem checked4647 : bytes4647=statementBytes 4743 (op4647.map lower) ∧ bytes4647.length=48 := by core033_kernel_decide
def op4648 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4648 : Bytes := ("    let r00001288: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4648 : bytes4648=statementBytes 4744 (op4648.map lower) ∧ bytes4648.length=41 := by core033_kernel_decide
def op4649 : List WordIR.Op := [.bnot 4744]
def bytes4649 : Bytes := ("    let r00001289: u32 = !r00001288;\n" : String).toByteArray.data.toList
theorem checked4649 : bytes4649=statementBytes 4745 (op4649.map lower) ∧ bytes4649.length=37 := by core033_kernel_decide
def op4650 : List WordIR.Op := [.badd 4743 4745]
def bytes4650 : Bytes := ("    let r0000128a: u32 = r00001287.wrapping_add(r00001289);\n" : String).toByteArray.data.toList
theorem checked4650 : bytes4650=statementBytes 4746 (op4650.map lower) ∧ bytes4650.length=60 := by core033_kernel_decide
def op4651 : List WordIR.Op := [.bnot 4746]
def bytes4651 : Bytes := ("    let r0000128b: u32 = !r0000128a;\n" : String).toByteArray.data.toList
theorem checked4651 : bytes4651=statementBytes 4747 (op4651.map lower) ∧ bytes4651.length=37 := by core033_kernel_decide
def op4652 : List WordIR.Op := [.band 4741 4747]
def bytes4652 : Bytes := ("    let r0000128c: u32 = r00001285 & r0000128b;\n" : String).toByteArray.data.toList
theorem checked4652 : bytes4652=statementBytes 4748 (op4652.map lower) ∧ bytes4652.length=48 := by core033_kernel_decide
def op4653 : List WordIR.Op := [.bxor 4736 4748]
def bytes4653 : Bytes := ("    let r0000128d: u32 = r00001280 ^ r0000128c;\n" : String).toByteArray.data.toList
theorem checked4653 : bytes4653=statementBytes 4749 (op4653.map lower) ∧ bytes4653.length=48 := by core033_kernel_decide
def op4654 : List WordIR.Op := [.shr 4749 31]
def bytes4654 : Bytes := ("    let r0000128e: u32 = r0000128d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4654 : bytes4654=statementBytes 4750 (op4654.map lower) ∧ bytes4654.length=54 := by core033_kernel_decide
def op4655 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4655 : Bytes := ("    let r0000128f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4655 : bytes4655=statementBytes 4751 (op4655.map lower) ∧ bytes4655.length=41 := by core033_kernel_decide
def op4656 : List WordIR.Op := [.bxor 4750 4751]
def bytes4656 : Bytes := ("    let r00001290: u32 = r0000128e ^ r0000128f;\n" : String).toByteArray.data.toList
theorem checked4656 : bytes4656=statementBytes 4752 (op4656.map lower) ∧ bytes4656.length=48 := by core033_kernel_decide
def op4657 : List WordIR.Op := [.bnot 4752]
def bytes4657 : Bytes := ("    let r00001291: u32 = !r00001290;\n" : String).toByteArray.data.toList
theorem checked4657 : bytes4657=statementBytes 4753 (op4657.map lower) ∧ bytes4657.length=37 := by core033_kernel_decide
def op4658 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4658 : Bytes := ("    let r00001292: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4658 : bytes4658=statementBytes 4754 (op4658.map lower) ∧ bytes4658.length=41 := by core033_kernel_decide
def op4659 : List WordIR.Op := [.badd 4753 4754]
def bytes4659 : Bytes := ("    let r00001293: u32 = r00001291.wrapping_add(r00001292);\n" : String).toByteArray.data.toList
theorem checked4659 : bytes4659=statementBytes 4755 (op4659.map lower) ∧ bytes4659.length=60 := by core033_kernel_decide
def op4660 : List WordIR.Op := [.band 4755 2121]
def bytes4660 : Bytes := ("    let r00001294: u32 = r00001293 & r00000849;\n" : String).toByteArray.data.toList
theorem checked4660 : bytes4660=statementBytes 4756 (op4660.map lower) ∧ bytes4660.length=48 := by core033_kernel_decide
def op4661 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4661 : Bytes := ("    let r00001295: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4661 : bytes4661=statementBytes 4757 (op4661.map lower) ∧ bytes4661.length=41 := by core033_kernel_decide
def op4662 : List WordIR.Op := [.bxor 616 4757]
def bytes4662 : Bytes := ("    let r00001296: u32 = r00000268 ^ r00001295;\n" : String).toByteArray.data.toList
theorem checked4662 : bytes4662=statementBytes 4758 (op4662.map lower) ∧ bytes4662.length=48 := by core033_kernel_decide
def op4663 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4663 : Bytes := ("    let r00001297: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4663 : bytes4663=statementBytes 4759 (op4663.map lower) ∧ bytes4663.length=41 := by core033_kernel_decide
def op4664 : List WordIR.Op := [.bnot 4759]
def bytes4664 : Bytes := ("    let r00001298: u32 = !r00001297;\n" : String).toByteArray.data.toList
theorem checked4664 : bytes4664=statementBytes 4760 (op4664.map lower) ∧ bytes4664.length=37 := by core033_kernel_decide
def op4665 : List WordIR.Op := [.band 4758 4760]
def bytes4665 : Bytes := ("    let r00001299: u32 = r00001296 & r00001298;\n" : String).toByteArray.data.toList
theorem checked4665 : bytes4665=statementBytes 4761 (op4665.map lower) ∧ bytes4665.length=48 := by core033_kernel_decide
def op4666 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4666 : Bytes := ("    let r0000129a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4666 : bytes4666=statementBytes 4762 (op4666.map lower) ∧ bytes4666.length=41 := by core033_kernel_decide
def op4667 : List WordIR.Op := [.bxor 616 4762]
def bytes4667 : Bytes := ("    let r0000129b: u32 = r00000268 ^ r0000129a;\n" : String).toByteArray.data.toList
theorem checked4667 : bytes4667=statementBytes 4763 (op4667.map lower) ∧ bytes4667.length=48 := by core033_kernel_decide
def op4668 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4668 : Bytes := ("    let r0000129c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4668 : bytes4668=statementBytes 4764 (op4668.map lower) ∧ bytes4668.length=41 := by core033_kernel_decide
def op4669 : List WordIR.Op := [.bnot 4764]
def bytes4669 : Bytes := ("    let r0000129d: u32 = !r0000129c;\n" : String).toByteArray.data.toList
theorem checked4669 : bytes4669=statementBytes 4765 (op4669.map lower) ∧ bytes4669.length=37 := by core033_kernel_decide
def op4670 : List WordIR.Op := [.bxor 4763 4765]
def bytes4670 : Bytes := ("    let r0000129e: u32 = r0000129b ^ r0000129d;\n" : String).toByteArray.data.toList
theorem checked4670 : bytes4670=statementBytes 4766 (op4670.map lower) ∧ bytes4670.length=48 := by core033_kernel_decide
def op4671 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4671 : Bytes := ("    let r0000129f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4671 : bytes4671=statementBytes 4767 (op4671.map lower) ∧ bytes4671.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4608,op4609,op4610,op4611,op4612,op4613,op4614,op4615,op4616,op4617,op4618,op4619,op4620,op4621,op4622,op4623,op4624,op4625,op4626,op4627,op4628,op4629,op4630,op4631,op4632,op4633,op4634,op4635,op4636,op4637,op4638,op4639,op4640,op4641,op4642,op4643,op4644,op4645,op4646,op4647,op4648,op4649,op4650,op4651,op4652,op4653,op4654,op4655,op4656,op4657,op4658,op4659,op4660,op4661,op4662,op4663,op4664,op4665,op4666,op4667,op4668,op4669,op4670,op4671]
def chunks : List Bytes := [bytes4608,bytes4609,bytes4610,bytes4611,bytes4612,bytes4613,bytes4614,bytes4615,bytes4616,bytes4617,bytes4618,bytes4619,bytes4620,bytes4621,bytes4622,bytes4623,bytes4624,bytes4625,bytes4626,bytes4627,bytes4628,bytes4629,bytes4630,bytes4631,bytes4632,bytes4633,bytes4634,bytes4635,bytes4636,bytes4637,bytes4638,bytes4639,bytes4640,bytes4641,bytes4642,bytes4643,bytes4644,bytes4645,bytes4646,bytes4647,bytes4648,bytes4649,bytes4650,bytes4651,bytes4652,bytes4653,bytes4654,bytes4655,bytes4656,bytes4657,bytes4658,bytes4659,bytes4660,bytes4661,bytes4662,bytes4663,bytes4664,bytes4665,bytes4666,bytes4667,bytes4668,bytes4669,bytes4670,bytes4671]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4704 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4608.1 (.cons _ _ _ _ _ checked4609.1 (.cons _ _ _ _ _ checked4610.1 (.cons _ _ _ _ _ checked4611.1 (.cons _ _ _ _ _ checked4612.1 (.cons _ _ _ _ _ checked4613.1 (.cons _ _ _ _ _ checked4614.1 (.cons _ _ _ _ _ checked4615.1 (.cons _ _ _ _ _ checked4616.1 (.cons _ _ _ _ _ checked4617.1 (.cons _ _ _ _ _ checked4618.1 (.cons _ _ _ _ _ checked4619.1 (.cons _ _ _ _ _ checked4620.1 (.cons _ _ _ _ _ checked4621.1 (.cons _ _ _ _ _ checked4622.1 (.cons _ _ _ _ _ checked4623.1 (.cons _ _ _ _ _ checked4624.1 (.cons _ _ _ _ _ checked4625.1 (.cons _ _ _ _ _ checked4626.1 (.cons _ _ _ _ _ checked4627.1 (.cons _ _ _ _ _ checked4628.1 (.cons _ _ _ _ _ checked4629.1 (.cons _ _ _ _ _ checked4630.1 (.cons _ _ _ _ _ checked4631.1 (.cons _ _ _ _ _ checked4632.1 (.cons _ _ _ _ _ checked4633.1 (.cons _ _ _ _ _ checked4634.1 (.cons _ _ _ _ _ checked4635.1 (.cons _ _ _ _ _ checked4636.1 (.cons _ _ _ _ _ checked4637.1 (.cons _ _ _ _ _ checked4638.1 (.cons _ _ _ _ _ checked4639.1 (.cons _ _ _ _ _ checked4640.1 (.cons _ _ _ _ _ checked4641.1 (.cons _ _ _ _ _ checked4642.1 (.cons _ _ _ _ _ checked4643.1 (.cons _ _ _ _ _ checked4644.1 (.cons _ _ _ _ _ checked4645.1 (.cons _ _ _ _ _ checked4646.1 (.cons _ _ _ _ _ checked4647.1 (.cons _ _ _ _ _ checked4648.1 (.cons _ _ _ _ _ checked4649.1 (.cons _ _ _ _ _ checked4650.1 (.cons _ _ _ _ _ checked4651.1 (.cons _ _ _ _ _ checked4652.1 (.cons _ _ _ _ _ checked4653.1 (.cons _ _ _ _ _ checked4654.1 (.cons _ _ _ _ _ checked4655.1 (.cons _ _ _ _ _ checked4656.1 (.cons _ _ _ _ _ checked4657.1 (.cons _ _ _ _ _ checked4658.1 (.cons _ _ _ _ _ checked4659.1 (.cons _ _ _ _ _ checked4660.1 (.cons _ _ _ _ _ checked4661.1 (.cons _ _ _ _ _ checked4662.1 (.cons _ _ _ _ _ checked4663.1 (.cons _ _ _ _ _ checked4664.1 (.cons _ _ _ _ _ checked4665.1 (.cons _ _ _ _ _ checked4666.1 (.cons _ _ _ _ _ checked4667.1 (.cons _ _ _ _ _ checked4668.1 (.cons _ _ _ _ _ checked4669.1 (.cons _ _ _ _ _ checked4670.1 (.cons _ _ _ _ _ checked4671.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4704 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4608.2,checked4609.2,checked4610.2,checked4611.2,checked4612.2,checked4613.2,checked4614.2,checked4615.2,checked4616.2,checked4617.2,checked4618.2,checked4619.2,checked4620.2,checked4621.2,checked4622.2,checked4623.2,checked4624.2,checked4625.2,checked4626.2,checked4627.2,checked4628.2,checked4629.2,checked4630.2,checked4631.2,checked4632.2,checked4633.2,checked4634.2,checked4635.2,checked4636.2,checked4637.2,checked4638.2,checked4639.2,checked4640.2,checked4641.2,checked4642.2,checked4643.2,checked4644.2,checked4645.2,checked4646.2,checked4647.2,checked4648.2,checked4649.2,checked4650.2,checked4651.2,checked4652.2,checked4653.2,checked4654.2,checked4655.2,checked4656.2,checked4657.2,checked4658.2,checked4659.2,checked4660.2,checked4661.2,checked4662.2,checked4663.2,checked4664.2,checked4665.2,checked4666.2,checked4667.2,checked4668.2,checked4669.2,checked4670.2,checked4671.2]
  decide
end ArtifactPairedPathRoundGroup72
