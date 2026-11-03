import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup140
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8960 : List WordIR.Op := [.literal (BitVec.ofNat 32 1695183700)]
def bytes8960 : Bytes := ("    let r00002360: u32 = 0x650a7354_u32;\n" : String).toByteArray.data.toList
theorem checked8960 : bytes8960=statementBytes 9056 (op8960.map lower) ∧ bytes8960.length=41 := by core033_kernel_decide
def op8961 : List WordIR.Op := [.badd 9055 9056]
def bytes8961 : Bytes := ("    let r00002361: u32 = r0000235f.wrapping_add(r00002360);\n" : String).toByteArray.data.toList
theorem checked8961 : bytes8961=statementBytes 9057 (op8961.map lower) ∧ bytes8961.length=60 := by core033_kernel_decide
def op8962 : List WordIR.Op := [.badd 9057 7721]
def bytes8962 : Bytes := ("    let r00002362: u32 = r00002361.wrapping_add(r00001e29);\n" : String).toByteArray.data.toList
theorem checked8962 : bytes8962=statementBytes 9058 (op8962.map lower) ∧ bytes8962.length=60 := by core033_kernel_decide
def op8963 : List WordIR.Op := [.rotr 9043 2]
def bytes8963 : Bytes := ("    let r00002363: u32 = r00002353.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8963 : bytes8963=statementBytes 9059 (op8963.map lower) ∧ bytes8963.length=65 := by core033_kernel_decide
def op8964 : List WordIR.Op := [.rotr 9043 13]
def bytes8964 : Bytes := ("    let r00002364: u32 = r00002353.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8964 : bytes8964=statementBytes 9060 (op8964.map lower) ∧ bytes8964.length=65 := by core033_kernel_decide
def op8965 : List WordIR.Op := [.bxor 9059 9060]
def bytes8965 : Bytes := ("    let r00002365: u32 = r00002363 ^ r00002364;\n" : String).toByteArray.data.toList
theorem checked8965 : bytes8965=statementBytes 9061 (op8965.map lower) ∧ bytes8965.length=48 := by core033_kernel_decide
def op8966 : List WordIR.Op := [.rotr 9043 22]
def bytes8966 : Bytes := ("    let r00002366: u32 = r00002353.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8966 : bytes8966=statementBytes 9062 (op8966.map lower) ∧ bytes8966.length=65 := by core033_kernel_decide
def op8967 : List WordIR.Op := [.bxor 9061 9062]
def bytes8967 : Bytes := ("    let r00002367: u32 = r00002365 ^ r00002366;\n" : String).toByteArray.data.toList
theorem checked8967 : bytes8967=statementBytes 9063 (op8967.map lower) ∧ bytes8967.length=48 := by core033_kernel_decide
def op8968 : List WordIR.Op := [.band 9043 9016]
def bytes8968 : Bytes := ("    let r00002368: u32 = r00002353 & r00002338;\n" : String).toByteArray.data.toList
theorem checked8968 : bytes8968=statementBytes 9064 (op8968.map lower) ∧ bytes8968.length=48 := by core033_kernel_decide
def op8969 : List WordIR.Op := [.band 9043 8989]
def bytes8969 : Bytes := ("    let r00002369: u32 = r00002353 & r0000231d;\n" : String).toByteArray.data.toList
theorem checked8969 : bytes8969=statementBytes 9065 (op8969.map lower) ∧ bytes8969.length=48 := by core033_kernel_decide
def op8970 : List WordIR.Op := [.bxor 9064 9065]
def bytes8970 : Bytes := ("    let r0000236a: u32 = r00002368 ^ r00002369;\n" : String).toByteArray.data.toList
theorem checked8970 : bytes8970=statementBytes 9066 (op8970.map lower) ∧ bytes8970.length=48 := by core033_kernel_decide
def op8971 : List WordIR.Op := [.band 9016 8989]
def bytes8971 : Bytes := ("    let r0000236b: u32 = r00002338 & r0000231d;\n" : String).toByteArray.data.toList
theorem checked8971 : bytes8971=statementBytes 9067 (op8971.map lower) ∧ bytes8971.length=48 := by core033_kernel_decide
def op8972 : List WordIR.Op := [.bxor 9066 9067]
def bytes8972 : Bytes := ("    let r0000236c: u32 = r0000236a ^ r0000236b;\n" : String).toByteArray.data.toList
theorem checked8972 : bytes8972=statementBytes 9068 (op8972.map lower) ∧ bytes8972.length=48 := by core033_kernel_decide
def op8973 : List WordIR.Op := [.badd 9063 9068]
def bytes8973 : Bytes := ("    let r0000236d: u32 = r00002367.wrapping_add(r0000236c);\n" : String).toByteArray.data.toList
theorem checked8973 : bytes8973=statementBytes 9069 (op8973.map lower) ∧ bytes8973.length=60 := by core033_kernel_decide
def op8974 : List WordIR.Op := [.badd 9058 9069]
def bytes8974 : Bytes := ("    let r0000236e: u32 = r00002362.wrapping_add(r0000236d);\n" : String).toByteArray.data.toList
theorem checked8974 : bytes8974=statementBytes 9070 (op8974.map lower) ∧ bytes8974.length=60 := by core033_kernel_decide
def op8975 : List WordIR.Op := [.badd 8962 9058]
def bytes8975 : Bytes := ("    let r0000236f: u32 = r00002302.wrapping_add(r00002362);\n" : String).toByteArray.data.toList
theorem checked8975 : bytes8975=statementBytes 9071 (op8975.map lower) ∧ bytes8975.length=60 := by core033_kernel_decide
def op8976 : List WordIR.Op := [.rotr 9071 6]
def bytes8976 : Bytes := ("    let r00002370: u32 = r0000236f.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8976 : bytes8976=statementBytes 9072 (op8976.map lower) ∧ bytes8976.length=65 := by core033_kernel_decide
def op8977 : List WordIR.Op := [.rotr 9071 11]
def bytes8977 : Bytes := ("    let r00002371: u32 = r0000236f.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8977 : bytes8977=statementBytes 9073 (op8977.map lower) ∧ bytes8977.length=65 := by core033_kernel_decide
def op8978 : List WordIR.Op := [.bxor 9072 9073]
def bytes8978 : Bytes := ("    let r00002372: u32 = r00002370 ^ r00002371;\n" : String).toByteArray.data.toList
theorem checked8978 : bytes8978=statementBytes 9074 (op8978.map lower) ∧ bytes8978.length=48 := by core033_kernel_decide
def op8979 : List WordIR.Op := [.rotr 9071 25]
def bytes8979 : Bytes := ("    let r00002373: u32 = r0000236f.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8979 : bytes8979=statementBytes 9075 (op8979.map lower) ∧ bytes8979.length=65 := by core033_kernel_decide
def op8980 : List WordIR.Op := [.bxor 9074 9075]
def bytes8980 : Bytes := ("    let r00002374: u32 = r00002372 ^ r00002373;\n" : String).toByteArray.data.toList
theorem checked8980 : bytes8980=statementBytes 9076 (op8980.map lower) ∧ bytes8980.length=48 := by core033_kernel_decide
def op8981 : List WordIR.Op := [.badd 8990 9076]
def bytes8981 : Bytes := ("    let r00002375: u32 = r0000231e.wrapping_add(r00002374);\n" : String).toByteArray.data.toList
theorem checked8981 : bytes8981=statementBytes 9077 (op8981.map lower) ∧ bytes8981.length=60 := by core033_kernel_decide
def op8982 : List WordIR.Op := [.band 9071 9044]
def bytes8982 : Bytes := ("    let r00002376: u32 = r0000236f & r00002354;\n" : String).toByteArray.data.toList
theorem checked8982 : bytes8982=statementBytes 9078 (op8982.map lower) ∧ bytes8982.length=48 := by core033_kernel_decide
def op8983 : List WordIR.Op := [.bnot 9071]
def bytes8983 : Bytes := ("    let r00002377: u32 = !r0000236f;\n" : String).toByteArray.data.toList
theorem checked8983 : bytes8983=statementBytes 9079 (op8983.map lower) ∧ bytes8983.length=37 := by core033_kernel_decide
def op8984 : List WordIR.Op := [.band 9079 9017]
def bytes8984 : Bytes := ("    let r00002378: u32 = r00002377 & r00002339;\n" : String).toByteArray.data.toList
theorem checked8984 : bytes8984=statementBytes 9080 (op8984.map lower) ∧ bytes8984.length=48 := by core033_kernel_decide
def op8985 : List WordIR.Op := [.bxor 9078 9080]
def bytes8985 : Bytes := ("    let r00002379: u32 = r00002376 ^ r00002378;\n" : String).toByteArray.data.toList
theorem checked8985 : bytes8985=statementBytes 9081 (op8985.map lower) ∧ bytes8985.length=48 := by core033_kernel_decide
def op8986 : List WordIR.Op := [.badd 9077 9081]
def bytes8986 : Bytes := ("    let r0000237a: u32 = r00002375.wrapping_add(r00002379);\n" : String).toByteArray.data.toList
theorem checked8986 : bytes8986=statementBytes 9082 (op8986.map lower) ∧ bytes8986.length=60 := by core033_kernel_decide
def op8987 : List WordIR.Op := [.literal (BitVec.ofNat 32 1986661051)]
def bytes8987 : Bytes := ("    let r0000237b: u32 = 0x766a0abb_u32;\n" : String).toByteArray.data.toList
theorem checked8987 : bytes8987=statementBytes 9083 (op8987.map lower) ∧ bytes8987.length=41 := by core033_kernel_decide
def op8988 : List WordIR.Op := [.badd 9082 9083]
def bytes8988 : Bytes := ("    let r0000237c: u32 = r0000237a.wrapping_add(r0000237b);\n" : String).toByteArray.data.toList
theorem checked8988 : bytes8988=statementBytes 9084 (op8988.map lower) ∧ bytes8988.length=60 := by core033_kernel_decide
def op8989 : List WordIR.Op := [.badd 9084 7734]
def bytes8989 : Bytes := ("    let r0000237d: u32 = r0000237c.wrapping_add(r00001e36);\n" : String).toByteArray.data.toList
theorem checked8989 : bytes8989=statementBytes 9085 (op8989.map lower) ∧ bytes8989.length=60 := by core033_kernel_decide
def op8990 : List WordIR.Op := [.rotr 9070 2]
def bytes8990 : Bytes := ("    let r0000237e: u32 = r0000236e.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8990 : bytes8990=statementBytes 9086 (op8990.map lower) ∧ bytes8990.length=65 := by core033_kernel_decide
def op8991 : List WordIR.Op := [.rotr 9070 13]
def bytes8991 : Bytes := ("    let r0000237f: u32 = r0000236e.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8991 : bytes8991=statementBytes 9087 (op8991.map lower) ∧ bytes8991.length=65 := by core033_kernel_decide
def op8992 : List WordIR.Op := [.bxor 9086 9087]
def bytes8992 : Bytes := ("    let r00002380: u32 = r0000237e ^ r0000237f;\n" : String).toByteArray.data.toList
theorem checked8992 : bytes8992=statementBytes 9088 (op8992.map lower) ∧ bytes8992.length=48 := by core033_kernel_decide
def op8993 : List WordIR.Op := [.rotr 9070 22]
def bytes8993 : Bytes := ("    let r00002381: u32 = r0000236e.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8993 : bytes8993=statementBytes 9089 (op8993.map lower) ∧ bytes8993.length=65 := by core033_kernel_decide
def op8994 : List WordIR.Op := [.bxor 9088 9089]
def bytes8994 : Bytes := ("    let r00002382: u32 = r00002380 ^ r00002381;\n" : String).toByteArray.data.toList
theorem checked8994 : bytes8994=statementBytes 9090 (op8994.map lower) ∧ bytes8994.length=48 := by core033_kernel_decide
def op8995 : List WordIR.Op := [.band 9070 9043]
def bytes8995 : Bytes := ("    let r00002383: u32 = r0000236e & r00002353;\n" : String).toByteArray.data.toList
theorem checked8995 : bytes8995=statementBytes 9091 (op8995.map lower) ∧ bytes8995.length=48 := by core033_kernel_decide
def op8996 : List WordIR.Op := [.band 9070 9016]
def bytes8996 : Bytes := ("    let r00002384: u32 = r0000236e & r00002338;\n" : String).toByteArray.data.toList
theorem checked8996 : bytes8996=statementBytes 9092 (op8996.map lower) ∧ bytes8996.length=48 := by core033_kernel_decide
def op8997 : List WordIR.Op := [.bxor 9091 9092]
def bytes8997 : Bytes := ("    let r00002385: u32 = r00002383 ^ r00002384;\n" : String).toByteArray.data.toList
theorem checked8997 : bytes8997=statementBytes 9093 (op8997.map lower) ∧ bytes8997.length=48 := by core033_kernel_decide
def op8998 : List WordIR.Op := [.band 9043 9016]
def bytes8998 : Bytes := ("    let r00002386: u32 = r00002353 & r00002338;\n" : String).toByteArray.data.toList
theorem checked8998 : bytes8998=statementBytes 9094 (op8998.map lower) ∧ bytes8998.length=48 := by core033_kernel_decide
def op8999 : List WordIR.Op := [.bxor 9093 9094]
def bytes8999 : Bytes := ("    let r00002387: u32 = r00002385 ^ r00002386;\n" : String).toByteArray.data.toList
theorem checked8999 : bytes8999=statementBytes 9095 (op8999.map lower) ∧ bytes8999.length=48 := by core033_kernel_decide
def op9000 : List WordIR.Op := [.badd 9090 9095]
def bytes9000 : Bytes := ("    let r00002388: u32 = r00002382.wrapping_add(r00002387);\n" : String).toByteArray.data.toList
theorem checked9000 : bytes9000=statementBytes 9096 (op9000.map lower) ∧ bytes9000.length=60 := by core033_kernel_decide
def op9001 : List WordIR.Op := [.badd 9085 9096]
def bytes9001 : Bytes := ("    let r00002389: u32 = r0000237d.wrapping_add(r00002388);\n" : String).toByteArray.data.toList
theorem checked9001 : bytes9001=statementBytes 9097 (op9001.map lower) ∧ bytes9001.length=60 := by core033_kernel_decide
def op9002 : List WordIR.Op := [.badd 8989 9085]
def bytes9002 : Bytes := ("    let r0000238a: u32 = r0000231d.wrapping_add(r0000237d);\n" : String).toByteArray.data.toList
theorem checked9002 : bytes9002=statementBytes 9098 (op9002.map lower) ∧ bytes9002.length=60 := by core033_kernel_decide
def op9003 : List WordIR.Op := [.rotr 9098 6]
def bytes9003 : Bytes := ("    let r0000238b: u32 = r0000238a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9003 : bytes9003=statementBytes 9099 (op9003.map lower) ∧ bytes9003.length=65 := by core033_kernel_decide
def op9004 : List WordIR.Op := [.rotr 9098 11]
def bytes9004 : Bytes := ("    let r0000238c: u32 = r0000238a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9004 : bytes9004=statementBytes 9100 (op9004.map lower) ∧ bytes9004.length=65 := by core033_kernel_decide
def op9005 : List WordIR.Op := [.bxor 9099 9100]
def bytes9005 : Bytes := ("    let r0000238d: u32 = r0000238b ^ r0000238c;\n" : String).toByteArray.data.toList
theorem checked9005 : bytes9005=statementBytes 9101 (op9005.map lower) ∧ bytes9005.length=48 := by core033_kernel_decide
def op9006 : List WordIR.Op := [.rotr 9098 25]
def bytes9006 : Bytes := ("    let r0000238e: u32 = r0000238a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9006 : bytes9006=statementBytes 9102 (op9006.map lower) ∧ bytes9006.length=65 := by core033_kernel_decide
def op9007 : List WordIR.Op := [.bxor 9101 9102]
def bytes9007 : Bytes := ("    let r0000238f: u32 = r0000238d ^ r0000238e;\n" : String).toByteArray.data.toList
theorem checked9007 : bytes9007=statementBytes 9103 (op9007.map lower) ∧ bytes9007.length=48 := by core033_kernel_decide
def op9008 : List WordIR.Op := [.badd 9017 9103]
def bytes9008 : Bytes := ("    let r00002390: u32 = r00002339.wrapping_add(r0000238f);\n" : String).toByteArray.data.toList
theorem checked9008 : bytes9008=statementBytes 9104 (op9008.map lower) ∧ bytes9008.length=60 := by core033_kernel_decide
def op9009 : List WordIR.Op := [.band 9098 9071]
def bytes9009 : Bytes := ("    let r00002391: u32 = r0000238a & r0000236f;\n" : String).toByteArray.data.toList
theorem checked9009 : bytes9009=statementBytes 9105 (op9009.map lower) ∧ bytes9009.length=48 := by core033_kernel_decide
def op9010 : List WordIR.Op := [.bnot 9098]
def bytes9010 : Bytes := ("    let r00002392: u32 = !r0000238a;\n" : String).toByteArray.data.toList
theorem checked9010 : bytes9010=statementBytes 9106 (op9010.map lower) ∧ bytes9010.length=37 := by core033_kernel_decide
def op9011 : List WordIR.Op := [.band 9106 9044]
def bytes9011 : Bytes := ("    let r00002393: u32 = r00002392 & r00002354;\n" : String).toByteArray.data.toList
theorem checked9011 : bytes9011=statementBytes 9107 (op9011.map lower) ∧ bytes9011.length=48 := by core033_kernel_decide
def op9012 : List WordIR.Op := [.bxor 9105 9107]
def bytes9012 : Bytes := ("    let r00002394: u32 = r00002391 ^ r00002393;\n" : String).toByteArray.data.toList
theorem checked9012 : bytes9012=statementBytes 9108 (op9012.map lower) ∧ bytes9012.length=48 := by core033_kernel_decide
def op9013 : List WordIR.Op := [.badd 9104 9108]
def bytes9013 : Bytes := ("    let r00002395: u32 = r00002390.wrapping_add(r00002394);\n" : String).toByteArray.data.toList
theorem checked9013 : bytes9013=statementBytes 9109 (op9013.map lower) ∧ bytes9013.length=60 := by core033_kernel_decide
def op9014 : List WordIR.Op := [.literal (BitVec.ofNat 32 2177026350)]
def bytes9014 : Bytes := ("    let r00002396: u32 = 0x81c2c92e_u32;\n" : String).toByteArray.data.toList
theorem checked9014 : bytes9014=statementBytes 9110 (op9014.map lower) ∧ bytes9014.length=41 := by core033_kernel_decide
def op9015 : List WordIR.Op := [.badd 9109 9110]
def bytes9015 : Bytes := ("    let r00002397: u32 = r00002395.wrapping_add(r00002396);\n" : String).toByteArray.data.toList
theorem checked9015 : bytes9015=statementBytes 9111 (op9015.map lower) ∧ bytes9015.length=60 := by core033_kernel_decide
def op9016 : List WordIR.Op := [.badd 9111 7747]
def bytes9016 : Bytes := ("    let r00002398: u32 = r00002397.wrapping_add(r00001e43);\n" : String).toByteArray.data.toList
theorem checked9016 : bytes9016=statementBytes 9112 (op9016.map lower) ∧ bytes9016.length=60 := by core033_kernel_decide
def op9017 : List WordIR.Op := [.rotr 9097 2]
def bytes9017 : Bytes := ("    let r00002399: u32 = r00002389.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9017 : bytes9017=statementBytes 9113 (op9017.map lower) ∧ bytes9017.length=65 := by core033_kernel_decide
def op9018 : List WordIR.Op := [.rotr 9097 13]
def bytes9018 : Bytes := ("    let r0000239a: u32 = r00002389.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9018 : bytes9018=statementBytes 9114 (op9018.map lower) ∧ bytes9018.length=65 := by core033_kernel_decide
def op9019 : List WordIR.Op := [.bxor 9113 9114]
def bytes9019 : Bytes := ("    let r0000239b: u32 = r00002399 ^ r0000239a;\n" : String).toByteArray.data.toList
theorem checked9019 : bytes9019=statementBytes 9115 (op9019.map lower) ∧ bytes9019.length=48 := by core033_kernel_decide
def op9020 : List WordIR.Op := [.rotr 9097 22]
def bytes9020 : Bytes := ("    let r0000239c: u32 = r00002389.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9020 : bytes9020=statementBytes 9116 (op9020.map lower) ∧ bytes9020.length=65 := by core033_kernel_decide
def op9021 : List WordIR.Op := [.bxor 9115 9116]
def bytes9021 : Bytes := ("    let r0000239d: u32 = r0000239b ^ r0000239c;\n" : String).toByteArray.data.toList
theorem checked9021 : bytes9021=statementBytes 9117 (op9021.map lower) ∧ bytes9021.length=48 := by core033_kernel_decide
def op9022 : List WordIR.Op := [.band 9097 9070]
def bytes9022 : Bytes := ("    let r0000239e: u32 = r00002389 & r0000236e;\n" : String).toByteArray.data.toList
theorem checked9022 : bytes9022=statementBytes 9118 (op9022.map lower) ∧ bytes9022.length=48 := by core033_kernel_decide
def op9023 : List WordIR.Op := [.band 9097 9043]
def bytes9023 : Bytes := ("    let r0000239f: u32 = r00002389 & r00002353;\n" : String).toByteArray.data.toList
theorem checked9023 : bytes9023=statementBytes 9119 (op9023.map lower) ∧ bytes9023.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8960,op8961,op8962,op8963,op8964,op8965,op8966,op8967,op8968,op8969,op8970,op8971,op8972,op8973,op8974,op8975,op8976,op8977,op8978,op8979,op8980,op8981,op8982,op8983,op8984,op8985,op8986,op8987,op8988,op8989,op8990,op8991,op8992,op8993,op8994,op8995,op8996,op8997,op8998,op8999,op9000,op9001,op9002,op9003,op9004,op9005,op9006,op9007,op9008,op9009,op9010,op9011,op9012,op9013,op9014,op9015,op9016,op9017,op9018,op9019,op9020,op9021,op9022,op9023]
def chunks : List Bytes := [bytes8960,bytes8961,bytes8962,bytes8963,bytes8964,bytes8965,bytes8966,bytes8967,bytes8968,bytes8969,bytes8970,bytes8971,bytes8972,bytes8973,bytes8974,bytes8975,bytes8976,bytes8977,bytes8978,bytes8979,bytes8980,bytes8981,bytes8982,bytes8983,bytes8984,bytes8985,bytes8986,bytes8987,bytes8988,bytes8989,bytes8990,bytes8991,bytes8992,bytes8993,bytes8994,bytes8995,bytes8996,bytes8997,bytes8998,bytes8999,bytes9000,bytes9001,bytes9002,bytes9003,bytes9004,bytes9005,bytes9006,bytes9007,bytes9008,bytes9009,bytes9010,bytes9011,bytes9012,bytes9013,bytes9014,bytes9015,bytes9016,bytes9017,bytes9018,bytes9019,bytes9020,bytes9021,bytes9022,bytes9023]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9056 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8960.1 (.cons _ _ _ _ _ checked8961.1 (.cons _ _ _ _ _ checked8962.1 (.cons _ _ _ _ _ checked8963.1 (.cons _ _ _ _ _ checked8964.1 (.cons _ _ _ _ _ checked8965.1 (.cons _ _ _ _ _ checked8966.1 (.cons _ _ _ _ _ checked8967.1 (.cons _ _ _ _ _ checked8968.1 (.cons _ _ _ _ _ checked8969.1 (.cons _ _ _ _ _ checked8970.1 (.cons _ _ _ _ _ checked8971.1 (.cons _ _ _ _ _ checked8972.1 (.cons _ _ _ _ _ checked8973.1 (.cons _ _ _ _ _ checked8974.1 (.cons _ _ _ _ _ checked8975.1 (.cons _ _ _ _ _ checked8976.1 (.cons _ _ _ _ _ checked8977.1 (.cons _ _ _ _ _ checked8978.1 (.cons _ _ _ _ _ checked8979.1 (.cons _ _ _ _ _ checked8980.1 (.cons _ _ _ _ _ checked8981.1 (.cons _ _ _ _ _ checked8982.1 (.cons _ _ _ _ _ checked8983.1 (.cons _ _ _ _ _ checked8984.1 (.cons _ _ _ _ _ checked8985.1 (.cons _ _ _ _ _ checked8986.1 (.cons _ _ _ _ _ checked8987.1 (.cons _ _ _ _ _ checked8988.1 (.cons _ _ _ _ _ checked8989.1 (.cons _ _ _ _ _ checked8990.1 (.cons _ _ _ _ _ checked8991.1 (.cons _ _ _ _ _ checked8992.1 (.cons _ _ _ _ _ checked8993.1 (.cons _ _ _ _ _ checked8994.1 (.cons _ _ _ _ _ checked8995.1 (.cons _ _ _ _ _ checked8996.1 (.cons _ _ _ _ _ checked8997.1 (.cons _ _ _ _ _ checked8998.1 (.cons _ _ _ _ _ checked8999.1 (.cons _ _ _ _ _ checked9000.1 (.cons _ _ _ _ _ checked9001.1 (.cons _ _ _ _ _ checked9002.1 (.cons _ _ _ _ _ checked9003.1 (.cons _ _ _ _ _ checked9004.1 (.cons _ _ _ _ _ checked9005.1 (.cons _ _ _ _ _ checked9006.1 (.cons _ _ _ _ _ checked9007.1 (.cons _ _ _ _ _ checked9008.1 (.cons _ _ _ _ _ checked9009.1 (.cons _ _ _ _ _ checked9010.1 (.cons _ _ _ _ _ checked9011.1 (.cons _ _ _ _ _ checked9012.1 (.cons _ _ _ _ _ checked9013.1 (.cons _ _ _ _ _ checked9014.1 (.cons _ _ _ _ _ checked9015.1 (.cons _ _ _ _ _ checked9016.1 (.cons _ _ _ _ _ checked9017.1 (.cons _ _ _ _ _ checked9018.1 (.cons _ _ _ _ _ checked9019.1 (.cons _ _ _ _ _ checked9020.1 (.cons _ _ _ _ _ checked9021.1 (.cons _ _ _ _ _ checked9022.1 (.cons _ _ _ _ _ checked9023.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9056 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3476 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8960.2,checked8961.2,checked8962.2,checked8963.2,checked8964.2,checked8965.2,checked8966.2,checked8967.2,checked8968.2,checked8969.2,checked8970.2,checked8971.2,checked8972.2,checked8973.2,checked8974.2,checked8975.2,checked8976.2,checked8977.2,checked8978.2,checked8979.2,checked8980.2,checked8981.2,checked8982.2,checked8983.2,checked8984.2,checked8985.2,checked8986.2,checked8987.2,checked8988.2,checked8989.2,checked8990.2,checked8991.2,checked8992.2,checked8993.2,checked8994.2,checked8995.2,checked8996.2,checked8997.2,checked8998.2,checked8999.2,checked9000.2,checked9001.2,checked9002.2,checked9003.2,checked9004.2,checked9005.2,checked9006.2,checked9007.2,checked9008.2,checked9009.2,checked9010.2,checked9011.2,checked9012.2,checked9013.2,checked9014.2,checked9015.2,checked9016.2,checked9017.2,checked9018.2,checked9019.2,checked9020.2,checked9021.2,checked9022.2,checked9023.2]
  decide
end ArtifactPairedPathRoundGroup140
