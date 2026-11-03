import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup198
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12672 : List WordIR.Op := [.bxor 12787 12789]
def bytes12672 : Bytes := ("    let r000031f6: u32 = r000031f3 ^ r000031f5;\n" : String).toByteArray.data.toList
theorem checked12672 : bytes12672=statementBytes 12790 (op12672.map lower) ∧ bytes12672.length=48 := by core033_kernel_decide
def op12673 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12673 : Bytes := ("    let r000031f7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12673 : bytes12673=statementBytes 12791 (op12673.map lower) ∧ bytes12673.length=41 := by core033_kernel_decide
def op12674 : List WordIR.Op := [.bxor 693 12791]
def bytes12674 : Bytes := ("    let r000031f8: u32 = r000002b5 ^ r000031f7;\n" : String).toByteArray.data.toList
theorem checked12674 : bytes12674=statementBytes 12792 (op12674.map lower) ∧ bytes12674.length=48 := by core033_kernel_decide
def op12675 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12675 : Bytes := ("    let r000031f9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12675 : bytes12675=statementBytes 12793 (op12675.map lower) ∧ bytes12675.length=41 := by core033_kernel_decide
def op12676 : List WordIR.Op := [.bnot 12793]
def bytes12676 : Bytes := ("    let r000031fa: u32 = !r000031f9;\n" : String).toByteArray.data.toList
theorem checked12676 : bytes12676=statementBytes 12794 (op12676.map lower) ∧ bytes12676.length=37 := by core033_kernel_decide
def op12677 : List WordIR.Op := [.badd 12792 12794]
def bytes12677 : Bytes := ("    let r000031fb: u32 = r000031f8.wrapping_add(r000031fa);\n" : String).toByteArray.data.toList
theorem checked12677 : bytes12677=statementBytes 12795 (op12677.map lower) ∧ bytes12677.length=60 := by core033_kernel_decide
def op12678 : List WordIR.Op := [.bnot 12795]
def bytes12678 : Bytes := ("    let r000031fc: u32 = !r000031fb;\n" : String).toByteArray.data.toList
theorem checked12678 : bytes12678=statementBytes 12796 (op12678.map lower) ∧ bytes12678.length=37 := by core033_kernel_decide
def op12679 : List WordIR.Op := [.band 12790 12796]
def bytes12679 : Bytes := ("    let r000031fd: u32 = r000031f6 & r000031fc;\n" : String).toByteArray.data.toList
theorem checked12679 : bytes12679=statementBytes 12797 (op12679.map lower) ∧ bytes12679.length=48 := by core033_kernel_decide
def op12680 : List WordIR.Op := [.bxor 12785 12797]
def bytes12680 : Bytes := ("    let r000031fe: u32 = r000031f1 ^ r000031fd;\n" : String).toByteArray.data.toList
theorem checked12680 : bytes12680=statementBytes 12798 (op12680.map lower) ∧ bytes12680.length=48 := by core033_kernel_decide
def op12681 : List WordIR.Op := [.shr 12798 31]
def bytes12681 : Bytes := ("    let r000031ff: u32 = r000031fe >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12681 : bytes12681=statementBytes 12799 (op12681.map lower) ∧ bytes12681.length=54 := by core033_kernel_decide
def op12682 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12682 : Bytes := ("    let r00003200: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12682 : bytes12682=statementBytes 12800 (op12682.map lower) ∧ bytes12682.length=41 := by core033_kernel_decide
def op12683 : List WordIR.Op := [.bxor 12799 12800]
def bytes12683 : Bytes := ("    let r00003201: u32 = r000031ff ^ r00003200;\n" : String).toByteArray.data.toList
theorem checked12683 : bytes12683=statementBytes 12801 (op12683.map lower) ∧ bytes12683.length=48 := by core033_kernel_decide
def op12684 : List WordIR.Op := [.bnot 12801]
def bytes12684 : Bytes := ("    let r00003202: u32 = !r00003201;\n" : String).toByteArray.data.toList
theorem checked12684 : bytes12684=statementBytes 12802 (op12684.map lower) ∧ bytes12684.length=37 := by core033_kernel_decide
def op12685 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12685 : Bytes := ("    let r00003203: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12685 : bytes12685=statementBytes 12803 (op12685.map lower) ∧ bytes12685.length=41 := by core033_kernel_decide
def op12686 : List WordIR.Op := [.badd 12802 12803]
def bytes12686 : Bytes := ("    let r00003204: u32 = r00003202.wrapping_add(r00003203);\n" : String).toByteArray.data.toList
theorem checked12686 : bytes12686=statementBytes 12804 (op12686.map lower) ∧ bytes12686.length=60 := by core033_kernel_decide
def op12687 : List WordIR.Op := [.band 12804 10906]
def bytes12687 : Bytes := ("    let r00003205: u32 = r00003204 & r00002a9a;\n" : String).toByteArray.data.toList
theorem checked12687 : bytes12687=statementBytes 12805 (op12687.map lower) ∧ bytes12687.length=48 := by core033_kernel_decide
def op12688 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12688 : Bytes := ("    let r00003206: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12688 : bytes12688=statementBytes 12806 (op12688.map lower) ∧ bytes12688.length=41 := by core033_kernel_decide
def op12689 : List WordIR.Op := [.bxor 693 12806]
def bytes12689 : Bytes := ("    let r00003207: u32 = r000002b5 ^ r00003206;\n" : String).toByteArray.data.toList
theorem checked12689 : bytes12689=statementBytes 12807 (op12689.map lower) ∧ bytes12689.length=48 := by core033_kernel_decide
def op12690 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12690 : Bytes := ("    let r00003208: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12690 : bytes12690=statementBytes 12808 (op12690.map lower) ∧ bytes12690.length=41 := by core033_kernel_decide
def op12691 : List WordIR.Op := [.bnot 12808]
def bytes12691 : Bytes := ("    let r00003209: u32 = !r00003208;\n" : String).toByteArray.data.toList
theorem checked12691 : bytes12691=statementBytes 12809 (op12691.map lower) ∧ bytes12691.length=37 := by core033_kernel_decide
def op12692 : List WordIR.Op := [.band 12807 12809]
def bytes12692 : Bytes := ("    let r0000320a: u32 = r00003207 & r00003209;\n" : String).toByteArray.data.toList
theorem checked12692 : bytes12692=statementBytes 12810 (op12692.map lower) ∧ bytes12692.length=48 := by core033_kernel_decide
def op12693 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12693 : Bytes := ("    let r0000320b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12693 : bytes12693=statementBytes 12811 (op12693.map lower) ∧ bytes12693.length=41 := by core033_kernel_decide
def op12694 : List WordIR.Op := [.bxor 693 12811]
def bytes12694 : Bytes := ("    let r0000320c: u32 = r000002b5 ^ r0000320b;\n" : String).toByteArray.data.toList
theorem checked12694 : bytes12694=statementBytes 12812 (op12694.map lower) ∧ bytes12694.length=48 := by core033_kernel_decide
def op12695 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12695 : Bytes := ("    let r0000320d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12695 : bytes12695=statementBytes 12813 (op12695.map lower) ∧ bytes12695.length=41 := by core033_kernel_decide
def op12696 : List WordIR.Op := [.bnot 12813]
def bytes12696 : Bytes := ("    let r0000320e: u32 = !r0000320d;\n" : String).toByteArray.data.toList
theorem checked12696 : bytes12696=statementBytes 12814 (op12696.map lower) ∧ bytes12696.length=37 := by core033_kernel_decide
def op12697 : List WordIR.Op := [.bxor 12812 12814]
def bytes12697 : Bytes := ("    let r0000320f: u32 = r0000320c ^ r0000320e;\n" : String).toByteArray.data.toList
theorem checked12697 : bytes12697=statementBytes 12815 (op12697.map lower) ∧ bytes12697.length=48 := by core033_kernel_decide
def op12698 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12698 : Bytes := ("    let r00003210: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12698 : bytes12698=statementBytes 12816 (op12698.map lower) ∧ bytes12698.length=41 := by core033_kernel_decide
def op12699 : List WordIR.Op := [.bxor 693 12816]
def bytes12699 : Bytes := ("    let r00003211: u32 = r000002b5 ^ r00003210;\n" : String).toByteArray.data.toList
theorem checked12699 : bytes12699=statementBytes 12817 (op12699.map lower) ∧ bytes12699.length=48 := by core033_kernel_decide
def op12700 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12700 : Bytes := ("    let r00003212: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12700 : bytes12700=statementBytes 12818 (op12700.map lower) ∧ bytes12700.length=41 := by core033_kernel_decide
def op12701 : List WordIR.Op := [.bnot 12818]
def bytes12701 : Bytes := ("    let r00003213: u32 = !r00003212;\n" : String).toByteArray.data.toList
theorem checked12701 : bytes12701=statementBytes 12819 (op12701.map lower) ∧ bytes12701.length=37 := by core033_kernel_decide
def op12702 : List WordIR.Op := [.badd 12817 12819]
def bytes12702 : Bytes := ("    let r00003214: u32 = r00003211.wrapping_add(r00003213);\n" : String).toByteArray.data.toList
theorem checked12702 : bytes12702=statementBytes 12820 (op12702.map lower) ∧ bytes12702.length=60 := by core033_kernel_decide
def op12703 : List WordIR.Op := [.bnot 12820]
def bytes12703 : Bytes := ("    let r00003215: u32 = !r00003214;\n" : String).toByteArray.data.toList
theorem checked12703 : bytes12703=statementBytes 12821 (op12703.map lower) ∧ bytes12703.length=37 := by core033_kernel_decide
def op12704 : List WordIR.Op := [.band 12815 12821]
def bytes12704 : Bytes := ("    let r00003216: u32 = r0000320f & r00003215;\n" : String).toByteArray.data.toList
theorem checked12704 : bytes12704=statementBytes 12822 (op12704.map lower) ∧ bytes12704.length=48 := by core033_kernel_decide
def op12705 : List WordIR.Op := [.bxor 12810 12822]
def bytes12705 : Bytes := ("    let r00003217: u32 = r0000320a ^ r00003216;\n" : String).toByteArray.data.toList
theorem checked12705 : bytes12705=statementBytes 12823 (op12705.map lower) ∧ bytes12705.length=48 := by core033_kernel_decide
def op12706 : List WordIR.Op := [.shr 12823 31]
def bytes12706 : Bytes := ("    let r00003218: u32 = r00003217 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12706 : bytes12706=statementBytes 12824 (op12706.map lower) ∧ bytes12706.length=54 := by core033_kernel_decide
def op12707 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12707 : Bytes := ("    let r00003219: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12707 : bytes12707=statementBytes 12825 (op12707.map lower) ∧ bytes12707.length=41 := by core033_kernel_decide
def op12708 : List WordIR.Op := [.bxor 12824 12825]
def bytes12708 : Bytes := ("    let r0000321a: u32 = r00003218 ^ r00003219;\n" : String).toByteArray.data.toList
theorem checked12708 : bytes12708=statementBytes 12826 (op12708.map lower) ∧ bytes12708.length=48 := by core033_kernel_decide
def op12709 : List WordIR.Op := [.bnot 12826]
def bytes12709 : Bytes := ("    let r0000321b: u32 = !r0000321a;\n" : String).toByteArray.data.toList
theorem checked12709 : bytes12709=statementBytes 12827 (op12709.map lower) ∧ bytes12709.length=37 := by core033_kernel_decide
def op12710 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12710 : Bytes := ("    let r0000321c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12710 : bytes12710=statementBytes 12828 (op12710.map lower) ∧ bytes12710.length=41 := by core033_kernel_decide
def op12711 : List WordIR.Op := [.badd 12827 12828]
def bytes12711 : Bytes := ("    let r0000321d: u32 = r0000321b.wrapping_add(r0000321c);\n" : String).toByteArray.data.toList
theorem checked12711 : bytes12711=statementBytes 12829 (op12711.map lower) ∧ bytes12711.length=60 := by core033_kernel_decide
def op12712 : List WordIR.Op := [.bnot 12829]
def bytes12712 : Bytes := ("    let r0000321e: u32 = !r0000321d;\n" : String).toByteArray.data.toList
theorem checked12712 : bytes12712=statementBytes 12830 (op12712.map lower) ∧ bytes12712.length=37 := by core033_kernel_decide
def op12713 : List WordIR.Op := [.band 12830 1585]
def bytes12713 : Bytes := ("    let r0000321f: u32 = r0000321e & r00000631;\n" : String).toByteArray.data.toList
theorem checked12713 : bytes12713=statementBytes 12831 (op12713.map lower) ∧ bytes12713.length=48 := by core033_kernel_decide
def op12714 : List WordIR.Op := [.bxor 12805 12831]
def bytes12714 : Bytes := ("    let r00003220: u32 = r00003205 ^ r0000321f;\n" : String).toByteArray.data.toList
theorem checked12714 : bytes12714=statementBytes 12832 (op12714.map lower) ∧ bytes12714.length=48 := by core033_kernel_decide
def op12715 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12715 : Bytes := ("    let r00003221: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12715 : bytes12715=statementBytes 12833 (op12715.map lower) ∧ bytes12715.length=41 := by core033_kernel_decide
def op12716 : List WordIR.Op := [.bxor 693 12833]
def bytes12716 : Bytes := ("    let r00003222: u32 = r000002b5 ^ r00003221;\n" : String).toByteArray.data.toList
theorem checked12716 : bytes12716=statementBytes 12834 (op12716.map lower) ∧ bytes12716.length=48 := by core033_kernel_decide
def op12717 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12717 : Bytes := ("    let r00003223: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12717 : bytes12717=statementBytes 12835 (op12717.map lower) ∧ bytes12717.length=41 := by core033_kernel_decide
def op12718 : List WordIR.Op := [.bnot 12835]
def bytes12718 : Bytes := ("    let r00003224: u32 = !r00003223;\n" : String).toByteArray.data.toList
theorem checked12718 : bytes12718=statementBytes 12836 (op12718.map lower) ∧ bytes12718.length=37 := by core033_kernel_decide
def op12719 : List WordIR.Op := [.band 12834 12836]
def bytes12719 : Bytes := ("    let r00003225: u32 = r00003222 & r00003224;\n" : String).toByteArray.data.toList
theorem checked12719 : bytes12719=statementBytes 12837 (op12719.map lower) ∧ bytes12719.length=48 := by core033_kernel_decide
def op12720 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12720 : Bytes := ("    let r00003226: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12720 : bytes12720=statementBytes 12838 (op12720.map lower) ∧ bytes12720.length=41 := by core033_kernel_decide
def op12721 : List WordIR.Op := [.bxor 693 12838]
def bytes12721 : Bytes := ("    let r00003227: u32 = r000002b5 ^ r00003226;\n" : String).toByteArray.data.toList
theorem checked12721 : bytes12721=statementBytes 12839 (op12721.map lower) ∧ bytes12721.length=48 := by core033_kernel_decide
def op12722 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12722 : Bytes := ("    let r00003228: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12722 : bytes12722=statementBytes 12840 (op12722.map lower) ∧ bytes12722.length=41 := by core033_kernel_decide
def op12723 : List WordIR.Op := [.bnot 12840]
def bytes12723 : Bytes := ("    let r00003229: u32 = !r00003228;\n" : String).toByteArray.data.toList
theorem checked12723 : bytes12723=statementBytes 12841 (op12723.map lower) ∧ bytes12723.length=37 := by core033_kernel_decide
def op12724 : List WordIR.Op := [.bxor 12839 12841]
def bytes12724 : Bytes := ("    let r0000322a: u32 = r00003227 ^ r00003229;\n" : String).toByteArray.data.toList
theorem checked12724 : bytes12724=statementBytes 12842 (op12724.map lower) ∧ bytes12724.length=48 := by core033_kernel_decide
def op12725 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12725 : Bytes := ("    let r0000322b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12725 : bytes12725=statementBytes 12843 (op12725.map lower) ∧ bytes12725.length=41 := by core033_kernel_decide
def op12726 : List WordIR.Op := [.bxor 693 12843]
def bytes12726 : Bytes := ("    let r0000322c: u32 = r000002b5 ^ r0000322b;\n" : String).toByteArray.data.toList
theorem checked12726 : bytes12726=statementBytes 12844 (op12726.map lower) ∧ bytes12726.length=48 := by core033_kernel_decide
def op12727 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12727 : Bytes := ("    let r0000322d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12727 : bytes12727=statementBytes 12845 (op12727.map lower) ∧ bytes12727.length=41 := by core033_kernel_decide
def op12728 : List WordIR.Op := [.bnot 12845]
def bytes12728 : Bytes := ("    let r0000322e: u32 = !r0000322d;\n" : String).toByteArray.data.toList
theorem checked12728 : bytes12728=statementBytes 12846 (op12728.map lower) ∧ bytes12728.length=37 := by core033_kernel_decide
def op12729 : List WordIR.Op := [.badd 12844 12846]
def bytes12729 : Bytes := ("    let r0000322f: u32 = r0000322c.wrapping_add(r0000322e);\n" : String).toByteArray.data.toList
theorem checked12729 : bytes12729=statementBytes 12847 (op12729.map lower) ∧ bytes12729.length=60 := by core033_kernel_decide
def op12730 : List WordIR.Op := [.bnot 12847]
def bytes12730 : Bytes := ("    let r00003230: u32 = !r0000322f;\n" : String).toByteArray.data.toList
theorem checked12730 : bytes12730=statementBytes 12848 (op12730.map lower) ∧ bytes12730.length=37 := by core033_kernel_decide
def op12731 : List WordIR.Op := [.band 12842 12848]
def bytes12731 : Bytes := ("    let r00003231: u32 = r0000322a & r00003230;\n" : String).toByteArray.data.toList
theorem checked12731 : bytes12731=statementBytes 12849 (op12731.map lower) ∧ bytes12731.length=48 := by core033_kernel_decide
def op12732 : List WordIR.Op := [.bxor 12837 12849]
def bytes12732 : Bytes := ("    let r00003232: u32 = r00003225 ^ r00003231;\n" : String).toByteArray.data.toList
theorem checked12732 : bytes12732=statementBytes 12850 (op12732.map lower) ∧ bytes12732.length=48 := by core033_kernel_decide
def op12733 : List WordIR.Op := [.shr 12850 31]
def bytes12733 : Bytes := ("    let r00003233: u32 = r00003232 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12733 : bytes12733=statementBytes 12851 (op12733.map lower) ∧ bytes12733.length=54 := by core033_kernel_decide
def op12734 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12734 : Bytes := ("    let r00003234: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12734 : bytes12734=statementBytes 12852 (op12734.map lower) ∧ bytes12734.length=41 := by core033_kernel_decide
def op12735 : List WordIR.Op := [.bxor 12851 12852]
def bytes12735 : Bytes := ("    let r00003235: u32 = r00003233 ^ r00003234;\n" : String).toByteArray.data.toList
theorem checked12735 : bytes12735=statementBytes 12853 (op12735.map lower) ∧ bytes12735.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12672,op12673,op12674,op12675,op12676,op12677,op12678,op12679,op12680,op12681,op12682,op12683,op12684,op12685,op12686,op12687,op12688,op12689,op12690,op12691,op12692,op12693,op12694,op12695,op12696,op12697,op12698,op12699,op12700,op12701,op12702,op12703,op12704,op12705,op12706,op12707,op12708,op12709,op12710,op12711,op12712,op12713,op12714,op12715,op12716,op12717,op12718,op12719,op12720,op12721,op12722,op12723,op12724,op12725,op12726,op12727,op12728,op12729,op12730,op12731,op12732,op12733,op12734,op12735]
def chunks : List Bytes := [bytes12672,bytes12673,bytes12674,bytes12675,bytes12676,bytes12677,bytes12678,bytes12679,bytes12680,bytes12681,bytes12682,bytes12683,bytes12684,bytes12685,bytes12686,bytes12687,bytes12688,bytes12689,bytes12690,bytes12691,bytes12692,bytes12693,bytes12694,bytes12695,bytes12696,bytes12697,bytes12698,bytes12699,bytes12700,bytes12701,bytes12702,bytes12703,bytes12704,bytes12705,bytes12706,bytes12707,bytes12708,bytes12709,bytes12710,bytes12711,bytes12712,bytes12713,bytes12714,bytes12715,bytes12716,bytes12717,bytes12718,bytes12719,bytes12720,bytes12721,bytes12722,bytes12723,bytes12724,bytes12725,bytes12726,bytes12727,bytes12728,bytes12729,bytes12730,bytes12731,bytes12732,bytes12733,bytes12734,bytes12735]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12790 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12672.1 (.cons _ _ _ _ _ checked12673.1 (.cons _ _ _ _ _ checked12674.1 (.cons _ _ _ _ _ checked12675.1 (.cons _ _ _ _ _ checked12676.1 (.cons _ _ _ _ _ checked12677.1 (.cons _ _ _ _ _ checked12678.1 (.cons _ _ _ _ _ checked12679.1 (.cons _ _ _ _ _ checked12680.1 (.cons _ _ _ _ _ checked12681.1 (.cons _ _ _ _ _ checked12682.1 (.cons _ _ _ _ _ checked12683.1 (.cons _ _ _ _ _ checked12684.1 (.cons _ _ _ _ _ checked12685.1 (.cons _ _ _ _ _ checked12686.1 (.cons _ _ _ _ _ checked12687.1 (.cons _ _ _ _ _ checked12688.1 (.cons _ _ _ _ _ checked12689.1 (.cons _ _ _ _ _ checked12690.1 (.cons _ _ _ _ _ checked12691.1 (.cons _ _ _ _ _ checked12692.1 (.cons _ _ _ _ _ checked12693.1 (.cons _ _ _ _ _ checked12694.1 (.cons _ _ _ _ _ checked12695.1 (.cons _ _ _ _ _ checked12696.1 (.cons _ _ _ _ _ checked12697.1 (.cons _ _ _ _ _ checked12698.1 (.cons _ _ _ _ _ checked12699.1 (.cons _ _ _ _ _ checked12700.1 (.cons _ _ _ _ _ checked12701.1 (.cons _ _ _ _ _ checked12702.1 (.cons _ _ _ _ _ checked12703.1 (.cons _ _ _ _ _ checked12704.1 (.cons _ _ _ _ _ checked12705.1 (.cons _ _ _ _ _ checked12706.1 (.cons _ _ _ _ _ checked12707.1 (.cons _ _ _ _ _ checked12708.1 (.cons _ _ _ _ _ checked12709.1 (.cons _ _ _ _ _ checked12710.1 (.cons _ _ _ _ _ checked12711.1 (.cons _ _ _ _ _ checked12712.1 (.cons _ _ _ _ _ checked12713.1 (.cons _ _ _ _ _ checked12714.1 (.cons _ _ _ _ _ checked12715.1 (.cons _ _ _ _ _ checked12716.1 (.cons _ _ _ _ _ checked12717.1 (.cons _ _ _ _ _ checked12718.1 (.cons _ _ _ _ _ checked12719.1 (.cons _ _ _ _ _ checked12720.1 (.cons _ _ _ _ _ checked12721.1 (.cons _ _ _ _ _ checked12722.1 (.cons _ _ _ _ _ checked12723.1 (.cons _ _ _ _ _ checked12724.1 (.cons _ _ _ _ _ checked12725.1 (.cons _ _ _ _ _ checked12726.1 (.cons _ _ _ _ _ checked12727.1 (.cons _ _ _ _ _ checked12728.1 (.cons _ _ _ _ _ checked12729.1 (.cons _ _ _ _ _ checked12730.1 (.cons _ _ _ _ _ checked12731.1 (.cons _ _ _ _ _ checked12732.1 (.cons _ _ _ _ _ checked12733.1 (.cons _ _ _ _ _ checked12734.1 (.cons _ _ _ _ _ checked12735.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12790 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12672.2,checked12673.2,checked12674.2,checked12675.2,checked12676.2,checked12677.2,checked12678.2,checked12679.2,checked12680.2,checked12681.2,checked12682.2,checked12683.2,checked12684.2,checked12685.2,checked12686.2,checked12687.2,checked12688.2,checked12689.2,checked12690.2,checked12691.2,checked12692.2,checked12693.2,checked12694.2,checked12695.2,checked12696.2,checked12697.2,checked12698.2,checked12699.2,checked12700.2,checked12701.2,checked12702.2,checked12703.2,checked12704.2,checked12705.2,checked12706.2,checked12707.2,checked12708.2,checked12709.2,checked12710.2,checked12711.2,checked12712.2,checked12713.2,checked12714.2,checked12715.2,checked12716.2,checked12717.2,checked12718.2,checked12719.2,checked12720.2,checked12721.2,checked12722.2,checked12723.2,checked12724.2,checked12725.2,checked12726.2,checked12727.2,checked12728.2,checked12729.2,checked12730.2,checked12731.2,checked12732.2,checked12733.2,checked12734.2,checked12735.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup198
