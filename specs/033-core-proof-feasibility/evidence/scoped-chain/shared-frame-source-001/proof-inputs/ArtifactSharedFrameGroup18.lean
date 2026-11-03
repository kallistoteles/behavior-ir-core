import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup18
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1152 : List WordIR.Op := [.bxor 1194 43]
def bytes1152 : Bytes := ("    let r000004ab: u32 = r000004aa ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1152 : bytes1152=statementBytes 1195 (op1152.map lower) ∧ bytes1152.length=48 := by core033_kernel_decide
def op1153 : List WordIR.Op := [.shr 755 8]
def bytes1153 : Bytes := ("    let r000004ac: u32 = r000002f3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1153 : bytes1153=statementBytes 1196 (op1153.map lower) ∧ bytes1153.length=54 := by core033_kernel_decide
def op1154 : List WordIR.Op := [.band 1196 50]
def bytes1154 : Bytes := ("    let r000004ad: u32 = r000004ac & r00000032;\n" : String).toByteArray.data.toList
theorem checked1154 : bytes1154=statementBytes 1197 (op1154.map lower) ∧ bytes1154.length=48 := by core033_kernel_decide
def op1155 : List WordIR.Op := [.bxor 1196 50]
def bytes1155 : Bytes := ("    let r000004ae: u32 = r000004ac ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked1155 : bytes1155=statementBytes 1198 (op1155.map lower) ∧ bytes1155.length=48 := by core033_kernel_decide
def op1156 : List WordIR.Op := [.badd 1196 50]
def bytes1156 : Bytes := ("    let r000004af: u32 = r000004ac.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked1156 : bytes1156=statementBytes 1199 (op1156.map lower) ∧ bytes1156.length=60 := by core033_kernel_decide
def op1157 : List WordIR.Op := [.bnot 1199]
def bytes1157 : Bytes := ("    let r000004b0: u32 = !r000004af;\n" : String).toByteArray.data.toList
theorem checked1157 : bytes1157=statementBytes 1200 (op1157.map lower) ∧ bytes1157.length=37 := by core033_kernel_decide
def op1158 : List WordIR.Op := [.band 1198 1200]
def bytes1158 : Bytes := ("    let r000004b1: u32 = r000004ae & r000004b0;\n" : String).toByteArray.data.toList
theorem checked1158 : bytes1158=statementBytes 1201 (op1158.map lower) ∧ bytes1158.length=48 := by core033_kernel_decide
def op1159 : List WordIR.Op := [.bxor 1197 1201]
def bytes1159 : Bytes := ("    let r000004b2: u32 = r000004ad ^ r000004b1;\n" : String).toByteArray.data.toList
theorem checked1159 : bytes1159=statementBytes 1202 (op1159.map lower) ∧ bytes1159.length=48 := by core033_kernel_decide
def op1160 : List WordIR.Op := [.shr 1202 31]
def bytes1160 : Bytes := ("    let r000004b3: u32 = r000004b2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1160 : bytes1160=statementBytes 1203 (op1160.map lower) ∧ bytes1160.length=54 := by core033_kernel_decide
def op1161 : List WordIR.Op := [.bxor 1203 43]
def bytes1161 : Bytes := ("    let r000004b4: u32 = r000004b3 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1161 : bytes1161=statementBytes 1204 (op1161.map lower) ∧ bytes1161.length=48 := by core033_kernel_decide
def op1162 : List WordIR.Op := [.shr 758 8]
def bytes1162 : Bytes := ("    let r000004b5: u32 = r000002f6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1162 : bytes1162=statementBytes 1205 (op1162.map lower) ∧ bytes1162.length=54 := by core033_kernel_decide
def op1163 : List WordIR.Op := [.band 1205 50]
def bytes1163 : Bytes := ("    let r000004b6: u32 = r000004b5 & r00000032;\n" : String).toByteArray.data.toList
theorem checked1163 : bytes1163=statementBytes 1206 (op1163.map lower) ∧ bytes1163.length=48 := by core033_kernel_decide
def op1164 : List WordIR.Op := [.bxor 1205 50]
def bytes1164 : Bytes := ("    let r000004b7: u32 = r000004b5 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked1164 : bytes1164=statementBytes 1207 (op1164.map lower) ∧ bytes1164.length=48 := by core033_kernel_decide
def op1165 : List WordIR.Op := [.badd 1205 50]
def bytes1165 : Bytes := ("    let r000004b8: u32 = r000004b5.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked1165 : bytes1165=statementBytes 1208 (op1165.map lower) ∧ bytes1165.length=60 := by core033_kernel_decide
def op1166 : List WordIR.Op := [.bnot 1208]
def bytes1166 : Bytes := ("    let r000004b9: u32 = !r000004b8;\n" : String).toByteArray.data.toList
theorem checked1166 : bytes1166=statementBytes 1209 (op1166.map lower) ∧ bytes1166.length=37 := by core033_kernel_decide
def op1167 : List WordIR.Op := [.band 1207 1209]
def bytes1167 : Bytes := ("    let r000004ba: u32 = r000004b7 & r000004b9;\n" : String).toByteArray.data.toList
theorem checked1167 : bytes1167=statementBytes 1210 (op1167.map lower) ∧ bytes1167.length=48 := by core033_kernel_decide
def op1168 : List WordIR.Op := [.bxor 1206 1210]
def bytes1168 : Bytes := ("    let r000004bb: u32 = r000004b6 ^ r000004ba;\n" : String).toByteArray.data.toList
theorem checked1168 : bytes1168=statementBytes 1211 (op1168.map lower) ∧ bytes1168.length=48 := by core033_kernel_decide
def op1169 : List WordIR.Op := [.shr 1211 31]
def bytes1169 : Bytes := ("    let r000004bc: u32 = r000004bb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1169 : bytes1169=statementBytes 1212 (op1169.map lower) ∧ bytes1169.length=54 := by core033_kernel_decide
def op1170 : List WordIR.Op := [.bxor 1212 43]
def bytes1170 : Bytes := ("    let r000004bd: u32 = r000004bc ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1170 : bytes1170=statementBytes 1213 (op1170.map lower) ∧ bytes1170.length=48 := by core033_kernel_decide
def op1171 : List WordIR.Op := [.shr 761 8]
def bytes1171 : Bytes := ("    let r000004be: u32 = r000002f9 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1171 : bytes1171=statementBytes 1214 (op1171.map lower) ∧ bytes1171.length=54 := by core033_kernel_decide
def op1172 : List WordIR.Op := [.band 1214 50]
def bytes1172 : Bytes := ("    let r000004bf: u32 = r000004be & r00000032;\n" : String).toByteArray.data.toList
theorem checked1172 : bytes1172=statementBytes 1215 (op1172.map lower) ∧ bytes1172.length=48 := by core033_kernel_decide
def op1173 : List WordIR.Op := [.bxor 1214 50]
def bytes1173 : Bytes := ("    let r000004c0: u32 = r000004be ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked1173 : bytes1173=statementBytes 1216 (op1173.map lower) ∧ bytes1173.length=48 := by core033_kernel_decide
def op1174 : List WordIR.Op := [.badd 1214 50]
def bytes1174 : Bytes := ("    let r000004c1: u32 = r000004be.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked1174 : bytes1174=statementBytes 1217 (op1174.map lower) ∧ bytes1174.length=60 := by core033_kernel_decide
def op1175 : List WordIR.Op := [.bnot 1217]
def bytes1175 : Bytes := ("    let r000004c2: u32 = !r000004c1;\n" : String).toByteArray.data.toList
theorem checked1175 : bytes1175=statementBytes 1218 (op1175.map lower) ∧ bytes1175.length=37 := by core033_kernel_decide
def op1176 : List WordIR.Op := [.band 1216 1218]
def bytes1176 : Bytes := ("    let r000004c3: u32 = r000004c0 & r000004c2;\n" : String).toByteArray.data.toList
theorem checked1176 : bytes1176=statementBytes 1219 (op1176.map lower) ∧ bytes1176.length=48 := by core033_kernel_decide
def op1177 : List WordIR.Op := [.bxor 1215 1219]
def bytes1177 : Bytes := ("    let r000004c4: u32 = r000004bf ^ r000004c3;\n" : String).toByteArray.data.toList
theorem checked1177 : bytes1177=statementBytes 1220 (op1177.map lower) ∧ bytes1177.length=48 := by core033_kernel_decide
def op1178 : List WordIR.Op := [.shr 1220 31]
def bytes1178 : Bytes := ("    let r000004c5: u32 = r000004c4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1178 : bytes1178=statementBytes 1221 (op1178.map lower) ∧ bytes1178.length=54 := by core033_kernel_decide
def op1179 : List WordIR.Op := [.bxor 1221 43]
def bytes1179 : Bytes := ("    let r000004c6: u32 = r000004c5 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1179 : bytes1179=statementBytes 1222 (op1179.map lower) ∧ bytes1179.length=48 := by core033_kernel_decide
def op1180 : List WordIR.Op := [.shr 764 8]
def bytes1180 : Bytes := ("    let r000004c7: u32 = r000002fc >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1180 : bytes1180=statementBytes 1223 (op1180.map lower) ∧ bytes1180.length=54 := by core033_kernel_decide
def op1181 : List WordIR.Op := [.band 1223 50]
def bytes1181 : Bytes := ("    let r000004c8: u32 = r000004c7 & r00000032;\n" : String).toByteArray.data.toList
theorem checked1181 : bytes1181=statementBytes 1224 (op1181.map lower) ∧ bytes1181.length=48 := by core033_kernel_decide
def op1182 : List WordIR.Op := [.bxor 1223 50]
def bytes1182 : Bytes := ("    let r000004c9: u32 = r000004c7 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked1182 : bytes1182=statementBytes 1225 (op1182.map lower) ∧ bytes1182.length=48 := by core033_kernel_decide
def op1183 : List WordIR.Op := [.badd 1223 50]
def bytes1183 : Bytes := ("    let r000004ca: u32 = r000004c7.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked1183 : bytes1183=statementBytes 1226 (op1183.map lower) ∧ bytes1183.length=60 := by core033_kernel_decide
def op1184 : List WordIR.Op := [.bnot 1226]
def bytes1184 : Bytes := ("    let r000004cb: u32 = !r000004ca;\n" : String).toByteArray.data.toList
theorem checked1184 : bytes1184=statementBytes 1227 (op1184.map lower) ∧ bytes1184.length=37 := by core033_kernel_decide
def op1185 : List WordIR.Op := [.band 1225 1227]
def bytes1185 : Bytes := ("    let r000004cc: u32 = r000004c9 & r000004cb;\n" : String).toByteArray.data.toList
theorem checked1185 : bytes1185=statementBytes 1228 (op1185.map lower) ∧ bytes1185.length=48 := by core033_kernel_decide
def op1186 : List WordIR.Op := [.bxor 1224 1228]
def bytes1186 : Bytes := ("    let r000004cd: u32 = r000004c8 ^ r000004cc;\n" : String).toByteArray.data.toList
theorem checked1186 : bytes1186=statementBytes 1229 (op1186.map lower) ∧ bytes1186.length=48 := by core033_kernel_decide
def op1187 : List WordIR.Op := [.shr 1229 31]
def bytes1187 : Bytes := ("    let r000004ce: u32 = r000004cd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1187 : bytes1187=statementBytes 1230 (op1187.map lower) ∧ bytes1187.length=54 := by core033_kernel_decide
def op1188 : List WordIR.Op := [.bxor 1230 43]
def bytes1188 : Bytes := ("    let r000004cf: u32 = r000004ce ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1188 : bytes1188=statementBytes 1231 (op1188.map lower) ∧ bytes1188.length=48 := by core033_kernel_decide
def op1189 : List WordIR.Op := [.shr 767 8]
def bytes1189 : Bytes := ("    let r000004d0: u32 = r000002ff >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1189 : bytes1189=statementBytes 1232 (op1189.map lower) ∧ bytes1189.length=54 := by core033_kernel_decide
def op1190 : List WordIR.Op := [.band 1232 50]
def bytes1190 : Bytes := ("    let r000004d1: u32 = r000004d0 & r00000032;\n" : String).toByteArray.data.toList
theorem checked1190 : bytes1190=statementBytes 1233 (op1190.map lower) ∧ bytes1190.length=48 := by core033_kernel_decide
def op1191 : List WordIR.Op := [.bxor 1232 50]
def bytes1191 : Bytes := ("    let r000004d2: u32 = r000004d0 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked1191 : bytes1191=statementBytes 1234 (op1191.map lower) ∧ bytes1191.length=48 := by core033_kernel_decide
def op1192 : List WordIR.Op := [.badd 1232 50]
def bytes1192 : Bytes := ("    let r000004d3: u32 = r000004d0.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked1192 : bytes1192=statementBytes 1235 (op1192.map lower) ∧ bytes1192.length=60 := by core033_kernel_decide
def op1193 : List WordIR.Op := [.bnot 1235]
def bytes1193 : Bytes := ("    let r000004d4: u32 = !r000004d3;\n" : String).toByteArray.data.toList
theorem checked1193 : bytes1193=statementBytes 1236 (op1193.map lower) ∧ bytes1193.length=37 := by core033_kernel_decide
def op1194 : List WordIR.Op := [.band 1234 1236]
def bytes1194 : Bytes := ("    let r000004d5: u32 = r000004d2 & r000004d4;\n" : String).toByteArray.data.toList
theorem checked1194 : bytes1194=statementBytes 1237 (op1194.map lower) ∧ bytes1194.length=48 := by core033_kernel_decide
def op1195 : List WordIR.Op := [.bxor 1233 1237]
def bytes1195 : Bytes := ("    let r000004d6: u32 = r000004d1 ^ r000004d5;\n" : String).toByteArray.data.toList
theorem checked1195 : bytes1195=statementBytes 1238 (op1195.map lower) ∧ bytes1195.length=48 := by core033_kernel_decide
def op1196 : List WordIR.Op := [.shr 1238 31]
def bytes1196 : Bytes := ("    let r000004d7: u32 = r000004d6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1196 : bytes1196=statementBytes 1239 (op1196.map lower) ∧ bytes1196.length=54 := by core033_kernel_decide
def op1197 : List WordIR.Op := [.bxor 1239 43]
def bytes1197 : Bytes := ("    let r000004d8: u32 = r000004d7 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1197 : bytes1197=statementBytes 1240 (op1197.map lower) ∧ bytes1197.length=48 := by core033_kernel_decide
def op1198 : List WordIR.Op := [.shr 770 8]
def bytes1198 : Bytes := ("    let r000004d9: u32 = r00000302 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1198 : bytes1198=statementBytes 1241 (op1198.map lower) ∧ bytes1198.length=54 := by core033_kernel_decide
def op1199 : List WordIR.Op := [.band 1241 50]
def bytes1199 : Bytes := ("    let r000004da: u32 = r000004d9 & r00000032;\n" : String).toByteArray.data.toList
theorem checked1199 : bytes1199=statementBytes 1242 (op1199.map lower) ∧ bytes1199.length=48 := by core033_kernel_decide
def op1200 : List WordIR.Op := [.bxor 1241 50]
def bytes1200 : Bytes := ("    let r000004db: u32 = r000004d9 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked1200 : bytes1200=statementBytes 1243 (op1200.map lower) ∧ bytes1200.length=48 := by core033_kernel_decide
def op1201 : List WordIR.Op := [.badd 1241 50]
def bytes1201 : Bytes := ("    let r000004dc: u32 = r000004d9.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked1201 : bytes1201=statementBytes 1244 (op1201.map lower) ∧ bytes1201.length=60 := by core033_kernel_decide
def op1202 : List WordIR.Op := [.bnot 1244]
def bytes1202 : Bytes := ("    let r000004dd: u32 = !r000004dc;\n" : String).toByteArray.data.toList
theorem checked1202 : bytes1202=statementBytes 1245 (op1202.map lower) ∧ bytes1202.length=37 := by core033_kernel_decide
def op1203 : List WordIR.Op := [.band 1243 1245]
def bytes1203 : Bytes := ("    let r000004de: u32 = r000004db & r000004dd;\n" : String).toByteArray.data.toList
theorem checked1203 : bytes1203=statementBytes 1246 (op1203.map lower) ∧ bytes1203.length=48 := by core033_kernel_decide
def op1204 : List WordIR.Op := [.bxor 1242 1246]
def bytes1204 : Bytes := ("    let r000004df: u32 = r000004da ^ r000004de;\n" : String).toByteArray.data.toList
theorem checked1204 : bytes1204=statementBytes 1247 (op1204.map lower) ∧ bytes1204.length=48 := by core033_kernel_decide
def op1205 : List WordIR.Op := [.shr 1247 31]
def bytes1205 : Bytes := ("    let r000004e0: u32 = r000004df >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1205 : bytes1205=statementBytes 1248 (op1205.map lower) ∧ bytes1205.length=54 := by core033_kernel_decide
def op1206 : List WordIR.Op := [.bxor 1248 43]
def bytes1206 : Bytes := ("    let r000004e1: u32 = r000004e0 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1206 : bytes1206=statementBytes 1249 (op1206.map lower) ∧ bytes1206.length=48 := by core033_kernel_decide
def op1207 : List WordIR.Op := [.shr 773 8]
def bytes1207 : Bytes := ("    let r000004e2: u32 = r00000305 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1207 : bytes1207=statementBytes 1250 (op1207.map lower) ∧ bytes1207.length=54 := by core033_kernel_decide
def op1208 : List WordIR.Op := [.band 1250 50]
def bytes1208 : Bytes := ("    let r000004e3: u32 = r000004e2 & r00000032;\n" : String).toByteArray.data.toList
theorem checked1208 : bytes1208=statementBytes 1251 (op1208.map lower) ∧ bytes1208.length=48 := by core033_kernel_decide
def op1209 : List WordIR.Op := [.bxor 1250 50]
def bytes1209 : Bytes := ("    let r000004e4: u32 = r000004e2 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked1209 : bytes1209=statementBytes 1252 (op1209.map lower) ∧ bytes1209.length=48 := by core033_kernel_decide
def op1210 : List WordIR.Op := [.badd 1250 50]
def bytes1210 : Bytes := ("    let r000004e5: u32 = r000004e2.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked1210 : bytes1210=statementBytes 1253 (op1210.map lower) ∧ bytes1210.length=60 := by core033_kernel_decide
def op1211 : List WordIR.Op := [.bnot 1253]
def bytes1211 : Bytes := ("    let r000004e6: u32 = !r000004e5;\n" : String).toByteArray.data.toList
theorem checked1211 : bytes1211=statementBytes 1254 (op1211.map lower) ∧ bytes1211.length=37 := by core033_kernel_decide
def op1212 : List WordIR.Op := [.band 1252 1254]
def bytes1212 : Bytes := ("    let r000004e7: u32 = r000004e4 & r000004e6;\n" : String).toByteArray.data.toList
theorem checked1212 : bytes1212=statementBytes 1255 (op1212.map lower) ∧ bytes1212.length=48 := by core033_kernel_decide
def op1213 : List WordIR.Op := [.bxor 1251 1255]
def bytes1213 : Bytes := ("    let r000004e8: u32 = r000004e3 ^ r000004e7;\n" : String).toByteArray.data.toList
theorem checked1213 : bytes1213=statementBytes 1256 (op1213.map lower) ∧ bytes1213.length=48 := by core033_kernel_decide
def op1214 : List WordIR.Op := [.shr 1256 31]
def bytes1214 : Bytes := ("    let r000004e9: u32 = r000004e8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1214 : bytes1214=statementBytes 1257 (op1214.map lower) ∧ bytes1214.length=54 := by core033_kernel_decide
def op1215 : List WordIR.Op := [.bxor 1257 43]
def bytes1215 : Bytes := ("    let r000004ea: u32 = r000004e9 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked1215 : bytes1215=statementBytes 1258 (op1215.map lower) ∧ bytes1215.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1152,op1153,op1154,op1155,op1156,op1157,op1158,op1159,op1160,op1161,op1162,op1163,op1164,op1165,op1166,op1167,op1168,op1169,op1170,op1171,op1172,op1173,op1174,op1175,op1176,op1177,op1178,op1179,op1180,op1181,op1182,op1183,op1184,op1185,op1186,op1187,op1188,op1189,op1190,op1191,op1192,op1193,op1194,op1195,op1196,op1197,op1198,op1199,op1200,op1201,op1202,op1203,op1204,op1205,op1206,op1207,op1208,op1209,op1210,op1211,op1212,op1213,op1214,op1215]
def chunks : List Bytes := [bytes1152,bytes1153,bytes1154,bytes1155,bytes1156,bytes1157,bytes1158,bytes1159,bytes1160,bytes1161,bytes1162,bytes1163,bytes1164,bytes1165,bytes1166,bytes1167,bytes1168,bytes1169,bytes1170,bytes1171,bytes1172,bytes1173,bytes1174,bytes1175,bytes1176,bytes1177,bytes1178,bytes1179,bytes1180,bytes1181,bytes1182,bytes1183,bytes1184,bytes1185,bytes1186,bytes1187,bytes1188,bytes1189,bytes1190,bytes1191,bytes1192,bytes1193,bytes1194,bytes1195,bytes1196,bytes1197,bytes1198,bytes1199,bytes1200,bytes1201,bytes1202,bytes1203,bytes1204,bytes1205,bytes1206,bytes1207,bytes1208,bytes1209,bytes1210,bytes1211,bytes1212,bytes1213,bytes1214,bytes1215]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1195 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1152.1 (.cons _ _ _ _ _ checked1153.1 (.cons _ _ _ _ _ checked1154.1 (.cons _ _ _ _ _ checked1155.1 (.cons _ _ _ _ _ checked1156.1 (.cons _ _ _ _ _ checked1157.1 (.cons _ _ _ _ _ checked1158.1 (.cons _ _ _ _ _ checked1159.1 (.cons _ _ _ _ _ checked1160.1 (.cons _ _ _ _ _ checked1161.1 (.cons _ _ _ _ _ checked1162.1 (.cons _ _ _ _ _ checked1163.1 (.cons _ _ _ _ _ checked1164.1 (.cons _ _ _ _ _ checked1165.1 (.cons _ _ _ _ _ checked1166.1 (.cons _ _ _ _ _ checked1167.1 (.cons _ _ _ _ _ checked1168.1 (.cons _ _ _ _ _ checked1169.1 (.cons _ _ _ _ _ checked1170.1 (.cons _ _ _ _ _ checked1171.1 (.cons _ _ _ _ _ checked1172.1 (.cons _ _ _ _ _ checked1173.1 (.cons _ _ _ _ _ checked1174.1 (.cons _ _ _ _ _ checked1175.1 (.cons _ _ _ _ _ checked1176.1 (.cons _ _ _ _ _ checked1177.1 (.cons _ _ _ _ _ checked1178.1 (.cons _ _ _ _ _ checked1179.1 (.cons _ _ _ _ _ checked1180.1 (.cons _ _ _ _ _ checked1181.1 (.cons _ _ _ _ _ checked1182.1 (.cons _ _ _ _ _ checked1183.1 (.cons _ _ _ _ _ checked1184.1 (.cons _ _ _ _ _ checked1185.1 (.cons _ _ _ _ _ checked1186.1 (.cons _ _ _ _ _ checked1187.1 (.cons _ _ _ _ _ checked1188.1 (.cons _ _ _ _ _ checked1189.1 (.cons _ _ _ _ _ checked1190.1 (.cons _ _ _ _ _ checked1191.1 (.cons _ _ _ _ _ checked1192.1 (.cons _ _ _ _ _ checked1193.1 (.cons _ _ _ _ _ checked1194.1 (.cons _ _ _ _ _ checked1195.1 (.cons _ _ _ _ _ checked1196.1 (.cons _ _ _ _ _ checked1197.1 (.cons _ _ _ _ _ checked1198.1 (.cons _ _ _ _ _ checked1199.1 (.cons _ _ _ _ _ checked1200.1 (.cons _ _ _ _ _ checked1201.1 (.cons _ _ _ _ _ checked1202.1 (.cons _ _ _ _ _ checked1203.1 (.cons _ _ _ _ _ checked1204.1 (.cons _ _ _ _ _ checked1205.1 (.cons _ _ _ _ _ checked1206.1 (.cons _ _ _ _ _ checked1207.1 (.cons _ _ _ _ _ checked1208.1 (.cons _ _ _ _ _ checked1209.1 (.cons _ _ _ _ _ checked1210.1 (.cons _ _ _ _ _ checked1211.1 (.cons _ _ _ _ _ checked1212.1 (.cons _ _ _ _ _ checked1213.1 (.cons _ _ _ _ _ checked1214.1 (.cons _ _ _ _ _ checked1215.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1195 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3163 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1152.2,checked1153.2,checked1154.2,checked1155.2,checked1156.2,checked1157.2,checked1158.2,checked1159.2,checked1160.2,checked1161.2,checked1162.2,checked1163.2,checked1164.2,checked1165.2,checked1166.2,checked1167.2,checked1168.2,checked1169.2,checked1170.2,checked1171.2,checked1172.2,checked1173.2,checked1174.2,checked1175.2,checked1176.2,checked1177.2,checked1178.2,checked1179.2,checked1180.2,checked1181.2,checked1182.2,checked1183.2,checked1184.2,checked1185.2,checked1186.2,checked1187.2,checked1188.2,checked1189.2,checked1190.2,checked1191.2,checked1192.2,checked1193.2,checked1194.2,checked1195.2,checked1196.2,checked1197.2,checked1198.2,checked1199.2,checked1200.2,checked1201.2,checked1202.2,checked1203.2,checked1204.2,checked1205.2,checked1206.2,checked1207.2,checked1208.2,checked1209.2,checked1210.2,checked1211.2,checked1212.2,checked1213.2,checked1214.2,checked1215.2]
  decide
end ArtifactSharedFrameGroup18
