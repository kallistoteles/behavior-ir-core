import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup122
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7808 : List WordIR.Op := [.bxor 7849 7850]
def bytes7808 : Bytes := ("    let r00001eab: u32 = r00001ea9 ^ r00001eaa;\n" : String).toByteArray.data.toList
theorem checked7808 : bytes7808=statementBytes 7851 (op7808.map lower) ∧ bytes7808.length=48 := by core033_kernel_decide
def op7809 : List WordIR.Op := [.badd 7765 7851]
def bytes7809 : Bytes := ("    let r00001eac: u32 = r00001e55.wrapping_add(r00001eab);\n" : String).toByteArray.data.toList
theorem checked7809 : bytes7809=statementBytes 7852 (op7809.map lower) ∧ bytes7809.length=60 := by core033_kernel_decide
def op7810 : List WordIR.Op := [.band 7846 7819]
def bytes7810 : Bytes := ("    let r00001ead: u32 = r00001ea6 & r00001e8b;\n" : String).toByteArray.data.toList
theorem checked7810 : bytes7810=statementBytes 7853 (op7810.map lower) ∧ bytes7810.length=48 := by core033_kernel_decide
def op7811 : List WordIR.Op := [.bnot 7846]
def bytes7811 : Bytes := ("    let r00001eae: u32 = !r00001ea6;\n" : String).toByteArray.data.toList
theorem checked7811 : bytes7811=statementBytes 7854 (op7811.map lower) ∧ bytes7811.length=37 := by core033_kernel_decide
def op7812 : List WordIR.Op := [.band 7854 7792]
def bytes7812 : Bytes := ("    let r00001eaf: u32 = r00001eae & r00001e70;\n" : String).toByteArray.data.toList
theorem checked7812 : bytes7812=statementBytes 7855 (op7812.map lower) ∧ bytes7812.length=48 := by core033_kernel_decide
def op7813 : List WordIR.Op := [.bxor 7853 7855]
def bytes7813 : Bytes := ("    let r00001eb0: u32 = r00001ead ^ r00001eaf;\n" : String).toByteArray.data.toList
theorem checked7813 : bytes7813=statementBytes 7856 (op7813.map lower) ∧ bytes7813.length=48 := by core033_kernel_decide
def op7814 : List WordIR.Op := [.badd 7852 7856]
def bytes7814 : Bytes := ("    let r00001eb1: u32 = r00001eac.wrapping_add(r00001eb0);\n" : String).toByteArray.data.toList
theorem checked7814 : bytes7814=statementBytes 7857 (op7814.map lower) ∧ bytes7814.length=60 := by core033_kernel_decide
def op7815 : List WordIR.Op := [.literal (BitVec.ofNat 32 113926993)]
def bytes7815 : Bytes := ("    let r00001eb2: u32 = 0x06ca6351_u32;\n" : String).toByteArray.data.toList
theorem checked7815 : bytes7815=statementBytes 7858 (op7815.map lower) ∧ bytes7815.length=41 := by core033_kernel_decide
def op7816 : List WordIR.Op := [.badd 7857 7858]
def bytes7816 : Bytes := ("    let r00001eb3: u32 = r00001eb1.wrapping_add(r00001eb2);\n" : String).toByteArray.data.toList
theorem checked7816 : bytes7816=statementBytes 7859 (op7816.map lower) ∧ bytes7816.length=60 := by core033_kernel_decide
def op7817 : List WordIR.Op := [.badd 7859 6607]
def bytes7817 : Bytes := ("    let r00001eb4: u32 = r00001eb3.wrapping_add(r000019cf);\n" : String).toByteArray.data.toList
theorem checked7817 : bytes7817=statementBytes 7860 (op7817.map lower) ∧ bytes7817.length=60 := by core033_kernel_decide
def op7818 : List WordIR.Op := [.rotr 7845 2]
def bytes7818 : Bytes := ("    let r00001eb5: u32 = r00001ea5.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7818 : bytes7818=statementBytes 7861 (op7818.map lower) ∧ bytes7818.length=65 := by core033_kernel_decide
def op7819 : List WordIR.Op := [.rotr 7845 13]
def bytes7819 : Bytes := ("    let r00001eb6: u32 = r00001ea5.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7819 : bytes7819=statementBytes 7862 (op7819.map lower) ∧ bytes7819.length=65 := by core033_kernel_decide
def op7820 : List WordIR.Op := [.bxor 7861 7862]
def bytes7820 : Bytes := ("    let r00001eb7: u32 = r00001eb5 ^ r00001eb6;\n" : String).toByteArray.data.toList
theorem checked7820 : bytes7820=statementBytes 7863 (op7820.map lower) ∧ bytes7820.length=48 := by core033_kernel_decide
def op7821 : List WordIR.Op := [.rotr 7845 22]
def bytes7821 : Bytes := ("    let r00001eb8: u32 = r00001ea5.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7821 : bytes7821=statementBytes 7864 (op7821.map lower) ∧ bytes7821.length=65 := by core033_kernel_decide
def op7822 : List WordIR.Op := [.bxor 7863 7864]
def bytes7822 : Bytes := ("    let r00001eb9: u32 = r00001eb7 ^ r00001eb8;\n" : String).toByteArray.data.toList
theorem checked7822 : bytes7822=statementBytes 7865 (op7822.map lower) ∧ bytes7822.length=48 := by core033_kernel_decide
def op7823 : List WordIR.Op := [.band 7845 7818]
def bytes7823 : Bytes := ("    let r00001eba: u32 = r00001ea5 & r00001e8a;\n" : String).toByteArray.data.toList
theorem checked7823 : bytes7823=statementBytes 7866 (op7823.map lower) ∧ bytes7823.length=48 := by core033_kernel_decide
def op7824 : List WordIR.Op := [.band 7845 7791]
def bytes7824 : Bytes := ("    let r00001ebb: u32 = r00001ea5 & r00001e6f;\n" : String).toByteArray.data.toList
theorem checked7824 : bytes7824=statementBytes 7867 (op7824.map lower) ∧ bytes7824.length=48 := by core033_kernel_decide
def op7825 : List WordIR.Op := [.bxor 7866 7867]
def bytes7825 : Bytes := ("    let r00001ebc: u32 = r00001eba ^ r00001ebb;\n" : String).toByteArray.data.toList
theorem checked7825 : bytes7825=statementBytes 7868 (op7825.map lower) ∧ bytes7825.length=48 := by core033_kernel_decide
def op7826 : List WordIR.Op := [.band 7818 7791]
def bytes7826 : Bytes := ("    let r00001ebd: u32 = r00001e8a & r00001e6f;\n" : String).toByteArray.data.toList
theorem checked7826 : bytes7826=statementBytes 7869 (op7826.map lower) ∧ bytes7826.length=48 := by core033_kernel_decide
def op7827 : List WordIR.Op := [.bxor 7868 7869]
def bytes7827 : Bytes := ("    let r00001ebe: u32 = r00001ebc ^ r00001ebd;\n" : String).toByteArray.data.toList
theorem checked7827 : bytes7827=statementBytes 7870 (op7827.map lower) ∧ bytes7827.length=48 := by core033_kernel_decide
def op7828 : List WordIR.Op := [.badd 7865 7870]
def bytes7828 : Bytes := ("    let r00001ebf: u32 = r00001eb9.wrapping_add(r00001ebe);\n" : String).toByteArray.data.toList
theorem checked7828 : bytes7828=statementBytes 7871 (op7828.map lower) ∧ bytes7828.length=60 := by core033_kernel_decide
def op7829 : List WordIR.Op := [.badd 7860 7871]
def bytes7829 : Bytes := ("    let r00001ec0: u32 = r00001eb4.wrapping_add(r00001ebf);\n" : String).toByteArray.data.toList
theorem checked7829 : bytes7829=statementBytes 7872 (op7829.map lower) ∧ bytes7829.length=60 := by core033_kernel_decide
def op7830 : List WordIR.Op := [.badd 7764 7860]
def bytes7830 : Bytes := ("    let r00001ec1: u32 = r00001e54.wrapping_add(r00001eb4);\n" : String).toByteArray.data.toList
theorem checked7830 : bytes7830=statementBytes 7873 (op7830.map lower) ∧ bytes7830.length=60 := by core033_kernel_decide
def op7831 : List WordIR.Op := [.rotr 7873 6]
def bytes7831 : Bytes := ("    let r00001ec2: u32 = r00001ec1.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7831 : bytes7831=statementBytes 7874 (op7831.map lower) ∧ bytes7831.length=65 := by core033_kernel_decide
def op7832 : List WordIR.Op := [.rotr 7873 11]
def bytes7832 : Bytes := ("    let r00001ec3: u32 = r00001ec1.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7832 : bytes7832=statementBytes 7875 (op7832.map lower) ∧ bytes7832.length=65 := by core033_kernel_decide
def op7833 : List WordIR.Op := [.bxor 7874 7875]
def bytes7833 : Bytes := ("    let r00001ec4: u32 = r00001ec2 ^ r00001ec3;\n" : String).toByteArray.data.toList
theorem checked7833 : bytes7833=statementBytes 7876 (op7833.map lower) ∧ bytes7833.length=48 := by core033_kernel_decide
def op7834 : List WordIR.Op := [.rotr 7873 25]
def bytes7834 : Bytes := ("    let r00001ec5: u32 = r00001ec1.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7834 : bytes7834=statementBytes 7877 (op7834.map lower) ∧ bytes7834.length=65 := by core033_kernel_decide
def op7835 : List WordIR.Op := [.bxor 7876 7877]
def bytes7835 : Bytes := ("    let r00001ec6: u32 = r00001ec4 ^ r00001ec5;\n" : String).toByteArray.data.toList
theorem checked7835 : bytes7835=statementBytes 7878 (op7835.map lower) ∧ bytes7835.length=48 := by core033_kernel_decide
def op7836 : List WordIR.Op := [.badd 7792 7878]
def bytes7836 : Bytes := ("    let r00001ec7: u32 = r00001e70.wrapping_add(r00001ec6);\n" : String).toByteArray.data.toList
theorem checked7836 : bytes7836=statementBytes 7879 (op7836.map lower) ∧ bytes7836.length=60 := by core033_kernel_decide
def op7837 : List WordIR.Op := [.band 7873 7846]
def bytes7837 : Bytes := ("    let r00001ec8: u32 = r00001ec1 & r00001ea6;\n" : String).toByteArray.data.toList
theorem checked7837 : bytes7837=statementBytes 7880 (op7837.map lower) ∧ bytes7837.length=48 := by core033_kernel_decide
def op7838 : List WordIR.Op := [.bnot 7873]
def bytes7838 : Bytes := ("    let r00001ec9: u32 = !r00001ec1;\n" : String).toByteArray.data.toList
theorem checked7838 : bytes7838=statementBytes 7881 (op7838.map lower) ∧ bytes7838.length=37 := by core033_kernel_decide
def op7839 : List WordIR.Op := [.band 7881 7819]
def bytes7839 : Bytes := ("    let r00001eca: u32 = r00001ec9 & r00001e8b;\n" : String).toByteArray.data.toList
theorem checked7839 : bytes7839=statementBytes 7882 (op7839.map lower) ∧ bytes7839.length=48 := by core033_kernel_decide
def op7840 : List WordIR.Op := [.bxor 7880 7882]
def bytes7840 : Bytes := ("    let r00001ecb: u32 = r00001ec8 ^ r00001eca;\n" : String).toByteArray.data.toList
theorem checked7840 : bytes7840=statementBytes 7883 (op7840.map lower) ∧ bytes7840.length=48 := by core033_kernel_decide
def op7841 : List WordIR.Op := [.badd 7879 7883]
def bytes7841 : Bytes := ("    let r00001ecc: u32 = r00001ec7.wrapping_add(r00001ecb);\n" : String).toByteArray.data.toList
theorem checked7841 : bytes7841=statementBytes 7884 (op7841.map lower) ∧ bytes7841.length=60 := by core033_kernel_decide
def op7842 : List WordIR.Op := [.literal (BitVec.ofNat 32 338241895)]
def bytes7842 : Bytes := ("    let r00001ecd: u32 = 0x14292967_u32;\n" : String).toByteArray.data.toList
theorem checked7842 : bytes7842=statementBytes 7885 (op7842.map lower) ∧ bytes7842.length=41 := by core033_kernel_decide
def op7843 : List WordIR.Op := [.badd 7884 7885]
def bytes7843 : Bytes := ("    let r00001ece: u32 = r00001ecc.wrapping_add(r00001ecd);\n" : String).toByteArray.data.toList
theorem checked7843 : bytes7843=statementBytes 7886 (op7843.map lower) ∧ bytes7843.length=60 := by core033_kernel_decide
def op7844 : List WordIR.Op := [.badd 7886 6620]
def bytes7844 : Bytes := ("    let r00001ecf: u32 = r00001ece.wrapping_add(r000019dc);\n" : String).toByteArray.data.toList
theorem checked7844 : bytes7844=statementBytes 7887 (op7844.map lower) ∧ bytes7844.length=60 := by core033_kernel_decide
def op7845 : List WordIR.Op := [.rotr 7872 2]
def bytes7845 : Bytes := ("    let r00001ed0: u32 = r00001ec0.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7845 : bytes7845=statementBytes 7888 (op7845.map lower) ∧ bytes7845.length=65 := by core033_kernel_decide
def op7846 : List WordIR.Op := [.rotr 7872 13]
def bytes7846 : Bytes := ("    let r00001ed1: u32 = r00001ec0.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7846 : bytes7846=statementBytes 7889 (op7846.map lower) ∧ bytes7846.length=65 := by core033_kernel_decide
def op7847 : List WordIR.Op := [.bxor 7888 7889]
def bytes7847 : Bytes := ("    let r00001ed2: u32 = r00001ed0 ^ r00001ed1;\n" : String).toByteArray.data.toList
theorem checked7847 : bytes7847=statementBytes 7890 (op7847.map lower) ∧ bytes7847.length=48 := by core033_kernel_decide
def op7848 : List WordIR.Op := [.rotr 7872 22]
def bytes7848 : Bytes := ("    let r00001ed3: u32 = r00001ec0.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7848 : bytes7848=statementBytes 7891 (op7848.map lower) ∧ bytes7848.length=65 := by core033_kernel_decide
def op7849 : List WordIR.Op := [.bxor 7890 7891]
def bytes7849 : Bytes := ("    let r00001ed4: u32 = r00001ed2 ^ r00001ed3;\n" : String).toByteArray.data.toList
theorem checked7849 : bytes7849=statementBytes 7892 (op7849.map lower) ∧ bytes7849.length=48 := by core033_kernel_decide
def op7850 : List WordIR.Op := [.band 7872 7845]
def bytes7850 : Bytes := ("    let r00001ed5: u32 = r00001ec0 & r00001ea5;\n" : String).toByteArray.data.toList
theorem checked7850 : bytes7850=statementBytes 7893 (op7850.map lower) ∧ bytes7850.length=48 := by core033_kernel_decide
def op7851 : List WordIR.Op := [.band 7872 7818]
def bytes7851 : Bytes := ("    let r00001ed6: u32 = r00001ec0 & r00001e8a;\n" : String).toByteArray.data.toList
theorem checked7851 : bytes7851=statementBytes 7894 (op7851.map lower) ∧ bytes7851.length=48 := by core033_kernel_decide
def op7852 : List WordIR.Op := [.bxor 7893 7894]
def bytes7852 : Bytes := ("    let r00001ed7: u32 = r00001ed5 ^ r00001ed6;\n" : String).toByteArray.data.toList
theorem checked7852 : bytes7852=statementBytes 7895 (op7852.map lower) ∧ bytes7852.length=48 := by core033_kernel_decide
def op7853 : List WordIR.Op := [.band 7845 7818]
def bytes7853 : Bytes := ("    let r00001ed8: u32 = r00001ea5 & r00001e8a;\n" : String).toByteArray.data.toList
theorem checked7853 : bytes7853=statementBytes 7896 (op7853.map lower) ∧ bytes7853.length=48 := by core033_kernel_decide
def op7854 : List WordIR.Op := [.bxor 7895 7896]
def bytes7854 : Bytes := ("    let r00001ed9: u32 = r00001ed7 ^ r00001ed8;\n" : String).toByteArray.data.toList
theorem checked7854 : bytes7854=statementBytes 7897 (op7854.map lower) ∧ bytes7854.length=48 := by core033_kernel_decide
def op7855 : List WordIR.Op := [.badd 7892 7897]
def bytes7855 : Bytes := ("    let r00001eda: u32 = r00001ed4.wrapping_add(r00001ed9);\n" : String).toByteArray.data.toList
theorem checked7855 : bytes7855=statementBytes 7898 (op7855.map lower) ∧ bytes7855.length=60 := by core033_kernel_decide
def op7856 : List WordIR.Op := [.badd 7887 7898]
def bytes7856 : Bytes := ("    let r00001edb: u32 = r00001ecf.wrapping_add(r00001eda);\n" : String).toByteArray.data.toList
theorem checked7856 : bytes7856=statementBytes 7899 (op7856.map lower) ∧ bytes7856.length=60 := by core033_kernel_decide
def op7857 : List WordIR.Op := [.badd 7791 7887]
def bytes7857 : Bytes := ("    let r00001edc: u32 = r00001e6f.wrapping_add(r00001ecf);\n" : String).toByteArray.data.toList
theorem checked7857 : bytes7857=statementBytes 7900 (op7857.map lower) ∧ bytes7857.length=60 := by core033_kernel_decide
def op7858 : List WordIR.Op := [.rotr 7900 6]
def bytes7858 : Bytes := ("    let r00001edd: u32 = r00001edc.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7858 : bytes7858=statementBytes 7901 (op7858.map lower) ∧ bytes7858.length=65 := by core033_kernel_decide
def op7859 : List WordIR.Op := [.rotr 7900 11]
def bytes7859 : Bytes := ("    let r00001ede: u32 = r00001edc.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7859 : bytes7859=statementBytes 7902 (op7859.map lower) ∧ bytes7859.length=65 := by core033_kernel_decide
def op7860 : List WordIR.Op := [.bxor 7901 7902]
def bytes7860 : Bytes := ("    let r00001edf: u32 = r00001edd ^ r00001ede;\n" : String).toByteArray.data.toList
theorem checked7860 : bytes7860=statementBytes 7903 (op7860.map lower) ∧ bytes7860.length=48 := by core033_kernel_decide
def op7861 : List WordIR.Op := [.rotr 7900 25]
def bytes7861 : Bytes := ("    let r00001ee0: u32 = r00001edc.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7861 : bytes7861=statementBytes 7904 (op7861.map lower) ∧ bytes7861.length=65 := by core033_kernel_decide
def op7862 : List WordIR.Op := [.bxor 7903 7904]
def bytes7862 : Bytes := ("    let r00001ee1: u32 = r00001edf ^ r00001ee0;\n" : String).toByteArray.data.toList
theorem checked7862 : bytes7862=statementBytes 7905 (op7862.map lower) ∧ bytes7862.length=48 := by core033_kernel_decide
def op7863 : List WordIR.Op := [.badd 7819 7905]
def bytes7863 : Bytes := ("    let r00001ee2: u32 = r00001e8b.wrapping_add(r00001ee1);\n" : String).toByteArray.data.toList
theorem checked7863 : bytes7863=statementBytes 7906 (op7863.map lower) ∧ bytes7863.length=60 := by core033_kernel_decide
def op7864 : List WordIR.Op := [.band 7900 7873]
def bytes7864 : Bytes := ("    let r00001ee3: u32 = r00001edc & r00001ec1;\n" : String).toByteArray.data.toList
theorem checked7864 : bytes7864=statementBytes 7907 (op7864.map lower) ∧ bytes7864.length=48 := by core033_kernel_decide
def op7865 : List WordIR.Op := [.bnot 7900]
def bytes7865 : Bytes := ("    let r00001ee4: u32 = !r00001edc;\n" : String).toByteArray.data.toList
theorem checked7865 : bytes7865=statementBytes 7908 (op7865.map lower) ∧ bytes7865.length=37 := by core033_kernel_decide
def op7866 : List WordIR.Op := [.band 7908 7846]
def bytes7866 : Bytes := ("    let r00001ee5: u32 = r00001ee4 & r00001ea6;\n" : String).toByteArray.data.toList
theorem checked7866 : bytes7866=statementBytes 7909 (op7866.map lower) ∧ bytes7866.length=48 := by core033_kernel_decide
def op7867 : List WordIR.Op := [.bxor 7907 7909]
def bytes7867 : Bytes := ("    let r00001ee6: u32 = r00001ee3 ^ r00001ee5;\n" : String).toByteArray.data.toList
theorem checked7867 : bytes7867=statementBytes 7910 (op7867.map lower) ∧ bytes7867.length=48 := by core033_kernel_decide
def op7868 : List WordIR.Op := [.badd 7906 7910]
def bytes7868 : Bytes := ("    let r00001ee7: u32 = r00001ee2.wrapping_add(r00001ee6);\n" : String).toByteArray.data.toList
theorem checked7868 : bytes7868=statementBytes 7911 (op7868.map lower) ∧ bytes7868.length=60 := by core033_kernel_decide
def op7869 : List WordIR.Op := [.literal (BitVec.ofNat 32 666307205)]
def bytes7869 : Bytes := ("    let r00001ee8: u32 = 0x27b70a85_u32;\n" : String).toByteArray.data.toList
theorem checked7869 : bytes7869=statementBytes 7912 (op7869.map lower) ∧ bytes7869.length=41 := by core033_kernel_decide
def op7870 : List WordIR.Op := [.badd 7911 7912]
def bytes7870 : Bytes := ("    let r00001ee9: u32 = r00001ee7.wrapping_add(r00001ee8);\n" : String).toByteArray.data.toList
theorem checked7870 : bytes7870=statementBytes 7913 (op7870.map lower) ∧ bytes7870.length=60 := by core033_kernel_decide
def op7871 : List WordIR.Op := [.badd 7913 6633]
def bytes7871 : Bytes := ("    let r00001eea: u32 = r00001ee9.wrapping_add(r000019e9);\n" : String).toByteArray.data.toList
theorem checked7871 : bytes7871=statementBytes 7914 (op7871.map lower) ∧ bytes7871.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7808,op7809,op7810,op7811,op7812,op7813,op7814,op7815,op7816,op7817,op7818,op7819,op7820,op7821,op7822,op7823,op7824,op7825,op7826,op7827,op7828,op7829,op7830,op7831,op7832,op7833,op7834,op7835,op7836,op7837,op7838,op7839,op7840,op7841,op7842,op7843,op7844,op7845,op7846,op7847,op7848,op7849,op7850,op7851,op7852,op7853,op7854,op7855,op7856,op7857,op7858,op7859,op7860,op7861,op7862,op7863,op7864,op7865,op7866,op7867,op7868,op7869,op7870,op7871]
def chunks : List Bytes := [bytes7808,bytes7809,bytes7810,bytes7811,bytes7812,bytes7813,bytes7814,bytes7815,bytes7816,bytes7817,bytes7818,bytes7819,bytes7820,bytes7821,bytes7822,bytes7823,bytes7824,bytes7825,bytes7826,bytes7827,bytes7828,bytes7829,bytes7830,bytes7831,bytes7832,bytes7833,bytes7834,bytes7835,bytes7836,bytes7837,bytes7838,bytes7839,bytes7840,bytes7841,bytes7842,bytes7843,bytes7844,bytes7845,bytes7846,bytes7847,bytes7848,bytes7849,bytes7850,bytes7851,bytes7852,bytes7853,bytes7854,bytes7855,bytes7856,bytes7857,bytes7858,bytes7859,bytes7860,bytes7861,bytes7862,bytes7863,bytes7864,bytes7865,bytes7866,bytes7867,bytes7868,bytes7869,bytes7870,bytes7871]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7851 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7808.1 (.cons _ _ _ _ _ checked7809.1 (.cons _ _ _ _ _ checked7810.1 (.cons _ _ _ _ _ checked7811.1 (.cons _ _ _ _ _ checked7812.1 (.cons _ _ _ _ _ checked7813.1 (.cons _ _ _ _ _ checked7814.1 (.cons _ _ _ _ _ checked7815.1 (.cons _ _ _ _ _ checked7816.1 (.cons _ _ _ _ _ checked7817.1 (.cons _ _ _ _ _ checked7818.1 (.cons _ _ _ _ _ checked7819.1 (.cons _ _ _ _ _ checked7820.1 (.cons _ _ _ _ _ checked7821.1 (.cons _ _ _ _ _ checked7822.1 (.cons _ _ _ _ _ checked7823.1 (.cons _ _ _ _ _ checked7824.1 (.cons _ _ _ _ _ checked7825.1 (.cons _ _ _ _ _ checked7826.1 (.cons _ _ _ _ _ checked7827.1 (.cons _ _ _ _ _ checked7828.1 (.cons _ _ _ _ _ checked7829.1 (.cons _ _ _ _ _ checked7830.1 (.cons _ _ _ _ _ checked7831.1 (.cons _ _ _ _ _ checked7832.1 (.cons _ _ _ _ _ checked7833.1 (.cons _ _ _ _ _ checked7834.1 (.cons _ _ _ _ _ checked7835.1 (.cons _ _ _ _ _ checked7836.1 (.cons _ _ _ _ _ checked7837.1 (.cons _ _ _ _ _ checked7838.1 (.cons _ _ _ _ _ checked7839.1 (.cons _ _ _ _ _ checked7840.1 (.cons _ _ _ _ _ checked7841.1 (.cons _ _ _ _ _ checked7842.1 (.cons _ _ _ _ _ checked7843.1 (.cons _ _ _ _ _ checked7844.1 (.cons _ _ _ _ _ checked7845.1 (.cons _ _ _ _ _ checked7846.1 (.cons _ _ _ _ _ checked7847.1 (.cons _ _ _ _ _ checked7848.1 (.cons _ _ _ _ _ checked7849.1 (.cons _ _ _ _ _ checked7850.1 (.cons _ _ _ _ _ checked7851.1 (.cons _ _ _ _ _ checked7852.1 (.cons _ _ _ _ _ checked7853.1 (.cons _ _ _ _ _ checked7854.1 (.cons _ _ _ _ _ checked7855.1 (.cons _ _ _ _ _ checked7856.1 (.cons _ _ _ _ _ checked7857.1 (.cons _ _ _ _ _ checked7858.1 (.cons _ _ _ _ _ checked7859.1 (.cons _ _ _ _ _ checked7860.1 (.cons _ _ _ _ _ checked7861.1 (.cons _ _ _ _ _ checked7862.1 (.cons _ _ _ _ _ checked7863.1 (.cons _ _ _ _ _ checked7864.1 (.cons _ _ _ _ _ checked7865.1 (.cons _ _ _ _ _ checked7866.1 (.cons _ _ _ _ _ checked7867.1 (.cons _ _ _ _ _ checked7868.1 (.cons _ _ _ _ _ checked7869.1 (.cons _ _ _ _ _ checked7870.1 (.cons _ _ _ _ _ checked7871.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7851 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3438 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7808.2,checked7809.2,checked7810.2,checked7811.2,checked7812.2,checked7813.2,checked7814.2,checked7815.2,checked7816.2,checked7817.2,checked7818.2,checked7819.2,checked7820.2,checked7821.2,checked7822.2,checked7823.2,checked7824.2,checked7825.2,checked7826.2,checked7827.2,checked7828.2,checked7829.2,checked7830.2,checked7831.2,checked7832.2,checked7833.2,checked7834.2,checked7835.2,checked7836.2,checked7837.2,checked7838.2,checked7839.2,checked7840.2,checked7841.2,checked7842.2,checked7843.2,checked7844.2,checked7845.2,checked7846.2,checked7847.2,checked7848.2,checked7849.2,checked7850.2,checked7851.2,checked7852.2,checked7853.2,checked7854.2,checked7855.2,checked7856.2,checked7857.2,checked7858.2,checked7859.2,checked7860.2,checked7861.2,checked7862.2,checked7863.2,checked7864.2,checked7865.2,checked7866.2,checked7867.2,checked7868.2,checked7869.2,checked7870.2,checked7871.2]
  decide
end ArtifactFrameHashControllerGroup122
