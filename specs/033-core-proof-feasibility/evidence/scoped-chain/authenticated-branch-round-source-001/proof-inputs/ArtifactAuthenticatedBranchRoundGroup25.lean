import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup25
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1600 : List WordIR.Op := [.bnot 1288]
def bytes1600 : Bytes := ("    let r000006b6: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1600 : bytes1600=statementBytes 1718 (op1600.map lower) ∧ bytes1600.length=37 := by core033_kernel_decide
def op1601 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1601 : Bytes := ("    let r000006b7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1601 : bytes1601=statementBytes 1719 (op1601.map lower) ∧ bytes1601.length=41 := by core033_kernel_decide
def op1602 : List WordIR.Op := [.badd 1718 1719]
def bytes1602 : Bytes := ("    let r000006b8: u32 = r000006b6.wrapping_add(r000006b7);\n" : String).toByteArray.data.toList
theorem checked1602 : bytes1602=statementBytes 1720 (op1602.map lower) ∧ bytes1602.length=60 := by core033_kernel_decide
def op1603 : List WordIR.Op := [.band 1720 1215]
def bytes1603 : Bytes := ("    let r000006b9: u32 = r000006b8 & r000004bf;\n" : String).toByteArray.data.toList
theorem checked1603 : bytes1603=statementBytes 1721 (op1603.map lower) ∧ bytes1603.length=48 := by core033_kernel_decide
def op1604 : List WordIR.Op := [.bnot 1288]
def bytes1604 : Bytes := ("    let r000006ba: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1604 : bytes1604=statementBytes 1722 (op1604.map lower) ∧ bytes1604.length=37 := by core033_kernel_decide
def op1605 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1605 : Bytes := ("    let r000006bb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1605 : bytes1605=statementBytes 1723 (op1605.map lower) ∧ bytes1605.length=41 := by core033_kernel_decide
def op1606 : List WordIR.Op := [.badd 1722 1723]
def bytes1606 : Bytes := ("    let r000006bc: u32 = r000006ba.wrapping_add(r000006bb);\n" : String).toByteArray.data.toList
theorem checked1606 : bytes1606=statementBytes 1724 (op1606.map lower) ∧ bytes1606.length=60 := by core033_kernel_decide
def op1607 : List WordIR.Op := [.bnot 1724]
def bytes1607 : Bytes := ("    let r000006bd: u32 = !r000006bc;\n" : String).toByteArray.data.toList
theorem checked1607 : bytes1607=statementBytes 1725 (op1607.map lower) ∧ bytes1607.length=37 := by core033_kernel_decide
def op1608 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1608 : Bytes := ("    let r000006be: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1608 : bytes1608=statementBytes 1726 (op1608.map lower) ∧ bytes1608.length=41 := by core033_kernel_decide
def op1609 : List WordIR.Op := [.band 1725 1726]
def bytes1609 : Bytes := ("    let r000006bf: u32 = r000006bd & r000006be;\n" : String).toByteArray.data.toList
theorem checked1609 : bytes1609=statementBytes 1727 (op1609.map lower) ∧ bytes1609.length=48 := by core033_kernel_decide
def op1610 : List WordIR.Op := [.bxor 1721 1727]
def bytes1610 : Bytes := ("    let r000006c0: u32 = r000006b9 ^ r000006bf;\n" : String).toByteArray.data.toList
theorem checked1610 : bytes1610=statementBytes 1728 (op1610.map lower) ∧ bytes1610.length=48 := by core033_kernel_decide
def op1611 : List WordIR.Op := [.bnot 1288]
def bytes1611 : Bytes := ("    let r000006c1: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1611 : bytes1611=statementBytes 1729 (op1611.map lower) ∧ bytes1611.length=37 := by core033_kernel_decide
def op1612 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1612 : Bytes := ("    let r000006c2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1612 : bytes1612=statementBytes 1730 (op1612.map lower) ∧ bytes1612.length=41 := by core033_kernel_decide
def op1613 : List WordIR.Op := [.badd 1729 1730]
def bytes1613 : Bytes := ("    let r000006c3: u32 = r000006c1.wrapping_add(r000006c2);\n" : String).toByteArray.data.toList
theorem checked1613 : bytes1613=statementBytes 1731 (op1613.map lower) ∧ bytes1613.length=60 := by core033_kernel_decide
def op1614 : List WordIR.Op := [.band 1731 1225]
def bytes1614 : Bytes := ("    let r000006c4: u32 = r000006c3 & r000004c9;\n" : String).toByteArray.data.toList
theorem checked1614 : bytes1614=statementBytes 1732 (op1614.map lower) ∧ bytes1614.length=48 := by core033_kernel_decide
def op1615 : List WordIR.Op := [.bnot 1288]
def bytes1615 : Bytes := ("    let r000006c5: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1615 : bytes1615=statementBytes 1733 (op1615.map lower) ∧ bytes1615.length=37 := by core033_kernel_decide
def op1616 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1616 : Bytes := ("    let r000006c6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1616 : bytes1616=statementBytes 1734 (op1616.map lower) ∧ bytes1616.length=41 := by core033_kernel_decide
def op1617 : List WordIR.Op := [.badd 1733 1734]
def bytes1617 : Bytes := ("    let r000006c7: u32 = r000006c5.wrapping_add(r000006c6);\n" : String).toByteArray.data.toList
theorem checked1617 : bytes1617=statementBytes 1735 (op1617.map lower) ∧ bytes1617.length=60 := by core033_kernel_decide
def op1618 : List WordIR.Op := [.bnot 1735]
def bytes1618 : Bytes := ("    let r000006c8: u32 = !r000006c7;\n" : String).toByteArray.data.toList
theorem checked1618 : bytes1618=statementBytes 1736 (op1618.map lower) ∧ bytes1618.length=37 := by core033_kernel_decide
def op1619 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1619 : Bytes := ("    let r000006c9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1619 : bytes1619=statementBytes 1737 (op1619.map lower) ∧ bytes1619.length=41 := by core033_kernel_decide
def op1620 : List WordIR.Op := [.band 1736 1737]
def bytes1620 : Bytes := ("    let r000006ca: u32 = r000006c8 & r000006c9;\n" : String).toByteArray.data.toList
theorem checked1620 : bytes1620=statementBytes 1738 (op1620.map lower) ∧ bytes1620.length=48 := by core033_kernel_decide
def op1621 : List WordIR.Op := [.bxor 1732 1738]
def bytes1621 : Bytes := ("    let r000006cb: u32 = r000006c4 ^ r000006ca;\n" : String).toByteArray.data.toList
theorem checked1621 : bytes1621=statementBytes 1739 (op1621.map lower) ∧ bytes1621.length=48 := by core033_kernel_decide
def op1622 : List WordIR.Op := [.bnot 1288]
def bytes1622 : Bytes := ("    let r000006cc: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1622 : bytes1622=statementBytes 1740 (op1622.map lower) ∧ bytes1622.length=37 := by core033_kernel_decide
def op1623 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1623 : Bytes := ("    let r000006cd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1623 : bytes1623=statementBytes 1741 (op1623.map lower) ∧ bytes1623.length=41 := by core033_kernel_decide
def op1624 : List WordIR.Op := [.badd 1740 1741]
def bytes1624 : Bytes := ("    let r000006ce: u32 = r000006cc.wrapping_add(r000006cd);\n" : String).toByteArray.data.toList
theorem checked1624 : bytes1624=statementBytes 1742 (op1624.map lower) ∧ bytes1624.length=60 := by core033_kernel_decide
def op1625 : List WordIR.Op := [.band 1742 1235]
def bytes1625 : Bytes := ("    let r000006cf: u32 = r000006ce & r000004d3;\n" : String).toByteArray.data.toList
theorem checked1625 : bytes1625=statementBytes 1743 (op1625.map lower) ∧ bytes1625.length=48 := by core033_kernel_decide
def op1626 : List WordIR.Op := [.bnot 1288]
def bytes1626 : Bytes := ("    let r000006d0: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1626 : bytes1626=statementBytes 1744 (op1626.map lower) ∧ bytes1626.length=37 := by core033_kernel_decide
def op1627 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1627 : Bytes := ("    let r000006d1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1627 : bytes1627=statementBytes 1745 (op1627.map lower) ∧ bytes1627.length=41 := by core033_kernel_decide
def op1628 : List WordIR.Op := [.badd 1744 1745]
def bytes1628 : Bytes := ("    let r000006d2: u32 = r000006d0.wrapping_add(r000006d1);\n" : String).toByteArray.data.toList
theorem checked1628 : bytes1628=statementBytes 1746 (op1628.map lower) ∧ bytes1628.length=60 := by core033_kernel_decide
def op1629 : List WordIR.Op := [.bnot 1746]
def bytes1629 : Bytes := ("    let r000006d3: u32 = !r000006d2;\n" : String).toByteArray.data.toList
theorem checked1629 : bytes1629=statementBytes 1747 (op1629.map lower) ∧ bytes1629.length=37 := by core033_kernel_decide
def op1630 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1630 : Bytes := ("    let r000006d4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1630 : bytes1630=statementBytes 1748 (op1630.map lower) ∧ bytes1630.length=41 := by core033_kernel_decide
def op1631 : List WordIR.Op := [.band 1747 1748]
def bytes1631 : Bytes := ("    let r000006d5: u32 = r000006d3 & r000006d4;\n" : String).toByteArray.data.toList
theorem checked1631 : bytes1631=statementBytes 1749 (op1631.map lower) ∧ bytes1631.length=48 := by core033_kernel_decide
def op1632 : List WordIR.Op := [.bxor 1743 1749]
def bytes1632 : Bytes := ("    let r000006d6: u32 = r000006cf ^ r000006d5;\n" : String).toByteArray.data.toList
theorem checked1632 : bytes1632=statementBytes 1750 (op1632.map lower) ∧ bytes1632.length=48 := by core033_kernel_decide
def op1633 : List WordIR.Op := [.bnot 1288]
def bytes1633 : Bytes := ("    let r000006d7: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1633 : bytes1633=statementBytes 1751 (op1633.map lower) ∧ bytes1633.length=37 := by core033_kernel_decide
def op1634 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1634 : Bytes := ("    let r000006d8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1634 : bytes1634=statementBytes 1752 (op1634.map lower) ∧ bytes1634.length=41 := by core033_kernel_decide
def op1635 : List WordIR.Op := [.badd 1751 1752]
def bytes1635 : Bytes := ("    let r000006d9: u32 = r000006d7.wrapping_add(r000006d8);\n" : String).toByteArray.data.toList
theorem checked1635 : bytes1635=statementBytes 1753 (op1635.map lower) ∧ bytes1635.length=60 := by core033_kernel_decide
def op1636 : List WordIR.Op := [.band 1753 1245]
def bytes1636 : Bytes := ("    let r000006da: u32 = r000006d9 & r000004dd;\n" : String).toByteArray.data.toList
theorem checked1636 : bytes1636=statementBytes 1754 (op1636.map lower) ∧ bytes1636.length=48 := by core033_kernel_decide
def op1637 : List WordIR.Op := [.bnot 1288]
def bytes1637 : Bytes := ("    let r000006db: u32 = !r00000508;\n" : String).toByteArray.data.toList
theorem checked1637 : bytes1637=statementBytes 1755 (op1637.map lower) ∧ bytes1637.length=37 := by core033_kernel_decide
def op1638 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1638 : Bytes := ("    let r000006dc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1638 : bytes1638=statementBytes 1756 (op1638.map lower) ∧ bytes1638.length=41 := by core033_kernel_decide
def op1639 : List WordIR.Op := [.badd 1755 1756]
def bytes1639 : Bytes := ("    let r000006dd: u32 = r000006db.wrapping_add(r000006dc);\n" : String).toByteArray.data.toList
theorem checked1639 : bytes1639=statementBytes 1757 (op1639.map lower) ∧ bytes1639.length=60 := by core033_kernel_decide
def op1640 : List WordIR.Op := [.bnot 1757]
def bytes1640 : Bytes := ("    let r000006de: u32 = !r000006dd;\n" : String).toByteArray.data.toList
theorem checked1640 : bytes1640=statementBytes 1758 (op1640.map lower) ∧ bytes1640.length=37 := by core033_kernel_decide
def op1641 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1641 : Bytes := ("    let r000006df: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1641 : bytes1641=statementBytes 1759 (op1641.map lower) ∧ bytes1641.length=41 := by core033_kernel_decide
def op1642 : List WordIR.Op := [.band 1758 1759]
def bytes1642 : Bytes := ("    let r000006e0: u32 = r000006de & r000006df;\n" : String).toByteArray.data.toList
theorem checked1642 : bytes1642=statementBytes 1760 (op1642.map lower) ∧ bytes1642.length=48 := by core033_kernel_decide
def op1643 : List WordIR.Op := [.bxor 1754 1760]
def bytes1643 : Bytes := ("    let r000006e1: u32 = r000006da ^ r000006e0;\n" : String).toByteArray.data.toList
theorem checked1643 : bytes1643=statementBytes 1761 (op1643.map lower) ∧ bytes1643.length=48 := by core033_kernel_decide
def op1644 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1644 : Bytes := ("    let r000006e2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1644 : bytes1644=statementBytes 1762 (op1644.map lower) ∧ bytes1644.length=41 := by core033_kernel_decide
def op1645 : List WordIR.Op := [.badd 1321 1762]
def bytes1645 : Bytes := ("    let r000006e3: u32 = r00000529.wrapping_add(r000006e2);\n" : String).toByteArray.data.toList
theorem checked1645 : bytes1645=statementBytes 1763 (op1645.map lower) ∧ bytes1645.length=60 := by core033_kernel_decide
def op1646 : List WordIR.Op := [.bnot 1321]
def bytes1646 : Bytes := ("    let r000006e4: u32 = !r00000529;\n" : String).toByteArray.data.toList
theorem checked1646 : bytes1646=statementBytes 1764 (op1646.map lower) ∧ bytes1646.length=37 := by core033_kernel_decide
def op1647 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1647 : Bytes := ("    let r000006e5: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1647 : bytes1647=statementBytes 1765 (op1647.map lower) ∧ bytes1647.length=41 := by core033_kernel_decide
def op1648 : List WordIR.Op := [.band 1764 1765]
def bytes1648 : Bytes := ("    let r000006e6: u32 = r000006e4 & r000006e5;\n" : String).toByteArray.data.toList
theorem checked1648 : bytes1648=statementBytes 1766 (op1648.map lower) ∧ bytes1648.length=48 := by core033_kernel_decide
def op1649 : List WordIR.Op := [.shr 1321 8]
def bytes1649 : Bytes := ("    let r000006e7: u32 = r00000529 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1649 : bytes1649=statementBytes 1767 (op1649.map lower) ∧ bytes1649.length=54 := by core033_kernel_decide
def op1650 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1650 : Bytes := ("    let r000006e8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1650 : bytes1650=statementBytes 1768 (op1650.map lower) ∧ bytes1650.length=41 := by core033_kernel_decide
def op1651 : List WordIR.Op := [.bnot 1768]
def bytes1651 : Bytes := ("    let r000006e9: u32 = !r000006e8;\n" : String).toByteArray.data.toList
theorem checked1651 : bytes1651=statementBytes 1769 (op1651.map lower) ∧ bytes1651.length=37 := by core033_kernel_decide
def op1652 : List WordIR.Op := [.band 1767 1769]
def bytes1652 : Bytes := ("    let r000006ea: u32 = r000006e7 & r000006e9;\n" : String).toByteArray.data.toList
theorem checked1652 : bytes1652=statementBytes 1770 (op1652.map lower) ∧ bytes1652.length=48 := by core033_kernel_decide
def op1653 : List WordIR.Op := [.shr 1321 8]
def bytes1653 : Bytes := ("    let r000006eb: u32 = r00000529 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1653 : bytes1653=statementBytes 1771 (op1653.map lower) ∧ bytes1653.length=54 := by core033_kernel_decide
def op1654 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1654 : Bytes := ("    let r000006ec: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1654 : bytes1654=statementBytes 1772 (op1654.map lower) ∧ bytes1654.length=41 := by core033_kernel_decide
def op1655 : List WordIR.Op := [.bnot 1772]
def bytes1655 : Bytes := ("    let r000006ed: u32 = !r000006ec;\n" : String).toByteArray.data.toList
theorem checked1655 : bytes1655=statementBytes 1773 (op1655.map lower) ∧ bytes1655.length=37 := by core033_kernel_decide
def op1656 : List WordIR.Op := [.bxor 1771 1773]
def bytes1656 : Bytes := ("    let r000006ee: u32 = r000006eb ^ r000006ed;\n" : String).toByteArray.data.toList
theorem checked1656 : bytes1656=statementBytes 1774 (op1656.map lower) ∧ bytes1656.length=48 := by core033_kernel_decide
def op1657 : List WordIR.Op := [.shr 1321 8]
def bytes1657 : Bytes := ("    let r000006ef: u32 = r00000529 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1657 : bytes1657=statementBytes 1775 (op1657.map lower) ∧ bytes1657.length=54 := by core033_kernel_decide
def op1658 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1658 : Bytes := ("    let r000006f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1658 : bytes1658=statementBytes 1776 (op1658.map lower) ∧ bytes1658.length=41 := by core033_kernel_decide
def op1659 : List WordIR.Op := [.bnot 1776]
def bytes1659 : Bytes := ("    let r000006f1: u32 = !r000006f0;\n" : String).toByteArray.data.toList
theorem checked1659 : bytes1659=statementBytes 1777 (op1659.map lower) ∧ bytes1659.length=37 := by core033_kernel_decide
def op1660 : List WordIR.Op := [.badd 1775 1777]
def bytes1660 : Bytes := ("    let r000006f2: u32 = r000006ef.wrapping_add(r000006f1);\n" : String).toByteArray.data.toList
theorem checked1660 : bytes1660=statementBytes 1778 (op1660.map lower) ∧ bytes1660.length=60 := by core033_kernel_decide
def op1661 : List WordIR.Op := [.bnot 1778]
def bytes1661 : Bytes := ("    let r000006f3: u32 = !r000006f2;\n" : String).toByteArray.data.toList
theorem checked1661 : bytes1661=statementBytes 1779 (op1661.map lower) ∧ bytes1661.length=37 := by core033_kernel_decide
def op1662 : List WordIR.Op := [.band 1774 1779]
def bytes1662 : Bytes := ("    let r000006f4: u32 = r000006ee & r000006f3;\n" : String).toByteArray.data.toList
theorem checked1662 : bytes1662=statementBytes 1780 (op1662.map lower) ∧ bytes1662.length=48 := by core033_kernel_decide
def op1663 : List WordIR.Op := [.bxor 1770 1780]
def bytes1663 : Bytes := ("    let r000006f5: u32 = r000006ea ^ r000006f4;\n" : String).toByteArray.data.toList
theorem checked1663 : bytes1663=statementBytes 1781 (op1663.map lower) ∧ bytes1663.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1600,op1601,op1602,op1603,op1604,op1605,op1606,op1607,op1608,op1609,op1610,op1611,op1612,op1613,op1614,op1615,op1616,op1617,op1618,op1619,op1620,op1621,op1622,op1623,op1624,op1625,op1626,op1627,op1628,op1629,op1630,op1631,op1632,op1633,op1634,op1635,op1636,op1637,op1638,op1639,op1640,op1641,op1642,op1643,op1644,op1645,op1646,op1647,op1648,op1649,op1650,op1651,op1652,op1653,op1654,op1655,op1656,op1657,op1658,op1659,op1660,op1661,op1662,op1663]
def chunks : List Bytes := [bytes1600,bytes1601,bytes1602,bytes1603,bytes1604,bytes1605,bytes1606,bytes1607,bytes1608,bytes1609,bytes1610,bytes1611,bytes1612,bytes1613,bytes1614,bytes1615,bytes1616,bytes1617,bytes1618,bytes1619,bytes1620,bytes1621,bytes1622,bytes1623,bytes1624,bytes1625,bytes1626,bytes1627,bytes1628,bytes1629,bytes1630,bytes1631,bytes1632,bytes1633,bytes1634,bytes1635,bytes1636,bytes1637,bytes1638,bytes1639,bytes1640,bytes1641,bytes1642,bytes1643,bytes1644,bytes1645,bytes1646,bytes1647,bytes1648,bytes1649,bytes1650,bytes1651,bytes1652,bytes1653,bytes1654,bytes1655,bytes1656,bytes1657,bytes1658,bytes1659,bytes1660,bytes1661,bytes1662,bytes1663]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1718 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1600.1 (.cons _ _ _ _ _ checked1601.1 (.cons _ _ _ _ _ checked1602.1 (.cons _ _ _ _ _ checked1603.1 (.cons _ _ _ _ _ checked1604.1 (.cons _ _ _ _ _ checked1605.1 (.cons _ _ _ _ _ checked1606.1 (.cons _ _ _ _ _ checked1607.1 (.cons _ _ _ _ _ checked1608.1 (.cons _ _ _ _ _ checked1609.1 (.cons _ _ _ _ _ checked1610.1 (.cons _ _ _ _ _ checked1611.1 (.cons _ _ _ _ _ checked1612.1 (.cons _ _ _ _ _ checked1613.1 (.cons _ _ _ _ _ checked1614.1 (.cons _ _ _ _ _ checked1615.1 (.cons _ _ _ _ _ checked1616.1 (.cons _ _ _ _ _ checked1617.1 (.cons _ _ _ _ _ checked1618.1 (.cons _ _ _ _ _ checked1619.1 (.cons _ _ _ _ _ checked1620.1 (.cons _ _ _ _ _ checked1621.1 (.cons _ _ _ _ _ checked1622.1 (.cons _ _ _ _ _ checked1623.1 (.cons _ _ _ _ _ checked1624.1 (.cons _ _ _ _ _ checked1625.1 (.cons _ _ _ _ _ checked1626.1 (.cons _ _ _ _ _ checked1627.1 (.cons _ _ _ _ _ checked1628.1 (.cons _ _ _ _ _ checked1629.1 (.cons _ _ _ _ _ checked1630.1 (.cons _ _ _ _ _ checked1631.1 (.cons _ _ _ _ _ checked1632.1 (.cons _ _ _ _ _ checked1633.1 (.cons _ _ _ _ _ checked1634.1 (.cons _ _ _ _ _ checked1635.1 (.cons _ _ _ _ _ checked1636.1 (.cons _ _ _ _ _ checked1637.1 (.cons _ _ _ _ _ checked1638.1 (.cons _ _ _ _ _ checked1639.1 (.cons _ _ _ _ _ checked1640.1 (.cons _ _ _ _ _ checked1641.1 (.cons _ _ _ _ _ checked1642.1 (.cons _ _ _ _ _ checked1643.1 (.cons _ _ _ _ _ checked1644.1 (.cons _ _ _ _ _ checked1645.1 (.cons _ _ _ _ _ checked1646.1 (.cons _ _ _ _ _ checked1647.1 (.cons _ _ _ _ _ checked1648.1 (.cons _ _ _ _ _ checked1649.1 (.cons _ _ _ _ _ checked1650.1 (.cons _ _ _ _ _ checked1651.1 (.cons _ _ _ _ _ checked1652.1 (.cons _ _ _ _ _ checked1653.1 (.cons _ _ _ _ _ checked1654.1 (.cons _ _ _ _ _ checked1655.1 (.cons _ _ _ _ _ checked1656.1 (.cons _ _ _ _ _ checked1657.1 (.cons _ _ _ _ _ checked1658.1 (.cons _ _ _ _ _ checked1659.1 (.cons _ _ _ _ _ checked1660.1 (.cons _ _ _ _ _ checked1661.1 (.cons _ _ _ _ _ checked1662.1 (.cons _ _ _ _ _ checked1663.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1718 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2904 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1600.2,checked1601.2,checked1602.2,checked1603.2,checked1604.2,checked1605.2,checked1606.2,checked1607.2,checked1608.2,checked1609.2,checked1610.2,checked1611.2,checked1612.2,checked1613.2,checked1614.2,checked1615.2,checked1616.2,checked1617.2,checked1618.2,checked1619.2,checked1620.2,checked1621.2,checked1622.2,checked1623.2,checked1624.2,checked1625.2,checked1626.2,checked1627.2,checked1628.2,checked1629.2,checked1630.2,checked1631.2,checked1632.2,checked1633.2,checked1634.2,checked1635.2,checked1636.2,checked1637.2,checked1638.2,checked1639.2,checked1640.2,checked1641.2,checked1642.2,checked1643.2,checked1644.2,checked1645.2,checked1646.2,checked1647.2,checked1648.2,checked1649.2,checked1650.2,checked1651.2,checked1652.2,checked1653.2,checked1654.2,checked1655.2,checked1656.2,checked1657.2,checked1658.2,checked1659.2,checked1660.2,checked1661.2,checked1662.2,checked1663.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup25
