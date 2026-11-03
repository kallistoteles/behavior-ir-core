import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData27
import SharedFrameInstructionMatrixData28
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1771 : actualRows1771=WordField.canonicalRows actualModulus 1771 (.bxor 1769 1770) := by core033_kernel_decide
theorem stats1771 : actualRows1771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1771=7428 := by core033_kernel_decide
theorem rows1772 : actualRows1772=WordField.canonicalRows actualModulus 1772 (.shr 1580 3) := by core033_kernel_decide
theorem stats1772 : actualRows1772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1772=4908 := by core033_kernel_decide
theorem rows1773 : actualRows1773=WordField.canonicalRows actualModulus 1773 (.bxor 1771 1772) := by core033_kernel_decide
theorem stats1773 : actualRows1773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1773=7428 := by core033_kernel_decide
theorem rows1774 : actualRows1774=WordField.canonicalRows actualModulus 1774 (.badd 1768 1773) := by core033_kernel_decide
theorem stats1774 : actualRows1774.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1774=5388 := by core033_kernel_decide
theorem rows1775 : actualRows1775=WordField.canonicalRows actualModulus 1775 (.badd 1774 1567) := by core033_kernel_decide
theorem stats1775 : actualRows1775.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1775=5388 := by core033_kernel_decide
theorem rows1776 : actualRows1776=WordField.canonicalRows actualModulus 1776 (.rotr 1762 17) := by core033_kernel_decide
theorem stats1776 : actualRows1776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1776=5124 := by core033_kernel_decide
theorem rows1777 : actualRows1777=WordField.canonicalRows actualModulus 1777 (.rotr 1762 19) := by core033_kernel_decide
theorem stats1777 : actualRows1777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1777=5124 := by core033_kernel_decide
theorem rows1778 : actualRows1778=WordField.canonicalRows actualModulus 1778 (.bxor 1776 1777) := by core033_kernel_decide
theorem stats1778 : actualRows1778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1778=7428 := by core033_kernel_decide
theorem rows1779 : actualRows1779=WordField.canonicalRows actualModulus 1779 (.shr 1762 10) := by core033_kernel_decide
theorem stats1779 : actualRows1779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1779=4404 := by core033_kernel_decide
theorem rows1780 : actualRows1780=WordField.canonicalRows actualModulus 1780 (.bxor 1778 1779) := by core033_kernel_decide
theorem stats1780 : actualRows1780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1780=7428 := by core033_kernel_decide
theorem rows1781 : actualRows1781=WordField.canonicalRows actualModulus 1781 (.badd 1780 1697) := by core033_kernel_decide
theorem stats1781 : actualRows1781.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1781=5388 := by core033_kernel_decide
theorem rows1782 : actualRows1782=WordField.canonicalRows actualModulus 1782 (.rotr 1593 7) := by core033_kernel_decide
theorem stats1782 : actualRows1782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1782=5124 := by core033_kernel_decide
theorem rows1783 : actualRows1783=WordField.canonicalRows actualModulus 1783 (.rotr 1593 18) := by core033_kernel_decide
theorem stats1783 : actualRows1783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1783=5124 := by core033_kernel_decide
theorem rows1784 : actualRows1784=WordField.canonicalRows actualModulus 1784 (.bxor 1782 1783) := by core033_kernel_decide
theorem stats1784 : actualRows1784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1784=7428 := by core033_kernel_decide
theorem rows1785 : actualRows1785=WordField.canonicalRows actualModulus 1785 (.shr 1593 3) := by core033_kernel_decide
theorem stats1785 : actualRows1785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1785=4908 := by core033_kernel_decide
theorem rows1786 : actualRows1786=WordField.canonicalRows actualModulus 1786 (.bxor 1784 1785) := by core033_kernel_decide
theorem stats1786 : actualRows1786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1786=7428 := by core033_kernel_decide
theorem rows1787 : actualRows1787=WordField.canonicalRows actualModulus 1787 (.badd 1781 1786) := by core033_kernel_decide
theorem stats1787 : actualRows1787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1787=5388 := by core033_kernel_decide
theorem rows1788 : actualRows1788=WordField.canonicalRows actualModulus 1788 (.badd 1787 1580) := by core033_kernel_decide
theorem stats1788 : actualRows1788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1788=5388 := by core033_kernel_decide
theorem rows1789 : actualRows1789=WordField.canonicalRows actualModulus 1789 (.rotr 1775 17) := by core033_kernel_decide
theorem stats1789 : actualRows1789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1789=5124 := by core033_kernel_decide
theorem rows1790 : actualRows1790=WordField.canonicalRows actualModulus 1790 (.rotr 1775 19) := by core033_kernel_decide
theorem stats1790 : actualRows1790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1790=5124 := by core033_kernel_decide
theorem rows1791 : actualRows1791=WordField.canonicalRows actualModulus 1791 (.bxor 1789 1790) := by core033_kernel_decide
theorem stats1791 : actualRows1791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1791=7428 := by core033_kernel_decide
theorem rows1792 : actualRows1792=WordField.canonicalRows actualModulus 1792 (.shr 1775 10) := by core033_kernel_decide
theorem stats1792 : actualRows1792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1792=4404 := by core033_kernel_decide
theorem rows1793 : actualRows1793=WordField.canonicalRows actualModulus 1793 (.bxor 1791 1792) := by core033_kernel_decide
theorem stats1793 : actualRows1793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1793=7428 := by core033_kernel_decide
theorem rows1794 : actualRows1794=WordField.canonicalRows actualModulus 1794 (.badd 1793 1710) := by core033_kernel_decide
theorem stats1794 : actualRows1794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1794=5388 := by core033_kernel_decide
theorem rows1795 : actualRows1795=WordField.canonicalRows actualModulus 1795 (.rotr 1606 7) := by core033_kernel_decide
theorem stats1795 : actualRows1795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1795=5124 := by core033_kernel_decide
theorem rows1796 : actualRows1796=WordField.canonicalRows actualModulus 1796 (.rotr 1606 18) := by core033_kernel_decide
theorem stats1796 : actualRows1796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1796=5124 := by core033_kernel_decide
theorem rows1797 : actualRows1797=WordField.canonicalRows actualModulus 1797 (.bxor 1795 1796) := by core033_kernel_decide
theorem stats1797 : actualRows1797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1797=7428 := by core033_kernel_decide
theorem rows1798 : actualRows1798=WordField.canonicalRows actualModulus 1798 (.shr 1606 3) := by core033_kernel_decide
theorem stats1798 : actualRows1798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1798=4908 := by core033_kernel_decide
theorem rows1799 : actualRows1799=WordField.canonicalRows actualModulus 1799 (.bxor 1797 1798) := by core033_kernel_decide
theorem stats1799 : actualRows1799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1799=7428 := by core033_kernel_decide
theorem rows1800 : actualRows1800=WordField.canonicalRows actualModulus 1800 (.badd 1794 1799) := by core033_kernel_decide
theorem stats1800 : actualRows1800.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1800=5388 := by core033_kernel_decide
theorem rows1801 : actualRows1801=WordField.canonicalRows actualModulus 1801 (.badd 1800 1593) := by core033_kernel_decide
theorem stats1801 : actualRows1801.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1801=5388 := by core033_kernel_decide
theorem rows1802 : actualRows1802=WordField.canonicalRows actualModulus 1802 (.rotr 1788 17) := by core033_kernel_decide
theorem stats1802 : actualRows1802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1802=5124 := by core033_kernel_decide
theorem rows1803 : actualRows1803=WordField.canonicalRows actualModulus 1803 (.rotr 1788 19) := by core033_kernel_decide
theorem stats1803 : actualRows1803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1803=5124 := by core033_kernel_decide
theorem rows1804 : actualRows1804=WordField.canonicalRows actualModulus 1804 (.bxor 1802 1803) := by core033_kernel_decide
theorem stats1804 : actualRows1804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1804=7428 := by core033_kernel_decide
theorem rows1805 : actualRows1805=WordField.canonicalRows actualModulus 1805 (.shr 1788 10) := by core033_kernel_decide
theorem stats1805 : actualRows1805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1805=4404 := by core033_kernel_decide
theorem rows1806 : actualRows1806=WordField.canonicalRows actualModulus 1806 (.bxor 1804 1805) := by core033_kernel_decide
theorem stats1806 : actualRows1806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1806=7428 := by core033_kernel_decide
theorem rows1807 : actualRows1807=WordField.canonicalRows actualModulus 1807 (.badd 1806 1723) := by core033_kernel_decide
theorem stats1807 : actualRows1807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1807=5388 := by core033_kernel_decide
theorem rows1808 : actualRows1808=WordField.canonicalRows actualModulus 1808 (.rotr 1619 7) := by core033_kernel_decide
theorem stats1808 : actualRows1808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1808=5124 := by core033_kernel_decide
theorem rows1809 : actualRows1809=WordField.canonicalRows actualModulus 1809 (.rotr 1619 18) := by core033_kernel_decide
theorem stats1809 : actualRows1809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1809=5124 := by core033_kernel_decide
theorem rows1810 : actualRows1810=WordField.canonicalRows actualModulus 1810 (.bxor 1808 1809) := by core033_kernel_decide
theorem stats1810 : actualRows1810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1810=7428 := by core033_kernel_decide
theorem rows1811 : actualRows1811=WordField.canonicalRows actualModulus 1811 (.shr 1619 3) := by core033_kernel_decide
theorem stats1811 : actualRows1811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1811=4908 := by core033_kernel_decide
theorem rows1812 : actualRows1812=WordField.canonicalRows actualModulus 1812 (.bxor 1810 1811) := by core033_kernel_decide
theorem stats1812 : actualRows1812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1812=7428 := by core033_kernel_decide
theorem rows1813 : actualRows1813=WordField.canonicalRows actualModulus 1813 (.badd 1807 1812) := by core033_kernel_decide
theorem stats1813 : actualRows1813.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1813=5388 := by core033_kernel_decide
theorem rows1814 : actualRows1814=WordField.canonicalRows actualModulus 1814 (.badd 1813 1606) := by core033_kernel_decide
theorem stats1814 : actualRows1814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1814=5388 := by core033_kernel_decide
theorem rows1815 : actualRows1815=WordField.canonicalRows actualModulus 1815 (.rotr 1801 17) := by core033_kernel_decide
theorem stats1815 : actualRows1815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1815=5124 := by core033_kernel_decide
theorem rows1816 : actualRows1816=WordField.canonicalRows actualModulus 1816 (.rotr 1801 19) := by core033_kernel_decide
theorem stats1816 : actualRows1816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1816=5124 := by core033_kernel_decide
theorem rows1817 : actualRows1817=WordField.canonicalRows actualModulus 1817 (.bxor 1815 1816) := by core033_kernel_decide
theorem stats1817 : actualRows1817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1817=7428 := by core033_kernel_decide
theorem rows1818 : actualRows1818=WordField.canonicalRows actualModulus 1818 (.shr 1801 10) := by core033_kernel_decide
theorem stats1818 : actualRows1818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1818=4404 := by core033_kernel_decide
theorem rows1819 : actualRows1819=WordField.canonicalRows actualModulus 1819 (.bxor 1817 1818) := by core033_kernel_decide
theorem stats1819 : actualRows1819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1819=7428 := by core033_kernel_decide
theorem rows1820 : actualRows1820=WordField.canonicalRows actualModulus 1820 (.badd 1819 1736) := by core033_kernel_decide
theorem stats1820 : actualRows1820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1820=5388 := by core033_kernel_decide
theorem rows1821 : actualRows1821=WordField.canonicalRows actualModulus 1821 (.rotr 1632 7) := by core033_kernel_decide
theorem stats1821 : actualRows1821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1821=5124 := by core033_kernel_decide
theorem rows1822 : actualRows1822=WordField.canonicalRows actualModulus 1822 (.rotr 1632 18) := by core033_kernel_decide
theorem stats1822 : actualRows1822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1822=5124 := by core033_kernel_decide
theorem rows1823 : actualRows1823=WordField.canonicalRows actualModulus 1823 (.bxor 1821 1822) := by core033_kernel_decide
theorem stats1823 : actualRows1823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1823=7428 := by core033_kernel_decide
theorem rows1824 : actualRows1824=WordField.canonicalRows actualModulus 1824 (.shr 1632 3) := by core033_kernel_decide
theorem stats1824 : actualRows1824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1824=4908 := by core033_kernel_decide
theorem rows1825 : actualRows1825=WordField.canonicalRows actualModulus 1825 (.bxor 1823 1824) := by core033_kernel_decide
theorem stats1825 : actualRows1825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1825=7428 := by core033_kernel_decide
theorem rows1826 : actualRows1826=WordField.canonicalRows actualModulus 1826 (.badd 1820 1825) := by core033_kernel_decide
theorem stats1826 : actualRows1826.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1826=5388 := by core033_kernel_decide
theorem rows1827 : actualRows1827=WordField.canonicalRows actualModulus 1827 (.badd 1826 1619) := by core033_kernel_decide
theorem stats1827 : actualRows1827.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1827=5388 := by core033_kernel_decide
theorem rows1828 : actualRows1828=WordField.canonicalRows actualModulus 1828 (.rotr 1814 17) := by core033_kernel_decide
theorem stats1828 : actualRows1828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1828=5124 := by core033_kernel_decide
theorem rows1829 : actualRows1829=WordField.canonicalRows actualModulus 1829 (.rotr 1814 19) := by core033_kernel_decide
theorem stats1829 : actualRows1829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1829=5124 := by core033_kernel_decide
theorem rows1830 : actualRows1830=WordField.canonicalRows actualModulus 1830 (.bxor 1828 1829) := by core033_kernel_decide
theorem stats1830 : actualRows1830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1830=7428 := by core033_kernel_decide
theorem rows1831 : actualRows1831=WordField.canonicalRows actualModulus 1831 (.shr 1814 10) := by core033_kernel_decide
theorem stats1831 : actualRows1831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1831=4404 := by core033_kernel_decide
theorem rows1832 : actualRows1832=WordField.canonicalRows actualModulus 1832 (.bxor 1830 1831) := by core033_kernel_decide
theorem stats1832 : actualRows1832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1832=7428 := by core033_kernel_decide
theorem rows1833 : actualRows1833=WordField.canonicalRows actualModulus 1833 (.badd 1832 1749) := by core033_kernel_decide
theorem stats1833 : actualRows1833.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1833=5388 := by core033_kernel_decide
theorem rows1834 : actualRows1834=WordField.canonicalRows actualModulus 1834 (.rotr 1645 7) := by core033_kernel_decide
theorem stats1834 : actualRows1834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1834=5124 := by core033_kernel_decide
def partRows27 : List R1CS.Row := actualRows1771++actualRows1772++actualRows1773++actualRows1774++actualRows1775++actualRows1776++actualRows1777++actualRows1778++actualRows1779++actualRows1780++actualRows1781++actualRows1782++actualRows1783++actualRows1784++actualRows1785++actualRows1786++actualRows1787++actualRows1788++actualRows1789++actualRows1790++actualRows1791++actualRows1792++actualRows1793++actualRows1794++actualRows1795++actualRows1796++actualRows1797++actualRows1798++actualRows1799++actualRows1800++actualRows1801++actualRows1802++actualRows1803++actualRows1804++actualRows1805++actualRows1806++actualRows1807++actualRows1808++actualRows1809++actualRows1810++actualRows1811++actualRows1812++actualRows1813++actualRows1814++actualRows1815++actualRows1816++actualRows1817++actualRows1818++actualRows1819++actualRows1820++actualRows1821++actualRows1822++actualRows1823++actualRows1824++actualRows1825++actualRows1826++actualRows1827++actualRows1828++actualRows1829++actualRows1830++actualRows1831++actualRows1832++actualRows1833++actualRows1834
def partOps27 : List WordIR.Op := [.bxor 1769 1770,.shr 1580 3,.bxor 1771 1772,.badd 1768 1773,.badd 1774 1567,.rotr 1762 17,.rotr 1762 19,.bxor 1776 1777,.shr 1762 10,.bxor 1778 1779,.badd 1780 1697,.rotr 1593 7,.rotr 1593 18,.bxor 1782 1783,.shr 1593 3,.bxor 1784 1785,.badd 1781 1786,.badd 1787 1580,.rotr 1775 17,.rotr 1775 19,.bxor 1789 1790,.shr 1775 10,.bxor 1791 1792,.badd 1793 1710,.rotr 1606 7,.rotr 1606 18,.bxor 1795 1796,.shr 1606 3,.bxor 1797 1798,.badd 1794 1799,.badd 1800 1593,.rotr 1788 17,.rotr 1788 19,.bxor 1802 1803,.shr 1788 10,.bxor 1804 1805,.badd 1806 1723,.rotr 1619 7,.rotr 1619 18,.bxor 1808 1809,.shr 1619 3,.bxor 1810 1811,.badd 1807 1812,.badd 1813 1606,.rotr 1801 17,.rotr 1801 19,.bxor 1815 1816,.shr 1801 10,.bxor 1817 1818,.badd 1819 1736,.rotr 1632 7,.rotr 1632 18,.bxor 1821 1822,.shr 1632 3,.bxor 1823 1824,.badd 1820 1825,.badd 1826 1619,.rotr 1814 17,.rotr 1814 19,.bxor 1828 1829,.shr 1814 10,.bxor 1830 1831,.badd 1832 1749,.rotr 1645 7]
theorem partExact27 : partRows27=WordField.rows actualModulus 1771 partOps27 := by
  simp only [partRows27,partOps27,WordField.rows,rows1771,rows1772,rows1773,rows1774,rows1775,rows1776,rows1777,rows1778,rows1779,rows1780,rows1781,rows1782,rows1783,rows1784,rows1785,rows1786,rows1787,rows1788,rows1789,rows1790,rows1791,rows1792,rows1793,rows1794,rows1795,rows1796,rows1797,rows1798,rows1799,rows1800,rows1801,rows1802,rows1803,rows1804,rows1805,rows1806,rows1807,rows1808,rows1809,rows1810,rows1811,rows1812,rows1813,rows1814,rows1815,rows1816,rows1817,rows1818,rows1819,rows1820,rows1821,rows1822,rows1823,rows1824,rows1825,rows1826,rows1827,rows1828,rows1829,rows1830,rows1831,rows1832,rows1833,rows1834,List.append_assoc,List.append_nil]
