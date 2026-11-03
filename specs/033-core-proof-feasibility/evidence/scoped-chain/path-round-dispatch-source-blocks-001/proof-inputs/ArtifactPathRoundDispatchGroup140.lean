import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup140
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8960 : List WordIR.Op := [.band 8982 8955]
def bytes8960 : Bytes := ("    let r0000232b: u32 = r00002316 & r000022fb;\n" : String).toByteArray.data.toList
theorem checked8960 : bytes8960=statementBytes 9003 (op8960.map lower) ∧ bytes8960.length=48 := by core033_kernel_decide
def op8961 : List WordIR.Op := [.band 8982 8928]
def bytes8961 : Bytes := ("    let r0000232c: u32 = r00002316 & r000022e0;\n" : String).toByteArray.data.toList
theorem checked8961 : bytes8961=statementBytes 9004 (op8961.map lower) ∧ bytes8961.length=48 := by core033_kernel_decide
def op8962 : List WordIR.Op := [.bxor 9003 9004]
def bytes8962 : Bytes := ("    let r0000232d: u32 = r0000232b ^ r0000232c;\n" : String).toByteArray.data.toList
theorem checked8962 : bytes8962=statementBytes 9005 (op8962.map lower) ∧ bytes8962.length=48 := by core033_kernel_decide
def op8963 : List WordIR.Op := [.band 8955 8928]
def bytes8963 : Bytes := ("    let r0000232e: u32 = r000022fb & r000022e0;\n" : String).toByteArray.data.toList
theorem checked8963 : bytes8963=statementBytes 9006 (op8963.map lower) ∧ bytes8963.length=48 := by core033_kernel_decide
def op8964 : List WordIR.Op := [.bxor 9005 9006]
def bytes8964 : Bytes := ("    let r0000232f: u32 = r0000232d ^ r0000232e;\n" : String).toByteArray.data.toList
theorem checked8964 : bytes8964=statementBytes 9007 (op8964.map lower) ∧ bytes8964.length=48 := by core033_kernel_decide
def op8965 : List WordIR.Op := [.badd 9002 9007]
def bytes8965 : Bytes := ("    let r00002330: u32 = r0000232a.wrapping_add(r0000232f);\n" : String).toByteArray.data.toList
theorem checked8965 : bytes8965=statementBytes 9008 (op8965.map lower) ∧ bytes8965.length=60 := by core033_kernel_decide
def op8966 : List WordIR.Op := [.badd 8997 9008]
def bytes8966 : Bytes := ("    let r00002331: u32 = r00002325.wrapping_add(r00002330);\n" : String).toByteArray.data.toList
theorem checked8966 : bytes8966=statementBytes 9009 (op8966.map lower) ∧ bytes8966.length=60 := by core033_kernel_decide
def op8967 : List WordIR.Op := [.badd 8901 8997]
def bytes8967 : Bytes := ("    let r00002332: u32 = r000022c5.wrapping_add(r00002325);\n" : String).toByteArray.data.toList
theorem checked8967 : bytes8967=statementBytes 9010 (op8967.map lower) ∧ bytes8967.length=60 := by core033_kernel_decide
def op8968 : List WordIR.Op := [.rotr 9010 6]
def bytes8968 : Bytes := ("    let r00002333: u32 = r00002332.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8968 : bytes8968=statementBytes 9011 (op8968.map lower) ∧ bytes8968.length=65 := by core033_kernel_decide
def op8969 : List WordIR.Op := [.rotr 9010 11]
def bytes8969 : Bytes := ("    let r00002334: u32 = r00002332.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8969 : bytes8969=statementBytes 9012 (op8969.map lower) ∧ bytes8969.length=65 := by core033_kernel_decide
def op8970 : List WordIR.Op := [.bxor 9011 9012]
def bytes8970 : Bytes := ("    let r00002335: u32 = r00002333 ^ r00002334;\n" : String).toByteArray.data.toList
theorem checked8970 : bytes8970=statementBytes 9013 (op8970.map lower) ∧ bytes8970.length=48 := by core033_kernel_decide
def op8971 : List WordIR.Op := [.rotr 9010 25]
def bytes8971 : Bytes := ("    let r00002336: u32 = r00002332.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8971 : bytes8971=statementBytes 9014 (op8971.map lower) ∧ bytes8971.length=65 := by core033_kernel_decide
def op8972 : List WordIR.Op := [.bxor 9013 9014]
def bytes8972 : Bytes := ("    let r00002337: u32 = r00002335 ^ r00002336;\n" : String).toByteArray.data.toList
theorem checked8972 : bytes8972=statementBytes 9015 (op8972.map lower) ∧ bytes8972.length=48 := by core033_kernel_decide
def op8973 : List WordIR.Op := [.badd 8929 9015]
def bytes8973 : Bytes := ("    let r00002338: u32 = r000022e1.wrapping_add(r00002337);\n" : String).toByteArray.data.toList
theorem checked8973 : bytes8973=statementBytes 9016 (op8973.map lower) ∧ bytes8973.length=60 := by core033_kernel_decide
def op8974 : List WordIR.Op := [.band 9010 8983]
def bytes8974 : Bytes := ("    let r00002339: u32 = r00002332 & r00002317;\n" : String).toByteArray.data.toList
theorem checked8974 : bytes8974=statementBytes 9017 (op8974.map lower) ∧ bytes8974.length=48 := by core033_kernel_decide
def op8975 : List WordIR.Op := [.bnot 9010]
def bytes8975 : Bytes := ("    let r0000233a: u32 = !r00002332;\n" : String).toByteArray.data.toList
theorem checked8975 : bytes8975=statementBytes 9018 (op8975.map lower) ∧ bytes8975.length=37 := by core033_kernel_decide
def op8976 : List WordIR.Op := [.band 9018 8956]
def bytes8976 : Bytes := ("    let r0000233b: u32 = r0000233a & r000022fc;\n" : String).toByteArray.data.toList
theorem checked8976 : bytes8976=statementBytes 9019 (op8976.map lower) ∧ bytes8976.length=48 := by core033_kernel_decide
def op8977 : List WordIR.Op := [.bxor 9017 9019]
def bytes8977 : Bytes := ("    let r0000233c: u32 = r00002339 ^ r0000233b;\n" : String).toByteArray.data.toList
theorem checked8977 : bytes8977=statementBytes 9020 (op8977.map lower) ∧ bytes8977.length=48 := by core033_kernel_decide
def op8978 : List WordIR.Op := [.badd 9016 9020]
def bytes8978 : Bytes := ("    let r0000233d: u32 = r00002338.wrapping_add(r0000233c);\n" : String).toByteArray.data.toList
theorem checked8978 : bytes8978=statementBytes 9021 (op8978.map lower) ∧ bytes8978.length=60 := by core033_kernel_decide
def op8979 : List WordIR.Op := [.literal (BitVec.ofNat 32 1537002063)]
def bytes8979 : Bytes := ("    let r0000233e: u32 = 0x5b9cca4f_u32;\n" : String).toByteArray.data.toList
theorem checked8979 : bytes8979=statementBytes 9022 (op8979.map lower) ∧ bytes8979.length=41 := by core033_kernel_decide
def op8980 : List WordIR.Op := [.badd 9021 9022]
def bytes8980 : Bytes := ("    let r0000233f: u32 = r0000233d.wrapping_add(r0000233e);\n" : String).toByteArray.data.toList
theorem checked8980 : bytes8980=statementBytes 9023 (op8980.map lower) ∧ bytes8980.length=60 := by core033_kernel_decide
def op8981 : List WordIR.Op := [.badd 9023 7435]
def bytes8981 : Bytes := ("    let r00002340: u32 = r0000233f.wrapping_add(r00001d0b);\n" : String).toByteArray.data.toList
theorem checked8981 : bytes8981=statementBytes 9024 (op8981.map lower) ∧ bytes8981.length=60 := by core033_kernel_decide
def op8982 : List WordIR.Op := [.rotr 9009 2]
def bytes8982 : Bytes := ("    let r00002341: u32 = r00002331.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8982 : bytes8982=statementBytes 9025 (op8982.map lower) ∧ bytes8982.length=65 := by core033_kernel_decide
def op8983 : List WordIR.Op := [.rotr 9009 13]
def bytes8983 : Bytes := ("    let r00002342: u32 = r00002331.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8983 : bytes8983=statementBytes 9026 (op8983.map lower) ∧ bytes8983.length=65 := by core033_kernel_decide
def op8984 : List WordIR.Op := [.bxor 9025 9026]
def bytes8984 : Bytes := ("    let r00002343: u32 = r00002341 ^ r00002342;\n" : String).toByteArray.data.toList
theorem checked8984 : bytes8984=statementBytes 9027 (op8984.map lower) ∧ bytes8984.length=48 := by core033_kernel_decide
def op8985 : List WordIR.Op := [.rotr 9009 22]
def bytes8985 : Bytes := ("    let r00002344: u32 = r00002331.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8985 : bytes8985=statementBytes 9028 (op8985.map lower) ∧ bytes8985.length=65 := by core033_kernel_decide
def op8986 : List WordIR.Op := [.bxor 9027 9028]
def bytes8986 : Bytes := ("    let r00002345: u32 = r00002343 ^ r00002344;\n" : String).toByteArray.data.toList
theorem checked8986 : bytes8986=statementBytes 9029 (op8986.map lower) ∧ bytes8986.length=48 := by core033_kernel_decide
def op8987 : List WordIR.Op := [.band 9009 8982]
def bytes8987 : Bytes := ("    let r00002346: u32 = r00002331 & r00002316;\n" : String).toByteArray.data.toList
theorem checked8987 : bytes8987=statementBytes 9030 (op8987.map lower) ∧ bytes8987.length=48 := by core033_kernel_decide
def op8988 : List WordIR.Op := [.band 9009 8955]
def bytes8988 : Bytes := ("    let r00002347: u32 = r00002331 & r000022fb;\n" : String).toByteArray.data.toList
theorem checked8988 : bytes8988=statementBytes 9031 (op8988.map lower) ∧ bytes8988.length=48 := by core033_kernel_decide
def op8989 : List WordIR.Op := [.bxor 9030 9031]
def bytes8989 : Bytes := ("    let r00002348: u32 = r00002346 ^ r00002347;\n" : String).toByteArray.data.toList
theorem checked8989 : bytes8989=statementBytes 9032 (op8989.map lower) ∧ bytes8989.length=48 := by core033_kernel_decide
def op8990 : List WordIR.Op := [.band 8982 8955]
def bytes8990 : Bytes := ("    let r00002349: u32 = r00002316 & r000022fb;\n" : String).toByteArray.data.toList
theorem checked8990 : bytes8990=statementBytes 9033 (op8990.map lower) ∧ bytes8990.length=48 := by core033_kernel_decide
def op8991 : List WordIR.Op := [.bxor 9032 9033]
def bytes8991 : Bytes := ("    let r0000234a: u32 = r00002348 ^ r00002349;\n" : String).toByteArray.data.toList
theorem checked8991 : bytes8991=statementBytes 9034 (op8991.map lower) ∧ bytes8991.length=48 := by core033_kernel_decide
def op8992 : List WordIR.Op := [.badd 9029 9034]
def bytes8992 : Bytes := ("    let r0000234b: u32 = r00002345.wrapping_add(r0000234a);\n" : String).toByteArray.data.toList
theorem checked8992 : bytes8992=statementBytes 9035 (op8992.map lower) ∧ bytes8992.length=60 := by core033_kernel_decide
def op8993 : List WordIR.Op := [.badd 9024 9035]
def bytes8993 : Bytes := ("    let r0000234c: u32 = r00002340.wrapping_add(r0000234b);\n" : String).toByteArray.data.toList
theorem checked8993 : bytes8993=statementBytes 9036 (op8993.map lower) ∧ bytes8993.length=60 := by core033_kernel_decide
def op8994 : List WordIR.Op := [.badd 8928 9024]
def bytes8994 : Bytes := ("    let r0000234d: u32 = r000022e0.wrapping_add(r00002340);\n" : String).toByteArray.data.toList
theorem checked8994 : bytes8994=statementBytes 9037 (op8994.map lower) ∧ bytes8994.length=60 := by core033_kernel_decide
def op8995 : List WordIR.Op := [.rotr 9037 6]
def bytes8995 : Bytes := ("    let r0000234e: u32 = r0000234d.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8995 : bytes8995=statementBytes 9038 (op8995.map lower) ∧ bytes8995.length=65 := by core033_kernel_decide
def op8996 : List WordIR.Op := [.rotr 9037 11]
def bytes8996 : Bytes := ("    let r0000234f: u32 = r0000234d.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8996 : bytes8996=statementBytes 9039 (op8996.map lower) ∧ bytes8996.length=65 := by core033_kernel_decide
def op8997 : List WordIR.Op := [.bxor 9038 9039]
def bytes8997 : Bytes := ("    let r00002350: u32 = r0000234e ^ r0000234f;\n" : String).toByteArray.data.toList
theorem checked8997 : bytes8997=statementBytes 9040 (op8997.map lower) ∧ bytes8997.length=48 := by core033_kernel_decide
def op8998 : List WordIR.Op := [.rotr 9037 25]
def bytes8998 : Bytes := ("    let r00002351: u32 = r0000234d.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8998 : bytes8998=statementBytes 9041 (op8998.map lower) ∧ bytes8998.length=65 := by core033_kernel_decide
def op8999 : List WordIR.Op := [.bxor 9040 9041]
def bytes8999 : Bytes := ("    let r00002352: u32 = r00002350 ^ r00002351;\n" : String).toByteArray.data.toList
theorem checked8999 : bytes8999=statementBytes 9042 (op8999.map lower) ∧ bytes8999.length=48 := by core033_kernel_decide
def op9000 : List WordIR.Op := [.badd 8956 9042]
def bytes9000 : Bytes := ("    let r00002353: u32 = r000022fc.wrapping_add(r00002352);\n" : String).toByteArray.data.toList
theorem checked9000 : bytes9000=statementBytes 9043 (op9000.map lower) ∧ bytes9000.length=60 := by core033_kernel_decide
def op9001 : List WordIR.Op := [.band 9037 9010]
def bytes9001 : Bytes := ("    let r00002354: u32 = r0000234d & r00002332;\n" : String).toByteArray.data.toList
theorem checked9001 : bytes9001=statementBytes 9044 (op9001.map lower) ∧ bytes9001.length=48 := by core033_kernel_decide
def op9002 : List WordIR.Op := [.bnot 9037]
def bytes9002 : Bytes := ("    let r00002355: u32 = !r0000234d;\n" : String).toByteArray.data.toList
theorem checked9002 : bytes9002=statementBytes 9045 (op9002.map lower) ∧ bytes9002.length=37 := by core033_kernel_decide
def op9003 : List WordIR.Op := [.band 9045 8983]
def bytes9003 : Bytes := ("    let r00002356: u32 = r00002355 & r00002317;\n" : String).toByteArray.data.toList
theorem checked9003 : bytes9003=statementBytes 9046 (op9003.map lower) ∧ bytes9003.length=48 := by core033_kernel_decide
def op9004 : List WordIR.Op := [.bxor 9044 9046]
def bytes9004 : Bytes := ("    let r00002357: u32 = r00002354 ^ r00002356;\n" : String).toByteArray.data.toList
theorem checked9004 : bytes9004=statementBytes 9047 (op9004.map lower) ∧ bytes9004.length=48 := by core033_kernel_decide
def op9005 : List WordIR.Op := [.badd 9043 9047]
def bytes9005 : Bytes := ("    let r00002358: u32 = r00002353.wrapping_add(r00002357);\n" : String).toByteArray.data.toList
theorem checked9005 : bytes9005=statementBytes 9048 (op9005.map lower) ∧ bytes9005.length=60 := by core033_kernel_decide
def op9006 : List WordIR.Op := [.literal (BitVec.ofNat 32 1747873779)]
def bytes9006 : Bytes := ("    let r00002359: u32 = 0x682e6ff3_u32;\n" : String).toByteArray.data.toList
theorem checked9006 : bytes9006=statementBytes 9049 (op9006.map lower) ∧ bytes9006.length=41 := by core033_kernel_decide
def op9007 : List WordIR.Op := [.badd 9048 9049]
def bytes9007 : Bytes := ("    let r0000235a: u32 = r00002358.wrapping_add(r00002359);\n" : String).toByteArray.data.toList
theorem checked9007 : bytes9007=statementBytes 9050 (op9007.map lower) ∧ bytes9007.length=60 := by core033_kernel_decide
def op9008 : List WordIR.Op := [.badd 9050 7448]
def bytes9008 : Bytes := ("    let r0000235b: u32 = r0000235a.wrapping_add(r00001d18);\n" : String).toByteArray.data.toList
theorem checked9008 : bytes9008=statementBytes 9051 (op9008.map lower) ∧ bytes9008.length=60 := by core033_kernel_decide
def op9009 : List WordIR.Op := [.rotr 9036 2]
def bytes9009 : Bytes := ("    let r0000235c: u32 = r0000234c.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9009 : bytes9009=statementBytes 9052 (op9009.map lower) ∧ bytes9009.length=65 := by core033_kernel_decide
def op9010 : List WordIR.Op := [.rotr 9036 13]
def bytes9010 : Bytes := ("    let r0000235d: u32 = r0000234c.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9010 : bytes9010=statementBytes 9053 (op9010.map lower) ∧ bytes9010.length=65 := by core033_kernel_decide
def op9011 : List WordIR.Op := [.bxor 9052 9053]
def bytes9011 : Bytes := ("    let r0000235e: u32 = r0000235c ^ r0000235d;\n" : String).toByteArray.data.toList
theorem checked9011 : bytes9011=statementBytes 9054 (op9011.map lower) ∧ bytes9011.length=48 := by core033_kernel_decide
def op9012 : List WordIR.Op := [.rotr 9036 22]
def bytes9012 : Bytes := ("    let r0000235f: u32 = r0000234c.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9012 : bytes9012=statementBytes 9055 (op9012.map lower) ∧ bytes9012.length=65 := by core033_kernel_decide
def op9013 : List WordIR.Op := [.bxor 9054 9055]
def bytes9013 : Bytes := ("    let r00002360: u32 = r0000235e ^ r0000235f;\n" : String).toByteArray.data.toList
theorem checked9013 : bytes9013=statementBytes 9056 (op9013.map lower) ∧ bytes9013.length=48 := by core033_kernel_decide
def op9014 : List WordIR.Op := [.band 9036 9009]
def bytes9014 : Bytes := ("    let r00002361: u32 = r0000234c & r00002331;\n" : String).toByteArray.data.toList
theorem checked9014 : bytes9014=statementBytes 9057 (op9014.map lower) ∧ bytes9014.length=48 := by core033_kernel_decide
def op9015 : List WordIR.Op := [.band 9036 8982]
def bytes9015 : Bytes := ("    let r00002362: u32 = r0000234c & r00002316;\n" : String).toByteArray.data.toList
theorem checked9015 : bytes9015=statementBytes 9058 (op9015.map lower) ∧ bytes9015.length=48 := by core033_kernel_decide
def op9016 : List WordIR.Op := [.bxor 9057 9058]
def bytes9016 : Bytes := ("    let r00002363: u32 = r00002361 ^ r00002362;\n" : String).toByteArray.data.toList
theorem checked9016 : bytes9016=statementBytes 9059 (op9016.map lower) ∧ bytes9016.length=48 := by core033_kernel_decide
def op9017 : List WordIR.Op := [.band 9009 8982]
def bytes9017 : Bytes := ("    let r00002364: u32 = r00002331 & r00002316;\n" : String).toByteArray.data.toList
theorem checked9017 : bytes9017=statementBytes 9060 (op9017.map lower) ∧ bytes9017.length=48 := by core033_kernel_decide
def op9018 : List WordIR.Op := [.bxor 9059 9060]
def bytes9018 : Bytes := ("    let r00002365: u32 = r00002363 ^ r00002364;\n" : String).toByteArray.data.toList
theorem checked9018 : bytes9018=statementBytes 9061 (op9018.map lower) ∧ bytes9018.length=48 := by core033_kernel_decide
def op9019 : List WordIR.Op := [.badd 9056 9061]
def bytes9019 : Bytes := ("    let r00002366: u32 = r00002360.wrapping_add(r00002365);\n" : String).toByteArray.data.toList
theorem checked9019 : bytes9019=statementBytes 9062 (op9019.map lower) ∧ bytes9019.length=60 := by core033_kernel_decide
def op9020 : List WordIR.Op := [.badd 9051 9062]
def bytes9020 : Bytes := ("    let r00002367: u32 = r0000235b.wrapping_add(r00002366);\n" : String).toByteArray.data.toList
theorem checked9020 : bytes9020=statementBytes 9063 (op9020.map lower) ∧ bytes9020.length=60 := by core033_kernel_decide
def op9021 : List WordIR.Op := [.badd 8955 9051]
def bytes9021 : Bytes := ("    let r00002368: u32 = r000022fb.wrapping_add(r0000235b);\n" : String).toByteArray.data.toList
theorem checked9021 : bytes9021=statementBytes 9064 (op9021.map lower) ∧ bytes9021.length=60 := by core033_kernel_decide
def op9022 : List WordIR.Op := [.rotr 9064 6]
def bytes9022 : Bytes := ("    let r00002369: u32 = r00002368.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9022 : bytes9022=statementBytes 9065 (op9022.map lower) ∧ bytes9022.length=65 := by core033_kernel_decide
def op9023 : List WordIR.Op := [.rotr 9064 11]
def bytes9023 : Bytes := ("    let r0000236a: u32 = r00002368.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9023 : bytes9023=statementBytes 9066 (op9023.map lower) ∧ bytes9023.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8960,op8961,op8962,op8963,op8964,op8965,op8966,op8967,op8968,op8969,op8970,op8971,op8972,op8973,op8974,op8975,op8976,op8977,op8978,op8979,op8980,op8981,op8982,op8983,op8984,op8985,op8986,op8987,op8988,op8989,op8990,op8991,op8992,op8993,op8994,op8995,op8996,op8997,op8998,op8999,op9000,op9001,op9002,op9003,op9004,op9005,op9006,op9007,op9008,op9009,op9010,op9011,op9012,op9013,op9014,op9015,op9016,op9017,op9018,op9019,op9020,op9021,op9022,op9023]
def chunks : List Bytes := [bytes8960,bytes8961,bytes8962,bytes8963,bytes8964,bytes8965,bytes8966,bytes8967,bytes8968,bytes8969,bytes8970,bytes8971,bytes8972,bytes8973,bytes8974,bytes8975,bytes8976,bytes8977,bytes8978,bytes8979,bytes8980,bytes8981,bytes8982,bytes8983,bytes8984,bytes8985,bytes8986,bytes8987,bytes8988,bytes8989,bytes8990,bytes8991,bytes8992,bytes8993,bytes8994,bytes8995,bytes8996,bytes8997,bytes8998,bytes8999,bytes9000,bytes9001,bytes9002,bytes9003,bytes9004,bytes9005,bytes9006,bytes9007,bytes9008,bytes9009,bytes9010,bytes9011,bytes9012,bytes9013,bytes9014,bytes9015,bytes9016,bytes9017,bytes9018,bytes9019,bytes9020,bytes9021,bytes9022,bytes9023]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9003 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8960.1 (.cons _ _ _ _ _ checked8961.1 (.cons _ _ _ _ _ checked8962.1 (.cons _ _ _ _ _ checked8963.1 (.cons _ _ _ _ _ checked8964.1 (.cons _ _ _ _ _ checked8965.1 (.cons _ _ _ _ _ checked8966.1 (.cons _ _ _ _ _ checked8967.1 (.cons _ _ _ _ _ checked8968.1 (.cons _ _ _ _ _ checked8969.1 (.cons _ _ _ _ _ checked8970.1 (.cons _ _ _ _ _ checked8971.1 (.cons _ _ _ _ _ checked8972.1 (.cons _ _ _ _ _ checked8973.1 (.cons _ _ _ _ _ checked8974.1 (.cons _ _ _ _ _ checked8975.1 (.cons _ _ _ _ _ checked8976.1 (.cons _ _ _ _ _ checked8977.1 (.cons _ _ _ _ _ checked8978.1 (.cons _ _ _ _ _ checked8979.1 (.cons _ _ _ _ _ checked8980.1 (.cons _ _ _ _ _ checked8981.1 (.cons _ _ _ _ _ checked8982.1 (.cons _ _ _ _ _ checked8983.1 (.cons _ _ _ _ _ checked8984.1 (.cons _ _ _ _ _ checked8985.1 (.cons _ _ _ _ _ checked8986.1 (.cons _ _ _ _ _ checked8987.1 (.cons _ _ _ _ _ checked8988.1 (.cons _ _ _ _ _ checked8989.1 (.cons _ _ _ _ _ checked8990.1 (.cons _ _ _ _ _ checked8991.1 (.cons _ _ _ _ _ checked8992.1 (.cons _ _ _ _ _ checked8993.1 (.cons _ _ _ _ _ checked8994.1 (.cons _ _ _ _ _ checked8995.1 (.cons _ _ _ _ _ checked8996.1 (.cons _ _ _ _ _ checked8997.1 (.cons _ _ _ _ _ checked8998.1 (.cons _ _ _ _ _ checked8999.1 (.cons _ _ _ _ _ checked9000.1 (.cons _ _ _ _ _ checked9001.1 (.cons _ _ _ _ _ checked9002.1 (.cons _ _ _ _ _ checked9003.1 (.cons _ _ _ _ _ checked9004.1 (.cons _ _ _ _ _ checked9005.1 (.cons _ _ _ _ _ checked9006.1 (.cons _ _ _ _ _ checked9007.1 (.cons _ _ _ _ _ checked9008.1 (.cons _ _ _ _ _ checked9009.1 (.cons _ _ _ _ _ checked9010.1 (.cons _ _ _ _ _ checked9011.1 (.cons _ _ _ _ _ checked9012.1 (.cons _ _ _ _ _ checked9013.1 (.cons _ _ _ _ _ checked9014.1 (.cons _ _ _ _ _ checked9015.1 (.cons _ _ _ _ _ checked9016.1 (.cons _ _ _ _ _ checked9017.1 (.cons _ _ _ _ _ checked9018.1 (.cons _ _ _ _ _ checked9019.1 (.cons _ _ _ _ _ checked9020.1 (.cons _ _ _ _ _ checked9021.1 (.cons _ _ _ _ _ checked9022.1 (.cons _ _ _ _ _ checked9023.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9003 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3478 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8960.2,checked8961.2,checked8962.2,checked8963.2,checked8964.2,checked8965.2,checked8966.2,checked8967.2,checked8968.2,checked8969.2,checked8970.2,checked8971.2,checked8972.2,checked8973.2,checked8974.2,checked8975.2,checked8976.2,checked8977.2,checked8978.2,checked8979.2,checked8980.2,checked8981.2,checked8982.2,checked8983.2,checked8984.2,checked8985.2,checked8986.2,checked8987.2,checked8988.2,checked8989.2,checked8990.2,checked8991.2,checked8992.2,checked8993.2,checked8994.2,checked8995.2,checked8996.2,checked8997.2,checked8998.2,checked8999.2,checked9000.2,checked9001.2,checked9002.2,checked9003.2,checked9004.2,checked9005.2,checked9006.2,checked9007.2,checked9008.2,checked9009.2,checked9010.2,checked9011.2,checked9012.2,checked9013.2,checked9014.2,checked9015.2,checked9016.2,checked9017.2,checked9018.2,checked9019.2,checked9020.2,checked9021.2,checked9022.2,checked9023.2]
  decide
end ArtifactPathRoundDispatchGroup140
