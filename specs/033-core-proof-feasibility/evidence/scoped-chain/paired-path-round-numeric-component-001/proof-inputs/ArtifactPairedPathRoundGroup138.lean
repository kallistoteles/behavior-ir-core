import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup138
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8832 : List WordIR.Op := [.bxor 8926 8927]
def bytes8832 : Bytes := ("    let r000022e0: u32 = r000022de ^ r000022df;\n" : String).toByteArray.data.toList
theorem checked8832 : bytes8832=statementBytes 8928 (op8832.map lower) ∧ bytes8832.length=48 := by core033_kernel_decide
def op8833 : List WordIR.Op := [.band 8908 8881]
def bytes8833 : Bytes := ("    let r000022e1: u32 = r000022cc & r000022b1;\n" : String).toByteArray.data.toList
theorem checked8833 : bytes8833=statementBytes 8929 (op8833.map lower) ∧ bytes8833.length=48 := by core033_kernel_decide
def op8834 : List WordIR.Op := [.band 8908 8854]
def bytes8834 : Bytes := ("    let r000022e2: u32 = r000022cc & r00002296;\n" : String).toByteArray.data.toList
theorem checked8834 : bytes8834=statementBytes 8930 (op8834.map lower) ∧ bytes8834.length=48 := by core033_kernel_decide
def op8835 : List WordIR.Op := [.bxor 8929 8930]
def bytes8835 : Bytes := ("    let r000022e3: u32 = r000022e1 ^ r000022e2;\n" : String).toByteArray.data.toList
theorem checked8835 : bytes8835=statementBytes 8931 (op8835.map lower) ∧ bytes8835.length=48 := by core033_kernel_decide
def op8836 : List WordIR.Op := [.band 8881 8854]
def bytes8836 : Bytes := ("    let r000022e4: u32 = r000022b1 & r00002296;\n" : String).toByteArray.data.toList
theorem checked8836 : bytes8836=statementBytes 8932 (op8836.map lower) ∧ bytes8836.length=48 := by core033_kernel_decide
def op8837 : List WordIR.Op := [.bxor 8931 8932]
def bytes8837 : Bytes := ("    let r000022e5: u32 = r000022e3 ^ r000022e4;\n" : String).toByteArray.data.toList
theorem checked8837 : bytes8837=statementBytes 8933 (op8837.map lower) ∧ bytes8837.length=48 := by core033_kernel_decide
def op8838 : List WordIR.Op := [.badd 8928 8933]
def bytes8838 : Bytes := ("    let r000022e6: u32 = r000022e0.wrapping_add(r000022e5);\n" : String).toByteArray.data.toList
theorem checked8838 : bytes8838=statementBytes 8934 (op8838.map lower) ∧ bytes8838.length=60 := by core033_kernel_decide
def op8839 : List WordIR.Op := [.badd 8923 8934]
def bytes8839 : Bytes := ("    let r000022e7: u32 = r000022db.wrapping_add(r000022e6);\n" : String).toByteArray.data.toList
theorem checked8839 : bytes8839=statementBytes 8935 (op8839.map lower) ∧ bytes8839.length=60 := by core033_kernel_decide
def op8840 : List WordIR.Op := [.badd 8827 8923]
def bytes8840 : Bytes := ("    let r000022e8: u32 = r0000227b.wrapping_add(r000022db);\n" : String).toByteArray.data.toList
theorem checked8840 : bytes8840=statementBytes 8936 (op8840.map lower) ∧ bytes8840.length=60 := by core033_kernel_decide
def op8841 : List WordIR.Op := [.rotr 8936 6]
def bytes8841 : Bytes := ("    let r000022e9: u32 = r000022e8.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8841 : bytes8841=statementBytes 8937 (op8841.map lower) ∧ bytes8841.length=65 := by core033_kernel_decide
def op8842 : List WordIR.Op := [.rotr 8936 11]
def bytes8842 : Bytes := ("    let r000022ea: u32 = r000022e8.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8842 : bytes8842=statementBytes 8938 (op8842.map lower) ∧ bytes8842.length=65 := by core033_kernel_decide
def op8843 : List WordIR.Op := [.bxor 8937 8938]
def bytes8843 : Bytes := ("    let r000022eb: u32 = r000022e9 ^ r000022ea;\n" : String).toByteArray.data.toList
theorem checked8843 : bytes8843=statementBytes 8939 (op8843.map lower) ∧ bytes8843.length=48 := by core033_kernel_decide
def op8844 : List WordIR.Op := [.rotr 8936 25]
def bytes8844 : Bytes := ("    let r000022ec: u32 = r000022e8.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8844 : bytes8844=statementBytes 8940 (op8844.map lower) ∧ bytes8844.length=65 := by core033_kernel_decide
def op8845 : List WordIR.Op := [.bxor 8939 8940]
def bytes8845 : Bytes := ("    let r000022ed: u32 = r000022eb ^ r000022ec;\n" : String).toByteArray.data.toList
theorem checked8845 : bytes8845=statementBytes 8941 (op8845.map lower) ∧ bytes8845.length=48 := by core033_kernel_decide
def op8846 : List WordIR.Op := [.badd 8855 8941]
def bytes8846 : Bytes := ("    let r000022ee: u32 = r00002297.wrapping_add(r000022ed);\n" : String).toByteArray.data.toList
theorem checked8846 : bytes8846=statementBytes 8942 (op8846.map lower) ∧ bytes8846.length=60 := by core033_kernel_decide
def op8847 : List WordIR.Op := [.band 8936 8909]
def bytes8847 : Bytes := ("    let r000022ef: u32 = r000022e8 & r000022cd;\n" : String).toByteArray.data.toList
theorem checked8847 : bytes8847=statementBytes 8943 (op8847.map lower) ∧ bytes8847.length=48 := by core033_kernel_decide
def op8848 : List WordIR.Op := [.bnot 8936]
def bytes8848 : Bytes := ("    let r000022f0: u32 = !r000022e8;\n" : String).toByteArray.data.toList
theorem checked8848 : bytes8848=statementBytes 8944 (op8848.map lower) ∧ bytes8848.length=37 := by core033_kernel_decide
def op8849 : List WordIR.Op := [.band 8944 8882]
def bytes8849 : Bytes := ("    let r000022f1: u32 = r000022f0 & r000022b2;\n" : String).toByteArray.data.toList
theorem checked8849 : bytes8849=statementBytes 8945 (op8849.map lower) ∧ bytes8849.length=48 := by core033_kernel_decide
def op8850 : List WordIR.Op := [.bxor 8943 8945]
def bytes8850 : Bytes := ("    let r000022f2: u32 = r000022ef ^ r000022f1;\n" : String).toByteArray.data.toList
theorem checked8850 : bytes8850=statementBytes 8946 (op8850.map lower) ∧ bytes8850.length=48 := by core033_kernel_decide
def op8851 : List WordIR.Op := [.badd 8942 8946]
def bytes8851 : Bytes := ("    let r000022f3: u32 = r000022ee.wrapping_add(r000022f2);\n" : String).toByteArray.data.toList
theorem checked8851 : bytes8851=statementBytes 8947 (op8851.map lower) ∧ bytes8851.length=60 := by core033_kernel_decide
def op8852 : List WordIR.Op := [.literal (BitVec.ofNat 32 666307205)]
def bytes8852 : Bytes := ("    let r000022f4: u32 = 0x27b70a85_u32;\n" : String).toByteArray.data.toList
theorem checked8852 : bytes8852=statementBytes 8948 (op8852.map lower) ∧ bytes8852.length=41 := by core033_kernel_decide
def op8853 : List WordIR.Op := [.badd 8947 8948]
def bytes8853 : Bytes := ("    let r000022f5: u32 = r000022f3.wrapping_add(r000022f4);\n" : String).toByteArray.data.toList
theorem checked8853 : bytes8853=statementBytes 8949 (op8853.map lower) ∧ bytes8853.length=60 := by core033_kernel_decide
def op8854 : List WordIR.Op := [.badd 8949 7669]
def bytes8854 : Bytes := ("    let r000022f6: u32 = r000022f5.wrapping_add(r00001df5);\n" : String).toByteArray.data.toList
theorem checked8854 : bytes8854=statementBytes 8950 (op8854.map lower) ∧ bytes8854.length=60 := by core033_kernel_decide
def op8855 : List WordIR.Op := [.rotr 8935 2]
def bytes8855 : Bytes := ("    let r000022f7: u32 = r000022e7.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8855 : bytes8855=statementBytes 8951 (op8855.map lower) ∧ bytes8855.length=65 := by core033_kernel_decide
def op8856 : List WordIR.Op := [.rotr 8935 13]
def bytes8856 : Bytes := ("    let r000022f8: u32 = r000022e7.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8856 : bytes8856=statementBytes 8952 (op8856.map lower) ∧ bytes8856.length=65 := by core033_kernel_decide
def op8857 : List WordIR.Op := [.bxor 8951 8952]
def bytes8857 : Bytes := ("    let r000022f9: u32 = r000022f7 ^ r000022f8;\n" : String).toByteArray.data.toList
theorem checked8857 : bytes8857=statementBytes 8953 (op8857.map lower) ∧ bytes8857.length=48 := by core033_kernel_decide
def op8858 : List WordIR.Op := [.rotr 8935 22]
def bytes8858 : Bytes := ("    let r000022fa: u32 = r000022e7.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8858 : bytes8858=statementBytes 8954 (op8858.map lower) ∧ bytes8858.length=65 := by core033_kernel_decide
def op8859 : List WordIR.Op := [.bxor 8953 8954]
def bytes8859 : Bytes := ("    let r000022fb: u32 = r000022f9 ^ r000022fa;\n" : String).toByteArray.data.toList
theorem checked8859 : bytes8859=statementBytes 8955 (op8859.map lower) ∧ bytes8859.length=48 := by core033_kernel_decide
def op8860 : List WordIR.Op := [.band 8935 8908]
def bytes8860 : Bytes := ("    let r000022fc: u32 = r000022e7 & r000022cc;\n" : String).toByteArray.data.toList
theorem checked8860 : bytes8860=statementBytes 8956 (op8860.map lower) ∧ bytes8860.length=48 := by core033_kernel_decide
def op8861 : List WordIR.Op := [.band 8935 8881]
def bytes8861 : Bytes := ("    let r000022fd: u32 = r000022e7 & r000022b1;\n" : String).toByteArray.data.toList
theorem checked8861 : bytes8861=statementBytes 8957 (op8861.map lower) ∧ bytes8861.length=48 := by core033_kernel_decide
def op8862 : List WordIR.Op := [.bxor 8956 8957]
def bytes8862 : Bytes := ("    let r000022fe: u32 = r000022fc ^ r000022fd;\n" : String).toByteArray.data.toList
theorem checked8862 : bytes8862=statementBytes 8958 (op8862.map lower) ∧ bytes8862.length=48 := by core033_kernel_decide
def op8863 : List WordIR.Op := [.band 8908 8881]
def bytes8863 : Bytes := ("    let r000022ff: u32 = r000022cc & r000022b1;\n" : String).toByteArray.data.toList
theorem checked8863 : bytes8863=statementBytes 8959 (op8863.map lower) ∧ bytes8863.length=48 := by core033_kernel_decide
def op8864 : List WordIR.Op := [.bxor 8958 8959]
def bytes8864 : Bytes := ("    let r00002300: u32 = r000022fe ^ r000022ff;\n" : String).toByteArray.data.toList
theorem checked8864 : bytes8864=statementBytes 8960 (op8864.map lower) ∧ bytes8864.length=48 := by core033_kernel_decide
def op8865 : List WordIR.Op := [.badd 8955 8960]
def bytes8865 : Bytes := ("    let r00002301: u32 = r000022fb.wrapping_add(r00002300);\n" : String).toByteArray.data.toList
theorem checked8865 : bytes8865=statementBytes 8961 (op8865.map lower) ∧ bytes8865.length=60 := by core033_kernel_decide
def op8866 : List WordIR.Op := [.badd 8950 8961]
def bytes8866 : Bytes := ("    let r00002302: u32 = r000022f6.wrapping_add(r00002301);\n" : String).toByteArray.data.toList
theorem checked8866 : bytes8866=statementBytes 8962 (op8866.map lower) ∧ bytes8866.length=60 := by core033_kernel_decide
def op8867 : List WordIR.Op := [.badd 8854 8950]
def bytes8867 : Bytes := ("    let r00002303: u32 = r00002296.wrapping_add(r000022f6);\n" : String).toByteArray.data.toList
theorem checked8867 : bytes8867=statementBytes 8963 (op8867.map lower) ∧ bytes8867.length=60 := by core033_kernel_decide
def op8868 : List WordIR.Op := [.rotr 8963 6]
def bytes8868 : Bytes := ("    let r00002304: u32 = r00002303.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8868 : bytes8868=statementBytes 8964 (op8868.map lower) ∧ bytes8868.length=65 := by core033_kernel_decide
def op8869 : List WordIR.Op := [.rotr 8963 11]
def bytes8869 : Bytes := ("    let r00002305: u32 = r00002303.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8869 : bytes8869=statementBytes 8965 (op8869.map lower) ∧ bytes8869.length=65 := by core033_kernel_decide
def op8870 : List WordIR.Op := [.bxor 8964 8965]
def bytes8870 : Bytes := ("    let r00002306: u32 = r00002304 ^ r00002305;\n" : String).toByteArray.data.toList
theorem checked8870 : bytes8870=statementBytes 8966 (op8870.map lower) ∧ bytes8870.length=48 := by core033_kernel_decide
def op8871 : List WordIR.Op := [.rotr 8963 25]
def bytes8871 : Bytes := ("    let r00002307: u32 = r00002303.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8871 : bytes8871=statementBytes 8967 (op8871.map lower) ∧ bytes8871.length=65 := by core033_kernel_decide
def op8872 : List WordIR.Op := [.bxor 8966 8967]
def bytes8872 : Bytes := ("    let r00002308: u32 = r00002306 ^ r00002307;\n" : String).toByteArray.data.toList
theorem checked8872 : bytes8872=statementBytes 8968 (op8872.map lower) ∧ bytes8872.length=48 := by core033_kernel_decide
def op8873 : List WordIR.Op := [.badd 8882 8968]
def bytes8873 : Bytes := ("    let r00002309: u32 = r000022b2.wrapping_add(r00002308);\n" : String).toByteArray.data.toList
theorem checked8873 : bytes8873=statementBytes 8969 (op8873.map lower) ∧ bytes8873.length=60 := by core033_kernel_decide
def op8874 : List WordIR.Op := [.band 8963 8936]
def bytes8874 : Bytes := ("    let r0000230a: u32 = r00002303 & r000022e8;\n" : String).toByteArray.data.toList
theorem checked8874 : bytes8874=statementBytes 8970 (op8874.map lower) ∧ bytes8874.length=48 := by core033_kernel_decide
def op8875 : List WordIR.Op := [.bnot 8963]
def bytes8875 : Bytes := ("    let r0000230b: u32 = !r00002303;\n" : String).toByteArray.data.toList
theorem checked8875 : bytes8875=statementBytes 8971 (op8875.map lower) ∧ bytes8875.length=37 := by core033_kernel_decide
def op8876 : List WordIR.Op := [.band 8971 8909]
def bytes8876 : Bytes := ("    let r0000230c: u32 = r0000230b & r000022cd;\n" : String).toByteArray.data.toList
theorem checked8876 : bytes8876=statementBytes 8972 (op8876.map lower) ∧ bytes8876.length=48 := by core033_kernel_decide
def op8877 : List WordIR.Op := [.bxor 8970 8972]
def bytes8877 : Bytes := ("    let r0000230d: u32 = r0000230a ^ r0000230c;\n" : String).toByteArray.data.toList
theorem checked8877 : bytes8877=statementBytes 8973 (op8877.map lower) ∧ bytes8877.length=48 := by core033_kernel_decide
def op8878 : List WordIR.Op := [.badd 8969 8973]
def bytes8878 : Bytes := ("    let r0000230e: u32 = r00002309.wrapping_add(r0000230d);\n" : String).toByteArray.data.toList
theorem checked8878 : bytes8878=statementBytes 8974 (op8878.map lower) ∧ bytes8878.length=60 := by core033_kernel_decide
def op8879 : List WordIR.Op := [.literal (BitVec.ofNat 32 773529912)]
def bytes8879 : Bytes := ("    let r0000230f: u32 = 0x2e1b2138_u32;\n" : String).toByteArray.data.toList
theorem checked8879 : bytes8879=statementBytes 8975 (op8879.map lower) ∧ bytes8879.length=41 := by core033_kernel_decide
def op8880 : List WordIR.Op := [.badd 8974 8975]
def bytes8880 : Bytes := ("    let r00002310: u32 = r0000230e.wrapping_add(r0000230f);\n" : String).toByteArray.data.toList
theorem checked8880 : bytes8880=statementBytes 8976 (op8880.map lower) ∧ bytes8880.length=60 := by core033_kernel_decide
def op8881 : List WordIR.Op := [.badd 8976 7682]
def bytes8881 : Bytes := ("    let r00002311: u32 = r00002310.wrapping_add(r00001e02);\n" : String).toByteArray.data.toList
theorem checked8881 : bytes8881=statementBytes 8977 (op8881.map lower) ∧ bytes8881.length=60 := by core033_kernel_decide
def op8882 : List WordIR.Op := [.rotr 8962 2]
def bytes8882 : Bytes := ("    let r00002312: u32 = r00002302.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8882 : bytes8882=statementBytes 8978 (op8882.map lower) ∧ bytes8882.length=65 := by core033_kernel_decide
def op8883 : List WordIR.Op := [.rotr 8962 13]
def bytes8883 : Bytes := ("    let r00002313: u32 = r00002302.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8883 : bytes8883=statementBytes 8979 (op8883.map lower) ∧ bytes8883.length=65 := by core033_kernel_decide
def op8884 : List WordIR.Op := [.bxor 8978 8979]
def bytes8884 : Bytes := ("    let r00002314: u32 = r00002312 ^ r00002313;\n" : String).toByteArray.data.toList
theorem checked8884 : bytes8884=statementBytes 8980 (op8884.map lower) ∧ bytes8884.length=48 := by core033_kernel_decide
def op8885 : List WordIR.Op := [.rotr 8962 22]
def bytes8885 : Bytes := ("    let r00002315: u32 = r00002302.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8885 : bytes8885=statementBytes 8981 (op8885.map lower) ∧ bytes8885.length=65 := by core033_kernel_decide
def op8886 : List WordIR.Op := [.bxor 8980 8981]
def bytes8886 : Bytes := ("    let r00002316: u32 = r00002314 ^ r00002315;\n" : String).toByteArray.data.toList
theorem checked8886 : bytes8886=statementBytes 8982 (op8886.map lower) ∧ bytes8886.length=48 := by core033_kernel_decide
def op8887 : List WordIR.Op := [.band 8962 8935]
def bytes8887 : Bytes := ("    let r00002317: u32 = r00002302 & r000022e7;\n" : String).toByteArray.data.toList
theorem checked8887 : bytes8887=statementBytes 8983 (op8887.map lower) ∧ bytes8887.length=48 := by core033_kernel_decide
def op8888 : List WordIR.Op := [.band 8962 8908]
def bytes8888 : Bytes := ("    let r00002318: u32 = r00002302 & r000022cc;\n" : String).toByteArray.data.toList
theorem checked8888 : bytes8888=statementBytes 8984 (op8888.map lower) ∧ bytes8888.length=48 := by core033_kernel_decide
def op8889 : List WordIR.Op := [.bxor 8983 8984]
def bytes8889 : Bytes := ("    let r00002319: u32 = r00002317 ^ r00002318;\n" : String).toByteArray.data.toList
theorem checked8889 : bytes8889=statementBytes 8985 (op8889.map lower) ∧ bytes8889.length=48 := by core033_kernel_decide
def op8890 : List WordIR.Op := [.band 8935 8908]
def bytes8890 : Bytes := ("    let r0000231a: u32 = r000022e7 & r000022cc;\n" : String).toByteArray.data.toList
theorem checked8890 : bytes8890=statementBytes 8986 (op8890.map lower) ∧ bytes8890.length=48 := by core033_kernel_decide
def op8891 : List WordIR.Op := [.bxor 8985 8986]
def bytes8891 : Bytes := ("    let r0000231b: u32 = r00002319 ^ r0000231a;\n" : String).toByteArray.data.toList
theorem checked8891 : bytes8891=statementBytes 8987 (op8891.map lower) ∧ bytes8891.length=48 := by core033_kernel_decide
def op8892 : List WordIR.Op := [.badd 8982 8987]
def bytes8892 : Bytes := ("    let r0000231c: u32 = r00002316.wrapping_add(r0000231b);\n" : String).toByteArray.data.toList
theorem checked8892 : bytes8892=statementBytes 8988 (op8892.map lower) ∧ bytes8892.length=60 := by core033_kernel_decide
def op8893 : List WordIR.Op := [.badd 8977 8988]
def bytes8893 : Bytes := ("    let r0000231d: u32 = r00002311.wrapping_add(r0000231c);\n" : String).toByteArray.data.toList
theorem checked8893 : bytes8893=statementBytes 8989 (op8893.map lower) ∧ bytes8893.length=60 := by core033_kernel_decide
def op8894 : List WordIR.Op := [.badd 8881 8977]
def bytes8894 : Bytes := ("    let r0000231e: u32 = r000022b1.wrapping_add(r00002311);\n" : String).toByteArray.data.toList
theorem checked8894 : bytes8894=statementBytes 8990 (op8894.map lower) ∧ bytes8894.length=60 := by core033_kernel_decide
def op8895 : List WordIR.Op := [.rotr 8990 6]
def bytes8895 : Bytes := ("    let r0000231f: u32 = r0000231e.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8895 : bytes8895=statementBytes 8991 (op8895.map lower) ∧ bytes8895.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8832,op8833,op8834,op8835,op8836,op8837,op8838,op8839,op8840,op8841,op8842,op8843,op8844,op8845,op8846,op8847,op8848,op8849,op8850,op8851,op8852,op8853,op8854,op8855,op8856,op8857,op8858,op8859,op8860,op8861,op8862,op8863,op8864,op8865,op8866,op8867,op8868,op8869,op8870,op8871,op8872,op8873,op8874,op8875,op8876,op8877,op8878,op8879,op8880,op8881,op8882,op8883,op8884,op8885,op8886,op8887,op8888,op8889,op8890,op8891,op8892,op8893,op8894,op8895]
def chunks : List Bytes := [bytes8832,bytes8833,bytes8834,bytes8835,bytes8836,bytes8837,bytes8838,bytes8839,bytes8840,bytes8841,bytes8842,bytes8843,bytes8844,bytes8845,bytes8846,bytes8847,bytes8848,bytes8849,bytes8850,bytes8851,bytes8852,bytes8853,bytes8854,bytes8855,bytes8856,bytes8857,bytes8858,bytes8859,bytes8860,bytes8861,bytes8862,bytes8863,bytes8864,bytes8865,bytes8866,bytes8867,bytes8868,bytes8869,bytes8870,bytes8871,bytes8872,bytes8873,bytes8874,bytes8875,bytes8876,bytes8877,bytes8878,bytes8879,bytes8880,bytes8881,bytes8882,bytes8883,bytes8884,bytes8885,bytes8886,bytes8887,bytes8888,bytes8889,bytes8890,bytes8891,bytes8892,bytes8893,bytes8894,bytes8895]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8928 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8832.1 (.cons _ _ _ _ _ checked8833.1 (.cons _ _ _ _ _ checked8834.1 (.cons _ _ _ _ _ checked8835.1 (.cons _ _ _ _ _ checked8836.1 (.cons _ _ _ _ _ checked8837.1 (.cons _ _ _ _ _ checked8838.1 (.cons _ _ _ _ _ checked8839.1 (.cons _ _ _ _ _ checked8840.1 (.cons _ _ _ _ _ checked8841.1 (.cons _ _ _ _ _ checked8842.1 (.cons _ _ _ _ _ checked8843.1 (.cons _ _ _ _ _ checked8844.1 (.cons _ _ _ _ _ checked8845.1 (.cons _ _ _ _ _ checked8846.1 (.cons _ _ _ _ _ checked8847.1 (.cons _ _ _ _ _ checked8848.1 (.cons _ _ _ _ _ checked8849.1 (.cons _ _ _ _ _ checked8850.1 (.cons _ _ _ _ _ checked8851.1 (.cons _ _ _ _ _ checked8852.1 (.cons _ _ _ _ _ checked8853.1 (.cons _ _ _ _ _ checked8854.1 (.cons _ _ _ _ _ checked8855.1 (.cons _ _ _ _ _ checked8856.1 (.cons _ _ _ _ _ checked8857.1 (.cons _ _ _ _ _ checked8858.1 (.cons _ _ _ _ _ checked8859.1 (.cons _ _ _ _ _ checked8860.1 (.cons _ _ _ _ _ checked8861.1 (.cons _ _ _ _ _ checked8862.1 (.cons _ _ _ _ _ checked8863.1 (.cons _ _ _ _ _ checked8864.1 (.cons _ _ _ _ _ checked8865.1 (.cons _ _ _ _ _ checked8866.1 (.cons _ _ _ _ _ checked8867.1 (.cons _ _ _ _ _ checked8868.1 (.cons _ _ _ _ _ checked8869.1 (.cons _ _ _ _ _ checked8870.1 (.cons _ _ _ _ _ checked8871.1 (.cons _ _ _ _ _ checked8872.1 (.cons _ _ _ _ _ checked8873.1 (.cons _ _ _ _ _ checked8874.1 (.cons _ _ _ _ _ checked8875.1 (.cons _ _ _ _ _ checked8876.1 (.cons _ _ _ _ _ checked8877.1 (.cons _ _ _ _ _ checked8878.1 (.cons _ _ _ _ _ checked8879.1 (.cons _ _ _ _ _ checked8880.1 (.cons _ _ _ _ _ checked8881.1 (.cons _ _ _ _ _ checked8882.1 (.cons _ _ _ _ _ checked8883.1 (.cons _ _ _ _ _ checked8884.1 (.cons _ _ _ _ _ checked8885.1 (.cons _ _ _ _ _ checked8886.1 (.cons _ _ _ _ _ checked8887.1 (.cons _ _ _ _ _ checked8888.1 (.cons _ _ _ _ _ checked8889.1 (.cons _ _ _ _ _ checked8890.1 (.cons _ _ _ _ _ checked8891.1 (.cons _ _ _ _ _ checked8892.1 (.cons _ _ _ _ _ checked8893.1 (.cons _ _ _ _ _ checked8894.1 (.cons _ _ _ _ _ checked8895.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8928 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3461 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8832.2,checked8833.2,checked8834.2,checked8835.2,checked8836.2,checked8837.2,checked8838.2,checked8839.2,checked8840.2,checked8841.2,checked8842.2,checked8843.2,checked8844.2,checked8845.2,checked8846.2,checked8847.2,checked8848.2,checked8849.2,checked8850.2,checked8851.2,checked8852.2,checked8853.2,checked8854.2,checked8855.2,checked8856.2,checked8857.2,checked8858.2,checked8859.2,checked8860.2,checked8861.2,checked8862.2,checked8863.2,checked8864.2,checked8865.2,checked8866.2,checked8867.2,checked8868.2,checked8869.2,checked8870.2,checked8871.2,checked8872.2,checked8873.2,checked8874.2,checked8875.2,checked8876.2,checked8877.2,checked8878.2,checked8879.2,checked8880.2,checked8881.2,checked8882.2,checked8883.2,checked8884.2,checked8885.2,checked8886.2,checked8887.2,checked8888.2,checked8889.2,checked8890.2,checked8891.2,checked8892.2,checked8893.2,checked8894.2,checked8895.2]
  decide
end ArtifactPairedPathRoundGroup138
