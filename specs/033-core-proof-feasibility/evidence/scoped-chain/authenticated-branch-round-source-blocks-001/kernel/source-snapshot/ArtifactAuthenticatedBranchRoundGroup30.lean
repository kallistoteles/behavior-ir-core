import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup30
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1920 : List WordIR.Op := [.bnot 2037]
def bytes1920 : Bytes := ("    let r000007f6: u32 = !r000007f5;\n" : String).toByteArray.data.toList
theorem checked1920 : bytes1920=statementBytes 2038 (op1920.map lower) ∧ bytes1920.length=37 := by core033_kernel_decide
def op1921 : List WordIR.Op := [.band 2038 2023]
def bytes1921 : Bytes := ("    let r000007f7: u32 = r000007f6 & r000007e7;\n" : String).toByteArray.data.toList
theorem checked1921 : bytes1921=statementBytes 2039 (op1921.map lower) ∧ bytes1921.length=48 := by core033_kernel_decide
def op1922 : List WordIR.Op := [.bxor 2031 2039]
def bytes1922 : Bytes := ("    let r000007f8: u32 = r000007ef ^ r000007f7;\n" : String).toByteArray.data.toList
theorem checked1922 : bytes1922=statementBytes 2040 (op1922.map lower) ∧ bytes1922.length=48 := by core033_kernel_decide
def op1923 : List WordIR.Op := [.shr 1824 4]
def bytes1923 : Bytes := ("    let r000007f9: u32 = r00000720 >> 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked1923 : bytes1923=statementBytes 2041 (op1923.map lower) ∧ bytes1923.length=54 := by core033_kernel_decide
def op1924 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1924 : Bytes := ("    let r000007fa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1924 : bytes1924=statementBytes 2042 (op1924.map lower) ∧ bytes1924.length=41 := by core033_kernel_decide
def op1925 : List WordIR.Op := [.band 2041 2042]
def bytes1925 : Bytes := ("    let r000007fb: u32 = r000007f9 & r000007fa;\n" : String).toByteArray.data.toList
theorem checked1925 : bytes1925=statementBytes 2043 (op1925.map lower) ∧ bytes1925.length=48 := by core033_kernel_decide
def op1926 : List WordIR.Op := [.bnot 2043]
def bytes1926 : Bytes := ("    let r000007fc: u32 = !r000007fb;\n" : String).toByteArray.data.toList
theorem checked1926 : bytes1926=statementBytes 2044 (op1926.map lower) ∧ bytes1926.length=37 := by core033_kernel_decide
def op1927 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1927 : Bytes := ("    let r000007fd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1927 : bytes1927=statementBytes 2045 (op1927.map lower) ∧ bytes1927.length=41 := by core033_kernel_decide
def op1928 : List WordIR.Op := [.badd 2044 2045]
def bytes1928 : Bytes := ("    let r000007fe: u32 = r000007fc.wrapping_add(r000007fd);\n" : String).toByteArray.data.toList
theorem checked1928 : bytes1928=statementBytes 2046 (op1928.map lower) ∧ bytes1928.length=60 := by core033_kernel_decide
def op1929 : List WordIR.Op := [.shr 2040 16]
def bytes1929 : Bytes := ("    let r000007ff: u32 = r000007f8 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1929 : bytes1929=statementBytes 2047 (op1929.map lower) ∧ bytes1929.length=54 := by core033_kernel_decide
def op1930 : List WordIR.Op := [.band 2046 2047]
def bytes1930 : Bytes := ("    let r00000800: u32 = r000007fe & r000007ff;\n" : String).toByteArray.data.toList
theorem checked1930 : bytes1930=statementBytes 2048 (op1930.map lower) ∧ bytes1930.length=48 := by core033_kernel_decide
def op1931 : List WordIR.Op := [.shr 1824 4]
def bytes1931 : Bytes := ("    let r00000801: u32 = r00000720 >> 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked1931 : bytes1931=statementBytes 2049 (op1931.map lower) ∧ bytes1931.length=54 := by core033_kernel_decide
def op1932 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1932 : Bytes := ("    let r00000802: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1932 : bytes1932=statementBytes 2050 (op1932.map lower) ∧ bytes1932.length=41 := by core033_kernel_decide
def op1933 : List WordIR.Op := [.band 2049 2050]
def bytes1933 : Bytes := ("    let r00000803: u32 = r00000801 & r00000802;\n" : String).toByteArray.data.toList
theorem checked1933 : bytes1933=statementBytes 2051 (op1933.map lower) ∧ bytes1933.length=48 := by core033_kernel_decide
def op1934 : List WordIR.Op := [.bnot 2051]
def bytes1934 : Bytes := ("    let r00000804: u32 = !r00000803;\n" : String).toByteArray.data.toList
theorem checked1934 : bytes1934=statementBytes 2052 (op1934.map lower) ∧ bytes1934.length=37 := by core033_kernel_decide
def op1935 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1935 : Bytes := ("    let r00000805: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1935 : bytes1935=statementBytes 2053 (op1935.map lower) ∧ bytes1935.length=41 := by core033_kernel_decide
def op1936 : List WordIR.Op := [.badd 2052 2053]
def bytes1936 : Bytes := ("    let r00000806: u32 = r00000804.wrapping_add(r00000805);\n" : String).toByteArray.data.toList
theorem checked1936 : bytes1936=statementBytes 2054 (op1936.map lower) ∧ bytes1936.length=60 := by core033_kernel_decide
def op1937 : List WordIR.Op := [.bnot 2054]
def bytes1937 : Bytes := ("    let r00000807: u32 = !r00000806;\n" : String).toByteArray.data.toList
theorem checked1937 : bytes1937=statementBytes 2055 (op1937.map lower) ∧ bytes1937.length=37 := by core033_kernel_decide
def op1938 : List WordIR.Op := [.band 2055 2040]
def bytes1938 : Bytes := ("    let r00000808: u32 = r00000807 & r000007f8;\n" : String).toByteArray.data.toList
theorem checked1938 : bytes1938=statementBytes 2056 (op1938.map lower) ∧ bytes1938.length=48 := by core033_kernel_decide
def op1939 : List WordIR.Op := [.bxor 2048 2056]
def bytes1939 : Bytes := ("    let r00000809: u32 = r00000800 ^ r00000808;\n" : String).toByteArray.data.toList
theorem checked1939 : bytes1939=statementBytes 2057 (op1939.map lower) ∧ bytes1939.length=48 := by core033_kernel_decide
def op1940 : List WordIR.Op := [.shr 1824 5]
def bytes1940 : Bytes := ("    let r0000080a: u32 = r00000720 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked1940 : bytes1940=statementBytes 2058 (op1940.map lower) ∧ bytes1940.length=54 := by core033_kernel_decide
def op1941 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1941 : Bytes := ("    let r0000080b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1941 : bytes1941=statementBytes 2059 (op1941.map lower) ∧ bytes1941.length=41 := by core033_kernel_decide
def op1942 : List WordIR.Op := [.bnot 2059]
def bytes1942 : Bytes := ("    let r0000080c: u32 = !r0000080b;\n" : String).toByteArray.data.toList
theorem checked1942 : bytes1942=statementBytes 2060 (op1942.map lower) ∧ bytes1942.length=37 := by core033_kernel_decide
def op1943 : List WordIR.Op := [.band 2058 2060]
def bytes1943 : Bytes := ("    let r0000080d: u32 = r0000080a & r0000080c;\n" : String).toByteArray.data.toList
theorem checked1943 : bytes1943=statementBytes 2061 (op1943.map lower) ∧ bytes1943.length=48 := by core033_kernel_decide
def op1944 : List WordIR.Op := [.shr 1824 5]
def bytes1944 : Bytes := ("    let r0000080e: u32 = r00000720 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked1944 : bytes1944=statementBytes 2062 (op1944.map lower) ∧ bytes1944.length=54 := by core033_kernel_decide
def op1945 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1945 : Bytes := ("    let r0000080f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1945 : bytes1945=statementBytes 2063 (op1945.map lower) ∧ bytes1945.length=41 := by core033_kernel_decide
def op1946 : List WordIR.Op := [.bnot 2063]
def bytes1946 : Bytes := ("    let r00000810: u32 = !r0000080f;\n" : String).toByteArray.data.toList
theorem checked1946 : bytes1946=statementBytes 2064 (op1946.map lower) ∧ bytes1946.length=37 := by core033_kernel_decide
def op1947 : List WordIR.Op := [.bxor 2062 2064]
def bytes1947 : Bytes := ("    let r00000811: u32 = r0000080e ^ r00000810;\n" : String).toByteArray.data.toList
theorem checked1947 : bytes1947=statementBytes 2065 (op1947.map lower) ∧ bytes1947.length=48 := by core033_kernel_decide
def op1948 : List WordIR.Op := [.shr 1824 5]
def bytes1948 : Bytes := ("    let r00000812: u32 = r00000720 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked1948 : bytes1948=statementBytes 2066 (op1948.map lower) ∧ bytes1948.length=54 := by core033_kernel_decide
def op1949 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1949 : Bytes := ("    let r00000813: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1949 : bytes1949=statementBytes 2067 (op1949.map lower) ∧ bytes1949.length=41 := by core033_kernel_decide
def op1950 : List WordIR.Op := [.bnot 2067]
def bytes1950 : Bytes := ("    let r00000814: u32 = !r00000813;\n" : String).toByteArray.data.toList
theorem checked1950 : bytes1950=statementBytes 2068 (op1950.map lower) ∧ bytes1950.length=37 := by core033_kernel_decide
def op1951 : List WordIR.Op := [.badd 2066 2068]
def bytes1951 : Bytes := ("    let r00000815: u32 = r00000812.wrapping_add(r00000814);\n" : String).toByteArray.data.toList
theorem checked1951 : bytes1951=statementBytes 2069 (op1951.map lower) ∧ bytes1951.length=60 := by core033_kernel_decide
def op1952 : List WordIR.Op := [.bnot 2069]
def bytes1952 : Bytes := ("    let r00000816: u32 = !r00000815;\n" : String).toByteArray.data.toList
theorem checked1952 : bytes1952=statementBytes 2070 (op1952.map lower) ∧ bytes1952.length=37 := by core033_kernel_decide
def op1953 : List WordIR.Op := [.band 2065 2070]
def bytes1953 : Bytes := ("    let r00000817: u32 = r00000811 & r00000816;\n" : String).toByteArray.data.toList
theorem checked1953 : bytes1953=statementBytes 2071 (op1953.map lower) ∧ bytes1953.length=48 := by core033_kernel_decide
def op1954 : List WordIR.Op := [.bxor 2061 2071]
def bytes1954 : Bytes := ("    let r00000818: u32 = r0000080d ^ r00000817;\n" : String).toByteArray.data.toList
theorem checked1954 : bytes1954=statementBytes 2072 (op1954.map lower) ∧ bytes1954.length=48 := by core033_kernel_decide
def op1955 : List WordIR.Op := [.shr 2072 31]
def bytes1955 : Bytes := ("    let r00000819: u32 = r00000818 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1955 : bytes1955=statementBytes 2073 (op1955.map lower) ∧ bytes1955.length=54 := by core033_kernel_decide
def op1956 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1956 : Bytes := ("    let r0000081a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1956 : bytes1956=statementBytes 2074 (op1956.map lower) ∧ bytes1956.length=41 := by core033_kernel_decide
def op1957 : List WordIR.Op := [.bxor 2073 2074]
def bytes1957 : Bytes := ("    let r0000081b: u32 = r00000819 ^ r0000081a;\n" : String).toByteArray.data.toList
theorem checked1957 : bytes1957=statementBytes 2075 (op1957.map lower) ∧ bytes1957.length=48 := by core033_kernel_decide
def op1958 : List WordIR.Op := [.shr 2057 0]
def bytes1958 : Bytes := ("    let r0000081c: u32 = r00000809 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1958 : bytes1958=statementBytes 2076 (op1958.map lower) ∧ bytes1958.length=54 := by core033_kernel_decide
def op1959 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1959 : Bytes := ("    let r0000081d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1959 : bytes1959=statementBytes 2077 (op1959.map lower) ∧ bytes1959.length=41 := by core033_kernel_decide
def op1960 : List WordIR.Op := [.band 2076 2077]
def bytes1960 : Bytes := ("    let r0000081e: u32 = r0000081c & r0000081d;\n" : String).toByteArray.data.toList
theorem checked1960 : bytes1960=statementBytes 2078 (op1960.map lower) ∧ bytes1960.length=48 := by core033_kernel_decide
def op1961 : List WordIR.Op := [.bnot 2078]
def bytes1961 : Bytes := ("    let r0000081f: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked1961 : bytes1961=statementBytes 2079 (op1961.map lower) ∧ bytes1961.length=37 := by core033_kernel_decide
def op1962 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1962 : Bytes := ("    let r00000820: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1962 : bytes1962=statementBytes 2080 (op1962.map lower) ∧ bytes1962.length=41 := by core033_kernel_decide
def op1963 : List WordIR.Op := [.badd 2079 2080]
def bytes1963 : Bytes := ("    let r00000821: u32 = r0000081f.wrapping_add(r00000820);\n" : String).toByteArray.data.toList
theorem checked1963 : bytes1963=statementBytes 2081 (op1963.map lower) ∧ bytes1963.length=60 := by core033_kernel_decide
def op1964 : List WordIR.Op := [.band 2081 1508]
def bytes1964 : Bytes := ("    let r00000822: u32 = r00000821 & r000005e4;\n" : String).toByteArray.data.toList
theorem checked1964 : bytes1964=statementBytes 2082 (op1964.map lower) ∧ bytes1964.length=48 := by core033_kernel_decide
def op1965 : List WordIR.Op := [.bnot 2078]
def bytes1965 : Bytes := ("    let r00000823: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked1965 : bytes1965=statementBytes 2083 (op1965.map lower) ∧ bytes1965.length=37 := by core033_kernel_decide
def op1966 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1966 : Bytes := ("    let r00000824: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1966 : bytes1966=statementBytes 2084 (op1966.map lower) ∧ bytes1966.length=41 := by core033_kernel_decide
def op1967 : List WordIR.Op := [.badd 2083 2084]
def bytes1967 : Bytes := ("    let r00000825: u32 = r00000823.wrapping_add(r00000824);\n" : String).toByteArray.data.toList
theorem checked1967 : bytes1967=statementBytes 2085 (op1967.map lower) ∧ bytes1967.length=60 := by core033_kernel_decide
def op1968 : List WordIR.Op := [.bnot 2085]
def bytes1968 : Bytes := ("    let r00000826: u32 = !r00000825;\n" : String).toByteArray.data.toList
theorem checked1968 : bytes1968=statementBytes 2086 (op1968.map lower) ∧ bytes1968.length=37 := by core033_kernel_decide
def op1969 : List WordIR.Op := [.band 2086 1420]
def bytes1969 : Bytes := ("    let r00000827: u32 = r00000826 & r0000058c;\n" : String).toByteArray.data.toList
theorem checked1969 : bytes1969=statementBytes 2087 (op1969.map lower) ∧ bytes1969.length=48 := by core033_kernel_decide
def op1970 : List WordIR.Op := [.bxor 2082 2087]
def bytes1970 : Bytes := ("    let r00000828: u32 = r00000822 ^ r00000827;\n" : String).toByteArray.data.toList
theorem checked1970 : bytes1970=statementBytes 2088 (op1970.map lower) ∧ bytes1970.length=48 := by core033_kernel_decide
def op1971 : List WordIR.Op := [.bnot 2078]
def bytes1971 : Bytes := ("    let r00000829: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked1971 : bytes1971=statementBytes 2089 (op1971.map lower) ∧ bytes1971.length=37 := by core033_kernel_decide
def op1972 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1972 : Bytes := ("    let r0000082a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1972 : bytes1972=statementBytes 2090 (op1972.map lower) ∧ bytes1972.length=41 := by core033_kernel_decide
def op1973 : List WordIR.Op := [.badd 2089 2090]
def bytes1973 : Bytes := ("    let r0000082b: u32 = r00000829.wrapping_add(r0000082a);\n" : String).toByteArray.data.toList
theorem checked1973 : bytes1973=statementBytes 2091 (op1973.map lower) ∧ bytes1973.length=60 := by core033_kernel_decide
def op1974 : List WordIR.Op := [.band 2091 1519]
def bytes1974 : Bytes := ("    let r0000082c: u32 = r0000082b & r000005ef;\n" : String).toByteArray.data.toList
theorem checked1974 : bytes1974=statementBytes 2092 (op1974.map lower) ∧ bytes1974.length=48 := by core033_kernel_decide
def op1975 : List WordIR.Op := [.bnot 2078]
def bytes1975 : Bytes := ("    let r0000082d: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked1975 : bytes1975=statementBytes 2093 (op1975.map lower) ∧ bytes1975.length=37 := by core033_kernel_decide
def op1976 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1976 : Bytes := ("    let r0000082e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1976 : bytes1976=statementBytes 2094 (op1976.map lower) ∧ bytes1976.length=41 := by core033_kernel_decide
def op1977 : List WordIR.Op := [.badd 2093 2094]
def bytes1977 : Bytes := ("    let r0000082f: u32 = r0000082d.wrapping_add(r0000082e);\n" : String).toByteArray.data.toList
theorem checked1977 : bytes1977=statementBytes 2095 (op1977.map lower) ∧ bytes1977.length=60 := by core033_kernel_decide
def op1978 : List WordIR.Op := [.bnot 2095]
def bytes1978 : Bytes := ("    let r00000830: u32 = !r0000082f;\n" : String).toByteArray.data.toList
theorem checked1978 : bytes1978=statementBytes 2096 (op1978.map lower) ∧ bytes1978.length=37 := by core033_kernel_decide
def op1979 : List WordIR.Op := [.band 2096 1431]
def bytes1979 : Bytes := ("    let r00000831: u32 = r00000830 & r00000597;\n" : String).toByteArray.data.toList
theorem checked1979 : bytes1979=statementBytes 2097 (op1979.map lower) ∧ bytes1979.length=48 := by core033_kernel_decide
def op1980 : List WordIR.Op := [.bxor 2092 2097]
def bytes1980 : Bytes := ("    let r00000832: u32 = r0000082c ^ r00000831;\n" : String).toByteArray.data.toList
theorem checked1980 : bytes1980=statementBytes 2098 (op1980.map lower) ∧ bytes1980.length=48 := by core033_kernel_decide
def op1981 : List WordIR.Op := [.bnot 2078]
def bytes1981 : Bytes := ("    let r00000833: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked1981 : bytes1981=statementBytes 2099 (op1981.map lower) ∧ bytes1981.length=37 := by core033_kernel_decide
def op1982 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1982 : Bytes := ("    let r00000834: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1982 : bytes1982=statementBytes 2100 (op1982.map lower) ∧ bytes1982.length=41 := by core033_kernel_decide
def op1983 : List WordIR.Op := [.badd 2099 2100]
def bytes1983 : Bytes := ("    let r00000835: u32 = r00000833.wrapping_add(r00000834);\n" : String).toByteArray.data.toList
theorem checked1983 : bytes1983=statementBytes 2101 (op1983.map lower) ∧ bytes1983.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1920,op1921,op1922,op1923,op1924,op1925,op1926,op1927,op1928,op1929,op1930,op1931,op1932,op1933,op1934,op1935,op1936,op1937,op1938,op1939,op1940,op1941,op1942,op1943,op1944,op1945,op1946,op1947,op1948,op1949,op1950,op1951,op1952,op1953,op1954,op1955,op1956,op1957,op1958,op1959,op1960,op1961,op1962,op1963,op1964,op1965,op1966,op1967,op1968,op1969,op1970,op1971,op1972,op1973,op1974,op1975,op1976,op1977,op1978,op1979,op1980,op1981,op1982,op1983]
def chunks : List Bytes := [bytes1920,bytes1921,bytes1922,bytes1923,bytes1924,bytes1925,bytes1926,bytes1927,bytes1928,bytes1929,bytes1930,bytes1931,bytes1932,bytes1933,bytes1934,bytes1935,bytes1936,bytes1937,bytes1938,bytes1939,bytes1940,bytes1941,bytes1942,bytes1943,bytes1944,bytes1945,bytes1946,bytes1947,bytes1948,bytes1949,bytes1950,bytes1951,bytes1952,bytes1953,bytes1954,bytes1955,bytes1956,bytes1957,bytes1958,bytes1959,bytes1960,bytes1961,bytes1962,bytes1963,bytes1964,bytes1965,bytes1966,bytes1967,bytes1968,bytes1969,bytes1970,bytes1971,bytes1972,bytes1973,bytes1974,bytes1975,bytes1976,bytes1977,bytes1978,bytes1979,bytes1980,bytes1981,bytes1982,bytes1983]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2038 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1920.1 (.cons _ _ _ _ _ checked1921.1 (.cons _ _ _ _ _ checked1922.1 (.cons _ _ _ _ _ checked1923.1 (.cons _ _ _ _ _ checked1924.1 (.cons _ _ _ _ _ checked1925.1 (.cons _ _ _ _ _ checked1926.1 (.cons _ _ _ _ _ checked1927.1 (.cons _ _ _ _ _ checked1928.1 (.cons _ _ _ _ _ checked1929.1 (.cons _ _ _ _ _ checked1930.1 (.cons _ _ _ _ _ checked1931.1 (.cons _ _ _ _ _ checked1932.1 (.cons _ _ _ _ _ checked1933.1 (.cons _ _ _ _ _ checked1934.1 (.cons _ _ _ _ _ checked1935.1 (.cons _ _ _ _ _ checked1936.1 (.cons _ _ _ _ _ checked1937.1 (.cons _ _ _ _ _ checked1938.1 (.cons _ _ _ _ _ checked1939.1 (.cons _ _ _ _ _ checked1940.1 (.cons _ _ _ _ _ checked1941.1 (.cons _ _ _ _ _ checked1942.1 (.cons _ _ _ _ _ checked1943.1 (.cons _ _ _ _ _ checked1944.1 (.cons _ _ _ _ _ checked1945.1 (.cons _ _ _ _ _ checked1946.1 (.cons _ _ _ _ _ checked1947.1 (.cons _ _ _ _ _ checked1948.1 (.cons _ _ _ _ _ checked1949.1 (.cons _ _ _ _ _ checked1950.1 (.cons _ _ _ _ _ checked1951.1 (.cons _ _ _ _ _ checked1952.1 (.cons _ _ _ _ _ checked1953.1 (.cons _ _ _ _ _ checked1954.1 (.cons _ _ _ _ _ checked1955.1 (.cons _ _ _ _ _ checked1956.1 (.cons _ _ _ _ _ checked1957.1 (.cons _ _ _ _ _ checked1958.1 (.cons _ _ _ _ _ checked1959.1 (.cons _ _ _ _ _ checked1960.1 (.cons _ _ _ _ _ checked1961.1 (.cons _ _ _ _ _ checked1962.1 (.cons _ _ _ _ _ checked1963.1 (.cons _ _ _ _ _ checked1964.1 (.cons _ _ _ _ _ checked1965.1 (.cons _ _ _ _ _ checked1966.1 (.cons _ _ _ _ _ checked1967.1 (.cons _ _ _ _ _ checked1968.1 (.cons _ _ _ _ _ checked1969.1 (.cons _ _ _ _ _ checked1970.1 (.cons _ _ _ _ _ checked1971.1 (.cons _ _ _ _ _ checked1972.1 (.cons _ _ _ _ _ checked1973.1 (.cons _ _ _ _ _ checked1974.1 (.cons _ _ _ _ _ checked1975.1 (.cons _ _ _ _ _ checked1976.1 (.cons _ _ _ _ _ checked1977.1 (.cons _ _ _ _ _ checked1978.1 (.cons _ _ _ _ _ checked1979.1 (.cons _ _ _ _ _ checked1980.1 (.cons _ _ _ _ _ checked1981.1 (.cons _ _ _ _ _ checked1982.1 (.cons _ _ _ _ _ checked1983.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2038 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2953 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1920.2,checked1921.2,checked1922.2,checked1923.2,checked1924.2,checked1925.2,checked1926.2,checked1927.2,checked1928.2,checked1929.2,checked1930.2,checked1931.2,checked1932.2,checked1933.2,checked1934.2,checked1935.2,checked1936.2,checked1937.2,checked1938.2,checked1939.2,checked1940.2,checked1941.2,checked1942.2,checked1943.2,checked1944.2,checked1945.2,checked1946.2,checked1947.2,checked1948.2,checked1949.2,checked1950.2,checked1951.2,checked1952.2,checked1953.2,checked1954.2,checked1955.2,checked1956.2,checked1957.2,checked1958.2,checked1959.2,checked1960.2,checked1961.2,checked1962.2,checked1963.2,checked1964.2,checked1965.2,checked1966.2,checked1967.2,checked1968.2,checked1969.2,checked1970.2,checked1971.2,checked1972.2,checked1973.2,checked1974.2,checked1975.2,checked1976.2,checked1977.2,checked1978.2,checked1979.2,checked1980.2,checked1981.2,checked1982.2,checked1983.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup30
