import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup23
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1472 : List WordIR.Op := [.badd 1566 1567]
def bytes1472 : Bytes := ("    let r00000620: u32 = r0000061e.wrapping_add(r0000061f);\n" : String).toByteArray.data.toList
theorem checked1472 : bytes1472=statementBytes 1568 (op1472.map lower) ∧ bytes1472.length=60 := by core033_kernel_decide
def op1473 : List WordIR.Op := [.band 1568 792]
def bytes1473 : Bytes := ("    let r00000621: u32 = r00000620 & r00000318;\n" : String).toByteArray.data.toList
theorem checked1473 : bytes1473=statementBytes 1569 (op1473.map lower) ∧ bytes1473.length=48 := by core033_kernel_decide
def op1474 : List WordIR.Op := [.bnot 1395]
def bytes1474 : Bytes := ("    let r00000622: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1474 : bytes1474=statementBytes 1570 (op1474.map lower) ∧ bytes1474.length=37 := by core033_kernel_decide
def op1475 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1475 : Bytes := ("    let r00000623: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1475 : bytes1475=statementBytes 1571 (op1475.map lower) ∧ bytes1475.length=41 := by core033_kernel_decide
def op1476 : List WordIR.Op := [.badd 1570 1571]
def bytes1476 : Bytes := ("    let r00000624: u32 = r00000622.wrapping_add(r00000623);\n" : String).toByteArray.data.toList
theorem checked1476 : bytes1476=statementBytes 1572 (op1476.map lower) ∧ bytes1476.length=60 := by core033_kernel_decide
def op1477 : List WordIR.Op := [.bnot 1572]
def bytes1477 : Bytes := ("    let r00000625: u32 = !r00000624;\n" : String).toByteArray.data.toList
theorem checked1477 : bytes1477=statementBytes 1573 (op1477.map lower) ∧ bytes1477.length=37 := by core033_kernel_decide
def op1478 : List WordIR.Op := [.band 1573 880]
def bytes1478 : Bytes := ("    let r00000626: u32 = r00000625 & r00000370;\n" : String).toByteArray.data.toList
theorem checked1478 : bytes1478=statementBytes 1574 (op1478.map lower) ∧ bytes1478.length=48 := by core033_kernel_decide
def op1479 : List WordIR.Op := [.bxor 1569 1574]
def bytes1479 : Bytes := ("    let r00000627: u32 = r00000621 ^ r00000626;\n" : String).toByteArray.data.toList
theorem checked1479 : bytes1479=statementBytes 1575 (op1479.map lower) ∧ bytes1479.length=48 := by core033_kernel_decide
def op1480 : List WordIR.Op := [.bnot 1395]
def bytes1480 : Bytes := ("    let r00000628: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1480 : bytes1480=statementBytes 1576 (op1480.map lower) ∧ bytes1480.length=37 := by core033_kernel_decide
def op1481 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1481 : Bytes := ("    let r00000629: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1481 : bytes1481=statementBytes 1577 (op1481.map lower) ∧ bytes1481.length=41 := by core033_kernel_decide
def op1482 : List WordIR.Op := [.badd 1576 1577]
def bytes1482 : Bytes := ("    let r0000062a: u32 = r00000628.wrapping_add(r00000629);\n" : String).toByteArray.data.toList
theorem checked1482 : bytes1482=statementBytes 1578 (op1482.map lower) ∧ bytes1482.length=60 := by core033_kernel_decide
def op1483 : List WordIR.Op := [.band 1578 803]
def bytes1483 : Bytes := ("    let r0000062b: u32 = r0000062a & r00000323;\n" : String).toByteArray.data.toList
theorem checked1483 : bytes1483=statementBytes 1579 (op1483.map lower) ∧ bytes1483.length=48 := by core033_kernel_decide
def op1484 : List WordIR.Op := [.bnot 1395]
def bytes1484 : Bytes := ("    let r0000062c: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1484 : bytes1484=statementBytes 1580 (op1484.map lower) ∧ bytes1484.length=37 := by core033_kernel_decide
def op1485 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1485 : Bytes := ("    let r0000062d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1485 : bytes1485=statementBytes 1581 (op1485.map lower) ∧ bytes1485.length=41 := by core033_kernel_decide
def op1486 : List WordIR.Op := [.badd 1580 1581]
def bytes1486 : Bytes := ("    let r0000062e: u32 = r0000062c.wrapping_add(r0000062d);\n" : String).toByteArray.data.toList
theorem checked1486 : bytes1486=statementBytes 1582 (op1486.map lower) ∧ bytes1486.length=60 := by core033_kernel_decide
def op1487 : List WordIR.Op := [.bnot 1582]
def bytes1487 : Bytes := ("    let r0000062f: u32 = !r0000062e;\n" : String).toByteArray.data.toList
theorem checked1487 : bytes1487=statementBytes 1583 (op1487.map lower) ∧ bytes1487.length=37 := by core033_kernel_decide
def op1488 : List WordIR.Op := [.band 1583 891]
def bytes1488 : Bytes := ("    let r00000630: u32 = r0000062f & r0000037b;\n" : String).toByteArray.data.toList
theorem checked1488 : bytes1488=statementBytes 1584 (op1488.map lower) ∧ bytes1488.length=48 := by core033_kernel_decide
def op1489 : List WordIR.Op := [.bxor 1579 1584]
def bytes1489 : Bytes := ("    let r00000631: u32 = r0000062b ^ r00000630;\n" : String).toByteArray.data.toList
theorem checked1489 : bytes1489=statementBytes 1585 (op1489.map lower) ∧ bytes1489.length=48 := by core033_kernel_decide
def op1490 : List WordIR.Op := [.bnot 1395]
def bytes1490 : Bytes := ("    let r00000632: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1490 : bytes1490=statementBytes 1586 (op1490.map lower) ∧ bytes1490.length=37 := by core033_kernel_decide
def op1491 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1491 : Bytes := ("    let r00000633: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1491 : bytes1491=statementBytes 1587 (op1491.map lower) ∧ bytes1491.length=41 := by core033_kernel_decide
def op1492 : List WordIR.Op := [.badd 1586 1587]
def bytes1492 : Bytes := ("    let r00000634: u32 = r00000632.wrapping_add(r00000633);\n" : String).toByteArray.data.toList
theorem checked1492 : bytes1492=statementBytes 1588 (op1492.map lower) ∧ bytes1492.length=60 := by core033_kernel_decide
def op1493 : List WordIR.Op := [.band 1588 814]
def bytes1493 : Bytes := ("    let r00000635: u32 = r00000634 & r0000032e;\n" : String).toByteArray.data.toList
theorem checked1493 : bytes1493=statementBytes 1589 (op1493.map lower) ∧ bytes1493.length=48 := by core033_kernel_decide
def op1494 : List WordIR.Op := [.bnot 1395]
def bytes1494 : Bytes := ("    let r00000636: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1494 : bytes1494=statementBytes 1590 (op1494.map lower) ∧ bytes1494.length=37 := by core033_kernel_decide
def op1495 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1495 : Bytes := ("    let r00000637: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1495 : bytes1495=statementBytes 1591 (op1495.map lower) ∧ bytes1495.length=41 := by core033_kernel_decide
def op1496 : List WordIR.Op := [.badd 1590 1591]
def bytes1496 : Bytes := ("    let r00000638: u32 = r00000636.wrapping_add(r00000637);\n" : String).toByteArray.data.toList
theorem checked1496 : bytes1496=statementBytes 1592 (op1496.map lower) ∧ bytes1496.length=60 := by core033_kernel_decide
def op1497 : List WordIR.Op := [.bnot 1592]
def bytes1497 : Bytes := ("    let r00000639: u32 = !r00000638;\n" : String).toByteArray.data.toList
theorem checked1497 : bytes1497=statementBytes 1593 (op1497.map lower) ∧ bytes1497.length=37 := by core033_kernel_decide
def op1498 : List WordIR.Op := [.band 1593 902]
def bytes1498 : Bytes := ("    let r0000063a: u32 = r00000639 & r00000386;\n" : String).toByteArray.data.toList
theorem checked1498 : bytes1498=statementBytes 1594 (op1498.map lower) ∧ bytes1498.length=48 := by core033_kernel_decide
def op1499 : List WordIR.Op := [.bxor 1589 1594]
def bytes1499 : Bytes := ("    let r0000063b: u32 = r00000635 ^ r0000063a;\n" : String).toByteArray.data.toList
theorem checked1499 : bytes1499=statementBytes 1595 (op1499.map lower) ∧ bytes1499.length=48 := by core033_kernel_decide
def op1500 : List WordIR.Op := [.bnot 1395]
def bytes1500 : Bytes := ("    let r0000063c: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1500 : bytes1500=statementBytes 1596 (op1500.map lower) ∧ bytes1500.length=37 := by core033_kernel_decide
def op1501 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1501 : Bytes := ("    let r0000063d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1501 : bytes1501=statementBytes 1597 (op1501.map lower) ∧ bytes1501.length=41 := by core033_kernel_decide
def op1502 : List WordIR.Op := [.badd 1596 1597]
def bytes1502 : Bytes := ("    let r0000063e: u32 = r0000063c.wrapping_add(r0000063d);\n" : String).toByteArray.data.toList
theorem checked1502 : bytes1502=statementBytes 1598 (op1502.map lower) ∧ bytes1502.length=60 := by core033_kernel_decide
def op1503 : List WordIR.Op := [.band 1598 913]
def bytes1503 : Bytes := ("    let r0000063f: u32 = r0000063e & r00000391;\n" : String).toByteArray.data.toList
theorem checked1503 : bytes1503=statementBytes 1599 (op1503.map lower) ∧ bytes1503.length=48 := by core033_kernel_decide
def op1504 : List WordIR.Op := [.bnot 1395]
def bytes1504 : Bytes := ("    let r00000640: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1504 : bytes1504=statementBytes 1600 (op1504.map lower) ∧ bytes1504.length=37 := by core033_kernel_decide
def op1505 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1505 : Bytes := ("    let r00000641: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1505 : bytes1505=statementBytes 1601 (op1505.map lower) ∧ bytes1505.length=41 := by core033_kernel_decide
def op1506 : List WordIR.Op := [.badd 1600 1601]
def bytes1506 : Bytes := ("    let r00000642: u32 = r00000640.wrapping_add(r00000641);\n" : String).toByteArray.data.toList
theorem checked1506 : bytes1506=statementBytes 1602 (op1506.map lower) ∧ bytes1506.length=60 := by core033_kernel_decide
def op1507 : List WordIR.Op := [.bnot 1602]
def bytes1507 : Bytes := ("    let r00000643: u32 = !r00000642;\n" : String).toByteArray.data.toList
theorem checked1507 : bytes1507=statementBytes 1603 (op1507.map lower) ∧ bytes1507.length=37 := by core033_kernel_decide
def op1508 : List WordIR.Op := [.band 1603 935]
def bytes1508 : Bytes := ("    let r00000644: u32 = r00000643 & r000003a7;\n" : String).toByteArray.data.toList
theorem checked1508 : bytes1508=statementBytes 1604 (op1508.map lower) ∧ bytes1508.length=48 := by core033_kernel_decide
def op1509 : List WordIR.Op := [.bxor 1599 1604]
def bytes1509 : Bytes := ("    let r00000645: u32 = r0000063f ^ r00000644;\n" : String).toByteArray.data.toList
theorem checked1509 : bytes1509=statementBytes 1605 (op1509.map lower) ∧ bytes1509.length=48 := by core033_kernel_decide
def op1510 : List WordIR.Op := [.bnot 1395]
def bytes1510 : Bytes := ("    let r00000646: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1510 : bytes1510=statementBytes 1606 (op1510.map lower) ∧ bytes1510.length=37 := by core033_kernel_decide
def op1511 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1511 : Bytes := ("    let r00000647: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1511 : bytes1511=statementBytes 1607 (op1511.map lower) ∧ bytes1511.length=41 := by core033_kernel_decide
def op1512 : List WordIR.Op := [.badd 1606 1607]
def bytes1512 : Bytes := ("    let r00000648: u32 = r00000646.wrapping_add(r00000647);\n" : String).toByteArray.data.toList
theorem checked1512 : bytes1512=statementBytes 1608 (op1512.map lower) ∧ bytes1512.length=60 := by core033_kernel_decide
def op1513 : List WordIR.Op := [.band 1608 924]
def bytes1513 : Bytes := ("    let r00000649: u32 = r00000648 & r0000039c;\n" : String).toByteArray.data.toList
theorem checked1513 : bytes1513=statementBytes 1609 (op1513.map lower) ∧ bytes1513.length=48 := by core033_kernel_decide
def op1514 : List WordIR.Op := [.bnot 1395]
def bytes1514 : Bytes := ("    let r0000064a: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1514 : bytes1514=statementBytes 1610 (op1514.map lower) ∧ bytes1514.length=37 := by core033_kernel_decide
def op1515 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1515 : Bytes := ("    let r0000064b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1515 : bytes1515=statementBytes 1611 (op1515.map lower) ∧ bytes1515.length=41 := by core033_kernel_decide
def op1516 : List WordIR.Op := [.badd 1610 1611]
def bytes1516 : Bytes := ("    let r0000064c: u32 = r0000064a.wrapping_add(r0000064b);\n" : String).toByteArray.data.toList
theorem checked1516 : bytes1516=statementBytes 1612 (op1516.map lower) ∧ bytes1516.length=60 := by core033_kernel_decide
def op1517 : List WordIR.Op := [.bnot 1612]
def bytes1517 : Bytes := ("    let r0000064d: u32 = !r0000064c;\n" : String).toByteArray.data.toList
theorem checked1517 : bytes1517=statementBytes 1613 (op1517.map lower) ∧ bytes1517.length=37 := by core033_kernel_decide
def op1518 : List WordIR.Op := [.band 1613 946]
def bytes1518 : Bytes := ("    let r0000064e: u32 = r0000064d & r000003b2;\n" : String).toByteArray.data.toList
theorem checked1518 : bytes1518=statementBytes 1614 (op1518.map lower) ∧ bytes1518.length=48 := by core033_kernel_decide
def op1519 : List WordIR.Op := [.bxor 1609 1614]
def bytes1519 : Bytes := ("    let r0000064f: u32 = r00000649 ^ r0000064e;\n" : String).toByteArray.data.toList
theorem checked1519 : bytes1519=statementBytes 1615 (op1519.map lower) ∧ bytes1519.length=48 := by core033_kernel_decide
def op1520 : List WordIR.Op := [.bnot 1395]
def bytes1520 : Bytes := ("    let r00000650: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1520 : bytes1520=statementBytes 1616 (op1520.map lower) ∧ bytes1520.length=37 := by core033_kernel_decide
def op1521 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1521 : Bytes := ("    let r00000651: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1521 : bytes1521=statementBytes 1617 (op1521.map lower) ∧ bytes1521.length=41 := by core033_kernel_decide
def op1522 : List WordIR.Op := [.badd 1616 1617]
def bytes1522 : Bytes := ("    let r00000652: u32 = r00000650.wrapping_add(r00000651);\n" : String).toByteArray.data.toList
theorem checked1522 : bytes1522=statementBytes 1618 (op1522.map lower) ∧ bytes1522.length=60 := by core033_kernel_decide
def op1523 : List WordIR.Op := [.band 1618 957]
def bytes1523 : Bytes := ("    let r00000653: u32 = r00000652 & r000003bd;\n" : String).toByteArray.data.toList
theorem checked1523 : bytes1523=statementBytes 1619 (op1523.map lower) ∧ bytes1523.length=48 := by core033_kernel_decide
def op1524 : List WordIR.Op := [.bnot 1395]
def bytes1524 : Bytes := ("    let r00000654: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1524 : bytes1524=statementBytes 1620 (op1524.map lower) ∧ bytes1524.length=37 := by core033_kernel_decide
def op1525 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1525 : Bytes := ("    let r00000655: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1525 : bytes1525=statementBytes 1621 (op1525.map lower) ∧ bytes1525.length=41 := by core033_kernel_decide
def op1526 : List WordIR.Op := [.badd 1620 1621]
def bytes1526 : Bytes := ("    let r00000656: u32 = r00000654.wrapping_add(r00000655);\n" : String).toByteArray.data.toList
theorem checked1526 : bytes1526=statementBytes 1622 (op1526.map lower) ∧ bytes1526.length=60 := by core033_kernel_decide
def op1527 : List WordIR.Op := [.bnot 1622]
def bytes1527 : Bytes := ("    let r00000657: u32 = !r00000656;\n" : String).toByteArray.data.toList
theorem checked1527 : bytes1527=statementBytes 1623 (op1527.map lower) ∧ bytes1527.length=37 := by core033_kernel_decide
def op1528 : List WordIR.Op := [.band 1623 968]
def bytes1528 : Bytes := ("    let r00000658: u32 = r00000657 & r000003c8;\n" : String).toByteArray.data.toList
theorem checked1528 : bytes1528=statementBytes 1624 (op1528.map lower) ∧ bytes1528.length=48 := by core033_kernel_decide
def op1529 : List WordIR.Op := [.bxor 1619 1624]
def bytes1529 : Bytes := ("    let r00000659: u32 = r00000653 ^ r00000658;\n" : String).toByteArray.data.toList
theorem checked1529 : bytes1529=statementBytes 1625 (op1529.map lower) ∧ bytes1529.length=48 := by core033_kernel_decide
def op1530 : List WordIR.Op := [.bnot 1395]
def bytes1530 : Bytes := ("    let r0000065a: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1530 : bytes1530=statementBytes 1626 (op1530.map lower) ∧ bytes1530.length=37 := by core033_kernel_decide
def op1531 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1531 : Bytes := ("    let r0000065b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1531 : bytes1531=statementBytes 1627 (op1531.map lower) ∧ bytes1531.length=41 := by core033_kernel_decide
def op1532 : List WordIR.Op := [.badd 1626 1627]
def bytes1532 : Bytes := ("    let r0000065c: u32 = r0000065a.wrapping_add(r0000065b);\n" : String).toByteArray.data.toList
theorem checked1532 : bytes1532=statementBytes 1628 (op1532.map lower) ∧ bytes1532.length=60 := by core033_kernel_decide
def op1533 : List WordIR.Op := [.band 1628 979]
def bytes1533 : Bytes := ("    let r0000065d: u32 = r0000065c & r000003d3;\n" : String).toByteArray.data.toList
theorem checked1533 : bytes1533=statementBytes 1629 (op1533.map lower) ∧ bytes1533.length=48 := by core033_kernel_decide
def op1534 : List WordIR.Op := [.bnot 1395]
def bytes1534 : Bytes := ("    let r0000065e: u32 = !r00000573;\n" : String).toByteArray.data.toList
theorem checked1534 : bytes1534=statementBytes 1630 (op1534.map lower) ∧ bytes1534.length=37 := by core033_kernel_decide
def op1535 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1535 : Bytes := ("    let r0000065f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1535 : bytes1535=statementBytes 1631 (op1535.map lower) ∧ bytes1535.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1472,op1473,op1474,op1475,op1476,op1477,op1478,op1479,op1480,op1481,op1482,op1483,op1484,op1485,op1486,op1487,op1488,op1489,op1490,op1491,op1492,op1493,op1494,op1495,op1496,op1497,op1498,op1499,op1500,op1501,op1502,op1503,op1504,op1505,op1506,op1507,op1508,op1509,op1510,op1511,op1512,op1513,op1514,op1515,op1516,op1517,op1518,op1519,op1520,op1521,op1522,op1523,op1524,op1525,op1526,op1527,op1528,op1529,op1530,op1531,op1532,op1533,op1534,op1535]
def chunks : List Bytes := [bytes1472,bytes1473,bytes1474,bytes1475,bytes1476,bytes1477,bytes1478,bytes1479,bytes1480,bytes1481,bytes1482,bytes1483,bytes1484,bytes1485,bytes1486,bytes1487,bytes1488,bytes1489,bytes1490,bytes1491,bytes1492,bytes1493,bytes1494,bytes1495,bytes1496,bytes1497,bytes1498,bytes1499,bytes1500,bytes1501,bytes1502,bytes1503,bytes1504,bytes1505,bytes1506,bytes1507,bytes1508,bytes1509,bytes1510,bytes1511,bytes1512,bytes1513,bytes1514,bytes1515,bytes1516,bytes1517,bytes1518,bytes1519,bytes1520,bytes1521,bytes1522,bytes1523,bytes1524,bytes1525,bytes1526,bytes1527,bytes1528,bytes1529,bytes1530,bytes1531,bytes1532,bytes1533,bytes1534,bytes1535]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1568 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1472.1 (.cons _ _ _ _ _ checked1473.1 (.cons _ _ _ _ _ checked1474.1 (.cons _ _ _ _ _ checked1475.1 (.cons _ _ _ _ _ checked1476.1 (.cons _ _ _ _ _ checked1477.1 (.cons _ _ _ _ _ checked1478.1 (.cons _ _ _ _ _ checked1479.1 (.cons _ _ _ _ _ checked1480.1 (.cons _ _ _ _ _ checked1481.1 (.cons _ _ _ _ _ checked1482.1 (.cons _ _ _ _ _ checked1483.1 (.cons _ _ _ _ _ checked1484.1 (.cons _ _ _ _ _ checked1485.1 (.cons _ _ _ _ _ checked1486.1 (.cons _ _ _ _ _ checked1487.1 (.cons _ _ _ _ _ checked1488.1 (.cons _ _ _ _ _ checked1489.1 (.cons _ _ _ _ _ checked1490.1 (.cons _ _ _ _ _ checked1491.1 (.cons _ _ _ _ _ checked1492.1 (.cons _ _ _ _ _ checked1493.1 (.cons _ _ _ _ _ checked1494.1 (.cons _ _ _ _ _ checked1495.1 (.cons _ _ _ _ _ checked1496.1 (.cons _ _ _ _ _ checked1497.1 (.cons _ _ _ _ _ checked1498.1 (.cons _ _ _ _ _ checked1499.1 (.cons _ _ _ _ _ checked1500.1 (.cons _ _ _ _ _ checked1501.1 (.cons _ _ _ _ _ checked1502.1 (.cons _ _ _ _ _ checked1503.1 (.cons _ _ _ _ _ checked1504.1 (.cons _ _ _ _ _ checked1505.1 (.cons _ _ _ _ _ checked1506.1 (.cons _ _ _ _ _ checked1507.1 (.cons _ _ _ _ _ checked1508.1 (.cons _ _ _ _ _ checked1509.1 (.cons _ _ _ _ _ checked1510.1 (.cons _ _ _ _ _ checked1511.1 (.cons _ _ _ _ _ checked1512.1 (.cons _ _ _ _ _ checked1513.1 (.cons _ _ _ _ _ checked1514.1 (.cons _ _ _ _ _ checked1515.1 (.cons _ _ _ _ _ checked1516.1 (.cons _ _ _ _ _ checked1517.1 (.cons _ _ _ _ _ checked1518.1 (.cons _ _ _ _ _ checked1519.1 (.cons _ _ _ _ _ checked1520.1 (.cons _ _ _ _ _ checked1521.1 (.cons _ _ _ _ _ checked1522.1 (.cons _ _ _ _ _ checked1523.1 (.cons _ _ _ _ _ checked1524.1 (.cons _ _ _ _ _ checked1525.1 (.cons _ _ _ _ _ checked1526.1 (.cons _ _ _ _ _ checked1527.1 (.cons _ _ _ _ _ checked1528.1 (.cons _ _ _ _ _ checked1529.1 (.cons _ _ _ _ _ checked1530.1 (.cons _ _ _ _ _ checked1531.1 (.cons _ _ _ _ _ checked1532.1 (.cons _ _ _ _ _ checked1533.1 (.cons _ _ _ _ _ checked1534.1 (.cons _ _ _ _ _ checked1535.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1568 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2928 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1472.2,checked1473.2,checked1474.2,checked1475.2,checked1476.2,checked1477.2,checked1478.2,checked1479.2,checked1480.2,checked1481.2,checked1482.2,checked1483.2,checked1484.2,checked1485.2,checked1486.2,checked1487.2,checked1488.2,checked1489.2,checked1490.2,checked1491.2,checked1492.2,checked1493.2,checked1494.2,checked1495.2,checked1496.2,checked1497.2,checked1498.2,checked1499.2,checked1500.2,checked1501.2,checked1502.2,checked1503.2,checked1504.2,checked1505.2,checked1506.2,checked1507.2,checked1508.2,checked1509.2,checked1510.2,checked1511.2,checked1512.2,checked1513.2,checked1514.2,checked1515.2,checked1516.2,checked1517.2,checked1518.2,checked1519.2,checked1520.2,checked1521.2,checked1522.2,checked1523.2,checked1524.2,checked1525.2,checked1526.2,checked1527.2,checked1528.2,checked1529.2,checked1530.2,checked1531.2,checked1532.2,checked1533.2,checked1534.2,checked1535.2]
  decide
end ArtifactPairedPathRoundGroup23
