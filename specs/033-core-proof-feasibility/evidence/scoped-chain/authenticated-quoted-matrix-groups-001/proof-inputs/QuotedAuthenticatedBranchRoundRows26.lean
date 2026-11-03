import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData27
import AuthenticatedBranchRoundInstructionMatrixData28
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1782 : actualRows1782=WordField.canonicalRows actualModulus 1782 (.shr 1781 31) := by core033_kernel_decide
theorem stats1782 : actualRows1782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1782=2892 := by core033_kernel_decide
theorem rows1783 : actualRows1783=WordField.canonicalRows actualModulus 1783 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1783 : actualRows1783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1783=2892 := by core033_kernel_decide
theorem rows1784 : actualRows1784=WordField.canonicalRows actualModulus 1784 (.bxor 1782 1783) := by core033_kernel_decide
theorem stats1784 : actualRows1784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1784=7428 := by core033_kernel_decide
theorem rows1785 : actualRows1785=WordField.canonicalRows actualModulus 1785 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1785 : actualRows1785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1785=2892 := by core033_kernel_decide
theorem rows1786 : actualRows1786=WordField.canonicalRows actualModulus 1786 (.bxor 1321 1785) := by core033_kernel_decide
theorem stats1786 : actualRows1786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1786=7428 := by core033_kernel_decide
theorem rows1787 : actualRows1787=WordField.canonicalRows actualModulus 1787 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1787 : actualRows1787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1787=2820 := by core033_kernel_decide
theorem rows1788 : actualRows1788=WordField.canonicalRows actualModulus 1788 (.bnot 1787) := by core033_kernel_decide
theorem stats1788 : actualRows1788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1788=6276 := by core033_kernel_decide
theorem rows1789 : actualRows1789=WordField.canonicalRows actualModulus 1789 (.band 1786 1788) := by core033_kernel_decide
theorem stats1789 : actualRows1789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1789=5124 := by core033_kernel_decide
theorem rows1790 : actualRows1790=WordField.canonicalRows actualModulus 1790 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1790 : actualRows1790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1790=2892 := by core033_kernel_decide
theorem rows1791 : actualRows1791=WordField.canonicalRows actualModulus 1791 (.bxor 1321 1790) := by core033_kernel_decide
theorem stats1791 : actualRows1791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1791=7428 := by core033_kernel_decide
theorem rows1792 : actualRows1792=WordField.canonicalRows actualModulus 1792 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1792 : actualRows1792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1792=2820 := by core033_kernel_decide
theorem rows1793 : actualRows1793=WordField.canonicalRows actualModulus 1793 (.bnot 1792) := by core033_kernel_decide
theorem stats1793 : actualRows1793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1793=6276 := by core033_kernel_decide
theorem rows1794 : actualRows1794=WordField.canonicalRows actualModulus 1794 (.bxor 1791 1793) := by core033_kernel_decide
theorem stats1794 : actualRows1794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1794=7428 := by core033_kernel_decide
theorem rows1795 : actualRows1795=WordField.canonicalRows actualModulus 1795 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1795 : actualRows1795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1795=2892 := by core033_kernel_decide
theorem rows1796 : actualRows1796=WordField.canonicalRows actualModulus 1796 (.bxor 1321 1795) := by core033_kernel_decide
theorem stats1796 : actualRows1796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1796=7428 := by core033_kernel_decide
theorem rows1797 : actualRows1797=WordField.canonicalRows actualModulus 1797 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1797 : actualRows1797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1797=2820 := by core033_kernel_decide
theorem rows1798 : actualRows1798=WordField.canonicalRows actualModulus 1798 (.bnot 1797) := by core033_kernel_decide
theorem stats1798 : actualRows1798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1798=6276 := by core033_kernel_decide
theorem rows1799 : actualRows1799=WordField.canonicalRows actualModulus 1799 (.badd 1796 1798) := by core033_kernel_decide
theorem stats1799 : actualRows1799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1799=5388 := by core033_kernel_decide
theorem rows1800 : actualRows1800=WordField.canonicalRows actualModulus 1800 (.bnot 1799) := by core033_kernel_decide
theorem stats1800 : actualRows1800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1800=6276 := by core033_kernel_decide
theorem rows1801 : actualRows1801=WordField.canonicalRows actualModulus 1801 (.band 1794 1800) := by core033_kernel_decide
theorem stats1801 : actualRows1801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1801=5124 := by core033_kernel_decide
theorem rows1802 : actualRows1802=WordField.canonicalRows actualModulus 1802 (.bxor 1789 1801) := by core033_kernel_decide
theorem stats1802 : actualRows1802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1802=7428 := by core033_kernel_decide
theorem rows1803 : actualRows1803=WordField.canonicalRows actualModulus 1803 (.shr 1802 31) := by core033_kernel_decide
theorem stats1803 : actualRows1803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1803=2892 := by core033_kernel_decide
theorem rows1804 : actualRows1804=WordField.canonicalRows actualModulus 1804 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1804 : actualRows1804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1804=2892 := by core033_kernel_decide
theorem rows1805 : actualRows1805=WordField.canonicalRows actualModulus 1805 (.bxor 1803 1804) := by core033_kernel_decide
theorem stats1805 : actualRows1805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1805=7428 := by core033_kernel_decide
theorem rows1806 : actualRows1806=WordField.canonicalRows actualModulus 1806 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1806 : actualRows1806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1806=2892 := by core033_kernel_decide
theorem rows1807 : actualRows1807=WordField.canonicalRows actualModulus 1807 (.bnot 1806) := by core033_kernel_decide
theorem stats1807 : actualRows1807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1807=6276 := by core033_kernel_decide
theorem rows1808 : actualRows1808=WordField.canonicalRows actualModulus 1808 (.band 1321 1807) := by core033_kernel_decide
theorem stats1808 : actualRows1808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1808=5124 := by core033_kernel_decide
theorem rows1809 : actualRows1809=WordField.canonicalRows actualModulus 1809 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1809 : actualRows1809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1809=2892 := by core033_kernel_decide
theorem rows1810 : actualRows1810=WordField.canonicalRows actualModulus 1810 (.bnot 1809) := by core033_kernel_decide
theorem stats1810 : actualRows1810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1810=6276 := by core033_kernel_decide
theorem rows1811 : actualRows1811=WordField.canonicalRows actualModulus 1811 (.bxor 1321 1810) := by core033_kernel_decide
theorem stats1811 : actualRows1811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1811=7428 := by core033_kernel_decide
theorem rows1812 : actualRows1812=WordField.canonicalRows actualModulus 1812 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1812 : actualRows1812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1812=2892 := by core033_kernel_decide
theorem rows1813 : actualRows1813=WordField.canonicalRows actualModulus 1813 (.bnot 1812) := by core033_kernel_decide
theorem stats1813 : actualRows1813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1813=6276 := by core033_kernel_decide
theorem rows1814 : actualRows1814=WordField.canonicalRows actualModulus 1814 (.badd 1321 1813) := by core033_kernel_decide
theorem stats1814 : actualRows1814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1814=5388 := by core033_kernel_decide
theorem rows1815 : actualRows1815=WordField.canonicalRows actualModulus 1815 (.bnot 1814) := by core033_kernel_decide
theorem stats1815 : actualRows1815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1815=6276 := by core033_kernel_decide
theorem rows1816 : actualRows1816=WordField.canonicalRows actualModulus 1816 (.band 1811 1815) := by core033_kernel_decide
theorem stats1816 : actualRows1816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1816=5124 := by core033_kernel_decide
theorem rows1817 : actualRows1817=WordField.canonicalRows actualModulus 1817 (.bxor 1808 1816) := by core033_kernel_decide
theorem stats1817 : actualRows1817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1817=7428 := by core033_kernel_decide
theorem rows1818 : actualRows1818=WordField.canonicalRows actualModulus 1818 (.shr 1817 31) := by core033_kernel_decide
theorem stats1818 : actualRows1818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1818=2892 := by core033_kernel_decide
theorem rows1819 : actualRows1819=WordField.canonicalRows actualModulus 1819 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1819 : actualRows1819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1819=2892 := by core033_kernel_decide
theorem rows1820 : actualRows1820=WordField.canonicalRows actualModulus 1820 (.bxor 1818 1819) := by core033_kernel_decide
theorem stats1820 : actualRows1820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1820=7428 := by core033_kernel_decide
theorem rows1821 : actualRows1821=WordField.canonicalRows actualModulus 1821 (.shr 1766 5) := by core033_kernel_decide
theorem stats1821 : actualRows1821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1821=4764 := by core033_kernel_decide
theorem rows1822 : actualRows1822=WordField.canonicalRows actualModulus 1822 (.bnot 1766) := by core033_kernel_decide
theorem stats1822 : actualRows1822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1822=6276 := by core033_kernel_decide
theorem rows1823 : actualRows1823=WordField.canonicalRows actualModulus 1823 (.literal (BitVec.ofNat 32 31)) := by core033_kernel_decide
theorem stats1823 : actualRows1823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1823=3180 := by core033_kernel_decide
theorem rows1824 : actualRows1824=WordField.canonicalRows actualModulus 1824 (.band 1822 1823) := by core033_kernel_decide
theorem stats1824 : actualRows1824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1824=5124 := by core033_kernel_decide
theorem rows1825 : actualRows1825=WordField.canonicalRows actualModulus 1825 (.shr 1766 8) := by core033_kernel_decide
theorem stats1825 : actualRows1825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1825=4548 := by core033_kernel_decide
theorem rows1826 : actualRows1826=WordField.canonicalRows actualModulus 1826 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1826 : actualRows1826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1826=2820 := by core033_kernel_decide
theorem rows1827 : actualRows1827=WordField.canonicalRows actualModulus 1827 (.bnot 1826) := by core033_kernel_decide
theorem stats1827 : actualRows1827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1827=6276 := by core033_kernel_decide
theorem rows1828 : actualRows1828=WordField.canonicalRows actualModulus 1828 (.band 1825 1827) := by core033_kernel_decide
theorem stats1828 : actualRows1828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1828=5124 := by core033_kernel_decide
theorem rows1829 : actualRows1829=WordField.canonicalRows actualModulus 1829 (.shr 1766 8) := by core033_kernel_decide
theorem stats1829 : actualRows1829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1829=4548 := by core033_kernel_decide
theorem rows1830 : actualRows1830=WordField.canonicalRows actualModulus 1830 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1830 : actualRows1830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1830=2820 := by core033_kernel_decide
theorem rows1831 : actualRows1831=WordField.canonicalRows actualModulus 1831 (.bnot 1830) := by core033_kernel_decide
theorem stats1831 : actualRows1831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1831=6276 := by core033_kernel_decide
theorem rows1832 : actualRows1832=WordField.canonicalRows actualModulus 1832 (.bxor 1829 1831) := by core033_kernel_decide
theorem stats1832 : actualRows1832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1832=7428 := by core033_kernel_decide
theorem rows1833 : actualRows1833=WordField.canonicalRows actualModulus 1833 (.shr 1766 8) := by core033_kernel_decide
theorem stats1833 : actualRows1833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1833=4548 := by core033_kernel_decide
theorem rows1834 : actualRows1834=WordField.canonicalRows actualModulus 1834 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1834 : actualRows1834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1834=2820 := by core033_kernel_decide
theorem rows1835 : actualRows1835=WordField.canonicalRows actualModulus 1835 (.bnot 1834) := by core033_kernel_decide
theorem stats1835 : actualRows1835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1835=6276 := by core033_kernel_decide
theorem rows1836 : actualRows1836=WordField.canonicalRows actualModulus 1836 (.badd 1833 1835) := by core033_kernel_decide
theorem stats1836 : actualRows1836.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1836=5388 := by core033_kernel_decide
theorem rows1837 : actualRows1837=WordField.canonicalRows actualModulus 1837 (.bnot 1836) := by core033_kernel_decide
theorem stats1837 : actualRows1837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1837=6276 := by core033_kernel_decide
theorem rows1838 : actualRows1838=WordField.canonicalRows actualModulus 1838 (.band 1832 1837) := by core033_kernel_decide
theorem stats1838 : actualRows1838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1838=5124 := by core033_kernel_decide
theorem rows1839 : actualRows1839=WordField.canonicalRows actualModulus 1839 (.bxor 1828 1838) := by core033_kernel_decide
theorem stats1839 : actualRows1839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1839=7428 := by core033_kernel_decide
theorem rows1840 : actualRows1840=WordField.canonicalRows actualModulus 1840 (.shr 1839 31) := by core033_kernel_decide
theorem stats1840 : actualRows1840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1840=2892 := by core033_kernel_decide
theorem rows1841 : actualRows1841=WordField.canonicalRows actualModulus 1841 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1841 : actualRows1841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1841=2892 := by core033_kernel_decide
theorem rows1842 : actualRows1842=WordField.canonicalRows actualModulus 1842 (.bxor 1840 1841) := by core033_kernel_decide
theorem stats1842 : actualRows1842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1842=7428 := by core033_kernel_decide
theorem rows1843 : actualRows1843=WordField.canonicalRows actualModulus 1843 (.shr 1821 2) := by core033_kernel_decide
theorem stats1843 : actualRows1843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1843=4980 := by core033_kernel_decide
theorem rows1844 : actualRows1844=WordField.canonicalRows actualModulus 1844 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1844 : actualRows1844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1844=2892 := by core033_kernel_decide
theorem rows1845 : actualRows1845=WordField.canonicalRows actualModulus 1845 (.band 1843 1844) := by core033_kernel_decide
theorem stats1845 : actualRows1845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1845=5124 := by core033_kernel_decide
def partRows26 : List R1CS.Row := actualRows1782++actualRows1783++actualRows1784++actualRows1785++actualRows1786++actualRows1787++actualRows1788++actualRows1789++actualRows1790++actualRows1791++actualRows1792++actualRows1793++actualRows1794++actualRows1795++actualRows1796++actualRows1797++actualRows1798++actualRows1799++actualRows1800++actualRows1801++actualRows1802++actualRows1803++actualRows1804++actualRows1805++actualRows1806++actualRows1807++actualRows1808++actualRows1809++actualRows1810++actualRows1811++actualRows1812++actualRows1813++actualRows1814++actualRows1815++actualRows1816++actualRows1817++actualRows1818++actualRows1819++actualRows1820++actualRows1821++actualRows1822++actualRows1823++actualRows1824++actualRows1825++actualRows1826++actualRows1827++actualRows1828++actualRows1829++actualRows1830++actualRows1831++actualRows1832++actualRows1833++actualRows1834++actualRows1835++actualRows1836++actualRows1837++actualRows1838++actualRows1839++actualRows1840++actualRows1841++actualRows1842++actualRows1843++actualRows1844++actualRows1845
def partOps26 : List WordIR.Op := [.shr 1781 31,.literal (BitVec.ofNat 32 1),.bxor 1782 1783,.literal (BitVec.ofNat 32 256),.bxor 1321 1785,.literal (BitVec.ofNat 32 0),.bnot 1787,.band 1786 1788,.literal (BitVec.ofNat 32 256),.bxor 1321 1790,.literal (BitVec.ofNat 32 0),.bnot 1792,.bxor 1791 1793,.literal (BitVec.ofNat 32 256),.bxor 1321 1795,.literal (BitVec.ofNat 32 0),.bnot 1797,.badd 1796 1798,.bnot 1799,.band 1794 1800,.bxor 1789 1801,.shr 1802 31,.literal (BitVec.ofNat 32 1),.bxor 1803 1804,.literal (BitVec.ofNat 32 256),.bnot 1806,.band 1321 1807,.literal (BitVec.ofNat 32 256),.bnot 1809,.bxor 1321 1810,.literal (BitVec.ofNat 32 256),.bnot 1812,.badd 1321 1813,.bnot 1814,.band 1811 1815,.bxor 1808 1816,.shr 1817 31,.literal (BitVec.ofNat 32 1),.bxor 1818 1819,.shr 1766 5,.bnot 1766,.literal (BitVec.ofNat 32 31),.band 1822 1823,.shr 1766 8,.literal (BitVec.ofNat 32 0),.bnot 1826,.band 1825 1827,.shr 1766 8,.literal (BitVec.ofNat 32 0),.bnot 1830,.bxor 1829 1831,.shr 1766 8,.literal (BitVec.ofNat 32 0),.bnot 1834,.badd 1833 1835,.bnot 1836,.band 1832 1837,.bxor 1828 1838,.shr 1839 31,.literal (BitVec.ofNat 32 1),.bxor 1840 1841,.shr 1821 2,.literal (BitVec.ofNat 32 1),.band 1843 1844]
theorem partExact26 : partRows26=WordField.rows actualModulus 1782 partOps26 := by
  simp only [partRows26,partOps26,WordField.rows,rows1782,rows1783,rows1784,rows1785,rows1786,rows1787,rows1788,rows1789,rows1790,rows1791,rows1792,rows1793,rows1794,rows1795,rows1796,rows1797,rows1798,rows1799,rows1800,rows1801,rows1802,rows1803,rows1804,rows1805,rows1806,rows1807,rows1808,rows1809,rows1810,rows1811,rows1812,rows1813,rows1814,rows1815,rows1816,rows1817,rows1818,rows1819,rows1820,rows1821,rows1822,rows1823,rows1824,rows1825,rows1826,rows1827,rows1828,rows1829,rows1830,rows1831,rows1832,rows1833,rows1834,rows1835,rows1836,rows1837,rows1838,rows1839,rows1840,rows1841,rows1842,rows1843,rows1844,rows1845,List.append_assoc,List.append_nil]
