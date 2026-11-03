import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup25
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1600 : List WordIR.Op := [.rotr 1657 19]
def bytes1600 : Bytes := ("    let r00000688: u32 = r00000679.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1600 : bytes1600=statementBytes 1672 (op1600.map lower) ∧ bytes1600.length=65 := by core033_kernel_decide
def op1601 : List WordIR.Op := [.bxor 1671 1672]
def bytes1601 : Bytes := ("    let r00000689: u32 = r00000687 ^ r00000688;\n" : String).toByteArray.data.toList
theorem checked1601 : bytes1601=statementBytes 1673 (op1601.map lower) ∧ bytes1601.length=48 := by core033_kernel_decide
def op1602 : List WordIR.Op := [.shr 1657 10]
def bytes1602 : Bytes := ("    let r0000068a: u32 = r00000679 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1602 : bytes1602=statementBytes 1674 (op1602.map lower) ∧ bytes1602.length=54 := by core033_kernel_decide
def op1603 : List WordIR.Op := [.bxor 1673 1674]
def bytes1603 : Bytes := ("    let r0000068b: u32 = r00000689 ^ r0000068a;\n" : String).toByteArray.data.toList
theorem checked1603 : bytes1603=statementBytes 1675 (op1603.map lower) ∧ bytes1603.length=48 := by core033_kernel_decide
def op1604 : List WordIR.Op := [.badd 1675 1592]
def bytes1604 : Bytes := ("    let r0000068c: u32 = r0000068b.wrapping_add(r00000638);\n" : String).toByteArray.data.toList
theorem checked1604 : bytes1604=statementBytes 1676 (op1604.map lower) ∧ bytes1604.length=60 := by core033_kernel_decide
def op1605 : List WordIR.Op := [.rotr 1488 7]
def bytes1605 : Bytes := ("    let r0000068d: u32 = r000005d0.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1605 : bytes1605=statementBytes 1677 (op1605.map lower) ∧ bytes1605.length=65 := by core033_kernel_decide
def op1606 : List WordIR.Op := [.rotr 1488 18]
def bytes1606 : Bytes := ("    let r0000068e: u32 = r000005d0.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1606 : bytes1606=statementBytes 1678 (op1606.map lower) ∧ bytes1606.length=65 := by core033_kernel_decide
def op1607 : List WordIR.Op := [.bxor 1677 1678]
def bytes1607 : Bytes := ("    let r0000068f: u32 = r0000068d ^ r0000068e;\n" : String).toByteArray.data.toList
theorem checked1607 : bytes1607=statementBytes 1679 (op1607.map lower) ∧ bytes1607.length=48 := by core033_kernel_decide
def op1608 : List WordIR.Op := [.shr 1488 3]
def bytes1608 : Bytes := ("    let r00000690: u32 = r000005d0 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1608 : bytes1608=statementBytes 1680 (op1608.map lower) ∧ bytes1608.length=54 := by core033_kernel_decide
def op1609 : List WordIR.Op := [.bxor 1679 1680]
def bytes1609 : Bytes := ("    let r00000691: u32 = r0000068f ^ r00000690;\n" : String).toByteArray.data.toList
theorem checked1609 : bytes1609=statementBytes 1681 (op1609.map lower) ∧ bytes1609.length=48 := by core033_kernel_decide
def op1610 : List WordIR.Op := [.badd 1676 1681]
def bytes1610 : Bytes := ("    let r00000692: u32 = r0000068c.wrapping_add(r00000691);\n" : String).toByteArray.data.toList
theorem checked1610 : bytes1610=statementBytes 1682 (op1610.map lower) ∧ bytes1610.length=60 := by core033_kernel_decide
def op1611 : List WordIR.Op := [.badd 1682 1475]
def bytes1611 : Bytes := ("    let r00000693: u32 = r00000692.wrapping_add(r000005c3);\n" : String).toByteArray.data.toList
theorem checked1611 : bytes1611=statementBytes 1683 (op1611.map lower) ∧ bytes1611.length=60 := by core033_kernel_decide
def op1612 : List WordIR.Op := [.rotr 1670 17]
def bytes1612 : Bytes := ("    let r00000694: u32 = r00000686.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1612 : bytes1612=statementBytes 1684 (op1612.map lower) ∧ bytes1612.length=65 := by core033_kernel_decide
def op1613 : List WordIR.Op := [.rotr 1670 19]
def bytes1613 : Bytes := ("    let r00000695: u32 = r00000686.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1613 : bytes1613=statementBytes 1685 (op1613.map lower) ∧ bytes1613.length=65 := by core033_kernel_decide
def op1614 : List WordIR.Op := [.bxor 1684 1685]
def bytes1614 : Bytes := ("    let r00000696: u32 = r00000694 ^ r00000695;\n" : String).toByteArray.data.toList
theorem checked1614 : bytes1614=statementBytes 1686 (op1614.map lower) ∧ bytes1614.length=48 := by core033_kernel_decide
def op1615 : List WordIR.Op := [.shr 1670 10]
def bytes1615 : Bytes := ("    let r00000697: u32 = r00000686 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1615 : bytes1615=statementBytes 1687 (op1615.map lower) ∧ bytes1615.length=54 := by core033_kernel_decide
def op1616 : List WordIR.Op := [.bxor 1686 1687]
def bytes1616 : Bytes := ("    let r00000698: u32 = r00000696 ^ r00000697;\n" : String).toByteArray.data.toList
theorem checked1616 : bytes1616=statementBytes 1688 (op1616.map lower) ∧ bytes1616.length=48 := by core033_kernel_decide
def op1617 : List WordIR.Op := [.badd 1688 1605]
def bytes1617 : Bytes := ("    let r00000699: u32 = r00000698.wrapping_add(r00000645);\n" : String).toByteArray.data.toList
theorem checked1617 : bytes1617=statementBytes 1689 (op1617.map lower) ∧ bytes1617.length=60 := by core033_kernel_decide
def op1618 : List WordIR.Op := [.rotr 1501 7]
def bytes1618 : Bytes := ("    let r0000069a: u32 = r000005dd.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1618 : bytes1618=statementBytes 1690 (op1618.map lower) ∧ bytes1618.length=65 := by core033_kernel_decide
def op1619 : List WordIR.Op := [.rotr 1501 18]
def bytes1619 : Bytes := ("    let r0000069b: u32 = r000005dd.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1619 : bytes1619=statementBytes 1691 (op1619.map lower) ∧ bytes1619.length=65 := by core033_kernel_decide
def op1620 : List WordIR.Op := [.bxor 1690 1691]
def bytes1620 : Bytes := ("    let r0000069c: u32 = r0000069a ^ r0000069b;\n" : String).toByteArray.data.toList
theorem checked1620 : bytes1620=statementBytes 1692 (op1620.map lower) ∧ bytes1620.length=48 := by core033_kernel_decide
def op1621 : List WordIR.Op := [.shr 1501 3]
def bytes1621 : Bytes := ("    let r0000069d: u32 = r000005dd >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1621 : bytes1621=statementBytes 1693 (op1621.map lower) ∧ bytes1621.length=54 := by core033_kernel_decide
def op1622 : List WordIR.Op := [.bxor 1692 1693]
def bytes1622 : Bytes := ("    let r0000069e: u32 = r0000069c ^ r0000069d;\n" : String).toByteArray.data.toList
theorem checked1622 : bytes1622=statementBytes 1694 (op1622.map lower) ∧ bytes1622.length=48 := by core033_kernel_decide
def op1623 : List WordIR.Op := [.badd 1689 1694]
def bytes1623 : Bytes := ("    let r0000069f: u32 = r00000699.wrapping_add(r0000069e);\n" : String).toByteArray.data.toList
theorem checked1623 : bytes1623=statementBytes 1695 (op1623.map lower) ∧ bytes1623.length=60 := by core033_kernel_decide
def op1624 : List WordIR.Op := [.badd 1695 1488]
def bytes1624 : Bytes := ("    let r000006a0: u32 = r0000069f.wrapping_add(r000005d0);\n" : String).toByteArray.data.toList
theorem checked1624 : bytes1624=statementBytes 1696 (op1624.map lower) ∧ bytes1624.length=60 := by core033_kernel_decide
def op1625 : List WordIR.Op := [.rotr 1683 17]
def bytes1625 : Bytes := ("    let r000006a1: u32 = r00000693.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1625 : bytes1625=statementBytes 1697 (op1625.map lower) ∧ bytes1625.length=65 := by core033_kernel_decide
def op1626 : List WordIR.Op := [.rotr 1683 19]
def bytes1626 : Bytes := ("    let r000006a2: u32 = r00000693.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1626 : bytes1626=statementBytes 1698 (op1626.map lower) ∧ bytes1626.length=65 := by core033_kernel_decide
def op1627 : List WordIR.Op := [.bxor 1697 1698]
def bytes1627 : Bytes := ("    let r000006a3: u32 = r000006a1 ^ r000006a2;\n" : String).toByteArray.data.toList
theorem checked1627 : bytes1627=statementBytes 1699 (op1627.map lower) ∧ bytes1627.length=48 := by core033_kernel_decide
def op1628 : List WordIR.Op := [.shr 1683 10]
def bytes1628 : Bytes := ("    let r000006a4: u32 = r00000693 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1628 : bytes1628=statementBytes 1700 (op1628.map lower) ∧ bytes1628.length=54 := by core033_kernel_decide
def op1629 : List WordIR.Op := [.bxor 1699 1700]
def bytes1629 : Bytes := ("    let r000006a5: u32 = r000006a3 ^ r000006a4;\n" : String).toByteArray.data.toList
theorem checked1629 : bytes1629=statementBytes 1701 (op1629.map lower) ∧ bytes1629.length=48 := by core033_kernel_decide
def op1630 : List WordIR.Op := [.badd 1701 1618]
def bytes1630 : Bytes := ("    let r000006a6: u32 = r000006a5.wrapping_add(r00000652);\n" : String).toByteArray.data.toList
theorem checked1630 : bytes1630=statementBytes 1702 (op1630.map lower) ∧ bytes1630.length=60 := by core033_kernel_decide
def op1631 : List WordIR.Op := [.rotr 1514 7]
def bytes1631 : Bytes := ("    let r000006a7: u32 = r000005ea.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1631 : bytes1631=statementBytes 1703 (op1631.map lower) ∧ bytes1631.length=65 := by core033_kernel_decide
def op1632 : List WordIR.Op := [.rotr 1514 18]
def bytes1632 : Bytes := ("    let r000006a8: u32 = r000005ea.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1632 : bytes1632=statementBytes 1704 (op1632.map lower) ∧ bytes1632.length=65 := by core033_kernel_decide
def op1633 : List WordIR.Op := [.bxor 1703 1704]
def bytes1633 : Bytes := ("    let r000006a9: u32 = r000006a7 ^ r000006a8;\n" : String).toByteArray.data.toList
theorem checked1633 : bytes1633=statementBytes 1705 (op1633.map lower) ∧ bytes1633.length=48 := by core033_kernel_decide
def op1634 : List WordIR.Op := [.shr 1514 3]
def bytes1634 : Bytes := ("    let r000006aa: u32 = r000005ea >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1634 : bytes1634=statementBytes 1706 (op1634.map lower) ∧ bytes1634.length=54 := by core033_kernel_decide
def op1635 : List WordIR.Op := [.bxor 1705 1706]
def bytes1635 : Bytes := ("    let r000006ab: u32 = r000006a9 ^ r000006aa;\n" : String).toByteArray.data.toList
theorem checked1635 : bytes1635=statementBytes 1707 (op1635.map lower) ∧ bytes1635.length=48 := by core033_kernel_decide
def op1636 : List WordIR.Op := [.badd 1702 1707]
def bytes1636 : Bytes := ("    let r000006ac: u32 = r000006a6.wrapping_add(r000006ab);\n" : String).toByteArray.data.toList
theorem checked1636 : bytes1636=statementBytes 1708 (op1636.map lower) ∧ bytes1636.length=60 := by core033_kernel_decide
def op1637 : List WordIR.Op := [.badd 1708 1501]
def bytes1637 : Bytes := ("    let r000006ad: u32 = r000006ac.wrapping_add(r000005dd);\n" : String).toByteArray.data.toList
theorem checked1637 : bytes1637=statementBytes 1709 (op1637.map lower) ∧ bytes1637.length=60 := by core033_kernel_decide
def op1638 : List WordIR.Op := [.rotr 1696 17]
def bytes1638 : Bytes := ("    let r000006ae: u32 = r000006a0.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1638 : bytes1638=statementBytes 1710 (op1638.map lower) ∧ bytes1638.length=65 := by core033_kernel_decide
def op1639 : List WordIR.Op := [.rotr 1696 19]
def bytes1639 : Bytes := ("    let r000006af: u32 = r000006a0.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1639 : bytes1639=statementBytes 1711 (op1639.map lower) ∧ bytes1639.length=65 := by core033_kernel_decide
def op1640 : List WordIR.Op := [.bxor 1710 1711]
def bytes1640 : Bytes := ("    let r000006b0: u32 = r000006ae ^ r000006af;\n" : String).toByteArray.data.toList
theorem checked1640 : bytes1640=statementBytes 1712 (op1640.map lower) ∧ bytes1640.length=48 := by core033_kernel_decide
def op1641 : List WordIR.Op := [.shr 1696 10]
def bytes1641 : Bytes := ("    let r000006b1: u32 = r000006a0 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1641 : bytes1641=statementBytes 1713 (op1641.map lower) ∧ bytes1641.length=54 := by core033_kernel_decide
def op1642 : List WordIR.Op := [.bxor 1712 1713]
def bytes1642 : Bytes := ("    let r000006b2: u32 = r000006b0 ^ r000006b1;\n" : String).toByteArray.data.toList
theorem checked1642 : bytes1642=statementBytes 1714 (op1642.map lower) ∧ bytes1642.length=48 := by core033_kernel_decide
def op1643 : List WordIR.Op := [.badd 1714 1631]
def bytes1643 : Bytes := ("    let r000006b3: u32 = r000006b2.wrapping_add(r0000065f);\n" : String).toByteArray.data.toList
theorem checked1643 : bytes1643=statementBytes 1715 (op1643.map lower) ∧ bytes1643.length=60 := by core033_kernel_decide
def op1644 : List WordIR.Op := [.rotr 1527 7]
def bytes1644 : Bytes := ("    let r000006b4: u32 = r000005f7.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1644 : bytes1644=statementBytes 1716 (op1644.map lower) ∧ bytes1644.length=65 := by core033_kernel_decide
def op1645 : List WordIR.Op := [.rotr 1527 18]
def bytes1645 : Bytes := ("    let r000006b5: u32 = r000005f7.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1645 : bytes1645=statementBytes 1717 (op1645.map lower) ∧ bytes1645.length=65 := by core033_kernel_decide
def op1646 : List WordIR.Op := [.bxor 1716 1717]
def bytes1646 : Bytes := ("    let r000006b6: u32 = r000006b4 ^ r000006b5;\n" : String).toByteArray.data.toList
theorem checked1646 : bytes1646=statementBytes 1718 (op1646.map lower) ∧ bytes1646.length=48 := by core033_kernel_decide
def op1647 : List WordIR.Op := [.shr 1527 3]
def bytes1647 : Bytes := ("    let r000006b7: u32 = r000005f7 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1647 : bytes1647=statementBytes 1719 (op1647.map lower) ∧ bytes1647.length=54 := by core033_kernel_decide
def op1648 : List WordIR.Op := [.bxor 1718 1719]
def bytes1648 : Bytes := ("    let r000006b8: u32 = r000006b6 ^ r000006b7;\n" : String).toByteArray.data.toList
theorem checked1648 : bytes1648=statementBytes 1720 (op1648.map lower) ∧ bytes1648.length=48 := by core033_kernel_decide
def op1649 : List WordIR.Op := [.badd 1715 1720]
def bytes1649 : Bytes := ("    let r000006b9: u32 = r000006b3.wrapping_add(r000006b8);\n" : String).toByteArray.data.toList
theorem checked1649 : bytes1649=statementBytes 1721 (op1649.map lower) ∧ bytes1649.length=60 := by core033_kernel_decide
def op1650 : List WordIR.Op := [.badd 1721 1514]
def bytes1650 : Bytes := ("    let r000006ba: u32 = r000006b9.wrapping_add(r000005ea);\n" : String).toByteArray.data.toList
theorem checked1650 : bytes1650=statementBytes 1722 (op1650.map lower) ∧ bytes1650.length=60 := by core033_kernel_decide
def op1651 : List WordIR.Op := [.rotr 1709 17]
def bytes1651 : Bytes := ("    let r000006bb: u32 = r000006ad.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1651 : bytes1651=statementBytes 1723 (op1651.map lower) ∧ bytes1651.length=65 := by core033_kernel_decide
def op1652 : List WordIR.Op := [.rotr 1709 19]
def bytes1652 : Bytes := ("    let r000006bc: u32 = r000006ad.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1652 : bytes1652=statementBytes 1724 (op1652.map lower) ∧ bytes1652.length=65 := by core033_kernel_decide
def op1653 : List WordIR.Op := [.bxor 1723 1724]
def bytes1653 : Bytes := ("    let r000006bd: u32 = r000006bb ^ r000006bc;\n" : String).toByteArray.data.toList
theorem checked1653 : bytes1653=statementBytes 1725 (op1653.map lower) ∧ bytes1653.length=48 := by core033_kernel_decide
def op1654 : List WordIR.Op := [.shr 1709 10]
def bytes1654 : Bytes := ("    let r000006be: u32 = r000006ad >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1654 : bytes1654=statementBytes 1726 (op1654.map lower) ∧ bytes1654.length=54 := by core033_kernel_decide
def op1655 : List WordIR.Op := [.bxor 1725 1726]
def bytes1655 : Bytes := ("    let r000006bf: u32 = r000006bd ^ r000006be;\n" : String).toByteArray.data.toList
theorem checked1655 : bytes1655=statementBytes 1727 (op1655.map lower) ∧ bytes1655.length=48 := by core033_kernel_decide
def op1656 : List WordIR.Op := [.badd 1727 1644]
def bytes1656 : Bytes := ("    let r000006c0: u32 = r000006bf.wrapping_add(r0000066c);\n" : String).toByteArray.data.toList
theorem checked1656 : bytes1656=statementBytes 1728 (op1656.map lower) ∧ bytes1656.length=60 := by core033_kernel_decide
def op1657 : List WordIR.Op := [.rotr 1540 7]
def bytes1657 : Bytes := ("    let r000006c1: u32 = r00000604.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1657 : bytes1657=statementBytes 1729 (op1657.map lower) ∧ bytes1657.length=65 := by core033_kernel_decide
def op1658 : List WordIR.Op := [.rotr 1540 18]
def bytes1658 : Bytes := ("    let r000006c2: u32 = r00000604.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1658 : bytes1658=statementBytes 1730 (op1658.map lower) ∧ bytes1658.length=65 := by core033_kernel_decide
def op1659 : List WordIR.Op := [.bxor 1729 1730]
def bytes1659 : Bytes := ("    let r000006c3: u32 = r000006c1 ^ r000006c2;\n" : String).toByteArray.data.toList
theorem checked1659 : bytes1659=statementBytes 1731 (op1659.map lower) ∧ bytes1659.length=48 := by core033_kernel_decide
def op1660 : List WordIR.Op := [.shr 1540 3]
def bytes1660 : Bytes := ("    let r000006c4: u32 = r00000604 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1660 : bytes1660=statementBytes 1732 (op1660.map lower) ∧ bytes1660.length=54 := by core033_kernel_decide
def op1661 : List WordIR.Op := [.bxor 1731 1732]
def bytes1661 : Bytes := ("    let r000006c5: u32 = r000006c3 ^ r000006c4;\n" : String).toByteArray.data.toList
theorem checked1661 : bytes1661=statementBytes 1733 (op1661.map lower) ∧ bytes1661.length=48 := by core033_kernel_decide
def op1662 : List WordIR.Op := [.badd 1728 1733]
def bytes1662 : Bytes := ("    let r000006c6: u32 = r000006c0.wrapping_add(r000006c5);\n" : String).toByteArray.data.toList
theorem checked1662 : bytes1662=statementBytes 1734 (op1662.map lower) ∧ bytes1662.length=60 := by core033_kernel_decide
def op1663 : List WordIR.Op := [.badd 1734 1527]
def bytes1663 : Bytes := ("    let r000006c7: u32 = r000006c6.wrapping_add(r000005f7);\n" : String).toByteArray.data.toList
theorem checked1663 : bytes1663=statementBytes 1735 (op1663.map lower) ∧ bytes1663.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1600,op1601,op1602,op1603,op1604,op1605,op1606,op1607,op1608,op1609,op1610,op1611,op1612,op1613,op1614,op1615,op1616,op1617,op1618,op1619,op1620,op1621,op1622,op1623,op1624,op1625,op1626,op1627,op1628,op1629,op1630,op1631,op1632,op1633,op1634,op1635,op1636,op1637,op1638,op1639,op1640,op1641,op1642,op1643,op1644,op1645,op1646,op1647,op1648,op1649,op1650,op1651,op1652,op1653,op1654,op1655,op1656,op1657,op1658,op1659,op1660,op1661,op1662,op1663]
def chunks : List Bytes := [bytes1600,bytes1601,bytes1602,bytes1603,bytes1604,bytes1605,bytes1606,bytes1607,bytes1608,bytes1609,bytes1610,bytes1611,bytes1612,bytes1613,bytes1614,bytes1615,bytes1616,bytes1617,bytes1618,bytes1619,bytes1620,bytes1621,bytes1622,bytes1623,bytes1624,bytes1625,bytes1626,bytes1627,bytes1628,bytes1629,bytes1630,bytes1631,bytes1632,bytes1633,bytes1634,bytes1635,bytes1636,bytes1637,bytes1638,bytes1639,bytes1640,bytes1641,bytes1642,bytes1643,bytes1644,bytes1645,bytes1646,bytes1647,bytes1648,bytes1649,bytes1650,bytes1651,bytes1652,bytes1653,bytes1654,bytes1655,bytes1656,bytes1657,bytes1658,bytes1659,bytes1660,bytes1661,bytes1662,bytes1663]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1672 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1600.1 (.cons _ _ _ _ _ checked1601.1 (.cons _ _ _ _ _ checked1602.1 (.cons _ _ _ _ _ checked1603.1 (.cons _ _ _ _ _ checked1604.1 (.cons _ _ _ _ _ checked1605.1 (.cons _ _ _ _ _ checked1606.1 (.cons _ _ _ _ _ checked1607.1 (.cons _ _ _ _ _ checked1608.1 (.cons _ _ _ _ _ checked1609.1 (.cons _ _ _ _ _ checked1610.1 (.cons _ _ _ _ _ checked1611.1 (.cons _ _ _ _ _ checked1612.1 (.cons _ _ _ _ _ checked1613.1 (.cons _ _ _ _ _ checked1614.1 (.cons _ _ _ _ _ checked1615.1 (.cons _ _ _ _ _ checked1616.1 (.cons _ _ _ _ _ checked1617.1 (.cons _ _ _ _ _ checked1618.1 (.cons _ _ _ _ _ checked1619.1 (.cons _ _ _ _ _ checked1620.1 (.cons _ _ _ _ _ checked1621.1 (.cons _ _ _ _ _ checked1622.1 (.cons _ _ _ _ _ checked1623.1 (.cons _ _ _ _ _ checked1624.1 (.cons _ _ _ _ _ checked1625.1 (.cons _ _ _ _ _ checked1626.1 (.cons _ _ _ _ _ checked1627.1 (.cons _ _ _ _ _ checked1628.1 (.cons _ _ _ _ _ checked1629.1 (.cons _ _ _ _ _ checked1630.1 (.cons _ _ _ _ _ checked1631.1 (.cons _ _ _ _ _ checked1632.1 (.cons _ _ _ _ _ checked1633.1 (.cons _ _ _ _ _ checked1634.1 (.cons _ _ _ _ _ checked1635.1 (.cons _ _ _ _ _ checked1636.1 (.cons _ _ _ _ _ checked1637.1 (.cons _ _ _ _ _ checked1638.1 (.cons _ _ _ _ _ checked1639.1 (.cons _ _ _ _ _ checked1640.1 (.cons _ _ _ _ _ checked1641.1 (.cons _ _ _ _ _ checked1642.1 (.cons _ _ _ _ _ checked1643.1 (.cons _ _ _ _ _ checked1644.1 (.cons _ _ _ _ _ checked1645.1 (.cons _ _ _ _ _ checked1646.1 (.cons _ _ _ _ _ checked1647.1 (.cons _ _ _ _ _ checked1648.1 (.cons _ _ _ _ _ checked1649.1 (.cons _ _ _ _ _ checked1650.1 (.cons _ _ _ _ _ checked1651.1 (.cons _ _ _ _ _ checked1652.1 (.cons _ _ _ _ _ checked1653.1 (.cons _ _ _ _ _ checked1654.1 (.cons _ _ _ _ _ checked1655.1 (.cons _ _ _ _ _ checked1656.1 (.cons _ _ _ _ _ checked1657.1 (.cons _ _ _ _ _ checked1658.1 (.cons _ _ _ _ _ checked1659.1 (.cons _ _ _ _ _ checked1660.1 (.cons _ _ _ _ _ checked1661.1 (.cons _ _ _ _ _ checked1662.1 (.cons _ _ _ _ _ checked1663.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1672 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3635 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1600.2,checked1601.2,checked1602.2,checked1603.2,checked1604.2,checked1605.2,checked1606.2,checked1607.2,checked1608.2,checked1609.2,checked1610.2,checked1611.2,checked1612.2,checked1613.2,checked1614.2,checked1615.2,checked1616.2,checked1617.2,checked1618.2,checked1619.2,checked1620.2,checked1621.2,checked1622.2,checked1623.2,checked1624.2,checked1625.2,checked1626.2,checked1627.2,checked1628.2,checked1629.2,checked1630.2,checked1631.2,checked1632.2,checked1633.2,checked1634.2,checked1635.2,checked1636.2,checked1637.2,checked1638.2,checked1639.2,checked1640.2,checked1641.2,checked1642.2,checked1643.2,checked1644.2,checked1645.2,checked1646.2,checked1647.2,checked1648.2,checked1649.2,checked1650.2,checked1651.2,checked1652.2,checked1653.2,checked1654.2,checked1655.2,checked1656.2,checked1657.2,checked1658.2,checked1659.2,checked1660.2,checked1661.2,checked1662.2,checked1663.2]
  decide
end ArtifactHashBlockGroup25
