import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData31
import FrameHashControllerInstructionMatrixData32
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2027 : actualRows2027=WordField.canonicalRows actualModulus 2027 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2027 : actualRows2027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2027=2892 := by core033_kernel_decide
theorem rows2028 : actualRows2028=WordField.canonicalRows actualModulus 2028 (.badd 2026 2027) := by core033_kernel_decide
theorem stats2028 : actualRows2028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2028=5388 := by core033_kernel_decide
theorem rows2029 : actualRows2029=WordField.canonicalRows actualModulus 2029 (.bnot 2028) := by core033_kernel_decide
theorem stats2029 : actualRows2029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2029=6276 := by core033_kernel_decide
theorem rows2030 : actualRows2030=WordField.canonicalRows actualModulus 2030 (.band 2029 830) := by core033_kernel_decide
theorem stats2030 : actualRows2030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2030=5124 := by core033_kernel_decide
theorem rows2031 : actualRows2031=WordField.canonicalRows actualModulus 2031 (.bxor 2004 2030) := by core033_kernel_decide
theorem stats2031 : actualRows2031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2031=7428 := by core033_kernel_decide
theorem rows2032 : actualRows2032=WordField.canonicalRows actualModulus 2032 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2032 : actualRows2032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2032=2892 := by core033_kernel_decide
theorem rows2033 : actualRows2033=WordField.canonicalRows actualModulus 2033 (.bxor 0 2032) := by core033_kernel_decide
theorem stats2033 : actualRows2033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2033=7428 := by core033_kernel_decide
theorem rows2034 : actualRows2034=WordField.canonicalRows actualModulus 2034 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2034 : actualRows2034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2034=2820 := by core033_kernel_decide
theorem rows2035 : actualRows2035=WordField.canonicalRows actualModulus 2035 (.bnot 2034) := by core033_kernel_decide
theorem stats2035 : actualRows2035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2035=6276 := by core033_kernel_decide
theorem rows2036 : actualRows2036=WordField.canonicalRows actualModulus 2036 (.band 2033 2035) := by core033_kernel_decide
theorem stats2036 : actualRows2036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2036=5124 := by core033_kernel_decide
theorem rows2037 : actualRows2037=WordField.canonicalRows actualModulus 2037 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2037 : actualRows2037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2037=2892 := by core033_kernel_decide
theorem rows2038 : actualRows2038=WordField.canonicalRows actualModulus 2038 (.bxor 0 2037) := by core033_kernel_decide
theorem stats2038 : actualRows2038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2038=7428 := by core033_kernel_decide
theorem rows2039 : actualRows2039=WordField.canonicalRows actualModulus 2039 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2039 : actualRows2039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2039=2820 := by core033_kernel_decide
theorem rows2040 : actualRows2040=WordField.canonicalRows actualModulus 2040 (.bnot 2039) := by core033_kernel_decide
theorem stats2040 : actualRows2040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2040=6276 := by core033_kernel_decide
theorem rows2041 : actualRows2041=WordField.canonicalRows actualModulus 2041 (.bxor 2038 2040) := by core033_kernel_decide
theorem stats2041 : actualRows2041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2041=7428 := by core033_kernel_decide
theorem rows2042 : actualRows2042=WordField.canonicalRows actualModulus 2042 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2042 : actualRows2042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2042=2892 := by core033_kernel_decide
theorem rows2043 : actualRows2043=WordField.canonicalRows actualModulus 2043 (.bxor 0 2042) := by core033_kernel_decide
theorem stats2043 : actualRows2043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2043=7428 := by core033_kernel_decide
theorem rows2044 : actualRows2044=WordField.canonicalRows actualModulus 2044 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2044 : actualRows2044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2044=2820 := by core033_kernel_decide
theorem rows2045 : actualRows2045=WordField.canonicalRows actualModulus 2045 (.bnot 2044) := by core033_kernel_decide
theorem stats2045 : actualRows2045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2045=6276 := by core033_kernel_decide
theorem rows2046 : actualRows2046=WordField.canonicalRows actualModulus 2046 (.badd 2043 2045) := by core033_kernel_decide
theorem stats2046 : actualRows2046.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2046=5388 := by core033_kernel_decide
theorem rows2047 : actualRows2047=WordField.canonicalRows actualModulus 2047 (.bnot 2046) := by core033_kernel_decide
theorem stats2047 : actualRows2047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2047=6276 := by core033_kernel_decide
theorem rows2048 : actualRows2048=WordField.canonicalRows actualModulus 2048 (.band 2041 2047) := by core033_kernel_decide
theorem stats2048 : actualRows2048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2048=5124 := by core033_kernel_decide
theorem rows2049 : actualRows2049=WordField.canonicalRows actualModulus 2049 (.bxor 2036 2048) := by core033_kernel_decide
theorem stats2049 : actualRows2049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2049=7428 := by core033_kernel_decide
theorem rows2050 : actualRows2050=WordField.canonicalRows actualModulus 2050 (.shr 2049 31) := by core033_kernel_decide
theorem stats2050 : actualRows2050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2050=2892 := by core033_kernel_decide
theorem rows2051 : actualRows2051=WordField.canonicalRows actualModulus 2051 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2051 : actualRows2051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2051=2892 := by core033_kernel_decide
theorem rows2052 : actualRows2052=WordField.canonicalRows actualModulus 2052 (.bxor 2050 2051) := by core033_kernel_decide
theorem stats2052 : actualRows2052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2052=7428 := by core033_kernel_decide
theorem rows2053 : actualRows2053=WordField.canonicalRows actualModulus 2053 (.bnot 2052) := by core033_kernel_decide
theorem stats2053 : actualRows2053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2053=6276 := by core033_kernel_decide
theorem rows2054 : actualRows2054=WordField.canonicalRows actualModulus 2054 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2054 : actualRows2054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2054=2892 := by core033_kernel_decide
theorem rows2055 : actualRows2055=WordField.canonicalRows actualModulus 2055 (.badd 2053 2054) := by core033_kernel_decide
theorem stats2055 : actualRows2055.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2055=5388 := by core033_kernel_decide
theorem rows2056 : actualRows2056=WordField.canonicalRows actualModulus 2056 (.band 2055 989) := by core033_kernel_decide
theorem stats2056 : actualRows2056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2056=5124 := by core033_kernel_decide
theorem rows2057 : actualRows2057=WordField.canonicalRows actualModulus 2057 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2057 : actualRows2057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2057=2892 := by core033_kernel_decide
theorem rows2058 : actualRows2058=WordField.canonicalRows actualModulus 2058 (.bxor 0 2057) := by core033_kernel_decide
theorem stats2058 : actualRows2058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2058=7428 := by core033_kernel_decide
theorem rows2059 : actualRows2059=WordField.canonicalRows actualModulus 2059 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2059 : actualRows2059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2059=2820 := by core033_kernel_decide
theorem rows2060 : actualRows2060=WordField.canonicalRows actualModulus 2060 (.bnot 2059) := by core033_kernel_decide
theorem stats2060 : actualRows2060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2060=6276 := by core033_kernel_decide
theorem rows2061 : actualRows2061=WordField.canonicalRows actualModulus 2061 (.band 2058 2060) := by core033_kernel_decide
theorem stats2061 : actualRows2061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2061=5124 := by core033_kernel_decide
theorem rows2062 : actualRows2062=WordField.canonicalRows actualModulus 2062 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2062 : actualRows2062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2062=2892 := by core033_kernel_decide
theorem rows2063 : actualRows2063=WordField.canonicalRows actualModulus 2063 (.bxor 0 2062) := by core033_kernel_decide
theorem stats2063 : actualRows2063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2063=7428 := by core033_kernel_decide
theorem rows2064 : actualRows2064=WordField.canonicalRows actualModulus 2064 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2064 : actualRows2064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2064=2820 := by core033_kernel_decide
theorem rows2065 : actualRows2065=WordField.canonicalRows actualModulus 2065 (.bnot 2064) := by core033_kernel_decide
theorem stats2065 : actualRows2065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2065=6276 := by core033_kernel_decide
theorem rows2066 : actualRows2066=WordField.canonicalRows actualModulus 2066 (.bxor 2063 2065) := by core033_kernel_decide
theorem stats2066 : actualRows2066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2066=7428 := by core033_kernel_decide
theorem rows2067 : actualRows2067=WordField.canonicalRows actualModulus 2067 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2067 : actualRows2067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2067=2892 := by core033_kernel_decide
theorem rows2068 : actualRows2068=WordField.canonicalRows actualModulus 2068 (.bxor 0 2067) := by core033_kernel_decide
theorem stats2068 : actualRows2068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2068=7428 := by core033_kernel_decide
theorem rows2069 : actualRows2069=WordField.canonicalRows actualModulus 2069 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2069 : actualRows2069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2069=2820 := by core033_kernel_decide
theorem rows2070 : actualRows2070=WordField.canonicalRows actualModulus 2070 (.bnot 2069) := by core033_kernel_decide
theorem stats2070 : actualRows2070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2070=6276 := by core033_kernel_decide
theorem rows2071 : actualRows2071=WordField.canonicalRows actualModulus 2071 (.badd 2068 2070) := by core033_kernel_decide
theorem stats2071 : actualRows2071.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2071=5388 := by core033_kernel_decide
theorem rows2072 : actualRows2072=WordField.canonicalRows actualModulus 2072 (.bnot 2071) := by core033_kernel_decide
theorem stats2072 : actualRows2072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2072=6276 := by core033_kernel_decide
theorem rows2073 : actualRows2073=WordField.canonicalRows actualModulus 2073 (.band 2066 2072) := by core033_kernel_decide
theorem stats2073 : actualRows2073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2073=5124 := by core033_kernel_decide
theorem rows2074 : actualRows2074=WordField.canonicalRows actualModulus 2074 (.bxor 2061 2073) := by core033_kernel_decide
theorem stats2074 : actualRows2074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2074=7428 := by core033_kernel_decide
theorem rows2075 : actualRows2075=WordField.canonicalRows actualModulus 2075 (.shr 2074 31) := by core033_kernel_decide
theorem stats2075 : actualRows2075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2075=2892 := by core033_kernel_decide
theorem rows2076 : actualRows2076=WordField.canonicalRows actualModulus 2076 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2076 : actualRows2076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2076=2892 := by core033_kernel_decide
theorem rows2077 : actualRows2077=WordField.canonicalRows actualModulus 2077 (.bxor 2075 2076) := by core033_kernel_decide
theorem stats2077 : actualRows2077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2077=7428 := by core033_kernel_decide
theorem rows2078 : actualRows2078=WordField.canonicalRows actualModulus 2078 (.bnot 2077) := by core033_kernel_decide
theorem stats2078 : actualRows2078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2078=6276 := by core033_kernel_decide
theorem rows2079 : actualRows2079=WordField.canonicalRows actualModulus 2079 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2079 : actualRows2079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2079=2892 := by core033_kernel_decide
theorem rows2080 : actualRows2080=WordField.canonicalRows actualModulus 2080 (.badd 2078 2079) := by core033_kernel_decide
theorem stats2080 : actualRows2080.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2080=5388 := by core033_kernel_decide
theorem rows2081 : actualRows2081=WordField.canonicalRows actualModulus 2081 (.bnot 2080) := by core033_kernel_decide
theorem stats2081 : actualRows2081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2081=6276 := by core033_kernel_decide
theorem rows2082 : actualRows2082=WordField.canonicalRows actualModulus 2082 (.band 2081 831) := by core033_kernel_decide
theorem stats2082 : actualRows2082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2082=5124 := by core033_kernel_decide
theorem rows2083 : actualRows2083=WordField.canonicalRows actualModulus 2083 (.bxor 2056 2082) := by core033_kernel_decide
theorem stats2083 : actualRows2083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2083=7428 := by core033_kernel_decide
theorem rows2084 : actualRows2084=WordField.canonicalRows actualModulus 2084 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2084 : actualRows2084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2084=2892 := by core033_kernel_decide
theorem rows2085 : actualRows2085=WordField.canonicalRows actualModulus 2085 (.bxor 0 2084) := by core033_kernel_decide
theorem stats2085 : actualRows2085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2085=7428 := by core033_kernel_decide
theorem rows2086 : actualRows2086=WordField.canonicalRows actualModulus 2086 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2086 : actualRows2086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2086=2820 := by core033_kernel_decide
theorem rows2087 : actualRows2087=WordField.canonicalRows actualModulus 2087 (.bnot 2086) := by core033_kernel_decide
theorem stats2087 : actualRows2087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2087=6276 := by core033_kernel_decide
theorem rows2088 : actualRows2088=WordField.canonicalRows actualModulus 2088 (.band 2085 2087) := by core033_kernel_decide
theorem stats2088 : actualRows2088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2088=5124 := by core033_kernel_decide
theorem rows2089 : actualRows2089=WordField.canonicalRows actualModulus 2089 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2089 : actualRows2089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2089=2892 := by core033_kernel_decide
theorem rows2090 : actualRows2090=WordField.canonicalRows actualModulus 2090 (.bxor 0 2089) := by core033_kernel_decide
theorem stats2090 : actualRows2090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2090=7428 := by core033_kernel_decide
def partRows31 : List R1CS.Row := actualRows2027++actualRows2028++actualRows2029++actualRows2030++actualRows2031++actualRows2032++actualRows2033++actualRows2034++actualRows2035++actualRows2036++actualRows2037++actualRows2038++actualRows2039++actualRows2040++actualRows2041++actualRows2042++actualRows2043++actualRows2044++actualRows2045++actualRows2046++actualRows2047++actualRows2048++actualRows2049++actualRows2050++actualRows2051++actualRows2052++actualRows2053++actualRows2054++actualRows2055++actualRows2056++actualRows2057++actualRows2058++actualRows2059++actualRows2060++actualRows2061++actualRows2062++actualRows2063++actualRows2064++actualRows2065++actualRows2066++actualRows2067++actualRows2068++actualRows2069++actualRows2070++actualRows2071++actualRows2072++actualRows2073++actualRows2074++actualRows2075++actualRows2076++actualRows2077++actualRows2078++actualRows2079++actualRows2080++actualRows2081++actualRows2082++actualRows2083++actualRows2084++actualRows2085++actualRows2086++actualRows2087++actualRows2088++actualRows2089++actualRows2090
def partOps31 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 2026 2027,.bnot 2028,.band 2029 830,.bxor 2004 2030,.literal (BitVec.ofNat 32 2),.bxor 0 2032,.literal (BitVec.ofNat 32 0),.bnot 2034,.band 2033 2035,.literal (BitVec.ofNat 32 2),.bxor 0 2037,.literal (BitVec.ofNat 32 0),.bnot 2039,.bxor 2038 2040,.literal (BitVec.ofNat 32 2),.bxor 0 2042,.literal (BitVec.ofNat 32 0),.bnot 2044,.badd 2043 2045,.bnot 2046,.band 2041 2047,.bxor 2036 2048,.shr 2049 31,.literal (BitVec.ofNat 32 1),.bxor 2050 2051,.bnot 2052,.literal (BitVec.ofNat 32 1),.badd 2053 2054,.band 2055 989,.literal (BitVec.ofNat 32 2),.bxor 0 2057,.literal (BitVec.ofNat 32 0),.bnot 2059,.band 2058 2060,.literal (BitVec.ofNat 32 2),.bxor 0 2062,.literal (BitVec.ofNat 32 0),.bnot 2064,.bxor 2063 2065,.literal (BitVec.ofNat 32 2),.bxor 0 2067,.literal (BitVec.ofNat 32 0),.bnot 2069,.badd 2068 2070,.bnot 2071,.band 2066 2072,.bxor 2061 2073,.shr 2074 31,.literal (BitVec.ofNat 32 1),.bxor 2075 2076,.bnot 2077,.literal (BitVec.ofNat 32 1),.badd 2078 2079,.bnot 2080,.band 2081 831,.bxor 2056 2082,.literal (BitVec.ofNat 32 2),.bxor 0 2084,.literal (BitVec.ofNat 32 0),.bnot 2086,.band 2085 2087,.literal (BitVec.ofNat 32 2),.bxor 0 2089]
theorem partExact31 : partRows31=WordField.rows actualModulus 2027 partOps31 := by
  simp only [partRows31,partOps31,WordField.rows,rows2027,rows2028,rows2029,rows2030,rows2031,rows2032,rows2033,rows2034,rows2035,rows2036,rows2037,rows2038,rows2039,rows2040,rows2041,rows2042,rows2043,rows2044,rows2045,rows2046,rows2047,rows2048,rows2049,rows2050,rows2051,rows2052,rows2053,rows2054,rows2055,rows2056,rows2057,rows2058,rows2059,rows2060,rows2061,rows2062,rows2063,rows2064,rows2065,rows2066,rows2067,rows2068,rows2069,rows2070,rows2071,rows2072,rows2073,rows2074,rows2075,rows2076,rows2077,rows2078,rows2079,rows2080,rows2081,rows2082,rows2083,rows2084,rows2085,rows2086,rows2087,rows2088,rows2089,rows2090,List.append_assoc,List.append_nil]
