import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup105
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6720 : List WordIR.Op := [.shr 6815 31]
def bytes6720 : Bytes := ("    let r00001aa0: u32 = r00001a9f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6720 : bytes6720=statementBytes 6816 (op6720.map lower) ∧ bytes6720.length=54 := by core033_kernel_decide
def op6721 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6721 : Bytes := ("    let r00001aa1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6721 : bytes6721=statementBytes 6817 (op6721.map lower) ∧ bytes6721.length=41 := by core033_kernel_decide
def op6722 : List WordIR.Op := [.bxor 6816 6817]
def bytes6722 : Bytes := ("    let r00001aa2: u32 = r00001aa0 ^ r00001aa1;\n" : String).toByteArray.data.toList
theorem checked6722 : bytes6722=statementBytes 6818 (op6722.map lower) ∧ bytes6722.length=48 := by core033_kernel_decide
def op6723 : List WordIR.Op := [.shr 4419 8]
def bytes6723 : Bytes := ("    let r00001aa3: u32 = r00001143 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6723 : bytes6723=statementBytes 6819 (op6723.map lower) ∧ bytes6723.length=54 := by core033_kernel_decide
def op6724 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6724 : Bytes := ("    let r00001aa4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6724 : bytes6724=statementBytes 6820 (op6724.map lower) ∧ bytes6724.length=41 := by core033_kernel_decide
def op6725 : List WordIR.Op := [.bnot 6820]
def bytes6725 : Bytes := ("    let r00001aa5: u32 = !r00001aa4;\n" : String).toByteArray.data.toList
theorem checked6725 : bytes6725=statementBytes 6821 (op6725.map lower) ∧ bytes6725.length=37 := by core033_kernel_decide
def op6726 : List WordIR.Op := [.band 6819 6821]
def bytes6726 : Bytes := ("    let r00001aa6: u32 = r00001aa3 & r00001aa5;\n" : String).toByteArray.data.toList
theorem checked6726 : bytes6726=statementBytes 6822 (op6726.map lower) ∧ bytes6726.length=48 := by core033_kernel_decide
def op6727 : List WordIR.Op := [.shr 4419 8]
def bytes6727 : Bytes := ("    let r00001aa7: u32 = r00001143 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6727 : bytes6727=statementBytes 6823 (op6727.map lower) ∧ bytes6727.length=54 := by core033_kernel_decide
def op6728 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6728 : Bytes := ("    let r00001aa8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6728 : bytes6728=statementBytes 6824 (op6728.map lower) ∧ bytes6728.length=41 := by core033_kernel_decide
def op6729 : List WordIR.Op := [.bnot 6824]
def bytes6729 : Bytes := ("    let r00001aa9: u32 = !r00001aa8;\n" : String).toByteArray.data.toList
theorem checked6729 : bytes6729=statementBytes 6825 (op6729.map lower) ∧ bytes6729.length=37 := by core033_kernel_decide
def op6730 : List WordIR.Op := [.bxor 6823 6825]
def bytes6730 : Bytes := ("    let r00001aaa: u32 = r00001aa7 ^ r00001aa9;\n" : String).toByteArray.data.toList
theorem checked6730 : bytes6730=statementBytes 6826 (op6730.map lower) ∧ bytes6730.length=48 := by core033_kernel_decide
def op6731 : List WordIR.Op := [.shr 4419 8]
def bytes6731 : Bytes := ("    let r00001aab: u32 = r00001143 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6731 : bytes6731=statementBytes 6827 (op6731.map lower) ∧ bytes6731.length=54 := by core033_kernel_decide
def op6732 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6732 : Bytes := ("    let r00001aac: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6732 : bytes6732=statementBytes 6828 (op6732.map lower) ∧ bytes6732.length=41 := by core033_kernel_decide
def op6733 : List WordIR.Op := [.bnot 6828]
def bytes6733 : Bytes := ("    let r00001aad: u32 = !r00001aac;\n" : String).toByteArray.data.toList
theorem checked6733 : bytes6733=statementBytes 6829 (op6733.map lower) ∧ bytes6733.length=37 := by core033_kernel_decide
def op6734 : List WordIR.Op := [.badd 6827 6829]
def bytes6734 : Bytes := ("    let r00001aae: u32 = r00001aab.wrapping_add(r00001aad);\n" : String).toByteArray.data.toList
theorem checked6734 : bytes6734=statementBytes 6830 (op6734.map lower) ∧ bytes6734.length=60 := by core033_kernel_decide
def op6735 : List WordIR.Op := [.bnot 6830]
def bytes6735 : Bytes := ("    let r00001aaf: u32 = !r00001aae;\n" : String).toByteArray.data.toList
theorem checked6735 : bytes6735=statementBytes 6831 (op6735.map lower) ∧ bytes6735.length=37 := by core033_kernel_decide
def op6736 : List WordIR.Op := [.band 6826 6831]
def bytes6736 : Bytes := ("    let r00001ab0: u32 = r00001aaa & r00001aaf;\n" : String).toByteArray.data.toList
theorem checked6736 : bytes6736=statementBytes 6832 (op6736.map lower) ∧ bytes6736.length=48 := by core033_kernel_decide
def op6737 : List WordIR.Op := [.bxor 6822 6832]
def bytes6737 : Bytes := ("    let r00001ab1: u32 = r00001aa6 ^ r00001ab0;\n" : String).toByteArray.data.toList
theorem checked6737 : bytes6737=statementBytes 6833 (op6737.map lower) ∧ bytes6737.length=48 := by core033_kernel_decide
def op6738 : List WordIR.Op := [.shr 6833 31]
def bytes6738 : Bytes := ("    let r00001ab2: u32 = r00001ab1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6738 : bytes6738=statementBytes 6834 (op6738.map lower) ∧ bytes6738.length=54 := by core033_kernel_decide
def op6739 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6739 : Bytes := ("    let r00001ab3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6739 : bytes6739=statementBytes 6835 (op6739.map lower) ∧ bytes6739.length=41 := by core033_kernel_decide
def op6740 : List WordIR.Op := [.bxor 6834 6835]
def bytes6740 : Bytes := ("    let r00001ab4: u32 = r00001ab2 ^ r00001ab3;\n" : String).toByteArray.data.toList
theorem checked6740 : bytes6740=statementBytes 6836 (op6740.map lower) ∧ bytes6740.length=48 := by core033_kernel_decide
def op6741 : List WordIR.Op := [.shr 4471 8]
def bytes6741 : Bytes := ("    let r00001ab5: u32 = r00001177 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6741 : bytes6741=statementBytes 6837 (op6741.map lower) ∧ bytes6741.length=54 := by core033_kernel_decide
def op6742 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6742 : Bytes := ("    let r00001ab6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6742 : bytes6742=statementBytes 6838 (op6742.map lower) ∧ bytes6742.length=41 := by core033_kernel_decide
def op6743 : List WordIR.Op := [.bnot 6838]
def bytes6743 : Bytes := ("    let r00001ab7: u32 = !r00001ab6;\n" : String).toByteArray.data.toList
theorem checked6743 : bytes6743=statementBytes 6839 (op6743.map lower) ∧ bytes6743.length=37 := by core033_kernel_decide
def op6744 : List WordIR.Op := [.band 6837 6839]
def bytes6744 : Bytes := ("    let r00001ab8: u32 = r00001ab5 & r00001ab7;\n" : String).toByteArray.data.toList
theorem checked6744 : bytes6744=statementBytes 6840 (op6744.map lower) ∧ bytes6744.length=48 := by core033_kernel_decide
def op6745 : List WordIR.Op := [.shr 4471 8]
def bytes6745 : Bytes := ("    let r00001ab9: u32 = r00001177 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6745 : bytes6745=statementBytes 6841 (op6745.map lower) ∧ bytes6745.length=54 := by core033_kernel_decide
def op6746 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6746 : Bytes := ("    let r00001aba: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6746 : bytes6746=statementBytes 6842 (op6746.map lower) ∧ bytes6746.length=41 := by core033_kernel_decide
def op6747 : List WordIR.Op := [.bnot 6842]
def bytes6747 : Bytes := ("    let r00001abb: u32 = !r00001aba;\n" : String).toByteArray.data.toList
theorem checked6747 : bytes6747=statementBytes 6843 (op6747.map lower) ∧ bytes6747.length=37 := by core033_kernel_decide
def op6748 : List WordIR.Op := [.bxor 6841 6843]
def bytes6748 : Bytes := ("    let r00001abc: u32 = r00001ab9 ^ r00001abb;\n" : String).toByteArray.data.toList
theorem checked6748 : bytes6748=statementBytes 6844 (op6748.map lower) ∧ bytes6748.length=48 := by core033_kernel_decide
def op6749 : List WordIR.Op := [.shr 4471 8]
def bytes6749 : Bytes := ("    let r00001abd: u32 = r00001177 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6749 : bytes6749=statementBytes 6845 (op6749.map lower) ∧ bytes6749.length=54 := by core033_kernel_decide
def op6750 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6750 : Bytes := ("    let r00001abe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6750 : bytes6750=statementBytes 6846 (op6750.map lower) ∧ bytes6750.length=41 := by core033_kernel_decide
def op6751 : List WordIR.Op := [.bnot 6846]
def bytes6751 : Bytes := ("    let r00001abf: u32 = !r00001abe;\n" : String).toByteArray.data.toList
theorem checked6751 : bytes6751=statementBytes 6847 (op6751.map lower) ∧ bytes6751.length=37 := by core033_kernel_decide
def op6752 : List WordIR.Op := [.badd 6845 6847]
def bytes6752 : Bytes := ("    let r00001ac0: u32 = r00001abd.wrapping_add(r00001abf);\n" : String).toByteArray.data.toList
theorem checked6752 : bytes6752=statementBytes 6848 (op6752.map lower) ∧ bytes6752.length=60 := by core033_kernel_decide
def op6753 : List WordIR.Op := [.bnot 6848]
def bytes6753 : Bytes := ("    let r00001ac1: u32 = !r00001ac0;\n" : String).toByteArray.data.toList
theorem checked6753 : bytes6753=statementBytes 6849 (op6753.map lower) ∧ bytes6753.length=37 := by core033_kernel_decide
def op6754 : List WordIR.Op := [.band 6844 6849]
def bytes6754 : Bytes := ("    let r00001ac2: u32 = r00001abc & r00001ac1;\n" : String).toByteArray.data.toList
theorem checked6754 : bytes6754=statementBytes 6850 (op6754.map lower) ∧ bytes6754.length=48 := by core033_kernel_decide
def op6755 : List WordIR.Op := [.bxor 6840 6850]
def bytes6755 : Bytes := ("    let r00001ac3: u32 = r00001ab8 ^ r00001ac2;\n" : String).toByteArray.data.toList
theorem checked6755 : bytes6755=statementBytes 6851 (op6755.map lower) ∧ bytes6755.length=48 := by core033_kernel_decide
def op6756 : List WordIR.Op := [.shr 6851 31]
def bytes6756 : Bytes := ("    let r00001ac4: u32 = r00001ac3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6756 : bytes6756=statementBytes 6852 (op6756.map lower) ∧ bytes6756.length=54 := by core033_kernel_decide
def op6757 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6757 : Bytes := ("    let r00001ac5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6757 : bytes6757=statementBytes 6853 (op6757.map lower) ∧ bytes6757.length=41 := by core033_kernel_decide
def op6758 : List WordIR.Op := [.bxor 6852 6853]
def bytes6758 : Bytes := ("    let r00001ac6: u32 = r00001ac4 ^ r00001ac5;\n" : String).toByteArray.data.toList
theorem checked6758 : bytes6758=statementBytes 6854 (op6758.map lower) ∧ bytes6758.length=48 := by core033_kernel_decide
def op6759 : List WordIR.Op := [.shr 4523 8]
def bytes6759 : Bytes := ("    let r00001ac7: u32 = r000011ab >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6759 : bytes6759=statementBytes 6855 (op6759.map lower) ∧ bytes6759.length=54 := by core033_kernel_decide
def op6760 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6760 : Bytes := ("    let r00001ac8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6760 : bytes6760=statementBytes 6856 (op6760.map lower) ∧ bytes6760.length=41 := by core033_kernel_decide
def op6761 : List WordIR.Op := [.bnot 6856]
def bytes6761 : Bytes := ("    let r00001ac9: u32 = !r00001ac8;\n" : String).toByteArray.data.toList
theorem checked6761 : bytes6761=statementBytes 6857 (op6761.map lower) ∧ bytes6761.length=37 := by core033_kernel_decide
def op6762 : List WordIR.Op := [.band 6855 6857]
def bytes6762 : Bytes := ("    let r00001aca: u32 = r00001ac7 & r00001ac9;\n" : String).toByteArray.data.toList
theorem checked6762 : bytes6762=statementBytes 6858 (op6762.map lower) ∧ bytes6762.length=48 := by core033_kernel_decide
def op6763 : List WordIR.Op := [.shr 4523 8]
def bytes6763 : Bytes := ("    let r00001acb: u32 = r000011ab >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6763 : bytes6763=statementBytes 6859 (op6763.map lower) ∧ bytes6763.length=54 := by core033_kernel_decide
def op6764 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6764 : Bytes := ("    let r00001acc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6764 : bytes6764=statementBytes 6860 (op6764.map lower) ∧ bytes6764.length=41 := by core033_kernel_decide
def op6765 : List WordIR.Op := [.bnot 6860]
def bytes6765 : Bytes := ("    let r00001acd: u32 = !r00001acc;\n" : String).toByteArray.data.toList
theorem checked6765 : bytes6765=statementBytes 6861 (op6765.map lower) ∧ bytes6765.length=37 := by core033_kernel_decide
def op6766 : List WordIR.Op := [.bxor 6859 6861]
def bytes6766 : Bytes := ("    let r00001ace: u32 = r00001acb ^ r00001acd;\n" : String).toByteArray.data.toList
theorem checked6766 : bytes6766=statementBytes 6862 (op6766.map lower) ∧ bytes6766.length=48 := by core033_kernel_decide
def op6767 : List WordIR.Op := [.shr 4523 8]
def bytes6767 : Bytes := ("    let r00001acf: u32 = r000011ab >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6767 : bytes6767=statementBytes 6863 (op6767.map lower) ∧ bytes6767.length=54 := by core033_kernel_decide
def op6768 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6768 : Bytes := ("    let r00001ad0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6768 : bytes6768=statementBytes 6864 (op6768.map lower) ∧ bytes6768.length=41 := by core033_kernel_decide
def op6769 : List WordIR.Op := [.bnot 6864]
def bytes6769 : Bytes := ("    let r00001ad1: u32 = !r00001ad0;\n" : String).toByteArray.data.toList
theorem checked6769 : bytes6769=statementBytes 6865 (op6769.map lower) ∧ bytes6769.length=37 := by core033_kernel_decide
def op6770 : List WordIR.Op := [.badd 6863 6865]
def bytes6770 : Bytes := ("    let r00001ad2: u32 = r00001acf.wrapping_add(r00001ad1);\n" : String).toByteArray.data.toList
theorem checked6770 : bytes6770=statementBytes 6866 (op6770.map lower) ∧ bytes6770.length=60 := by core033_kernel_decide
def op6771 : List WordIR.Op := [.bnot 6866]
def bytes6771 : Bytes := ("    let r00001ad3: u32 = !r00001ad2;\n" : String).toByteArray.data.toList
theorem checked6771 : bytes6771=statementBytes 6867 (op6771.map lower) ∧ bytes6771.length=37 := by core033_kernel_decide
def op6772 : List WordIR.Op := [.band 6862 6867]
def bytes6772 : Bytes := ("    let r00001ad4: u32 = r00001ace & r00001ad3;\n" : String).toByteArray.data.toList
theorem checked6772 : bytes6772=statementBytes 6868 (op6772.map lower) ∧ bytes6772.length=48 := by core033_kernel_decide
def op6773 : List WordIR.Op := [.bxor 6858 6868]
def bytes6773 : Bytes := ("    let r00001ad5: u32 = r00001aca ^ r00001ad4;\n" : String).toByteArray.data.toList
theorem checked6773 : bytes6773=statementBytes 6869 (op6773.map lower) ∧ bytes6773.length=48 := by core033_kernel_decide
def op6774 : List WordIR.Op := [.shr 6869 31]
def bytes6774 : Bytes := ("    let r00001ad6: u32 = r00001ad5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6774 : bytes6774=statementBytes 6870 (op6774.map lower) ∧ bytes6774.length=54 := by core033_kernel_decide
def op6775 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6775 : Bytes := ("    let r00001ad7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6775 : bytes6775=statementBytes 6871 (op6775.map lower) ∧ bytes6775.length=41 := by core033_kernel_decide
def op6776 : List WordIR.Op := [.bxor 6870 6871]
def bytes6776 : Bytes := ("    let r00001ad8: u32 = r00001ad6 ^ r00001ad7;\n" : String).toByteArray.data.toList
theorem checked6776 : bytes6776=statementBytes 6872 (op6776.map lower) ∧ bytes6776.length=48 := by core033_kernel_decide
def op6777 : List WordIR.Op := [.shr 4575 8]
def bytes6777 : Bytes := ("    let r00001ad9: u32 = r000011df >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6777 : bytes6777=statementBytes 6873 (op6777.map lower) ∧ bytes6777.length=54 := by core033_kernel_decide
def op6778 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6778 : Bytes := ("    let r00001ada: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6778 : bytes6778=statementBytes 6874 (op6778.map lower) ∧ bytes6778.length=41 := by core033_kernel_decide
def op6779 : List WordIR.Op := [.bnot 6874]
def bytes6779 : Bytes := ("    let r00001adb: u32 = !r00001ada;\n" : String).toByteArray.data.toList
theorem checked6779 : bytes6779=statementBytes 6875 (op6779.map lower) ∧ bytes6779.length=37 := by core033_kernel_decide
def op6780 : List WordIR.Op := [.band 6873 6875]
def bytes6780 : Bytes := ("    let r00001adc: u32 = r00001ad9 & r00001adb;\n" : String).toByteArray.data.toList
theorem checked6780 : bytes6780=statementBytes 6876 (op6780.map lower) ∧ bytes6780.length=48 := by core033_kernel_decide
def op6781 : List WordIR.Op := [.shr 4575 8]
def bytes6781 : Bytes := ("    let r00001add: u32 = r000011df >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6781 : bytes6781=statementBytes 6877 (op6781.map lower) ∧ bytes6781.length=54 := by core033_kernel_decide
def op6782 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6782 : Bytes := ("    let r00001ade: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6782 : bytes6782=statementBytes 6878 (op6782.map lower) ∧ bytes6782.length=41 := by core033_kernel_decide
def op6783 : List WordIR.Op := [.bnot 6878]
def bytes6783 : Bytes := ("    let r00001adf: u32 = !r00001ade;\n" : String).toByteArray.data.toList
theorem checked6783 : bytes6783=statementBytes 6879 (op6783.map lower) ∧ bytes6783.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6720,op6721,op6722,op6723,op6724,op6725,op6726,op6727,op6728,op6729,op6730,op6731,op6732,op6733,op6734,op6735,op6736,op6737,op6738,op6739,op6740,op6741,op6742,op6743,op6744,op6745,op6746,op6747,op6748,op6749,op6750,op6751,op6752,op6753,op6754,op6755,op6756,op6757,op6758,op6759,op6760,op6761,op6762,op6763,op6764,op6765,op6766,op6767,op6768,op6769,op6770,op6771,op6772,op6773,op6774,op6775,op6776,op6777,op6778,op6779,op6780,op6781,op6782,op6783]
def chunks : List Bytes := [bytes6720,bytes6721,bytes6722,bytes6723,bytes6724,bytes6725,bytes6726,bytes6727,bytes6728,bytes6729,bytes6730,bytes6731,bytes6732,bytes6733,bytes6734,bytes6735,bytes6736,bytes6737,bytes6738,bytes6739,bytes6740,bytes6741,bytes6742,bytes6743,bytes6744,bytes6745,bytes6746,bytes6747,bytes6748,bytes6749,bytes6750,bytes6751,bytes6752,bytes6753,bytes6754,bytes6755,bytes6756,bytes6757,bytes6758,bytes6759,bytes6760,bytes6761,bytes6762,bytes6763,bytes6764,bytes6765,bytes6766,bytes6767,bytes6768,bytes6769,bytes6770,bytes6771,bytes6772,bytes6773,bytes6774,bytes6775,bytes6776,bytes6777,bytes6778,bytes6779,bytes6780,bytes6781,bytes6782,bytes6783]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6816 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6720.1 (.cons _ _ _ _ _ checked6721.1 (.cons _ _ _ _ _ checked6722.1 (.cons _ _ _ _ _ checked6723.1 (.cons _ _ _ _ _ checked6724.1 (.cons _ _ _ _ _ checked6725.1 (.cons _ _ _ _ _ checked6726.1 (.cons _ _ _ _ _ checked6727.1 (.cons _ _ _ _ _ checked6728.1 (.cons _ _ _ _ _ checked6729.1 (.cons _ _ _ _ _ checked6730.1 (.cons _ _ _ _ _ checked6731.1 (.cons _ _ _ _ _ checked6732.1 (.cons _ _ _ _ _ checked6733.1 (.cons _ _ _ _ _ checked6734.1 (.cons _ _ _ _ _ checked6735.1 (.cons _ _ _ _ _ checked6736.1 (.cons _ _ _ _ _ checked6737.1 (.cons _ _ _ _ _ checked6738.1 (.cons _ _ _ _ _ checked6739.1 (.cons _ _ _ _ _ checked6740.1 (.cons _ _ _ _ _ checked6741.1 (.cons _ _ _ _ _ checked6742.1 (.cons _ _ _ _ _ checked6743.1 (.cons _ _ _ _ _ checked6744.1 (.cons _ _ _ _ _ checked6745.1 (.cons _ _ _ _ _ checked6746.1 (.cons _ _ _ _ _ checked6747.1 (.cons _ _ _ _ _ checked6748.1 (.cons _ _ _ _ _ checked6749.1 (.cons _ _ _ _ _ checked6750.1 (.cons _ _ _ _ _ checked6751.1 (.cons _ _ _ _ _ checked6752.1 (.cons _ _ _ _ _ checked6753.1 (.cons _ _ _ _ _ checked6754.1 (.cons _ _ _ _ _ checked6755.1 (.cons _ _ _ _ _ checked6756.1 (.cons _ _ _ _ _ checked6757.1 (.cons _ _ _ _ _ checked6758.1 (.cons _ _ _ _ _ checked6759.1 (.cons _ _ _ _ _ checked6760.1 (.cons _ _ _ _ _ checked6761.1 (.cons _ _ _ _ _ checked6762.1 (.cons _ _ _ _ _ checked6763.1 (.cons _ _ _ _ _ checked6764.1 (.cons _ _ _ _ _ checked6765.1 (.cons _ _ _ _ _ checked6766.1 (.cons _ _ _ _ _ checked6767.1 (.cons _ _ _ _ _ checked6768.1 (.cons _ _ _ _ _ checked6769.1 (.cons _ _ _ _ _ checked6770.1 (.cons _ _ _ _ _ checked6771.1 (.cons _ _ _ _ _ checked6772.1 (.cons _ _ _ _ _ checked6773.1 (.cons _ _ _ _ _ checked6774.1 (.cons _ _ _ _ _ checked6775.1 (.cons _ _ _ _ _ checked6776.1 (.cons _ _ _ _ _ checked6777.1 (.cons _ _ _ _ _ checked6778.1 (.cons _ _ _ _ _ checked6779.1 (.cons _ _ _ _ _ checked6780.1 (.cons _ _ _ _ _ checked6781.1 (.cons _ _ _ _ _ checked6782.1 (.cons _ _ _ _ _ checked6783.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6816 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2939 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6720.2,checked6721.2,checked6722.2,checked6723.2,checked6724.2,checked6725.2,checked6726.2,checked6727.2,checked6728.2,checked6729.2,checked6730.2,checked6731.2,checked6732.2,checked6733.2,checked6734.2,checked6735.2,checked6736.2,checked6737.2,checked6738.2,checked6739.2,checked6740.2,checked6741.2,checked6742.2,checked6743.2,checked6744.2,checked6745.2,checked6746.2,checked6747.2,checked6748.2,checked6749.2,checked6750.2,checked6751.2,checked6752.2,checked6753.2,checked6754.2,checked6755.2,checked6756.2,checked6757.2,checked6758.2,checked6759.2,checked6760.2,checked6761.2,checked6762.2,checked6763.2,checked6764.2,checked6765.2,checked6766.2,checked6767.2,checked6768.2,checked6769.2,checked6770.2,checked6771.2,checked6772.2,checked6773.2,checked6774.2,checked6775.2,checked6776.2,checked6777.2,checked6778.2,checked6779.2,checked6780.2,checked6781.2,checked6782.2,checked6783.2]
  decide
end ArtifactPairedPathRoundGroup105
