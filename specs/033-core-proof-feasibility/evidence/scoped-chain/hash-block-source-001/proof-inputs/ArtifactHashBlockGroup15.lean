import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup15
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op960 : List WordIR.Op := [.shr 56 8]
def bytes960 : Bytes := ("    let r00000408: u32 = r00000038 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked960 : bytes960=statementBytes 1032 (op960.map lower) ∧ bytes960.length=54 := by core033_kernel_decide
def op961 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes961 : Bytes := ("    let r00000409: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked961 : bytes961=statementBytes 1033 (op961.map lower) ∧ bytes961.length=41 := by core033_kernel_decide
def op962 : List WordIR.Op := [.bnot 1033]
def bytes962 : Bytes := ("    let r0000040a: u32 = !r00000409;\n" : String).toByteArray.data.toList
theorem checked962 : bytes962=statementBytes 1034 (op962.map lower) ∧ bytes962.length=37 := by core033_kernel_decide
def op963 : List WordIR.Op := [.band 1032 1034]
def bytes963 : Bytes := ("    let r0000040b: u32 = r00000408 & r0000040a;\n" : String).toByteArray.data.toList
theorem checked963 : bytes963=statementBytes 1035 (op963.map lower) ∧ bytes963.length=48 := by core033_kernel_decide
def op964 : List WordIR.Op := [.shr 56 8]
def bytes964 : Bytes := ("    let r0000040c: u32 = r00000038 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked964 : bytes964=statementBytes 1036 (op964.map lower) ∧ bytes964.length=54 := by core033_kernel_decide
def op965 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes965 : Bytes := ("    let r0000040d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked965 : bytes965=statementBytes 1037 (op965.map lower) ∧ bytes965.length=41 := by core033_kernel_decide
def op966 : List WordIR.Op := [.bnot 1037]
def bytes966 : Bytes := ("    let r0000040e: u32 = !r0000040d;\n" : String).toByteArray.data.toList
theorem checked966 : bytes966=statementBytes 1038 (op966.map lower) ∧ bytes966.length=37 := by core033_kernel_decide
def op967 : List WordIR.Op := [.bxor 1036 1038]
def bytes967 : Bytes := ("    let r0000040f: u32 = r0000040c ^ r0000040e;\n" : String).toByteArray.data.toList
theorem checked967 : bytes967=statementBytes 1039 (op967.map lower) ∧ bytes967.length=48 := by core033_kernel_decide
def op968 : List WordIR.Op := [.shr 56 8]
def bytes968 : Bytes := ("    let r00000410: u32 = r00000038 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked968 : bytes968=statementBytes 1040 (op968.map lower) ∧ bytes968.length=54 := by core033_kernel_decide
def op969 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes969 : Bytes := ("    let r00000411: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked969 : bytes969=statementBytes 1041 (op969.map lower) ∧ bytes969.length=41 := by core033_kernel_decide
def op970 : List WordIR.Op := [.bnot 1041]
def bytes970 : Bytes := ("    let r00000412: u32 = !r00000411;\n" : String).toByteArray.data.toList
theorem checked970 : bytes970=statementBytes 1042 (op970.map lower) ∧ bytes970.length=37 := by core033_kernel_decide
def op971 : List WordIR.Op := [.badd 1040 1042]
def bytes971 : Bytes := ("    let r00000413: u32 = r00000410.wrapping_add(r00000412);\n" : String).toByteArray.data.toList
theorem checked971 : bytes971=statementBytes 1043 (op971.map lower) ∧ bytes971.length=60 := by core033_kernel_decide
def op972 : List WordIR.Op := [.bnot 1043]
def bytes972 : Bytes := ("    let r00000414: u32 = !r00000413;\n" : String).toByteArray.data.toList
theorem checked972 : bytes972=statementBytes 1044 (op972.map lower) ∧ bytes972.length=37 := by core033_kernel_decide
def op973 : List WordIR.Op := [.band 1039 1044]
def bytes973 : Bytes := ("    let r00000415: u32 = r0000040f & r00000414;\n" : String).toByteArray.data.toList
theorem checked973 : bytes973=statementBytes 1045 (op973.map lower) ∧ bytes973.length=48 := by core033_kernel_decide
def op974 : List WordIR.Op := [.bxor 1035 1045]
def bytes974 : Bytes := ("    let r00000416: u32 = r0000040b ^ r00000415;\n" : String).toByteArray.data.toList
theorem checked974 : bytes974=statementBytes 1046 (op974.map lower) ∧ bytes974.length=48 := by core033_kernel_decide
def op975 : List WordIR.Op := [.shr 1046 31]
def bytes975 : Bytes := ("    let r00000417: u32 = r00000416 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked975 : bytes975=statementBytes 1047 (op975.map lower) ∧ bytes975.length=54 := by core033_kernel_decide
def op976 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes976 : Bytes := ("    let r00000418: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked976 : bytes976=statementBytes 1048 (op976.map lower) ∧ bytes976.length=41 := by core033_kernel_decide
def op977 : List WordIR.Op := [.bxor 1047 1048]
def bytes977 : Bytes := ("    let r00000419: u32 = r00000417 ^ r00000418;\n" : String).toByteArray.data.toList
theorem checked977 : bytes977=statementBytes 1049 (op977.map lower) ∧ bytes977.length=48 := by core033_kernel_decide
def op978 : List WordIR.Op := [.shr 57 8]
def bytes978 : Bytes := ("    let r0000041a: u32 = r00000039 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked978 : bytes978=statementBytes 1050 (op978.map lower) ∧ bytes978.length=54 := by core033_kernel_decide
def op979 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes979 : Bytes := ("    let r0000041b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked979 : bytes979=statementBytes 1051 (op979.map lower) ∧ bytes979.length=41 := by core033_kernel_decide
def op980 : List WordIR.Op := [.bnot 1051]
def bytes980 : Bytes := ("    let r0000041c: u32 = !r0000041b;\n" : String).toByteArray.data.toList
theorem checked980 : bytes980=statementBytes 1052 (op980.map lower) ∧ bytes980.length=37 := by core033_kernel_decide
def op981 : List WordIR.Op := [.band 1050 1052]
def bytes981 : Bytes := ("    let r0000041d: u32 = r0000041a & r0000041c;\n" : String).toByteArray.data.toList
theorem checked981 : bytes981=statementBytes 1053 (op981.map lower) ∧ bytes981.length=48 := by core033_kernel_decide
def op982 : List WordIR.Op := [.shr 57 8]
def bytes982 : Bytes := ("    let r0000041e: u32 = r00000039 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked982 : bytes982=statementBytes 1054 (op982.map lower) ∧ bytes982.length=54 := by core033_kernel_decide
def op983 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes983 : Bytes := ("    let r0000041f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked983 : bytes983=statementBytes 1055 (op983.map lower) ∧ bytes983.length=41 := by core033_kernel_decide
def op984 : List WordIR.Op := [.bnot 1055]
def bytes984 : Bytes := ("    let r00000420: u32 = !r0000041f;\n" : String).toByteArray.data.toList
theorem checked984 : bytes984=statementBytes 1056 (op984.map lower) ∧ bytes984.length=37 := by core033_kernel_decide
def op985 : List WordIR.Op := [.bxor 1054 1056]
def bytes985 : Bytes := ("    let r00000421: u32 = r0000041e ^ r00000420;\n" : String).toByteArray.data.toList
theorem checked985 : bytes985=statementBytes 1057 (op985.map lower) ∧ bytes985.length=48 := by core033_kernel_decide
def op986 : List WordIR.Op := [.shr 57 8]
def bytes986 : Bytes := ("    let r00000422: u32 = r00000039 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked986 : bytes986=statementBytes 1058 (op986.map lower) ∧ bytes986.length=54 := by core033_kernel_decide
def op987 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes987 : Bytes := ("    let r00000423: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked987 : bytes987=statementBytes 1059 (op987.map lower) ∧ bytes987.length=41 := by core033_kernel_decide
def op988 : List WordIR.Op := [.bnot 1059]
def bytes988 : Bytes := ("    let r00000424: u32 = !r00000423;\n" : String).toByteArray.data.toList
theorem checked988 : bytes988=statementBytes 1060 (op988.map lower) ∧ bytes988.length=37 := by core033_kernel_decide
def op989 : List WordIR.Op := [.badd 1058 1060]
def bytes989 : Bytes := ("    let r00000425: u32 = r00000422.wrapping_add(r00000424);\n" : String).toByteArray.data.toList
theorem checked989 : bytes989=statementBytes 1061 (op989.map lower) ∧ bytes989.length=60 := by core033_kernel_decide
def op990 : List WordIR.Op := [.bnot 1061]
def bytes990 : Bytes := ("    let r00000426: u32 = !r00000425;\n" : String).toByteArray.data.toList
theorem checked990 : bytes990=statementBytes 1062 (op990.map lower) ∧ bytes990.length=37 := by core033_kernel_decide
def op991 : List WordIR.Op := [.band 1057 1062]
def bytes991 : Bytes := ("    let r00000427: u32 = r00000421 & r00000426;\n" : String).toByteArray.data.toList
theorem checked991 : bytes991=statementBytes 1063 (op991.map lower) ∧ bytes991.length=48 := by core033_kernel_decide
def op992 : List WordIR.Op := [.bxor 1053 1063]
def bytes992 : Bytes := ("    let r00000428: u32 = r0000041d ^ r00000427;\n" : String).toByteArray.data.toList
theorem checked992 : bytes992=statementBytes 1064 (op992.map lower) ∧ bytes992.length=48 := by core033_kernel_decide
def op993 : List WordIR.Op := [.shr 1064 31]
def bytes993 : Bytes := ("    let r00000429: u32 = r00000428 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked993 : bytes993=statementBytes 1065 (op993.map lower) ∧ bytes993.length=54 := by core033_kernel_decide
def op994 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes994 : Bytes := ("    let r0000042a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked994 : bytes994=statementBytes 1066 (op994.map lower) ∧ bytes994.length=41 := by core033_kernel_decide
def op995 : List WordIR.Op := [.bxor 1065 1066]
def bytes995 : Bytes := ("    let r0000042b: u32 = r00000429 ^ r0000042a;\n" : String).toByteArray.data.toList
theorem checked995 : bytes995=statementBytes 1067 (op995.map lower) ∧ bytes995.length=48 := by core033_kernel_decide
def op996 : List WordIR.Op := [.shr 58 8]
def bytes996 : Bytes := ("    let r0000042c: u32 = r0000003a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked996 : bytes996=statementBytes 1068 (op996.map lower) ∧ bytes996.length=54 := by core033_kernel_decide
def op997 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes997 : Bytes := ("    let r0000042d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked997 : bytes997=statementBytes 1069 (op997.map lower) ∧ bytes997.length=41 := by core033_kernel_decide
def op998 : List WordIR.Op := [.bnot 1069]
def bytes998 : Bytes := ("    let r0000042e: u32 = !r0000042d;\n" : String).toByteArray.data.toList
theorem checked998 : bytes998=statementBytes 1070 (op998.map lower) ∧ bytes998.length=37 := by core033_kernel_decide
def op999 : List WordIR.Op := [.band 1068 1070]
def bytes999 : Bytes := ("    let r0000042f: u32 = r0000042c & r0000042e;\n" : String).toByteArray.data.toList
theorem checked999 : bytes999=statementBytes 1071 (op999.map lower) ∧ bytes999.length=48 := by core033_kernel_decide
def op1000 : List WordIR.Op := [.shr 58 8]
def bytes1000 : Bytes := ("    let r00000430: u32 = r0000003a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1000 : bytes1000=statementBytes 1072 (op1000.map lower) ∧ bytes1000.length=54 := by core033_kernel_decide
def op1001 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1001 : Bytes := ("    let r00000431: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1001 : bytes1001=statementBytes 1073 (op1001.map lower) ∧ bytes1001.length=41 := by core033_kernel_decide
def op1002 : List WordIR.Op := [.bnot 1073]
def bytes1002 : Bytes := ("    let r00000432: u32 = !r00000431;\n" : String).toByteArray.data.toList
theorem checked1002 : bytes1002=statementBytes 1074 (op1002.map lower) ∧ bytes1002.length=37 := by core033_kernel_decide
def op1003 : List WordIR.Op := [.bxor 1072 1074]
def bytes1003 : Bytes := ("    let r00000433: u32 = r00000430 ^ r00000432;\n" : String).toByteArray.data.toList
theorem checked1003 : bytes1003=statementBytes 1075 (op1003.map lower) ∧ bytes1003.length=48 := by core033_kernel_decide
def op1004 : List WordIR.Op := [.shr 58 8]
def bytes1004 : Bytes := ("    let r00000434: u32 = r0000003a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1004 : bytes1004=statementBytes 1076 (op1004.map lower) ∧ bytes1004.length=54 := by core033_kernel_decide
def op1005 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1005 : Bytes := ("    let r00000435: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1005 : bytes1005=statementBytes 1077 (op1005.map lower) ∧ bytes1005.length=41 := by core033_kernel_decide
def op1006 : List WordIR.Op := [.bnot 1077]
def bytes1006 : Bytes := ("    let r00000436: u32 = !r00000435;\n" : String).toByteArray.data.toList
theorem checked1006 : bytes1006=statementBytes 1078 (op1006.map lower) ∧ bytes1006.length=37 := by core033_kernel_decide
def op1007 : List WordIR.Op := [.badd 1076 1078]
def bytes1007 : Bytes := ("    let r00000437: u32 = r00000434.wrapping_add(r00000436);\n" : String).toByteArray.data.toList
theorem checked1007 : bytes1007=statementBytes 1079 (op1007.map lower) ∧ bytes1007.length=60 := by core033_kernel_decide
def op1008 : List WordIR.Op := [.bnot 1079]
def bytes1008 : Bytes := ("    let r00000438: u32 = !r00000437;\n" : String).toByteArray.data.toList
theorem checked1008 : bytes1008=statementBytes 1080 (op1008.map lower) ∧ bytes1008.length=37 := by core033_kernel_decide
def op1009 : List WordIR.Op := [.band 1075 1080]
def bytes1009 : Bytes := ("    let r00000439: u32 = r00000433 & r00000438;\n" : String).toByteArray.data.toList
theorem checked1009 : bytes1009=statementBytes 1081 (op1009.map lower) ∧ bytes1009.length=48 := by core033_kernel_decide
def op1010 : List WordIR.Op := [.bxor 1071 1081]
def bytes1010 : Bytes := ("    let r0000043a: u32 = r0000042f ^ r00000439;\n" : String).toByteArray.data.toList
theorem checked1010 : bytes1010=statementBytes 1082 (op1010.map lower) ∧ bytes1010.length=48 := by core033_kernel_decide
def op1011 : List WordIR.Op := [.shr 1082 31]
def bytes1011 : Bytes := ("    let r0000043b: u32 = r0000043a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1011 : bytes1011=statementBytes 1083 (op1011.map lower) ∧ bytes1011.length=54 := by core033_kernel_decide
def op1012 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1012 : Bytes := ("    let r0000043c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1012 : bytes1012=statementBytes 1084 (op1012.map lower) ∧ bytes1012.length=41 := by core033_kernel_decide
def op1013 : List WordIR.Op := [.bxor 1083 1084]
def bytes1013 : Bytes := ("    let r0000043d: u32 = r0000043b ^ r0000043c;\n" : String).toByteArray.data.toList
theorem checked1013 : bytes1013=statementBytes 1085 (op1013.map lower) ∧ bytes1013.length=48 := by core033_kernel_decide
def op1014 : List WordIR.Op := [.shr 59 8]
def bytes1014 : Bytes := ("    let r0000043e: u32 = r0000003b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1014 : bytes1014=statementBytes 1086 (op1014.map lower) ∧ bytes1014.length=54 := by core033_kernel_decide
def op1015 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1015 : Bytes := ("    let r0000043f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1015 : bytes1015=statementBytes 1087 (op1015.map lower) ∧ bytes1015.length=41 := by core033_kernel_decide
def op1016 : List WordIR.Op := [.bnot 1087]
def bytes1016 : Bytes := ("    let r00000440: u32 = !r0000043f;\n" : String).toByteArray.data.toList
theorem checked1016 : bytes1016=statementBytes 1088 (op1016.map lower) ∧ bytes1016.length=37 := by core033_kernel_decide
def op1017 : List WordIR.Op := [.band 1086 1088]
def bytes1017 : Bytes := ("    let r00000441: u32 = r0000043e & r00000440;\n" : String).toByteArray.data.toList
theorem checked1017 : bytes1017=statementBytes 1089 (op1017.map lower) ∧ bytes1017.length=48 := by core033_kernel_decide
def op1018 : List WordIR.Op := [.shr 59 8]
def bytes1018 : Bytes := ("    let r00000442: u32 = r0000003b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1018 : bytes1018=statementBytes 1090 (op1018.map lower) ∧ bytes1018.length=54 := by core033_kernel_decide
def op1019 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1019 : Bytes := ("    let r00000443: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1019 : bytes1019=statementBytes 1091 (op1019.map lower) ∧ bytes1019.length=41 := by core033_kernel_decide
def op1020 : List WordIR.Op := [.bnot 1091]
def bytes1020 : Bytes := ("    let r00000444: u32 = !r00000443;\n" : String).toByteArray.data.toList
theorem checked1020 : bytes1020=statementBytes 1092 (op1020.map lower) ∧ bytes1020.length=37 := by core033_kernel_decide
def op1021 : List WordIR.Op := [.bxor 1090 1092]
def bytes1021 : Bytes := ("    let r00000445: u32 = r00000442 ^ r00000444;\n" : String).toByteArray.data.toList
theorem checked1021 : bytes1021=statementBytes 1093 (op1021.map lower) ∧ bytes1021.length=48 := by core033_kernel_decide
def op1022 : List WordIR.Op := [.shr 59 8]
def bytes1022 : Bytes := ("    let r00000446: u32 = r0000003b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1022 : bytes1022=statementBytes 1094 (op1022.map lower) ∧ bytes1022.length=54 := by core033_kernel_decide
def op1023 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1023 : Bytes := ("    let r00000447: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1023 : bytes1023=statementBytes 1095 (op1023.map lower) ∧ bytes1023.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op960,op961,op962,op963,op964,op965,op966,op967,op968,op969,op970,op971,op972,op973,op974,op975,op976,op977,op978,op979,op980,op981,op982,op983,op984,op985,op986,op987,op988,op989,op990,op991,op992,op993,op994,op995,op996,op997,op998,op999,op1000,op1001,op1002,op1003,op1004,op1005,op1006,op1007,op1008,op1009,op1010,op1011,op1012,op1013,op1014,op1015,op1016,op1017,op1018,op1019,op1020,op1021,op1022,op1023]
def chunks : List Bytes := [bytes960,bytes961,bytes962,bytes963,bytes964,bytes965,bytes966,bytes967,bytes968,bytes969,bytes970,bytes971,bytes972,bytes973,bytes974,bytes975,bytes976,bytes977,bytes978,bytes979,bytes980,bytes981,bytes982,bytes983,bytes984,bytes985,bytes986,bytes987,bytes988,bytes989,bytes990,bytes991,bytes992,bytes993,bytes994,bytes995,bytes996,bytes997,bytes998,bytes999,bytes1000,bytes1001,bytes1002,bytes1003,bytes1004,bytes1005,bytes1006,bytes1007,bytes1008,bytes1009,bytes1010,bytes1011,bytes1012,bytes1013,bytes1014,bytes1015,bytes1016,bytes1017,bytes1018,bytes1019,bytes1020,bytes1021,bytes1022,bytes1023]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1032 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked960.1 (.cons _ _ _ _ _ checked961.1 (.cons _ _ _ _ _ checked962.1 (.cons _ _ _ _ _ checked963.1 (.cons _ _ _ _ _ checked964.1 (.cons _ _ _ _ _ checked965.1 (.cons _ _ _ _ _ checked966.1 (.cons _ _ _ _ _ checked967.1 (.cons _ _ _ _ _ checked968.1 (.cons _ _ _ _ _ checked969.1 (.cons _ _ _ _ _ checked970.1 (.cons _ _ _ _ _ checked971.1 (.cons _ _ _ _ _ checked972.1 (.cons _ _ _ _ _ checked973.1 (.cons _ _ _ _ _ checked974.1 (.cons _ _ _ _ _ checked975.1 (.cons _ _ _ _ _ checked976.1 (.cons _ _ _ _ _ checked977.1 (.cons _ _ _ _ _ checked978.1 (.cons _ _ _ _ _ checked979.1 (.cons _ _ _ _ _ checked980.1 (.cons _ _ _ _ _ checked981.1 (.cons _ _ _ _ _ checked982.1 (.cons _ _ _ _ _ checked983.1 (.cons _ _ _ _ _ checked984.1 (.cons _ _ _ _ _ checked985.1 (.cons _ _ _ _ _ checked986.1 (.cons _ _ _ _ _ checked987.1 (.cons _ _ _ _ _ checked988.1 (.cons _ _ _ _ _ checked989.1 (.cons _ _ _ _ _ checked990.1 (.cons _ _ _ _ _ checked991.1 (.cons _ _ _ _ _ checked992.1 (.cons _ _ _ _ _ checked993.1 (.cons _ _ _ _ _ checked994.1 (.cons _ _ _ _ _ checked995.1 (.cons _ _ _ _ _ checked996.1 (.cons _ _ _ _ _ checked997.1 (.cons _ _ _ _ _ checked998.1 (.cons _ _ _ _ _ checked999.1 (.cons _ _ _ _ _ checked1000.1 (.cons _ _ _ _ _ checked1001.1 (.cons _ _ _ _ _ checked1002.1 (.cons _ _ _ _ _ checked1003.1 (.cons _ _ _ _ _ checked1004.1 (.cons _ _ _ _ _ checked1005.1 (.cons _ _ _ _ _ checked1006.1 (.cons _ _ _ _ _ checked1007.1 (.cons _ _ _ _ _ checked1008.1 (.cons _ _ _ _ _ checked1009.1 (.cons _ _ _ _ _ checked1010.1 (.cons _ _ _ _ _ checked1011.1 (.cons _ _ _ _ _ checked1012.1 (.cons _ _ _ _ _ checked1013.1 (.cons _ _ _ _ _ checked1014.1 (.cons _ _ _ _ _ checked1015.1 (.cons _ _ _ _ _ checked1016.1 (.cons _ _ _ _ _ checked1017.1 (.cons _ _ _ _ _ checked1018.1 (.cons _ _ _ _ _ checked1019.1 (.cons _ _ _ _ _ checked1020.1 (.cons _ _ _ _ _ checked1021.1 (.cons _ _ _ _ _ checked1022.1 (.cons _ _ _ _ _ checked1023.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1032 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2939 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked960.2,checked961.2,checked962.2,checked963.2,checked964.2,checked965.2,checked966.2,checked967.2,checked968.2,checked969.2,checked970.2,checked971.2,checked972.2,checked973.2,checked974.2,checked975.2,checked976.2,checked977.2,checked978.2,checked979.2,checked980.2,checked981.2,checked982.2,checked983.2,checked984.2,checked985.2,checked986.2,checked987.2,checked988.2,checked989.2,checked990.2,checked991.2,checked992.2,checked993.2,checked994.2,checked995.2,checked996.2,checked997.2,checked998.2,checked999.2,checked1000.2,checked1001.2,checked1002.2,checked1003.2,checked1004.2,checked1005.2,checked1006.2,checked1007.2,checked1008.2,checked1009.2,checked1010.2,checked1011.2,checked1012.2,checked1013.2,checked1014.2,checked1015.2,checked1016.2,checked1017.2,checked1018.2,checked1019.2,checked1020.2,checked1021.2,checked1022.2,checked1023.2]
  decide
end ArtifactHashBlockGroup15
