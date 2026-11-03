import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup22
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1408 : List WordIR.Op := [.badd 1524 1525]
def bytes1408 : Bytes := ("    let r000005f6: u32 = r000005f4.wrapping_add(r000005f5);\n" : String).toByteArray.data.toList
theorem checked1408 : bytes1408=statementBytes 1526 (op1408.map lower) ∧ bytes1408.length=60 := by core033_kernel_decide
def op1409 : List WordIR.Op := [.bnot 1526]
def bytes1409 : Bytes := ("    let r000005f7: u32 = !r000005f6;\n" : String).toByteArray.data.toList
theorem checked1409 : bytes1409=statementBytes 1527 (op1409.map lower) ∧ bytes1409.length=37 := by core033_kernel_decide
def op1410 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1410 : Bytes := ("    let r000005f8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1410 : bytes1410=statementBytes 1528 (op1410.map lower) ∧ bytes1410.length=41 := by core033_kernel_decide
def op1411 : List WordIR.Op := [.band 1527 1528]
def bytes1411 : Bytes := ("    let r000005f9: u32 = r000005f7 & r000005f8;\n" : String).toByteArray.data.toList
theorem checked1411 : bytes1411=statementBytes 1529 (op1411.map lower) ∧ bytes1411.length=48 := by core033_kernel_decide
def op1412 : List WordIR.Op := [.bxor 1523 1529]
def bytes1412 : Bytes := ("    let r000005fa: u32 = r000005f3 ^ r000005f9;\n" : String).toByteArray.data.toList
theorem checked1412 : bytes1412=statementBytes 1530 (op1412.map lower) ∧ bytes1412.length=48 := by core033_kernel_decide
def op1413 : List WordIR.Op := [.bnot 1288]
def bytes1413 : Bytes := ("    let r000005fb: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1413 : bytes1413=statementBytes 1531 (op1413.map lower) ∧ bytes1413.length=37 := by core033_kernel_decide
def op1414 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1414 : Bytes := ("    let r000005fc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1414 : bytes1414=statementBytes 1532 (op1414.map lower) ∧ bytes1414.length=41 := by core033_kernel_decide
def op1415 : List WordIR.Op := [.badd 1531 1532]
def bytes1415 : Bytes := ("    let r000005fd: u32 = r000005fb.wrapping_add(r000005fc);\n" : String).toByteArray.data.toList
theorem checked1415 : bytes1415=statementBytes 1533 (op1415.map lower) ∧ bytes1415.length=60 := by core033_kernel_decide
def op1416 : List WordIR.Op := [.band 1533 1003]
def bytes1416 : Bytes := ("    let r000005fe: u32 = r000005fd & r000003eb;\n" : String).toByteArray.data.toList
theorem checked1416 : bytes1416=statementBytes 1534 (op1416.map lower) ∧ bytes1416.length=48 := by core033_kernel_decide
def op1417 : List WordIR.Op := [.bnot 1288]
def bytes1417 : Bytes := ("    let r000005ff: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1417 : bytes1417=statementBytes 1535 (op1417.map lower) ∧ bytes1417.length=37 := by core033_kernel_decide
def op1418 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1418 : Bytes := ("    let r00000600: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1418 : bytes1418=statementBytes 1536 (op1418.map lower) ∧ bytes1418.length=41 := by core033_kernel_decide
def op1419 : List WordIR.Op := [.badd 1535 1536]
def bytes1419 : Bytes := ("    let r00000601: u32 = r000005ff.wrapping_add(r00000600);\n" : String).toByteArray.data.toList
theorem checked1419 : bytes1419=statementBytes 1537 (op1419.map lower) ∧ bytes1419.length=60 := by core033_kernel_decide
def op1420 : List WordIR.Op := [.bnot 1537]
def bytes1420 : Bytes := ("    let r00000602: u32 = !r00000601;\n" : String).toByteArray.data.toList
theorem checked1420 : bytes1420=statementBytes 1538 (op1420.map lower) ∧ bytes1420.length=37 := by core033_kernel_decide
def op1421 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1421 : Bytes := ("    let r00000603: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1421 : bytes1421=statementBytes 1539 (op1421.map lower) ∧ bytes1421.length=41 := by core033_kernel_decide
def op1422 : List WordIR.Op := [.band 1538 1539]
def bytes1422 : Bytes := ("    let r00000604: u32 = r00000602 & r00000603;\n" : String).toByteArray.data.toList
theorem checked1422 : bytes1422=statementBytes 1540 (op1422.map lower) ∧ bytes1422.length=48 := by core033_kernel_decide
def op1423 : List WordIR.Op := [.bxor 1534 1540]
def bytes1423 : Bytes := ("    let r00000605: u32 = r000005fe ^ r00000604;\n" : String).toByteArray.data.toList
theorem checked1423 : bytes1423=statementBytes 1541 (op1423.map lower) ∧ bytes1423.length=48 := by core033_kernel_decide
def op1424 : List WordIR.Op := [.bnot 1288]
def bytes1424 : Bytes := ("    let r00000606: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1424 : bytes1424=statementBytes 1542 (op1424.map lower) ∧ bytes1424.length=37 := by core033_kernel_decide
def op1425 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1425 : Bytes := ("    let r00000607: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1425 : bytes1425=statementBytes 1543 (op1425.map lower) ∧ bytes1425.length=41 := by core033_kernel_decide
def op1426 : List WordIR.Op := [.badd 1542 1543]
def bytes1426 : Bytes := ("    let r00000608: u32 = r00000606.wrapping_add(r00000607);\n" : String).toByteArray.data.toList
theorem checked1426 : bytes1426=statementBytes 1544 (op1426.map lower) ∧ bytes1426.length=60 := by core033_kernel_decide
def op1427 : List WordIR.Op := [.band 1544 1013]
def bytes1427 : Bytes := ("    let r00000609: u32 = r00000608 & r000003f5;\n" : String).toByteArray.data.toList
theorem checked1427 : bytes1427=statementBytes 1545 (op1427.map lower) ∧ bytes1427.length=48 := by core033_kernel_decide
def op1428 : List WordIR.Op := [.bnot 1288]
def bytes1428 : Bytes := ("    let r0000060a: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1428 : bytes1428=statementBytes 1546 (op1428.map lower) ∧ bytes1428.length=37 := by core033_kernel_decide
def op1429 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1429 : Bytes := ("    let r0000060b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1429 : bytes1429=statementBytes 1547 (op1429.map lower) ∧ bytes1429.length=41 := by core033_kernel_decide
def op1430 : List WordIR.Op := [.badd 1546 1547]
def bytes1430 : Bytes := ("    let r0000060c: u32 = r0000060a.wrapping_add(r0000060b);\n" : String).toByteArray.data.toList
theorem checked1430 : bytes1430=statementBytes 1548 (op1430.map lower) ∧ bytes1430.length=60 := by core033_kernel_decide
def op1431 : List WordIR.Op := [.bnot 1548]
def bytes1431 : Bytes := ("    let r0000060d: u32 = !r0000060c;\n" : String).toByteArray.data.toList
theorem checked1431 : bytes1431=statementBytes 1549 (op1431.map lower) ∧ bytes1431.length=37 := by core033_kernel_decide
def op1432 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1432 : Bytes := ("    let r0000060e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1432 : bytes1432=statementBytes 1550 (op1432.map lower) ∧ bytes1432.length=41 := by core033_kernel_decide
def op1433 : List WordIR.Op := [.band 1549 1550]
def bytes1433 : Bytes := ("    let r0000060f: u32 = r0000060d & r0000060e;\n" : String).toByteArray.data.toList
theorem checked1433 : bytes1433=statementBytes 1551 (op1433.map lower) ∧ bytes1433.length=48 := by core033_kernel_decide
def op1434 : List WordIR.Op := [.bxor 1545 1551]
def bytes1434 : Bytes := ("    let r00000610: u32 = r00000609 ^ r0000060f;\n" : String).toByteArray.data.toList
theorem checked1434 : bytes1434=statementBytes 1552 (op1434.map lower) ∧ bytes1434.length=48 := by core033_kernel_decide
def op1435 : List WordIR.Op := [.bnot 1288]
def bytes1435 : Bytes := ("    let r00000611: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1435 : bytes1435=statementBytes 1553 (op1435.map lower) ∧ bytes1435.length=37 := by core033_kernel_decide
def op1436 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1436 : Bytes := ("    let r00000612: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1436 : bytes1436=statementBytes 1554 (op1436.map lower) ∧ bytes1436.length=41 := by core033_kernel_decide
def op1437 : List WordIR.Op := [.badd 1553 1554]
def bytes1437 : Bytes := ("    let r00000613: u32 = r00000611.wrapping_add(r00000612);\n" : String).toByteArray.data.toList
theorem checked1437 : bytes1437=statementBytes 1555 (op1437.map lower) ∧ bytes1437.length=60 := by core033_kernel_decide
def op1438 : List WordIR.Op := [.band 1555 1023]
def bytes1438 : Bytes := ("    let r00000614: u32 = r00000613 & r000003ff;\n" : String).toByteArray.data.toList
theorem checked1438 : bytes1438=statementBytes 1556 (op1438.map lower) ∧ bytes1438.length=48 := by core033_kernel_decide
def op1439 : List WordIR.Op := [.bnot 1288]
def bytes1439 : Bytes := ("    let r00000615: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1439 : bytes1439=statementBytes 1557 (op1439.map lower) ∧ bytes1439.length=37 := by core033_kernel_decide
def op1440 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1440 : Bytes := ("    let r00000616: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1440 : bytes1440=statementBytes 1558 (op1440.map lower) ∧ bytes1440.length=41 := by core033_kernel_decide
def op1441 : List WordIR.Op := [.badd 1557 1558]
def bytes1441 : Bytes := ("    let r00000617: u32 = r00000615.wrapping_add(r00000616);\n" : String).toByteArray.data.toList
theorem checked1441 : bytes1441=statementBytes 1559 (op1441.map lower) ∧ bytes1441.length=60 := by core033_kernel_decide
def op1442 : List WordIR.Op := [.bnot 1559]
def bytes1442 : Bytes := ("    let r00000618: u32 = !r00000617;\n" : String).toByteArray.data.toList
theorem checked1442 : bytes1442=statementBytes 1560 (op1442.map lower) ∧ bytes1442.length=37 := by core033_kernel_decide
def op1443 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1443 : Bytes := ("    let r00000619: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1443 : bytes1443=statementBytes 1561 (op1443.map lower) ∧ bytes1443.length=41 := by core033_kernel_decide
def op1444 : List WordIR.Op := [.band 1560 1561]
def bytes1444 : Bytes := ("    let r0000061a: u32 = r00000618 & r00000619;\n" : String).toByteArray.data.toList
theorem checked1444 : bytes1444=statementBytes 1562 (op1444.map lower) ∧ bytes1444.length=48 := by core033_kernel_decide
def op1445 : List WordIR.Op := [.bxor 1556 1562]
def bytes1445 : Bytes := ("    let r0000061b: u32 = r00000614 ^ r0000061a;\n" : String).toByteArray.data.toList
theorem checked1445 : bytes1445=statementBytes 1563 (op1445.map lower) ∧ bytes1445.length=48 := by core033_kernel_decide
def op1446 : List WordIR.Op := [.bnot 1288]
def bytes1446 : Bytes := ("    let r0000061c: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1446 : bytes1446=statementBytes 1564 (op1446.map lower) ∧ bytes1446.length=37 := by core033_kernel_decide
def op1447 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1447 : Bytes := ("    let r0000061d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1447 : bytes1447=statementBytes 1565 (op1447.map lower) ∧ bytes1447.length=41 := by core033_kernel_decide
def op1448 : List WordIR.Op := [.badd 1564 1565]
def bytes1448 : Bytes := ("    let r0000061e: u32 = r0000061c.wrapping_add(r0000061d);\n" : String).toByteArray.data.toList
theorem checked1448 : bytes1448=statementBytes 1566 (op1448.map lower) ∧ bytes1448.length=60 := by core033_kernel_decide
def op1449 : List WordIR.Op := [.band 1566 1033]
def bytes1449 : Bytes := ("    let r0000061f: u32 = r0000061e & r00000409;\n" : String).toByteArray.data.toList
theorem checked1449 : bytes1449=statementBytes 1567 (op1449.map lower) ∧ bytes1449.length=48 := by core033_kernel_decide
def op1450 : List WordIR.Op := [.bnot 1288]
def bytes1450 : Bytes := ("    let r00000620: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1450 : bytes1450=statementBytes 1568 (op1450.map lower) ∧ bytes1450.length=37 := by core033_kernel_decide
def op1451 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1451 : Bytes := ("    let r00000621: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1451 : bytes1451=statementBytes 1569 (op1451.map lower) ∧ bytes1451.length=41 := by core033_kernel_decide
def op1452 : List WordIR.Op := [.badd 1568 1569]
def bytes1452 : Bytes := ("    let r00000622: u32 = r00000620.wrapping_add(r00000621);\n" : String).toByteArray.data.toList
theorem checked1452 : bytes1452=statementBytes 1570 (op1452.map lower) ∧ bytes1452.length=60 := by core033_kernel_decide
def op1453 : List WordIR.Op := [.bnot 1570]
def bytes1453 : Bytes := ("    let r00000623: u32 = !r00000622;\n" : String).toByteArray.data.toList
theorem checked1453 : bytes1453=statementBytes 1571 (op1453.map lower) ∧ bytes1453.length=37 := by core033_kernel_decide
def op1454 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1454 : Bytes := ("    let r00000624: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1454 : bytes1454=statementBytes 1572 (op1454.map lower) ∧ bytes1454.length=41 := by core033_kernel_decide
def op1455 : List WordIR.Op := [.band 1571 1572]
def bytes1455 : Bytes := ("    let r00000625: u32 = r00000623 & r00000624;\n" : String).toByteArray.data.toList
theorem checked1455 : bytes1455=statementBytes 1573 (op1455.map lower) ∧ bytes1455.length=48 := by core033_kernel_decide
def op1456 : List WordIR.Op := [.bxor 1567 1573]
def bytes1456 : Bytes := ("    let r00000626: u32 = r0000061f ^ r00000625;\n" : String).toByteArray.data.toList
theorem checked1456 : bytes1456=statementBytes 1574 (op1456.map lower) ∧ bytes1456.length=48 := by core033_kernel_decide
def op1457 : List WordIR.Op := [.bnot 1288]
def bytes1457 : Bytes := ("    let r00000627: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1457 : bytes1457=statementBytes 1575 (op1457.map lower) ∧ bytes1457.length=37 := by core033_kernel_decide
def op1458 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1458 : Bytes := ("    let r00000628: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1458 : bytes1458=statementBytes 1576 (op1458.map lower) ∧ bytes1458.length=41 := by core033_kernel_decide
def op1459 : List WordIR.Op := [.badd 1575 1576]
def bytes1459 : Bytes := ("    let r00000629: u32 = r00000627.wrapping_add(r00000628);\n" : String).toByteArray.data.toList
theorem checked1459 : bytes1459=statementBytes 1577 (op1459.map lower) ∧ bytes1459.length=60 := by core033_kernel_decide
def op1460 : List WordIR.Op := [.band 1577 1043]
def bytes1460 : Bytes := ("    let r0000062a: u32 = r00000629 & r00000413;\n" : String).toByteArray.data.toList
theorem checked1460 : bytes1460=statementBytes 1578 (op1460.map lower) ∧ bytes1460.length=48 := by core033_kernel_decide
def op1461 : List WordIR.Op := [.bnot 1288]
def bytes1461 : Bytes := ("    let r0000062b: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1461 : bytes1461=statementBytes 1579 (op1461.map lower) ∧ bytes1461.length=37 := by core033_kernel_decide
def op1462 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1462 : Bytes := ("    let r0000062c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1462 : bytes1462=statementBytes 1580 (op1462.map lower) ∧ bytes1462.length=41 := by core033_kernel_decide
def op1463 : List WordIR.Op := [.badd 1579 1580]
def bytes1463 : Bytes := ("    let r0000062d: u32 = r0000062b.wrapping_add(r0000062c);\n" : String).toByteArray.data.toList
theorem checked1463 : bytes1463=statementBytes 1581 (op1463.map lower) ∧ bytes1463.length=60 := by core033_kernel_decide
def op1464 : List WordIR.Op := [.bnot 1581]
def bytes1464 : Bytes := ("    let r0000062e: u32 = !r0000062d;\n" : String).toByteArray.data.toList
theorem checked1464 : bytes1464=statementBytes 1582 (op1464.map lower) ∧ bytes1464.length=37 := by core033_kernel_decide
def op1465 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1465 : Bytes := ("    let r0000062f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1465 : bytes1465=statementBytes 1583 (op1465.map lower) ∧ bytes1465.length=41 := by core033_kernel_decide
def op1466 : List WordIR.Op := [.band 1582 1583]
def bytes1466 : Bytes := ("    let r00000630: u32 = r0000062e & r0000062f;\n" : String).toByteArray.data.toList
theorem checked1466 : bytes1466=statementBytes 1584 (op1466.map lower) ∧ bytes1466.length=48 := by core033_kernel_decide
def op1467 : List WordIR.Op := [.bxor 1578 1584]
def bytes1467 : Bytes := ("    let r00000631: u32 = r0000062a ^ r00000630;\n" : String).toByteArray.data.toList
theorem checked1467 : bytes1467=statementBytes 1585 (op1467.map lower) ∧ bytes1467.length=48 := by core033_kernel_decide
def op1468 : List WordIR.Op := [.bnot 1288]
def bytes1468 : Bytes := ("    let r00000632: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1468 : bytes1468=statementBytes 1586 (op1468.map lower) ∧ bytes1468.length=37 := by core033_kernel_decide
def op1469 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1469 : Bytes := ("    let r00000633: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1469 : bytes1469=statementBytes 1587 (op1469.map lower) ∧ bytes1469.length=41 := by core033_kernel_decide
def op1470 : List WordIR.Op := [.badd 1586 1587]
def bytes1470 : Bytes := ("    let r00000634: u32 = r00000632.wrapping_add(r00000633);\n" : String).toByteArray.data.toList
theorem checked1470 : bytes1470=statementBytes 1588 (op1470.map lower) ∧ bytes1470.length=60 := by core033_kernel_decide
def op1471 : List WordIR.Op := [.band 1588 1063]
def bytes1471 : Bytes := ("    let r00000635: u32 = r00000634 & r00000427;\n" : String).toByteArray.data.toList
theorem checked1471 : bytes1471=statementBytes 1589 (op1471.map lower) ∧ bytes1471.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1408,op1409,op1410,op1411,op1412,op1413,op1414,op1415,op1416,op1417,op1418,op1419,op1420,op1421,op1422,op1423,op1424,op1425,op1426,op1427,op1428,op1429,op1430,op1431,op1432,op1433,op1434,op1435,op1436,op1437,op1438,op1439,op1440,op1441,op1442,op1443,op1444,op1445,op1446,op1447,op1448,op1449,op1450,op1451,op1452,op1453,op1454,op1455,op1456,op1457,op1458,op1459,op1460,op1461,op1462,op1463,op1464,op1465,op1466,op1467,op1468,op1469,op1470,op1471]
def chunks : List Bytes := [bytes1408,bytes1409,bytes1410,bytes1411,bytes1412,bytes1413,bytes1414,bytes1415,bytes1416,bytes1417,bytes1418,bytes1419,bytes1420,bytes1421,bytes1422,bytes1423,bytes1424,bytes1425,bytes1426,bytes1427,bytes1428,bytes1429,bytes1430,bytes1431,bytes1432,bytes1433,bytes1434,bytes1435,bytes1436,bytes1437,bytes1438,bytes1439,bytes1440,bytes1441,bytes1442,bytes1443,bytes1444,bytes1445,bytes1446,bytes1447,bytes1448,bytes1449,bytes1450,bytes1451,bytes1452,bytes1453,bytes1454,bytes1455,bytes1456,bytes1457,bytes1458,bytes1459,bytes1460,bytes1461,bytes1462,bytes1463,bytes1464,bytes1465,bytes1466,bytes1467,bytes1468,bytes1469,bytes1470,bytes1471]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1526 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1408.1 (.cons _ _ _ _ _ checked1409.1 (.cons _ _ _ _ _ checked1410.1 (.cons _ _ _ _ _ checked1411.1 (.cons _ _ _ _ _ checked1412.1 (.cons _ _ _ _ _ checked1413.1 (.cons _ _ _ _ _ checked1414.1 (.cons _ _ _ _ _ checked1415.1 (.cons _ _ _ _ _ checked1416.1 (.cons _ _ _ _ _ checked1417.1 (.cons _ _ _ _ _ checked1418.1 (.cons _ _ _ _ _ checked1419.1 (.cons _ _ _ _ _ checked1420.1 (.cons _ _ _ _ _ checked1421.1 (.cons _ _ _ _ _ checked1422.1 (.cons _ _ _ _ _ checked1423.1 (.cons _ _ _ _ _ checked1424.1 (.cons _ _ _ _ _ checked1425.1 (.cons _ _ _ _ _ checked1426.1 (.cons _ _ _ _ _ checked1427.1 (.cons _ _ _ _ _ checked1428.1 (.cons _ _ _ _ _ checked1429.1 (.cons _ _ _ _ _ checked1430.1 (.cons _ _ _ _ _ checked1431.1 (.cons _ _ _ _ _ checked1432.1 (.cons _ _ _ _ _ checked1433.1 (.cons _ _ _ _ _ checked1434.1 (.cons _ _ _ _ _ checked1435.1 (.cons _ _ _ _ _ checked1436.1 (.cons _ _ _ _ _ checked1437.1 (.cons _ _ _ _ _ checked1438.1 (.cons _ _ _ _ _ checked1439.1 (.cons _ _ _ _ _ checked1440.1 (.cons _ _ _ _ _ checked1441.1 (.cons _ _ _ _ _ checked1442.1 (.cons _ _ _ _ _ checked1443.1 (.cons _ _ _ _ _ checked1444.1 (.cons _ _ _ _ _ checked1445.1 (.cons _ _ _ _ _ checked1446.1 (.cons _ _ _ _ _ checked1447.1 (.cons _ _ _ _ _ checked1448.1 (.cons _ _ _ _ _ checked1449.1 (.cons _ _ _ _ _ checked1450.1 (.cons _ _ _ _ _ checked1451.1 (.cons _ _ _ _ _ checked1452.1 (.cons _ _ _ _ _ checked1453.1 (.cons _ _ _ _ _ checked1454.1 (.cons _ _ _ _ _ checked1455.1 (.cons _ _ _ _ _ checked1456.1 (.cons _ _ _ _ _ checked1457.1 (.cons _ _ _ _ _ checked1458.1 (.cons _ _ _ _ _ checked1459.1 (.cons _ _ _ _ _ checked1460.1 (.cons _ _ _ _ _ checked1461.1 (.cons _ _ _ _ _ checked1462.1 (.cons _ _ _ _ _ checked1463.1 (.cons _ _ _ _ _ checked1464.1 (.cons _ _ _ _ _ checked1465.1 (.cons _ _ _ _ _ checked1466.1 (.cons _ _ _ _ _ checked1467.1 (.cons _ _ _ _ _ checked1468.1 (.cons _ _ _ _ _ checked1469.1 (.cons _ _ _ _ _ checked1470.1 (.cons _ _ _ _ _ checked1471.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1526 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2910 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1408.2,checked1409.2,checked1410.2,checked1411.2,checked1412.2,checked1413.2,checked1414.2,checked1415.2,checked1416.2,checked1417.2,checked1418.2,checked1419.2,checked1420.2,checked1421.2,checked1422.2,checked1423.2,checked1424.2,checked1425.2,checked1426.2,checked1427.2,checked1428.2,checked1429.2,checked1430.2,checked1431.2,checked1432.2,checked1433.2,checked1434.2,checked1435.2,checked1436.2,checked1437.2,checked1438.2,checked1439.2,checked1440.2,checked1441.2,checked1442.2,checked1443.2,checked1444.2,checked1445.2,checked1446.2,checked1447.2,checked1448.2,checked1449.2,checked1450.2,checked1451.2,checked1452.2,checked1453.2,checked1454.2,checked1455.2,checked1456.2,checked1457.2,checked1458.2,checked1459.2,checked1460.2,checked1461.2,checked1462.2,checked1463.2,checked1464.2,checked1465.2,checked1466.2,checked1467.2,checked1468.2,checked1469.2,checked1470.2,checked1471.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup22
