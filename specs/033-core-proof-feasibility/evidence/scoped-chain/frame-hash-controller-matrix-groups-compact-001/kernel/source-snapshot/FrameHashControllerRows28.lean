import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData28
import FrameHashControllerInstructionMatrixData29
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1835 : actualRows1835=WordField.canonicalRows actualModulus 1835 (.bxor 0 1834) := by core033_kernel_decide
theorem stats1835 : actualRows1835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1835=7428 := by core033_kernel_decide
theorem rows1836 : actualRows1836=WordField.canonicalRows actualModulus 1836 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1836 : actualRows1836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1836=2820 := by core033_kernel_decide
theorem rows1837 : actualRows1837=WordField.canonicalRows actualModulus 1837 (.bnot 1836) := by core033_kernel_decide
theorem stats1837 : actualRows1837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1837=6276 := by core033_kernel_decide
theorem rows1838 : actualRows1838=WordField.canonicalRows actualModulus 1838 (.badd 1835 1837) := by core033_kernel_decide
theorem stats1838 : actualRows1838.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1838=5388 := by core033_kernel_decide
theorem rows1839 : actualRows1839=WordField.canonicalRows actualModulus 1839 (.bnot 1838) := by core033_kernel_decide
theorem stats1839 : actualRows1839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1839=6276 := by core033_kernel_decide
theorem rows1840 : actualRows1840=WordField.canonicalRows actualModulus 1840 (.band 1833 1839) := by core033_kernel_decide
theorem stats1840 : actualRows1840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1840=5124 := by core033_kernel_decide
theorem rows1841 : actualRows1841=WordField.canonicalRows actualModulus 1841 (.bxor 1828 1840) := by core033_kernel_decide
theorem stats1841 : actualRows1841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1841=7428 := by core033_kernel_decide
theorem rows1842 : actualRows1842=WordField.canonicalRows actualModulus 1842 (.shr 1841 31) := by core033_kernel_decide
theorem stats1842 : actualRows1842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1842=2892 := by core033_kernel_decide
theorem rows1843 : actualRows1843=WordField.canonicalRows actualModulus 1843 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1843 : actualRows1843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1843=2892 := by core033_kernel_decide
theorem rows1844 : actualRows1844=WordField.canonicalRows actualModulus 1844 (.bxor 1842 1843) := by core033_kernel_decide
theorem stats1844 : actualRows1844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1844=7428 := by core033_kernel_decide
theorem rows1845 : actualRows1845=WordField.canonicalRows actualModulus 1845 (.bnot 1844) := by core033_kernel_decide
theorem stats1845 : actualRows1845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1845=6276 := by core033_kernel_decide
theorem rows1846 : actualRows1846=WordField.canonicalRows actualModulus 1846 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1846 : actualRows1846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1846=2892 := by core033_kernel_decide
theorem rows1847 : actualRows1847=WordField.canonicalRows actualModulus 1847 (.badd 1845 1846) := by core033_kernel_decide
theorem stats1847 : actualRows1847.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1847=5388 := by core033_kernel_decide
theorem rows1848 : actualRows1848=WordField.canonicalRows actualModulus 1848 (.band 1847 977) := by core033_kernel_decide
theorem stats1848 : actualRows1848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1848=5124 := by core033_kernel_decide
theorem rows1849 : actualRows1849=WordField.canonicalRows actualModulus 1849 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1849 : actualRows1849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1849=2892 := by core033_kernel_decide
theorem rows1850 : actualRows1850=WordField.canonicalRows actualModulus 1850 (.bxor 0 1849) := by core033_kernel_decide
theorem stats1850 : actualRows1850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1850=7428 := by core033_kernel_decide
theorem rows1851 : actualRows1851=WordField.canonicalRows actualModulus 1851 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1851 : actualRows1851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1851=2820 := by core033_kernel_decide
theorem rows1852 : actualRows1852=WordField.canonicalRows actualModulus 1852 (.bnot 1851) := by core033_kernel_decide
theorem stats1852 : actualRows1852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1852=6276 := by core033_kernel_decide
theorem rows1853 : actualRows1853=WordField.canonicalRows actualModulus 1853 (.band 1850 1852) := by core033_kernel_decide
theorem stats1853 : actualRows1853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1853=5124 := by core033_kernel_decide
theorem rows1854 : actualRows1854=WordField.canonicalRows actualModulus 1854 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1854 : actualRows1854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1854=2892 := by core033_kernel_decide
theorem rows1855 : actualRows1855=WordField.canonicalRows actualModulus 1855 (.bxor 0 1854) := by core033_kernel_decide
theorem stats1855 : actualRows1855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1855=7428 := by core033_kernel_decide
theorem rows1856 : actualRows1856=WordField.canonicalRows actualModulus 1856 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1856 : actualRows1856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1856=2820 := by core033_kernel_decide
theorem rows1857 : actualRows1857=WordField.canonicalRows actualModulus 1857 (.bnot 1856) := by core033_kernel_decide
theorem stats1857 : actualRows1857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1857=6276 := by core033_kernel_decide
theorem rows1858 : actualRows1858=WordField.canonicalRows actualModulus 1858 (.bxor 1855 1857) := by core033_kernel_decide
theorem stats1858 : actualRows1858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1858=7428 := by core033_kernel_decide
theorem rows1859 : actualRows1859=WordField.canonicalRows actualModulus 1859 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1859 : actualRows1859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1859=2892 := by core033_kernel_decide
theorem rows1860 : actualRows1860=WordField.canonicalRows actualModulus 1860 (.bxor 0 1859) := by core033_kernel_decide
theorem stats1860 : actualRows1860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1860=7428 := by core033_kernel_decide
theorem rows1861 : actualRows1861=WordField.canonicalRows actualModulus 1861 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1861 : actualRows1861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1861=2820 := by core033_kernel_decide
theorem rows1862 : actualRows1862=WordField.canonicalRows actualModulus 1862 (.bnot 1861) := by core033_kernel_decide
theorem stats1862 : actualRows1862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1862=6276 := by core033_kernel_decide
theorem rows1863 : actualRows1863=WordField.canonicalRows actualModulus 1863 (.badd 1860 1862) := by core033_kernel_decide
theorem stats1863 : actualRows1863.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1863=5388 := by core033_kernel_decide
theorem rows1864 : actualRows1864=WordField.canonicalRows actualModulus 1864 (.bnot 1863) := by core033_kernel_decide
theorem stats1864 : actualRows1864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1864=6276 := by core033_kernel_decide
theorem rows1865 : actualRows1865=WordField.canonicalRows actualModulus 1865 (.band 1858 1864) := by core033_kernel_decide
theorem stats1865 : actualRows1865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1865=5124 := by core033_kernel_decide
theorem rows1866 : actualRows1866=WordField.canonicalRows actualModulus 1866 (.bxor 1853 1865) := by core033_kernel_decide
theorem stats1866 : actualRows1866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1866=7428 := by core033_kernel_decide
theorem rows1867 : actualRows1867=WordField.canonicalRows actualModulus 1867 (.shr 1866 31) := by core033_kernel_decide
theorem stats1867 : actualRows1867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1867=2892 := by core033_kernel_decide
theorem rows1868 : actualRows1868=WordField.canonicalRows actualModulus 1868 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1868 : actualRows1868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1868=2892 := by core033_kernel_decide
theorem rows1869 : actualRows1869=WordField.canonicalRows actualModulus 1869 (.bxor 1867 1868) := by core033_kernel_decide
theorem stats1869 : actualRows1869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1869=7428 := by core033_kernel_decide
theorem rows1870 : actualRows1870=WordField.canonicalRows actualModulus 1870 (.bnot 1869) := by core033_kernel_decide
theorem stats1870 : actualRows1870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1870=6276 := by core033_kernel_decide
theorem rows1871 : actualRows1871=WordField.canonicalRows actualModulus 1871 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1871 : actualRows1871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1871=2892 := by core033_kernel_decide
theorem rows1872 : actualRows1872=WordField.canonicalRows actualModulus 1872 (.badd 1870 1871) := by core033_kernel_decide
theorem stats1872 : actualRows1872.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1872=5388 := by core033_kernel_decide
theorem rows1873 : actualRows1873=WordField.canonicalRows actualModulus 1873 (.bnot 1872) := by core033_kernel_decide
theorem stats1873 : actualRows1873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1873=6276 := by core033_kernel_decide
theorem rows1874 : actualRows1874=WordField.canonicalRows actualModulus 1874 (.band 1873 827) := by core033_kernel_decide
theorem stats1874 : actualRows1874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1874=5124 := by core033_kernel_decide
theorem rows1875 : actualRows1875=WordField.canonicalRows actualModulus 1875 (.bxor 1848 1874) := by core033_kernel_decide
theorem stats1875 : actualRows1875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1875=7428 := by core033_kernel_decide
theorem rows1876 : actualRows1876=WordField.canonicalRows actualModulus 1876 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1876 : actualRows1876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1876=2892 := by core033_kernel_decide
theorem rows1877 : actualRows1877=WordField.canonicalRows actualModulus 1877 (.bxor 0 1876) := by core033_kernel_decide
theorem stats1877 : actualRows1877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1877=7428 := by core033_kernel_decide
theorem rows1878 : actualRows1878=WordField.canonicalRows actualModulus 1878 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1878 : actualRows1878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1878=2820 := by core033_kernel_decide
theorem rows1879 : actualRows1879=WordField.canonicalRows actualModulus 1879 (.bnot 1878) := by core033_kernel_decide
theorem stats1879 : actualRows1879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1879=6276 := by core033_kernel_decide
theorem rows1880 : actualRows1880=WordField.canonicalRows actualModulus 1880 (.band 1877 1879) := by core033_kernel_decide
theorem stats1880 : actualRows1880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1880=5124 := by core033_kernel_decide
theorem rows1881 : actualRows1881=WordField.canonicalRows actualModulus 1881 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1881 : actualRows1881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1881=2892 := by core033_kernel_decide
theorem rows1882 : actualRows1882=WordField.canonicalRows actualModulus 1882 (.bxor 0 1881) := by core033_kernel_decide
theorem stats1882 : actualRows1882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1882=7428 := by core033_kernel_decide
theorem rows1883 : actualRows1883=WordField.canonicalRows actualModulus 1883 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1883 : actualRows1883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1883=2820 := by core033_kernel_decide
theorem rows1884 : actualRows1884=WordField.canonicalRows actualModulus 1884 (.bnot 1883) := by core033_kernel_decide
theorem stats1884 : actualRows1884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1884=6276 := by core033_kernel_decide
theorem rows1885 : actualRows1885=WordField.canonicalRows actualModulus 1885 (.bxor 1882 1884) := by core033_kernel_decide
theorem stats1885 : actualRows1885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1885=7428 := by core033_kernel_decide
theorem rows1886 : actualRows1886=WordField.canonicalRows actualModulus 1886 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1886 : actualRows1886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1886=2892 := by core033_kernel_decide
theorem rows1887 : actualRows1887=WordField.canonicalRows actualModulus 1887 (.bxor 0 1886) := by core033_kernel_decide
theorem stats1887 : actualRows1887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1887=7428 := by core033_kernel_decide
theorem rows1888 : actualRows1888=WordField.canonicalRows actualModulus 1888 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1888 : actualRows1888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1888=2820 := by core033_kernel_decide
theorem rows1889 : actualRows1889=WordField.canonicalRows actualModulus 1889 (.bnot 1888) := by core033_kernel_decide
theorem stats1889 : actualRows1889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1889=6276 := by core033_kernel_decide
theorem rows1890 : actualRows1890=WordField.canonicalRows actualModulus 1890 (.badd 1887 1889) := by core033_kernel_decide
theorem stats1890 : actualRows1890.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1890=5388 := by core033_kernel_decide
theorem rows1891 : actualRows1891=WordField.canonicalRows actualModulus 1891 (.bnot 1890) := by core033_kernel_decide
theorem stats1891 : actualRows1891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1891=6276 := by core033_kernel_decide
theorem rows1892 : actualRows1892=WordField.canonicalRows actualModulus 1892 (.band 1885 1891) := by core033_kernel_decide
theorem stats1892 : actualRows1892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1892=5124 := by core033_kernel_decide
theorem rows1893 : actualRows1893=WordField.canonicalRows actualModulus 1893 (.bxor 1880 1892) := by core033_kernel_decide
theorem stats1893 : actualRows1893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1893=7428 := by core033_kernel_decide
theorem rows1894 : actualRows1894=WordField.canonicalRows actualModulus 1894 (.shr 1893 31) := by core033_kernel_decide
theorem stats1894 : actualRows1894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1894=2892 := by core033_kernel_decide
theorem rows1895 : actualRows1895=WordField.canonicalRows actualModulus 1895 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1895 : actualRows1895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1895=2892 := by core033_kernel_decide
theorem rows1896 : actualRows1896=WordField.canonicalRows actualModulus 1896 (.bxor 1894 1895) := by core033_kernel_decide
theorem stats1896 : actualRows1896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1896=7428 := by core033_kernel_decide
theorem rows1897 : actualRows1897=WordField.canonicalRows actualModulus 1897 (.bnot 1896) := by core033_kernel_decide
theorem stats1897 : actualRows1897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1897=6276 := by core033_kernel_decide
theorem rows1898 : actualRows1898=WordField.canonicalRows actualModulus 1898 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1898 : actualRows1898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1898=2892 := by core033_kernel_decide
def partRows28 : List R1CS.Row := actualRows1835++actualRows1836++actualRows1837++actualRows1838++actualRows1839++actualRows1840++actualRows1841++actualRows1842++actualRows1843++actualRows1844++actualRows1845++actualRows1846++actualRows1847++actualRows1848++actualRows1849++actualRows1850++actualRows1851++actualRows1852++actualRows1853++actualRows1854++actualRows1855++actualRows1856++actualRows1857++actualRows1858++actualRows1859++actualRows1860++actualRows1861++actualRows1862++actualRows1863++actualRows1864++actualRows1865++actualRows1866++actualRows1867++actualRows1868++actualRows1869++actualRows1870++actualRows1871++actualRows1872++actualRows1873++actualRows1874++actualRows1875++actualRows1876++actualRows1877++actualRows1878++actualRows1879++actualRows1880++actualRows1881++actualRows1882++actualRows1883++actualRows1884++actualRows1885++actualRows1886++actualRows1887++actualRows1888++actualRows1889++actualRows1890++actualRows1891++actualRows1892++actualRows1893++actualRows1894++actualRows1895++actualRows1896++actualRows1897++actualRows1898
def partOps28 : List WordIR.Op := [.bxor 0 1834,.literal (BitVec.ofNat 32 0),.bnot 1836,.badd 1835 1837,.bnot 1838,.band 1833 1839,.bxor 1828 1840,.shr 1841 31,.literal (BitVec.ofNat 32 1),.bxor 1842 1843,.bnot 1844,.literal (BitVec.ofNat 32 1),.badd 1845 1846,.band 1847 977,.literal (BitVec.ofNat 32 2),.bxor 0 1849,.literal (BitVec.ofNat 32 0),.bnot 1851,.band 1850 1852,.literal (BitVec.ofNat 32 2),.bxor 0 1854,.literal (BitVec.ofNat 32 0),.bnot 1856,.bxor 1855 1857,.literal (BitVec.ofNat 32 2),.bxor 0 1859,.literal (BitVec.ofNat 32 0),.bnot 1861,.badd 1860 1862,.bnot 1863,.band 1858 1864,.bxor 1853 1865,.shr 1866 31,.literal (BitVec.ofNat 32 1),.bxor 1867 1868,.bnot 1869,.literal (BitVec.ofNat 32 1),.badd 1870 1871,.bnot 1872,.band 1873 827,.bxor 1848 1874,.literal (BitVec.ofNat 32 2),.bxor 0 1876,.literal (BitVec.ofNat 32 0),.bnot 1878,.band 1877 1879,.literal (BitVec.ofNat 32 2),.bxor 0 1881,.literal (BitVec.ofNat 32 0),.bnot 1883,.bxor 1882 1884,.literal (BitVec.ofNat 32 2),.bxor 0 1886,.literal (BitVec.ofNat 32 0),.bnot 1888,.badd 1887 1889,.bnot 1890,.band 1885 1891,.bxor 1880 1892,.shr 1893 31,.literal (BitVec.ofNat 32 1),.bxor 1894 1895,.bnot 1896,.literal (BitVec.ofNat 32 1)]
theorem partExact28 : partRows28=WordField.rows actualModulus 1835 partOps28 := by
  simp only [partRows28,partOps28,WordField.rows,rows1835,rows1836,rows1837,rows1838,rows1839,rows1840,rows1841,rows1842,rows1843,rows1844,rows1845,rows1846,rows1847,rows1848,rows1849,rows1850,rows1851,rows1852,rows1853,rows1854,rows1855,rows1856,rows1857,rows1858,rows1859,rows1860,rows1861,rows1862,rows1863,rows1864,rows1865,rows1866,rows1867,rows1868,rows1869,rows1870,rows1871,rows1872,rows1873,rows1874,rows1875,rows1876,rows1877,rows1878,rows1879,rows1880,rows1881,rows1882,rows1883,rows1884,rows1885,rows1886,rows1887,rows1888,rows1889,rows1890,rows1891,rows1892,rows1893,rows1894,rows1895,rows1896,rows1897,rows1898,List.append_assoc,List.append_nil]
