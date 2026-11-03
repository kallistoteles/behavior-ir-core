import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData29
import AuthenticatedBranchRoundInstructionMatrixData30
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1910 : actualRows1910=WordField.canonicalRows actualModulus 1910 (.badd 1908 1909) := by core033_kernel_decide
theorem stats1910 : actualRows1910.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1910=5388 := by core033_kernel_decide
theorem rows1911 : actualRows1911=WordField.canonicalRows actualModulus 1911 (.shr 1821 0) := by core033_kernel_decide
theorem stats1911 : actualRows1911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1911=5124 := by core033_kernel_decide
theorem rows1912 : actualRows1912=WordField.canonicalRows actualModulus 1912 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1912 : actualRows1912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1912=2892 := by core033_kernel_decide
theorem rows1913 : actualRows1913=WordField.canonicalRows actualModulus 1913 (.band 1911 1912) := by core033_kernel_decide
theorem stats1913 : actualRows1913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1913=5124 := by core033_kernel_decide
theorem rows1914 : actualRows1914=WordField.canonicalRows actualModulus 1914 (.bnot 1913) := by core033_kernel_decide
theorem stats1914 : actualRows1914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1914=6276 := by core033_kernel_decide
theorem rows1915 : actualRows1915=WordField.canonicalRows actualModulus 1915 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1915 : actualRows1915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1915=2892 := by core033_kernel_decide
theorem rows1916 : actualRows1916=WordField.canonicalRows actualModulus 1916 (.badd 1914 1915) := by core033_kernel_decide
theorem stats1916 : actualRows1916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1916=5388 := by core033_kernel_decide
theorem rows1917 : actualRows1917=WordField.canonicalRows actualModulus 1917 (.band 1916 1365) := by core033_kernel_decide
theorem stats1917 : actualRows1917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1917=5124 := by core033_kernel_decide
theorem rows1918 : actualRows1918=WordField.canonicalRows actualModulus 1918 (.shr 1821 0) := by core033_kernel_decide
theorem stats1918 : actualRows1918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1918=5124 := by core033_kernel_decide
theorem rows1919 : actualRows1919=WordField.canonicalRows actualModulus 1919 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1919 : actualRows1919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1919=2892 := by core033_kernel_decide
theorem rows1920 : actualRows1920=WordField.canonicalRows actualModulus 1920 (.band 1918 1919) := by core033_kernel_decide
theorem stats1920 : actualRows1920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1920=5124 := by core033_kernel_decide
theorem rows1921 : actualRows1921=WordField.canonicalRows actualModulus 1921 (.bnot 1920) := by core033_kernel_decide
theorem stats1921 : actualRows1921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1921=6276 := by core033_kernel_decide
theorem rows1922 : actualRows1922=WordField.canonicalRows actualModulus 1922 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1922 : actualRows1922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1922=2892 := by core033_kernel_decide
theorem rows1923 : actualRows1923=WordField.canonicalRows actualModulus 1923 (.badd 1921 1922) := by core033_kernel_decide
theorem stats1923 : actualRows1923.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1923=5388 := by core033_kernel_decide
theorem rows1924 : actualRows1924=WordField.canonicalRows actualModulus 1924 (.bnot 1923) := by core033_kernel_decide
theorem stats1924 : actualRows1924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1924=6276 := by core033_kernel_decide
theorem rows1925 : actualRows1925=WordField.canonicalRows actualModulus 1925 (.band 1924 1354) := by core033_kernel_decide
theorem stats1925 : actualRows1925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1925=5124 := by core033_kernel_decide
theorem rows1926 : actualRows1926=WordField.canonicalRows actualModulus 1926 (.bxor 1917 1925) := by core033_kernel_decide
theorem stats1926 : actualRows1926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1926=7428 := by core033_kernel_decide
theorem rows1927 : actualRows1927=WordField.canonicalRows actualModulus 1927 (.band 1910 1926) := by core033_kernel_decide
theorem stats1927 : actualRows1927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1927=5124 := by core033_kernel_decide
theorem rows1928 : actualRows1928=WordField.canonicalRows actualModulus 1928 (.shr 1821 1) := by core033_kernel_decide
theorem stats1928 : actualRows1928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1928=5052 := by core033_kernel_decide
theorem rows1929 : actualRows1929=WordField.canonicalRows actualModulus 1929 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1929 : actualRows1929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1929=2892 := by core033_kernel_decide
theorem rows1930 : actualRows1930=WordField.canonicalRows actualModulus 1930 (.band 1928 1929) := by core033_kernel_decide
theorem stats1930 : actualRows1930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1930=5124 := by core033_kernel_decide
theorem rows1931 : actualRows1931=WordField.canonicalRows actualModulus 1931 (.bnot 1930) := by core033_kernel_decide
theorem stats1931 : actualRows1931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1931=6276 := by core033_kernel_decide
theorem rows1932 : actualRows1932=WordField.canonicalRows actualModulus 1932 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1932 : actualRows1932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1932=2892 := by core033_kernel_decide
theorem rows1933 : actualRows1933=WordField.canonicalRows actualModulus 1933 (.badd 1931 1932) := by core033_kernel_decide
theorem stats1933 : actualRows1933.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1933=5388 := by core033_kernel_decide
theorem rows1934 : actualRows1934=WordField.canonicalRows actualModulus 1934 (.bnot 1933) := by core033_kernel_decide
theorem stats1934 : actualRows1934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1934=6276 := by core033_kernel_decide
theorem rows1935 : actualRows1935=WordField.canonicalRows actualModulus 1935 (.shr 1821 0) := by core033_kernel_decide
theorem stats1935 : actualRows1935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1935=5124 := by core033_kernel_decide
theorem rows1936 : actualRows1936=WordField.canonicalRows actualModulus 1936 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1936 : actualRows1936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1936=2892 := by core033_kernel_decide
theorem rows1937 : actualRows1937=WordField.canonicalRows actualModulus 1937 (.band 1935 1936) := by core033_kernel_decide
theorem stats1937 : actualRows1937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1937=5124 := by core033_kernel_decide
theorem rows1938 : actualRows1938=WordField.canonicalRows actualModulus 1938 (.bnot 1937) := by core033_kernel_decide
theorem stats1938 : actualRows1938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1938=6276 := by core033_kernel_decide
theorem rows1939 : actualRows1939=WordField.canonicalRows actualModulus 1939 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1939 : actualRows1939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1939=2892 := by core033_kernel_decide
theorem rows1940 : actualRows1940=WordField.canonicalRows actualModulus 1940 (.badd 1938 1939) := by core033_kernel_decide
theorem stats1940 : actualRows1940.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1940=5388 := by core033_kernel_decide
theorem rows1941 : actualRows1941=WordField.canonicalRows actualModulus 1941 (.band 1940 1343) := by core033_kernel_decide
theorem stats1941 : actualRows1941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1941=5124 := by core033_kernel_decide
theorem rows1942 : actualRows1942=WordField.canonicalRows actualModulus 1942 (.shr 1821 0) := by core033_kernel_decide
theorem stats1942 : actualRows1942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1942=5124 := by core033_kernel_decide
theorem rows1943 : actualRows1943=WordField.canonicalRows actualModulus 1943 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1943 : actualRows1943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1943=2892 := by core033_kernel_decide
theorem rows1944 : actualRows1944=WordField.canonicalRows actualModulus 1944 (.band 1942 1943) := by core033_kernel_decide
theorem stats1944 : actualRows1944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1944=5124 := by core033_kernel_decide
theorem rows1945 : actualRows1945=WordField.canonicalRows actualModulus 1945 (.bnot 1944) := by core033_kernel_decide
theorem stats1945 : actualRows1945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1945=6276 := by core033_kernel_decide
theorem rows1946 : actualRows1946=WordField.canonicalRows actualModulus 1946 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1946 : actualRows1946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1946=2892 := by core033_kernel_decide
theorem rows1947 : actualRows1947=WordField.canonicalRows actualModulus 1947 (.badd 1945 1946) := by core033_kernel_decide
theorem stats1947 : actualRows1947.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1947=5388 := by core033_kernel_decide
theorem rows1948 : actualRows1948=WordField.canonicalRows actualModulus 1948 (.bnot 1947) := by core033_kernel_decide
theorem stats1948 : actualRows1948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1948=6276 := by core033_kernel_decide
theorem rows1949 : actualRows1949=WordField.canonicalRows actualModulus 1949 (.band 1948 1332) := by core033_kernel_decide
theorem stats1949 : actualRows1949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1949=5124 := by core033_kernel_decide
theorem rows1950 : actualRows1950=WordField.canonicalRows actualModulus 1950 (.bxor 1941 1949) := by core033_kernel_decide
theorem stats1950 : actualRows1950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1950=7428 := by core033_kernel_decide
theorem rows1951 : actualRows1951=WordField.canonicalRows actualModulus 1951 (.band 1934 1950) := by core033_kernel_decide
theorem stats1951 : actualRows1951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1951=5124 := by core033_kernel_decide
theorem rows1952 : actualRows1952=WordField.canonicalRows actualModulus 1952 (.bxor 1927 1951) := by core033_kernel_decide
theorem stats1952 : actualRows1952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1952=7428 := by core033_kernel_decide
theorem rows1953 : actualRows1953=WordField.canonicalRows actualModulus 1953 (.band 1904 1952) := by core033_kernel_decide
theorem stats1953 : actualRows1953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1953=5124 := by core033_kernel_decide
theorem rows1954 : actualRows1954=WordField.canonicalRows actualModulus 1954 (.bxor 1897 1953) := by core033_kernel_decide
theorem stats1954 : actualRows1954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1954=7428 := by core033_kernel_decide
theorem rows1955 : actualRows1955=WordField.canonicalRows actualModulus 1955 (.shr 1821 3) := by core033_kernel_decide
theorem stats1955 : actualRows1955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1955=4908 := by core033_kernel_decide
theorem rows1956 : actualRows1956=WordField.canonicalRows actualModulus 1956 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1956 : actualRows1956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1956=2820 := by core033_kernel_decide
theorem rows1957 : actualRows1957=WordField.canonicalRows actualModulus 1957 (.bnot 1956) := by core033_kernel_decide
theorem stats1957 : actualRows1957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1957=6276 := by core033_kernel_decide
theorem rows1958 : actualRows1958=WordField.canonicalRows actualModulus 1958 (.band 1955 1957) := by core033_kernel_decide
theorem stats1958 : actualRows1958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1958=5124 := by core033_kernel_decide
theorem rows1959 : actualRows1959=WordField.canonicalRows actualModulus 1959 (.shr 1821 3) := by core033_kernel_decide
theorem stats1959 : actualRows1959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1959=4908 := by core033_kernel_decide
theorem rows1960 : actualRows1960=WordField.canonicalRows actualModulus 1960 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1960 : actualRows1960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1960=2820 := by core033_kernel_decide
theorem rows1961 : actualRows1961=WordField.canonicalRows actualModulus 1961 (.bnot 1960) := by core033_kernel_decide
theorem stats1961 : actualRows1961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1961=6276 := by core033_kernel_decide
theorem rows1962 : actualRows1962=WordField.canonicalRows actualModulus 1962 (.bxor 1959 1961) := by core033_kernel_decide
theorem stats1962 : actualRows1962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1962=7428 := by core033_kernel_decide
theorem rows1963 : actualRows1963=WordField.canonicalRows actualModulus 1963 (.shr 1821 3) := by core033_kernel_decide
theorem stats1963 : actualRows1963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1963=4908 := by core033_kernel_decide
theorem rows1964 : actualRows1964=WordField.canonicalRows actualModulus 1964 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1964 : actualRows1964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1964=2820 := by core033_kernel_decide
theorem rows1965 : actualRows1965=WordField.canonicalRows actualModulus 1965 (.bnot 1964) := by core033_kernel_decide
theorem stats1965 : actualRows1965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1965=6276 := by core033_kernel_decide
theorem rows1966 : actualRows1966=WordField.canonicalRows actualModulus 1966 (.badd 1963 1965) := by core033_kernel_decide
theorem stats1966 : actualRows1966.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1966=5388 := by core033_kernel_decide
theorem rows1967 : actualRows1967=WordField.canonicalRows actualModulus 1967 (.bnot 1966) := by core033_kernel_decide
theorem stats1967 : actualRows1967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1967=6276 := by core033_kernel_decide
theorem rows1968 : actualRows1968=WordField.canonicalRows actualModulus 1968 (.band 1962 1967) := by core033_kernel_decide
theorem stats1968 : actualRows1968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1968=5124 := by core033_kernel_decide
theorem rows1969 : actualRows1969=WordField.canonicalRows actualModulus 1969 (.bxor 1958 1968) := by core033_kernel_decide
theorem stats1969 : actualRows1969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1969=7428 := by core033_kernel_decide
theorem rows1970 : actualRows1970=WordField.canonicalRows actualModulus 1970 (.shr 1969 31) := by core033_kernel_decide
theorem stats1970 : actualRows1970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1970=2892 := by core033_kernel_decide
theorem rows1971 : actualRows1971=WordField.canonicalRows actualModulus 1971 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1971 : actualRows1971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1971=2892 := by core033_kernel_decide
theorem rows1972 : actualRows1972=WordField.canonicalRows actualModulus 1972 (.bxor 1970 1971) := by core033_kernel_decide
theorem stats1972 : actualRows1972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1972=7428 := by core033_kernel_decide
theorem rows1973 : actualRows1973=WordField.canonicalRows actualModulus 1973 (.shr 1824 0) := by core033_kernel_decide
theorem stats1973 : actualRows1973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1973=5124 := by core033_kernel_decide
def partRows28 : List R1CS.Row := actualRows1910++actualRows1911++actualRows1912++actualRows1913++actualRows1914++actualRows1915++actualRows1916++actualRows1917++actualRows1918++actualRows1919++actualRows1920++actualRows1921++actualRows1922++actualRows1923++actualRows1924++actualRows1925++actualRows1926++actualRows1927++actualRows1928++actualRows1929++actualRows1930++actualRows1931++actualRows1932++actualRows1933++actualRows1934++actualRows1935++actualRows1936++actualRows1937++actualRows1938++actualRows1939++actualRows1940++actualRows1941++actualRows1942++actualRows1943++actualRows1944++actualRows1945++actualRows1946++actualRows1947++actualRows1948++actualRows1949++actualRows1950++actualRows1951++actualRows1952++actualRows1953++actualRows1954++actualRows1955++actualRows1956++actualRows1957++actualRows1958++actualRows1959++actualRows1960++actualRows1961++actualRows1962++actualRows1963++actualRows1964++actualRows1965++actualRows1966++actualRows1967++actualRows1968++actualRows1969++actualRows1970++actualRows1971++actualRows1972++actualRows1973
def partOps28 : List WordIR.Op := [.badd 1908 1909,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1911 1912,.bnot 1913,.literal (BitVec.ofNat 32 1),.badd 1914 1915,.band 1916 1365,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1918 1919,.bnot 1920,.literal (BitVec.ofNat 32 1),.badd 1921 1922,.bnot 1923,.band 1924 1354,.bxor 1917 1925,.band 1910 1926,.shr 1821 1,.literal (BitVec.ofNat 32 1),.band 1928 1929,.bnot 1930,.literal (BitVec.ofNat 32 1),.badd 1931 1932,.bnot 1933,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1935 1936,.bnot 1937,.literal (BitVec.ofNat 32 1),.badd 1938 1939,.band 1940 1343,.shr 1821 0,.literal (BitVec.ofNat 32 1),.band 1942 1943,.bnot 1944,.literal (BitVec.ofNat 32 1),.badd 1945 1946,.bnot 1947,.band 1948 1332,.bxor 1941 1949,.band 1934 1950,.bxor 1927 1951,.band 1904 1952,.bxor 1897 1953,.shr 1821 3,.literal (BitVec.ofNat 32 0),.bnot 1956,.band 1955 1957,.shr 1821 3,.literal (BitVec.ofNat 32 0),.bnot 1960,.bxor 1959 1961,.shr 1821 3,.literal (BitVec.ofNat 32 0),.bnot 1964,.badd 1963 1965,.bnot 1966,.band 1962 1967,.bxor 1958 1968,.shr 1969 31,.literal (BitVec.ofNat 32 1),.bxor 1970 1971,.shr 1824 0]
theorem partExact28 : partRows28=WordField.rows actualModulus 1910 partOps28 := by
  simp only [partRows28,partOps28,WordField.rows,rows1910,rows1911,rows1912,rows1913,rows1914,rows1915,rows1916,rows1917,rows1918,rows1919,rows1920,rows1921,rows1922,rows1923,rows1924,rows1925,rows1926,rows1927,rows1928,rows1929,rows1930,rows1931,rows1932,rows1933,rows1934,rows1935,rows1936,rows1937,rows1938,rows1939,rows1940,rows1941,rows1942,rows1943,rows1944,rows1945,rows1946,rows1947,rows1948,rows1949,rows1950,rows1951,rows1952,rows1953,rows1954,rows1955,rows1956,rows1957,rows1958,rows1959,rows1960,rows1961,rows1962,rows1963,rows1964,rows1965,rows1966,rows1967,rows1968,rows1969,rows1970,rows1971,rows1972,rows1973,List.append_assoc,List.append_nil]
