import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData28
import ActualMatrixData29
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1816 : actualRows1816=WordField.canonicalRows actualModulus 1816 (.bnot 1808) := by core033_kernel_decide
theorem stats1816 : actualRows1816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1816=6276 := by core033_kernel_decide
theorem rows1817 : actualRows1817=WordField.canonicalRows actualModulus 1817 (.band 1816 1754) := by core033_kernel_decide
theorem stats1817 : actualRows1817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1817=5124 := by core033_kernel_decide
theorem rows1818 : actualRows1818=WordField.canonicalRows actualModulus 1818 (.bxor 1815 1817) := by core033_kernel_decide
theorem stats1818 : actualRows1818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1818=7428 := by core033_kernel_decide
theorem rows1819 : actualRows1819=WordField.canonicalRows actualModulus 1819 (.badd 1814 1818) := by core033_kernel_decide
theorem stats1819 : actualRows1819.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1819=5388 := by core033_kernel_decide
theorem rows1820 : actualRows1820=WordField.canonicalRows actualModulus 1820 (.literal (BitVec.ofNat 32 3345764771)) := by core033_kernel_decide
theorem stats1820 : actualRows1820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1820=3972 := by core033_kernel_decide
theorem rows1821 : actualRows1821=WordField.canonicalRows actualModulus 1821 (.badd 1819 1820) := by core033_kernel_decide
theorem stats1821 : actualRows1821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1821=5388 := by core033_kernel_decide
theorem rows1822 : actualRows1822=WordField.canonicalRows actualModulus 1822 (.badd 1821 387) := by core033_kernel_decide
theorem stats1822 : actualRows1822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1822=5388 := by core033_kernel_decide
theorem rows1823 : actualRows1823=WordField.canonicalRows actualModulus 1823 (.rotr 1807 2) := by core033_kernel_decide
theorem stats1823 : actualRows1823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1823=5124 := by core033_kernel_decide
theorem rows1824 : actualRows1824=WordField.canonicalRows actualModulus 1824 (.rotr 1807 13) := by core033_kernel_decide
theorem stats1824 : actualRows1824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1824=5124 := by core033_kernel_decide
theorem rows1825 : actualRows1825=WordField.canonicalRows actualModulus 1825 (.bxor 1823 1824) := by core033_kernel_decide
theorem stats1825 : actualRows1825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1825=7428 := by core033_kernel_decide
theorem rows1826 : actualRows1826=WordField.canonicalRows actualModulus 1826 (.rotr 1807 22) := by core033_kernel_decide
theorem stats1826 : actualRows1826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1826=5124 := by core033_kernel_decide
theorem rows1827 : actualRows1827=WordField.canonicalRows actualModulus 1827 (.bxor 1825 1826) := by core033_kernel_decide
theorem stats1827 : actualRows1827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1827=7428 := by core033_kernel_decide
theorem rows1828 : actualRows1828=WordField.canonicalRows actualModulus 1828 (.band 1807 1780) := by core033_kernel_decide
theorem stats1828 : actualRows1828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1828=5124 := by core033_kernel_decide
theorem rows1829 : actualRows1829=WordField.canonicalRows actualModulus 1829 (.band 1807 1753) := by core033_kernel_decide
theorem stats1829 : actualRows1829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1829=5124 := by core033_kernel_decide
theorem rows1830 : actualRows1830=WordField.canonicalRows actualModulus 1830 (.bxor 1828 1829) := by core033_kernel_decide
theorem stats1830 : actualRows1830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1830=7428 := by core033_kernel_decide
theorem rows1831 : actualRows1831=WordField.canonicalRows actualModulus 1831 (.band 1780 1753) := by core033_kernel_decide
theorem stats1831 : actualRows1831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1831=5124 := by core033_kernel_decide
theorem rows1832 : actualRows1832=WordField.canonicalRows actualModulus 1832 (.bxor 1830 1831) := by core033_kernel_decide
theorem stats1832 : actualRows1832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1832=7428 := by core033_kernel_decide
theorem rows1833 : actualRows1833=WordField.canonicalRows actualModulus 1833 (.badd 1827 1832) := by core033_kernel_decide
theorem stats1833 : actualRows1833.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1833=5388 := by core033_kernel_decide
theorem rows1834 : actualRows1834=WordField.canonicalRows actualModulus 1834 (.badd 1822 1833) := by core033_kernel_decide
theorem stats1834 : actualRows1834.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1834=5388 := by core033_kernel_decide
theorem rows1835 : actualRows1835=WordField.canonicalRows actualModulus 1835 (.badd 1726 1822) := by core033_kernel_decide
theorem stats1835 : actualRows1835.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1835=5388 := by core033_kernel_decide
theorem rows1836 : actualRows1836=WordField.canonicalRows actualModulus 1836 (.rotr 1835 6) := by core033_kernel_decide
theorem stats1836 : actualRows1836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1836=5124 := by core033_kernel_decide
theorem rows1837 : actualRows1837=WordField.canonicalRows actualModulus 1837 (.rotr 1835 11) := by core033_kernel_decide
theorem stats1837 : actualRows1837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1837=5124 := by core033_kernel_decide
theorem rows1838 : actualRows1838=WordField.canonicalRows actualModulus 1838 (.bxor 1836 1837) := by core033_kernel_decide
theorem stats1838 : actualRows1838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1838=7428 := by core033_kernel_decide
theorem rows1839 : actualRows1839=WordField.canonicalRows actualModulus 1839 (.rotr 1835 25) := by core033_kernel_decide
theorem stats1839 : actualRows1839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1839=5124 := by core033_kernel_decide
theorem rows1840 : actualRows1840=WordField.canonicalRows actualModulus 1840 (.bxor 1838 1839) := by core033_kernel_decide
theorem stats1840 : actualRows1840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1840=7428 := by core033_kernel_decide
theorem rows1841 : actualRows1841=WordField.canonicalRows actualModulus 1841 (.badd 1754 1840) := by core033_kernel_decide
theorem stats1841 : actualRows1841.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1841=5388 := by core033_kernel_decide
theorem rows1842 : actualRows1842=WordField.canonicalRows actualModulus 1842 (.band 1835 1808) := by core033_kernel_decide
theorem stats1842 : actualRows1842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1842=5124 := by core033_kernel_decide
theorem rows1843 : actualRows1843=WordField.canonicalRows actualModulus 1843 (.bnot 1835) := by core033_kernel_decide
theorem stats1843 : actualRows1843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1843=6276 := by core033_kernel_decide
theorem rows1844 : actualRows1844=WordField.canonicalRows actualModulus 1844 (.band 1843 1781) := by core033_kernel_decide
theorem stats1844 : actualRows1844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1844=5124 := by core033_kernel_decide
theorem rows1845 : actualRows1845=WordField.canonicalRows actualModulus 1845 (.bxor 1842 1844) := by core033_kernel_decide
theorem stats1845 : actualRows1845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1845=7428 := by core033_kernel_decide
theorem rows1846 : actualRows1846=WordField.canonicalRows actualModulus 1846 (.badd 1841 1845) := by core033_kernel_decide
theorem stats1846 : actualRows1846.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1846=5388 := by core033_kernel_decide
theorem rows1847 : actualRows1847=WordField.canonicalRows actualModulus 1847 (.literal (BitVec.ofNat 32 3516065817)) := by core033_kernel_decide
theorem stats1847 : actualRows1847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1847=3828 := by core033_kernel_decide
theorem rows1848 : actualRows1848=WordField.canonicalRows actualModulus 1848 (.badd 1846 1847) := by core033_kernel_decide
theorem stats1848 : actualRows1848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1848=5388 := by core033_kernel_decide
theorem rows1849 : actualRows1849=WordField.canonicalRows actualModulus 1849 (.badd 1848 400) := by core033_kernel_decide
theorem stats1849 : actualRows1849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1849=5388 := by core033_kernel_decide
theorem rows1850 : actualRows1850=WordField.canonicalRows actualModulus 1850 (.rotr 1834 2) := by core033_kernel_decide
theorem stats1850 : actualRows1850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1850=5124 := by core033_kernel_decide
theorem rows1851 : actualRows1851=WordField.canonicalRows actualModulus 1851 (.rotr 1834 13) := by core033_kernel_decide
theorem stats1851 : actualRows1851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1851=5124 := by core033_kernel_decide
theorem rows1852 : actualRows1852=WordField.canonicalRows actualModulus 1852 (.bxor 1850 1851) := by core033_kernel_decide
theorem stats1852 : actualRows1852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1852=7428 := by core033_kernel_decide
theorem rows1853 : actualRows1853=WordField.canonicalRows actualModulus 1853 (.rotr 1834 22) := by core033_kernel_decide
theorem stats1853 : actualRows1853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1853=5124 := by core033_kernel_decide
theorem rows1854 : actualRows1854=WordField.canonicalRows actualModulus 1854 (.bxor 1852 1853) := by core033_kernel_decide
theorem stats1854 : actualRows1854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1854=7428 := by core033_kernel_decide
theorem rows1855 : actualRows1855=WordField.canonicalRows actualModulus 1855 (.band 1834 1807) := by core033_kernel_decide
theorem stats1855 : actualRows1855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1855=5124 := by core033_kernel_decide
theorem rows1856 : actualRows1856=WordField.canonicalRows actualModulus 1856 (.band 1834 1780) := by core033_kernel_decide
theorem stats1856 : actualRows1856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1856=5124 := by core033_kernel_decide
theorem rows1857 : actualRows1857=WordField.canonicalRows actualModulus 1857 (.bxor 1855 1856) := by core033_kernel_decide
theorem stats1857 : actualRows1857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1857=7428 := by core033_kernel_decide
theorem rows1858 : actualRows1858=WordField.canonicalRows actualModulus 1858 (.band 1807 1780) := by core033_kernel_decide
theorem stats1858 : actualRows1858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1858=5124 := by core033_kernel_decide
theorem rows1859 : actualRows1859=WordField.canonicalRows actualModulus 1859 (.bxor 1857 1858) := by core033_kernel_decide
theorem stats1859 : actualRows1859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1859=7428 := by core033_kernel_decide
theorem rows1860 : actualRows1860=WordField.canonicalRows actualModulus 1860 (.badd 1854 1859) := by core033_kernel_decide
theorem stats1860 : actualRows1860.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1860=5388 := by core033_kernel_decide
theorem rows1861 : actualRows1861=WordField.canonicalRows actualModulus 1861 (.badd 1849 1860) := by core033_kernel_decide
theorem stats1861 : actualRows1861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1861=5388 := by core033_kernel_decide
theorem rows1862 : actualRows1862=WordField.canonicalRows actualModulus 1862 (.badd 1753 1849) := by core033_kernel_decide
theorem stats1862 : actualRows1862.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1862=5388 := by core033_kernel_decide
theorem rows1863 : actualRows1863=WordField.canonicalRows actualModulus 1863 (.rotr 1862 6) := by core033_kernel_decide
theorem stats1863 : actualRows1863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1863=5124 := by core033_kernel_decide
theorem rows1864 : actualRows1864=WordField.canonicalRows actualModulus 1864 (.rotr 1862 11) := by core033_kernel_decide
theorem stats1864 : actualRows1864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1864=5124 := by core033_kernel_decide
theorem rows1865 : actualRows1865=WordField.canonicalRows actualModulus 1865 (.bxor 1863 1864) := by core033_kernel_decide
theorem stats1865 : actualRows1865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1865=7428 := by core033_kernel_decide
theorem rows1866 : actualRows1866=WordField.canonicalRows actualModulus 1866 (.rotr 1862 25) := by core033_kernel_decide
theorem stats1866 : actualRows1866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1866=5124 := by core033_kernel_decide
theorem rows1867 : actualRows1867=WordField.canonicalRows actualModulus 1867 (.bxor 1865 1866) := by core033_kernel_decide
theorem stats1867 : actualRows1867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1867=7428 := by core033_kernel_decide
theorem rows1868 : actualRows1868=WordField.canonicalRows actualModulus 1868 (.badd 1781 1867) := by core033_kernel_decide
theorem stats1868 : actualRows1868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1868=5388 := by core033_kernel_decide
theorem rows1869 : actualRows1869=WordField.canonicalRows actualModulus 1869 (.band 1862 1835) := by core033_kernel_decide
theorem stats1869 : actualRows1869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1869=5124 := by core033_kernel_decide
theorem rows1870 : actualRows1870=WordField.canonicalRows actualModulus 1870 (.bnot 1862) := by core033_kernel_decide
theorem stats1870 : actualRows1870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1870=6276 := by core033_kernel_decide
theorem rows1871 : actualRows1871=WordField.canonicalRows actualModulus 1871 (.band 1870 1808) := by core033_kernel_decide
theorem stats1871 : actualRows1871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1871=5124 := by core033_kernel_decide
theorem rows1872 : actualRows1872=WordField.canonicalRows actualModulus 1872 (.bxor 1869 1871) := by core033_kernel_decide
theorem stats1872 : actualRows1872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1872=7428 := by core033_kernel_decide
theorem rows1873 : actualRows1873=WordField.canonicalRows actualModulus 1873 (.badd 1868 1872) := by core033_kernel_decide
theorem stats1873 : actualRows1873.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1873=5388 := by core033_kernel_decide
theorem rows1874 : actualRows1874=WordField.canonicalRows actualModulus 1874 (.literal (BitVec.ofNat 32 3600352804)) := by core033_kernel_decide
theorem stats1874 : actualRows1874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1874=3756 := by core033_kernel_decide
theorem rows1875 : actualRows1875=WordField.canonicalRows actualModulus 1875 (.badd 1873 1874) := by core033_kernel_decide
theorem stats1875 : actualRows1875.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1875=5388 := by core033_kernel_decide
theorem rows1876 : actualRows1876=WordField.canonicalRows actualModulus 1876 (.badd 1875 413) := by core033_kernel_decide
theorem stats1876 : actualRows1876.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1876=5388 := by core033_kernel_decide
theorem rows1877 : actualRows1877=WordField.canonicalRows actualModulus 1877 (.rotr 1861 2) := by core033_kernel_decide
theorem stats1877 : actualRows1877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1877=5124 := by core033_kernel_decide
theorem rows1878 : actualRows1878=WordField.canonicalRows actualModulus 1878 (.rotr 1861 13) := by core033_kernel_decide
theorem stats1878 : actualRows1878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1878=5124 := by core033_kernel_decide
theorem rows1879 : actualRows1879=WordField.canonicalRows actualModulus 1879 (.bxor 1877 1878) := by core033_kernel_decide
theorem stats1879 : actualRows1879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1879=7428 := by core033_kernel_decide
def partRows28 : List R1CS.Row := actualRows1816++actualRows1817++actualRows1818++actualRows1819++actualRows1820++actualRows1821++actualRows1822++actualRows1823++actualRows1824++actualRows1825++actualRows1826++actualRows1827++actualRows1828++actualRows1829++actualRows1830++actualRows1831++actualRows1832++actualRows1833++actualRows1834++actualRows1835++actualRows1836++actualRows1837++actualRows1838++actualRows1839++actualRows1840++actualRows1841++actualRows1842++actualRows1843++actualRows1844++actualRows1845++actualRows1846++actualRows1847++actualRows1848++actualRows1849++actualRows1850++actualRows1851++actualRows1852++actualRows1853++actualRows1854++actualRows1855++actualRows1856++actualRows1857++actualRows1858++actualRows1859++actualRows1860++actualRows1861++actualRows1862++actualRows1863++actualRows1864++actualRows1865++actualRows1866++actualRows1867++actualRows1868++actualRows1869++actualRows1870++actualRows1871++actualRows1872++actualRows1873++actualRows1874++actualRows1875++actualRows1876++actualRows1877++actualRows1878++actualRows1879
def partOps28 : List WordIR.Op := [.bnot 1808,.band 1816 1754,.bxor 1815 1817,.badd 1814 1818,.literal (BitVec.ofNat 32 3345764771),.badd 1819 1820,.badd 1821 387,.rotr 1807 2,.rotr 1807 13,.bxor 1823 1824,.rotr 1807 22,.bxor 1825 1826,.band 1807 1780,.band 1807 1753,.bxor 1828 1829,.band 1780 1753,.bxor 1830 1831,.badd 1827 1832,.badd 1822 1833,.badd 1726 1822,.rotr 1835 6,.rotr 1835 11,.bxor 1836 1837,.rotr 1835 25,.bxor 1838 1839,.badd 1754 1840,.band 1835 1808,.bnot 1835,.band 1843 1781,.bxor 1842 1844,.badd 1841 1845,.literal (BitVec.ofNat 32 3516065817),.badd 1846 1847,.badd 1848 400,.rotr 1834 2,.rotr 1834 13,.bxor 1850 1851,.rotr 1834 22,.bxor 1852 1853,.band 1834 1807,.band 1834 1780,.bxor 1855 1856,.band 1807 1780,.bxor 1857 1858,.badd 1854 1859,.badd 1849 1860,.badd 1753 1849,.rotr 1862 6,.rotr 1862 11,.bxor 1863 1864,.rotr 1862 25,.bxor 1865 1866,.badd 1781 1867,.band 1862 1835,.bnot 1862,.band 1870 1808,.bxor 1869 1871,.badd 1868 1872,.literal (BitVec.ofNat 32 3600352804),.badd 1873 1874,.badd 1875 413,.rotr 1861 2,.rotr 1861 13,.bxor 1877 1878]
theorem partRowsExact28 : partRows28=WordField.rows actualModulus 1816 partOps28 := by
  simp only [partRows28,partOps28,WordField.rows,rows1816,rows1817,rows1818,rows1819,rows1820,rows1821,rows1822,rows1823,rows1824,rows1825,rows1826,rows1827,rows1828,rows1829,rows1830,rows1831,rows1832,rows1833,rows1834,rows1835,rows1836,rows1837,rows1838,rows1839,rows1840,rows1841,rows1842,rows1843,rows1844,rows1845,rows1846,rows1847,rows1848,rows1849,rows1850,rows1851,rows1852,rows1853,rows1854,rows1855,rows1856,rows1857,rows1858,rows1859,rows1860,rows1861,rows1862,rows1863,rows1864,rows1865,rows1866,rows1867,rows1868,rows1869,rows1870,rows1871,rows1872,rows1873,rows1874,rows1875,rows1876,rows1877,rows1878,rows1879,List.append_assoc,List.append_nil]
