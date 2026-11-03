import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup22
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1408 : List WordIR.Op := [.bxor 1478 1479]
def bytes1408 : Bytes := ("    let r000005c8: u32 = r000005c6 ^ r000005c7;\n" : String).toByteArray.data.toList
theorem checked1408 : bytes1408=statementBytes 1480 (op1408.map lower) ∧ bytes1408.length=48 := by core033_kernel_decide
def op1409 : List WordIR.Op := [.badd 1480 1397]
def bytes1409 : Bytes := ("    let r000005c9: u32 = r000005c8.wrapping_add(r00000575);\n" : String).toByteArray.data.toList
theorem checked1409 : bytes1409=statementBytes 1481 (op1409.map lower) ∧ bytes1409.length=60 := by core033_kernel_decide
def op1410 : List WordIR.Op := [.rotr 155 7]
def bytes1410 : Bytes := ("    let r000005ca: u32 = r0000009b.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1410 : bytes1410=statementBytes 1482 (op1410.map lower) ∧ bytes1410.length=65 := by core033_kernel_decide
def op1411 : List WordIR.Op := [.rotr 155 18]
def bytes1411 : Bytes := ("    let r000005cb: u32 = r0000009b.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1411 : bytes1411=statementBytes 1483 (op1411.map lower) ∧ bytes1411.length=65 := by core033_kernel_decide
def op1412 : List WordIR.Op := [.bxor 1482 1483]
def bytes1412 : Bytes := ("    let r000005cc: u32 = r000005ca ^ r000005cb;\n" : String).toByteArray.data.toList
theorem checked1412 : bytes1412=statementBytes 1484 (op1412.map lower) ∧ bytes1412.length=48 := by core033_kernel_decide
def op1413 : List WordIR.Op := [.shr 155 3]
def bytes1413 : Bytes := ("    let r000005cd: u32 = r0000009b >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1413 : bytes1413=statementBytes 1485 (op1413.map lower) ∧ bytes1413.length=54 := by core033_kernel_decide
def op1414 : List WordIR.Op := [.bxor 1484 1485]
def bytes1414 : Bytes := ("    let r000005ce: u32 = r000005cc ^ r000005cd;\n" : String).toByteArray.data.toList
theorem checked1414 : bytes1414=statementBytes 1486 (op1414.map lower) ∧ bytes1414.length=48 := by core033_kernel_decide
def op1415 : List WordIR.Op := [.badd 1481 1486]
def bytes1415 : Bytes := ("    let r000005cf: u32 = r000005c9.wrapping_add(r000005ce);\n" : String).toByteArray.data.toList
theorem checked1415 : bytes1415=statementBytes 1487 (op1415.map lower) ∧ bytes1415.length=60 := by core033_kernel_decide
def op1416 : List WordIR.Op := [.badd 1487 149]
def bytes1416 : Bytes := ("    let r000005d0: u32 = r000005cf.wrapping_add(r00000095);\n" : String).toByteArray.data.toList
theorem checked1416 : bytes1416=statementBytes 1488 (op1416.map lower) ∧ bytes1416.length=60 := by core033_kernel_decide
def op1417 : List WordIR.Op := [.rotr 1475 17]
def bytes1417 : Bytes := ("    let r000005d1: u32 = r000005c3.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1417 : bytes1417=statementBytes 1489 (op1417.map lower) ∧ bytes1417.length=65 := by core033_kernel_decide
def op1418 : List WordIR.Op := [.rotr 1475 19]
def bytes1418 : Bytes := ("    let r000005d2: u32 = r000005c3.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1418 : bytes1418=statementBytes 1490 (op1418.map lower) ∧ bytes1418.length=65 := by core033_kernel_decide
def op1419 : List WordIR.Op := [.bxor 1489 1490]
def bytes1419 : Bytes := ("    let r000005d3: u32 = r000005d1 ^ r000005d2;\n" : String).toByteArray.data.toList
theorem checked1419 : bytes1419=statementBytes 1491 (op1419.map lower) ∧ bytes1419.length=48 := by core033_kernel_decide
def op1420 : List WordIR.Op := [.shr 1475 10]
def bytes1420 : Bytes := ("    let r000005d4: u32 = r000005c3 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1420 : bytes1420=statementBytes 1492 (op1420.map lower) ∧ bytes1420.length=54 := by core033_kernel_decide
def op1421 : List WordIR.Op := [.bxor 1491 1492]
def bytes1421 : Bytes := ("    let r000005d5: u32 = r000005d3 ^ r000005d4;\n" : String).toByteArray.data.toList
theorem checked1421 : bytes1421=statementBytes 1493 (op1421.map lower) ∧ bytes1421.length=48 := by core033_kernel_decide
def op1422 : List WordIR.Op := [.badd 1493 1410]
def bytes1422 : Bytes := ("    let r000005d6: u32 = r000005d5.wrapping_add(r00000582);\n" : String).toByteArray.data.toList
theorem checked1422 : bytes1422=statementBytes 1494 (op1422.map lower) ∧ bytes1422.length=60 := by core033_kernel_decide
def op1423 : List WordIR.Op := [.rotr 161 7]
def bytes1423 : Bytes := ("    let r000005d7: u32 = r000000a1.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1423 : bytes1423=statementBytes 1495 (op1423.map lower) ∧ bytes1423.length=65 := by core033_kernel_decide
def op1424 : List WordIR.Op := [.rotr 161 18]
def bytes1424 : Bytes := ("    let r000005d8: u32 = r000000a1.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1424 : bytes1424=statementBytes 1496 (op1424.map lower) ∧ bytes1424.length=65 := by core033_kernel_decide
def op1425 : List WordIR.Op := [.bxor 1495 1496]
def bytes1425 : Bytes := ("    let r000005d9: u32 = r000005d7 ^ r000005d8;\n" : String).toByteArray.data.toList
theorem checked1425 : bytes1425=statementBytes 1497 (op1425.map lower) ∧ bytes1425.length=48 := by core033_kernel_decide
def op1426 : List WordIR.Op := [.shr 161 3]
def bytes1426 : Bytes := ("    let r000005da: u32 = r000000a1 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1426 : bytes1426=statementBytes 1498 (op1426.map lower) ∧ bytes1426.length=54 := by core033_kernel_decide
def op1427 : List WordIR.Op := [.bxor 1497 1498]
def bytes1427 : Bytes := ("    let r000005db: u32 = r000005d9 ^ r000005da;\n" : String).toByteArray.data.toList
theorem checked1427 : bytes1427=statementBytes 1499 (op1427.map lower) ∧ bytes1427.length=48 := by core033_kernel_decide
def op1428 : List WordIR.Op := [.badd 1494 1499]
def bytes1428 : Bytes := ("    let r000005dc: u32 = r000005d6.wrapping_add(r000005db);\n" : String).toByteArray.data.toList
theorem checked1428 : bytes1428=statementBytes 1500 (op1428.map lower) ∧ bytes1428.length=60 := by core033_kernel_decide
def op1429 : List WordIR.Op := [.badd 1500 155]
def bytes1429 : Bytes := ("    let r000005dd: u32 = r000005dc.wrapping_add(r0000009b);\n" : String).toByteArray.data.toList
theorem checked1429 : bytes1429=statementBytes 1501 (op1429.map lower) ∧ bytes1429.length=60 := by core033_kernel_decide
def op1430 : List WordIR.Op := [.rotr 1488 17]
def bytes1430 : Bytes := ("    let r000005de: u32 = r000005d0.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1430 : bytes1430=statementBytes 1502 (op1430.map lower) ∧ bytes1430.length=65 := by core033_kernel_decide
def op1431 : List WordIR.Op := [.rotr 1488 19]
def bytes1431 : Bytes := ("    let r000005df: u32 = r000005d0.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1431 : bytes1431=statementBytes 1503 (op1431.map lower) ∧ bytes1431.length=65 := by core033_kernel_decide
def op1432 : List WordIR.Op := [.bxor 1502 1503]
def bytes1432 : Bytes := ("    let r000005e0: u32 = r000005de ^ r000005df;\n" : String).toByteArray.data.toList
theorem checked1432 : bytes1432=statementBytes 1504 (op1432.map lower) ∧ bytes1432.length=48 := by core033_kernel_decide
def op1433 : List WordIR.Op := [.shr 1488 10]
def bytes1433 : Bytes := ("    let r000005e1: u32 = r000005d0 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1433 : bytes1433=statementBytes 1505 (op1433.map lower) ∧ bytes1433.length=54 := by core033_kernel_decide
def op1434 : List WordIR.Op := [.bxor 1504 1505]
def bytes1434 : Bytes := ("    let r000005e2: u32 = r000005e0 ^ r000005e1;\n" : String).toByteArray.data.toList
theorem checked1434 : bytes1434=statementBytes 1506 (op1434.map lower) ∧ bytes1434.length=48 := by core033_kernel_decide
def op1435 : List WordIR.Op := [.badd 1506 1423]
def bytes1435 : Bytes := ("    let r000005e3: u32 = r000005e2.wrapping_add(r0000058f);\n" : String).toByteArray.data.toList
theorem checked1435 : bytes1435=statementBytes 1507 (op1435.map lower) ∧ bytes1435.length=60 := by core033_kernel_decide
def op1436 : List WordIR.Op := [.rotr 167 7]
def bytes1436 : Bytes := ("    let r000005e4: u32 = r000000a7.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1436 : bytes1436=statementBytes 1508 (op1436.map lower) ∧ bytes1436.length=65 := by core033_kernel_decide
def op1437 : List WordIR.Op := [.rotr 167 18]
def bytes1437 : Bytes := ("    let r000005e5: u32 = r000000a7.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1437 : bytes1437=statementBytes 1509 (op1437.map lower) ∧ bytes1437.length=65 := by core033_kernel_decide
def op1438 : List WordIR.Op := [.bxor 1508 1509]
def bytes1438 : Bytes := ("    let r000005e6: u32 = r000005e4 ^ r000005e5;\n" : String).toByteArray.data.toList
theorem checked1438 : bytes1438=statementBytes 1510 (op1438.map lower) ∧ bytes1438.length=48 := by core033_kernel_decide
def op1439 : List WordIR.Op := [.shr 167 3]
def bytes1439 : Bytes := ("    let r000005e7: u32 = r000000a7 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1439 : bytes1439=statementBytes 1511 (op1439.map lower) ∧ bytes1439.length=54 := by core033_kernel_decide
def op1440 : List WordIR.Op := [.bxor 1510 1511]
def bytes1440 : Bytes := ("    let r000005e8: u32 = r000005e6 ^ r000005e7;\n" : String).toByteArray.data.toList
theorem checked1440 : bytes1440=statementBytes 1512 (op1440.map lower) ∧ bytes1440.length=48 := by core033_kernel_decide
def op1441 : List WordIR.Op := [.badd 1507 1512]
def bytes1441 : Bytes := ("    let r000005e9: u32 = r000005e3.wrapping_add(r000005e8);\n" : String).toByteArray.data.toList
theorem checked1441 : bytes1441=statementBytes 1513 (op1441.map lower) ∧ bytes1441.length=60 := by core033_kernel_decide
def op1442 : List WordIR.Op := [.badd 1513 161]
def bytes1442 : Bytes := ("    let r000005ea: u32 = r000005e9.wrapping_add(r000000a1);\n" : String).toByteArray.data.toList
theorem checked1442 : bytes1442=statementBytes 1514 (op1442.map lower) ∧ bytes1442.length=60 := by core033_kernel_decide
def op1443 : List WordIR.Op := [.rotr 1501 17]
def bytes1443 : Bytes := ("    let r000005eb: u32 = r000005dd.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1443 : bytes1443=statementBytes 1515 (op1443.map lower) ∧ bytes1443.length=65 := by core033_kernel_decide
def op1444 : List WordIR.Op := [.rotr 1501 19]
def bytes1444 : Bytes := ("    let r000005ec: u32 = r000005dd.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1444 : bytes1444=statementBytes 1516 (op1444.map lower) ∧ bytes1444.length=65 := by core033_kernel_decide
def op1445 : List WordIR.Op := [.bxor 1515 1516]
def bytes1445 : Bytes := ("    let r000005ed: u32 = r000005eb ^ r000005ec;\n" : String).toByteArray.data.toList
theorem checked1445 : bytes1445=statementBytes 1517 (op1445.map lower) ∧ bytes1445.length=48 := by core033_kernel_decide
def op1446 : List WordIR.Op := [.shr 1501 10]
def bytes1446 : Bytes := ("    let r000005ee: u32 = r000005dd >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1446 : bytes1446=statementBytes 1518 (op1446.map lower) ∧ bytes1446.length=54 := by core033_kernel_decide
def op1447 : List WordIR.Op := [.bxor 1517 1518]
def bytes1447 : Bytes := ("    let r000005ef: u32 = r000005ed ^ r000005ee;\n" : String).toByteArray.data.toList
theorem checked1447 : bytes1447=statementBytes 1519 (op1447.map lower) ∧ bytes1447.length=48 := by core033_kernel_decide
def op1448 : List WordIR.Op := [.badd 1519 1436]
def bytes1448 : Bytes := ("    let r000005f0: u32 = r000005ef.wrapping_add(r0000059c);\n" : String).toByteArray.data.toList
theorem checked1448 : bytes1448=statementBytes 1520 (op1448.map lower) ∧ bytes1448.length=60 := by core033_kernel_decide
def op1449 : List WordIR.Op := [.rotr 1332 7]
def bytes1449 : Bytes := ("    let r000005f1: u32 = r00000534.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1449 : bytes1449=statementBytes 1521 (op1449.map lower) ∧ bytes1449.length=65 := by core033_kernel_decide
def op1450 : List WordIR.Op := [.rotr 1332 18]
def bytes1450 : Bytes := ("    let r000005f2: u32 = r00000534.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1450 : bytes1450=statementBytes 1522 (op1450.map lower) ∧ bytes1450.length=65 := by core033_kernel_decide
def op1451 : List WordIR.Op := [.bxor 1521 1522]
def bytes1451 : Bytes := ("    let r000005f3: u32 = r000005f1 ^ r000005f2;\n" : String).toByteArray.data.toList
theorem checked1451 : bytes1451=statementBytes 1523 (op1451.map lower) ∧ bytes1451.length=48 := by core033_kernel_decide
def op1452 : List WordIR.Op := [.shr 1332 3]
def bytes1452 : Bytes := ("    let r000005f4: u32 = r00000534 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1452 : bytes1452=statementBytes 1524 (op1452.map lower) ∧ bytes1452.length=54 := by core033_kernel_decide
def op1453 : List WordIR.Op := [.bxor 1523 1524]
def bytes1453 : Bytes := ("    let r000005f5: u32 = r000005f3 ^ r000005f4;\n" : String).toByteArray.data.toList
theorem checked1453 : bytes1453=statementBytes 1525 (op1453.map lower) ∧ bytes1453.length=48 := by core033_kernel_decide
def op1454 : List WordIR.Op := [.badd 1520 1525]
def bytes1454 : Bytes := ("    let r000005f6: u32 = r000005f0.wrapping_add(r000005f5);\n" : String).toByteArray.data.toList
theorem checked1454 : bytes1454=statementBytes 1526 (op1454.map lower) ∧ bytes1454.length=60 := by core033_kernel_decide
def op1455 : List WordIR.Op := [.badd 1526 167]
def bytes1455 : Bytes := ("    let r000005f7: u32 = r000005f6.wrapping_add(r000000a7);\n" : String).toByteArray.data.toList
theorem checked1455 : bytes1455=statementBytes 1527 (op1455.map lower) ∧ bytes1455.length=60 := by core033_kernel_decide
def op1456 : List WordIR.Op := [.rotr 1514 17]
def bytes1456 : Bytes := ("    let r000005f8: u32 = r000005ea.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1456 : bytes1456=statementBytes 1528 (op1456.map lower) ∧ bytes1456.length=65 := by core033_kernel_decide
def op1457 : List WordIR.Op := [.rotr 1514 19]
def bytes1457 : Bytes := ("    let r000005f9: u32 = r000005ea.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1457 : bytes1457=statementBytes 1529 (op1457.map lower) ∧ bytes1457.length=65 := by core033_kernel_decide
def op1458 : List WordIR.Op := [.bxor 1528 1529]
def bytes1458 : Bytes := ("    let r000005fa: u32 = r000005f8 ^ r000005f9;\n" : String).toByteArray.data.toList
theorem checked1458 : bytes1458=statementBytes 1530 (op1458.map lower) ∧ bytes1458.length=48 := by core033_kernel_decide
def op1459 : List WordIR.Op := [.shr 1514 10]
def bytes1459 : Bytes := ("    let r000005fb: u32 = r000005ea >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1459 : bytes1459=statementBytes 1531 (op1459.map lower) ∧ bytes1459.length=54 := by core033_kernel_decide
def op1460 : List WordIR.Op := [.bxor 1530 1531]
def bytes1460 : Bytes := ("    let r000005fc: u32 = r000005fa ^ r000005fb;\n" : String).toByteArray.data.toList
theorem checked1460 : bytes1460=statementBytes 1532 (op1460.map lower) ∧ bytes1460.length=48 := by core033_kernel_decide
def op1461 : List WordIR.Op := [.badd 1532 1449]
def bytes1461 : Bytes := ("    let r000005fd: u32 = r000005fc.wrapping_add(r000005a9);\n" : String).toByteArray.data.toList
theorem checked1461 : bytes1461=statementBytes 1533 (op1461.map lower) ∧ bytes1461.length=60 := by core033_kernel_decide
def op1462 : List WordIR.Op := [.rotr 1345 7]
def bytes1462 : Bytes := ("    let r000005fe: u32 = r00000541.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1462 : bytes1462=statementBytes 1534 (op1462.map lower) ∧ bytes1462.length=65 := by core033_kernel_decide
def op1463 : List WordIR.Op := [.rotr 1345 18]
def bytes1463 : Bytes := ("    let r000005ff: u32 = r00000541.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1463 : bytes1463=statementBytes 1535 (op1463.map lower) ∧ bytes1463.length=65 := by core033_kernel_decide
def op1464 : List WordIR.Op := [.bxor 1534 1535]
def bytes1464 : Bytes := ("    let r00000600: u32 = r000005fe ^ r000005ff;\n" : String).toByteArray.data.toList
theorem checked1464 : bytes1464=statementBytes 1536 (op1464.map lower) ∧ bytes1464.length=48 := by core033_kernel_decide
def op1465 : List WordIR.Op := [.shr 1345 3]
def bytes1465 : Bytes := ("    let r00000601: u32 = r00000541 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1465 : bytes1465=statementBytes 1537 (op1465.map lower) ∧ bytes1465.length=54 := by core033_kernel_decide
def op1466 : List WordIR.Op := [.bxor 1536 1537]
def bytes1466 : Bytes := ("    let r00000602: u32 = r00000600 ^ r00000601;\n" : String).toByteArray.data.toList
theorem checked1466 : bytes1466=statementBytes 1538 (op1466.map lower) ∧ bytes1466.length=48 := by core033_kernel_decide
def op1467 : List WordIR.Op := [.badd 1533 1538]
def bytes1467 : Bytes := ("    let r00000603: u32 = r000005fd.wrapping_add(r00000602);\n" : String).toByteArray.data.toList
theorem checked1467 : bytes1467=statementBytes 1539 (op1467.map lower) ∧ bytes1467.length=60 := by core033_kernel_decide
def op1468 : List WordIR.Op := [.badd 1539 1332]
def bytes1468 : Bytes := ("    let r00000604: u32 = r00000603.wrapping_add(r00000534);\n" : String).toByteArray.data.toList
theorem checked1468 : bytes1468=statementBytes 1540 (op1468.map lower) ∧ bytes1468.length=60 := by core033_kernel_decide
def op1469 : List WordIR.Op := [.rotr 1527 17]
def bytes1469 : Bytes := ("    let r00000605: u32 = r000005f7.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1469 : bytes1469=statementBytes 1541 (op1469.map lower) ∧ bytes1469.length=65 := by core033_kernel_decide
def op1470 : List WordIR.Op := [.rotr 1527 19]
def bytes1470 : Bytes := ("    let r00000606: u32 = r000005f7.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1470 : bytes1470=statementBytes 1542 (op1470.map lower) ∧ bytes1470.length=65 := by core033_kernel_decide
def op1471 : List WordIR.Op := [.bxor 1541 1542]
def bytes1471 : Bytes := ("    let r00000607: u32 = r00000605 ^ r00000606;\n" : String).toByteArray.data.toList
theorem checked1471 : bytes1471=statementBytes 1543 (op1471.map lower) ∧ bytes1471.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1408,op1409,op1410,op1411,op1412,op1413,op1414,op1415,op1416,op1417,op1418,op1419,op1420,op1421,op1422,op1423,op1424,op1425,op1426,op1427,op1428,op1429,op1430,op1431,op1432,op1433,op1434,op1435,op1436,op1437,op1438,op1439,op1440,op1441,op1442,op1443,op1444,op1445,op1446,op1447,op1448,op1449,op1450,op1451,op1452,op1453,op1454,op1455,op1456,op1457,op1458,op1459,op1460,op1461,op1462,op1463,op1464,op1465,op1466,op1467,op1468,op1469,op1470,op1471]
def chunks : List Bytes := [bytes1408,bytes1409,bytes1410,bytes1411,bytes1412,bytes1413,bytes1414,bytes1415,bytes1416,bytes1417,bytes1418,bytes1419,bytes1420,bytes1421,bytes1422,bytes1423,bytes1424,bytes1425,bytes1426,bytes1427,bytes1428,bytes1429,bytes1430,bytes1431,bytes1432,bytes1433,bytes1434,bytes1435,bytes1436,bytes1437,bytes1438,bytes1439,bytes1440,bytes1441,bytes1442,bytes1443,bytes1444,bytes1445,bytes1446,bytes1447,bytes1448,bytes1449,bytes1450,bytes1451,bytes1452,bytes1453,bytes1454,bytes1455,bytes1456,bytes1457,bytes1458,bytes1459,bytes1460,bytes1461,bytes1462,bytes1463,bytes1464,bytes1465,bytes1466,bytes1467,bytes1468,bytes1469,bytes1470,bytes1471]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1480 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1408.1 (.cons _ _ _ _ _ checked1409.1 (.cons _ _ _ _ _ checked1410.1 (.cons _ _ _ _ _ checked1411.1 (.cons _ _ _ _ _ checked1412.1 (.cons _ _ _ _ _ checked1413.1 (.cons _ _ _ _ _ checked1414.1 (.cons _ _ _ _ _ checked1415.1 (.cons _ _ _ _ _ checked1416.1 (.cons _ _ _ _ _ checked1417.1 (.cons _ _ _ _ _ checked1418.1 (.cons _ _ _ _ _ checked1419.1 (.cons _ _ _ _ _ checked1420.1 (.cons _ _ _ _ _ checked1421.1 (.cons _ _ _ _ _ checked1422.1 (.cons _ _ _ _ _ checked1423.1 (.cons _ _ _ _ _ checked1424.1 (.cons _ _ _ _ _ checked1425.1 (.cons _ _ _ _ _ checked1426.1 (.cons _ _ _ _ _ checked1427.1 (.cons _ _ _ _ _ checked1428.1 (.cons _ _ _ _ _ checked1429.1 (.cons _ _ _ _ _ checked1430.1 (.cons _ _ _ _ _ checked1431.1 (.cons _ _ _ _ _ checked1432.1 (.cons _ _ _ _ _ checked1433.1 (.cons _ _ _ _ _ checked1434.1 (.cons _ _ _ _ _ checked1435.1 (.cons _ _ _ _ _ checked1436.1 (.cons _ _ _ _ _ checked1437.1 (.cons _ _ _ _ _ checked1438.1 (.cons _ _ _ _ _ checked1439.1 (.cons _ _ _ _ _ checked1440.1 (.cons _ _ _ _ _ checked1441.1 (.cons _ _ _ _ _ checked1442.1 (.cons _ _ _ _ _ checked1443.1 (.cons _ _ _ _ _ checked1444.1 (.cons _ _ _ _ _ checked1445.1 (.cons _ _ _ _ _ checked1446.1 (.cons _ _ _ _ _ checked1447.1 (.cons _ _ _ _ _ checked1448.1 (.cons _ _ _ _ _ checked1449.1 (.cons _ _ _ _ _ checked1450.1 (.cons _ _ _ _ _ checked1451.1 (.cons _ _ _ _ _ checked1452.1 (.cons _ _ _ _ _ checked1453.1 (.cons _ _ _ _ _ checked1454.1 (.cons _ _ _ _ _ checked1455.1 (.cons _ _ _ _ _ checked1456.1 (.cons _ _ _ _ _ checked1457.1 (.cons _ _ _ _ _ checked1458.1 (.cons _ _ _ _ _ checked1459.1 (.cons _ _ _ _ _ checked1460.1 (.cons _ _ _ _ _ checked1461.1 (.cons _ _ _ _ _ checked1462.1 (.cons _ _ _ _ _ checked1463.1 (.cons _ _ _ _ _ checked1464.1 (.cons _ _ _ _ _ checked1465.1 (.cons _ _ _ _ _ checked1466.1 (.cons _ _ _ _ _ checked1467.1 (.cons _ _ _ _ _ checked1468.1 (.cons _ _ _ _ _ checked1469.1 (.cons _ _ _ _ _ checked1470.1 (.cons _ _ _ _ _ checked1471.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1480 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3646 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1408.2,checked1409.2,checked1410.2,checked1411.2,checked1412.2,checked1413.2,checked1414.2,checked1415.2,checked1416.2,checked1417.2,checked1418.2,checked1419.2,checked1420.2,checked1421.2,checked1422.2,checked1423.2,checked1424.2,checked1425.2,checked1426.2,checked1427.2,checked1428.2,checked1429.2,checked1430.2,checked1431.2,checked1432.2,checked1433.2,checked1434.2,checked1435.2,checked1436.2,checked1437.2,checked1438.2,checked1439.2,checked1440.2,checked1441.2,checked1442.2,checked1443.2,checked1444.2,checked1445.2,checked1446.2,checked1447.2,checked1448.2,checked1449.2,checked1450.2,checked1451.2,checked1452.2,checked1453.2,checked1454.2,checked1455.2,checked1456.2,checked1457.2,checked1458.2,checked1459.2,checked1460.2,checked1461.2,checked1462.2,checked1463.2,checked1464.2,checked1465.2,checked1466.2,checked1467.2,checked1468.2,checked1469.2,checked1470.2,checked1471.2]
  decide
end ArtifactHashBlockGroup22
