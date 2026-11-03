import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup20
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1280 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1280 : Bytes := ("    let r0000052b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1280 : bytes1280=statementBytes 1323 (op1280.map lower) ∧ bytes1280.length=41 := by core033_kernel_decide
def op1281 : List WordIR.Op := [.bxor 1322 1323]
def bytes1281 : Bytes := ("    let r0000052c: u32 = r0000052a ^ r0000052b;\n" : String).toByteArray.data.toList
theorem checked1281 : bytes1281=statementBytes 1324 (op1281.map lower) ∧ bytes1281.length=48 := by core033_kernel_decide
def op1282 : List WordIR.Op := [.shr 1115 1]
def bytes1282 : Bytes := ("    let r0000052d: u32 = r0000045b >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1282 : bytes1282=statementBytes 1325 (op1282.map lower) ∧ bytes1282.length=54 := by core033_kernel_decide
def op1283 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1283 : Bytes := ("    let r0000052e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1283 : bytes1283=statementBytes 1326 (op1283.map lower) ∧ bytes1283.length=41 := by core033_kernel_decide
def op1284 : List WordIR.Op := [.bnot 1326]
def bytes1284 : Bytes := ("    let r0000052f: u32 = !r0000052e;\n" : String).toByteArray.data.toList
theorem checked1284 : bytes1284=statementBytes 1327 (op1284.map lower) ∧ bytes1284.length=37 := by core033_kernel_decide
def op1285 : List WordIR.Op := [.band 1325 1327]
def bytes1285 : Bytes := ("    let r00000530: u32 = r0000052d & r0000052f;\n" : String).toByteArray.data.toList
theorem checked1285 : bytes1285=statementBytes 1328 (op1285.map lower) ∧ bytes1285.length=48 := by core033_kernel_decide
def op1286 : List WordIR.Op := [.shr 1115 1]
def bytes1286 : Bytes := ("    let r00000531: u32 = r0000045b >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1286 : bytes1286=statementBytes 1329 (op1286.map lower) ∧ bytes1286.length=54 := by core033_kernel_decide
def op1287 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1287 : Bytes := ("    let r00000532: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1287 : bytes1287=statementBytes 1330 (op1287.map lower) ∧ bytes1287.length=41 := by core033_kernel_decide
def op1288 : List WordIR.Op := [.bnot 1330]
def bytes1288 : Bytes := ("    let r00000533: u32 = !r00000532;\n" : String).toByteArray.data.toList
theorem checked1288 : bytes1288=statementBytes 1331 (op1288.map lower) ∧ bytes1288.length=37 := by core033_kernel_decide
def op1289 : List WordIR.Op := [.bxor 1329 1331]
def bytes1289 : Bytes := ("    let r00000534: u32 = r00000531 ^ r00000533;\n" : String).toByteArray.data.toList
theorem checked1289 : bytes1289=statementBytes 1332 (op1289.map lower) ∧ bytes1289.length=48 := by core033_kernel_decide
def op1290 : List WordIR.Op := [.shr 1115 1]
def bytes1290 : Bytes := ("    let r00000535: u32 = r0000045b >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1290 : bytes1290=statementBytes 1333 (op1290.map lower) ∧ bytes1290.length=54 := by core033_kernel_decide
def op1291 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1291 : Bytes := ("    let r00000536: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1291 : bytes1291=statementBytes 1334 (op1291.map lower) ∧ bytes1291.length=41 := by core033_kernel_decide
def op1292 : List WordIR.Op := [.bnot 1334]
def bytes1292 : Bytes := ("    let r00000537: u32 = !r00000536;\n" : String).toByteArray.data.toList
theorem checked1292 : bytes1292=statementBytes 1335 (op1292.map lower) ∧ bytes1292.length=37 := by core033_kernel_decide
def op1293 : List WordIR.Op := [.badd 1333 1335]
def bytes1293 : Bytes := ("    let r00000538: u32 = r00000535.wrapping_add(r00000537);\n" : String).toByteArray.data.toList
theorem checked1293 : bytes1293=statementBytes 1336 (op1293.map lower) ∧ bytes1293.length=60 := by core033_kernel_decide
def op1294 : List WordIR.Op := [.bnot 1336]
def bytes1294 : Bytes := ("    let r00000539: u32 = !r00000538;\n" : String).toByteArray.data.toList
theorem checked1294 : bytes1294=statementBytes 1337 (op1294.map lower) ∧ bytes1294.length=37 := by core033_kernel_decide
def op1295 : List WordIR.Op := [.band 1332 1337]
def bytes1295 : Bytes := ("    let r0000053a: u32 = r00000534 & r00000539;\n" : String).toByteArray.data.toList
theorem checked1295 : bytes1295=statementBytes 1338 (op1295.map lower) ∧ bytes1295.length=48 := by core033_kernel_decide
def op1296 : List WordIR.Op := [.bxor 1328 1338]
def bytes1296 : Bytes := ("    let r0000053b: u32 = r00000530 ^ r0000053a;\n" : String).toByteArray.data.toList
theorem checked1296 : bytes1296=statementBytes 1339 (op1296.map lower) ∧ bytes1296.length=48 := by core033_kernel_decide
def op1297 : List WordIR.Op := [.shr 1339 31]
def bytes1297 : Bytes := ("    let r0000053c: u32 = r0000053b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1297 : bytes1297=statementBytes 1340 (op1297.map lower) ∧ bytes1297.length=54 := by core033_kernel_decide
def op1298 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1298 : Bytes := ("    let r0000053d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1298 : bytes1298=statementBytes 1341 (op1298.map lower) ∧ bytes1298.length=41 := by core033_kernel_decide
def op1299 : List WordIR.Op := [.bxor 1340 1341]
def bytes1299 : Bytes := ("    let r0000053e: u32 = r0000053c ^ r0000053d;\n" : String).toByteArray.data.toList
theorem checked1299 : bytes1299=statementBytes 1342 (op1299.map lower) ∧ bytes1299.length=48 := by core033_kernel_decide
def op1300 : List WordIR.Op := [.literal (BitVec.ofNat 32 99)]
def bytes1300 : Bytes := ("    let r0000053f: u32 = 0x00000063_u32;\n" : String).toByteArray.data.toList
theorem checked1300 : bytes1300=statementBytes 1343 (op1300.map lower) ∧ bytes1300.length=41 := by core033_kernel_decide
def op1301 : List WordIR.Op := [.literal (BitVec.ofNat 32 111)]
def bytes1301 : Bytes := ("    let r00000540: u32 = 0x0000006f_u32;\n" : String).toByteArray.data.toList
theorem checked1301 : bytes1301=statementBytes 1344 (op1301.map lower) ∧ bytes1301.length=41 := by core033_kernel_decide
def op1302 : List WordIR.Op := [.literal (BitVec.ofNat 32 114)]
def bytes1302 : Bytes := ("    let r00000541: u32 = 0x00000072_u32;\n" : String).toByteArray.data.toList
theorem checked1302 : bytes1302=statementBytes 1345 (op1302.map lower) ∧ bytes1302.length=41 := by core033_kernel_decide
def op1303 : List WordIR.Op := [.literal (BitVec.ofNat 32 101)]
def bytes1303 : Bytes := ("    let r00000542: u32 = 0x00000065_u32;\n" : String).toByteArray.data.toList
theorem checked1303 : bytes1303=statementBytes 1346 (op1303.map lower) ∧ bytes1303.length=41 := by core033_kernel_decide
def op1304 : List WordIR.Op := [.literal (BitVec.ofNat 32 48)]
def bytes1304 : Bytes := ("    let r00000543: u32 = 0x00000030_u32;\n" : String).toByteArray.data.toList
theorem checked1304 : bytes1304=statementBytes 1347 (op1304.map lower) ∧ bytes1304.length=41 := by core033_kernel_decide
def op1305 : List WordIR.Op := [.literal (BitVec.ofNat 32 51)]
def bytes1305 : Bytes := ("    let r00000544: u32 = 0x00000033_u32;\n" : String).toByteArray.data.toList
theorem checked1305 : bytes1305=statementBytes 1348 (op1305.map lower) ∧ bytes1305.length=41 := by core033_kernel_decide
def op1306 : List WordIR.Op := [.literal (BitVec.ofNat 32 51)]
def bytes1306 : Bytes := ("    let r00000545: u32 = 0x00000033_u32;\n" : String).toByteArray.data.toList
theorem checked1306 : bytes1306=statementBytes 1349 (op1306.map lower) ∧ bytes1306.length=41 := by core033_kernel_decide
def op1307 : List WordIR.Op := [.literal (BitVec.ofNat 32 46)]
def bytes1307 : Bytes := ("    let r00000546: u32 = 0x0000002e_u32;\n" : String).toByteArray.data.toList
theorem checked1307 : bytes1307=statementBytes 1350 (op1307.map lower) ∧ bytes1307.length=41 := by core033_kernel_decide
def op1308 : List WordIR.Op := [.literal (BitVec.ofNat 32 115)]
def bytes1308 : Bytes := ("    let r00000547: u32 = 0x00000073_u32;\n" : String).toByteArray.data.toList
theorem checked1308 : bytes1308=statementBytes 1351 (op1308.map lower) ∧ bytes1308.length=41 := by core033_kernel_decide
def op1309 : List WordIR.Op := [.literal (BitVec.ofNat 32 101)]
def bytes1309 : Bytes := ("    let r00000548: u32 = 0x00000065_u32;\n" : String).toByteArray.data.toList
theorem checked1309 : bytes1309=statementBytes 1352 (op1309.map lower) ∧ bytes1309.length=41 := by core033_kernel_decide
def op1310 : List WordIR.Op := [.literal (BitVec.ofNat 32 109)]
def bytes1310 : Bytes := ("    let r00000549: u32 = 0x0000006d_u32;\n" : String).toByteArray.data.toList
theorem checked1310 : bytes1310=statementBytes 1353 (op1310.map lower) ∧ bytes1310.length=41 := by core033_kernel_decide
def op1311 : List WordIR.Op := [.literal (BitVec.ofNat 32 97)]
def bytes1311 : Bytes := ("    let r0000054a: u32 = 0x00000061_u32;\n" : String).toByteArray.data.toList
theorem checked1311 : bytes1311=statementBytes 1354 (op1311.map lower) ∧ bytes1311.length=41 := by core033_kernel_decide
def op1312 : List WordIR.Op := [.literal (BitVec.ofNat 32 110)]
def bytes1312 : Bytes := ("    let r0000054b: u32 = 0x0000006e_u32;\n" : String).toByteArray.data.toList
theorem checked1312 : bytes1312=statementBytes 1355 (op1312.map lower) ∧ bytes1312.length=41 := by core033_kernel_decide
def op1313 : List WordIR.Op := [.literal (BitVec.ofNat 32 116)]
def bytes1313 : Bytes := ("    let r0000054c: u32 = 0x00000074_u32;\n" : String).toByteArray.data.toList
theorem checked1313 : bytes1313=statementBytes 1356 (op1313.map lower) ∧ bytes1313.length=41 := by core033_kernel_decide
def op1314 : List WordIR.Op := [.literal (BitVec.ofNat 32 105)]
def bytes1314 : Bytes := ("    let r0000054d: u32 = 0x00000069_u32;\n" : String).toByteArray.data.toList
theorem checked1314 : bytes1314=statementBytes 1357 (op1314.map lower) ∧ bytes1314.length=41 := by core033_kernel_decide
def op1315 : List WordIR.Op := [.literal (BitVec.ofNat 32 99)]
def bytes1315 : Bytes := ("    let r0000054e: u32 = 0x00000063_u32;\n" : String).toByteArray.data.toList
theorem checked1315 : bytes1315=statementBytes 1358 (op1315.map lower) ∧ bytes1315.length=41 := by core033_kernel_decide
def op1316 : List WordIR.Op := [.literal (BitVec.ofNat 32 46)]
def bytes1316 : Bytes := ("    let r0000054f: u32 = 0x0000002e_u32;\n" : String).toByteArray.data.toList
theorem checked1316 : bytes1316=statementBytes 1359 (op1316.map lower) ∧ bytes1316.length=41 := by core033_kernel_decide
def op1317 : List WordIR.Op := [.literal (BitVec.ofNat 32 118)]
def bytes1317 : Bytes := ("    let r00000550: u32 = 0x00000076_u32;\n" : String).toByteArray.data.toList
theorem checked1317 : bytes1317=statementBytes 1360 (op1317.map lower) ∧ bytes1317.length=41 := by core033_kernel_decide
def op1318 : List WordIR.Op := [.literal (BitVec.ofNat 32 49)]
def bytes1318 : Bytes := ("    let r00000551: u32 = 0x00000031_u32;\n" : String).toByteArray.data.toList
theorem checked1318 : bytes1318=statementBytes 1361 (op1318.map lower) ∧ bytes1318.length=41 := by core033_kernel_decide
def op1319 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1319 : Bytes := ("    let r00000552: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1319 : bytes1319=statementBytes 1362 (op1319.map lower) ∧ bytes1319.length=41 := by core033_kernel_decide
def op1320 : List WordIR.Op := [.literal (BitVec.ofNat 32 81)]
def bytes1320 : Bytes := ("    let r00000553: u32 = 0x00000051_u32;\n" : String).toByteArray.data.toList
theorem checked1320 : bytes1320=statementBytes 1363 (op1320.map lower) ∧ bytes1320.length=41 := by core033_kernel_decide
def op1321 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1321 : Bytes := ("    let r00000554: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1321 : bytes1321=statementBytes 1364 (op1321.map lower) ∧ bytes1321.length=41 := by core033_kernel_decide
def op1322 : List WordIR.Op := [.shr 107 0]
def bytes1322 : Bytes := ("    let r00000555: u32 = r0000006b >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1322 : bytes1322=statementBytes 1365 (op1322.map lower) ∧ bytes1322.length=54 := by core033_kernel_decide
def op1323 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1323 : Bytes := ("    let r00000556: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1323 : bytes1323=statementBytes 1366 (op1323.map lower) ∧ bytes1323.length=41 := by core033_kernel_decide
def op1324 : List WordIR.Op := [.band 1365 1366]
def bytes1324 : Bytes := ("    let r00000557: u32 = r00000555 & r00000556;\n" : String).toByteArray.data.toList
theorem checked1324 : bytes1324=statementBytes 1367 (op1324.map lower) ∧ bytes1324.length=48 := by core033_kernel_decide
def op1325 : List WordIR.Op := [.shr 563 0]
def bytes1325 : Bytes := ("    let r00000558: u32 = r00000233 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1325 : bytes1325=statementBytes 1368 (op1325.map lower) ∧ bytes1325.length=54 := by core033_kernel_decide
def op1326 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1326 : Bytes := ("    let r00000559: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1326 : bytes1326=statementBytes 1369 (op1326.map lower) ∧ bytes1326.length=41 := by core033_kernel_decide
def op1327 : List WordIR.Op := [.band 1368 1369]
def bytes1327 : Bytes := ("    let r0000055a: u32 = r00000558 & r00000559;\n" : String).toByteArray.data.toList
theorem checked1327 : bytes1327=statementBytes 1370 (op1327.map lower) ∧ bytes1327.length=48 := by core033_kernel_decide
def op1328 : List WordIR.Op := [.shr 563 8]
def bytes1328 : Bytes := ("    let r0000055b: u32 = r00000233 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1328 : bytes1328=statementBytes 1371 (op1328.map lower) ∧ bytes1328.length=54 := by core033_kernel_decide
def op1329 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1329 : Bytes := ("    let r0000055c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1329 : bytes1329=statementBytes 1372 (op1329.map lower) ∧ bytes1329.length=41 := by core033_kernel_decide
def op1330 : List WordIR.Op := [.band 1371 1372]
def bytes1330 : Bytes := ("    let r0000055d: u32 = r0000055b & r0000055c;\n" : String).toByteArray.data.toList
theorem checked1330 : bytes1330=statementBytes 1373 (op1330.map lower) ∧ bytes1330.length=48 := by core033_kernel_decide
def op1331 : List WordIR.Op := [.shr 885 0]
def bytes1331 : Bytes := ("    let r0000055e: u32 = r00000375 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1331 : bytes1331=statementBytes 1374 (op1331.map lower) ∧ bytes1331.length=54 := by core033_kernel_decide
def op1332 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1332 : Bytes := ("    let r0000055f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1332 : bytes1332=statementBytes 1375 (op1332.map lower) ∧ bytes1332.length=41 := by core033_kernel_decide
def op1333 : List WordIR.Op := [.band 1374 1375]
def bytes1333 : Bytes := ("    let r00000560: u32 = r0000055e & r0000055f;\n" : String).toByteArray.data.toList
theorem checked1333 : bytes1333=statementBytes 1376 (op1333.map lower) ∧ bytes1333.length=48 := by core033_kernel_decide
def op1334 : List WordIR.Op := [.shr 885 8]
def bytes1334 : Bytes := ("    let r00000561: u32 = r00000375 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1334 : bytes1334=statementBytes 1377 (op1334.map lower) ∧ bytes1334.length=54 := by core033_kernel_decide
def op1335 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1335 : Bytes := ("    let r00000562: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1335 : bytes1335=statementBytes 1378 (op1335.map lower) ∧ bytes1335.length=41 := by core033_kernel_decide
def op1336 : List WordIR.Op := [.band 1377 1378]
def bytes1336 : Bytes := ("    let r00000563: u32 = r00000561 & r00000562;\n" : String).toByteArray.data.toList
theorem checked1336 : bytes1336=statementBytes 1379 (op1336.map lower) ∧ bytes1336.length=48 := by core033_kernel_decide
def op1337 : List WordIR.Op := [.shr 885 16]
def bytes1337 : Bytes := ("    let r00000564: u32 = r00000375 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1337 : bytes1337=statementBytes 1380 (op1337.map lower) ∧ bytes1337.length=54 := by core033_kernel_decide
def op1338 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1338 : Bytes := ("    let r00000565: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1338 : bytes1338=statementBytes 1381 (op1338.map lower) ∧ bytes1338.length=41 := by core033_kernel_decide
def op1339 : List WordIR.Op := [.band 1380 1381]
def bytes1339 : Bytes := ("    let r00000566: u32 = r00000564 & r00000565;\n" : String).toByteArray.data.toList
theorem checked1339 : bytes1339=statementBytes 1382 (op1339.map lower) ∧ bytes1339.length=48 := by core033_kernel_decide
def op1340 : List WordIR.Op := [.shr 885 24]
def bytes1340 : Bytes := ("    let r00000567: u32 = r00000375 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1340 : bytes1340=statementBytes 1383 (op1340.map lower) ∧ bytes1340.length=54 := by core033_kernel_decide
def op1341 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1341 : Bytes := ("    let r00000568: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1341 : bytes1341=statementBytes 1384 (op1341.map lower) ∧ bytes1341.length=41 := by core033_kernel_decide
def op1342 : List WordIR.Op := [.band 1383 1384]
def bytes1342 : Bytes := ("    let r00000569: u32 = r00000567 & r00000568;\n" : String).toByteArray.data.toList
theorem checked1342 : bytes1342=statementBytes 1385 (op1342.map lower) ∧ bytes1342.length=48 := by core033_kernel_decide
def op1343 : List WordIR.Op := [.shr 895 0]
def bytes1343 : Bytes := ("    let r0000056a: u32 = r0000037f >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1343 : bytes1343=statementBytes 1386 (op1343.map lower) ∧ bytes1343.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1280,op1281,op1282,op1283,op1284,op1285,op1286,op1287,op1288,op1289,op1290,op1291,op1292,op1293,op1294,op1295,op1296,op1297,op1298,op1299,op1300,op1301,op1302,op1303,op1304,op1305,op1306,op1307,op1308,op1309,op1310,op1311,op1312,op1313,op1314,op1315,op1316,op1317,op1318,op1319,op1320,op1321,op1322,op1323,op1324,op1325,op1326,op1327,op1328,op1329,op1330,op1331,op1332,op1333,op1334,op1335,op1336,op1337,op1338,op1339,op1340,op1341,op1342,op1343]
def chunks : List Bytes := [bytes1280,bytes1281,bytes1282,bytes1283,bytes1284,bytes1285,bytes1286,bytes1287,bytes1288,bytes1289,bytes1290,bytes1291,bytes1292,bytes1293,bytes1294,bytes1295,bytes1296,bytes1297,bytes1298,bytes1299,bytes1300,bytes1301,bytes1302,bytes1303,bytes1304,bytes1305,bytes1306,bytes1307,bytes1308,bytes1309,bytes1310,bytes1311,bytes1312,bytes1313,bytes1314,bytes1315,bytes1316,bytes1317,bytes1318,bytes1319,bytes1320,bytes1321,bytes1322,bytes1323,bytes1324,bytes1325,bytes1326,bytes1327,bytes1328,bytes1329,bytes1330,bytes1331,bytes1332,bytes1333,bytes1334,bytes1335,bytes1336,bytes1337,bytes1338,bytes1339,bytes1340,bytes1341,bytes1342,bytes1343]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1323 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1280.1 (.cons _ _ _ _ _ checked1281.1 (.cons _ _ _ _ _ checked1282.1 (.cons _ _ _ _ _ checked1283.1 (.cons _ _ _ _ _ checked1284.1 (.cons _ _ _ _ _ checked1285.1 (.cons _ _ _ _ _ checked1286.1 (.cons _ _ _ _ _ checked1287.1 (.cons _ _ _ _ _ checked1288.1 (.cons _ _ _ _ _ checked1289.1 (.cons _ _ _ _ _ checked1290.1 (.cons _ _ _ _ _ checked1291.1 (.cons _ _ _ _ _ checked1292.1 (.cons _ _ _ _ _ checked1293.1 (.cons _ _ _ _ _ checked1294.1 (.cons _ _ _ _ _ checked1295.1 (.cons _ _ _ _ _ checked1296.1 (.cons _ _ _ _ _ checked1297.1 (.cons _ _ _ _ _ checked1298.1 (.cons _ _ _ _ _ checked1299.1 (.cons _ _ _ _ _ checked1300.1 (.cons _ _ _ _ _ checked1301.1 (.cons _ _ _ _ _ checked1302.1 (.cons _ _ _ _ _ checked1303.1 (.cons _ _ _ _ _ checked1304.1 (.cons _ _ _ _ _ checked1305.1 (.cons _ _ _ _ _ checked1306.1 (.cons _ _ _ _ _ checked1307.1 (.cons _ _ _ _ _ checked1308.1 (.cons _ _ _ _ _ checked1309.1 (.cons _ _ _ _ _ checked1310.1 (.cons _ _ _ _ _ checked1311.1 (.cons _ _ _ _ _ checked1312.1 (.cons _ _ _ _ _ checked1313.1 (.cons _ _ _ _ _ checked1314.1 (.cons _ _ _ _ _ checked1315.1 (.cons _ _ _ _ _ checked1316.1 (.cons _ _ _ _ _ checked1317.1 (.cons _ _ _ _ _ checked1318.1 (.cons _ _ _ _ _ checked1319.1 (.cons _ _ _ _ _ checked1320.1 (.cons _ _ _ _ _ checked1321.1 (.cons _ _ _ _ _ checked1322.1 (.cons _ _ _ _ _ checked1323.1 (.cons _ _ _ _ _ checked1324.1 (.cons _ _ _ _ _ checked1325.1 (.cons _ _ _ _ _ checked1326.1 (.cons _ _ _ _ _ checked1327.1 (.cons _ _ _ _ _ checked1328.1 (.cons _ _ _ _ _ checked1329.1 (.cons _ _ _ _ _ checked1330.1 (.cons _ _ _ _ _ checked1331.1 (.cons _ _ _ _ _ checked1332.1 (.cons _ _ _ _ _ checked1333.1 (.cons _ _ _ _ _ checked1334.1 (.cons _ _ _ _ _ checked1335.1 (.cons _ _ _ _ _ checked1336.1 (.cons _ _ _ _ _ checked1337.1 (.cons _ _ _ _ _ checked1338.1 (.cons _ _ _ _ _ checked1339.1 (.cons _ _ _ _ _ checked1340.1 (.cons _ _ _ _ _ checked1341.1 (.cons _ _ _ _ _ checked1342.1 (.cons _ _ _ _ _ checked1343.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1323 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1280.2,checked1281.2,checked1282.2,checked1283.2,checked1284.2,checked1285.2,checked1286.2,checked1287.2,checked1288.2,checked1289.2,checked1290.2,checked1291.2,checked1292.2,checked1293.2,checked1294.2,checked1295.2,checked1296.2,checked1297.2,checked1298.2,checked1299.2,checked1300.2,checked1301.2,checked1302.2,checked1303.2,checked1304.2,checked1305.2,checked1306.2,checked1307.2,checked1308.2,checked1309.2,checked1310.2,checked1311.2,checked1312.2,checked1313.2,checked1314.2,checked1315.2,checked1316.2,checked1317.2,checked1318.2,checked1319.2,checked1320.2,checked1321.2,checked1322.2,checked1323.2,checked1324.2,checked1325.2,checked1326.2,checked1327.2,checked1328.2,checked1329.2,checked1330.2,checked1331.2,checked1332.2,checked1333.2,checked1334.2,checked1335.2,checked1336.2,checked1337.2,checked1338.2,checked1339.2,checked1340.2,checked1341.2,checked1342.2,checked1343.2]
  decide
end ArtifactPathRoundDispatchGroup20
