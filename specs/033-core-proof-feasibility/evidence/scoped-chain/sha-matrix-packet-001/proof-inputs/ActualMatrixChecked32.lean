import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData32
import ActualMatrixData33
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2072 : actualRows2072=WordField.canonicalRows actualModulus 2072 (.band 2050 1996) := by core033_kernel_decide
theorem stats2072 : actualRows2072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2072=5124 := by core033_kernel_decide
theorem rows2073 : actualRows2073=WordField.canonicalRows actualModulus 2073 (.bxor 2071 2072) := by core033_kernel_decide
theorem stats2073 : actualRows2073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2073=7428 := by core033_kernel_decide
theorem rows2074 : actualRows2074=WordField.canonicalRows actualModulus 2074 (.band 2023 1996) := by core033_kernel_decide
theorem stats2074 : actualRows2074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2074=5124 := by core033_kernel_decide
theorem rows2075 : actualRows2075=WordField.canonicalRows actualModulus 2075 (.bxor 2073 2074) := by core033_kernel_decide
theorem stats2075 : actualRows2075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2075=7428 := by core033_kernel_decide
theorem rows2076 : actualRows2076=WordField.canonicalRows actualModulus 2076 (.badd 2070 2075) := by core033_kernel_decide
theorem stats2076 : actualRows2076.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2076=5388 := by core033_kernel_decide
theorem rows2077 : actualRows2077=WordField.canonicalRows actualModulus 2077 (.badd 2065 2076) := by core033_kernel_decide
theorem stats2077 : actualRows2077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2077=5388 := by core033_kernel_decide
theorem rows2078 : actualRows2078=WordField.canonicalRows actualModulus 2078 (.badd 1969 2065) := by core033_kernel_decide
theorem stats2078 : actualRows2078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2078=5388 := by core033_kernel_decide
theorem rows2079 : actualRows2079=WordField.canonicalRows actualModulus 2079 (.rotr 2078 6) := by core033_kernel_decide
theorem stats2079 : actualRows2079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2079=5124 := by core033_kernel_decide
theorem rows2080 : actualRows2080=WordField.canonicalRows actualModulus 2080 (.rotr 2078 11) := by core033_kernel_decide
theorem stats2080 : actualRows2080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2080=5124 := by core033_kernel_decide
theorem rows2081 : actualRows2081=WordField.canonicalRows actualModulus 2081 (.bxor 2079 2080) := by core033_kernel_decide
theorem stats2081 : actualRows2081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2081=7428 := by core033_kernel_decide
theorem rows2082 : actualRows2082=WordField.canonicalRows actualModulus 2082 (.rotr 2078 25) := by core033_kernel_decide
theorem stats2082 : actualRows2082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2082=5124 := by core033_kernel_decide
theorem rows2083 : actualRows2083=WordField.canonicalRows actualModulus 2083 (.bxor 2081 2082) := by core033_kernel_decide
theorem stats2083 : actualRows2083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2083=7428 := by core033_kernel_decide
theorem rows2084 : actualRows2084=WordField.canonicalRows actualModulus 2084 (.badd 1997 2083) := by core033_kernel_decide
theorem stats2084 : actualRows2084.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2084=5388 := by core033_kernel_decide
theorem rows2085 : actualRows2085=WordField.canonicalRows actualModulus 2085 (.band 2078 2051) := by core033_kernel_decide
theorem stats2085 : actualRows2085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2085=5124 := by core033_kernel_decide
theorem rows2086 : actualRows2086=WordField.canonicalRows actualModulus 2086 (.bnot 2078) := by core033_kernel_decide
theorem stats2086 : actualRows2086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2086=6276 := by core033_kernel_decide
theorem rows2087 : actualRows2087=WordField.canonicalRows actualModulus 2087 (.band 2086 2024) := by core033_kernel_decide
theorem stats2087 : actualRows2087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2087=5124 := by core033_kernel_decide
theorem rows2088 : actualRows2088=WordField.canonicalRows actualModulus 2088 (.bxor 2085 2087) := by core033_kernel_decide
theorem stats2088 : actualRows2088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2088=7428 := by core033_kernel_decide
theorem rows2089 : actualRows2089=WordField.canonicalRows actualModulus 2089 (.badd 2084 2088) := by core033_kernel_decide
theorem stats2089 : actualRows2089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2089=5388 := by core033_kernel_decide
theorem rows2090 : actualRows2090=WordField.canonicalRows actualModulus 2090 (.literal (BitVec.ofNat 32 1322822218)) := by core033_kernel_decide
theorem stats2090 : actualRows2090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2090=3900 := by core033_kernel_decide
theorem rows2091 : actualRows2091=WordField.canonicalRows actualModulus 2091 (.badd 2089 2090) := by core033_kernel_decide
theorem stats2091 : actualRows2091.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2091=5388 := by core033_kernel_decide
theorem rows2092 : actualRows2092=WordField.canonicalRows actualModulus 2092 (.badd 2091 517) := by core033_kernel_decide
theorem stats2092 : actualRows2092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2092=5388 := by core033_kernel_decide
theorem rows2093 : actualRows2093=WordField.canonicalRows actualModulus 2093 (.rotr 2077 2) := by core033_kernel_decide
theorem stats2093 : actualRows2093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2093=5124 := by core033_kernel_decide
theorem rows2094 : actualRows2094=WordField.canonicalRows actualModulus 2094 (.rotr 2077 13) := by core033_kernel_decide
theorem stats2094 : actualRows2094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2094=5124 := by core033_kernel_decide
theorem rows2095 : actualRows2095=WordField.canonicalRows actualModulus 2095 (.bxor 2093 2094) := by core033_kernel_decide
theorem stats2095 : actualRows2095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2095=7428 := by core033_kernel_decide
theorem rows2096 : actualRows2096=WordField.canonicalRows actualModulus 2096 (.rotr 2077 22) := by core033_kernel_decide
theorem stats2096 : actualRows2096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2096=5124 := by core033_kernel_decide
theorem rows2097 : actualRows2097=WordField.canonicalRows actualModulus 2097 (.bxor 2095 2096) := by core033_kernel_decide
theorem stats2097 : actualRows2097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2097=7428 := by core033_kernel_decide
theorem rows2098 : actualRows2098=WordField.canonicalRows actualModulus 2098 (.band 2077 2050) := by core033_kernel_decide
theorem stats2098 : actualRows2098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2098=5124 := by core033_kernel_decide
theorem rows2099 : actualRows2099=WordField.canonicalRows actualModulus 2099 (.band 2077 2023) := by core033_kernel_decide
theorem stats2099 : actualRows2099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2099=5124 := by core033_kernel_decide
theorem rows2100 : actualRows2100=WordField.canonicalRows actualModulus 2100 (.bxor 2098 2099) := by core033_kernel_decide
theorem stats2100 : actualRows2100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2100=7428 := by core033_kernel_decide
theorem rows2101 : actualRows2101=WordField.canonicalRows actualModulus 2101 (.band 2050 2023) := by core033_kernel_decide
theorem stats2101 : actualRows2101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2101=5124 := by core033_kernel_decide
theorem rows2102 : actualRows2102=WordField.canonicalRows actualModulus 2102 (.bxor 2100 2101) := by core033_kernel_decide
theorem stats2102 : actualRows2102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2102=7428 := by core033_kernel_decide
theorem rows2103 : actualRows2103=WordField.canonicalRows actualModulus 2103 (.badd 2097 2102) := by core033_kernel_decide
theorem stats2103 : actualRows2103.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2103=5388 := by core033_kernel_decide
theorem rows2104 : actualRows2104=WordField.canonicalRows actualModulus 2104 (.badd 2092 2103) := by core033_kernel_decide
theorem stats2104 : actualRows2104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2104=5388 := by core033_kernel_decide
theorem rows2105 : actualRows2105=WordField.canonicalRows actualModulus 2105 (.badd 1996 2092) := by core033_kernel_decide
theorem stats2105 : actualRows2105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2105=5388 := by core033_kernel_decide
theorem rows2106 : actualRows2106=WordField.canonicalRows actualModulus 2106 (.rotr 2105 6) := by core033_kernel_decide
theorem stats2106 : actualRows2106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2106=5124 := by core033_kernel_decide
theorem rows2107 : actualRows2107=WordField.canonicalRows actualModulus 2107 (.rotr 2105 11) := by core033_kernel_decide
theorem stats2107 : actualRows2107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2107=5124 := by core033_kernel_decide
theorem rows2108 : actualRows2108=WordField.canonicalRows actualModulus 2108 (.bxor 2106 2107) := by core033_kernel_decide
theorem stats2108 : actualRows2108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2108=7428 := by core033_kernel_decide
theorem rows2109 : actualRows2109=WordField.canonicalRows actualModulus 2109 (.rotr 2105 25) := by core033_kernel_decide
theorem stats2109 : actualRows2109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2109=5124 := by core033_kernel_decide
theorem rows2110 : actualRows2110=WordField.canonicalRows actualModulus 2110 (.bxor 2108 2109) := by core033_kernel_decide
theorem stats2110 : actualRows2110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2110=7428 := by core033_kernel_decide
theorem rows2111 : actualRows2111=WordField.canonicalRows actualModulus 2111 (.badd 2024 2110) := by core033_kernel_decide
theorem stats2111 : actualRows2111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2111=5388 := by core033_kernel_decide
theorem rows2112 : actualRows2112=WordField.canonicalRows actualModulus 2112 (.band 2105 2078) := by core033_kernel_decide
theorem stats2112 : actualRows2112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2112=5124 := by core033_kernel_decide
theorem rows2113 : actualRows2113=WordField.canonicalRows actualModulus 2113 (.bnot 2105) := by core033_kernel_decide
theorem stats2113 : actualRows2113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2113=6276 := by core033_kernel_decide
theorem rows2114 : actualRows2114=WordField.canonicalRows actualModulus 2114 (.band 2113 2051) := by core033_kernel_decide
theorem stats2114 : actualRows2114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2114=5124 := by core033_kernel_decide
theorem rows2115 : actualRows2115=WordField.canonicalRows actualModulus 2115 (.bxor 2112 2114) := by core033_kernel_decide
theorem stats2115 : actualRows2115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2115=7428 := by core033_kernel_decide
theorem rows2116 : actualRows2116=WordField.canonicalRows actualModulus 2116 (.badd 2111 2115) := by core033_kernel_decide
theorem stats2116 : actualRows2116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2116=5388 := by core033_kernel_decide
theorem rows2117 : actualRows2117=WordField.canonicalRows actualModulus 2117 (.literal (BitVec.ofNat 32 1537002063)) := by core033_kernel_decide
theorem stats2117 : actualRows2117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2117=4116 := by core033_kernel_decide
theorem rows2118 : actualRows2118=WordField.canonicalRows actualModulus 2118 (.badd 2116 2117) := by core033_kernel_decide
theorem stats2118 : actualRows2118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2118=5388 := by core033_kernel_decide
theorem rows2119 : actualRows2119=WordField.canonicalRows actualModulus 2119 (.badd 2118 530) := by core033_kernel_decide
theorem stats2119 : actualRows2119.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2119=5388 := by core033_kernel_decide
theorem rows2120 : actualRows2120=WordField.canonicalRows actualModulus 2120 (.rotr 2104 2) := by core033_kernel_decide
theorem stats2120 : actualRows2120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2120=5124 := by core033_kernel_decide
theorem rows2121 : actualRows2121=WordField.canonicalRows actualModulus 2121 (.rotr 2104 13) := by core033_kernel_decide
theorem stats2121 : actualRows2121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2121=5124 := by core033_kernel_decide
theorem rows2122 : actualRows2122=WordField.canonicalRows actualModulus 2122 (.bxor 2120 2121) := by core033_kernel_decide
theorem stats2122 : actualRows2122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2122=7428 := by core033_kernel_decide
theorem rows2123 : actualRows2123=WordField.canonicalRows actualModulus 2123 (.rotr 2104 22) := by core033_kernel_decide
theorem stats2123 : actualRows2123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2123=5124 := by core033_kernel_decide
theorem rows2124 : actualRows2124=WordField.canonicalRows actualModulus 2124 (.bxor 2122 2123) := by core033_kernel_decide
theorem stats2124 : actualRows2124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2124=7428 := by core033_kernel_decide
theorem rows2125 : actualRows2125=WordField.canonicalRows actualModulus 2125 (.band 2104 2077) := by core033_kernel_decide
theorem stats2125 : actualRows2125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2125=5124 := by core033_kernel_decide
theorem rows2126 : actualRows2126=WordField.canonicalRows actualModulus 2126 (.band 2104 2050) := by core033_kernel_decide
theorem stats2126 : actualRows2126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2126=5124 := by core033_kernel_decide
theorem rows2127 : actualRows2127=WordField.canonicalRows actualModulus 2127 (.bxor 2125 2126) := by core033_kernel_decide
theorem stats2127 : actualRows2127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2127=7428 := by core033_kernel_decide
theorem rows2128 : actualRows2128=WordField.canonicalRows actualModulus 2128 (.band 2077 2050) := by core033_kernel_decide
theorem stats2128 : actualRows2128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2128=5124 := by core033_kernel_decide
theorem rows2129 : actualRows2129=WordField.canonicalRows actualModulus 2129 (.bxor 2127 2128) := by core033_kernel_decide
theorem stats2129 : actualRows2129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2129=7428 := by core033_kernel_decide
theorem rows2130 : actualRows2130=WordField.canonicalRows actualModulus 2130 (.badd 2124 2129) := by core033_kernel_decide
theorem stats2130 : actualRows2130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2130=5388 := by core033_kernel_decide
theorem rows2131 : actualRows2131=WordField.canonicalRows actualModulus 2131 (.badd 2119 2130) := by core033_kernel_decide
theorem stats2131 : actualRows2131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2131=5388 := by core033_kernel_decide
theorem rows2132 : actualRows2132=WordField.canonicalRows actualModulus 2132 (.badd 2023 2119) := by core033_kernel_decide
theorem stats2132 : actualRows2132.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2132=5388 := by core033_kernel_decide
theorem rows2133 : actualRows2133=WordField.canonicalRows actualModulus 2133 (.rotr 2132 6) := by core033_kernel_decide
theorem stats2133 : actualRows2133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2133=5124 := by core033_kernel_decide
theorem rows2134 : actualRows2134=WordField.canonicalRows actualModulus 2134 (.rotr 2132 11) := by core033_kernel_decide
theorem stats2134 : actualRows2134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2134=5124 := by core033_kernel_decide
theorem rows2135 : actualRows2135=WordField.canonicalRows actualModulus 2135 (.bxor 2133 2134) := by core033_kernel_decide
theorem stats2135 : actualRows2135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2135=7428 := by core033_kernel_decide
def partRows32 : List R1CS.Row := actualRows2072++actualRows2073++actualRows2074++actualRows2075++actualRows2076++actualRows2077++actualRows2078++actualRows2079++actualRows2080++actualRows2081++actualRows2082++actualRows2083++actualRows2084++actualRows2085++actualRows2086++actualRows2087++actualRows2088++actualRows2089++actualRows2090++actualRows2091++actualRows2092++actualRows2093++actualRows2094++actualRows2095++actualRows2096++actualRows2097++actualRows2098++actualRows2099++actualRows2100++actualRows2101++actualRows2102++actualRows2103++actualRows2104++actualRows2105++actualRows2106++actualRows2107++actualRows2108++actualRows2109++actualRows2110++actualRows2111++actualRows2112++actualRows2113++actualRows2114++actualRows2115++actualRows2116++actualRows2117++actualRows2118++actualRows2119++actualRows2120++actualRows2121++actualRows2122++actualRows2123++actualRows2124++actualRows2125++actualRows2126++actualRows2127++actualRows2128++actualRows2129++actualRows2130++actualRows2131++actualRows2132++actualRows2133++actualRows2134++actualRows2135
def partOps32 : List WordIR.Op := [.band 2050 1996,.bxor 2071 2072,.band 2023 1996,.bxor 2073 2074,.badd 2070 2075,.badd 2065 2076,.badd 1969 2065,.rotr 2078 6,.rotr 2078 11,.bxor 2079 2080,.rotr 2078 25,.bxor 2081 2082,.badd 1997 2083,.band 2078 2051,.bnot 2078,.band 2086 2024,.bxor 2085 2087,.badd 2084 2088,.literal (BitVec.ofNat 32 1322822218),.badd 2089 2090,.badd 2091 517,.rotr 2077 2,.rotr 2077 13,.bxor 2093 2094,.rotr 2077 22,.bxor 2095 2096,.band 2077 2050,.band 2077 2023,.bxor 2098 2099,.band 2050 2023,.bxor 2100 2101,.badd 2097 2102,.badd 2092 2103,.badd 1996 2092,.rotr 2105 6,.rotr 2105 11,.bxor 2106 2107,.rotr 2105 25,.bxor 2108 2109,.badd 2024 2110,.band 2105 2078,.bnot 2105,.band 2113 2051,.bxor 2112 2114,.badd 2111 2115,.literal (BitVec.ofNat 32 1537002063),.badd 2116 2117,.badd 2118 530,.rotr 2104 2,.rotr 2104 13,.bxor 2120 2121,.rotr 2104 22,.bxor 2122 2123,.band 2104 2077,.band 2104 2050,.bxor 2125 2126,.band 2077 2050,.bxor 2127 2128,.badd 2124 2129,.badd 2119 2130,.badd 2023 2119,.rotr 2132 6,.rotr 2132 11,.bxor 2133 2134]
theorem partRowsExact32 : partRows32=WordField.rows actualModulus 2072 partOps32 := by
  simp only [partRows32,partOps32,WordField.rows,rows2072,rows2073,rows2074,rows2075,rows2076,rows2077,rows2078,rows2079,rows2080,rows2081,rows2082,rows2083,rows2084,rows2085,rows2086,rows2087,rows2088,rows2089,rows2090,rows2091,rows2092,rows2093,rows2094,rows2095,rows2096,rows2097,rows2098,rows2099,rows2100,rows2101,rows2102,rows2103,rows2104,rows2105,rows2106,rows2107,rows2108,rows2109,rows2110,rows2111,rows2112,rows2113,rows2114,rows2115,rows2116,rows2117,rows2118,rows2119,rows2120,rows2121,rows2122,rows2123,rows2124,rows2125,rows2126,rows2127,rows2128,rows2129,rows2130,rows2131,rows2132,rows2133,rows2134,rows2135,List.append_assoc,List.append_nil]
