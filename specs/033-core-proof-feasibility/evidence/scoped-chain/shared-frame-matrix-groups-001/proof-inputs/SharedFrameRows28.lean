import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData28
import SharedFrameInstructionMatrixData29
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1835 : actualRows1835=WordField.canonicalRows actualModulus 1835 (.rotr 1645 18) := by core033_kernel_decide
theorem stats1835 : actualRows1835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1835=5124 := by core033_kernel_decide
theorem rows1836 : actualRows1836=WordField.canonicalRows actualModulus 1836 (.bxor 1834 1835) := by core033_kernel_decide
theorem stats1836 : actualRows1836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1836=7428 := by core033_kernel_decide
theorem rows1837 : actualRows1837=WordField.canonicalRows actualModulus 1837 (.shr 1645 3) := by core033_kernel_decide
theorem stats1837 : actualRows1837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1837=4908 := by core033_kernel_decide
theorem rows1838 : actualRows1838=WordField.canonicalRows actualModulus 1838 (.bxor 1836 1837) := by core033_kernel_decide
theorem stats1838 : actualRows1838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1838=7428 := by core033_kernel_decide
theorem rows1839 : actualRows1839=WordField.canonicalRows actualModulus 1839 (.badd 1833 1838) := by core033_kernel_decide
theorem stats1839 : actualRows1839.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1839=5388 := by core033_kernel_decide
theorem rows1840 : actualRows1840=WordField.canonicalRows actualModulus 1840 (.badd 1839 1632) := by core033_kernel_decide
theorem stats1840 : actualRows1840.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1840=5388 := by core033_kernel_decide
theorem rows1841 : actualRows1841=WordField.canonicalRows actualModulus 1841 (.rotr 1827 17) := by core033_kernel_decide
theorem stats1841 : actualRows1841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1841=5124 := by core033_kernel_decide
theorem rows1842 : actualRows1842=WordField.canonicalRows actualModulus 1842 (.rotr 1827 19) := by core033_kernel_decide
theorem stats1842 : actualRows1842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1842=5124 := by core033_kernel_decide
theorem rows1843 : actualRows1843=WordField.canonicalRows actualModulus 1843 (.bxor 1841 1842) := by core033_kernel_decide
theorem stats1843 : actualRows1843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1843=7428 := by core033_kernel_decide
theorem rows1844 : actualRows1844=WordField.canonicalRows actualModulus 1844 (.shr 1827 10) := by core033_kernel_decide
theorem stats1844 : actualRows1844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1844=4404 := by core033_kernel_decide
theorem rows1845 : actualRows1845=WordField.canonicalRows actualModulus 1845 (.bxor 1843 1844) := by core033_kernel_decide
theorem stats1845 : actualRows1845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1845=7428 := by core033_kernel_decide
theorem rows1846 : actualRows1846=WordField.canonicalRows actualModulus 1846 (.badd 1845 1762) := by core033_kernel_decide
theorem stats1846 : actualRows1846.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1846=5388 := by core033_kernel_decide
theorem rows1847 : actualRows1847=WordField.canonicalRows actualModulus 1847 (.rotr 1658 7) := by core033_kernel_decide
theorem stats1847 : actualRows1847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1847=5124 := by core033_kernel_decide
theorem rows1848 : actualRows1848=WordField.canonicalRows actualModulus 1848 (.rotr 1658 18) := by core033_kernel_decide
theorem stats1848 : actualRows1848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1848=5124 := by core033_kernel_decide
theorem rows1849 : actualRows1849=WordField.canonicalRows actualModulus 1849 (.bxor 1847 1848) := by core033_kernel_decide
theorem stats1849 : actualRows1849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1849=7428 := by core033_kernel_decide
theorem rows1850 : actualRows1850=WordField.canonicalRows actualModulus 1850 (.shr 1658 3) := by core033_kernel_decide
theorem stats1850 : actualRows1850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1850=4908 := by core033_kernel_decide
theorem rows1851 : actualRows1851=WordField.canonicalRows actualModulus 1851 (.bxor 1849 1850) := by core033_kernel_decide
theorem stats1851 : actualRows1851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1851=7428 := by core033_kernel_decide
theorem rows1852 : actualRows1852=WordField.canonicalRows actualModulus 1852 (.badd 1846 1851) := by core033_kernel_decide
theorem stats1852 : actualRows1852.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1852=5388 := by core033_kernel_decide
theorem rows1853 : actualRows1853=WordField.canonicalRows actualModulus 1853 (.badd 1852 1645) := by core033_kernel_decide
theorem stats1853 : actualRows1853.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1853=5388 := by core033_kernel_decide
theorem rows1854 : actualRows1854=WordField.canonicalRows actualModulus 1854 (.rotr 1840 17) := by core033_kernel_decide
theorem stats1854 : actualRows1854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1854=5124 := by core033_kernel_decide
theorem rows1855 : actualRows1855=WordField.canonicalRows actualModulus 1855 (.rotr 1840 19) := by core033_kernel_decide
theorem stats1855 : actualRows1855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1855=5124 := by core033_kernel_decide
theorem rows1856 : actualRows1856=WordField.canonicalRows actualModulus 1856 (.bxor 1854 1855) := by core033_kernel_decide
theorem stats1856 : actualRows1856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1856=7428 := by core033_kernel_decide
theorem rows1857 : actualRows1857=WordField.canonicalRows actualModulus 1857 (.shr 1840 10) := by core033_kernel_decide
theorem stats1857 : actualRows1857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1857=4404 := by core033_kernel_decide
theorem rows1858 : actualRows1858=WordField.canonicalRows actualModulus 1858 (.bxor 1856 1857) := by core033_kernel_decide
theorem stats1858 : actualRows1858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1858=7428 := by core033_kernel_decide
theorem rows1859 : actualRows1859=WordField.canonicalRows actualModulus 1859 (.badd 1858 1775) := by core033_kernel_decide
theorem stats1859 : actualRows1859.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1859=5388 := by core033_kernel_decide
theorem rows1860 : actualRows1860=WordField.canonicalRows actualModulus 1860 (.rotr 1671 7) := by core033_kernel_decide
theorem stats1860 : actualRows1860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1860=5124 := by core033_kernel_decide
theorem rows1861 : actualRows1861=WordField.canonicalRows actualModulus 1861 (.rotr 1671 18) := by core033_kernel_decide
theorem stats1861 : actualRows1861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1861=5124 := by core033_kernel_decide
theorem rows1862 : actualRows1862=WordField.canonicalRows actualModulus 1862 (.bxor 1860 1861) := by core033_kernel_decide
theorem stats1862 : actualRows1862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1862=7428 := by core033_kernel_decide
theorem rows1863 : actualRows1863=WordField.canonicalRows actualModulus 1863 (.shr 1671 3) := by core033_kernel_decide
theorem stats1863 : actualRows1863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1863=4908 := by core033_kernel_decide
theorem rows1864 : actualRows1864=WordField.canonicalRows actualModulus 1864 (.bxor 1862 1863) := by core033_kernel_decide
theorem stats1864 : actualRows1864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1864=7428 := by core033_kernel_decide
theorem rows1865 : actualRows1865=WordField.canonicalRows actualModulus 1865 (.badd 1859 1864) := by core033_kernel_decide
theorem stats1865 : actualRows1865.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1865=5388 := by core033_kernel_decide
theorem rows1866 : actualRows1866=WordField.canonicalRows actualModulus 1866 (.badd 1865 1658) := by core033_kernel_decide
theorem stats1866 : actualRows1866.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1866=5388 := by core033_kernel_decide
theorem rows1867 : actualRows1867=WordField.canonicalRows actualModulus 1867 (.rotr 1853 17) := by core033_kernel_decide
theorem stats1867 : actualRows1867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1867=5124 := by core033_kernel_decide
theorem rows1868 : actualRows1868=WordField.canonicalRows actualModulus 1868 (.rotr 1853 19) := by core033_kernel_decide
theorem stats1868 : actualRows1868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1868=5124 := by core033_kernel_decide
theorem rows1869 : actualRows1869=WordField.canonicalRows actualModulus 1869 (.bxor 1867 1868) := by core033_kernel_decide
theorem stats1869 : actualRows1869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1869=7428 := by core033_kernel_decide
theorem rows1870 : actualRows1870=WordField.canonicalRows actualModulus 1870 (.shr 1853 10) := by core033_kernel_decide
theorem stats1870 : actualRows1870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1870=4404 := by core033_kernel_decide
theorem rows1871 : actualRows1871=WordField.canonicalRows actualModulus 1871 (.bxor 1869 1870) := by core033_kernel_decide
theorem stats1871 : actualRows1871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1871=7428 := by core033_kernel_decide
theorem rows1872 : actualRows1872=WordField.canonicalRows actualModulus 1872 (.badd 1871 1788) := by core033_kernel_decide
theorem stats1872 : actualRows1872.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1872=5388 := by core033_kernel_decide
theorem rows1873 : actualRows1873=WordField.canonicalRows actualModulus 1873 (.rotr 1684 7) := by core033_kernel_decide
theorem stats1873 : actualRows1873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1873=5124 := by core033_kernel_decide
theorem rows1874 : actualRows1874=WordField.canonicalRows actualModulus 1874 (.rotr 1684 18) := by core033_kernel_decide
theorem stats1874 : actualRows1874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1874=5124 := by core033_kernel_decide
theorem rows1875 : actualRows1875=WordField.canonicalRows actualModulus 1875 (.bxor 1873 1874) := by core033_kernel_decide
theorem stats1875 : actualRows1875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1875=7428 := by core033_kernel_decide
theorem rows1876 : actualRows1876=WordField.canonicalRows actualModulus 1876 (.shr 1684 3) := by core033_kernel_decide
theorem stats1876 : actualRows1876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1876=4908 := by core033_kernel_decide
theorem rows1877 : actualRows1877=WordField.canonicalRows actualModulus 1877 (.bxor 1875 1876) := by core033_kernel_decide
theorem stats1877 : actualRows1877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1877=7428 := by core033_kernel_decide
theorem rows1878 : actualRows1878=WordField.canonicalRows actualModulus 1878 (.badd 1872 1877) := by core033_kernel_decide
theorem stats1878 : actualRows1878.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1878=5388 := by core033_kernel_decide
theorem rows1879 : actualRows1879=WordField.canonicalRows actualModulus 1879 (.badd 1878 1671) := by core033_kernel_decide
theorem stats1879 : actualRows1879.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1879=5388 := by core033_kernel_decide
theorem rows1880 : actualRows1880=WordField.canonicalRows actualModulus 1880 (.rotr 1866 17) := by core033_kernel_decide
theorem stats1880 : actualRows1880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1880=5124 := by core033_kernel_decide
theorem rows1881 : actualRows1881=WordField.canonicalRows actualModulus 1881 (.rotr 1866 19) := by core033_kernel_decide
theorem stats1881 : actualRows1881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1881=5124 := by core033_kernel_decide
theorem rows1882 : actualRows1882=WordField.canonicalRows actualModulus 1882 (.bxor 1880 1881) := by core033_kernel_decide
theorem stats1882 : actualRows1882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1882=7428 := by core033_kernel_decide
theorem rows1883 : actualRows1883=WordField.canonicalRows actualModulus 1883 (.shr 1866 10) := by core033_kernel_decide
theorem stats1883 : actualRows1883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1883=4404 := by core033_kernel_decide
theorem rows1884 : actualRows1884=WordField.canonicalRows actualModulus 1884 (.bxor 1882 1883) := by core033_kernel_decide
theorem stats1884 : actualRows1884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1884=7428 := by core033_kernel_decide
theorem rows1885 : actualRows1885=WordField.canonicalRows actualModulus 1885 (.badd 1884 1801) := by core033_kernel_decide
theorem stats1885 : actualRows1885.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1885=5388 := by core033_kernel_decide
theorem rows1886 : actualRows1886=WordField.canonicalRows actualModulus 1886 (.rotr 1697 7) := by core033_kernel_decide
theorem stats1886 : actualRows1886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1886=5124 := by core033_kernel_decide
theorem rows1887 : actualRows1887=WordField.canonicalRows actualModulus 1887 (.rotr 1697 18) := by core033_kernel_decide
theorem stats1887 : actualRows1887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1887=5124 := by core033_kernel_decide
theorem rows1888 : actualRows1888=WordField.canonicalRows actualModulus 1888 (.bxor 1886 1887) := by core033_kernel_decide
theorem stats1888 : actualRows1888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1888=7428 := by core033_kernel_decide
theorem rows1889 : actualRows1889=WordField.canonicalRows actualModulus 1889 (.shr 1697 3) := by core033_kernel_decide
theorem stats1889 : actualRows1889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1889=4908 := by core033_kernel_decide
theorem rows1890 : actualRows1890=WordField.canonicalRows actualModulus 1890 (.bxor 1888 1889) := by core033_kernel_decide
theorem stats1890 : actualRows1890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1890=7428 := by core033_kernel_decide
theorem rows1891 : actualRows1891=WordField.canonicalRows actualModulus 1891 (.badd 1885 1890) := by core033_kernel_decide
theorem stats1891 : actualRows1891.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1891=5388 := by core033_kernel_decide
theorem rows1892 : actualRows1892=WordField.canonicalRows actualModulus 1892 (.badd 1891 1684) := by core033_kernel_decide
theorem stats1892 : actualRows1892.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1892=5388 := by core033_kernel_decide
theorem rows1893 : actualRows1893=WordField.canonicalRows actualModulus 1893 (.rotr 1879 17) := by core033_kernel_decide
theorem stats1893 : actualRows1893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1893=5124 := by core033_kernel_decide
theorem rows1894 : actualRows1894=WordField.canonicalRows actualModulus 1894 (.rotr 1879 19) := by core033_kernel_decide
theorem stats1894 : actualRows1894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1894=5124 := by core033_kernel_decide
theorem rows1895 : actualRows1895=WordField.canonicalRows actualModulus 1895 (.bxor 1893 1894) := by core033_kernel_decide
theorem stats1895 : actualRows1895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1895=7428 := by core033_kernel_decide
theorem rows1896 : actualRows1896=WordField.canonicalRows actualModulus 1896 (.shr 1879 10) := by core033_kernel_decide
theorem stats1896 : actualRows1896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1896=4404 := by core033_kernel_decide
theorem rows1897 : actualRows1897=WordField.canonicalRows actualModulus 1897 (.bxor 1895 1896) := by core033_kernel_decide
theorem stats1897 : actualRows1897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1897=7428 := by core033_kernel_decide
theorem rows1898 : actualRows1898=WordField.canonicalRows actualModulus 1898 (.badd 1897 1814) := by core033_kernel_decide
theorem stats1898 : actualRows1898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1898=5388 := by core033_kernel_decide
def partRows28 : List R1CS.Row := actualRows1835++actualRows1836++actualRows1837++actualRows1838++actualRows1839++actualRows1840++actualRows1841++actualRows1842++actualRows1843++actualRows1844++actualRows1845++actualRows1846++actualRows1847++actualRows1848++actualRows1849++actualRows1850++actualRows1851++actualRows1852++actualRows1853++actualRows1854++actualRows1855++actualRows1856++actualRows1857++actualRows1858++actualRows1859++actualRows1860++actualRows1861++actualRows1862++actualRows1863++actualRows1864++actualRows1865++actualRows1866++actualRows1867++actualRows1868++actualRows1869++actualRows1870++actualRows1871++actualRows1872++actualRows1873++actualRows1874++actualRows1875++actualRows1876++actualRows1877++actualRows1878++actualRows1879++actualRows1880++actualRows1881++actualRows1882++actualRows1883++actualRows1884++actualRows1885++actualRows1886++actualRows1887++actualRows1888++actualRows1889++actualRows1890++actualRows1891++actualRows1892++actualRows1893++actualRows1894++actualRows1895++actualRows1896++actualRows1897++actualRows1898
def partOps28 : List WordIR.Op := [.rotr 1645 18,.bxor 1834 1835,.shr 1645 3,.bxor 1836 1837,.badd 1833 1838,.badd 1839 1632,.rotr 1827 17,.rotr 1827 19,.bxor 1841 1842,.shr 1827 10,.bxor 1843 1844,.badd 1845 1762,.rotr 1658 7,.rotr 1658 18,.bxor 1847 1848,.shr 1658 3,.bxor 1849 1850,.badd 1846 1851,.badd 1852 1645,.rotr 1840 17,.rotr 1840 19,.bxor 1854 1855,.shr 1840 10,.bxor 1856 1857,.badd 1858 1775,.rotr 1671 7,.rotr 1671 18,.bxor 1860 1861,.shr 1671 3,.bxor 1862 1863,.badd 1859 1864,.badd 1865 1658,.rotr 1853 17,.rotr 1853 19,.bxor 1867 1868,.shr 1853 10,.bxor 1869 1870,.badd 1871 1788,.rotr 1684 7,.rotr 1684 18,.bxor 1873 1874,.shr 1684 3,.bxor 1875 1876,.badd 1872 1877,.badd 1878 1671,.rotr 1866 17,.rotr 1866 19,.bxor 1880 1881,.shr 1866 10,.bxor 1882 1883,.badd 1884 1801,.rotr 1697 7,.rotr 1697 18,.bxor 1886 1887,.shr 1697 3,.bxor 1888 1889,.badd 1885 1890,.badd 1891 1684,.rotr 1879 17,.rotr 1879 19,.bxor 1893 1894,.shr 1879 10,.bxor 1895 1896,.badd 1897 1814]
theorem partExact28 : partRows28=WordField.rows actualModulus 1835 partOps28 := by
  simp only [partRows28,partOps28,WordField.rows,rows1835,rows1836,rows1837,rows1838,rows1839,rows1840,rows1841,rows1842,rows1843,rows1844,rows1845,rows1846,rows1847,rows1848,rows1849,rows1850,rows1851,rows1852,rows1853,rows1854,rows1855,rows1856,rows1857,rows1858,rows1859,rows1860,rows1861,rows1862,rows1863,rows1864,rows1865,rows1866,rows1867,rows1868,rows1869,rows1870,rows1871,rows1872,rows1873,rows1874,rows1875,rows1876,rows1877,rows1878,rows1879,rows1880,rows1881,rows1882,rows1883,rows1884,rows1885,rows1886,rows1887,rows1888,rows1889,rows1890,rows1891,rows1892,rows1893,rows1894,rows1895,rows1896,rows1897,rows1898,List.append_assoc,List.append_nil]
