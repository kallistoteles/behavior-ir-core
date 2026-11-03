import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup19
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1216 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1216 : Bytes := ("    let r00000536: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1216 : bytes1216=statementBytes 1334 (op1216.map lower) ∧ bytes1216.length=41 := by core033_kernel_decide
def op1217 : List WordIR.Op := [.badd 1333 1334]
def bytes1217 : Bytes := ("    let r00000537: u32 = r00000535.wrapping_add(r00000536);\n" : String).toByteArray.data.toList
theorem checked1217 : bytes1217=statementBytes 1335 (op1217.map lower) ∧ bytes1217.length=60 := by core033_kernel_decide
def op1218 : List WordIR.Op := [.band 1335 737]
def bytes1218 : Bytes := ("    let r00000538: u32 = r00000537 & r000002e1;\n" : String).toByteArray.data.toList
theorem checked1218 : bytes1218=statementBytes 1336 (op1218.map lower) ∧ bytes1218.length=48 := by core033_kernel_decide
def op1219 : List WordIR.Op := [.bnot 1288]
def bytes1219 : Bytes := ("    let r00000539: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1219 : bytes1219=statementBytes 1337 (op1219.map lower) ∧ bytes1219.length=37 := by core033_kernel_decide
def op1220 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1220 : Bytes := ("    let r0000053a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1220 : bytes1220=statementBytes 1338 (op1220.map lower) ∧ bytes1220.length=41 := by core033_kernel_decide
def op1221 : List WordIR.Op := [.badd 1337 1338]
def bytes1221 : Bytes := ("    let r0000053b: u32 = r00000539.wrapping_add(r0000053a);\n" : String).toByteArray.data.toList
theorem checked1221 : bytes1221=statementBytes 1339 (op1221.map lower) ∧ bytes1221.length=60 := by core033_kernel_decide
def op1222 : List WordIR.Op := [.bnot 1339]
def bytes1222 : Bytes := ("    let r0000053c: u32 = !r0000053b;\n" : String).toByteArray.data.toList
theorem checked1222 : bytes1222=statementBytes 1340 (op1222.map lower) ∧ bytes1222.length=37 := by core033_kernel_decide
def op1223 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1223 : Bytes := ("    let r0000053d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1223 : bytes1223=statementBytes 1341 (op1223.map lower) ∧ bytes1223.length=41 := by core033_kernel_decide
def op1224 : List WordIR.Op := [.band 1340 1341]
def bytes1224 : Bytes := ("    let r0000053e: u32 = r0000053c & r0000053d;\n" : String).toByteArray.data.toList
theorem checked1224 : bytes1224=statementBytes 1342 (op1224.map lower) ∧ bytes1224.length=48 := by core033_kernel_decide
def op1225 : List WordIR.Op := [.bxor 1336 1342]
def bytes1225 : Bytes := ("    let r0000053f: u32 = r00000538 ^ r0000053e;\n" : String).toByteArray.data.toList
theorem checked1225 : bytes1225=statementBytes 1343 (op1225.map lower) ∧ bytes1225.length=48 := by core033_kernel_decide
def op1226 : List WordIR.Op := [.bnot 1288]
def bytes1226 : Bytes := ("    let r00000540: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1226 : bytes1226=statementBytes 1344 (op1226.map lower) ∧ bytes1226.length=37 := by core033_kernel_decide
def op1227 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1227 : Bytes := ("    let r00000541: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1227 : bytes1227=statementBytes 1345 (op1227.map lower) ∧ bytes1227.length=41 := by core033_kernel_decide
def op1228 : List WordIR.Op := [.badd 1344 1345]
def bytes1228 : Bytes := ("    let r00000542: u32 = r00000540.wrapping_add(r00000541);\n" : String).toByteArray.data.toList
theorem checked1228 : bytes1228=statementBytes 1346 (op1228.map lower) ∧ bytes1228.length=60 := by core033_kernel_decide
def op1229 : List WordIR.Op := [.band 1346 748]
def bytes1229 : Bytes := ("    let r00000543: u32 = r00000542 & r000002ec;\n" : String).toByteArray.data.toList
theorem checked1229 : bytes1229=statementBytes 1347 (op1229.map lower) ∧ bytes1229.length=48 := by core033_kernel_decide
def op1230 : List WordIR.Op := [.bnot 1288]
def bytes1230 : Bytes := ("    let r00000544: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1230 : bytes1230=statementBytes 1348 (op1230.map lower) ∧ bytes1230.length=37 := by core033_kernel_decide
def op1231 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1231 : Bytes := ("    let r00000545: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1231 : bytes1231=statementBytes 1349 (op1231.map lower) ∧ bytes1231.length=41 := by core033_kernel_decide
def op1232 : List WordIR.Op := [.badd 1348 1349]
def bytes1232 : Bytes := ("    let r00000546: u32 = r00000544.wrapping_add(r00000545);\n" : String).toByteArray.data.toList
theorem checked1232 : bytes1232=statementBytes 1350 (op1232.map lower) ∧ bytes1232.length=60 := by core033_kernel_decide
def op1233 : List WordIR.Op := [.bnot 1350]
def bytes1233 : Bytes := ("    let r00000547: u32 = !r00000546;\n" : String).toByteArray.data.toList
theorem checked1233 : bytes1233=statementBytes 1351 (op1233.map lower) ∧ bytes1233.length=37 := by core033_kernel_decide
def op1234 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1234 : Bytes := ("    let r00000548: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1234 : bytes1234=statementBytes 1352 (op1234.map lower) ∧ bytes1234.length=41 := by core033_kernel_decide
def op1235 : List WordIR.Op := [.band 1351 1352]
def bytes1235 : Bytes := ("    let r00000549: u32 = r00000547 & r00000548;\n" : String).toByteArray.data.toList
theorem checked1235 : bytes1235=statementBytes 1353 (op1235.map lower) ∧ bytes1235.length=48 := by core033_kernel_decide
def op1236 : List WordIR.Op := [.bxor 1347 1353]
def bytes1236 : Bytes := ("    let r0000054a: u32 = r00000543 ^ r00000549;\n" : String).toByteArray.data.toList
theorem checked1236 : bytes1236=statementBytes 1354 (op1236.map lower) ∧ bytes1236.length=48 := by core033_kernel_decide
def op1237 : List WordIR.Op := [.bnot 1288]
def bytes1237 : Bytes := ("    let r0000054b: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1237 : bytes1237=statementBytes 1355 (op1237.map lower) ∧ bytes1237.length=37 := by core033_kernel_decide
def op1238 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1238 : Bytes := ("    let r0000054c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1238 : bytes1238=statementBytes 1356 (op1238.map lower) ∧ bytes1238.length=41 := by core033_kernel_decide
def op1239 : List WordIR.Op := [.badd 1355 1356]
def bytes1239 : Bytes := ("    let r0000054d: u32 = r0000054b.wrapping_add(r0000054c);\n" : String).toByteArray.data.toList
theorem checked1239 : bytes1239=statementBytes 1357 (op1239.map lower) ∧ bytes1239.length=60 := by core033_kernel_decide
def op1240 : List WordIR.Op := [.band 1357 759]
def bytes1240 : Bytes := ("    let r0000054e: u32 = r0000054d & r000002f7;\n" : String).toByteArray.data.toList
theorem checked1240 : bytes1240=statementBytes 1358 (op1240.map lower) ∧ bytes1240.length=48 := by core033_kernel_decide
def op1241 : List WordIR.Op := [.bnot 1288]
def bytes1241 : Bytes := ("    let r0000054f: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1241 : bytes1241=statementBytes 1359 (op1241.map lower) ∧ bytes1241.length=37 := by core033_kernel_decide
def op1242 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1242 : Bytes := ("    let r00000550: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1242 : bytes1242=statementBytes 1360 (op1242.map lower) ∧ bytes1242.length=41 := by core033_kernel_decide
def op1243 : List WordIR.Op := [.badd 1359 1360]
def bytes1243 : Bytes := ("    let r00000551: u32 = r0000054f.wrapping_add(r00000550);\n" : String).toByteArray.data.toList
theorem checked1243 : bytes1243=statementBytes 1361 (op1243.map lower) ∧ bytes1243.length=60 := by core033_kernel_decide
def op1244 : List WordIR.Op := [.bnot 1361]
def bytes1244 : Bytes := ("    let r00000552: u32 = !r00000551;\n" : String).toByteArray.data.toList
theorem checked1244 : bytes1244=statementBytes 1362 (op1244.map lower) ∧ bytes1244.length=37 := by core033_kernel_decide
def op1245 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1245 : Bytes := ("    let r00000553: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1245 : bytes1245=statementBytes 1363 (op1245.map lower) ∧ bytes1245.length=41 := by core033_kernel_decide
def op1246 : List WordIR.Op := [.band 1362 1363]
def bytes1246 : Bytes := ("    let r00000554: u32 = r00000552 & r00000553;\n" : String).toByteArray.data.toList
theorem checked1246 : bytes1246=statementBytes 1364 (op1246.map lower) ∧ bytes1246.length=48 := by core033_kernel_decide
def op1247 : List WordIR.Op := [.bxor 1358 1364]
def bytes1247 : Bytes := ("    let r00000555: u32 = r0000054e ^ r00000554;\n" : String).toByteArray.data.toList
theorem checked1247 : bytes1247=statementBytes 1365 (op1247.map lower) ∧ bytes1247.length=48 := by core033_kernel_decide
def op1248 : List WordIR.Op := [.bnot 1288]
def bytes1248 : Bytes := ("    let r00000556: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1248 : bytes1248=statementBytes 1366 (op1248.map lower) ∧ bytes1248.length=37 := by core033_kernel_decide
def op1249 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1249 : Bytes := ("    let r00000557: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1249 : bytes1249=statementBytes 1367 (op1249.map lower) ∧ bytes1249.length=41 := by core033_kernel_decide
def op1250 : List WordIR.Op := [.badd 1366 1367]
def bytes1250 : Bytes := ("    let r00000558: u32 = r00000556.wrapping_add(r00000557);\n" : String).toByteArray.data.toList
theorem checked1250 : bytes1250=statementBytes 1368 (op1250.map lower) ∧ bytes1250.length=60 := by core033_kernel_decide
def op1251 : List WordIR.Op := [.band 1368 770]
def bytes1251 : Bytes := ("    let r00000559: u32 = r00000558 & r00000302;\n" : String).toByteArray.data.toList
theorem checked1251 : bytes1251=statementBytes 1369 (op1251.map lower) ∧ bytes1251.length=48 := by core033_kernel_decide
def op1252 : List WordIR.Op := [.bnot 1288]
def bytes1252 : Bytes := ("    let r0000055a: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1252 : bytes1252=statementBytes 1370 (op1252.map lower) ∧ bytes1252.length=37 := by core033_kernel_decide
def op1253 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1253 : Bytes := ("    let r0000055b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1253 : bytes1253=statementBytes 1371 (op1253.map lower) ∧ bytes1253.length=41 := by core033_kernel_decide
def op1254 : List WordIR.Op := [.badd 1370 1371]
def bytes1254 : Bytes := ("    let r0000055c: u32 = r0000055a.wrapping_add(r0000055b);\n" : String).toByteArray.data.toList
theorem checked1254 : bytes1254=statementBytes 1372 (op1254.map lower) ∧ bytes1254.length=60 := by core033_kernel_decide
def op1255 : List WordIR.Op := [.bnot 1372]
def bytes1255 : Bytes := ("    let r0000055d: u32 = !r0000055c;\n" : String).toByteArray.data.toList
theorem checked1255 : bytes1255=statementBytes 1373 (op1255.map lower) ∧ bytes1255.length=37 := by core033_kernel_decide
def op1256 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1256 : Bytes := ("    let r0000055e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1256 : bytes1256=statementBytes 1374 (op1256.map lower) ∧ bytes1256.length=41 := by core033_kernel_decide
def op1257 : List WordIR.Op := [.band 1373 1374]
def bytes1257 : Bytes := ("    let r0000055f: u32 = r0000055d & r0000055e;\n" : String).toByteArray.data.toList
theorem checked1257 : bytes1257=statementBytes 1375 (op1257.map lower) ∧ bytes1257.length=48 := by core033_kernel_decide
def op1258 : List WordIR.Op := [.bxor 1369 1375]
def bytes1258 : Bytes := ("    let r00000560: u32 = r00000559 ^ r0000055f;\n" : String).toByteArray.data.toList
theorem checked1258 : bytes1258=statementBytes 1376 (op1258.map lower) ∧ bytes1258.length=48 := by core033_kernel_decide
def op1259 : List WordIR.Op := [.bnot 1288]
def bytes1259 : Bytes := ("    let r00000561: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1259 : bytes1259=statementBytes 1377 (op1259.map lower) ∧ bytes1259.length=37 := by core033_kernel_decide
def op1260 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1260 : Bytes := ("    let r00000562: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1260 : bytes1260=statementBytes 1378 (op1260.map lower) ∧ bytes1260.length=41 := by core033_kernel_decide
def op1261 : List WordIR.Op := [.badd 1377 1378]
def bytes1261 : Bytes := ("    let r00000563: u32 = r00000561.wrapping_add(r00000562);\n" : String).toByteArray.data.toList
theorem checked1261 : bytes1261=statementBytes 1379 (op1261.map lower) ∧ bytes1261.length=60 := by core033_kernel_decide
def op1262 : List WordIR.Op := [.band 1379 781]
def bytes1262 : Bytes := ("    let r00000564: u32 = r00000563 & r0000030d;\n" : String).toByteArray.data.toList
theorem checked1262 : bytes1262=statementBytes 1380 (op1262.map lower) ∧ bytes1262.length=48 := by core033_kernel_decide
def op1263 : List WordIR.Op := [.bnot 1288]
def bytes1263 : Bytes := ("    let r00000565: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1263 : bytes1263=statementBytes 1381 (op1263.map lower) ∧ bytes1263.length=37 := by core033_kernel_decide
def op1264 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1264 : Bytes := ("    let r00000566: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1264 : bytes1264=statementBytes 1382 (op1264.map lower) ∧ bytes1264.length=41 := by core033_kernel_decide
def op1265 : List WordIR.Op := [.badd 1381 1382]
def bytes1265 : Bytes := ("    let r00000567: u32 = r00000565.wrapping_add(r00000566);\n" : String).toByteArray.data.toList
theorem checked1265 : bytes1265=statementBytes 1383 (op1265.map lower) ∧ bytes1265.length=60 := by core033_kernel_decide
def op1266 : List WordIR.Op := [.bnot 1383]
def bytes1266 : Bytes := ("    let r00000568: u32 = !r00000567;\n" : String).toByteArray.data.toList
theorem checked1266 : bytes1266=statementBytes 1384 (op1266.map lower) ∧ bytes1266.length=37 := by core033_kernel_decide
def op1267 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1267 : Bytes := ("    let r00000569: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1267 : bytes1267=statementBytes 1385 (op1267.map lower) ∧ bytes1267.length=41 := by core033_kernel_decide
def op1268 : List WordIR.Op := [.band 1384 1385]
def bytes1268 : Bytes := ("    let r0000056a: u32 = r00000568 & r00000569;\n" : String).toByteArray.data.toList
theorem checked1268 : bytes1268=statementBytes 1386 (op1268.map lower) ∧ bytes1268.length=48 := by core033_kernel_decide
def op1269 : List WordIR.Op := [.bxor 1380 1386]
def bytes1269 : Bytes := ("    let r0000056b: u32 = r00000564 ^ r0000056a;\n" : String).toByteArray.data.toList
theorem checked1269 : bytes1269=statementBytes 1387 (op1269.map lower) ∧ bytes1269.length=48 := by core033_kernel_decide
def op1270 : List WordIR.Op := [.bnot 1288]
def bytes1270 : Bytes := ("    let r0000056c: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1270 : bytes1270=statementBytes 1388 (op1270.map lower) ∧ bytes1270.length=37 := by core033_kernel_decide
def op1271 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1271 : Bytes := ("    let r0000056d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1271 : bytes1271=statementBytes 1389 (op1271.map lower) ∧ bytes1271.length=41 := by core033_kernel_decide
def op1272 : List WordIR.Op := [.badd 1388 1389]
def bytes1272 : Bytes := ("    let r0000056e: u32 = r0000056c.wrapping_add(r0000056d);\n" : String).toByteArray.data.toList
theorem checked1272 : bytes1272=statementBytes 1390 (op1272.map lower) ∧ bytes1272.length=60 := by core033_kernel_decide
def op1273 : List WordIR.Op := [.band 1390 792]
def bytes1273 : Bytes := ("    let r0000056f: u32 = r0000056e & r00000318;\n" : String).toByteArray.data.toList
theorem checked1273 : bytes1273=statementBytes 1391 (op1273.map lower) ∧ bytes1273.length=48 := by core033_kernel_decide
def op1274 : List WordIR.Op := [.bnot 1288]
def bytes1274 : Bytes := ("    let r00000570: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1274 : bytes1274=statementBytes 1392 (op1274.map lower) ∧ bytes1274.length=37 := by core033_kernel_decide
def op1275 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1275 : Bytes := ("    let r00000571: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1275 : bytes1275=statementBytes 1393 (op1275.map lower) ∧ bytes1275.length=41 := by core033_kernel_decide
def op1276 : List WordIR.Op := [.badd 1392 1393]
def bytes1276 : Bytes := ("    let r00000572: u32 = r00000570.wrapping_add(r00000571);\n" : String).toByteArray.data.toList
theorem checked1276 : bytes1276=statementBytes 1394 (op1276.map lower) ∧ bytes1276.length=60 := by core033_kernel_decide
def op1277 : List WordIR.Op := [.bnot 1394]
def bytes1277 : Bytes := ("    let r00000573: u32 = !r00000572;\n" : String).toByteArray.data.toList
theorem checked1277 : bytes1277=statementBytes 1395 (op1277.map lower) ∧ bytes1277.length=37 := by core033_kernel_decide
def op1278 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1278 : Bytes := ("    let r00000574: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1278 : bytes1278=statementBytes 1396 (op1278.map lower) ∧ bytes1278.length=41 := by core033_kernel_decide
def op1279 : List WordIR.Op := [.band 1395 1396]
def bytes1279 : Bytes := ("    let r00000575: u32 = r00000573 & r00000574;\n" : String).toByteArray.data.toList
theorem checked1279 : bytes1279=statementBytes 1397 (op1279.map lower) ∧ bytes1279.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1216,op1217,op1218,op1219,op1220,op1221,op1222,op1223,op1224,op1225,op1226,op1227,op1228,op1229,op1230,op1231,op1232,op1233,op1234,op1235,op1236,op1237,op1238,op1239,op1240,op1241,op1242,op1243,op1244,op1245,op1246,op1247,op1248,op1249,op1250,op1251,op1252,op1253,op1254,op1255,op1256,op1257,op1258,op1259,op1260,op1261,op1262,op1263,op1264,op1265,op1266,op1267,op1268,op1269,op1270,op1271,op1272,op1273,op1274,op1275,op1276,op1277,op1278,op1279]
def chunks : List Bytes := [bytes1216,bytes1217,bytes1218,bytes1219,bytes1220,bytes1221,bytes1222,bytes1223,bytes1224,bytes1225,bytes1226,bytes1227,bytes1228,bytes1229,bytes1230,bytes1231,bytes1232,bytes1233,bytes1234,bytes1235,bytes1236,bytes1237,bytes1238,bytes1239,bytes1240,bytes1241,bytes1242,bytes1243,bytes1244,bytes1245,bytes1246,bytes1247,bytes1248,bytes1249,bytes1250,bytes1251,bytes1252,bytes1253,bytes1254,bytes1255,bytes1256,bytes1257,bytes1258,bytes1259,bytes1260,bytes1261,bytes1262,bytes1263,bytes1264,bytes1265,bytes1266,bytes1267,bytes1268,bytes1269,bytes1270,bytes1271,bytes1272,bytes1273,bytes1274,bytes1275,bytes1276,bytes1277,bytes1278,bytes1279]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1334 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1216.1 (.cons _ _ _ _ _ checked1217.1 (.cons _ _ _ _ _ checked1218.1 (.cons _ _ _ _ _ checked1219.1 (.cons _ _ _ _ _ checked1220.1 (.cons _ _ _ _ _ checked1221.1 (.cons _ _ _ _ _ checked1222.1 (.cons _ _ _ _ _ checked1223.1 (.cons _ _ _ _ _ checked1224.1 (.cons _ _ _ _ _ checked1225.1 (.cons _ _ _ _ _ checked1226.1 (.cons _ _ _ _ _ checked1227.1 (.cons _ _ _ _ _ checked1228.1 (.cons _ _ _ _ _ checked1229.1 (.cons _ _ _ _ _ checked1230.1 (.cons _ _ _ _ _ checked1231.1 (.cons _ _ _ _ _ checked1232.1 (.cons _ _ _ _ _ checked1233.1 (.cons _ _ _ _ _ checked1234.1 (.cons _ _ _ _ _ checked1235.1 (.cons _ _ _ _ _ checked1236.1 (.cons _ _ _ _ _ checked1237.1 (.cons _ _ _ _ _ checked1238.1 (.cons _ _ _ _ _ checked1239.1 (.cons _ _ _ _ _ checked1240.1 (.cons _ _ _ _ _ checked1241.1 (.cons _ _ _ _ _ checked1242.1 (.cons _ _ _ _ _ checked1243.1 (.cons _ _ _ _ _ checked1244.1 (.cons _ _ _ _ _ checked1245.1 (.cons _ _ _ _ _ checked1246.1 (.cons _ _ _ _ _ checked1247.1 (.cons _ _ _ _ _ checked1248.1 (.cons _ _ _ _ _ checked1249.1 (.cons _ _ _ _ _ checked1250.1 (.cons _ _ _ _ _ checked1251.1 (.cons _ _ _ _ _ checked1252.1 (.cons _ _ _ _ _ checked1253.1 (.cons _ _ _ _ _ checked1254.1 (.cons _ _ _ _ _ checked1255.1 (.cons _ _ _ _ _ checked1256.1 (.cons _ _ _ _ _ checked1257.1 (.cons _ _ _ _ _ checked1258.1 (.cons _ _ _ _ _ checked1259.1 (.cons _ _ _ _ _ checked1260.1 (.cons _ _ _ _ _ checked1261.1 (.cons _ _ _ _ _ checked1262.1 (.cons _ _ _ _ _ checked1263.1 (.cons _ _ _ _ _ checked1264.1 (.cons _ _ _ _ _ checked1265.1 (.cons _ _ _ _ _ checked1266.1 (.cons _ _ _ _ _ checked1267.1 (.cons _ _ _ _ _ checked1268.1 (.cons _ _ _ _ _ checked1269.1 (.cons _ _ _ _ _ checked1270.1 (.cons _ _ _ _ _ checked1271.1 (.cons _ _ _ _ _ checked1272.1 (.cons _ _ _ _ _ checked1273.1 (.cons _ _ _ _ _ checked1274.1 (.cons _ _ _ _ _ checked1275.1 (.cons _ _ _ _ _ checked1276.1 (.cons _ _ _ _ _ checked1277.1 (.cons _ _ _ _ _ checked1278.1 (.cons _ _ _ _ _ checked1279.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1334 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2903 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1216.2,checked1217.2,checked1218.2,checked1219.2,checked1220.2,checked1221.2,checked1222.2,checked1223.2,checked1224.2,checked1225.2,checked1226.2,checked1227.2,checked1228.2,checked1229.2,checked1230.2,checked1231.2,checked1232.2,checked1233.2,checked1234.2,checked1235.2,checked1236.2,checked1237.2,checked1238.2,checked1239.2,checked1240.2,checked1241.2,checked1242.2,checked1243.2,checked1244.2,checked1245.2,checked1246.2,checked1247.2,checked1248.2,checked1249.2,checked1250.2,checked1251.2,checked1252.2,checked1253.2,checked1254.2,checked1255.2,checked1256.2,checked1257.2,checked1258.2,checked1259.2,checked1260.2,checked1261.2,checked1262.2,checked1263.2,checked1264.2,checked1265.2,checked1266.2,checked1267.2,checked1268.2,checked1269.2,checked1270.2,checked1271.2,checked1272.2,checked1273.2,checked1274.2,checked1275.2,checked1276.2,checked1277.2,checked1278.2,checked1279.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup19
