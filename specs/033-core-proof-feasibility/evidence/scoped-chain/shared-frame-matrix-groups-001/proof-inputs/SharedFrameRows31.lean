import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData31
import SharedFrameInstructionMatrixData32
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2027 : actualRows2027=WordField.canonicalRows actualModulus 2027 (.bxor 2025 2026) := by core033_kernel_decide
theorem stats2027 : actualRows2027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2027=7428 := by core033_kernel_decide
theorem rows2028 : actualRows2028=WordField.canonicalRows actualModulus 2028 (.badd 2027 1944) := by core033_kernel_decide
theorem stats2028 : actualRows2028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2028=5388 := by core033_kernel_decide
theorem rows2029 : actualRows2029=WordField.canonicalRows actualModulus 2029 (.rotr 1840 7) := by core033_kernel_decide
theorem stats2029 : actualRows2029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2029=5124 := by core033_kernel_decide
theorem rows2030 : actualRows2030=WordField.canonicalRows actualModulus 2030 (.rotr 1840 18) := by core033_kernel_decide
theorem stats2030 : actualRows2030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2030=5124 := by core033_kernel_decide
theorem rows2031 : actualRows2031=WordField.canonicalRows actualModulus 2031 (.bxor 2029 2030) := by core033_kernel_decide
theorem stats2031 : actualRows2031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2031=7428 := by core033_kernel_decide
theorem rows2032 : actualRows2032=WordField.canonicalRows actualModulus 2032 (.shr 1840 3) := by core033_kernel_decide
theorem stats2032 : actualRows2032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2032=4908 := by core033_kernel_decide
theorem rows2033 : actualRows2033=WordField.canonicalRows actualModulus 2033 (.bxor 2031 2032) := by core033_kernel_decide
theorem stats2033 : actualRows2033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2033=7428 := by core033_kernel_decide
theorem rows2034 : actualRows2034=WordField.canonicalRows actualModulus 2034 (.badd 2028 2033) := by core033_kernel_decide
theorem stats2034 : actualRows2034.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2034=5388 := by core033_kernel_decide
theorem rows2035 : actualRows2035=WordField.canonicalRows actualModulus 2035 (.badd 2034 1827) := by core033_kernel_decide
theorem stats2035 : actualRows2035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2035=5388 := by core033_kernel_decide
theorem rows2036 : actualRows2036=WordField.canonicalRows actualModulus 2036 (.rotr 2022 17) := by core033_kernel_decide
theorem stats2036 : actualRows2036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2036=5124 := by core033_kernel_decide
theorem rows2037 : actualRows2037=WordField.canonicalRows actualModulus 2037 (.rotr 2022 19) := by core033_kernel_decide
theorem stats2037 : actualRows2037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2037=5124 := by core033_kernel_decide
theorem rows2038 : actualRows2038=WordField.canonicalRows actualModulus 2038 (.bxor 2036 2037) := by core033_kernel_decide
theorem stats2038 : actualRows2038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2038=7428 := by core033_kernel_decide
theorem rows2039 : actualRows2039=WordField.canonicalRows actualModulus 2039 (.shr 2022 10) := by core033_kernel_decide
theorem stats2039 : actualRows2039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2039=4404 := by core033_kernel_decide
theorem rows2040 : actualRows2040=WordField.canonicalRows actualModulus 2040 (.bxor 2038 2039) := by core033_kernel_decide
theorem stats2040 : actualRows2040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2040=7428 := by core033_kernel_decide
theorem rows2041 : actualRows2041=WordField.canonicalRows actualModulus 2041 (.badd 2040 1957) := by core033_kernel_decide
theorem stats2041 : actualRows2041.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2041=5388 := by core033_kernel_decide
theorem rows2042 : actualRows2042=WordField.canonicalRows actualModulus 2042 (.rotr 1853 7) := by core033_kernel_decide
theorem stats2042 : actualRows2042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2042=5124 := by core033_kernel_decide
theorem rows2043 : actualRows2043=WordField.canonicalRows actualModulus 2043 (.rotr 1853 18) := by core033_kernel_decide
theorem stats2043 : actualRows2043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2043=5124 := by core033_kernel_decide
theorem rows2044 : actualRows2044=WordField.canonicalRows actualModulus 2044 (.bxor 2042 2043) := by core033_kernel_decide
theorem stats2044 : actualRows2044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2044=7428 := by core033_kernel_decide
theorem rows2045 : actualRows2045=WordField.canonicalRows actualModulus 2045 (.shr 1853 3) := by core033_kernel_decide
theorem stats2045 : actualRows2045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2045=4908 := by core033_kernel_decide
theorem rows2046 : actualRows2046=WordField.canonicalRows actualModulus 2046 (.bxor 2044 2045) := by core033_kernel_decide
theorem stats2046 : actualRows2046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2046=7428 := by core033_kernel_decide
theorem rows2047 : actualRows2047=WordField.canonicalRows actualModulus 2047 (.badd 2041 2046) := by core033_kernel_decide
theorem stats2047 : actualRows2047.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2047=5388 := by core033_kernel_decide
theorem rows2048 : actualRows2048=WordField.canonicalRows actualModulus 2048 (.badd 2047 1840) := by core033_kernel_decide
theorem stats2048 : actualRows2048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2048=5388 := by core033_kernel_decide
theorem rows2049 : actualRows2049=WordField.canonicalRows actualModulus 2049 (.rotr 2035 17) := by core033_kernel_decide
theorem stats2049 : actualRows2049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2049=5124 := by core033_kernel_decide
theorem rows2050 : actualRows2050=WordField.canonicalRows actualModulus 2050 (.rotr 2035 19) := by core033_kernel_decide
theorem stats2050 : actualRows2050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2050=5124 := by core033_kernel_decide
theorem rows2051 : actualRows2051=WordField.canonicalRows actualModulus 2051 (.bxor 2049 2050) := by core033_kernel_decide
theorem stats2051 : actualRows2051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2051=7428 := by core033_kernel_decide
theorem rows2052 : actualRows2052=WordField.canonicalRows actualModulus 2052 (.shr 2035 10) := by core033_kernel_decide
theorem stats2052 : actualRows2052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2052=4404 := by core033_kernel_decide
theorem rows2053 : actualRows2053=WordField.canonicalRows actualModulus 2053 (.bxor 2051 2052) := by core033_kernel_decide
theorem stats2053 : actualRows2053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2053=7428 := by core033_kernel_decide
theorem rows2054 : actualRows2054=WordField.canonicalRows actualModulus 2054 (.badd 2053 1970) := by core033_kernel_decide
theorem stats2054 : actualRows2054.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2054=5388 := by core033_kernel_decide
theorem rows2055 : actualRows2055=WordField.canonicalRows actualModulus 2055 (.rotr 1866 7) := by core033_kernel_decide
theorem stats2055 : actualRows2055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2055=5124 := by core033_kernel_decide
theorem rows2056 : actualRows2056=WordField.canonicalRows actualModulus 2056 (.rotr 1866 18) := by core033_kernel_decide
theorem stats2056 : actualRows2056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2056=5124 := by core033_kernel_decide
theorem rows2057 : actualRows2057=WordField.canonicalRows actualModulus 2057 (.bxor 2055 2056) := by core033_kernel_decide
theorem stats2057 : actualRows2057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2057=7428 := by core033_kernel_decide
theorem rows2058 : actualRows2058=WordField.canonicalRows actualModulus 2058 (.shr 1866 3) := by core033_kernel_decide
theorem stats2058 : actualRows2058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2058=4908 := by core033_kernel_decide
theorem rows2059 : actualRows2059=WordField.canonicalRows actualModulus 2059 (.bxor 2057 2058) := by core033_kernel_decide
theorem stats2059 : actualRows2059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2059=7428 := by core033_kernel_decide
theorem rows2060 : actualRows2060=WordField.canonicalRows actualModulus 2060 (.badd 2054 2059) := by core033_kernel_decide
theorem stats2060 : actualRows2060.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2060=5388 := by core033_kernel_decide
theorem rows2061 : actualRows2061=WordField.canonicalRows actualModulus 2061 (.badd 2060 1853) := by core033_kernel_decide
theorem stats2061 : actualRows2061.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2061=5388 := by core033_kernel_decide
theorem rows2062 : actualRows2062=WordField.canonicalRows actualModulus 2062 (.rotr 2048 17) := by core033_kernel_decide
theorem stats2062 : actualRows2062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2062=5124 := by core033_kernel_decide
theorem rows2063 : actualRows2063=WordField.canonicalRows actualModulus 2063 (.rotr 2048 19) := by core033_kernel_decide
theorem stats2063 : actualRows2063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2063=5124 := by core033_kernel_decide
theorem rows2064 : actualRows2064=WordField.canonicalRows actualModulus 2064 (.bxor 2062 2063) := by core033_kernel_decide
theorem stats2064 : actualRows2064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2064=7428 := by core033_kernel_decide
theorem rows2065 : actualRows2065=WordField.canonicalRows actualModulus 2065 (.shr 2048 10) := by core033_kernel_decide
theorem stats2065 : actualRows2065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2065=4404 := by core033_kernel_decide
theorem rows2066 : actualRows2066=WordField.canonicalRows actualModulus 2066 (.bxor 2064 2065) := by core033_kernel_decide
theorem stats2066 : actualRows2066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2066=7428 := by core033_kernel_decide
theorem rows2067 : actualRows2067=WordField.canonicalRows actualModulus 2067 (.badd 2066 1983) := by core033_kernel_decide
theorem stats2067 : actualRows2067.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2067=5388 := by core033_kernel_decide
theorem rows2068 : actualRows2068=WordField.canonicalRows actualModulus 2068 (.rotr 1879 7) := by core033_kernel_decide
theorem stats2068 : actualRows2068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2068=5124 := by core033_kernel_decide
theorem rows2069 : actualRows2069=WordField.canonicalRows actualModulus 2069 (.rotr 1879 18) := by core033_kernel_decide
theorem stats2069 : actualRows2069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2069=5124 := by core033_kernel_decide
theorem rows2070 : actualRows2070=WordField.canonicalRows actualModulus 2070 (.bxor 2068 2069) := by core033_kernel_decide
theorem stats2070 : actualRows2070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2070=7428 := by core033_kernel_decide
theorem rows2071 : actualRows2071=WordField.canonicalRows actualModulus 2071 (.shr 1879 3) := by core033_kernel_decide
theorem stats2071 : actualRows2071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2071=4908 := by core033_kernel_decide
theorem rows2072 : actualRows2072=WordField.canonicalRows actualModulus 2072 (.bxor 2070 2071) := by core033_kernel_decide
theorem stats2072 : actualRows2072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2072=7428 := by core033_kernel_decide
theorem rows2073 : actualRows2073=WordField.canonicalRows actualModulus 2073 (.badd 2067 2072) := by core033_kernel_decide
theorem stats2073 : actualRows2073.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2073=5388 := by core033_kernel_decide
theorem rows2074 : actualRows2074=WordField.canonicalRows actualModulus 2074 (.badd 2073 1866) := by core033_kernel_decide
theorem stats2074 : actualRows2074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2074=5388 := by core033_kernel_decide
theorem rows2075 : actualRows2075=WordField.canonicalRows actualModulus 2075 (.rotr 2061 17) := by core033_kernel_decide
theorem stats2075 : actualRows2075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2075=5124 := by core033_kernel_decide
theorem rows2076 : actualRows2076=WordField.canonicalRows actualModulus 2076 (.rotr 2061 19) := by core033_kernel_decide
theorem stats2076 : actualRows2076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2076=5124 := by core033_kernel_decide
theorem rows2077 : actualRows2077=WordField.canonicalRows actualModulus 2077 (.bxor 2075 2076) := by core033_kernel_decide
theorem stats2077 : actualRows2077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2077=7428 := by core033_kernel_decide
theorem rows2078 : actualRows2078=WordField.canonicalRows actualModulus 2078 (.shr 2061 10) := by core033_kernel_decide
theorem stats2078 : actualRows2078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2078=4404 := by core033_kernel_decide
theorem rows2079 : actualRows2079=WordField.canonicalRows actualModulus 2079 (.bxor 2077 2078) := by core033_kernel_decide
theorem stats2079 : actualRows2079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2079=7428 := by core033_kernel_decide
theorem rows2080 : actualRows2080=WordField.canonicalRows actualModulus 2080 (.badd 2079 1996) := by core033_kernel_decide
theorem stats2080 : actualRows2080.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2080=5388 := by core033_kernel_decide
theorem rows2081 : actualRows2081=WordField.canonicalRows actualModulus 2081 (.rotr 1892 7) := by core033_kernel_decide
theorem stats2081 : actualRows2081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2081=5124 := by core033_kernel_decide
theorem rows2082 : actualRows2082=WordField.canonicalRows actualModulus 2082 (.rotr 1892 18) := by core033_kernel_decide
theorem stats2082 : actualRows2082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2082=5124 := by core033_kernel_decide
theorem rows2083 : actualRows2083=WordField.canonicalRows actualModulus 2083 (.bxor 2081 2082) := by core033_kernel_decide
theorem stats2083 : actualRows2083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2083=7428 := by core033_kernel_decide
theorem rows2084 : actualRows2084=WordField.canonicalRows actualModulus 2084 (.shr 1892 3) := by core033_kernel_decide
theorem stats2084 : actualRows2084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2084=4908 := by core033_kernel_decide
theorem rows2085 : actualRows2085=WordField.canonicalRows actualModulus 2085 (.bxor 2083 2084) := by core033_kernel_decide
theorem stats2085 : actualRows2085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2085=7428 := by core033_kernel_decide
theorem rows2086 : actualRows2086=WordField.canonicalRows actualModulus 2086 (.badd 2080 2085) := by core033_kernel_decide
theorem stats2086 : actualRows2086.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2086=5388 := by core033_kernel_decide
theorem rows2087 : actualRows2087=WordField.canonicalRows actualModulus 2087 (.badd 2086 1879) := by core033_kernel_decide
theorem stats2087 : actualRows2087.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2087=5388 := by core033_kernel_decide
theorem rows2088 : actualRows2088=WordField.canonicalRows actualModulus 2088 (.rotr 2074 17) := by core033_kernel_decide
theorem stats2088 : actualRows2088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2088=5124 := by core033_kernel_decide
theorem rows2089 : actualRows2089=WordField.canonicalRows actualModulus 2089 (.rotr 2074 19) := by core033_kernel_decide
theorem stats2089 : actualRows2089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2089=5124 := by core033_kernel_decide
theorem rows2090 : actualRows2090=WordField.canonicalRows actualModulus 2090 (.bxor 2088 2089) := by core033_kernel_decide
theorem stats2090 : actualRows2090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2090=7428 := by core033_kernel_decide
def partRows31 : List R1CS.Row := actualRows2027++actualRows2028++actualRows2029++actualRows2030++actualRows2031++actualRows2032++actualRows2033++actualRows2034++actualRows2035++actualRows2036++actualRows2037++actualRows2038++actualRows2039++actualRows2040++actualRows2041++actualRows2042++actualRows2043++actualRows2044++actualRows2045++actualRows2046++actualRows2047++actualRows2048++actualRows2049++actualRows2050++actualRows2051++actualRows2052++actualRows2053++actualRows2054++actualRows2055++actualRows2056++actualRows2057++actualRows2058++actualRows2059++actualRows2060++actualRows2061++actualRows2062++actualRows2063++actualRows2064++actualRows2065++actualRows2066++actualRows2067++actualRows2068++actualRows2069++actualRows2070++actualRows2071++actualRows2072++actualRows2073++actualRows2074++actualRows2075++actualRows2076++actualRows2077++actualRows2078++actualRows2079++actualRows2080++actualRows2081++actualRows2082++actualRows2083++actualRows2084++actualRows2085++actualRows2086++actualRows2087++actualRows2088++actualRows2089++actualRows2090
def partOps31 : List WordIR.Op := [.bxor 2025 2026,.badd 2027 1944,.rotr 1840 7,.rotr 1840 18,.bxor 2029 2030,.shr 1840 3,.bxor 2031 2032,.badd 2028 2033,.badd 2034 1827,.rotr 2022 17,.rotr 2022 19,.bxor 2036 2037,.shr 2022 10,.bxor 2038 2039,.badd 2040 1957,.rotr 1853 7,.rotr 1853 18,.bxor 2042 2043,.shr 1853 3,.bxor 2044 2045,.badd 2041 2046,.badd 2047 1840,.rotr 2035 17,.rotr 2035 19,.bxor 2049 2050,.shr 2035 10,.bxor 2051 2052,.badd 2053 1970,.rotr 1866 7,.rotr 1866 18,.bxor 2055 2056,.shr 1866 3,.bxor 2057 2058,.badd 2054 2059,.badd 2060 1853,.rotr 2048 17,.rotr 2048 19,.bxor 2062 2063,.shr 2048 10,.bxor 2064 2065,.badd 2066 1983,.rotr 1879 7,.rotr 1879 18,.bxor 2068 2069,.shr 1879 3,.bxor 2070 2071,.badd 2067 2072,.badd 2073 1866,.rotr 2061 17,.rotr 2061 19,.bxor 2075 2076,.shr 2061 10,.bxor 2077 2078,.badd 2079 1996,.rotr 1892 7,.rotr 1892 18,.bxor 2081 2082,.shr 1892 3,.bxor 2083 2084,.badd 2080 2085,.badd 2086 1879,.rotr 2074 17,.rotr 2074 19,.bxor 2088 2089]
theorem partExact31 : partRows31=WordField.rows actualModulus 2027 partOps31 := by
  simp only [partRows31,partOps31,WordField.rows,rows2027,rows2028,rows2029,rows2030,rows2031,rows2032,rows2033,rows2034,rows2035,rows2036,rows2037,rows2038,rows2039,rows2040,rows2041,rows2042,rows2043,rows2044,rows2045,rows2046,rows2047,rows2048,rows2049,rows2050,rows2051,rows2052,rows2053,rows2054,rows2055,rows2056,rows2057,rows2058,rows2059,rows2060,rows2061,rows2062,rows2063,rows2064,rows2065,rows2066,rows2067,rows2068,rows2069,rows2070,rows2071,rows2072,rows2073,rows2074,rows2075,rows2076,rows2077,rows2078,rows2079,rows2080,rows2081,rows2082,rows2083,rows2084,rows2085,rows2086,rows2087,rows2088,rows2089,rows2090,List.append_assoc,List.append_nil]
