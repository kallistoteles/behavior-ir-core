import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup17
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1088 : List WordIR.Op := [.badd 1182 1183]
def bytes1088 : Bytes := ("    let r000004a0: u32 = r0000049e.wrapping_add(r0000049f);\n" : String).toByteArray.data.toList
theorem checked1088 : bytes1088=statementBytes 1184 (op1088.map lower) ∧ bytes1088.length=60 := by core033_kernel_decide
def op1089 : List WordIR.Op := [.bnot 1184]
def bytes1089 : Bytes := ("    let r000004a1: u32 = !r000004a0;\n" : String).toByteArray.data.toList
theorem checked1089 : bytes1089=statementBytes 1185 (op1089.map lower) ∧ bytes1089.length=37 := by core033_kernel_decide
def op1090 : List WordIR.Op := [.band 1185 715]
def bytes1090 : Bytes := ("    let r000004a2: u32 = r000004a1 & r000002cb;\n" : String).toByteArray.data.toList
theorem checked1090 : bytes1090=statementBytes 1186 (op1090.map lower) ∧ bytes1090.length=48 := by core033_kernel_decide
def op1091 : List WordIR.Op := [.bxor 1178 1186]
def bytes1091 : Bytes := ("    let r000004a3: u32 = r0000049a ^ r000004a2;\n" : String).toByteArray.data.toList
theorem checked1091 : bytes1091=statementBytes 1187 (op1091.map lower) ∧ bytes1091.length=48 := by core033_kernel_decide
def op1092 : List WordIR.Op := [.band 1171 1187]
def bytes1092 : Bytes := ("    let r000004a4: u32 = r00000493 & r000004a3;\n" : String).toByteArray.data.toList
theorem checked1092 : bytes1092=statementBytes 1188 (op1092.map lower) ∧ bytes1092.length=48 := by core033_kernel_decide
def op1093 : List WordIR.Op := [.shr 1138 1]
def bytes1093 : Bytes := ("    let r000004a5: u32 = r00000472 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1093 : bytes1093=statementBytes 1189 (op1093.map lower) ∧ bytes1093.length=54 := by core033_kernel_decide
def op1094 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1094 : Bytes := ("    let r000004a6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1094 : bytes1094=statementBytes 1190 (op1094.map lower) ∧ bytes1094.length=41 := by core033_kernel_decide
def op1095 : List WordIR.Op := [.band 1189 1190]
def bytes1095 : Bytes := ("    let r000004a7: u32 = r000004a5 & r000004a6;\n" : String).toByteArray.data.toList
theorem checked1095 : bytes1095=statementBytes 1191 (op1095.map lower) ∧ bytes1095.length=48 := by core033_kernel_decide
def op1096 : List WordIR.Op := [.bnot 1191]
def bytes1096 : Bytes := ("    let r000004a8: u32 = !r000004a7;\n" : String).toByteArray.data.toList
theorem checked1096 : bytes1096=statementBytes 1192 (op1096.map lower) ∧ bytes1096.length=37 := by core033_kernel_decide
def op1097 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1097 : Bytes := ("    let r000004a9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1097 : bytes1097=statementBytes 1193 (op1097.map lower) ∧ bytes1097.length=41 := by core033_kernel_decide
def op1098 : List WordIR.Op := [.badd 1192 1193]
def bytes1098 : Bytes := ("    let r000004aa: u32 = r000004a8.wrapping_add(r000004a9);\n" : String).toByteArray.data.toList
theorem checked1098 : bytes1098=statementBytes 1194 (op1098.map lower) ∧ bytes1098.length=60 := by core033_kernel_decide
def op1099 : List WordIR.Op := [.bnot 1194]
def bytes1099 : Bytes := ("    let r000004ab: u32 = !r000004aa;\n" : String).toByteArray.data.toList
theorem checked1099 : bytes1099=statementBytes 1195 (op1099.map lower) ∧ bytes1099.length=37 := by core033_kernel_decide
def op1100 : List WordIR.Op := [.shr 1138 0]
def bytes1100 : Bytes := ("    let r000004ac: u32 = r00000472 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1100 : bytes1100=statementBytes 1196 (op1100.map lower) ∧ bytes1100.length=54 := by core033_kernel_decide
def op1101 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1101 : Bytes := ("    let r000004ad: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1101 : bytes1101=statementBytes 1197 (op1101.map lower) ∧ bytes1101.length=41 := by core033_kernel_decide
def op1102 : List WordIR.Op := [.band 1196 1197]
def bytes1102 : Bytes := ("    let r000004ae: u32 = r000004ac & r000004ad;\n" : String).toByteArray.data.toList
theorem checked1102 : bytes1102=statementBytes 1198 (op1102.map lower) ∧ bytes1102.length=48 := by core033_kernel_decide
def op1103 : List WordIR.Op := [.bnot 1198]
def bytes1103 : Bytes := ("    let r000004af: u32 = !r000004ae;\n" : String).toByteArray.data.toList
theorem checked1103 : bytes1103=statementBytes 1199 (op1103.map lower) ∧ bytes1103.length=37 := by core033_kernel_decide
def op1104 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1104 : Bytes := ("    let r000004b0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1104 : bytes1104=statementBytes 1200 (op1104.map lower) ∧ bytes1104.length=41 := by core033_kernel_decide
def op1105 : List WordIR.Op := [.badd 1199 1200]
def bytes1105 : Bytes := ("    let r000004b1: u32 = r000004af.wrapping_add(r000004b0);\n" : String).toByteArray.data.toList
theorem checked1105 : bytes1105=statementBytes 1201 (op1105.map lower) ∧ bytes1105.length=60 := by core033_kernel_decide
def op1106 : List WordIR.Op := [.band 1201 704]
def bytes1106 : Bytes := ("    let r000004b2: u32 = r000004b1 & r000002c0;\n" : String).toByteArray.data.toList
theorem checked1106 : bytes1106=statementBytes 1202 (op1106.map lower) ∧ bytes1106.length=48 := by core033_kernel_decide
def op1107 : List WordIR.Op := [.shr 1138 0]
def bytes1107 : Bytes := ("    let r000004b3: u32 = r00000472 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1107 : bytes1107=statementBytes 1203 (op1107.map lower) ∧ bytes1107.length=54 := by core033_kernel_decide
def op1108 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1108 : Bytes := ("    let r000004b4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1108 : bytes1108=statementBytes 1204 (op1108.map lower) ∧ bytes1108.length=41 := by core033_kernel_decide
def op1109 : List WordIR.Op := [.band 1203 1204]
def bytes1109 : Bytes := ("    let r000004b5: u32 = r000004b3 & r000004b4;\n" : String).toByteArray.data.toList
theorem checked1109 : bytes1109=statementBytes 1205 (op1109.map lower) ∧ bytes1109.length=48 := by core033_kernel_decide
def op1110 : List WordIR.Op := [.bnot 1205]
def bytes1110 : Bytes := ("    let r000004b6: u32 = !r000004b5;\n" : String).toByteArray.data.toList
theorem checked1110 : bytes1110=statementBytes 1206 (op1110.map lower) ∧ bytes1110.length=37 := by core033_kernel_decide
def op1111 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1111 : Bytes := ("    let r000004b7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1111 : bytes1111=statementBytes 1207 (op1111.map lower) ∧ bytes1111.length=41 := by core033_kernel_decide
def op1112 : List WordIR.Op := [.badd 1206 1207]
def bytes1112 : Bytes := ("    let r000004b8: u32 = r000004b6.wrapping_add(r000004b7);\n" : String).toByteArray.data.toList
theorem checked1112 : bytes1112=statementBytes 1208 (op1112.map lower) ∧ bytes1112.length=60 := by core033_kernel_decide
def op1113 : List WordIR.Op := [.bnot 1208]
def bytes1113 : Bytes := ("    let r000004b9: u32 = !r000004b8;\n" : String).toByteArray.data.toList
theorem checked1113 : bytes1113=statementBytes 1209 (op1113.map lower) ∧ bytes1113.length=37 := by core033_kernel_decide
def op1114 : List WordIR.Op := [.band 1209 693]
def bytes1114 : Bytes := ("    let r000004ba: u32 = r000004b9 & r000002b5;\n" : String).toByteArray.data.toList
theorem checked1114 : bytes1114=statementBytes 1210 (op1114.map lower) ∧ bytes1114.length=48 := by core033_kernel_decide
def op1115 : List WordIR.Op := [.bxor 1202 1210]
def bytes1115 : Bytes := ("    let r000004bb: u32 = r000004b2 ^ r000004ba;\n" : String).toByteArray.data.toList
theorem checked1115 : bytes1115=statementBytes 1211 (op1115.map lower) ∧ bytes1115.length=48 := by core033_kernel_decide
def op1116 : List WordIR.Op := [.band 1195 1211]
def bytes1116 : Bytes := ("    let r000004bc: u32 = r000004ab & r000004bb;\n" : String).toByteArray.data.toList
theorem checked1116 : bytes1116=statementBytes 1212 (op1116.map lower) ∧ bytes1116.length=48 := by core033_kernel_decide
def op1117 : List WordIR.Op := [.bxor 1188 1212]
def bytes1117 : Bytes := ("    let r000004bd: u32 = r000004a4 ^ r000004bc;\n" : String).toByteArray.data.toList
theorem checked1117 : bytes1117=statementBytes 1213 (op1117.map lower) ∧ bytes1117.length=48 := by core033_kernel_decide
def op1118 : List WordIR.Op := [.band 1165 1213]
def bytes1118 : Bytes := ("    let r000004be: u32 = r0000048d & r000004bd;\n" : String).toByteArray.data.toList
theorem checked1118 : bytes1118=statementBytes 1214 (op1118.map lower) ∧ bytes1118.length=48 := by core033_kernel_decide
def op1119 : List WordIR.Op := [.shr 1138 2]
def bytes1119 : Bytes := ("    let r000004bf: u32 = r00000472 >> 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked1119 : bytes1119=statementBytes 1215 (op1119.map lower) ∧ bytes1119.length=54 := by core033_kernel_decide
def op1120 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1120 : Bytes := ("    let r000004c0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1120 : bytes1120=statementBytes 1216 (op1120.map lower) ∧ bytes1120.length=41 := by core033_kernel_decide
def op1121 : List WordIR.Op := [.band 1215 1216]
def bytes1121 : Bytes := ("    let r000004c1: u32 = r000004bf & r000004c0;\n" : String).toByteArray.data.toList
theorem checked1121 : bytes1121=statementBytes 1217 (op1121.map lower) ∧ bytes1121.length=48 := by core033_kernel_decide
def op1122 : List WordIR.Op := [.bnot 1217]
def bytes1122 : Bytes := ("    let r000004c2: u32 = !r000004c1;\n" : String).toByteArray.data.toList
theorem checked1122 : bytes1122=statementBytes 1218 (op1122.map lower) ∧ bytes1122.length=37 := by core033_kernel_decide
def op1123 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1123 : Bytes := ("    let r000004c3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1123 : bytes1123=statementBytes 1219 (op1123.map lower) ∧ bytes1123.length=41 := by core033_kernel_decide
def op1124 : List WordIR.Op := [.badd 1218 1219]
def bytes1124 : Bytes := ("    let r000004c4: u32 = r000004c2.wrapping_add(r000004c3);\n" : String).toByteArray.data.toList
theorem checked1124 : bytes1124=statementBytes 1220 (op1124.map lower) ∧ bytes1124.length=60 := by core033_kernel_decide
def op1125 : List WordIR.Op := [.bnot 1220]
def bytes1125 : Bytes := ("    let r000004c5: u32 = !r000004c4;\n" : String).toByteArray.data.toList
theorem checked1125 : bytes1125=statementBytes 1221 (op1125.map lower) ∧ bytes1125.length=37 := by core033_kernel_decide
def op1126 : List WordIR.Op := [.shr 1138 1]
def bytes1126 : Bytes := ("    let r000004c6: u32 = r00000472 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1126 : bytes1126=statementBytes 1222 (op1126.map lower) ∧ bytes1126.length=54 := by core033_kernel_decide
def op1127 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1127 : Bytes := ("    let r000004c7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1127 : bytes1127=statementBytes 1223 (op1127.map lower) ∧ bytes1127.length=41 := by core033_kernel_decide
def op1128 : List WordIR.Op := [.band 1222 1223]
def bytes1128 : Bytes := ("    let r000004c8: u32 = r000004c6 & r000004c7;\n" : String).toByteArray.data.toList
theorem checked1128 : bytes1128=statementBytes 1224 (op1128.map lower) ∧ bytes1128.length=48 := by core033_kernel_decide
def op1129 : List WordIR.Op := [.bnot 1224]
def bytes1129 : Bytes := ("    let r000004c9: u32 = !r000004c8;\n" : String).toByteArray.data.toList
theorem checked1129 : bytes1129=statementBytes 1225 (op1129.map lower) ∧ bytes1129.length=37 := by core033_kernel_decide
def op1130 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1130 : Bytes := ("    let r000004ca: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1130 : bytes1130=statementBytes 1226 (op1130.map lower) ∧ bytes1130.length=41 := by core033_kernel_decide
def op1131 : List WordIR.Op := [.badd 1225 1226]
def bytes1131 : Bytes := ("    let r000004cb: u32 = r000004c9.wrapping_add(r000004ca);\n" : String).toByteArray.data.toList
theorem checked1131 : bytes1131=statementBytes 1227 (op1131.map lower) ∧ bytes1131.length=60 := by core033_kernel_decide
def op1132 : List WordIR.Op := [.shr 1138 0]
def bytes1132 : Bytes := ("    let r000004cc: u32 = r00000472 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1132 : bytes1132=statementBytes 1228 (op1132.map lower) ∧ bytes1132.length=54 := by core033_kernel_decide
def op1133 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1133 : Bytes := ("    let r000004cd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1133 : bytes1133=statementBytes 1229 (op1133.map lower) ∧ bytes1133.length=41 := by core033_kernel_decide
def op1134 : List WordIR.Op := [.band 1228 1229]
def bytes1134 : Bytes := ("    let r000004ce: u32 = r000004cc & r000004cd;\n" : String).toByteArray.data.toList
theorem checked1134 : bytes1134=statementBytes 1230 (op1134.map lower) ∧ bytes1134.length=48 := by core033_kernel_decide
def op1135 : List WordIR.Op := [.bnot 1230]
def bytes1135 : Bytes := ("    let r000004cf: u32 = !r000004ce;\n" : String).toByteArray.data.toList
theorem checked1135 : bytes1135=statementBytes 1231 (op1135.map lower) ∧ bytes1135.length=37 := by core033_kernel_decide
def op1136 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1136 : Bytes := ("    let r000004d0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1136 : bytes1136=statementBytes 1232 (op1136.map lower) ∧ bytes1136.length=41 := by core033_kernel_decide
def op1137 : List WordIR.Op := [.badd 1231 1232]
def bytes1137 : Bytes := ("    let r000004d1: u32 = r000004cf.wrapping_add(r000004d0);\n" : String).toByteArray.data.toList
theorem checked1137 : bytes1137=statementBytes 1233 (op1137.map lower) ∧ bytes1137.length=60 := by core033_kernel_decide
def op1138 : List WordIR.Op := [.band 1233 682]
def bytes1138 : Bytes := ("    let r000004d2: u32 = r000004d1 & r000002aa;\n" : String).toByteArray.data.toList
theorem checked1138 : bytes1138=statementBytes 1234 (op1138.map lower) ∧ bytes1138.length=48 := by core033_kernel_decide
def op1139 : List WordIR.Op := [.shr 1138 0]
def bytes1139 : Bytes := ("    let r000004d3: u32 = r00000472 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1139 : bytes1139=statementBytes 1235 (op1139.map lower) ∧ bytes1139.length=54 := by core033_kernel_decide
def op1140 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1140 : Bytes := ("    let r000004d4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1140 : bytes1140=statementBytes 1236 (op1140.map lower) ∧ bytes1140.length=41 := by core033_kernel_decide
def op1141 : List WordIR.Op := [.band 1235 1236]
def bytes1141 : Bytes := ("    let r000004d5: u32 = r000004d3 & r000004d4;\n" : String).toByteArray.data.toList
theorem checked1141 : bytes1141=statementBytes 1237 (op1141.map lower) ∧ bytes1141.length=48 := by core033_kernel_decide
def op1142 : List WordIR.Op := [.bnot 1237]
def bytes1142 : Bytes := ("    let r000004d6: u32 = !r000004d5;\n" : String).toByteArray.data.toList
theorem checked1142 : bytes1142=statementBytes 1238 (op1142.map lower) ∧ bytes1142.length=37 := by core033_kernel_decide
def op1143 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1143 : Bytes := ("    let r000004d7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1143 : bytes1143=statementBytes 1239 (op1143.map lower) ∧ bytes1143.length=41 := by core033_kernel_decide
def op1144 : List WordIR.Op := [.badd 1238 1239]
def bytes1144 : Bytes := ("    let r000004d8: u32 = r000004d6.wrapping_add(r000004d7);\n" : String).toByteArray.data.toList
theorem checked1144 : bytes1144=statementBytes 1240 (op1144.map lower) ∧ bytes1144.length=60 := by core033_kernel_decide
def op1145 : List WordIR.Op := [.bnot 1240]
def bytes1145 : Bytes := ("    let r000004d9: u32 = !r000004d8;\n" : String).toByteArray.data.toList
theorem checked1145 : bytes1145=statementBytes 1241 (op1145.map lower) ∧ bytes1145.length=37 := by core033_kernel_decide
def op1146 : List WordIR.Op := [.band 1241 671]
def bytes1146 : Bytes := ("    let r000004da: u32 = r000004d9 & r0000029f;\n" : String).toByteArray.data.toList
theorem checked1146 : bytes1146=statementBytes 1242 (op1146.map lower) ∧ bytes1146.length=48 := by core033_kernel_decide
def op1147 : List WordIR.Op := [.bxor 1234 1242]
def bytes1147 : Bytes := ("    let r000004db: u32 = r000004d2 ^ r000004da;\n" : String).toByteArray.data.toList
theorem checked1147 : bytes1147=statementBytes 1243 (op1147.map lower) ∧ bytes1147.length=48 := by core033_kernel_decide
def op1148 : List WordIR.Op := [.band 1227 1243]
def bytes1148 : Bytes := ("    let r000004dc: u32 = r000004cb & r000004db;\n" : String).toByteArray.data.toList
theorem checked1148 : bytes1148=statementBytes 1244 (op1148.map lower) ∧ bytes1148.length=48 := by core033_kernel_decide
def op1149 : List WordIR.Op := [.shr 1138 1]
def bytes1149 : Bytes := ("    let r000004dd: u32 = r00000472 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1149 : bytes1149=statementBytes 1245 (op1149.map lower) ∧ bytes1149.length=54 := by core033_kernel_decide
def op1150 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1150 : Bytes := ("    let r000004de: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1150 : bytes1150=statementBytes 1246 (op1150.map lower) ∧ bytes1150.length=41 := by core033_kernel_decide
def op1151 : List WordIR.Op := [.band 1245 1246]
def bytes1151 : Bytes := ("    let r000004df: u32 = r000004dd & r000004de;\n" : String).toByteArray.data.toList
theorem checked1151 : bytes1151=statementBytes 1247 (op1151.map lower) ∧ bytes1151.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1088,op1089,op1090,op1091,op1092,op1093,op1094,op1095,op1096,op1097,op1098,op1099,op1100,op1101,op1102,op1103,op1104,op1105,op1106,op1107,op1108,op1109,op1110,op1111,op1112,op1113,op1114,op1115,op1116,op1117,op1118,op1119,op1120,op1121,op1122,op1123,op1124,op1125,op1126,op1127,op1128,op1129,op1130,op1131,op1132,op1133,op1134,op1135,op1136,op1137,op1138,op1139,op1140,op1141,op1142,op1143,op1144,op1145,op1146,op1147,op1148,op1149,op1150,op1151]
def chunks : List Bytes := [bytes1088,bytes1089,bytes1090,bytes1091,bytes1092,bytes1093,bytes1094,bytes1095,bytes1096,bytes1097,bytes1098,bytes1099,bytes1100,bytes1101,bytes1102,bytes1103,bytes1104,bytes1105,bytes1106,bytes1107,bytes1108,bytes1109,bytes1110,bytes1111,bytes1112,bytes1113,bytes1114,bytes1115,bytes1116,bytes1117,bytes1118,bytes1119,bytes1120,bytes1121,bytes1122,bytes1123,bytes1124,bytes1125,bytes1126,bytes1127,bytes1128,bytes1129,bytes1130,bytes1131,bytes1132,bytes1133,bytes1134,bytes1135,bytes1136,bytes1137,bytes1138,bytes1139,bytes1140,bytes1141,bytes1142,bytes1143,bytes1144,bytes1145,bytes1146,bytes1147,bytes1148,bytes1149,bytes1150,bytes1151]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1184 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1088.1 (.cons _ _ _ _ _ checked1089.1 (.cons _ _ _ _ _ checked1090.1 (.cons _ _ _ _ _ checked1091.1 (.cons _ _ _ _ _ checked1092.1 (.cons _ _ _ _ _ checked1093.1 (.cons _ _ _ _ _ checked1094.1 (.cons _ _ _ _ _ checked1095.1 (.cons _ _ _ _ _ checked1096.1 (.cons _ _ _ _ _ checked1097.1 (.cons _ _ _ _ _ checked1098.1 (.cons _ _ _ _ _ checked1099.1 (.cons _ _ _ _ _ checked1100.1 (.cons _ _ _ _ _ checked1101.1 (.cons _ _ _ _ _ checked1102.1 (.cons _ _ _ _ _ checked1103.1 (.cons _ _ _ _ _ checked1104.1 (.cons _ _ _ _ _ checked1105.1 (.cons _ _ _ _ _ checked1106.1 (.cons _ _ _ _ _ checked1107.1 (.cons _ _ _ _ _ checked1108.1 (.cons _ _ _ _ _ checked1109.1 (.cons _ _ _ _ _ checked1110.1 (.cons _ _ _ _ _ checked1111.1 (.cons _ _ _ _ _ checked1112.1 (.cons _ _ _ _ _ checked1113.1 (.cons _ _ _ _ _ checked1114.1 (.cons _ _ _ _ _ checked1115.1 (.cons _ _ _ _ _ checked1116.1 (.cons _ _ _ _ _ checked1117.1 (.cons _ _ _ _ _ checked1118.1 (.cons _ _ _ _ _ checked1119.1 (.cons _ _ _ _ _ checked1120.1 (.cons _ _ _ _ _ checked1121.1 (.cons _ _ _ _ _ checked1122.1 (.cons _ _ _ _ _ checked1123.1 (.cons _ _ _ _ _ checked1124.1 (.cons _ _ _ _ _ checked1125.1 (.cons _ _ _ _ _ checked1126.1 (.cons _ _ _ _ _ checked1127.1 (.cons _ _ _ _ _ checked1128.1 (.cons _ _ _ _ _ checked1129.1 (.cons _ _ _ _ _ checked1130.1 (.cons _ _ _ _ _ checked1131.1 (.cons _ _ _ _ _ checked1132.1 (.cons _ _ _ _ _ checked1133.1 (.cons _ _ _ _ _ checked1134.1 (.cons _ _ _ _ _ checked1135.1 (.cons _ _ _ _ _ checked1136.1 (.cons _ _ _ _ _ checked1137.1 (.cons _ _ _ _ _ checked1138.1 (.cons _ _ _ _ _ checked1139.1 (.cons _ _ _ _ _ checked1140.1 (.cons _ _ _ _ _ checked1141.1 (.cons _ _ _ _ _ checked1142.1 (.cons _ _ _ _ _ checked1143.1 (.cons _ _ _ _ _ checked1144.1 (.cons _ _ _ _ _ checked1145.1 (.cons _ _ _ _ _ checked1146.1 (.cons _ _ _ _ _ checked1147.1 (.cons _ _ _ _ _ checked1148.1 (.cons _ _ _ _ _ checked1149.1 (.cons _ _ _ _ _ checked1150.1 (.cons _ _ _ _ _ checked1151.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1184 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2979 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1088.2,checked1089.2,checked1090.2,checked1091.2,checked1092.2,checked1093.2,checked1094.2,checked1095.2,checked1096.2,checked1097.2,checked1098.2,checked1099.2,checked1100.2,checked1101.2,checked1102.2,checked1103.2,checked1104.2,checked1105.2,checked1106.2,checked1107.2,checked1108.2,checked1109.2,checked1110.2,checked1111.2,checked1112.2,checked1113.2,checked1114.2,checked1115.2,checked1116.2,checked1117.2,checked1118.2,checked1119.2,checked1120.2,checked1121.2,checked1122.2,checked1123.2,checked1124.2,checked1125.2,checked1126.2,checked1127.2,checked1128.2,checked1129.2,checked1130.2,checked1131.2,checked1132.2,checked1133.2,checked1134.2,checked1135.2,checked1136.2,checked1137.2,checked1138.2,checked1139.2,checked1140.2,checked1141.2,checked1142.2,checked1143.2,checked1144.2,checked1145.2,checked1146.2,checked1147.2,checked1148.2,checked1149.2,checked1150.2,checked1151.2]
  decide
end ArtifactPairedPathRoundGroup17