theorem partOpsLength32 : partOps32.length=64 := by decide
theorem partStats32 : partRows32.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows32=371664 := by
  simp only [partRows32,List.length_append,MatrixRowBlocks.rows_weight_append,stats2072.1,stats2072.2,stats2073.1,stats2073.2,stats2074.1,stats2074.2,stats2075.1,stats2075.2,stats2076.1,stats2076.2,stats2077.1,stats2077.2,stats2078.1,stats2078.2,stats2079.1,stats2079.2,stats2080.1,stats2080.2,stats2081.1,stats2081.2,stats2082.1,stats2082.2,stats2083.1,stats2083.2,stats2084.1,stats2084.2,stats2085.1,stats2085.2,stats2086.1,stats2086.2,stats2087.1,stats2087.2,stats2088.1,stats2088.2,stats2089.1,stats2089.2,stats2090.1,stats2090.2,stats2091.1,stats2091.2,stats2092.1,stats2092.2,stats2093.1,stats2093.2,stats2094.1,stats2094.2,stats2095.1,stats2095.2,stats2096.1,stats2096.2,stats2097.1,stats2097.2,stats2098.1,stats2098.2,stats2099.1,stats2099.2,stats2100.1,stats2100.2,stats2101.1,stats2101.2,stats2102.1,stats2102.2,stats2103.1,stats2103.2,stats2104.1,stats2104.2,stats2105.1,stats2105.2,stats2106.1,stats2106.2,stats2107.1,stats2107.2,stats2108.1,stats2108.2,stats2109.1,stats2109.2,stats2110.1,stats2110.2,stats2111.1,stats2111.2,stats2112.1,stats2112.2,stats2113.1,stats2113.2,stats2114.1,stats2114.2,stats2115.1,stats2115.2,stats2116.1,stats2116.2,stats2117.1,stats2117.2,stats2118.1,stats2118.2,stats2119.1,stats2119.2,stats2120.1,stats2120.2,stats2121.1,stats2121.2,stats2122.1,stats2122.2,stats2123.1,stats2123.2,stats2124.1,stats2124.2,stats2125.1,stats2125.2,stats2126.1,stats2126.2,stats2127.1,stats2127.2,stats2128.1,stats2128.2,stats2129.1,stats2129.2,stats2130.1,stats2130.2,stats2131.1,stats2131.2,stats2132.1,stats2132.2,stats2133.1,stats2133.2,stats2134.1,stats2134.2,stats2135.1,stats2135.2]
  decide
end ActualSHAMatrixRows
