import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData27
import ActualMatrixData28
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1752 : actualRows1752=WordField.canonicalRows actualModulus 1752 (.badd 1746 1751) := by core033_kernel_decide
theorem stats1752 : actualRows1752.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1752=5388 := by core033_kernel_decide
theorem rows1753 : actualRows1753=WordField.canonicalRows actualModulus 1753 (.badd 1741 1752) := by core033_kernel_decide
theorem stats1753 : actualRows1753.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1753=5388 := by core033_kernel_decide
theorem rows1754 : actualRows1754=WordField.canonicalRows actualModulus 1754 (.badd 1645 1741) := by core033_kernel_decide
theorem stats1754 : actualRows1754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1754=5388 := by core033_kernel_decide
theorem rows1755 : actualRows1755=WordField.canonicalRows actualModulus 1755 (.rotr 1754 6) := by core033_kernel_decide
theorem stats1755 : actualRows1755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1755=5124 := by core033_kernel_decide
theorem rows1756 : actualRows1756=WordField.canonicalRows actualModulus 1756 (.rotr 1754 11) := by core033_kernel_decide
theorem stats1756 : actualRows1756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1756=5124 := by core033_kernel_decide
theorem rows1757 : actualRows1757=WordField.canonicalRows actualModulus 1757 (.bxor 1755 1756) := by core033_kernel_decide
theorem stats1757 : actualRows1757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1757=7428 := by core033_kernel_decide
theorem rows1758 : actualRows1758=WordField.canonicalRows actualModulus 1758 (.rotr 1754 25) := by core033_kernel_decide
theorem stats1758 : actualRows1758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1758=5124 := by core033_kernel_decide
theorem rows1759 : actualRows1759=WordField.canonicalRows actualModulus 1759 (.bxor 1757 1758) := by core033_kernel_decide
theorem stats1759 : actualRows1759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1759=7428 := by core033_kernel_decide
theorem rows1760 : actualRows1760=WordField.canonicalRows actualModulus 1760 (.badd 1673 1759) := by core033_kernel_decide
theorem stats1760 : actualRows1760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1760=5388 := by core033_kernel_decide
theorem rows1761 : actualRows1761=WordField.canonicalRows actualModulus 1761 (.band 1754 1727) := by core033_kernel_decide
theorem stats1761 : actualRows1761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1761=5124 := by core033_kernel_decide
theorem rows1762 : actualRows1762=WordField.canonicalRows actualModulus 1762 (.bnot 1754) := by core033_kernel_decide
theorem stats1762 : actualRows1762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1762=6276 := by core033_kernel_decide
theorem rows1763 : actualRows1763=WordField.canonicalRows actualModulus 1763 (.band 1762 1700) := by core033_kernel_decide
theorem stats1763 : actualRows1763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1763=5124 := by core033_kernel_decide
theorem rows1764 : actualRows1764=WordField.canonicalRows actualModulus 1764 (.bxor 1761 1763) := by core033_kernel_decide
theorem stats1764 : actualRows1764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1764=7428 := by core033_kernel_decide
theorem rows1765 : actualRows1765=WordField.canonicalRows actualModulus 1765 (.badd 1760 1764) := by core033_kernel_decide
theorem stats1765 : actualRows1765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1765=5388 := by core033_kernel_decide
theorem rows1766 : actualRows1766=WordField.canonicalRows actualModulus 1766 (.literal (BitVec.ofNat 32 2820302411)) := by core033_kernel_decide
theorem stats1766 : actualRows1766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1766=3828 := by core033_kernel_decide
theorem rows1767 : actualRows1767=WordField.canonicalRows actualModulus 1767 (.badd 1765 1766) := by core033_kernel_decide
theorem stats1767 : actualRows1767.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1767=5388 := by core033_kernel_decide
theorem rows1768 : actualRows1768=WordField.canonicalRows actualModulus 1768 (.badd 1767 361) := by core033_kernel_decide
theorem stats1768 : actualRows1768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1768=5388 := by core033_kernel_decide
theorem rows1769 : actualRows1769=WordField.canonicalRows actualModulus 1769 (.rotr 1753 2) := by core033_kernel_decide
theorem stats1769 : actualRows1769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1769=5124 := by core033_kernel_decide
theorem rows1770 : actualRows1770=WordField.canonicalRows actualModulus 1770 (.rotr 1753 13) := by core033_kernel_decide
theorem stats1770 : actualRows1770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1770=5124 := by core033_kernel_decide
theorem rows1771 : actualRows1771=WordField.canonicalRows actualModulus 1771 (.bxor 1769 1770) := by core033_kernel_decide
theorem stats1771 : actualRows1771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1771=7428 := by core033_kernel_decide
theorem rows1772 : actualRows1772=WordField.canonicalRows actualModulus 1772 (.rotr 1753 22) := by core033_kernel_decide
theorem stats1772 : actualRows1772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1772=5124 := by core033_kernel_decide
theorem rows1773 : actualRows1773=WordField.canonicalRows actualModulus 1773 (.bxor 1771 1772) := by core033_kernel_decide
theorem stats1773 : actualRows1773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1773=7428 := by core033_kernel_decide
theorem rows1774 : actualRows1774=WordField.canonicalRows actualModulus 1774 (.band 1753 1726) := by core033_kernel_decide
theorem stats1774 : actualRows1774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1774=5124 := by core033_kernel_decide
theorem rows1775 : actualRows1775=WordField.canonicalRows actualModulus 1775 (.band 1753 1699) := by core033_kernel_decide
theorem stats1775 : actualRows1775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1775=5124 := by core033_kernel_decide
theorem rows1776 : actualRows1776=WordField.canonicalRows actualModulus 1776 (.bxor 1774 1775) := by core033_kernel_decide
theorem stats1776 : actualRows1776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1776=7428 := by core033_kernel_decide
theorem rows1777 : actualRows1777=WordField.canonicalRows actualModulus 1777 (.band 1726 1699) := by core033_kernel_decide
theorem stats1777 : actualRows1777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1777=5124 := by core033_kernel_decide
theorem rows1778 : actualRows1778=WordField.canonicalRows actualModulus 1778 (.bxor 1776 1777) := by core033_kernel_decide
theorem stats1778 : actualRows1778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1778=7428 := by core033_kernel_decide
theorem rows1779 : actualRows1779=WordField.canonicalRows actualModulus 1779 (.badd 1773 1778) := by core033_kernel_decide
theorem stats1779 : actualRows1779.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1779=5388 := by core033_kernel_decide
theorem rows1780 : actualRows1780=WordField.canonicalRows actualModulus 1780 (.badd 1768 1779) := by core033_kernel_decide
theorem stats1780 : actualRows1780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1780=5388 := by core033_kernel_decide
theorem rows1781 : actualRows1781=WordField.canonicalRows actualModulus 1781 (.badd 1672 1768) := by core033_kernel_decide
theorem stats1781 : actualRows1781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1781=5388 := by core033_kernel_decide
theorem rows1782 : actualRows1782=WordField.canonicalRows actualModulus 1782 (.rotr 1781 6) := by core033_kernel_decide
theorem stats1782 : actualRows1782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1782=5124 := by core033_kernel_decide
theorem rows1783 : actualRows1783=WordField.canonicalRows actualModulus 1783 (.rotr 1781 11) := by core033_kernel_decide
theorem stats1783 : actualRows1783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1783=5124 := by core033_kernel_decide
theorem rows1784 : actualRows1784=WordField.canonicalRows actualModulus 1784 (.bxor 1782 1783) := by core033_kernel_decide
theorem stats1784 : actualRows1784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1784=7428 := by core033_kernel_decide
theorem rows1785 : actualRows1785=WordField.canonicalRows actualModulus 1785 (.rotr 1781 25) := by core033_kernel_decide
theorem stats1785 : actualRows1785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1785=5124 := by core033_kernel_decide
theorem rows1786 : actualRows1786=WordField.canonicalRows actualModulus 1786 (.bxor 1784 1785) := by core033_kernel_decide
theorem stats1786 : actualRows1786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1786=7428 := by core033_kernel_decide
theorem rows1787 : actualRows1787=WordField.canonicalRows actualModulus 1787 (.badd 1700 1786) := by core033_kernel_decide
theorem stats1787 : actualRows1787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1787=5388 := by core033_kernel_decide
theorem rows1788 : actualRows1788=WordField.canonicalRows actualModulus 1788 (.band 1781 1754) := by core033_kernel_decide
theorem stats1788 : actualRows1788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1788=5124 := by core033_kernel_decide
theorem rows1789 : actualRows1789=WordField.canonicalRows actualModulus 1789 (.bnot 1781) := by core033_kernel_decide
theorem stats1789 : actualRows1789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1789=6276 := by core033_kernel_decide
theorem rows1790 : actualRows1790=WordField.canonicalRows actualModulus 1790 (.band 1789 1727) := by core033_kernel_decide
theorem stats1790 : actualRows1790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1790=5124 := by core033_kernel_decide
theorem rows1791 : actualRows1791=WordField.canonicalRows actualModulus 1791 (.bxor 1788 1790) := by core033_kernel_decide
theorem stats1791 : actualRows1791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1791=7428 := by core033_kernel_decide
theorem rows1792 : actualRows1792=WordField.canonicalRows actualModulus 1792 (.badd 1787 1791) := by core033_kernel_decide
theorem stats1792 : actualRows1792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1792=5388 := by core033_kernel_decide
theorem rows1793 : actualRows1793=WordField.canonicalRows actualModulus 1793 (.literal (BitVec.ofNat 32 3259730800)) := by core033_kernel_decide
theorem stats1793 : actualRows1793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1793=3828 := by core033_kernel_decide
theorem rows1794 : actualRows1794=WordField.canonicalRows actualModulus 1794 (.badd 1792 1793) := by core033_kernel_decide
theorem stats1794 : actualRows1794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1794=5388 := by core033_kernel_decide
theorem rows1795 : actualRows1795=WordField.canonicalRows actualModulus 1795 (.badd 1794 374) := by core033_kernel_decide
theorem stats1795 : actualRows1795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1795=5388 := by core033_kernel_decide
theorem rows1796 : actualRows1796=WordField.canonicalRows actualModulus 1796 (.rotr 1780 2) := by core033_kernel_decide
theorem stats1796 : actualRows1796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1796=5124 := by core033_kernel_decide
theorem rows1797 : actualRows1797=WordField.canonicalRows actualModulus 1797 (.rotr 1780 13) := by core033_kernel_decide
theorem stats1797 : actualRows1797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1797=5124 := by core033_kernel_decide
theorem rows1798 : actualRows1798=WordField.canonicalRows actualModulus 1798 (.bxor 1796 1797) := by core033_kernel_decide
theorem stats1798 : actualRows1798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1798=7428 := by core033_kernel_decide
theorem rows1799 : actualRows1799=WordField.canonicalRows actualModulus 1799 (.rotr 1780 22) := by core033_kernel_decide
theorem stats1799 : actualRows1799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1799=5124 := by core033_kernel_decide
theorem rows1800 : actualRows1800=WordField.canonicalRows actualModulus 1800 (.bxor 1798 1799) := by core033_kernel_decide
theorem stats1800 : actualRows1800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1800=7428 := by core033_kernel_decide
theorem rows1801 : actualRows1801=WordField.canonicalRows actualModulus 1801 (.band 1780 1753) := by core033_kernel_decide
theorem stats1801 : actualRows1801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1801=5124 := by core033_kernel_decide
theorem rows1802 : actualRows1802=WordField.canonicalRows actualModulus 1802 (.band 1780 1726) := by core033_kernel_decide
theorem stats1802 : actualRows1802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1802=5124 := by core033_kernel_decide
theorem rows1803 : actualRows1803=WordField.canonicalRows actualModulus 1803 (.bxor 1801 1802) := by core033_kernel_decide
theorem stats1803 : actualRows1803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1803=7428 := by core033_kernel_decide
theorem rows1804 : actualRows1804=WordField.canonicalRows actualModulus 1804 (.band 1753 1726) := by core033_kernel_decide
theorem stats1804 : actualRows1804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1804=5124 := by core033_kernel_decide
theorem rows1805 : actualRows1805=WordField.canonicalRows actualModulus 1805 (.bxor 1803 1804) := by core033_kernel_decide
theorem stats1805 : actualRows1805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1805=7428 := by core033_kernel_decide
theorem rows1806 : actualRows1806=WordField.canonicalRows actualModulus 1806 (.badd 1800 1805) := by core033_kernel_decide
theorem stats1806 : actualRows1806.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1806=5388 := by core033_kernel_decide
theorem rows1807 : actualRows1807=WordField.canonicalRows actualModulus 1807 (.badd 1795 1806) := by core033_kernel_decide
theorem stats1807 : actualRows1807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1807=5388 := by core033_kernel_decide
theorem rows1808 : actualRows1808=WordField.canonicalRows actualModulus 1808 (.badd 1699 1795) := by core033_kernel_decide
theorem stats1808 : actualRows1808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1808=5388 := by core033_kernel_decide
theorem rows1809 : actualRows1809=WordField.canonicalRows actualModulus 1809 (.rotr 1808 6) := by core033_kernel_decide
theorem stats1809 : actualRows1809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1809=5124 := by core033_kernel_decide
theorem rows1810 : actualRows1810=WordField.canonicalRows actualModulus 1810 (.rotr 1808 11) := by core033_kernel_decide
theorem stats1810 : actualRows1810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1810=5124 := by core033_kernel_decide
theorem rows1811 : actualRows1811=WordField.canonicalRows actualModulus 1811 (.bxor 1809 1810) := by core033_kernel_decide
theorem stats1811 : actualRows1811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1811=7428 := by core033_kernel_decide
theorem rows1812 : actualRows1812=WordField.canonicalRows actualModulus 1812 (.rotr 1808 25) := by core033_kernel_decide
theorem stats1812 : actualRows1812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1812=5124 := by core033_kernel_decide
theorem rows1813 : actualRows1813=WordField.canonicalRows actualModulus 1813 (.bxor 1811 1812) := by core033_kernel_decide
theorem stats1813 : actualRows1813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1813=7428 := by core033_kernel_decide
theorem rows1814 : actualRows1814=WordField.canonicalRows actualModulus 1814 (.badd 1727 1813) := by core033_kernel_decide
theorem stats1814 : actualRows1814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1814=5388 := by core033_kernel_decide
theorem rows1815 : actualRows1815=WordField.canonicalRows actualModulus 1815 (.band 1808 1781) := by core033_kernel_decide
theorem stats1815 : actualRows1815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1815=5124 := by core033_kernel_decide
def partRows27 : List R1CS.Row := actualRows1752++actualRows1753++actualRows1754++actualRows1755++actualRows1756++actualRows1757++actualRows1758++actualRows1759++actualRows1760++actualRows1761++actualRows1762++actualRows1763++actualRows1764++actualRows1765++actualRows1766++actualRows1767++actualRows1768++actualRows1769++actualRows1770++actualRows1771++actualRows1772++actualRows1773++actualRows1774++actualRows1775++actualRows1776++actualRows1777++actualRows1778++actualRows1779++actualRows1780++actualRows1781++actualRows1782++actualRows1783++actualRows1784++actualRows1785++actualRows1786++actualRows1787++actualRows1788++actualRows1789++actualRows1790++actualRows1791++actualRows1792++actualRows1793++actualRows1794++actualRows1795++actualRows1796++actualRows1797++actualRows1798++actualRows1799++actualRows1800++actualRows1801++actualRows1802++actualRows1803++actualRows1804++actualRows1805++actualRows1806++actualRows1807++actualRows1808++actualRows1809++actualRows1810++actualRows1811++actualRows1812++actualRows1813++actualRows1814++actualRows1815
def partOps27 : List WordIR.Op := [.badd 1746 1751,.badd 1741 1752,.badd 1645 1741,.rotr 1754 6,.rotr 1754 11,.bxor 1755 1756,.rotr 1754 25,.bxor 1757 1758,.badd 1673 1759,.band 1754 1727,.bnot 1754,.band 1762 1700,.bxor 1761 1763,.badd 1760 1764,.literal (BitVec.ofNat 32 2820302411),.badd 1765 1766,.badd 1767 361,.rotr 1753 2,.rotr 1753 13,.bxor 1769 1770,.rotr 1753 22,.bxor 1771 1772,.band 1753 1726,.band 1753 1699,.bxor 1774 1775,.band 1726 1699,.bxor 1776 1777,.badd 1773 1778,.badd 1768 1779,.badd 1672 1768,.rotr 1781 6,.rotr 1781 11,.bxor 1782 1783,.rotr 1781 25,.bxor 1784 1785,.badd 1700 1786,.band 1781 1754,.bnot 1781,.band 1789 1727,.bxor 1788 1790,.badd 1787 1791,.literal (BitVec.ofNat 32 3259730800),.badd 1792 1793,.badd 1794 374,.rotr 1780 2,.rotr 1780 13,.bxor 1796 1797,.rotr 1780 22,.bxor 1798 1799,.band 1780 1753,.band 1780 1726,.bxor 1801 1802,.band 1753 1726,.bxor 1803 1804,.badd 1800 1805,.badd 1795 1806,.badd 1699 1795,.rotr 1808 6,.rotr 1808 11,.bxor 1809 1810,.rotr 1808 25,.bxor 1811 1812,.badd 1727 1813,.band 1808 1781]
theorem partRowsExact27 : partRows27=WordField.rows actualModulus 1752 partOps27 := by
  simp only [partRows27,partOps27,WordField.rows,rows1752,rows1753,rows1754,rows1755,rows1756,rows1757,rows1758,rows1759,rows1760,rows1761,rows1762,rows1763,rows1764,rows1765,rows1766,rows1767,rows1768,rows1769,rows1770,rows1771,rows1772,rows1773,rows1774,rows1775,rows1776,rows1777,rows1778,rows1779,rows1780,rows1781,rows1782,rows1783,rows1784,rows1785,rows1786,rows1787,rows1788,rows1789,rows1790,rows1791,rows1792,rows1793,rows1794,rows1795,rows1796,rows1797,rows1798,rows1799,rows1800,rows1801,rows1802,rows1803,rows1804,rows1805,rows1806,rows1807,rows1808,rows1809,rows1810,rows1811,rows1812,rows1813,rows1814,rows1815,List.append_assoc,List.append_nil]