theorem partLength28 : partOps28.length=64 := by decide
theorem partStats28 : partRows28.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows28=373296 := by
  simp only [partRows28,List.length_append,MatrixRowBlocks.rows_weight_append,stats1835.1,stats1835.2,stats1836.1,stats1836.2,stats1837.1,stats1837.2,stats1838.1,stats1838.2,stats1839.1,stats1839.2,stats1840.1,stats1840.2,stats1841.1,stats1841.2,stats1842.1,stats1842.2,stats1843.1,stats1843.2,stats1844.1,stats1844.2,stats1845.1,stats1845.2,stats1846.1,stats1846.2,stats1847.1,stats1847.2,stats1848.1,stats1848.2,stats1849.1,stats1849.2,stats1850.1,stats1850.2,stats1851.1,stats1851.2,stats1852.1,stats1852.2,stats1853.1,stats1853.2,stats1854.1,stats1854.2,stats1855.1,stats1855.2,stats1856.1,stats1856.2,stats1857.1,stats1857.2,stats1858.1,stats1858.2,stats1859.1,stats1859.2,stats1860.1,stats1860.2,stats1861.1,stats1861.2,stats1862.1,stats1862.2,stats1863.1,stats1863.2,stats1864.1,stats1864.2,stats1865.1,stats1865.2,stats1866.1,stats1866.2,stats1867.1,stats1867.2,stats1868.1,stats1868.2,stats1869.1,stats1869.2,stats1870.1,stats1870.2,stats1871.1,stats1871.2,stats1872.1,stats1872.2,stats1873.1,stats1873.2,stats1874.1,stats1874.2,stats1875.1,stats1875.2,stats1876.1,stats1876.2,stats1877.1,stats1877.2,stats1878.1,stats1878.2,stats1879.1,stats1879.2,stats1880.1,stats1880.2,stats1881.1,stats1881.2,stats1882.1,stats1882.2,stats1883.1,stats1883.2,stats1884.1,stats1884.2,stats1885.1,stats1885.2,stats1886.1,stats1886.2,stats1887.1,stats1887.2,stats1888.1,stats1888.2,stats1889.1,stats1889.2,stats1890.1,stats1890.2,stats1891.1,stats1891.2,stats1892.1,stats1892.2,stats1893.1,stats1893.2,stats1894.1,stats1894.2,stats1895.1,stats1895.2,stats1896.1,stats1896.2,stats1897.1,stats1897.2,stats1898.1,stats1898.2]
  decide
end SharedFrameCheckedRows
