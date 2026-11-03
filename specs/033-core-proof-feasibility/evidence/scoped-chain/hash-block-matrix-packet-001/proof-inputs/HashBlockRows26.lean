import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData27
import HashBlockInstructionMatrixData28
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1736 : actualRows1736=WordField.canonicalRows actualModulus 1736 (.rotr 1722 17) := by core033_kernel_decide
theorem stats1736 : actualRows1736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1736=5124 := by core033_kernel_decide
theorem rows1737 : actualRows1737=WordField.canonicalRows actualModulus 1737 (.rotr 1722 19) := by core033_kernel_decide
theorem stats1737 : actualRows1737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1737=5124 := by core033_kernel_decide
theorem rows1738 : actualRows1738=WordField.canonicalRows actualModulus 1738 (.bxor 1736 1737) := by core033_kernel_decide
theorem stats1738 : actualRows1738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1738=7428 := by core033_kernel_decide
theorem rows1739 : actualRows1739=WordField.canonicalRows actualModulus 1739 (.shr 1722 10) := by core033_kernel_decide
theorem stats1739 : actualRows1739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1739=4404 := by core033_kernel_decide
theorem rows1740 : actualRows1740=WordField.canonicalRows actualModulus 1740 (.bxor 1738 1739) := by core033_kernel_decide
theorem stats1740 : actualRows1740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1740=7428 := by core033_kernel_decide
theorem rows1741 : actualRows1741=WordField.canonicalRows actualModulus 1741 (.badd 1740 1657) := by core033_kernel_decide
theorem stats1741 : actualRows1741.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1741=5388 := by core033_kernel_decide
theorem rows1742 : actualRows1742=WordField.canonicalRows actualModulus 1742 (.rotr 1553 7) := by core033_kernel_decide
theorem stats1742 : actualRows1742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1742=5124 := by core033_kernel_decide
theorem rows1743 : actualRows1743=WordField.canonicalRows actualModulus 1743 (.rotr 1553 18) := by core033_kernel_decide
theorem stats1743 : actualRows1743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1743=5124 := by core033_kernel_decide
theorem rows1744 : actualRows1744=WordField.canonicalRows actualModulus 1744 (.bxor 1742 1743) := by core033_kernel_decide
theorem stats1744 : actualRows1744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1744=7428 := by core033_kernel_decide
theorem rows1745 : actualRows1745=WordField.canonicalRows actualModulus 1745 (.shr 1553 3) := by core033_kernel_decide
theorem stats1745 : actualRows1745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1745=4908 := by core033_kernel_decide
theorem rows1746 : actualRows1746=WordField.canonicalRows actualModulus 1746 (.bxor 1744 1745) := by core033_kernel_decide
theorem stats1746 : actualRows1746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1746=7428 := by core033_kernel_decide
theorem rows1747 : actualRows1747=WordField.canonicalRows actualModulus 1747 (.badd 1741 1746) := by core033_kernel_decide
theorem stats1747 : actualRows1747.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1747=5388 := by core033_kernel_decide
theorem rows1748 : actualRows1748=WordField.canonicalRows actualModulus 1748 (.badd 1747 1540) := by core033_kernel_decide
theorem stats1748 : actualRows1748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1748=5388 := by core033_kernel_decide
theorem rows1749 : actualRows1749=WordField.canonicalRows actualModulus 1749 (.rotr 1735 17) := by core033_kernel_decide
theorem stats1749 : actualRows1749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1749=5124 := by core033_kernel_decide
theorem rows1750 : actualRows1750=WordField.canonicalRows actualModulus 1750 (.rotr 1735 19) := by core033_kernel_decide
theorem stats1750 : actualRows1750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1750=5124 := by core033_kernel_decide
theorem rows1751 : actualRows1751=WordField.canonicalRows actualModulus 1751 (.bxor 1749 1750) := by core033_kernel_decide
theorem stats1751 : actualRows1751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1751=7428 := by core033_kernel_decide
theorem rows1752 : actualRows1752=WordField.canonicalRows actualModulus 1752 (.shr 1735 10) := by core033_kernel_decide
theorem stats1752 : actualRows1752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1752=4404 := by core033_kernel_decide
theorem rows1753 : actualRows1753=WordField.canonicalRows actualModulus 1753 (.bxor 1751 1752) := by core033_kernel_decide
theorem stats1753 : actualRows1753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1753=7428 := by core033_kernel_decide
theorem rows1754 : actualRows1754=WordField.canonicalRows actualModulus 1754 (.badd 1753 1670) := by core033_kernel_decide
theorem stats1754 : actualRows1754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1754=5388 := by core033_kernel_decide
theorem rows1755 : actualRows1755=WordField.canonicalRows actualModulus 1755 (.rotr 1566 7) := by core033_kernel_decide
theorem stats1755 : actualRows1755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1755=5124 := by core033_kernel_decide
theorem rows1756 : actualRows1756=WordField.canonicalRows actualModulus 1756 (.rotr 1566 18) := by core033_kernel_decide
theorem stats1756 : actualRows1756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1756=5124 := by core033_kernel_decide
theorem rows1757 : actualRows1757=WordField.canonicalRows actualModulus 1757 (.bxor 1755 1756) := by core033_kernel_decide
theorem stats1757 : actualRows1757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1757=7428 := by core033_kernel_decide
theorem rows1758 : actualRows1758=WordField.canonicalRows actualModulus 1758 (.shr 1566 3) := by core033_kernel_decide
theorem stats1758 : actualRows1758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1758=4908 := by core033_kernel_decide
theorem rows1759 : actualRows1759=WordField.canonicalRows actualModulus 1759 (.bxor 1757 1758) := by core033_kernel_decide
theorem stats1759 : actualRows1759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1759=7428 := by core033_kernel_decide
theorem rows1760 : actualRows1760=WordField.canonicalRows actualModulus 1760 (.badd 1754 1759) := by core033_kernel_decide
theorem stats1760 : actualRows1760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1760=5388 := by core033_kernel_decide
theorem rows1761 : actualRows1761=WordField.canonicalRows actualModulus 1761 (.badd 1760 1553) := by core033_kernel_decide
theorem stats1761 : actualRows1761.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1761=5388 := by core033_kernel_decide
theorem rows1762 : actualRows1762=WordField.canonicalRows actualModulus 1762 (.rotr 1748 17) := by core033_kernel_decide
theorem stats1762 : actualRows1762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1762=5124 := by core033_kernel_decide
theorem rows1763 : actualRows1763=WordField.canonicalRows actualModulus 1763 (.rotr 1748 19) := by core033_kernel_decide
theorem stats1763 : actualRows1763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1763=5124 := by core033_kernel_decide
theorem rows1764 : actualRows1764=WordField.canonicalRows actualModulus 1764 (.bxor 1762 1763) := by core033_kernel_decide
theorem stats1764 : actualRows1764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1764=7428 := by core033_kernel_decide
theorem rows1765 : actualRows1765=WordField.canonicalRows actualModulus 1765 (.shr 1748 10) := by core033_kernel_decide
theorem stats1765 : actualRows1765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1765=4404 := by core033_kernel_decide
theorem rows1766 : actualRows1766=WordField.canonicalRows actualModulus 1766 (.bxor 1764 1765) := by core033_kernel_decide
theorem stats1766 : actualRows1766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1766=7428 := by core033_kernel_decide
theorem rows1767 : actualRows1767=WordField.canonicalRows actualModulus 1767 (.badd 1766 1683) := by core033_kernel_decide
theorem stats1767 : actualRows1767.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1767=5388 := by core033_kernel_decide
theorem rows1768 : actualRows1768=WordField.canonicalRows actualModulus 1768 (.rotr 1579 7) := by core033_kernel_decide
theorem stats1768 : actualRows1768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1768=5124 := by core033_kernel_decide
theorem rows1769 : actualRows1769=WordField.canonicalRows actualModulus 1769 (.rotr 1579 18) := by core033_kernel_decide
theorem stats1769 : actualRows1769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1769=5124 := by core033_kernel_decide
theorem rows1770 : actualRows1770=WordField.canonicalRows actualModulus 1770 (.bxor 1768 1769) := by core033_kernel_decide
theorem stats1770 : actualRows1770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1770=7428 := by core033_kernel_decide
theorem rows1771 : actualRows1771=WordField.canonicalRows actualModulus 1771 (.shr 1579 3) := by core033_kernel_decide
theorem stats1771 : actualRows1771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1771=4908 := by core033_kernel_decide
theorem rows1772 : actualRows1772=WordField.canonicalRows actualModulus 1772 (.bxor 1770 1771) := by core033_kernel_decide
theorem stats1772 : actualRows1772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1772=7428 := by core033_kernel_decide
theorem rows1773 : actualRows1773=WordField.canonicalRows actualModulus 1773 (.badd 1767 1772) := by core033_kernel_decide
theorem stats1773 : actualRows1773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1773=5388 := by core033_kernel_decide
theorem rows1774 : actualRows1774=WordField.canonicalRows actualModulus 1774 (.badd 1773 1566) := by core033_kernel_decide
theorem stats1774 : actualRows1774.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1774=5388 := by core033_kernel_decide
theorem rows1775 : actualRows1775=WordField.canonicalRows actualModulus 1775 (.rotr 1761 17) := by core033_kernel_decide
theorem stats1775 : actualRows1775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1775=5124 := by core033_kernel_decide
theorem rows1776 : actualRows1776=WordField.canonicalRows actualModulus 1776 (.rotr 1761 19) := by core033_kernel_decide
theorem stats1776 : actualRows1776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1776=5124 := by core033_kernel_decide
theorem rows1777 : actualRows1777=WordField.canonicalRows actualModulus 1777 (.bxor 1775 1776) := by core033_kernel_decide
theorem stats1777 : actualRows1777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1777=7428 := by core033_kernel_decide
theorem rows1778 : actualRows1778=WordField.canonicalRows actualModulus 1778 (.shr 1761 10) := by core033_kernel_decide
theorem stats1778 : actualRows1778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1778=4404 := by core033_kernel_decide
theorem rows1779 : actualRows1779=WordField.canonicalRows actualModulus 1779 (.bxor 1777 1778) := by core033_kernel_decide
theorem stats1779 : actualRows1779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1779=7428 := by core033_kernel_decide
theorem rows1780 : actualRows1780=WordField.canonicalRows actualModulus 1780 (.badd 1779 1696) := by core033_kernel_decide
theorem stats1780 : actualRows1780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1780=5388 := by core033_kernel_decide
theorem rows1781 : actualRows1781=WordField.canonicalRows actualModulus 1781 (.rotr 1592 7) := by core033_kernel_decide
theorem stats1781 : actualRows1781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1781=5124 := by core033_kernel_decide
theorem rows1782 : actualRows1782=WordField.canonicalRows actualModulus 1782 (.rotr 1592 18) := by core033_kernel_decide
theorem stats1782 : actualRows1782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1782=5124 := by core033_kernel_decide
theorem rows1783 : actualRows1783=WordField.canonicalRows actualModulus 1783 (.bxor 1781 1782) := by core033_kernel_decide
theorem stats1783 : actualRows1783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1783=7428 := by core033_kernel_decide
theorem rows1784 : actualRows1784=WordField.canonicalRows actualModulus 1784 (.shr 1592 3) := by core033_kernel_decide
theorem stats1784 : actualRows1784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1784=4908 := by core033_kernel_decide
theorem rows1785 : actualRows1785=WordField.canonicalRows actualModulus 1785 (.bxor 1783 1784) := by core033_kernel_decide
theorem stats1785 : actualRows1785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1785=7428 := by core033_kernel_decide
theorem rows1786 : actualRows1786=WordField.canonicalRows actualModulus 1786 (.badd 1780 1785) := by core033_kernel_decide
theorem stats1786 : actualRows1786.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1786=5388 := by core033_kernel_decide
theorem rows1787 : actualRows1787=WordField.canonicalRows actualModulus 1787 (.badd 1786 1579) := by core033_kernel_decide
theorem stats1787 : actualRows1787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1787=5388 := by core033_kernel_decide
theorem rows1788 : actualRows1788=WordField.canonicalRows actualModulus 1788 (.rotr 1774 17) := by core033_kernel_decide
theorem stats1788 : actualRows1788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1788=5124 := by core033_kernel_decide
theorem rows1789 : actualRows1789=WordField.canonicalRows actualModulus 1789 (.rotr 1774 19) := by core033_kernel_decide
theorem stats1789 : actualRows1789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1789=5124 := by core033_kernel_decide
theorem rows1790 : actualRows1790=WordField.canonicalRows actualModulus 1790 (.bxor 1788 1789) := by core033_kernel_decide
theorem stats1790 : actualRows1790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1790=7428 := by core033_kernel_decide
theorem rows1791 : actualRows1791=WordField.canonicalRows actualModulus 1791 (.shr 1774 10) := by core033_kernel_decide
theorem stats1791 : actualRows1791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1791=4404 := by core033_kernel_decide
theorem rows1792 : actualRows1792=WordField.canonicalRows actualModulus 1792 (.bxor 1790 1791) := by core033_kernel_decide
theorem stats1792 : actualRows1792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1792=7428 := by core033_kernel_decide
theorem rows1793 : actualRows1793=WordField.canonicalRows actualModulus 1793 (.badd 1792 1709) := by core033_kernel_decide
theorem stats1793 : actualRows1793.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1793=5388 := by core033_kernel_decide
theorem rows1794 : actualRows1794=WordField.canonicalRows actualModulus 1794 (.rotr 1605 7) := by core033_kernel_decide
theorem stats1794 : actualRows1794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1794=5124 := by core033_kernel_decide
theorem rows1795 : actualRows1795=WordField.canonicalRows actualModulus 1795 (.rotr 1605 18) := by core033_kernel_decide
theorem stats1795 : actualRows1795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1795=5124 := by core033_kernel_decide
theorem rows1796 : actualRows1796=WordField.canonicalRows actualModulus 1796 (.bxor 1794 1795) := by core033_kernel_decide
theorem stats1796 : actualRows1796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1796=7428 := by core033_kernel_decide
theorem rows1797 : actualRows1797=WordField.canonicalRows actualModulus 1797 (.shr 1605 3) := by core033_kernel_decide
theorem stats1797 : actualRows1797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1797=4908 := by core033_kernel_decide
theorem rows1798 : actualRows1798=WordField.canonicalRows actualModulus 1798 (.bxor 1796 1797) := by core033_kernel_decide
theorem stats1798 : actualRows1798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1798=7428 := by core033_kernel_decide
theorem rows1799 : actualRows1799=WordField.canonicalRows actualModulus 1799 (.badd 1793 1798) := by core033_kernel_decide
theorem stats1799 : actualRows1799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1799=5388 := by core033_kernel_decide
def partRows26 : List R1CS.Row := actualRows1736++actualRows1737++actualRows1738++actualRows1739++actualRows1740++actualRows1741++actualRows1742++actualRows1743++actualRows1744++actualRows1745++actualRows1746++actualRows1747++actualRows1748++actualRows1749++actualRows1750++actualRows1751++actualRows1752++actualRows1753++actualRows1754++actualRows1755++actualRows1756++actualRows1757++actualRows1758++actualRows1759++actualRows1760++actualRows1761++actualRows1762++actualRows1763++actualRows1764++actualRows1765++actualRows1766++actualRows1767++actualRows1768++actualRows1769++actualRows1770++actualRows1771++actualRows1772++actualRows1773++actualRows1774++actualRows1775++actualRows1776++actualRows1777++actualRows1778++actualRows1779++actualRows1780++actualRows1781++actualRows1782++actualRows1783++actualRows1784++actualRows1785++actualRows1786++actualRows1787++actualRows1788++actualRows1789++actualRows1790++actualRows1791++actualRows1792++actualRows1793++actualRows1794++actualRows1795++actualRows1796++actualRows1797++actualRows1798++actualRows1799
def partOps26 : List WordIR.Op := [.rotr 1722 17,.rotr 1722 19,.bxor 1736 1737,.shr 1722 10,.bxor 1738 1739,.badd 1740 1657,.rotr 1553 7,.rotr 1553 18,.bxor 1742 1743,.shr 1553 3,.bxor 1744 1745,.badd 1741 1746,.badd 1747 1540,.rotr 1735 17,.rotr 1735 19,.bxor 1749 1750,.shr 1735 10,.bxor 1751 1752,.badd 1753 1670,.rotr 1566 7,.rotr 1566 18,.bxor 1755 1756,.shr 1566 3,.bxor 1757 1758,.badd 1754 1759,.badd 1760 1553,.rotr 1748 17,.rotr 1748 19,.bxor 1762 1763,.shr 1748 10,.bxor 1764 1765,.badd 1766 1683,.rotr 1579 7,.rotr 1579 18,.bxor 1768 1769,.shr 1579 3,.bxor 1770 1771,.badd 1767 1772,.badd 1773 1566,.rotr 1761 17,.rotr 1761 19,.bxor 1775 1776,.shr 1761 10,.bxor 1777 1778,.badd 1779 1696,.rotr 1592 7,.rotr 1592 18,.bxor 1781 1782,.shr 1592 3,.bxor 1783 1784,.badd 1780 1785,.badd 1786 1579,.rotr 1774 17,.rotr 1774 19,.bxor 1788 1789,.shr 1774 10,.bxor 1790 1791,.badd 1792 1709,.rotr 1605 7,.rotr 1605 18,.bxor 1794 1795,.shr 1605 3,.bxor 1796 1797,.badd 1793 1798]
theorem partExact26 : partRows26=WordField.rows actualModulus 1736 partOps26 := by
  simp only [partRows26,partOps26,WordField.rows,rows1736,rows1737,rows1738,rows1739,rows1740,rows1741,rows1742,rows1743,rows1744,rows1745,rows1746,rows1747,rows1748,rows1749,rows1750,rows1751,rows1752,rows1753,rows1754,rows1755,rows1756,rows1757,rows1758,rows1759,rows1760,rows1761,rows1762,rows1763,rows1764,rows1765,rows1766,rows1767,rows1768,rows1769,rows1770,rows1771,rows1772,rows1773,rows1774,rows1775,rows1776,rows1777,rows1778,rows1779,rows1780,rows1781,rows1782,rows1783,rows1784,rows1785,rows1786,rows1787,rows1788,rows1789,rows1790,rows1791,rows1792,rows1793,rows1794,rows1795,rows1796,rows1797,rows1798,rows1799,List.append_assoc,List.append_nil]
