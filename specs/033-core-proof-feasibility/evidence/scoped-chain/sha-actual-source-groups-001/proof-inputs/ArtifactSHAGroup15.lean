import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op960 : List WordIR.Op := [.badd 982 983]
def bytes960 : Bytes := ("    let r000003d8: u32 = r000003d6.wrapping_add(r000003d7);\n" : String).toByteArray.data.toList
theorem checked960 : bytes960=statementBytes 984 (op960.map lower) ∧ bytes960.length=60 := by core033_kernel_decide
def op961 : List WordIR.Op := [.badd 984 20]
def bytes961 : Bytes := ("    let r000003d9: u32 = r000003d8.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked961 : bytes961=statementBytes 985 (op961.map lower) ∧ bytes961.length=60 := by core033_kernel_decide
def op962 : List WordIR.Op := [.rotr 970 2]
def bytes962 : Bytes := ("    let r000003da: u32 = r000003ca.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked962 : bytes962=statementBytes 986 (op962.map lower) ∧ bytes962.length=65 := by core033_kernel_decide
def op963 : List WordIR.Op := [.rotr 970 13]
def bytes963 : Bytes := ("    let r000003db: u32 = r000003ca.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked963 : bytes963=statementBytes 987 (op963.map lower) ∧ bytes963.length=65 := by core033_kernel_decide
def op964 : List WordIR.Op := [.bxor 986 987]
def bytes964 : Bytes := ("    let r000003dc: u32 = r000003da ^ r000003db;\n" : String).toByteArray.data.toList
theorem checked964 : bytes964=statementBytes 988 (op964.map lower) ∧ bytes964.length=48 := by core033_kernel_decide
def op965 : List WordIR.Op := [.rotr 970 22]
def bytes965 : Bytes := ("    let r000003dd: u32 = r000003ca.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked965 : bytes965=statementBytes 989 (op965.map lower) ∧ bytes965.length=65 := by core033_kernel_decide
def op966 : List WordIR.Op := [.bxor 988 989]
def bytes966 : Bytes := ("    let r000003de: u32 = r000003dc ^ r000003dd;\n" : String).toByteArray.data.toList
theorem checked966 : bytes966=statementBytes 990 (op966.map lower) ∧ bytes966.length=48 := by core033_kernel_decide
def op967 : List WordIR.Op := [.band 970 943]
def bytes967 : Bytes := ("    let r000003df: u32 = r000003ca & r000003af;\n" : String).toByteArray.data.toList
theorem checked967 : bytes967=statementBytes 991 (op967.map lower) ∧ bytes967.length=48 := by core033_kernel_decide
def op968 : List WordIR.Op := [.band 970 916]
def bytes968 : Bytes := ("    let r000003e0: u32 = r000003ca & r00000394;\n" : String).toByteArray.data.toList
theorem checked968 : bytes968=statementBytes 992 (op968.map lower) ∧ bytes968.length=48 := by core033_kernel_decide
def op969 : List WordIR.Op := [.bxor 991 992]
def bytes969 : Bytes := ("    let r000003e1: u32 = r000003df ^ r000003e0;\n" : String).toByteArray.data.toList
theorem checked969 : bytes969=statementBytes 993 (op969.map lower) ∧ bytes969.length=48 := by core033_kernel_decide
def op970 : List WordIR.Op := [.band 943 916]
def bytes970 : Bytes := ("    let r000003e2: u32 = r000003af & r00000394;\n" : String).toByteArray.data.toList
theorem checked970 : bytes970=statementBytes 994 (op970.map lower) ∧ bytes970.length=48 := by core033_kernel_decide
def op971 : List WordIR.Op := [.bxor 993 994]
def bytes971 : Bytes := ("    let r000003e3: u32 = r000003e1 ^ r000003e2;\n" : String).toByteArray.data.toList
theorem checked971 : bytes971=statementBytes 995 (op971.map lower) ∧ bytes971.length=48 := by core033_kernel_decide
def op972 : List WordIR.Op := [.badd 990 995]
def bytes972 : Bytes := ("    let r000003e4: u32 = r000003de.wrapping_add(r000003e3);\n" : String).toByteArray.data.toList
theorem checked972 : bytes972=statementBytes 996 (op972.map lower) ∧ bytes972.length=60 := by core033_kernel_decide
def op973 : List WordIR.Op := [.badd 985 996]
def bytes973 : Bytes := ("    let r000003e5: u32 = r000003d9.wrapping_add(r000003e4);\n" : String).toByteArray.data.toList
theorem checked973 : bytes973=statementBytes 997 (op973.map lower) ∧ bytes973.length=60 := by core033_kernel_decide
def op974 : List WordIR.Op := [.badd 889 985]
def bytes974 : Bytes := ("    let r000003e6: u32 = r00000379.wrapping_add(r000003d9);\n" : String).toByteArray.data.toList
theorem checked974 : bytes974=statementBytes 998 (op974.map lower) ∧ bytes974.length=60 := by core033_kernel_decide
def op975 : List WordIR.Op := [.rotr 998 6]
def bytes975 : Bytes := ("    let r000003e7: u32 = r000003e6.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked975 : bytes975=statementBytes 999 (op975.map lower) ∧ bytes975.length=65 := by core033_kernel_decide
def op976 : List WordIR.Op := [.rotr 998 11]
def bytes976 : Bytes := ("    let r000003e8: u32 = r000003e6.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked976 : bytes976=statementBytes 1000 (op976.map lower) ∧ bytes976.length=65 := by core033_kernel_decide
def op977 : List WordIR.Op := [.bxor 999 1000]
def bytes977 : Bytes := ("    let r000003e9: u32 = r000003e7 ^ r000003e8;\n" : String).toByteArray.data.toList
theorem checked977 : bytes977=statementBytes 1001 (op977.map lower) ∧ bytes977.length=48 := by core033_kernel_decide
def op978 : List WordIR.Op := [.rotr 998 25]
def bytes978 : Bytes := ("    let r000003ea: u32 = r000003e6.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked978 : bytes978=statementBytes 1002 (op978.map lower) ∧ bytes978.length=65 := by core033_kernel_decide
def op979 : List WordIR.Op := [.bxor 1001 1002]
def bytes979 : Bytes := ("    let r000003eb: u32 = r000003e9 ^ r000003ea;\n" : String).toByteArray.data.toList
theorem checked979 : bytes979=statementBytes 1003 (op979.map lower) ∧ bytes979.length=48 := by core033_kernel_decide
def op980 : List WordIR.Op := [.badd 917 1003]
def bytes980 : Bytes := ("    let r000003ec: u32 = r00000395.wrapping_add(r000003eb);\n" : String).toByteArray.data.toList
theorem checked980 : bytes980=statementBytes 1004 (op980.map lower) ∧ bytes980.length=60 := by core033_kernel_decide
def op981 : List WordIR.Op := [.band 998 971]
def bytes981 : Bytes := ("    let r000003ed: u32 = r000003e6 & r000003cb;\n" : String).toByteArray.data.toList
theorem checked981 : bytes981=statementBytes 1005 (op981.map lower) ∧ bytes981.length=48 := by core033_kernel_decide
def op982 : List WordIR.Op := [.bnot 998]
def bytes982 : Bytes := ("    let r000003ee: u32 = !r000003e6;\n" : String).toByteArray.data.toList
theorem checked982 : bytes982=statementBytes 1006 (op982.map lower) ∧ bytes982.length=37 := by core033_kernel_decide
def op983 : List WordIR.Op := [.band 1006 944]
def bytes983 : Bytes := ("    let r000003ef: u32 = r000003ee & r000003b0;\n" : String).toByteArray.data.toList
theorem checked983 : bytes983=statementBytes 1007 (op983.map lower) ∧ bytes983.length=48 := by core033_kernel_decide
def op984 : List WordIR.Op := [.bxor 1005 1007]
def bytes984 : Bytes := ("    let r000003f0: u32 = r000003ed ^ r000003ef;\n" : String).toByteArray.data.toList
theorem checked984 : bytes984=statementBytes 1008 (op984.map lower) ∧ bytes984.length=48 := by core033_kernel_decide
def op985 : List WordIR.Op := [.badd 1004 1008]
def bytes985 : Bytes := ("    let r000003f1: u32 = r000003ec.wrapping_add(r000003f0);\n" : String).toByteArray.data.toList
theorem checked985 : bytes985=statementBytes 1009 (op985.map lower) ∧ bytes985.length=60 := by core033_kernel_decide
def op986 : List WordIR.Op := [.literal (BitVec.ofNat 32 2162078206)]
def bytes986 : Bytes := ("    let r000003f2: u32 = 0x80deb1fe_u32;\n" : String).toByteArray.data.toList
theorem checked986 : bytes986=statementBytes 1010 (op986.map lower) ∧ bytes986.length=41 := by core033_kernel_decide
def op987 : List WordIR.Op := [.badd 1009 1010]
def bytes987 : Bytes := ("    let r000003f3: u32 = r000003f1.wrapping_add(r000003f2);\n" : String).toByteArray.data.toList
theorem checked987 : bytes987=statementBytes 1011 (op987.map lower) ∧ bytes987.length=60 := by core033_kernel_decide
def op988 : List WordIR.Op := [.badd 1011 21]
def bytes988 : Bytes := ("    let r000003f4: u32 = r000003f3.wrapping_add(r00000015);\n" : String).toByteArray.data.toList
theorem checked988 : bytes988=statementBytes 1012 (op988.map lower) ∧ bytes988.length=60 := by core033_kernel_decide
def op989 : List WordIR.Op := [.rotr 997 2]
def bytes989 : Bytes := ("    let r000003f5: u32 = r000003e5.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked989 : bytes989=statementBytes 1013 (op989.map lower) ∧ bytes989.length=65 := by core033_kernel_decide
def op990 : List WordIR.Op := [.rotr 997 13]
def bytes990 : Bytes := ("    let r000003f6: u32 = r000003e5.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked990 : bytes990=statementBytes 1014 (op990.map lower) ∧ bytes990.length=65 := by core033_kernel_decide
def op991 : List WordIR.Op := [.bxor 1013 1014]
def bytes991 : Bytes := ("    let r000003f7: u32 = r000003f5 ^ r000003f6;\n" : String).toByteArray.data.toList
theorem checked991 : bytes991=statementBytes 1015 (op991.map lower) ∧ bytes991.length=48 := by core033_kernel_decide
def op992 : List WordIR.Op := [.rotr 997 22]
def bytes992 : Bytes := ("    let r000003f8: u32 = r000003e5.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked992 : bytes992=statementBytes 1016 (op992.map lower) ∧ bytes992.length=65 := by core033_kernel_decide
def op993 : List WordIR.Op := [.bxor 1015 1016]
def bytes993 : Bytes := ("    let r000003f9: u32 = r000003f7 ^ r000003f8;\n" : String).toByteArray.data.toList
theorem checked993 : bytes993=statementBytes 1017 (op993.map lower) ∧ bytes993.length=48 := by core033_kernel_decide
def op994 : List WordIR.Op := [.band 997 970]
def bytes994 : Bytes := ("    let r000003fa: u32 = r000003e5 & r000003ca;\n" : String).toByteArray.data.toList
theorem checked994 : bytes994=statementBytes 1018 (op994.map lower) ∧ bytes994.length=48 := by core033_kernel_decide
def op995 : List WordIR.Op := [.band 997 943]
def bytes995 : Bytes := ("    let r000003fb: u32 = r000003e5 & r000003af;\n" : String).toByteArray.data.toList
theorem checked995 : bytes995=statementBytes 1019 (op995.map lower) ∧ bytes995.length=48 := by core033_kernel_decide
def op996 : List WordIR.Op := [.bxor 1018 1019]
def bytes996 : Bytes := ("    let r000003fc: u32 = r000003fa ^ r000003fb;\n" : String).toByteArray.data.toList
theorem checked996 : bytes996=statementBytes 1020 (op996.map lower) ∧ bytes996.length=48 := by core033_kernel_decide
def op997 : List WordIR.Op := [.band 970 943]
def bytes997 : Bytes := ("    let r000003fd: u32 = r000003ca & r000003af;\n" : String).toByteArray.data.toList
theorem checked997 : bytes997=statementBytes 1021 (op997.map lower) ∧ bytes997.length=48 := by core033_kernel_decide
def op998 : List WordIR.Op := [.bxor 1020 1021]
def bytes998 : Bytes := ("    let r000003fe: u32 = r000003fc ^ r000003fd;\n" : String).toByteArray.data.toList
theorem checked998 : bytes998=statementBytes 1022 (op998.map lower) ∧ bytes998.length=48 := by core033_kernel_decide
def op999 : List WordIR.Op := [.badd 1017 1022]
def bytes999 : Bytes := ("    let r000003ff: u32 = r000003f9.wrapping_add(r000003fe);\n" : String).toByteArray.data.toList
theorem checked999 : bytes999=statementBytes 1023 (op999.map lower) ∧ bytes999.length=60 := by core033_kernel_decide
def op1000 : List WordIR.Op := [.badd 1012 1023]
def bytes1000 : Bytes := ("    let r00000400: u32 = r000003f4.wrapping_add(r000003ff);\n" : String).toByteArray.data.toList
theorem checked1000 : bytes1000=statementBytes 1024 (op1000.map lower) ∧ bytes1000.length=60 := by core033_kernel_decide
def op1001 : List WordIR.Op := [.badd 916 1012]
def bytes1001 : Bytes := ("    let r00000401: u32 = r00000394.wrapping_add(r000003f4);\n" : String).toByteArray.data.toList
theorem checked1001 : bytes1001=statementBytes 1025 (op1001.map lower) ∧ bytes1001.length=60 := by core033_kernel_decide
def op1002 : List WordIR.Op := [.rotr 1025 6]
def bytes1002 : Bytes := ("    let r00000402: u32 = r00000401.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1002 : bytes1002=statementBytes 1026 (op1002.map lower) ∧ bytes1002.length=65 := by core033_kernel_decide
def op1003 : List WordIR.Op := [.rotr 1025 11]
def bytes1003 : Bytes := ("    let r00000403: u32 = r00000401.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1003 : bytes1003=statementBytes 1027 (op1003.map lower) ∧ bytes1003.length=65 := by core033_kernel_decide
def op1004 : List WordIR.Op := [.bxor 1026 1027]
def bytes1004 : Bytes := ("    let r00000404: u32 = r00000402 ^ r00000403;\n" : String).toByteArray.data.toList
theorem checked1004 : bytes1004=statementBytes 1028 (op1004.map lower) ∧ bytes1004.length=48 := by core033_kernel_decide
def op1005 : List WordIR.Op := [.rotr 1025 25]
def bytes1005 : Bytes := ("    let r00000405: u32 = r00000401.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1005 : bytes1005=statementBytes 1029 (op1005.map lower) ∧ bytes1005.length=65 := by core033_kernel_decide
def op1006 : List WordIR.Op := [.bxor 1028 1029]
def bytes1006 : Bytes := ("    let r00000406: u32 = r00000404 ^ r00000405;\n" : String).toByteArray.data.toList
theorem checked1006 : bytes1006=statementBytes 1030 (op1006.map lower) ∧ bytes1006.length=48 := by core033_kernel_decide
def op1007 : List WordIR.Op := [.badd 944 1030]
def bytes1007 : Bytes := ("    let r00000407: u32 = r000003b0.wrapping_add(r00000406);\n" : String).toByteArray.data.toList
theorem checked1007 : bytes1007=statementBytes 1031 (op1007.map lower) ∧ bytes1007.length=60 := by core033_kernel_decide
def op1008 : List WordIR.Op := [.band 1025 998]
def bytes1008 : Bytes := ("    let r00000408: u32 = r00000401 & r000003e6;\n" : String).toByteArray.data.toList
theorem checked1008 : bytes1008=statementBytes 1032 (op1008.map lower) ∧ bytes1008.length=48 := by core033_kernel_decide
def op1009 : List WordIR.Op := [.bnot 1025]
def bytes1009 : Bytes := ("    let r00000409: u32 = !r00000401;\n" : String).toByteArray.data.toList
theorem checked1009 : bytes1009=statementBytes 1033 (op1009.map lower) ∧ bytes1009.length=37 := by core033_kernel_decide
def op1010 : List WordIR.Op := [.band 1033 971]
def bytes1010 : Bytes := ("    let r0000040a: u32 = r00000409 & r000003cb;\n" : String).toByteArray.data.toList
theorem checked1010 : bytes1010=statementBytes 1034 (op1010.map lower) ∧ bytes1010.length=48 := by core033_kernel_decide
def op1011 : List WordIR.Op := [.bxor 1032 1034]
def bytes1011 : Bytes := ("    let r0000040b: u32 = r00000408 ^ r0000040a;\n" : String).toByteArray.data.toList
theorem checked1011 : bytes1011=statementBytes 1035 (op1011.map lower) ∧ bytes1011.length=48 := by core033_kernel_decide
def op1012 : List WordIR.Op := [.badd 1031 1035]
def bytes1012 : Bytes := ("    let r0000040c: u32 = r00000407.wrapping_add(r0000040b);\n" : String).toByteArray.data.toList
theorem checked1012 : bytes1012=statementBytes 1036 (op1012.map lower) ∧ bytes1012.length=60 := by core033_kernel_decide
def op1013 : List WordIR.Op := [.literal (BitVec.ofNat 32 2614888103)]
def bytes1013 : Bytes := ("    let r0000040d: u32 = 0x9bdc06a7_u32;\n" : String).toByteArray.data.toList
theorem checked1013 : bytes1013=statementBytes 1037 (op1013.map lower) ∧ bytes1013.length=41 := by core033_kernel_decide
def op1014 : List WordIR.Op := [.badd 1036 1037]
def bytes1014 : Bytes := ("    let r0000040e: u32 = r0000040c.wrapping_add(r0000040d);\n" : String).toByteArray.data.toList
theorem checked1014 : bytes1014=statementBytes 1038 (op1014.map lower) ∧ bytes1014.length=60 := by core033_kernel_decide
def op1015 : List WordIR.Op := [.badd 1038 22]
def bytes1015 : Bytes := ("    let r0000040f: u32 = r0000040e.wrapping_add(r00000016);\n" : String).toByteArray.data.toList
theorem checked1015 : bytes1015=statementBytes 1039 (op1015.map lower) ∧ bytes1015.length=60 := by core033_kernel_decide
def op1016 : List WordIR.Op := [.rotr 1024 2]
def bytes1016 : Bytes := ("    let r00000410: u32 = r00000400.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1016 : bytes1016=statementBytes 1040 (op1016.map lower) ∧ bytes1016.length=65 := by core033_kernel_decide
def op1017 : List WordIR.Op := [.rotr 1024 13]
def bytes1017 : Bytes := ("    let r00000411: u32 = r00000400.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1017 : bytes1017=statementBytes 1041 (op1017.map lower) ∧ bytes1017.length=65 := by core033_kernel_decide
def op1018 : List WordIR.Op := [.bxor 1040 1041]
def bytes1018 : Bytes := ("    let r00000412: u32 = r00000410 ^ r00000411;\n" : String).toByteArray.data.toList
theorem checked1018 : bytes1018=statementBytes 1042 (op1018.map lower) ∧ bytes1018.length=48 := by core033_kernel_decide
def op1019 : List WordIR.Op := [.rotr 1024 22]
def bytes1019 : Bytes := ("    let r00000413: u32 = r00000400.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1019 : bytes1019=statementBytes 1043 (op1019.map lower) ∧ bytes1019.length=65 := by core033_kernel_decide
def op1020 : List WordIR.Op := [.bxor 1042 1043]
def bytes1020 : Bytes := ("    let r00000414: u32 = r00000412 ^ r00000413;\n" : String).toByteArray.data.toList
theorem checked1020 : bytes1020=statementBytes 1044 (op1020.map lower) ∧ bytes1020.length=48 := by core033_kernel_decide
def op1021 : List WordIR.Op := [.band 1024 997]
def bytes1021 : Bytes := ("    let r00000415: u32 = r00000400 & r000003e5;\n" : String).toByteArray.data.toList
theorem checked1021 : bytes1021=statementBytes 1045 (op1021.map lower) ∧ bytes1021.length=48 := by core033_kernel_decide
def op1022 : List WordIR.Op := [.band 1024 970]
def bytes1022 : Bytes := ("    let r00000416: u32 = r00000400 & r000003ca;\n" : String).toByteArray.data.toList
theorem checked1022 : bytes1022=statementBytes 1046 (op1022.map lower) ∧ bytes1022.length=48 := by core033_kernel_decide
def op1023 : List WordIR.Op := [.bxor 1045 1046]
def bytes1023 : Bytes := ("    let r00000417: u32 = r00000415 ^ r00000416;\n" : String).toByteArray.data.toList
theorem checked1023 : bytes1023=statementBytes 1047 (op1023.map lower) ∧ bytes1023.length=48 := by core033_kernel_decide
def innerBlocks15 : List (List WordIR.Op) := [op960,op961,op962,op963,op964,op965,op966,op967,op968,op969,op970,op971,op972,op973,op974,op975,op976,op977,op978,op979,op980,op981,op982,op983,op984,op985,op986,op987,op988,op989,op990,op991,op992,op993,op994,op995,op996,op997,op998,op999,op1000,op1001,op1002,op1003,op1004,op1005,op1006,op1007,op1008,op1009,op1010,op1011,op1012,op1013,op1014,op1015,op1016,op1017,op1018,op1019,op1020,op1021,op1022,op1023]
def innerBytes15 : List Bytes := [bytes960,bytes961,bytes962,bytes963,bytes964,bytes965,bytes966,bytes967,bytes968,bytes969,bytes970,bytes971,bytes972,bytes973,bytes974,bytes975,bytes976,bytes977,bytes978,bytes979,bytes980,bytes981,bytes982,bytes983,bytes984,bytes985,bytes986,bytes987,bytes988,bytes989,bytes990,bytes991,bytes992,bytes993,bytes994,bytes995,bytes996,bytes997,bytes998,bytes999,bytes1000,bytes1001,bytes1002,bytes1003,bytes1004,bytes1005,bytes1006,bytes1007,bytes1008,bytes1009,bytes1010,bytes1011,bytes1012,bytes1013,bytes1014,bytes1015,bytes1016,bytes1017,bytes1018,bytes1019,bytes1020,bytes1021,bytes1022,bytes1023]
def partOps15 : List WordIR.Op := innerBlocks15.flatten
def partBytes15 : Bytes := innerBytes15.flatten
theorem partChain15 : BlockChain 984 innerBlocks15 innerBytes15 := by
  unfold innerBlocks15 innerBytes15
  exact (.cons _ _ _ _ _ checked960.1 (.cons _ _ _ _ _ checked961.1 (.cons _ _ _ _ _ checked962.1 (.cons _ _ _ _ _ checked963.1 (.cons _ _ _ _ _ checked964.1 (.cons _ _ _ _ _ checked965.1 (.cons _ _ _ _ _ checked966.1 (.cons _ _ _ _ _ checked967.1 (.cons _ _ _ _ _ checked968.1 (.cons _ _ _ _ _ checked969.1 (.cons _ _ _ _ _ checked970.1 (.cons _ _ _ _ _ checked971.1 (.cons _ _ _ _ _ checked972.1 (.cons _ _ _ _ _ checked973.1 (.cons _ _ _ _ _ checked974.1 (.cons _ _ _ _ _ checked975.1 (.cons _ _ _ _ _ checked976.1 (.cons _ _ _ _ _ checked977.1 (.cons _ _ _ _ _ checked978.1 (.cons _ _ _ _ _ checked979.1 (.cons _ _ _ _ _ checked980.1 (.cons _ _ _ _ _ checked981.1 (.cons _ _ _ _ _ checked982.1 (.cons _ _ _ _ _ checked983.1 (.cons _ _ _ _ _ checked984.1 (.cons _ _ _ _ _ checked985.1 (.cons _ _ _ _ _ checked986.1 (.cons _ _ _ _ _ checked987.1 (.cons _ _ _ _ _ checked988.1 (.cons _ _ _ _ _ checked989.1 (.cons _ _ _ _ _ checked990.1 (.cons _ _ _ _ _ checked991.1 (.cons _ _ _ _ _ checked992.1 (.cons _ _ _ _ _ checked993.1 (.cons _ _ _ _ _ checked994.1 (.cons _ _ _ _ _ checked995.1 (.cons _ _ _ _ _ checked996.1 (.cons _ _ _ _ _ checked997.1 (.cons _ _ _ _ _ checked998.1 (.cons _ _ _ _ _ checked999.1 (.cons _ _ _ _ _ checked1000.1 (.cons _ _ _ _ _ checked1001.1 (.cons _ _ _ _ _ checked1002.1 (.cons _ _ _ _ _ checked1003.1 (.cons _ _ _ _ _ checked1004.1 (.cons _ _ _ _ _ checked1005.1 (.cons _ _ _ _ _ checked1006.1 (.cons _ _ _ _ _ checked1007.1 (.cons _ _ _ _ _ checked1008.1 (.cons _ _ _ _ _ checked1009.1 (.cons _ _ _ _ _ checked1010.1 (.cons _ _ _ _ _ checked1011.1 (.cons _ _ _ _ _ checked1012.1 (.cons _ _ _ _ _ checked1013.1 (.cons _ _ _ _ _ checked1014.1 (.cons _ _ _ _ _ checked1015.1 (.cons _ _ _ _ _ checked1016.1 (.cons _ _ _ _ _ checked1017.1 (.cons _ _ _ _ _ checked1018.1 (.cons _ _ _ _ _ checked1019.1 (.cons _ _ _ _ _ checked1020.1 (.cons _ _ _ _ _ checked1021.1 (.cons _ _ _ _ _ checked1022.1 (.cons _ _ _ _ _ checked1023.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked15 : partBytes15=statementBytes 984 (partOps15.map lower) ∧ partBytes15.length=3483 := by
  constructor
  · exact (chain_exact partChain15).trans (body_exact innerBlocks15 984)
  · simp only [partBytes15,WordSource.chunk_sizes_exact,innerBytes15,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked960.2,checked961.2,checked962.2,checked963.2,checked964.2,checked965.2,checked966.2,checked967.2,checked968.2,checked969.2,checked970.2,checked971.2,checked972.2,checked973.2,checked974.2,checked975.2,checked976.2,checked977.2,checked978.2,checked979.2,checked980.2,checked981.2,checked982.2,checked983.2,checked984.2,checked985.2,checked986.2,checked987.2,checked988.2,checked989.2,checked990.2,checked991.2,checked992.2,checked993.2,checked994.2,checked995.2,checked996.2,checked997.2,checked998.2,checked999.2,checked1000.2,checked1001.2,checked1002.2,checked1003.2,checked1004.2,checked1005.2,checked1006.2,checked1007.2,checked1008.2,checked1009.2,checked1010.2,checked1011.2,checked1012.2,checked1013.2,checked1014.2,checked1015.2,checked1016.2,checked1017.2,checked1018.2,checked1019.2,checked1020.2,checked1021.2,checked1022.2,checked1023.2]
theorem partLength15 : partOps15.length=64 := by
  simp only [partOps15,innerBlocks15,op960,op961,op962,op963,op964,op965,op966,op967,op968,op969,op970,op971,op972,op973,op974,op975,op976,op977,op978,op979,op980,op981,op982,op983,op984,op985,op986,op987,op988,op989,op990,op991,op992,op993,op994,op995,op996,op997,op998,op999,op1000,op1001,op1002,op1003,op1004,op1005,op1006,op1007,op1008,op1009,op1010,op1011,op1012,op1013,op1014,op1015,op1016,op1017,op1018,op1019,op1020,op1021,op1022,op1023,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