theorem partLength31 : partOps31.length=64 := by decide
theorem partStats31 : partRows31.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows31=331488 := by
  simp only [partRows31,List.length_append,MatrixRowBlocks.rows_weight_append,stats2027.1,stats2027.2,stats2028.1,stats2028.2,stats2029.1,stats2029.2,stats2030.1,stats2030.2,stats2031.1,stats2031.2,stats2032.1,stats2032.2,stats2033.1,stats2033.2,stats2034.1,stats2034.2,stats2035.1,stats2035.2,stats2036.1,stats2036.2,stats2037.1,stats2037.2,stats2038.1,stats2038.2,stats2039.1,stats2039.2,stats2040.1,stats2040.2,stats2041.1,stats2041.2,stats2042.1,stats2042.2,stats2043.1,stats2043.2,stats2044.1,stats2044.2,stats2045.1,stats2045.2,stats2046.1,stats2046.2,stats2047.1,stats2047.2,stats2048.1,stats2048.2,stats2049.1,stats2049.2,stats2050.1,stats2050.2,stats2051.1,stats2051.2,stats2052.1,stats2052.2,stats2053.1,stats2053.2,stats2054.1,stats2054.2,stats2055.1,stats2055.2,stats2056.1,stats2056.2,stats2057.1,stats2057.2,stats2058.1,stats2058.2,stats2059.1,stats2059.2,stats2060.1,stats2060.2,stats2061.1,stats2061.2,stats2062.1,stats2062.2,stats2063.1,stats2063.2,stats2064.1,stats2064.2,stats2065.1,stats2065.2,stats2066.1,stats2066.2,stats2067.1,stats2067.2,stats2068.1,stats2068.2,stats2069.1,stats2069.2,stats2070.1,stats2070.2,stats2071.1,stats2071.2,stats2072.1,stats2072.2,stats2073.1,stats2073.2,stats2074.1,stats2074.2,stats2075.1,stats2075.2,stats2076.1,stats2076.2,stats2077.1,stats2077.2,stats2078.1,stats2078.2,stats2079.1,stats2079.2,stats2080.1,stats2080.2,stats2081.1,stats2081.2,stats2082.1,stats2082.2,stats2083.1,stats2083.2,stats2084.1,stats2084.2,stats2085.1,stats2085.2,stats2086.1,stats2086.2,stats2087.1,stats2087.2,stats2088.1,stats2088.2,stats2089.1,stats2089.2,stats2090.1,stats2090.2]
  decide
end FrameHashControllerCheckedRows
