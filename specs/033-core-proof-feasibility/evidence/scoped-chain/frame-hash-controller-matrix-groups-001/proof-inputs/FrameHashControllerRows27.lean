import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData27
import FrameHashControllerInstructionMatrixData28
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1771 : actualRows1771=WordField.canonicalRows actualModulus 1771 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1771 : actualRows1771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1771=2892 := by core033_kernel_decide
theorem rows1772 : actualRows1772=WordField.canonicalRows actualModulus 1772 (.bxor 0 1771) := by core033_kernel_decide
theorem stats1772 : actualRows1772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1772=7428 := by core033_kernel_decide
theorem rows1773 : actualRows1773=WordField.canonicalRows actualModulus 1773 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1773 : actualRows1773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1773=2820 := by core033_kernel_decide
theorem rows1774 : actualRows1774=WordField.canonicalRows actualModulus 1774 (.bnot 1773) := by core033_kernel_decide
theorem stats1774 : actualRows1774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1774=6276 := by core033_kernel_decide
theorem rows1775 : actualRows1775=WordField.canonicalRows actualModulus 1775 (.band 1772 1774) := by core033_kernel_decide
theorem stats1775 : actualRows1775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1775=5124 := by core033_kernel_decide
theorem rows1776 : actualRows1776=WordField.canonicalRows actualModulus 1776 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1776 : actualRows1776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1776=2892 := by core033_kernel_decide
theorem rows1777 : actualRows1777=WordField.canonicalRows actualModulus 1777 (.bxor 0 1776) := by core033_kernel_decide
theorem stats1777 : actualRows1777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1777=7428 := by core033_kernel_decide
theorem rows1778 : actualRows1778=WordField.canonicalRows actualModulus 1778 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1778 : actualRows1778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1778=2820 := by core033_kernel_decide
theorem rows1779 : actualRows1779=WordField.canonicalRows actualModulus 1779 (.bnot 1778) := by core033_kernel_decide
theorem stats1779 : actualRows1779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1779=6276 := by core033_kernel_decide
theorem rows1780 : actualRows1780=WordField.canonicalRows actualModulus 1780 (.bxor 1777 1779) := by core033_kernel_decide
theorem stats1780 : actualRows1780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1780=7428 := by core033_kernel_decide
theorem rows1781 : actualRows1781=WordField.canonicalRows actualModulus 1781 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1781 : actualRows1781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1781=2892 := by core033_kernel_decide
theorem rows1782 : actualRows1782=WordField.canonicalRows actualModulus 1782 (.bxor 0 1781) := by core033_kernel_decide
theorem stats1782 : actualRows1782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1782=7428 := by core033_kernel_decide
theorem rows1783 : actualRows1783=WordField.canonicalRows actualModulus 1783 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1783 : actualRows1783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1783=2820 := by core033_kernel_decide
theorem rows1784 : actualRows1784=WordField.canonicalRows actualModulus 1784 (.bnot 1783) := by core033_kernel_decide
theorem stats1784 : actualRows1784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1784=6276 := by core033_kernel_decide
theorem rows1785 : actualRows1785=WordField.canonicalRows actualModulus 1785 (.badd 1782 1784) := by core033_kernel_decide
theorem stats1785 : actualRows1785.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1785=5388 := by core033_kernel_decide
theorem rows1786 : actualRows1786=WordField.canonicalRows actualModulus 1786 (.bnot 1785) := by core033_kernel_decide
theorem stats1786 : actualRows1786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1786=6276 := by core033_kernel_decide
theorem rows1787 : actualRows1787=WordField.canonicalRows actualModulus 1787 (.band 1780 1786) := by core033_kernel_decide
theorem stats1787 : actualRows1787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1787=5124 := by core033_kernel_decide
theorem rows1788 : actualRows1788=WordField.canonicalRows actualModulus 1788 (.bxor 1775 1787) := by core033_kernel_decide
theorem stats1788 : actualRows1788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1788=7428 := by core033_kernel_decide
theorem rows1789 : actualRows1789=WordField.canonicalRows actualModulus 1789 (.shr 1788 31) := by core033_kernel_decide
theorem stats1789 : actualRows1789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1789=2892 := by core033_kernel_decide
theorem rows1790 : actualRows1790=WordField.canonicalRows actualModulus 1790 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1790 : actualRows1790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1790=2892 := by core033_kernel_decide
theorem rows1791 : actualRows1791=WordField.canonicalRows actualModulus 1791 (.bxor 1789 1790) := by core033_kernel_decide
theorem stats1791 : actualRows1791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1791=7428 := by core033_kernel_decide
theorem rows1792 : actualRows1792=WordField.canonicalRows actualModulus 1792 (.bnot 1791) := by core033_kernel_decide
theorem stats1792 : actualRows1792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1792=6276 := by core033_kernel_decide
theorem rows1793 : actualRows1793=WordField.canonicalRows actualModulus 1793 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1793 : actualRows1793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1793=2892 := by core033_kernel_decide
theorem rows1794 : actualRows1794=WordField.canonicalRows actualModulus 1794 (.badd 1792 1793) := by core033_kernel_decide
theorem stats1794 : actualRows1794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1794=5388 := by core033_kernel_decide
theorem rows1795 : actualRows1795=WordField.canonicalRows actualModulus 1795 (.band 1794 42) := by core033_kernel_decide
theorem stats1795 : actualRows1795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1795=5124 := by core033_kernel_decide
theorem rows1796 : actualRows1796=WordField.canonicalRows actualModulus 1796 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1796 : actualRows1796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1796=2892 := by core033_kernel_decide
theorem rows1797 : actualRows1797=WordField.canonicalRows actualModulus 1797 (.bxor 0 1796) := by core033_kernel_decide
theorem stats1797 : actualRows1797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1797=7428 := by core033_kernel_decide
theorem rows1798 : actualRows1798=WordField.canonicalRows actualModulus 1798 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1798 : actualRows1798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1798=2820 := by core033_kernel_decide
theorem rows1799 : actualRows1799=WordField.canonicalRows actualModulus 1799 (.bnot 1798) := by core033_kernel_decide
theorem stats1799 : actualRows1799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1799=6276 := by core033_kernel_decide
theorem rows1800 : actualRows1800=WordField.canonicalRows actualModulus 1800 (.band 1797 1799) := by core033_kernel_decide
theorem stats1800 : actualRows1800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1800=5124 := by core033_kernel_decide
theorem rows1801 : actualRows1801=WordField.canonicalRows actualModulus 1801 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1801 : actualRows1801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1801=2892 := by core033_kernel_decide
theorem rows1802 : actualRows1802=WordField.canonicalRows actualModulus 1802 (.bxor 0 1801) := by core033_kernel_decide
theorem stats1802 : actualRows1802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1802=7428 := by core033_kernel_decide
theorem rows1803 : actualRows1803=WordField.canonicalRows actualModulus 1803 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1803 : actualRows1803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1803=2820 := by core033_kernel_decide
theorem rows1804 : actualRows1804=WordField.canonicalRows actualModulus 1804 (.bnot 1803) := by core033_kernel_decide
theorem stats1804 : actualRows1804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1804=6276 := by core033_kernel_decide
theorem rows1805 : actualRows1805=WordField.canonicalRows actualModulus 1805 (.bxor 1802 1804) := by core033_kernel_decide
theorem stats1805 : actualRows1805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1805=7428 := by core033_kernel_decide
theorem rows1806 : actualRows1806=WordField.canonicalRows actualModulus 1806 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1806 : actualRows1806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1806=2892 := by core033_kernel_decide
theorem rows1807 : actualRows1807=WordField.canonicalRows actualModulus 1807 (.bxor 0 1806) := by core033_kernel_decide
theorem stats1807 : actualRows1807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1807=7428 := by core033_kernel_decide
theorem rows1808 : actualRows1808=WordField.canonicalRows actualModulus 1808 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1808 : actualRows1808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1808=2820 := by core033_kernel_decide
theorem rows1809 : actualRows1809=WordField.canonicalRows actualModulus 1809 (.bnot 1808) := by core033_kernel_decide
theorem stats1809 : actualRows1809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1809=6276 := by core033_kernel_decide
theorem rows1810 : actualRows1810=WordField.canonicalRows actualModulus 1810 (.badd 1807 1809) := by core033_kernel_decide
theorem stats1810 : actualRows1810.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1810=5388 := by core033_kernel_decide
theorem rows1811 : actualRows1811=WordField.canonicalRows actualModulus 1811 (.bnot 1810) := by core033_kernel_decide
theorem stats1811 : actualRows1811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1811=6276 := by core033_kernel_decide
theorem rows1812 : actualRows1812=WordField.canonicalRows actualModulus 1812 (.band 1805 1811) := by core033_kernel_decide
theorem stats1812 : actualRows1812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1812=5124 := by core033_kernel_decide
theorem rows1813 : actualRows1813=WordField.canonicalRows actualModulus 1813 (.bxor 1800 1812) := by core033_kernel_decide
theorem stats1813 : actualRows1813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1813=7428 := by core033_kernel_decide
theorem rows1814 : actualRows1814=WordField.canonicalRows actualModulus 1814 (.shr 1813 31) := by core033_kernel_decide
theorem stats1814 : actualRows1814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1814=2892 := by core033_kernel_decide
theorem rows1815 : actualRows1815=WordField.canonicalRows actualModulus 1815 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1815 : actualRows1815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1815=2892 := by core033_kernel_decide
theorem rows1816 : actualRows1816=WordField.canonicalRows actualModulus 1816 (.bxor 1814 1815) := by core033_kernel_decide
theorem stats1816 : actualRows1816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1816=7428 := by core033_kernel_decide
theorem rows1817 : actualRows1817=WordField.canonicalRows actualModulus 1817 (.bnot 1816) := by core033_kernel_decide
theorem stats1817 : actualRows1817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1817=6276 := by core033_kernel_decide
theorem rows1818 : actualRows1818=WordField.canonicalRows actualModulus 1818 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1818 : actualRows1818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1818=2892 := by core033_kernel_decide
theorem rows1819 : actualRows1819=WordField.canonicalRows actualModulus 1819 (.badd 1817 1818) := by core033_kernel_decide
theorem stats1819 : actualRows1819.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1819=5388 := by core033_kernel_decide
theorem rows1820 : actualRows1820=WordField.canonicalRows actualModulus 1820 (.bnot 1819) := by core033_kernel_decide
theorem stats1820 : actualRows1820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1820=6276 := by core033_kernel_decide
theorem rows1821 : actualRows1821=WordField.canonicalRows actualModulus 1821 (.literal (BitVec.ofNat 32 1541459225)) := by core033_kernel_decide
theorem stats1821 : actualRows1821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1821=3972 := by core033_kernel_decide
theorem rows1822 : actualRows1822=WordField.canonicalRows actualModulus 1822 (.band 1820 1821) := by core033_kernel_decide
theorem stats1822 : actualRows1822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1822=5124 := by core033_kernel_decide
theorem rows1823 : actualRows1823=WordField.canonicalRows actualModulus 1823 (.bxor 1795 1822) := by core033_kernel_decide
theorem stats1823 : actualRows1823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1823=7428 := by core033_kernel_decide
theorem rows1824 : actualRows1824=WordField.canonicalRows actualModulus 1824 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1824 : actualRows1824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1824=2892 := by core033_kernel_decide
theorem rows1825 : actualRows1825=WordField.canonicalRows actualModulus 1825 (.bxor 0 1824) := by core033_kernel_decide
theorem stats1825 : actualRows1825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1825=7428 := by core033_kernel_decide
theorem rows1826 : actualRows1826=WordField.canonicalRows actualModulus 1826 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1826 : actualRows1826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1826=2820 := by core033_kernel_decide
theorem rows1827 : actualRows1827=WordField.canonicalRows actualModulus 1827 (.bnot 1826) := by core033_kernel_decide
theorem stats1827 : actualRows1827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1827=6276 := by core033_kernel_decide
theorem rows1828 : actualRows1828=WordField.canonicalRows actualModulus 1828 (.band 1825 1827) := by core033_kernel_decide
theorem stats1828 : actualRows1828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1828=5124 := by core033_kernel_decide
theorem rows1829 : actualRows1829=WordField.canonicalRows actualModulus 1829 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1829 : actualRows1829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1829=2892 := by core033_kernel_decide
theorem rows1830 : actualRows1830=WordField.canonicalRows actualModulus 1830 (.bxor 0 1829) := by core033_kernel_decide
theorem stats1830 : actualRows1830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1830=7428 := by core033_kernel_decide
theorem rows1831 : actualRows1831=WordField.canonicalRows actualModulus 1831 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1831 : actualRows1831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1831=2820 := by core033_kernel_decide
theorem rows1832 : actualRows1832=WordField.canonicalRows actualModulus 1832 (.bnot 1831) := by core033_kernel_decide
theorem stats1832 : actualRows1832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1832=6276 := by core033_kernel_decide
theorem rows1833 : actualRows1833=WordField.canonicalRows actualModulus 1833 (.bxor 1830 1832) := by core033_kernel_decide
theorem stats1833 : actualRows1833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1833=7428 := by core033_kernel_decide
theorem rows1834 : actualRows1834=WordField.canonicalRows actualModulus 1834 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1834 : actualRows1834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1834=2892 := by core033_kernel_decide
def partRows27 : List R1CS.Row := actualRows1771++actualRows1772++actualRows1773++actualRows1774++actualRows1775++actualRows1776++actualRows1777++actualRows1778++actualRows1779++actualRows1780++actualRows1781++actualRows1782++actualRows1783++actualRows1784++actualRows1785++actualRows1786++actualRows1787++actualRows1788++actualRows1789++actualRows1790++actualRows1791++actualRows1792++actualRows1793++actualRows1794++actualRows1795++actualRows1796++actualRows1797++actualRows1798++actualRows1799++actualRows1800++actualRows1801++actualRows1802++actualRows1803++actualRows1804++actualRows1805++actualRows1806++actualRows1807++actualRows1808++actualRows1809++actualRows1810++actualRows1811++actualRows1812++actualRows1813++actualRows1814++actualRows1815++actualRows1816++actualRows1817++actualRows1818++actualRows1819++actualRows1820++actualRows1821++actualRows1822++actualRows1823++actualRows1824++actualRows1825++actualRows1826++actualRows1827++actualRows1828++actualRows1829++actualRows1830++actualRows1831++actualRows1832++actualRows1833++actualRows1834
def partOps27 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 0 1771,.literal (BitVec.ofNat 32 0),.bnot 1773,.band 1772 1774,.literal (BitVec.ofNat 32 2),.bxor 0 1776,.literal (BitVec.ofNat 32 0),.bnot 1778,.bxor 1777 1779,.literal (BitVec.ofNat 32 2),.bxor 0 1781,.literal (BitVec.ofNat 32 0),.bnot 1783,.badd 1782 1784,.bnot 1785,.band 1780 1786,.bxor 1775 1787,.shr 1788 31,.literal (BitVec.ofNat 32 1),.bxor 1789 1790,.bnot 1791,.literal (BitVec.ofNat 32 1),.badd 1792 1793,.band 1794 42,.literal (BitVec.ofNat 32 2),.bxor 0 1796,.literal (BitVec.ofNat 32 0),.bnot 1798,.band 1797 1799,.literal (BitVec.ofNat 32 2),.bxor 0 1801,.literal (BitVec.ofNat 32 0),.bnot 1803,.bxor 1802 1804,.literal (BitVec.ofNat 32 2),.bxor 0 1806,.literal (BitVec.ofNat 32 0),.bnot 1808,.badd 1807 1809,.bnot 1810,.band 1805 1811,.bxor 1800 1812,.shr 1813 31,.literal (BitVec.ofNat 32 1),.bxor 1814 1815,.bnot 1816,.literal (BitVec.ofNat 32 1),.badd 1817 1818,.bnot 1819,.literal (BitVec.ofNat 32 1541459225),.band 1820 1821,.bxor 1795 1822,.literal (BitVec.ofNat 32 2),.bxor 0 1824,.literal (BitVec.ofNat 32 0),.bnot 1826,.band 1825 1827,.literal (BitVec.ofNat 32 2),.bxor 0 1829,.literal (BitVec.ofNat 32 0),.bnot 1831,.bxor 1830 1832,.literal (BitVec.ofNat 32 2)]
theorem partExact27 : partRows27=WordField.rows actualModulus 1771 partOps27 := by
  simp only [partRows27,partOps27,WordField.rows,rows1771,rows1772,rows1773,rows1774,rows1775,rows1776,rows1777,rows1778,rows1779,rows1780,rows1781,rows1782,rows1783,rows1784,rows1785,rows1786,rows1787,rows1788,rows1789,rows1790,rows1791,rows1792,rows1793,rows1794,rows1795,rows1796,rows1797,rows1798,rows1799,rows1800,rows1801,rows1802,rows1803,rows1804,rows1805,rows1806,rows1807,rows1808,rows1809,rows1810,rows1811,rows1812,rows1813,rows1814,rows1815,rows1816,rows1817,rows1818,rows1819,rows1820,rows1821,rows1822,rows1823,rows1824,rows1825,rows1826,rows1827,rows1828,rows1829,rows1830,rows1831,rows1832,rows1833,rows1834,List.append_assoc,List.append_nil]
