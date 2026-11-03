import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData29
import SharedFrameInstructionMatrixData30
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1899 : actualRows1899=WordField.canonicalRows actualModulus 1899 (.rotr 1710 7) := by core033_kernel_decide
theorem stats1899 : actualRows1899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1899=5124 := by core033_kernel_decide
theorem rows1900 : actualRows1900=WordField.canonicalRows actualModulus 1900 (.rotr 1710 18) := by core033_kernel_decide
theorem stats1900 : actualRows1900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1900=5124 := by core033_kernel_decide
theorem rows1901 : actualRows1901=WordField.canonicalRows actualModulus 1901 (.bxor 1899 1900) := by core033_kernel_decide
theorem stats1901 : actualRows1901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1901=7428 := by core033_kernel_decide
theorem rows1902 : actualRows1902=WordField.canonicalRows actualModulus 1902 (.shr 1710 3) := by core033_kernel_decide
theorem stats1902 : actualRows1902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1902=4908 := by core033_kernel_decide
theorem rows1903 : actualRows1903=WordField.canonicalRows actualModulus 1903 (.bxor 1901 1902) := by core033_kernel_decide
theorem stats1903 : actualRows1903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1903=7428 := by core033_kernel_decide
theorem rows1904 : actualRows1904=WordField.canonicalRows actualModulus 1904 (.badd 1898 1903) := by core033_kernel_decide
theorem stats1904 : actualRows1904.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1904=5388 := by core033_kernel_decide
theorem rows1905 : actualRows1905=WordField.canonicalRows actualModulus 1905 (.badd 1904 1697) := by core033_kernel_decide
theorem stats1905 : actualRows1905.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1905=5388 := by core033_kernel_decide
theorem rows1906 : actualRows1906=WordField.canonicalRows actualModulus 1906 (.rotr 1892 17) := by core033_kernel_decide
theorem stats1906 : actualRows1906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1906=5124 := by core033_kernel_decide
theorem rows1907 : actualRows1907=WordField.canonicalRows actualModulus 1907 (.rotr 1892 19) := by core033_kernel_decide
theorem stats1907 : actualRows1907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1907=5124 := by core033_kernel_decide
theorem rows1908 : actualRows1908=WordField.canonicalRows actualModulus 1908 (.bxor 1906 1907) := by core033_kernel_decide
theorem stats1908 : actualRows1908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1908=7428 := by core033_kernel_decide
theorem rows1909 : actualRows1909=WordField.canonicalRows actualModulus 1909 (.shr 1892 10) := by core033_kernel_decide
theorem stats1909 : actualRows1909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1909=4404 := by core033_kernel_decide
theorem rows1910 : actualRows1910=WordField.canonicalRows actualModulus 1910 (.bxor 1908 1909) := by core033_kernel_decide
theorem stats1910 : actualRows1910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1910=7428 := by core033_kernel_decide
theorem rows1911 : actualRows1911=WordField.canonicalRows actualModulus 1911 (.badd 1910 1827) := by core033_kernel_decide
theorem stats1911 : actualRows1911.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1911=5388 := by core033_kernel_decide
theorem rows1912 : actualRows1912=WordField.canonicalRows actualModulus 1912 (.rotr 1723 7) := by core033_kernel_decide
theorem stats1912 : actualRows1912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1912=5124 := by core033_kernel_decide
theorem rows1913 : actualRows1913=WordField.canonicalRows actualModulus 1913 (.rotr 1723 18) := by core033_kernel_decide
theorem stats1913 : actualRows1913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1913=5124 := by core033_kernel_decide
theorem rows1914 : actualRows1914=WordField.canonicalRows actualModulus 1914 (.bxor 1912 1913) := by core033_kernel_decide
theorem stats1914 : actualRows1914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1914=7428 := by core033_kernel_decide
theorem rows1915 : actualRows1915=WordField.canonicalRows actualModulus 1915 (.shr 1723 3) := by core033_kernel_decide
theorem stats1915 : actualRows1915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1915=4908 := by core033_kernel_decide
theorem rows1916 : actualRows1916=WordField.canonicalRows actualModulus 1916 (.bxor 1914 1915) := by core033_kernel_decide
theorem stats1916 : actualRows1916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1916=7428 := by core033_kernel_decide
theorem rows1917 : actualRows1917=WordField.canonicalRows actualModulus 1917 (.badd 1911 1916) := by core033_kernel_decide
theorem stats1917 : actualRows1917.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1917=5388 := by core033_kernel_decide
theorem rows1918 : actualRows1918=WordField.canonicalRows actualModulus 1918 (.badd 1917 1710) := by core033_kernel_decide
theorem stats1918 : actualRows1918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1918=5388 := by core033_kernel_decide
theorem rows1919 : actualRows1919=WordField.canonicalRows actualModulus 1919 (.rotr 1905 17) := by core033_kernel_decide
theorem stats1919 : actualRows1919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1919=5124 := by core033_kernel_decide
theorem rows1920 : actualRows1920=WordField.canonicalRows actualModulus 1920 (.rotr 1905 19) := by core033_kernel_decide
theorem stats1920 : actualRows1920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1920=5124 := by core033_kernel_decide
theorem rows1921 : actualRows1921=WordField.canonicalRows actualModulus 1921 (.bxor 1919 1920) := by core033_kernel_decide
theorem stats1921 : actualRows1921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1921=7428 := by core033_kernel_decide
theorem rows1922 : actualRows1922=WordField.canonicalRows actualModulus 1922 (.shr 1905 10) := by core033_kernel_decide
theorem stats1922 : actualRows1922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1922=4404 := by core033_kernel_decide
theorem rows1923 : actualRows1923=WordField.canonicalRows actualModulus 1923 (.bxor 1921 1922) := by core033_kernel_decide
theorem stats1923 : actualRows1923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1923=7428 := by core033_kernel_decide
theorem rows1924 : actualRows1924=WordField.canonicalRows actualModulus 1924 (.badd 1923 1840) := by core033_kernel_decide
theorem stats1924 : actualRows1924.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1924=5388 := by core033_kernel_decide
theorem rows1925 : actualRows1925=WordField.canonicalRows actualModulus 1925 (.rotr 1736 7) := by core033_kernel_decide
theorem stats1925 : actualRows1925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1925=5124 := by core033_kernel_decide
theorem rows1926 : actualRows1926=WordField.canonicalRows actualModulus 1926 (.rotr 1736 18) := by core033_kernel_decide
theorem stats1926 : actualRows1926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1926=5124 := by core033_kernel_decide
theorem rows1927 : actualRows1927=WordField.canonicalRows actualModulus 1927 (.bxor 1925 1926) := by core033_kernel_decide
theorem stats1927 : actualRows1927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1927=7428 := by core033_kernel_decide
theorem rows1928 : actualRows1928=WordField.canonicalRows actualModulus 1928 (.shr 1736 3) := by core033_kernel_decide
theorem stats1928 : actualRows1928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1928=4908 := by core033_kernel_decide
theorem rows1929 : actualRows1929=WordField.canonicalRows actualModulus 1929 (.bxor 1927 1928) := by core033_kernel_decide
theorem stats1929 : actualRows1929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1929=7428 := by core033_kernel_decide
theorem rows1930 : actualRows1930=WordField.canonicalRows actualModulus 1930 (.badd 1924 1929) := by core033_kernel_decide
theorem stats1930 : actualRows1930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1930=5388 := by core033_kernel_decide
theorem rows1931 : actualRows1931=WordField.canonicalRows actualModulus 1931 (.badd 1930 1723) := by core033_kernel_decide
theorem stats1931 : actualRows1931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1931=5388 := by core033_kernel_decide
theorem rows1932 : actualRows1932=WordField.canonicalRows actualModulus 1932 (.rotr 1918 17) := by core033_kernel_decide
theorem stats1932 : actualRows1932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1932=5124 := by core033_kernel_decide
theorem rows1933 : actualRows1933=WordField.canonicalRows actualModulus 1933 (.rotr 1918 19) := by core033_kernel_decide
theorem stats1933 : actualRows1933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1933=5124 := by core033_kernel_decide
theorem rows1934 : actualRows1934=WordField.canonicalRows actualModulus 1934 (.bxor 1932 1933) := by core033_kernel_decide
theorem stats1934 : actualRows1934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1934=7428 := by core033_kernel_decide
theorem rows1935 : actualRows1935=WordField.canonicalRows actualModulus 1935 (.shr 1918 10) := by core033_kernel_decide
theorem stats1935 : actualRows1935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1935=4404 := by core033_kernel_decide
theorem rows1936 : actualRows1936=WordField.canonicalRows actualModulus 1936 (.bxor 1934 1935) := by core033_kernel_decide
theorem stats1936 : actualRows1936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1936=7428 := by core033_kernel_decide
theorem rows1937 : actualRows1937=WordField.canonicalRows actualModulus 1937 (.badd 1936 1853) := by core033_kernel_decide
theorem stats1937 : actualRows1937.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1937=5388 := by core033_kernel_decide
theorem rows1938 : actualRows1938=WordField.canonicalRows actualModulus 1938 (.rotr 1749 7) := by core033_kernel_decide
theorem stats1938 : actualRows1938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1938=5124 := by core033_kernel_decide
theorem rows1939 : actualRows1939=WordField.canonicalRows actualModulus 1939 (.rotr 1749 18) := by core033_kernel_decide
theorem stats1939 : actualRows1939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1939=5124 := by core033_kernel_decide
theorem rows1940 : actualRows1940=WordField.canonicalRows actualModulus 1940 (.bxor 1938 1939) := by core033_kernel_decide
theorem stats1940 : actualRows1940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1940=7428 := by core033_kernel_decide
theorem rows1941 : actualRows1941=WordField.canonicalRows actualModulus 1941 (.shr 1749 3) := by core033_kernel_decide
theorem stats1941 : actualRows1941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1941=4908 := by core033_kernel_decide
theorem rows1942 : actualRows1942=WordField.canonicalRows actualModulus 1942 (.bxor 1940 1941) := by core033_kernel_decide
theorem stats1942 : actualRows1942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1942=7428 := by core033_kernel_decide
theorem rows1943 : actualRows1943=WordField.canonicalRows actualModulus 1943 (.badd 1937 1942) := by core033_kernel_decide
theorem stats1943 : actualRows1943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1943=5388 := by core033_kernel_decide
theorem rows1944 : actualRows1944=WordField.canonicalRows actualModulus 1944 (.badd 1943 1736) := by core033_kernel_decide
theorem stats1944 : actualRows1944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1944=5388 := by core033_kernel_decide
theorem rows1945 : actualRows1945=WordField.canonicalRows actualModulus 1945 (.rotr 1931 17) := by core033_kernel_decide
theorem stats1945 : actualRows1945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1945=5124 := by core033_kernel_decide
theorem rows1946 : actualRows1946=WordField.canonicalRows actualModulus 1946 (.rotr 1931 19) := by core033_kernel_decide
theorem stats1946 : actualRows1946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1946=5124 := by core033_kernel_decide
theorem rows1947 : actualRows1947=WordField.canonicalRows actualModulus 1947 (.bxor 1945 1946) := by core033_kernel_decide
theorem stats1947 : actualRows1947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1947=7428 := by core033_kernel_decide
theorem rows1948 : actualRows1948=WordField.canonicalRows actualModulus 1948 (.shr 1931 10) := by core033_kernel_decide
theorem stats1948 : actualRows1948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1948=4404 := by core033_kernel_decide
theorem rows1949 : actualRows1949=WordField.canonicalRows actualModulus 1949 (.bxor 1947 1948) := by core033_kernel_decide
theorem stats1949 : actualRows1949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1949=7428 := by core033_kernel_decide
theorem rows1950 : actualRows1950=WordField.canonicalRows actualModulus 1950 (.badd 1949 1866) := by core033_kernel_decide
theorem stats1950 : actualRows1950.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1950=5388 := by core033_kernel_decide
theorem rows1951 : actualRows1951=WordField.canonicalRows actualModulus 1951 (.rotr 1762 7) := by core033_kernel_decide
theorem stats1951 : actualRows1951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1951=5124 := by core033_kernel_decide
theorem rows1952 : actualRows1952=WordField.canonicalRows actualModulus 1952 (.rotr 1762 18) := by core033_kernel_decide
theorem stats1952 : actualRows1952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1952=5124 := by core033_kernel_decide
theorem rows1953 : actualRows1953=WordField.canonicalRows actualModulus 1953 (.bxor 1951 1952) := by core033_kernel_decide
theorem stats1953 : actualRows1953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1953=7428 := by core033_kernel_decide
theorem rows1954 : actualRows1954=WordField.canonicalRows actualModulus 1954 (.shr 1762 3) := by core033_kernel_decide
theorem stats1954 : actualRows1954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1954=4908 := by core033_kernel_decide
theorem rows1955 : actualRows1955=WordField.canonicalRows actualModulus 1955 (.bxor 1953 1954) := by core033_kernel_decide
theorem stats1955 : actualRows1955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1955=7428 := by core033_kernel_decide
theorem rows1956 : actualRows1956=WordField.canonicalRows actualModulus 1956 (.badd 1950 1955) := by core033_kernel_decide
theorem stats1956 : actualRows1956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1956=5388 := by core033_kernel_decide
theorem rows1957 : actualRows1957=WordField.canonicalRows actualModulus 1957 (.badd 1956 1749) := by core033_kernel_decide
theorem stats1957 : actualRows1957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1957=5388 := by core033_kernel_decide
theorem rows1958 : actualRows1958=WordField.canonicalRows actualModulus 1958 (.rotr 1944 17) := by core033_kernel_decide
theorem stats1958 : actualRows1958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1958=5124 := by core033_kernel_decide
theorem rows1959 : actualRows1959=WordField.canonicalRows actualModulus 1959 (.rotr 1944 19) := by core033_kernel_decide
theorem stats1959 : actualRows1959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1959=5124 := by core033_kernel_decide
theorem rows1960 : actualRows1960=WordField.canonicalRows actualModulus 1960 (.bxor 1958 1959) := by core033_kernel_decide
theorem stats1960 : actualRows1960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1960=7428 := by core033_kernel_decide
theorem rows1961 : actualRows1961=WordField.canonicalRows actualModulus 1961 (.shr 1944 10) := by core033_kernel_decide
theorem stats1961 : actualRows1961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1961=4404 := by core033_kernel_decide
theorem rows1962 : actualRows1962=WordField.canonicalRows actualModulus 1962 (.bxor 1960 1961) := by core033_kernel_decide
theorem stats1962 : actualRows1962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1962=7428 := by core033_kernel_decide
def partRows29 : List R1CS.Row := actualRows1899++actualRows1900++actualRows1901++actualRows1902++actualRows1903++actualRows1904++actualRows1905++actualRows1906++actualRows1907++actualRows1908++actualRows1909++actualRows1910++actualRows1911++actualRows1912++actualRows1913++actualRows1914++actualRows1915++actualRows1916++actualRows1917++actualRows1918++actualRows1919++actualRows1920++actualRows1921++actualRows1922++actualRows1923++actualRows1924++actualRows1925++actualRows1926++actualRows1927++actualRows1928++actualRows1929++actualRows1930++actualRows1931++actualRows1932++actualRows1933++actualRows1934++actualRows1935++actualRows1936++actualRows1937++actualRows1938++actualRows1939++actualRows1940++actualRows1941++actualRows1942++actualRows1943++actualRows1944++actualRows1945++actualRows1946++actualRows1947++actualRows1948++actualRows1949++actualRows1950++actualRows1951++actualRows1952++actualRows1953++actualRows1954++actualRows1955++actualRows1956++actualRows1957++actualRows1958++actualRows1959++actualRows1960++actualRows1961++actualRows1962
def partOps29 : List WordIR.Op := [.rotr 1710 7,.rotr 1710 18,.bxor 1899 1900,.shr 1710 3,.bxor 1901 1902,.badd 1898 1903,.badd 1904 1697,.rotr 1892 17,.rotr 1892 19,.bxor 1906 1907,.shr 1892 10,.bxor 1908 1909,.badd 1910 1827,.rotr 1723 7,.rotr 1723 18,.bxor 1912 1913,.shr 1723 3,.bxor 1914 1915,.badd 1911 1916,.badd 1917 1710,.rotr 1905 17,.rotr 1905 19,.bxor 1919 1920,.shr 1905 10,.bxor 1921 1922,.badd 1923 1840,.rotr 1736 7,.rotr 1736 18,.bxor 1925 1926,.shr 1736 3,.bxor 1927 1928,.badd 1924 1929,.badd 1930 1723,.rotr 1918 17,.rotr 1918 19,.bxor 1932 1933,.shr 1918 10,.bxor 1934 1935,.badd 1936 1853,.rotr 1749 7,.rotr 1749 18,.bxor 1938 1939,.shr 1749 3,.bxor 1940 1941,.badd 1937 1942,.badd 1943 1736,.rotr 1931 17,.rotr 1931 19,.bxor 1945 1946,.shr 1931 10,.bxor 1947 1948,.badd 1949 1866,.rotr 1762 7,.rotr 1762 18,.bxor 1951 1952,.shr 1762 3,.bxor 1953 1954,.badd 1950 1955,.badd 1956 1749,.rotr 1944 17,.rotr 1944 19,.bxor 1958 1959,.shr 1944 10,.bxor 1960 1961]
theorem partExact29 : partRows29=WordField.rows actualModulus 1899 partOps29 := by
  simp only [partRows29,partOps29,WordField.rows,rows1899,rows1900,rows1901,rows1902,rows1903,rows1904,rows1905,rows1906,rows1907,rows1908,rows1909,rows1910,rows1911,rows1912,rows1913,rows1914,rows1915,rows1916,rows1917,rows1918,rows1919,rows1920,rows1921,rows1922,rows1923,rows1924,rows1925,rows1926,rows1927,rows1928,rows1929,rows1930,rows1931,rows1932,rows1933,rows1934,rows1935,rows1936,rows1937,rows1938,rows1939,rows1940,rows1941,rows1942,rows1943,rows1944,rows1945,rows1946,rows1947,rows1948,rows1949,rows1950,rows1951,rows1952,rows1953,rows1954,rows1955,rows1956,rows1957,rows1958,rows1959,rows1960,rows1961,rows1962,List.append_assoc,List.append_nil]
