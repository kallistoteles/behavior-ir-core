import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup24
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1536 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1536 : Bytes := ("    let r0000062b: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1536 : bytes1536=statementBytes 1579 (op1536.map lower) ∧ bytes1536.length=41 := by core033_kernel_decide
def op1537 : List WordIR.Op := [.band 1578 1579]
def bytes1537 : Bytes := ("    let r0000062c: u32 = r0000062a & r0000062b;\n" : String).toByteArray.data.toList
theorem checked1537 : bytes1537=statementBytes 1580 (op1537.map lower) ∧ bytes1537.length=48 := by core033_kernel_decide
def op1538 : List WordIR.Op := [.shr 975 8]
def bytes1538 : Bytes := ("    let r0000062d: u32 = r000003cf >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1538 : bytes1538=statementBytes 1581 (op1538.map lower) ∧ bytes1538.length=54 := by core033_kernel_decide
def op1539 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1539 : Bytes := ("    let r0000062e: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1539 : bytes1539=statementBytes 1582 (op1539.map lower) ∧ bytes1539.length=41 := by core033_kernel_decide
def op1540 : List WordIR.Op := [.band 1581 1582]
def bytes1540 : Bytes := ("    let r0000062f: u32 = r0000062d & r0000062e;\n" : String).toByteArray.data.toList
theorem checked1540 : bytes1540=statementBytes 1583 (op1540.map lower) ∧ bytes1540.length=48 := by core033_kernel_decide
def op1541 : List WordIR.Op := [.shr 975 16]
def bytes1541 : Bytes := ("    let r00000630: u32 = r000003cf >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1541 : bytes1541=statementBytes 1584 (op1541.map lower) ∧ bytes1541.length=54 := by core033_kernel_decide
def op1542 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1542 : Bytes := ("    let r00000631: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1542 : bytes1542=statementBytes 1585 (op1542.map lower) ∧ bytes1542.length=41 := by core033_kernel_decide
def op1543 : List WordIR.Op := [.band 1584 1585]
def bytes1543 : Bytes := ("    let r00000632: u32 = r00000630 & r00000631;\n" : String).toByteArray.data.toList
theorem checked1543 : bytes1543=statementBytes 1586 (op1543.map lower) ∧ bytes1543.length=48 := by core033_kernel_decide
def op1544 : List WordIR.Op := [.shr 975 24]
def bytes1544 : Bytes := ("    let r00000633: u32 = r000003cf >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1544 : bytes1544=statementBytes 1587 (op1544.map lower) ∧ bytes1544.length=54 := by core033_kernel_decide
def op1545 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1545 : Bytes := ("    let r00000634: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1545 : bytes1545=statementBytes 1588 (op1545.map lower) ∧ bytes1545.length=41 := by core033_kernel_decide
def op1546 : List WordIR.Op := [.band 1587 1588]
def bytes1546 : Bytes := ("    let r00000635: u32 = r00000633 & r00000634;\n" : String).toByteArray.data.toList
theorem checked1546 : bytes1546=statementBytes 1589 (op1546.map lower) ∧ bytes1546.length=48 := by core033_kernel_decide
def op1547 : List WordIR.Op := [.shr 1085 0]
def bytes1547 : Bytes := ("    let r00000636: u32 = r0000043d >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1547 : bytes1547=statementBytes 1590 (op1547.map lower) ∧ bytes1547.length=54 := by core033_kernel_decide
def op1548 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1548 : Bytes := ("    let r00000637: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1548 : bytes1548=statementBytes 1591 (op1548.map lower) ∧ bytes1548.length=41 := by core033_kernel_decide
def op1549 : List WordIR.Op := [.band 1590 1591]
def bytes1549 : Bytes := ("    let r00000638: u32 = r00000636 & r00000637;\n" : String).toByteArray.data.toList
theorem checked1549 : bytes1549=statementBytes 1592 (op1549.map lower) ∧ bytes1549.length=48 := by core033_kernel_decide
def op1550 : List WordIR.Op := [.shr 1085 8]
def bytes1550 : Bytes := ("    let r00000639: u32 = r0000043d >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1550 : bytes1550=statementBytes 1593 (op1550.map lower) ∧ bytes1550.length=54 := by core033_kernel_decide
def op1551 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1551 : Bytes := ("    let r0000063a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1551 : bytes1551=statementBytes 1594 (op1551.map lower) ∧ bytes1551.length=41 := by core033_kernel_decide
def op1552 : List WordIR.Op := [.band 1593 1594]
def bytes1552 : Bytes := ("    let r0000063b: u32 = r00000639 & r0000063a;\n" : String).toByteArray.data.toList
theorem checked1552 : bytes1552=statementBytes 1595 (op1552.map lower) ∧ bytes1552.length=48 := by core033_kernel_decide
def op1553 : List WordIR.Op := [.shr 1085 16]
def bytes1553 : Bytes := ("    let r0000063c: u32 = r0000043d >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1553 : bytes1553=statementBytes 1596 (op1553.map lower) ∧ bytes1553.length=54 := by core033_kernel_decide
def op1554 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1554 : Bytes := ("    let r0000063d: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1554 : bytes1554=statementBytes 1597 (op1554.map lower) ∧ bytes1554.length=41 := by core033_kernel_decide
def op1555 : List WordIR.Op := [.band 1596 1597]
def bytes1555 : Bytes := ("    let r0000063e: u32 = r0000063c & r0000063d;\n" : String).toByteArray.data.toList
theorem checked1555 : bytes1555=statementBytes 1598 (op1555.map lower) ∧ bytes1555.length=48 := by core033_kernel_decide
def op1556 : List WordIR.Op := [.shr 1085 24]
def bytes1556 : Bytes := ("    let r0000063f: u32 = r0000043d >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1556 : bytes1556=statementBytes 1599 (op1556.map lower) ∧ bytes1556.length=54 := by core033_kernel_decide
def op1557 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1557 : Bytes := ("    let r00000640: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1557 : bytes1557=statementBytes 1600 (op1557.map lower) ∧ bytes1557.length=41 := by core033_kernel_decide
def op1558 : List WordIR.Op := [.band 1599 1600]
def bytes1558 : Bytes := ("    let r00000641: u32 = r0000063f & r00000640;\n" : String).toByteArray.data.toList
theorem checked1558 : bytes1558=statementBytes 1601 (op1558.map lower) ∧ bytes1558.length=48 := by core033_kernel_decide
def op1559 : List WordIR.Op := [.shr 1095 0]
def bytes1559 : Bytes := ("    let r00000642: u32 = r00000447 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1559 : bytes1559=statementBytes 1602 (op1559.map lower) ∧ bytes1559.length=54 := by core033_kernel_decide
def op1560 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1560 : Bytes := ("    let r00000643: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1560 : bytes1560=statementBytes 1603 (op1560.map lower) ∧ bytes1560.length=41 := by core033_kernel_decide
def op1561 : List WordIR.Op := [.band 1602 1603]
def bytes1561 : Bytes := ("    let r00000644: u32 = r00000642 & r00000643;\n" : String).toByteArray.data.toList
theorem checked1561 : bytes1561=statementBytes 1604 (op1561.map lower) ∧ bytes1561.length=48 := by core033_kernel_decide
def op1562 : List WordIR.Op := [.shr 1095 8]
def bytes1562 : Bytes := ("    let r00000645: u32 = r00000447 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1562 : bytes1562=statementBytes 1605 (op1562.map lower) ∧ bytes1562.length=54 := by core033_kernel_decide
def op1563 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1563 : Bytes := ("    let r00000646: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1563 : bytes1563=statementBytes 1606 (op1563.map lower) ∧ bytes1563.length=41 := by core033_kernel_decide
def op1564 : List WordIR.Op := [.band 1605 1606]
def bytes1564 : Bytes := ("    let r00000647: u32 = r00000645 & r00000646;\n" : String).toByteArray.data.toList
theorem checked1564 : bytes1564=statementBytes 1607 (op1564.map lower) ∧ bytes1564.length=48 := by core033_kernel_decide
def op1565 : List WordIR.Op := [.shr 1095 16]
def bytes1565 : Bytes := ("    let r00000648: u32 = r00000447 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1565 : bytes1565=statementBytes 1608 (op1565.map lower) ∧ bytes1565.length=54 := by core033_kernel_decide
def op1566 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1566 : Bytes := ("    let r00000649: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1566 : bytes1566=statementBytes 1609 (op1566.map lower) ∧ bytes1566.length=41 := by core033_kernel_decide
def op1567 : List WordIR.Op := [.band 1608 1609]
def bytes1567 : Bytes := ("    let r0000064a: u32 = r00000648 & r00000649;\n" : String).toByteArray.data.toList
theorem checked1567 : bytes1567=statementBytes 1610 (op1567.map lower) ∧ bytes1567.length=48 := by core033_kernel_decide
def op1568 : List WordIR.Op := [.shr 1095 24]
def bytes1568 : Bytes := ("    let r0000064b: u32 = r00000447 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1568 : bytes1568=statementBytes 1611 (op1568.map lower) ∧ bytes1568.length=54 := by core033_kernel_decide
def op1569 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1569 : Bytes := ("    let r0000064c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1569 : bytes1569=statementBytes 1612 (op1569.map lower) ∧ bytes1569.length=41 := by core033_kernel_decide
def op1570 : List WordIR.Op := [.band 1611 1612]
def bytes1570 : Bytes := ("    let r0000064d: u32 = r0000064b & r0000064c;\n" : String).toByteArray.data.toList
theorem checked1570 : bytes1570=statementBytes 1613 (op1570.map lower) ∧ bytes1570.length=48 := by core033_kernel_decide
def op1571 : List WordIR.Op := [.shr 1134 0]
def bytes1571 : Bytes := ("    let r0000064e: u32 = r0000046e >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1571 : bytes1571=statementBytes 1614 (op1571.map lower) ∧ bytes1571.length=54 := by core033_kernel_decide
def op1572 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1572 : Bytes := ("    let r0000064f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1572 : bytes1572=statementBytes 1615 (op1572.map lower) ∧ bytes1572.length=41 := by core033_kernel_decide
def op1573 : List WordIR.Op := [.band 1614 1615]
def bytes1573 : Bytes := ("    let r00000650: u32 = r0000064e & r0000064f;\n" : String).toByteArray.data.toList
theorem checked1573 : bytes1573=statementBytes 1616 (op1573.map lower) ∧ bytes1573.length=48 := by core033_kernel_decide
def op1574 : List WordIR.Op := [.shr 1134 8]
def bytes1574 : Bytes := ("    let r00000651: u32 = r0000046e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1574 : bytes1574=statementBytes 1617 (op1574.map lower) ∧ bytes1574.length=54 := by core033_kernel_decide
def op1575 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1575 : Bytes := ("    let r00000652: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1575 : bytes1575=statementBytes 1618 (op1575.map lower) ∧ bytes1575.length=41 := by core033_kernel_decide
def op1576 : List WordIR.Op := [.band 1617 1618]
def bytes1576 : Bytes := ("    let r00000653: u32 = r00000651 & r00000652;\n" : String).toByteArray.data.toList
theorem checked1576 : bytes1576=statementBytes 1619 (op1576.map lower) ∧ bytes1576.length=48 := by core033_kernel_decide
def op1577 : List WordIR.Op := [.shr 1134 16]
def bytes1577 : Bytes := ("    let r00000654: u32 = r0000046e >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1577 : bytes1577=statementBytes 1620 (op1577.map lower) ∧ bytes1577.length=54 := by core033_kernel_decide
def op1578 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1578 : Bytes := ("    let r00000655: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1578 : bytes1578=statementBytes 1621 (op1578.map lower) ∧ bytes1578.length=41 := by core033_kernel_decide
def op1579 : List WordIR.Op := [.band 1620 1621]
def bytes1579 : Bytes := ("    let r00000656: u32 = r00000654 & r00000655;\n" : String).toByteArray.data.toList
theorem checked1579 : bytes1579=statementBytes 1622 (op1579.map lower) ∧ bytes1579.length=48 := by core033_kernel_decide
def op1580 : List WordIR.Op := [.shr 1134 24]
def bytes1580 : Bytes := ("    let r00000657: u32 = r0000046e >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1580 : bytes1580=statementBytes 1623 (op1580.map lower) ∧ bytes1580.length=54 := by core033_kernel_decide
def op1581 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1581 : Bytes := ("    let r00000658: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1581 : bytes1581=statementBytes 1624 (op1581.map lower) ∧ bytes1581.length=41 := by core033_kernel_decide
def op1582 : List WordIR.Op := [.band 1623 1624]
def bytes1582 : Bytes := ("    let r00000659: u32 = r00000657 & r00000658;\n" : String).toByteArray.data.toList
theorem checked1582 : bytes1582=statementBytes 1625 (op1582.map lower) ∧ bytes1582.length=48 := by core033_kernel_decide
def op1583 : List WordIR.Op := [.shr 1143 0]
def bytes1583 : Bytes := ("    let r0000065a: u32 = r00000477 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1583 : bytes1583=statementBytes 1626 (op1583.map lower) ∧ bytes1583.length=54 := by core033_kernel_decide
def op1584 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1584 : Bytes := ("    let r0000065b: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1584 : bytes1584=statementBytes 1627 (op1584.map lower) ∧ bytes1584.length=41 := by core033_kernel_decide
def op1585 : List WordIR.Op := [.band 1626 1627]
def bytes1585 : Bytes := ("    let r0000065c: u32 = r0000065a & r0000065b;\n" : String).toByteArray.data.toList
theorem checked1585 : bytes1585=statementBytes 1628 (op1585.map lower) ∧ bytes1585.length=48 := by core033_kernel_decide
def op1586 : List WordIR.Op := [.shr 1143 8]
def bytes1586 : Bytes := ("    let r0000065d: u32 = r00000477 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1586 : bytes1586=statementBytes 1629 (op1586.map lower) ∧ bytes1586.length=54 := by core033_kernel_decide
def op1587 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1587 : Bytes := ("    let r0000065e: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1587 : bytes1587=statementBytes 1630 (op1587.map lower) ∧ bytes1587.length=41 := by core033_kernel_decide
def op1588 : List WordIR.Op := [.band 1629 1630]
def bytes1588 : Bytes := ("    let r0000065f: u32 = r0000065d & r0000065e;\n" : String).toByteArray.data.toList
theorem checked1588 : bytes1588=statementBytes 1631 (op1588.map lower) ∧ bytes1588.length=48 := by core033_kernel_decide
def op1589 : List WordIR.Op := [.shr 1143 16]
def bytes1589 : Bytes := ("    let r00000660: u32 = r00000477 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1589 : bytes1589=statementBytes 1632 (op1589.map lower) ∧ bytes1589.length=54 := by core033_kernel_decide
def op1590 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1590 : Bytes := ("    let r00000661: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1590 : bytes1590=statementBytes 1633 (op1590.map lower) ∧ bytes1590.length=41 := by core033_kernel_decide
def op1591 : List WordIR.Op := [.band 1632 1633]
def bytes1591 : Bytes := ("    let r00000662: u32 = r00000660 & r00000661;\n" : String).toByteArray.data.toList
theorem checked1591 : bytes1591=statementBytes 1634 (op1591.map lower) ∧ bytes1591.length=48 := by core033_kernel_decide
def op1592 : List WordIR.Op := [.shr 1143 24]
def bytes1592 : Bytes := ("    let r00000663: u32 = r00000477 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1592 : bytes1592=statementBytes 1635 (op1592.map lower) ∧ bytes1592.length=54 := by core033_kernel_decide
def op1593 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1593 : Bytes := ("    let r00000664: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1593 : bytes1593=statementBytes 1636 (op1593.map lower) ∧ bytes1593.length=41 := by core033_kernel_decide
def op1594 : List WordIR.Op := [.band 1635 1636]
def bytes1594 : Bytes := ("    let r00000665: u32 = r00000663 & r00000664;\n" : String).toByteArray.data.toList
theorem checked1594 : bytes1594=statementBytes 1637 (op1594.map lower) ∧ bytes1594.length=48 := by core033_kernel_decide
def op1595 : List WordIR.Op := [.shr 1269 0]
def bytes1595 : Bytes := ("    let r00000666: u32 = r000004f5 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1595 : bytes1595=statementBytes 1638 (op1595.map lower) ∧ bytes1595.length=54 := by core033_kernel_decide
def op1596 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1596 : Bytes := ("    let r00000667: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1596 : bytes1596=statementBytes 1639 (op1596.map lower) ∧ bytes1596.length=41 := by core033_kernel_decide
def op1597 : List WordIR.Op := [.band 1638 1639]
def bytes1597 : Bytes := ("    let r00000668: u32 = r00000666 & r00000667;\n" : String).toByteArray.data.toList
theorem checked1597 : bytes1597=statementBytes 1640 (op1597.map lower) ∧ bytes1597.length=48 := by core033_kernel_decide
def op1598 : List WordIR.Op := [.shr 1270 0]
def bytes1598 : Bytes := ("    let r00000669: u32 = r000004f6 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1598 : bytes1598=statementBytes 1641 (op1598.map lower) ∧ bytes1598.length=54 := by core033_kernel_decide
def op1599 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1599 : Bytes := ("    let r0000066a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1599 : bytes1599=statementBytes 1642 (op1599.map lower) ∧ bytes1599.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1536,op1537,op1538,op1539,op1540,op1541,op1542,op1543,op1544,op1545,op1546,op1547,op1548,op1549,op1550,op1551,op1552,op1553,op1554,op1555,op1556,op1557,op1558,op1559,op1560,op1561,op1562,op1563,op1564,op1565,op1566,op1567,op1568,op1569,op1570,op1571,op1572,op1573,op1574,op1575,op1576,op1577,op1578,op1579,op1580,op1581,op1582,op1583,op1584,op1585,op1586,op1587,op1588,op1589,op1590,op1591,op1592,op1593,op1594,op1595,op1596,op1597,op1598,op1599]
def chunks : List Bytes := [bytes1536,bytes1537,bytes1538,bytes1539,bytes1540,bytes1541,bytes1542,bytes1543,bytes1544,bytes1545,bytes1546,bytes1547,bytes1548,bytes1549,bytes1550,bytes1551,bytes1552,bytes1553,bytes1554,bytes1555,bytes1556,bytes1557,bytes1558,bytes1559,bytes1560,bytes1561,bytes1562,bytes1563,bytes1564,bytes1565,bytes1566,bytes1567,bytes1568,bytes1569,bytes1570,bytes1571,bytes1572,bytes1573,bytes1574,bytes1575,bytes1576,bytes1577,bytes1578,bytes1579,bytes1580,bytes1581,bytes1582,bytes1583,bytes1584,bytes1585,bytes1586,bytes1587,bytes1588,bytes1589,bytes1590,bytes1591,bytes1592,bytes1593,bytes1594,bytes1595,bytes1596,bytes1597,bytes1598,bytes1599]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1579 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1536.1 (.cons _ _ _ _ _ checked1537.1 (.cons _ _ _ _ _ checked1538.1 (.cons _ _ _ _ _ checked1539.1 (.cons _ _ _ _ _ checked1540.1 (.cons _ _ _ _ _ checked1541.1 (.cons _ _ _ _ _ checked1542.1 (.cons _ _ _ _ _ checked1543.1 (.cons _ _ _ _ _ checked1544.1 (.cons _ _ _ _ _ checked1545.1 (.cons _ _ _ _ _ checked1546.1 (.cons _ _ _ _ _ checked1547.1 (.cons _ _ _ _ _ checked1548.1 (.cons _ _ _ _ _ checked1549.1 (.cons _ _ _ _ _ checked1550.1 (.cons _ _ _ _ _ checked1551.1 (.cons _ _ _ _ _ checked1552.1 (.cons _ _ _ _ _ checked1553.1 (.cons _ _ _ _ _ checked1554.1 (.cons _ _ _ _ _ checked1555.1 (.cons _ _ _ _ _ checked1556.1 (.cons _ _ _ _ _ checked1557.1 (.cons _ _ _ _ _ checked1558.1 (.cons _ _ _ _ _ checked1559.1 (.cons _ _ _ _ _ checked1560.1 (.cons _ _ _ _ _ checked1561.1 (.cons _ _ _ _ _ checked1562.1 (.cons _ _ _ _ _ checked1563.1 (.cons _ _ _ _ _ checked1564.1 (.cons _ _ _ _ _ checked1565.1 (.cons _ _ _ _ _ checked1566.1 (.cons _ _ _ _ _ checked1567.1 (.cons _ _ _ _ _ checked1568.1 (.cons _ _ _ _ _ checked1569.1 (.cons _ _ _ _ _ checked1570.1 (.cons _ _ _ _ _ checked1571.1 (.cons _ _ _ _ _ checked1572.1 (.cons _ _ _ _ _ checked1573.1 (.cons _ _ _ _ _ checked1574.1 (.cons _ _ _ _ _ checked1575.1 (.cons _ _ _ _ _ checked1576.1 (.cons _ _ _ _ _ checked1577.1 (.cons _ _ _ _ _ checked1578.1 (.cons _ _ _ _ _ checked1579.1 (.cons _ _ _ _ _ checked1580.1 (.cons _ _ _ _ _ checked1581.1 (.cons _ _ _ _ _ checked1582.1 (.cons _ _ _ _ _ checked1583.1 (.cons _ _ _ _ _ checked1584.1 (.cons _ _ _ _ _ checked1585.1 (.cons _ _ _ _ _ checked1586.1 (.cons _ _ _ _ _ checked1587.1 (.cons _ _ _ _ _ checked1588.1 (.cons _ _ _ _ _ checked1589.1 (.cons _ _ _ _ _ checked1590.1 (.cons _ _ _ _ _ checked1591.1 (.cons _ _ _ _ _ checked1592.1 (.cons _ _ _ _ _ checked1593.1 (.cons _ _ _ _ _ checked1594.1 (.cons _ _ _ _ _ checked1595.1 (.cons _ _ _ _ _ checked1596.1 (.cons _ _ _ _ _ checked1597.1 (.cons _ _ _ _ _ checked1598.1 (.cons _ _ _ _ _ checked1599.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1579 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3044 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1536.2,checked1537.2,checked1538.2,checked1539.2,checked1540.2,checked1541.2,checked1542.2,checked1543.2,checked1544.2,checked1545.2,checked1546.2,checked1547.2,checked1548.2,checked1549.2,checked1550.2,checked1551.2,checked1552.2,checked1553.2,checked1554.2,checked1555.2,checked1556.2,checked1557.2,checked1558.2,checked1559.2,checked1560.2,checked1561.2,checked1562.2,checked1563.2,checked1564.2,checked1565.2,checked1566.2,checked1567.2,checked1568.2,checked1569.2,checked1570.2,checked1571.2,checked1572.2,checked1573.2,checked1574.2,checked1575.2,checked1576.2,checked1577.2,checked1578.2,checked1579.2,checked1580.2,checked1581.2,checked1582.2,checked1583.2,checked1584.2,checked1585.2,checked1586.2,checked1587.2,checked1588.2,checked1589.2,checked1590.2,checked1591.2,checked1592.2,checked1593.2,checked1594.2,checked1595.2,checked1596.2,checked1597.2,checked1598.2,checked1599.2]
  decide
end ArtifactPathRoundDispatchGroup24
