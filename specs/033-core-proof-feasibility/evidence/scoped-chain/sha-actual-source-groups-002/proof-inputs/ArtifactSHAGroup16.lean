import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1024 : List WordIR.Op := [.band 997 970]
def bytes1024 : Bytes := ("    let r00000418: u32 = r000003e5 & r000003ca;\n" : String).toByteArray.data.toList
theorem checked1024 : bytes1024=statementBytes 1048 (op1024.map lower) ∧ bytes1024.length=48 := by core033_kernel_decide
def op1025 : List WordIR.Op := [.bxor 1047 1048]
def bytes1025 : Bytes := ("    let r00000419: u32 = r00000417 ^ r00000418;\n" : String).toByteArray.data.toList
theorem checked1025 : bytes1025=statementBytes 1049 (op1025.map lower) ∧ bytes1025.length=48 := by core033_kernel_decide
def op1026 : List WordIR.Op := [.badd 1044 1049]
def bytes1026 : Bytes := ("    let r0000041a: u32 = r00000414.wrapping_add(r00000419);\n" : String).toByteArray.data.toList
theorem checked1026 : bytes1026=statementBytes 1050 (op1026.map lower) ∧ bytes1026.length=60 := by core033_kernel_decide
def op1027 : List WordIR.Op := [.badd 1039 1050]
def bytes1027 : Bytes := ("    let r0000041b: u32 = r0000040f.wrapping_add(r0000041a);\n" : String).toByteArray.data.toList
theorem checked1027 : bytes1027=statementBytes 1051 (op1027.map lower) ∧ bytes1027.length=60 := by core033_kernel_decide
def op1028 : List WordIR.Op := [.badd 943 1039]
def bytes1028 : Bytes := ("    let r0000041c: u32 = r000003af.wrapping_add(r0000040f);\n" : String).toByteArray.data.toList
theorem checked1028 : bytes1028=statementBytes 1052 (op1028.map lower) ∧ bytes1028.length=60 := by core033_kernel_decide
def op1029 : List WordIR.Op := [.rotr 1052 6]
def bytes1029 : Bytes := ("    let r0000041d: u32 = r0000041c.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1029 : bytes1029=statementBytes 1053 (op1029.map lower) ∧ bytes1029.length=65 := by core033_kernel_decide
def op1030 : List WordIR.Op := [.rotr 1052 11]
def bytes1030 : Bytes := ("    let r0000041e: u32 = r0000041c.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1030 : bytes1030=statementBytes 1054 (op1030.map lower) ∧ bytes1030.length=65 := by core033_kernel_decide
def op1031 : List WordIR.Op := [.bxor 1053 1054]
def bytes1031 : Bytes := ("    let r0000041f: u32 = r0000041d ^ r0000041e;\n" : String).toByteArray.data.toList
theorem checked1031 : bytes1031=statementBytes 1055 (op1031.map lower) ∧ bytes1031.length=48 := by core033_kernel_decide
def op1032 : List WordIR.Op := [.rotr 1052 25]
def bytes1032 : Bytes := ("    let r00000420: u32 = r0000041c.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1032 : bytes1032=statementBytes 1056 (op1032.map lower) ∧ bytes1032.length=65 := by core033_kernel_decide
def op1033 : List WordIR.Op := [.bxor 1055 1056]
def bytes1033 : Bytes := ("    let r00000421: u32 = r0000041f ^ r00000420;\n" : String).toByteArray.data.toList
theorem checked1033 : bytes1033=statementBytes 1057 (op1033.map lower) ∧ bytes1033.length=48 := by core033_kernel_decide
def op1034 : List WordIR.Op := [.badd 971 1057]
def bytes1034 : Bytes := ("    let r00000422: u32 = r000003cb.wrapping_add(r00000421);\n" : String).toByteArray.data.toList
theorem checked1034 : bytes1034=statementBytes 1058 (op1034.map lower) ∧ bytes1034.length=60 := by core033_kernel_decide
def op1035 : List WordIR.Op := [.band 1052 1025]
def bytes1035 : Bytes := ("    let r00000423: u32 = r0000041c & r00000401;\n" : String).toByteArray.data.toList
theorem checked1035 : bytes1035=statementBytes 1059 (op1035.map lower) ∧ bytes1035.length=48 := by core033_kernel_decide
def op1036 : List WordIR.Op := [.bnot 1052]
def bytes1036 : Bytes := ("    let r00000424: u32 = !r0000041c;\n" : String).toByteArray.data.toList
theorem checked1036 : bytes1036=statementBytes 1060 (op1036.map lower) ∧ bytes1036.length=37 := by core033_kernel_decide
def op1037 : List WordIR.Op := [.band 1060 998]
def bytes1037 : Bytes := ("    let r00000425: u32 = r00000424 & r000003e6;\n" : String).toByteArray.data.toList
theorem checked1037 : bytes1037=statementBytes 1061 (op1037.map lower) ∧ bytes1037.length=48 := by core033_kernel_decide
def op1038 : List WordIR.Op := [.bxor 1059 1061]
def bytes1038 : Bytes := ("    let r00000426: u32 = r00000423 ^ r00000425;\n" : String).toByteArray.data.toList
theorem checked1038 : bytes1038=statementBytes 1062 (op1038.map lower) ∧ bytes1038.length=48 := by core033_kernel_decide
def op1039 : List WordIR.Op := [.badd 1058 1062]
def bytes1039 : Bytes := ("    let r00000427: u32 = r00000422.wrapping_add(r00000426);\n" : String).toByteArray.data.toList
theorem checked1039 : bytes1039=statementBytes 1063 (op1039.map lower) ∧ bytes1039.length=60 := by core033_kernel_decide
def op1040 : List WordIR.Op := [.literal (BitVec.ofNat 32 3248222580)]
def bytes1040 : Bytes := ("    let r00000428: u32 = 0xc19bf174_u32;\n" : String).toByteArray.data.toList
theorem checked1040 : bytes1040=statementBytes 1064 (op1040.map lower) ∧ bytes1040.length=41 := by core033_kernel_decide
def op1041 : List WordIR.Op := [.badd 1063 1064]
def bytes1041 : Bytes := ("    let r00000429: u32 = r00000427.wrapping_add(r00000428);\n" : String).toByteArray.data.toList
theorem checked1041 : bytes1041=statementBytes 1065 (op1041.map lower) ∧ bytes1041.length=60 := by core033_kernel_decide
def op1042 : List WordIR.Op := [.badd 1065 23]
def bytes1042 : Bytes := ("    let r0000042a: u32 = r00000429.wrapping_add(r00000017);\n" : String).toByteArray.data.toList
theorem checked1042 : bytes1042=statementBytes 1066 (op1042.map lower) ∧ bytes1042.length=60 := by core033_kernel_decide
def op1043 : List WordIR.Op := [.rotr 1051 2]
def bytes1043 : Bytes := ("    let r0000042b: u32 = r0000041b.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1043 : bytes1043=statementBytes 1067 (op1043.map lower) ∧ bytes1043.length=65 := by core033_kernel_decide
def op1044 : List WordIR.Op := [.rotr 1051 13]
def bytes1044 : Bytes := ("    let r0000042c: u32 = r0000041b.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1044 : bytes1044=statementBytes 1068 (op1044.map lower) ∧ bytes1044.length=65 := by core033_kernel_decide
def op1045 : List WordIR.Op := [.bxor 1067 1068]
def bytes1045 : Bytes := ("    let r0000042d: u32 = r0000042b ^ r0000042c;\n" : String).toByteArray.data.toList
theorem checked1045 : bytes1045=statementBytes 1069 (op1045.map lower) ∧ bytes1045.length=48 := by core033_kernel_decide
def op1046 : List WordIR.Op := [.rotr 1051 22]
def bytes1046 : Bytes := ("    let r0000042e: u32 = r0000041b.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1046 : bytes1046=statementBytes 1070 (op1046.map lower) ∧ bytes1046.length=65 := by core033_kernel_decide
def op1047 : List WordIR.Op := [.bxor 1069 1070]
def bytes1047 : Bytes := ("    let r0000042f: u32 = r0000042d ^ r0000042e;\n" : String).toByteArray.data.toList
theorem checked1047 : bytes1047=statementBytes 1071 (op1047.map lower) ∧ bytes1047.length=48 := by core033_kernel_decide
def op1048 : List WordIR.Op := [.band 1051 1024]
def bytes1048 : Bytes := ("    let r00000430: u32 = r0000041b & r00000400;\n" : String).toByteArray.data.toList
theorem checked1048 : bytes1048=statementBytes 1072 (op1048.map lower) ∧ bytes1048.length=48 := by core033_kernel_decide
def op1049 : List WordIR.Op := [.band 1051 997]
def bytes1049 : Bytes := ("    let r00000431: u32 = r0000041b & r000003e5;\n" : String).toByteArray.data.toList
theorem checked1049 : bytes1049=statementBytes 1073 (op1049.map lower) ∧ bytes1049.length=48 := by core033_kernel_decide
def op1050 : List WordIR.Op := [.bxor 1072 1073]
def bytes1050 : Bytes := ("    let r00000432: u32 = r00000430 ^ r00000431;\n" : String).toByteArray.data.toList
theorem checked1050 : bytes1050=statementBytes 1074 (op1050.map lower) ∧ bytes1050.length=48 := by core033_kernel_decide
def op1051 : List WordIR.Op := [.band 1024 997]
def bytes1051 : Bytes := ("    let r00000433: u32 = r00000400 & r000003e5;\n" : String).toByteArray.data.toList
theorem checked1051 : bytes1051=statementBytes 1075 (op1051.map lower) ∧ bytes1051.length=48 := by core033_kernel_decide
def op1052 : List WordIR.Op := [.bxor 1074 1075]
def bytes1052 : Bytes := ("    let r00000434: u32 = r00000432 ^ r00000433;\n" : String).toByteArray.data.toList
theorem checked1052 : bytes1052=statementBytes 1076 (op1052.map lower) ∧ bytes1052.length=48 := by core033_kernel_decide
def op1053 : List WordIR.Op := [.badd 1071 1076]
def bytes1053 : Bytes := ("    let r00000435: u32 = r0000042f.wrapping_add(r00000434);\n" : String).toByteArray.data.toList
theorem checked1053 : bytes1053=statementBytes 1077 (op1053.map lower) ∧ bytes1053.length=60 := by core033_kernel_decide
def op1054 : List WordIR.Op := [.badd 1066 1077]
def bytes1054 : Bytes := ("    let r00000436: u32 = r0000042a.wrapping_add(r00000435);\n" : String).toByteArray.data.toList
theorem checked1054 : bytes1054=statementBytes 1078 (op1054.map lower) ∧ bytes1054.length=60 := by core033_kernel_decide
def op1055 : List WordIR.Op := [.badd 970 1066]
def bytes1055 : Bytes := ("    let r00000437: u32 = r000003ca.wrapping_add(r0000042a);\n" : String).toByteArray.data.toList
theorem checked1055 : bytes1055=statementBytes 1079 (op1055.map lower) ∧ bytes1055.length=60 := by core033_kernel_decide
def op1056 : List WordIR.Op := [.rotr 1079 6]
def bytes1056 : Bytes := ("    let r00000438: u32 = r00000437.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1056 : bytes1056=statementBytes 1080 (op1056.map lower) ∧ bytes1056.length=65 := by core033_kernel_decide
def op1057 : List WordIR.Op := [.rotr 1079 11]
def bytes1057 : Bytes := ("    let r00000439: u32 = r00000437.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1057 : bytes1057=statementBytes 1081 (op1057.map lower) ∧ bytes1057.length=65 := by core033_kernel_decide
def op1058 : List WordIR.Op := [.bxor 1080 1081]
def bytes1058 : Bytes := ("    let r0000043a: u32 = r00000438 ^ r00000439;\n" : String).toByteArray.data.toList
theorem checked1058 : bytes1058=statementBytes 1082 (op1058.map lower) ∧ bytes1058.length=48 := by core033_kernel_decide
def op1059 : List WordIR.Op := [.rotr 1079 25]
def bytes1059 : Bytes := ("    let r0000043b: u32 = r00000437.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1059 : bytes1059=statementBytes 1083 (op1059.map lower) ∧ bytes1059.length=65 := by core033_kernel_decide
def op1060 : List WordIR.Op := [.bxor 1082 1083]
def bytes1060 : Bytes := ("    let r0000043c: u32 = r0000043a ^ r0000043b;\n" : String).toByteArray.data.toList
theorem checked1060 : bytes1060=statementBytes 1084 (op1060.map lower) ∧ bytes1060.length=48 := by core033_kernel_decide
def op1061 : List WordIR.Op := [.badd 998 1084]
def bytes1061 : Bytes := ("    let r0000043d: u32 = r000003e6.wrapping_add(r0000043c);\n" : String).toByteArray.data.toList
theorem checked1061 : bytes1061=statementBytes 1085 (op1061.map lower) ∧ bytes1061.length=60 := by core033_kernel_decide
def op1062 : List WordIR.Op := [.band 1079 1052]
def bytes1062 : Bytes := ("    let r0000043e: u32 = r00000437 & r0000041c;\n" : String).toByteArray.data.toList
theorem checked1062 : bytes1062=statementBytes 1086 (op1062.map lower) ∧ bytes1062.length=48 := by core033_kernel_decide
def op1063 : List WordIR.Op := [.bnot 1079]
def bytes1063 : Bytes := ("    let r0000043f: u32 = !r00000437;\n" : String).toByteArray.data.toList
theorem checked1063 : bytes1063=statementBytes 1087 (op1063.map lower) ∧ bytes1063.length=37 := by core033_kernel_decide
def op1064 : List WordIR.Op := [.band 1087 1025]
def bytes1064 : Bytes := ("    let r00000440: u32 = r0000043f & r00000401;\n" : String).toByteArray.data.toList
theorem checked1064 : bytes1064=statementBytes 1088 (op1064.map lower) ∧ bytes1064.length=48 := by core033_kernel_decide
def op1065 : List WordIR.Op := [.bxor 1086 1088]
def bytes1065 : Bytes := ("    let r00000441: u32 = r0000043e ^ r00000440;\n" : String).toByteArray.data.toList
theorem checked1065 : bytes1065=statementBytes 1089 (op1065.map lower) ∧ bytes1065.length=48 := by core033_kernel_decide
def op1066 : List WordIR.Op := [.badd 1085 1089]
def bytes1066 : Bytes := ("    let r00000442: u32 = r0000043d.wrapping_add(r00000441);\n" : String).toByteArray.data.toList
theorem checked1066 : bytes1066=statementBytes 1090 (op1066.map lower) ∧ bytes1066.length=60 := by core033_kernel_decide
def op1067 : List WordIR.Op := [.literal (BitVec.ofNat 32 3835390401)]
def bytes1067 : Bytes := ("    let r00000443: u32 = 0xe49b69c1_u32;\n" : String).toByteArray.data.toList
theorem checked1067 : bytes1067=statementBytes 1091 (op1067.map lower) ∧ bytes1067.length=41 := by core033_kernel_decide
def op1068 : List WordIR.Op := [.badd 1090 1091]
def bytes1068 : Bytes := ("    let r00000444: u32 = r00000442.wrapping_add(r00000443);\n" : String).toByteArray.data.toList
theorem checked1068 : bytes1068=statementBytes 1092 (op1068.map lower) ∧ bytes1068.length=60 := by core033_kernel_decide
def op1069 : List WordIR.Op := [.badd 1092 36]
def bytes1069 : Bytes := ("    let r00000445: u32 = r00000444.wrapping_add(r00000024);\n" : String).toByteArray.data.toList
theorem checked1069 : bytes1069=statementBytes 1093 (op1069.map lower) ∧ bytes1069.length=60 := by core033_kernel_decide
def op1070 : List WordIR.Op := [.rotr 1078 2]
def bytes1070 : Bytes := ("    let r00000446: u32 = r00000436.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1070 : bytes1070=statementBytes 1094 (op1070.map lower) ∧ bytes1070.length=65 := by core033_kernel_decide
def op1071 : List WordIR.Op := [.rotr 1078 13]
def bytes1071 : Bytes := ("    let r00000447: u32 = r00000436.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1071 : bytes1071=statementBytes 1095 (op1071.map lower) ∧ bytes1071.length=65 := by core033_kernel_decide
def op1072 : List WordIR.Op := [.bxor 1094 1095]
def bytes1072 : Bytes := ("    let r00000448: u32 = r00000446 ^ r00000447;\n" : String).toByteArray.data.toList
theorem checked1072 : bytes1072=statementBytes 1096 (op1072.map lower) ∧ bytes1072.length=48 := by core033_kernel_decide
def op1073 : List WordIR.Op := [.rotr 1078 22]
def bytes1073 : Bytes := ("    let r00000449: u32 = r00000436.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1073 : bytes1073=statementBytes 1097 (op1073.map lower) ∧ bytes1073.length=65 := by core033_kernel_decide
def op1074 : List WordIR.Op := [.bxor 1096 1097]
def bytes1074 : Bytes := ("    let r0000044a: u32 = r00000448 ^ r00000449;\n" : String).toByteArray.data.toList
theorem checked1074 : bytes1074=statementBytes 1098 (op1074.map lower) ∧ bytes1074.length=48 := by core033_kernel_decide
def op1075 : List WordIR.Op := [.band 1078 1051]
def bytes1075 : Bytes := ("    let r0000044b: u32 = r00000436 & r0000041b;\n" : String).toByteArray.data.toList
theorem checked1075 : bytes1075=statementBytes 1099 (op1075.map lower) ∧ bytes1075.length=48 := by core033_kernel_decide
def op1076 : List WordIR.Op := [.band 1078 1024]
def bytes1076 : Bytes := ("    let r0000044c: u32 = r00000436 & r00000400;\n" : String).toByteArray.data.toList
theorem checked1076 : bytes1076=statementBytes 1100 (op1076.map lower) ∧ bytes1076.length=48 := by core033_kernel_decide
def op1077 : List WordIR.Op := [.bxor 1099 1100]
def bytes1077 : Bytes := ("    let r0000044d: u32 = r0000044b ^ r0000044c;\n" : String).toByteArray.data.toList
theorem checked1077 : bytes1077=statementBytes 1101 (op1077.map lower) ∧ bytes1077.length=48 := by core033_kernel_decide
def op1078 : List WordIR.Op := [.band 1051 1024]
def bytes1078 : Bytes := ("    let r0000044e: u32 = r0000041b & r00000400;\n" : String).toByteArray.data.toList
theorem checked1078 : bytes1078=statementBytes 1102 (op1078.map lower) ∧ bytes1078.length=48 := by core033_kernel_decide
def op1079 : List WordIR.Op := [.bxor 1101 1102]
def bytes1079 : Bytes := ("    let r0000044f: u32 = r0000044d ^ r0000044e;\n" : String).toByteArray.data.toList
theorem checked1079 : bytes1079=statementBytes 1103 (op1079.map lower) ∧ bytes1079.length=48 := by core033_kernel_decide
def op1080 : List WordIR.Op := [.badd 1098 1103]
def bytes1080 : Bytes := ("    let r00000450: u32 = r0000044a.wrapping_add(r0000044f);\n" : String).toByteArray.data.toList
theorem checked1080 : bytes1080=statementBytes 1104 (op1080.map lower) ∧ bytes1080.length=60 := by core033_kernel_decide
def op1081 : List WordIR.Op := [.badd 1093 1104]
def bytes1081 : Bytes := ("    let r00000451: u32 = r00000445.wrapping_add(r00000450);\n" : String).toByteArray.data.toList
theorem checked1081 : bytes1081=statementBytes 1105 (op1081.map lower) ∧ bytes1081.length=60 := by core033_kernel_decide
def op1082 : List WordIR.Op := [.badd 997 1093]
def bytes1082 : Bytes := ("    let r00000452: u32 = r000003e5.wrapping_add(r00000445);\n" : String).toByteArray.data.toList
theorem checked1082 : bytes1082=statementBytes 1106 (op1082.map lower) ∧ bytes1082.length=60 := by core033_kernel_decide
def op1083 : List WordIR.Op := [.rotr 1106 6]
def bytes1083 : Bytes := ("    let r00000453: u32 = r00000452.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1083 : bytes1083=statementBytes 1107 (op1083.map lower) ∧ bytes1083.length=65 := by core033_kernel_decide
def op1084 : List WordIR.Op := [.rotr 1106 11]
def bytes1084 : Bytes := ("    let r00000454: u32 = r00000452.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1084 : bytes1084=statementBytes 1108 (op1084.map lower) ∧ bytes1084.length=65 := by core033_kernel_decide
def op1085 : List WordIR.Op := [.bxor 1107 1108]
def bytes1085 : Bytes := ("    let r00000455: u32 = r00000453 ^ r00000454;\n" : String).toByteArray.data.toList
theorem checked1085 : bytes1085=statementBytes 1109 (op1085.map lower) ∧ bytes1085.length=48 := by core033_kernel_decide
def op1086 : List WordIR.Op := [.rotr 1106 25]
def bytes1086 : Bytes := ("    let r00000456: u32 = r00000452.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1086 : bytes1086=statementBytes 1110 (op1086.map lower) ∧ bytes1086.length=65 := by core033_kernel_decide
def op1087 : List WordIR.Op := [.bxor 1109 1110]
def bytes1087 : Bytes := ("    let r00000457: u32 = r00000455 ^ r00000456;\n" : String).toByteArray.data.toList
theorem checked1087 : bytes1087=statementBytes 1111 (op1087.map lower) ∧ bytes1087.length=48 := by core033_kernel_decide
def innerBlocks16 : List (List WordIR.Op) := [op1024,op1025,op1026,op1027,op1028,op1029,op1030,op1031,op1032,op1033,op1034,op1035,op1036,op1037,op1038,op1039,op1040,op1041,op1042,op1043,op1044,op1045,op1046,op1047,op1048,op1049,op1050,op1051,op1052,op1053,op1054,op1055,op1056,op1057,op1058,op1059,op1060,op1061,op1062,op1063,op1064,op1065,op1066,op1067,op1068,op1069,op1070,op1071,op1072,op1073,op1074,op1075,op1076,op1077,op1078,op1079,op1080,op1081,op1082,op1083,op1084,op1085,op1086,op1087]
def innerBytes16 : List Bytes := [bytes1024,bytes1025,bytes1026,bytes1027,bytes1028,bytes1029,bytes1030,bytes1031,bytes1032,bytes1033,bytes1034,bytes1035,bytes1036,bytes1037,bytes1038,bytes1039,bytes1040,bytes1041,bytes1042,bytes1043,bytes1044,bytes1045,bytes1046,bytes1047,bytes1048,bytes1049,bytes1050,bytes1051,bytes1052,bytes1053,bytes1054,bytes1055,bytes1056,bytes1057,bytes1058,bytes1059,bytes1060,bytes1061,bytes1062,bytes1063,bytes1064,bytes1065,bytes1066,bytes1067,bytes1068,bytes1069,bytes1070,bytes1071,bytes1072,bytes1073,bytes1074,bytes1075,bytes1076,bytes1077,bytes1078,bytes1079,bytes1080,bytes1081,bytes1082,bytes1083,bytes1084,bytes1085,bytes1086,bytes1087]
def partOps16 : List WordIR.Op := innerBlocks16.flatten
def partBytes16 : Bytes := innerBytes16.flatten
theorem partChain16 : BlockChain 1048 innerBlocks16 innerBytes16 := by
  unfold innerBlocks16 innerBytes16
  exact (.cons _ _ _ _ _ checked1024.1 (.cons _ _ _ _ _ checked1025.1 (.cons _ _ _ _ _ checked1026.1 (.cons _ _ _ _ _ checked1027.1 (.cons _ _ _ _ _ checked1028.1 (.cons _ _ _ _ _ checked1029.1 (.cons _ _ _ _ _ checked1030.1 (.cons _ _ _ _ _ checked1031.1 (.cons _ _ _ _ _ checked1032.1 (.cons _ _ _ _ _ checked1033.1 (.cons _ _ _ _ _ checked1034.1 (.cons _ _ _ _ _ checked1035.1 (.cons _ _ _ _ _ checked1036.1 (.cons _ _ _ _ _ checked1037.1 (.cons _ _ _ _ _ checked1038.1 (.cons _ _ _ _ _ checked1039.1 (.cons _ _ _ _ _ checked1040.1 (.cons _ _ _ _ _ checked1041.1 (.cons _ _ _ _ _ checked1042.1 (.cons _ _ _ _ _ checked1043.1 (.cons _ _ _ _ _ checked1044.1 (.cons _ _ _ _ _ checked1045.1 (.cons _ _ _ _ _ checked1046.1 (.cons _ _ _ _ _ checked1047.1 (.cons _ _ _ _ _ checked1048.1 (.cons _ _ _ _ _ checked1049.1 (.cons _ _ _ _ _ checked1050.1 (.cons _ _ _ _ _ checked1051.1 (.cons _ _ _ _ _ checked1052.1 (.cons _ _ _ _ _ checked1053.1 (.cons _ _ _ _ _ checked1054.1 (.cons _ _ _ _ _ checked1055.1 (.cons _ _ _ _ _ checked1056.1 (.cons _ _ _ _ _ checked1057.1 (.cons _ _ _ _ _ checked1058.1 (.cons _ _ _ _ _ checked1059.1 (.cons _ _ _ _ _ checked1060.1 (.cons _ _ _ _ _ checked1061.1 (.cons _ _ _ _ _ checked1062.1 (.cons _ _ _ _ _ checked1063.1 (.cons _ _ _ _ _ checked1064.1 (.cons _ _ _ _ _ checked1065.1 (.cons _ _ _ _ _ checked1066.1 (.cons _ _ _ _ _ checked1067.1 (.cons _ _ _ _ _ checked1068.1 (.cons _ _ _ _ _ checked1069.1 (.cons _ _ _ _ _ checked1070.1 (.cons _ _ _ _ _ checked1071.1 (.cons _ _ _ _ _ checked1072.1 (.cons _ _ _ _ _ checked1073.1 (.cons _ _ _ _ _ checked1074.1 (.cons _ _ _ _ _ checked1075.1 (.cons _ _ _ _ _ checked1076.1 (.cons _ _ _ _ _ checked1077.1 (.cons _ _ _ _ _ checked1078.1 (.cons _ _ _ _ _ checked1079.1 (.cons _ _ _ _ _ checked1080.1 (.cons _ _ _ _ _ checked1081.1 (.cons _ _ _ _ _ checked1082.1 (.cons _ _ _ _ _ checked1083.1 (.cons _ _ _ _ _ checked1084.1 (.cons _ _ _ _ _ checked1085.1 (.cons _ _ _ _ _ checked1086.1 (.cons _ _ _ _ _ checked1087.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked16 : partBytes16=statementBytes 1048 (partOps16.map lower) ∧ partBytes16.length=3495 := by
  constructor
  · exact (chain_exact partChain16).trans (body_exact innerBlocks16 1048)
  · simp only [partBytes16,WordSource.chunk_sizes_exact,innerBytes16,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1024.2,checked1025.2,checked1026.2,checked1027.2,checked1028.2,checked1029.2,checked1030.2,checked1031.2,checked1032.2,checked1033.2,checked1034.2,checked1035.2,checked1036.2,checked1037.2,checked1038.2,checked1039.2,checked1040.2,checked1041.2,checked1042.2,checked1043.2,checked1044.2,checked1045.2,checked1046.2,checked1047.2,checked1048.2,checked1049.2,checked1050.2,checked1051.2,checked1052.2,checked1053.2,checked1054.2,checked1055.2,checked1056.2,checked1057.2,checked1058.2,checked1059.2,checked1060.2,checked1061.2,checked1062.2,checked1063.2,checked1064.2,checked1065.2,checked1066.2,checked1067.2,checked1068.2,checked1069.2,checked1070.2,checked1071.2,checked1072.2,checked1073.2,checked1074.2,checked1075.2,checked1076.2,checked1077.2,checked1078.2,checked1079.2,checked1080.2,checked1081.2,checked1082.2,checked1083.2,checked1084.2,checked1085.2,checked1086.2,checked1087.2]
    decide
theorem partLength16 : partOps16.length=64 := by
  simp only [partOps16,innerBlocks16,op1024,op1025,op1026,op1027,op1028,op1029,op1030,op1031,op1032,op1033,op1034,op1035,op1036,op1037,op1038,op1039,op1040,op1041,op1042,op1043,op1044,op1045,op1046,op1047,op1048,op1049,op1050,op1051,op1052,op1053,op1054,op1055,op1056,op1057,op1058,op1059,op1060,op1061,op1062,op1063,op1064,op1065,op1066,op1067,op1068,op1069,op1070,op1071,op1072,op1073,op1074,op1075,op1076,op1077,op1078,op1079,op1080,op1081,op1082,op1083,op1084,op1085,op1086,op1087,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
