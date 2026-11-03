import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup139
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8896 : List WordIR.Op := [.bxor 8936 8938]
def bytes8896 : Bytes := ("    let r000022eb: u32 = r000022e8 ^ r000022ea;\n" : String).toByteArray.data.toList
theorem checked8896 : bytes8896=statementBytes 8939 (op8896.map lower) ∧ bytes8896.length=48 := by core033_kernel_decide
def op8897 : List WordIR.Op := [.badd 8935 8939]
def bytes8897 : Bytes := ("    let r000022ec: u32 = r000022e7.wrapping_add(r000022eb);\n" : String).toByteArray.data.toList
theorem checked8897 : bytes8897=statementBytes 8940 (op8897.map lower) ∧ bytes8897.length=60 := by core033_kernel_decide
def op8898 : List WordIR.Op := [.literal (BitVec.ofNat 32 883997877)]
def bytes8898 : Bytes := ("    let r000022ed: u32 = 0x34b0bcb5_u32;\n" : String).toByteArray.data.toList
theorem checked8898 : bytes8898=statementBytes 8941 (op8898.map lower) ∧ bytes8898.length=41 := by core033_kernel_decide
def op8899 : List WordIR.Op := [.badd 8940 8941]
def bytes8899 : Bytes := ("    let r000022ee: u32 = r000022ec.wrapping_add(r000022ed);\n" : String).toByteArray.data.toList
theorem checked8899 : bytes8899=statementBytes 8942 (op8899.map lower) ∧ bytes8899.length=60 := by core033_kernel_decide
def op8900 : List WordIR.Op := [.badd 8942 7396]
def bytes8900 : Bytes := ("    let r000022ef: u32 = r000022ee.wrapping_add(r00001ce4);\n" : String).toByteArray.data.toList
theorem checked8900 : bytes8900=statementBytes 8943 (op8900.map lower) ∧ bytes8900.length=60 := by core033_kernel_decide
def op8901 : List WordIR.Op := [.rotr 8928 2]
def bytes8901 : Bytes := ("    let r000022f0: u32 = r000022e0.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8901 : bytes8901=statementBytes 8944 (op8901.map lower) ∧ bytes8901.length=65 := by core033_kernel_decide
def op8902 : List WordIR.Op := [.rotr 8928 13]
def bytes8902 : Bytes := ("    let r000022f1: u32 = r000022e0.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8902 : bytes8902=statementBytes 8945 (op8902.map lower) ∧ bytes8902.length=65 := by core033_kernel_decide
def op8903 : List WordIR.Op := [.bxor 8944 8945]
def bytes8903 : Bytes := ("    let r000022f2: u32 = r000022f0 ^ r000022f1;\n" : String).toByteArray.data.toList
theorem checked8903 : bytes8903=statementBytes 8946 (op8903.map lower) ∧ bytes8903.length=48 := by core033_kernel_decide
def op8904 : List WordIR.Op := [.rotr 8928 22]
def bytes8904 : Bytes := ("    let r000022f3: u32 = r000022e0.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8904 : bytes8904=statementBytes 8947 (op8904.map lower) ∧ bytes8904.length=65 := by core033_kernel_decide
def op8905 : List WordIR.Op := [.bxor 8946 8947]
def bytes8905 : Bytes := ("    let r000022f4: u32 = r000022f2 ^ r000022f3;\n" : String).toByteArray.data.toList
theorem checked8905 : bytes8905=statementBytes 8948 (op8905.map lower) ∧ bytes8905.length=48 := by core033_kernel_decide
def op8906 : List WordIR.Op := [.band 8928 8901]
def bytes8906 : Bytes := ("    let r000022f5: u32 = r000022e0 & r000022c5;\n" : String).toByteArray.data.toList
theorem checked8906 : bytes8906=statementBytes 8949 (op8906.map lower) ∧ bytes8906.length=48 := by core033_kernel_decide
def op8907 : List WordIR.Op := [.band 8928 8874]
def bytes8907 : Bytes := ("    let r000022f6: u32 = r000022e0 & r000022aa;\n" : String).toByteArray.data.toList
theorem checked8907 : bytes8907=statementBytes 8950 (op8907.map lower) ∧ bytes8907.length=48 := by core033_kernel_decide
def op8908 : List WordIR.Op := [.bxor 8949 8950]
def bytes8908 : Bytes := ("    let r000022f7: u32 = r000022f5 ^ r000022f6;\n" : String).toByteArray.data.toList
theorem checked8908 : bytes8908=statementBytes 8951 (op8908.map lower) ∧ bytes8908.length=48 := by core033_kernel_decide
def op8909 : List WordIR.Op := [.band 8901 8874]
def bytes8909 : Bytes := ("    let r000022f8: u32 = r000022c5 & r000022aa;\n" : String).toByteArray.data.toList
theorem checked8909 : bytes8909=statementBytes 8952 (op8909.map lower) ∧ bytes8909.length=48 := by core033_kernel_decide
def op8910 : List WordIR.Op := [.bxor 8951 8952]
def bytes8910 : Bytes := ("    let r000022f9: u32 = r000022f7 ^ r000022f8;\n" : String).toByteArray.data.toList
theorem checked8910 : bytes8910=statementBytes 8953 (op8910.map lower) ∧ bytes8910.length=48 := by core033_kernel_decide
def op8911 : List WordIR.Op := [.badd 8948 8953]
def bytes8911 : Bytes := ("    let r000022fa: u32 = r000022f4.wrapping_add(r000022f9);\n" : String).toByteArray.data.toList
theorem checked8911 : bytes8911=statementBytes 8954 (op8911.map lower) ∧ bytes8911.length=60 := by core033_kernel_decide
def op8912 : List WordIR.Op := [.badd 8943 8954]
def bytes8912 : Bytes := ("    let r000022fb: u32 = r000022ef.wrapping_add(r000022fa);\n" : String).toByteArray.data.toList
theorem checked8912 : bytes8912=statementBytes 8955 (op8912.map lower) ∧ bytes8912.length=60 := by core033_kernel_decide
def op8913 : List WordIR.Op := [.badd 8847 8943]
def bytes8913 : Bytes := ("    let r000022fc: u32 = r0000228f.wrapping_add(r000022ef);\n" : String).toByteArray.data.toList
theorem checked8913 : bytes8913=statementBytes 8956 (op8913.map lower) ∧ bytes8913.length=60 := by core033_kernel_decide
def op8914 : List WordIR.Op := [.rotr 8956 6]
def bytes8914 : Bytes := ("    let r000022fd: u32 = r000022fc.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8914 : bytes8914=statementBytes 8957 (op8914.map lower) ∧ bytes8914.length=65 := by core033_kernel_decide
def op8915 : List WordIR.Op := [.rotr 8956 11]
def bytes8915 : Bytes := ("    let r000022fe: u32 = r000022fc.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8915 : bytes8915=statementBytes 8958 (op8915.map lower) ∧ bytes8915.length=65 := by core033_kernel_decide
def op8916 : List WordIR.Op := [.bxor 8957 8958]
def bytes8916 : Bytes := ("    let r000022ff: u32 = r000022fd ^ r000022fe;\n" : String).toByteArray.data.toList
theorem checked8916 : bytes8916=statementBytes 8959 (op8916.map lower) ∧ bytes8916.length=48 := by core033_kernel_decide
def op8917 : List WordIR.Op := [.rotr 8956 25]
def bytes8917 : Bytes := ("    let r00002300: u32 = r000022fc.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8917 : bytes8917=statementBytes 8960 (op8917.map lower) ∧ bytes8917.length=65 := by core033_kernel_decide
def op8918 : List WordIR.Op := [.bxor 8959 8960]
def bytes8918 : Bytes := ("    let r00002301: u32 = r000022ff ^ r00002300;\n" : String).toByteArray.data.toList
theorem checked8918 : bytes8918=statementBytes 8961 (op8918.map lower) ∧ bytes8918.length=48 := by core033_kernel_decide
def op8919 : List WordIR.Op := [.badd 8875 8961]
def bytes8919 : Bytes := ("    let r00002302: u32 = r000022ab.wrapping_add(r00002301);\n" : String).toByteArray.data.toList
theorem checked8919 : bytes8919=statementBytes 8962 (op8919.map lower) ∧ bytes8919.length=60 := by core033_kernel_decide
def op8920 : List WordIR.Op := [.band 8956 8929]
def bytes8920 : Bytes := ("    let r00002303: u32 = r000022fc & r000022e1;\n" : String).toByteArray.data.toList
theorem checked8920 : bytes8920=statementBytes 8963 (op8920.map lower) ∧ bytes8920.length=48 := by core033_kernel_decide
def op8921 : List WordIR.Op := [.bnot 8956]
def bytes8921 : Bytes := ("    let r00002304: u32 = !r000022fc;\n" : String).toByteArray.data.toList
theorem checked8921 : bytes8921=statementBytes 8964 (op8921.map lower) ∧ bytes8921.length=37 := by core033_kernel_decide
def op8922 : List WordIR.Op := [.band 8964 8902]
def bytes8922 : Bytes := ("    let r00002305: u32 = r00002304 & r000022c6;\n" : String).toByteArray.data.toList
theorem checked8922 : bytes8922=statementBytes 8965 (op8922.map lower) ∧ bytes8922.length=48 := by core033_kernel_decide
def op8923 : List WordIR.Op := [.bxor 8963 8965]
def bytes8923 : Bytes := ("    let r00002306: u32 = r00002303 ^ r00002305;\n" : String).toByteArray.data.toList
theorem checked8923 : bytes8923=statementBytes 8966 (op8923.map lower) ∧ bytes8923.length=48 := by core033_kernel_decide
def op8924 : List WordIR.Op := [.badd 8962 8966]
def bytes8924 : Bytes := ("    let r00002307: u32 = r00002302.wrapping_add(r00002306);\n" : String).toByteArray.data.toList
theorem checked8924 : bytes8924=statementBytes 8967 (op8924.map lower) ∧ bytes8924.length=60 := by core033_kernel_decide
def op8925 : List WordIR.Op := [.literal (BitVec.ofNat 32 958139571)]
def bytes8925 : Bytes := ("    let r00002308: u32 = 0x391c0cb3_u32;\n" : String).toByteArray.data.toList
theorem checked8925 : bytes8925=statementBytes 8968 (op8925.map lower) ∧ bytes8925.length=41 := by core033_kernel_decide
def op8926 : List WordIR.Op := [.badd 8967 8968]
def bytes8926 : Bytes := ("    let r00002309: u32 = r00002307.wrapping_add(r00002308);\n" : String).toByteArray.data.toList
theorem checked8926 : bytes8926=statementBytes 8969 (op8926.map lower) ∧ bytes8926.length=60 := by core033_kernel_decide
def op8927 : List WordIR.Op := [.badd 8969 7409]
def bytes8927 : Bytes := ("    let r0000230a: u32 = r00002309.wrapping_add(r00001cf1);\n" : String).toByteArray.data.toList
theorem checked8927 : bytes8927=statementBytes 8970 (op8927.map lower) ∧ bytes8927.length=60 := by core033_kernel_decide
def op8928 : List WordIR.Op := [.rotr 8955 2]
def bytes8928 : Bytes := ("    let r0000230b: u32 = r000022fb.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8928 : bytes8928=statementBytes 8971 (op8928.map lower) ∧ bytes8928.length=65 := by core033_kernel_decide
def op8929 : List WordIR.Op := [.rotr 8955 13]
def bytes8929 : Bytes := ("    let r0000230c: u32 = r000022fb.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8929 : bytes8929=statementBytes 8972 (op8929.map lower) ∧ bytes8929.length=65 := by core033_kernel_decide
def op8930 : List WordIR.Op := [.bxor 8971 8972]
def bytes8930 : Bytes := ("    let r0000230d: u32 = r0000230b ^ r0000230c;\n" : String).toByteArray.data.toList
theorem checked8930 : bytes8930=statementBytes 8973 (op8930.map lower) ∧ bytes8930.length=48 := by core033_kernel_decide
def op8931 : List WordIR.Op := [.rotr 8955 22]
def bytes8931 : Bytes := ("    let r0000230e: u32 = r000022fb.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8931 : bytes8931=statementBytes 8974 (op8931.map lower) ∧ bytes8931.length=65 := by core033_kernel_decide
def op8932 : List WordIR.Op := [.bxor 8973 8974]
def bytes8932 : Bytes := ("    let r0000230f: u32 = r0000230d ^ r0000230e;\n" : String).toByteArray.data.toList
theorem checked8932 : bytes8932=statementBytes 8975 (op8932.map lower) ∧ bytes8932.length=48 := by core033_kernel_decide
def op8933 : List WordIR.Op := [.band 8955 8928]
def bytes8933 : Bytes := ("    let r00002310: u32 = r000022fb & r000022e0;\n" : String).toByteArray.data.toList
theorem checked8933 : bytes8933=statementBytes 8976 (op8933.map lower) ∧ bytes8933.length=48 := by core033_kernel_decide
def op8934 : List WordIR.Op := [.band 8955 8901]
def bytes8934 : Bytes := ("    let r00002311: u32 = r000022fb & r000022c5;\n" : String).toByteArray.data.toList
theorem checked8934 : bytes8934=statementBytes 8977 (op8934.map lower) ∧ bytes8934.length=48 := by core033_kernel_decide
def op8935 : List WordIR.Op := [.bxor 8976 8977]
def bytes8935 : Bytes := ("    let r00002312: u32 = r00002310 ^ r00002311;\n" : String).toByteArray.data.toList
theorem checked8935 : bytes8935=statementBytes 8978 (op8935.map lower) ∧ bytes8935.length=48 := by core033_kernel_decide
def op8936 : List WordIR.Op := [.band 8928 8901]
def bytes8936 : Bytes := ("    let r00002313: u32 = r000022e0 & r000022c5;\n" : String).toByteArray.data.toList
theorem checked8936 : bytes8936=statementBytes 8979 (op8936.map lower) ∧ bytes8936.length=48 := by core033_kernel_decide
def op8937 : List WordIR.Op := [.bxor 8978 8979]
def bytes8937 : Bytes := ("    let r00002314: u32 = r00002312 ^ r00002313;\n" : String).toByteArray.data.toList
theorem checked8937 : bytes8937=statementBytes 8980 (op8937.map lower) ∧ bytes8937.length=48 := by core033_kernel_decide
def op8938 : List WordIR.Op := [.badd 8975 8980]
def bytes8938 : Bytes := ("    let r00002315: u32 = r0000230f.wrapping_add(r00002314);\n" : String).toByteArray.data.toList
theorem checked8938 : bytes8938=statementBytes 8981 (op8938.map lower) ∧ bytes8938.length=60 := by core033_kernel_decide
def op8939 : List WordIR.Op := [.badd 8970 8981]
def bytes8939 : Bytes := ("    let r00002316: u32 = r0000230a.wrapping_add(r00002315);\n" : String).toByteArray.data.toList
theorem checked8939 : bytes8939=statementBytes 8982 (op8939.map lower) ∧ bytes8939.length=60 := by core033_kernel_decide
def op8940 : List WordIR.Op := [.badd 8874 8970]
def bytes8940 : Bytes := ("    let r00002317: u32 = r000022aa.wrapping_add(r0000230a);\n" : String).toByteArray.data.toList
theorem checked8940 : bytes8940=statementBytes 8983 (op8940.map lower) ∧ bytes8940.length=60 := by core033_kernel_decide
def op8941 : List WordIR.Op := [.rotr 8983 6]
def bytes8941 : Bytes := ("    let r00002318: u32 = r00002317.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8941 : bytes8941=statementBytes 8984 (op8941.map lower) ∧ bytes8941.length=65 := by core033_kernel_decide
def op8942 : List WordIR.Op := [.rotr 8983 11]
def bytes8942 : Bytes := ("    let r00002319: u32 = r00002317.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8942 : bytes8942=statementBytes 8985 (op8942.map lower) ∧ bytes8942.length=65 := by core033_kernel_decide
def op8943 : List WordIR.Op := [.bxor 8984 8985]
def bytes8943 : Bytes := ("    let r0000231a: u32 = r00002318 ^ r00002319;\n" : String).toByteArray.data.toList
theorem checked8943 : bytes8943=statementBytes 8986 (op8943.map lower) ∧ bytes8943.length=48 := by core033_kernel_decide
def op8944 : List WordIR.Op := [.rotr 8983 25]
def bytes8944 : Bytes := ("    let r0000231b: u32 = r00002317.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8944 : bytes8944=statementBytes 8987 (op8944.map lower) ∧ bytes8944.length=65 := by core033_kernel_decide
def op8945 : List WordIR.Op := [.bxor 8986 8987]
def bytes8945 : Bytes := ("    let r0000231c: u32 = r0000231a ^ r0000231b;\n" : String).toByteArray.data.toList
theorem checked8945 : bytes8945=statementBytes 8988 (op8945.map lower) ∧ bytes8945.length=48 := by core033_kernel_decide
def op8946 : List WordIR.Op := [.badd 8902 8988]
def bytes8946 : Bytes := ("    let r0000231d: u32 = r000022c6.wrapping_add(r0000231c);\n" : String).toByteArray.data.toList
theorem checked8946 : bytes8946=statementBytes 8989 (op8946.map lower) ∧ bytes8946.length=60 := by core033_kernel_decide
def op8947 : List WordIR.Op := [.band 8983 8956]
def bytes8947 : Bytes := ("    let r0000231e: u32 = r00002317 & r000022fc;\n" : String).toByteArray.data.toList
theorem checked8947 : bytes8947=statementBytes 8990 (op8947.map lower) ∧ bytes8947.length=48 := by core033_kernel_decide
def op8948 : List WordIR.Op := [.bnot 8983]
def bytes8948 : Bytes := ("    let r0000231f: u32 = !r00002317;\n" : String).toByteArray.data.toList
theorem checked8948 : bytes8948=statementBytes 8991 (op8948.map lower) ∧ bytes8948.length=37 := by core033_kernel_decide
def op8949 : List WordIR.Op := [.band 8991 8929]
def bytes8949 : Bytes := ("    let r00002320: u32 = r0000231f & r000022e1;\n" : String).toByteArray.data.toList
theorem checked8949 : bytes8949=statementBytes 8992 (op8949.map lower) ∧ bytes8949.length=48 := by core033_kernel_decide
def op8950 : List WordIR.Op := [.bxor 8990 8992]
def bytes8950 : Bytes := ("    let r00002321: u32 = r0000231e ^ r00002320;\n" : String).toByteArray.data.toList
theorem checked8950 : bytes8950=statementBytes 8993 (op8950.map lower) ∧ bytes8950.length=48 := by core033_kernel_decide
def op8951 : List WordIR.Op := [.badd 8989 8993]
def bytes8951 : Bytes := ("    let r00002322: u32 = r0000231d.wrapping_add(r00002321);\n" : String).toByteArray.data.toList
theorem checked8951 : bytes8951=statementBytes 8994 (op8951.map lower) ∧ bytes8951.length=60 := by core033_kernel_decide
def op8952 : List WordIR.Op := [.literal (BitVec.ofNat 32 1322822218)]
def bytes8952 : Bytes := ("    let r00002323: u32 = 0x4ed8aa4a_u32;\n" : String).toByteArray.data.toList
theorem checked8952 : bytes8952=statementBytes 8995 (op8952.map lower) ∧ bytes8952.length=41 := by core033_kernel_decide
def op8953 : List WordIR.Op := [.badd 8994 8995]
def bytes8953 : Bytes := ("    let r00002324: u32 = r00002322.wrapping_add(r00002323);\n" : String).toByteArray.data.toList
theorem checked8953 : bytes8953=statementBytes 8996 (op8953.map lower) ∧ bytes8953.length=60 := by core033_kernel_decide
def op8954 : List WordIR.Op := [.badd 8996 7422]
def bytes8954 : Bytes := ("    let r00002325: u32 = r00002324.wrapping_add(r00001cfe);\n" : String).toByteArray.data.toList
theorem checked8954 : bytes8954=statementBytes 8997 (op8954.map lower) ∧ bytes8954.length=60 := by core033_kernel_decide
def op8955 : List WordIR.Op := [.rotr 8982 2]
def bytes8955 : Bytes := ("    let r00002326: u32 = r00002316.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8955 : bytes8955=statementBytes 8998 (op8955.map lower) ∧ bytes8955.length=65 := by core033_kernel_decide
def op8956 : List WordIR.Op := [.rotr 8982 13]
def bytes8956 : Bytes := ("    let r00002327: u32 = r00002316.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8956 : bytes8956=statementBytes 8999 (op8956.map lower) ∧ bytes8956.length=65 := by core033_kernel_decide
def op8957 : List WordIR.Op := [.bxor 8998 8999]
def bytes8957 : Bytes := ("    let r00002328: u32 = r00002326 ^ r00002327;\n" : String).toByteArray.data.toList
theorem checked8957 : bytes8957=statementBytes 9000 (op8957.map lower) ∧ bytes8957.length=48 := by core033_kernel_decide
def op8958 : List WordIR.Op := [.rotr 8982 22]
def bytes8958 : Bytes := ("    let r00002329: u32 = r00002316.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8958 : bytes8958=statementBytes 9001 (op8958.map lower) ∧ bytes8958.length=65 := by core033_kernel_decide
def op8959 : List WordIR.Op := [.bxor 9000 9001]
def bytes8959 : Bytes := ("    let r0000232a: u32 = r00002328 ^ r00002329;\n" : String).toByteArray.data.toList
theorem checked8959 : bytes8959=statementBytes 9002 (op8959.map lower) ∧ bytes8959.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8896,op8897,op8898,op8899,op8900,op8901,op8902,op8903,op8904,op8905,op8906,op8907,op8908,op8909,op8910,op8911,op8912,op8913,op8914,op8915,op8916,op8917,op8918,op8919,op8920,op8921,op8922,op8923,op8924,op8925,op8926,op8927,op8928,op8929,op8930,op8931,op8932,op8933,op8934,op8935,op8936,op8937,op8938,op8939,op8940,op8941,op8942,op8943,op8944,op8945,op8946,op8947,op8948,op8949,op8950,op8951,op8952,op8953,op8954,op8955,op8956,op8957,op8958,op8959]
def chunks : List Bytes := [bytes8896,bytes8897,bytes8898,bytes8899,bytes8900,bytes8901,bytes8902,bytes8903,bytes8904,bytes8905,bytes8906,bytes8907,bytes8908,bytes8909,bytes8910,bytes8911,bytes8912,bytes8913,bytes8914,bytes8915,bytes8916,bytes8917,bytes8918,bytes8919,bytes8920,bytes8921,bytes8922,bytes8923,bytes8924,bytes8925,bytes8926,bytes8927,bytes8928,bytes8929,bytes8930,bytes8931,bytes8932,bytes8933,bytes8934,bytes8935,bytes8936,bytes8937,bytes8938,bytes8939,bytes8940,bytes8941,bytes8942,bytes8943,bytes8944,bytes8945,bytes8946,bytes8947,bytes8948,bytes8949,bytes8950,bytes8951,bytes8952,bytes8953,bytes8954,bytes8955,bytes8956,bytes8957,bytes8958,bytes8959]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8939 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8896.1 (.cons _ _ _ _ _ checked8897.1 (.cons _ _ _ _ _ checked8898.1 (.cons _ _ _ _ _ checked8899.1 (.cons _ _ _ _ _ checked8900.1 (.cons _ _ _ _ _ checked8901.1 (.cons _ _ _ _ _ checked8902.1 (.cons _ _ _ _ _ checked8903.1 (.cons _ _ _ _ _ checked8904.1 (.cons _ _ _ _ _ checked8905.1 (.cons _ _ _ _ _ checked8906.1 (.cons _ _ _ _ _ checked8907.1 (.cons _ _ _ _ _ checked8908.1 (.cons _ _ _ _ _ checked8909.1 (.cons _ _ _ _ _ checked8910.1 (.cons _ _ _ _ _ checked8911.1 (.cons _ _ _ _ _ checked8912.1 (.cons _ _ _ _ _ checked8913.1 (.cons _ _ _ _ _ checked8914.1 (.cons _ _ _ _ _ checked8915.1 (.cons _ _ _ _ _ checked8916.1 (.cons _ _ _ _ _ checked8917.1 (.cons _ _ _ _ _ checked8918.1 (.cons _ _ _ _ _ checked8919.1 (.cons _ _ _ _ _ checked8920.1 (.cons _ _ _ _ _ checked8921.1 (.cons _ _ _ _ _ checked8922.1 (.cons _ _ _ _ _ checked8923.1 (.cons _ _ _ _ _ checked8924.1 (.cons _ _ _ _ _ checked8925.1 (.cons _ _ _ _ _ checked8926.1 (.cons _ _ _ _ _ checked8927.1 (.cons _ _ _ _ _ checked8928.1 (.cons _ _ _ _ _ checked8929.1 (.cons _ _ _ _ _ checked8930.1 (.cons _ _ _ _ _ checked8931.1 (.cons _ _ _ _ _ checked8932.1 (.cons _ _ _ _ _ checked8933.1 (.cons _ _ _ _ _ checked8934.1 (.cons _ _ _ _ _ checked8935.1 (.cons _ _ _ _ _ checked8936.1 (.cons _ _ _ _ _ checked8937.1 (.cons _ _ _ _ _ checked8938.1 (.cons _ _ _ _ _ checked8939.1 (.cons _ _ _ _ _ checked8940.1 (.cons _ _ _ _ _ checked8941.1 (.cons _ _ _ _ _ checked8942.1 (.cons _ _ _ _ _ checked8943.1 (.cons _ _ _ _ _ checked8944.1 (.cons _ _ _ _ _ checked8945.1 (.cons _ _ _ _ _ checked8946.1 (.cons _ _ _ _ _ checked8947.1 (.cons _ _ _ _ _ checked8948.1 (.cons _ _ _ _ _ checked8949.1 (.cons _ _ _ _ _ checked8950.1 (.cons _ _ _ _ _ checked8951.1 (.cons _ _ _ _ _ checked8952.1 (.cons _ _ _ _ _ checked8953.1 (.cons _ _ _ _ _ checked8954.1 (.cons _ _ _ _ _ checked8955.1 (.cons _ _ _ _ _ checked8956.1 (.cons _ _ _ _ _ checked8957.1 (.cons _ _ _ _ _ checked8958.1 (.cons _ _ _ _ _ checked8959.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8939 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3488 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8896.2,checked8897.2,checked8898.2,checked8899.2,checked8900.2,checked8901.2,checked8902.2,checked8903.2,checked8904.2,checked8905.2,checked8906.2,checked8907.2,checked8908.2,checked8909.2,checked8910.2,checked8911.2,checked8912.2,checked8913.2,checked8914.2,checked8915.2,checked8916.2,checked8917.2,checked8918.2,checked8919.2,checked8920.2,checked8921.2,checked8922.2,checked8923.2,checked8924.2,checked8925.2,checked8926.2,checked8927.2,checked8928.2,checked8929.2,checked8930.2,checked8931.2,checked8932.2,checked8933.2,checked8934.2,checked8935.2,checked8936.2,checked8937.2,checked8938.2,checked8939.2,checked8940.2,checked8941.2,checked8942.2,checked8943.2,checked8944.2,checked8945.2,checked8946.2,checked8947.2,checked8948.2,checked8949.2,checked8950.2,checked8951.2,checked8952.2,checked8953.2,checked8954.2,checked8955.2,checked8956.2,checked8957.2,checked8958.2,checked8959.2]
  decide
end ArtifactPathRoundDispatchGroup139
