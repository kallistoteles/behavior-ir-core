import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup183
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11712 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11712 : Bytes := ("    let r00002e20: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11712 : bytes11712=statementBytes 11808 (op11712.map lower) ∧ bytes11712.length=41 := by core033_kernel_decide
def op11713 : List WordIR.Op := [.badd 11807 11808]
def bytes11713 : Bytes := ("    let r00002e21: u32 = r00002e1f.wrapping_add(r00002e20);\n" : String).toByteArray.data.toList
theorem checked11713 : bytes11713=statementBytes 11809 (op11713.map lower) ∧ bytes11713.length=60 := by core033_kernel_decide
def op11714 : List WordIR.Op := [.band 11809 10157]
def bytes11714 : Bytes := ("    let r00002e22: u32 = r00002e21 & r000027ad;\n" : String).toByteArray.data.toList
theorem checked11714 : bytes11714=statementBytes 11810 (op11714.map lower) ∧ bytes11714.length=48 := by core033_kernel_decide
def op11715 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11715 : Bytes := ("    let r00002e23: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11715 : bytes11715=statementBytes 11811 (op11715.map lower) ∧ bytes11715.length=41 := by core033_kernel_decide
def op11716 : List WordIR.Op := [.bxor 442 11811]
def bytes11716 : Bytes := ("    let r00002e24: u32 = r000001ba ^ r00002e23;\n" : String).toByteArray.data.toList
theorem checked11716 : bytes11716=statementBytes 11812 (op11716.map lower) ∧ bytes11716.length=48 := by core033_kernel_decide
def op11717 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11717 : Bytes := ("    let r00002e25: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11717 : bytes11717=statementBytes 11813 (op11717.map lower) ∧ bytes11717.length=41 := by core033_kernel_decide
def op11718 : List WordIR.Op := [.bnot 11813]
def bytes11718 : Bytes := ("    let r00002e26: u32 = !r00002e25;\n" : String).toByteArray.data.toList
theorem checked11718 : bytes11718=statementBytes 11814 (op11718.map lower) ∧ bytes11718.length=37 := by core033_kernel_decide
def op11719 : List WordIR.Op := [.band 11812 11814]
def bytes11719 : Bytes := ("    let r00002e27: u32 = r00002e24 & r00002e26;\n" : String).toByteArray.data.toList
theorem checked11719 : bytes11719=statementBytes 11815 (op11719.map lower) ∧ bytes11719.length=48 := by core033_kernel_decide
def op11720 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11720 : Bytes := ("    let r00002e28: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11720 : bytes11720=statementBytes 11816 (op11720.map lower) ∧ bytes11720.length=41 := by core033_kernel_decide
def op11721 : List WordIR.Op := [.bxor 442 11816]
def bytes11721 : Bytes := ("    let r00002e29: u32 = r000001ba ^ r00002e28;\n" : String).toByteArray.data.toList
theorem checked11721 : bytes11721=statementBytes 11817 (op11721.map lower) ∧ bytes11721.length=48 := by core033_kernel_decide
def op11722 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11722 : Bytes := ("    let r00002e2a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11722 : bytes11722=statementBytes 11818 (op11722.map lower) ∧ bytes11722.length=41 := by core033_kernel_decide
def op11723 : List WordIR.Op := [.bnot 11818]
def bytes11723 : Bytes := ("    let r00002e2b: u32 = !r00002e2a;\n" : String).toByteArray.data.toList
theorem checked11723 : bytes11723=statementBytes 11819 (op11723.map lower) ∧ bytes11723.length=37 := by core033_kernel_decide
def op11724 : List WordIR.Op := [.bxor 11817 11819]
def bytes11724 : Bytes := ("    let r00002e2c: u32 = r00002e29 ^ r00002e2b;\n" : String).toByteArray.data.toList
theorem checked11724 : bytes11724=statementBytes 11820 (op11724.map lower) ∧ bytes11724.length=48 := by core033_kernel_decide
def op11725 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11725 : Bytes := ("    let r00002e2d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11725 : bytes11725=statementBytes 11821 (op11725.map lower) ∧ bytes11725.length=41 := by core033_kernel_decide
def op11726 : List WordIR.Op := [.bxor 442 11821]
def bytes11726 : Bytes := ("    let r00002e2e: u32 = r000001ba ^ r00002e2d;\n" : String).toByteArray.data.toList
theorem checked11726 : bytes11726=statementBytes 11822 (op11726.map lower) ∧ bytes11726.length=48 := by core033_kernel_decide
def op11727 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11727 : Bytes := ("    let r00002e2f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11727 : bytes11727=statementBytes 11823 (op11727.map lower) ∧ bytes11727.length=41 := by core033_kernel_decide
def op11728 : List WordIR.Op := [.bnot 11823]
def bytes11728 : Bytes := ("    let r00002e30: u32 = !r00002e2f;\n" : String).toByteArray.data.toList
theorem checked11728 : bytes11728=statementBytes 11824 (op11728.map lower) ∧ bytes11728.length=37 := by core033_kernel_decide
def op11729 : List WordIR.Op := [.badd 11822 11824]
def bytes11729 : Bytes := ("    let r00002e31: u32 = r00002e2e.wrapping_add(r00002e30);\n" : String).toByteArray.data.toList
theorem checked11729 : bytes11729=statementBytes 11825 (op11729.map lower) ∧ bytes11729.length=60 := by core033_kernel_decide
def op11730 : List WordIR.Op := [.bnot 11825]
def bytes11730 : Bytes := ("    let r00002e32: u32 = !r00002e31;\n" : String).toByteArray.data.toList
theorem checked11730 : bytes11730=statementBytes 11826 (op11730.map lower) ∧ bytes11730.length=37 := by core033_kernel_decide
def op11731 : List WordIR.Op := [.band 11820 11826]
def bytes11731 : Bytes := ("    let r00002e33: u32 = r00002e2c & r00002e32;\n" : String).toByteArray.data.toList
theorem checked11731 : bytes11731=statementBytes 11827 (op11731.map lower) ∧ bytes11731.length=48 := by core033_kernel_decide
def op11732 : List WordIR.Op := [.bxor 11815 11827]
def bytes11732 : Bytes := ("    let r00002e34: u32 = r00002e27 ^ r00002e33;\n" : String).toByteArray.data.toList
theorem checked11732 : bytes11732=statementBytes 11828 (op11732.map lower) ∧ bytes11732.length=48 := by core033_kernel_decide
def op11733 : List WordIR.Op := [.shr 11828 31]
def bytes11733 : Bytes := ("    let r00002e35: u32 = r00002e34 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11733 : bytes11733=statementBytes 11829 (op11733.map lower) ∧ bytes11733.length=54 := by core033_kernel_decide
def op11734 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11734 : Bytes := ("    let r00002e36: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11734 : bytes11734=statementBytes 11830 (op11734.map lower) ∧ bytes11734.length=41 := by core033_kernel_decide
def op11735 : List WordIR.Op := [.bxor 11829 11830]
def bytes11735 : Bytes := ("    let r00002e37: u32 = r00002e35 ^ r00002e36;\n" : String).toByteArray.data.toList
theorem checked11735 : bytes11735=statementBytes 11831 (op11735.map lower) ∧ bytes11735.length=48 := by core033_kernel_decide
def op11736 : List WordIR.Op := [.bnot 11831]
def bytes11736 : Bytes := ("    let r00002e38: u32 = !r00002e37;\n" : String).toByteArray.data.toList
theorem checked11736 : bytes11736=statementBytes 11832 (op11736.map lower) ∧ bytes11736.length=37 := by core033_kernel_decide
def op11737 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11737 : Bytes := ("    let r00002e39: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11737 : bytes11737=statementBytes 11833 (op11737.map lower) ∧ bytes11737.length=41 := by core033_kernel_decide
def op11738 : List WordIR.Op := [.badd 11832 11833]
def bytes11738 : Bytes := ("    let r00002e3a: u32 = r00002e38.wrapping_add(r00002e39);\n" : String).toByteArray.data.toList
theorem checked11738 : bytes11738=statementBytes 11834 (op11738.map lower) ∧ bytes11738.length=60 := by core033_kernel_decide
def op11739 : List WordIR.Op := [.bnot 11834]
def bytes11739 : Bytes := ("    let r00002e3b: u32 = !r00002e3a;\n" : String).toByteArray.data.toList
theorem checked11739 : bytes11739=statementBytes 11835 (op11739.map lower) ∧ bytes11739.length=37 := by core033_kernel_decide
def op11740 : List WordIR.Op := [.band 11835 836]
def bytes11740 : Bytes := ("    let r00002e3c: u32 = r00002e3b & r00000344;\n" : String).toByteArray.data.toList
theorem checked11740 : bytes11740=statementBytes 11836 (op11740.map lower) ∧ bytes11740.length=48 := by core033_kernel_decide
def op11741 : List WordIR.Op := [.bxor 11810 11836]
def bytes11741 : Bytes := ("    let r00002e3d: u32 = r00002e22 ^ r00002e3c;\n" : String).toByteArray.data.toList
theorem checked11741 : bytes11741=statementBytes 11837 (op11741.map lower) ∧ bytes11741.length=48 := by core033_kernel_decide
def op11742 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11742 : Bytes := ("    let r00002e3e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11742 : bytes11742=statementBytes 11838 (op11742.map lower) ∧ bytes11742.length=41 := by core033_kernel_decide
def op11743 : List WordIR.Op := [.bxor 442 11838]
def bytes11743 : Bytes := ("    let r00002e3f: u32 = r000001ba ^ r00002e3e;\n" : String).toByteArray.data.toList
theorem checked11743 : bytes11743=statementBytes 11839 (op11743.map lower) ∧ bytes11743.length=48 := by core033_kernel_decide
def op11744 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11744 : Bytes := ("    let r00002e40: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11744 : bytes11744=statementBytes 11840 (op11744.map lower) ∧ bytes11744.length=41 := by core033_kernel_decide
def op11745 : List WordIR.Op := [.bnot 11840]
def bytes11745 : Bytes := ("    let r00002e41: u32 = !r00002e40;\n" : String).toByteArray.data.toList
theorem checked11745 : bytes11745=statementBytes 11841 (op11745.map lower) ∧ bytes11745.length=37 := by core033_kernel_decide
def op11746 : List WordIR.Op := [.band 11839 11841]
def bytes11746 : Bytes := ("    let r00002e42: u32 = r00002e3f & r00002e41;\n" : String).toByteArray.data.toList
theorem checked11746 : bytes11746=statementBytes 11842 (op11746.map lower) ∧ bytes11746.length=48 := by core033_kernel_decide
def op11747 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11747 : Bytes := ("    let r00002e43: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11747 : bytes11747=statementBytes 11843 (op11747.map lower) ∧ bytes11747.length=41 := by core033_kernel_decide
def op11748 : List WordIR.Op := [.bxor 442 11843]
def bytes11748 : Bytes := ("    let r00002e44: u32 = r000001ba ^ r00002e43;\n" : String).toByteArray.data.toList
theorem checked11748 : bytes11748=statementBytes 11844 (op11748.map lower) ∧ bytes11748.length=48 := by core033_kernel_decide
def op11749 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11749 : Bytes := ("    let r00002e45: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11749 : bytes11749=statementBytes 11845 (op11749.map lower) ∧ bytes11749.length=41 := by core033_kernel_decide
def op11750 : List WordIR.Op := [.bnot 11845]
def bytes11750 : Bytes := ("    let r00002e46: u32 = !r00002e45;\n" : String).toByteArray.data.toList
theorem checked11750 : bytes11750=statementBytes 11846 (op11750.map lower) ∧ bytes11750.length=37 := by core033_kernel_decide
def op11751 : List WordIR.Op := [.bxor 11844 11846]
def bytes11751 : Bytes := ("    let r00002e47: u32 = r00002e44 ^ r00002e46;\n" : String).toByteArray.data.toList
theorem checked11751 : bytes11751=statementBytes 11847 (op11751.map lower) ∧ bytes11751.length=48 := by core033_kernel_decide
def op11752 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11752 : Bytes := ("    let r00002e48: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11752 : bytes11752=statementBytes 11848 (op11752.map lower) ∧ bytes11752.length=41 := by core033_kernel_decide
def op11753 : List WordIR.Op := [.bxor 442 11848]
def bytes11753 : Bytes := ("    let r00002e49: u32 = r000001ba ^ r00002e48;\n" : String).toByteArray.data.toList
theorem checked11753 : bytes11753=statementBytes 11849 (op11753.map lower) ∧ bytes11753.length=48 := by core033_kernel_decide
def op11754 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11754 : Bytes := ("    let r00002e4a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11754 : bytes11754=statementBytes 11850 (op11754.map lower) ∧ bytes11754.length=41 := by core033_kernel_decide
def op11755 : List WordIR.Op := [.bnot 11850]
def bytes11755 : Bytes := ("    let r00002e4b: u32 = !r00002e4a;\n" : String).toByteArray.data.toList
theorem checked11755 : bytes11755=statementBytes 11851 (op11755.map lower) ∧ bytes11755.length=37 := by core033_kernel_decide
def op11756 : List WordIR.Op := [.badd 11849 11851]
def bytes11756 : Bytes := ("    let r00002e4c: u32 = r00002e49.wrapping_add(r00002e4b);\n" : String).toByteArray.data.toList
theorem checked11756 : bytes11756=statementBytes 11852 (op11756.map lower) ∧ bytes11756.length=60 := by core033_kernel_decide
def op11757 : List WordIR.Op := [.bnot 11852]
def bytes11757 : Bytes := ("    let r00002e4d: u32 = !r00002e4c;\n" : String).toByteArray.data.toList
theorem checked11757 : bytes11757=statementBytes 11853 (op11757.map lower) ∧ bytes11757.length=37 := by core033_kernel_decide
def op11758 : List WordIR.Op := [.band 11847 11853]
def bytes11758 : Bytes := ("    let r00002e4e: u32 = r00002e47 & r00002e4d;\n" : String).toByteArray.data.toList
theorem checked11758 : bytes11758=statementBytes 11854 (op11758.map lower) ∧ bytes11758.length=48 := by core033_kernel_decide
def op11759 : List WordIR.Op := [.bxor 11842 11854]
def bytes11759 : Bytes := ("    let r00002e4f: u32 = r00002e42 ^ r00002e4e;\n" : String).toByteArray.data.toList
theorem checked11759 : bytes11759=statementBytes 11855 (op11759.map lower) ∧ bytes11759.length=48 := by core033_kernel_decide
def op11760 : List WordIR.Op := [.shr 11855 31]
def bytes11760 : Bytes := ("    let r00002e50: u32 = r00002e4f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11760 : bytes11760=statementBytes 11856 (op11760.map lower) ∧ bytes11760.length=54 := by core033_kernel_decide
def op11761 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11761 : Bytes := ("    let r00002e51: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11761 : bytes11761=statementBytes 11857 (op11761.map lower) ∧ bytes11761.length=41 := by core033_kernel_decide
def op11762 : List WordIR.Op := [.bxor 11856 11857]
def bytes11762 : Bytes := ("    let r00002e52: u32 = r00002e50 ^ r00002e51;\n" : String).toByteArray.data.toList
theorem checked11762 : bytes11762=statementBytes 11858 (op11762.map lower) ∧ bytes11762.length=48 := by core033_kernel_decide
def op11763 : List WordIR.Op := [.bnot 11858]
def bytes11763 : Bytes := ("    let r00002e53: u32 = !r00002e52;\n" : String).toByteArray.data.toList
theorem checked11763 : bytes11763=statementBytes 11859 (op11763.map lower) ∧ bytes11763.length=37 := by core033_kernel_decide
def op11764 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11764 : Bytes := ("    let r00002e54: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11764 : bytes11764=statementBytes 11860 (op11764.map lower) ∧ bytes11764.length=41 := by core033_kernel_decide
def op11765 : List WordIR.Op := [.badd 11859 11860]
def bytes11765 : Bytes := ("    let r00002e55: u32 = r00002e53.wrapping_add(r00002e54);\n" : String).toByteArray.data.toList
theorem checked11765 : bytes11765=statementBytes 11861 (op11765.map lower) ∧ bytes11765.length=60 := by core033_kernel_decide
def op11766 : List WordIR.Op := [.band 11861 10168]
def bytes11766 : Bytes := ("    let r00002e56: u32 = r00002e55 & r000027b8;\n" : String).toByteArray.data.toList
theorem checked11766 : bytes11766=statementBytes 11862 (op11766.map lower) ∧ bytes11766.length=48 := by core033_kernel_decide
def op11767 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11767 : Bytes := ("    let r00002e57: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11767 : bytes11767=statementBytes 11863 (op11767.map lower) ∧ bytes11767.length=41 := by core033_kernel_decide
def op11768 : List WordIR.Op := [.bxor 442 11863]
def bytes11768 : Bytes := ("    let r00002e58: u32 = r000001ba ^ r00002e57;\n" : String).toByteArray.data.toList
theorem checked11768 : bytes11768=statementBytes 11864 (op11768.map lower) ∧ bytes11768.length=48 := by core033_kernel_decide
def op11769 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11769 : Bytes := ("    let r00002e59: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11769 : bytes11769=statementBytes 11865 (op11769.map lower) ∧ bytes11769.length=41 := by core033_kernel_decide
def op11770 : List WordIR.Op := [.bnot 11865]
def bytes11770 : Bytes := ("    let r00002e5a: u32 = !r00002e59;\n" : String).toByteArray.data.toList
theorem checked11770 : bytes11770=statementBytes 11866 (op11770.map lower) ∧ bytes11770.length=37 := by core033_kernel_decide
def op11771 : List WordIR.Op := [.band 11864 11866]
def bytes11771 : Bytes := ("    let r00002e5b: u32 = r00002e58 & r00002e5a;\n" : String).toByteArray.data.toList
theorem checked11771 : bytes11771=statementBytes 11867 (op11771.map lower) ∧ bytes11771.length=48 := by core033_kernel_decide
def op11772 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11772 : Bytes := ("    let r00002e5c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11772 : bytes11772=statementBytes 11868 (op11772.map lower) ∧ bytes11772.length=41 := by core033_kernel_decide
def op11773 : List WordIR.Op := [.bxor 442 11868]
def bytes11773 : Bytes := ("    let r00002e5d: u32 = r000001ba ^ r00002e5c;\n" : String).toByteArray.data.toList
theorem checked11773 : bytes11773=statementBytes 11869 (op11773.map lower) ∧ bytes11773.length=48 := by core033_kernel_decide
def op11774 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11774 : Bytes := ("    let r00002e5e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11774 : bytes11774=statementBytes 11870 (op11774.map lower) ∧ bytes11774.length=41 := by core033_kernel_decide
def op11775 : List WordIR.Op := [.bnot 11870]
def bytes11775 : Bytes := ("    let r00002e5f: u32 = !r00002e5e;\n" : String).toByteArray.data.toList
theorem checked11775 : bytes11775=statementBytes 11871 (op11775.map lower) ∧ bytes11775.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11712,op11713,op11714,op11715,op11716,op11717,op11718,op11719,op11720,op11721,op11722,op11723,op11724,op11725,op11726,op11727,op11728,op11729,op11730,op11731,op11732,op11733,op11734,op11735,op11736,op11737,op11738,op11739,op11740,op11741,op11742,op11743,op11744,op11745,op11746,op11747,op11748,op11749,op11750,op11751,op11752,op11753,op11754,op11755,op11756,op11757,op11758,op11759,op11760,op11761,op11762,op11763,op11764,op11765,op11766,op11767,op11768,op11769,op11770,op11771,op11772,op11773,op11774,op11775]
def chunks : List Bytes := [bytes11712,bytes11713,bytes11714,bytes11715,bytes11716,bytes11717,bytes11718,bytes11719,bytes11720,bytes11721,bytes11722,bytes11723,bytes11724,bytes11725,bytes11726,bytes11727,bytes11728,bytes11729,bytes11730,bytes11731,bytes11732,bytes11733,bytes11734,bytes11735,bytes11736,bytes11737,bytes11738,bytes11739,bytes11740,bytes11741,bytes11742,bytes11743,bytes11744,bytes11745,bytes11746,bytes11747,bytes11748,bytes11749,bytes11750,bytes11751,bytes11752,bytes11753,bytes11754,bytes11755,bytes11756,bytes11757,bytes11758,bytes11759,bytes11760,bytes11761,bytes11762,bytes11763,bytes11764,bytes11765,bytes11766,bytes11767,bytes11768,bytes11769,bytes11770,bytes11771,bytes11772,bytes11773,bytes11774,bytes11775]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11808 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11712.1 (.cons _ _ _ _ _ checked11713.1 (.cons _ _ _ _ _ checked11714.1 (.cons _ _ _ _ _ checked11715.1 (.cons _ _ _ _ _ checked11716.1 (.cons _ _ _ _ _ checked11717.1 (.cons _ _ _ _ _ checked11718.1 (.cons _ _ _ _ _ checked11719.1 (.cons _ _ _ _ _ checked11720.1 (.cons _ _ _ _ _ checked11721.1 (.cons _ _ _ _ _ checked11722.1 (.cons _ _ _ _ _ checked11723.1 (.cons _ _ _ _ _ checked11724.1 (.cons _ _ _ _ _ checked11725.1 (.cons _ _ _ _ _ checked11726.1 (.cons _ _ _ _ _ checked11727.1 (.cons _ _ _ _ _ checked11728.1 (.cons _ _ _ _ _ checked11729.1 (.cons _ _ _ _ _ checked11730.1 (.cons _ _ _ _ _ checked11731.1 (.cons _ _ _ _ _ checked11732.1 (.cons _ _ _ _ _ checked11733.1 (.cons _ _ _ _ _ checked11734.1 (.cons _ _ _ _ _ checked11735.1 (.cons _ _ _ _ _ checked11736.1 (.cons _ _ _ _ _ checked11737.1 (.cons _ _ _ _ _ checked11738.1 (.cons _ _ _ _ _ checked11739.1 (.cons _ _ _ _ _ checked11740.1 (.cons _ _ _ _ _ checked11741.1 (.cons _ _ _ _ _ checked11742.1 (.cons _ _ _ _ _ checked11743.1 (.cons _ _ _ _ _ checked11744.1 (.cons _ _ _ _ _ checked11745.1 (.cons _ _ _ _ _ checked11746.1 (.cons _ _ _ _ _ checked11747.1 (.cons _ _ _ _ _ checked11748.1 (.cons _ _ _ _ _ checked11749.1 (.cons _ _ _ _ _ checked11750.1 (.cons _ _ _ _ _ checked11751.1 (.cons _ _ _ _ _ checked11752.1 (.cons _ _ _ _ _ checked11753.1 (.cons _ _ _ _ _ checked11754.1 (.cons _ _ _ _ _ checked11755.1 (.cons _ _ _ _ _ checked11756.1 (.cons _ _ _ _ _ checked11757.1 (.cons _ _ _ _ _ checked11758.1 (.cons _ _ _ _ _ checked11759.1 (.cons _ _ _ _ _ checked11760.1 (.cons _ _ _ _ _ checked11761.1 (.cons _ _ _ _ _ checked11762.1 (.cons _ _ _ _ _ checked11763.1 (.cons _ _ _ _ _ checked11764.1 (.cons _ _ _ _ _ checked11765.1 (.cons _ _ _ _ _ checked11766.1 (.cons _ _ _ _ _ checked11767.1 (.cons _ _ _ _ _ checked11768.1 (.cons _ _ _ _ _ checked11769.1 (.cons _ _ _ _ _ checked11770.1 (.cons _ _ _ _ _ checked11771.1 (.cons _ _ _ _ _ checked11772.1 (.cons _ _ _ _ _ checked11773.1 (.cons _ _ _ _ _ checked11774.1 (.cons _ _ _ _ _ checked11775.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11808 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11712.2,checked11713.2,checked11714.2,checked11715.2,checked11716.2,checked11717.2,checked11718.2,checked11719.2,checked11720.2,checked11721.2,checked11722.2,checked11723.2,checked11724.2,checked11725.2,checked11726.2,checked11727.2,checked11728.2,checked11729.2,checked11730.2,checked11731.2,checked11732.2,checked11733.2,checked11734.2,checked11735.2,checked11736.2,checked11737.2,checked11738.2,checked11739.2,checked11740.2,checked11741.2,checked11742.2,checked11743.2,checked11744.2,checked11745.2,checked11746.2,checked11747.2,checked11748.2,checked11749.2,checked11750.2,checked11751.2,checked11752.2,checked11753.2,checked11754.2,checked11755.2,checked11756.2,checked11757.2,checked11758.2,checked11759.2,checked11760.2,checked11761.2,checked11762.2,checked11763.2,checked11764.2,checked11765.2,checked11766.2,checked11767.2,checked11768.2,checked11769.2,checked11770.2,checked11771.2,checked11772.2,checked11773.2,checked11774.2,checked11775.2]
  decide
end ArtifactPairedPathRoundGroup183
