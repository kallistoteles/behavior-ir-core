import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup15
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op960 : List WordIR.Op := [.badd 1076 1077]
def bytes960 : Bytes := ("    let r00000436: u32 = r00000434.wrapping_add(r00000435);\n" : String).toByteArray.data.toList
theorem checked960 : bytes960=statementBytes 1078 (op960.map lower) ∧ bytes960.length=60 := by core033_kernel_decide
def op961 : List WordIR.Op := [.bnot 1078]
def bytes961 : Bytes := ("    let r00000437: u32 = !r00000436;\n" : String).toByteArray.data.toList
theorem checked961 : bytes961=statementBytes 1079 (op961.map lower) ∧ bytes961.length=37 := by core033_kernel_decide
def op962 : List WordIR.Op := [.band 1079 20]
def bytes962 : Bytes := ("    let r00000438: u32 = r00000437 & r00000014;\n" : String).toByteArray.data.toList
theorem checked962 : bytes962=statementBytes 1080 (op962.map lower) ∧ bytes962.length=48 := by core033_kernel_decide
def op963 : List WordIR.Op := [.bxor 1075 1080]
def bytes963 : Bytes := ("    let r00000439: u32 = r00000433 ^ r00000438;\n" : String).toByteArray.data.toList
theorem checked963 : bytes963=statementBytes 1081 (op963.map lower) ∧ bytes963.length=48 := by core033_kernel_decide
def op964 : List WordIR.Op := [.band 1071 1081]
def bytes964 : Bytes := ("    let r0000043a: u32 = r0000042f & r00000439;\n" : String).toByteArray.data.toList
theorem checked964 : bytes964=statementBytes 1082 (op964.map lower) ∧ bytes964.length=48 := by core033_kernel_decide
def op965 : List WordIR.Op := [.bxor 1067 1082]
def bytes965 : Bytes := ("    let r0000043b: u32 = r0000042b ^ r0000043a;\n" : String).toByteArray.data.toList
theorem checked965 : bytes965=statementBytes 1083 (op965.map lower) ∧ bytes965.length=48 := by core033_kernel_decide
def op966 : List WordIR.Op := [.bnot 182]
def bytes966 : Bytes := ("    let r0000043c: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked966 : bytes966=statementBytes 1084 (op966.map lower) ∧ bytes966.length=37 := by core033_kernel_decide
def op967 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes967 : Bytes := ("    let r0000043d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked967 : bytes967=statementBytes 1085 (op967.map lower) ∧ bytes967.length=41 := by core033_kernel_decide
def op968 : List WordIR.Op := [.badd 1084 1085]
def bytes968 : Bytes := ("    let r0000043e: u32 = r0000043c.wrapping_add(r0000043d);\n" : String).toByteArray.data.toList
theorem checked968 : bytes968=statementBytes 1086 (op968.map lower) ∧ bytes968.length=60 := by core033_kernel_decide
def op969 : List WordIR.Op := [.band 1086 114]
def bytes969 : Bytes := ("    let r0000043f: u32 = r0000043e & r00000072;\n" : String).toByteArray.data.toList
theorem checked969 : bytes969=statementBytes 1087 (op969.map lower) ∧ bytes969.length=48 := by core033_kernel_decide
def op970 : List WordIR.Op := [.bnot 182]
def bytes970 : Bytes := ("    let r00000440: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked970 : bytes970=statementBytes 1088 (op970.map lower) ∧ bytes970.length=37 := by core033_kernel_decide
def op971 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes971 : Bytes := ("    let r00000441: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked971 : bytes971=statementBytes 1089 (op971.map lower) ∧ bytes971.length=41 := by core033_kernel_decide
def op972 : List WordIR.Op := [.badd 1088 1089]
def bytes972 : Bytes := ("    let r00000442: u32 = r00000440.wrapping_add(r00000441);\n" : String).toByteArray.data.toList
theorem checked972 : bytes972=statementBytes 1090 (op972.map lower) ∧ bytes972.length=60 := by core033_kernel_decide
def op973 : List WordIR.Op := [.bnot 1090]
def bytes973 : Bytes := ("    let r00000443: u32 = !r00000442;\n" : String).toByteArray.data.toList
theorem checked973 : bytes973=statementBytes 1091 (op973.map lower) ∧ bytes973.length=37 := by core033_kernel_decide
def op974 : List WordIR.Op := [.band 1091 43]
def bytes974 : Bytes := ("    let r00000444: u32 = r00000443 & r0000002b;\n" : String).toByteArray.data.toList
theorem checked974 : bytes974=statementBytes 1092 (op974.map lower) ∧ bytes974.length=48 := by core033_kernel_decide
def op975 : List WordIR.Op := [.bxor 1087 1092]
def bytes975 : Bytes := ("    let r00000445: u32 = r0000043f ^ r00000444;\n" : String).toByteArray.data.toList
theorem checked975 : bytes975=statementBytes 1093 (op975.map lower) ∧ bytes975.length=48 := by core033_kernel_decide
def op976 : List WordIR.Op := [.bnot 182]
def bytes976 : Bytes := ("    let r00000446: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked976 : bytes976=statementBytes 1094 (op976.map lower) ∧ bytes976.length=37 := by core033_kernel_decide
def op977 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes977 : Bytes := ("    let r00000447: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked977 : bytes977=statementBytes 1095 (op977.map lower) ∧ bytes977.length=41 := by core033_kernel_decide
def op978 : List WordIR.Op := [.badd 1094 1095]
def bytes978 : Bytes := ("    let r00000448: u32 = r00000446.wrapping_add(r00000447);\n" : String).toByteArray.data.toList
theorem checked978 : bytes978=statementBytes 1096 (op978.map lower) ∧ bytes978.length=60 := by core033_kernel_decide
def op979 : List WordIR.Op := [.band 1096 115]
def bytes979 : Bytes := ("    let r00000449: u32 = r00000448 & r00000073;\n" : String).toByteArray.data.toList
theorem checked979 : bytes979=statementBytes 1097 (op979.map lower) ∧ bytes979.length=48 := by core033_kernel_decide
def op980 : List WordIR.Op := [.bnot 182]
def bytes980 : Bytes := ("    let r0000044a: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked980 : bytes980=statementBytes 1098 (op980.map lower) ∧ bytes980.length=37 := by core033_kernel_decide
def op981 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes981 : Bytes := ("    let r0000044b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked981 : bytes981=statementBytes 1099 (op981.map lower) ∧ bytes981.length=41 := by core033_kernel_decide
def op982 : List WordIR.Op := [.badd 1098 1099]
def bytes982 : Bytes := ("    let r0000044c: u32 = r0000044a.wrapping_add(r0000044b);\n" : String).toByteArray.data.toList
theorem checked982 : bytes982=statementBytes 1100 (op982.map lower) ∧ bytes982.length=60 := by core033_kernel_decide
def op983 : List WordIR.Op := [.bnot 1100]
def bytes983 : Bytes := ("    let r0000044d: u32 = !r0000044c;\n" : String).toByteArray.data.toList
theorem checked983 : bytes983=statementBytes 1101 (op983.map lower) ∧ bytes983.length=37 := by core033_kernel_decide
def op984 : List WordIR.Op := [.band 1101 44]
def bytes984 : Bytes := ("    let r0000044e: u32 = r0000044d & r0000002c;\n" : String).toByteArray.data.toList
theorem checked984 : bytes984=statementBytes 1102 (op984.map lower) ∧ bytes984.length=48 := by core033_kernel_decide
def op985 : List WordIR.Op := [.bxor 1097 1102]
def bytes985 : Bytes := ("    let r0000044f: u32 = r00000449 ^ r0000044e;\n" : String).toByteArray.data.toList
theorem checked985 : bytes985=statementBytes 1103 (op985.map lower) ∧ bytes985.length=48 := by core033_kernel_decide
def op986 : List WordIR.Op := [.bnot 182]
def bytes986 : Bytes := ("    let r00000450: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked986 : bytes986=statementBytes 1104 (op986.map lower) ∧ bytes986.length=37 := by core033_kernel_decide
def op987 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes987 : Bytes := ("    let r00000451: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked987 : bytes987=statementBytes 1105 (op987.map lower) ∧ bytes987.length=41 := by core033_kernel_decide
def op988 : List WordIR.Op := [.badd 1104 1105]
def bytes988 : Bytes := ("    let r00000452: u32 = r00000450.wrapping_add(r00000451);\n" : String).toByteArray.data.toList
theorem checked988 : bytes988=statementBytes 1106 (op988.map lower) ∧ bytes988.length=60 := by core033_kernel_decide
def op989 : List WordIR.Op := [.band 1106 116]
def bytes989 : Bytes := ("    let r00000453: u32 = r00000452 & r00000074;\n" : String).toByteArray.data.toList
theorem checked989 : bytes989=statementBytes 1107 (op989.map lower) ∧ bytes989.length=48 := by core033_kernel_decide
def op990 : List WordIR.Op := [.bnot 182]
def bytes990 : Bytes := ("    let r00000454: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked990 : bytes990=statementBytes 1108 (op990.map lower) ∧ bytes990.length=37 := by core033_kernel_decide
def op991 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes991 : Bytes := ("    let r00000455: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked991 : bytes991=statementBytes 1109 (op991.map lower) ∧ bytes991.length=41 := by core033_kernel_decide
def op992 : List WordIR.Op := [.badd 1108 1109]
def bytes992 : Bytes := ("    let r00000456: u32 = r00000454.wrapping_add(r00000455);\n" : String).toByteArray.data.toList
theorem checked992 : bytes992=statementBytes 1110 (op992.map lower) ∧ bytes992.length=60 := by core033_kernel_decide
def op993 : List WordIR.Op := [.bnot 1110]
def bytes993 : Bytes := ("    let r00000457: u32 = !r00000456;\n" : String).toByteArray.data.toList
theorem checked993 : bytes993=statementBytes 1111 (op993.map lower) ∧ bytes993.length=37 := by core033_kernel_decide
def op994 : List WordIR.Op := [.bnot 247]
def bytes994 : Bytes := ("    let r00000458: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked994 : bytes994=statementBytes 1112 (op994.map lower) ∧ bytes994.length=37 := by core033_kernel_decide
def op995 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes995 : Bytes := ("    let r00000459: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked995 : bytes995=statementBytes 1113 (op995.map lower) ∧ bytes995.length=41 := by core033_kernel_decide
def op996 : List WordIR.Op := [.badd 1112 1113]
def bytes996 : Bytes := ("    let r0000045a: u32 = r00000458.wrapping_add(r00000459);\n" : String).toByteArray.data.toList
theorem checked996 : bytes996=statementBytes 1114 (op996.map lower) ∧ bytes996.length=60 := by core033_kernel_decide
def op997 : List WordIR.Op := [.band 1114 33]
def bytes997 : Bytes := ("    let r0000045b: u32 = r0000045a & r00000021;\n" : String).toByteArray.data.toList
theorem checked997 : bytes997=statementBytes 1115 (op997.map lower) ∧ bytes997.length=48 := by core033_kernel_decide
def op998 : List WordIR.Op := [.bnot 247]
def bytes998 : Bytes := ("    let r0000045c: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked998 : bytes998=statementBytes 1116 (op998.map lower) ∧ bytes998.length=37 := by core033_kernel_decide
def op999 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes999 : Bytes := ("    let r0000045d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked999 : bytes999=statementBytes 1117 (op999.map lower) ∧ bytes999.length=41 := by core033_kernel_decide
def op1000 : List WordIR.Op := [.badd 1116 1117]
def bytes1000 : Bytes := ("    let r0000045e: u32 = r0000045c.wrapping_add(r0000045d);\n" : String).toByteArray.data.toList
theorem checked1000 : bytes1000=statementBytes 1118 (op1000.map lower) ∧ bytes1000.length=60 := by core033_kernel_decide
def op1001 : List WordIR.Op := [.bnot 1118]
def bytes1001 : Bytes := ("    let r0000045f: u32 = !r0000045e;\n" : String).toByteArray.data.toList
theorem checked1001 : bytes1001=statementBytes 1119 (op1001.map lower) ∧ bytes1001.length=37 := by core033_kernel_decide
def op1002 : List WordIR.Op := [.band 1119 21]
def bytes1002 : Bytes := ("    let r00000460: u32 = r0000045f & r00000015;\n" : String).toByteArray.data.toList
theorem checked1002 : bytes1002=statementBytes 1120 (op1002.map lower) ∧ bytes1002.length=48 := by core033_kernel_decide
def op1003 : List WordIR.Op := [.bxor 1115 1120]
def bytes1003 : Bytes := ("    let r00000461: u32 = r0000045b ^ r00000460;\n" : String).toByteArray.data.toList
theorem checked1003 : bytes1003=statementBytes 1121 (op1003.map lower) ∧ bytes1003.length=48 := by core033_kernel_decide
def op1004 : List WordIR.Op := [.band 1111 1121]
def bytes1004 : Bytes := ("    let r00000462: u32 = r00000457 & r00000461;\n" : String).toByteArray.data.toList
theorem checked1004 : bytes1004=statementBytes 1122 (op1004.map lower) ∧ bytes1004.length=48 := by core033_kernel_decide
def op1005 : List WordIR.Op := [.bxor 1107 1122]
def bytes1005 : Bytes := ("    let r00000463: u32 = r00000453 ^ r00000462;\n" : String).toByteArray.data.toList
theorem checked1005 : bytes1005=statementBytes 1123 (op1005.map lower) ∧ bytes1005.length=48 := by core033_kernel_decide
def op1006 : List WordIR.Op := [.bnot 182]
def bytes1006 : Bytes := ("    let r00000464: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1006 : bytes1006=statementBytes 1124 (op1006.map lower) ∧ bytes1006.length=37 := by core033_kernel_decide
def op1007 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1007 : Bytes := ("    let r00000465: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1007 : bytes1007=statementBytes 1125 (op1007.map lower) ∧ bytes1007.length=41 := by core033_kernel_decide
def op1008 : List WordIR.Op := [.badd 1124 1125]
def bytes1008 : Bytes := ("    let r00000466: u32 = r00000464.wrapping_add(r00000465);\n" : String).toByteArray.data.toList
theorem checked1008 : bytes1008=statementBytes 1126 (op1008.map lower) ∧ bytes1008.length=60 := by core033_kernel_decide
def op1009 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1009 : Bytes := ("    let r00000467: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1009 : bytes1009=statementBytes 1127 (op1009.map lower) ∧ bytes1009.length=41 := by core033_kernel_decide
def op1010 : List WordIR.Op := [.band 1126 1127]
def bytes1010 : Bytes := ("    let r00000468: u32 = r00000466 & r00000467;\n" : String).toByteArray.data.toList
theorem checked1010 : bytes1010=statementBytes 1128 (op1010.map lower) ∧ bytes1010.length=48 := by core033_kernel_decide
def op1011 : List WordIR.Op := [.bnot 182]
def bytes1011 : Bytes := ("    let r00000469: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1011 : bytes1011=statementBytes 1129 (op1011.map lower) ∧ bytes1011.length=37 := by core033_kernel_decide
def op1012 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1012 : Bytes := ("    let r0000046a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1012 : bytes1012=statementBytes 1130 (op1012.map lower) ∧ bytes1012.length=41 := by core033_kernel_decide
def op1013 : List WordIR.Op := [.badd 1129 1130]
def bytes1013 : Bytes := ("    let r0000046b: u32 = r00000469.wrapping_add(r0000046a);\n" : String).toByteArray.data.toList
theorem checked1013 : bytes1013=statementBytes 1131 (op1013.map lower) ∧ bytes1013.length=60 := by core033_kernel_decide
def op1014 : List WordIR.Op := [.bnot 1131]
def bytes1014 : Bytes := ("    let r0000046c: u32 = !r0000046b;\n" : String).toByteArray.data.toList
theorem checked1014 : bytes1014=statementBytes 1132 (op1014.map lower) ∧ bytes1014.length=37 := by core033_kernel_decide
def op1015 : List WordIR.Op := [.band 1132 45]
def bytes1015 : Bytes := ("    let r0000046d: u32 = r0000046c & r0000002d;\n" : String).toByteArray.data.toList
theorem checked1015 : bytes1015=statementBytes 1133 (op1015.map lower) ∧ bytes1015.length=48 := by core033_kernel_decide
def op1016 : List WordIR.Op := [.bxor 1128 1133]
def bytes1016 : Bytes := ("    let r0000046e: u32 = r00000468 ^ r0000046d;\n" : String).toByteArray.data.toList
theorem checked1016 : bytes1016=statementBytes 1134 (op1016.map lower) ∧ bytes1016.length=48 := by core033_kernel_decide
def op1017 : List WordIR.Op := [.bnot 182]
def bytes1017 : Bytes := ("    let r0000046f: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1017 : bytes1017=statementBytes 1135 (op1017.map lower) ∧ bytes1017.length=37 := by core033_kernel_decide
def op1018 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1018 : Bytes := ("    let r00000470: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1018 : bytes1018=statementBytes 1136 (op1018.map lower) ∧ bytes1018.length=41 := by core033_kernel_decide
def op1019 : List WordIR.Op := [.badd 1135 1136]
def bytes1019 : Bytes := ("    let r00000471: u32 = r0000046f.wrapping_add(r00000470);\n" : String).toByteArray.data.toList
theorem checked1019 : bytes1019=statementBytes 1137 (op1019.map lower) ∧ bytes1019.length=60 := by core033_kernel_decide
def op1020 : List WordIR.Op := [.band 1137 117]
def bytes1020 : Bytes := ("    let r00000472: u32 = r00000471 & r00000075;\n" : String).toByteArray.data.toList
theorem checked1020 : bytes1020=statementBytes 1138 (op1020.map lower) ∧ bytes1020.length=48 := by core033_kernel_decide
def op1021 : List WordIR.Op := [.bnot 182]
def bytes1021 : Bytes := ("    let r00000473: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1021 : bytes1021=statementBytes 1139 (op1021.map lower) ∧ bytes1021.length=37 := by core033_kernel_decide
def op1022 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1022 : Bytes := ("    let r00000474: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1022 : bytes1022=statementBytes 1140 (op1022.map lower) ∧ bytes1022.length=41 := by core033_kernel_decide
def op1023 : List WordIR.Op := [.badd 1139 1140]
def bytes1023 : Bytes := ("    let r00000475: u32 = r00000473.wrapping_add(r00000474);\n" : String).toByteArray.data.toList
theorem checked1023 : bytes1023=statementBytes 1141 (op1023.map lower) ∧ bytes1023.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op960,op961,op962,op963,op964,op965,op966,op967,op968,op969,op970,op971,op972,op973,op974,op975,op976,op977,op978,op979,op980,op981,op982,op983,op984,op985,op986,op987,op988,op989,op990,op991,op992,op993,op994,op995,op996,op997,op998,op999,op1000,op1001,op1002,op1003,op1004,op1005,op1006,op1007,op1008,op1009,op1010,op1011,op1012,op1013,op1014,op1015,op1016,op1017,op1018,op1019,op1020,op1021,op1022,op1023]
def chunks : List Bytes := [bytes960,bytes961,bytes962,bytes963,bytes964,bytes965,bytes966,bytes967,bytes968,bytes969,bytes970,bytes971,bytes972,bytes973,bytes974,bytes975,bytes976,bytes977,bytes978,bytes979,bytes980,bytes981,bytes982,bytes983,bytes984,bytes985,bytes986,bytes987,bytes988,bytes989,bytes990,bytes991,bytes992,bytes993,bytes994,bytes995,bytes996,bytes997,bytes998,bytes999,bytes1000,bytes1001,bytes1002,bytes1003,bytes1004,bytes1005,bytes1006,bytes1007,bytes1008,bytes1009,bytes1010,bytes1011,bytes1012,bytes1013,bytes1014,bytes1015,bytes1016,bytes1017,bytes1018,bytes1019,bytes1020,bytes1021,bytes1022,bytes1023]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1078 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked960.1 (.cons _ _ _ _ _ checked961.1 (.cons _ _ _ _ _ checked962.1 (.cons _ _ _ _ _ checked963.1 (.cons _ _ _ _ _ checked964.1 (.cons _ _ _ _ _ checked965.1 (.cons _ _ _ _ _ checked966.1 (.cons _ _ _ _ _ checked967.1 (.cons _ _ _ _ _ checked968.1 (.cons _ _ _ _ _ checked969.1 (.cons _ _ _ _ _ checked970.1 (.cons _ _ _ _ _ checked971.1 (.cons _ _ _ _ _ checked972.1 (.cons _ _ _ _ _ checked973.1 (.cons _ _ _ _ _ checked974.1 (.cons _ _ _ _ _ checked975.1 (.cons _ _ _ _ _ checked976.1 (.cons _ _ _ _ _ checked977.1 (.cons _ _ _ _ _ checked978.1 (.cons _ _ _ _ _ checked979.1 (.cons _ _ _ _ _ checked980.1 (.cons _ _ _ _ _ checked981.1 (.cons _ _ _ _ _ checked982.1 (.cons _ _ _ _ _ checked983.1 (.cons _ _ _ _ _ checked984.1 (.cons _ _ _ _ _ checked985.1 (.cons _ _ _ _ _ checked986.1 (.cons _ _ _ _ _ checked987.1 (.cons _ _ _ _ _ checked988.1 (.cons _ _ _ _ _ checked989.1 (.cons _ _ _ _ _ checked990.1 (.cons _ _ _ _ _ checked991.1 (.cons _ _ _ _ _ checked992.1 (.cons _ _ _ _ _ checked993.1 (.cons _ _ _ _ _ checked994.1 (.cons _ _ _ _ _ checked995.1 (.cons _ _ _ _ _ checked996.1 (.cons _ _ _ _ _ checked997.1 (.cons _ _ _ _ _ checked998.1 (.cons _ _ _ _ _ checked999.1 (.cons _ _ _ _ _ checked1000.1 (.cons _ _ _ _ _ checked1001.1 (.cons _ _ _ _ _ checked1002.1 (.cons _ _ _ _ _ checked1003.1 (.cons _ _ _ _ _ checked1004.1 (.cons _ _ _ _ _ checked1005.1 (.cons _ _ _ _ _ checked1006.1 (.cons _ _ _ _ _ checked1007.1 (.cons _ _ _ _ _ checked1008.1 (.cons _ _ _ _ _ checked1009.1 (.cons _ _ _ _ _ checked1010.1 (.cons _ _ _ _ _ checked1011.1 (.cons _ _ _ _ _ checked1012.1 (.cons _ _ _ _ _ checked1013.1 (.cons _ _ _ _ _ checked1014.1 (.cons _ _ _ _ _ checked1015.1 (.cons _ _ _ _ _ checked1016.1 (.cons _ _ _ _ _ checked1017.1 (.cons _ _ _ _ _ checked1018.1 (.cons _ _ _ _ _ checked1019.1 (.cons _ _ _ _ _ checked1020.1 (.cons _ _ _ _ _ checked1021.1 (.cons _ _ _ _ _ checked1022.1 (.cons _ _ _ _ _ checked1023.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1078 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2939 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked960.2,checked961.2,checked962.2,checked963.2,checked964.2,checked965.2,checked966.2,checked967.2,checked968.2,checked969.2,checked970.2,checked971.2,checked972.2,checked973.2,checked974.2,checked975.2,checked976.2,checked977.2,checked978.2,checked979.2,checked980.2,checked981.2,checked982.2,checked983.2,checked984.2,checked985.2,checked986.2,checked987.2,checked988.2,checked989.2,checked990.2,checked991.2,checked992.2,checked993.2,checked994.2,checked995.2,checked996.2,checked997.2,checked998.2,checked999.2,checked1000.2,checked1001.2,checked1002.2,checked1003.2,checked1004.2,checked1005.2,checked1006.2,checked1007.2,checked1008.2,checked1009.2,checked1010.2,checked1011.2,checked1012.2,checked1013.2,checked1014.2,checked1015.2,checked1016.2,checked1017.2,checked1018.2,checked1019.2,checked1020.2,checked1021.2,checked1022.2,checked1023.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup15
