import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup20
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1280 : List WordIR.Op := [.bxor 1391 1397]
def bytes1280 : Bytes := ("    let r00000576: u32 = r0000056f ^ r00000575;\n" : String).toByteArray.data.toList
theorem checked1280 : bytes1280=statementBytes 1398 (op1280.map lower) ∧ bytes1280.length=48 := by core033_kernel_decide
def op1281 : List WordIR.Op := [.bnot 1288]
def bytes1281 : Bytes := ("    let r00000577: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1281 : bytes1281=statementBytes 1399 (op1281.map lower) ∧ bytes1281.length=37 := by core033_kernel_decide
def op1282 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1282 : Bytes := ("    let r00000578: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1282 : bytes1282=statementBytes 1400 (op1282.map lower) ∧ bytes1282.length=41 := by core033_kernel_decide
def op1283 : List WordIR.Op := [.badd 1399 1400]
def bytes1283 : Bytes := ("    let r00000579: u32 = r00000577.wrapping_add(r00000578);\n" : String).toByteArray.data.toList
theorem checked1283 : bytes1283=statementBytes 1401 (op1283.map lower) ∧ bytes1283.length=60 := by core033_kernel_decide
def op1284 : List WordIR.Op := [.band 1401 803]
def bytes1284 : Bytes := ("    let r0000057a: u32 = r00000579 & r00000323;\n" : String).toByteArray.data.toList
theorem checked1284 : bytes1284=statementBytes 1402 (op1284.map lower) ∧ bytes1284.length=48 := by core033_kernel_decide
def op1285 : List WordIR.Op := [.bnot 1288]
def bytes1285 : Bytes := ("    let r0000057b: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1285 : bytes1285=statementBytes 1403 (op1285.map lower) ∧ bytes1285.length=37 := by core033_kernel_decide
def op1286 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1286 : Bytes := ("    let r0000057c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1286 : bytes1286=statementBytes 1404 (op1286.map lower) ∧ bytes1286.length=41 := by core033_kernel_decide
def op1287 : List WordIR.Op := [.badd 1403 1404]
def bytes1287 : Bytes := ("    let r0000057d: u32 = r0000057b.wrapping_add(r0000057c);\n" : String).toByteArray.data.toList
theorem checked1287 : bytes1287=statementBytes 1405 (op1287.map lower) ∧ bytes1287.length=60 := by core033_kernel_decide
def op1288 : List WordIR.Op := [.bnot 1405]
def bytes1288 : Bytes := ("    let r0000057e: u32 = !r0000057d;\n" : String).toByteArray.data.toList
theorem checked1288 : bytes1288=statementBytes 1406 (op1288.map lower) ∧ bytes1288.length=37 := by core033_kernel_decide
def op1289 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1289 : Bytes := ("    let r0000057f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1289 : bytes1289=statementBytes 1407 (op1289.map lower) ∧ bytes1289.length=41 := by core033_kernel_decide
def op1290 : List WordIR.Op := [.band 1406 1407]
def bytes1290 : Bytes := ("    let r00000580: u32 = r0000057e & r0000057f;\n" : String).toByteArray.data.toList
theorem checked1290 : bytes1290=statementBytes 1408 (op1290.map lower) ∧ bytes1290.length=48 := by core033_kernel_decide
def op1291 : List WordIR.Op := [.bxor 1402 1408]
def bytes1291 : Bytes := ("    let r00000581: u32 = r0000057a ^ r00000580;\n" : String).toByteArray.data.toList
theorem checked1291 : bytes1291=statementBytes 1409 (op1291.map lower) ∧ bytes1291.length=48 := by core033_kernel_decide
def op1292 : List WordIR.Op := [.bnot 1288]
def bytes1292 : Bytes := ("    let r00000582: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1292 : bytes1292=statementBytes 1410 (op1292.map lower) ∧ bytes1292.length=37 := by core033_kernel_decide
def op1293 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1293 : Bytes := ("    let r00000583: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1293 : bytes1293=statementBytes 1411 (op1293.map lower) ∧ bytes1293.length=41 := by core033_kernel_decide
def op1294 : List WordIR.Op := [.badd 1410 1411]
def bytes1294 : Bytes := ("    let r00000584: u32 = r00000582.wrapping_add(r00000583);\n" : String).toByteArray.data.toList
theorem checked1294 : bytes1294=statementBytes 1412 (op1294.map lower) ∧ bytes1294.length=60 := by core033_kernel_decide
def op1295 : List WordIR.Op := [.band 1412 823]
def bytes1295 : Bytes := ("    let r00000585: u32 = r00000584 & r00000337;\n" : String).toByteArray.data.toList
theorem checked1295 : bytes1295=statementBytes 1413 (op1295.map lower) ∧ bytes1295.length=48 := by core033_kernel_decide
def op1296 : List WordIR.Op := [.bnot 1288]
def bytes1296 : Bytes := ("    let r00000586: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1296 : bytes1296=statementBytes 1414 (op1296.map lower) ∧ bytes1296.length=37 := by core033_kernel_decide
def op1297 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1297 : Bytes := ("    let r00000587: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1297 : bytes1297=statementBytes 1415 (op1297.map lower) ∧ bytes1297.length=41 := by core033_kernel_decide
def op1298 : List WordIR.Op := [.badd 1414 1415]
def bytes1298 : Bytes := ("    let r00000588: u32 = r00000586.wrapping_add(r00000587);\n" : String).toByteArray.data.toList
theorem checked1298 : bytes1298=statementBytes 1416 (op1298.map lower) ∧ bytes1298.length=60 := by core033_kernel_decide
def op1299 : List WordIR.Op := [.bnot 1416]
def bytes1299 : Bytes := ("    let r00000589: u32 = !r00000588;\n" : String).toByteArray.data.toList
theorem checked1299 : bytes1299=statementBytes 1417 (op1299.map lower) ∧ bytes1299.length=37 := by core033_kernel_decide
def op1300 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1300 : Bytes := ("    let r0000058a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1300 : bytes1300=statementBytes 1418 (op1300.map lower) ∧ bytes1300.length=41 := by core033_kernel_decide
def op1301 : List WordIR.Op := [.band 1417 1418]
def bytes1301 : Bytes := ("    let r0000058b: u32 = r00000589 & r0000058a;\n" : String).toByteArray.data.toList
theorem checked1301 : bytes1301=statementBytes 1419 (op1301.map lower) ∧ bytes1301.length=48 := by core033_kernel_decide
def op1302 : List WordIR.Op := [.bxor 1413 1419]
def bytes1302 : Bytes := ("    let r0000058c: u32 = r00000585 ^ r0000058b;\n" : String).toByteArray.data.toList
theorem checked1302 : bytes1302=statementBytes 1420 (op1302.map lower) ∧ bytes1302.length=48 := by core033_kernel_decide
def op1303 : List WordIR.Op := [.bnot 1288]
def bytes1303 : Bytes := ("    let r0000058d: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1303 : bytes1303=statementBytes 1421 (op1303.map lower) ∧ bytes1303.length=37 := by core033_kernel_decide
def op1304 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1304 : Bytes := ("    let r0000058e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1304 : bytes1304=statementBytes 1422 (op1304.map lower) ∧ bytes1304.length=41 := by core033_kernel_decide
def op1305 : List WordIR.Op := [.badd 1421 1422]
def bytes1305 : Bytes := ("    let r0000058f: u32 = r0000058d.wrapping_add(r0000058e);\n" : String).toByteArray.data.toList
theorem checked1305 : bytes1305=statementBytes 1423 (op1305.map lower) ∧ bytes1305.length=60 := by core033_kernel_decide
def op1306 : List WordIR.Op := [.band 1423 843]
def bytes1306 : Bytes := ("    let r00000590: u32 = r0000058f & r0000034b;\n" : String).toByteArray.data.toList
theorem checked1306 : bytes1306=statementBytes 1424 (op1306.map lower) ∧ bytes1306.length=48 := by core033_kernel_decide
def op1307 : List WordIR.Op := [.bnot 1288]
def bytes1307 : Bytes := ("    let r00000591: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1307 : bytes1307=statementBytes 1425 (op1307.map lower) ∧ bytes1307.length=37 := by core033_kernel_decide
def op1308 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1308 : Bytes := ("    let r00000592: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1308 : bytes1308=statementBytes 1426 (op1308.map lower) ∧ bytes1308.length=41 := by core033_kernel_decide
def op1309 : List WordIR.Op := [.badd 1425 1426]
def bytes1309 : Bytes := ("    let r00000593: u32 = r00000591.wrapping_add(r00000592);\n" : String).toByteArray.data.toList
theorem checked1309 : bytes1309=statementBytes 1427 (op1309.map lower) ∧ bytes1309.length=60 := by core033_kernel_decide
def op1310 : List WordIR.Op := [.bnot 1427]
def bytes1310 : Bytes := ("    let r00000594: u32 = !r00000593;\n" : String).toByteArray.data.toList
theorem checked1310 : bytes1310=statementBytes 1428 (op1310.map lower) ∧ bytes1310.length=37 := by core033_kernel_decide
def op1311 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1311 : Bytes := ("    let r00000595: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1311 : bytes1311=statementBytes 1429 (op1311.map lower) ∧ bytes1311.length=41 := by core033_kernel_decide
def op1312 : List WordIR.Op := [.band 1428 1429]
def bytes1312 : Bytes := ("    let r00000596: u32 = r00000594 & r00000595;\n" : String).toByteArray.data.toList
theorem checked1312 : bytes1312=statementBytes 1430 (op1312.map lower) ∧ bytes1312.length=48 := by core033_kernel_decide
def op1313 : List WordIR.Op := [.bxor 1424 1430]
def bytes1313 : Bytes := ("    let r00000597: u32 = r00000590 ^ r00000596;\n" : String).toByteArray.data.toList
theorem checked1313 : bytes1313=statementBytes 1431 (op1313.map lower) ∧ bytes1313.length=48 := by core033_kernel_decide
def op1314 : List WordIR.Op := [.bnot 1288]
def bytes1314 : Bytes := ("    let r00000598: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1314 : bytes1314=statementBytes 1432 (op1314.map lower) ∧ bytes1314.length=37 := by core033_kernel_decide
def op1315 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1315 : Bytes := ("    let r00000599: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1315 : bytes1315=statementBytes 1433 (op1315.map lower) ∧ bytes1315.length=41 := by core033_kernel_decide
def op1316 : List WordIR.Op := [.badd 1432 1433]
def bytes1316 : Bytes := ("    let r0000059a: u32 = r00000598.wrapping_add(r00000599);\n" : String).toByteArray.data.toList
theorem checked1316 : bytes1316=statementBytes 1434 (op1316.map lower) ∧ bytes1316.length=60 := by core033_kernel_decide
def op1317 : List WordIR.Op := [.band 1434 863]
def bytes1317 : Bytes := ("    let r0000059b: u32 = r0000059a & r0000035f;\n" : String).toByteArray.data.toList
theorem checked1317 : bytes1317=statementBytes 1435 (op1317.map lower) ∧ bytes1317.length=48 := by core033_kernel_decide
def op1318 : List WordIR.Op := [.bnot 1288]
def bytes1318 : Bytes := ("    let r0000059c: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1318 : bytes1318=statementBytes 1436 (op1318.map lower) ∧ bytes1318.length=37 := by core033_kernel_decide
def op1319 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1319 : Bytes := ("    let r0000059d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1319 : bytes1319=statementBytes 1437 (op1319.map lower) ∧ bytes1319.length=41 := by core033_kernel_decide
def op1320 : List WordIR.Op := [.badd 1436 1437]
def bytes1320 : Bytes := ("    let r0000059e: u32 = r0000059c.wrapping_add(r0000059d);\n" : String).toByteArray.data.toList
theorem checked1320 : bytes1320=statementBytes 1438 (op1320.map lower) ∧ bytes1320.length=60 := by core033_kernel_decide
def op1321 : List WordIR.Op := [.bnot 1438]
def bytes1321 : Bytes := ("    let r0000059f: u32 = !r0000059e;\n" : String).toByteArray.data.toList
theorem checked1321 : bytes1321=statementBytes 1439 (op1321.map lower) ∧ bytes1321.length=37 := by core033_kernel_decide
def op1322 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1322 : Bytes := ("    let r000005a0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1322 : bytes1322=statementBytes 1440 (op1322.map lower) ∧ bytes1322.length=41 := by core033_kernel_decide
def op1323 : List WordIR.Op := [.band 1439 1440]
def bytes1323 : Bytes := ("    let r000005a1: u32 = r0000059f & r000005a0;\n" : String).toByteArray.data.toList
theorem checked1323 : bytes1323=statementBytes 1441 (op1323.map lower) ∧ bytes1323.length=48 := by core033_kernel_decide
def op1324 : List WordIR.Op := [.bxor 1435 1441]
def bytes1324 : Bytes := ("    let r000005a2: u32 = r0000059b ^ r000005a1;\n" : String).toByteArray.data.toList
theorem checked1324 : bytes1324=statementBytes 1442 (op1324.map lower) ∧ bytes1324.length=48 := by core033_kernel_decide
def op1325 : List WordIR.Op := [.bnot 1288]
def bytes1325 : Bytes := ("    let r000005a3: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1325 : bytes1325=statementBytes 1443 (op1325.map lower) ∧ bytes1325.length=37 := by core033_kernel_decide
def op1326 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1326 : Bytes := ("    let r000005a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1326 : bytes1326=statementBytes 1444 (op1326.map lower) ∧ bytes1326.length=41 := by core033_kernel_decide
def op1327 : List WordIR.Op := [.badd 1443 1444]
def bytes1327 : Bytes := ("    let r000005a5: u32 = r000005a3.wrapping_add(r000005a4);\n" : String).toByteArray.data.toList
theorem checked1327 : bytes1327=statementBytes 1445 (op1327.map lower) ∧ bytes1327.length=60 := by core033_kernel_decide
def op1328 : List WordIR.Op := [.band 1445 883]
def bytes1328 : Bytes := ("    let r000005a6: u32 = r000005a5 & r00000373;\n" : String).toByteArray.data.toList
theorem checked1328 : bytes1328=statementBytes 1446 (op1328.map lower) ∧ bytes1328.length=48 := by core033_kernel_decide
def op1329 : List WordIR.Op := [.bnot 1288]
def bytes1329 : Bytes := ("    let r000005a7: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1329 : bytes1329=statementBytes 1447 (op1329.map lower) ∧ bytes1329.length=37 := by core033_kernel_decide
def op1330 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1330 : Bytes := ("    let r000005a8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1330 : bytes1330=statementBytes 1448 (op1330.map lower) ∧ bytes1330.length=41 := by core033_kernel_decide
def op1331 : List WordIR.Op := [.badd 1447 1448]
def bytes1331 : Bytes := ("    let r000005a9: u32 = r000005a7.wrapping_add(r000005a8);\n" : String).toByteArray.data.toList
theorem checked1331 : bytes1331=statementBytes 1449 (op1331.map lower) ∧ bytes1331.length=60 := by core033_kernel_decide
def op1332 : List WordIR.Op := [.bnot 1449]
def bytes1332 : Bytes := ("    let r000005aa: u32 = !r000005a9;\n" : String).toByteArray.data.toList
theorem checked1332 : bytes1332=statementBytes 1450 (op1332.map lower) ∧ bytes1332.length=37 := by core033_kernel_decide
def op1333 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1333 : Bytes := ("    let r000005ab: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1333 : bytes1333=statementBytes 1451 (op1333.map lower) ∧ bytes1333.length=41 := by core033_kernel_decide
def op1334 : List WordIR.Op := [.band 1450 1451]
def bytes1334 : Bytes := ("    let r000005ac: u32 = r000005aa & r000005ab;\n" : String).toByteArray.data.toList
theorem checked1334 : bytes1334=statementBytes 1452 (op1334.map lower) ∧ bytes1334.length=48 := by core033_kernel_decide
def op1335 : List WordIR.Op := [.bxor 1446 1452]
def bytes1335 : Bytes := ("    let r000005ad: u32 = r000005a6 ^ r000005ac;\n" : String).toByteArray.data.toList
theorem checked1335 : bytes1335=statementBytes 1453 (op1335.map lower) ∧ bytes1335.length=48 := by core033_kernel_decide
def op1336 : List WordIR.Op := [.bnot 1288]
def bytes1336 : Bytes := ("    let r000005ae: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1336 : bytes1336=statementBytes 1454 (op1336.map lower) ∧ bytes1336.length=37 := by core033_kernel_decide
def op1337 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1337 : Bytes := ("    let r000005af: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1337 : bytes1337=statementBytes 1455 (op1337.map lower) ∧ bytes1337.length=41 := by core033_kernel_decide
def op1338 : List WordIR.Op := [.badd 1454 1455]
def bytes1338 : Bytes := ("    let r000005b0: u32 = r000005ae.wrapping_add(r000005af);\n" : String).toByteArray.data.toList
theorem checked1338 : bytes1338=statementBytes 1456 (op1338.map lower) ∧ bytes1338.length=60 := by core033_kernel_decide
def op1339 : List WordIR.Op := [.band 1456 903]
def bytes1339 : Bytes := ("    let r000005b1: u32 = r000005b0 & r00000387;\n" : String).toByteArray.data.toList
theorem checked1339 : bytes1339=statementBytes 1457 (op1339.map lower) ∧ bytes1339.length=48 := by core033_kernel_decide
def op1340 : List WordIR.Op := [.bnot 1288]
def bytes1340 : Bytes := ("    let r000005b2: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1340 : bytes1340=statementBytes 1458 (op1340.map lower) ∧ bytes1340.length=37 := by core033_kernel_decide
def op1341 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1341 : Bytes := ("    let r000005b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1341 : bytes1341=statementBytes 1459 (op1341.map lower) ∧ bytes1341.length=41 := by core033_kernel_decide
def op1342 : List WordIR.Op := [.badd 1458 1459]
def bytes1342 : Bytes := ("    let r000005b4: u32 = r000005b2.wrapping_add(r000005b3);\n" : String).toByteArray.data.toList
theorem checked1342 : bytes1342=statementBytes 1460 (op1342.map lower) ∧ bytes1342.length=60 := by core033_kernel_decide
def op1343 : List WordIR.Op := [.bnot 1460]
def bytes1343 : Bytes := ("    let r000005b5: u32 = !r000005b4;\n" : String).toByteArray.data.toList
theorem checked1343 : bytes1343=statementBytes 1461 (op1343.map lower) ∧ bytes1343.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1280,op1281,op1282,op1283,op1284,op1285,op1286,op1287,op1288,op1289,op1290,op1291,op1292,op1293,op1294,op1295,op1296,op1297,op1298,op1299,op1300,op1301,op1302,op1303,op1304,op1305,op1306,op1307,op1308,op1309,op1310,op1311,op1312,op1313,op1314,op1315,op1316,op1317,op1318,op1319,op1320,op1321,op1322,op1323,op1324,op1325,op1326,op1327,op1328,op1329,op1330,op1331,op1332,op1333,op1334,op1335,op1336,op1337,op1338,op1339,op1340,op1341,op1342,op1343]
def chunks : List Bytes := [bytes1280,bytes1281,bytes1282,bytes1283,bytes1284,bytes1285,bytes1286,bytes1287,bytes1288,bytes1289,bytes1290,bytes1291,bytes1292,bytes1293,bytes1294,bytes1295,bytes1296,bytes1297,bytes1298,bytes1299,bytes1300,bytes1301,bytes1302,bytes1303,bytes1304,bytes1305,bytes1306,bytes1307,bytes1308,bytes1309,bytes1310,bytes1311,bytes1312,bytes1313,bytes1314,bytes1315,bytes1316,bytes1317,bytes1318,bytes1319,bytes1320,bytes1321,bytes1322,bytes1323,bytes1324,bytes1325,bytes1326,bytes1327,bytes1328,bytes1329,bytes1330,bytes1331,bytes1332,bytes1333,bytes1334,bytes1335,bytes1336,bytes1337,bytes1338,bytes1339,bytes1340,bytes1341,bytes1342,bytes1343]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1398 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1280.1 (.cons _ _ _ _ _ checked1281.1 (.cons _ _ _ _ _ checked1282.1 (.cons _ _ _ _ _ checked1283.1 (.cons _ _ _ _ _ checked1284.1 (.cons _ _ _ _ _ checked1285.1 (.cons _ _ _ _ _ checked1286.1 (.cons _ _ _ _ _ checked1287.1 (.cons _ _ _ _ _ checked1288.1 (.cons _ _ _ _ _ checked1289.1 (.cons _ _ _ _ _ checked1290.1 (.cons _ _ _ _ _ checked1291.1 (.cons _ _ _ _ _ checked1292.1 (.cons _ _ _ _ _ checked1293.1 (.cons _ _ _ _ _ checked1294.1 (.cons _ _ _ _ _ checked1295.1 (.cons _ _ _ _ _ checked1296.1 (.cons _ _ _ _ _ checked1297.1 (.cons _ _ _ _ _ checked1298.1 (.cons _ _ _ _ _ checked1299.1 (.cons _ _ _ _ _ checked1300.1 (.cons _ _ _ _ _ checked1301.1 (.cons _ _ _ _ _ checked1302.1 (.cons _ _ _ _ _ checked1303.1 (.cons _ _ _ _ _ checked1304.1 (.cons _ _ _ _ _ checked1305.1 (.cons _ _ _ _ _ checked1306.1 (.cons _ _ _ _ _ checked1307.1 (.cons _ _ _ _ _ checked1308.1 (.cons _ _ _ _ _ checked1309.1 (.cons _ _ _ _ _ checked1310.1 (.cons _ _ _ _ _ checked1311.1 (.cons _ _ _ _ _ checked1312.1 (.cons _ _ _ _ _ checked1313.1 (.cons _ _ _ _ _ checked1314.1 (.cons _ _ _ _ _ checked1315.1 (.cons _ _ _ _ _ checked1316.1 (.cons _ _ _ _ _ checked1317.1 (.cons _ _ _ _ _ checked1318.1 (.cons _ _ _ _ _ checked1319.1 (.cons _ _ _ _ _ checked1320.1 (.cons _ _ _ _ _ checked1321.1 (.cons _ _ _ _ _ checked1322.1 (.cons _ _ _ _ _ checked1323.1 (.cons _ _ _ _ _ checked1324.1 (.cons _ _ _ _ _ checked1325.1 (.cons _ _ _ _ _ checked1326.1 (.cons _ _ _ _ _ checked1327.1 (.cons _ _ _ _ _ checked1328.1 (.cons _ _ _ _ _ checked1329.1 (.cons _ _ _ _ _ checked1330.1 (.cons _ _ _ _ _ checked1331.1 (.cons _ _ _ _ _ checked1332.1 (.cons _ _ _ _ _ checked1333.1 (.cons _ _ _ _ _ checked1334.1 (.cons _ _ _ _ _ checked1335.1 (.cons _ _ _ _ _ checked1336.1 (.cons _ _ _ _ _ checked1337.1 (.cons _ _ _ _ _ checked1338.1 (.cons _ _ _ _ _ checked1339.1 (.cons _ _ _ _ _ checked1340.1 (.cons _ _ _ _ _ checked1341.1 (.cons _ _ _ _ _ checked1342.1 (.cons _ _ _ _ _ checked1343.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1398 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2899 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1280.2,checked1281.2,checked1282.2,checked1283.2,checked1284.2,checked1285.2,checked1286.2,checked1287.2,checked1288.2,checked1289.2,checked1290.2,checked1291.2,checked1292.2,checked1293.2,checked1294.2,checked1295.2,checked1296.2,checked1297.2,checked1298.2,checked1299.2,checked1300.2,checked1301.2,checked1302.2,checked1303.2,checked1304.2,checked1305.2,checked1306.2,checked1307.2,checked1308.2,checked1309.2,checked1310.2,checked1311.2,checked1312.2,checked1313.2,checked1314.2,checked1315.2,checked1316.2,checked1317.2,checked1318.2,checked1319.2,checked1320.2,checked1321.2,checked1322.2,checked1323.2,checked1324.2,checked1325.2,checked1326.2,checked1327.2,checked1328.2,checked1329.2,checked1330.2,checked1331.2,checked1332.2,checked1333.2,checked1334.2,checked1335.2,checked1336.2,checked1337.2,checked1338.2,checked1339.2,checked1340.2,checked1341.2,checked1342.2,checked1343.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup20
