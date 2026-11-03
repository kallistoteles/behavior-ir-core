import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup89
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5696 : List WordIR.Op := [.bnot 5791]
def bytes5696 : Bytes := ("    let r000016a0: u32 = !r0000169f;\n" : String).toByteArray.data.toList
theorem checked5696 : bytes5696=statementBytes 5792 (op5696.map lower) ∧ bytes5696.length=37 := by core033_kernel_decide
def op5697 : List WordIR.Op := [.band 5786 5792]
def bytes5697 : Bytes := ("    let r000016a1: u32 = r0000169a & r000016a0;\n" : String).toByteArray.data.toList
theorem checked5697 : bytes5697=statementBytes 5793 (op5697.map lower) ∧ bytes5697.length=48 := by core033_kernel_decide
def op5698 : List WordIR.Op := [.bxor 5781 5793]
def bytes5698 : Bytes := ("    let r000016a2: u32 = r00001695 ^ r000016a1;\n" : String).toByteArray.data.toList
theorem checked5698 : bytes5698=statementBytes 5794 (op5698.map lower) ∧ bytes5698.length=48 := by core033_kernel_decide
def op5699 : List WordIR.Op := [.shr 5794 31]
def bytes5699 : Bytes := ("    let r000016a3: u32 = r000016a2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5699 : bytes5699=statementBytes 5795 (op5699.map lower) ∧ bytes5699.length=54 := by core033_kernel_decide
def op5700 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5700 : Bytes := ("    let r000016a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5700 : bytes5700=statementBytes 5796 (op5700.map lower) ∧ bytes5700.length=41 := by core033_kernel_decide
def op5701 : List WordIR.Op := [.bxor 5795 5796]
def bytes5701 : Bytes := ("    let r000016a5: u32 = r000016a3 ^ r000016a4;\n" : String).toByteArray.data.toList
theorem checked5701 : bytes5701=statementBytes 5797 (op5701.map lower) ∧ bytes5701.length=48 := by core033_kernel_decide
def op5702 : List WordIR.Op := [.bnot 5797]
def bytes5702 : Bytes := ("    let r000016a6: u32 = !r000016a5;\n" : String).toByteArray.data.toList
theorem checked5702 : bytes5702=statementBytes 5798 (op5702.map lower) ∧ bytes5702.length=37 := by core033_kernel_decide
def op5703 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5703 : Bytes := ("    let r000016a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5703 : bytes5703=statementBytes 5799 (op5703.map lower) ∧ bytes5703.length=41 := by core033_kernel_decide
def op5704 : List WordIR.Op := [.badd 5798 5799]
def bytes5704 : Bytes := ("    let r000016a8: u32 = r000016a6.wrapping_add(r000016a7);\n" : String).toByteArray.data.toList
theorem checked5704 : bytes5704=statementBytes 5800 (op5704.map lower) ∧ bytes5704.length=60 := by core033_kernel_decide
def op5705 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5705 : Bytes := ("    let r000016a9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5705 : bytes5705=statementBytes 5801 (op5705.map lower) ∧ bytes5705.length=41 := by core033_kernel_decide
def op5706 : List WordIR.Op := [.band 5800 5801]
def bytes5706 : Bytes := ("    let r000016aa: u32 = r000016a8 & r000016a9;\n" : String).toByteArray.data.toList
theorem checked5706 : bytes5706=statementBytes 5802 (op5706.map lower) ∧ bytes5706.length=48 := by core033_kernel_decide
def op5707 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5707 : Bytes := ("    let r000016ab: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5707 : bytes5707=statementBytes 5803 (op5707.map lower) ∧ bytes5707.length=41 := by core033_kernel_decide
def op5708 : List WordIR.Op := [.bxor 616 5803]
def bytes5708 : Bytes := ("    let r000016ac: u32 = r00000268 ^ r000016ab;\n" : String).toByteArray.data.toList
theorem checked5708 : bytes5708=statementBytes 5804 (op5708.map lower) ∧ bytes5708.length=48 := by core033_kernel_decide
def op5709 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5709 : Bytes := ("    let r000016ad: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5709 : bytes5709=statementBytes 5805 (op5709.map lower) ∧ bytes5709.length=41 := by core033_kernel_decide
def op5710 : List WordIR.Op := [.bnot 5805]
def bytes5710 : Bytes := ("    let r000016ae: u32 = !r000016ad;\n" : String).toByteArray.data.toList
theorem checked5710 : bytes5710=statementBytes 5806 (op5710.map lower) ∧ bytes5710.length=37 := by core033_kernel_decide
def op5711 : List WordIR.Op := [.band 5804 5806]
def bytes5711 : Bytes := ("    let r000016af: u32 = r000016ac & r000016ae;\n" : String).toByteArray.data.toList
theorem checked5711 : bytes5711=statementBytes 5807 (op5711.map lower) ∧ bytes5711.length=48 := by core033_kernel_decide
def op5712 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5712 : Bytes := ("    let r000016b0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5712 : bytes5712=statementBytes 5808 (op5712.map lower) ∧ bytes5712.length=41 := by core033_kernel_decide
def op5713 : List WordIR.Op := [.bxor 616 5808]
def bytes5713 : Bytes := ("    let r000016b1: u32 = r00000268 ^ r000016b0;\n" : String).toByteArray.data.toList
theorem checked5713 : bytes5713=statementBytes 5809 (op5713.map lower) ∧ bytes5713.length=48 := by core033_kernel_decide
def op5714 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5714 : Bytes := ("    let r000016b2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5714 : bytes5714=statementBytes 5810 (op5714.map lower) ∧ bytes5714.length=41 := by core033_kernel_decide
def op5715 : List WordIR.Op := [.bnot 5810]
def bytes5715 : Bytes := ("    let r000016b3: u32 = !r000016b2;\n" : String).toByteArray.data.toList
theorem checked5715 : bytes5715=statementBytes 5811 (op5715.map lower) ∧ bytes5715.length=37 := by core033_kernel_decide
def op5716 : List WordIR.Op := [.bxor 5809 5811]
def bytes5716 : Bytes := ("    let r000016b4: u32 = r000016b1 ^ r000016b3;\n" : String).toByteArray.data.toList
theorem checked5716 : bytes5716=statementBytes 5812 (op5716.map lower) ∧ bytes5716.length=48 := by core033_kernel_decide
def op5717 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5717 : Bytes := ("    let r000016b5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5717 : bytes5717=statementBytes 5813 (op5717.map lower) ∧ bytes5717.length=41 := by core033_kernel_decide
def op5718 : List WordIR.Op := [.bxor 616 5813]
def bytes5718 : Bytes := ("    let r000016b6: u32 = r00000268 ^ r000016b5;\n" : String).toByteArray.data.toList
theorem checked5718 : bytes5718=statementBytes 5814 (op5718.map lower) ∧ bytes5718.length=48 := by core033_kernel_decide
def op5719 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5719 : Bytes := ("    let r000016b7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5719 : bytes5719=statementBytes 5815 (op5719.map lower) ∧ bytes5719.length=41 := by core033_kernel_decide
def op5720 : List WordIR.Op := [.bnot 5815]
def bytes5720 : Bytes := ("    let r000016b8: u32 = !r000016b7;\n" : String).toByteArray.data.toList
theorem checked5720 : bytes5720=statementBytes 5816 (op5720.map lower) ∧ bytes5720.length=37 := by core033_kernel_decide
def op5721 : List WordIR.Op := [.badd 5814 5816]
def bytes5721 : Bytes := ("    let r000016b9: u32 = r000016b6.wrapping_add(r000016b8);\n" : String).toByteArray.data.toList
theorem checked5721 : bytes5721=statementBytes 5817 (op5721.map lower) ∧ bytes5721.length=60 := by core033_kernel_decide
def op5722 : List WordIR.Op := [.bnot 5817]
def bytes5722 : Bytes := ("    let r000016ba: u32 = !r000016b9;\n" : String).toByteArray.data.toList
theorem checked5722 : bytes5722=statementBytes 5818 (op5722.map lower) ∧ bytes5722.length=37 := by core033_kernel_decide
def op5723 : List WordIR.Op := [.band 5812 5818]
def bytes5723 : Bytes := ("    let r000016bb: u32 = r000016b4 & r000016ba;\n" : String).toByteArray.data.toList
theorem checked5723 : bytes5723=statementBytes 5819 (op5723.map lower) ∧ bytes5723.length=48 := by core033_kernel_decide
def op5724 : List WordIR.Op := [.bxor 5807 5819]
def bytes5724 : Bytes := ("    let r000016bc: u32 = r000016af ^ r000016bb;\n" : String).toByteArray.data.toList
theorem checked5724 : bytes5724=statementBytes 5820 (op5724.map lower) ∧ bytes5724.length=48 := by core033_kernel_decide
def op5725 : List WordIR.Op := [.shr 5820 31]
def bytes5725 : Bytes := ("    let r000016bd: u32 = r000016bc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5725 : bytes5725=statementBytes 5821 (op5725.map lower) ∧ bytes5725.length=54 := by core033_kernel_decide
def op5726 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5726 : Bytes := ("    let r000016be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5726 : bytes5726=statementBytes 5822 (op5726.map lower) ∧ bytes5726.length=41 := by core033_kernel_decide
def op5727 : List WordIR.Op := [.bxor 5821 5822]
def bytes5727 : Bytes := ("    let r000016bf: u32 = r000016bd ^ r000016be;\n" : String).toByteArray.data.toList
theorem checked5727 : bytes5727=statementBytes 5823 (op5727.map lower) ∧ bytes5727.length=48 := by core033_kernel_decide
def op5728 : List WordIR.Op := [.bnot 5823]
def bytes5728 : Bytes := ("    let r000016c0: u32 = !r000016bf;\n" : String).toByteArray.data.toList
theorem checked5728 : bytes5728=statementBytes 5824 (op5728.map lower) ∧ bytes5728.length=37 := by core033_kernel_decide
def op5729 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5729 : Bytes := ("    let r000016c1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5729 : bytes5729=statementBytes 5825 (op5729.map lower) ∧ bytes5729.length=41 := by core033_kernel_decide
def op5730 : List WordIR.Op := [.badd 5824 5825]
def bytes5730 : Bytes := ("    let r000016c2: u32 = r000016c0.wrapping_add(r000016c1);\n" : String).toByteArray.data.toList
theorem checked5730 : bytes5730=statementBytes 5826 (op5730.map lower) ∧ bytes5730.length=60 := by core033_kernel_decide
def op5731 : List WordIR.Op := [.bnot 5826]
def bytes5731 : Bytes := ("    let r000016c3: u32 = !r000016c2;\n" : String).toByteArray.data.toList
theorem checked5731 : bytes5731=statementBytes 5827 (op5731.map lower) ∧ bytes5731.length=37 := by core033_kernel_decide
def op5732 : List WordIR.Op := [.band 5827 1989]
def bytes5732 : Bytes := ("    let r000016c4: u32 = r000016c3 & r000007c5;\n" : String).toByteArray.data.toList
theorem checked5732 : bytes5732=statementBytes 5828 (op5732.map lower) ∧ bytes5732.length=48 := by core033_kernel_decide
def op5733 : List WordIR.Op := [.bxor 5802 5828]
def bytes5733 : Bytes := ("    let r000016c5: u32 = r000016aa ^ r000016c4;\n" : String).toByteArray.data.toList
theorem checked5733 : bytes5733=statementBytes 5829 (op5733.map lower) ∧ bytes5733.length=48 := by core033_kernel_decide
def op5734 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5734 : Bytes := ("    let r000016c6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5734 : bytes5734=statementBytes 5830 (op5734.map lower) ∧ bytes5734.length=41 := by core033_kernel_decide
def op5735 : List WordIR.Op := [.bxor 616 5830]
def bytes5735 : Bytes := ("    let r000016c7: u32 = r00000268 ^ r000016c6;\n" : String).toByteArray.data.toList
theorem checked5735 : bytes5735=statementBytes 5831 (op5735.map lower) ∧ bytes5735.length=48 := by core033_kernel_decide
def op5736 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5736 : Bytes := ("    let r000016c8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5736 : bytes5736=statementBytes 5832 (op5736.map lower) ∧ bytes5736.length=41 := by core033_kernel_decide
def op5737 : List WordIR.Op := [.bnot 5832]
def bytes5737 : Bytes := ("    let r000016c9: u32 = !r000016c8;\n" : String).toByteArray.data.toList
theorem checked5737 : bytes5737=statementBytes 5833 (op5737.map lower) ∧ bytes5737.length=37 := by core033_kernel_decide
def op5738 : List WordIR.Op := [.band 5831 5833]
def bytes5738 : Bytes := ("    let r000016ca: u32 = r000016c7 & r000016c9;\n" : String).toByteArray.data.toList
theorem checked5738 : bytes5738=statementBytes 5834 (op5738.map lower) ∧ bytes5738.length=48 := by core033_kernel_decide
def op5739 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5739 : Bytes := ("    let r000016cb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5739 : bytes5739=statementBytes 5835 (op5739.map lower) ∧ bytes5739.length=41 := by core033_kernel_decide
def op5740 : List WordIR.Op := [.bxor 616 5835]
def bytes5740 : Bytes := ("    let r000016cc: u32 = r00000268 ^ r000016cb;\n" : String).toByteArray.data.toList
theorem checked5740 : bytes5740=statementBytes 5836 (op5740.map lower) ∧ bytes5740.length=48 := by core033_kernel_decide
def op5741 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5741 : Bytes := ("    let r000016cd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5741 : bytes5741=statementBytes 5837 (op5741.map lower) ∧ bytes5741.length=41 := by core033_kernel_decide
def op5742 : List WordIR.Op := [.bnot 5837]
def bytes5742 : Bytes := ("    let r000016ce: u32 = !r000016cd;\n" : String).toByteArray.data.toList
theorem checked5742 : bytes5742=statementBytes 5838 (op5742.map lower) ∧ bytes5742.length=37 := by core033_kernel_decide
def op5743 : List WordIR.Op := [.bxor 5836 5838]
def bytes5743 : Bytes := ("    let r000016cf: u32 = r000016cc ^ r000016ce;\n" : String).toByteArray.data.toList
theorem checked5743 : bytes5743=statementBytes 5839 (op5743.map lower) ∧ bytes5743.length=48 := by core033_kernel_decide
def op5744 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5744 : Bytes := ("    let r000016d0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5744 : bytes5744=statementBytes 5840 (op5744.map lower) ∧ bytes5744.length=41 := by core033_kernel_decide
def op5745 : List WordIR.Op := [.bxor 616 5840]
def bytes5745 : Bytes := ("    let r000016d1: u32 = r00000268 ^ r000016d0;\n" : String).toByteArray.data.toList
theorem checked5745 : bytes5745=statementBytes 5841 (op5745.map lower) ∧ bytes5745.length=48 := by core033_kernel_decide
def op5746 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5746 : Bytes := ("    let r000016d2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5746 : bytes5746=statementBytes 5842 (op5746.map lower) ∧ bytes5746.length=41 := by core033_kernel_decide
def op5747 : List WordIR.Op := [.bnot 5842]
def bytes5747 : Bytes := ("    let r000016d3: u32 = !r000016d2;\n" : String).toByteArray.data.toList
theorem checked5747 : bytes5747=statementBytes 5843 (op5747.map lower) ∧ bytes5747.length=37 := by core033_kernel_decide
def op5748 : List WordIR.Op := [.badd 5841 5843]
def bytes5748 : Bytes := ("    let r000016d4: u32 = r000016d1.wrapping_add(r000016d3);\n" : String).toByteArray.data.toList
theorem checked5748 : bytes5748=statementBytes 5844 (op5748.map lower) ∧ bytes5748.length=60 := by core033_kernel_decide
def op5749 : List WordIR.Op := [.bnot 5844]
def bytes5749 : Bytes := ("    let r000016d5: u32 = !r000016d4;\n" : String).toByteArray.data.toList
theorem checked5749 : bytes5749=statementBytes 5845 (op5749.map lower) ∧ bytes5749.length=37 := by core033_kernel_decide
def op5750 : List WordIR.Op := [.band 5839 5845]
def bytes5750 : Bytes := ("    let r000016d6: u32 = r000016cf & r000016d5;\n" : String).toByteArray.data.toList
theorem checked5750 : bytes5750=statementBytes 5846 (op5750.map lower) ∧ bytes5750.length=48 := by core033_kernel_decide
def op5751 : List WordIR.Op := [.bxor 5834 5846]
def bytes5751 : Bytes := ("    let r000016d7: u32 = r000016ca ^ r000016d6;\n" : String).toByteArray.data.toList
theorem checked5751 : bytes5751=statementBytes 5847 (op5751.map lower) ∧ bytes5751.length=48 := by core033_kernel_decide
def op5752 : List WordIR.Op := [.shr 5847 31]
def bytes5752 : Bytes := ("    let r000016d8: u32 = r000016d7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5752 : bytes5752=statementBytes 5848 (op5752.map lower) ∧ bytes5752.length=54 := by core033_kernel_decide
def op5753 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5753 : Bytes := ("    let r000016d9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5753 : bytes5753=statementBytes 5849 (op5753.map lower) ∧ bytes5753.length=41 := by core033_kernel_decide
def op5754 : List WordIR.Op := [.bxor 5848 5849]
def bytes5754 : Bytes := ("    let r000016da: u32 = r000016d8 ^ r000016d9;\n" : String).toByteArray.data.toList
theorem checked5754 : bytes5754=statementBytes 5850 (op5754.map lower) ∧ bytes5754.length=48 := by core033_kernel_decide
def op5755 : List WordIR.Op := [.bnot 5850]
def bytes5755 : Bytes := ("    let r000016db: u32 = !r000016da;\n" : String).toByteArray.data.toList
theorem checked5755 : bytes5755=statementBytes 5851 (op5755.map lower) ∧ bytes5755.length=37 := by core033_kernel_decide
def op5756 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5756 : Bytes := ("    let r000016dc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5756 : bytes5756=statementBytes 5852 (op5756.map lower) ∧ bytes5756.length=41 := by core033_kernel_decide
def op5757 : List WordIR.Op := [.badd 5851 5852]
def bytes5757 : Bytes := ("    let r000016dd: u32 = r000016db.wrapping_add(r000016dc);\n" : String).toByteArray.data.toList
theorem checked5757 : bytes5757=statementBytes 5853 (op5757.map lower) ∧ bytes5757.length=60 := by core033_kernel_decide
def op5758 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5758 : Bytes := ("    let r000016de: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5758 : bytes5758=statementBytes 5854 (op5758.map lower) ∧ bytes5758.length=41 := by core033_kernel_decide
def op5759 : List WordIR.Op := [.band 5853 5854]
def bytes5759 : Bytes := ("    let r000016df: u32 = r000016dd & r000016de;\n" : String).toByteArray.data.toList
theorem checked5759 : bytes5759=statementBytes 5855 (op5759.map lower) ∧ bytes5759.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5696,op5697,op5698,op5699,op5700,op5701,op5702,op5703,op5704,op5705,op5706,op5707,op5708,op5709,op5710,op5711,op5712,op5713,op5714,op5715,op5716,op5717,op5718,op5719,op5720,op5721,op5722,op5723,op5724,op5725,op5726,op5727,op5728,op5729,op5730,op5731,op5732,op5733,op5734,op5735,op5736,op5737,op5738,op5739,op5740,op5741,op5742,op5743,op5744,op5745,op5746,op5747,op5748,op5749,op5750,op5751,op5752,op5753,op5754,op5755,op5756,op5757,op5758,op5759]
def chunks : List Bytes := [bytes5696,bytes5697,bytes5698,bytes5699,bytes5700,bytes5701,bytes5702,bytes5703,bytes5704,bytes5705,bytes5706,bytes5707,bytes5708,bytes5709,bytes5710,bytes5711,bytes5712,bytes5713,bytes5714,bytes5715,bytes5716,bytes5717,bytes5718,bytes5719,bytes5720,bytes5721,bytes5722,bytes5723,bytes5724,bytes5725,bytes5726,bytes5727,bytes5728,bytes5729,bytes5730,bytes5731,bytes5732,bytes5733,bytes5734,bytes5735,bytes5736,bytes5737,bytes5738,bytes5739,bytes5740,bytes5741,bytes5742,bytes5743,bytes5744,bytes5745,bytes5746,bytes5747,bytes5748,bytes5749,bytes5750,bytes5751,bytes5752,bytes5753,bytes5754,bytes5755,bytes5756,bytes5757,bytes5758,bytes5759]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5792 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5696.1 (.cons _ _ _ _ _ checked5697.1 (.cons _ _ _ _ _ checked5698.1 (.cons _ _ _ _ _ checked5699.1 (.cons _ _ _ _ _ checked5700.1 (.cons _ _ _ _ _ checked5701.1 (.cons _ _ _ _ _ checked5702.1 (.cons _ _ _ _ _ checked5703.1 (.cons _ _ _ _ _ checked5704.1 (.cons _ _ _ _ _ checked5705.1 (.cons _ _ _ _ _ checked5706.1 (.cons _ _ _ _ _ checked5707.1 (.cons _ _ _ _ _ checked5708.1 (.cons _ _ _ _ _ checked5709.1 (.cons _ _ _ _ _ checked5710.1 (.cons _ _ _ _ _ checked5711.1 (.cons _ _ _ _ _ checked5712.1 (.cons _ _ _ _ _ checked5713.1 (.cons _ _ _ _ _ checked5714.1 (.cons _ _ _ _ _ checked5715.1 (.cons _ _ _ _ _ checked5716.1 (.cons _ _ _ _ _ checked5717.1 (.cons _ _ _ _ _ checked5718.1 (.cons _ _ _ _ _ checked5719.1 (.cons _ _ _ _ _ checked5720.1 (.cons _ _ _ _ _ checked5721.1 (.cons _ _ _ _ _ checked5722.1 (.cons _ _ _ _ _ checked5723.1 (.cons _ _ _ _ _ checked5724.1 (.cons _ _ _ _ _ checked5725.1 (.cons _ _ _ _ _ checked5726.1 (.cons _ _ _ _ _ checked5727.1 (.cons _ _ _ _ _ checked5728.1 (.cons _ _ _ _ _ checked5729.1 (.cons _ _ _ _ _ checked5730.1 (.cons _ _ _ _ _ checked5731.1 (.cons _ _ _ _ _ checked5732.1 (.cons _ _ _ _ _ checked5733.1 (.cons _ _ _ _ _ checked5734.1 (.cons _ _ _ _ _ checked5735.1 (.cons _ _ _ _ _ checked5736.1 (.cons _ _ _ _ _ checked5737.1 (.cons _ _ _ _ _ checked5738.1 (.cons _ _ _ _ _ checked5739.1 (.cons _ _ _ _ _ checked5740.1 (.cons _ _ _ _ _ checked5741.1 (.cons _ _ _ _ _ checked5742.1 (.cons _ _ _ _ _ checked5743.1 (.cons _ _ _ _ _ checked5744.1 (.cons _ _ _ _ _ checked5745.1 (.cons _ _ _ _ _ checked5746.1 (.cons _ _ _ _ _ checked5747.1 (.cons _ _ _ _ _ checked5748.1 (.cons _ _ _ _ _ checked5749.1 (.cons _ _ _ _ _ checked5750.1 (.cons _ _ _ _ _ checked5751.1 (.cons _ _ _ _ _ checked5752.1 (.cons _ _ _ _ _ checked5753.1 (.cons _ _ _ _ _ checked5754.1 (.cons _ _ _ _ _ checked5755.1 (.cons _ _ _ _ _ checked5756.1 (.cons _ _ _ _ _ checked5757.1 (.cons _ _ _ _ _ checked5758.1 (.cons _ _ _ _ _ checked5759.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5792 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5696.2,checked5697.2,checked5698.2,checked5699.2,checked5700.2,checked5701.2,checked5702.2,checked5703.2,checked5704.2,checked5705.2,checked5706.2,checked5707.2,checked5708.2,checked5709.2,checked5710.2,checked5711.2,checked5712.2,checked5713.2,checked5714.2,checked5715.2,checked5716.2,checked5717.2,checked5718.2,checked5719.2,checked5720.2,checked5721.2,checked5722.2,checked5723.2,checked5724.2,checked5725.2,checked5726.2,checked5727.2,checked5728.2,checked5729.2,checked5730.2,checked5731.2,checked5732.2,checked5733.2,checked5734.2,checked5735.2,checked5736.2,checked5737.2,checked5738.2,checked5739.2,checked5740.2,checked5741.2,checked5742.2,checked5743.2,checked5744.2,checked5745.2,checked5746.2,checked5747.2,checked5748.2,checked5749.2,checked5750.2,checked5751.2,checked5752.2,checked5753.2,checked5754.2,checked5755.2,checked5756.2,checked5757.2,checked5758.2,checked5759.2]
  decide
end ArtifactPairedPathRoundGroup89
