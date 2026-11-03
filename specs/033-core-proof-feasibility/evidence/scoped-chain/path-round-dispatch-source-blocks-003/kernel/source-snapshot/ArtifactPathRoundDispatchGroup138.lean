import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup138
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8832 : List WordIR.Op := [.badd 8766 8862]
def bytes8832 : Bytes := ("    let r000022ab: u32 = r0000223e.wrapping_add(r0000229e);\n" : String).toByteArray.data.toList
theorem checked8832 : bytes8832=statementBytes 8875 (op8832.map lower) ∧ bytes8832.length=60 := by core033_kernel_decide
def op8833 : List WordIR.Op := [.rotr 8875 6]
def bytes8833 : Bytes := ("    let r000022ac: u32 = r000022ab.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8833 : bytes8833=statementBytes 8876 (op8833.map lower) ∧ bytes8833.length=65 := by core033_kernel_decide
def op8834 : List WordIR.Op := [.rotr 8875 11]
def bytes8834 : Bytes := ("    let r000022ad: u32 = r000022ab.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8834 : bytes8834=statementBytes 8877 (op8834.map lower) ∧ bytes8834.length=65 := by core033_kernel_decide
def op8835 : List WordIR.Op := [.bxor 8876 8877]
def bytes8835 : Bytes := ("    let r000022ae: u32 = r000022ac ^ r000022ad;\n" : String).toByteArray.data.toList
theorem checked8835 : bytes8835=statementBytes 8878 (op8835.map lower) ∧ bytes8835.length=48 := by core033_kernel_decide
def op8836 : List WordIR.Op := [.rotr 8875 25]
def bytes8836 : Bytes := ("    let r000022af: u32 = r000022ab.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8836 : bytes8836=statementBytes 8879 (op8836.map lower) ∧ bytes8836.length=65 := by core033_kernel_decide
def op8837 : List WordIR.Op := [.bxor 8878 8879]
def bytes8837 : Bytes := ("    let r000022b0: u32 = r000022ae ^ r000022af;\n" : String).toByteArray.data.toList
theorem checked8837 : bytes8837=statementBytes 8880 (op8837.map lower) ∧ bytes8837.length=48 := by core033_kernel_decide
def op8838 : List WordIR.Op := [.badd 8794 8880]
def bytes8838 : Bytes := ("    let r000022b1: u32 = r0000225a.wrapping_add(r000022b0);\n" : String).toByteArray.data.toList
theorem checked8838 : bytes8838=statementBytes 8881 (op8838.map lower) ∧ bytes8838.length=60 := by core033_kernel_decide
def op8839 : List WordIR.Op := [.band 8875 8848]
def bytes8839 : Bytes := ("    let r000022b2: u32 = r000022ab & r00002290;\n" : String).toByteArray.data.toList
theorem checked8839 : bytes8839=statementBytes 8882 (op8839.map lower) ∧ bytes8839.length=48 := by core033_kernel_decide
def op8840 : List WordIR.Op := [.bnot 8875]
def bytes8840 : Bytes := ("    let r000022b3: u32 = !r000022ab;\n" : String).toByteArray.data.toList
theorem checked8840 : bytes8840=statementBytes 8883 (op8840.map lower) ∧ bytes8840.length=37 := by core033_kernel_decide
def op8841 : List WordIR.Op := [.band 8883 8821]
def bytes8841 : Bytes := ("    let r000022b4: u32 = r000022b3 & r00002275;\n" : String).toByteArray.data.toList
theorem checked8841 : bytes8841=statementBytes 8884 (op8841.map lower) ∧ bytes8841.length=48 := by core033_kernel_decide
def op8842 : List WordIR.Op := [.bxor 8882 8884]
def bytes8842 : Bytes := ("    let r000022b5: u32 = r000022b2 ^ r000022b4;\n" : String).toByteArray.data.toList
theorem checked8842 : bytes8842=statementBytes 8885 (op8842.map lower) ∧ bytes8842.length=48 := by core033_kernel_decide
def op8843 : List WordIR.Op := [.badd 8881 8885]
def bytes8843 : Bytes := ("    let r000022b6: u32 = r000022b1.wrapping_add(r000022b5);\n" : String).toByteArray.data.toList
theorem checked8843 : bytes8843=statementBytes 8886 (op8843.map lower) ∧ bytes8843.length=60 := by core033_kernel_decide
def op8844 : List WordIR.Op := [.literal (BitVec.ofNat 32 506948616)]
def bytes8844 : Bytes := ("    let r000022b7: u32 = 0x1e376c08_u32;\n" : String).toByteArray.data.toList
theorem checked8844 : bytes8844=statementBytes 8887 (op8844.map lower) ∧ bytes8844.length=41 := by core033_kernel_decide
def op8845 : List WordIR.Op := [.badd 8886 8887]
def bytes8845 : Bytes := ("    let r000022b8: u32 = r000022b6.wrapping_add(r000022b7);\n" : String).toByteArray.data.toList
theorem checked8845 : bytes8845=statementBytes 8888 (op8845.map lower) ∧ bytes8845.length=60 := by core033_kernel_decide
def op8846 : List WordIR.Op := [.badd 8888 7370]
def bytes8846 : Bytes := ("    let r000022b9: u32 = r000022b8.wrapping_add(r00001cca);\n" : String).toByteArray.data.toList
theorem checked8846 : bytes8846=statementBytes 8889 (op8846.map lower) ∧ bytes8846.length=60 := by core033_kernel_decide
def op8847 : List WordIR.Op := [.rotr 8874 2]
def bytes8847 : Bytes := ("    let r000022ba: u32 = r000022aa.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8847 : bytes8847=statementBytes 8890 (op8847.map lower) ∧ bytes8847.length=65 := by core033_kernel_decide
def op8848 : List WordIR.Op := [.rotr 8874 13]
def bytes8848 : Bytes := ("    let r000022bb: u32 = r000022aa.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8848 : bytes8848=statementBytes 8891 (op8848.map lower) ∧ bytes8848.length=65 := by core033_kernel_decide
def op8849 : List WordIR.Op := [.bxor 8890 8891]
def bytes8849 : Bytes := ("    let r000022bc: u32 = r000022ba ^ r000022bb;\n" : String).toByteArray.data.toList
theorem checked8849 : bytes8849=statementBytes 8892 (op8849.map lower) ∧ bytes8849.length=48 := by core033_kernel_decide
def op8850 : List WordIR.Op := [.rotr 8874 22]
def bytes8850 : Bytes := ("    let r000022bd: u32 = r000022aa.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8850 : bytes8850=statementBytes 8893 (op8850.map lower) ∧ bytes8850.length=65 := by core033_kernel_decide
def op8851 : List WordIR.Op := [.bxor 8892 8893]
def bytes8851 : Bytes := ("    let r000022be: u32 = r000022bc ^ r000022bd;\n" : String).toByteArray.data.toList
theorem checked8851 : bytes8851=statementBytes 8894 (op8851.map lower) ∧ bytes8851.length=48 := by core033_kernel_decide
def op8852 : List WordIR.Op := [.band 8874 8847]
def bytes8852 : Bytes := ("    let r000022bf: u32 = r000022aa & r0000228f;\n" : String).toByteArray.data.toList
theorem checked8852 : bytes8852=statementBytes 8895 (op8852.map lower) ∧ bytes8852.length=48 := by core033_kernel_decide
def op8853 : List WordIR.Op := [.band 8874 8820]
def bytes8853 : Bytes := ("    let r000022c0: u32 = r000022aa & r00002274;\n" : String).toByteArray.data.toList
theorem checked8853 : bytes8853=statementBytes 8896 (op8853.map lower) ∧ bytes8853.length=48 := by core033_kernel_decide
def op8854 : List WordIR.Op := [.bxor 8895 8896]
def bytes8854 : Bytes := ("    let r000022c1: u32 = r000022bf ^ r000022c0;\n" : String).toByteArray.data.toList
theorem checked8854 : bytes8854=statementBytes 8897 (op8854.map lower) ∧ bytes8854.length=48 := by core033_kernel_decide
def op8855 : List WordIR.Op := [.band 8847 8820]
def bytes8855 : Bytes := ("    let r000022c2: u32 = r0000228f & r00002274;\n" : String).toByteArray.data.toList
theorem checked8855 : bytes8855=statementBytes 8898 (op8855.map lower) ∧ bytes8855.length=48 := by core033_kernel_decide
def op8856 : List WordIR.Op := [.bxor 8897 8898]
def bytes8856 : Bytes := ("    let r000022c3: u32 = r000022c1 ^ r000022c2;\n" : String).toByteArray.data.toList
theorem checked8856 : bytes8856=statementBytes 8899 (op8856.map lower) ∧ bytes8856.length=48 := by core033_kernel_decide
def op8857 : List WordIR.Op := [.badd 8894 8899]
def bytes8857 : Bytes := ("    let r000022c4: u32 = r000022be.wrapping_add(r000022c3);\n" : String).toByteArray.data.toList
theorem checked8857 : bytes8857=statementBytes 8900 (op8857.map lower) ∧ bytes8857.length=60 := by core033_kernel_decide
def op8858 : List WordIR.Op := [.badd 8889 8900]
def bytes8858 : Bytes := ("    let r000022c5: u32 = r000022b9.wrapping_add(r000022c4);\n" : String).toByteArray.data.toList
theorem checked8858 : bytes8858=statementBytes 8901 (op8858.map lower) ∧ bytes8858.length=60 := by core033_kernel_decide
def op8859 : List WordIR.Op := [.badd 8793 8889]
def bytes8859 : Bytes := ("    let r000022c6: u32 = r00002259.wrapping_add(r000022b9);\n" : String).toByteArray.data.toList
theorem checked8859 : bytes8859=statementBytes 8902 (op8859.map lower) ∧ bytes8859.length=60 := by core033_kernel_decide
def op8860 : List WordIR.Op := [.rotr 8902 6]
def bytes8860 : Bytes := ("    let r000022c7: u32 = r000022c6.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8860 : bytes8860=statementBytes 8903 (op8860.map lower) ∧ bytes8860.length=65 := by core033_kernel_decide
def op8861 : List WordIR.Op := [.rotr 8902 11]
def bytes8861 : Bytes := ("    let r000022c8: u32 = r000022c6.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8861 : bytes8861=statementBytes 8904 (op8861.map lower) ∧ bytes8861.length=65 := by core033_kernel_decide
def op8862 : List WordIR.Op := [.bxor 8903 8904]
def bytes8862 : Bytes := ("    let r000022c9: u32 = r000022c7 ^ r000022c8;\n" : String).toByteArray.data.toList
theorem checked8862 : bytes8862=statementBytes 8905 (op8862.map lower) ∧ bytes8862.length=48 := by core033_kernel_decide
def op8863 : List WordIR.Op := [.rotr 8902 25]
def bytes8863 : Bytes := ("    let r000022ca: u32 = r000022c6.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8863 : bytes8863=statementBytes 8906 (op8863.map lower) ∧ bytes8863.length=65 := by core033_kernel_decide
def op8864 : List WordIR.Op := [.bxor 8905 8906]
def bytes8864 : Bytes := ("    let r000022cb: u32 = r000022c9 ^ r000022ca;\n" : String).toByteArray.data.toList
theorem checked8864 : bytes8864=statementBytes 8907 (op8864.map lower) ∧ bytes8864.length=48 := by core033_kernel_decide
def op8865 : List WordIR.Op := [.badd 8821 8907]
def bytes8865 : Bytes := ("    let r000022cc: u32 = r00002275.wrapping_add(r000022cb);\n" : String).toByteArray.data.toList
theorem checked8865 : bytes8865=statementBytes 8908 (op8865.map lower) ∧ bytes8865.length=60 := by core033_kernel_decide
def op8866 : List WordIR.Op := [.band 8902 8875]
def bytes8866 : Bytes := ("    let r000022cd: u32 = r000022c6 & r000022ab;\n" : String).toByteArray.data.toList
theorem checked8866 : bytes8866=statementBytes 8909 (op8866.map lower) ∧ bytes8866.length=48 := by core033_kernel_decide
def op8867 : List WordIR.Op := [.bnot 8902]
def bytes8867 : Bytes := ("    let r000022ce: u32 = !r000022c6;\n" : String).toByteArray.data.toList
theorem checked8867 : bytes8867=statementBytes 8910 (op8867.map lower) ∧ bytes8867.length=37 := by core033_kernel_decide
def op8868 : List WordIR.Op := [.band 8910 8848]
def bytes8868 : Bytes := ("    let r000022cf: u32 = r000022ce & r00002290;\n" : String).toByteArray.data.toList
theorem checked8868 : bytes8868=statementBytes 8911 (op8868.map lower) ∧ bytes8868.length=48 := by core033_kernel_decide
def op8869 : List WordIR.Op := [.bxor 8909 8911]
def bytes8869 : Bytes := ("    let r000022d0: u32 = r000022cd ^ r000022cf;\n" : String).toByteArray.data.toList
theorem checked8869 : bytes8869=statementBytes 8912 (op8869.map lower) ∧ bytes8869.length=48 := by core033_kernel_decide
def op8870 : List WordIR.Op := [.badd 8908 8912]
def bytes8870 : Bytes := ("    let r000022d1: u32 = r000022cc.wrapping_add(r000022d0);\n" : String).toByteArray.data.toList
theorem checked8870 : bytes8870=statementBytes 8913 (op8870.map lower) ∧ bytes8870.length=60 := by core033_kernel_decide
def op8871 : List WordIR.Op := [.literal (BitVec.ofNat 32 659060556)]
def bytes8871 : Bytes := ("    let r000022d2: u32 = 0x2748774c_u32;\n" : String).toByteArray.data.toList
theorem checked8871 : bytes8871=statementBytes 8914 (op8871.map lower) ∧ bytes8871.length=41 := by core033_kernel_decide
def op8872 : List WordIR.Op := [.badd 8913 8914]
def bytes8872 : Bytes := ("    let r000022d3: u32 = r000022d1.wrapping_add(r000022d2);\n" : String).toByteArray.data.toList
theorem checked8872 : bytes8872=statementBytes 8915 (op8872.map lower) ∧ bytes8872.length=60 := by core033_kernel_decide
def op8873 : List WordIR.Op := [.badd 8915 7383]
def bytes8873 : Bytes := ("    let r000022d4: u32 = r000022d3.wrapping_add(r00001cd7);\n" : String).toByteArray.data.toList
theorem checked8873 : bytes8873=statementBytes 8916 (op8873.map lower) ∧ bytes8873.length=60 := by core033_kernel_decide
def op8874 : List WordIR.Op := [.rotr 8901 2]
def bytes8874 : Bytes := ("    let r000022d5: u32 = r000022c5.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8874 : bytes8874=statementBytes 8917 (op8874.map lower) ∧ bytes8874.length=65 := by core033_kernel_decide
def op8875 : List WordIR.Op := [.rotr 8901 13]
def bytes8875 : Bytes := ("    let r000022d6: u32 = r000022c5.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8875 : bytes8875=statementBytes 8918 (op8875.map lower) ∧ bytes8875.length=65 := by core033_kernel_decide
def op8876 : List WordIR.Op := [.bxor 8917 8918]
def bytes8876 : Bytes := ("    let r000022d7: u32 = r000022d5 ^ r000022d6;\n" : String).toByteArray.data.toList
theorem checked8876 : bytes8876=statementBytes 8919 (op8876.map lower) ∧ bytes8876.length=48 := by core033_kernel_decide
def op8877 : List WordIR.Op := [.rotr 8901 22]
def bytes8877 : Bytes := ("    let r000022d8: u32 = r000022c5.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8877 : bytes8877=statementBytes 8920 (op8877.map lower) ∧ bytes8877.length=65 := by core033_kernel_decide
def op8878 : List WordIR.Op := [.bxor 8919 8920]
def bytes8878 : Bytes := ("    let r000022d9: u32 = r000022d7 ^ r000022d8;\n" : String).toByteArray.data.toList
theorem checked8878 : bytes8878=statementBytes 8921 (op8878.map lower) ∧ bytes8878.length=48 := by core033_kernel_decide
def op8879 : List WordIR.Op := [.band 8901 8874]
def bytes8879 : Bytes := ("    let r000022da: u32 = r000022c5 & r000022aa;\n" : String).toByteArray.data.toList
theorem checked8879 : bytes8879=statementBytes 8922 (op8879.map lower) ∧ bytes8879.length=48 := by core033_kernel_decide
def op8880 : List WordIR.Op := [.band 8901 8847]
def bytes8880 : Bytes := ("    let r000022db: u32 = r000022c5 & r0000228f;\n" : String).toByteArray.data.toList
theorem checked8880 : bytes8880=statementBytes 8923 (op8880.map lower) ∧ bytes8880.length=48 := by core033_kernel_decide
def op8881 : List WordIR.Op := [.bxor 8922 8923]
def bytes8881 : Bytes := ("    let r000022dc: u32 = r000022da ^ r000022db;\n" : String).toByteArray.data.toList
theorem checked8881 : bytes8881=statementBytes 8924 (op8881.map lower) ∧ bytes8881.length=48 := by core033_kernel_decide
def op8882 : List WordIR.Op := [.band 8874 8847]
def bytes8882 : Bytes := ("    let r000022dd: u32 = r000022aa & r0000228f;\n" : String).toByteArray.data.toList
theorem checked8882 : bytes8882=statementBytes 8925 (op8882.map lower) ∧ bytes8882.length=48 := by core033_kernel_decide
def op8883 : List WordIR.Op := [.bxor 8924 8925]
def bytes8883 : Bytes := ("    let r000022de: u32 = r000022dc ^ r000022dd;\n" : String).toByteArray.data.toList
theorem checked8883 : bytes8883=statementBytes 8926 (op8883.map lower) ∧ bytes8883.length=48 := by core033_kernel_decide
def op8884 : List WordIR.Op := [.badd 8921 8926]
def bytes8884 : Bytes := ("    let r000022df: u32 = r000022d9.wrapping_add(r000022de);\n" : String).toByteArray.data.toList
theorem checked8884 : bytes8884=statementBytes 8927 (op8884.map lower) ∧ bytes8884.length=60 := by core033_kernel_decide
def op8885 : List WordIR.Op := [.badd 8916 8927]
def bytes8885 : Bytes := ("    let r000022e0: u32 = r000022d4.wrapping_add(r000022df);\n" : String).toByteArray.data.toList
theorem checked8885 : bytes8885=statementBytes 8928 (op8885.map lower) ∧ bytes8885.length=60 := by core033_kernel_decide
def op8886 : List WordIR.Op := [.badd 8820 8916]
def bytes8886 : Bytes := ("    let r000022e1: u32 = r00002274.wrapping_add(r000022d4);\n" : String).toByteArray.data.toList
theorem checked8886 : bytes8886=statementBytes 8929 (op8886.map lower) ∧ bytes8886.length=60 := by core033_kernel_decide
def op8887 : List WordIR.Op := [.rotr 8929 6]
def bytes8887 : Bytes := ("    let r000022e2: u32 = r000022e1.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8887 : bytes8887=statementBytes 8930 (op8887.map lower) ∧ bytes8887.length=65 := by core033_kernel_decide
def op8888 : List WordIR.Op := [.rotr 8929 11]
def bytes8888 : Bytes := ("    let r000022e3: u32 = r000022e1.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8888 : bytes8888=statementBytes 8931 (op8888.map lower) ∧ bytes8888.length=65 := by core033_kernel_decide
def op8889 : List WordIR.Op := [.bxor 8930 8931]
def bytes8889 : Bytes := ("    let r000022e4: u32 = r000022e2 ^ r000022e3;\n" : String).toByteArray.data.toList
theorem checked8889 : bytes8889=statementBytes 8932 (op8889.map lower) ∧ bytes8889.length=48 := by core033_kernel_decide
def op8890 : List WordIR.Op := [.rotr 8929 25]
def bytes8890 : Bytes := ("    let r000022e5: u32 = r000022e1.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8890 : bytes8890=statementBytes 8933 (op8890.map lower) ∧ bytes8890.length=65 := by core033_kernel_decide
def op8891 : List WordIR.Op := [.bxor 8932 8933]
def bytes8891 : Bytes := ("    let r000022e6: u32 = r000022e4 ^ r000022e5;\n" : String).toByteArray.data.toList
theorem checked8891 : bytes8891=statementBytes 8934 (op8891.map lower) ∧ bytes8891.length=48 := by core033_kernel_decide
def op8892 : List WordIR.Op := [.badd 8848 8934]
def bytes8892 : Bytes := ("    let r000022e7: u32 = r00002290.wrapping_add(r000022e6);\n" : String).toByteArray.data.toList
theorem checked8892 : bytes8892=statementBytes 8935 (op8892.map lower) ∧ bytes8892.length=60 := by core033_kernel_decide
def op8893 : List WordIR.Op := [.band 8929 8902]
def bytes8893 : Bytes := ("    let r000022e8: u32 = r000022e1 & r000022c6;\n" : String).toByteArray.data.toList
theorem checked8893 : bytes8893=statementBytes 8936 (op8893.map lower) ∧ bytes8893.length=48 := by core033_kernel_decide
def op8894 : List WordIR.Op := [.bnot 8929]
def bytes8894 : Bytes := ("    let r000022e9: u32 = !r000022e1;\n" : String).toByteArray.data.toList
theorem checked8894 : bytes8894=statementBytes 8937 (op8894.map lower) ∧ bytes8894.length=37 := by core033_kernel_decide
def op8895 : List WordIR.Op := [.band 8937 8875]
def bytes8895 : Bytes := ("    let r000022ea: u32 = r000022e9 & r000022ab;\n" : String).toByteArray.data.toList
theorem checked8895 : bytes8895=statementBytes 8938 (op8895.map lower) ∧ bytes8895.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8832,op8833,op8834,op8835,op8836,op8837,op8838,op8839,op8840,op8841,op8842,op8843,op8844,op8845,op8846,op8847,op8848,op8849,op8850,op8851,op8852,op8853,op8854,op8855,op8856,op8857,op8858,op8859,op8860,op8861,op8862,op8863,op8864,op8865,op8866,op8867,op8868,op8869,op8870,op8871,op8872,op8873,op8874,op8875,op8876,op8877,op8878,op8879,op8880,op8881,op8882,op8883,op8884,op8885,op8886,op8887,op8888,op8889,op8890,op8891,op8892,op8893,op8894,op8895]
def chunks : List Bytes := [bytes8832,bytes8833,bytes8834,bytes8835,bytes8836,bytes8837,bytes8838,bytes8839,bytes8840,bytes8841,bytes8842,bytes8843,bytes8844,bytes8845,bytes8846,bytes8847,bytes8848,bytes8849,bytes8850,bytes8851,bytes8852,bytes8853,bytes8854,bytes8855,bytes8856,bytes8857,bytes8858,bytes8859,bytes8860,bytes8861,bytes8862,bytes8863,bytes8864,bytes8865,bytes8866,bytes8867,bytes8868,bytes8869,bytes8870,bytes8871,bytes8872,bytes8873,bytes8874,bytes8875,bytes8876,bytes8877,bytes8878,bytes8879,bytes8880,bytes8881,bytes8882,bytes8883,bytes8884,bytes8885,bytes8886,bytes8887,bytes8888,bytes8889,bytes8890,bytes8891,bytes8892,bytes8893,bytes8894,bytes8895]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8875 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8832.1 (.cons _ _ _ _ _ checked8833.1 (.cons _ _ _ _ _ checked8834.1 (.cons _ _ _ _ _ checked8835.1 (.cons _ _ _ _ _ checked8836.1 (.cons _ _ _ _ _ checked8837.1 (.cons _ _ _ _ _ checked8838.1 (.cons _ _ _ _ _ checked8839.1 (.cons _ _ _ _ _ checked8840.1 (.cons _ _ _ _ _ checked8841.1 (.cons _ _ _ _ _ checked8842.1 (.cons _ _ _ _ _ checked8843.1 (.cons _ _ _ _ _ checked8844.1 (.cons _ _ _ _ _ checked8845.1 (.cons _ _ _ _ _ checked8846.1 (.cons _ _ _ _ _ checked8847.1 (.cons _ _ _ _ _ checked8848.1 (.cons _ _ _ _ _ checked8849.1 (.cons _ _ _ _ _ checked8850.1 (.cons _ _ _ _ _ checked8851.1 (.cons _ _ _ _ _ checked8852.1 (.cons _ _ _ _ _ checked8853.1 (.cons _ _ _ _ _ checked8854.1 (.cons _ _ _ _ _ checked8855.1 (.cons _ _ _ _ _ checked8856.1 (.cons _ _ _ _ _ checked8857.1 (.cons _ _ _ _ _ checked8858.1 (.cons _ _ _ _ _ checked8859.1 (.cons _ _ _ _ _ checked8860.1 (.cons _ _ _ _ _ checked8861.1 (.cons _ _ _ _ _ checked8862.1 (.cons _ _ _ _ _ checked8863.1 (.cons _ _ _ _ _ checked8864.1 (.cons _ _ _ _ _ checked8865.1 (.cons _ _ _ _ _ checked8866.1 (.cons _ _ _ _ _ checked8867.1 (.cons _ _ _ _ _ checked8868.1 (.cons _ _ _ _ _ checked8869.1 (.cons _ _ _ _ _ checked8870.1 (.cons _ _ _ _ _ checked8871.1 (.cons _ _ _ _ _ checked8872.1 (.cons _ _ _ _ _ checked8873.1 (.cons _ _ _ _ _ checked8874.1 (.cons _ _ _ _ _ checked8875.1 (.cons _ _ _ _ _ checked8876.1 (.cons _ _ _ _ _ checked8877.1 (.cons _ _ _ _ _ checked8878.1 (.cons _ _ _ _ _ checked8879.1 (.cons _ _ _ _ _ checked8880.1 (.cons _ _ _ _ _ checked8881.1 (.cons _ _ _ _ _ checked8882.1 (.cons _ _ _ _ _ checked8883.1 (.cons _ _ _ _ _ checked8884.1 (.cons _ _ _ _ _ checked8885.1 (.cons _ _ _ _ _ checked8886.1 (.cons _ _ _ _ _ checked8887.1 (.cons _ _ _ _ _ checked8888.1 (.cons _ _ _ _ _ checked8889.1 (.cons _ _ _ _ _ checked8890.1 (.cons _ _ _ _ _ checked8891.1 (.cons _ _ _ _ _ checked8892.1 (.cons _ _ _ _ _ checked8893.1 (.cons _ _ _ _ _ checked8894.1 (.cons _ _ _ _ _ checked8895.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8875 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3472 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8832.2,checked8833.2,checked8834.2,checked8835.2,checked8836.2,checked8837.2,checked8838.2,checked8839.2,checked8840.2,checked8841.2,checked8842.2,checked8843.2,checked8844.2,checked8845.2,checked8846.2,checked8847.2,checked8848.2,checked8849.2,checked8850.2,checked8851.2,checked8852.2,checked8853.2,checked8854.2,checked8855.2,checked8856.2,checked8857.2,checked8858.2,checked8859.2,checked8860.2,checked8861.2,checked8862.2,checked8863.2,checked8864.2,checked8865.2,checked8866.2,checked8867.2,checked8868.2,checked8869.2,checked8870.2,checked8871.2,checked8872.2,checked8873.2,checked8874.2,checked8875.2,checked8876.2,checked8877.2,checked8878.2,checked8879.2,checked8880.2,checked8881.2,checked8882.2,checked8883.2,checked8884.2,checked8885.2,checked8886.2,checked8887.2,checked8888.2,checked8889.2,checked8890.2,checked8891.2,checked8892.2,checked8893.2,checked8894.2,checked8895.2]
  decide
end ArtifactPathRoundDispatchGroup138
