import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData30
import ActualMatrixData31
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1944 : actualRows1944=WordField.canonicalRows actualModulus 1944 (.rotr 1943 6) := by core033_kernel_decide
theorem stats1944 : actualRows1944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1944=5124 := by core033_kernel_decide
theorem rows1945 : actualRows1945=WordField.canonicalRows actualModulus 1945 (.rotr 1943 11) := by core033_kernel_decide
theorem stats1945 : actualRows1945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1945=5124 := by core033_kernel_decide
theorem rows1946 : actualRows1946=WordField.canonicalRows actualModulus 1946 (.bxor 1944 1945) := by core033_kernel_decide
theorem stats1946 : actualRows1946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1946=7428 := by core033_kernel_decide
theorem rows1947 : actualRows1947=WordField.canonicalRows actualModulus 1947 (.rotr 1943 25) := by core033_kernel_decide
theorem stats1947 : actualRows1947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1947=5124 := by core033_kernel_decide
theorem rows1948 : actualRows1948=WordField.canonicalRows actualModulus 1948 (.bxor 1946 1947) := by core033_kernel_decide
theorem stats1948 : actualRows1948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1948=7428 := by core033_kernel_decide
theorem rows1949 : actualRows1949=WordField.canonicalRows actualModulus 1949 (.badd 1862 1948) := by core033_kernel_decide
theorem stats1949 : actualRows1949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1949=5388 := by core033_kernel_decide
theorem rows1950 : actualRows1950=WordField.canonicalRows actualModulus 1950 (.band 1943 1916) := by core033_kernel_decide
theorem stats1950 : actualRows1950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1950=5124 := by core033_kernel_decide
theorem rows1951 : actualRows1951=WordField.canonicalRows actualModulus 1951 (.bnot 1943) := by core033_kernel_decide
theorem stats1951 : actualRows1951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1951=6276 := by core033_kernel_decide
theorem rows1952 : actualRows1952=WordField.canonicalRows actualModulus 1952 (.band 1951 1889) := by core033_kernel_decide
theorem stats1952 : actualRows1952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1952=5124 := by core033_kernel_decide
theorem rows1953 : actualRows1953=WordField.canonicalRows actualModulus 1953 (.bxor 1950 1952) := by core033_kernel_decide
theorem stats1953 : actualRows1953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1953=7428 := by core033_kernel_decide
theorem rows1954 : actualRows1954=WordField.canonicalRows actualModulus 1954 (.badd 1949 1953) := by core033_kernel_decide
theorem stats1954 : actualRows1954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1954=5388 := by core033_kernel_decide
theorem rows1955 : actualRows1955=WordField.canonicalRows actualModulus 1955 (.literal (BitVec.ofNat 32 430227734)) := by core033_kernel_decide
theorem stats1955 : actualRows1955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1955=3684 := by core033_kernel_decide
theorem rows1956 : actualRows1956=WordField.canonicalRows actualModulus 1956 (.badd 1954 1955) := by core033_kernel_decide
theorem stats1956 : actualRows1956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1956=5388 := by core033_kernel_decide
theorem rows1957 : actualRows1957=WordField.canonicalRows actualModulus 1957 (.badd 1956 452) := by core033_kernel_decide
theorem stats1957 : actualRows1957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1957=5388 := by core033_kernel_decide
theorem rows1958 : actualRows1958=WordField.canonicalRows actualModulus 1958 (.rotr 1942 2) := by core033_kernel_decide
theorem stats1958 : actualRows1958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1958=5124 := by core033_kernel_decide
theorem rows1959 : actualRows1959=WordField.canonicalRows actualModulus 1959 (.rotr 1942 13) := by core033_kernel_decide
theorem stats1959 : actualRows1959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1959=5124 := by core033_kernel_decide
theorem rows1960 : actualRows1960=WordField.canonicalRows actualModulus 1960 (.bxor 1958 1959) := by core033_kernel_decide
theorem stats1960 : actualRows1960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1960=7428 := by core033_kernel_decide
theorem rows1961 : actualRows1961=WordField.canonicalRows actualModulus 1961 (.rotr 1942 22) := by core033_kernel_decide
theorem stats1961 : actualRows1961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1961=5124 := by core033_kernel_decide
theorem rows1962 : actualRows1962=WordField.canonicalRows actualModulus 1962 (.bxor 1960 1961) := by core033_kernel_decide
theorem stats1962 : actualRows1962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1962=7428 := by core033_kernel_decide
theorem rows1963 : actualRows1963=WordField.canonicalRows actualModulus 1963 (.band 1942 1915) := by core033_kernel_decide
theorem stats1963 : actualRows1963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1963=5124 := by core033_kernel_decide
theorem rows1964 : actualRows1964=WordField.canonicalRows actualModulus 1964 (.band 1942 1888) := by core033_kernel_decide
theorem stats1964 : actualRows1964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1964=5124 := by core033_kernel_decide
theorem rows1965 : actualRows1965=WordField.canonicalRows actualModulus 1965 (.bxor 1963 1964) := by core033_kernel_decide
theorem stats1965 : actualRows1965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1965=7428 := by core033_kernel_decide
theorem rows1966 : actualRows1966=WordField.canonicalRows actualModulus 1966 (.band 1915 1888) := by core033_kernel_decide
theorem stats1966 : actualRows1966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1966=5124 := by core033_kernel_decide
theorem rows1967 : actualRows1967=WordField.canonicalRows actualModulus 1967 (.bxor 1965 1966) := by core033_kernel_decide
theorem stats1967 : actualRows1967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1967=7428 := by core033_kernel_decide
theorem rows1968 : actualRows1968=WordField.canonicalRows actualModulus 1968 (.badd 1962 1967) := by core033_kernel_decide
theorem stats1968 : actualRows1968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1968=5388 := by core033_kernel_decide
theorem rows1969 : actualRows1969=WordField.canonicalRows actualModulus 1969 (.badd 1957 1968) := by core033_kernel_decide
theorem stats1969 : actualRows1969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1969=5388 := by core033_kernel_decide
theorem rows1970 : actualRows1970=WordField.canonicalRows actualModulus 1970 (.badd 1861 1957) := by core033_kernel_decide
theorem stats1970 : actualRows1970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1970=5388 := by core033_kernel_decide
theorem rows1971 : actualRows1971=WordField.canonicalRows actualModulus 1971 (.rotr 1970 6) := by core033_kernel_decide
theorem stats1971 : actualRows1971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1971=5124 := by core033_kernel_decide
theorem rows1972 : actualRows1972=WordField.canonicalRows actualModulus 1972 (.rotr 1970 11) := by core033_kernel_decide
theorem stats1972 : actualRows1972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1972=5124 := by core033_kernel_decide
theorem rows1973 : actualRows1973=WordField.canonicalRows actualModulus 1973 (.bxor 1971 1972) := by core033_kernel_decide
theorem stats1973 : actualRows1973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1973=7428 := by core033_kernel_decide
theorem rows1974 : actualRows1974=WordField.canonicalRows actualModulus 1974 (.rotr 1970 25) := by core033_kernel_decide
theorem stats1974 : actualRows1974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1974=5124 := by core033_kernel_decide
theorem rows1975 : actualRows1975=WordField.canonicalRows actualModulus 1975 (.bxor 1973 1974) := by core033_kernel_decide
theorem stats1975 : actualRows1975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1975=7428 := by core033_kernel_decide
theorem rows1976 : actualRows1976=WordField.canonicalRows actualModulus 1976 (.badd 1889 1975) := by core033_kernel_decide
theorem stats1976 : actualRows1976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1976=5388 := by core033_kernel_decide
theorem rows1977 : actualRows1977=WordField.canonicalRows actualModulus 1977 (.band 1970 1943) := by core033_kernel_decide
theorem stats1977 : actualRows1977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1977=5124 := by core033_kernel_decide
theorem rows1978 : actualRows1978=WordField.canonicalRows actualModulus 1978 (.bnot 1970) := by core033_kernel_decide
theorem stats1978 : actualRows1978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1978=6276 := by core033_kernel_decide
theorem rows1979 : actualRows1979=WordField.canonicalRows actualModulus 1979 (.band 1978 1916) := by core033_kernel_decide
theorem stats1979 : actualRows1979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1979=5124 := by core033_kernel_decide
theorem rows1980 : actualRows1980=WordField.canonicalRows actualModulus 1980 (.bxor 1977 1979) := by core033_kernel_decide
theorem stats1980 : actualRows1980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1980=7428 := by core033_kernel_decide
theorem rows1981 : actualRows1981=WordField.canonicalRows actualModulus 1981 (.badd 1976 1980) := by core033_kernel_decide
theorem stats1981 : actualRows1981.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1981=5388 := by core033_kernel_decide
theorem rows1982 : actualRows1982=WordField.canonicalRows actualModulus 1982 (.literal (BitVec.ofNat 32 506948616)) := by core033_kernel_decide
theorem stats1982 : actualRows1982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1982=3828 := by core033_kernel_decide
theorem rows1983 : actualRows1983=WordField.canonicalRows actualModulus 1983 (.badd 1981 1982) := by core033_kernel_decide
theorem stats1983 : actualRows1983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1983=5388 := by core033_kernel_decide
theorem rows1984 : actualRows1984=WordField.canonicalRows actualModulus 1984 (.badd 1983 465) := by core033_kernel_decide
theorem stats1984 : actualRows1984.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1984=5388 := by core033_kernel_decide
theorem rows1985 : actualRows1985=WordField.canonicalRows actualModulus 1985 (.rotr 1969 2) := by core033_kernel_decide
theorem stats1985 : actualRows1985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1985=5124 := by core033_kernel_decide
theorem rows1986 : actualRows1986=WordField.canonicalRows actualModulus 1986 (.rotr 1969 13) := by core033_kernel_decide
theorem stats1986 : actualRows1986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1986=5124 := by core033_kernel_decide
theorem rows1987 : actualRows1987=WordField.canonicalRows actualModulus 1987 (.bxor 1985 1986) := by core033_kernel_decide
theorem stats1987 : actualRows1987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1987=7428 := by core033_kernel_decide
theorem rows1988 : actualRows1988=WordField.canonicalRows actualModulus 1988 (.rotr 1969 22) := by core033_kernel_decide
theorem stats1988 : actualRows1988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1988=5124 := by core033_kernel_decide
theorem rows1989 : actualRows1989=WordField.canonicalRows actualModulus 1989 (.bxor 1987 1988) := by core033_kernel_decide
theorem stats1989 : actualRows1989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1989=7428 := by core033_kernel_decide
theorem rows1990 : actualRows1990=WordField.canonicalRows actualModulus 1990 (.band 1969 1942) := by core033_kernel_decide
theorem stats1990 : actualRows1990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1990=5124 := by core033_kernel_decide
theorem rows1991 : actualRows1991=WordField.canonicalRows actualModulus 1991 (.band 1969 1915) := by core033_kernel_decide
theorem stats1991 : actualRows1991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1991=5124 := by core033_kernel_decide
theorem rows1992 : actualRows1992=WordField.canonicalRows actualModulus 1992 (.bxor 1990 1991) := by core033_kernel_decide
theorem stats1992 : actualRows1992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1992=7428 := by core033_kernel_decide
theorem rows1993 : actualRows1993=WordField.canonicalRows actualModulus 1993 (.band 1942 1915) := by core033_kernel_decide
theorem stats1993 : actualRows1993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1993=5124 := by core033_kernel_decide
theorem rows1994 : actualRows1994=WordField.canonicalRows actualModulus 1994 (.bxor 1992 1993) := by core033_kernel_decide
theorem stats1994 : actualRows1994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1994=7428 := by core033_kernel_decide
theorem rows1995 : actualRows1995=WordField.canonicalRows actualModulus 1995 (.badd 1989 1994) := by core033_kernel_decide
theorem stats1995 : actualRows1995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1995=5388 := by core033_kernel_decide
theorem rows1996 : actualRows1996=WordField.canonicalRows actualModulus 1996 (.badd 1984 1995) := by core033_kernel_decide
theorem stats1996 : actualRows1996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1996=5388 := by core033_kernel_decide
theorem rows1997 : actualRows1997=WordField.canonicalRows actualModulus 1997 (.badd 1888 1984) := by core033_kernel_decide
theorem stats1997 : actualRows1997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1997=5388 := by core033_kernel_decide
theorem rows1998 : actualRows1998=WordField.canonicalRows actualModulus 1998 (.rotr 1997 6) := by core033_kernel_decide
theorem stats1998 : actualRows1998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1998=5124 := by core033_kernel_decide
theorem rows1999 : actualRows1999=WordField.canonicalRows actualModulus 1999 (.rotr 1997 11) := by core033_kernel_decide
theorem stats1999 : actualRows1999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1999=5124 := by core033_kernel_decide
theorem rows2000 : actualRows2000=WordField.canonicalRows actualModulus 2000 (.bxor 1998 1999) := by core033_kernel_decide
theorem stats2000 : actualRows2000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2000=7428 := by core033_kernel_decide
theorem rows2001 : actualRows2001=WordField.canonicalRows actualModulus 2001 (.rotr 1997 25) := by core033_kernel_decide
theorem stats2001 : actualRows2001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2001=5124 := by core033_kernel_decide
theorem rows2002 : actualRows2002=WordField.canonicalRows actualModulus 2002 (.bxor 2000 2001) := by core033_kernel_decide
theorem stats2002 : actualRows2002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2002=7428 := by core033_kernel_decide
theorem rows2003 : actualRows2003=WordField.canonicalRows actualModulus 2003 (.badd 1916 2002) := by core033_kernel_decide
theorem stats2003 : actualRows2003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2003=5388 := by core033_kernel_decide
theorem rows2004 : actualRows2004=WordField.canonicalRows actualModulus 2004 (.band 1997 1970) := by core033_kernel_decide
theorem stats2004 : actualRows2004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2004=5124 := by core033_kernel_decide
theorem rows2005 : actualRows2005=WordField.canonicalRows actualModulus 2005 (.bnot 1997) := by core033_kernel_decide
theorem stats2005 : actualRows2005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2005=6276 := by core033_kernel_decide
theorem rows2006 : actualRows2006=WordField.canonicalRows actualModulus 2006 (.band 2005 1943) := by core033_kernel_decide
theorem stats2006 : actualRows2006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2006=5124 := by core033_kernel_decide
theorem rows2007 : actualRows2007=WordField.canonicalRows actualModulus 2007 (.bxor 2004 2006) := by core033_kernel_decide
theorem stats2007 : actualRows2007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2007=7428 := by core033_kernel_decide
def partRows30 : List R1CS.Row := actualRows1944++actualRows1945++actualRows1946++actualRows1947++actualRows1948++actualRows1949++actualRows1950++actualRows1951++actualRows1952++actualRows1953++actualRows1954++actualRows1955++actualRows1956++actualRows1957++actualRows1958++actualRows1959++actualRows1960++actualRows1961++actualRows1962++actualRows1963++actualRows1964++actualRows1965++actualRows1966++actualRows1967++actualRows1968++actualRows1969++actualRows1970++actualRows1971++actualRows1972++actualRows1973++actualRows1974++actualRows1975++actualRows1976++actualRows1977++actualRows1978++actualRows1979++actualRows1980++actualRows1981++actualRows1982++actualRows1983++actualRows1984++actualRows1985++actualRows1986++actualRows1987++actualRows1988++actualRows1989++actualRows1990++actualRows1991++actualRows1992++actualRows1993++actualRows1994++actualRows1995++actualRows1996++actualRows1997++actualRows1998++actualRows1999++actualRows2000++actualRows2001++actualRows2002++actualRows2003++actualRows2004++actualRows2005++actualRows2006++actualRows2007
def partOps30 : List WordIR.Op := [.rotr 1943 6,.rotr 1943 11,.bxor 1944 1945,.rotr 1943 25,.bxor 1946 1947,.badd 1862 1948,.band 1943 1916,.bnot 1943,.band 1951 1889,.bxor 1950 1952,.badd 1949 1953,.literal (BitVec.ofNat 32 430227734),.badd 1954 1955,.badd 1956 452,.rotr 1942 2,.rotr 1942 13,.bxor 1958 1959,.rotr 1942 22,.bxor 1960 1961,.band 1942 1915,.band 1942 1888,.bxor 1963 1964,.band 1915 1888,.bxor 1965 1966,.badd 1962 1967,.badd 1957 1968,.badd 1861 1957,.rotr 1970 6,.rotr 1970 11,.bxor 1971 1972,.rotr 1970 25,.bxor 1973 1974,.badd 1889 1975,.band 1970 1943,.bnot 1970,.band 1978 1916,.bxor 1977 1979,.badd 1976 1980,.literal (BitVec.ofNat 32 506948616),.badd 1981 1982,.badd 1983 465,.rotr 1969 2,.rotr 1969 13,.bxor 1985 1986,.rotr 1969 22,.bxor 1987 1988,.band 1969 1942,.band 1969 1915,.bxor 1990 1991,.band 1942 1915,.bxor 1992 1993,.badd 1989 1994,.badd 1984 1995,.badd 1888 1984,.rotr 1997 6,.rotr 1997 11,.bxor 1998 1999,.rotr 1997 25,.bxor 2000 2001,.badd 1916 2002,.band 1997 1970,.bnot 1997,.band 2005 1943,.bxor 2004 2006]
theorem partRowsExact30 : partRows30=WordField.rows actualModulus 1944 partOps30 := by
  simp only [partRows30,partOps30,WordField.rows,rows1944,rows1945,rows1946,rows1947,rows1948,rows1949,rows1950,rows1951,rows1952,rows1953,rows1954,rows1955,rows1956,rows1957,rows1958,rows1959,rows1960,rows1961,rows1962,rows1963,rows1964,rows1965,rows1966,rows1967,rows1968,rows1969,rows1970,rows1971,rows1972,rows1973,rows1974,rows1975,rows1976,rows1977,rows1978,rows1979,rows1980,rows1981,rows1982,rows1983,rows1984,rows1985,rows1986,rows1987,rows1988,rows1989,rows1990,rows1991,rows1992,rows1993,rows1994,rows1995,rows1996,rows1997,rows1998,rows1999,rows2000,rows2001,rows2002,rows2003,rows2004,rows2005,rows2006,rows2007,List.append_assoc,List.append_nil]