theorem partLength26 : partOps26.length=64 := by decide
theorem partStats26 : partRows26.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows26=322176 := by
  simp only [partRows26,List.length_append,MatrixRowBlocks.rows_weight_append,stats1782.1,stats1782.2,stats1783.1,stats1783.2,stats1784.1,stats1784.2,stats1785.1,stats1785.2,stats1786.1,stats1786.2,stats1787.1,stats1787.2,stats1788.1,stats1788.2,stats1789.1,stats1789.2,stats1790.1,stats1790.2,stats1791.1,stats1791.2,stats1792.1,stats1792.2,stats1793.1,stats1793.2,stats1794.1,stats1794.2,stats1795.1,stats1795.2,stats1796.1,stats1796.2,stats1797.1,stats1797.2,stats1798.1,stats1798.2,stats1799.1,stats1799.2,stats1800.1,stats1800.2,stats1801.1,stats1801.2,stats1802.1,stats1802.2,stats1803.1,stats1803.2,stats1804.1,stats1804.2,stats1805.1,stats1805.2,stats1806.1,stats1806.2,stats1807.1,stats1807.2,stats1808.1,stats1808.2,stats1809.1,stats1809.2,stats1810.1,stats1810.2,stats1811.1,stats1811.2,stats1812.1,stats1812.2,stats1813.1,stats1813.2,stats1814.1,stats1814.2,stats1815.1,stats1815.2,stats1816.1,stats1816.2,stats1817.1,stats1817.2,stats1818.1,stats1818.2,stats1819.1,stats1819.2,stats1820.1,stats1820.2,stats1821.1,stats1821.2,stats1822.1,stats1822.2,stats1823.1,stats1823.2,stats1824.1,stats1824.2,stats1825.1,stats1825.2,stats1826.1,stats1826.2,stats1827.1,stats1827.2,stats1828.1,stats1828.2,stats1829.1,stats1829.2,stats1830.1,stats1830.2,stats1831.1,stats1831.2,stats1832.1,stats1832.2,stats1833.1,stats1833.2,stats1834.1,stats1834.2,stats1835.1,stats1835.2,stats1836.1,stats1836.2,stats1837.1,stats1837.2,stats1838.1,stats1838.2,stats1839.1,stats1839.2,stats1840.1,stats1840.2,stats1841.1,stats1841.2,stats1842.1,stats1842.2,stats1843.1,stats1843.2,stats1844.1,stats1844.2,stats1845.1,stats1845.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
