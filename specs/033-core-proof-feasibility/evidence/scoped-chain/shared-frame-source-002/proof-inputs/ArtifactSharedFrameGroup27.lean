import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup27
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1728 : List WordIR.Op := [.bxor 1769 1770]
def bytes1728 : Bytes := ("    let r000006eb: u32 = r000006e9 ^ r000006ea;\n" : String).toByteArray.data.toList
theorem checked1728 : bytes1728=statementBytes 1771 (op1728.map lower) ∧ bytes1728.length=48 := by core033_kernel_decide
def op1729 : List WordIR.Op := [.shr 1580 3]
def bytes1729 : Bytes := ("    let r000006ec: u32 = r0000062c >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1729 : bytes1729=statementBytes 1772 (op1729.map lower) ∧ bytes1729.length=54 := by core033_kernel_decide
def op1730 : List WordIR.Op := [.bxor 1771 1772]
def bytes1730 : Bytes := ("    let r000006ed: u32 = r000006eb ^ r000006ec;\n" : String).toByteArray.data.toList
theorem checked1730 : bytes1730=statementBytes 1773 (op1730.map lower) ∧ bytes1730.length=48 := by core033_kernel_decide
def op1731 : List WordIR.Op := [.badd 1768 1773]
def bytes1731 : Bytes := ("    let r000006ee: u32 = r000006e8.wrapping_add(r000006ed);\n" : String).toByteArray.data.toList
theorem checked1731 : bytes1731=statementBytes 1774 (op1731.map lower) ∧ bytes1731.length=60 := by core033_kernel_decide
def op1732 : List WordIR.Op := [.badd 1774 1567]
def bytes1732 : Bytes := ("    let r000006ef: u32 = r000006ee.wrapping_add(r0000061f);\n" : String).toByteArray.data.toList
theorem checked1732 : bytes1732=statementBytes 1775 (op1732.map lower) ∧ bytes1732.length=60 := by core033_kernel_decide
def op1733 : List WordIR.Op := [.rotr 1762 17]
def bytes1733 : Bytes := ("    let r000006f0: u32 = r000006e2.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1733 : bytes1733=statementBytes 1776 (op1733.map lower) ∧ bytes1733.length=65 := by core033_kernel_decide
def op1734 : List WordIR.Op := [.rotr 1762 19]
def bytes1734 : Bytes := ("    let r000006f1: u32 = r000006e2.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1734 : bytes1734=statementBytes 1777 (op1734.map lower) ∧ bytes1734.length=65 := by core033_kernel_decide
def op1735 : List WordIR.Op := [.bxor 1776 1777]
def bytes1735 : Bytes := ("    let r000006f2: u32 = r000006f0 ^ r000006f1;\n" : String).toByteArray.data.toList
theorem checked1735 : bytes1735=statementBytes 1778 (op1735.map lower) ∧ bytes1735.length=48 := by core033_kernel_decide
def op1736 : List WordIR.Op := [.shr 1762 10]
def bytes1736 : Bytes := ("    let r000006f3: u32 = r000006e2 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1736 : bytes1736=statementBytes 1779 (op1736.map lower) ∧ bytes1736.length=54 := by core033_kernel_decide
def op1737 : List WordIR.Op := [.bxor 1778 1779]
def bytes1737 : Bytes := ("    let r000006f4: u32 = r000006f2 ^ r000006f3;\n" : String).toByteArray.data.toList
theorem checked1737 : bytes1737=statementBytes 1780 (op1737.map lower) ∧ bytes1737.length=48 := by core033_kernel_decide
def op1738 : List WordIR.Op := [.badd 1780 1697]
def bytes1738 : Bytes := ("    let r000006f5: u32 = r000006f4.wrapping_add(r000006a1);\n" : String).toByteArray.data.toList
theorem checked1738 : bytes1738=statementBytes 1781 (op1738.map lower) ∧ bytes1738.length=60 := by core033_kernel_decide
def op1739 : List WordIR.Op := [.rotr 1593 7]
def bytes1739 : Bytes := ("    let r000006f6: u32 = r00000639.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1739 : bytes1739=statementBytes 1782 (op1739.map lower) ∧ bytes1739.length=65 := by core033_kernel_decide
def op1740 : List WordIR.Op := [.rotr 1593 18]
def bytes1740 : Bytes := ("    let r000006f7: u32 = r00000639.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1740 : bytes1740=statementBytes 1783 (op1740.map lower) ∧ bytes1740.length=65 := by core033_kernel_decide
def op1741 : List WordIR.Op := [.bxor 1782 1783]
def bytes1741 : Bytes := ("    let r000006f8: u32 = r000006f6 ^ r000006f7;\n" : String).toByteArray.data.toList
theorem checked1741 : bytes1741=statementBytes 1784 (op1741.map lower) ∧ bytes1741.length=48 := by core033_kernel_decide
def op1742 : List WordIR.Op := [.shr 1593 3]
def bytes1742 : Bytes := ("    let r000006f9: u32 = r00000639 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1742 : bytes1742=statementBytes 1785 (op1742.map lower) ∧ bytes1742.length=54 := by core033_kernel_decide
def op1743 : List WordIR.Op := [.bxor 1784 1785]
def bytes1743 : Bytes := ("    let r000006fa: u32 = r000006f8 ^ r000006f9;\n" : String).toByteArray.data.toList
theorem checked1743 : bytes1743=statementBytes 1786 (op1743.map lower) ∧ bytes1743.length=48 := by core033_kernel_decide
def op1744 : List WordIR.Op := [.badd 1781 1786]
def bytes1744 : Bytes := ("    let r000006fb: u32 = r000006f5.wrapping_add(r000006fa);\n" : String).toByteArray.data.toList
theorem checked1744 : bytes1744=statementBytes 1787 (op1744.map lower) ∧ bytes1744.length=60 := by core033_kernel_decide
def op1745 : List WordIR.Op := [.badd 1787 1580]
def bytes1745 : Bytes := ("    let r000006fc: u32 = r000006fb.wrapping_add(r0000062c);\n" : String).toByteArray.data.toList
theorem checked1745 : bytes1745=statementBytes 1788 (op1745.map lower) ∧ bytes1745.length=60 := by core033_kernel_decide
def op1746 : List WordIR.Op := [.rotr 1775 17]
def bytes1746 : Bytes := ("    let r000006fd: u32 = r000006ef.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1746 : bytes1746=statementBytes 1789 (op1746.map lower) ∧ bytes1746.length=65 := by core033_kernel_decide
def op1747 : List WordIR.Op := [.rotr 1775 19]
def bytes1747 : Bytes := ("    let r000006fe: u32 = r000006ef.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1747 : bytes1747=statementBytes 1790 (op1747.map lower) ∧ bytes1747.length=65 := by core033_kernel_decide
def op1748 : List WordIR.Op := [.bxor 1789 1790]
def bytes1748 : Bytes := ("    let r000006ff: u32 = r000006fd ^ r000006fe;\n" : String).toByteArray.data.toList
theorem checked1748 : bytes1748=statementBytes 1791 (op1748.map lower) ∧ bytes1748.length=48 := by core033_kernel_decide
def op1749 : List WordIR.Op := [.shr 1775 10]
def bytes1749 : Bytes := ("    let r00000700: u32 = r000006ef >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1749 : bytes1749=statementBytes 1792 (op1749.map lower) ∧ bytes1749.length=54 := by core033_kernel_decide
def op1750 : List WordIR.Op := [.bxor 1791 1792]
def bytes1750 : Bytes := ("    let r00000701: u32 = r000006ff ^ r00000700;\n" : String).toByteArray.data.toList
theorem checked1750 : bytes1750=statementBytes 1793 (op1750.map lower) ∧ bytes1750.length=48 := by core033_kernel_decide
def op1751 : List WordIR.Op := [.badd 1793 1710]
def bytes1751 : Bytes := ("    let r00000702: u32 = r00000701.wrapping_add(r000006ae);\n" : String).toByteArray.data.toList
theorem checked1751 : bytes1751=statementBytes 1794 (op1751.map lower) ∧ bytes1751.length=60 := by core033_kernel_decide
def op1752 : List WordIR.Op := [.rotr 1606 7]
def bytes1752 : Bytes := ("    let r00000703: u32 = r00000646.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1752 : bytes1752=statementBytes 1795 (op1752.map lower) ∧ bytes1752.length=65 := by core033_kernel_decide
def op1753 : List WordIR.Op := [.rotr 1606 18]
def bytes1753 : Bytes := ("    let r00000704: u32 = r00000646.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1753 : bytes1753=statementBytes 1796 (op1753.map lower) ∧ bytes1753.length=65 := by core033_kernel_decide
def op1754 : List WordIR.Op := [.bxor 1795 1796]
def bytes1754 : Bytes := ("    let r00000705: u32 = r00000703 ^ r00000704;\n" : String).toByteArray.data.toList
theorem checked1754 : bytes1754=statementBytes 1797 (op1754.map lower) ∧ bytes1754.length=48 := by core033_kernel_decide
def op1755 : List WordIR.Op := [.shr 1606 3]
def bytes1755 : Bytes := ("    let r00000706: u32 = r00000646 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1755 : bytes1755=statementBytes 1798 (op1755.map lower) ∧ bytes1755.length=54 := by core033_kernel_decide
def op1756 : List WordIR.Op := [.bxor 1797 1798]
def bytes1756 : Bytes := ("    let r00000707: u32 = r00000705 ^ r00000706;\n" : String).toByteArray.data.toList
theorem checked1756 : bytes1756=statementBytes 1799 (op1756.map lower) ∧ bytes1756.length=48 := by core033_kernel_decide
def op1757 : List WordIR.Op := [.badd 1794 1799]
def bytes1757 : Bytes := ("    let r00000708: u32 = r00000702.wrapping_add(r00000707);\n" : String).toByteArray.data.toList
theorem checked1757 : bytes1757=statementBytes 1800 (op1757.map lower) ∧ bytes1757.length=60 := by core033_kernel_decide
def op1758 : List WordIR.Op := [.badd 1800 1593]
def bytes1758 : Bytes := ("    let r00000709: u32 = r00000708.wrapping_add(r00000639);\n" : String).toByteArray.data.toList
theorem checked1758 : bytes1758=statementBytes 1801 (op1758.map lower) ∧ bytes1758.length=60 := by core033_kernel_decide
def op1759 : List WordIR.Op := [.rotr 1788 17]
def bytes1759 : Bytes := ("    let r0000070a: u32 = r000006fc.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1759 : bytes1759=statementBytes 1802 (op1759.map lower) ∧ bytes1759.length=65 := by core033_kernel_decide
def op1760 : List WordIR.Op := [.rotr 1788 19]
def bytes1760 : Bytes := ("    let r0000070b: u32 = r000006fc.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1760 : bytes1760=statementBytes 1803 (op1760.map lower) ∧ bytes1760.length=65 := by core033_kernel_decide
def op1761 : List WordIR.Op := [.bxor 1802 1803]
def bytes1761 : Bytes := ("    let r0000070c: u32 = r0000070a ^ r0000070b;\n" : String).toByteArray.data.toList
theorem checked1761 : bytes1761=statementBytes 1804 (op1761.map lower) ∧ bytes1761.length=48 := by core033_kernel_decide
def op1762 : List WordIR.Op := [.shr 1788 10]
def bytes1762 : Bytes := ("    let r0000070d: u32 = r000006fc >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1762 : bytes1762=statementBytes 1805 (op1762.map lower) ∧ bytes1762.length=54 := by core033_kernel_decide
def op1763 : List WordIR.Op := [.bxor 1804 1805]
def bytes1763 : Bytes := ("    let r0000070e: u32 = r0000070c ^ r0000070d;\n" : String).toByteArray.data.toList
theorem checked1763 : bytes1763=statementBytes 1806 (op1763.map lower) ∧ bytes1763.length=48 := by core033_kernel_decide
def op1764 : List WordIR.Op := [.badd 1806 1723]
def bytes1764 : Bytes := ("    let r0000070f: u32 = r0000070e.wrapping_add(r000006bb);\n" : String).toByteArray.data.toList
theorem checked1764 : bytes1764=statementBytes 1807 (op1764.map lower) ∧ bytes1764.length=60 := by core033_kernel_decide
def op1765 : List WordIR.Op := [.rotr 1619 7]
def bytes1765 : Bytes := ("    let r00000710: u32 = r00000653.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1765 : bytes1765=statementBytes 1808 (op1765.map lower) ∧ bytes1765.length=65 := by core033_kernel_decide
def op1766 : List WordIR.Op := [.rotr 1619 18]
def bytes1766 : Bytes := ("    let r00000711: u32 = r00000653.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1766 : bytes1766=statementBytes 1809 (op1766.map lower) ∧ bytes1766.length=65 := by core033_kernel_decide
def op1767 : List WordIR.Op := [.bxor 1808 1809]
def bytes1767 : Bytes := ("    let r00000712: u32 = r00000710 ^ r00000711;\n" : String).toByteArray.data.toList
theorem checked1767 : bytes1767=statementBytes 1810 (op1767.map lower) ∧ bytes1767.length=48 := by core033_kernel_decide
def op1768 : List WordIR.Op := [.shr 1619 3]
def bytes1768 : Bytes := ("    let r00000713: u32 = r00000653 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1768 : bytes1768=statementBytes 1811 (op1768.map lower) ∧ bytes1768.length=54 := by core033_kernel_decide
def op1769 : List WordIR.Op := [.bxor 1810 1811]
def bytes1769 : Bytes := ("    let r00000714: u32 = r00000712 ^ r00000713;\n" : String).toByteArray.data.toList
theorem checked1769 : bytes1769=statementBytes 1812 (op1769.map lower) ∧ bytes1769.length=48 := by core033_kernel_decide
def op1770 : List WordIR.Op := [.badd 1807 1812]
def bytes1770 : Bytes := ("    let r00000715: u32 = r0000070f.wrapping_add(r00000714);\n" : String).toByteArray.data.toList
theorem checked1770 : bytes1770=statementBytes 1813 (op1770.map lower) ∧ bytes1770.length=60 := by core033_kernel_decide
def op1771 : List WordIR.Op := [.badd 1813 1606]
def bytes1771 : Bytes := ("    let r00000716: u32 = r00000715.wrapping_add(r00000646);\n" : String).toByteArray.data.toList
theorem checked1771 : bytes1771=statementBytes 1814 (op1771.map lower) ∧ bytes1771.length=60 := by core033_kernel_decide
def op1772 : List WordIR.Op := [.rotr 1801 17]
def bytes1772 : Bytes := ("    let r00000717: u32 = r00000709.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1772 : bytes1772=statementBytes 1815 (op1772.map lower) ∧ bytes1772.length=65 := by core033_kernel_decide
def op1773 : List WordIR.Op := [.rotr 1801 19]
def bytes1773 : Bytes := ("    let r00000718: u32 = r00000709.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1773 : bytes1773=statementBytes 1816 (op1773.map lower) ∧ bytes1773.length=65 := by core033_kernel_decide
def op1774 : List WordIR.Op := [.bxor 1815 1816]
def bytes1774 : Bytes := ("    let r00000719: u32 = r00000717 ^ r00000718;\n" : String).toByteArray.data.toList
theorem checked1774 : bytes1774=statementBytes 1817 (op1774.map lower) ∧ bytes1774.length=48 := by core033_kernel_decide
def op1775 : List WordIR.Op := [.shr 1801 10]
def bytes1775 : Bytes := ("    let r0000071a: u32 = r00000709 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1775 : bytes1775=statementBytes 1818 (op1775.map lower) ∧ bytes1775.length=54 := by core033_kernel_decide
def op1776 : List WordIR.Op := [.bxor 1817 1818]
def bytes1776 : Bytes := ("    let r0000071b: u32 = r00000719 ^ r0000071a;\n" : String).toByteArray.data.toList
theorem checked1776 : bytes1776=statementBytes 1819 (op1776.map lower) ∧ bytes1776.length=48 := by core033_kernel_decide
def op1777 : List WordIR.Op := [.badd 1819 1736]
def bytes1777 : Bytes := ("    let r0000071c: u32 = r0000071b.wrapping_add(r000006c8);\n" : String).toByteArray.data.toList
theorem checked1777 : bytes1777=statementBytes 1820 (op1777.map lower) ∧ bytes1777.length=60 := by core033_kernel_decide
def op1778 : List WordIR.Op := [.rotr 1632 7]
def bytes1778 : Bytes := ("    let r0000071d: u32 = r00000660.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1778 : bytes1778=statementBytes 1821 (op1778.map lower) ∧ bytes1778.length=65 := by core033_kernel_decide
def op1779 : List WordIR.Op := [.rotr 1632 18]
def bytes1779 : Bytes := ("    let r0000071e: u32 = r00000660.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1779 : bytes1779=statementBytes 1822 (op1779.map lower) ∧ bytes1779.length=65 := by core033_kernel_decide
def op1780 : List WordIR.Op := [.bxor 1821 1822]
def bytes1780 : Bytes := ("    let r0000071f: u32 = r0000071d ^ r0000071e;\n" : String).toByteArray.data.toList
theorem checked1780 : bytes1780=statementBytes 1823 (op1780.map lower) ∧ bytes1780.length=48 := by core033_kernel_decide
def op1781 : List WordIR.Op := [.shr 1632 3]
def bytes1781 : Bytes := ("    let r00000720: u32 = r00000660 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1781 : bytes1781=statementBytes 1824 (op1781.map lower) ∧ bytes1781.length=54 := by core033_kernel_decide
def op1782 : List WordIR.Op := [.bxor 1823 1824]
def bytes1782 : Bytes := ("    let r00000721: u32 = r0000071f ^ r00000720;\n" : String).toByteArray.data.toList
theorem checked1782 : bytes1782=statementBytes 1825 (op1782.map lower) ∧ bytes1782.length=48 := by core033_kernel_decide
def op1783 : List WordIR.Op := [.badd 1820 1825]
def bytes1783 : Bytes := ("    let r00000722: u32 = r0000071c.wrapping_add(r00000721);\n" : String).toByteArray.data.toList
theorem checked1783 : bytes1783=statementBytes 1826 (op1783.map lower) ∧ bytes1783.length=60 := by core033_kernel_decide
def op1784 : List WordIR.Op := [.badd 1826 1619]
def bytes1784 : Bytes := ("    let r00000723: u32 = r00000722.wrapping_add(r00000653);\n" : String).toByteArray.data.toList
theorem checked1784 : bytes1784=statementBytes 1827 (op1784.map lower) ∧ bytes1784.length=60 := by core033_kernel_decide
def op1785 : List WordIR.Op := [.rotr 1814 17]
def bytes1785 : Bytes := ("    let r00000724: u32 = r00000716.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1785 : bytes1785=statementBytes 1828 (op1785.map lower) ∧ bytes1785.length=65 := by core033_kernel_decide
def op1786 : List WordIR.Op := [.rotr 1814 19]
def bytes1786 : Bytes := ("    let r00000725: u32 = r00000716.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1786 : bytes1786=statementBytes 1829 (op1786.map lower) ∧ bytes1786.length=65 := by core033_kernel_decide
def op1787 : List WordIR.Op := [.bxor 1828 1829]
def bytes1787 : Bytes := ("    let r00000726: u32 = r00000724 ^ r00000725;\n" : String).toByteArray.data.toList
theorem checked1787 : bytes1787=statementBytes 1830 (op1787.map lower) ∧ bytes1787.length=48 := by core033_kernel_decide
def op1788 : List WordIR.Op := [.shr 1814 10]
def bytes1788 : Bytes := ("    let r00000727: u32 = r00000716 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1788 : bytes1788=statementBytes 1831 (op1788.map lower) ∧ bytes1788.length=54 := by core033_kernel_decide
def op1789 : List WordIR.Op := [.bxor 1830 1831]
def bytes1789 : Bytes := ("    let r00000728: u32 = r00000726 ^ r00000727;\n" : String).toByteArray.data.toList
theorem checked1789 : bytes1789=statementBytes 1832 (op1789.map lower) ∧ bytes1789.length=48 := by core033_kernel_decide
def op1790 : List WordIR.Op := [.badd 1832 1749]
def bytes1790 : Bytes := ("    let r00000729: u32 = r00000728.wrapping_add(r000006d5);\n" : String).toByteArray.data.toList
theorem checked1790 : bytes1790=statementBytes 1833 (op1790.map lower) ∧ bytes1790.length=60 := by core033_kernel_decide
def op1791 : List WordIR.Op := [.rotr 1645 7]
def bytes1791 : Bytes := ("    let r0000072a: u32 = r0000066d.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1791 : bytes1791=statementBytes 1834 (op1791.map lower) ∧ bytes1791.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1728,op1729,op1730,op1731,op1732,op1733,op1734,op1735,op1736,op1737,op1738,op1739,op1740,op1741,op1742,op1743,op1744,op1745,op1746,op1747,op1748,op1749,op1750,op1751,op1752,op1753,op1754,op1755,op1756,op1757,op1758,op1759,op1760,op1761,op1762,op1763,op1764,op1765,op1766,op1767,op1768,op1769,op1770,op1771,op1772,op1773,op1774,op1775,op1776,op1777,op1778,op1779,op1780,op1781,op1782,op1783,op1784,op1785,op1786,op1787,op1788,op1789,op1790,op1791]
def chunks : List Bytes := [bytes1728,bytes1729,bytes1730,bytes1731,bytes1732,bytes1733,bytes1734,bytes1735,bytes1736,bytes1737,bytes1738,bytes1739,bytes1740,bytes1741,bytes1742,bytes1743,bytes1744,bytes1745,bytes1746,bytes1747,bytes1748,bytes1749,bytes1750,bytes1751,bytes1752,bytes1753,bytes1754,bytes1755,bytes1756,bytes1757,bytes1758,bytes1759,bytes1760,bytes1761,bytes1762,bytes1763,bytes1764,bytes1765,bytes1766,bytes1767,bytes1768,bytes1769,bytes1770,bytes1771,bytes1772,bytes1773,bytes1774,bytes1775,bytes1776,bytes1777,bytes1778,bytes1779,bytes1780,bytes1781,bytes1782,bytes1783,bytes1784,bytes1785,bytes1786,bytes1787,bytes1788,bytes1789,bytes1790,bytes1791]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1771 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1728.1 (.cons _ _ _ _ _ checked1729.1 (.cons _ _ _ _ _ checked1730.1 (.cons _ _ _ _ _ checked1731.1 (.cons _ _ _ _ _ checked1732.1 (.cons _ _ _ _ _ checked1733.1 (.cons _ _ _ _ _ checked1734.1 (.cons _ _ _ _ _ checked1735.1 (.cons _ _ _ _ _ checked1736.1 (.cons _ _ _ _ _ checked1737.1 (.cons _ _ _ _ _ checked1738.1 (.cons _ _ _ _ _ checked1739.1 (.cons _ _ _ _ _ checked1740.1 (.cons _ _ _ _ _ checked1741.1 (.cons _ _ _ _ _ checked1742.1 (.cons _ _ _ _ _ checked1743.1 (.cons _ _ _ _ _ checked1744.1 (.cons _ _ _ _ _ checked1745.1 (.cons _ _ _ _ _ checked1746.1 (.cons _ _ _ _ _ checked1747.1 (.cons _ _ _ _ _ checked1748.1 (.cons _ _ _ _ _ checked1749.1 (.cons _ _ _ _ _ checked1750.1 (.cons _ _ _ _ _ checked1751.1 (.cons _ _ _ _ _ checked1752.1 (.cons _ _ _ _ _ checked1753.1 (.cons _ _ _ _ _ checked1754.1 (.cons _ _ _ _ _ checked1755.1 (.cons _ _ _ _ _ checked1756.1 (.cons _ _ _ _ _ checked1757.1 (.cons _ _ _ _ _ checked1758.1 (.cons _ _ _ _ _ checked1759.1 (.cons _ _ _ _ _ checked1760.1 (.cons _ _ _ _ _ checked1761.1 (.cons _ _ _ _ _ checked1762.1 (.cons _ _ _ _ _ checked1763.1 (.cons _ _ _ _ _ checked1764.1 (.cons _ _ _ _ _ checked1765.1 (.cons _ _ _ _ _ checked1766.1 (.cons _ _ _ _ _ checked1767.1 (.cons _ _ _ _ _ checked1768.1 (.cons _ _ _ _ _ checked1769.1 (.cons _ _ _ _ _ checked1770.1 (.cons _ _ _ _ _ checked1771.1 (.cons _ _ _ _ _ checked1772.1 (.cons _ _ _ _ _ checked1773.1 (.cons _ _ _ _ _ checked1774.1 (.cons _ _ _ _ _ checked1775.1 (.cons _ _ _ _ _ checked1776.1 (.cons _ _ _ _ _ checked1777.1 (.cons _ _ _ _ _ checked1778.1 (.cons _ _ _ _ _ checked1779.1 (.cons _ _ _ _ _ checked1780.1 (.cons _ _ _ _ _ checked1781.1 (.cons _ _ _ _ _ checked1782.1 (.cons _ _ _ _ _ checked1783.1 (.cons _ _ _ _ _ checked1784.1 (.cons _ _ _ _ _ checked1785.1 (.cons _ _ _ _ _ checked1786.1 (.cons _ _ _ _ _ checked1787.1 (.cons _ _ _ _ _ checked1788.1 (.cons _ _ _ _ _ checked1789.1 (.cons _ _ _ _ _ checked1790.1 (.cons _ _ _ _ _ checked1791.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1771 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3635 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1728.2,checked1729.2,checked1730.2,checked1731.2,checked1732.2,checked1733.2,checked1734.2,checked1735.2,checked1736.2,checked1737.2,checked1738.2,checked1739.2,checked1740.2,checked1741.2,checked1742.2,checked1743.2,checked1744.2,checked1745.2,checked1746.2,checked1747.2,checked1748.2,checked1749.2,checked1750.2,checked1751.2,checked1752.2,checked1753.2,checked1754.2,checked1755.2,checked1756.2,checked1757.2,checked1758.2,checked1759.2,checked1760.2,checked1761.2,checked1762.2,checked1763.2,checked1764.2,checked1765.2,checked1766.2,checked1767.2,checked1768.2,checked1769.2,checked1770.2,checked1771.2,checked1772.2,checked1773.2,checked1774.2,checked1775.2,checked1776.2,checked1777.2,checked1778.2,checked1779.2,checked1780.2,checked1781.2,checked1782.2,checked1783.2,checked1784.2,checked1785.2,checked1786.2,checked1787.2,checked1788.2,checked1789.2,checked1790.2,checked1791.2]
  decide
end ArtifactSharedFrameGroup27