theorem partOpsLength30 : partOps30.length=64 := by decide
theorem partStats30 : partRows30.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows30=371784 := by
  simp only [partRows30,List.length_append,MatrixRowBlocks.rows_weight_append,stats1944.1,stats1944.2,stats1945.1,stats1945.2,stats1946.1,stats1946.2,stats1947.1,stats1947.2,stats1948.1,stats1948.2,stats1949.1,stats1949.2,stats1950.1,stats1950.2,stats1951.1,stats1951.2,stats1952.1,stats1952.2,stats1953.1,stats1953.2,stats1954.1,stats1954.2,stats1955.1,stats1955.2,stats1956.1,stats1956.2,stats1957.1,stats1957.2,stats1958.1,stats1958.2,stats1959.1,stats1959.2,stats1960.1,stats1960.2,stats1961.1,stats1961.2,stats1962.1,stats1962.2,stats1963.1,stats1963.2,stats1964.1,stats1964.2,stats1965.1,stats1965.2,stats1966.1,stats1966.2,stats1967.1,stats1967.2,stats1968.1,stats1968.2,stats1969.1,stats1969.2,stats1970.1,stats1970.2,stats1971.1,stats1971.2,stats1972.1,stats1972.2,stats1973.1,stats1973.2,stats1974.1,stats1974.2,stats1975.1,stats1975.2,stats1976.1,stats1976.2,stats1977.1,stats1977.2,stats1978.1,stats1978.2,stats1979.1,stats1979.2,stats1980.1,stats1980.2,stats1981.1,stats1981.2,stats1982.1,stats1982.2,stats1983.1,stats1983.2,stats1984.1,stats1984.2,stats1985.1,stats1985.2,stats1986.1,stats1986.2,stats1987.1,stats1987.2,stats1988.1,stats1988.2,stats1989.1,stats1989.2,stats1990.1,stats1990.2,stats1991.1,stats1991.2,stats1992.1,stats1992.2,stats1993.1,stats1993.2,stats1994.1,stats1994.2,stats1995.1,stats1995.2,stats1996.1,stats1996.2,stats1997.1,stats1997.2,stats1998.1,stats1998.2,stats1999.1,stats1999.2,stats2000.1,stats2000.2,stats2001.1,stats2001.2,stats2002.1,stats2002.2,stats2003.1,stats2003.2,stats2004.1,stats2004.2,stats2005.1,stats2005.2,stats2006.1,stats2006.2,stats2007.1,stats2007.2]
  decide
end ActualSHAMatrixRows