theorem partLength28 : partOps28.length=64 := by decide
theorem partStats28 : partRows28.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows28=325320 := by
  simp only [partRows28,List.length_append,MatrixRowBlocks.rows_weight_append,stats1910.1,stats1910.2,stats1911.1,stats1911.2,stats1912.1,stats1912.2,stats1913.1,stats1913.2,stats1914.1,stats1914.2,stats1915.1,stats1915.2,stats1916.1,stats1916.2,stats1917.1,stats1917.2,stats1918.1,stats1918.2,stats1919.1,stats1919.2,stats1920.1,stats1920.2,stats1921.1,stats1921.2,stats1922.1,stats1922.2,stats1923.1,stats1923.2,stats1924.1,stats1924.2,stats1925.1,stats1925.2,stats1926.1,stats1926.2,stats1927.1,stats1927.2,stats1928.1,stats1928.2,stats1929.1,stats1929.2,stats1930.1,stats1930.2,stats1931.1,stats1931.2,stats1932.1,stats1932.2,stats1933.1,stats1933.2,stats1934.1,stats1934.2,stats1935.1,stats1935.2,stats1936.1,stats1936.2,stats1937.1,stats1937.2,stats1938.1,stats1938.2,stats1939.1,stats1939.2,stats1940.1,stats1940.2,stats1941.1,stats1941.2,stats1942.1,stats1942.2,stats1943.1,stats1943.2,stats1944.1,stats1944.2,stats1945.1,stats1945.2,stats1946.1,stats1946.2,stats1947.1,stats1947.2,stats1948.1,stats1948.2,stats1949.1,stats1949.2,stats1950.1,stats1950.2,stats1951.1,stats1951.2,stats1952.1,stats1952.2,stats1953.1,stats1953.2,stats1954.1,stats1954.2,stats1955.1,stats1955.2,stats1956.1,stats1956.2,stats1957.1,stats1957.2,stats1958.1,stats1958.2,stats1959.1,stats1959.2,stats1960.1,stats1960.2,stats1961.1,stats1961.2,stats1962.1,stats1962.2,stats1963.1,stats1963.2,stats1964.1,stats1964.2,stats1965.1,stats1965.2,stats1966.1,stats1966.2,stats1967.1,stats1967.2,stats1968.1,stats1968.2,stats1969.1,stats1969.2,stats1970.1,stats1970.2,stats1971.1,stats1971.2,stats1972.1,stats1972.2,stats1973.1,stats1973.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
