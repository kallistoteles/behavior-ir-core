import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData27
import PairedPathRoundInstructionMatrixData28
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1760 : actualRows1760=WordField.canonicalRows actualModulus 1760 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1760 : actualRows1760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1760=2820 := by core033_kernel_decide
theorem rows1761 : actualRows1761=WordField.canonicalRows actualModulus 1761 (.bnot 1760) := by core033_kernel_decide
theorem stats1761 : actualRows1761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1761=6276 := by core033_kernel_decide
theorem rows1762 : actualRows1762=WordField.canonicalRows actualModulus 1762 (.badd 1759 1761) := by core033_kernel_decide
theorem stats1762 : actualRows1762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1762=5388 := by core033_kernel_decide
theorem rows1763 : actualRows1763=WordField.canonicalRows actualModulus 1763 (.bnot 1762) := by core033_kernel_decide
theorem stats1763 : actualRows1763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1763=6276 := by core033_kernel_decide
theorem rows1764 : actualRows1764=WordField.canonicalRows actualModulus 1764 (.band 1750 1763) := by core033_kernel_decide
theorem stats1764 : actualRows1764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1764=5124 := by core033_kernel_decide
theorem rows1765 : actualRows1765=WordField.canonicalRows actualModulus 1765 (.bxor 1738 1764) := by core033_kernel_decide
theorem stats1765 : actualRows1765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1765=7428 := by core033_kernel_decide
theorem rows1766 : actualRows1766=WordField.canonicalRows actualModulus 1766 (.shr 1765 31) := by core033_kernel_decide
theorem stats1766 : actualRows1766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1766=2892 := by core033_kernel_decide
theorem rows1767 : actualRows1767=WordField.canonicalRows actualModulus 1767 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1767 : actualRows1767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1767=2892 := by core033_kernel_decide
theorem rows1768 : actualRows1768=WordField.canonicalRows actualModulus 1768 (.bxor 1766 1767) := by core033_kernel_decide
theorem stats1768 : actualRows1768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1768=7428 := by core033_kernel_decide
theorem rows1769 : actualRows1769=WordField.canonicalRows actualModulus 1769 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1769 : actualRows1769.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1769=5388 := by core033_kernel_decide
theorem rows1770 : actualRows1770=WordField.canonicalRows actualModulus 1770 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1770 : actualRows1770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1770=2892 := by core033_kernel_decide
theorem rows1771 : actualRows1771=WordField.canonicalRows actualModulus 1771 (.bnot 1770) := by core033_kernel_decide
theorem stats1771 : actualRows1771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1771=6276 := by core033_kernel_decide
theorem rows1772 : actualRows1772=WordField.canonicalRows actualModulus 1772 (.band 1769 1771) := by core033_kernel_decide
theorem stats1772 : actualRows1772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1772=5124 := by core033_kernel_decide
theorem rows1773 : actualRows1773=WordField.canonicalRows actualModulus 1773 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1773 : actualRows1773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1773=5388 := by core033_kernel_decide
theorem rows1774 : actualRows1774=WordField.canonicalRows actualModulus 1774 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1774 : actualRows1774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1774=2892 := by core033_kernel_decide
theorem rows1775 : actualRows1775=WordField.canonicalRows actualModulus 1775 (.bnot 1774) := by core033_kernel_decide
theorem stats1775 : actualRows1775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1775=6276 := by core033_kernel_decide
theorem rows1776 : actualRows1776=WordField.canonicalRows actualModulus 1776 (.bxor 1773 1775) := by core033_kernel_decide
theorem stats1776 : actualRows1776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1776=7428 := by core033_kernel_decide
theorem rows1777 : actualRows1777=WordField.canonicalRows actualModulus 1777 (.badd 1485 1605) := by core033_kernel_decide
theorem stats1777 : actualRows1777.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1777=5388 := by core033_kernel_decide
theorem rows1778 : actualRows1778=WordField.canonicalRows actualModulus 1778 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats1778 : actualRows1778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1778=2892 := by core033_kernel_decide
theorem rows1779 : actualRows1779=WordField.canonicalRows actualModulus 1779 (.bnot 1778) := by core033_kernel_decide
theorem stats1779 : actualRows1779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1779=6276 := by core033_kernel_decide
theorem rows1780 : actualRows1780=WordField.canonicalRows actualModulus 1780 (.badd 1777 1779) := by core033_kernel_decide
theorem stats1780 : actualRows1780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1780=5388 := by core033_kernel_decide
theorem rows1781 : actualRows1781=WordField.canonicalRows actualModulus 1781 (.bnot 1780) := by core033_kernel_decide
theorem stats1781 : actualRows1781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1781=6276 := by core033_kernel_decide
theorem rows1782 : actualRows1782=WordField.canonicalRows actualModulus 1782 (.band 1776 1781) := by core033_kernel_decide
theorem stats1782 : actualRows1782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1782=5124 := by core033_kernel_decide
theorem rows1783 : actualRows1783=WordField.canonicalRows actualModulus 1783 (.bxor 1772 1782) := by core033_kernel_decide
theorem stats1783 : actualRows1783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1783=7428 := by core033_kernel_decide
theorem rows1784 : actualRows1784=WordField.canonicalRows actualModulus 1784 (.shr 1783 31) := by core033_kernel_decide
theorem stats1784 : actualRows1784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1784=2892 := by core033_kernel_decide
theorem rows1785 : actualRows1785=WordField.canonicalRows actualModulus 1785 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1785 : actualRows1785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1785=2892 := by core033_kernel_decide
theorem rows1786 : actualRows1786=WordField.canonicalRows actualModulus 1786 (.bxor 1784 1785) := by core033_kernel_decide
theorem stats1786 : actualRows1786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1786=7428 := by core033_kernel_decide
theorem rows1787 : actualRows1787=WordField.canonicalRows actualModulus 1787 (.band 1768 1786) := by core033_kernel_decide
theorem stats1787 : actualRows1787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1787=5124 := by core033_kernel_decide
theorem rows1788 : actualRows1788=WordField.canonicalRows actualModulus 1788 (.band 1726 1787) := by core033_kernel_decide
theorem stats1788 : actualRows1788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1788=5124 := by core033_kernel_decide
theorem rows1789 : actualRows1789=WordField.canonicalRows actualModulus 1789 (.band 1505 1625) := by core033_kernel_decide
theorem stats1789 : actualRows1789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1789=5124 := by core033_kernel_decide
theorem rows1790 : actualRows1790=WordField.canonicalRows actualModulus 1790 (.band 1515 1635) := by core033_kernel_decide
theorem stats1790 : actualRows1790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1790=5124 := by core033_kernel_decide
theorem rows1791 : actualRows1791=WordField.canonicalRows actualModulus 1791 (.shr 1505 1) := by core033_kernel_decide
theorem stats1791 : actualRows1791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1791=5052 := by core033_kernel_decide
theorem rows1792 : actualRows1792=WordField.canonicalRows actualModulus 1792 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1792 : actualRows1792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1792=2820 := by core033_kernel_decide
theorem rows1793 : actualRows1793=WordField.canonicalRows actualModulus 1793 (.bnot 1792) := by core033_kernel_decide
theorem stats1793 : actualRows1793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1793=6276 := by core033_kernel_decide
theorem rows1794 : actualRows1794=WordField.canonicalRows actualModulus 1794 (.band 1791 1793) := by core033_kernel_decide
theorem stats1794 : actualRows1794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1794=5124 := by core033_kernel_decide
theorem rows1795 : actualRows1795=WordField.canonicalRows actualModulus 1795 (.shr 1505 1) := by core033_kernel_decide
theorem stats1795 : actualRows1795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1795=5052 := by core033_kernel_decide
theorem rows1796 : actualRows1796=WordField.canonicalRows actualModulus 1796 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1796 : actualRows1796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1796=2820 := by core033_kernel_decide
theorem rows1797 : actualRows1797=WordField.canonicalRows actualModulus 1797 (.bnot 1796) := by core033_kernel_decide
theorem stats1797 : actualRows1797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1797=6276 := by core033_kernel_decide
theorem rows1798 : actualRows1798=WordField.canonicalRows actualModulus 1798 (.bxor 1795 1797) := by core033_kernel_decide
theorem stats1798 : actualRows1798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1798=7428 := by core033_kernel_decide
theorem rows1799 : actualRows1799=WordField.canonicalRows actualModulus 1799 (.shr 1505 1) := by core033_kernel_decide
theorem stats1799 : actualRows1799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1799=5052 := by core033_kernel_decide
theorem rows1800 : actualRows1800=WordField.canonicalRows actualModulus 1800 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1800 : actualRows1800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1800=2820 := by core033_kernel_decide
theorem rows1801 : actualRows1801=WordField.canonicalRows actualModulus 1801 (.bnot 1800) := by core033_kernel_decide
theorem stats1801 : actualRows1801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1801=6276 := by core033_kernel_decide
theorem rows1802 : actualRows1802=WordField.canonicalRows actualModulus 1802 (.badd 1799 1801) := by core033_kernel_decide
theorem stats1802 : actualRows1802.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1802=5388 := by core033_kernel_decide
theorem rows1803 : actualRows1803=WordField.canonicalRows actualModulus 1803 (.bnot 1802) := by core033_kernel_decide
theorem stats1803 : actualRows1803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1803=6276 := by core033_kernel_decide
theorem rows1804 : actualRows1804=WordField.canonicalRows actualModulus 1804 (.band 1798 1803) := by core033_kernel_decide
theorem stats1804 : actualRows1804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1804=5124 := by core033_kernel_decide
theorem rows1805 : actualRows1805=WordField.canonicalRows actualModulus 1805 (.bxor 1794 1804) := by core033_kernel_decide
theorem stats1805 : actualRows1805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1805=7428 := by core033_kernel_decide
theorem rows1806 : actualRows1806=WordField.canonicalRows actualModulus 1806 (.shr 1805 31) := by core033_kernel_decide
theorem stats1806 : actualRows1806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1806=2892 := by core033_kernel_decide
theorem rows1807 : actualRows1807=WordField.canonicalRows actualModulus 1807 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1807 : actualRows1807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1807=2892 := by core033_kernel_decide
theorem rows1808 : actualRows1808=WordField.canonicalRows actualModulus 1808 (.bxor 1806 1807) := by core033_kernel_decide
theorem stats1808 : actualRows1808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1808=7428 := by core033_kernel_decide
theorem rows1809 : actualRows1809=WordField.canonicalRows actualModulus 1809 (.shr 1625 1) := by core033_kernel_decide
theorem stats1809 : actualRows1809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1809=5052 := by core033_kernel_decide
theorem rows1810 : actualRows1810=WordField.canonicalRows actualModulus 1810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1810 : actualRows1810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1810=2820 := by core033_kernel_decide
theorem rows1811 : actualRows1811=WordField.canonicalRows actualModulus 1811 (.bnot 1810) := by core033_kernel_decide
theorem stats1811 : actualRows1811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1811=6276 := by core033_kernel_decide
theorem rows1812 : actualRows1812=WordField.canonicalRows actualModulus 1812 (.band 1809 1811) := by core033_kernel_decide
theorem stats1812 : actualRows1812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1812=5124 := by core033_kernel_decide
theorem rows1813 : actualRows1813=WordField.canonicalRows actualModulus 1813 (.shr 1625 1) := by core033_kernel_decide
theorem stats1813 : actualRows1813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1813=5052 := by core033_kernel_decide
theorem rows1814 : actualRows1814=WordField.canonicalRows actualModulus 1814 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1814 : actualRows1814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1814=2820 := by core033_kernel_decide
theorem rows1815 : actualRows1815=WordField.canonicalRows actualModulus 1815 (.bnot 1814) := by core033_kernel_decide
theorem stats1815 : actualRows1815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1815=6276 := by core033_kernel_decide
theorem rows1816 : actualRows1816=WordField.canonicalRows actualModulus 1816 (.bxor 1813 1815) := by core033_kernel_decide
theorem stats1816 : actualRows1816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1816=7428 := by core033_kernel_decide
theorem rows1817 : actualRows1817=WordField.canonicalRows actualModulus 1817 (.shr 1625 1) := by core033_kernel_decide
theorem stats1817 : actualRows1817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1817=5052 := by core033_kernel_decide
theorem rows1818 : actualRows1818=WordField.canonicalRows actualModulus 1818 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1818 : actualRows1818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1818=2820 := by core033_kernel_decide
theorem rows1819 : actualRows1819=WordField.canonicalRows actualModulus 1819 (.bnot 1818) := by core033_kernel_decide
theorem stats1819 : actualRows1819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1819=6276 := by core033_kernel_decide
theorem rows1820 : actualRows1820=WordField.canonicalRows actualModulus 1820 (.badd 1817 1819) := by core033_kernel_decide
theorem stats1820 : actualRows1820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1820=5388 := by core033_kernel_decide
theorem rows1821 : actualRows1821=WordField.canonicalRows actualModulus 1821 (.bnot 1820) := by core033_kernel_decide
theorem stats1821 : actualRows1821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1821=6276 := by core033_kernel_decide
theorem rows1822 : actualRows1822=WordField.canonicalRows actualModulus 1822 (.band 1816 1821) := by core033_kernel_decide
theorem stats1822 : actualRows1822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1822=5124 := by core033_kernel_decide
theorem rows1823 : actualRows1823=WordField.canonicalRows actualModulus 1823 (.bxor 1812 1822) := by core033_kernel_decide
theorem stats1823 : actualRows1823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1823=7428 := by core033_kernel_decide
def partRows26 : List R1CS.Row := actualRows1760++actualRows1761++actualRows1762++actualRows1763++actualRows1764++actualRows1765++actualRows1766++actualRows1767++actualRows1768++actualRows1769++actualRows1770++actualRows1771++actualRows1772++actualRows1773++actualRows1774++actualRows1775++actualRows1776++actualRows1777++actualRows1778++actualRows1779++actualRows1780++actualRows1781++actualRows1782++actualRows1783++actualRows1784++actualRows1785++actualRows1786++actualRows1787++actualRows1788++actualRows1789++actualRows1790++actualRows1791++actualRows1792++actualRows1793++actualRows1794++actualRows1795++actualRows1796++actualRows1797++actualRows1798++actualRows1799++actualRows1800++actualRows1801++actualRows1802++actualRows1803++actualRows1804++actualRows1805++actualRows1806++actualRows1807++actualRows1808++actualRows1809++actualRows1810++actualRows1811++actualRows1812++actualRows1813++actualRows1814++actualRows1815++actualRows1816++actualRows1817++actualRows1818++actualRows1819++actualRows1820++actualRows1821++actualRows1822++actualRows1823
def partOps26 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 1760,.badd 1759 1761,.bnot 1762,.band 1750 1763,.bxor 1738 1764,.shr 1765 31,.literal (BitVec.ofNat 32 1),.bxor 1766 1767,.badd 1485 1605,.literal (BitVec.ofNat 32 1048576),.bnot 1770,.band 1769 1771,.badd 1485 1605,.literal (BitVec.ofNat 32 1048576),.bnot 1774,.bxor 1773 1775,.badd 1485 1605,.literal (BitVec.ofNat 32 1048576),.bnot 1778,.badd 1777 1779,.bnot 1780,.band 1776 1781,.bxor 1772 1782,.shr 1783 31,.literal (BitVec.ofNat 32 1),.bxor 1784 1785,.band 1768 1786,.band 1726 1787,.band 1505 1625,.band 1515 1635,.shr 1505 1,.literal (BitVec.ofNat 32 0),.bnot 1792,.band 1791 1793,.shr 1505 1,.literal (BitVec.ofNat 32 0),.bnot 1796,.bxor 1795 1797,.shr 1505 1,.literal (BitVec.ofNat 32 0),.bnot 1800,.badd 1799 1801,.bnot 1802,.band 1798 1803,.bxor 1794 1804,.shr 1805 31,.literal (BitVec.ofNat 32 1),.bxor 1806 1807,.shr 1625 1,.literal (BitVec.ofNat 32 0),.bnot 1810,.band 1809 1811,.shr 1625 1,.literal (BitVec.ofNat 32 0),.bnot 1814,.bxor 1813 1815,.shr 1625 1,.literal (BitVec.ofNat 32 0),.bnot 1818,.badd 1817 1819,.bnot 1820,.band 1816 1821,.bxor 1812 1822]
theorem partExact26 : partRows26=WordField.rows actualModulus 1760 partOps26 := by
  simp only [partRows26,partOps26,WordField.rows,rows1760,rows1761,rows1762,rows1763,rows1764,rows1765,rows1766,rows1767,rows1768,rows1769,rows1770,rows1771,rows1772,rows1773,rows1774,rows1775,rows1776,rows1777,rows1778,rows1779,rows1780,rows1781,rows1782,rows1783,rows1784,rows1785,rows1786,rows1787,rows1788,rows1789,rows1790,rows1791,rows1792,rows1793,rows1794,rows1795,rows1796,rows1797,rows1798,rows1799,rows1800,rows1801,rows1802,rows1803,rows1804,rows1805,rows1806,rows1807,rows1808,rows1809,rows1810,rows1811,rows1812,rows1813,rows1814,rows1815,rows1816,rows1817,rows1818,rows1819,rows1820,rows1821,rows1822,rows1823,List.append_assoc,List.append_nil]
