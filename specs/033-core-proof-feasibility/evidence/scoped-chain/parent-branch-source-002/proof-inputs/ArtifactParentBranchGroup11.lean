import ActualParentBranchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactParentBranchGroup11
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op704 : List WordIR.Op := [.bnot 729]
def bytes704 : Bytes := ("    let r000002da: u32 = !r000002d9;\n" : String).toByteArray.data.toList
theorem checked704 : bytes704=statementBytes 730 (op704.map lower) ∧ bytes704.length=37 := by core033_kernel_decide
def op705 : List WordIR.Op := [.band 20 730]
def bytes705 : Bytes := ("    let r000002db: u32 = r00000014 & r000002da;\n" : String).toByteArray.data.toList
theorem checked705 : bytes705=statementBytes 731 (op705.map lower) ∧ bytes705.length=48 := by core033_kernel_decide
def op706 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes706 : Bytes := ("    let r000002dc: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked706 : bytes706=statementBytes 732 (op706.map lower) ∧ bytes706.length=41 := by core033_kernel_decide
def op707 : List WordIR.Op := [.bnot 732]
def bytes707 : Bytes := ("    let r000002dd: u32 = !r000002dc;\n" : String).toByteArray.data.toList
theorem checked707 : bytes707=statementBytes 733 (op707.map lower) ∧ bytes707.length=37 := by core033_kernel_decide
def op708 : List WordIR.Op := [.bxor 20 733]
def bytes708 : Bytes := ("    let r000002de: u32 = r00000014 ^ r000002dd;\n" : String).toByteArray.data.toList
theorem checked708 : bytes708=statementBytes 734 (op708.map lower) ∧ bytes708.length=48 := by core033_kernel_decide
def op709 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes709 : Bytes := ("    let r000002df: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked709 : bytes709=statementBytes 735 (op709.map lower) ∧ bytes709.length=41 := by core033_kernel_decide
def op710 : List WordIR.Op := [.bnot 735]
def bytes710 : Bytes := ("    let r000002e0: u32 = !r000002df;\n" : String).toByteArray.data.toList
theorem checked710 : bytes710=statementBytes 736 (op710.map lower) ∧ bytes710.length=37 := by core033_kernel_decide
def op711 : List WordIR.Op := [.badd 20 736]
def bytes711 : Bytes := ("    let r000002e1: u32 = r00000014.wrapping_add(r000002e0);\n" : String).toByteArray.data.toList
theorem checked711 : bytes711=statementBytes 737 (op711.map lower) ∧ bytes711.length=60 := by core033_kernel_decide
def op712 : List WordIR.Op := [.bnot 737]
def bytes712 : Bytes := ("    let r000002e2: u32 = !r000002e1;\n" : String).toByteArray.data.toList
theorem checked712 : bytes712=statementBytes 738 (op712.map lower) ∧ bytes712.length=37 := by core033_kernel_decide
def op713 : List WordIR.Op := [.band 734 738]
def bytes713 : Bytes := ("    let r000002e3: u32 = r000002de & r000002e2;\n" : String).toByteArray.data.toList
theorem checked713 : bytes713=statementBytes 739 (op713.map lower) ∧ bytes713.length=48 := by core033_kernel_decide
def op714 : List WordIR.Op := [.bxor 731 739]
def bytes714 : Bytes := ("    let r000002e4: u32 = r000002db ^ r000002e3;\n" : String).toByteArray.data.toList
theorem checked714 : bytes714=statementBytes 740 (op714.map lower) ∧ bytes714.length=48 := by core033_kernel_decide
def op715 : List WordIR.Op := [.shr 740 31]
def bytes715 : Bytes := ("    let r000002e5: u32 = r000002e4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked715 : bytes715=statementBytes 741 (op715.map lower) ∧ bytes715.length=54 := by core033_kernel_decide
def op716 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes716 : Bytes := ("    let r000002e6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked716 : bytes716=statementBytes 742 (op716.map lower) ∧ bytes716.length=41 := by core033_kernel_decide
def op717 : List WordIR.Op := [.bxor 741 742]
def bytes717 : Bytes := ("    let r000002e7: u32 = r000002e5 ^ r000002e6;\n" : String).toByteArray.data.toList
theorem checked717 : bytes717=statementBytes 743 (op717.map lower) ∧ bytes717.length=48 := by core033_kernel_decide
def op718 : List WordIR.Op := [.band 728 743]
def bytes718 : Bytes := ("    let r000002e8: u32 = r000002d8 & r000002e7;\n" : String).toByteArray.data.toList
theorem checked718 : bytes718=statementBytes 744 (op718.map lower) ∧ bytes718.length=48 := by core033_kernel_decide
def op719 : List WordIR.Op := [.band 713 744]
def bytes719 : Bytes := ("    let r000002e9: u32 = r000002c9 & r000002e8;\n" : String).toByteArray.data.toList
theorem checked719 : bytes719=statementBytes 745 (op719.map lower) ∧ bytes719.length=48 := by core033_kernel_decide
def op720 : List WordIR.Op := [.badd 19 21]
def bytes720 : Bytes := ("    let r000002ea: u32 = r00000013.wrapping_add(r00000015);\n" : String).toByteArray.data.toList
theorem checked720 : bytes720=statementBytes 746 (op720.map lower) ∧ bytes720.length=60 := by core033_kernel_decide
def op721 : List WordIR.Op := [.band 18 20]
def bytes721 : Bytes := ("    let r000002eb: u32 = r00000012 & r00000014;\n" : String).toByteArray.data.toList
theorem checked721 : bytes721=statementBytes 747 (op721.map lower) ∧ bytes721.length=48 := by core033_kernel_decide
def op722 : List WordIR.Op := [.bxor 18 20]
def bytes722 : Bytes := ("    let r000002ec: u32 = r00000012 ^ r00000014;\n" : String).toByteArray.data.toList
theorem checked722 : bytes722=statementBytes 748 (op722.map lower) ∧ bytes722.length=48 := by core033_kernel_decide
def op723 : List WordIR.Op := [.badd 18 20]
def bytes723 : Bytes := ("    let r000002ed: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked723 : bytes723=statementBytes 749 (op723.map lower) ∧ bytes723.length=60 := by core033_kernel_decide
def op724 : List WordIR.Op := [.bnot 749]
def bytes724 : Bytes := ("    let r000002ee: u32 = !r000002ed;\n" : String).toByteArray.data.toList
theorem checked724 : bytes724=statementBytes 750 (op724.map lower) ∧ bytes724.length=37 := by core033_kernel_decide
def op725 : List WordIR.Op := [.band 748 750]
def bytes725 : Bytes := ("    let r000002ef: u32 = r000002ec & r000002ee;\n" : String).toByteArray.data.toList
theorem checked725 : bytes725=statementBytes 751 (op725.map lower) ∧ bytes725.length=48 := by core033_kernel_decide
def op726 : List WordIR.Op := [.bxor 747 751]
def bytes726 : Bytes := ("    let r000002f0: u32 = r000002eb ^ r000002ef;\n" : String).toByteArray.data.toList
theorem checked726 : bytes726=statementBytes 752 (op726.map lower) ∧ bytes726.length=48 := by core033_kernel_decide
def op727 : List WordIR.Op := [.shr 752 31]
def bytes727 : Bytes := ("    let r000002f1: u32 = r000002f0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked727 : bytes727=statementBytes 753 (op727.map lower) ∧ bytes727.length=54 := by core033_kernel_decide
def op728 : List WordIR.Op := [.badd 746 753]
def bytes728 : Bytes := ("    let r000002f2: u32 = r000002ea.wrapping_add(r000002f1);\n" : String).toByteArray.data.toList
theorem checked728 : bytes728=statementBytes 754 (op728.map lower) ∧ bytes728.length=60 := by core033_kernel_decide
def op729 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes729 : Bytes := ("    let r000002f3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked729 : bytes729=statementBytes 755 (op729.map lower) ∧ bytes729.length=41 := by core033_kernel_decide
def op730 : List WordIR.Op := [.bnot 755]
def bytes730 : Bytes := ("    let r000002f4: u32 = !r000002f3;\n" : String).toByteArray.data.toList
theorem checked730 : bytes730=statementBytes 756 (op730.map lower) ∧ bytes730.length=37 := by core033_kernel_decide
def op731 : List WordIR.Op := [.band 754 756]
def bytes731 : Bytes := ("    let r000002f5: u32 = r000002f2 & r000002f4;\n" : String).toByteArray.data.toList
theorem checked731 : bytes731=statementBytes 757 (op731.map lower) ∧ bytes731.length=48 := by core033_kernel_decide
def op732 : List WordIR.Op := [.badd 19 21]
def bytes732 : Bytes := ("    let r000002f6: u32 = r00000013.wrapping_add(r00000015);\n" : String).toByteArray.data.toList
theorem checked732 : bytes732=statementBytes 758 (op732.map lower) ∧ bytes732.length=60 := by core033_kernel_decide
def op733 : List WordIR.Op := [.band 18 20]
def bytes733 : Bytes := ("    let r000002f7: u32 = r00000012 & r00000014;\n" : String).toByteArray.data.toList
theorem checked733 : bytes733=statementBytes 759 (op733.map lower) ∧ bytes733.length=48 := by core033_kernel_decide
def op734 : List WordIR.Op := [.bxor 18 20]
def bytes734 : Bytes := ("    let r000002f8: u32 = r00000012 ^ r00000014;\n" : String).toByteArray.data.toList
theorem checked734 : bytes734=statementBytes 760 (op734.map lower) ∧ bytes734.length=48 := by core033_kernel_decide
def op735 : List WordIR.Op := [.badd 18 20]
def bytes735 : Bytes := ("    let r000002f9: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked735 : bytes735=statementBytes 761 (op735.map lower) ∧ bytes735.length=60 := by core033_kernel_decide
def op736 : List WordIR.Op := [.bnot 761]
def bytes736 : Bytes := ("    let r000002fa: u32 = !r000002f9;\n" : String).toByteArray.data.toList
theorem checked736 : bytes736=statementBytes 762 (op736.map lower) ∧ bytes736.length=37 := by core033_kernel_decide
def op737 : List WordIR.Op := [.band 760 762]
def bytes737 : Bytes := ("    let r000002fb: u32 = r000002f8 & r000002fa;\n" : String).toByteArray.data.toList
theorem checked737 : bytes737=statementBytes 763 (op737.map lower) ∧ bytes737.length=48 := by core033_kernel_decide
def op738 : List WordIR.Op := [.bxor 759 763]
def bytes738 : Bytes := ("    let r000002fc: u32 = r000002f7 ^ r000002fb;\n" : String).toByteArray.data.toList
theorem checked738 : bytes738=statementBytes 764 (op738.map lower) ∧ bytes738.length=48 := by core033_kernel_decide
def op739 : List WordIR.Op := [.shr 764 31]
def bytes739 : Bytes := ("    let r000002fd: u32 = r000002fc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked739 : bytes739=statementBytes 765 (op739.map lower) ∧ bytes739.length=54 := by core033_kernel_decide
def op740 : List WordIR.Op := [.badd 758 765]
def bytes740 : Bytes := ("    let r000002fe: u32 = r000002f6.wrapping_add(r000002fd);\n" : String).toByteArray.data.toList
theorem checked740 : bytes740=statementBytes 766 (op740.map lower) ∧ bytes740.length=60 := by core033_kernel_decide
def op741 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes741 : Bytes := ("    let r000002ff: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked741 : bytes741=statementBytes 767 (op741.map lower) ∧ bytes741.length=41 := by core033_kernel_decide
def op742 : List WordIR.Op := [.bnot 767]
def bytes742 : Bytes := ("    let r00000300: u32 = !r000002ff;\n" : String).toByteArray.data.toList
theorem checked742 : bytes742=statementBytes 768 (op742.map lower) ∧ bytes742.length=37 := by core033_kernel_decide
def op743 : List WordIR.Op := [.bxor 766 768]
def bytes743 : Bytes := ("    let r00000301: u32 = r000002fe ^ r00000300;\n" : String).toByteArray.data.toList
theorem checked743 : bytes743=statementBytes 769 (op743.map lower) ∧ bytes743.length=48 := by core033_kernel_decide
def op744 : List WordIR.Op := [.badd 19 21]
def bytes744 : Bytes := ("    let r00000302: u32 = r00000013.wrapping_add(r00000015);\n" : String).toByteArray.data.toList
theorem checked744 : bytes744=statementBytes 770 (op744.map lower) ∧ bytes744.length=60 := by core033_kernel_decide
def op745 : List WordIR.Op := [.band 18 20]
def bytes745 : Bytes := ("    let r00000303: u32 = r00000012 & r00000014;\n" : String).toByteArray.data.toList
theorem checked745 : bytes745=statementBytes 771 (op745.map lower) ∧ bytes745.length=48 := by core033_kernel_decide
def op746 : List WordIR.Op := [.bxor 18 20]
def bytes746 : Bytes := ("    let r00000304: u32 = r00000012 ^ r00000014;\n" : String).toByteArray.data.toList
theorem checked746 : bytes746=statementBytes 772 (op746.map lower) ∧ bytes746.length=48 := by core033_kernel_decide
def op747 : List WordIR.Op := [.badd 18 20]
def bytes747 : Bytes := ("    let r00000305: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked747 : bytes747=statementBytes 773 (op747.map lower) ∧ bytes747.length=60 := by core033_kernel_decide
def op748 : List WordIR.Op := [.bnot 773]
def bytes748 : Bytes := ("    let r00000306: u32 = !r00000305;\n" : String).toByteArray.data.toList
theorem checked748 : bytes748=statementBytes 774 (op748.map lower) ∧ bytes748.length=37 := by core033_kernel_decide
def op749 : List WordIR.Op := [.band 772 774]
def bytes749 : Bytes := ("    let r00000307: u32 = r00000304 & r00000306;\n" : String).toByteArray.data.toList
theorem checked749 : bytes749=statementBytes 775 (op749.map lower) ∧ bytes749.length=48 := by core033_kernel_decide
def op750 : List WordIR.Op := [.bxor 771 775]
def bytes750 : Bytes := ("    let r00000308: u32 = r00000303 ^ r00000307;\n" : String).toByteArray.data.toList
theorem checked750 : bytes750=statementBytes 776 (op750.map lower) ∧ bytes750.length=48 := by core033_kernel_decide
def op751 : List WordIR.Op := [.shr 776 31]
def bytes751 : Bytes := ("    let r00000309: u32 = r00000308 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked751 : bytes751=statementBytes 777 (op751.map lower) ∧ bytes751.length=54 := by core033_kernel_decide
def op752 : List WordIR.Op := [.badd 770 777]
def bytes752 : Bytes := ("    let r0000030a: u32 = r00000302.wrapping_add(r00000309);\n" : String).toByteArray.data.toList
theorem checked752 : bytes752=statementBytes 778 (op752.map lower) ∧ bytes752.length=60 := by core033_kernel_decide
def op753 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes753 : Bytes := ("    let r0000030b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked753 : bytes753=statementBytes 779 (op753.map lower) ∧ bytes753.length=41 := by core033_kernel_decide
def op754 : List WordIR.Op := [.bnot 779]
def bytes754 : Bytes := ("    let r0000030c: u32 = !r0000030b;\n" : String).toByteArray.data.toList
theorem checked754 : bytes754=statementBytes 780 (op754.map lower) ∧ bytes754.length=37 := by core033_kernel_decide
def op755 : List WordIR.Op := [.badd 778 780]
def bytes755 : Bytes := ("    let r0000030d: u32 = r0000030a.wrapping_add(r0000030c);\n" : String).toByteArray.data.toList
theorem checked755 : bytes755=statementBytes 781 (op755.map lower) ∧ bytes755.length=60 := by core033_kernel_decide
def op756 : List WordIR.Op := [.bnot 781]
def bytes756 : Bytes := ("    let r0000030e: u32 = !r0000030d;\n" : String).toByteArray.data.toList
theorem checked756 : bytes756=statementBytes 782 (op756.map lower) ∧ bytes756.length=37 := by core033_kernel_decide
def op757 : List WordIR.Op := [.band 769 782]
def bytes757 : Bytes := ("    let r0000030f: u32 = r00000301 & r0000030e;\n" : String).toByteArray.data.toList
theorem checked757 : bytes757=statementBytes 783 (op757.map lower) ∧ bytes757.length=48 := by core033_kernel_decide
def op758 : List WordIR.Op := [.bxor 757 783]
def bytes758 : Bytes := ("    let r00000310: u32 = r000002f5 ^ r0000030f;\n" : String).toByteArray.data.toList
theorem checked758 : bytes758=statementBytes 784 (op758.map lower) ∧ bytes758.length=48 := by core033_kernel_decide
def op759 : List WordIR.Op := [.shr 784 31]
def bytes759 : Bytes := ("    let r00000311: u32 = r00000310 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked759 : bytes759=statementBytes 785 (op759.map lower) ∧ bytes759.length=54 := by core033_kernel_decide
def op760 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes760 : Bytes := ("    let r00000312: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked760 : bytes760=statementBytes 786 (op760.map lower) ∧ bytes760.length=41 := by core033_kernel_decide
def op761 : List WordIR.Op := [.bxor 785 786]
def bytes761 : Bytes := ("    let r00000313: u32 = r00000311 ^ r00000312;\n" : String).toByteArray.data.toList
theorem checked761 : bytes761=statementBytes 787 (op761.map lower) ∧ bytes761.length=48 := by core033_kernel_decide
def op762 : List WordIR.Op := [.badd 18 20]
def bytes762 : Bytes := ("    let r00000314: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked762 : bytes762=statementBytes 788 (op762.map lower) ∧ bytes762.length=60 := by core033_kernel_decide
def op763 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes763 : Bytes := ("    let r00000315: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked763 : bytes763=statementBytes 789 (op763.map lower) ∧ bytes763.length=41 := by core033_kernel_decide
def op764 : List WordIR.Op := [.bnot 789]
def bytes764 : Bytes := ("    let r00000316: u32 = !r00000315;\n" : String).toByteArray.data.toList
theorem checked764 : bytes764=statementBytes 790 (op764.map lower) ∧ bytes764.length=37 := by core033_kernel_decide
def op765 : List WordIR.Op := [.band 788 790]
def bytes765 : Bytes := ("    let r00000317: u32 = r00000314 & r00000316;\n" : String).toByteArray.data.toList
theorem checked765 : bytes765=statementBytes 791 (op765.map lower) ∧ bytes765.length=48 := by core033_kernel_decide
def op766 : List WordIR.Op := [.badd 18 20]
def bytes766 : Bytes := ("    let r00000318: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked766 : bytes766=statementBytes 792 (op766.map lower) ∧ bytes766.length=60 := by core033_kernel_decide
def op767 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes767 : Bytes := ("    let r00000319: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked767 : bytes767=statementBytes 793 (op767.map lower) ∧ bytes767.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op704,op705,op706,op707,op708,op709,op710,op711,op712,op713,op714,op715,op716,op717,op718,op719,op720,op721,op722,op723,op724,op725,op726,op727,op728,op729,op730,op731,op732,op733,op734,op735,op736,op737,op738,op739,op740,op741,op742,op743,op744,op745,op746,op747,op748,op749,op750,op751,op752,op753,op754,op755,op756,op757,op758,op759,op760,op761,op762,op763,op764,op765,op766,op767]
def chunks : List Bytes := [bytes704,bytes705,bytes706,bytes707,bytes708,bytes709,bytes710,bytes711,bytes712,bytes713,bytes714,bytes715,bytes716,bytes717,bytes718,bytes719,bytes720,bytes721,bytes722,bytes723,bytes724,bytes725,bytes726,bytes727,bytes728,bytes729,bytes730,bytes731,bytes732,bytes733,bytes734,bytes735,bytes736,bytes737,bytes738,bytes739,bytes740,bytes741,bytes742,bytes743,bytes744,bytes745,bytes746,bytes747,bytes748,bytes749,bytes750,bytes751,bytes752,bytes753,bytes754,bytes755,bytes756,bytes757,bytes758,bytes759,bytes760,bytes761,bytes762,bytes763,bytes764,bytes765,bytes766,bytes767]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 730 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked704.1 (.cons _ _ _ _ _ checked705.1 (.cons _ _ _ _ _ checked706.1 (.cons _ _ _ _ _ checked707.1 (.cons _ _ _ _ _ checked708.1 (.cons _ _ _ _ _ checked709.1 (.cons _ _ _ _ _ checked710.1 (.cons _ _ _ _ _ checked711.1 (.cons _ _ _ _ _ checked712.1 (.cons _ _ _ _ _ checked713.1 (.cons _ _ _ _ _ checked714.1 (.cons _ _ _ _ _ checked715.1 (.cons _ _ _ _ _ checked716.1 (.cons _ _ _ _ _ checked717.1 (.cons _ _ _ _ _ checked718.1 (.cons _ _ _ _ _ checked719.1 (.cons _ _ _ _ _ checked720.1 (.cons _ _ _ _ _ checked721.1 (.cons _ _ _ _ _ checked722.1 (.cons _ _ _ _ _ checked723.1 (.cons _ _ _ _ _ checked724.1 (.cons _ _ _ _ _ checked725.1 (.cons _ _ _ _ _ checked726.1 (.cons _ _ _ _ _ checked727.1 (.cons _ _ _ _ _ checked728.1 (.cons _ _ _ _ _ checked729.1 (.cons _ _ _ _ _ checked730.1 (.cons _ _ _ _ _ checked731.1 (.cons _ _ _ _ _ checked732.1 (.cons _ _ _ _ _ checked733.1 (.cons _ _ _ _ _ checked734.1 (.cons _ _ _ _ _ checked735.1 (.cons _ _ _ _ _ checked736.1 (.cons _ _ _ _ _ checked737.1 (.cons _ _ _ _ _ checked738.1 (.cons _ _ _ _ _ checked739.1 (.cons _ _ _ _ _ checked740.1 (.cons _ _ _ _ _ checked741.1 (.cons _ _ _ _ _ checked742.1 (.cons _ _ _ _ _ checked743.1 (.cons _ _ _ _ _ checked744.1 (.cons _ _ _ _ _ checked745.1 (.cons _ _ _ _ _ checked746.1 (.cons _ _ _ _ _ checked747.1 (.cons _ _ _ _ _ checked748.1 (.cons _ _ _ _ _ checked749.1 (.cons _ _ _ _ _ checked750.1 (.cons _ _ _ _ _ checked751.1 (.cons _ _ _ _ _ checked752.1 (.cons _ _ _ _ _ checked753.1 (.cons _ _ _ _ _ checked754.1 (.cons _ _ _ _ _ checked755.1 (.cons _ _ _ _ _ checked756.1 (.cons _ _ _ _ _ checked757.1 (.cons _ _ _ _ _ checked758.1 (.cons _ _ _ _ _ checked759.1 (.cons _ _ _ _ _ checked760.1 (.cons _ _ _ _ _ checked761.1 (.cons _ _ _ _ _ checked762.1 (.cons _ _ _ _ _ checked763.1 (.cons _ _ _ _ _ checked764.1 (.cons _ _ _ _ _ checked765.1 (.cons _ _ _ _ _ checked766.1 (.cons _ _ _ _ _ checked767.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 730 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3063 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked704.2,checked705.2,checked706.2,checked707.2,checked708.2,checked709.2,checked710.2,checked711.2,checked712.2,checked713.2,checked714.2,checked715.2,checked716.2,checked717.2,checked718.2,checked719.2,checked720.2,checked721.2,checked722.2,checked723.2,checked724.2,checked725.2,checked726.2,checked727.2,checked728.2,checked729.2,checked730.2,checked731.2,checked732.2,checked733.2,checked734.2,checked735.2,checked736.2,checked737.2,checked738.2,checked739.2,checked740.2,checked741.2,checked742.2,checked743.2,checked744.2,checked745.2,checked746.2,checked747.2,checked748.2,checked749.2,checked750.2,checked751.2,checked752.2,checked753.2,checked754.2,checked755.2,checked756.2,checked757.2,checked758.2,checked759.2,checked760.2,checked761.2,checked762.2,checked763.2,checked764.2,checked765.2,checked766.2,checked767.2]
  decide
end ArtifactParentBranchGroup11
