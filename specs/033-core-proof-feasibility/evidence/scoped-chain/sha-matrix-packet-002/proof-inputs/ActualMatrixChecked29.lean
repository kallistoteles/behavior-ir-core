import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData29
import ActualMatrixData30
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1880 : actualRows1880=WordField.canonicalRows actualModulus 1880 (.rotr 1861 22) := by core033_kernel_decide
theorem stats1880 : actualRows1880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1880=5124 := by core033_kernel_decide
theorem rows1881 : actualRows1881=WordField.canonicalRows actualModulus 1881 (.bxor 1879 1880) := by core033_kernel_decide
theorem stats1881 : actualRows1881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1881=7428 := by core033_kernel_decide
theorem rows1882 : actualRows1882=WordField.canonicalRows actualModulus 1882 (.band 1861 1834) := by core033_kernel_decide
theorem stats1882 : actualRows1882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1882=5124 := by core033_kernel_decide
theorem rows1883 : actualRows1883=WordField.canonicalRows actualModulus 1883 (.band 1861 1807) := by core033_kernel_decide
theorem stats1883 : actualRows1883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1883=5124 := by core033_kernel_decide
theorem rows1884 : actualRows1884=WordField.canonicalRows actualModulus 1884 (.bxor 1882 1883) := by core033_kernel_decide
theorem stats1884 : actualRows1884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1884=7428 := by core033_kernel_decide
theorem rows1885 : actualRows1885=WordField.canonicalRows actualModulus 1885 (.band 1834 1807) := by core033_kernel_decide
theorem stats1885 : actualRows1885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1885=5124 := by core033_kernel_decide
theorem rows1886 : actualRows1886=WordField.canonicalRows actualModulus 1886 (.bxor 1884 1885) := by core033_kernel_decide
theorem stats1886 : actualRows1886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1886=7428 := by core033_kernel_decide
theorem rows1887 : actualRows1887=WordField.canonicalRows actualModulus 1887 (.badd 1881 1886) := by core033_kernel_decide
theorem stats1887 : actualRows1887.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1887=5388 := by core033_kernel_decide
theorem rows1888 : actualRows1888=WordField.canonicalRows actualModulus 1888 (.badd 1876 1887) := by core033_kernel_decide
theorem stats1888 : actualRows1888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1888=5388 := by core033_kernel_decide
theorem rows1889 : actualRows1889=WordField.canonicalRows actualModulus 1889 (.badd 1780 1876) := by core033_kernel_decide
theorem stats1889 : actualRows1889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1889=5388 := by core033_kernel_decide
theorem rows1890 : actualRows1890=WordField.canonicalRows actualModulus 1890 (.rotr 1889 6) := by core033_kernel_decide
theorem stats1890 : actualRows1890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1890=5124 := by core033_kernel_decide
theorem rows1891 : actualRows1891=WordField.canonicalRows actualModulus 1891 (.rotr 1889 11) := by core033_kernel_decide
theorem stats1891 : actualRows1891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1891=5124 := by core033_kernel_decide
theorem rows1892 : actualRows1892=WordField.canonicalRows actualModulus 1892 (.bxor 1890 1891) := by core033_kernel_decide
theorem stats1892 : actualRows1892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1892=7428 := by core033_kernel_decide
theorem rows1893 : actualRows1893=WordField.canonicalRows actualModulus 1893 (.rotr 1889 25) := by core033_kernel_decide
theorem stats1893 : actualRows1893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1893=5124 := by core033_kernel_decide
theorem rows1894 : actualRows1894=WordField.canonicalRows actualModulus 1894 (.bxor 1892 1893) := by core033_kernel_decide
theorem stats1894 : actualRows1894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1894=7428 := by core033_kernel_decide
theorem rows1895 : actualRows1895=WordField.canonicalRows actualModulus 1895 (.badd 1808 1894) := by core033_kernel_decide
theorem stats1895 : actualRows1895.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1895=5388 := by core033_kernel_decide
theorem rows1896 : actualRows1896=WordField.canonicalRows actualModulus 1896 (.band 1889 1862) := by core033_kernel_decide
theorem stats1896 : actualRows1896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1896=5124 := by core033_kernel_decide
theorem rows1897 : actualRows1897=WordField.canonicalRows actualModulus 1897 (.bnot 1889) := by core033_kernel_decide
theorem stats1897 : actualRows1897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1897=6276 := by core033_kernel_decide
theorem rows1898 : actualRows1898=WordField.canonicalRows actualModulus 1898 (.band 1897 1835) := by core033_kernel_decide
theorem stats1898 : actualRows1898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1898=5124 := by core033_kernel_decide
theorem rows1899 : actualRows1899=WordField.canonicalRows actualModulus 1899 (.bxor 1896 1898) := by core033_kernel_decide
theorem stats1899 : actualRows1899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1899=7428 := by core033_kernel_decide
theorem rows1900 : actualRows1900=WordField.canonicalRows actualModulus 1900 (.badd 1895 1899) := by core033_kernel_decide
theorem stats1900 : actualRows1900.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1900=5388 := by core033_kernel_decide
theorem rows1901 : actualRows1901=WordField.canonicalRows actualModulus 1901 (.literal (BitVec.ofNat 32 4094571909)) := by core033_kernel_decide
theorem stats1901 : actualRows1901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1901=3900 := by core033_kernel_decide
theorem rows1902 : actualRows1902=WordField.canonicalRows actualModulus 1902 (.badd 1900 1901) := by core033_kernel_decide
theorem stats1902 : actualRows1902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1902=5388 := by core033_kernel_decide
theorem rows1903 : actualRows1903=WordField.canonicalRows actualModulus 1903 (.badd 1902 426) := by core033_kernel_decide
theorem stats1903 : actualRows1903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1903=5388 := by core033_kernel_decide
theorem rows1904 : actualRows1904=WordField.canonicalRows actualModulus 1904 (.rotr 1888 2) := by core033_kernel_decide
theorem stats1904 : actualRows1904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1904=5124 := by core033_kernel_decide
theorem rows1905 : actualRows1905=WordField.canonicalRows actualModulus 1905 (.rotr 1888 13) := by core033_kernel_decide
theorem stats1905 : actualRows1905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1905=5124 := by core033_kernel_decide
theorem rows1906 : actualRows1906=WordField.canonicalRows actualModulus 1906 (.bxor 1904 1905) := by core033_kernel_decide
theorem stats1906 : actualRows1906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1906=7428 := by core033_kernel_decide
theorem rows1907 : actualRows1907=WordField.canonicalRows actualModulus 1907 (.rotr 1888 22) := by core033_kernel_decide
theorem stats1907 : actualRows1907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1907=5124 := by core033_kernel_decide
theorem rows1908 : actualRows1908=WordField.canonicalRows actualModulus 1908 (.bxor 1906 1907) := by core033_kernel_decide
theorem stats1908 : actualRows1908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1908=7428 := by core033_kernel_decide
theorem rows1909 : actualRows1909=WordField.canonicalRows actualModulus 1909 (.band 1888 1861) := by core033_kernel_decide
theorem stats1909 : actualRows1909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1909=5124 := by core033_kernel_decide
theorem rows1910 : actualRows1910=WordField.canonicalRows actualModulus 1910 (.band 1888 1834) := by core033_kernel_decide
theorem stats1910 : actualRows1910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1910=5124 := by core033_kernel_decide
theorem rows1911 : actualRows1911=WordField.canonicalRows actualModulus 1911 (.bxor 1909 1910) := by core033_kernel_decide
theorem stats1911 : actualRows1911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1911=7428 := by core033_kernel_decide
theorem rows1912 : actualRows1912=WordField.canonicalRows actualModulus 1912 (.band 1861 1834) := by core033_kernel_decide
theorem stats1912 : actualRows1912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1912=5124 := by core033_kernel_decide
theorem rows1913 : actualRows1913=WordField.canonicalRows actualModulus 1913 (.bxor 1911 1912) := by core033_kernel_decide
theorem stats1913 : actualRows1913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1913=7428 := by core033_kernel_decide
theorem rows1914 : actualRows1914=WordField.canonicalRows actualModulus 1914 (.badd 1908 1913) := by core033_kernel_decide
theorem stats1914 : actualRows1914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1914=5388 := by core033_kernel_decide
theorem rows1915 : actualRows1915=WordField.canonicalRows actualModulus 1915 (.badd 1903 1914) := by core033_kernel_decide
theorem stats1915 : actualRows1915.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1915=5388 := by core033_kernel_decide
theorem rows1916 : actualRows1916=WordField.canonicalRows actualModulus 1916 (.badd 1807 1903) := by core033_kernel_decide
theorem stats1916 : actualRows1916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1916=5388 := by core033_kernel_decide
theorem rows1917 : actualRows1917=WordField.canonicalRows actualModulus 1917 (.rotr 1916 6) := by core033_kernel_decide
theorem stats1917 : actualRows1917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1917=5124 := by core033_kernel_decide
theorem rows1918 : actualRows1918=WordField.canonicalRows actualModulus 1918 (.rotr 1916 11) := by core033_kernel_decide
theorem stats1918 : actualRows1918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1918=5124 := by core033_kernel_decide
theorem rows1919 : actualRows1919=WordField.canonicalRows actualModulus 1919 (.bxor 1917 1918) := by core033_kernel_decide
theorem stats1919 : actualRows1919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1919=7428 := by core033_kernel_decide
theorem rows1920 : actualRows1920=WordField.canonicalRows actualModulus 1920 (.rotr 1916 25) := by core033_kernel_decide
theorem stats1920 : actualRows1920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1920=5124 := by core033_kernel_decide
theorem rows1921 : actualRows1921=WordField.canonicalRows actualModulus 1921 (.bxor 1919 1920) := by core033_kernel_decide
theorem stats1921 : actualRows1921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1921=7428 := by core033_kernel_decide
theorem rows1922 : actualRows1922=WordField.canonicalRows actualModulus 1922 (.badd 1835 1921) := by core033_kernel_decide
theorem stats1922 : actualRows1922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1922=5388 := by core033_kernel_decide
theorem rows1923 : actualRows1923=WordField.canonicalRows actualModulus 1923 (.band 1916 1889) := by core033_kernel_decide
theorem stats1923 : actualRows1923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1923=5124 := by core033_kernel_decide
theorem rows1924 : actualRows1924=WordField.canonicalRows actualModulus 1924 (.bnot 1916) := by core033_kernel_decide
theorem stats1924 : actualRows1924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1924=6276 := by core033_kernel_decide
theorem rows1925 : actualRows1925=WordField.canonicalRows actualModulus 1925 (.band 1924 1862) := by core033_kernel_decide
theorem stats1925 : actualRows1925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1925=5124 := by core033_kernel_decide
theorem rows1926 : actualRows1926=WordField.canonicalRows actualModulus 1926 (.bxor 1923 1925) := by core033_kernel_decide
theorem stats1926 : actualRows1926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1926=7428 := by core033_kernel_decide
theorem rows1927 : actualRows1927=WordField.canonicalRows actualModulus 1927 (.badd 1922 1926) := by core033_kernel_decide
theorem stats1927 : actualRows1927.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1927=5388 := by core033_kernel_decide
theorem rows1928 : actualRows1928=WordField.canonicalRows actualModulus 1928 (.literal (BitVec.ofNat 32 275423344)) := by core033_kernel_decide
theorem stats1928 : actualRows1928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1928=3540 := by core033_kernel_decide
theorem rows1929 : actualRows1929=WordField.canonicalRows actualModulus 1929 (.badd 1927 1928) := by core033_kernel_decide
theorem stats1929 : actualRows1929.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1929=5388 := by core033_kernel_decide
theorem rows1930 : actualRows1930=WordField.canonicalRows actualModulus 1930 (.badd 1929 439) := by core033_kernel_decide
theorem stats1930 : actualRows1930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1930=5388 := by core033_kernel_decide
theorem rows1931 : actualRows1931=WordField.canonicalRows actualModulus 1931 (.rotr 1915 2) := by core033_kernel_decide
theorem stats1931 : actualRows1931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1931=5124 := by core033_kernel_decide
theorem rows1932 : actualRows1932=WordField.canonicalRows actualModulus 1932 (.rotr 1915 13) := by core033_kernel_decide
theorem stats1932 : actualRows1932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1932=5124 := by core033_kernel_decide
theorem rows1933 : actualRows1933=WordField.canonicalRows actualModulus 1933 (.bxor 1931 1932) := by core033_kernel_decide
theorem stats1933 : actualRows1933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1933=7428 := by core033_kernel_decide
theorem rows1934 : actualRows1934=WordField.canonicalRows actualModulus 1934 (.rotr 1915 22) := by core033_kernel_decide
theorem stats1934 : actualRows1934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1934=5124 := by core033_kernel_decide
theorem rows1935 : actualRows1935=WordField.canonicalRows actualModulus 1935 (.bxor 1933 1934) := by core033_kernel_decide
theorem stats1935 : actualRows1935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1935=7428 := by core033_kernel_decide
theorem rows1936 : actualRows1936=WordField.canonicalRows actualModulus 1936 (.band 1915 1888) := by core033_kernel_decide
theorem stats1936 : actualRows1936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1936=5124 := by core033_kernel_decide
theorem rows1937 : actualRows1937=WordField.canonicalRows actualModulus 1937 (.band 1915 1861) := by core033_kernel_decide
theorem stats1937 : actualRows1937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1937=5124 := by core033_kernel_decide
theorem rows1938 : actualRows1938=WordField.canonicalRows actualModulus 1938 (.bxor 1936 1937) := by core033_kernel_decide
theorem stats1938 : actualRows1938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1938=7428 := by core033_kernel_decide
theorem rows1939 : actualRows1939=WordField.canonicalRows actualModulus 1939 (.band 1888 1861) := by core033_kernel_decide
theorem stats1939 : actualRows1939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1939=5124 := by core033_kernel_decide
theorem rows1940 : actualRows1940=WordField.canonicalRows actualModulus 1940 (.bxor 1938 1939) := by core033_kernel_decide
theorem stats1940 : actualRows1940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1940=7428 := by core033_kernel_decide
theorem rows1941 : actualRows1941=WordField.canonicalRows actualModulus 1941 (.badd 1935 1940) := by core033_kernel_decide
theorem stats1941 : actualRows1941.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1941=5388 := by core033_kernel_decide
theorem rows1942 : actualRows1942=WordField.canonicalRows actualModulus 1942 (.badd 1930 1941) := by core033_kernel_decide
theorem stats1942 : actualRows1942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1942=5388 := by core033_kernel_decide
theorem rows1943 : actualRows1943=WordField.canonicalRows actualModulus 1943 (.badd 1834 1930) := by core033_kernel_decide
theorem stats1943 : actualRows1943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1943=5388 := by core033_kernel_decide
def partRows29 : List R1CS.Row := actualRows1880++actualRows1881++actualRows1882++actualRows1883++actualRows1884++actualRows1885++actualRows1886++actualRows1887++actualRows1888++actualRows1889++actualRows1890++actualRows1891++actualRows1892++actualRows1893++actualRows1894++actualRows1895++actualRows1896++actualRows1897++actualRows1898++actualRows1899++actualRows1900++actualRows1901++actualRows1902++actualRows1903++actualRows1904++actualRows1905++actualRows1906++actualRows1907++actualRows1908++actualRows1909++actualRows1910++actualRows1911++actualRows1912++actualRows1913++actualRows1914++actualRows1915++actualRows1916++actualRows1917++actualRows1918++actualRows1919++actualRows1920++actualRows1921++actualRows1922++actualRows1923++actualRows1924++actualRows1925++actualRows1926++actualRows1927++actualRows1928++actualRows1929++actualRows1930++actualRows1931++actualRows1932++actualRows1933++actualRows1934++actualRows1935++actualRows1936++actualRows1937++actualRows1938++actualRows1939++actualRows1940++actualRows1941++actualRows1942++actualRows1943
def partOps29 : List WordIR.Op := [.rotr 1861 22,.bxor 1879 1880,.band 1861 1834,.band 1861 1807,.bxor 1882 1883,.band 1834 1807,.bxor 1884 1885,.badd 1881 1886,.badd 1876 1887,.badd 1780 1876,.rotr 1889 6,.rotr 1889 11,.bxor 1890 1891,.rotr 1889 25,.bxor 1892 1893,.badd 1808 1894,.band 1889 1862,.bnot 1889,.band 1897 1835,.bxor 1896 1898,.badd 1895 1899,.literal (BitVec.ofNat 32 4094571909),.badd 1900 1901,.badd 1902 426,.rotr 1888 2,.rotr 1888 13,.bxor 1904 1905,.rotr 1888 22,.bxor 1906 1907,.band 1888 1861,.band 1888 1834,.bxor 1909 1910,.band 1861 1834,.bxor 1911 1912,.badd 1908 1913,.badd 1903 1914,.badd 1807 1903,.rotr 1916 6,.rotr 1916 11,.bxor 1917 1918,.rotr 1916 25,.bxor 1919 1920,.badd 1835 1921,.band 1916 1889,.bnot 1916,.band 1924 1862,.bxor 1923 1925,.badd 1922 1926,.literal (BitVec.ofNat 32 275423344),.badd 1927 1928,.badd 1929 439,.rotr 1915 2,.rotr 1915 13,.bxor 1931 1932,.rotr 1915 22,.bxor 1933 1934,.band 1915 1888,.band 1915 1861,.bxor 1936 1937,.band 1888 1861,.bxor 1938 1939,.badd 1935 1940,.badd 1930 1941,.badd 1834 1930]
theorem partRowsExact29 : partRows29=WordField.rows actualModulus 1880 partOps29 := by
  simp only [partRows29,partOps29,WordField.rows,rows1880,rows1881,rows1882,rows1883,rows1884,rows1885,rows1886,rows1887,rows1888,rows1889,rows1890,rows1891,rows1892,rows1893,rows1894,rows1895,rows1896,rows1897,rows1898,rows1899,rows1900,rows1901,rows1902,rows1903,rows1904,rows1905,rows1906,rows1907,rows1908,rows1909,rows1910,rows1911,rows1912,rows1913,rows1914,rows1915,rows1916,rows1917,rows1918,rows1919,rows1920,rows1921,rows1922,rows1923,rows1924,rows1925,rows1926,rows1927,rows1928,rows1929,rows1930,rows1931,rows1932,rows1933,rows1934,rows1935,rows1936,rows1937,rows1938,rows1939,rows1940,rows1941,rows1942,rows1943,List.append_assoc,List.append_nil]