theorem partOpsLength28 : partOps28.length=64 := by decide
theorem partStats28 : partRows28.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows28=368928 := by
  simp only [partRows28,List.length_append,MatrixRowBlocks.rows_weight_append,stats1816.1,stats1816.2,stats1817.1,stats1817.2,stats1818.1,stats1818.2,stats1819.1,stats1819.2,stats1820.1,stats1820.2,stats1821.1,stats1821.2,stats1822.1,stats1822.2,stats1823.1,stats1823.2,stats1824.1,stats1824.2,stats1825.1,stats1825.2,stats1826.1,stats1826.2,stats1827.1,stats1827.2,stats1828.1,stats1828.2,stats1829.1,stats1829.2,stats1830.1,stats1830.2,stats1831.1,stats1831.2,stats1832.1,stats1832.2,stats1833.1,stats1833.2,stats1834.1,stats1834.2,stats1835.1,stats1835.2,stats1836.1,stats1836.2,stats1837.1,stats1837.2,stats1838.1,stats1838.2,stats1839.1,stats1839.2,stats1840.1,stats1840.2,stats1841.1,stats1841.2,stats1842.1,stats1842.2,stats1843.1,stats1843.2,stats1844.1,stats1844.2,stats1845.1,stats1845.2,stats1846.1,stats1846.2,stats1847.1,stats1847.2,stats1848.1,stats1848.2,stats1849.1,stats1849.2,stats1850.1,stats1850.2,stats1851.1,stats1851.2,stats1852.1,stats1852.2,stats1853.1,stats1853.2,stats1854.1,stats1854.2,stats1855.1,stats1855.2,stats1856.1,stats1856.2,stats1857.1,stats1857.2,stats1858.1,stats1858.2,stats1859.1,stats1859.2,stats1860.1,stats1860.2,stats1861.1,stats1861.2,stats1862.1,stats1862.2,stats1863.1,stats1863.2,stats1864.1,stats1864.2,stats1865.1,stats1865.2,stats1866.1,stats1866.2,stats1867.1,stats1867.2,stats1868.1,stats1868.2,stats1869.1,stats1869.2,stats1870.1,stats1870.2,stats1871.1,stats1871.2,stats1872.1,stats1872.2,stats1873.1,stats1873.2,stats1874.1,stats1874.2,stats1875.1,stats1875.2,stats1876.1,stats1876.2,stats1877.1,stats1877.2,stats1878.1,stats1878.2,stats1879.1,stats1879.2]
  decide
end ActualSHAMatrixRows
