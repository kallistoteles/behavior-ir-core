import ActualIngressIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactIngressGroup11
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op704 : List WordIR.Op := [.bxor 757 767]
def bytes704 : Bytes := ("    let r00000300: u32 = r000002f5 ^ r000002ff;\n" : String).toByteArray.data.toList
theorem checked704 : bytes704=statementBytes 768 (op704.map lower) ∧ bytes704.length=48 := by core033_kernel_decide
def op705 : List WordIR.Op := [.shr 768 31]
def bytes705 : Bytes := ("    let r00000301: u32 = r00000300 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked705 : bytes705=statementBytes 769 (op705.map lower) ∧ bytes705.length=54 := by core033_kernel_decide
def op706 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes706 : Bytes := ("    let r00000302: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked706 : bytes706=statementBytes 770 (op706.map lower) ∧ bytes706.length=41 := by core033_kernel_decide
def op707 : List WordIR.Op := [.bxor 769 770]
def bytes707 : Bytes := ("    let r00000303: u32 = r00000301 ^ r00000302;\n" : String).toByteArray.data.toList
theorem checked707 : bytes707=statementBytes 771 (op707.map lower) ∧ bytes707.length=48 := by core033_kernel_decide
def op708 : List WordIR.Op := [.shr 34 8]
def bytes708 : Bytes := ("    let r00000304: u32 = r00000022 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked708 : bytes708=statementBytes 772 (op708.map lower) ∧ bytes708.length=54 := by core033_kernel_decide
def op709 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes709 : Bytes := ("    let r00000305: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked709 : bytes709=statementBytes 773 (op709.map lower) ∧ bytes709.length=41 := by core033_kernel_decide
def op710 : List WordIR.Op := [.bnot 773]
def bytes710 : Bytes := ("    let r00000306: u32 = !r00000305;\n" : String).toByteArray.data.toList
theorem checked710 : bytes710=statementBytes 774 (op710.map lower) ∧ bytes710.length=37 := by core033_kernel_decide
def op711 : List WordIR.Op := [.band 772 774]
def bytes711 : Bytes := ("    let r00000307: u32 = r00000304 & r00000306;\n" : String).toByteArray.data.toList
theorem checked711 : bytes711=statementBytes 775 (op711.map lower) ∧ bytes711.length=48 := by core033_kernel_decide
def op712 : List WordIR.Op := [.shr 34 8]
def bytes712 : Bytes := ("    let r00000308: u32 = r00000022 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked712 : bytes712=statementBytes 776 (op712.map lower) ∧ bytes712.length=54 := by core033_kernel_decide
def op713 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes713 : Bytes := ("    let r00000309: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked713 : bytes713=statementBytes 777 (op713.map lower) ∧ bytes713.length=41 := by core033_kernel_decide
def op714 : List WordIR.Op := [.bnot 777]
def bytes714 : Bytes := ("    let r0000030a: u32 = !r00000309;\n" : String).toByteArray.data.toList
theorem checked714 : bytes714=statementBytes 778 (op714.map lower) ∧ bytes714.length=37 := by core033_kernel_decide
def op715 : List WordIR.Op := [.bxor 776 778]
def bytes715 : Bytes := ("    let r0000030b: u32 = r00000308 ^ r0000030a;\n" : String).toByteArray.data.toList
theorem checked715 : bytes715=statementBytes 779 (op715.map lower) ∧ bytes715.length=48 := by core033_kernel_decide
def op716 : List WordIR.Op := [.shr 34 8]
def bytes716 : Bytes := ("    let r0000030c: u32 = r00000022 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked716 : bytes716=statementBytes 780 (op716.map lower) ∧ bytes716.length=54 := by core033_kernel_decide
def op717 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes717 : Bytes := ("    let r0000030d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked717 : bytes717=statementBytes 781 (op717.map lower) ∧ bytes717.length=41 := by core033_kernel_decide
def op718 : List WordIR.Op := [.bnot 781]
def bytes718 : Bytes := ("    let r0000030e: u32 = !r0000030d;\n" : String).toByteArray.data.toList
theorem checked718 : bytes718=statementBytes 782 (op718.map lower) ∧ bytes718.length=37 := by core033_kernel_decide
def op719 : List WordIR.Op := [.badd 780 782]
def bytes719 : Bytes := ("    let r0000030f: u32 = r0000030c.wrapping_add(r0000030e);\n" : String).toByteArray.data.toList
theorem checked719 : bytes719=statementBytes 783 (op719.map lower) ∧ bytes719.length=60 := by core033_kernel_decide
def op720 : List WordIR.Op := [.bnot 783]
def bytes720 : Bytes := ("    let r00000310: u32 = !r0000030f;\n" : String).toByteArray.data.toList
theorem checked720 : bytes720=statementBytes 784 (op720.map lower) ∧ bytes720.length=37 := by core033_kernel_decide
def op721 : List WordIR.Op := [.band 779 784]
def bytes721 : Bytes := ("    let r00000311: u32 = r0000030b & r00000310;\n" : String).toByteArray.data.toList
theorem checked721 : bytes721=statementBytes 785 (op721.map lower) ∧ bytes721.length=48 := by core033_kernel_decide
def op722 : List WordIR.Op := [.bxor 775 785]
def bytes722 : Bytes := ("    let r00000312: u32 = r00000307 ^ r00000311;\n" : String).toByteArray.data.toList
theorem checked722 : bytes722=statementBytes 786 (op722.map lower) ∧ bytes722.length=48 := by core033_kernel_decide
def op723 : List WordIR.Op := [.shr 786 31]
def bytes723 : Bytes := ("    let r00000313: u32 = r00000312 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked723 : bytes723=statementBytes 787 (op723.map lower) ∧ bytes723.length=54 := by core033_kernel_decide
def op724 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes724 : Bytes := ("    let r00000314: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked724 : bytes724=statementBytes 788 (op724.map lower) ∧ bytes724.length=41 := by core033_kernel_decide
def op725 : List WordIR.Op := [.bxor 787 788]
def bytes725 : Bytes := ("    let r00000315: u32 = r00000313 ^ r00000314;\n" : String).toByteArray.data.toList
theorem checked725 : bytes725=statementBytes 789 (op725.map lower) ∧ bytes725.length=48 := by core033_kernel_decide
def op726 : List WordIR.Op := [.shr 35 8]
def bytes726 : Bytes := ("    let r00000316: u32 = r00000023 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked726 : bytes726=statementBytes 790 (op726.map lower) ∧ bytes726.length=54 := by core033_kernel_decide
def op727 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes727 : Bytes := ("    let r00000317: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked727 : bytes727=statementBytes 791 (op727.map lower) ∧ bytes727.length=41 := by core033_kernel_decide
def op728 : List WordIR.Op := [.bnot 791]
def bytes728 : Bytes := ("    let r00000318: u32 = !r00000317;\n" : String).toByteArray.data.toList
theorem checked728 : bytes728=statementBytes 792 (op728.map lower) ∧ bytes728.length=37 := by core033_kernel_decide
def op729 : List WordIR.Op := [.band 790 792]
def bytes729 : Bytes := ("    let r00000319: u32 = r00000316 & r00000318;\n" : String).toByteArray.data.toList
theorem checked729 : bytes729=statementBytes 793 (op729.map lower) ∧ bytes729.length=48 := by core033_kernel_decide
def op730 : List WordIR.Op := [.shr 35 8]
def bytes730 : Bytes := ("    let r0000031a: u32 = r00000023 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked730 : bytes730=statementBytes 794 (op730.map lower) ∧ bytes730.length=54 := by core033_kernel_decide
def op731 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes731 : Bytes := ("    let r0000031b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked731 : bytes731=statementBytes 795 (op731.map lower) ∧ bytes731.length=41 := by core033_kernel_decide
def op732 : List WordIR.Op := [.bnot 795]
def bytes732 : Bytes := ("    let r0000031c: u32 = !r0000031b;\n" : String).toByteArray.data.toList
theorem checked732 : bytes732=statementBytes 796 (op732.map lower) ∧ bytes732.length=37 := by core033_kernel_decide
def op733 : List WordIR.Op := [.bxor 794 796]
def bytes733 : Bytes := ("    let r0000031d: u32 = r0000031a ^ r0000031c;\n" : String).toByteArray.data.toList
theorem checked733 : bytes733=statementBytes 797 (op733.map lower) ∧ bytes733.length=48 := by core033_kernel_decide
def op734 : List WordIR.Op := [.shr 35 8]
def bytes734 : Bytes := ("    let r0000031e: u32 = r00000023 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked734 : bytes734=statementBytes 798 (op734.map lower) ∧ bytes734.length=54 := by core033_kernel_decide
def op735 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes735 : Bytes := ("    let r0000031f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked735 : bytes735=statementBytes 799 (op735.map lower) ∧ bytes735.length=41 := by core033_kernel_decide
def op736 : List WordIR.Op := [.bnot 799]
def bytes736 : Bytes := ("    let r00000320: u32 = !r0000031f;\n" : String).toByteArray.data.toList
theorem checked736 : bytes736=statementBytes 800 (op736.map lower) ∧ bytes736.length=37 := by core033_kernel_decide
def op737 : List WordIR.Op := [.badd 798 800]
def bytes737 : Bytes := ("    let r00000321: u32 = r0000031e.wrapping_add(r00000320);\n" : String).toByteArray.data.toList
theorem checked737 : bytes737=statementBytes 801 (op737.map lower) ∧ bytes737.length=60 := by core033_kernel_decide
def op738 : List WordIR.Op := [.bnot 801]
def bytes738 : Bytes := ("    let r00000322: u32 = !r00000321;\n" : String).toByteArray.data.toList
theorem checked738 : bytes738=statementBytes 802 (op738.map lower) ∧ bytes738.length=37 := by core033_kernel_decide
def op739 : List WordIR.Op := [.band 797 802]
def bytes739 : Bytes := ("    let r00000323: u32 = r0000031d & r00000322;\n" : String).toByteArray.data.toList
theorem checked739 : bytes739=statementBytes 803 (op739.map lower) ∧ bytes739.length=48 := by core033_kernel_decide
def op740 : List WordIR.Op := [.bxor 793 803]
def bytes740 : Bytes := ("    let r00000324: u32 = r00000319 ^ r00000323;\n" : String).toByteArray.data.toList
theorem checked740 : bytes740=statementBytes 804 (op740.map lower) ∧ bytes740.length=48 := by core033_kernel_decide
def op741 : List WordIR.Op := [.shr 804 31]
def bytes741 : Bytes := ("    let r00000325: u32 = r00000324 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked741 : bytes741=statementBytes 805 (op741.map lower) ∧ bytes741.length=54 := by core033_kernel_decide
def op742 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes742 : Bytes := ("    let r00000326: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked742 : bytes742=statementBytes 806 (op742.map lower) ∧ bytes742.length=41 := by core033_kernel_decide
def op743 : List WordIR.Op := [.bxor 805 806]
def bytes743 : Bytes := ("    let r00000327: u32 = r00000325 ^ r00000326;\n" : String).toByteArray.data.toList
theorem checked743 : bytes743=statementBytes 807 (op743.map lower) ∧ bytes743.length=48 := by core033_kernel_decide
def op744 : List WordIR.Op := [.shr 36 8]
def bytes744 : Bytes := ("    let r00000328: u32 = r00000024 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked744 : bytes744=statementBytes 808 (op744.map lower) ∧ bytes744.length=54 := by core033_kernel_decide
def op745 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes745 : Bytes := ("    let r00000329: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked745 : bytes745=statementBytes 809 (op745.map lower) ∧ bytes745.length=41 := by core033_kernel_decide
def op746 : List WordIR.Op := [.bnot 809]
def bytes746 : Bytes := ("    let r0000032a: u32 = !r00000329;\n" : String).toByteArray.data.toList
theorem checked746 : bytes746=statementBytes 810 (op746.map lower) ∧ bytes746.length=37 := by core033_kernel_decide
def op747 : List WordIR.Op := [.band 808 810]
def bytes747 : Bytes := ("    let r0000032b: u32 = r00000328 & r0000032a;\n" : String).toByteArray.data.toList
theorem checked747 : bytes747=statementBytes 811 (op747.map lower) ∧ bytes747.length=48 := by core033_kernel_decide
def op748 : List WordIR.Op := [.shr 36 8]
def bytes748 : Bytes := ("    let r0000032c: u32 = r00000024 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked748 : bytes748=statementBytes 812 (op748.map lower) ∧ bytes748.length=54 := by core033_kernel_decide
def op749 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes749 : Bytes := ("    let r0000032d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked749 : bytes749=statementBytes 813 (op749.map lower) ∧ bytes749.length=41 := by core033_kernel_decide
def op750 : List WordIR.Op := [.bnot 813]
def bytes750 : Bytes := ("    let r0000032e: u32 = !r0000032d;\n" : String).toByteArray.data.toList
theorem checked750 : bytes750=statementBytes 814 (op750.map lower) ∧ bytes750.length=37 := by core033_kernel_decide
def op751 : List WordIR.Op := [.bxor 812 814]
def bytes751 : Bytes := ("    let r0000032f: u32 = r0000032c ^ r0000032e;\n" : String).toByteArray.data.toList
theorem checked751 : bytes751=statementBytes 815 (op751.map lower) ∧ bytes751.length=48 := by core033_kernel_decide
def op752 : List WordIR.Op := [.shr 36 8]
def bytes752 : Bytes := ("    let r00000330: u32 = r00000024 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked752 : bytes752=statementBytes 816 (op752.map lower) ∧ bytes752.length=54 := by core033_kernel_decide
def op753 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes753 : Bytes := ("    let r00000331: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked753 : bytes753=statementBytes 817 (op753.map lower) ∧ bytes753.length=41 := by core033_kernel_decide
def op754 : List WordIR.Op := [.bnot 817]
def bytes754 : Bytes := ("    let r00000332: u32 = !r00000331;\n" : String).toByteArray.data.toList
theorem checked754 : bytes754=statementBytes 818 (op754.map lower) ∧ bytes754.length=37 := by core033_kernel_decide
def op755 : List WordIR.Op := [.badd 816 818]
def bytes755 : Bytes := ("    let r00000333: u32 = r00000330.wrapping_add(r00000332);\n" : String).toByteArray.data.toList
theorem checked755 : bytes755=statementBytes 819 (op755.map lower) ∧ bytes755.length=60 := by core033_kernel_decide
def op756 : List WordIR.Op := [.bnot 819]
def bytes756 : Bytes := ("    let r00000334: u32 = !r00000333;\n" : String).toByteArray.data.toList
theorem checked756 : bytes756=statementBytes 820 (op756.map lower) ∧ bytes756.length=37 := by core033_kernel_decide
def op757 : List WordIR.Op := [.band 815 820]
def bytes757 : Bytes := ("    let r00000335: u32 = r0000032f & r00000334;\n" : String).toByteArray.data.toList
theorem checked757 : bytes757=statementBytes 821 (op757.map lower) ∧ bytes757.length=48 := by core033_kernel_decide
def op758 : List WordIR.Op := [.bxor 811 821]
def bytes758 : Bytes := ("    let r00000336: u32 = r0000032b ^ r00000335;\n" : String).toByteArray.data.toList
theorem checked758 : bytes758=statementBytes 822 (op758.map lower) ∧ bytes758.length=48 := by core033_kernel_decide
def op759 : List WordIR.Op := [.shr 822 31]
def bytes759 : Bytes := ("    let r00000337: u32 = r00000336 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked759 : bytes759=statementBytes 823 (op759.map lower) ∧ bytes759.length=54 := by core033_kernel_decide
def op760 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes760 : Bytes := ("    let r00000338: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked760 : bytes760=statementBytes 824 (op760.map lower) ∧ bytes760.length=41 := by core033_kernel_decide
def op761 : List WordIR.Op := [.bxor 823 824]
def bytes761 : Bytes := ("    let r00000339: u32 = r00000337 ^ r00000338;\n" : String).toByteArray.data.toList
theorem checked761 : bytes761=statementBytes 825 (op761.map lower) ∧ bytes761.length=48 := by core033_kernel_decide
def op762 : List WordIR.Op := [.shr 37 8]
def bytes762 : Bytes := ("    let r0000033a: u32 = r00000025 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked762 : bytes762=statementBytes 826 (op762.map lower) ∧ bytes762.length=54 := by core033_kernel_decide
def op763 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes763 : Bytes := ("    let r0000033b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked763 : bytes763=statementBytes 827 (op763.map lower) ∧ bytes763.length=41 := by core033_kernel_decide
def op764 : List WordIR.Op := [.bnot 827]
def bytes764 : Bytes := ("    let r0000033c: u32 = !r0000033b;\n" : String).toByteArray.data.toList
theorem checked764 : bytes764=statementBytes 828 (op764.map lower) ∧ bytes764.length=37 := by core033_kernel_decide
def op765 : List WordIR.Op := [.band 826 828]
def bytes765 : Bytes := ("    let r0000033d: u32 = r0000033a & r0000033c;\n" : String).toByteArray.data.toList
theorem checked765 : bytes765=statementBytes 829 (op765.map lower) ∧ bytes765.length=48 := by core033_kernel_decide
def op766 : List WordIR.Op := [.shr 37 8]
def bytes766 : Bytes := ("    let r0000033e: u32 = r00000025 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked766 : bytes766=statementBytes 830 (op766.map lower) ∧ bytes766.length=54 := by core033_kernel_decide
def op767 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes767 : Bytes := ("    let r0000033f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked767 : bytes767=statementBytes 831 (op767.map lower) ∧ bytes767.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op704,op705,op706,op707,op708,op709,op710,op711,op712,op713,op714,op715,op716,op717,op718,op719,op720,op721,op722,op723,op724,op725,op726,op727,op728,op729,op730,op731,op732,op733,op734,op735,op736,op737,op738,op739,op740,op741,op742,op743,op744,op745,op746,op747,op748,op749,op750,op751,op752,op753,op754,op755,op756,op757,op758,op759,op760,op761,op762,op763,op764,op765,op766,op767]
def chunks : List Bytes := [bytes704,bytes705,bytes706,bytes707,bytes708,bytes709,bytes710,bytes711,bytes712,bytes713,bytes714,bytes715,bytes716,bytes717,bytes718,bytes719,bytes720,bytes721,bytes722,bytes723,bytes724,bytes725,bytes726,bytes727,bytes728,bytes729,bytes730,bytes731,bytes732,bytes733,bytes734,bytes735,bytes736,bytes737,bytes738,bytes739,bytes740,bytes741,bytes742,bytes743,bytes744,bytes745,bytes746,bytes747,bytes748,bytes749,bytes750,bytes751,bytes752,bytes753,bytes754,bytes755,bytes756,bytes757,bytes758,bytes759,bytes760,bytes761,bytes762,bytes763,bytes764,bytes765,bytes766,bytes767]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 768 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked704.1 (.cons _ _ _ _ _ checked705.1 (.cons _ _ _ _ _ checked706.1 (.cons _ _ _ _ _ checked707.1 (.cons _ _ _ _ _ checked708.1 (.cons _ _ _ _ _ checked709.1 (.cons _ _ _ _ _ checked710.1 (.cons _ _ _ _ _ checked711.1 (.cons _ _ _ _ _ checked712.1 (.cons _ _ _ _ _ checked713.1 (.cons _ _ _ _ _ checked714.1 (.cons _ _ _ _ _ checked715.1 (.cons _ _ _ _ _ checked716.1 (.cons _ _ _ _ _ checked717.1 (.cons _ _ _ _ _ checked718.1 (.cons _ _ _ _ _ checked719.1 (.cons _ _ _ _ _ checked720.1 (.cons _ _ _ _ _ checked721.1 (.cons _ _ _ _ _ checked722.1 (.cons _ _ _ _ _ checked723.1 (.cons _ _ _ _ _ checked724.1 (.cons _ _ _ _ _ checked725.1 (.cons _ _ _ _ _ checked726.1 (.cons _ _ _ _ _ checked727.1 (.cons _ _ _ _ _ checked728.1 (.cons _ _ _ _ _ checked729.1 (.cons _ _ _ _ _ checked730.1 (.cons _ _ _ _ _ checked731.1 (.cons _ _ _ _ _ checked732.1 (.cons _ _ _ _ _ checked733.1 (.cons _ _ _ _ _ checked734.1 (.cons _ _ _ _ _ checked735.1 (.cons _ _ _ _ _ checked736.1 (.cons _ _ _ _ _ checked737.1 (.cons _ _ _ _ _ checked738.1 (.cons _ _ _ _ _ checked739.1 (.cons _ _ _ _ _ checked740.1 (.cons _ _ _ _ _ checked741.1 (.cons _ _ _ _ _ checked742.1 (.cons _ _ _ _ _ checked743.1 (.cons _ _ _ _ _ checked744.1 (.cons _ _ _ _ _ checked745.1 (.cons _ _ _ _ _ checked746.1 (.cons _ _ _ _ _ checked747.1 (.cons _ _ _ _ _ checked748.1 (.cons _ _ _ _ _ checked749.1 (.cons _ _ _ _ _ checked750.1 (.cons _ _ _ _ _ checked751.1 (.cons _ _ _ _ _ checked752.1 (.cons _ _ _ _ _ checked753.1 (.cons _ _ _ _ _ checked754.1 (.cons _ _ _ _ _ checked755.1 (.cons _ _ _ _ _ checked756.1 (.cons _ _ _ _ _ checked757.1 (.cons _ _ _ _ _ checked758.1 (.cons _ _ _ _ _ checked759.1 (.cons _ _ _ _ _ checked760.1 (.cons _ _ _ _ _ checked761.1 (.cons _ _ _ _ _ checked762.1 (.cons _ _ _ _ _ checked763.1 (.cons _ _ _ _ _ checked764.1 (.cons _ _ _ _ _ checked765.1 (.cons _ _ _ _ _ checked766.1 (.cons _ _ _ _ _ checked767.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 768 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2950 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked704.2,checked705.2,checked706.2,checked707.2,checked708.2,checked709.2,checked710.2,checked711.2,checked712.2,checked713.2,checked714.2,checked715.2,checked716.2,checked717.2,checked718.2,checked719.2,checked720.2,checked721.2,checked722.2,checked723.2,checked724.2,checked725.2,checked726.2,checked727.2,checked728.2,checked729.2,checked730.2,checked731.2,checked732.2,checked733.2,checked734.2,checked735.2,checked736.2,checked737.2,checked738.2,checked739.2,checked740.2,checked741.2,checked742.2,checked743.2,checked744.2,checked745.2,checked746.2,checked747.2,checked748.2,checked749.2,checked750.2,checked751.2,checked752.2,checked753.2,checked754.2,checked755.2,checked756.2,checked757.2,checked758.2,checked759.2,checked760.2,checked761.2,checked762.2,checked763.2,checked764.2,checked765.2,checked766.2,checked767.2]
  decide
end ArtifactIngressGroup11
