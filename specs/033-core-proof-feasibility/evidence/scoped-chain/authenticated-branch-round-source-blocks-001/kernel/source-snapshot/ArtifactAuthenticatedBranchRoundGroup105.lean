import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup105
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6720 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6720 : Bytes := ("    let r00001ab6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6720 : bytes6720=statementBytes 6838 (op6720.map lower) ∧ bytes6720.length=41 := by core033_kernel_decide
def op6721 : List WordIR.Op := [.bnot 6838]
def bytes6721 : Bytes := ("    let r00001ab7: u32 = !r00001ab6;\n" : String).toByteArray.data.toList
theorem checked6721 : bytes6721=statementBytes 6839 (op6721.map lower) ∧ bytes6721.length=37 := by core033_kernel_decide
def op6722 : List WordIR.Op := [.bxor 6837 6839]
def bytes6722 : Bytes := ("    let r00001ab8: u32 = r00001ab5 ^ r00001ab7;\n" : String).toByteArray.data.toList
theorem checked6722 : bytes6722=statementBytes 6840 (op6722.map lower) ∧ bytes6722.length=48 := by core033_kernel_decide
def op6723 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6723 : Bytes := ("    let r00001ab9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6723 : bytes6723=statementBytes 6841 (op6723.map lower) ∧ bytes6723.length=41 := by core033_kernel_decide
def op6724 : List WordIR.Op := [.bxor 1299 6841]
def bytes6724 : Bytes := ("    let r00001aba: u32 = r00000513 ^ r00001ab9;\n" : String).toByteArray.data.toList
theorem checked6724 : bytes6724=statementBytes 6842 (op6724.map lower) ∧ bytes6724.length=48 := by core033_kernel_decide
def op6725 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6725 : Bytes := ("    let r00001abb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6725 : bytes6725=statementBytes 6843 (op6725.map lower) ∧ bytes6725.length=41 := by core033_kernel_decide
def op6726 : List WordIR.Op := [.bnot 6843]
def bytes6726 : Bytes := ("    let r00001abc: u32 = !r00001abb;\n" : String).toByteArray.data.toList
theorem checked6726 : bytes6726=statementBytes 6844 (op6726.map lower) ∧ bytes6726.length=37 := by core033_kernel_decide
def op6727 : List WordIR.Op := [.badd 6842 6844]
def bytes6727 : Bytes := ("    let r00001abd: u32 = r00001aba.wrapping_add(r00001abc);\n" : String).toByteArray.data.toList
theorem checked6727 : bytes6727=statementBytes 6845 (op6727.map lower) ∧ bytes6727.length=60 := by core033_kernel_decide
def op6728 : List WordIR.Op := [.bnot 6845]
def bytes6728 : Bytes := ("    let r00001abe: u32 = !r00001abd;\n" : String).toByteArray.data.toList
theorem checked6728 : bytes6728=statementBytes 6846 (op6728.map lower) ∧ bytes6728.length=37 := by core033_kernel_decide
def op6729 : List WordIR.Op := [.band 6840 6846]
def bytes6729 : Bytes := ("    let r00001abf: u32 = r00001ab8 & r00001abe;\n" : String).toByteArray.data.toList
theorem checked6729 : bytes6729=statementBytes 6847 (op6729.map lower) ∧ bytes6729.length=48 := by core033_kernel_decide
def op6730 : List WordIR.Op := [.bxor 6835 6847]
def bytes6730 : Bytes := ("    let r00001ac0: u32 = r00001ab3 ^ r00001abf;\n" : String).toByteArray.data.toList
theorem checked6730 : bytes6730=statementBytes 6848 (op6730.map lower) ∧ bytes6730.length=48 := by core033_kernel_decide
def op6731 : List WordIR.Op := [.shr 6848 31]
def bytes6731 : Bytes := ("    let r00001ac1: u32 = r00001ac0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6731 : bytes6731=statementBytes 6849 (op6731.map lower) ∧ bytes6731.length=54 := by core033_kernel_decide
def op6732 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6732 : Bytes := ("    let r00001ac2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6732 : bytes6732=statementBytes 6850 (op6732.map lower) ∧ bytes6732.length=41 := by core033_kernel_decide
def op6733 : List WordIR.Op := [.bxor 6849 6850]
def bytes6733 : Bytes := ("    let r00001ac3: u32 = r00001ac1 ^ r00001ac2;\n" : String).toByteArray.data.toList
theorem checked6733 : bytes6733=statementBytes 6851 (op6733.map lower) ∧ bytes6733.length=48 := by core033_kernel_decide
def op6734 : List WordIR.Op := [.bnot 6851]
def bytes6734 : Bytes := ("    let r00001ac4: u32 = !r00001ac3;\n" : String).toByteArray.data.toList
theorem checked6734 : bytes6734=statementBytes 6852 (op6734.map lower) ∧ bytes6734.length=37 := by core033_kernel_decide
def op6735 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6735 : Bytes := ("    let r00001ac5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6735 : bytes6735=statementBytes 6853 (op6735.map lower) ∧ bytes6735.length=41 := by core033_kernel_decide
def op6736 : List WordIR.Op := [.badd 6852 6853]
def bytes6736 : Bytes := ("    let r00001ac6: u32 = r00001ac4.wrapping_add(r00001ac5);\n" : String).toByteArray.data.toList
theorem checked6736 : bytes6736=statementBytes 6854 (op6736.map lower) ∧ bytes6736.length=60 := by core033_kernel_decide
def op6737 : List WordIR.Op := [.literal (BitVec.ofNat 32 152)]
def bytes6737 : Bytes := ("    let r00001ac7: u32 = 0x00000098_u32;\n" : String).toByteArray.data.toList
theorem checked6737 : bytes6737=statementBytes 6855 (op6737.map lower) ∧ bytes6737.length=41 := by core033_kernel_decide
def op6738 : List WordIR.Op := [.band 6854 6855]
def bytes6738 : Bytes := ("    let r00001ac8: u32 = r00001ac6 & r00001ac7;\n" : String).toByteArray.data.toList
theorem checked6738 : bytes6738=statementBytes 6856 (op6738.map lower) ∧ bytes6738.length=48 := by core033_kernel_decide
def op6739 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6739 : Bytes := ("    let r00001ac9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6739 : bytes6739=statementBytes 6857 (op6739.map lower) ∧ bytes6739.length=41 := by core033_kernel_decide
def op6740 : List WordIR.Op := [.bxor 1299 6857]
def bytes6740 : Bytes := ("    let r00001aca: u32 = r00000513 ^ r00001ac9;\n" : String).toByteArray.data.toList
theorem checked6740 : bytes6740=statementBytes 6858 (op6740.map lower) ∧ bytes6740.length=48 := by core033_kernel_decide
def op6741 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6741 : Bytes := ("    let r00001acb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6741 : bytes6741=statementBytes 6859 (op6741.map lower) ∧ bytes6741.length=41 := by core033_kernel_decide
def op6742 : List WordIR.Op := [.bnot 6859]
def bytes6742 : Bytes := ("    let r00001acc: u32 = !r00001acb;\n" : String).toByteArray.data.toList
theorem checked6742 : bytes6742=statementBytes 6860 (op6742.map lower) ∧ bytes6742.length=37 := by core033_kernel_decide
def op6743 : List WordIR.Op := [.band 6858 6860]
def bytes6743 : Bytes := ("    let r00001acd: u32 = r00001aca & r00001acc;\n" : String).toByteArray.data.toList
theorem checked6743 : bytes6743=statementBytes 6861 (op6743.map lower) ∧ bytes6743.length=48 := by core033_kernel_decide
def op6744 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6744 : Bytes := ("    let r00001ace: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6744 : bytes6744=statementBytes 6862 (op6744.map lower) ∧ bytes6744.length=41 := by core033_kernel_decide
def op6745 : List WordIR.Op := [.bxor 1299 6862]
def bytes6745 : Bytes := ("    let r00001acf: u32 = r00000513 ^ r00001ace;\n" : String).toByteArray.data.toList
theorem checked6745 : bytes6745=statementBytes 6863 (op6745.map lower) ∧ bytes6745.length=48 := by core033_kernel_decide
def op6746 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6746 : Bytes := ("    let r00001ad0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6746 : bytes6746=statementBytes 6864 (op6746.map lower) ∧ bytes6746.length=41 := by core033_kernel_decide
def op6747 : List WordIR.Op := [.bnot 6864]
def bytes6747 : Bytes := ("    let r00001ad1: u32 = !r00001ad0;\n" : String).toByteArray.data.toList
theorem checked6747 : bytes6747=statementBytes 6865 (op6747.map lower) ∧ bytes6747.length=37 := by core033_kernel_decide
def op6748 : List WordIR.Op := [.bxor 6863 6865]
def bytes6748 : Bytes := ("    let r00001ad2: u32 = r00001acf ^ r00001ad1;\n" : String).toByteArray.data.toList
theorem checked6748 : bytes6748=statementBytes 6866 (op6748.map lower) ∧ bytes6748.length=48 := by core033_kernel_decide
def op6749 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6749 : Bytes := ("    let r00001ad3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6749 : bytes6749=statementBytes 6867 (op6749.map lower) ∧ bytes6749.length=41 := by core033_kernel_decide
def op6750 : List WordIR.Op := [.bxor 1299 6867]
def bytes6750 : Bytes := ("    let r00001ad4: u32 = r00000513 ^ r00001ad3;\n" : String).toByteArray.data.toList
theorem checked6750 : bytes6750=statementBytes 6868 (op6750.map lower) ∧ bytes6750.length=48 := by core033_kernel_decide
def op6751 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6751 : Bytes := ("    let r00001ad5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6751 : bytes6751=statementBytes 6869 (op6751.map lower) ∧ bytes6751.length=41 := by core033_kernel_decide
def op6752 : List WordIR.Op := [.bnot 6869]
def bytes6752 : Bytes := ("    let r00001ad6: u32 = !r00001ad5;\n" : String).toByteArray.data.toList
theorem checked6752 : bytes6752=statementBytes 6870 (op6752.map lower) ∧ bytes6752.length=37 := by core033_kernel_decide
def op6753 : List WordIR.Op := [.badd 6868 6870]
def bytes6753 : Bytes := ("    let r00001ad7: u32 = r00001ad4.wrapping_add(r00001ad6);\n" : String).toByteArray.data.toList
theorem checked6753 : bytes6753=statementBytes 6871 (op6753.map lower) ∧ bytes6753.length=60 := by core033_kernel_decide
def op6754 : List WordIR.Op := [.bnot 6871]
def bytes6754 : Bytes := ("    let r00001ad8: u32 = !r00001ad7;\n" : String).toByteArray.data.toList
theorem checked6754 : bytes6754=statementBytes 6872 (op6754.map lower) ∧ bytes6754.length=37 := by core033_kernel_decide
def op6755 : List WordIR.Op := [.band 6866 6872]
def bytes6755 : Bytes := ("    let r00001ad9: u32 = r00001ad2 & r00001ad8;\n" : String).toByteArray.data.toList
theorem checked6755 : bytes6755=statementBytes 6873 (op6755.map lower) ∧ bytes6755.length=48 := by core033_kernel_decide
def op6756 : List WordIR.Op := [.bxor 6861 6873]
def bytes6756 : Bytes := ("    let r00001ada: u32 = r00001acd ^ r00001ad9;\n" : String).toByteArray.data.toList
theorem checked6756 : bytes6756=statementBytes 6874 (op6756.map lower) ∧ bytes6756.length=48 := by core033_kernel_decide
def op6757 : List WordIR.Op := [.shr 6874 31]
def bytes6757 : Bytes := ("    let r00001adb: u32 = r00001ada >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6757 : bytes6757=statementBytes 6875 (op6757.map lower) ∧ bytes6757.length=54 := by core033_kernel_decide
def op6758 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6758 : Bytes := ("    let r00001adc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6758 : bytes6758=statementBytes 6876 (op6758.map lower) ∧ bytes6758.length=41 := by core033_kernel_decide
def op6759 : List WordIR.Op := [.bxor 6875 6876]
def bytes6759 : Bytes := ("    let r00001add: u32 = r00001adb ^ r00001adc;\n" : String).toByteArray.data.toList
theorem checked6759 : bytes6759=statementBytes 6877 (op6759.map lower) ∧ bytes6759.length=48 := by core033_kernel_decide
def op6760 : List WordIR.Op := [.bnot 6877]
def bytes6760 : Bytes := ("    let r00001ade: u32 = !r00001add;\n" : String).toByteArray.data.toList
theorem checked6760 : bytes6760=statementBytes 6878 (op6760.map lower) ∧ bytes6760.length=37 := by core033_kernel_decide
def op6761 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6761 : Bytes := ("    let r00001adf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6761 : bytes6761=statementBytes 6879 (op6761.map lower) ∧ bytes6761.length=41 := by core033_kernel_decide
def op6762 : List WordIR.Op := [.badd 6878 6879]
def bytes6762 : Bytes := ("    let r00001ae0: u32 = r00001ade.wrapping_add(r00001adf);\n" : String).toByteArray.data.toList
theorem checked6762 : bytes6762=statementBytes 6880 (op6762.map lower) ∧ bytes6762.length=60 := by core033_kernel_decide
def op6763 : List WordIR.Op := [.bnot 6880]
def bytes6763 : Bytes := ("    let r00001ae1: u32 = !r00001ae0;\n" : String).toByteArray.data.toList
theorem checked6763 : bytes6763=statementBytes 6881 (op6763.map lower) ∧ bytes6763.length=37 := by core033_kernel_decide
def op6764 : List WordIR.Op := [.band 6881 2693]
def bytes6764 : Bytes := ("    let r00001ae2: u32 = r00001ae1 & r00000a85;\n" : String).toByteArray.data.toList
theorem checked6764 : bytes6764=statementBytes 6882 (op6764.map lower) ∧ bytes6764.length=48 := by core033_kernel_decide
def op6765 : List WordIR.Op := [.bxor 6856 6882]
def bytes6765 : Bytes := ("    let r00001ae3: u32 = r00001ac8 ^ r00001ae2;\n" : String).toByteArray.data.toList
theorem checked6765 : bytes6765=statementBytes 6883 (op6765.map lower) ∧ bytes6765.length=48 := by core033_kernel_decide
def op6766 : List WordIR.Op := [.rotr 3594 8]
def bytes6766 : Bytes := ("    let r00001ae4: u32 = r00000e0a.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6766 : bytes6766=statementBytes 6884 (op6766.map lower) ∧ bytes6766.length=65 := by core033_kernel_decide
def op6767 : List WordIR.Op := [.rotr 3646 16]
def bytes6767 : Bytes := ("    let r00001ae5: u32 = r00000e3e.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6767 : bytes6767=statementBytes 6885 (op6767.map lower) ∧ bytes6767.length=65 := by core033_kernel_decide
def op6768 : List WordIR.Op := [.badd 6884 6885]
def bytes6768 : Bytes := ("    let r00001ae6: u32 = r00001ae4.wrapping_add(r00001ae5);\n" : String).toByteArray.data.toList
theorem checked6768 : bytes6768=statementBytes 6886 (op6768.map lower) ∧ bytes6768.length=60 := by core033_kernel_decide
def op6769 : List WordIR.Op := [.rotr 3698 24]
def bytes6769 : Bytes := ("    let r00001ae7: u32 = r00000e72.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6769 : bytes6769=statementBytes 6887 (op6769.map lower) ∧ bytes6769.length=65 := by core033_kernel_decide
def op6770 : List WordIR.Op := [.badd 6886 6887]
def bytes6770 : Bytes := ("    let r00001ae8: u32 = r00001ae6.wrapping_add(r00001ae7);\n" : String).toByteArray.data.toList
theorem checked6770 : bytes6770=statementBytes 6888 (op6770.map lower) ∧ bytes6770.length=60 := by core033_kernel_decide
def op6771 : List WordIR.Op := [.badd 6888 3750]
def bytes6771 : Bytes := ("    let r00001ae9: u32 = r00001ae8.wrapping_add(r00000ea6);\n" : String).toByteArray.data.toList
theorem checked6771 : bytes6771=statementBytes 6889 (op6771.map lower) ∧ bytes6771.length=60 := by core033_kernel_decide
def op6772 : List WordIR.Op := [.rotr 3802 8]
def bytes6772 : Bytes := ("    let r00001aea: u32 = r00000eda.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6772 : bytes6772=statementBytes 6890 (op6772.map lower) ∧ bytes6772.length=65 := by core033_kernel_decide
def op6773 : List WordIR.Op := [.rotr 3854 16]
def bytes6773 : Bytes := ("    let r00001aeb: u32 = r00000f0e.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6773 : bytes6773=statementBytes 6891 (op6773.map lower) ∧ bytes6773.length=65 := by core033_kernel_decide
def op6774 : List WordIR.Op := [.badd 6890 6891]
def bytes6774 : Bytes := ("    let r00001aec: u32 = r00001aea.wrapping_add(r00001aeb);\n" : String).toByteArray.data.toList
theorem checked6774 : bytes6774=statementBytes 6892 (op6774.map lower) ∧ bytes6774.length=60 := by core033_kernel_decide
def op6775 : List WordIR.Op := [.rotr 3906 24]
def bytes6775 : Bytes := ("    let r00001aed: u32 = r00000f42.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6775 : bytes6775=statementBytes 6893 (op6775.map lower) ∧ bytes6775.length=65 := by core033_kernel_decide
def op6776 : List WordIR.Op := [.badd 6892 6893]
def bytes6776 : Bytes := ("    let r00001aee: u32 = r00001aec.wrapping_add(r00001aed);\n" : String).toByteArray.data.toList
theorem checked6776 : bytes6776=statementBytes 6894 (op6776.map lower) ∧ bytes6776.length=60 := by core033_kernel_decide
def op6777 : List WordIR.Op := [.badd 6894 3958]
def bytes6777 : Bytes := ("    let r00001aef: u32 = r00001aee.wrapping_add(r00000f76);\n" : String).toByteArray.data.toList
theorem checked6777 : bytes6777=statementBytes 6895 (op6777.map lower) ∧ bytes6777.length=60 := by core033_kernel_decide
def op6778 : List WordIR.Op := [.rotr 4010 8]
def bytes6778 : Bytes := ("    let r00001af0: u32 = r00000faa.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6778 : bytes6778=statementBytes 6896 (op6778.map lower) ∧ bytes6778.length=65 := by core033_kernel_decide
def op6779 : List WordIR.Op := [.rotr 4062 16]
def bytes6779 : Bytes := ("    let r00001af1: u32 = r00000fde.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6779 : bytes6779=statementBytes 6897 (op6779.map lower) ∧ bytes6779.length=65 := by core033_kernel_decide
def op6780 : List WordIR.Op := [.badd 6896 6897]
def bytes6780 : Bytes := ("    let r00001af2: u32 = r00001af0.wrapping_add(r00001af1);\n" : String).toByteArray.data.toList
theorem checked6780 : bytes6780=statementBytes 6898 (op6780.map lower) ∧ bytes6780.length=60 := by core033_kernel_decide
def op6781 : List WordIR.Op := [.rotr 4114 24]
def bytes6781 : Bytes := ("    let r00001af3: u32 = r00001012.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6781 : bytes6781=statementBytes 6899 (op6781.map lower) ∧ bytes6781.length=65 := by core033_kernel_decide
def op6782 : List WordIR.Op := [.badd 6898 6899]
def bytes6782 : Bytes := ("    let r00001af4: u32 = r00001af2.wrapping_add(r00001af3);\n" : String).toByteArray.data.toList
theorem checked6782 : bytes6782=statementBytes 6900 (op6782.map lower) ∧ bytes6782.length=60 := by core033_kernel_decide
def op6783 : List WordIR.Op := [.badd 6900 4166]
def bytes6783 : Bytes := ("    let r00001af5: u32 = r00001af4.wrapping_add(r00001046);\n" : String).toByteArray.data.toList
theorem checked6783 : bytes6783=statementBytes 6901 (op6783.map lower) ∧ bytes6783.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6720,op6721,op6722,op6723,op6724,op6725,op6726,op6727,op6728,op6729,op6730,op6731,op6732,op6733,op6734,op6735,op6736,op6737,op6738,op6739,op6740,op6741,op6742,op6743,op6744,op6745,op6746,op6747,op6748,op6749,op6750,op6751,op6752,op6753,op6754,op6755,op6756,op6757,op6758,op6759,op6760,op6761,op6762,op6763,op6764,op6765,op6766,op6767,op6768,op6769,op6770,op6771,op6772,op6773,op6774,op6775,op6776,op6777,op6778,op6779,op6780,op6781,op6782,op6783]
def chunks : List Bytes := [bytes6720,bytes6721,bytes6722,bytes6723,bytes6724,bytes6725,bytes6726,bytes6727,bytes6728,bytes6729,bytes6730,bytes6731,bytes6732,bytes6733,bytes6734,bytes6735,bytes6736,bytes6737,bytes6738,bytes6739,bytes6740,bytes6741,bytes6742,bytes6743,bytes6744,bytes6745,bytes6746,bytes6747,bytes6748,bytes6749,bytes6750,bytes6751,bytes6752,bytes6753,bytes6754,bytes6755,bytes6756,bytes6757,bytes6758,bytes6759,bytes6760,bytes6761,bytes6762,bytes6763,bytes6764,bytes6765,bytes6766,bytes6767,bytes6768,bytes6769,bytes6770,bytes6771,bytes6772,bytes6773,bytes6774,bytes6775,bytes6776,bytes6777,bytes6778,bytes6779,bytes6780,bytes6781,bytes6782,bytes6783]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6838 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6720.1 (.cons _ _ _ _ _ checked6721.1 (.cons _ _ _ _ _ checked6722.1 (.cons _ _ _ _ _ checked6723.1 (.cons _ _ _ _ _ checked6724.1 (.cons _ _ _ _ _ checked6725.1 (.cons _ _ _ _ _ checked6726.1 (.cons _ _ _ _ _ checked6727.1 (.cons _ _ _ _ _ checked6728.1 (.cons _ _ _ _ _ checked6729.1 (.cons _ _ _ _ _ checked6730.1 (.cons _ _ _ _ _ checked6731.1 (.cons _ _ _ _ _ checked6732.1 (.cons _ _ _ _ _ checked6733.1 (.cons _ _ _ _ _ checked6734.1 (.cons _ _ _ _ _ checked6735.1 (.cons _ _ _ _ _ checked6736.1 (.cons _ _ _ _ _ checked6737.1 (.cons _ _ _ _ _ checked6738.1 (.cons _ _ _ _ _ checked6739.1 (.cons _ _ _ _ _ checked6740.1 (.cons _ _ _ _ _ checked6741.1 (.cons _ _ _ _ _ checked6742.1 (.cons _ _ _ _ _ checked6743.1 (.cons _ _ _ _ _ checked6744.1 (.cons _ _ _ _ _ checked6745.1 (.cons _ _ _ _ _ checked6746.1 (.cons _ _ _ _ _ checked6747.1 (.cons _ _ _ _ _ checked6748.1 (.cons _ _ _ _ _ checked6749.1 (.cons _ _ _ _ _ checked6750.1 (.cons _ _ _ _ _ checked6751.1 (.cons _ _ _ _ _ checked6752.1 (.cons _ _ _ _ _ checked6753.1 (.cons _ _ _ _ _ checked6754.1 (.cons _ _ _ _ _ checked6755.1 (.cons _ _ _ _ _ checked6756.1 (.cons _ _ _ _ _ checked6757.1 (.cons _ _ _ _ _ checked6758.1 (.cons _ _ _ _ _ checked6759.1 (.cons _ _ _ _ _ checked6760.1 (.cons _ _ _ _ _ checked6761.1 (.cons _ _ _ _ _ checked6762.1 (.cons _ _ _ _ _ checked6763.1 (.cons _ _ _ _ _ checked6764.1 (.cons _ _ _ _ _ checked6765.1 (.cons _ _ _ _ _ checked6766.1 (.cons _ _ _ _ _ checked6767.1 (.cons _ _ _ _ _ checked6768.1 (.cons _ _ _ _ _ checked6769.1 (.cons _ _ _ _ _ checked6770.1 (.cons _ _ _ _ _ checked6771.1 (.cons _ _ _ _ _ checked6772.1 (.cons _ _ _ _ _ checked6773.1 (.cons _ _ _ _ _ checked6774.1 (.cons _ _ _ _ _ checked6775.1 (.cons _ _ _ _ _ checked6776.1 (.cons _ _ _ _ _ checked6777.1 (.cons _ _ _ _ _ checked6778.1 (.cons _ _ _ _ _ checked6779.1 (.cons _ _ _ _ _ checked6780.1 (.cons _ _ _ _ _ checked6781.1 (.cons _ _ _ _ _ checked6782.1 (.cons _ _ _ _ _ checked6783.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6838 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3185 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6720.2,checked6721.2,checked6722.2,checked6723.2,checked6724.2,checked6725.2,checked6726.2,checked6727.2,checked6728.2,checked6729.2,checked6730.2,checked6731.2,checked6732.2,checked6733.2,checked6734.2,checked6735.2,checked6736.2,checked6737.2,checked6738.2,checked6739.2,checked6740.2,checked6741.2,checked6742.2,checked6743.2,checked6744.2,checked6745.2,checked6746.2,checked6747.2,checked6748.2,checked6749.2,checked6750.2,checked6751.2,checked6752.2,checked6753.2,checked6754.2,checked6755.2,checked6756.2,checked6757.2,checked6758.2,checked6759.2,checked6760.2,checked6761.2,checked6762.2,checked6763.2,checked6764.2,checked6765.2,checked6766.2,checked6767.2,checked6768.2,checked6769.2,checked6770.2,checked6771.2,checked6772.2,checked6773.2,checked6774.2,checked6775.2,checked6776.2,checked6777.2,checked6778.2,checked6779.2,checked6780.2,checked6781.2,checked6782.2,checked6783.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup105