theorem partLength27 : partOps27.length=64 := by decide
theorem partStats27 : partRows27.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows27=327768 := by
  simp only [partRows27,List.length_append,MatrixRowBlocks.rows_weight_append,stats1771.1,stats1771.2,stats1772.1,stats1772.2,stats1773.1,stats1773.2,stats1774.1,stats1774.2,stats1775.1,stats1775.2,stats1776.1,stats1776.2,stats1777.1,stats1777.2,stats1778.1,stats1778.2,stats1779.1,stats1779.2,stats1780.1,stats1780.2,stats1781.1,stats1781.2,stats1782.1,stats1782.2,stats1783.1,stats1783.2,stats1784.1,stats1784.2,stats1785.1,stats1785.2,stats1786.1,stats1786.2,stats1787.1,stats1787.2,stats1788.1,stats1788.2,stats1789.1,stats1789.2,stats1790.1,stats1790.2,stats1791.1,stats1791.2,stats1792.1,stats1792.2,stats1793.1,stats1793.2,stats1794.1,stats1794.2,stats1795.1,stats1795.2,stats1796.1,stats1796.2,stats1797.1,stats1797.2,stats1798.1,stats1798.2,stats1799.1,stats1799.2,stats1800.1,stats1800.2,stats1801.1,stats1801.2,stats1802.1,stats1802.2,stats1803.1,stats1803.2,stats1804.1,stats1804.2,stats1805.1,stats1805.2,stats1806.1,stats1806.2,stats1807.1,stats1807.2,stats1808.1,stats1808.2,stats1809.1,stats1809.2,stats1810.1,stats1810.2,stats1811.1,stats1811.2,stats1812.1,stats1812.2,stats1813.1,stats1813.2,stats1814.1,stats1814.2,stats1815.1,stats1815.2,stats1816.1,stats1816.2,stats1817.1,stats1817.2,stats1818.1,stats1818.2,stats1819.1,stats1819.2,stats1820.1,stats1820.2,stats1821.1,stats1821.2,stats1822.1,stats1822.2,stats1823.1,stats1823.2,stats1824.1,stats1824.2,stats1825.1,stats1825.2,stats1826.1,stats1826.2,stats1827.1,stats1827.2,stats1828.1,stats1828.2,stats1829.1,stats1829.2,stats1830.1,stats1830.2,stats1831.1,stats1831.2,stats1832.1,stats1832.2,stats1833.1,stats1833.2,stats1834.1,stats1834.2]
  decide
end FrameHashControllerCheckedRows
