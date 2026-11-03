import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup73
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4672 : List WordIR.Op := [.bxor 0 4714]
def bytes4672 : Bytes := ("    let r0000126b: u32 = r00000000 ^ r0000126a;\n" : String).toByteArray.data.toList
theorem checked4672 : bytes4672=statementBytes 4715 (op4672.map lower) ∧ bytes4672.length=48 := by core033_kernel_decide
def op4673 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4673 : Bytes := ("    let r0000126c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4673 : bytes4673=statementBytes 4716 (op4673.map lower) ∧ bytes4673.length=41 := by core033_kernel_decide
def op4674 : List WordIR.Op := [.bnot 4716]
def bytes4674 : Bytes := ("    let r0000126d: u32 = !r0000126c;\n" : String).toByteArray.data.toList
theorem checked4674 : bytes4674=statementBytes 4717 (op4674.map lower) ∧ bytes4674.length=37 := by core033_kernel_decide
def op4675 : List WordIR.Op := [.band 4715 4717]
def bytes4675 : Bytes := ("    let r0000126e: u32 = r0000126b & r0000126d;\n" : String).toByteArray.data.toList
theorem checked4675 : bytes4675=statementBytes 4718 (op4675.map lower) ∧ bytes4675.length=48 := by core033_kernel_decide
def op4676 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4676 : Bytes := ("    let r0000126f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4676 : bytes4676=statementBytes 4719 (op4676.map lower) ∧ bytes4676.length=41 := by core033_kernel_decide
def op4677 : List WordIR.Op := [.bxor 0 4719]
def bytes4677 : Bytes := ("    let r00001270: u32 = r00000000 ^ r0000126f;\n" : String).toByteArray.data.toList
theorem checked4677 : bytes4677=statementBytes 4720 (op4677.map lower) ∧ bytes4677.length=48 := by core033_kernel_decide
def op4678 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4678 : Bytes := ("    let r00001271: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4678 : bytes4678=statementBytes 4721 (op4678.map lower) ∧ bytes4678.length=41 := by core033_kernel_decide
def op4679 : List WordIR.Op := [.bnot 4721]
def bytes4679 : Bytes := ("    let r00001272: u32 = !r00001271;\n" : String).toByteArray.data.toList
theorem checked4679 : bytes4679=statementBytes 4722 (op4679.map lower) ∧ bytes4679.length=37 := by core033_kernel_decide
def op4680 : List WordIR.Op := [.bxor 4720 4722]
def bytes4680 : Bytes := ("    let r00001273: u32 = r00001270 ^ r00001272;\n" : String).toByteArray.data.toList
theorem checked4680 : bytes4680=statementBytes 4723 (op4680.map lower) ∧ bytes4680.length=48 := by core033_kernel_decide
def op4681 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4681 : Bytes := ("    let r00001274: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4681 : bytes4681=statementBytes 4724 (op4681.map lower) ∧ bytes4681.length=41 := by core033_kernel_decide
def op4682 : List WordIR.Op := [.bxor 0 4724]
def bytes4682 : Bytes := ("    let r00001275: u32 = r00000000 ^ r00001274;\n" : String).toByteArray.data.toList
theorem checked4682 : bytes4682=statementBytes 4725 (op4682.map lower) ∧ bytes4682.length=48 := by core033_kernel_decide
def op4683 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4683 : Bytes := ("    let r00001276: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4683 : bytes4683=statementBytes 4726 (op4683.map lower) ∧ bytes4683.length=41 := by core033_kernel_decide
def op4684 : List WordIR.Op := [.bnot 4726]
def bytes4684 : Bytes := ("    let r00001277: u32 = !r00001276;\n" : String).toByteArray.data.toList
theorem checked4684 : bytes4684=statementBytes 4727 (op4684.map lower) ∧ bytes4684.length=37 := by core033_kernel_decide
def op4685 : List WordIR.Op := [.badd 4725 4727]
def bytes4685 : Bytes := ("    let r00001278: u32 = r00001275.wrapping_add(r00001277);\n" : String).toByteArray.data.toList
theorem checked4685 : bytes4685=statementBytes 4728 (op4685.map lower) ∧ bytes4685.length=60 := by core033_kernel_decide
def op4686 : List WordIR.Op := [.bnot 4728]
def bytes4686 : Bytes := ("    let r00001279: u32 = !r00001278;\n" : String).toByteArray.data.toList
theorem checked4686 : bytes4686=statementBytes 4729 (op4686.map lower) ∧ bytes4686.length=37 := by core033_kernel_decide
def op4687 : List WordIR.Op := [.band 4723 4729]
def bytes4687 : Bytes := ("    let r0000127a: u32 = r00001273 & r00001279;\n" : String).toByteArray.data.toList
theorem checked4687 : bytes4687=statementBytes 4730 (op4687.map lower) ∧ bytes4687.length=48 := by core033_kernel_decide
def op4688 : List WordIR.Op := [.bxor 4718 4730]
def bytes4688 : Bytes := ("    let r0000127b: u32 = r0000126e ^ r0000127a;\n" : String).toByteArray.data.toList
theorem checked4688 : bytes4688=statementBytes 4731 (op4688.map lower) ∧ bytes4688.length=48 := by core033_kernel_decide
def op4689 : List WordIR.Op := [.shr 4731 31]
def bytes4689 : Bytes := ("    let r0000127c: u32 = r0000127b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4689 : bytes4689=statementBytes 4732 (op4689.map lower) ∧ bytes4689.length=54 := by core033_kernel_decide
def op4690 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4690 : Bytes := ("    let r0000127d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4690 : bytes4690=statementBytes 4733 (op4690.map lower) ∧ bytes4690.length=41 := by core033_kernel_decide
def op4691 : List WordIR.Op := [.bxor 4732 4733]
def bytes4691 : Bytes := ("    let r0000127e: u32 = r0000127c ^ r0000127d;\n" : String).toByteArray.data.toList
theorem checked4691 : bytes4691=statementBytes 4734 (op4691.map lower) ∧ bytes4691.length=48 := by core033_kernel_decide
def op4692 : List WordIR.Op := [.bnot 4734]
def bytes4692 : Bytes := ("    let r0000127f: u32 = !r0000127e;\n" : String).toByteArray.data.toList
theorem checked4692 : bytes4692=statementBytes 4735 (op4692.map lower) ∧ bytes4692.length=37 := by core033_kernel_decide
def op4693 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4693 : Bytes := ("    let r00001280: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4693 : bytes4693=statementBytes 4736 (op4693.map lower) ∧ bytes4693.length=41 := by core033_kernel_decide
def op4694 : List WordIR.Op := [.badd 4735 4736]
def bytes4694 : Bytes := ("    let r00001281: u32 = r0000127f.wrapping_add(r00001280);\n" : String).toByteArray.data.toList
theorem checked4694 : bytes4694=statementBytes 4737 (op4694.map lower) ∧ bytes4694.length=60 := by core033_kernel_decide
def op4695 : List WordIR.Op := [.bnot 4737]
def bytes4695 : Bytes := ("    let r00001282: u32 = !r00001281;\n" : String).toByteArray.data.toList
theorem checked4695 : bytes4695=statementBytes 4738 (op4695.map lower) ∧ bytes4695.length=37 := by core033_kernel_decide
def op4696 : List WordIR.Op := [.band 4738 950]
def bytes4696 : Bytes := ("    let r00001283: u32 = r00001282 & r000003b6;\n" : String).toByteArray.data.toList
theorem checked4696 : bytes4696=statementBytes 4739 (op4696.map lower) ∧ bytes4696.length=48 := by core033_kernel_decide
def op4697 : List WordIR.Op := [.bxor 4713 4739]
def bytes4697 : Bytes := ("    let r00001284: u32 = r00001269 ^ r00001283;\n" : String).toByteArray.data.toList
theorem checked4697 : bytes4697=statementBytes 4740 (op4697.map lower) ∧ bytes4697.length=48 := by core033_kernel_decide
def op4698 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4698 : Bytes := ("    let r00001285: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4698 : bytes4698=statementBytes 4741 (op4698.map lower) ∧ bytes4698.length=41 := by core033_kernel_decide
def op4699 : List WordIR.Op := [.bxor 0 4741]
def bytes4699 : Bytes := ("    let r00001286: u32 = r00000000 ^ r00001285;\n" : String).toByteArray.data.toList
theorem checked4699 : bytes4699=statementBytes 4742 (op4699.map lower) ∧ bytes4699.length=48 := by core033_kernel_decide
def op4700 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4700 : Bytes := ("    let r00001287: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4700 : bytes4700=statementBytes 4743 (op4700.map lower) ∧ bytes4700.length=41 := by core033_kernel_decide
def op4701 : List WordIR.Op := [.bnot 4743]
def bytes4701 : Bytes := ("    let r00001288: u32 = !r00001287;\n" : String).toByteArray.data.toList
theorem checked4701 : bytes4701=statementBytes 4744 (op4701.map lower) ∧ bytes4701.length=37 := by core033_kernel_decide
def op4702 : List WordIR.Op := [.band 4742 4744]
def bytes4702 : Bytes := ("    let r00001289: u32 = r00001286 & r00001288;\n" : String).toByteArray.data.toList
theorem checked4702 : bytes4702=statementBytes 4745 (op4702.map lower) ∧ bytes4702.length=48 := by core033_kernel_decide
def op4703 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4703 : Bytes := ("    let r0000128a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4703 : bytes4703=statementBytes 4746 (op4703.map lower) ∧ bytes4703.length=41 := by core033_kernel_decide
def op4704 : List WordIR.Op := [.bxor 0 4746]
def bytes4704 : Bytes := ("    let r0000128b: u32 = r00000000 ^ r0000128a;\n" : String).toByteArray.data.toList
theorem checked4704 : bytes4704=statementBytes 4747 (op4704.map lower) ∧ bytes4704.length=48 := by core033_kernel_decide
def op4705 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4705 : Bytes := ("    let r0000128c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4705 : bytes4705=statementBytes 4748 (op4705.map lower) ∧ bytes4705.length=41 := by core033_kernel_decide
def op4706 : List WordIR.Op := [.bnot 4748]
def bytes4706 : Bytes := ("    let r0000128d: u32 = !r0000128c;\n" : String).toByteArray.data.toList
theorem checked4706 : bytes4706=statementBytes 4749 (op4706.map lower) ∧ bytes4706.length=37 := by core033_kernel_decide
def op4707 : List WordIR.Op := [.bxor 4747 4749]
def bytes4707 : Bytes := ("    let r0000128e: u32 = r0000128b ^ r0000128d;\n" : String).toByteArray.data.toList
theorem checked4707 : bytes4707=statementBytes 4750 (op4707.map lower) ∧ bytes4707.length=48 := by core033_kernel_decide
def op4708 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4708 : Bytes := ("    let r0000128f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4708 : bytes4708=statementBytes 4751 (op4708.map lower) ∧ bytes4708.length=41 := by core033_kernel_decide
def op4709 : List WordIR.Op := [.bxor 0 4751]
def bytes4709 : Bytes := ("    let r00001290: u32 = r00000000 ^ r0000128f;\n" : String).toByteArray.data.toList
theorem checked4709 : bytes4709=statementBytes 4752 (op4709.map lower) ∧ bytes4709.length=48 := by core033_kernel_decide
def op4710 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4710 : Bytes := ("    let r00001291: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4710 : bytes4710=statementBytes 4753 (op4710.map lower) ∧ bytes4710.length=41 := by core033_kernel_decide
def op4711 : List WordIR.Op := [.bnot 4753]
def bytes4711 : Bytes := ("    let r00001292: u32 = !r00001291;\n" : String).toByteArray.data.toList
theorem checked4711 : bytes4711=statementBytes 4754 (op4711.map lower) ∧ bytes4711.length=37 := by core033_kernel_decide
def op4712 : List WordIR.Op := [.badd 4752 4754]
def bytes4712 : Bytes := ("    let r00001293: u32 = r00001290.wrapping_add(r00001292);\n" : String).toByteArray.data.toList
theorem checked4712 : bytes4712=statementBytes 4755 (op4712.map lower) ∧ bytes4712.length=60 := by core033_kernel_decide
def op4713 : List WordIR.Op := [.bnot 4755]
def bytes4713 : Bytes := ("    let r00001294: u32 = !r00001293;\n" : String).toByteArray.data.toList
theorem checked4713 : bytes4713=statementBytes 4756 (op4713.map lower) ∧ bytes4713.length=37 := by core033_kernel_decide
def op4714 : List WordIR.Op := [.band 4750 4756]
def bytes4714 : Bytes := ("    let r00001295: u32 = r0000128e & r00001294;\n" : String).toByteArray.data.toList
theorem checked4714 : bytes4714=statementBytes 4757 (op4714.map lower) ∧ bytes4714.length=48 := by core033_kernel_decide
def op4715 : List WordIR.Op := [.bxor 4745 4757]
def bytes4715 : Bytes := ("    let r00001296: u32 = r00001289 ^ r00001295;\n" : String).toByteArray.data.toList
theorem checked4715 : bytes4715=statementBytes 4758 (op4715.map lower) ∧ bytes4715.length=48 := by core033_kernel_decide
def op4716 : List WordIR.Op := [.shr 4758 31]
def bytes4716 : Bytes := ("    let r00001297: u32 = r00001296 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4716 : bytes4716=statementBytes 4759 (op4716.map lower) ∧ bytes4716.length=54 := by core033_kernel_decide
def op4717 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4717 : Bytes := ("    let r00001298: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4717 : bytes4717=statementBytes 4760 (op4717.map lower) ∧ bytes4717.length=41 := by core033_kernel_decide
def op4718 : List WordIR.Op := [.bxor 4759 4760]
def bytes4718 : Bytes := ("    let r00001299: u32 = r00001297 ^ r00001298;\n" : String).toByteArray.data.toList
theorem checked4718 : bytes4718=statementBytes 4761 (op4718.map lower) ∧ bytes4718.length=48 := by core033_kernel_decide
def op4719 : List WordIR.Op := [.bnot 4761]
def bytes4719 : Bytes := ("    let r0000129a: u32 = !r00001299;\n" : String).toByteArray.data.toList
theorem checked4719 : bytes4719=statementBytes 4762 (op4719.map lower) ∧ bytes4719.length=37 := by core033_kernel_decide
def op4720 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4720 : Bytes := ("    let r0000129b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4720 : bytes4720=statementBytes 4763 (op4720.map lower) ∧ bytes4720.length=41 := by core033_kernel_decide
def op4721 : List WordIR.Op := [.badd 4762 4763]
def bytes4721 : Bytes := ("    let r0000129c: u32 = r0000129a.wrapping_add(r0000129b);\n" : String).toByteArray.data.toList
theorem checked4721 : bytes4721=statementBytes 4764 (op4721.map lower) ∧ bytes4721.length=60 := by core033_kernel_decide
def op4722 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4722 : Bytes := ("    let r0000129d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4722 : bytes4722=statementBytes 4765 (op4722.map lower) ∧ bytes4722.length=41 := by core033_kernel_decide
def op4723 : List WordIR.Op := [.band 4764 4765]
def bytes4723 : Bytes := ("    let r0000129e: u32 = r0000129c & r0000129d;\n" : String).toByteArray.data.toList
theorem checked4723 : bytes4723=statementBytes 4766 (op4723.map lower) ∧ bytes4723.length=48 := by core033_kernel_decide
def op4724 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4724 : Bytes := ("    let r0000129f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4724 : bytes4724=statementBytes 4767 (op4724.map lower) ∧ bytes4724.length=41 := by core033_kernel_decide
def op4725 : List WordIR.Op := [.bxor 0 4767]
def bytes4725 : Bytes := ("    let r000012a0: u32 = r00000000 ^ r0000129f;\n" : String).toByteArray.data.toList
theorem checked4725 : bytes4725=statementBytes 4768 (op4725.map lower) ∧ bytes4725.length=48 := by core033_kernel_decide
def op4726 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4726 : Bytes := ("    let r000012a1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4726 : bytes4726=statementBytes 4769 (op4726.map lower) ∧ bytes4726.length=41 := by core033_kernel_decide
def op4727 : List WordIR.Op := [.bnot 4769]
def bytes4727 : Bytes := ("    let r000012a2: u32 = !r000012a1;\n" : String).toByteArray.data.toList
theorem checked4727 : bytes4727=statementBytes 4770 (op4727.map lower) ∧ bytes4727.length=37 := by core033_kernel_decide
def op4728 : List WordIR.Op := [.band 4768 4770]
def bytes4728 : Bytes := ("    let r000012a3: u32 = r000012a0 & r000012a2;\n" : String).toByteArray.data.toList
theorem checked4728 : bytes4728=statementBytes 4771 (op4728.map lower) ∧ bytes4728.length=48 := by core033_kernel_decide
def op4729 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4729 : Bytes := ("    let r000012a4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4729 : bytes4729=statementBytes 4772 (op4729.map lower) ∧ bytes4729.length=41 := by core033_kernel_decide
def op4730 : List WordIR.Op := [.bxor 0 4772]
def bytes4730 : Bytes := ("    let r000012a5: u32 = r00000000 ^ r000012a4;\n" : String).toByteArray.data.toList
theorem checked4730 : bytes4730=statementBytes 4773 (op4730.map lower) ∧ bytes4730.length=48 := by core033_kernel_decide
def op4731 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4731 : Bytes := ("    let r000012a6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4731 : bytes4731=statementBytes 4774 (op4731.map lower) ∧ bytes4731.length=41 := by core033_kernel_decide
def op4732 : List WordIR.Op := [.bnot 4774]
def bytes4732 : Bytes := ("    let r000012a7: u32 = !r000012a6;\n" : String).toByteArray.data.toList
theorem checked4732 : bytes4732=statementBytes 4775 (op4732.map lower) ∧ bytes4732.length=37 := by core033_kernel_decide
def op4733 : List WordIR.Op := [.bxor 4773 4775]
def bytes4733 : Bytes := ("    let r000012a8: u32 = r000012a5 ^ r000012a7;\n" : String).toByteArray.data.toList
theorem checked4733 : bytes4733=statementBytes 4776 (op4733.map lower) ∧ bytes4733.length=48 := by core033_kernel_decide
def op4734 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4734 : Bytes := ("    let r000012a9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4734 : bytes4734=statementBytes 4777 (op4734.map lower) ∧ bytes4734.length=41 := by core033_kernel_decide
def op4735 : List WordIR.Op := [.bxor 0 4777]
def bytes4735 : Bytes := ("    let r000012aa: u32 = r00000000 ^ r000012a9;\n" : String).toByteArray.data.toList
theorem checked4735 : bytes4735=statementBytes 4778 (op4735.map lower) ∧ bytes4735.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4672,op4673,op4674,op4675,op4676,op4677,op4678,op4679,op4680,op4681,op4682,op4683,op4684,op4685,op4686,op4687,op4688,op4689,op4690,op4691,op4692,op4693,op4694,op4695,op4696,op4697,op4698,op4699,op4700,op4701,op4702,op4703,op4704,op4705,op4706,op4707,op4708,op4709,op4710,op4711,op4712,op4713,op4714,op4715,op4716,op4717,op4718,op4719,op4720,op4721,op4722,op4723,op4724,op4725,op4726,op4727,op4728,op4729,op4730,op4731,op4732,op4733,op4734,op4735]
def chunks : List Bytes := [bytes4672,bytes4673,bytes4674,bytes4675,bytes4676,bytes4677,bytes4678,bytes4679,bytes4680,bytes4681,bytes4682,bytes4683,bytes4684,bytes4685,bytes4686,bytes4687,bytes4688,bytes4689,bytes4690,bytes4691,bytes4692,bytes4693,bytes4694,bytes4695,bytes4696,bytes4697,bytes4698,bytes4699,bytes4700,bytes4701,bytes4702,bytes4703,bytes4704,bytes4705,bytes4706,bytes4707,bytes4708,bytes4709,bytes4710,bytes4711,bytes4712,bytes4713,bytes4714,bytes4715,bytes4716,bytes4717,bytes4718,bytes4719,bytes4720,bytes4721,bytes4722,bytes4723,bytes4724,bytes4725,bytes4726,bytes4727,bytes4728,bytes4729,bytes4730,bytes4731,bytes4732,bytes4733,bytes4734,bytes4735]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4715 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4672.1 (.cons _ _ _ _ _ checked4673.1 (.cons _ _ _ _ _ checked4674.1 (.cons _ _ _ _ _ checked4675.1 (.cons _ _ _ _ _ checked4676.1 (.cons _ _ _ _ _ checked4677.1 (.cons _ _ _ _ _ checked4678.1 (.cons _ _ _ _ _ checked4679.1 (.cons _ _ _ _ _ checked4680.1 (.cons _ _ _ _ _ checked4681.1 (.cons _ _ _ _ _ checked4682.1 (.cons _ _ _ _ _ checked4683.1 (.cons _ _ _ _ _ checked4684.1 (.cons _ _ _ _ _ checked4685.1 (.cons _ _ _ _ _ checked4686.1 (.cons _ _ _ _ _ checked4687.1 (.cons _ _ _ _ _ checked4688.1 (.cons _ _ _ _ _ checked4689.1 (.cons _ _ _ _ _ checked4690.1 (.cons _ _ _ _ _ checked4691.1 (.cons _ _ _ _ _ checked4692.1 (.cons _ _ _ _ _ checked4693.1 (.cons _ _ _ _ _ checked4694.1 (.cons _ _ _ _ _ checked4695.1 (.cons _ _ _ _ _ checked4696.1 (.cons _ _ _ _ _ checked4697.1 (.cons _ _ _ _ _ checked4698.1 (.cons _ _ _ _ _ checked4699.1 (.cons _ _ _ _ _ checked4700.1 (.cons _ _ _ _ _ checked4701.1 (.cons _ _ _ _ _ checked4702.1 (.cons _ _ _ _ _ checked4703.1 (.cons _ _ _ _ _ checked4704.1 (.cons _ _ _ _ _ checked4705.1 (.cons _ _ _ _ _ checked4706.1 (.cons _ _ _ _ _ checked4707.1 (.cons _ _ _ _ _ checked4708.1 (.cons _ _ _ _ _ checked4709.1 (.cons _ _ _ _ _ checked4710.1 (.cons _ _ _ _ _ checked4711.1 (.cons _ _ _ _ _ checked4712.1 (.cons _ _ _ _ _ checked4713.1 (.cons _ _ _ _ _ checked4714.1 (.cons _ _ _ _ _ checked4715.1 (.cons _ _ _ _ _ checked4716.1 (.cons _ _ _ _ _ checked4717.1 (.cons _ _ _ _ _ checked4718.1 (.cons _ _ _ _ _ checked4719.1 (.cons _ _ _ _ _ checked4720.1 (.cons _ _ _ _ _ checked4721.1 (.cons _ _ _ _ _ checked4722.1 (.cons _ _ _ _ _ checked4723.1 (.cons _ _ _ _ _ checked4724.1 (.cons _ _ _ _ _ checked4725.1 (.cons _ _ _ _ _ checked4726.1 (.cons _ _ _ _ _ checked4727.1 (.cons _ _ _ _ _ checked4728.1 (.cons _ _ _ _ _ checked4729.1 (.cons _ _ _ _ _ checked4730.1 (.cons _ _ _ _ _ checked4731.1 (.cons _ _ _ _ _ checked4732.1 (.cons _ _ _ _ _ checked4733.1 (.cons _ _ _ _ _ checked4734.1 (.cons _ _ _ _ _ checked4735.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4715 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4672.2,checked4673.2,checked4674.2,checked4675.2,checked4676.2,checked4677.2,checked4678.2,checked4679.2,checked4680.2,checked4681.2,checked4682.2,checked4683.2,checked4684.2,checked4685.2,checked4686.2,checked4687.2,checked4688.2,checked4689.2,checked4690.2,checked4691.2,checked4692.2,checked4693.2,checked4694.2,checked4695.2,checked4696.2,checked4697.2,checked4698.2,checked4699.2,checked4700.2,checked4701.2,checked4702.2,checked4703.2,checked4704.2,checked4705.2,checked4706.2,checked4707.2,checked4708.2,checked4709.2,checked4710.2,checked4711.2,checked4712.2,checked4713.2,checked4714.2,checked4715.2,checked4716.2,checked4717.2,checked4718.2,checked4719.2,checked4720.2,checked4721.2,checked4722.2,checked4723.2,checked4724.2,checked4725.2,checked4726.2,checked4727.2,checked4728.2,checked4729.2,checked4730.2,checked4731.2,checked4732.2,checked4733.2,checked4734.2,checked4735.2]
  decide
end ArtifactFrameHashControllerGroup73
