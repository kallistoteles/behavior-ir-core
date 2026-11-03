import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData31
import AuthenticatedBranchRoundInstructionMatrixData32
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2038 : actualRows2038=WordField.canonicalRows actualModulus 2038 (.bnot 2037) := by core033_kernel_decide
theorem stats2038 : actualRows2038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2038=6276 := by core033_kernel_decide
theorem rows2039 : actualRows2039=WordField.canonicalRows actualModulus 2039 (.band 2038 2023) := by core033_kernel_decide
theorem stats2039 : actualRows2039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2039=5124 := by core033_kernel_decide
theorem rows2040 : actualRows2040=WordField.canonicalRows actualModulus 2040 (.bxor 2031 2039) := by core033_kernel_decide
theorem stats2040 : actualRows2040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2040=7428 := by core033_kernel_decide
theorem rows2041 : actualRows2041=WordField.canonicalRows actualModulus 2041 (.shr 1824 4) := by core033_kernel_decide
theorem stats2041 : actualRows2041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2041=4836 := by core033_kernel_decide
theorem rows2042 : actualRows2042=WordField.canonicalRows actualModulus 2042 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2042 : actualRows2042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2042=2892 := by core033_kernel_decide
theorem rows2043 : actualRows2043=WordField.canonicalRows actualModulus 2043 (.band 2041 2042) := by core033_kernel_decide
theorem stats2043 : actualRows2043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2043=5124 := by core033_kernel_decide
theorem rows2044 : actualRows2044=WordField.canonicalRows actualModulus 2044 (.bnot 2043) := by core033_kernel_decide
theorem stats2044 : actualRows2044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2044=6276 := by core033_kernel_decide
theorem rows2045 : actualRows2045=WordField.canonicalRows actualModulus 2045 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2045 : actualRows2045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2045=2892 := by core033_kernel_decide
theorem rows2046 : actualRows2046=WordField.canonicalRows actualModulus 2046 (.badd 2044 2045) := by core033_kernel_decide
theorem stats2046 : actualRows2046.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2046=5388 := by core033_kernel_decide
theorem rows2047 : actualRows2047=WordField.canonicalRows actualModulus 2047 (.shr 2040 16) := by core033_kernel_decide
theorem stats2047 : actualRows2047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2047=3972 := by core033_kernel_decide
theorem rows2048 : actualRows2048=WordField.canonicalRows actualModulus 2048 (.band 2046 2047) := by core033_kernel_decide
theorem stats2048 : actualRows2048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2048=5124 := by core033_kernel_decide
theorem rows2049 : actualRows2049=WordField.canonicalRows actualModulus 2049 (.shr 1824 4) := by core033_kernel_decide
theorem stats2049 : actualRows2049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2049=4836 := by core033_kernel_decide
theorem rows2050 : actualRows2050=WordField.canonicalRows actualModulus 2050 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2050 : actualRows2050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2050=2892 := by core033_kernel_decide
theorem rows2051 : actualRows2051=WordField.canonicalRows actualModulus 2051 (.band 2049 2050) := by core033_kernel_decide
theorem stats2051 : actualRows2051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2051=5124 := by core033_kernel_decide
theorem rows2052 : actualRows2052=WordField.canonicalRows actualModulus 2052 (.bnot 2051) := by core033_kernel_decide
theorem stats2052 : actualRows2052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2052=6276 := by core033_kernel_decide
theorem rows2053 : actualRows2053=WordField.canonicalRows actualModulus 2053 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2053 : actualRows2053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2053=2892 := by core033_kernel_decide
theorem rows2054 : actualRows2054=WordField.canonicalRows actualModulus 2054 (.badd 2052 2053) := by core033_kernel_decide
theorem stats2054 : actualRows2054.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2054=5388 := by core033_kernel_decide
theorem rows2055 : actualRows2055=WordField.canonicalRows actualModulus 2055 (.bnot 2054) := by core033_kernel_decide
theorem stats2055 : actualRows2055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2055=6276 := by core033_kernel_decide
theorem rows2056 : actualRows2056=WordField.canonicalRows actualModulus 2056 (.band 2055 2040) := by core033_kernel_decide
theorem stats2056 : actualRows2056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2056=5124 := by core033_kernel_decide
theorem rows2057 : actualRows2057=WordField.canonicalRows actualModulus 2057 (.bxor 2048 2056) := by core033_kernel_decide
theorem stats2057 : actualRows2057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2057=7428 := by core033_kernel_decide
theorem rows2058 : actualRows2058=WordField.canonicalRows actualModulus 2058 (.shr 1824 5) := by core033_kernel_decide
theorem stats2058 : actualRows2058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2058=4764 := by core033_kernel_decide
theorem rows2059 : actualRows2059=WordField.canonicalRows actualModulus 2059 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2059 : actualRows2059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2059=2820 := by core033_kernel_decide
theorem rows2060 : actualRows2060=WordField.canonicalRows actualModulus 2060 (.bnot 2059) := by core033_kernel_decide
theorem stats2060 : actualRows2060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2060=6276 := by core033_kernel_decide
theorem rows2061 : actualRows2061=WordField.canonicalRows actualModulus 2061 (.band 2058 2060) := by core033_kernel_decide
theorem stats2061 : actualRows2061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2061=5124 := by core033_kernel_decide
theorem rows2062 : actualRows2062=WordField.canonicalRows actualModulus 2062 (.shr 1824 5) := by core033_kernel_decide
theorem stats2062 : actualRows2062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2062=4764 := by core033_kernel_decide
theorem rows2063 : actualRows2063=WordField.canonicalRows actualModulus 2063 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2063 : actualRows2063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2063=2820 := by core033_kernel_decide
theorem rows2064 : actualRows2064=WordField.canonicalRows actualModulus 2064 (.bnot 2063) := by core033_kernel_decide
theorem stats2064 : actualRows2064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2064=6276 := by core033_kernel_decide
theorem rows2065 : actualRows2065=WordField.canonicalRows actualModulus 2065 (.bxor 2062 2064) := by core033_kernel_decide
theorem stats2065 : actualRows2065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2065=7428 := by core033_kernel_decide
theorem rows2066 : actualRows2066=WordField.canonicalRows actualModulus 2066 (.shr 1824 5) := by core033_kernel_decide
theorem stats2066 : actualRows2066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2066=4764 := by core033_kernel_decide
theorem rows2067 : actualRows2067=WordField.canonicalRows actualModulus 2067 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2067 : actualRows2067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2067=2820 := by core033_kernel_decide
theorem rows2068 : actualRows2068=WordField.canonicalRows actualModulus 2068 (.bnot 2067) := by core033_kernel_decide
theorem stats2068 : actualRows2068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2068=6276 := by core033_kernel_decide
theorem rows2069 : actualRows2069=WordField.canonicalRows actualModulus 2069 (.badd 2066 2068) := by core033_kernel_decide
theorem stats2069 : actualRows2069.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2069=5388 := by core033_kernel_decide
theorem rows2070 : actualRows2070=WordField.canonicalRows actualModulus 2070 (.bnot 2069) := by core033_kernel_decide
theorem stats2070 : actualRows2070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2070=6276 := by core033_kernel_decide
theorem rows2071 : actualRows2071=WordField.canonicalRows actualModulus 2071 (.band 2065 2070) := by core033_kernel_decide
theorem stats2071 : actualRows2071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2071=5124 := by core033_kernel_decide
theorem rows2072 : actualRows2072=WordField.canonicalRows actualModulus 2072 (.bxor 2061 2071) := by core033_kernel_decide
theorem stats2072 : actualRows2072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2072=7428 := by core033_kernel_decide
theorem rows2073 : actualRows2073=WordField.canonicalRows actualModulus 2073 (.shr 2072 31) := by core033_kernel_decide
theorem stats2073 : actualRows2073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2073=2892 := by core033_kernel_decide
theorem rows2074 : actualRows2074=WordField.canonicalRows actualModulus 2074 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2074 : actualRows2074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2074=2892 := by core033_kernel_decide
theorem rows2075 : actualRows2075=WordField.canonicalRows actualModulus 2075 (.bxor 2073 2074) := by core033_kernel_decide
theorem stats2075 : actualRows2075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2075=7428 := by core033_kernel_decide
theorem rows2076 : actualRows2076=WordField.canonicalRows actualModulus 2076 (.shr 2057 0) := by core033_kernel_decide
theorem stats2076 : actualRows2076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2076=5124 := by core033_kernel_decide
theorem rows2077 : actualRows2077=WordField.canonicalRows actualModulus 2077 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2077 : actualRows2077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2077=2892 := by core033_kernel_decide
theorem rows2078 : actualRows2078=WordField.canonicalRows actualModulus 2078 (.band 2076 2077) := by core033_kernel_decide
theorem stats2078 : actualRows2078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2078=5124 := by core033_kernel_decide
theorem rows2079 : actualRows2079=WordField.canonicalRows actualModulus 2079 (.bnot 2078) := by core033_kernel_decide
theorem stats2079 : actualRows2079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2079=6276 := by core033_kernel_decide
theorem rows2080 : actualRows2080=WordField.canonicalRows actualModulus 2080 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2080 : actualRows2080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2080=2892 := by core033_kernel_decide
theorem rows2081 : actualRows2081=WordField.canonicalRows actualModulus 2081 (.badd 2079 2080) := by core033_kernel_decide
theorem stats2081 : actualRows2081.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2081=5388 := by core033_kernel_decide
theorem rows2082 : actualRows2082=WordField.canonicalRows actualModulus 2082 (.band 2081 1508) := by core033_kernel_decide
theorem stats2082 : actualRows2082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2082=5124 := by core033_kernel_decide
theorem rows2083 : actualRows2083=WordField.canonicalRows actualModulus 2083 (.bnot 2078) := by core033_kernel_decide
theorem stats2083 : actualRows2083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2083=6276 := by core033_kernel_decide
theorem rows2084 : actualRows2084=WordField.canonicalRows actualModulus 2084 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2084 : actualRows2084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2084=2892 := by core033_kernel_decide
theorem rows2085 : actualRows2085=WordField.canonicalRows actualModulus 2085 (.badd 2083 2084) := by core033_kernel_decide
theorem stats2085 : actualRows2085.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2085=5388 := by core033_kernel_decide
theorem rows2086 : actualRows2086=WordField.canonicalRows actualModulus 2086 (.bnot 2085) := by core033_kernel_decide
theorem stats2086 : actualRows2086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2086=6276 := by core033_kernel_decide
theorem rows2087 : actualRows2087=WordField.canonicalRows actualModulus 2087 (.band 2086 1420) := by core033_kernel_decide
theorem stats2087 : actualRows2087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2087=5124 := by core033_kernel_decide
theorem rows2088 : actualRows2088=WordField.canonicalRows actualModulus 2088 (.bxor 2082 2087) := by core033_kernel_decide
theorem stats2088 : actualRows2088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2088=7428 := by core033_kernel_decide
theorem rows2089 : actualRows2089=WordField.canonicalRows actualModulus 2089 (.bnot 2078) := by core033_kernel_decide
theorem stats2089 : actualRows2089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2089=6276 := by core033_kernel_decide
theorem rows2090 : actualRows2090=WordField.canonicalRows actualModulus 2090 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2090 : actualRows2090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2090=2892 := by core033_kernel_decide
theorem rows2091 : actualRows2091=WordField.canonicalRows actualModulus 2091 (.badd 2089 2090) := by core033_kernel_decide
theorem stats2091 : actualRows2091.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2091=5388 := by core033_kernel_decide
theorem rows2092 : actualRows2092=WordField.canonicalRows actualModulus 2092 (.band 2091 1519) := by core033_kernel_decide
theorem stats2092 : actualRows2092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2092=5124 := by core033_kernel_decide
theorem rows2093 : actualRows2093=WordField.canonicalRows actualModulus 2093 (.bnot 2078) := by core033_kernel_decide
theorem stats2093 : actualRows2093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2093=6276 := by core033_kernel_decide
theorem rows2094 : actualRows2094=WordField.canonicalRows actualModulus 2094 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2094 : actualRows2094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2094=2892 := by core033_kernel_decide
theorem rows2095 : actualRows2095=WordField.canonicalRows actualModulus 2095 (.badd 2093 2094) := by core033_kernel_decide
theorem stats2095 : actualRows2095.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2095=5388 := by core033_kernel_decide
theorem rows2096 : actualRows2096=WordField.canonicalRows actualModulus 2096 (.bnot 2095) := by core033_kernel_decide
theorem stats2096 : actualRows2096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2096=6276 := by core033_kernel_decide
theorem rows2097 : actualRows2097=WordField.canonicalRows actualModulus 2097 (.band 2096 1431) := by core033_kernel_decide
theorem stats2097 : actualRows2097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2097=5124 := by core033_kernel_decide
theorem rows2098 : actualRows2098=WordField.canonicalRows actualModulus 2098 (.bxor 2092 2097) := by core033_kernel_decide
theorem stats2098 : actualRows2098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2098=7428 := by core033_kernel_decide
theorem rows2099 : actualRows2099=WordField.canonicalRows actualModulus 2099 (.bnot 2078) := by core033_kernel_decide
theorem stats2099 : actualRows2099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2099=6276 := by core033_kernel_decide
theorem rows2100 : actualRows2100=WordField.canonicalRows actualModulus 2100 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2100 : actualRows2100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2100=2892 := by core033_kernel_decide
theorem rows2101 : actualRows2101=WordField.canonicalRows actualModulus 2101 (.badd 2099 2100) := by core033_kernel_decide
theorem stats2101 : actualRows2101.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2101=5388 := by core033_kernel_decide
def partRows30 : List R1CS.Row := actualRows2038++actualRows2039++actualRows2040++actualRows2041++actualRows2042++actualRows2043++actualRows2044++actualRows2045++actualRows2046++actualRows2047++actualRows2048++actualRows2049++actualRows2050++actualRows2051++actualRows2052++actualRows2053++actualRows2054++actualRows2055++actualRows2056++actualRows2057++actualRows2058++actualRows2059++actualRows2060++actualRows2061++actualRows2062++actualRows2063++actualRows2064++actualRows2065++actualRows2066++actualRows2067++actualRows2068++actualRows2069++actualRows2070++actualRows2071++actualRows2072++actualRows2073++actualRows2074++actualRows2075++actualRows2076++actualRows2077++actualRows2078++actualRows2079++actualRows2080++actualRows2081++actualRows2082++actualRows2083++actualRows2084++actualRows2085++actualRows2086++actualRows2087++actualRows2088++actualRows2089++actualRows2090++actualRows2091++actualRows2092++actualRows2093++actualRows2094++actualRows2095++actualRows2096++actualRows2097++actualRows2098++actualRows2099++actualRows2100++actualRows2101
def partOps30 : List WordIR.Op := [.bnot 2037,.band 2038 2023,.bxor 2031 2039,.shr 1824 4,.literal (BitVec.ofNat 32 1),.band 2041 2042,.bnot 2043,.literal (BitVec.ofNat 32 1),.badd 2044 2045,.shr 2040 16,.band 2046 2047,.shr 1824 4,.literal (BitVec.ofNat 32 1),.band 2049 2050,.bnot 2051,.literal (BitVec.ofNat 32 1),.badd 2052 2053,.bnot 2054,.band 2055 2040,.bxor 2048 2056,.shr 1824 5,.literal (BitVec.ofNat 32 0),.bnot 2059,.band 2058 2060,.shr 1824 5,.literal (BitVec.ofNat 32 0),.bnot 2063,.bxor 2062 2064,.shr 1824 5,.literal (BitVec.ofNat 32 0),.bnot 2067,.badd 2066 2068,.bnot 2069,.band 2065 2070,.bxor 2061 2071,.shr 2072 31,.literal (BitVec.ofNat 32 1),.bxor 2073 2074,.shr 2057 0,.literal (BitVec.ofNat 32 1),.band 2076 2077,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2079 2080,.band 2081 1508,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2083 2084,.bnot 2085,.band 2086 1420,.bxor 2082 2087,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2089 2090,.band 2091 1519,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2093 2094,.bnot 2095,.band 2096 1431,.bxor 2092 2097,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2099 2100]
theorem partExact30 : partRows30=WordField.rows actualModulus 2038 partOps30 := by
  simp only [partRows30,partOps30,WordField.rows,rows2038,rows2039,rows2040,rows2041,rows2042,rows2043,rows2044,rows2045,rows2046,rows2047,rows2048,rows2049,rows2050,rows2051,rows2052,rows2053,rows2054,rows2055,rows2056,rows2057,rows2058,rows2059,rows2060,rows2061,rows2062,rows2063,rows2064,rows2065,rows2066,rows2067,rows2068,rows2069,rows2070,rows2071,rows2072,rows2073,rows2074,rows2075,rows2076,rows2077,rows2078,rows2079,rows2080,rows2081,rows2082,rows2083,rows2084,rows2085,rows2086,rows2087,rows2088,rows2089,rows2090,rows2091,rows2092,rows2093,rows2094,rows2095,rows2096,rows2097,rows2098,rows2099,rows2100,rows2101,List.append_assoc,List.append_nil]