theorem partLength27 : partOps27.length=64 := by decide
theorem partStats27 : partRows27.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows27=373296 := by
  simp only [partRows27,List.length_append,MatrixRowBlocks.rows_weight_append,stats1771.1,stats1771.2,stats1772.1,stats1772.2,stats1773.1,stats1773.2,stats1774.1,stats1774.2,stats1775.1,stats1775.2,stats1776.1,stats1776.2,stats1777.1,stats1777.2,stats1778.1,stats1778.2,stats1779.1,stats1779.2,stats1780.1,stats1780.2,stats1781.1,stats1781.2,stats1782.1,stats1782.2,stats1783.1,stats1783.2,stats1784.1,stats1784.2,stats1785.1,stats1785.2,stats1786.1,stats1786.2,stats1787.1,stats1787.2,stats1788.1,stats1788.2,stats1789.1,stats1789.2,stats1790.1,stats1790.2,stats1791.1,stats1791.2,stats1792.1,stats1792.2,stats1793.1,stats1793.2,stats1794.1,stats1794.2,stats1795.1,stats1795.2,stats1796.1,stats1796.2,stats1797.1,stats1797.2,stats1798.1,stats1798.2,stats1799.1,stats1799.2,stats1800.1,stats1800.2,stats1801.1,stats1801.2,stats1802.1,stats1802.2,stats1803.1,stats1803.2,stats1804.1,stats1804.2,stats1805.1,stats1805.2,stats1806.1,stats1806.2,stats1807.1,stats1807.2,stats1808.1,stats1808.2,stats1809.1,stats1809.2,stats1810.1,stats1810.2,stats1811.1,stats1811.2,stats1812.1,stats1812.2,stats1813.1,stats1813.2,stats1814.1,stats1814.2,stats1815.1,stats1815.2,stats1816.1,stats1816.2,stats1817.1,stats1817.2,stats1818.1,stats1818.2,stats1819.1,stats1819.2,stats1820.1,stats1820.2,stats1821.1,stats1821.2,stats1822.1,stats1822.2,stats1823.1,stats1823.2,stats1824.1,stats1824.2,stats1825.1,stats1825.2,stats1826.1,stats1826.2,stats1827.1,stats1827.2,stats1828.1,stats1828.2,stats1829.1,stats1829.2,stats1830.1,stats1830.2,stats1831.1,stats1831.2,stats1832.1,stats1832.2,stats1833.1,stats1833.2,stats1834.1,stats1834.2]
  decide
end SharedFrameCheckedRows