theorem partLength26 : partOps26.length=64 := by decide
theorem partStats26 : partRows26.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows26=332304 := by
  simp only [partRows26,List.length_append,MatrixRowBlocks.rows_weight_append,stats1760.1,stats1760.2,stats1761.1,stats1761.2,stats1762.1,stats1762.2,stats1763.1,stats1763.2,stats1764.1,stats1764.2,stats1765.1,stats1765.2,stats1766.1,stats1766.2,stats1767.1,stats1767.2,stats1768.1,stats1768.2,stats1769.1,stats1769.2,stats1770.1,stats1770.2,stats1771.1,stats1771.2,stats1772.1,stats1772.2,stats1773.1,stats1773.2,stats1774.1,stats1774.2,stats1775.1,stats1775.2,stats1776.1,stats1776.2,stats1777.1,stats1777.2,stats1778.1,stats1778.2,stats1779.1,stats1779.2,stats1780.1,stats1780.2,stats1781.1,stats1781.2,stats1782.1,stats1782.2,stats1783.1,stats1783.2,stats1784.1,stats1784.2,stats1785.1,stats1785.2,stats1786.1,stats1786.2,stats1787.1,stats1787.2,stats1788.1,stats1788.2,stats1789.1,stats1789.2,stats1790.1,stats1790.2,stats1791.1,stats1791.2,stats1792.1,stats1792.2,stats1793.1,stats1793.2,stats1794.1,stats1794.2,stats1795.1,stats1795.2,stats1796.1,stats1796.2,stats1797.1,stats1797.2,stats1798.1,stats1798.2,stats1799.1,stats1799.2,stats1800.1,stats1800.2,stats1801.1,stats1801.2,stats1802.1,stats1802.2,stats1803.1,stats1803.2,stats1804.1,stats1804.2,stats1805.1,stats1805.2,stats1806.1,stats1806.2,stats1807.1,stats1807.2,stats1808.1,stats1808.2,stats1809.1,stats1809.2,stats1810.1,stats1810.2,stats1811.1,stats1811.2,stats1812.1,stats1812.2,stats1813.1,stats1813.2,stats1814.1,stats1814.2,stats1815.1,stats1815.2,stats1816.1,stats1816.2,stats1817.1,stats1817.2,stats1818.1,stats1818.2,stats1819.1,stats1819.2,stats1820.1,stats1820.2,stats1821.1,stats1821.2,stats1822.1,stats1822.2,stats1823.1,stats1823.2]
  decide
end QuotedPairedPathRoundCheckedRows
