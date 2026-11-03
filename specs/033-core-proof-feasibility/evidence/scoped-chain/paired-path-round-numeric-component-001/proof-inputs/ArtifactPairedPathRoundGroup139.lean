import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup139
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8896 : List WordIR.Op := [.rotr 8990 11]
def bytes8896 : Bytes := ("    let r00002320: u32 = r0000231e.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8896 : bytes8896=statementBytes 8992 (op8896.map lower) ∧ bytes8896.length=65 := by core033_kernel_decide
def op8897 : List WordIR.Op := [.bxor 8991 8992]
def bytes8897 : Bytes := ("    let r00002321: u32 = r0000231f ^ r00002320;\n" : String).toByteArray.data.toList
theorem checked8897 : bytes8897=statementBytes 8993 (op8897.map lower) ∧ bytes8897.length=48 := by core033_kernel_decide
def op8898 : List WordIR.Op := [.rotr 8990 25]
def bytes8898 : Bytes := ("    let r00002322: u32 = r0000231e.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8898 : bytes8898=statementBytes 8994 (op8898.map lower) ∧ bytes8898.length=65 := by core033_kernel_decide
def op8899 : List WordIR.Op := [.bxor 8993 8994]
def bytes8899 : Bytes := ("    let r00002323: u32 = r00002321 ^ r00002322;\n" : String).toByteArray.data.toList
theorem checked8899 : bytes8899=statementBytes 8995 (op8899.map lower) ∧ bytes8899.length=48 := by core033_kernel_decide
def op8900 : List WordIR.Op := [.badd 8909 8995]
def bytes8900 : Bytes := ("    let r00002324: u32 = r000022cd.wrapping_add(r00002323);\n" : String).toByteArray.data.toList
theorem checked8900 : bytes8900=statementBytes 8996 (op8900.map lower) ∧ bytes8900.length=60 := by core033_kernel_decide
def op8901 : List WordIR.Op := [.band 8990 8963]
def bytes8901 : Bytes := ("    let r00002325: u32 = r0000231e & r00002303;\n" : String).toByteArray.data.toList
theorem checked8901 : bytes8901=statementBytes 8997 (op8901.map lower) ∧ bytes8901.length=48 := by core033_kernel_decide
def op8902 : List WordIR.Op := [.bnot 8990]
def bytes8902 : Bytes := ("    let r00002326: u32 = !r0000231e;\n" : String).toByteArray.data.toList
theorem checked8902 : bytes8902=statementBytes 8998 (op8902.map lower) ∧ bytes8902.length=37 := by core033_kernel_decide
def op8903 : List WordIR.Op := [.band 8998 8936]
def bytes8903 : Bytes := ("    let r00002327: u32 = r00002326 & r000022e8;\n" : String).toByteArray.data.toList
theorem checked8903 : bytes8903=statementBytes 8999 (op8903.map lower) ∧ bytes8903.length=48 := by core033_kernel_decide
def op8904 : List WordIR.Op := [.bxor 8997 8999]
def bytes8904 : Bytes := ("    let r00002328: u32 = r00002325 ^ r00002327;\n" : String).toByteArray.data.toList
theorem checked8904 : bytes8904=statementBytes 9000 (op8904.map lower) ∧ bytes8904.length=48 := by core033_kernel_decide
def op8905 : List WordIR.Op := [.badd 8996 9000]
def bytes8905 : Bytes := ("    let r00002329: u32 = r00002324.wrapping_add(r00002328);\n" : String).toByteArray.data.toList
theorem checked8905 : bytes8905=statementBytes 9001 (op8905.map lower) ∧ bytes8905.length=60 := by core033_kernel_decide
def op8906 : List WordIR.Op := [.literal (BitVec.ofNat 32 1294757372)]
def bytes8906 : Bytes := ("    let r0000232a: u32 = 0x4d2c6dfc_u32;\n" : String).toByteArray.data.toList
theorem checked8906 : bytes8906=statementBytes 9002 (op8906.map lower) ∧ bytes8906.length=41 := by core033_kernel_decide
def op8907 : List WordIR.Op := [.badd 9001 9002]
def bytes8907 : Bytes := ("    let r0000232b: u32 = r00002329.wrapping_add(r0000232a);\n" : String).toByteArray.data.toList
theorem checked8907 : bytes8907=statementBytes 9003 (op8907.map lower) ∧ bytes8907.length=60 := by core033_kernel_decide
def op8908 : List WordIR.Op := [.badd 9003 7695]
def bytes8908 : Bytes := ("    let r0000232c: u32 = r0000232b.wrapping_add(r00001e0f);\n" : String).toByteArray.data.toList
theorem checked8908 : bytes8908=statementBytes 9004 (op8908.map lower) ∧ bytes8908.length=60 := by core033_kernel_decide
def op8909 : List WordIR.Op := [.rotr 8989 2]
def bytes8909 : Bytes := ("    let r0000232d: u32 = r0000231d.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8909 : bytes8909=statementBytes 9005 (op8909.map lower) ∧ bytes8909.length=65 := by core033_kernel_decide
def op8910 : List WordIR.Op := [.rotr 8989 13]
def bytes8910 : Bytes := ("    let r0000232e: u32 = r0000231d.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8910 : bytes8910=statementBytes 9006 (op8910.map lower) ∧ bytes8910.length=65 := by core033_kernel_decide
def op8911 : List WordIR.Op := [.bxor 9005 9006]
def bytes8911 : Bytes := ("    let r0000232f: u32 = r0000232d ^ r0000232e;\n" : String).toByteArray.data.toList
theorem checked8911 : bytes8911=statementBytes 9007 (op8911.map lower) ∧ bytes8911.length=48 := by core033_kernel_decide
def op8912 : List WordIR.Op := [.rotr 8989 22]
def bytes8912 : Bytes := ("    let r00002330: u32 = r0000231d.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8912 : bytes8912=statementBytes 9008 (op8912.map lower) ∧ bytes8912.length=65 := by core033_kernel_decide
def op8913 : List WordIR.Op := [.bxor 9007 9008]
def bytes8913 : Bytes := ("    let r00002331: u32 = r0000232f ^ r00002330;\n" : String).toByteArray.data.toList
theorem checked8913 : bytes8913=statementBytes 9009 (op8913.map lower) ∧ bytes8913.length=48 := by core033_kernel_decide
def op8914 : List WordIR.Op := [.band 8989 8962]
def bytes8914 : Bytes := ("    let r00002332: u32 = r0000231d & r00002302;\n" : String).toByteArray.data.toList
theorem checked8914 : bytes8914=statementBytes 9010 (op8914.map lower) ∧ bytes8914.length=48 := by core033_kernel_decide
def op8915 : List WordIR.Op := [.band 8989 8935]
def bytes8915 : Bytes := ("    let r00002333: u32 = r0000231d & r000022e7;\n" : String).toByteArray.data.toList
theorem checked8915 : bytes8915=statementBytes 9011 (op8915.map lower) ∧ bytes8915.length=48 := by core033_kernel_decide
def op8916 : List WordIR.Op := [.bxor 9010 9011]
def bytes8916 : Bytes := ("    let r00002334: u32 = r00002332 ^ r00002333;\n" : String).toByteArray.data.toList
theorem checked8916 : bytes8916=statementBytes 9012 (op8916.map lower) ∧ bytes8916.length=48 := by core033_kernel_decide
def op8917 : List WordIR.Op := [.band 8962 8935]
def bytes8917 : Bytes := ("    let r00002335: u32 = r00002302 & r000022e7;\n" : String).toByteArray.data.toList
theorem checked8917 : bytes8917=statementBytes 9013 (op8917.map lower) ∧ bytes8917.length=48 := by core033_kernel_decide
def op8918 : List WordIR.Op := [.bxor 9012 9013]
def bytes8918 : Bytes := ("    let r00002336: u32 = r00002334 ^ r00002335;\n" : String).toByteArray.data.toList
theorem checked8918 : bytes8918=statementBytes 9014 (op8918.map lower) ∧ bytes8918.length=48 := by core033_kernel_decide
def op8919 : List WordIR.Op := [.badd 9009 9014]
def bytes8919 : Bytes := ("    let r00002337: u32 = r00002331.wrapping_add(r00002336);\n" : String).toByteArray.data.toList
theorem checked8919 : bytes8919=statementBytes 9015 (op8919.map lower) ∧ bytes8919.length=60 := by core033_kernel_decide
def op8920 : List WordIR.Op := [.badd 9004 9015]
def bytes8920 : Bytes := ("    let r00002338: u32 = r0000232c.wrapping_add(r00002337);\n" : String).toByteArray.data.toList
theorem checked8920 : bytes8920=statementBytes 9016 (op8920.map lower) ∧ bytes8920.length=60 := by core033_kernel_decide
def op8921 : List WordIR.Op := [.badd 8908 9004]
def bytes8921 : Bytes := ("    let r00002339: u32 = r000022cc.wrapping_add(r0000232c);\n" : String).toByteArray.data.toList
theorem checked8921 : bytes8921=statementBytes 9017 (op8921.map lower) ∧ bytes8921.length=60 := by core033_kernel_decide
def op8922 : List WordIR.Op := [.rotr 9017 6]
def bytes8922 : Bytes := ("    let r0000233a: u32 = r00002339.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8922 : bytes8922=statementBytes 9018 (op8922.map lower) ∧ bytes8922.length=65 := by core033_kernel_decide
def op8923 : List WordIR.Op := [.rotr 9017 11]
def bytes8923 : Bytes := ("    let r0000233b: u32 = r00002339.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8923 : bytes8923=statementBytes 9019 (op8923.map lower) ∧ bytes8923.length=65 := by core033_kernel_decide
def op8924 : List WordIR.Op := [.bxor 9018 9019]
def bytes8924 : Bytes := ("    let r0000233c: u32 = r0000233a ^ r0000233b;\n" : String).toByteArray.data.toList
theorem checked8924 : bytes8924=statementBytes 9020 (op8924.map lower) ∧ bytes8924.length=48 := by core033_kernel_decide
def op8925 : List WordIR.Op := [.rotr 9017 25]
def bytes8925 : Bytes := ("    let r0000233d: u32 = r00002339.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8925 : bytes8925=statementBytes 9021 (op8925.map lower) ∧ bytes8925.length=65 := by core033_kernel_decide
def op8926 : List WordIR.Op := [.bxor 9020 9021]
def bytes8926 : Bytes := ("    let r0000233e: u32 = r0000233c ^ r0000233d;\n" : String).toByteArray.data.toList
theorem checked8926 : bytes8926=statementBytes 9022 (op8926.map lower) ∧ bytes8926.length=48 := by core033_kernel_decide
def op8927 : List WordIR.Op := [.badd 8936 9022]
def bytes8927 : Bytes := ("    let r0000233f: u32 = r000022e8.wrapping_add(r0000233e);\n" : String).toByteArray.data.toList
theorem checked8927 : bytes8927=statementBytes 9023 (op8927.map lower) ∧ bytes8927.length=60 := by core033_kernel_decide
def op8928 : List WordIR.Op := [.band 9017 8990]
def bytes8928 : Bytes := ("    let r00002340: u32 = r00002339 & r0000231e;\n" : String).toByteArray.data.toList
theorem checked8928 : bytes8928=statementBytes 9024 (op8928.map lower) ∧ bytes8928.length=48 := by core033_kernel_decide
def op8929 : List WordIR.Op := [.bnot 9017]
def bytes8929 : Bytes := ("    let r00002341: u32 = !r00002339;\n" : String).toByteArray.data.toList
theorem checked8929 : bytes8929=statementBytes 9025 (op8929.map lower) ∧ bytes8929.length=37 := by core033_kernel_decide
def op8930 : List WordIR.Op := [.band 9025 8963]
def bytes8930 : Bytes := ("    let r00002342: u32 = r00002341 & r00002303;\n" : String).toByteArray.data.toList
theorem checked8930 : bytes8930=statementBytes 9026 (op8930.map lower) ∧ bytes8930.length=48 := by core033_kernel_decide
def op8931 : List WordIR.Op := [.bxor 9024 9026]
def bytes8931 : Bytes := ("    let r00002343: u32 = r00002340 ^ r00002342;\n" : String).toByteArray.data.toList
theorem checked8931 : bytes8931=statementBytes 9027 (op8931.map lower) ∧ bytes8931.length=48 := by core033_kernel_decide
def op8932 : List WordIR.Op := [.badd 9023 9027]
def bytes8932 : Bytes := ("    let r00002344: u32 = r0000233f.wrapping_add(r00002343);\n" : String).toByteArray.data.toList
theorem checked8932 : bytes8932=statementBytes 9028 (op8932.map lower) ∧ bytes8932.length=60 := by core033_kernel_decide
def op8933 : List WordIR.Op := [.literal (BitVec.ofNat 32 1396182291)]
def bytes8933 : Bytes := ("    let r00002345: u32 = 0x53380d13_u32;\n" : String).toByteArray.data.toList
theorem checked8933 : bytes8933=statementBytes 9029 (op8933.map lower) ∧ bytes8933.length=41 := by core033_kernel_decide
def op8934 : List WordIR.Op := [.badd 9028 9029]
def bytes8934 : Bytes := ("    let r00002346: u32 = r00002344.wrapping_add(r00002345);\n" : String).toByteArray.data.toList
theorem checked8934 : bytes8934=statementBytes 9030 (op8934.map lower) ∧ bytes8934.length=60 := by core033_kernel_decide
def op8935 : List WordIR.Op := [.badd 9030 7708]
def bytes8935 : Bytes := ("    let r00002347: u32 = r00002346.wrapping_add(r00001e1c);\n" : String).toByteArray.data.toList
theorem checked8935 : bytes8935=statementBytes 9031 (op8935.map lower) ∧ bytes8935.length=60 := by core033_kernel_decide
def op8936 : List WordIR.Op := [.rotr 9016 2]
def bytes8936 : Bytes := ("    let r00002348: u32 = r00002338.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8936 : bytes8936=statementBytes 9032 (op8936.map lower) ∧ bytes8936.length=65 := by core033_kernel_decide
def op8937 : List WordIR.Op := [.rotr 9016 13]
def bytes8937 : Bytes := ("    let r00002349: u32 = r00002338.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8937 : bytes8937=statementBytes 9033 (op8937.map lower) ∧ bytes8937.length=65 := by core033_kernel_decide
def op8938 : List WordIR.Op := [.bxor 9032 9033]
def bytes8938 : Bytes := ("    let r0000234a: u32 = r00002348 ^ r00002349;\n" : String).toByteArray.data.toList
theorem checked8938 : bytes8938=statementBytes 9034 (op8938.map lower) ∧ bytes8938.length=48 := by core033_kernel_decide
def op8939 : List WordIR.Op := [.rotr 9016 22]
def bytes8939 : Bytes := ("    let r0000234b: u32 = r00002338.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8939 : bytes8939=statementBytes 9035 (op8939.map lower) ∧ bytes8939.length=65 := by core033_kernel_decide
def op8940 : List WordIR.Op := [.bxor 9034 9035]
def bytes8940 : Bytes := ("    let r0000234c: u32 = r0000234a ^ r0000234b;\n" : String).toByteArray.data.toList
theorem checked8940 : bytes8940=statementBytes 9036 (op8940.map lower) ∧ bytes8940.length=48 := by core033_kernel_decide
def op8941 : List WordIR.Op := [.band 9016 8989]
def bytes8941 : Bytes := ("    let r0000234d: u32 = r00002338 & r0000231d;\n" : String).toByteArray.data.toList
theorem checked8941 : bytes8941=statementBytes 9037 (op8941.map lower) ∧ bytes8941.length=48 := by core033_kernel_decide
def op8942 : List WordIR.Op := [.band 9016 8962]
def bytes8942 : Bytes := ("    let r0000234e: u32 = r00002338 & r00002302;\n" : String).toByteArray.data.toList
theorem checked8942 : bytes8942=statementBytes 9038 (op8942.map lower) ∧ bytes8942.length=48 := by core033_kernel_decide
def op8943 : List WordIR.Op := [.bxor 9037 9038]
def bytes8943 : Bytes := ("    let r0000234f: u32 = r0000234d ^ r0000234e;\n" : String).toByteArray.data.toList
theorem checked8943 : bytes8943=statementBytes 9039 (op8943.map lower) ∧ bytes8943.length=48 := by core033_kernel_decide
def op8944 : List WordIR.Op := [.band 8989 8962]
def bytes8944 : Bytes := ("    let r00002350: u32 = r0000231d & r00002302;\n" : String).toByteArray.data.toList
theorem checked8944 : bytes8944=statementBytes 9040 (op8944.map lower) ∧ bytes8944.length=48 := by core033_kernel_decide
def op8945 : List WordIR.Op := [.bxor 9039 9040]
def bytes8945 : Bytes := ("    let r00002351: u32 = r0000234f ^ r00002350;\n" : String).toByteArray.data.toList
theorem checked8945 : bytes8945=statementBytes 9041 (op8945.map lower) ∧ bytes8945.length=48 := by core033_kernel_decide
def op8946 : List WordIR.Op := [.badd 9036 9041]
def bytes8946 : Bytes := ("    let r00002352: u32 = r0000234c.wrapping_add(r00002351);\n" : String).toByteArray.data.toList
theorem checked8946 : bytes8946=statementBytes 9042 (op8946.map lower) ∧ bytes8946.length=60 := by core033_kernel_decide
def op8947 : List WordIR.Op := [.badd 9031 9042]
def bytes8947 : Bytes := ("    let r00002353: u32 = r00002347.wrapping_add(r00002352);\n" : String).toByteArray.data.toList
theorem checked8947 : bytes8947=statementBytes 9043 (op8947.map lower) ∧ bytes8947.length=60 := by core033_kernel_decide
def op8948 : List WordIR.Op := [.badd 8935 9031]
def bytes8948 : Bytes := ("    let r00002354: u32 = r000022e7.wrapping_add(r00002347);\n" : String).toByteArray.data.toList
theorem checked8948 : bytes8948=statementBytes 9044 (op8948.map lower) ∧ bytes8948.length=60 := by core033_kernel_decide
def op8949 : List WordIR.Op := [.rotr 9044 6]
def bytes8949 : Bytes := ("    let r00002355: u32 = r00002354.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8949 : bytes8949=statementBytes 9045 (op8949.map lower) ∧ bytes8949.length=65 := by core033_kernel_decide
def op8950 : List WordIR.Op := [.rotr 9044 11]
def bytes8950 : Bytes := ("    let r00002356: u32 = r00002354.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8950 : bytes8950=statementBytes 9046 (op8950.map lower) ∧ bytes8950.length=65 := by core033_kernel_decide
def op8951 : List WordIR.Op := [.bxor 9045 9046]
def bytes8951 : Bytes := ("    let r00002357: u32 = r00002355 ^ r00002356;\n" : String).toByteArray.data.toList
theorem checked8951 : bytes8951=statementBytes 9047 (op8951.map lower) ∧ bytes8951.length=48 := by core033_kernel_decide
def op8952 : List WordIR.Op := [.rotr 9044 25]
def bytes8952 : Bytes := ("    let r00002358: u32 = r00002354.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8952 : bytes8952=statementBytes 9048 (op8952.map lower) ∧ bytes8952.length=65 := by core033_kernel_decide
def op8953 : List WordIR.Op := [.bxor 9047 9048]
def bytes8953 : Bytes := ("    let r00002359: u32 = r00002357 ^ r00002358;\n" : String).toByteArray.data.toList
theorem checked8953 : bytes8953=statementBytes 9049 (op8953.map lower) ∧ bytes8953.length=48 := by core033_kernel_decide
def op8954 : List WordIR.Op := [.badd 8963 9049]
def bytes8954 : Bytes := ("    let r0000235a: u32 = r00002303.wrapping_add(r00002359);\n" : String).toByteArray.data.toList
theorem checked8954 : bytes8954=statementBytes 9050 (op8954.map lower) ∧ bytes8954.length=60 := by core033_kernel_decide
def op8955 : List WordIR.Op := [.band 9044 9017]
def bytes8955 : Bytes := ("    let r0000235b: u32 = r00002354 & r00002339;\n" : String).toByteArray.data.toList
theorem checked8955 : bytes8955=statementBytes 9051 (op8955.map lower) ∧ bytes8955.length=48 := by core033_kernel_decide
def op8956 : List WordIR.Op := [.bnot 9044]
def bytes8956 : Bytes := ("    let r0000235c: u32 = !r00002354;\n" : String).toByteArray.data.toList
theorem checked8956 : bytes8956=statementBytes 9052 (op8956.map lower) ∧ bytes8956.length=37 := by core033_kernel_decide
def op8957 : List WordIR.Op := [.band 9052 8990]
def bytes8957 : Bytes := ("    let r0000235d: u32 = r0000235c & r0000231e;\n" : String).toByteArray.data.toList
theorem checked8957 : bytes8957=statementBytes 9053 (op8957.map lower) ∧ bytes8957.length=48 := by core033_kernel_decide
def op8958 : List WordIR.Op := [.bxor 9051 9053]
def bytes8958 : Bytes := ("    let r0000235e: u32 = r0000235b ^ r0000235d;\n" : String).toByteArray.data.toList
theorem checked8958 : bytes8958=statementBytes 9054 (op8958.map lower) ∧ bytes8958.length=48 := by core033_kernel_decide
def op8959 : List WordIR.Op := [.badd 9050 9054]
def bytes8959 : Bytes := ("    let r0000235f: u32 = r0000235a.wrapping_add(r0000235e);\n" : String).toByteArray.data.toList
theorem checked8959 : bytes8959=statementBytes 9055 (op8959.map lower) ∧ bytes8959.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8896,op8897,op8898,op8899,op8900,op8901,op8902,op8903,op8904,op8905,op8906,op8907,op8908,op8909,op8910,op8911,op8912,op8913,op8914,op8915,op8916,op8917,op8918,op8919,op8920,op8921,op8922,op8923,op8924,op8925,op8926,op8927,op8928,op8929,op8930,op8931,op8932,op8933,op8934,op8935,op8936,op8937,op8938,op8939,op8940,op8941,op8942,op8943,op8944,op8945,op8946,op8947,op8948,op8949,op8950,op8951,op8952,op8953,op8954,op8955,op8956,op8957,op8958,op8959]
def chunks : List Bytes := [bytes8896,bytes8897,bytes8898,bytes8899,bytes8900,bytes8901,bytes8902,bytes8903,bytes8904,bytes8905,bytes8906,bytes8907,bytes8908,bytes8909,bytes8910,bytes8911,bytes8912,bytes8913,bytes8914,bytes8915,bytes8916,bytes8917,bytes8918,bytes8919,bytes8920,bytes8921,bytes8922,bytes8923,bytes8924,bytes8925,bytes8926,bytes8927,bytes8928,bytes8929,bytes8930,bytes8931,bytes8932,bytes8933,bytes8934,bytes8935,bytes8936,bytes8937,bytes8938,bytes8939,bytes8940,bytes8941,bytes8942,bytes8943,bytes8944,bytes8945,bytes8946,bytes8947,bytes8948,bytes8949,bytes8950,bytes8951,bytes8952,bytes8953,bytes8954,bytes8955,bytes8956,bytes8957,bytes8958,bytes8959]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8992 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8896.1 (.cons _ _ _ _ _ checked8897.1 (.cons _ _ _ _ _ checked8898.1 (.cons _ _ _ _ _ checked8899.1 (.cons _ _ _ _ _ checked8900.1 (.cons _ _ _ _ _ checked8901.1 (.cons _ _ _ _ _ checked8902.1 (.cons _ _ _ _ _ checked8903.1 (.cons _ _ _ _ _ checked8904.1 (.cons _ _ _ _ _ checked8905.1 (.cons _ _ _ _ _ checked8906.1 (.cons _ _ _ _ _ checked8907.1 (.cons _ _ _ _ _ checked8908.1 (.cons _ _ _ _ _ checked8909.1 (.cons _ _ _ _ _ checked8910.1 (.cons _ _ _ _ _ checked8911.1 (.cons _ _ _ _ _ checked8912.1 (.cons _ _ _ _ _ checked8913.1 (.cons _ _ _ _ _ checked8914.1 (.cons _ _ _ _ _ checked8915.1 (.cons _ _ _ _ _ checked8916.1 (.cons _ _ _ _ _ checked8917.1 (.cons _ _ _ _ _ checked8918.1 (.cons _ _ _ _ _ checked8919.1 (.cons _ _ _ _ _ checked8920.1 (.cons _ _ _ _ _ checked8921.1 (.cons _ _ _ _ _ checked8922.1 (.cons _ _ _ _ _ checked8923.1 (.cons _ _ _ _ _ checked8924.1 (.cons _ _ _ _ _ checked8925.1 (.cons _ _ _ _ _ checked8926.1 (.cons _ _ _ _ _ checked8927.1 (.cons _ _ _ _ _ checked8928.1 (.cons _ _ _ _ _ checked8929.1 (.cons _ _ _ _ _ checked8930.1 (.cons _ _ _ _ _ checked8931.1 (.cons _ _ _ _ _ checked8932.1 (.cons _ _ _ _ _ checked8933.1 (.cons _ _ _ _ _ checked8934.1 (.cons _ _ _ _ _ checked8935.1 (.cons _ _ _ _ _ checked8936.1 (.cons _ _ _ _ _ checked8937.1 (.cons _ _ _ _ _ checked8938.1 (.cons _ _ _ _ _ checked8939.1 (.cons _ _ _ _ _ checked8940.1 (.cons _ _ _ _ _ checked8941.1 (.cons _ _ _ _ _ checked8942.1 (.cons _ _ _ _ _ checked8943.1 (.cons _ _ _ _ _ checked8944.1 (.cons _ _ _ _ _ checked8945.1 (.cons _ _ _ _ _ checked8946.1 (.cons _ _ _ _ _ checked8947.1 (.cons _ _ _ _ _ checked8948.1 (.cons _ _ _ _ _ checked8949.1 (.cons _ _ _ _ _ checked8950.1 (.cons _ _ _ _ _ checked8951.1 (.cons _ _ _ _ _ checked8952.1 (.cons _ _ _ _ _ checked8953.1 (.cons _ _ _ _ _ checked8954.1 (.cons _ _ _ _ _ checked8955.1 (.cons _ _ _ _ _ checked8956.1 (.cons _ _ _ _ _ checked8957.1 (.cons _ _ _ _ _ checked8958.1 (.cons _ _ _ _ _ checked8959.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8992 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3455 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8896.2,checked8897.2,checked8898.2,checked8899.2,checked8900.2,checked8901.2,checked8902.2,checked8903.2,checked8904.2,checked8905.2,checked8906.2,checked8907.2,checked8908.2,checked8909.2,checked8910.2,checked8911.2,checked8912.2,checked8913.2,checked8914.2,checked8915.2,checked8916.2,checked8917.2,checked8918.2,checked8919.2,checked8920.2,checked8921.2,checked8922.2,checked8923.2,checked8924.2,checked8925.2,checked8926.2,checked8927.2,checked8928.2,checked8929.2,checked8930.2,checked8931.2,checked8932.2,checked8933.2,checked8934.2,checked8935.2,checked8936.2,checked8937.2,checked8938.2,checked8939.2,checked8940.2,checked8941.2,checked8942.2,checked8943.2,checked8944.2,checked8945.2,checked8946.2,checked8947.2,checked8948.2,checked8949.2,checked8950.2,checked8951.2,checked8952.2,checked8953.2,checked8954.2,checked8955.2,checked8956.2,checked8957.2,checked8958.2,checked8959.2]
  decide
end ArtifactPairedPathRoundGroup139