theorem partLength30 : partOps30.length=64 := by decide
theorem partStats30 : partRows30.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows30=326952 := by
  simp only [partRows30,List.length_append,MatrixRowBlocks.rows_weight_append,stats2038.1,stats2038.2,stats2039.1,stats2039.2,stats2040.1,stats2040.2,stats2041.1,stats2041.2,stats2042.1,stats2042.2,stats2043.1,stats2043.2,stats2044.1,stats2044.2,stats2045.1,stats2045.2,stats2046.1,stats2046.2,stats2047.1,stats2047.2,stats2048.1,stats2048.2,stats2049.1,stats2049.2,stats2050.1,stats2050.2,stats2051.1,stats2051.2,stats2052.1,stats2052.2,stats2053.1,stats2053.2,stats2054.1,stats2054.2,stats2055.1,stats2055.2,stats2056.1,stats2056.2,stats2057.1,stats2057.2,stats2058.1,stats2058.2,stats2059.1,stats2059.2,stats2060.1,stats2060.2,stats2061.1,stats2061.2,stats2062.1,stats2062.2,stats2063.1,stats2063.2,stats2064.1,stats2064.2,stats2065.1,stats2065.2,stats2066.1,stats2066.2,stats2067.1,stats2067.2,stats2068.1,stats2068.2,stats2069.1,stats2069.2,stats2070.1,stats2070.2,stats2071.1,stats2071.2,stats2072.1,stats2072.2,stats2073.1,stats2073.2,stats2074.1,stats2074.2,stats2075.1,stats2075.2,stats2076.1,stats2076.2,stats2077.1,stats2077.2,stats2078.1,stats2078.2,stats2079.1,stats2079.2,stats2080.1,stats2080.2,stats2081.1,stats2081.2,stats2082.1,stats2082.2,stats2083.1,stats2083.2,stats2084.1,stats2084.2,stats2085.1,stats2085.2,stats2086.1,stats2086.2,stats2087.1,stats2087.2,stats2088.1,stats2088.2,stats2089.1,stats2089.2,stats2090.1,stats2090.2,stats2091.1,stats2091.2,stats2092.1,stats2092.2,stats2093.1,stats2093.2,stats2094.1,stats2094.2,stats2095.1,stats2095.2,stats2096.1,stats2096.2,stats2097.1,stats2097.2,stats2098.1,stats2098.2,stats2099.1,stats2099.2,stats2100.1,stats2100.2,stats2101.1,stats2101.2]
  decide
end AuthenticatedBranchRoundCheckedRows
