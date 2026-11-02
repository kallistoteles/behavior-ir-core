import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1216 : List WordIR.Op := [.badd 1228 1239]
def bytes1216 : Bytes := ("    let r000004d8: u32 = r000004cc.wrapping_add(r000004d7);\n" : String).toByteArray.data.toList
theorem checked1216 : bytes1216=statementBytes 1240 (op1216.map lower) ∧ bytes1216.length=60 := by core033_kernel_decide
def op1217 : List WordIR.Op := [.badd 1132 1228]
def bytes1217 : Bytes := ("    let r000004d9: u32 = r0000046c.wrapping_add(r000004cc);\n" : String).toByteArray.data.toList
theorem checked1217 : bytes1217=statementBytes 1241 (op1217.map lower) ∧ bytes1217.length=60 := by core033_kernel_decide
def op1218 : List WordIR.Op := [.rotr 1241 6]
def bytes1218 : Bytes := ("    let r000004da: u32 = r000004d9.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1218 : bytes1218=statementBytes 1242 (op1218.map lower) ∧ bytes1218.length=65 := by core033_kernel_decide
def op1219 : List WordIR.Op := [.rotr 1241 11]
def bytes1219 : Bytes := ("    let r000004db: u32 = r000004d9.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1219 : bytes1219=statementBytes 1243 (op1219.map lower) ∧ bytes1219.length=65 := by core033_kernel_decide
def op1220 : List WordIR.Op := [.bxor 1242 1243]
def bytes1220 : Bytes := ("    let r000004dc: u32 = r000004da ^ r000004db;\n" : String).toByteArray.data.toList
theorem checked1220 : bytes1220=statementBytes 1244 (op1220.map lower) ∧ bytes1220.length=48 := by core033_kernel_decide
def op1221 : List WordIR.Op := [.rotr 1241 25]
def bytes1221 : Bytes := ("    let r000004dd: u32 = r000004d9.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1221 : bytes1221=statementBytes 1245 (op1221.map lower) ∧ bytes1221.length=65 := by core033_kernel_decide
def op1222 : List WordIR.Op := [.bxor 1244 1245]
def bytes1222 : Bytes := ("    let r000004de: u32 = r000004dc ^ r000004dd;\n" : String).toByteArray.data.toList
theorem checked1222 : bytes1222=statementBytes 1246 (op1222.map lower) ∧ bytes1222.length=48 := by core033_kernel_decide
def op1223 : List WordIR.Op := [.badd 1160 1246]
def bytes1223 : Bytes := ("    let r000004df: u32 = r00000488.wrapping_add(r000004de);\n" : String).toByteArray.data.toList
theorem checked1223 : bytes1223=statementBytes 1247 (op1223.map lower) ∧ bytes1223.length=60 := by core033_kernel_decide
def op1224 : List WordIR.Op := [.band 1241 1214]
def bytes1224 : Bytes := ("    let r000004e0: u32 = r000004d9 & r000004be;\n" : String).toByteArray.data.toList
theorem checked1224 : bytes1224=statementBytes 1248 (op1224.map lower) ∧ bytes1224.length=48 := by core033_kernel_decide
def op1225 : List WordIR.Op := [.bnot 1241]
def bytes1225 : Bytes := ("    let r000004e1: u32 = !r000004d9;\n" : String).toByteArray.data.toList
theorem checked1225 : bytes1225=statementBytes 1249 (op1225.map lower) ∧ bytes1225.length=37 := by core033_kernel_decide
def op1226 : List WordIR.Op := [.band 1249 1187]
def bytes1226 : Bytes := ("    let r000004e2: u32 = r000004e1 & r000004a3;\n" : String).toByteArray.data.toList
theorem checked1226 : bytes1226=statementBytes 1250 (op1226.map lower) ∧ bytes1226.length=48 := by core033_kernel_decide
def op1227 : List WordIR.Op := [.bxor 1248 1250]
def bytes1227 : Bytes := ("    let r000004e3: u32 = r000004e0 ^ r000004e2;\n" : String).toByteArray.data.toList
theorem checked1227 : bytes1227=statementBytes 1251 (op1227.map lower) ∧ bytes1227.length=48 := by core033_kernel_decide
def op1228 : List WordIR.Op := [.badd 1247 1251]
def bytes1228 : Bytes := ("    let r000004e4: u32 = r000004df.wrapping_add(r000004e3);\n" : String).toByteArray.data.toList
theorem checked1228 : bytes1228=statementBytes 1252 (op1228.map lower) ∧ bytes1228.length=60 := by core033_kernel_decide
def op1229 : List WordIR.Op := [.literal (BitVec.ofNat 32 1555081692)]
def bytes1229 : Bytes := ("    let r000004e5: u32 = 0x5cb0a9dc_u32;\n" : String).toByteArray.data.toList
theorem checked1229 : bytes1229=statementBytes 1253 (op1229.map lower) ∧ bytes1229.length=41 := by core033_kernel_decide
def op1230 : List WordIR.Op := [.badd 1252 1253]
def bytes1230 : Bytes := ("    let r000004e6: u32 = r000004e4.wrapping_add(r000004e5);\n" : String).toByteArray.data.toList
theorem checked1230 : bytes1230=statementBytes 1254 (op1230.map lower) ∧ bytes1230.length=60 := by core033_kernel_decide
def op1231 : List WordIR.Op := [.badd 1254 114]
def bytes1231 : Bytes := ("    let r000004e7: u32 = r000004e6.wrapping_add(r00000072);\n" : String).toByteArray.data.toList
theorem checked1231 : bytes1231=statementBytes 1255 (op1231.map lower) ∧ bytes1231.length=60 := by core033_kernel_decide
def op1232 : List WordIR.Op := [.rotr 1240 2]
def bytes1232 : Bytes := ("    let r000004e8: u32 = r000004d8.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1232 : bytes1232=statementBytes 1256 (op1232.map lower) ∧ bytes1232.length=65 := by core033_kernel_decide
def op1233 : List WordIR.Op := [.rotr 1240 13]
def bytes1233 : Bytes := ("    let r000004e9: u32 = r000004d8.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1233 : bytes1233=statementBytes 1257 (op1233.map lower) ∧ bytes1233.length=65 := by core033_kernel_decide
def op1234 : List WordIR.Op := [.bxor 1256 1257]
def bytes1234 : Bytes := ("    let r000004ea: u32 = r000004e8 ^ r000004e9;\n" : String).toByteArray.data.toList
theorem checked1234 : bytes1234=statementBytes 1258 (op1234.map lower) ∧ bytes1234.length=48 := by core033_kernel_decide
def op1235 : List WordIR.Op := [.rotr 1240 22]
def bytes1235 : Bytes := ("    let r000004eb: u32 = r000004d8.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1235 : bytes1235=statementBytes 1259 (op1235.map lower) ∧ bytes1235.length=65 := by core033_kernel_decide
def op1236 : List WordIR.Op := [.bxor 1258 1259]
def bytes1236 : Bytes := ("    let r000004ec: u32 = r000004ea ^ r000004eb;\n" : String).toByteArray.data.toList
theorem checked1236 : bytes1236=statementBytes 1260 (op1236.map lower) ∧ bytes1236.length=48 := by core033_kernel_decide
def op1237 : List WordIR.Op := [.band 1240 1213]
def bytes1237 : Bytes := ("    let r000004ed: u32 = r000004d8 & r000004bd;\n" : String).toByteArray.data.toList
theorem checked1237 : bytes1237=statementBytes 1261 (op1237.map lower) ∧ bytes1237.length=48 := by core033_kernel_decide
def op1238 : List WordIR.Op := [.band 1240 1186]
def bytes1238 : Bytes := ("    let r000004ee: u32 = r000004d8 & r000004a2;\n" : String).toByteArray.data.toList
theorem checked1238 : bytes1238=statementBytes 1262 (op1238.map lower) ∧ bytes1238.length=48 := by core033_kernel_decide
def op1239 : List WordIR.Op := [.bxor 1261 1262]
def bytes1239 : Bytes := ("    let r000004ef: u32 = r000004ed ^ r000004ee;\n" : String).toByteArray.data.toList
theorem checked1239 : bytes1239=statementBytes 1263 (op1239.map lower) ∧ bytes1239.length=48 := by core033_kernel_decide
def op1240 : List WordIR.Op := [.band 1213 1186]
def bytes1240 : Bytes := ("    let r000004f0: u32 = r000004bd & r000004a2;\n" : String).toByteArray.data.toList
theorem checked1240 : bytes1240=statementBytes 1264 (op1240.map lower) ∧ bytes1240.length=48 := by core033_kernel_decide
def op1241 : List WordIR.Op := [.bxor 1263 1264]
def bytes1241 : Bytes := ("    let r000004f1: u32 = r000004ef ^ r000004f0;\n" : String).toByteArray.data.toList
theorem checked1241 : bytes1241=statementBytes 1265 (op1241.map lower) ∧ bytes1241.length=48 := by core033_kernel_decide
def op1242 : List WordIR.Op := [.badd 1260 1265]
def bytes1242 : Bytes := ("    let r000004f2: u32 = r000004ec.wrapping_add(r000004f1);\n" : String).toByteArray.data.toList
theorem checked1242 : bytes1242=statementBytes 1266 (op1242.map lower) ∧ bytes1242.length=60 := by core033_kernel_decide
def op1243 : List WordIR.Op := [.badd 1255 1266]
def bytes1243 : Bytes := ("    let r000004f3: u32 = r000004e7.wrapping_add(r000004f2);\n" : String).toByteArray.data.toList
theorem checked1243 : bytes1243=statementBytes 1267 (op1243.map lower) ∧ bytes1243.length=60 := by core033_kernel_decide
def op1244 : List WordIR.Op := [.badd 1159 1255]
def bytes1244 : Bytes := ("    let r000004f4: u32 = r00000487.wrapping_add(r000004e7);\n" : String).toByteArray.data.toList
theorem checked1244 : bytes1244=statementBytes 1268 (op1244.map lower) ∧ bytes1244.length=60 := by core033_kernel_decide
def op1245 : List WordIR.Op := [.rotr 1268 6]
def bytes1245 : Bytes := ("    let r000004f5: u32 = r000004f4.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1245 : bytes1245=statementBytes 1269 (op1245.map lower) ∧ bytes1245.length=65 := by core033_kernel_decide
def op1246 : List WordIR.Op := [.rotr 1268 11]
def bytes1246 : Bytes := ("    let r000004f6: u32 = r000004f4.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1246 : bytes1246=statementBytes 1270 (op1246.map lower) ∧ bytes1246.length=65 := by core033_kernel_decide
def op1247 : List WordIR.Op := [.bxor 1269 1270]
def bytes1247 : Bytes := ("    let r000004f7: u32 = r000004f5 ^ r000004f6;\n" : String).toByteArray.data.toList
theorem checked1247 : bytes1247=statementBytes 1271 (op1247.map lower) ∧ bytes1247.length=48 := by core033_kernel_decide
def op1248 : List WordIR.Op := [.rotr 1268 25]
def bytes1248 : Bytes := ("    let r000004f8: u32 = r000004f4.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1248 : bytes1248=statementBytes 1272 (op1248.map lower) ∧ bytes1248.length=65 := by core033_kernel_decide
def op1249 : List WordIR.Op := [.bxor 1271 1272]
def bytes1249 : Bytes := ("    let r000004f9: u32 = r000004f7 ^ r000004f8;\n" : String).toByteArray.data.toList
theorem checked1249 : bytes1249=statementBytes 1273 (op1249.map lower) ∧ bytes1249.length=48 := by core033_kernel_decide
def op1250 : List WordIR.Op := [.badd 1187 1273]
def bytes1250 : Bytes := ("    let r000004fa: u32 = r000004a3.wrapping_add(r000004f9);\n" : String).toByteArray.data.toList
theorem checked1250 : bytes1250=statementBytes 1274 (op1250.map lower) ∧ bytes1250.length=60 := by core033_kernel_decide
def op1251 : List WordIR.Op := [.band 1268 1241]
def bytes1251 : Bytes := ("    let r000004fb: u32 = r000004f4 & r000004d9;\n" : String).toByteArray.data.toList
theorem checked1251 : bytes1251=statementBytes 1275 (op1251.map lower) ∧ bytes1251.length=48 := by core033_kernel_decide
def op1252 : List WordIR.Op := [.bnot 1268]
def bytes1252 : Bytes := ("    let r000004fc: u32 = !r000004f4;\n" : String).toByteArray.data.toList
theorem checked1252 : bytes1252=statementBytes 1276 (op1252.map lower) ∧ bytes1252.length=37 := by core033_kernel_decide
def op1253 : List WordIR.Op := [.band 1276 1214]
def bytes1253 : Bytes := ("    let r000004fd: u32 = r000004fc & r000004be;\n" : String).toByteArray.data.toList
theorem checked1253 : bytes1253=statementBytes 1277 (op1253.map lower) ∧ bytes1253.length=48 := by core033_kernel_decide
def op1254 : List WordIR.Op := [.bxor 1275 1277]
def bytes1254 : Bytes := ("    let r000004fe: u32 = r000004fb ^ r000004fd;\n" : String).toByteArray.data.toList
theorem checked1254 : bytes1254=statementBytes 1278 (op1254.map lower) ∧ bytes1254.length=48 := by core033_kernel_decide
def op1255 : List WordIR.Op := [.badd 1274 1278]
def bytes1255 : Bytes := ("    let r000004ff: u32 = r000004fa.wrapping_add(r000004fe);\n" : String).toByteArray.data.toList
theorem checked1255 : bytes1255=statementBytes 1279 (op1255.map lower) ∧ bytes1255.length=60 := by core033_kernel_decide
def op1256 : List WordIR.Op := [.literal (BitVec.ofNat 32 1996064986)]
def bytes1256 : Bytes := ("    let r00000500: u32 = 0x76f988da_u32;\n" : String).toByteArray.data.toList
theorem checked1256 : bytes1256=statementBytes 1280 (op1256.map lower) ∧ bytes1256.length=41 := by core033_kernel_decide
def op1257 : List WordIR.Op := [.badd 1279 1280]
def bytes1257 : Bytes := ("    let r00000501: u32 = r000004ff.wrapping_add(r00000500);\n" : String).toByteArray.data.toList
theorem checked1257 : bytes1257=statementBytes 1281 (op1257.map lower) ∧ bytes1257.length=60 := by core033_kernel_decide
def op1258 : List WordIR.Op := [.badd 1281 127]
def bytes1258 : Bytes := ("    let r00000502: u32 = r00000501.wrapping_add(r0000007f);\n" : String).toByteArray.data.toList
theorem checked1258 : bytes1258=statementBytes 1282 (op1258.map lower) ∧ bytes1258.length=60 := by core033_kernel_decide
def op1259 : List WordIR.Op := [.rotr 1267 2]
def bytes1259 : Bytes := ("    let r00000503: u32 = r000004f3.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1259 : bytes1259=statementBytes 1283 (op1259.map lower) ∧ bytes1259.length=65 := by core033_kernel_decide
def op1260 : List WordIR.Op := [.rotr 1267 13]
def bytes1260 : Bytes := ("    let r00000504: u32 = r000004f3.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1260 : bytes1260=statementBytes 1284 (op1260.map lower) ∧ bytes1260.length=65 := by core033_kernel_decide
def op1261 : List WordIR.Op := [.bxor 1283 1284]
def bytes1261 : Bytes := ("    let r00000505: u32 = r00000503 ^ r00000504;\n" : String).toByteArray.data.toList
theorem checked1261 : bytes1261=statementBytes 1285 (op1261.map lower) ∧ bytes1261.length=48 := by core033_kernel_decide
def op1262 : List WordIR.Op := [.rotr 1267 22]
def bytes1262 : Bytes := ("    let r00000506: u32 = r000004f3.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1262 : bytes1262=statementBytes 1286 (op1262.map lower) ∧ bytes1262.length=65 := by core033_kernel_decide
def op1263 : List WordIR.Op := [.bxor 1285 1286]
def bytes1263 : Bytes := ("    let r00000507: u32 = r00000505 ^ r00000506;\n" : String).toByteArray.data.toList
theorem checked1263 : bytes1263=statementBytes 1287 (op1263.map lower) ∧ bytes1263.length=48 := by core033_kernel_decide
def op1264 : List WordIR.Op := [.band 1267 1240]
def bytes1264 : Bytes := ("    let r00000508: u32 = r000004f3 & r000004d8;\n" : String).toByteArray.data.toList
theorem checked1264 : bytes1264=statementBytes 1288 (op1264.map lower) ∧ bytes1264.length=48 := by core033_kernel_decide
def op1265 : List WordIR.Op := [.band 1267 1213]
def bytes1265 : Bytes := ("    let r00000509: u32 = r000004f3 & r000004bd;\n" : String).toByteArray.data.toList
theorem checked1265 : bytes1265=statementBytes 1289 (op1265.map lower) ∧ bytes1265.length=48 := by core033_kernel_decide
def op1266 : List WordIR.Op := [.bxor 1288 1289]
def bytes1266 : Bytes := ("    let r0000050a: u32 = r00000508 ^ r00000509;\n" : String).toByteArray.data.toList
theorem checked1266 : bytes1266=statementBytes 1290 (op1266.map lower) ∧ bytes1266.length=48 := by core033_kernel_decide
def op1267 : List WordIR.Op := [.band 1240 1213]
def bytes1267 : Bytes := ("    let r0000050b: u32 = r000004d8 & r000004bd;\n" : String).toByteArray.data.toList
theorem checked1267 : bytes1267=statementBytes 1291 (op1267.map lower) ∧ bytes1267.length=48 := by core033_kernel_decide
def op1268 : List WordIR.Op := [.bxor 1290 1291]
def bytes1268 : Bytes := ("    let r0000050c: u32 = r0000050a ^ r0000050b;\n" : String).toByteArray.data.toList
theorem checked1268 : bytes1268=statementBytes 1292 (op1268.map lower) ∧ bytes1268.length=48 := by core033_kernel_decide
def op1269 : List WordIR.Op := [.badd 1287 1292]
def bytes1269 : Bytes := ("    let r0000050d: u32 = r00000507.wrapping_add(r0000050c);\n" : String).toByteArray.data.toList
theorem checked1269 : bytes1269=statementBytes 1293 (op1269.map lower) ∧ bytes1269.length=60 := by core033_kernel_decide
def op1270 : List WordIR.Op := [.badd 1282 1293]
def bytes1270 : Bytes := ("    let r0000050e: u32 = r00000502.wrapping_add(r0000050d);\n" : String).toByteArray.data.toList
theorem checked1270 : bytes1270=statementBytes 1294 (op1270.map lower) ∧ bytes1270.length=60 := by core033_kernel_decide
def op1271 : List WordIR.Op := [.badd 1186 1282]
def bytes1271 : Bytes := ("    let r0000050f: u32 = r000004a2.wrapping_add(r00000502);\n" : String).toByteArray.data.toList
theorem checked1271 : bytes1271=statementBytes 1295 (op1271.map lower) ∧ bytes1271.length=60 := by core033_kernel_decide
def op1272 : List WordIR.Op := [.rotr 1295 6]
def bytes1272 : Bytes := ("    let r00000510: u32 = r0000050f.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1272 : bytes1272=statementBytes 1296 (op1272.map lower) ∧ bytes1272.length=65 := by core033_kernel_decide
def op1273 : List WordIR.Op := [.rotr 1295 11]
def bytes1273 : Bytes := ("    let r00000511: u32 = r0000050f.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1273 : bytes1273=statementBytes 1297 (op1273.map lower) ∧ bytes1273.length=65 := by core033_kernel_decide
def op1274 : List WordIR.Op := [.bxor 1296 1297]
def bytes1274 : Bytes := ("    let r00000512: u32 = r00000510 ^ r00000511;\n" : String).toByteArray.data.toList
theorem checked1274 : bytes1274=statementBytes 1298 (op1274.map lower) ∧ bytes1274.length=48 := by core033_kernel_decide
def op1275 : List WordIR.Op := [.rotr 1295 25]
def bytes1275 : Bytes := ("    let r00000513: u32 = r0000050f.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1275 : bytes1275=statementBytes 1299 (op1275.map lower) ∧ bytes1275.length=65 := by core033_kernel_decide
def op1276 : List WordIR.Op := [.bxor 1298 1299]
def bytes1276 : Bytes := ("    let r00000514: u32 = r00000512 ^ r00000513;\n" : String).toByteArray.data.toList
theorem checked1276 : bytes1276=statementBytes 1300 (op1276.map lower) ∧ bytes1276.length=48 := by core033_kernel_decide
def op1277 : List WordIR.Op := [.badd 1214 1300]
def bytes1277 : Bytes := ("    let r00000515: u32 = r000004be.wrapping_add(r00000514);\n" : String).toByteArray.data.toList
theorem checked1277 : bytes1277=statementBytes 1301 (op1277.map lower) ∧ bytes1277.length=60 := by core033_kernel_decide
def op1278 : List WordIR.Op := [.band 1295 1268]
def bytes1278 : Bytes := ("    let r00000516: u32 = r0000050f & r000004f4;\n" : String).toByteArray.data.toList
theorem checked1278 : bytes1278=statementBytes 1302 (op1278.map lower) ∧ bytes1278.length=48 := by core033_kernel_decide
def op1279 : List WordIR.Op := [.bnot 1295]
def bytes1279 : Bytes := ("    let r00000517: u32 = !r0000050f;\n" : String).toByteArray.data.toList
theorem checked1279 : bytes1279=statementBytes 1303 (op1279.map lower) ∧ bytes1279.length=37 := by core033_kernel_decide
def innerBlocks19 : List (List WordIR.Op) := [op1216,op1217,op1218,op1219,op1220,op1221,op1222,op1223,op1224,op1225,op1226,op1227,op1228,op1229,op1230,op1231,op1232,op1233,op1234,op1235,op1236,op1237,op1238,op1239,op1240,op1241,op1242,op1243,op1244,op1245,op1246,op1247,op1248,op1249,op1250,op1251,op1252,op1253,op1254,op1255,op1256,op1257,op1258,op1259,op1260,op1261,op1262,op1263,op1264,op1265,op1266,op1267,op1268,op1269,op1270,op1271,op1272,op1273,op1274,op1275,op1276,op1277,op1278,op1279]
def innerBytes19 : List Bytes := [bytes1216,bytes1217,bytes1218,bytes1219,bytes1220,bytes1221,bytes1222,bytes1223,bytes1224,bytes1225,bytes1226,bytes1227,bytes1228,bytes1229,bytes1230,bytes1231,bytes1232,bytes1233,bytes1234,bytes1235,bytes1236,bytes1237,bytes1238,bytes1239,bytes1240,bytes1241,bytes1242,bytes1243,bytes1244,bytes1245,bytes1246,bytes1247,bytes1248,bytes1249,bytes1250,bytes1251,bytes1252,bytes1253,bytes1254,bytes1255,bytes1256,bytes1257,bytes1258,bytes1259,bytes1260,bytes1261,bytes1262,bytes1263,bytes1264,bytes1265,bytes1266,bytes1267,bytes1268,bytes1269,bytes1270,bytes1271,bytes1272,bytes1273,bytes1274,bytes1275,bytes1276,bytes1277,bytes1278,bytes1279]
def partOps19 : List WordIR.Op := innerBlocks19.flatten
def partBytes19 : Bytes := innerBytes19.flatten
theorem partChain19 : BlockChain 1240 innerBlocks19 innerBytes19 := by
  unfold innerBlocks19 innerBytes19
  exact (.cons _ _ _ _ _ checked1216.1 (.cons _ _ _ _ _ checked1217.1 (.cons _ _ _ _ _ checked1218.1 (.cons _ _ _ _ _ checked1219.1 (.cons _ _ _ _ _ checked1220.1 (.cons _ _ _ _ _ checked1221.1 (.cons _ _ _ _ _ checked1222.1 (.cons _ _ _ _ _ checked1223.1 (.cons _ _ _ _ _ checked1224.1 (.cons _ _ _ _ _ checked1225.1 (.cons _ _ _ _ _ checked1226.1 (.cons _ _ _ _ _ checked1227.1 (.cons _ _ _ _ _ checked1228.1 (.cons _ _ _ _ _ checked1229.1 (.cons _ _ _ _ _ checked1230.1 (.cons _ _ _ _ _ checked1231.1 (.cons _ _ _ _ _ checked1232.1 (.cons _ _ _ _ _ checked1233.1 (.cons _ _ _ _ _ checked1234.1 (.cons _ _ _ _ _ checked1235.1 (.cons _ _ _ _ _ checked1236.1 (.cons _ _ _ _ _ checked1237.1 (.cons _ _ _ _ _ checked1238.1 (.cons _ _ _ _ _ checked1239.1 (.cons _ _ _ _ _ checked1240.1 (.cons _ _ _ _ _ checked1241.1 (.cons _ _ _ _ _ checked1242.1 (.cons _ _ _ _ _ checked1243.1 (.cons _ _ _ _ _ checked1244.1 (.cons _ _ _ _ _ checked1245.1 (.cons _ _ _ _ _ checked1246.1 (.cons _ _ _ _ _ checked1247.1 (.cons _ _ _ _ _ checked1248.1 (.cons _ _ _ _ _ checked1249.1 (.cons _ _ _ _ _ checked1250.1 (.cons _ _ _ _ _ checked1251.1 (.cons _ _ _ _ _ checked1252.1 (.cons _ _ _ _ _ checked1253.1 (.cons _ _ _ _ _ checked1254.1 (.cons _ _ _ _ _ checked1255.1 (.cons _ _ _ _ _ checked1256.1 (.cons _ _ _ _ _ checked1257.1 (.cons _ _ _ _ _ checked1258.1 (.cons _ _ _ _ _ checked1259.1 (.cons _ _ _ _ _ checked1260.1 (.cons _ _ _ _ _ checked1261.1 (.cons _ _ _ _ _ checked1262.1 (.cons _ _ _ _ _ checked1263.1 (.cons _ _ _ _ _ checked1264.1 (.cons _ _ _ _ _ checked1265.1 (.cons _ _ _ _ _ checked1266.1 (.cons _ _ _ _ _ checked1267.1 (.cons _ _ _ _ _ checked1268.1 (.cons _ _ _ _ _ checked1269.1 (.cons _ _ _ _ _ checked1270.1 (.cons _ _ _ _ _ checked1271.1 (.cons _ _ _ _ _ checked1272.1 (.cons _ _ _ _ _ checked1273.1 (.cons _ _ _ _ _ checked1274.1 (.cons _ _ _ _ _ checked1275.1 (.cons _ _ _ _ _ checked1276.1 (.cons _ _ _ _ _ checked1277.1 (.cons _ _ _ _ _ checked1278.1 (.cons _ _ _ _ _ checked1279.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked19 : partBytes19=statementBytes 1240 (partOps19.map lower) ∧ partBytes19.length=3484 := by
  constructor
  · exact (chain_exact partChain19).trans (body_exact innerBlocks19 1240)
  · simp only [partBytes19,WordSource.chunk_sizes_exact,innerBytes19,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1216.2,checked1217.2,checked1218.2,checked1219.2,checked1220.2,checked1221.2,checked1222.2,checked1223.2,checked1224.2,checked1225.2,checked1226.2,checked1227.2,checked1228.2,checked1229.2,checked1230.2,checked1231.2,checked1232.2,checked1233.2,checked1234.2,checked1235.2,checked1236.2,checked1237.2,checked1238.2,checked1239.2,checked1240.2,checked1241.2,checked1242.2,checked1243.2,checked1244.2,checked1245.2,checked1246.2,checked1247.2,checked1248.2,checked1249.2,checked1250.2,checked1251.2,checked1252.2,checked1253.2,checked1254.2,checked1255.2,checked1256.2,checked1257.2,checked1258.2,checked1259.2,checked1260.2,checked1261.2,checked1262.2,checked1263.2,checked1264.2,checked1265.2,checked1266.2,checked1267.2,checked1268.2,checked1269.2,checked1270.2,checked1271.2,checked1272.2,checked1273.2,checked1274.2,checked1275.2,checked1276.2,checked1277.2,checked1278.2,checked1279.2]
    decide
theorem partLength19 : partOps19.length=64 := by
  simp only [partOps19,innerBlocks19,op1216,op1217,op1218,op1219,op1220,op1221,op1222,op1223,op1224,op1225,op1226,op1227,op1228,op1229,op1230,op1231,op1232,op1233,op1234,op1235,op1236,op1237,op1238,op1239,op1240,op1241,op1242,op1243,op1244,op1245,op1246,op1247,op1248,op1249,op1250,op1251,op1252,op1253,op1254,op1255,op1256,op1257,op1258,op1259,op1260,op1261,op1262,op1263,op1264,op1265,op1266,op1267,op1268,op1269,op1270,op1271,op1272,op1273,op1274,op1275,op1276,op1277,op1278,op1279,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
