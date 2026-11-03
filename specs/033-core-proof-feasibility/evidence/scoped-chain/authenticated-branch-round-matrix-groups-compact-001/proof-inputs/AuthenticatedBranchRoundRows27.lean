import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData28
import AuthenticatedBranchRoundInstructionMatrixData29
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1846 : actualRows1846=WordField.canonicalRows actualModulus 1846 (.bnot 1845) := by core033_kernel_decide
theorem stats1846 : actualRows1846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1846=6276 := by core033_kernel_decide
theorem rows1847 : actualRows1847=WordField.canonicalRows actualModulus 1847 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1847 : actualRows1847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1847=2892 := by core033_kernel_decide
theorem rows1848 : actualRows1848=WordField.canonicalRows actualModulus 1848 (.badd 1846 1847) := by core033_kernel_decide
theorem stats1848 : actualRows1848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1848=5388 := by core033_kernel_decide
theorem rows1849 : actualRows1849=WordField.canonicalRows actualModulus 1849 (.shr 1821 1) := by core033_kernel_decide
theorem stats1849 : actualRows1849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1849=5052 := by core033_kernel_decide
theorem rows1850 : actualRows1850=WordField.canonicalRows actualModulus 1850 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1850 : actualRows1850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1850=2892 := by core033_kernel_decide
theorem rows1851 : actualRows1851=WordField.canonicalRows actualModulus 1851 (.band 1849 1850) := by core033_kernel_decide
theorem stats1851 : actualRows1851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1851=5124 := by core033_kernel_decide
theorem rows1852 : actualRows1852=WordField.canonicalRows actualModulus 1852 (.bnot 1851) := by core033_kernel_decide
theorem stats1852 : actualRows1852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1852=6276 := by core033_kernel_decide
theorem rows1853 : actualRows1853=WordField.canonicalRows actualModulus 1853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1853 : actualRows1853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1853=2892 := by core033_kernel_decide
theorem rows1854 : actualRows1854=WordField.canonicalRows actualModulus 1854 (.badd 1852 1853) := by core033_kernel_decide
theorem stats1854 : actualRows1854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1854=5388 := by core033_kernel_decide
theorem rows1855 : actualRows1855=WordField.canonicalRows actualModulus 1855 (.shr 1821 0) := by core033_kernel_decide
theorem stats1855 : actualRows1855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1855=5124 := by core033_kernel_decide
theorem rows1856 : actualRows1856=WordField.canonicalRows actualModulus 1856 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1856 : actualRows1856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1856=2892 := by core033_kernel_decide
theorem rows1857 : actualRows1857=WordField.canonicalRows actualModulus 1857 (.band 1855 1856) := by core033_kernel_decide
theorem stats1857 : actualRows1857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1857=5124 := by core033_kernel_decide
theorem rows1858 : actualRows1858=WordField.canonicalRows actualModulus 1858 (.bnot 1857) := by core033_kernel_decide
theorem stats1858 : actualRows1858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1858=6276 := by core033_kernel_decide
theorem rows1859 : actualRows1859=WordField.canonicalRows actualModulus 1859 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1859 : actualRows1859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1859=2892 := by core033_kernel_decide
theorem rows1860 : actualRows1860=WordField.canonicalRows actualModulus 1860 (.badd 1858 1859) := by core033_kernel_decide
theorem stats1860 : actualRows1860.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1860=5388 := by core033_kernel_decide
theorem rows1861 : actualRows1861=WordField.canonicalRows actualModulus 1861 (.band 1860 1409) := by core033_kernel_decide
theorem stats1861 : actualRows1861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1861=5124 := by core033_kernel_decide
theorem rows1862 : actualRows1862=WordField.canonicalRows actualModulus 1862 (.shr 1821 0) := by core033_kernel_decide
theorem stats1862 : actualRows1862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1862=5124 := by core033_kernel_decide
theorem rows1863 : actualRows1863=WordField.canonicalRows actualModulus 1863 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1863 : actualRows1863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1863=2892 := by core033_kernel_decide
theorem rows1864 : actualRows1864=WordField.canonicalRows actualModulus 1864 (.band 1862 1863) := by core033_kernel_decide
theorem stats1864 : actualRows1864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1864=5124 := by core033_kernel_decide
theorem rows1865 : actualRows1865=WordField.canonicalRows actualModulus 1865 (.bnot 1864) := by core033_kernel_decide
theorem stats1865 : actualRows1865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1865=6276 := by core033_kernel_decide
theorem rows1866 : actualRows1866=WordField.canonicalRows actualModulus 1866 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1866 : actualRows1866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1866=2892 := by core033_kernel_decide
theorem rows1867 : actualRows1867=WordField.canonicalRows actualModulus 1867 (.badd 1865 1866) := by core033_kernel_decide
theorem stats1867 : actualRows1867.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1867=5388 := by core033_kernel_decide
theorem rows1868 : actualRows1868=WordField.canonicalRows actualModulus 1868 (.bnot 1867) := by core033_kernel_decide
theorem stats1868 : actualRows1868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1868=6276 := by core033_kernel_decide
theorem rows1869 : actualRows1869=WordField.canonicalRows actualModulus 1869 (.band 1868 1398) := by core033_kernel_decide
theorem stats1869 : actualRows1869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1869=5124 := by core033_kernel_decide
theorem rows1870 : actualRows1870=WordField.canonicalRows actualModulus 1870 (.bxor 1861 1869) := by core033_kernel_decide
theorem stats1870 : actualRows1870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1870=7428 := by core033_kernel_decide
theorem rows1871 : actualRows1871=WordField.canonicalRows actualModulus 1871 (.band 1854 1870) := by core033_kernel_decide
theorem stats1871 : actualRows1871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1871=5124 := by core033_kernel_decide
theorem rows1872 : actualRows1872=WordField.canonicalRows actualModulus 1872 (.shr 1821 1) := by core033_kernel_decide
theorem stats1872 : actualRows1872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1872=5052 := by core033_kernel_decide
theorem rows1873 : actualRows1873=WordField.canonicalRows actualModulus 1873 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1873 : actualRows1873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1873=2892 := by core033_kernel_decide
theorem rows1874 : actualRows1874=WordField.canonicalRows actualModulus 1874 (.band 1872 1873) := by core033_kernel_decide
theorem stats1874 : actualRows1874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1874=5124 := by core033_kernel_decide
theorem rows1875 : actualRows1875=WordField.canonicalRows actualModulus 1875 (.bnot 1874) := by core033_kernel_decide
theorem stats1875 : actualRows1875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1875=6276 := by core033_kernel_decide
theorem rows1876 : actualRows1876=WordField.canonicalRows actualModulus 1876 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1876 : actualRows1876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1876=2892 := by core033_kernel_decide
theorem rows1877 : actualRows1877=WordField.canonicalRows actualModulus 1877 (.badd 1875 1876) := by core033_kernel_decide
theorem stats1877 : actualRows1877.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1877=5388 := by core033_kernel_decide
theorem rows1878 : actualRows1878=WordField.canonicalRows actualModulus 1878 (.bnot 1877) := by core033_kernel_decide
theorem stats1878 : actualRows1878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1878=6276 := by core033_kernel_decide
theorem rows1879 : actualRows1879=WordField.canonicalRows actualModulus 1879 (.shr 1821 0) := by core033_kernel_decide
theorem stats1879 : actualRows1879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1879=5124 := by core033_kernel_decide
theorem rows1880 : actualRows1880=WordField.canonicalRows actualModulus 1880 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1880 : actualRows1880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1880=2892 := by core033_kernel_decide
theorem rows1881 : actualRows1881=WordField.canonicalRows actualModulus 1881 (.band 1879 1880) := by core033_kernel_decide
theorem stats1881 : actualRows1881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1881=5124 := by core033_kernel_decide
theorem rows1882 : actualRows1882=WordField.canonicalRows actualModulus 1882 (.bnot 1881) := by core033_kernel_decide
theorem stats1882 : actualRows1882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1882=6276 := by core033_kernel_decide
theorem rows1883 : actualRows1883=WordField.canonicalRows actualModulus 1883 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1883 : actualRows1883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1883=2892 := by core033_kernel_decide
theorem rows1884 : actualRows1884=WordField.canonicalRows actualModulus 1884 (.badd 1882 1883) := by core033_kernel_decide
theorem stats1884 : actualRows1884.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1884=5388 := by core033_kernel_decide
theorem rows1885 : actualRows1885=WordField.canonicalRows actualModulus 1885 (.band 1884 1387) := by core033_kernel_decide
theorem stats1885 : actualRows1885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1885=5124 := by core033_kernel_decide
theorem rows1886 : actualRows1886=WordField.canonicalRows actualModulus 1886 (.shr 1821 0) := by core033_kernel_decide
theorem stats1886 : actualRows1886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1886=5124 := by core033_kernel_decide
theorem rows1887 : actualRows1887=WordField.canonicalRows actualModulus 1887 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1887 : actualRows1887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1887=2892 := by core033_kernel_decide
theorem rows1888 : actualRows1888=WordField.canonicalRows actualModulus 1888 (.band 1886 1887) := by core033_kernel_decide
theorem stats1888 : actualRows1888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1888=5124 := by core033_kernel_decide
theorem rows1889 : actualRows1889=WordField.canonicalRows actualModulus 1889 (.bnot 1888) := by core033_kernel_decide
theorem stats1889 : actualRows1889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1889=6276 := by core033_kernel_decide
theorem rows1890 : actualRows1890=WordField.canonicalRows actualModulus 1890 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1890 : actualRows1890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1890=2892 := by core033_kernel_decide
theorem rows1891 : actualRows1891=WordField.canonicalRows actualModulus 1891 (.badd 1889 1890) := by core033_kernel_decide
theorem stats1891 : actualRows1891.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1891=5388 := by core033_kernel_decide
theorem rows1892 : actualRows1892=WordField.canonicalRows actualModulus 1892 (.bnot 1891) := by core033_kernel_decide
theorem stats1892 : actualRows1892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1892=6276 := by core033_kernel_decide
theorem rows1893 : actualRows1893=WordField.canonicalRows actualModulus 1893 (.band 1892 1376) := by core033_kernel_decide
theorem stats1893 : actualRows1893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1893=5124 := by core033_kernel_decide
theorem rows1894 : actualRows1894=WordField.canonicalRows actualModulus 1894 (.bxor 1885 1893) := by core033_kernel_decide
theorem stats1894 : actualRows1894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1894=7428 := by core033_kernel_decide
theorem rows1895 : actualRows1895=WordField.canonicalRows actualModulus 1895 (.band 1878 1894) := by core033_kernel_decide
theorem stats1895 : actualRows1895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1895=5124 := by core033_kernel_decide
theorem rows1896 : actualRows1896=WordField.canonicalRows actualModulus 1896 (.bxor 1871 1895) := by core033_kernel_decide
theorem stats1896 : actualRows1896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1896=7428 := by core033_kernel_decide
theorem rows1897 : actualRows1897=WordField.canonicalRows actualModulus 1897 (.band 1848 1896) := by core033_kernel_decide
theorem stats1897 : actualRows1897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1897=5124 := by core033_kernel_decide
theorem rows1898 : actualRows1898=WordField.canonicalRows actualModulus 1898 (.shr 1821 2) := by core033_kernel_decide
theorem stats1898 : actualRows1898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1898=4980 := by core033_kernel_decide
theorem rows1899 : actualRows1899=WordField.canonicalRows actualModulus 1899 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1899 : actualRows1899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1899=2892 := by core033_kernel_decide
theorem rows1900 : actualRows1900=WordField.canonicalRows actualModulus 1900 (.band 1898 1899) := by core033_kernel_decide
theorem stats1900 : actualRows1900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1900=5124 := by core033_kernel_decide
theorem rows1901 : actualRows1901=WordField.canonicalRows actualModulus 1901 (.bnot 1900) := by core033_kernel_decide
theorem stats1901 : actualRows1901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1901=6276 := by core033_kernel_decide
theorem rows1902 : actualRows1902=WordField.canonicalRows actualModulus 1902 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1902 : actualRows1902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1902=2892 := by core033_kernel_decide
theorem rows1903 : actualRows1903=WordField.canonicalRows actualModulus 1903 (.badd 1901 1902) := by core033_kernel_decide
theorem stats1903 : actualRows1903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1903=5388 := by core033_kernel_decide
theorem rows1904 : actualRows1904=WordField.canonicalRows actualModulus 1904 (.bnot 1903) := by core033_kernel_decide
theorem stats1904 : actualRows1904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1904=6276 := by core033_kernel_decide
theorem rows1905 : actualRows1905=WordField.canonicalRows actualModulus 1905 (.shr 1821 1) := by core033_kernel_decide
theorem stats1905 : actualRows1905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1905=5052 := by core033_kernel_decide
theorem rows1906 : actualRows1906=WordField.canonicalRows actualModulus 1906 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1906 : actualRows1906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1906=2892 := by core033_kernel_decide
theorem rows1907 : actualRows1907=WordField.canonicalRows actualModulus 1907 (.band 1905 1906) := by core033_kernel_decide
theorem stats1907 : actualRows1907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1907=5124 := by core033_kernel_decide
theorem rows1908 : actualRows1908=WordField.canonicalRows actualModulus 1908 (.bnot 1907) := by core033_kernel_decide
theorem stats1908 : actualRows1908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1908=6276 := by core033_kernel_decide
theorem rows1909 : actualRows1909=WordField.canonicalRows actualModulus 1909 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1909 : actualRows1909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1909=2892 := by core033_kernel_decide
def partRows27 : List R1CS.Row := actualRows1846++actualRows1847++actualRows1848++actualRows1849++actualRows1850++actualRows1851++actualRows1852++actualRows1853++actualRows1854++actualRows1855++actualRows1856++actualRows1857++actualRows1858++actualRows1859++actualRows1860++actualRows1861++actualRows1862++actualRows1863++actualRows1864++actualRows1865++actualRows1866++actualRows1867++actualRows1868++actualRows1869++actualRows1870++actualRows1871++actualRows1872++actualRows1873++actualRows1874++actualRows1875++actualRows1876++actualRows1877++actualRows1878++actualRows1879++actualRows1880++actualRows1881++actualRows1882++actualRows1883++actualRows1884++actualRows1885++actualRows1886++actualRows1887++actualRows1888++actualRows1889++actualRows1890++actualRows1891++actualRows1892++actualRows1893++actualRows1894++actualRows1895++actualRows1896++actualRows1897++actualRows1898++actualRows1899++actualRows1900++actualRows1901++actualRows1902++actualRows1903++actualRows1904++actualRows1905++actualRows1906++actualRows1907++actualRows1908++actualRows1909
def partOps27 : List WordIR.Op := [.bnot 1845,.literal (BitVec.ofNat 32 1),.badd 1846 1847,.shr 1821 1,.literal (BitVec.ofNat 32 1),.band 1849 1850,.bnot 1851,.literal (BitVec.ofNat 32 1),.badd 1852 1853,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1855 1856,.bnot 1857,.literal (BitVec.ofNat 32 1),.badd 1858 1859,.band 1860 1409,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1862 1863,.bnot 1864,.literal (BitVec.ofNat 32 1),.badd 1865 1866,.bnot 1867,.band 1868 1398,.bxor 1861 1869,.band 1854 1870,.shr 1821 1,.literal (BitVec.ofNat 32 1),.band 1872 1873,.bnot 1874,.literal (BitVec.ofNat 32 1),.badd 1875 1876,.bnot 1877,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1879 1880,.bnot 1881,.literal (BitVec.ofNat 32 1),.badd 1882 1883,.band 1884 1387,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1886 1887,.bnot 1888,.literal (BitVec.ofNat 32 1),.badd 1889 1890,.bnot 1891,.band 1892 1376,.bxor 1885 1893,.band 1878 1894,.bxor 1871 1895,.band 1848 1896,.shr 1821 2,.literal (BitVec.ofNat 32 1),.band 1898 1899,.bnot 1900,.literal (BitVec.ofNat 32 1),.badd 1901 1902,.bnot 1903,.shr 1821 1,.literal (BitVec.ofNat 32 1),.band 1905 1906,.bnot 1907,.literal (BitVec.ofNat 32 1)]
theorem partExact27 : partRows27=WordField.rows actualModulus 1846 partOps27 := by
  simp only [partRows27,partOps27,WordField.rows,rows1846,rows1847,rows1848,rows1849,rows1850,rows1851,rows1852,rows1853,rows1854,rows1855,rows1856,rows1857,rows1858,rows1859,rows1860,rows1861,rows1862,rows1863,rows1864,rows1865,rows1866,rows1867,rows1868,rows1869,rows1870,rows1871,rows1872,rows1873,rows1874,rows1875,rows1876,rows1877,rows1878,rows1879,rows1880,rows1881,rows1882,rows1883,rows1884,rows1885,rows1886,rows1887,rows1888,rows1889,rows1890,rows1891,rows1892,rows1893,rows1894,rows1895,rows1896,rows1897,rows1898,rows1899,rows1900,rows1901,rows1902,rows1903,rows1904,rows1905,rows1906,rows1907,rows1908,rows1909,List.append_assoc,List.append_nil]