theorem partOpsLength27 : partOps27.length=64 := by decide
theorem partStats27 : partRows27.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows27=369264 := by
  simp only [partRows27,List.length_append,MatrixRowBlocks.rows_weight_append,stats1752.1,stats1752.2,stats1753.1,stats1753.2,stats1754.1,stats1754.2,stats1755.1,stats1755.2,stats1756.1,stats1756.2,stats1757.1,stats1757.2,stats1758.1,stats1758.2,stats1759.1,stats1759.2,stats1760.1,stats1760.2,stats1761.1,stats1761.2,stats1762.1,stats1762.2,stats1763.1,stats1763.2,stats1764.1,stats1764.2,stats1765.1,stats1765.2,stats1766.1,stats1766.2,stats1767.1,stats1767.2,stats1768.1,stats1768.2,stats1769.1,stats1769.2,stats1770.1,stats1770.2,stats1771.1,stats1771.2,stats1772.1,stats1772.2,stats1773.1,stats1773.2,stats1774.1,stats1774.2,stats1775.1,stats1775.2,stats1776.1,stats1776.2,stats1777.1,stats1777.2,stats1778.1,stats1778.2,stats1779.1,stats1779.2,stats1780.1,stats1780.2,stats1781.1,stats1781.2,stats1782.1,stats1782.2,stats1783.1,stats1783.2,stats1784.1,stats1784.2,stats1785.1,stats1785.2,stats1786.1,stats1786.2,stats1787.1,stats1787.2,stats1788.1,stats1788.2,stats1789.1,stats1789.2,stats1790.1,stats1790.2,stats1791.1,stats1791.2,stats1792.1,stats1792.2,stats1793.1,stats1793.2,stats1794.1,stats1794.2,stats1795.1,stats1795.2,stats1796.1,stats1796.2,stats1797.1,stats1797.2,stats1798.1,stats1798.2,stats1799.1,stats1799.2,stats1800.1,stats1800.2,stats1801.1,stats1801.2,stats1802.1,stats1802.2,stats1803.1,stats1803.2,stats1804.1,stats1804.2,stats1805.1,stats1805.2,stats1806.1,stats1806.2,stats1807.1,stats1807.2,stats1808.1,stats1808.2,stats1809.1,stats1809.2,stats1810.1,stats1810.2,stats1811.1,stats1811.2,stats1812.1,stats1812.2,stats1813.1,stats1813.2,stats1814.1,stats1814.2,stats1815.1,stats1815.2]
  decide
end ActualSHAMatrixRows
