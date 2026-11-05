import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup21
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1344 : List WordIR.Op := [.bxor 1385 50]
def bytes1344 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000056b: u32 = r00000569 ^ r00000032;\n" : String)
theorem checked1344 : bytes1344=statementBytes 1387 (op1344.map lower) ∧ bytes1344.length=48 := by core033_kernel_decide
def op1345 : List WordIR.Op := [.badd 1385 50]
def bytes1345 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000056c: u32 = r00000569.wrapping_add(r00000032);\n" : String)
theorem checked1345 : bytes1345=statementBytes 1388 (op1345.map lower) ∧ bytes1345.length=60 := by core033_kernel_decide
def op1346 : List WordIR.Op := [.bnot 1388]
def bytes1346 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000056d: u32 = !r0000056c;\n" : String)
theorem checked1346 : bytes1346=statementBytes 1389 (op1346.map lower) ∧ bytes1346.length=37 := by core033_kernel_decide
def op1347 : List WordIR.Op := [.band 1387 1389]
def bytes1347 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000056e: u32 = r0000056b & r0000056d;\n" : String)
theorem checked1347 : bytes1347=statementBytes 1390 (op1347.map lower) ∧ bytes1347.length=48 := by core033_kernel_decide
def op1348 : List WordIR.Op := [.bxor 1386 1390]
def bytes1348 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000056f: u32 = r0000056a ^ r0000056e;\n" : String)
theorem checked1348 : bytes1348=statementBytes 1391 (op1348.map lower) ∧ bytes1348.length=48 := by core033_kernel_decide
def op1349 : List WordIR.Op := [.shr 1391 31]
def bytes1349 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000570: u32 = r0000056f >> 0x0000001f_u32;\n" : String)
theorem checked1349 : bytes1349=statementBytes 1392 (op1349.map lower) ∧ bytes1349.length=54 := by core033_kernel_decide
def op1350 : List WordIR.Op := [.bxor 1392 43]
def bytes1350 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000571: u32 = r00000570 ^ r0000002b;\n" : String)
theorem checked1350 : bytes1350=statementBytes 1393 (op1350.map lower) ∧ bytes1350.length=48 := by core033_kernel_decide
def op1351 : List WordIR.Op := [.shr 821 8]
def bytes1351 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000572: u32 = r00000335 >> 0x00000008_u32;\n" : String)
theorem checked1351 : bytes1351=statementBytes 1394 (op1351.map lower) ∧ bytes1351.length=54 := by core033_kernel_decide
def op1352 : List WordIR.Op := [.band 1394 50]
def bytes1352 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000573: u32 = r00000572 & r00000032;\n" : String)
theorem checked1352 : bytes1352=statementBytes 1395 (op1352.map lower) ∧ bytes1352.length=48 := by core033_kernel_decide
def op1353 : List WordIR.Op := [.bxor 1394 50]
def bytes1353 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000574: u32 = r00000572 ^ r00000032;\n" : String)
theorem checked1353 : bytes1353=statementBytes 1396 (op1353.map lower) ∧ bytes1353.length=48 := by core033_kernel_decide
def op1354 : List WordIR.Op := [.badd 1394 50]
def bytes1354 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000575: u32 = r00000572.wrapping_add(r00000032);\n" : String)
theorem checked1354 : bytes1354=statementBytes 1397 (op1354.map lower) ∧ bytes1354.length=60 := by core033_kernel_decide
def op1355 : List WordIR.Op := [.bnot 1397]
def bytes1355 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000576: u32 = !r00000575;\n" : String)
theorem checked1355 : bytes1355=statementBytes 1398 (op1355.map lower) ∧ bytes1355.length=37 := by core033_kernel_decide
def op1356 : List WordIR.Op := [.band 1396 1398]
def bytes1356 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000577: u32 = r00000574 & r00000576;\n" : String)
theorem checked1356 : bytes1356=statementBytes 1399 (op1356.map lower) ∧ bytes1356.length=48 := by core033_kernel_decide
def op1357 : List WordIR.Op := [.bxor 1395 1399]
def bytes1357 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000578: u32 = r00000573 ^ r00000577;\n" : String)
theorem checked1357 : bytes1357=statementBytes 1400 (op1357.map lower) ∧ bytes1357.length=48 := by core033_kernel_decide
def op1358 : List WordIR.Op := [.shr 1400 31]
def bytes1358 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000579: u32 = r00000578 >> 0x0000001f_u32;\n" : String)
theorem checked1358 : bytes1358=statementBytes 1401 (op1358.map lower) ∧ bytes1358.length=54 := by core033_kernel_decide
def op1359 : List WordIR.Op := [.bxor 1401 43]
def bytes1359 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000057a: u32 = r00000579 ^ r0000002b;\n" : String)
theorem checked1359 : bytes1359=statementBytes 1402 (op1359.map lower) ∧ bytes1359.length=48 := by core033_kernel_decide
def op1360 : List WordIR.Op := [.shr 824 8]
def bytes1360 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000057b: u32 = r00000338 >> 0x00000008_u32;\n" : String)
theorem checked1360 : bytes1360=statementBytes 1403 (op1360.map lower) ∧ bytes1360.length=54 := by core033_kernel_decide
def op1361 : List WordIR.Op := [.band 1403 50]
def bytes1361 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000057c: u32 = r0000057b & r00000032;\n" : String)
theorem checked1361 : bytes1361=statementBytes 1404 (op1361.map lower) ∧ bytes1361.length=48 := by core033_kernel_decide
def op1362 : List WordIR.Op := [.bxor 1403 50]
def bytes1362 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000057d: u32 = r0000057b ^ r00000032;\n" : String)
theorem checked1362 : bytes1362=statementBytes 1405 (op1362.map lower) ∧ bytes1362.length=48 := by core033_kernel_decide
def op1363 : List WordIR.Op := [.badd 1403 50]
def bytes1363 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000057e: u32 = r0000057b.wrapping_add(r00000032);\n" : String)
theorem checked1363 : bytes1363=statementBytes 1406 (op1363.map lower) ∧ bytes1363.length=60 := by core033_kernel_decide
def op1364 : List WordIR.Op := [.bnot 1406]
def bytes1364 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000057f: u32 = !r0000057e;\n" : String)
theorem checked1364 : bytes1364=statementBytes 1407 (op1364.map lower) ∧ bytes1364.length=37 := by core033_kernel_decide
def op1365 : List WordIR.Op := [.band 1405 1407]
def bytes1365 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000580: u32 = r0000057d & r0000057f;\n" : String)
theorem checked1365 : bytes1365=statementBytes 1408 (op1365.map lower) ∧ bytes1365.length=48 := by core033_kernel_decide
def op1366 : List WordIR.Op := [.bxor 1404 1408]
def bytes1366 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000581: u32 = r0000057c ^ r00000580;\n" : String)
theorem checked1366 : bytes1366=statementBytes 1409 (op1366.map lower) ∧ bytes1366.length=48 := by core033_kernel_decide
def op1367 : List WordIR.Op := [.shr 1409 31]
def bytes1367 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000582: u32 = r00000581 >> 0x0000001f_u32;\n" : String)
theorem checked1367 : bytes1367=statementBytes 1410 (op1367.map lower) ∧ bytes1367.length=54 := by core033_kernel_decide
def op1368 : List WordIR.Op := [.bxor 1410 43]
def bytes1368 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000583: u32 = r00000582 ^ r0000002b;\n" : String)
theorem checked1368 : bytes1368=statementBytes 1411 (op1368.map lower) ∧ bytes1368.length=48 := by core033_kernel_decide
def op1369 : List WordIR.Op := [.shr 828 8]
def bytes1369 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000584: u32 = r0000033c >> 0x00000008_u32;\n" : String)
theorem checked1369 : bytes1369=statementBytes 1412 (op1369.map lower) ∧ bytes1369.length=54 := by core033_kernel_decide
def op1370 : List WordIR.Op := [.band 1412 50]
def bytes1370 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000585: u32 = r00000584 & r00000032;\n" : String)
theorem checked1370 : bytes1370=statementBytes 1413 (op1370.map lower) ∧ bytes1370.length=48 := by core033_kernel_decide
def op1371 : List WordIR.Op := [.bxor 1412 50]
def bytes1371 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000586: u32 = r00000584 ^ r00000032;\n" : String)
theorem checked1371 : bytes1371=statementBytes 1414 (op1371.map lower) ∧ bytes1371.length=48 := by core033_kernel_decide
def op1372 : List WordIR.Op := [.badd 1412 50]
def bytes1372 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000587: u32 = r00000584.wrapping_add(r00000032);\n" : String)
theorem checked1372 : bytes1372=statementBytes 1415 (op1372.map lower) ∧ bytes1372.length=60 := by core033_kernel_decide
def op1373 : List WordIR.Op := [.bnot 1415]
def bytes1373 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000588: u32 = !r00000587;\n" : String)
theorem checked1373 : bytes1373=statementBytes 1416 (op1373.map lower) ∧ bytes1373.length=37 := by core033_kernel_decide
def op1374 : List WordIR.Op := [.band 1414 1416]
def bytes1374 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000589: u32 = r00000586 & r00000588;\n" : String)
theorem checked1374 : bytes1374=statementBytes 1417 (op1374.map lower) ∧ bytes1374.length=48 := by core033_kernel_decide
def op1375 : List WordIR.Op := [.bxor 1413 1417]
def bytes1375 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000058a: u32 = r00000585 ^ r00000589;\n" : String)
theorem checked1375 : bytes1375=statementBytes 1418 (op1375.map lower) ∧ bytes1375.length=48 := by core033_kernel_decide
def op1376 : List WordIR.Op := [.shr 1418 31]
def bytes1376 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000058b: u32 = r0000058a >> 0x0000001f_u32;\n" : String)
theorem checked1376 : bytes1376=statementBytes 1419 (op1376.map lower) ∧ bytes1376.length=54 := by core033_kernel_decide
def op1377 : List WordIR.Op := [.bxor 1419 43]
def bytes1377 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000058c: u32 = r0000058b ^ r0000002b;\n" : String)
theorem checked1377 : bytes1377=statementBytes 1420 (op1377.map lower) ∧ bytes1377.length=48 := by core033_kernel_decide
def op1378 : List WordIR.Op := [.shr 831 8]
def bytes1378 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000058d: u32 = r0000033f >> 0x00000008_u32;\n" : String)
theorem checked1378 : bytes1378=statementBytes 1421 (op1378.map lower) ∧ bytes1378.length=54 := by core033_kernel_decide
def op1379 : List WordIR.Op := [.band 1421 50]
def bytes1379 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000058e: u32 = r0000058d & r00000032;\n" : String)
theorem checked1379 : bytes1379=statementBytes 1422 (op1379.map lower) ∧ bytes1379.length=48 := by core033_kernel_decide
def op1380 : List WordIR.Op := [.bxor 1421 50]
def bytes1380 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000058f: u32 = r0000058d ^ r00000032;\n" : String)
theorem checked1380 : bytes1380=statementBytes 1423 (op1380.map lower) ∧ bytes1380.length=48 := by core033_kernel_decide
def op1381 : List WordIR.Op := [.badd 1421 50]
def bytes1381 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000590: u32 = r0000058d.wrapping_add(r00000032);\n" : String)
theorem checked1381 : bytes1381=statementBytes 1424 (op1381.map lower) ∧ bytes1381.length=60 := by core033_kernel_decide
def op1382 : List WordIR.Op := [.bnot 1424]
def bytes1382 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000591: u32 = !r00000590;\n" : String)
theorem checked1382 : bytes1382=statementBytes 1425 (op1382.map lower) ∧ bytes1382.length=37 := by core033_kernel_decide
def op1383 : List WordIR.Op := [.band 1423 1425]
def bytes1383 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000592: u32 = r0000058f & r00000591;\n" : String)
theorem checked1383 : bytes1383=statementBytes 1426 (op1383.map lower) ∧ bytes1383.length=48 := by core033_kernel_decide
def op1384 : List WordIR.Op := [.bxor 1422 1426]
def bytes1384 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000593: u32 = r0000058e ^ r00000592;\n" : String)
theorem checked1384 : bytes1384=statementBytes 1427 (op1384.map lower) ∧ bytes1384.length=48 := by core033_kernel_decide
def op1385 : List WordIR.Op := [.shr 1427 31]
def bytes1385 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000594: u32 = r00000593 >> 0x0000001f_u32;\n" : String)
theorem checked1385 : bytes1385=statementBytes 1428 (op1385.map lower) ∧ bytes1385.length=54 := by core033_kernel_decide
def op1386 : List WordIR.Op := [.bxor 1428 43]
def bytes1386 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000595: u32 = r00000594 ^ r0000002b;\n" : String)
theorem checked1386 : bytes1386=statementBytes 1429 (op1386.map lower) ∧ bytes1386.length=48 := by core033_kernel_decide
def op1387 : List WordIR.Op := [.shr 833 8]
def bytes1387 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000596: u32 = r00000341 >> 0x00000008_u32;\n" : String)
theorem checked1387 : bytes1387=statementBytes 1430 (op1387.map lower) ∧ bytes1387.length=54 := by core033_kernel_decide
def op1388 : List WordIR.Op := [.band 1430 50]
def bytes1388 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000597: u32 = r00000596 & r00000032;\n" : String)
theorem checked1388 : bytes1388=statementBytes 1431 (op1388.map lower) ∧ bytes1388.length=48 := by core033_kernel_decide
def op1389 : List WordIR.Op := [.bxor 1430 50]
def bytes1389 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000598: u32 = r00000596 ^ r00000032;\n" : String)
theorem checked1389 : bytes1389=statementBytes 1432 (op1389.map lower) ∧ bytes1389.length=48 := by core033_kernel_decide
def op1390 : List WordIR.Op := [.badd 1430 50]
def bytes1390 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000599: u32 = r00000596.wrapping_add(r00000032);\n" : String)
theorem checked1390 : bytes1390=statementBytes 1433 (op1390.map lower) ∧ bytes1390.length=60 := by core033_kernel_decide
def op1391 : List WordIR.Op := [.bnot 1433]
def bytes1391 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000059a: u32 = !r00000599;\n" : String)
theorem checked1391 : bytes1391=statementBytes 1434 (op1391.map lower) ∧ bytes1391.length=37 := by core033_kernel_decide
def op1392 : List WordIR.Op := [.band 1432 1434]
def bytes1392 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000059b: u32 = r00000598 & r0000059a;\n" : String)
theorem checked1392 : bytes1392=statementBytes 1435 (op1392.map lower) ∧ bytes1392.length=48 := by core033_kernel_decide
def op1393 : List WordIR.Op := [.bxor 1431 1435]
def bytes1393 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000059c: u32 = r00000597 ^ r0000059b;\n" : String)
theorem checked1393 : bytes1393=statementBytes 1436 (op1393.map lower) ∧ bytes1393.length=48 := by core033_kernel_decide
def op1394 : List WordIR.Op := [.shr 1436 31]
def bytes1394 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000059d: u32 = r0000059c >> 0x0000001f_u32;\n" : String)
theorem checked1394 : bytes1394=statementBytes 1437 (op1394.map lower) ∧ bytes1394.length=54 := by core033_kernel_decide
def op1395 : List WordIR.Op := [.bxor 1437 43]
def bytes1395 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000059e: u32 = r0000059d ^ r0000002b;\n" : String)
theorem checked1395 : bytes1395=statementBytes 1438 (op1395.map lower) ∧ bytes1395.length=48 := by core033_kernel_decide
def op1396 : List WordIR.Op := [.shr 835 8]
def bytes1396 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000059f: u32 = r00000343 >> 0x00000008_u32;\n" : String)
theorem checked1396 : bytes1396=statementBytes 1439 (op1396.map lower) ∧ bytes1396.length=54 := by core033_kernel_decide
def op1397 : List WordIR.Op := [.band 1439 50]
def bytes1397 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a0: u32 = r0000059f & r00000032;\n" : String)
theorem checked1397 : bytes1397=statementBytes 1440 (op1397.map lower) ∧ bytes1397.length=48 := by core033_kernel_decide
def op1398 : List WordIR.Op := [.bxor 1439 50]
def bytes1398 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a1: u32 = r0000059f ^ r00000032;\n" : String)
theorem checked1398 : bytes1398=statementBytes 1441 (op1398.map lower) ∧ bytes1398.length=48 := by core033_kernel_decide
def op1399 : List WordIR.Op := [.badd 1439 50]
def bytes1399 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a2: u32 = r0000059f.wrapping_add(r00000032);\n" : String)
theorem checked1399 : bytes1399=statementBytes 1442 (op1399.map lower) ∧ bytes1399.length=60 := by core033_kernel_decide
def op1400 : List WordIR.Op := [.bnot 1442]
def bytes1400 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a3: u32 = !r000005a2;\n" : String)
theorem checked1400 : bytes1400=statementBytes 1443 (op1400.map lower) ∧ bytes1400.length=37 := by core033_kernel_decide
def op1401 : List WordIR.Op := [.band 1441 1443]
def bytes1401 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a4: u32 = r000005a1 & r000005a3;\n" : String)
theorem checked1401 : bytes1401=statementBytes 1444 (op1401.map lower) ∧ bytes1401.length=48 := by core033_kernel_decide
def op1402 : List WordIR.Op := [.bxor 1440 1444]
def bytes1402 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a5: u32 = r000005a0 ^ r000005a4;\n" : String)
theorem checked1402 : bytes1402=statementBytes 1445 (op1402.map lower) ∧ bytes1402.length=48 := by core033_kernel_decide
def op1403 : List WordIR.Op := [.shr 1445 31]
def bytes1403 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a6: u32 = r000005a5 >> 0x0000001f_u32;\n" : String)
theorem checked1403 : bytes1403=statementBytes 1446 (op1403.map lower) ∧ bytes1403.length=54 := by core033_kernel_decide
def op1404 : List WordIR.Op := [.bxor 1446 43]
def bytes1404 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a7: u32 = r000005a6 ^ r0000002b;\n" : String)
theorem checked1404 : bytes1404=statementBytes 1447 (op1404.map lower) ∧ bytes1404.length=48 := by core033_kernel_decide
def op1405 : List WordIR.Op := [.shr 837 8]
def bytes1405 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a8: u32 = r00000345 >> 0x00000008_u32;\n" : String)
theorem checked1405 : bytes1405=statementBytes 1448 (op1405.map lower) ∧ bytes1405.length=54 := by core033_kernel_decide
def op1406 : List WordIR.Op := [.band 1448 50]
def bytes1406 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005a9: u32 = r000005a8 & r00000032;\n" : String)
theorem checked1406 : bytes1406=statementBytes 1449 (op1406.map lower) ∧ bytes1406.length=48 := by core033_kernel_decide
def op1407 : List WordIR.Op := [.bxor 1448 50]
def bytes1407 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000005aa: u32 = r000005a8 ^ r00000032;\n" : String)
theorem checked1407 : bytes1407=statementBytes 1450 (op1407.map lower) ∧ bytes1407.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1344,op1345,op1346,op1347,op1348,op1349,op1350,op1351,op1352,op1353,op1354,op1355,op1356,op1357,op1358,op1359,op1360,op1361,op1362,op1363,op1364,op1365,op1366,op1367,op1368,op1369,op1370,op1371,op1372,op1373,op1374,op1375,op1376,op1377,op1378,op1379,op1380,op1381,op1382,op1383,op1384,op1385,op1386,op1387,op1388,op1389,op1390,op1391,op1392,op1393,op1394,op1395,op1396,op1397,op1398,op1399,op1400,op1401,op1402,op1403,op1404,op1405,op1406,op1407]
def chunks : List Bytes := [bytes1344,bytes1345,bytes1346,bytes1347,bytes1348,bytes1349,bytes1350,bytes1351,bytes1352,bytes1353,bytes1354,bytes1355,bytes1356,bytes1357,bytes1358,bytes1359,bytes1360,bytes1361,bytes1362,bytes1363,bytes1364,bytes1365,bytes1366,bytes1367,bytes1368,bytes1369,bytes1370,bytes1371,bytes1372,bytes1373,bytes1374,bytes1375,bytes1376,bytes1377,bytes1378,bytes1379,bytes1380,bytes1381,bytes1382,bytes1383,bytes1384,bytes1385,bytes1386,bytes1387,bytes1388,bytes1389,bytes1390,bytes1391,bytes1392,bytes1393,bytes1394,bytes1395,bytes1396,bytes1397,bytes1398,bytes1399,bytes1400,bytes1401,bytes1402,bytes1403,bytes1404,bytes1405,bytes1406,bytes1407]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1387 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1344.1 (.cons _ _ _ _ _ checked1345.1 (.cons _ _ _ _ _ checked1346.1 (.cons _ _ _ _ _ checked1347.1 (.cons _ _ _ _ _ checked1348.1 (.cons _ _ _ _ _ checked1349.1 (.cons _ _ _ _ _ checked1350.1 (.cons _ _ _ _ _ checked1351.1 (.cons _ _ _ _ _ checked1352.1 (.cons _ _ _ _ _ checked1353.1 (.cons _ _ _ _ _ checked1354.1 (.cons _ _ _ _ _ checked1355.1 (.cons _ _ _ _ _ checked1356.1 (.cons _ _ _ _ _ checked1357.1 (.cons _ _ _ _ _ checked1358.1 (.cons _ _ _ _ _ checked1359.1 (.cons _ _ _ _ _ checked1360.1 (.cons _ _ _ _ _ checked1361.1 (.cons _ _ _ _ _ checked1362.1 (.cons _ _ _ _ _ checked1363.1 (.cons _ _ _ _ _ checked1364.1 (.cons _ _ _ _ _ checked1365.1 (.cons _ _ _ _ _ checked1366.1 (.cons _ _ _ _ _ checked1367.1 (.cons _ _ _ _ _ checked1368.1 (.cons _ _ _ _ _ checked1369.1 (.cons _ _ _ _ _ checked1370.1 (.cons _ _ _ _ _ checked1371.1 (.cons _ _ _ _ _ checked1372.1 (.cons _ _ _ _ _ checked1373.1 (.cons _ _ _ _ _ checked1374.1 (.cons _ _ _ _ _ checked1375.1 (.cons _ _ _ _ _ checked1376.1 (.cons _ _ _ _ _ checked1377.1 (.cons _ _ _ _ _ checked1378.1 (.cons _ _ _ _ _ checked1379.1 (.cons _ _ _ _ _ checked1380.1 (.cons _ _ _ _ _ checked1381.1 (.cons _ _ _ _ _ checked1382.1 (.cons _ _ _ _ _ checked1383.1 (.cons _ _ _ _ _ checked1384.1 (.cons _ _ _ _ _ checked1385.1 (.cons _ _ _ _ _ checked1386.1 (.cons _ _ _ _ _ checked1387.1 (.cons _ _ _ _ _ checked1388.1 (.cons _ _ _ _ _ checked1389.1 (.cons _ _ _ _ _ checked1390.1 (.cons _ _ _ _ _ checked1391.1 (.cons _ _ _ _ _ checked1392.1 (.cons _ _ _ _ _ checked1393.1 (.cons _ _ _ _ _ checked1394.1 (.cons _ _ _ _ _ checked1395.1 (.cons _ _ _ _ _ checked1396.1 (.cons _ _ _ _ _ checked1397.1 (.cons _ _ _ _ _ checked1398.1 (.cons _ _ _ _ _ checked1399.1 (.cons _ _ _ _ _ checked1400.1 (.cons _ _ _ _ _ checked1401.1 (.cons _ _ _ _ _ checked1402.1 (.cons _ _ _ _ _ checked1403.1 (.cons _ _ _ _ _ checked1404.1 (.cons _ _ _ _ _ checked1405.1 (.cons _ _ _ _ _ checked1406.1 (.cons _ _ _ _ _ checked1407.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1387 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3163 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1344.2,checked1345.2,checked1346.2,checked1347.2,checked1348.2,checked1349.2,checked1350.2,checked1351.2,checked1352.2,checked1353.2,checked1354.2,checked1355.2,checked1356.2,checked1357.2,checked1358.2,checked1359.2,checked1360.2,checked1361.2,checked1362.2,checked1363.2,checked1364.2,checked1365.2,checked1366.2,checked1367.2,checked1368.2,checked1369.2,checked1370.2,checked1371.2,checked1372.2,checked1373.2,checked1374.2,checked1375.2,checked1376.2,checked1377.2,checked1378.2,checked1379.2,checked1380.2,checked1381.2,checked1382.2,checked1383.2,checked1384.2,checked1385.2,checked1386.2,checked1387.2,checked1388.2,checked1389.2,checked1390.2,checked1391.2,checked1392.2,checked1393.2,checked1394.2,checked1395.2,checked1396.2,checked1397.2,checked1398.2,checked1399.2,checked1400.2,checked1401.2,checked1402.2,checked1403.2,checked1404.2,checked1405.2,checked1406.2,checked1407.2]
  decide
end ArtifactSharedFrameGroup21
