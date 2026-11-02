import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1088 : List WordIR.Op := [.badd 1025 1111]
def bytes1088 : Bytes := ("    let r00000458: u32 = r00000401.wrapping_add(r00000457);\n" : String).toByteArray.data.toList
theorem checked1088 : bytes1088=statementBytes 1112 (op1088.map lower) ∧ bytes1088.length=60 := by core033_kernel_decide
def op1089 : List WordIR.Op := [.band 1106 1079]
def bytes1089 : Bytes := ("    let r00000459: u32 = r00000452 & r00000437;\n" : String).toByteArray.data.toList
theorem checked1089 : bytes1089=statementBytes 1113 (op1089.map lower) ∧ bytes1089.length=48 := by core033_kernel_decide
def op1090 : List WordIR.Op := [.bnot 1106]
def bytes1090 : Bytes := ("    let r0000045a: u32 = !r00000452;\n" : String).toByteArray.data.toList
theorem checked1090 : bytes1090=statementBytes 1114 (op1090.map lower) ∧ bytes1090.length=37 := by core033_kernel_decide
def op1091 : List WordIR.Op := [.band 1114 1052]
def bytes1091 : Bytes := ("    let r0000045b: u32 = r0000045a & r0000041c;\n" : String).toByteArray.data.toList
theorem checked1091 : bytes1091=statementBytes 1115 (op1091.map lower) ∧ bytes1091.length=48 := by core033_kernel_decide
def op1092 : List WordIR.Op := [.bxor 1113 1115]
def bytes1092 : Bytes := ("    let r0000045c: u32 = r00000459 ^ r0000045b;\n" : String).toByteArray.data.toList
theorem checked1092 : bytes1092=statementBytes 1116 (op1092.map lower) ∧ bytes1092.length=48 := by core033_kernel_decide
def op1093 : List WordIR.Op := [.badd 1112 1116]
def bytes1093 : Bytes := ("    let r0000045d: u32 = r00000458.wrapping_add(r0000045c);\n" : String).toByteArray.data.toList
theorem checked1093 : bytes1093=statementBytes 1117 (op1093.map lower) ∧ bytes1093.length=60 := by core033_kernel_decide
def op1094 : List WordIR.Op := [.literal (BitVec.ofNat 32 4022224774)]
def bytes1094 : Bytes := ("    let r0000045e: u32 = 0xefbe4786_u32;\n" : String).toByteArray.data.toList
theorem checked1094 : bytes1094=statementBytes 1118 (op1094.map lower) ∧ bytes1094.length=41 := by core033_kernel_decide
def op1095 : List WordIR.Op := [.badd 1117 1118]
def bytes1095 : Bytes := ("    let r0000045f: u32 = r0000045d.wrapping_add(r0000045e);\n" : String).toByteArray.data.toList
theorem checked1095 : bytes1095=statementBytes 1119 (op1095.map lower) ∧ bytes1095.length=60 := by core033_kernel_decide
def op1096 : List WordIR.Op := [.badd 1119 49]
def bytes1096 : Bytes := ("    let r00000460: u32 = r0000045f.wrapping_add(r00000031);\n" : String).toByteArray.data.toList
theorem checked1096 : bytes1096=statementBytes 1120 (op1096.map lower) ∧ bytes1096.length=60 := by core033_kernel_decide
def op1097 : List WordIR.Op := [.rotr 1105 2]
def bytes1097 : Bytes := ("    let r00000461: u32 = r00000451.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1097 : bytes1097=statementBytes 1121 (op1097.map lower) ∧ bytes1097.length=65 := by core033_kernel_decide
def op1098 : List WordIR.Op := [.rotr 1105 13]
def bytes1098 : Bytes := ("    let r00000462: u32 = r00000451.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1098 : bytes1098=statementBytes 1122 (op1098.map lower) ∧ bytes1098.length=65 := by core033_kernel_decide
def op1099 : List WordIR.Op := [.bxor 1121 1122]
def bytes1099 : Bytes := ("    let r00000463: u32 = r00000461 ^ r00000462;\n" : String).toByteArray.data.toList
theorem checked1099 : bytes1099=statementBytes 1123 (op1099.map lower) ∧ bytes1099.length=48 := by core033_kernel_decide
def op1100 : List WordIR.Op := [.rotr 1105 22]
def bytes1100 : Bytes := ("    let r00000464: u32 = r00000451.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1100 : bytes1100=statementBytes 1124 (op1100.map lower) ∧ bytes1100.length=65 := by core033_kernel_decide
def op1101 : List WordIR.Op := [.bxor 1123 1124]
def bytes1101 : Bytes := ("    let r00000465: u32 = r00000463 ^ r00000464;\n" : String).toByteArray.data.toList
theorem checked1101 : bytes1101=statementBytes 1125 (op1101.map lower) ∧ bytes1101.length=48 := by core033_kernel_decide
def op1102 : List WordIR.Op := [.band 1105 1078]
def bytes1102 : Bytes := ("    let r00000466: u32 = r00000451 & r00000436;\n" : String).toByteArray.data.toList
theorem checked1102 : bytes1102=statementBytes 1126 (op1102.map lower) ∧ bytes1102.length=48 := by core033_kernel_decide
def op1103 : List WordIR.Op := [.band 1105 1051]
def bytes1103 : Bytes := ("    let r00000467: u32 = r00000451 & r0000041b;\n" : String).toByteArray.data.toList
theorem checked1103 : bytes1103=statementBytes 1127 (op1103.map lower) ∧ bytes1103.length=48 := by core033_kernel_decide
def op1104 : List WordIR.Op := [.bxor 1126 1127]
def bytes1104 : Bytes := ("    let r00000468: u32 = r00000466 ^ r00000467;\n" : String).toByteArray.data.toList
theorem checked1104 : bytes1104=statementBytes 1128 (op1104.map lower) ∧ bytes1104.length=48 := by core033_kernel_decide
def op1105 : List WordIR.Op := [.band 1078 1051]
def bytes1105 : Bytes := ("    let r00000469: u32 = r00000436 & r0000041b;\n" : String).toByteArray.data.toList
theorem checked1105 : bytes1105=statementBytes 1129 (op1105.map lower) ∧ bytes1105.length=48 := by core033_kernel_decide
def op1106 : List WordIR.Op := [.bxor 1128 1129]
def bytes1106 : Bytes := ("    let r0000046a: u32 = r00000468 ^ r00000469;\n" : String).toByteArray.data.toList
theorem checked1106 : bytes1106=statementBytes 1130 (op1106.map lower) ∧ bytes1106.length=48 := by core033_kernel_decide
def op1107 : List WordIR.Op := [.badd 1125 1130]
def bytes1107 : Bytes := ("    let r0000046b: u32 = r00000465.wrapping_add(r0000046a);\n" : String).toByteArray.data.toList
theorem checked1107 : bytes1107=statementBytes 1131 (op1107.map lower) ∧ bytes1107.length=60 := by core033_kernel_decide
def op1108 : List WordIR.Op := [.badd 1120 1131]
def bytes1108 : Bytes := ("    let r0000046c: u32 = r00000460.wrapping_add(r0000046b);\n" : String).toByteArray.data.toList
theorem checked1108 : bytes1108=statementBytes 1132 (op1108.map lower) ∧ bytes1108.length=60 := by core033_kernel_decide
def op1109 : List WordIR.Op := [.badd 1024 1120]
def bytes1109 : Bytes := ("    let r0000046d: u32 = r00000400.wrapping_add(r00000460);\n" : String).toByteArray.data.toList
theorem checked1109 : bytes1109=statementBytes 1133 (op1109.map lower) ∧ bytes1109.length=60 := by core033_kernel_decide
def op1110 : List WordIR.Op := [.rotr 1133 6]
def bytes1110 : Bytes := ("    let r0000046e: u32 = r0000046d.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1110 : bytes1110=statementBytes 1134 (op1110.map lower) ∧ bytes1110.length=65 := by core033_kernel_decide
def op1111 : List WordIR.Op := [.rotr 1133 11]
def bytes1111 : Bytes := ("    let r0000046f: u32 = r0000046d.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1111 : bytes1111=statementBytes 1135 (op1111.map lower) ∧ bytes1111.length=65 := by core033_kernel_decide
def op1112 : List WordIR.Op := [.bxor 1134 1135]
def bytes1112 : Bytes := ("    let r00000470: u32 = r0000046e ^ r0000046f;\n" : String).toByteArray.data.toList
theorem checked1112 : bytes1112=statementBytes 1136 (op1112.map lower) ∧ bytes1112.length=48 := by core033_kernel_decide
def op1113 : List WordIR.Op := [.rotr 1133 25]
def bytes1113 : Bytes := ("    let r00000471: u32 = r0000046d.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1113 : bytes1113=statementBytes 1137 (op1113.map lower) ∧ bytes1113.length=65 := by core033_kernel_decide
def op1114 : List WordIR.Op := [.bxor 1136 1137]
def bytes1114 : Bytes := ("    let r00000472: u32 = r00000470 ^ r00000471;\n" : String).toByteArray.data.toList
theorem checked1114 : bytes1114=statementBytes 1138 (op1114.map lower) ∧ bytes1114.length=48 := by core033_kernel_decide
def op1115 : List WordIR.Op := [.badd 1052 1138]
def bytes1115 : Bytes := ("    let r00000473: u32 = r0000041c.wrapping_add(r00000472);\n" : String).toByteArray.data.toList
theorem checked1115 : bytes1115=statementBytes 1139 (op1115.map lower) ∧ bytes1115.length=60 := by core033_kernel_decide
def op1116 : List WordIR.Op := [.band 1133 1106]
def bytes1116 : Bytes := ("    let r00000474: u32 = r0000046d & r00000452;\n" : String).toByteArray.data.toList
theorem checked1116 : bytes1116=statementBytes 1140 (op1116.map lower) ∧ bytes1116.length=48 := by core033_kernel_decide
def op1117 : List WordIR.Op := [.bnot 1133]
def bytes1117 : Bytes := ("    let r00000475: u32 = !r0000046d;\n" : String).toByteArray.data.toList
theorem checked1117 : bytes1117=statementBytes 1141 (op1117.map lower) ∧ bytes1117.length=37 := by core033_kernel_decide
def op1118 : List WordIR.Op := [.band 1141 1079]
def bytes1118 : Bytes := ("    let r00000476: u32 = r00000475 & r00000437;\n" : String).toByteArray.data.toList
theorem checked1118 : bytes1118=statementBytes 1142 (op1118.map lower) ∧ bytes1118.length=48 := by core033_kernel_decide
def op1119 : List WordIR.Op := [.bxor 1140 1142]
def bytes1119 : Bytes := ("    let r00000477: u32 = r00000474 ^ r00000476;\n" : String).toByteArray.data.toList
theorem checked1119 : bytes1119=statementBytes 1143 (op1119.map lower) ∧ bytes1119.length=48 := by core033_kernel_decide
def op1120 : List WordIR.Op := [.badd 1139 1143]
def bytes1120 : Bytes := ("    let r00000478: u32 = r00000473.wrapping_add(r00000477);\n" : String).toByteArray.data.toList
theorem checked1120 : bytes1120=statementBytes 1144 (op1120.map lower) ∧ bytes1120.length=60 := by core033_kernel_decide
def op1121 : List WordIR.Op := [.literal (BitVec.ofNat 32 264347078)]
def bytes1121 : Bytes := ("    let r00000479: u32 = 0x0fc19dc6_u32;\n" : String).toByteArray.data.toList
theorem checked1121 : bytes1121=statementBytes 1145 (op1121.map lower) ∧ bytes1121.length=41 := by core033_kernel_decide
def op1122 : List WordIR.Op := [.badd 1144 1145]
def bytes1122 : Bytes := ("    let r0000047a: u32 = r00000478.wrapping_add(r00000479);\n" : String).toByteArray.data.toList
theorem checked1122 : bytes1122=statementBytes 1146 (op1122.map lower) ∧ bytes1122.length=60 := by core033_kernel_decide
def op1123 : List WordIR.Op := [.badd 1146 62]
def bytes1123 : Bytes := ("    let r0000047b: u32 = r0000047a.wrapping_add(r0000003e);\n" : String).toByteArray.data.toList
theorem checked1123 : bytes1123=statementBytes 1147 (op1123.map lower) ∧ bytes1123.length=60 := by core033_kernel_decide
def op1124 : List WordIR.Op := [.rotr 1132 2]
def bytes1124 : Bytes := ("    let r0000047c: u32 = r0000046c.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1124 : bytes1124=statementBytes 1148 (op1124.map lower) ∧ bytes1124.length=65 := by core033_kernel_decide
def op1125 : List WordIR.Op := [.rotr 1132 13]
def bytes1125 : Bytes := ("    let r0000047d: u32 = r0000046c.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1125 : bytes1125=statementBytes 1149 (op1125.map lower) ∧ bytes1125.length=65 := by core033_kernel_decide
def op1126 : List WordIR.Op := [.bxor 1148 1149]
def bytes1126 : Bytes := ("    let r0000047e: u32 = r0000047c ^ r0000047d;\n" : String).toByteArray.data.toList
theorem checked1126 : bytes1126=statementBytes 1150 (op1126.map lower) ∧ bytes1126.length=48 := by core033_kernel_decide
def op1127 : List WordIR.Op := [.rotr 1132 22]
def bytes1127 : Bytes := ("    let r0000047f: u32 = r0000046c.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1127 : bytes1127=statementBytes 1151 (op1127.map lower) ∧ bytes1127.length=65 := by core033_kernel_decide
def op1128 : List WordIR.Op := [.bxor 1150 1151]
def bytes1128 : Bytes := ("    let r00000480: u32 = r0000047e ^ r0000047f;\n" : String).toByteArray.data.toList
theorem checked1128 : bytes1128=statementBytes 1152 (op1128.map lower) ∧ bytes1128.length=48 := by core033_kernel_decide
def op1129 : List WordIR.Op := [.band 1132 1105]
def bytes1129 : Bytes := ("    let r00000481: u32 = r0000046c & r00000451;\n" : String).toByteArray.data.toList
theorem checked1129 : bytes1129=statementBytes 1153 (op1129.map lower) ∧ bytes1129.length=48 := by core033_kernel_decide
def op1130 : List WordIR.Op := [.band 1132 1078]
def bytes1130 : Bytes := ("    let r00000482: u32 = r0000046c & r00000436;\n" : String).toByteArray.data.toList
theorem checked1130 : bytes1130=statementBytes 1154 (op1130.map lower) ∧ bytes1130.length=48 := by core033_kernel_decide
def op1131 : List WordIR.Op := [.bxor 1153 1154]
def bytes1131 : Bytes := ("    let r00000483: u32 = r00000481 ^ r00000482;\n" : String).toByteArray.data.toList
theorem checked1131 : bytes1131=statementBytes 1155 (op1131.map lower) ∧ bytes1131.length=48 := by core033_kernel_decide
def op1132 : List WordIR.Op := [.band 1105 1078]
def bytes1132 : Bytes := ("    let r00000484: u32 = r00000451 & r00000436;\n" : String).toByteArray.data.toList
theorem checked1132 : bytes1132=statementBytes 1156 (op1132.map lower) ∧ bytes1132.length=48 := by core033_kernel_decide
def op1133 : List WordIR.Op := [.bxor 1155 1156]
def bytes1133 : Bytes := ("    let r00000485: u32 = r00000483 ^ r00000484;\n" : String).toByteArray.data.toList
theorem checked1133 : bytes1133=statementBytes 1157 (op1133.map lower) ∧ bytes1133.length=48 := by core033_kernel_decide
def op1134 : List WordIR.Op := [.badd 1152 1157]
def bytes1134 : Bytes := ("    let r00000486: u32 = r00000480.wrapping_add(r00000485);\n" : String).toByteArray.data.toList
theorem checked1134 : bytes1134=statementBytes 1158 (op1134.map lower) ∧ bytes1134.length=60 := by core033_kernel_decide
def op1135 : List WordIR.Op := [.badd 1147 1158]
def bytes1135 : Bytes := ("    let r00000487: u32 = r0000047b.wrapping_add(r00000486);\n" : String).toByteArray.data.toList
theorem checked1135 : bytes1135=statementBytes 1159 (op1135.map lower) ∧ bytes1135.length=60 := by core033_kernel_decide
def op1136 : List WordIR.Op := [.badd 1051 1147]
def bytes1136 : Bytes := ("    let r00000488: u32 = r0000041b.wrapping_add(r0000047b);\n" : String).toByteArray.data.toList
theorem checked1136 : bytes1136=statementBytes 1160 (op1136.map lower) ∧ bytes1136.length=60 := by core033_kernel_decide
def op1137 : List WordIR.Op := [.rotr 1160 6]
def bytes1137 : Bytes := ("    let r00000489: u32 = r00000488.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1137 : bytes1137=statementBytes 1161 (op1137.map lower) ∧ bytes1137.length=65 := by core033_kernel_decide
def op1138 : List WordIR.Op := [.rotr 1160 11]
def bytes1138 : Bytes := ("    let r0000048a: u32 = r00000488.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1138 : bytes1138=statementBytes 1162 (op1138.map lower) ∧ bytes1138.length=65 := by core033_kernel_decide
def op1139 : List WordIR.Op := [.bxor 1161 1162]
def bytes1139 : Bytes := ("    let r0000048b: u32 = r00000489 ^ r0000048a;\n" : String).toByteArray.data.toList
theorem checked1139 : bytes1139=statementBytes 1163 (op1139.map lower) ∧ bytes1139.length=48 := by core033_kernel_decide
def op1140 : List WordIR.Op := [.rotr 1160 25]
def bytes1140 : Bytes := ("    let r0000048c: u32 = r00000488.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1140 : bytes1140=statementBytes 1164 (op1140.map lower) ∧ bytes1140.length=65 := by core033_kernel_decide
def op1141 : List WordIR.Op := [.bxor 1163 1164]
def bytes1141 : Bytes := ("    let r0000048d: u32 = r0000048b ^ r0000048c;\n" : String).toByteArray.data.toList
theorem checked1141 : bytes1141=statementBytes 1165 (op1141.map lower) ∧ bytes1141.length=48 := by core033_kernel_decide
def op1142 : List WordIR.Op := [.badd 1079 1165]
def bytes1142 : Bytes := ("    let r0000048e: u32 = r00000437.wrapping_add(r0000048d);\n" : String).toByteArray.data.toList
theorem checked1142 : bytes1142=statementBytes 1166 (op1142.map lower) ∧ bytes1142.length=60 := by core033_kernel_decide
def op1143 : List WordIR.Op := [.band 1160 1133]
def bytes1143 : Bytes := ("    let r0000048f: u32 = r00000488 & r0000046d;\n" : String).toByteArray.data.toList
theorem checked1143 : bytes1143=statementBytes 1167 (op1143.map lower) ∧ bytes1143.length=48 := by core033_kernel_decide
def op1144 : List WordIR.Op := [.bnot 1160]
def bytes1144 : Bytes := ("    let r00000490: u32 = !r00000488;\n" : String).toByteArray.data.toList
theorem checked1144 : bytes1144=statementBytes 1168 (op1144.map lower) ∧ bytes1144.length=37 := by core033_kernel_decide
def op1145 : List WordIR.Op := [.band 1168 1106]
def bytes1145 : Bytes := ("    let r00000491: u32 = r00000490 & r00000452;\n" : String).toByteArray.data.toList
theorem checked1145 : bytes1145=statementBytes 1169 (op1145.map lower) ∧ bytes1145.length=48 := by core033_kernel_decide
def op1146 : List WordIR.Op := [.bxor 1167 1169]
def bytes1146 : Bytes := ("    let r00000492: u32 = r0000048f ^ r00000491;\n" : String).toByteArray.data.toList
theorem checked1146 : bytes1146=statementBytes 1170 (op1146.map lower) ∧ bytes1146.length=48 := by core033_kernel_decide
def op1147 : List WordIR.Op := [.badd 1166 1170]
def bytes1147 : Bytes := ("    let r00000493: u32 = r0000048e.wrapping_add(r00000492);\n" : String).toByteArray.data.toList
theorem checked1147 : bytes1147=statementBytes 1171 (op1147.map lower) ∧ bytes1147.length=60 := by core033_kernel_decide
def op1148 : List WordIR.Op := [.literal (BitVec.ofNat 32 604807628)]
def bytes1148 : Bytes := ("    let r00000494: u32 = 0x240ca1cc_u32;\n" : String).toByteArray.data.toList
theorem checked1148 : bytes1148=statementBytes 1172 (op1148.map lower) ∧ bytes1148.length=41 := by core033_kernel_decide
def op1149 : List WordIR.Op := [.badd 1171 1172]
def bytes1149 : Bytes := ("    let r00000495: u32 = r00000493.wrapping_add(r00000494);\n" : String).toByteArray.data.toList
theorem checked1149 : bytes1149=statementBytes 1173 (op1149.map lower) ∧ bytes1149.length=60 := by core033_kernel_decide
def op1150 : List WordIR.Op := [.badd 1173 75]
def bytes1150 : Bytes := ("    let r00000496: u32 = r00000495.wrapping_add(r0000004b);\n" : String).toByteArray.data.toList
theorem checked1150 : bytes1150=statementBytes 1174 (op1150.map lower) ∧ bytes1150.length=60 := by core033_kernel_decide
def op1151 : List WordIR.Op := [.rotr 1159 2]
def bytes1151 : Bytes := ("    let r00000497: u32 = r00000487.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1151 : bytes1151=statementBytes 1175 (op1151.map lower) ∧ bytes1151.length=65 := by core033_kernel_decide
def innerBlocks17 : List (List WordIR.Op) := [op1088,op1089,op1090,op1091,op1092,op1093,op1094,op1095,op1096,op1097,op1098,op1099,op1100,op1101,op1102,op1103,op1104,op1105,op1106,op1107,op1108,op1109,op1110,op1111,op1112,op1113,op1114,op1115,op1116,op1117,op1118,op1119,op1120,op1121,op1122,op1123,op1124,op1125,op1126,op1127,op1128,op1129,op1130,op1131,op1132,op1133,op1134,op1135,op1136,op1137,op1138,op1139,op1140,op1141,op1142,op1143,op1144,op1145,op1146,op1147,op1148,op1149,op1150,op1151]
def innerBytes17 : List Bytes := [bytes1088,bytes1089,bytes1090,bytes1091,bytes1092,bytes1093,bytes1094,bytes1095,bytes1096,bytes1097,bytes1098,bytes1099,bytes1100,bytes1101,bytes1102,bytes1103,bytes1104,bytes1105,bytes1106,bytes1107,bytes1108,bytes1109,bytes1110,bytes1111,bytes1112,bytes1113,bytes1114,bytes1115,bytes1116,bytes1117,bytes1118,bytes1119,bytes1120,bytes1121,bytes1122,bytes1123,bytes1124,bytes1125,bytes1126,bytes1127,bytes1128,bytes1129,bytes1130,bytes1131,bytes1132,bytes1133,bytes1134,bytes1135,bytes1136,bytes1137,bytes1138,bytes1139,bytes1140,bytes1141,bytes1142,bytes1143,bytes1144,bytes1145,bytes1146,bytes1147,bytes1148,bytes1149,bytes1150,bytes1151]
def partOps17 : List WordIR.Op := innerBlocks17.flatten
def partBytes17 : Bytes := innerBytes17.flatten
theorem partChain17 : BlockChain 1112 innerBlocks17 innerBytes17 := by
  unfold innerBlocks17 innerBytes17
  exact (.cons _ _ _ _ _ checked1088.1 (.cons _ _ _ _ _ checked1089.1 (.cons _ _ _ _ _ checked1090.1 (.cons _ _ _ _ _ checked1091.1 (.cons _ _ _ _ _ checked1092.1 (.cons _ _ _ _ _ checked1093.1 (.cons _ _ _ _ _ checked1094.1 (.cons _ _ _ _ _ checked1095.1 (.cons _ _ _ _ _ checked1096.1 (.cons _ _ _ _ _ checked1097.1 (.cons _ _ _ _ _ checked1098.1 (.cons _ _ _ _ _ checked1099.1 (.cons _ _ _ _ _ checked1100.1 (.cons _ _ _ _ _ checked1101.1 (.cons _ _ _ _ _ checked1102.1 (.cons _ _ _ _ _ checked1103.1 (.cons _ _ _ _ _ checked1104.1 (.cons _ _ _ _ _ checked1105.1 (.cons _ _ _ _ _ checked1106.1 (.cons _ _ _ _ _ checked1107.1 (.cons _ _ _ _ _ checked1108.1 (.cons _ _ _ _ _ checked1109.1 (.cons _ _ _ _ _ checked1110.1 (.cons _ _ _ _ _ checked1111.1 (.cons _ _ _ _ _ checked1112.1 (.cons _ _ _ _ _ checked1113.1 (.cons _ _ _ _ _ checked1114.1 (.cons _ _ _ _ _ checked1115.1 (.cons _ _ _ _ _ checked1116.1 (.cons _ _ _ _ _ checked1117.1 (.cons _ _ _ _ _ checked1118.1 (.cons _ _ _ _ _ checked1119.1 (.cons _ _ _ _ _ checked1120.1 (.cons _ _ _ _ _ checked1121.1 (.cons _ _ _ _ _ checked1122.1 (.cons _ _ _ _ _ checked1123.1 (.cons _ _ _ _ _ checked1124.1 (.cons _ _ _ _ _ checked1125.1 (.cons _ _ _ _ _ checked1126.1 (.cons _ _ _ _ _ checked1127.1 (.cons _ _ _ _ _ checked1128.1 (.cons _ _ _ _ _ checked1129.1 (.cons _ _ _ _ _ checked1130.1 (.cons _ _ _ _ _ checked1131.1 (.cons _ _ _ _ _ checked1132.1 (.cons _ _ _ _ _ checked1133.1 (.cons _ _ _ _ _ checked1134.1 (.cons _ _ _ _ _ checked1135.1 (.cons _ _ _ _ _ checked1136.1 (.cons _ _ _ _ _ checked1137.1 (.cons _ _ _ _ _ checked1138.1 (.cons _ _ _ _ _ checked1139.1 (.cons _ _ _ _ _ checked1140.1 (.cons _ _ _ _ _ checked1141.1 (.cons _ _ _ _ _ checked1142.1 (.cons _ _ _ _ _ checked1143.1 (.cons _ _ _ _ _ checked1144.1 (.cons _ _ _ _ _ checked1145.1 (.cons _ _ _ _ _ checked1146.1 (.cons _ _ _ _ _ checked1147.1 (.cons _ _ _ _ _ checked1148.1 (.cons _ _ _ _ _ checked1149.1 (.cons _ _ _ _ _ checked1150.1 (.cons _ _ _ _ _ checked1151.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked17 : partBytes17=statementBytes 1112 (partOps17.map lower) ∧ partBytes17.length=3455 := by
  constructor
  · exact (chain_exact partChain17).trans (body_exact innerBlocks17 1112)
  · simp only [partBytes17,WordSource.chunk_sizes_exact,innerBytes17,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1088.2,checked1089.2,checked1090.2,checked1091.2,checked1092.2,checked1093.2,checked1094.2,checked1095.2,checked1096.2,checked1097.2,checked1098.2,checked1099.2,checked1100.2,checked1101.2,checked1102.2,checked1103.2,checked1104.2,checked1105.2,checked1106.2,checked1107.2,checked1108.2,checked1109.2,checked1110.2,checked1111.2,checked1112.2,checked1113.2,checked1114.2,checked1115.2,checked1116.2,checked1117.2,checked1118.2,checked1119.2,checked1120.2,checked1121.2,checked1122.2,checked1123.2,checked1124.2,checked1125.2,checked1126.2,checked1127.2,checked1128.2,checked1129.2,checked1130.2,checked1131.2,checked1132.2,checked1133.2,checked1134.2,checked1135.2,checked1136.2,checked1137.2,checked1138.2,checked1139.2,checked1140.2,checked1141.2,checked1142.2,checked1143.2,checked1144.2,checked1145.2,checked1146.2,checked1147.2,checked1148.2,checked1149.2,checked1150.2,checked1151.2]
theorem partLength17 : partOps17.length=64 := by
  simp only [partOps17,innerBlocks17,op1088,op1089,op1090,op1091,op1092,op1093,op1094,op1095,op1096,op1097,op1098,op1099,op1100,op1101,op1102,op1103,op1104,op1105,op1106,op1107,op1108,op1109,op1110,op1111,op1112,op1113,op1114,op1115,op1116,op1117,op1118,op1119,op1120,op1121,op1122,op1123,op1124,op1125,op1126,op1127,op1128,op1129,op1130,op1131,op1132,op1133,op1134,op1135,op1136,op1137,op1138,op1139,op1140,op1141,op1142,op1143,op1144,op1145,op1146,op1147,op1148,op1149,op1150,op1151,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