theorem partOpsLength29 : partOps29.length=64 := by decide
theorem partStats29 : partRows29.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows29=371088 := by
  simp only [partRows29,List.length_append,MatrixRowBlocks.rows_weight_append,stats1880.1,stats1880.2,stats1881.1,stats1881.2,stats1882.1,stats1882.2,stats1883.1,stats1883.2,stats1884.1,stats1884.2,stats1885.1,stats1885.2,stats1886.1,stats1886.2,stats1887.1,stats1887.2,stats1888.1,stats1888.2,stats1889.1,stats1889.2,stats1890.1,stats1890.2,stats1891.1,stats1891.2,stats1892.1,stats1892.2,stats1893.1,stats1893.2,stats1894.1,stats1894.2,stats1895.1,stats1895.2,stats1896.1,stats1896.2,stats1897.1,stats1897.2,stats1898.1,stats1898.2,stats1899.1,stats1899.2,stats1900.1,stats1900.2,stats1901.1,stats1901.2,stats1902.1,stats1902.2,stats1903.1,stats1903.2,stats1904.1,stats1904.2,stats1905.1,stats1905.2,stats1906.1,stats1906.2,stats1907.1,stats1907.2,stats1908.1,stats1908.2,stats1909.1,stats1909.2,stats1910.1,stats1910.2,stats1911.1,stats1911.2,stats1912.1,stats1912.2,stats1913.1,stats1913.2,stats1914.1,stats1914.2,stats1915.1,stats1915.2,stats1916.1,stats1916.2,stats1917.1,stats1917.2,stats1918.1,stats1918.2,stats1919.1,stats1919.2,stats1920.1,stats1920.2,stats1921.1,stats1921.2,stats1922.1,stats1922.2,stats1923.1,stats1923.2,stats1924.1,stats1924.2,stats1925.1,stats1925.2,stats1926.1,stats1926.2,stats1927.1,stats1927.2,stats1928.1,stats1928.2,stats1929.1,stats1929.2,stats1930.1,stats1930.2,stats1931.1,stats1931.2,stats1932.1,stats1932.2,stats1933.1,stats1933.2,stats1934.1,stats1934.2,stats1935.1,stats1935.2,stats1936.1,stats1936.2,stats1937.1,stats1937.2,stats1938.1,stats1938.2,stats1939.1,stats1939.2,stats1940.1,stats1940.2,stats1941.1,stats1941.2,stats1942.1,stats1942.2,stats1943.1,stats1943.2]
  decide
end ActualSHAMatrixRows