theorem partLength27 : partOps27.length=64 := by decide
theorem partStats27 : partRows27.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows27=313632 := by
  simp only [partRows27,List.length_append,MatrixRowBlocks.rows_weight_append,stats1846.1,stats1846.2,stats1847.1,stats1847.2,stats1848.1,stats1848.2,stats1849.1,stats1849.2,stats1850.1,stats1850.2,stats1851.1,stats1851.2,stats1852.1,stats1852.2,stats1853.1,stats1853.2,stats1854.1,stats1854.2,stats1855.1,stats1855.2,stats1856.1,stats1856.2,stats1857.1,stats1857.2,stats1858.1,stats1858.2,stats1859.1,stats1859.2,stats1860.1,stats1860.2,stats1861.1,stats1861.2,stats1862.1,stats1862.2,stats1863.1,stats1863.2,stats1864.1,stats1864.2,stats1865.1,stats1865.2,stats1866.1,stats1866.2,stats1867.1,stats1867.2,stats1868.1,stats1868.2,stats1869.1,stats1869.2,stats1870.1,stats1870.2,stats1871.1,stats1871.2,stats1872.1,stats1872.2,stats1873.1,stats1873.2,stats1874.1,stats1874.2,stats1875.1,stats1875.2,stats1876.1,stats1876.2,stats1877.1,stats1877.2,stats1878.1,stats1878.2,stats1879.1,stats1879.2,stats1880.1,stats1880.2,stats1881.1,stats1881.2,stats1882.1,stats1882.2,stats1883.1,stats1883.2,stats1884.1,stats1884.2,stats1885.1,stats1885.2,stats1886.1,stats1886.2,stats1887.1,stats1887.2,stats1888.1,stats1888.2,stats1889.1,stats1889.2,stats1890.1,stats1890.2,stats1891.1,stats1891.2,stats1892.1,stats1892.2,stats1893.1,stats1893.2,stats1894.1,stats1894.2,stats1895.1,stats1895.2,stats1896.1,stats1896.2,stats1897.1,stats1897.2,stats1898.1,stats1898.2,stats1899.1,stats1899.2,stats1900.1,stats1900.2,stats1901.1,stats1901.2,stats1902.1,stats1902.2,stats1903.1,stats1903.2,stats1904.1,stats1904.2,stats1905.1,stats1905.2,stats1906.1,stats1906.2,stats1907.1,stats1907.2,stats1908.1,stats1908.2,stats1909.1,stats1909.2]
  decide
end AuthenticatedBranchRoundCheckedRows