theorem partLength31 : partOps31.length=64 := by decide
theorem partStats31 : partRows31.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows31=374016 := by
  simp only [partRows31,List.length_append,MatrixRowBlocks.rows_weight_append,stats2027.1,stats2027.2,stats2028.1,stats2028.2,stats2029.1,stats2029.2,stats2030.1,stats2030.2,stats2031.1,stats2031.2,stats2032.1,stats2032.2,stats2033.1,stats2033.2,stats2034.1,stats2034.2,stats2035.1,stats2035.2,stats2036.1,stats2036.2,stats2037.1,stats2037.2,stats2038.1,stats2038.2,stats2039.1,stats2039.2,stats2040.1,stats2040.2,stats2041.1,stats2041.2,stats2042.1,stats2042.2,stats2043.1,stats2043.2,stats2044.1,stats2044.2,stats2045.1,stats2045.2,stats2046.1,stats2046.2,stats2047.1,stats2047.2,stats2048.1,stats2048.2,stats2049.1,stats2049.2,stats2050.1,stats2050.2,stats2051.1,stats2051.2,stats2052.1,stats2052.2,stats2053.1,stats2053.2,stats2054.1,stats2054.2,stats2055.1,stats2055.2,stats2056.1,stats2056.2,stats2057.1,stats2057.2,stats2058.1,stats2058.2,stats2059.1,stats2059.2,stats2060.1,stats2060.2,stats2061.1,stats2061.2,stats2062.1,stats2062.2,stats2063.1,stats2063.2,stats2064.1,stats2064.2,stats2065.1,stats2065.2,stats2066.1,stats2066.2,stats2067.1,stats2067.2,stats2068.1,stats2068.2,stats2069.1,stats2069.2,stats2070.1,stats2070.2,stats2071.1,stats2071.2,stats2072.1,stats2072.2,stats2073.1,stats2073.2,stats2074.1,stats2074.2,stats2075.1,stats2075.2,stats2076.1,stats2076.2,stats2077.1,stats2077.2,stats2078.1,stats2078.2,stats2079.1,stats2079.2,stats2080.1,stats2080.2,stats2081.1,stats2081.2,stats2082.1,stats2082.2,stats2083.1,stats2083.2,stats2084.1,stats2084.2,stats2085.1,stats2085.2,stats2086.1,stats2086.2,stats2087.1,stats2087.2,stats2088.1,stats2088.2,stats2089.1,stats2089.2,stats2090.1,stats2090.2]
  decide
end SharedFrameCheckedRows
