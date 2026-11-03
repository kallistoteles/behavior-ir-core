import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup121
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7744 : List WordIR.Op := [.shr 6142 8]
def bytes7744 : Bytes := ("    let r00001eb6: u32 = r000017fe >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7744 : bytes7744=statementBytes 7862 (op7744.map lower) ∧ bytes7744.length=54 := by core033_kernel_decide
def op7745 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7745 : Bytes := ("    let r00001eb7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7745 : bytes7745=statementBytes 7863 (op7745.map lower) ∧ bytes7745.length=41 := by core033_kernel_decide
def op7746 : List WordIR.Op := [.bnot 7863]
def bytes7746 : Bytes := ("    let r00001eb8: u32 = !r00001eb7;\n" : String).toByteArray.data.toList
theorem checked7746 : bytes7746=statementBytes 7864 (op7746.map lower) ∧ bytes7746.length=37 := by core033_kernel_decide
def op7747 : List WordIR.Op := [.band 7862 7864]
def bytes7747 : Bytes := ("    let r00001eb9: u32 = r00001eb6 & r00001eb8;\n" : String).toByteArray.data.toList
theorem checked7747 : bytes7747=statementBytes 7865 (op7747.map lower) ∧ bytes7747.length=48 := by core033_kernel_decide
def op7748 : List WordIR.Op := [.shr 6142 8]
def bytes7748 : Bytes := ("    let r00001eba: u32 = r000017fe >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7748 : bytes7748=statementBytes 7866 (op7748.map lower) ∧ bytes7748.length=54 := by core033_kernel_decide
def op7749 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7749 : Bytes := ("    let r00001ebb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7749 : bytes7749=statementBytes 7867 (op7749.map lower) ∧ bytes7749.length=41 := by core033_kernel_decide
def op7750 : List WordIR.Op := [.bnot 7867]
def bytes7750 : Bytes := ("    let r00001ebc: u32 = !r00001ebb;\n" : String).toByteArray.data.toList
theorem checked7750 : bytes7750=statementBytes 7868 (op7750.map lower) ∧ bytes7750.length=37 := by core033_kernel_decide
def op7751 : List WordIR.Op := [.bxor 7866 7868]
def bytes7751 : Bytes := ("    let r00001ebd: u32 = r00001eba ^ r00001ebc;\n" : String).toByteArray.data.toList
theorem checked7751 : bytes7751=statementBytes 7869 (op7751.map lower) ∧ bytes7751.length=48 := by core033_kernel_decide
def op7752 : List WordIR.Op := [.shr 6142 8]
def bytes7752 : Bytes := ("    let r00001ebe: u32 = r000017fe >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7752 : bytes7752=statementBytes 7870 (op7752.map lower) ∧ bytes7752.length=54 := by core033_kernel_decide
def op7753 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7753 : Bytes := ("    let r00001ebf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7753 : bytes7753=statementBytes 7871 (op7753.map lower) ∧ bytes7753.length=41 := by core033_kernel_decide
def op7754 : List WordIR.Op := [.bnot 7871]
def bytes7754 : Bytes := ("    let r00001ec0: u32 = !r00001ebf;\n" : String).toByteArray.data.toList
theorem checked7754 : bytes7754=statementBytes 7872 (op7754.map lower) ∧ bytes7754.length=37 := by core033_kernel_decide
def op7755 : List WordIR.Op := [.badd 7870 7872]
def bytes7755 : Bytes := ("    let r00001ec1: u32 = r00001ebe.wrapping_add(r00001ec0);\n" : String).toByteArray.data.toList
theorem checked7755 : bytes7755=statementBytes 7873 (op7755.map lower) ∧ bytes7755.length=60 := by core033_kernel_decide
def op7756 : List WordIR.Op := [.bnot 7873]
def bytes7756 : Bytes := ("    let r00001ec2: u32 = !r00001ec1;\n" : String).toByteArray.data.toList
theorem checked7756 : bytes7756=statementBytes 7874 (op7756.map lower) ∧ bytes7756.length=37 := by core033_kernel_decide
def op7757 : List WordIR.Op := [.band 7869 7874]
def bytes7757 : Bytes := ("    let r00001ec3: u32 = r00001ebd & r00001ec2;\n" : String).toByteArray.data.toList
theorem checked7757 : bytes7757=statementBytes 7875 (op7757.map lower) ∧ bytes7757.length=48 := by core033_kernel_decide
def op7758 : List WordIR.Op := [.bxor 7865 7875]
def bytes7758 : Bytes := ("    let r00001ec4: u32 = r00001eb9 ^ r00001ec3;\n" : String).toByteArray.data.toList
theorem checked7758 : bytes7758=statementBytes 7876 (op7758.map lower) ∧ bytes7758.length=48 := by core033_kernel_decide
def op7759 : List WordIR.Op := [.shr 7876 31]
def bytes7759 : Bytes := ("    let r00001ec5: u32 = r00001ec4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7759 : bytes7759=statementBytes 7877 (op7759.map lower) ∧ bytes7759.length=54 := by core033_kernel_decide
def op7760 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7760 : Bytes := ("    let r00001ec6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7760 : bytes7760=statementBytes 7878 (op7760.map lower) ∧ bytes7760.length=41 := by core033_kernel_decide
def op7761 : List WordIR.Op := [.bxor 7877 7878]
def bytes7761 : Bytes := ("    let r00001ec7: u32 = r00001ec5 ^ r00001ec6;\n" : String).toByteArray.data.toList
theorem checked7761 : bytes7761=statementBytes 7879 (op7761.map lower) ∧ bytes7761.length=48 := by core033_kernel_decide
def op7762 : List WordIR.Op := [.shr 6194 8]
def bytes7762 : Bytes := ("    let r00001ec8: u32 = r00001832 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7762 : bytes7762=statementBytes 7880 (op7762.map lower) ∧ bytes7762.length=54 := by core033_kernel_decide
def op7763 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7763 : Bytes := ("    let r00001ec9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7763 : bytes7763=statementBytes 7881 (op7763.map lower) ∧ bytes7763.length=41 := by core033_kernel_decide
def op7764 : List WordIR.Op := [.bnot 7881]
def bytes7764 : Bytes := ("    let r00001eca: u32 = !r00001ec9;\n" : String).toByteArray.data.toList
theorem checked7764 : bytes7764=statementBytes 7882 (op7764.map lower) ∧ bytes7764.length=37 := by core033_kernel_decide
def op7765 : List WordIR.Op := [.band 7880 7882]
def bytes7765 : Bytes := ("    let r00001ecb: u32 = r00001ec8 & r00001eca;\n" : String).toByteArray.data.toList
theorem checked7765 : bytes7765=statementBytes 7883 (op7765.map lower) ∧ bytes7765.length=48 := by core033_kernel_decide
def op7766 : List WordIR.Op := [.shr 6194 8]
def bytes7766 : Bytes := ("    let r00001ecc: u32 = r00001832 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7766 : bytes7766=statementBytes 7884 (op7766.map lower) ∧ bytes7766.length=54 := by core033_kernel_decide
def op7767 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7767 : Bytes := ("    let r00001ecd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7767 : bytes7767=statementBytes 7885 (op7767.map lower) ∧ bytes7767.length=41 := by core033_kernel_decide
def op7768 : List WordIR.Op := [.bnot 7885]
def bytes7768 : Bytes := ("    let r00001ece: u32 = !r00001ecd;\n" : String).toByteArray.data.toList
theorem checked7768 : bytes7768=statementBytes 7886 (op7768.map lower) ∧ bytes7768.length=37 := by core033_kernel_decide
def op7769 : List WordIR.Op := [.bxor 7884 7886]
def bytes7769 : Bytes := ("    let r00001ecf: u32 = r00001ecc ^ r00001ece;\n" : String).toByteArray.data.toList
theorem checked7769 : bytes7769=statementBytes 7887 (op7769.map lower) ∧ bytes7769.length=48 := by core033_kernel_decide
def op7770 : List WordIR.Op := [.shr 6194 8]
def bytes7770 : Bytes := ("    let r00001ed0: u32 = r00001832 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7770 : bytes7770=statementBytes 7888 (op7770.map lower) ∧ bytes7770.length=54 := by core033_kernel_decide
def op7771 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7771 : Bytes := ("    let r00001ed1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7771 : bytes7771=statementBytes 7889 (op7771.map lower) ∧ bytes7771.length=41 := by core033_kernel_decide
def op7772 : List WordIR.Op := [.bnot 7889]
def bytes7772 : Bytes := ("    let r00001ed2: u32 = !r00001ed1;\n" : String).toByteArray.data.toList
theorem checked7772 : bytes7772=statementBytes 7890 (op7772.map lower) ∧ bytes7772.length=37 := by core033_kernel_decide
def op7773 : List WordIR.Op := [.badd 7888 7890]
def bytes7773 : Bytes := ("    let r00001ed3: u32 = r00001ed0.wrapping_add(r00001ed2);\n" : String).toByteArray.data.toList
theorem checked7773 : bytes7773=statementBytes 7891 (op7773.map lower) ∧ bytes7773.length=60 := by core033_kernel_decide
def op7774 : List WordIR.Op := [.bnot 7891]
def bytes7774 : Bytes := ("    let r00001ed4: u32 = !r00001ed3;\n" : String).toByteArray.data.toList
theorem checked7774 : bytes7774=statementBytes 7892 (op7774.map lower) ∧ bytes7774.length=37 := by core033_kernel_decide
def op7775 : List WordIR.Op := [.band 7887 7892]
def bytes7775 : Bytes := ("    let r00001ed5: u32 = r00001ecf & r00001ed4;\n" : String).toByteArray.data.toList
theorem checked7775 : bytes7775=statementBytes 7893 (op7775.map lower) ∧ bytes7775.length=48 := by core033_kernel_decide
def op7776 : List WordIR.Op := [.bxor 7883 7893]
def bytes7776 : Bytes := ("    let r00001ed6: u32 = r00001ecb ^ r00001ed5;\n" : String).toByteArray.data.toList
theorem checked7776 : bytes7776=statementBytes 7894 (op7776.map lower) ∧ bytes7776.length=48 := by core033_kernel_decide
def op7777 : List WordIR.Op := [.shr 7894 31]
def bytes7777 : Bytes := ("    let r00001ed7: u32 = r00001ed6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7777 : bytes7777=statementBytes 7895 (op7777.map lower) ∧ bytes7777.length=54 := by core033_kernel_decide
def op7778 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7778 : Bytes := ("    let r00001ed8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7778 : bytes7778=statementBytes 7896 (op7778.map lower) ∧ bytes7778.length=41 := by core033_kernel_decide
def op7779 : List WordIR.Op := [.bxor 7895 7896]
def bytes7779 : Bytes := ("    let r00001ed9: u32 = r00001ed7 ^ r00001ed8;\n" : String).toByteArray.data.toList
theorem checked7779 : bytes7779=statementBytes 7897 (op7779.map lower) ∧ bytes7779.length=48 := by core033_kernel_decide
def op7780 : List WordIR.Op := [.shr 6247 8]
def bytes7780 : Bytes := ("    let r00001eda: u32 = r00001867 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7780 : bytes7780=statementBytes 7898 (op7780.map lower) ∧ bytes7780.length=54 := by core033_kernel_decide
def op7781 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7781 : Bytes := ("    let r00001edb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7781 : bytes7781=statementBytes 7899 (op7781.map lower) ∧ bytes7781.length=41 := by core033_kernel_decide
def op7782 : List WordIR.Op := [.bnot 7899]
def bytes7782 : Bytes := ("    let r00001edc: u32 = !r00001edb;\n" : String).toByteArray.data.toList
theorem checked7782 : bytes7782=statementBytes 7900 (op7782.map lower) ∧ bytes7782.length=37 := by core033_kernel_decide
def op7783 : List WordIR.Op := [.band 7898 7900]
def bytes7783 : Bytes := ("    let r00001edd: u32 = r00001eda & r00001edc;\n" : String).toByteArray.data.toList
theorem checked7783 : bytes7783=statementBytes 7901 (op7783.map lower) ∧ bytes7783.length=48 := by core033_kernel_decide
def op7784 : List WordIR.Op := [.shr 6247 8]
def bytes7784 : Bytes := ("    let r00001ede: u32 = r00001867 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7784 : bytes7784=statementBytes 7902 (op7784.map lower) ∧ bytes7784.length=54 := by core033_kernel_decide
def op7785 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7785 : Bytes := ("    let r00001edf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7785 : bytes7785=statementBytes 7903 (op7785.map lower) ∧ bytes7785.length=41 := by core033_kernel_decide
def op7786 : List WordIR.Op := [.bnot 7903]
def bytes7786 : Bytes := ("    let r00001ee0: u32 = !r00001edf;\n" : String).toByteArray.data.toList
theorem checked7786 : bytes7786=statementBytes 7904 (op7786.map lower) ∧ bytes7786.length=37 := by core033_kernel_decide
def op7787 : List WordIR.Op := [.bxor 7902 7904]
def bytes7787 : Bytes := ("    let r00001ee1: u32 = r00001ede ^ r00001ee0;\n" : String).toByteArray.data.toList
theorem checked7787 : bytes7787=statementBytes 7905 (op7787.map lower) ∧ bytes7787.length=48 := by core033_kernel_decide
def op7788 : List WordIR.Op := [.shr 6247 8]
def bytes7788 : Bytes := ("    let r00001ee2: u32 = r00001867 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7788 : bytes7788=statementBytes 7906 (op7788.map lower) ∧ bytes7788.length=54 := by core033_kernel_decide
def op7789 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7789 : Bytes := ("    let r00001ee3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7789 : bytes7789=statementBytes 7907 (op7789.map lower) ∧ bytes7789.length=41 := by core033_kernel_decide
def op7790 : List WordIR.Op := [.bnot 7907]
def bytes7790 : Bytes := ("    let r00001ee4: u32 = !r00001ee3;\n" : String).toByteArray.data.toList
theorem checked7790 : bytes7790=statementBytes 7908 (op7790.map lower) ∧ bytes7790.length=37 := by core033_kernel_decide
def op7791 : List WordIR.Op := [.badd 7906 7908]
def bytes7791 : Bytes := ("    let r00001ee5: u32 = r00001ee2.wrapping_add(r00001ee4);\n" : String).toByteArray.data.toList
theorem checked7791 : bytes7791=statementBytes 7909 (op7791.map lower) ∧ bytes7791.length=60 := by core033_kernel_decide
def op7792 : List WordIR.Op := [.bnot 7909]
def bytes7792 : Bytes := ("    let r00001ee6: u32 = !r00001ee5;\n" : String).toByteArray.data.toList
theorem checked7792 : bytes7792=statementBytes 7910 (op7792.map lower) ∧ bytes7792.length=37 := by core033_kernel_decide
def op7793 : List WordIR.Op := [.band 7905 7910]
def bytes7793 : Bytes := ("    let r00001ee7: u32 = r00001ee1 & r00001ee6;\n" : String).toByteArray.data.toList
theorem checked7793 : bytes7793=statementBytes 7911 (op7793.map lower) ∧ bytes7793.length=48 := by core033_kernel_decide
def op7794 : List WordIR.Op := [.bxor 7901 7911]
def bytes7794 : Bytes := ("    let r00001ee8: u32 = r00001edd ^ r00001ee7;\n" : String).toByteArray.data.toList
theorem checked7794 : bytes7794=statementBytes 7912 (op7794.map lower) ∧ bytes7794.length=48 := by core033_kernel_decide
def op7795 : List WordIR.Op := [.shr 7912 31]
def bytes7795 : Bytes := ("    let r00001ee9: u32 = r00001ee8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7795 : bytes7795=statementBytes 7913 (op7795.map lower) ∧ bytes7795.length=54 := by core033_kernel_decide
def op7796 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7796 : Bytes := ("    let r00001eea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7796 : bytes7796=statementBytes 7914 (op7796.map lower) ∧ bytes7796.length=41 := by core033_kernel_decide
def op7797 : List WordIR.Op := [.bxor 7913 7914]
def bytes7797 : Bytes := ("    let r00001eeb: u32 = r00001ee9 ^ r00001eea;\n" : String).toByteArray.data.toList
theorem checked7797 : bytes7797=statementBytes 7915 (op7797.map lower) ∧ bytes7797.length=48 := by core033_kernel_decide
def op7798 : List WordIR.Op := [.shr 6300 8]
def bytes7798 : Bytes := ("    let r00001eec: u32 = r0000189c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7798 : bytes7798=statementBytes 7916 (op7798.map lower) ∧ bytes7798.length=54 := by core033_kernel_decide
def op7799 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7799 : Bytes := ("    let r00001eed: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7799 : bytes7799=statementBytes 7917 (op7799.map lower) ∧ bytes7799.length=41 := by core033_kernel_decide
def op7800 : List WordIR.Op := [.bnot 7917]
def bytes7800 : Bytes := ("    let r00001eee: u32 = !r00001eed;\n" : String).toByteArray.data.toList
theorem checked7800 : bytes7800=statementBytes 7918 (op7800.map lower) ∧ bytes7800.length=37 := by core033_kernel_decide
def op7801 : List WordIR.Op := [.band 7916 7918]
def bytes7801 : Bytes := ("    let r00001eef: u32 = r00001eec & r00001eee;\n" : String).toByteArray.data.toList
theorem checked7801 : bytes7801=statementBytes 7919 (op7801.map lower) ∧ bytes7801.length=48 := by core033_kernel_decide
def op7802 : List WordIR.Op := [.shr 6300 8]
def bytes7802 : Bytes := ("    let r00001ef0: u32 = r0000189c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7802 : bytes7802=statementBytes 7920 (op7802.map lower) ∧ bytes7802.length=54 := by core033_kernel_decide
def op7803 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7803 : Bytes := ("    let r00001ef1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7803 : bytes7803=statementBytes 7921 (op7803.map lower) ∧ bytes7803.length=41 := by core033_kernel_decide
def op7804 : List WordIR.Op := [.bnot 7921]
def bytes7804 : Bytes := ("    let r00001ef2: u32 = !r00001ef1;\n" : String).toByteArray.data.toList
theorem checked7804 : bytes7804=statementBytes 7922 (op7804.map lower) ∧ bytes7804.length=37 := by core033_kernel_decide
def op7805 : List WordIR.Op := [.bxor 7920 7922]
def bytes7805 : Bytes := ("    let r00001ef3: u32 = r00001ef0 ^ r00001ef2;\n" : String).toByteArray.data.toList
theorem checked7805 : bytes7805=statementBytes 7923 (op7805.map lower) ∧ bytes7805.length=48 := by core033_kernel_decide
def op7806 : List WordIR.Op := [.shr 6300 8]
def bytes7806 : Bytes := ("    let r00001ef4: u32 = r0000189c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7806 : bytes7806=statementBytes 7924 (op7806.map lower) ∧ bytes7806.length=54 := by core033_kernel_decide
def op7807 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7807 : Bytes := ("    let r00001ef5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7807 : bytes7807=statementBytes 7925 (op7807.map lower) ∧ bytes7807.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7744,op7745,op7746,op7747,op7748,op7749,op7750,op7751,op7752,op7753,op7754,op7755,op7756,op7757,op7758,op7759,op7760,op7761,op7762,op7763,op7764,op7765,op7766,op7767,op7768,op7769,op7770,op7771,op7772,op7773,op7774,op7775,op7776,op7777,op7778,op7779,op7780,op7781,op7782,op7783,op7784,op7785,op7786,op7787,op7788,op7789,op7790,op7791,op7792,op7793,op7794,op7795,op7796,op7797,op7798,op7799,op7800,op7801,op7802,op7803,op7804,op7805,op7806,op7807]
def chunks : List Bytes := [bytes7744,bytes7745,bytes7746,bytes7747,bytes7748,bytes7749,bytes7750,bytes7751,bytes7752,bytes7753,bytes7754,bytes7755,bytes7756,bytes7757,bytes7758,bytes7759,bytes7760,bytes7761,bytes7762,bytes7763,bytes7764,bytes7765,bytes7766,bytes7767,bytes7768,bytes7769,bytes7770,bytes7771,bytes7772,bytes7773,bytes7774,bytes7775,bytes7776,bytes7777,bytes7778,bytes7779,bytes7780,bytes7781,bytes7782,bytes7783,bytes7784,bytes7785,bytes7786,bytes7787,bytes7788,bytes7789,bytes7790,bytes7791,bytes7792,bytes7793,bytes7794,bytes7795,bytes7796,bytes7797,bytes7798,bytes7799,bytes7800,bytes7801,bytes7802,bytes7803,bytes7804,bytes7805,bytes7806,bytes7807]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7862 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7744.1 (.cons _ _ _ _ _ checked7745.1 (.cons _ _ _ _ _ checked7746.1 (.cons _ _ _ _ _ checked7747.1 (.cons _ _ _ _ _ checked7748.1 (.cons _ _ _ _ _ checked7749.1 (.cons _ _ _ _ _ checked7750.1 (.cons _ _ _ _ _ checked7751.1 (.cons _ _ _ _ _ checked7752.1 (.cons _ _ _ _ _ checked7753.1 (.cons _ _ _ _ _ checked7754.1 (.cons _ _ _ _ _ checked7755.1 (.cons _ _ _ _ _ checked7756.1 (.cons _ _ _ _ _ checked7757.1 (.cons _ _ _ _ _ checked7758.1 (.cons _ _ _ _ _ checked7759.1 (.cons _ _ _ _ _ checked7760.1 (.cons _ _ _ _ _ checked7761.1 (.cons _ _ _ _ _ checked7762.1 (.cons _ _ _ _ _ checked7763.1 (.cons _ _ _ _ _ checked7764.1 (.cons _ _ _ _ _ checked7765.1 (.cons _ _ _ _ _ checked7766.1 (.cons _ _ _ _ _ checked7767.1 (.cons _ _ _ _ _ checked7768.1 (.cons _ _ _ _ _ checked7769.1 (.cons _ _ _ _ _ checked7770.1 (.cons _ _ _ _ _ checked7771.1 (.cons _ _ _ _ _ checked7772.1 (.cons _ _ _ _ _ checked7773.1 (.cons _ _ _ _ _ checked7774.1 (.cons _ _ _ _ _ checked7775.1 (.cons _ _ _ _ _ checked7776.1 (.cons _ _ _ _ _ checked7777.1 (.cons _ _ _ _ _ checked7778.1 (.cons _ _ _ _ _ checked7779.1 (.cons _ _ _ _ _ checked7780.1 (.cons _ _ _ _ _ checked7781.1 (.cons _ _ _ _ _ checked7782.1 (.cons _ _ _ _ _ checked7783.1 (.cons _ _ _ _ _ checked7784.1 (.cons _ _ _ _ _ checked7785.1 (.cons _ _ _ _ _ checked7786.1 (.cons _ _ _ _ _ checked7787.1 (.cons _ _ _ _ _ checked7788.1 (.cons _ _ _ _ _ checked7789.1 (.cons _ _ _ _ _ checked7790.1 (.cons _ _ _ _ _ checked7791.1 (.cons _ _ _ _ _ checked7792.1 (.cons _ _ _ _ _ checked7793.1 (.cons _ _ _ _ _ checked7794.1 (.cons _ _ _ _ _ checked7795.1 (.cons _ _ _ _ _ checked7796.1 (.cons _ _ _ _ _ checked7797.1 (.cons _ _ _ _ _ checked7798.1 (.cons _ _ _ _ _ checked7799.1 (.cons _ _ _ _ _ checked7800.1 (.cons _ _ _ _ _ checked7801.1 (.cons _ _ _ _ _ checked7802.1 (.cons _ _ _ _ _ checked7803.1 (.cons _ _ _ _ _ checked7804.1 (.cons _ _ _ _ _ checked7805.1 (.cons _ _ _ _ _ checked7806.1 (.cons _ _ _ _ _ checked7807.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7862 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2939 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7744.2,checked7745.2,checked7746.2,checked7747.2,checked7748.2,checked7749.2,checked7750.2,checked7751.2,checked7752.2,checked7753.2,checked7754.2,checked7755.2,checked7756.2,checked7757.2,checked7758.2,checked7759.2,checked7760.2,checked7761.2,checked7762.2,checked7763.2,checked7764.2,checked7765.2,checked7766.2,checked7767.2,checked7768.2,checked7769.2,checked7770.2,checked7771.2,checked7772.2,checked7773.2,checked7774.2,checked7775.2,checked7776.2,checked7777.2,checked7778.2,checked7779.2,checked7780.2,checked7781.2,checked7782.2,checked7783.2,checked7784.2,checked7785.2,checked7786.2,checked7787.2,checked7788.2,checked7789.2,checked7790.2,checked7791.2,checked7792.2,checked7793.2,checked7794.2,checked7795.2,checked7796.2,checked7797.2,checked7798.2,checked7799.2,checked7800.2,checked7801.2,checked7802.2,checked7803.2,checked7804.2,checked7805.2,checked7806.2,checked7807.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup121