theorem partLength28 : partOps28.length=64 := by decide
theorem partStats28 : partRows28.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows28=332640 := by
  simp only [partRows28,List.length_append,MatrixRowBlocks.rows_weight_append,stats1835.1,stats1835.2,stats1836.1,stats1836.2,stats1837.1,stats1837.2,stats1838.1,stats1838.2,stats1839.1,stats1839.2,stats1840.1,stats1840.2,stats1841.1,stats1841.2,stats1842.1,stats1842.2,stats1843.1,stats1843.2,stats1844.1,stats1844.2,stats1845.1,stats1845.2,stats1846.1,stats1846.2,stats1847.1,stats1847.2,stats1848.1,stats1848.2,stats1849.1,stats1849.2,stats1850.1,stats1850.2,stats1851.1,stats1851.2,stats1852.1,stats1852.2,stats1853.1,stats1853.2,stats1854.1,stats1854.2,stats1855.1,stats1855.2,stats1856.1,stats1856.2,stats1857.1,stats1857.2,stats1858.1,stats1858.2,stats1859.1,stats1859.2,stats1860.1,stats1860.2,stats1861.1,stats1861.2,stats1862.1,stats1862.2,stats1863.1,stats1863.2,stats1864.1,stats1864.2,stats1865.1,stats1865.2,stats1866.1,stats1866.2,stats1867.1,stats1867.2,stats1868.1,stats1868.2,stats1869.1,stats1869.2,stats1870.1,stats1870.2,stats1871.1,stats1871.2,stats1872.1,stats1872.2,stats1873.1,stats1873.2,stats1874.1,stats1874.2,stats1875.1,stats1875.2,stats1876.1,stats1876.2,stats1877.1,stats1877.2,stats1878.1,stats1878.2,stats1879.1,stats1879.2,stats1880.1,stats1880.2,stats1881.1,stats1881.2,stats1882.1,stats1882.2,stats1883.1,stats1883.2,stats1884.1,stats1884.2,stats1885.1,stats1885.2,stats1886.1,stats1886.2,stats1887.1,stats1887.2,stats1888.1,stats1888.2,stats1889.1,stats1889.2,stats1890.1,stats1890.2,stats1891.1,stats1891.2,stats1892.1,stats1892.2,stats1893.1,stats1893.2,stats1894.1,stats1894.2,stats1895.1,stats1895.2,stats1896.1,stats1896.2,stats1897.1,stats1897.2,stats1898.1,stats1898.2]
  decide
end FrameHashControllerCheckedRows