theorem partLength29 : partOps29.length=64 := by decide
theorem partStats29 : partRows29.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows29=373032 := by
  simp only [partRows29,List.length_append,MatrixRowBlocks.rows_weight_append,stats1899.1,stats1899.2,stats1900.1,stats1900.2,stats1901.1,stats1901.2,stats1902.1,stats1902.2,stats1903.1,stats1903.2,stats1904.1,stats1904.2,stats1905.1,stats1905.2,stats1906.1,stats1906.2,stats1907.1,stats1907.2,stats1908.1,stats1908.2,stats1909.1,stats1909.2,stats1910.1,stats1910.2,stats1911.1,stats1911.2,stats1912.1,stats1912.2,stats1913.1,stats1913.2,stats1914.1,stats1914.2,stats1915.1,stats1915.2,stats1916.1,stats1916.2,stats1917.1,stats1917.2,stats1918.1,stats1918.2,stats1919.1,stats1919.2,stats1920.1,stats1920.2,stats1921.1,stats1921.2,stats1922.1,stats1922.2,stats1923.1,stats1923.2,stats1924.1,stats1924.2,stats1925.1,stats1925.2,stats1926.1,stats1926.2,stats1927.1,stats1927.2,stats1928.1,stats1928.2,stats1929.1,stats1929.2,stats1930.1,stats1930.2,stats1931.1,stats1931.2,stats1932.1,stats1932.2,stats1933.1,stats1933.2,stats1934.1,stats1934.2,stats1935.1,stats1935.2,stats1936.1,stats1936.2,stats1937.1,stats1937.2,stats1938.1,stats1938.2,stats1939.1,stats1939.2,stats1940.1,stats1940.2,stats1941.1,stats1941.2,stats1942.1,stats1942.2,stats1943.1,stats1943.2,stats1944.1,stats1944.2,stats1945.1,stats1945.2,stats1946.1,stats1946.2,stats1947.1,stats1947.2,stats1948.1,stats1948.2,stats1949.1,stats1949.2,stats1950.1,stats1950.2,stats1951.1,stats1951.2,stats1952.1,stats1952.2,stats1953.1,stats1953.2,stats1954.1,stats1954.2,stats1955.1,stats1955.2,stats1956.1,stats1956.2,stats1957.1,stats1957.2,stats1958.1,stats1958.2,stats1959.1,stats1959.2,stats1960.1,stats1960.2,stats1961.1,stats1961.2,stats1962.1,stats1962.2]
  decide
end SharedFrameCheckedRows
