import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup30
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1920 : List WordIR.Op := [.badd 1962 1879]
def bytes1920 : Bytes := ("    let r000007ab: u32 = r000007aa.wrapping_add(r00000757);\n" : String).toByteArray.data.toList
theorem checked1920 : bytes1920=statementBytes 1963 (op1920.map lower) ∧ bytes1920.length=60 := by core033_kernel_decide
def op1921 : List WordIR.Op := [.rotr 1775 7]
def bytes1921 : Bytes := ("    let r000007ac: u32 = r000006ef.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1921 : bytes1921=statementBytes 1964 (op1921.map lower) ∧ bytes1921.length=65 := by core033_kernel_decide
def op1922 : List WordIR.Op := [.rotr 1775 18]
def bytes1922 : Bytes := ("    let r000007ad: u32 = r000006ef.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1922 : bytes1922=statementBytes 1965 (op1922.map lower) ∧ bytes1922.length=65 := by core033_kernel_decide
def op1923 : List WordIR.Op := [.bxor 1964 1965]
def bytes1923 : Bytes := ("    let r000007ae: u32 = r000007ac ^ r000007ad;\n" : String).toByteArray.data.toList
theorem checked1923 : bytes1923=statementBytes 1966 (op1923.map lower) ∧ bytes1923.length=48 := by core033_kernel_decide
def op1924 : List WordIR.Op := [.shr 1775 3]
def bytes1924 : Bytes := ("    let r000007af: u32 = r000006ef >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1924 : bytes1924=statementBytes 1967 (op1924.map lower) ∧ bytes1924.length=54 := by core033_kernel_decide
def op1925 : List WordIR.Op := [.bxor 1966 1967]
def bytes1925 : Bytes := ("    let r000007b0: u32 = r000007ae ^ r000007af;\n" : String).toByteArray.data.toList
theorem checked1925 : bytes1925=statementBytes 1968 (op1925.map lower) ∧ bytes1925.length=48 := by core033_kernel_decide
def op1926 : List WordIR.Op := [.badd 1963 1968]
def bytes1926 : Bytes := ("    let r000007b1: u32 = r000007ab.wrapping_add(r000007b0);\n" : String).toByteArray.data.toList
theorem checked1926 : bytes1926=statementBytes 1969 (op1926.map lower) ∧ bytes1926.length=60 := by core033_kernel_decide
def op1927 : List WordIR.Op := [.badd 1969 1762]
def bytes1927 : Bytes := ("    let r000007b2: u32 = r000007b1.wrapping_add(r000006e2);\n" : String).toByteArray.data.toList
theorem checked1927 : bytes1927=statementBytes 1970 (op1927.map lower) ∧ bytes1927.length=60 := by core033_kernel_decide
def op1928 : List WordIR.Op := [.rotr 1957 17]
def bytes1928 : Bytes := ("    let r000007b3: u32 = r000007a5.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1928 : bytes1928=statementBytes 1971 (op1928.map lower) ∧ bytes1928.length=65 := by core033_kernel_decide
def op1929 : List WordIR.Op := [.rotr 1957 19]
def bytes1929 : Bytes := ("    let r000007b4: u32 = r000007a5.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1929 : bytes1929=statementBytes 1972 (op1929.map lower) ∧ bytes1929.length=65 := by core033_kernel_decide
def op1930 : List WordIR.Op := [.bxor 1971 1972]
def bytes1930 : Bytes := ("    let r000007b5: u32 = r000007b3 ^ r000007b4;\n" : String).toByteArray.data.toList
theorem checked1930 : bytes1930=statementBytes 1973 (op1930.map lower) ∧ bytes1930.length=48 := by core033_kernel_decide
def op1931 : List WordIR.Op := [.shr 1957 10]
def bytes1931 : Bytes := ("    let r000007b6: u32 = r000007a5 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1931 : bytes1931=statementBytes 1974 (op1931.map lower) ∧ bytes1931.length=54 := by core033_kernel_decide
def op1932 : List WordIR.Op := [.bxor 1973 1974]
def bytes1932 : Bytes := ("    let r000007b7: u32 = r000007b5 ^ r000007b6;\n" : String).toByteArray.data.toList
theorem checked1932 : bytes1932=statementBytes 1975 (op1932.map lower) ∧ bytes1932.length=48 := by core033_kernel_decide
def op1933 : List WordIR.Op := [.badd 1975 1892]
def bytes1933 : Bytes := ("    let r000007b8: u32 = r000007b7.wrapping_add(r00000764);\n" : String).toByteArray.data.toList
theorem checked1933 : bytes1933=statementBytes 1976 (op1933.map lower) ∧ bytes1933.length=60 := by core033_kernel_decide
def op1934 : List WordIR.Op := [.rotr 1788 7]
def bytes1934 : Bytes := ("    let r000007b9: u32 = r000006fc.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1934 : bytes1934=statementBytes 1977 (op1934.map lower) ∧ bytes1934.length=65 := by core033_kernel_decide
def op1935 : List WordIR.Op := [.rotr 1788 18]
def bytes1935 : Bytes := ("    let r000007ba: u32 = r000006fc.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1935 : bytes1935=statementBytes 1978 (op1935.map lower) ∧ bytes1935.length=65 := by core033_kernel_decide
def op1936 : List WordIR.Op := [.bxor 1977 1978]
def bytes1936 : Bytes := ("    let r000007bb: u32 = r000007b9 ^ r000007ba;\n" : String).toByteArray.data.toList
theorem checked1936 : bytes1936=statementBytes 1979 (op1936.map lower) ∧ bytes1936.length=48 := by core033_kernel_decide
def op1937 : List WordIR.Op := [.shr 1788 3]
def bytes1937 : Bytes := ("    let r000007bc: u32 = r000006fc >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1937 : bytes1937=statementBytes 1980 (op1937.map lower) ∧ bytes1937.length=54 := by core033_kernel_decide
def op1938 : List WordIR.Op := [.bxor 1979 1980]
def bytes1938 : Bytes := ("    let r000007bd: u32 = r000007bb ^ r000007bc;\n" : String).toByteArray.data.toList
theorem checked1938 : bytes1938=statementBytes 1981 (op1938.map lower) ∧ bytes1938.length=48 := by core033_kernel_decide
def op1939 : List WordIR.Op := [.badd 1976 1981]
def bytes1939 : Bytes := ("    let r000007be: u32 = r000007b8.wrapping_add(r000007bd);\n" : String).toByteArray.data.toList
theorem checked1939 : bytes1939=statementBytes 1982 (op1939.map lower) ∧ bytes1939.length=60 := by core033_kernel_decide
def op1940 : List WordIR.Op := [.badd 1982 1775]
def bytes1940 : Bytes := ("    let r000007bf: u32 = r000007be.wrapping_add(r000006ef);\n" : String).toByteArray.data.toList
theorem checked1940 : bytes1940=statementBytes 1983 (op1940.map lower) ∧ bytes1940.length=60 := by core033_kernel_decide
def op1941 : List WordIR.Op := [.rotr 1970 17]
def bytes1941 : Bytes := ("    let r000007c0: u32 = r000007b2.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1941 : bytes1941=statementBytes 1984 (op1941.map lower) ∧ bytes1941.length=65 := by core033_kernel_decide
def op1942 : List WordIR.Op := [.rotr 1970 19]
def bytes1942 : Bytes := ("    let r000007c1: u32 = r000007b2.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1942 : bytes1942=statementBytes 1985 (op1942.map lower) ∧ bytes1942.length=65 := by core033_kernel_decide
def op1943 : List WordIR.Op := [.bxor 1984 1985]
def bytes1943 : Bytes := ("    let r000007c2: u32 = r000007c0 ^ r000007c1;\n" : String).toByteArray.data.toList
theorem checked1943 : bytes1943=statementBytes 1986 (op1943.map lower) ∧ bytes1943.length=48 := by core033_kernel_decide
def op1944 : List WordIR.Op := [.shr 1970 10]
def bytes1944 : Bytes := ("    let r000007c3: u32 = r000007b2 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1944 : bytes1944=statementBytes 1987 (op1944.map lower) ∧ bytes1944.length=54 := by core033_kernel_decide
def op1945 : List WordIR.Op := [.bxor 1986 1987]
def bytes1945 : Bytes := ("    let r000007c4: u32 = r000007c2 ^ r000007c3;\n" : String).toByteArray.data.toList
theorem checked1945 : bytes1945=statementBytes 1988 (op1945.map lower) ∧ bytes1945.length=48 := by core033_kernel_decide
def op1946 : List WordIR.Op := [.badd 1988 1905]
def bytes1946 : Bytes := ("    let r000007c5: u32 = r000007c4.wrapping_add(r00000771);\n" : String).toByteArray.data.toList
theorem checked1946 : bytes1946=statementBytes 1989 (op1946.map lower) ∧ bytes1946.length=60 := by core033_kernel_decide
def op1947 : List WordIR.Op := [.rotr 1801 7]
def bytes1947 : Bytes := ("    let r000007c6: u32 = r00000709.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1947 : bytes1947=statementBytes 1990 (op1947.map lower) ∧ bytes1947.length=65 := by core033_kernel_decide
def op1948 : List WordIR.Op := [.rotr 1801 18]
def bytes1948 : Bytes := ("    let r000007c7: u32 = r00000709.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1948 : bytes1948=statementBytes 1991 (op1948.map lower) ∧ bytes1948.length=65 := by core033_kernel_decide
def op1949 : List WordIR.Op := [.bxor 1990 1991]
def bytes1949 : Bytes := ("    let r000007c8: u32 = r000007c6 ^ r000007c7;\n" : String).toByteArray.data.toList
theorem checked1949 : bytes1949=statementBytes 1992 (op1949.map lower) ∧ bytes1949.length=48 := by core033_kernel_decide
def op1950 : List WordIR.Op := [.shr 1801 3]
def bytes1950 : Bytes := ("    let r000007c9: u32 = r00000709 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1950 : bytes1950=statementBytes 1993 (op1950.map lower) ∧ bytes1950.length=54 := by core033_kernel_decide
def op1951 : List WordIR.Op := [.bxor 1992 1993]
def bytes1951 : Bytes := ("    let r000007ca: u32 = r000007c8 ^ r000007c9;\n" : String).toByteArray.data.toList
theorem checked1951 : bytes1951=statementBytes 1994 (op1951.map lower) ∧ bytes1951.length=48 := by core033_kernel_decide
def op1952 : List WordIR.Op := [.badd 1989 1994]
def bytes1952 : Bytes := ("    let r000007cb: u32 = r000007c5.wrapping_add(r000007ca);\n" : String).toByteArray.data.toList
theorem checked1952 : bytes1952=statementBytes 1995 (op1952.map lower) ∧ bytes1952.length=60 := by core033_kernel_decide
def op1953 : List WordIR.Op := [.badd 1995 1788]
def bytes1953 : Bytes := ("    let r000007cc: u32 = r000007cb.wrapping_add(r000006fc);\n" : String).toByteArray.data.toList
theorem checked1953 : bytes1953=statementBytes 1996 (op1953.map lower) ∧ bytes1953.length=60 := by core033_kernel_decide
def op1954 : List WordIR.Op := [.rotr 1983 17]
def bytes1954 : Bytes := ("    let r000007cd: u32 = r000007bf.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1954 : bytes1954=statementBytes 1997 (op1954.map lower) ∧ bytes1954.length=65 := by core033_kernel_decide
def op1955 : List WordIR.Op := [.rotr 1983 19]
def bytes1955 : Bytes := ("    let r000007ce: u32 = r000007bf.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1955 : bytes1955=statementBytes 1998 (op1955.map lower) ∧ bytes1955.length=65 := by core033_kernel_decide
def op1956 : List WordIR.Op := [.bxor 1997 1998]
def bytes1956 : Bytes := ("    let r000007cf: u32 = r000007cd ^ r000007ce;\n" : String).toByteArray.data.toList
theorem checked1956 : bytes1956=statementBytes 1999 (op1956.map lower) ∧ bytes1956.length=48 := by core033_kernel_decide
def op1957 : List WordIR.Op := [.shr 1983 10]
def bytes1957 : Bytes := ("    let r000007d0: u32 = r000007bf >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1957 : bytes1957=statementBytes 2000 (op1957.map lower) ∧ bytes1957.length=54 := by core033_kernel_decide
def op1958 : List WordIR.Op := [.bxor 1999 2000]
def bytes1958 : Bytes := ("    let r000007d1: u32 = r000007cf ^ r000007d0;\n" : String).toByteArray.data.toList
theorem checked1958 : bytes1958=statementBytes 2001 (op1958.map lower) ∧ bytes1958.length=48 := by core033_kernel_decide
def op1959 : List WordIR.Op := [.badd 2001 1918]
def bytes1959 : Bytes := ("    let r000007d2: u32 = r000007d1.wrapping_add(r0000077e);\n" : String).toByteArray.data.toList
theorem checked1959 : bytes1959=statementBytes 2002 (op1959.map lower) ∧ bytes1959.length=60 := by core033_kernel_decide
def op1960 : List WordIR.Op := [.rotr 1814 7]
def bytes1960 : Bytes := ("    let r000007d3: u32 = r00000716.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1960 : bytes1960=statementBytes 2003 (op1960.map lower) ∧ bytes1960.length=65 := by core033_kernel_decide
def op1961 : List WordIR.Op := [.rotr 1814 18]
def bytes1961 : Bytes := ("    let r000007d4: u32 = r00000716.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1961 : bytes1961=statementBytes 2004 (op1961.map lower) ∧ bytes1961.length=65 := by core033_kernel_decide
def op1962 : List WordIR.Op := [.bxor 2003 2004]
def bytes1962 : Bytes := ("    let r000007d5: u32 = r000007d3 ^ r000007d4;\n" : String).toByteArray.data.toList
theorem checked1962 : bytes1962=statementBytes 2005 (op1962.map lower) ∧ bytes1962.length=48 := by core033_kernel_decide
def op1963 : List WordIR.Op := [.shr 1814 3]
def bytes1963 : Bytes := ("    let r000007d6: u32 = r00000716 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1963 : bytes1963=statementBytes 2006 (op1963.map lower) ∧ bytes1963.length=54 := by core033_kernel_decide
def op1964 : List WordIR.Op := [.bxor 2005 2006]
def bytes1964 : Bytes := ("    let r000007d7: u32 = r000007d5 ^ r000007d6;\n" : String).toByteArray.data.toList
theorem checked1964 : bytes1964=statementBytes 2007 (op1964.map lower) ∧ bytes1964.length=48 := by core033_kernel_decide
def op1965 : List WordIR.Op := [.badd 2002 2007]
def bytes1965 : Bytes := ("    let r000007d8: u32 = r000007d2.wrapping_add(r000007d7);\n" : String).toByteArray.data.toList
theorem checked1965 : bytes1965=statementBytes 2008 (op1965.map lower) ∧ bytes1965.length=60 := by core033_kernel_decide
def op1966 : List WordIR.Op := [.badd 2008 1801]
def bytes1966 : Bytes := ("    let r000007d9: u32 = r000007d8.wrapping_add(r00000709);\n" : String).toByteArray.data.toList
theorem checked1966 : bytes1966=statementBytes 2009 (op1966.map lower) ∧ bytes1966.length=60 := by core033_kernel_decide
def op1967 : List WordIR.Op := [.rotr 1996 17]
def bytes1967 : Bytes := ("    let r000007da: u32 = r000007cc.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1967 : bytes1967=statementBytes 2010 (op1967.map lower) ∧ bytes1967.length=65 := by core033_kernel_decide
def op1968 : List WordIR.Op := [.rotr 1996 19]
def bytes1968 : Bytes := ("    let r000007db: u32 = r000007cc.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1968 : bytes1968=statementBytes 2011 (op1968.map lower) ∧ bytes1968.length=65 := by core033_kernel_decide
def op1969 : List WordIR.Op := [.bxor 2010 2011]
def bytes1969 : Bytes := ("    let r000007dc: u32 = r000007da ^ r000007db;\n" : String).toByteArray.data.toList
theorem checked1969 : bytes1969=statementBytes 2012 (op1969.map lower) ∧ bytes1969.length=48 := by core033_kernel_decide
def op1970 : List WordIR.Op := [.shr 1996 10]
def bytes1970 : Bytes := ("    let r000007dd: u32 = r000007cc >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1970 : bytes1970=statementBytes 2013 (op1970.map lower) ∧ bytes1970.length=54 := by core033_kernel_decide
def op1971 : List WordIR.Op := [.bxor 2012 2013]
def bytes1971 : Bytes := ("    let r000007de: u32 = r000007dc ^ r000007dd;\n" : String).toByteArray.data.toList
theorem checked1971 : bytes1971=statementBytes 2014 (op1971.map lower) ∧ bytes1971.length=48 := by core033_kernel_decide
def op1972 : List WordIR.Op := [.badd 2014 1931]
def bytes1972 : Bytes := ("    let r000007df: u32 = r000007de.wrapping_add(r0000078b);\n" : String).toByteArray.data.toList
theorem checked1972 : bytes1972=statementBytes 2015 (op1972.map lower) ∧ bytes1972.length=60 := by core033_kernel_decide
def op1973 : List WordIR.Op := [.rotr 1827 7]
def bytes1973 : Bytes := ("    let r000007e0: u32 = r00000723.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1973 : bytes1973=statementBytes 2016 (op1973.map lower) ∧ bytes1973.length=65 := by core033_kernel_decide
def op1974 : List WordIR.Op := [.rotr 1827 18]
def bytes1974 : Bytes := ("    let r000007e1: u32 = r00000723.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1974 : bytes1974=statementBytes 2017 (op1974.map lower) ∧ bytes1974.length=65 := by core033_kernel_decide
def op1975 : List WordIR.Op := [.bxor 2016 2017]
def bytes1975 : Bytes := ("    let r000007e2: u32 = r000007e0 ^ r000007e1;\n" : String).toByteArray.data.toList
theorem checked1975 : bytes1975=statementBytes 2018 (op1975.map lower) ∧ bytes1975.length=48 := by core033_kernel_decide
def op1976 : List WordIR.Op := [.shr 1827 3]
def bytes1976 : Bytes := ("    let r000007e3: u32 = r00000723 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1976 : bytes1976=statementBytes 2019 (op1976.map lower) ∧ bytes1976.length=54 := by core033_kernel_decide
def op1977 : List WordIR.Op := [.bxor 2018 2019]
def bytes1977 : Bytes := ("    let r000007e4: u32 = r000007e2 ^ r000007e3;\n" : String).toByteArray.data.toList
theorem checked1977 : bytes1977=statementBytes 2020 (op1977.map lower) ∧ bytes1977.length=48 := by core033_kernel_decide
def op1978 : List WordIR.Op := [.badd 2015 2020]
def bytes1978 : Bytes := ("    let r000007e5: u32 = r000007df.wrapping_add(r000007e4);\n" : String).toByteArray.data.toList
theorem checked1978 : bytes1978=statementBytes 2021 (op1978.map lower) ∧ bytes1978.length=60 := by core033_kernel_decide
def op1979 : List WordIR.Op := [.badd 2021 1814]
def bytes1979 : Bytes := ("    let r000007e6: u32 = r000007e5.wrapping_add(r00000716);\n" : String).toByteArray.data.toList
theorem checked1979 : bytes1979=statementBytes 2022 (op1979.map lower) ∧ bytes1979.length=60 := by core033_kernel_decide
def op1980 : List WordIR.Op := [.rotr 2009 17]
def bytes1980 : Bytes := ("    let r000007e7: u32 = r000007d9.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1980 : bytes1980=statementBytes 2023 (op1980.map lower) ∧ bytes1980.length=65 := by core033_kernel_decide
def op1981 : List WordIR.Op := [.rotr 2009 19]
def bytes1981 : Bytes := ("    let r000007e8: u32 = r000007d9.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1981 : bytes1981=statementBytes 2024 (op1981.map lower) ∧ bytes1981.length=65 := by core033_kernel_decide
def op1982 : List WordIR.Op := [.bxor 2023 2024]
def bytes1982 : Bytes := ("    let r000007e9: u32 = r000007e7 ^ r000007e8;\n" : String).toByteArray.data.toList
theorem checked1982 : bytes1982=statementBytes 2025 (op1982.map lower) ∧ bytes1982.length=48 := by core033_kernel_decide
def op1983 : List WordIR.Op := [.shr 2009 10]
def bytes1983 : Bytes := ("    let r000007ea: u32 = r000007d9 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1983 : bytes1983=statementBytes 2026 (op1983.map lower) ∧ bytes1983.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1920,op1921,op1922,op1923,op1924,op1925,op1926,op1927,op1928,op1929,op1930,op1931,op1932,op1933,op1934,op1935,op1936,op1937,op1938,op1939,op1940,op1941,op1942,op1943,op1944,op1945,op1946,op1947,op1948,op1949,op1950,op1951,op1952,op1953,op1954,op1955,op1956,op1957,op1958,op1959,op1960,op1961,op1962,op1963,op1964,op1965,op1966,op1967,op1968,op1969,op1970,op1971,op1972,op1973,op1974,op1975,op1976,op1977,op1978,op1979,op1980,op1981,op1982,op1983]
def chunks : List Bytes := [bytes1920,bytes1921,bytes1922,bytes1923,bytes1924,bytes1925,bytes1926,bytes1927,bytes1928,bytes1929,bytes1930,bytes1931,bytes1932,bytes1933,bytes1934,bytes1935,bytes1936,bytes1937,bytes1938,bytes1939,bytes1940,bytes1941,bytes1942,bytes1943,bytes1944,bytes1945,bytes1946,bytes1947,bytes1948,bytes1949,bytes1950,bytes1951,bytes1952,bytes1953,bytes1954,bytes1955,bytes1956,bytes1957,bytes1958,bytes1959,bytes1960,bytes1961,bytes1962,bytes1963,bytes1964,bytes1965,bytes1966,bytes1967,bytes1968,bytes1969,bytes1970,bytes1971,bytes1972,bytes1973,bytes1974,bytes1975,bytes1976,bytes1977,bytes1978,bytes1979,bytes1980,bytes1981,bytes1982,bytes1983]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1963 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1920.1 (.cons _ _ _ _ _ checked1921.1 (.cons _ _ _ _ _ checked1922.1 (.cons _ _ _ _ _ checked1923.1 (.cons _ _ _ _ _ checked1924.1 (.cons _ _ _ _ _ checked1925.1 (.cons _ _ _ _ _ checked1926.1 (.cons _ _ _ _ _ checked1927.1 (.cons _ _ _ _ _ checked1928.1 (.cons _ _ _ _ _ checked1929.1 (.cons _ _ _ _ _ checked1930.1 (.cons _ _ _ _ _ checked1931.1 (.cons _ _ _ _ _ checked1932.1 (.cons _ _ _ _ _ checked1933.1 (.cons _ _ _ _ _ checked1934.1 (.cons _ _ _ _ _ checked1935.1 (.cons _ _ _ _ _ checked1936.1 (.cons _ _ _ _ _ checked1937.1 (.cons _ _ _ _ _ checked1938.1 (.cons _ _ _ _ _ checked1939.1 (.cons _ _ _ _ _ checked1940.1 (.cons _ _ _ _ _ checked1941.1 (.cons _ _ _ _ _ checked1942.1 (.cons _ _ _ _ _ checked1943.1 (.cons _ _ _ _ _ checked1944.1 (.cons _ _ _ _ _ checked1945.1 (.cons _ _ _ _ _ checked1946.1 (.cons _ _ _ _ _ checked1947.1 (.cons _ _ _ _ _ checked1948.1 (.cons _ _ _ _ _ checked1949.1 (.cons _ _ _ _ _ checked1950.1 (.cons _ _ _ _ _ checked1951.1 (.cons _ _ _ _ _ checked1952.1 (.cons _ _ _ _ _ checked1953.1 (.cons _ _ _ _ _ checked1954.1 (.cons _ _ _ _ _ checked1955.1 (.cons _ _ _ _ _ checked1956.1 (.cons _ _ _ _ _ checked1957.1 (.cons _ _ _ _ _ checked1958.1 (.cons _ _ _ _ _ checked1959.1 (.cons _ _ _ _ _ checked1960.1 (.cons _ _ _ _ _ checked1961.1 (.cons _ _ _ _ _ checked1962.1 (.cons _ _ _ _ _ checked1963.1 (.cons _ _ _ _ _ checked1964.1 (.cons _ _ _ _ _ checked1965.1 (.cons _ _ _ _ _ checked1966.1 (.cons _ _ _ _ _ checked1967.1 (.cons _ _ _ _ _ checked1968.1 (.cons _ _ _ _ _ checked1969.1 (.cons _ _ _ _ _ checked1970.1 (.cons _ _ _ _ _ checked1971.1 (.cons _ _ _ _ _ checked1972.1 (.cons _ _ _ _ _ checked1973.1 (.cons _ _ _ _ _ checked1974.1 (.cons _ _ _ _ _ checked1975.1 (.cons _ _ _ _ _ checked1976.1 (.cons _ _ _ _ _ checked1977.1 (.cons _ _ _ _ _ checked1978.1 (.cons _ _ _ _ _ checked1979.1 (.cons _ _ _ _ _ checked1980.1 (.cons _ _ _ _ _ checked1981.1 (.cons _ _ _ _ _ checked1982.1 (.cons _ _ _ _ _ checked1983.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1963 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3652 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1920.2,checked1921.2,checked1922.2,checked1923.2,checked1924.2,checked1925.2,checked1926.2,checked1927.2,checked1928.2,checked1929.2,checked1930.2,checked1931.2,checked1932.2,checked1933.2,checked1934.2,checked1935.2,checked1936.2,checked1937.2,checked1938.2,checked1939.2,checked1940.2,checked1941.2,checked1942.2,checked1943.2,checked1944.2,checked1945.2,checked1946.2,checked1947.2,checked1948.2,checked1949.2,checked1950.2,checked1951.2,checked1952.2,checked1953.2,checked1954.2,checked1955.2,checked1956.2,checked1957.2,checked1958.2,checked1959.2,checked1960.2,checked1961.2,checked1962.2,checked1963.2,checked1964.2,checked1965.2,checked1966.2,checked1967.2,checked1968.2,checked1969.2,checked1970.2,checked1971.2,checked1972.2,checked1973.2,checked1974.2,checked1975.2,checked1976.2,checked1977.2,checked1978.2,checked1979.2,checked1980.2,checked1981.2,checked1982.2,checked1983.2]
  decide
end ArtifactSharedFrameGroup30
