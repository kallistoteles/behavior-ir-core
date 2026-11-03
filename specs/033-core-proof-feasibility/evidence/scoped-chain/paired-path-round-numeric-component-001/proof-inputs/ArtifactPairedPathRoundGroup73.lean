import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup73
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4672 : List WordIR.Op := [.bxor 616 4767]
def bytes4672 : Bytes := ("    let r000012a0: u32 = r00000268 ^ r0000129f;\n" : String).toByteArray.data.toList
theorem checked4672 : bytes4672=statementBytes 4768 (op4672.map lower) ∧ bytes4672.length=48 := by core033_kernel_decide
def op4673 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4673 : Bytes := ("    let r000012a1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4673 : bytes4673=statementBytes 4769 (op4673.map lower) ∧ bytes4673.length=41 := by core033_kernel_decide
def op4674 : List WordIR.Op := [.bnot 4769]
def bytes4674 : Bytes := ("    let r000012a2: u32 = !r000012a1;\n" : String).toByteArray.data.toList
theorem checked4674 : bytes4674=statementBytes 4770 (op4674.map lower) ∧ bytes4674.length=37 := by core033_kernel_decide
def op4675 : List WordIR.Op := [.badd 4768 4770]
def bytes4675 : Bytes := ("    let r000012a3: u32 = r000012a0.wrapping_add(r000012a2);\n" : String).toByteArray.data.toList
theorem checked4675 : bytes4675=statementBytes 4771 (op4675.map lower) ∧ bytes4675.length=60 := by core033_kernel_decide
def op4676 : List WordIR.Op := [.bnot 4771]
def bytes4676 : Bytes := ("    let r000012a4: u32 = !r000012a3;\n" : String).toByteArray.data.toList
theorem checked4676 : bytes4676=statementBytes 4772 (op4676.map lower) ∧ bytes4676.length=37 := by core033_kernel_decide
def op4677 : List WordIR.Op := [.band 4766 4772]
def bytes4677 : Bytes := ("    let r000012a5: u32 = r0000129e & r000012a4;\n" : String).toByteArray.data.toList
theorem checked4677 : bytes4677=statementBytes 4773 (op4677.map lower) ∧ bytes4677.length=48 := by core033_kernel_decide
def op4678 : List WordIR.Op := [.bxor 4761 4773]
def bytes4678 : Bytes := ("    let r000012a6: u32 = r00001299 ^ r000012a5;\n" : String).toByteArray.data.toList
theorem checked4678 : bytes4678=statementBytes 4774 (op4678.map lower) ∧ bytes4678.length=48 := by core033_kernel_decide
def op4679 : List WordIR.Op := [.shr 4774 31]
def bytes4679 : Bytes := ("    let r000012a7: u32 = r000012a6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4679 : bytes4679=statementBytes 4775 (op4679.map lower) ∧ bytes4679.length=54 := by core033_kernel_decide
def op4680 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4680 : Bytes := ("    let r000012a8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4680 : bytes4680=statementBytes 4776 (op4680.map lower) ∧ bytes4680.length=41 := by core033_kernel_decide
def op4681 : List WordIR.Op := [.bxor 4775 4776]
def bytes4681 : Bytes := ("    let r000012a9: u32 = r000012a7 ^ r000012a8;\n" : String).toByteArray.data.toList
theorem checked4681 : bytes4681=statementBytes 4777 (op4681.map lower) ∧ bytes4681.length=48 := by core033_kernel_decide
def op4682 : List WordIR.Op := [.bnot 4777]
def bytes4682 : Bytes := ("    let r000012aa: u32 = !r000012a9;\n" : String).toByteArray.data.toList
theorem checked4682 : bytes4682=statementBytes 4778 (op4682.map lower) ∧ bytes4682.length=37 := by core033_kernel_decide
def op4683 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4683 : Bytes := ("    let r000012ab: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4683 : bytes4683=statementBytes 4779 (op4683.map lower) ∧ bytes4683.length=41 := by core033_kernel_decide
def op4684 : List WordIR.Op := [.badd 4778 4779]
def bytes4684 : Bytes := ("    let r000012ac: u32 = r000012aa.wrapping_add(r000012ab);\n" : String).toByteArray.data.toList
theorem checked4684 : bytes4684=statementBytes 4780 (op4684.map lower) ∧ bytes4684.length=60 := by core033_kernel_decide
def op4685 : List WordIR.Op := [.bnot 4780]
def bytes4685 : Bytes := ("    let r000012ad: u32 = !r000012ac;\n" : String).toByteArray.data.toList
theorem checked4685 : bytes4685=statementBytes 4781 (op4685.map lower) ∧ bytes4685.length=37 := by core033_kernel_decide
def op4686 : List WordIR.Op := [.band 4781 1929]
def bytes4686 : Bytes := ("    let r000012ae: u32 = r000012ad & r00000789;\n" : String).toByteArray.data.toList
theorem checked4686 : bytes4686=statementBytes 4782 (op4686.map lower) ∧ bytes4686.length=48 := by core033_kernel_decide
def op4687 : List WordIR.Op := [.bxor 4756 4782]
def bytes4687 : Bytes := ("    let r000012af: u32 = r00001294 ^ r000012ae;\n" : String).toByteArray.data.toList
theorem checked4687 : bytes4687=statementBytes 4783 (op4687.map lower) ∧ bytes4687.length=48 := by core033_kernel_decide
def op4688 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4688 : Bytes := ("    let r000012b0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4688 : bytes4688=statementBytes 4784 (op4688.map lower) ∧ bytes4688.length=41 := by core033_kernel_decide
def op4689 : List WordIR.Op := [.bxor 616 4784]
def bytes4689 : Bytes := ("    let r000012b1: u32 = r00000268 ^ r000012b0;\n" : String).toByteArray.data.toList
theorem checked4689 : bytes4689=statementBytes 4785 (op4689.map lower) ∧ bytes4689.length=48 := by core033_kernel_decide
def op4690 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4690 : Bytes := ("    let r000012b2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4690 : bytes4690=statementBytes 4786 (op4690.map lower) ∧ bytes4690.length=41 := by core033_kernel_decide
def op4691 : List WordIR.Op := [.bnot 4786]
def bytes4691 : Bytes := ("    let r000012b3: u32 = !r000012b2;\n" : String).toByteArray.data.toList
theorem checked4691 : bytes4691=statementBytes 4787 (op4691.map lower) ∧ bytes4691.length=37 := by core033_kernel_decide
def op4692 : List WordIR.Op := [.band 4785 4787]
def bytes4692 : Bytes := ("    let r000012b4: u32 = r000012b1 & r000012b3;\n" : String).toByteArray.data.toList
theorem checked4692 : bytes4692=statementBytes 4788 (op4692.map lower) ∧ bytes4692.length=48 := by core033_kernel_decide
def op4693 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4693 : Bytes := ("    let r000012b5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4693 : bytes4693=statementBytes 4789 (op4693.map lower) ∧ bytes4693.length=41 := by core033_kernel_decide
def op4694 : List WordIR.Op := [.bxor 616 4789]
def bytes4694 : Bytes := ("    let r000012b6: u32 = r00000268 ^ r000012b5;\n" : String).toByteArray.data.toList
theorem checked4694 : bytes4694=statementBytes 4790 (op4694.map lower) ∧ bytes4694.length=48 := by core033_kernel_decide
def op4695 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4695 : Bytes := ("    let r000012b7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4695 : bytes4695=statementBytes 4791 (op4695.map lower) ∧ bytes4695.length=41 := by core033_kernel_decide
def op4696 : List WordIR.Op := [.bnot 4791]
def bytes4696 : Bytes := ("    let r000012b8: u32 = !r000012b7;\n" : String).toByteArray.data.toList
theorem checked4696 : bytes4696=statementBytes 4792 (op4696.map lower) ∧ bytes4696.length=37 := by core033_kernel_decide
def op4697 : List WordIR.Op := [.bxor 4790 4792]
def bytes4697 : Bytes := ("    let r000012b9: u32 = r000012b6 ^ r000012b8;\n" : String).toByteArray.data.toList
theorem checked4697 : bytes4697=statementBytes 4793 (op4697.map lower) ∧ bytes4697.length=48 := by core033_kernel_decide
def op4698 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4698 : Bytes := ("    let r000012ba: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4698 : bytes4698=statementBytes 4794 (op4698.map lower) ∧ bytes4698.length=41 := by core033_kernel_decide
def op4699 : List WordIR.Op := [.bxor 616 4794]
def bytes4699 : Bytes := ("    let r000012bb: u32 = r00000268 ^ r000012ba;\n" : String).toByteArray.data.toList
theorem checked4699 : bytes4699=statementBytes 4795 (op4699.map lower) ∧ bytes4699.length=48 := by core033_kernel_decide
def op4700 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4700 : Bytes := ("    let r000012bc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4700 : bytes4700=statementBytes 4796 (op4700.map lower) ∧ bytes4700.length=41 := by core033_kernel_decide
def op4701 : List WordIR.Op := [.bnot 4796]
def bytes4701 : Bytes := ("    let r000012bd: u32 = !r000012bc;\n" : String).toByteArray.data.toList
theorem checked4701 : bytes4701=statementBytes 4797 (op4701.map lower) ∧ bytes4701.length=37 := by core033_kernel_decide
def op4702 : List WordIR.Op := [.badd 4795 4797]
def bytes4702 : Bytes := ("    let r000012be: u32 = r000012bb.wrapping_add(r000012bd);\n" : String).toByteArray.data.toList
theorem checked4702 : bytes4702=statementBytes 4798 (op4702.map lower) ∧ bytes4702.length=60 := by core033_kernel_decide
def op4703 : List WordIR.Op := [.bnot 4798]
def bytes4703 : Bytes := ("    let r000012bf: u32 = !r000012be;\n" : String).toByteArray.data.toList
theorem checked4703 : bytes4703=statementBytes 4799 (op4703.map lower) ∧ bytes4703.length=37 := by core033_kernel_decide
def op4704 : List WordIR.Op := [.band 4793 4799]
def bytes4704 : Bytes := ("    let r000012c0: u32 = r000012b9 & r000012bf;\n" : String).toByteArray.data.toList
theorem checked4704 : bytes4704=statementBytes 4800 (op4704.map lower) ∧ bytes4704.length=48 := by core033_kernel_decide
def op4705 : List WordIR.Op := [.bxor 4788 4800]
def bytes4705 : Bytes := ("    let r000012c1: u32 = r000012b4 ^ r000012c0;\n" : String).toByteArray.data.toList
theorem checked4705 : bytes4705=statementBytes 4801 (op4705.map lower) ∧ bytes4705.length=48 := by core033_kernel_decide
def op4706 : List WordIR.Op := [.shr 4801 31]
def bytes4706 : Bytes := ("    let r000012c2: u32 = r000012c1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4706 : bytes4706=statementBytes 4802 (op4706.map lower) ∧ bytes4706.length=54 := by core033_kernel_decide
def op4707 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4707 : Bytes := ("    let r000012c3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4707 : bytes4707=statementBytes 4803 (op4707.map lower) ∧ bytes4707.length=41 := by core033_kernel_decide
def op4708 : List WordIR.Op := [.bxor 4802 4803]
def bytes4708 : Bytes := ("    let r000012c4: u32 = r000012c2 ^ r000012c3;\n" : String).toByteArray.data.toList
theorem checked4708 : bytes4708=statementBytes 4804 (op4708.map lower) ∧ bytes4708.length=48 := by core033_kernel_decide
def op4709 : List WordIR.Op := [.bnot 4804]
def bytes4709 : Bytes := ("    let r000012c5: u32 = !r000012c4;\n" : String).toByteArray.data.toList
theorem checked4709 : bytes4709=statementBytes 4805 (op4709.map lower) ∧ bytes4709.length=37 := by core033_kernel_decide
def op4710 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4710 : Bytes := ("    let r000012c6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4710 : bytes4710=statementBytes 4806 (op4710.map lower) ∧ bytes4710.length=41 := by core033_kernel_decide
def op4711 : List WordIR.Op := [.badd 4805 4806]
def bytes4711 : Bytes := ("    let r000012c7: u32 = r000012c5.wrapping_add(r000012c6);\n" : String).toByteArray.data.toList
theorem checked4711 : bytes4711=statementBytes 4807 (op4711.map lower) ∧ bytes4711.length=60 := by core033_kernel_decide
def op4712 : List WordIR.Op := [.band 4807 2124]
def bytes4712 : Bytes := ("    let r000012c8: u32 = r000012c7 & r0000084c;\n" : String).toByteArray.data.toList
theorem checked4712 : bytes4712=statementBytes 4808 (op4712.map lower) ∧ bytes4712.length=48 := by core033_kernel_decide
def op4713 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4713 : Bytes := ("    let r000012c9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4713 : bytes4713=statementBytes 4809 (op4713.map lower) ∧ bytes4713.length=41 := by core033_kernel_decide
def op4714 : List WordIR.Op := [.bxor 616 4809]
def bytes4714 : Bytes := ("    let r000012ca: u32 = r00000268 ^ r000012c9;\n" : String).toByteArray.data.toList
theorem checked4714 : bytes4714=statementBytes 4810 (op4714.map lower) ∧ bytes4714.length=48 := by core033_kernel_decide
def op4715 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4715 : Bytes := ("    let r000012cb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4715 : bytes4715=statementBytes 4811 (op4715.map lower) ∧ bytes4715.length=41 := by core033_kernel_decide
def op4716 : List WordIR.Op := [.bnot 4811]
def bytes4716 : Bytes := ("    let r000012cc: u32 = !r000012cb;\n" : String).toByteArray.data.toList
theorem checked4716 : bytes4716=statementBytes 4812 (op4716.map lower) ∧ bytes4716.length=37 := by core033_kernel_decide
def op4717 : List WordIR.Op := [.band 4810 4812]
def bytes4717 : Bytes := ("    let r000012cd: u32 = r000012ca & r000012cc;\n" : String).toByteArray.data.toList
theorem checked4717 : bytes4717=statementBytes 4813 (op4717.map lower) ∧ bytes4717.length=48 := by core033_kernel_decide
def op4718 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4718 : Bytes := ("    let r000012ce: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4718 : bytes4718=statementBytes 4814 (op4718.map lower) ∧ bytes4718.length=41 := by core033_kernel_decide
def op4719 : List WordIR.Op := [.bxor 616 4814]
def bytes4719 : Bytes := ("    let r000012cf: u32 = r00000268 ^ r000012ce;\n" : String).toByteArray.data.toList
theorem checked4719 : bytes4719=statementBytes 4815 (op4719.map lower) ∧ bytes4719.length=48 := by core033_kernel_decide
def op4720 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4720 : Bytes := ("    let r000012d0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4720 : bytes4720=statementBytes 4816 (op4720.map lower) ∧ bytes4720.length=41 := by core033_kernel_decide
def op4721 : List WordIR.Op := [.bnot 4816]
def bytes4721 : Bytes := ("    let r000012d1: u32 = !r000012d0;\n" : String).toByteArray.data.toList
theorem checked4721 : bytes4721=statementBytes 4817 (op4721.map lower) ∧ bytes4721.length=37 := by core033_kernel_decide
def op4722 : List WordIR.Op := [.bxor 4815 4817]
def bytes4722 : Bytes := ("    let r000012d2: u32 = r000012cf ^ r000012d1;\n" : String).toByteArray.data.toList
theorem checked4722 : bytes4722=statementBytes 4818 (op4722.map lower) ∧ bytes4722.length=48 := by core033_kernel_decide
def op4723 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4723 : Bytes := ("    let r000012d3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4723 : bytes4723=statementBytes 4819 (op4723.map lower) ∧ bytes4723.length=41 := by core033_kernel_decide
def op4724 : List WordIR.Op := [.bxor 616 4819]
def bytes4724 : Bytes := ("    let r000012d4: u32 = r00000268 ^ r000012d3;\n" : String).toByteArray.data.toList
theorem checked4724 : bytes4724=statementBytes 4820 (op4724.map lower) ∧ bytes4724.length=48 := by core033_kernel_decide
def op4725 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4725 : Bytes := ("    let r000012d5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4725 : bytes4725=statementBytes 4821 (op4725.map lower) ∧ bytes4725.length=41 := by core033_kernel_decide
def op4726 : List WordIR.Op := [.bnot 4821]
def bytes4726 : Bytes := ("    let r000012d6: u32 = !r000012d5;\n" : String).toByteArray.data.toList
theorem checked4726 : bytes4726=statementBytes 4822 (op4726.map lower) ∧ bytes4726.length=37 := by core033_kernel_decide
def op4727 : List WordIR.Op := [.badd 4820 4822]
def bytes4727 : Bytes := ("    let r000012d7: u32 = r000012d4.wrapping_add(r000012d6);\n" : String).toByteArray.data.toList
theorem checked4727 : bytes4727=statementBytes 4823 (op4727.map lower) ∧ bytes4727.length=60 := by core033_kernel_decide
def op4728 : List WordIR.Op := [.bnot 4823]
def bytes4728 : Bytes := ("    let r000012d8: u32 = !r000012d7;\n" : String).toByteArray.data.toList
theorem checked4728 : bytes4728=statementBytes 4824 (op4728.map lower) ∧ bytes4728.length=37 := by core033_kernel_decide
def op4729 : List WordIR.Op := [.band 4818 4824]
def bytes4729 : Bytes := ("    let r000012d9: u32 = r000012d2 & r000012d8;\n" : String).toByteArray.data.toList
theorem checked4729 : bytes4729=statementBytes 4825 (op4729.map lower) ∧ bytes4729.length=48 := by core033_kernel_decide
def op4730 : List WordIR.Op := [.bxor 4813 4825]
def bytes4730 : Bytes := ("    let r000012da: u32 = r000012cd ^ r000012d9;\n" : String).toByteArray.data.toList
theorem checked4730 : bytes4730=statementBytes 4826 (op4730.map lower) ∧ bytes4730.length=48 := by core033_kernel_decide
def op4731 : List WordIR.Op := [.shr 4826 31]
def bytes4731 : Bytes := ("    let r000012db: u32 = r000012da >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4731 : bytes4731=statementBytes 4827 (op4731.map lower) ∧ bytes4731.length=54 := by core033_kernel_decide
def op4732 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4732 : Bytes := ("    let r000012dc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4732 : bytes4732=statementBytes 4828 (op4732.map lower) ∧ bytes4732.length=41 := by core033_kernel_decide
def op4733 : List WordIR.Op := [.bxor 4827 4828]
def bytes4733 : Bytes := ("    let r000012dd: u32 = r000012db ^ r000012dc;\n" : String).toByteArray.data.toList
theorem checked4733 : bytes4733=statementBytes 4829 (op4733.map lower) ∧ bytes4733.length=48 := by core033_kernel_decide
def op4734 : List WordIR.Op := [.bnot 4829]
def bytes4734 : Bytes := ("    let r000012de: u32 = !r000012dd;\n" : String).toByteArray.data.toList
theorem checked4734 : bytes4734=statementBytes 4830 (op4734.map lower) ∧ bytes4734.length=37 := by core033_kernel_decide
def op4735 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4735 : Bytes := ("    let r000012df: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4735 : bytes4735=statementBytes 4831 (op4735.map lower) ∧ bytes4735.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4672,op4673,op4674,op4675,op4676,op4677,op4678,op4679,op4680,op4681,op4682,op4683,op4684,op4685,op4686,op4687,op4688,op4689,op4690,op4691,op4692,op4693,op4694,op4695,op4696,op4697,op4698,op4699,op4700,op4701,op4702,op4703,op4704,op4705,op4706,op4707,op4708,op4709,op4710,op4711,op4712,op4713,op4714,op4715,op4716,op4717,op4718,op4719,op4720,op4721,op4722,op4723,op4724,op4725,op4726,op4727,op4728,op4729,op4730,op4731,op4732,op4733,op4734,op4735]
def chunks : List Bytes := [bytes4672,bytes4673,bytes4674,bytes4675,bytes4676,bytes4677,bytes4678,bytes4679,bytes4680,bytes4681,bytes4682,bytes4683,bytes4684,bytes4685,bytes4686,bytes4687,bytes4688,bytes4689,bytes4690,bytes4691,bytes4692,bytes4693,bytes4694,bytes4695,bytes4696,bytes4697,bytes4698,bytes4699,bytes4700,bytes4701,bytes4702,bytes4703,bytes4704,bytes4705,bytes4706,bytes4707,bytes4708,bytes4709,bytes4710,bytes4711,bytes4712,bytes4713,bytes4714,bytes4715,bytes4716,bytes4717,bytes4718,bytes4719,bytes4720,bytes4721,bytes4722,bytes4723,bytes4724,bytes4725,bytes4726,bytes4727,bytes4728,bytes4729,bytes4730,bytes4731,bytes4732,bytes4733,bytes4734,bytes4735]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4768 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4672.1 (.cons _ _ _ _ _ checked4673.1 (.cons _ _ _ _ _ checked4674.1 (.cons _ _ _ _ _ checked4675.1 (.cons _ _ _ _ _ checked4676.1 (.cons _ _ _ _ _ checked4677.1 (.cons _ _ _ _ _ checked4678.1 (.cons _ _ _ _ _ checked4679.1 (.cons _ _ _ _ _ checked4680.1 (.cons _ _ _ _ _ checked4681.1 (.cons _ _ _ _ _ checked4682.1 (.cons _ _ _ _ _ checked4683.1 (.cons _ _ _ _ _ checked4684.1 (.cons _ _ _ _ _ checked4685.1 (.cons _ _ _ _ _ checked4686.1 (.cons _ _ _ _ _ checked4687.1 (.cons _ _ _ _ _ checked4688.1 (.cons _ _ _ _ _ checked4689.1 (.cons _ _ _ _ _ checked4690.1 (.cons _ _ _ _ _ checked4691.1 (.cons _ _ _ _ _ checked4692.1 (.cons _ _ _ _ _ checked4693.1 (.cons _ _ _ _ _ checked4694.1 (.cons _ _ _ _ _ checked4695.1 (.cons _ _ _ _ _ checked4696.1 (.cons _ _ _ _ _ checked4697.1 (.cons _ _ _ _ _ checked4698.1 (.cons _ _ _ _ _ checked4699.1 (.cons _ _ _ _ _ checked4700.1 (.cons _ _ _ _ _ checked4701.1 (.cons _ _ _ _ _ checked4702.1 (.cons _ _ _ _ _ checked4703.1 (.cons _ _ _ _ _ checked4704.1 (.cons _ _ _ _ _ checked4705.1 (.cons _ _ _ _ _ checked4706.1 (.cons _ _ _ _ _ checked4707.1 (.cons _ _ _ _ _ checked4708.1 (.cons _ _ _ _ _ checked4709.1 (.cons _ _ _ _ _ checked4710.1 (.cons _ _ _ _ _ checked4711.1 (.cons _ _ _ _ _ checked4712.1 (.cons _ _ _ _ _ checked4713.1 (.cons _ _ _ _ _ checked4714.1 (.cons _ _ _ _ _ checked4715.1 (.cons _ _ _ _ _ checked4716.1 (.cons _ _ _ _ _ checked4717.1 (.cons _ _ _ _ _ checked4718.1 (.cons _ _ _ _ _ checked4719.1 (.cons _ _ _ _ _ checked4720.1 (.cons _ _ _ _ _ checked4721.1 (.cons _ _ _ _ _ checked4722.1 (.cons _ _ _ _ _ checked4723.1 (.cons _ _ _ _ _ checked4724.1 (.cons _ _ _ _ _ checked4725.1 (.cons _ _ _ _ _ checked4726.1 (.cons _ _ _ _ _ checked4727.1 (.cons _ _ _ _ _ checked4728.1 (.cons _ _ _ _ _ checked4729.1 (.cons _ _ _ _ _ checked4730.1 (.cons _ _ _ _ _ checked4731.1 (.cons _ _ _ _ _ checked4732.1 (.cons _ _ _ _ _ checked4733.1 (.cons _ _ _ _ _ checked4734.1 (.cons _ _ _ _ _ checked4735.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4768 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4672.2,checked4673.2,checked4674.2,checked4675.2,checked4676.2,checked4677.2,checked4678.2,checked4679.2,checked4680.2,checked4681.2,checked4682.2,checked4683.2,checked4684.2,checked4685.2,checked4686.2,checked4687.2,checked4688.2,checked4689.2,checked4690.2,checked4691.2,checked4692.2,checked4693.2,checked4694.2,checked4695.2,checked4696.2,checked4697.2,checked4698.2,checked4699.2,checked4700.2,checked4701.2,checked4702.2,checked4703.2,checked4704.2,checked4705.2,checked4706.2,checked4707.2,checked4708.2,checked4709.2,checked4710.2,checked4711.2,checked4712.2,checked4713.2,checked4714.2,checked4715.2,checked4716.2,checked4717.2,checked4718.2,checked4719.2,checked4720.2,checked4721.2,checked4722.2,checked4723.2,checked4724.2,checked4725.2,checked4726.2,checked4727.2,checked4728.2,checked4729.2,checked4730.2,checked4731.2,checked4732.2,checked4733.2,checked4734.2,checked4735.2]
  decide
end ArtifactPairedPathRoundGroup73
