import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1344 : List WordIR.Op := [.bxor 1366 1367]
def bytes1344 : Bytes := ("    let r00000558: u32 = r00000556 ^ r00000557;\n" : String).toByteArray.data.toList
theorem checked1344 : bytes1344=statementBytes 1368 (op1344.map lower) ∧ bytes1344.length=48 := by core033_kernel_decide
def op1345 : List WordIR.Op := [.band 1348 1321]
def bytes1345 : Bytes := ("    let r00000559: u32 = r00000544 & r00000529;\n" : String).toByteArray.data.toList
theorem checked1345 : bytes1345=statementBytes 1369 (op1345.map lower) ∧ bytes1345.length=48 := by core033_kernel_decide
def op1346 : List WordIR.Op := [.band 1348 1294]
def bytes1346 : Bytes := ("    let r0000055a: u32 = r00000544 & r0000050e;\n" : String).toByteArray.data.toList
theorem checked1346 : bytes1346=statementBytes 1370 (op1346.map lower) ∧ bytes1346.length=48 := by core033_kernel_decide
def op1347 : List WordIR.Op := [.bxor 1369 1370]
def bytes1347 : Bytes := ("    let r0000055b: u32 = r00000559 ^ r0000055a;\n" : String).toByteArray.data.toList
theorem checked1347 : bytes1347=statementBytes 1371 (op1347.map lower) ∧ bytes1347.length=48 := by core033_kernel_decide
def op1348 : List WordIR.Op := [.band 1321 1294]
def bytes1348 : Bytes := ("    let r0000055c: u32 = r00000529 & r0000050e;\n" : String).toByteArray.data.toList
theorem checked1348 : bytes1348=statementBytes 1372 (op1348.map lower) ∧ bytes1348.length=48 := by core033_kernel_decide
def op1349 : List WordIR.Op := [.bxor 1371 1372]
def bytes1349 : Bytes := ("    let r0000055d: u32 = r0000055b ^ r0000055c;\n" : String).toByteArray.data.toList
theorem checked1349 : bytes1349=statementBytes 1373 (op1349.map lower) ∧ bytes1349.length=48 := by core033_kernel_decide
def op1350 : List WordIR.Op := [.badd 1368 1373]
def bytes1350 : Bytes := ("    let r0000055e: u32 = r00000558.wrapping_add(r0000055d);\n" : String).toByteArray.data.toList
theorem checked1350 : bytes1350=statementBytes 1374 (op1350.map lower) ∧ bytes1350.length=60 := by core033_kernel_decide
def op1351 : List WordIR.Op := [.badd 1363 1374]
def bytes1351 : Bytes := ("    let r0000055f: u32 = r00000553.wrapping_add(r0000055e);\n" : String).toByteArray.data.toList
theorem checked1351 : bytes1351=statementBytes 1375 (op1351.map lower) ∧ bytes1351.length=60 := by core033_kernel_decide
def op1352 : List WordIR.Op := [.badd 1267 1363]
def bytes1352 : Bytes := ("    let r00000560: u32 = r000004f3.wrapping_add(r00000553);\n" : String).toByteArray.data.toList
theorem checked1352 : bytes1352=statementBytes 1376 (op1352.map lower) ∧ bytes1352.length=60 := by core033_kernel_decide
def op1353 : List WordIR.Op := [.rotr 1376 6]
def bytes1353 : Bytes := ("    let r00000561: u32 = r00000560.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1353 : bytes1353=statementBytes 1377 (op1353.map lower) ∧ bytes1353.length=65 := by core033_kernel_decide
def op1354 : List WordIR.Op := [.rotr 1376 11]
def bytes1354 : Bytes := ("    let r00000562: u32 = r00000560.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1354 : bytes1354=statementBytes 1378 (op1354.map lower) ∧ bytes1354.length=65 := by core033_kernel_decide
def op1355 : List WordIR.Op := [.bxor 1377 1378]
def bytes1355 : Bytes := ("    let r00000563: u32 = r00000561 ^ r00000562;\n" : String).toByteArray.data.toList
theorem checked1355 : bytes1355=statementBytes 1379 (op1355.map lower) ∧ bytes1355.length=48 := by core033_kernel_decide
def op1356 : List WordIR.Op := [.rotr 1376 25]
def bytes1356 : Bytes := ("    let r00000564: u32 = r00000560.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1356 : bytes1356=statementBytes 1380 (op1356.map lower) ∧ bytes1356.length=65 := by core033_kernel_decide
def op1357 : List WordIR.Op := [.bxor 1379 1380]
def bytes1357 : Bytes := ("    let r00000565: u32 = r00000563 ^ r00000564;\n" : String).toByteArray.data.toList
theorem checked1357 : bytes1357=statementBytes 1381 (op1357.map lower) ∧ bytes1357.length=48 := by core033_kernel_decide
def op1358 : List WordIR.Op := [.badd 1295 1381]
def bytes1358 : Bytes := ("    let r00000566: u32 = r0000050f.wrapping_add(r00000565);\n" : String).toByteArray.data.toList
theorem checked1358 : bytes1358=statementBytes 1382 (op1358.map lower) ∧ bytes1358.length=60 := by core033_kernel_decide
def op1359 : List WordIR.Op := [.band 1376 1349]
def bytes1359 : Bytes := ("    let r00000567: u32 = r00000560 & r00000545;\n" : String).toByteArray.data.toList
theorem checked1359 : bytes1359=statementBytes 1383 (op1359.map lower) ∧ bytes1359.length=48 := by core033_kernel_decide
def op1360 : List WordIR.Op := [.bnot 1376]
def bytes1360 : Bytes := ("    let r00000568: u32 = !r00000560;\n" : String).toByteArray.data.toList
theorem checked1360 : bytes1360=statementBytes 1384 (op1360.map lower) ∧ bytes1360.length=37 := by core033_kernel_decide
def op1361 : List WordIR.Op := [.band 1384 1322]
def bytes1361 : Bytes := ("    let r00000569: u32 = r00000568 & r0000052a;\n" : String).toByteArray.data.toList
theorem checked1361 : bytes1361=statementBytes 1385 (op1361.map lower) ∧ bytes1361.length=48 := by core033_kernel_decide
def op1362 : List WordIR.Op := [.bxor 1383 1385]
def bytes1362 : Bytes := ("    let r0000056a: u32 = r00000567 ^ r00000569;\n" : String).toByteArray.data.toList
theorem checked1362 : bytes1362=statementBytes 1386 (op1362.map lower) ∧ bytes1362.length=48 := by core033_kernel_decide
def op1363 : List WordIR.Op := [.badd 1382 1386]
def bytes1363 : Bytes := ("    let r0000056b: u32 = r00000566.wrapping_add(r0000056a);\n" : String).toByteArray.data.toList
theorem checked1363 : bytes1363=statementBytes 1387 (op1363.map lower) ∧ bytes1363.length=60 := by core033_kernel_decide
def op1364 : List WordIR.Op := [.literal (BitVec.ofNat 32 3210313671)]
def bytes1364 : Bytes := ("    let r0000056c: u32 = 0xbf597fc7_u32;\n" : String).toByteArray.data.toList
theorem checked1364 : bytes1364=statementBytes 1388 (op1364.map lower) ∧ bytes1364.length=41 := by core033_kernel_decide
def op1365 : List WordIR.Op := [.badd 1387 1388]
def bytes1365 : Bytes := ("    let r0000056d: u32 = r0000056b.wrapping_add(r0000056c);\n" : String).toByteArray.data.toList
theorem checked1365 : bytes1365=statementBytes 1389 (op1365.map lower) ∧ bytes1365.length=60 := by core033_kernel_decide
def op1366 : List WordIR.Op := [.badd 1389 179]
def bytes1366 : Bytes := ("    let r0000056e: u32 = r0000056d.wrapping_add(r000000b3);\n" : String).toByteArray.data.toList
theorem checked1366 : bytes1366=statementBytes 1390 (op1366.map lower) ∧ bytes1366.length=60 := by core033_kernel_decide
def op1367 : List WordIR.Op := [.rotr 1375 2]
def bytes1367 : Bytes := ("    let r0000056f: u32 = r0000055f.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1367 : bytes1367=statementBytes 1391 (op1367.map lower) ∧ bytes1367.length=65 := by core033_kernel_decide
def op1368 : List WordIR.Op := [.rotr 1375 13]
def bytes1368 : Bytes := ("    let r00000570: u32 = r0000055f.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1368 : bytes1368=statementBytes 1392 (op1368.map lower) ∧ bytes1368.length=65 := by core033_kernel_decide
def op1369 : List WordIR.Op := [.bxor 1391 1392]
def bytes1369 : Bytes := ("    let r00000571: u32 = r0000056f ^ r00000570;\n" : String).toByteArray.data.toList
theorem checked1369 : bytes1369=statementBytes 1393 (op1369.map lower) ∧ bytes1369.length=48 := by core033_kernel_decide
def op1370 : List WordIR.Op := [.rotr 1375 22]
def bytes1370 : Bytes := ("    let r00000572: u32 = r0000055f.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1370 : bytes1370=statementBytes 1394 (op1370.map lower) ∧ bytes1370.length=65 := by core033_kernel_decide
def op1371 : List WordIR.Op := [.bxor 1393 1394]
def bytes1371 : Bytes := ("    let r00000573: u32 = r00000571 ^ r00000572;\n" : String).toByteArray.data.toList
theorem checked1371 : bytes1371=statementBytes 1395 (op1371.map lower) ∧ bytes1371.length=48 := by core033_kernel_decide
def op1372 : List WordIR.Op := [.band 1375 1348]
def bytes1372 : Bytes := ("    let r00000574: u32 = r0000055f & r00000544;\n" : String).toByteArray.data.toList
theorem checked1372 : bytes1372=statementBytes 1396 (op1372.map lower) ∧ bytes1372.length=48 := by core033_kernel_decide
def op1373 : List WordIR.Op := [.band 1375 1321]
def bytes1373 : Bytes := ("    let r00000575: u32 = r0000055f & r00000529;\n" : String).toByteArray.data.toList
theorem checked1373 : bytes1373=statementBytes 1397 (op1373.map lower) ∧ bytes1373.length=48 := by core033_kernel_decide
def op1374 : List WordIR.Op := [.bxor 1396 1397]
def bytes1374 : Bytes := ("    let r00000576: u32 = r00000574 ^ r00000575;\n" : String).toByteArray.data.toList
theorem checked1374 : bytes1374=statementBytes 1398 (op1374.map lower) ∧ bytes1374.length=48 := by core033_kernel_decide
def op1375 : List WordIR.Op := [.band 1348 1321]
def bytes1375 : Bytes := ("    let r00000577: u32 = r00000544 & r00000529;\n" : String).toByteArray.data.toList
theorem checked1375 : bytes1375=statementBytes 1399 (op1375.map lower) ∧ bytes1375.length=48 := by core033_kernel_decide
def op1376 : List WordIR.Op := [.bxor 1398 1399]
def bytes1376 : Bytes := ("    let r00000578: u32 = r00000576 ^ r00000577;\n" : String).toByteArray.data.toList
theorem checked1376 : bytes1376=statementBytes 1400 (op1376.map lower) ∧ bytes1376.length=48 := by core033_kernel_decide
def op1377 : List WordIR.Op := [.badd 1395 1400]
def bytes1377 : Bytes := ("    let r00000579: u32 = r00000573.wrapping_add(r00000578);\n" : String).toByteArray.data.toList
theorem checked1377 : bytes1377=statementBytes 1401 (op1377.map lower) ∧ bytes1377.length=60 := by core033_kernel_decide
def op1378 : List WordIR.Op := [.badd 1390 1401]
def bytes1378 : Bytes := ("    let r0000057a: u32 = r0000056e.wrapping_add(r00000579);\n" : String).toByteArray.data.toList
theorem checked1378 : bytes1378=statementBytes 1402 (op1378.map lower) ∧ bytes1378.length=60 := by core033_kernel_decide
def op1379 : List WordIR.Op := [.badd 1294 1390]
def bytes1379 : Bytes := ("    let r0000057b: u32 = r0000050e.wrapping_add(r0000056e);\n" : String).toByteArray.data.toList
theorem checked1379 : bytes1379=statementBytes 1403 (op1379.map lower) ∧ bytes1379.length=60 := by core033_kernel_decide
def op1380 : List WordIR.Op := [.rotr 1403 6]
def bytes1380 : Bytes := ("    let r0000057c: u32 = r0000057b.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1380 : bytes1380=statementBytes 1404 (op1380.map lower) ∧ bytes1380.length=65 := by core033_kernel_decide
def op1381 : List WordIR.Op := [.rotr 1403 11]
def bytes1381 : Bytes := ("    let r0000057d: u32 = r0000057b.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1381 : bytes1381=statementBytes 1405 (op1381.map lower) ∧ bytes1381.length=65 := by core033_kernel_decide
def op1382 : List WordIR.Op := [.bxor 1404 1405]
def bytes1382 : Bytes := ("    let r0000057e: u32 = r0000057c ^ r0000057d;\n" : String).toByteArray.data.toList
theorem checked1382 : bytes1382=statementBytes 1406 (op1382.map lower) ∧ bytes1382.length=48 := by core033_kernel_decide
def op1383 : List WordIR.Op := [.rotr 1403 25]
def bytes1383 : Bytes := ("    let r0000057f: u32 = r0000057b.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1383 : bytes1383=statementBytes 1407 (op1383.map lower) ∧ bytes1383.length=65 := by core033_kernel_decide
def op1384 : List WordIR.Op := [.bxor 1406 1407]
def bytes1384 : Bytes := ("    let r00000580: u32 = r0000057e ^ r0000057f;\n" : String).toByteArray.data.toList
theorem checked1384 : bytes1384=statementBytes 1408 (op1384.map lower) ∧ bytes1384.length=48 := by core033_kernel_decide
def op1385 : List WordIR.Op := [.badd 1322 1408]
def bytes1385 : Bytes := ("    let r00000581: u32 = r0000052a.wrapping_add(r00000580);\n" : String).toByteArray.data.toList
theorem checked1385 : bytes1385=statementBytes 1409 (op1385.map lower) ∧ bytes1385.length=60 := by core033_kernel_decide
def op1386 : List WordIR.Op := [.band 1403 1376]
def bytes1386 : Bytes := ("    let r00000582: u32 = r0000057b & r00000560;\n" : String).toByteArray.data.toList
theorem checked1386 : bytes1386=statementBytes 1410 (op1386.map lower) ∧ bytes1386.length=48 := by core033_kernel_decide
def op1387 : List WordIR.Op := [.bnot 1403]
def bytes1387 : Bytes := ("    let r00000583: u32 = !r0000057b;\n" : String).toByteArray.data.toList
theorem checked1387 : bytes1387=statementBytes 1411 (op1387.map lower) ∧ bytes1387.length=37 := by core033_kernel_decide
def op1388 : List WordIR.Op := [.band 1411 1349]
def bytes1388 : Bytes := ("    let r00000584: u32 = r00000583 & r00000545;\n" : String).toByteArray.data.toList
theorem checked1388 : bytes1388=statementBytes 1412 (op1388.map lower) ∧ bytes1388.length=48 := by core033_kernel_decide
def op1389 : List WordIR.Op := [.bxor 1410 1412]
def bytes1389 : Bytes := ("    let r00000585: u32 = r00000582 ^ r00000584;\n" : String).toByteArray.data.toList
theorem checked1389 : bytes1389=statementBytes 1413 (op1389.map lower) ∧ bytes1389.length=48 := by core033_kernel_decide
def op1390 : List WordIR.Op := [.badd 1409 1413]
def bytes1390 : Bytes := ("    let r00000586: u32 = r00000581.wrapping_add(r00000585);\n" : String).toByteArray.data.toList
theorem checked1390 : bytes1390=statementBytes 1414 (op1390.map lower) ∧ bytes1390.length=60 := by core033_kernel_decide
def op1391 : List WordIR.Op := [.literal (BitVec.ofNat 32 3336571891)]
def bytes1391 : Bytes := ("    let r00000587: u32 = 0xc6e00bf3_u32;\n" : String).toByteArray.data.toList
theorem checked1391 : bytes1391=statementBytes 1415 (op1391.map lower) ∧ bytes1391.length=41 := by core033_kernel_decide
def op1392 : List WordIR.Op := [.badd 1414 1415]
def bytes1392 : Bytes := ("    let r00000588: u32 = r00000586.wrapping_add(r00000587);\n" : String).toByteArray.data.toList
theorem checked1392 : bytes1392=statementBytes 1416 (op1392.map lower) ∧ bytes1392.length=60 := by core033_kernel_decide
def op1393 : List WordIR.Op := [.badd 1416 192]
def bytes1393 : Bytes := ("    let r00000589: u32 = r00000588.wrapping_add(r000000c0);\n" : String).toByteArray.data.toList
theorem checked1393 : bytes1393=statementBytes 1417 (op1393.map lower) ∧ bytes1393.length=60 := by core033_kernel_decide
def op1394 : List WordIR.Op := [.rotr 1402 2]
def bytes1394 : Bytes := ("    let r0000058a: u32 = r0000057a.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1394 : bytes1394=statementBytes 1418 (op1394.map lower) ∧ bytes1394.length=65 := by core033_kernel_decide
def op1395 : List WordIR.Op := [.rotr 1402 13]
def bytes1395 : Bytes := ("    let r0000058b: u32 = r0000057a.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1395 : bytes1395=statementBytes 1419 (op1395.map lower) ∧ bytes1395.length=65 := by core033_kernel_decide
def op1396 : List WordIR.Op := [.bxor 1418 1419]
def bytes1396 : Bytes := ("    let r0000058c: u32 = r0000058a ^ r0000058b;\n" : String).toByteArray.data.toList
theorem checked1396 : bytes1396=statementBytes 1420 (op1396.map lower) ∧ bytes1396.length=48 := by core033_kernel_decide
def op1397 : List WordIR.Op := [.rotr 1402 22]
def bytes1397 : Bytes := ("    let r0000058d: u32 = r0000057a.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1397 : bytes1397=statementBytes 1421 (op1397.map lower) ∧ bytes1397.length=65 := by core033_kernel_decide
def op1398 : List WordIR.Op := [.bxor 1420 1421]
def bytes1398 : Bytes := ("    let r0000058e: u32 = r0000058c ^ r0000058d;\n" : String).toByteArray.data.toList
theorem checked1398 : bytes1398=statementBytes 1422 (op1398.map lower) ∧ bytes1398.length=48 := by core033_kernel_decide
def op1399 : List WordIR.Op := [.band 1402 1375]
def bytes1399 : Bytes := ("    let r0000058f: u32 = r0000057a & r0000055f;\n" : String).toByteArray.data.toList
theorem checked1399 : bytes1399=statementBytes 1423 (op1399.map lower) ∧ bytes1399.length=48 := by core033_kernel_decide
def op1400 : List WordIR.Op := [.band 1402 1348]
def bytes1400 : Bytes := ("    let r00000590: u32 = r0000057a & r00000544;\n" : String).toByteArray.data.toList
theorem checked1400 : bytes1400=statementBytes 1424 (op1400.map lower) ∧ bytes1400.length=48 := by core033_kernel_decide
def op1401 : List WordIR.Op := [.bxor 1423 1424]
def bytes1401 : Bytes := ("    let r00000591: u32 = r0000058f ^ r00000590;\n" : String).toByteArray.data.toList
theorem checked1401 : bytes1401=statementBytes 1425 (op1401.map lower) ∧ bytes1401.length=48 := by core033_kernel_decide
def op1402 : List WordIR.Op := [.band 1375 1348]
def bytes1402 : Bytes := ("    let r00000592: u32 = r0000055f & r00000544;\n" : String).toByteArray.data.toList
theorem checked1402 : bytes1402=statementBytes 1426 (op1402.map lower) ∧ bytes1402.length=48 := by core033_kernel_decide
def op1403 : List WordIR.Op := [.bxor 1425 1426]
def bytes1403 : Bytes := ("    let r00000593: u32 = r00000591 ^ r00000592;\n" : String).toByteArray.data.toList
theorem checked1403 : bytes1403=statementBytes 1427 (op1403.map lower) ∧ bytes1403.length=48 := by core033_kernel_decide
def op1404 : List WordIR.Op := [.badd 1422 1427]
def bytes1404 : Bytes := ("    let r00000594: u32 = r0000058e.wrapping_add(r00000593);\n" : String).toByteArray.data.toList
theorem checked1404 : bytes1404=statementBytes 1428 (op1404.map lower) ∧ bytes1404.length=60 := by core033_kernel_decide
def op1405 : List WordIR.Op := [.badd 1417 1428]
def bytes1405 : Bytes := ("    let r00000595: u32 = r00000589.wrapping_add(r00000594);\n" : String).toByteArray.data.toList
theorem checked1405 : bytes1405=statementBytes 1429 (op1405.map lower) ∧ bytes1405.length=60 := by core033_kernel_decide
def op1406 : List WordIR.Op := [.badd 1321 1417]
def bytes1406 : Bytes := ("    let r00000596: u32 = r00000529.wrapping_add(r00000589);\n" : String).toByteArray.data.toList
theorem checked1406 : bytes1406=statementBytes 1430 (op1406.map lower) ∧ bytes1406.length=60 := by core033_kernel_decide
def op1407 : List WordIR.Op := [.rotr 1430 6]
def bytes1407 : Bytes := ("    let r00000597: u32 = r00000596.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1407 : bytes1407=statementBytes 1431 (op1407.map lower) ∧ bytes1407.length=65 := by core033_kernel_decide
def innerBlocks21 : List (List WordIR.Op) := [op1344,op1345,op1346,op1347,op1348,op1349,op1350,op1351,op1352,op1353,op1354,op1355,op1356,op1357,op1358,op1359,op1360,op1361,op1362,op1363,op1364,op1365,op1366,op1367,op1368,op1369,op1370,op1371,op1372,op1373,op1374,op1375,op1376,op1377,op1378,op1379,op1380,op1381,op1382,op1383,op1384,op1385,op1386,op1387,op1388,op1389,op1390,op1391,op1392,op1393,op1394,op1395,op1396,op1397,op1398,op1399,op1400,op1401,op1402,op1403,op1404,op1405,op1406,op1407]
def innerBytes21 : List Bytes := [bytes1344,bytes1345,bytes1346,bytes1347,bytes1348,bytes1349,bytes1350,bytes1351,bytes1352,bytes1353,bytes1354,bytes1355,bytes1356,bytes1357,bytes1358,bytes1359,bytes1360,bytes1361,bytes1362,bytes1363,bytes1364,bytes1365,bytes1366,bytes1367,bytes1368,bytes1369,bytes1370,bytes1371,bytes1372,bytes1373,bytes1374,bytes1375,bytes1376,bytes1377,bytes1378,bytes1379,bytes1380,bytes1381,bytes1382,bytes1383,bytes1384,bytes1385,bytes1386,bytes1387,bytes1388,bytes1389,bytes1390,bytes1391,bytes1392,bytes1393,bytes1394,bytes1395,bytes1396,bytes1397,bytes1398,bytes1399,bytes1400,bytes1401,bytes1402,bytes1403,bytes1404,bytes1405,bytes1406,bytes1407]
def partOps21 : List WordIR.Op := innerBlocks21.flatten
def partBytes21 : Bytes := innerBytes21.flatten
theorem partChain21 : BlockChain 1368 innerBlocks21 innerBytes21 := by
  unfold innerBlocks21 innerBytes21
  exact (.cons _ _ _ _ _ checked1344.1 (.cons _ _ _ _ _ checked1345.1 (.cons _ _ _ _ _ checked1346.1 (.cons _ _ _ _ _ checked1347.1 (.cons _ _ _ _ _ checked1348.1 (.cons _ _ _ _ _ checked1349.1 (.cons _ _ _ _ _ checked1350.1 (.cons _ _ _ _ _ checked1351.1 (.cons _ _ _ _ _ checked1352.1 (.cons _ _ _ _ _ checked1353.1 (.cons _ _ _ _ _ checked1354.1 (.cons _ _ _ _ _ checked1355.1 (.cons _ _ _ _ _ checked1356.1 (.cons _ _ _ _ _ checked1357.1 (.cons _ _ _ _ _ checked1358.1 (.cons _ _ _ _ _ checked1359.1 (.cons _ _ _ _ _ checked1360.1 (.cons _ _ _ _ _ checked1361.1 (.cons _ _ _ _ _ checked1362.1 (.cons _ _ _ _ _ checked1363.1 (.cons _ _ _ _ _ checked1364.1 (.cons _ _ _ _ _ checked1365.1 (.cons _ _ _ _ _ checked1366.1 (.cons _ _ _ _ _ checked1367.1 (.cons _ _ _ _ _ checked1368.1 (.cons _ _ _ _ _ checked1369.1 (.cons _ _ _ _ _ checked1370.1 (.cons _ _ _ _ _ checked1371.1 (.cons _ _ _ _ _ checked1372.1 (.cons _ _ _ _ _ checked1373.1 (.cons _ _ _ _ _ checked1374.1 (.cons _ _ _ _ _ checked1375.1 (.cons _ _ _ _ _ checked1376.1 (.cons _ _ _ _ _ checked1377.1 (.cons _ _ _ _ _ checked1378.1 (.cons _ _ _ _ _ checked1379.1 (.cons _ _ _ _ _ checked1380.1 (.cons _ _ _ _ _ checked1381.1 (.cons _ _ _ _ _ checked1382.1 (.cons _ _ _ _ _ checked1383.1 (.cons _ _ _ _ _ checked1384.1 (.cons _ _ _ _ _ checked1385.1 (.cons _ _ _ _ _ checked1386.1 (.cons _ _ _ _ _ checked1387.1 (.cons _ _ _ _ _ checked1388.1 (.cons _ _ _ _ _ checked1389.1 (.cons _ _ _ _ _ checked1390.1 (.cons _ _ _ _ _ checked1391.1 (.cons _ _ _ _ _ checked1392.1 (.cons _ _ _ _ _ checked1393.1 (.cons _ _ _ _ _ checked1394.1 (.cons _ _ _ _ _ checked1395.1 (.cons _ _ _ _ _ checked1396.1 (.cons _ _ _ _ _ checked1397.1 (.cons _ _ _ _ _ checked1398.1 (.cons _ _ _ _ _ checked1399.1 (.cons _ _ _ _ _ checked1400.1 (.cons _ _ _ _ _ checked1401.1 (.cons _ _ _ _ _ checked1402.1 (.cons _ _ _ _ _ checked1403.1 (.cons _ _ _ _ _ checked1404.1 (.cons _ _ _ _ _ checked1405.1 (.cons _ _ _ _ _ checked1406.1 (.cons _ _ _ _ _ checked1407.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked21 : partBytes21=statementBytes 1368 (partOps21.map lower) ∧ partBytes21.length=3461 := by
  constructor
  · exact (chain_exact partChain21).trans (body_exact innerBlocks21 1368)
  · simp only [partBytes21,WordSource.chunk_sizes_exact,innerBytes21,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1344.2,checked1345.2,checked1346.2,checked1347.2,checked1348.2,checked1349.2,checked1350.2,checked1351.2,checked1352.2,checked1353.2,checked1354.2,checked1355.2,checked1356.2,checked1357.2,checked1358.2,checked1359.2,checked1360.2,checked1361.2,checked1362.2,checked1363.2,checked1364.2,checked1365.2,checked1366.2,checked1367.2,checked1368.2,checked1369.2,checked1370.2,checked1371.2,checked1372.2,checked1373.2,checked1374.2,checked1375.2,checked1376.2,checked1377.2,checked1378.2,checked1379.2,checked1380.2,checked1381.2,checked1382.2,checked1383.2,checked1384.2,checked1385.2,checked1386.2,checked1387.2,checked1388.2,checked1389.2,checked1390.2,checked1391.2,checked1392.2,checked1393.2,checked1394.2,checked1395.2,checked1396.2,checked1397.2,checked1398.2,checked1399.2,checked1400.2,checked1401.2,checked1402.2,checked1403.2,checked1404.2,checked1405.2,checked1406.2,checked1407.2]
    decide
theorem partLength21 : partOps21.length=64 := by
  simp only [partOps21,innerBlocks21,op1344,op1345,op1346,op1347,op1348,op1349,op1350,op1351,op1352,op1353,op1354,op1355,op1356,op1357,op1358,op1359,op1360,op1361,op1362,op1363,op1364,op1365,op1366,op1367,op1368,op1369,op1370,op1371,op1372,op1373,op1374,op1375,op1376,op1377,op1378,op1379,op1380,op1381,op1382,op1383,op1384,op1385,op1386,op1387,op1388,op1389,op1390,op1391,op1392,op1393,op1394,op1395,op1396,op1397,op1398,op1399,op1400,op1401,op1402,op1403,op1404,op1405,op1406,op1407,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
