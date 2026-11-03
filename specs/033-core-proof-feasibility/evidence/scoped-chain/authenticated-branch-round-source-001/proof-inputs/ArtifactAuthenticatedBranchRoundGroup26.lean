import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup26
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1664 : List WordIR.Op := [.shr 1781 31]
def bytes1664 : Bytes := ("    let r000006f6: u32 = r000006f5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1664 : bytes1664=statementBytes 1782 (op1664.map lower) ∧ bytes1664.length=54 := by core033_kernel_decide
def op1665 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1665 : Bytes := ("    let r000006f7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1665 : bytes1665=statementBytes 1783 (op1665.map lower) ∧ bytes1665.length=41 := by core033_kernel_decide
def op1666 : List WordIR.Op := [.bxor 1782 1783]
def bytes1666 : Bytes := ("    let r000006f8: u32 = r000006f6 ^ r000006f7;\n" : String).toByteArray.data.toList
theorem checked1666 : bytes1666=statementBytes 1784 (op1666.map lower) ∧ bytes1666.length=48 := by core033_kernel_decide
def op1667 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes1667 : Bytes := ("    let r000006f9: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked1667 : bytes1667=statementBytes 1785 (op1667.map lower) ∧ bytes1667.length=41 := by core033_kernel_decide
def op1668 : List WordIR.Op := [.bxor 1321 1785]
def bytes1668 : Bytes := ("    let r000006fa: u32 = r00000529 ^ r000006f9;\n" : String).toByteArray.data.toList
theorem checked1668 : bytes1668=statementBytes 1786 (op1668.map lower) ∧ bytes1668.length=48 := by core033_kernel_decide
def op1669 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1669 : Bytes := ("    let r000006fb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1669 : bytes1669=statementBytes 1787 (op1669.map lower) ∧ bytes1669.length=41 := by core033_kernel_decide
def op1670 : List WordIR.Op := [.bnot 1787]
def bytes1670 : Bytes := ("    let r000006fc: u32 = !r000006fb;\n" : String).toByteArray.data.toList
theorem checked1670 : bytes1670=statementBytes 1788 (op1670.map lower) ∧ bytes1670.length=37 := by core033_kernel_decide
def op1671 : List WordIR.Op := [.band 1786 1788]
def bytes1671 : Bytes := ("    let r000006fd: u32 = r000006fa & r000006fc;\n" : String).toByteArray.data.toList
theorem checked1671 : bytes1671=statementBytes 1789 (op1671.map lower) ∧ bytes1671.length=48 := by core033_kernel_decide
def op1672 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes1672 : Bytes := ("    let r000006fe: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked1672 : bytes1672=statementBytes 1790 (op1672.map lower) ∧ bytes1672.length=41 := by core033_kernel_decide
def op1673 : List WordIR.Op := [.bxor 1321 1790]
def bytes1673 : Bytes := ("    let r000006ff: u32 = r00000529 ^ r000006fe;\n" : String).toByteArray.data.toList
theorem checked1673 : bytes1673=statementBytes 1791 (op1673.map lower) ∧ bytes1673.length=48 := by core033_kernel_decide
def op1674 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1674 : Bytes := ("    let r00000700: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1674 : bytes1674=statementBytes 1792 (op1674.map lower) ∧ bytes1674.length=41 := by core033_kernel_decide
def op1675 : List WordIR.Op := [.bnot 1792]
def bytes1675 : Bytes := ("    let r00000701: u32 = !r00000700;\n" : String).toByteArray.data.toList
theorem checked1675 : bytes1675=statementBytes 1793 (op1675.map lower) ∧ bytes1675.length=37 := by core033_kernel_decide
def op1676 : List WordIR.Op := [.bxor 1791 1793]
def bytes1676 : Bytes := ("    let r00000702: u32 = r000006ff ^ r00000701;\n" : String).toByteArray.data.toList
theorem checked1676 : bytes1676=statementBytes 1794 (op1676.map lower) ∧ bytes1676.length=48 := by core033_kernel_decide
def op1677 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes1677 : Bytes := ("    let r00000703: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked1677 : bytes1677=statementBytes 1795 (op1677.map lower) ∧ bytes1677.length=41 := by core033_kernel_decide
def op1678 : List WordIR.Op := [.bxor 1321 1795]
def bytes1678 : Bytes := ("    let r00000704: u32 = r00000529 ^ r00000703;\n" : String).toByteArray.data.toList
theorem checked1678 : bytes1678=statementBytes 1796 (op1678.map lower) ∧ bytes1678.length=48 := by core033_kernel_decide
def op1679 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1679 : Bytes := ("    let r00000705: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1679 : bytes1679=statementBytes 1797 (op1679.map lower) ∧ bytes1679.length=41 := by core033_kernel_decide
def op1680 : List WordIR.Op := [.bnot 1797]
def bytes1680 : Bytes := ("    let r00000706: u32 = !r00000705;\n" : String).toByteArray.data.toList
theorem checked1680 : bytes1680=statementBytes 1798 (op1680.map lower) ∧ bytes1680.length=37 := by core033_kernel_decide
def op1681 : List WordIR.Op := [.badd 1796 1798]
def bytes1681 : Bytes := ("    let r00000707: u32 = r00000704.wrapping_add(r00000706);\n" : String).toByteArray.data.toList
theorem checked1681 : bytes1681=statementBytes 1799 (op1681.map lower) ∧ bytes1681.length=60 := by core033_kernel_decide
def op1682 : List WordIR.Op := [.bnot 1799]
def bytes1682 : Bytes := ("    let r00000708: u32 = !r00000707;\n" : String).toByteArray.data.toList
theorem checked1682 : bytes1682=statementBytes 1800 (op1682.map lower) ∧ bytes1682.length=37 := by core033_kernel_decide
def op1683 : List WordIR.Op := [.band 1794 1800]
def bytes1683 : Bytes := ("    let r00000709: u32 = r00000702 & r00000708;\n" : String).toByteArray.data.toList
theorem checked1683 : bytes1683=statementBytes 1801 (op1683.map lower) ∧ bytes1683.length=48 := by core033_kernel_decide
def op1684 : List WordIR.Op := [.bxor 1789 1801]
def bytes1684 : Bytes := ("    let r0000070a: u32 = r000006fd ^ r00000709;\n" : String).toByteArray.data.toList
theorem checked1684 : bytes1684=statementBytes 1802 (op1684.map lower) ∧ bytes1684.length=48 := by core033_kernel_decide
def op1685 : List WordIR.Op := [.shr 1802 31]
def bytes1685 : Bytes := ("    let r0000070b: u32 = r0000070a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1685 : bytes1685=statementBytes 1803 (op1685.map lower) ∧ bytes1685.length=54 := by core033_kernel_decide
def op1686 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1686 : Bytes := ("    let r0000070c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1686 : bytes1686=statementBytes 1804 (op1686.map lower) ∧ bytes1686.length=41 := by core033_kernel_decide
def op1687 : List WordIR.Op := [.bxor 1803 1804]
def bytes1687 : Bytes := ("    let r0000070d: u32 = r0000070b ^ r0000070c;\n" : String).toByteArray.data.toList
theorem checked1687 : bytes1687=statementBytes 1805 (op1687.map lower) ∧ bytes1687.length=48 := by core033_kernel_decide
def op1688 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes1688 : Bytes := ("    let r0000070e: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked1688 : bytes1688=statementBytes 1806 (op1688.map lower) ∧ bytes1688.length=41 := by core033_kernel_decide
def op1689 : List WordIR.Op := [.bnot 1806]
def bytes1689 : Bytes := ("    let r0000070f: u32 = !r0000070e;\n" : String).toByteArray.data.toList
theorem checked1689 : bytes1689=statementBytes 1807 (op1689.map lower) ∧ bytes1689.length=37 := by core033_kernel_decide
def op1690 : List WordIR.Op := [.band 1321 1807]
def bytes1690 : Bytes := ("    let r00000710: u32 = r00000529 & r0000070f;\n" : String).toByteArray.data.toList
theorem checked1690 : bytes1690=statementBytes 1808 (op1690.map lower) ∧ bytes1690.length=48 := by core033_kernel_decide
def op1691 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes1691 : Bytes := ("    let r00000711: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked1691 : bytes1691=statementBytes 1809 (op1691.map lower) ∧ bytes1691.length=41 := by core033_kernel_decide
def op1692 : List WordIR.Op := [.bnot 1809]
def bytes1692 : Bytes := ("    let r00000712: u32 = !r00000711;\n" : String).toByteArray.data.toList
theorem checked1692 : bytes1692=statementBytes 1810 (op1692.map lower) ∧ bytes1692.length=37 := by core033_kernel_decide
def op1693 : List WordIR.Op := [.bxor 1321 1810]
def bytes1693 : Bytes := ("    let r00000713: u32 = r00000529 ^ r00000712;\n" : String).toByteArray.data.toList
theorem checked1693 : bytes1693=statementBytes 1811 (op1693.map lower) ∧ bytes1693.length=48 := by core033_kernel_decide
def op1694 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes1694 : Bytes := ("    let r00000714: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked1694 : bytes1694=statementBytes 1812 (op1694.map lower) ∧ bytes1694.length=41 := by core033_kernel_decide
def op1695 : List WordIR.Op := [.bnot 1812]
def bytes1695 : Bytes := ("    let r00000715: u32 = !r00000714;\n" : String).toByteArray.data.toList
theorem checked1695 : bytes1695=statementBytes 1813 (op1695.map lower) ∧ bytes1695.length=37 := by core033_kernel_decide
def op1696 : List WordIR.Op := [.badd 1321 1813]
def bytes1696 : Bytes := ("    let r00000716: u32 = r00000529.wrapping_add(r00000715);\n" : String).toByteArray.data.toList
theorem checked1696 : bytes1696=statementBytes 1814 (op1696.map lower) ∧ bytes1696.length=60 := by core033_kernel_decide
def op1697 : List WordIR.Op := [.bnot 1814]
def bytes1697 : Bytes := ("    let r00000717: u32 = !r00000716;\n" : String).toByteArray.data.toList
theorem checked1697 : bytes1697=statementBytes 1815 (op1697.map lower) ∧ bytes1697.length=37 := by core033_kernel_decide
def op1698 : List WordIR.Op := [.band 1811 1815]
def bytes1698 : Bytes := ("    let r00000718: u32 = r00000713 & r00000717;\n" : String).toByteArray.data.toList
theorem checked1698 : bytes1698=statementBytes 1816 (op1698.map lower) ∧ bytes1698.length=48 := by core033_kernel_decide
def op1699 : List WordIR.Op := [.bxor 1808 1816]
def bytes1699 : Bytes := ("    let r00000719: u32 = r00000710 ^ r00000718;\n" : String).toByteArray.data.toList
theorem checked1699 : bytes1699=statementBytes 1817 (op1699.map lower) ∧ bytes1699.length=48 := by core033_kernel_decide
def op1700 : List WordIR.Op := [.shr 1817 31]
def bytes1700 : Bytes := ("    let r0000071a: u32 = r00000719 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1700 : bytes1700=statementBytes 1818 (op1700.map lower) ∧ bytes1700.length=54 := by core033_kernel_decide
def op1701 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1701 : Bytes := ("    let r0000071b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1701 : bytes1701=statementBytes 1819 (op1701.map lower) ∧ bytes1701.length=41 := by core033_kernel_decide
def op1702 : List WordIR.Op := [.bxor 1818 1819]
def bytes1702 : Bytes := ("    let r0000071c: u32 = r0000071a ^ r0000071b;\n" : String).toByteArray.data.toList
theorem checked1702 : bytes1702=statementBytes 1820 (op1702.map lower) ∧ bytes1702.length=48 := by core033_kernel_decide
def op1703 : List WordIR.Op := [.shr 1766 5]
def bytes1703 : Bytes := ("    let r0000071d: u32 = r000006e6 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked1703 : bytes1703=statementBytes 1821 (op1703.map lower) ∧ bytes1703.length=54 := by core033_kernel_decide
def op1704 : List WordIR.Op := [.bnot 1766]
def bytes1704 : Bytes := ("    let r0000071e: u32 = !r000006e6;\n" : String).toByteArray.data.toList
theorem checked1704 : bytes1704=statementBytes 1822 (op1704.map lower) ∧ bytes1704.length=37 := by core033_kernel_decide
def op1705 : List WordIR.Op := [.literal (BitVec.ofNat 32 31)]
def bytes1705 : Bytes := ("    let r0000071f: u32 = 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1705 : bytes1705=statementBytes 1823 (op1705.map lower) ∧ bytes1705.length=41 := by core033_kernel_decide
def op1706 : List WordIR.Op := [.band 1822 1823]
def bytes1706 : Bytes := ("    let r00000720: u32 = r0000071e & r0000071f;\n" : String).toByteArray.data.toList
theorem checked1706 : bytes1706=statementBytes 1824 (op1706.map lower) ∧ bytes1706.length=48 := by core033_kernel_decide
def op1707 : List WordIR.Op := [.shr 1766 8]
def bytes1707 : Bytes := ("    let r00000721: u32 = r000006e6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1707 : bytes1707=statementBytes 1825 (op1707.map lower) ∧ bytes1707.length=54 := by core033_kernel_decide
def op1708 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1708 : Bytes := ("    let r00000722: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1708 : bytes1708=statementBytes 1826 (op1708.map lower) ∧ bytes1708.length=41 := by core033_kernel_decide
def op1709 : List WordIR.Op := [.bnot 1826]
def bytes1709 : Bytes := ("    let r00000723: u32 = !r00000722;\n" : String).toByteArray.data.toList
theorem checked1709 : bytes1709=statementBytes 1827 (op1709.map lower) ∧ bytes1709.length=37 := by core033_kernel_decide
def op1710 : List WordIR.Op := [.band 1825 1827]
def bytes1710 : Bytes := ("    let r00000724: u32 = r00000721 & r00000723;\n" : String).toByteArray.data.toList
theorem checked1710 : bytes1710=statementBytes 1828 (op1710.map lower) ∧ bytes1710.length=48 := by core033_kernel_decide
def op1711 : List WordIR.Op := [.shr 1766 8]
def bytes1711 : Bytes := ("    let r00000725: u32 = r000006e6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1711 : bytes1711=statementBytes 1829 (op1711.map lower) ∧ bytes1711.length=54 := by core033_kernel_decide
def op1712 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1712 : Bytes := ("    let r00000726: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1712 : bytes1712=statementBytes 1830 (op1712.map lower) ∧ bytes1712.length=41 := by core033_kernel_decide
def op1713 : List WordIR.Op := [.bnot 1830]
def bytes1713 : Bytes := ("    let r00000727: u32 = !r00000726;\n" : String).toByteArray.data.toList
theorem checked1713 : bytes1713=statementBytes 1831 (op1713.map lower) ∧ bytes1713.length=37 := by core033_kernel_decide
def op1714 : List WordIR.Op := [.bxor 1829 1831]
def bytes1714 : Bytes := ("    let r00000728: u32 = r00000725 ^ r00000727;\n" : String).toByteArray.data.toList
theorem checked1714 : bytes1714=statementBytes 1832 (op1714.map lower) ∧ bytes1714.length=48 := by core033_kernel_decide
def op1715 : List WordIR.Op := [.shr 1766 8]
def bytes1715 : Bytes := ("    let r00000729: u32 = r000006e6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1715 : bytes1715=statementBytes 1833 (op1715.map lower) ∧ bytes1715.length=54 := by core033_kernel_decide
def op1716 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1716 : Bytes := ("    let r0000072a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1716 : bytes1716=statementBytes 1834 (op1716.map lower) ∧ bytes1716.length=41 := by core033_kernel_decide
def op1717 : List WordIR.Op := [.bnot 1834]
def bytes1717 : Bytes := ("    let r0000072b: u32 = !r0000072a;\n" : String).toByteArray.data.toList
theorem checked1717 : bytes1717=statementBytes 1835 (op1717.map lower) ∧ bytes1717.length=37 := by core033_kernel_decide
def op1718 : List WordIR.Op := [.badd 1833 1835]
def bytes1718 : Bytes := ("    let r0000072c: u32 = r00000729.wrapping_add(r0000072b);\n" : String).toByteArray.data.toList
theorem checked1718 : bytes1718=statementBytes 1836 (op1718.map lower) ∧ bytes1718.length=60 := by core033_kernel_decide
def op1719 : List WordIR.Op := [.bnot 1836]
def bytes1719 : Bytes := ("    let r0000072d: u32 = !r0000072c;\n" : String).toByteArray.data.toList
theorem checked1719 : bytes1719=statementBytes 1837 (op1719.map lower) ∧ bytes1719.length=37 := by core033_kernel_decide
def op1720 : List WordIR.Op := [.band 1832 1837]
def bytes1720 : Bytes := ("    let r0000072e: u32 = r00000728 & r0000072d;\n" : String).toByteArray.data.toList
theorem checked1720 : bytes1720=statementBytes 1838 (op1720.map lower) ∧ bytes1720.length=48 := by core033_kernel_decide
def op1721 : List WordIR.Op := [.bxor 1828 1838]
def bytes1721 : Bytes := ("    let r0000072f: u32 = r00000724 ^ r0000072e;\n" : String).toByteArray.data.toList
theorem checked1721 : bytes1721=statementBytes 1839 (op1721.map lower) ∧ bytes1721.length=48 := by core033_kernel_decide
def op1722 : List WordIR.Op := [.shr 1839 31]
def bytes1722 : Bytes := ("    let r00000730: u32 = r0000072f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1722 : bytes1722=statementBytes 1840 (op1722.map lower) ∧ bytes1722.length=54 := by core033_kernel_decide
def op1723 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1723 : Bytes := ("    let r00000731: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1723 : bytes1723=statementBytes 1841 (op1723.map lower) ∧ bytes1723.length=41 := by core033_kernel_decide
def op1724 : List WordIR.Op := [.bxor 1840 1841]
def bytes1724 : Bytes := ("    let r00000732: u32 = r00000730 ^ r00000731;\n" : String).toByteArray.data.toList
theorem checked1724 : bytes1724=statementBytes 1842 (op1724.map lower) ∧ bytes1724.length=48 := by core033_kernel_decide
def op1725 : List WordIR.Op := [.shr 1821 2]
def bytes1725 : Bytes := ("    let r00000733: u32 = r0000071d >> 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked1725 : bytes1725=statementBytes 1843 (op1725.map lower) ∧ bytes1725.length=54 := by core033_kernel_decide
def op1726 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1726 : Bytes := ("    let r00000734: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1726 : bytes1726=statementBytes 1844 (op1726.map lower) ∧ bytes1726.length=41 := by core033_kernel_decide
def op1727 : List WordIR.Op := [.band 1843 1844]
def bytes1727 : Bytes := ("    let r00000735: u32 = r00000733 & r00000734;\n" : String).toByteArray.data.toList
theorem checked1727 : bytes1727=statementBytes 1845 (op1727.map lower) ∧ bytes1727.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1664,op1665,op1666,op1667,op1668,op1669,op1670,op1671,op1672,op1673,op1674,op1675,op1676,op1677,op1678,op1679,op1680,op1681,op1682,op1683,op1684,op1685,op1686,op1687,op1688,op1689,op1690,op1691,op1692,op1693,op1694,op1695,op1696,op1697,op1698,op1699,op1700,op1701,op1702,op1703,op1704,op1705,op1706,op1707,op1708,op1709,op1710,op1711,op1712,op1713,op1714,op1715,op1716,op1717,op1718,op1719,op1720,op1721,op1722,op1723,op1724,op1725,op1726,op1727]
def chunks : List Bytes := [bytes1664,bytes1665,bytes1666,bytes1667,bytes1668,bytes1669,bytes1670,bytes1671,bytes1672,bytes1673,bytes1674,bytes1675,bytes1676,bytes1677,bytes1678,bytes1679,bytes1680,bytes1681,bytes1682,bytes1683,bytes1684,bytes1685,bytes1686,bytes1687,bytes1688,bytes1689,bytes1690,bytes1691,bytes1692,bytes1693,bytes1694,bytes1695,bytes1696,bytes1697,bytes1698,bytes1699,bytes1700,bytes1701,bytes1702,bytes1703,bytes1704,bytes1705,bytes1706,bytes1707,bytes1708,bytes1709,bytes1710,bytes1711,bytes1712,bytes1713,bytes1714,bytes1715,bytes1716,bytes1717,bytes1718,bytes1719,bytes1720,bytes1721,bytes1722,bytes1723,bytes1724,bytes1725,bytes1726,bytes1727]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1782 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1664.1 (.cons _ _ _ _ _ checked1665.1 (.cons _ _ _ _ _ checked1666.1 (.cons _ _ _ _ _ checked1667.1 (.cons _ _ _ _ _ checked1668.1 (.cons _ _ _ _ _ checked1669.1 (.cons _ _ _ _ _ checked1670.1 (.cons _ _ _ _ _ checked1671.1 (.cons _ _ _ _ _ checked1672.1 (.cons _ _ _ _ _ checked1673.1 (.cons _ _ _ _ _ checked1674.1 (.cons _ _ _ _ _ checked1675.1 (.cons _ _ _ _ _ checked1676.1 (.cons _ _ _ _ _ checked1677.1 (.cons _ _ _ _ _ checked1678.1 (.cons _ _ _ _ _ checked1679.1 (.cons _ _ _ _ _ checked1680.1 (.cons _ _ _ _ _ checked1681.1 (.cons _ _ _ _ _ checked1682.1 (.cons _ _ _ _ _ checked1683.1 (.cons _ _ _ _ _ checked1684.1 (.cons _ _ _ _ _ checked1685.1 (.cons _ _ _ _ _ checked1686.1 (.cons _ _ _ _ _ checked1687.1 (.cons _ _ _ _ _ checked1688.1 (.cons _ _ _ _ _ checked1689.1 (.cons _ _ _ _ _ checked1690.1 (.cons _ _ _ _ _ checked1691.1 (.cons _ _ _ _ _ checked1692.1 (.cons _ _ _ _ _ checked1693.1 (.cons _ _ _ _ _ checked1694.1 (.cons _ _ _ _ _ checked1695.1 (.cons _ _ _ _ _ checked1696.1 (.cons _ _ _ _ _ checked1697.1 (.cons _ _ _ _ _ checked1698.1 (.cons _ _ _ _ _ checked1699.1 (.cons _ _ _ _ _ checked1700.1 (.cons _ _ _ _ _ checked1701.1 (.cons _ _ _ _ _ checked1702.1 (.cons _ _ _ _ _ checked1703.1 (.cons _ _ _ _ _ checked1704.1 (.cons _ _ _ _ _ checked1705.1 (.cons _ _ _ _ _ checked1706.1 (.cons _ _ _ _ _ checked1707.1 (.cons _ _ _ _ _ checked1708.1 (.cons _ _ _ _ _ checked1709.1 (.cons _ _ _ _ _ checked1710.1 (.cons _ _ _ _ _ checked1711.1 (.cons _ _ _ _ _ checked1712.1 (.cons _ _ _ _ _ checked1713.1 (.cons _ _ _ _ _ checked1714.1 (.cons _ _ _ _ _ checked1715.1 (.cons _ _ _ _ _ checked1716.1 (.cons _ _ _ _ _ checked1717.1 (.cons _ _ _ _ _ checked1718.1 (.cons _ _ _ _ _ checked1719.1 (.cons _ _ _ _ _ checked1720.1 (.cons _ _ _ _ _ checked1721.1 (.cons _ _ _ _ _ checked1722.1 (.cons _ _ _ _ _ checked1723.1 (.cons _ _ _ _ _ checked1724.1 (.cons _ _ _ _ _ checked1725.1 (.cons _ _ _ _ _ checked1726.1 (.cons _ _ _ _ _ checked1727.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1782 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2893 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1664.2,checked1665.2,checked1666.2,checked1667.2,checked1668.2,checked1669.2,checked1670.2,checked1671.2,checked1672.2,checked1673.2,checked1674.2,checked1675.2,checked1676.2,checked1677.2,checked1678.2,checked1679.2,checked1680.2,checked1681.2,checked1682.2,checked1683.2,checked1684.2,checked1685.2,checked1686.2,checked1687.2,checked1688.2,checked1689.2,checked1690.2,checked1691.2,checked1692.2,checked1693.2,checked1694.2,checked1695.2,checked1696.2,checked1697.2,checked1698.2,checked1699.2,checked1700.2,checked1701.2,checked1702.2,checked1703.2,checked1704.2,checked1705.2,checked1706.2,checked1707.2,checked1708.2,checked1709.2,checked1710.2,checked1711.2,checked1712.2,checked1713.2,checked1714.2,checked1715.2,checked1716.2,checked1717.2,checked1718.2,checked1719.2,checked1720.2,checked1721.2,checked1722.2,checked1723.2,checked1724.2,checked1725.2,checked1726.2,checked1727.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup26
