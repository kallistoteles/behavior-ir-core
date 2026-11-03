import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup21
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1344 : List WordIR.Op := [.bnot 1395]
def bytes1344 : Bytes := ("    let r000005a0: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1344 : bytes1344=statementBytes 1440 (op1344.map lower) ∧ bytes1344.length=37 := by core033_kernel_decide
def op1345 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1345 : Bytes := ("    let r000005a1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1345 : bytes1345=statementBytes 1441 (op1345.map lower) ∧ bytes1345.length=41 := by core033_kernel_decide
def op1346 : List WordIR.Op := [.badd 1440 1441]
def bytes1346 : Bytes := ("    let r000005a2: u32 = r000005a0.wrapping_add(r000005a1);\n" : String).toByteArray.data.toList
theorem checked1346 : bytes1346=statementBytes 1442 (op1346.map lower) ∧ bytes1346.length=60 := by core033_kernel_decide
def op1347 : List WordIR.Op := [.bnot 1442]
def bytes1347 : Bytes := ("    let r000005a3: u32 = !r000005a2;\n" : String).toByteArray.data.toList
theorem checked1347 : bytes1347=statementBytes 1443 (op1347.map lower) ∧ bytes1347.length=37 := by core033_kernel_decide
def op1348 : List WordIR.Op := [.band 1443 781]
def bytes1348 : Bytes := ("    let r000005a4: u32 = r000005a3 & r0000030d;\n" : String).toByteArray.data.toList
theorem checked1348 : bytes1348=statementBytes 1444 (op1348.map lower) ∧ bytes1348.length=48 := by core033_kernel_decide
def op1349 : List WordIR.Op := [.bxor 1439 1444]
def bytes1349 : Bytes := ("    let r000005a5: u32 = r0000059f ^ r000005a4;\n" : String).toByteArray.data.toList
theorem checked1349 : bytes1349=statementBytes 1445 (op1349.map lower) ∧ bytes1349.length=48 := by core033_kernel_decide
def op1350 : List WordIR.Op := [.bnot 1395]
def bytes1350 : Bytes := ("    let r000005a6: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1350 : bytes1350=statementBytes 1446 (op1350.map lower) ∧ bytes1350.length=37 := by core033_kernel_decide
def op1351 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1351 : Bytes := ("    let r000005a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1351 : bytes1351=statementBytes 1447 (op1351.map lower) ∧ bytes1351.length=41 := by core033_kernel_decide
def op1352 : List WordIR.Op := [.badd 1446 1447]
def bytes1352 : Bytes := ("    let r000005a8: u32 = r000005a6.wrapping_add(r000005a7);\n" : String).toByteArray.data.toList
theorem checked1352 : bytes1352=statementBytes 1448 (op1352.map lower) ∧ bytes1352.length=60 := by core033_kernel_decide
def op1353 : List WordIR.Op := [.band 1448 880]
def bytes1353 : Bytes := ("    let r000005a9: u32 = r000005a8 & r00000370;\n" : String).toByteArray.data.toList
theorem checked1353 : bytes1353=statementBytes 1449 (op1353.map lower) ∧ bytes1353.length=48 := by core033_kernel_decide
def op1354 : List WordIR.Op := [.bnot 1395]
def bytes1354 : Bytes := ("    let r000005aa: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1354 : bytes1354=statementBytes 1450 (op1354.map lower) ∧ bytes1354.length=37 := by core033_kernel_decide
def op1355 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1355 : Bytes := ("    let r000005ab: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1355 : bytes1355=statementBytes 1451 (op1355.map lower) ∧ bytes1355.length=41 := by core033_kernel_decide
def op1356 : List WordIR.Op := [.badd 1450 1451]
def bytes1356 : Bytes := ("    let r000005ac: u32 = r000005aa.wrapping_add(r000005ab);\n" : String).toByteArray.data.toList
theorem checked1356 : bytes1356=statementBytes 1452 (op1356.map lower) ∧ bytes1356.length=60 := by core033_kernel_decide
def op1357 : List WordIR.Op := [.bnot 1452]
def bytes1357 : Bytes := ("    let r000005ad: u32 = !r000005ac;\n" : String).toByteArray.data.toList
theorem checked1357 : bytes1357=statementBytes 1453 (op1357.map lower) ∧ bytes1357.length=37 := by core033_kernel_decide
def op1358 : List WordIR.Op := [.band 1453 792]
def bytes1358 : Bytes := ("    let r000005ae: u32 = r000005ad & r00000318;\n" : String).toByteArray.data.toList
theorem checked1358 : bytes1358=statementBytes 1454 (op1358.map lower) ∧ bytes1358.length=48 := by core033_kernel_decide
def op1359 : List WordIR.Op := [.bxor 1449 1454]
def bytes1359 : Bytes := ("    let r000005af: u32 = r000005a9 ^ r000005ae;\n" : String).toByteArray.data.toList
theorem checked1359 : bytes1359=statementBytes 1455 (op1359.map lower) ∧ bytes1359.length=48 := by core033_kernel_decide
def op1360 : List WordIR.Op := [.bnot 1395]
def bytes1360 : Bytes := ("    let r000005b0: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1360 : bytes1360=statementBytes 1456 (op1360.map lower) ∧ bytes1360.length=37 := by core033_kernel_decide
def op1361 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1361 : Bytes := ("    let r000005b1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1361 : bytes1361=statementBytes 1457 (op1361.map lower) ∧ bytes1361.length=41 := by core033_kernel_decide
def op1362 : List WordIR.Op := [.badd 1456 1457]
def bytes1362 : Bytes := ("    let r000005b2: u32 = r000005b0.wrapping_add(r000005b1);\n" : String).toByteArray.data.toList
theorem checked1362 : bytes1362=statementBytes 1458 (op1362.map lower) ∧ bytes1362.length=60 := by core033_kernel_decide
def op1363 : List WordIR.Op := [.band 1458 891]
def bytes1363 : Bytes := ("    let r000005b3: u32 = r000005b2 & r0000037b;\n" : String).toByteArray.data.toList
theorem checked1363 : bytes1363=statementBytes 1459 (op1363.map lower) ∧ bytes1363.length=48 := by core033_kernel_decide
def op1364 : List WordIR.Op := [.bnot 1395]
def bytes1364 : Bytes := ("    let r000005b4: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1364 : bytes1364=statementBytes 1460 (op1364.map lower) ∧ bytes1364.length=37 := by core033_kernel_decide
def op1365 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1365 : Bytes := ("    let r000005b5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1365 : bytes1365=statementBytes 1461 (op1365.map lower) ∧ bytes1365.length=41 := by core033_kernel_decide
def op1366 : List WordIR.Op := [.badd 1460 1461]
def bytes1366 : Bytes := ("    let r000005b6: u32 = r000005b4.wrapping_add(r000005b5);\n" : String).toByteArray.data.toList
theorem checked1366 : bytes1366=statementBytes 1462 (op1366.map lower) ∧ bytes1366.length=60 := by core033_kernel_decide
def op1367 : List WordIR.Op := [.bnot 1462]
def bytes1367 : Bytes := ("    let r000005b7: u32 = !r000005b6;\n" : String).toByteArray.data.toList
theorem checked1367 : bytes1367=statementBytes 1463 (op1367.map lower) ∧ bytes1367.length=37 := by core033_kernel_decide
def op1368 : List WordIR.Op := [.band 1463 803]
def bytes1368 : Bytes := ("    let r000005b8: u32 = r000005b7 & r00000323;\n" : String).toByteArray.data.toList
theorem checked1368 : bytes1368=statementBytes 1464 (op1368.map lower) ∧ bytes1368.length=48 := by core033_kernel_decide
def op1369 : List WordIR.Op := [.bxor 1459 1464]
def bytes1369 : Bytes := ("    let r000005b9: u32 = r000005b3 ^ r000005b8;\n" : String).toByteArray.data.toList
theorem checked1369 : bytes1369=statementBytes 1465 (op1369.map lower) ∧ bytes1369.length=48 := by core033_kernel_decide
def op1370 : List WordIR.Op := [.bnot 1395]
def bytes1370 : Bytes := ("    let r000005ba: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1370 : bytes1370=statementBytes 1466 (op1370.map lower) ∧ bytes1370.length=37 := by core033_kernel_decide
def op1371 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1371 : Bytes := ("    let r000005bb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1371 : bytes1371=statementBytes 1467 (op1371.map lower) ∧ bytes1371.length=41 := by core033_kernel_decide
def op1372 : List WordIR.Op := [.badd 1466 1467]
def bytes1372 : Bytes := ("    let r000005bc: u32 = r000005ba.wrapping_add(r000005bb);\n" : String).toByteArray.data.toList
theorem checked1372 : bytes1372=statementBytes 1468 (op1372.map lower) ∧ bytes1372.length=60 := by core033_kernel_decide
def op1373 : List WordIR.Op := [.band 1468 902]
def bytes1373 : Bytes := ("    let r000005bd: u32 = r000005bc & r00000386;\n" : String).toByteArray.data.toList
theorem checked1373 : bytes1373=statementBytes 1469 (op1373.map lower) ∧ bytes1373.length=48 := by core033_kernel_decide
def op1374 : List WordIR.Op := [.bnot 1395]
def bytes1374 : Bytes := ("    let r000005be: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1374 : bytes1374=statementBytes 1470 (op1374.map lower) ∧ bytes1374.length=37 := by core033_kernel_decide
def op1375 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1375 : Bytes := ("    let r000005bf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1375 : bytes1375=statementBytes 1471 (op1375.map lower) ∧ bytes1375.length=41 := by core033_kernel_decide
def op1376 : List WordIR.Op := [.badd 1470 1471]
def bytes1376 : Bytes := ("    let r000005c0: u32 = r000005be.wrapping_add(r000005bf);\n" : String).toByteArray.data.toList
theorem checked1376 : bytes1376=statementBytes 1472 (op1376.map lower) ∧ bytes1376.length=60 := by core033_kernel_decide
def op1377 : List WordIR.Op := [.bnot 1472]
def bytes1377 : Bytes := ("    let r000005c1: u32 = !r000005c0;\n" : String).toByteArray.data.toList
theorem checked1377 : bytes1377=statementBytes 1473 (op1377.map lower) ∧ bytes1377.length=37 := by core033_kernel_decide
def op1378 : List WordIR.Op := [.band 1473 814]
def bytes1378 : Bytes := ("    let r000005c2: u32 = r000005c1 & r0000032e;\n" : String).toByteArray.data.toList
theorem checked1378 : bytes1378=statementBytes 1474 (op1378.map lower) ∧ bytes1378.length=48 := by core033_kernel_decide
def op1379 : List WordIR.Op := [.bxor 1469 1474]
def bytes1379 : Bytes := ("    let r000005c3: u32 = r000005bd ^ r000005c2;\n" : String).toByteArray.data.toList
theorem checked1379 : bytes1379=statementBytes 1475 (op1379.map lower) ∧ bytes1379.length=48 := by core033_kernel_decide
def op1380 : List WordIR.Op := [.bnot 1395]
def bytes1380 : Bytes := ("    let r000005c4: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1380 : bytes1380=statementBytes 1476 (op1380.map lower) ∧ bytes1380.length=37 := by core033_kernel_decide
def op1381 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1381 : Bytes := ("    let r000005c5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1381 : bytes1381=statementBytes 1477 (op1381.map lower) ∧ bytes1381.length=41 := by core033_kernel_decide
def op1382 : List WordIR.Op := [.badd 1476 1477]
def bytes1382 : Bytes := ("    let r000005c6: u32 = r000005c4.wrapping_add(r000005c5);\n" : String).toByteArray.data.toList
theorem checked1382 : bytes1382=statementBytes 1478 (op1382.map lower) ∧ bytes1382.length=60 := by core033_kernel_decide
def op1383 : List WordIR.Op := [.band 1478 935]
def bytes1383 : Bytes := ("    let r000005c7: u32 = r000005c6 & r000003a7;\n" : String).toByteArray.data.toList
theorem checked1383 : bytes1383=statementBytes 1479 (op1383.map lower) ∧ bytes1383.length=48 := by core033_kernel_decide
def op1384 : List WordIR.Op := [.bnot 1395]
def bytes1384 : Bytes := ("    let r000005c8: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1384 : bytes1384=statementBytes 1480 (op1384.map lower) ∧ bytes1384.length=37 := by core033_kernel_decide
def op1385 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1385 : Bytes := ("    let r000005c9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1385 : bytes1385=statementBytes 1481 (op1385.map lower) ∧ bytes1385.length=41 := by core033_kernel_decide
def op1386 : List WordIR.Op := [.badd 1480 1481]
def bytes1386 : Bytes := ("    let r000005ca: u32 = r000005c8.wrapping_add(r000005c9);\n" : String).toByteArray.data.toList
theorem checked1386 : bytes1386=statementBytes 1482 (op1386.map lower) ∧ bytes1386.length=60 := by core033_kernel_decide
def op1387 : List WordIR.Op := [.bnot 1482]
def bytes1387 : Bytes := ("    let r000005cb: u32 = !r000005ca;\n" : String).toByteArray.data.toList
theorem checked1387 : bytes1387=statementBytes 1483 (op1387.map lower) ∧ bytes1387.length=37 := by core033_kernel_decide
def op1388 : List WordIR.Op := [.band 1483 913]
def bytes1388 : Bytes := ("    let r000005cc: u32 = r000005cb & r00000391;\n" : String).toByteArray.data.toList
theorem checked1388 : bytes1388=statementBytes 1484 (op1388.map lower) ∧ bytes1388.length=48 := by core033_kernel_decide
def op1389 : List WordIR.Op := [.bxor 1479 1484]
def bytes1389 : Bytes := ("    let r000005cd: u32 = r000005c7 ^ r000005cc;\n" : String).toByteArray.data.toList
theorem checked1389 : bytes1389=statementBytes 1485 (op1389.map lower) ∧ bytes1389.length=48 := by core033_kernel_decide
def op1390 : List WordIR.Op := [.bnot 1395]
def bytes1390 : Bytes := ("    let r000005ce: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1390 : bytes1390=statementBytes 1486 (op1390.map lower) ∧ bytes1390.length=37 := by core033_kernel_decide
def op1391 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1391 : Bytes := ("    let r000005cf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1391 : bytes1391=statementBytes 1487 (op1391.map lower) ∧ bytes1391.length=41 := by core033_kernel_decide
def op1392 : List WordIR.Op := [.badd 1486 1487]
def bytes1392 : Bytes := ("    let r000005d0: u32 = r000005ce.wrapping_add(r000005cf);\n" : String).toByteArray.data.toList
theorem checked1392 : bytes1392=statementBytes 1488 (op1392.map lower) ∧ bytes1392.length=60 := by core033_kernel_decide
def op1393 : List WordIR.Op := [.band 1488 946]
def bytes1393 : Bytes := ("    let r000005d1: u32 = r000005d0 & r000003b2;\n" : String).toByteArray.data.toList
theorem checked1393 : bytes1393=statementBytes 1489 (op1393.map lower) ∧ bytes1393.length=48 := by core033_kernel_decide
def op1394 : List WordIR.Op := [.bnot 1395]
def bytes1394 : Bytes := ("    let r000005d2: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1394 : bytes1394=statementBytes 1490 (op1394.map lower) ∧ bytes1394.length=37 := by core033_kernel_decide
def op1395 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1395 : Bytes := ("    let r000005d3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1395 : bytes1395=statementBytes 1491 (op1395.map lower) ∧ bytes1395.length=41 := by core033_kernel_decide
def op1396 : List WordIR.Op := [.badd 1490 1491]
def bytes1396 : Bytes := ("    let r000005d4: u32 = r000005d2.wrapping_add(r000005d3);\n" : String).toByteArray.data.toList
theorem checked1396 : bytes1396=statementBytes 1492 (op1396.map lower) ∧ bytes1396.length=60 := by core033_kernel_decide
def op1397 : List WordIR.Op := [.bnot 1492]
def bytes1397 : Bytes := ("    let r000005d5: u32 = !r000005d4;\n" : String).toByteArray.data.toList
theorem checked1397 : bytes1397=statementBytes 1493 (op1397.map lower) ∧ bytes1397.length=37 := by core033_kernel_decide
def op1398 : List WordIR.Op := [.band 1493 924]
def bytes1398 : Bytes := ("    let r000005d6: u32 = r000005d5 & r0000039c;\n" : String).toByteArray.data.toList
theorem checked1398 : bytes1398=statementBytes 1494 (op1398.map lower) ∧ bytes1398.length=48 := by core033_kernel_decide
def op1399 : List WordIR.Op := [.bxor 1489 1494]
def bytes1399 : Bytes := ("    let r000005d7: u32 = r000005d1 ^ r000005d6;\n" : String).toByteArray.data.toList
theorem checked1399 : bytes1399=statementBytes 1495 (op1399.map lower) ∧ bytes1399.length=48 := by core033_kernel_decide
def op1400 : List WordIR.Op := [.bnot 1395]
def bytes1400 : Bytes := ("    let r000005d8: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1400 : bytes1400=statementBytes 1496 (op1400.map lower) ∧ bytes1400.length=37 := by core033_kernel_decide
def op1401 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1401 : Bytes := ("    let r000005d9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1401 : bytes1401=statementBytes 1497 (op1401.map lower) ∧ bytes1401.length=41 := by core033_kernel_decide
def op1402 : List WordIR.Op := [.badd 1496 1497]
def bytes1402 : Bytes := ("    let r000005da: u32 = r000005d8.wrapping_add(r000005d9);\n" : String).toByteArray.data.toList
theorem checked1402 : bytes1402=statementBytes 1498 (op1402.map lower) ∧ bytes1402.length=60 := by core033_kernel_decide
def op1403 : List WordIR.Op := [.band 1498 968]
def bytes1403 : Bytes := ("    let r000005db: u32 = r000005da & r000003c8;\n" : String).toByteArray.data.toList
theorem checked1403 : bytes1403=statementBytes 1499 (op1403.map lower) ∧ bytes1403.length=48 := by core033_kernel_decide
def op1404 : List WordIR.Op := [.bnot 1395]
def bytes1404 : Bytes := ("    let r000005dc: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1404 : bytes1404=statementBytes 1500 (op1404.map lower) ∧ bytes1404.length=37 := by core033_kernel_decide
def op1405 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1405 : Bytes := ("    let r000005dd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1405 : bytes1405=statementBytes 1501 (op1405.map lower) ∧ bytes1405.length=41 := by core033_kernel_decide
def op1406 : List WordIR.Op := [.badd 1500 1501]
def bytes1406 : Bytes := ("    let r000005de: u32 = r000005dc.wrapping_add(r000005dd);\n" : String).toByteArray.data.toList
theorem checked1406 : bytes1406=statementBytes 1502 (op1406.map lower) ∧ bytes1406.length=60 := by core033_kernel_decide
def op1407 : List WordIR.Op := [.bnot 1502]
def bytes1407 : Bytes := ("    let r000005df: u32 = !r000005de;\n" : String).toByteArray.data.toList
theorem checked1407 : bytes1407=statementBytes 1503 (op1407.map lower) ∧ bytes1407.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1344,op1345,op1346,op1347,op1348,op1349,op1350,op1351,op1352,op1353,op1354,op1355,op1356,op1357,op1358,op1359,op1360,op1361,op1362,op1363,op1364,op1365,op1366,op1367,op1368,op1369,op1370,op1371,op1372,op1373,op1374,op1375,op1376,op1377,op1378,op1379,op1380,op1381,op1382,op1383,op1384,op1385,op1386,op1387,op1388,op1389,op1390,op1391,op1392,op1393,op1394,op1395,op1396,op1397,op1398,op1399,op1400,op1401,op1402,op1403,op1404,op1405,op1406,op1407]
def chunks : List Bytes := [bytes1344,bytes1345,bytes1346,bytes1347,bytes1348,bytes1349,bytes1350,bytes1351,bytes1352,bytes1353,bytes1354,bytes1355,bytes1356,bytes1357,bytes1358,bytes1359,bytes1360,bytes1361,bytes1362,bytes1363,bytes1364,bytes1365,bytes1366,bytes1367,bytes1368,bytes1369,bytes1370,bytes1371,bytes1372,bytes1373,bytes1374,bytes1375,bytes1376,bytes1377,bytes1378,bytes1379,bytes1380,bytes1381,bytes1382,bytes1383,bytes1384,bytes1385,bytes1386,bytes1387,bytes1388,bytes1389,bytes1390,bytes1391,bytes1392,bytes1393,bytes1394,bytes1395,bytes1396,bytes1397,bytes1398,bytes1399,bytes1400,bytes1401,bytes1402,bytes1403,bytes1404,bytes1405,bytes1406,bytes1407]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1440 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1344.1 (.cons _ _ _ _ _ checked1345.1 (.cons _ _ _ _ _ checked1346.1 (.cons _ _ _ _ _ checked1347.1 (.cons _ _ _ _ _ checked1348.1 (.cons _ _ _ _ _ checked1349.1 (.cons _ _ _ _ _ checked1350.1 (.cons _ _ _ _ _ checked1351.1 (.cons _ _ _ _ _ checked1352.1 (.cons _ _ _ _ _ checked1353.1 (.cons _ _ _ _ _ checked1354.1 (.cons _ _ _ _ _ checked1355.1 (.cons _ _ _ _ _ checked1356.1 (.cons _ _ _ _ _ checked1357.1 (.cons _ _ _ _ _ checked1358.1 (.cons _ _ _ _ _ checked1359.1 (.cons _ _ _ _ _ checked1360.1 (.cons _ _ _ _ _ checked1361.1 (.cons _ _ _ _ _ checked1362.1 (.cons _ _ _ _ _ checked1363.1 (.cons _ _ _ _ _ checked1364.1 (.cons _ _ _ _ _ checked1365.1 (.cons _ _ _ _ _ checked1366.1 (.cons _ _ _ _ _ checked1367.1 (.cons _ _ _ _ _ checked1368.1 (.cons _ _ _ _ _ checked1369.1 (.cons _ _ _ _ _ checked1370.1 (.cons _ _ _ _ _ checked1371.1 (.cons _ _ _ _ _ checked1372.1 (.cons _ _ _ _ _ checked1373.1 (.cons _ _ _ _ _ checked1374.1 (.cons _ _ _ _ _ checked1375.1 (.cons _ _ _ _ _ checked1376.1 (.cons _ _ _ _ _ checked1377.1 (.cons _ _ _ _ _ checked1378.1 (.cons _ _ _ _ _ checked1379.1 (.cons _ _ _ _ _ checked1380.1 (.cons _ _ _ _ _ checked1381.1 (.cons _ _ _ _ _ checked1382.1 (.cons _ _ _ _ _ checked1383.1 (.cons _ _ _ _ _ checked1384.1 (.cons _ _ _ _ _ checked1385.1 (.cons _ _ _ _ _ checked1386.1 (.cons _ _ _ _ _ checked1387.1 (.cons _ _ _ _ _ checked1388.1 (.cons _ _ _ _ _ checked1389.1 (.cons _ _ _ _ _ checked1390.1 (.cons _ _ _ _ _ checked1391.1 (.cons _ _ _ _ _ checked1392.1 (.cons _ _ _ _ _ checked1393.1 (.cons _ _ _ _ _ checked1394.1 (.cons _ _ _ _ _ checked1395.1 (.cons _ _ _ _ _ checked1396.1 (.cons _ _ _ _ _ checked1397.1 (.cons _ _ _ _ _ checked1398.1 (.cons _ _ _ _ _ checked1399.1 (.cons _ _ _ _ _ checked1400.1 (.cons _ _ _ _ _ checked1401.1 (.cons _ _ _ _ _ checked1402.1 (.cons _ _ _ _ _ checked1403.1 (.cons _ _ _ _ _ checked1404.1 (.cons _ _ _ _ _ checked1405.1 (.cons _ _ _ _ _ checked1406.1 (.cons _ _ _ _ _ checked1407.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1440 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2917 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1344.2,checked1345.2,checked1346.2,checked1347.2,checked1348.2,checked1349.2,checked1350.2,checked1351.2,checked1352.2,checked1353.2,checked1354.2,checked1355.2,checked1356.2,checked1357.2,checked1358.2,checked1359.2,checked1360.2,checked1361.2,checked1362.2,checked1363.2,checked1364.2,checked1365.2,checked1366.2,checked1367.2,checked1368.2,checked1369.2,checked1370.2,checked1371.2,checked1372.2,checked1373.2,checked1374.2,checked1375.2,checked1376.2,checked1377.2,checked1378.2,checked1379.2,checked1380.2,checked1381.2,checked1382.2,checked1383.2,checked1384.2,checked1385.2,checked1386.2,checked1387.2,checked1388.2,checked1389.2,checked1390.2,checked1391.2,checked1392.2,checked1393.2,checked1394.2,checked1395.2,checked1396.2,checked1397.2,checked1398.2,checked1399.2,checked1400.2,checked1401.2,checked1402.2,checked1403.2,checked1404.2,checked1405.2,checked1406.2,checked1407.2]
  decide
end ArtifactPairedPathRoundGroup21