theorem partLength26 : partOps26.length=64 := by decide
theorem partStats26 : partRows26.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows26=373032 := by
  simp only [partRows26,List.length_append,MatrixRowBlocks.rows_weight_append,stats1736.1,stats1736.2,stats1737.1,stats1737.2,stats1738.1,stats1738.2,stats1739.1,stats1739.2,stats1740.1,stats1740.2,stats1741.1,stats1741.2,stats1742.1,stats1742.2,stats1743.1,stats1743.2,stats1744.1,stats1744.2,stats1745.1,stats1745.2,stats1746.1,stats1746.2,stats1747.1,stats1747.2,stats1748.1,stats1748.2,stats1749.1,stats1749.2,stats1750.1,stats1750.2,stats1751.1,stats1751.2,stats1752.1,stats1752.2,stats1753.1,stats1753.2,stats1754.1,stats1754.2,stats1755.1,stats1755.2,stats1756.1,stats1756.2,stats1757.1,stats1757.2,stats1758.1,stats1758.2,stats1759.1,stats1759.2,stats1760.1,stats1760.2,stats1761.1,stats1761.2,stats1762.1,stats1762.2,stats1763.1,stats1763.2,stats1764.1,stats1764.2,stats1765.1,stats1765.2,stats1766.1,stats1766.2,stats1767.1,stats1767.2,stats1768.1,stats1768.2,stats1769.1,stats1769.2,stats1770.1,stats1770.2,stats1771.1,stats1771.2,stats1772.1,stats1772.2,stats1773.1,stats1773.2,stats1774.1,stats1774.2,stats1775.1,stats1775.2,stats1776.1,stats1776.2,stats1777.1,stats1777.2,stats1778.1,stats1778.2,stats1779.1,stats1779.2,stats1780.1,stats1780.2,stats1781.1,stats1781.2,stats1782.1,stats1782.2,stats1783.1,stats1783.2,stats1784.1,stats1784.2,stats1785.1,stats1785.2,stats1786.1,stats1786.2,stats1787.1,stats1787.2,stats1788.1,stats1788.2,stats1789.1,stats1789.2,stats1790.1,stats1790.2,stats1791.1,stats1791.2,stats1792.1,stats1792.2,stats1793.1,stats1793.2,stats1794.1,stats1794.2,stats1795.1,stats1795.2,stats1796.1,stats1796.2,stats1797.1,stats1797.2,stats1798.1,stats1798.2,stats1799.1,stats1799.2]
  decide
end HashBlockCheckedRows
