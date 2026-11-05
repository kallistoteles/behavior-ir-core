import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData32
import AuthenticatedBranchRoundInstructionMatrixData33
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2102 : actualRows2102=WordField.canonicalRows actualModulus 2102 (.band 2101 1530) := by core033_kernel_decide
theorem stats2102 : actualRows2102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2102=5124 := by core033_kernel_decide
theorem rows2103 : actualRows2103=WordField.canonicalRows actualModulus 2103 (.bnot 2078) := by core033_kernel_decide
theorem stats2103 : actualRows2103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2103=6276 := by core033_kernel_decide
theorem rows2104 : actualRows2104=WordField.canonicalRows actualModulus 2104 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2104 : actualRows2104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2104=2892 := by core033_kernel_decide
theorem rows2105 : actualRows2105=WordField.canonicalRows actualModulus 2105 (.badd 2103 2104) := by core033_kernel_decide
theorem stats2105 : actualRows2105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2105=5388 := by core033_kernel_decide
theorem rows2106 : actualRows2106=WordField.canonicalRows actualModulus 2106 (.bnot 2105) := by core033_kernel_decide
theorem stats2106 : actualRows2106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2106=6276 := by core033_kernel_decide
theorem rows2107 : actualRows2107=WordField.canonicalRows actualModulus 2107 (.band 2106 1442) := by core033_kernel_decide
theorem stats2107 : actualRows2107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2107=5124 := by core033_kernel_decide
theorem rows2108 : actualRows2108=WordField.canonicalRows actualModulus 2108 (.bxor 2102 2107) := by core033_kernel_decide
theorem stats2108 : actualRows2108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2108=7428 := by core033_kernel_decide
theorem rows2109 : actualRows2109=WordField.canonicalRows actualModulus 2109 (.bnot 2078) := by core033_kernel_decide
theorem stats2109 : actualRows2109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2109=6276 := by core033_kernel_decide
theorem rows2110 : actualRows2110=WordField.canonicalRows actualModulus 2110 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2110 : actualRows2110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2110=2892 := by core033_kernel_decide
theorem rows2111 : actualRows2111=WordField.canonicalRows actualModulus 2111 (.badd 2109 2110) := by core033_kernel_decide
theorem stats2111 : actualRows2111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2111=5388 := by core033_kernel_decide
theorem rows2112 : actualRows2112=WordField.canonicalRows actualModulus 2112 (.band 2111 1541) := by core033_kernel_decide
theorem stats2112 : actualRows2112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2112=5124 := by core033_kernel_decide
theorem rows2113 : actualRows2113=WordField.canonicalRows actualModulus 2113 (.bnot 2078) := by core033_kernel_decide
theorem stats2113 : actualRows2113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2113=6276 := by core033_kernel_decide
theorem rows2114 : actualRows2114=WordField.canonicalRows actualModulus 2114 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2114 : actualRows2114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2114=2892 := by core033_kernel_decide
theorem rows2115 : actualRows2115=WordField.canonicalRows actualModulus 2115 (.badd 2113 2114) := by core033_kernel_decide
theorem stats2115 : actualRows2115.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2115=5388 := by core033_kernel_decide
theorem rows2116 : actualRows2116=WordField.canonicalRows actualModulus 2116 (.bnot 2115) := by core033_kernel_decide
theorem stats2116 : actualRows2116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2116=6276 := by core033_kernel_decide
theorem rows2117 : actualRows2117=WordField.canonicalRows actualModulus 2117 (.band 2116 1453) := by core033_kernel_decide
theorem stats2117 : actualRows2117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2117=5124 := by core033_kernel_decide
theorem rows2118 : actualRows2118=WordField.canonicalRows actualModulus 2118 (.bxor 2112 2117) := by core033_kernel_decide
theorem stats2118 : actualRows2118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2118=7428 := by core033_kernel_decide
theorem rows2119 : actualRows2119=WordField.canonicalRows actualModulus 2119 (.bnot 2078) := by core033_kernel_decide
theorem stats2119 : actualRows2119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2119=6276 := by core033_kernel_decide
theorem rows2120 : actualRows2120=WordField.canonicalRows actualModulus 2120 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2120 : actualRows2120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2120=2892 := by core033_kernel_decide
theorem rows2121 : actualRows2121=WordField.canonicalRows actualModulus 2121 (.badd 2119 2120) := by core033_kernel_decide
theorem stats2121 : actualRows2121.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2121=5388 := by core033_kernel_decide
theorem rows2122 : actualRows2122=WordField.canonicalRows actualModulus 2122 (.band 2121 1552) := by core033_kernel_decide
theorem stats2122 : actualRows2122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2122=5124 := by core033_kernel_decide
theorem rows2123 : actualRows2123=WordField.canonicalRows actualModulus 2123 (.bnot 2078) := by core033_kernel_decide
theorem stats2123 : actualRows2123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2123=6276 := by core033_kernel_decide
theorem rows2124 : actualRows2124=WordField.canonicalRows actualModulus 2124 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2124 : actualRows2124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2124=2892 := by core033_kernel_decide
theorem rows2125 : actualRows2125=WordField.canonicalRows actualModulus 2125 (.badd 2123 2124) := by core033_kernel_decide
theorem stats2125 : actualRows2125.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2125=5388 := by core033_kernel_decide
theorem rows2126 : actualRows2126=WordField.canonicalRows actualModulus 2126 (.bnot 2125) := by core033_kernel_decide
theorem stats2126 : actualRows2126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2126=6276 := by core033_kernel_decide
theorem rows2127 : actualRows2127=WordField.canonicalRows actualModulus 2127 (.band 2126 1464) := by core033_kernel_decide
theorem stats2127 : actualRows2127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2127=5124 := by core033_kernel_decide
theorem rows2128 : actualRows2128=WordField.canonicalRows actualModulus 2128 (.bxor 2122 2127) := by core033_kernel_decide
theorem stats2128 : actualRows2128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2128=7428 := by core033_kernel_decide
theorem rows2129 : actualRows2129=WordField.canonicalRows actualModulus 2129 (.bnot 2078) := by core033_kernel_decide
theorem stats2129 : actualRows2129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2129=6276 := by core033_kernel_decide
theorem rows2130 : actualRows2130=WordField.canonicalRows actualModulus 2130 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2130 : actualRows2130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2130=2892 := by core033_kernel_decide
theorem rows2131 : actualRows2131=WordField.canonicalRows actualModulus 2131 (.badd 2129 2130) := by core033_kernel_decide
theorem stats2131 : actualRows2131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2131=5388 := by core033_kernel_decide
theorem rows2132 : actualRows2132=WordField.canonicalRows actualModulus 2132 (.band 2131 1563) := by core033_kernel_decide
theorem stats2132 : actualRows2132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2132=5124 := by core033_kernel_decide
theorem rows2133 : actualRows2133=WordField.canonicalRows actualModulus 2133 (.bnot 2078) := by core033_kernel_decide
theorem stats2133 : actualRows2133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2133=6276 := by core033_kernel_decide
theorem rows2134 : actualRows2134=WordField.canonicalRows actualModulus 2134 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2134 : actualRows2134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2134=2892 := by core033_kernel_decide
theorem rows2135 : actualRows2135=WordField.canonicalRows actualModulus 2135 (.badd 2133 2134) := by core033_kernel_decide
theorem stats2135 : actualRows2135.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2135=5388 := by core033_kernel_decide
theorem rows2136 : actualRows2136=WordField.canonicalRows actualModulus 2136 (.bnot 2135) := by core033_kernel_decide
theorem stats2136 : actualRows2136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2136=6276 := by core033_kernel_decide
theorem rows2137 : actualRows2137=WordField.canonicalRows actualModulus 2137 (.band 2136 1475) := by core033_kernel_decide
theorem stats2137 : actualRows2137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2137=5124 := by core033_kernel_decide
theorem rows2138 : actualRows2138=WordField.canonicalRows actualModulus 2138 (.bxor 2132 2137) := by core033_kernel_decide
theorem stats2138 : actualRows2138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2138=7428 := by core033_kernel_decide
theorem rows2139 : actualRows2139=WordField.canonicalRows actualModulus 2139 (.bnot 2078) := by core033_kernel_decide
theorem stats2139 : actualRows2139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2139=6276 := by core033_kernel_decide
theorem rows2140 : actualRows2140=WordField.canonicalRows actualModulus 2140 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2140 : actualRows2140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2140=2892 := by core033_kernel_decide
theorem rows2141 : actualRows2141=WordField.canonicalRows actualModulus 2141 (.badd 2139 2140) := by core033_kernel_decide
theorem stats2141 : actualRows2141.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2141=5388 := by core033_kernel_decide
theorem rows2142 : actualRows2142=WordField.canonicalRows actualModulus 2142 (.band 2141 1574) := by core033_kernel_decide
theorem stats2142 : actualRows2142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2142=5124 := by core033_kernel_decide
theorem rows2143 : actualRows2143=WordField.canonicalRows actualModulus 2143 (.bnot 2078) := by core033_kernel_decide
theorem stats2143 : actualRows2143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2143=6276 := by core033_kernel_decide
theorem rows2144 : actualRows2144=WordField.canonicalRows actualModulus 2144 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2144 : actualRows2144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2144=2892 := by core033_kernel_decide
theorem rows2145 : actualRows2145=WordField.canonicalRows actualModulus 2145 (.badd 2143 2144) := by core033_kernel_decide
theorem stats2145 : actualRows2145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2145=5388 := by core033_kernel_decide
theorem rows2146 : actualRows2146=WordField.canonicalRows actualModulus 2146 (.bnot 2145) := by core033_kernel_decide
theorem stats2146 : actualRows2146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2146=6276 := by core033_kernel_decide
theorem rows2147 : actualRows2147=WordField.canonicalRows actualModulus 2147 (.band 2146 1486) := by core033_kernel_decide
theorem stats2147 : actualRows2147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2147=5124 := by core033_kernel_decide
theorem rows2148 : actualRows2148=WordField.canonicalRows actualModulus 2148 (.bxor 2142 2147) := by core033_kernel_decide
theorem stats2148 : actualRows2148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2148=7428 := by core033_kernel_decide
theorem rows2149 : actualRows2149=WordField.canonicalRows actualModulus 2149 (.bnot 2078) := by core033_kernel_decide
theorem stats2149 : actualRows2149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2149=6276 := by core033_kernel_decide
theorem rows2150 : actualRows2150=WordField.canonicalRows actualModulus 2150 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2150 : actualRows2150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2150=2892 := by core033_kernel_decide
theorem rows2151 : actualRows2151=WordField.canonicalRows actualModulus 2151 (.badd 2149 2150) := by core033_kernel_decide
theorem stats2151 : actualRows2151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2151=5388 := by core033_kernel_decide
theorem rows2152 : actualRows2152=WordField.canonicalRows actualModulus 2152 (.band 2151 1585) := by core033_kernel_decide
theorem stats2152 : actualRows2152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2152=5124 := by core033_kernel_decide
theorem rows2153 : actualRows2153=WordField.canonicalRows actualModulus 2153 (.bnot 2078) := by core033_kernel_decide
theorem stats2153 : actualRows2153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2153=6276 := by core033_kernel_decide
theorem rows2154 : actualRows2154=WordField.canonicalRows actualModulus 2154 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2154 : actualRows2154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2154=2892 := by core033_kernel_decide
theorem rows2155 : actualRows2155=WordField.canonicalRows actualModulus 2155 (.badd 2153 2154) := by core033_kernel_decide
theorem stats2155 : actualRows2155.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2155=5388 := by core033_kernel_decide
theorem rows2156 : actualRows2156=WordField.canonicalRows actualModulus 2156 (.bnot 2155) := by core033_kernel_decide
theorem stats2156 : actualRows2156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2156=6276 := by core033_kernel_decide
theorem rows2157 : actualRows2157=WordField.canonicalRows actualModulus 2157 (.band 2156 1497) := by core033_kernel_decide
theorem stats2157 : actualRows2157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2157=5124 := by core033_kernel_decide
theorem rows2158 : actualRows2158=WordField.canonicalRows actualModulus 2158 (.bxor 2152 2157) := by core033_kernel_decide
theorem stats2158 : actualRows2158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2158=7428 := by core033_kernel_decide
theorem rows2159 : actualRows2159=WordField.canonicalRows actualModulus 2159 (.bnot 2078) := by core033_kernel_decide
theorem stats2159 : actualRows2159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2159=6276 := by core033_kernel_decide
theorem rows2160 : actualRows2160=WordField.canonicalRows actualModulus 2160 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2160 : actualRows2160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2160=2892 := by core033_kernel_decide
theorem rows2161 : actualRows2161=WordField.canonicalRows actualModulus 2161 (.badd 2159 2160) := by core033_kernel_decide
theorem stats2161 : actualRows2161.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2161=5388 := by core033_kernel_decide
theorem rows2162 : actualRows2162=WordField.canonicalRows actualModulus 2162 (.band 2161 1618) := by core033_kernel_decide
theorem stats2162 : actualRows2162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2162=5124 := by core033_kernel_decide
theorem rows2163 : actualRows2163=WordField.canonicalRows actualModulus 2163 (.bnot 2078) := by core033_kernel_decide
theorem stats2163 : actualRows2163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2163=6276 := by core033_kernel_decide
theorem rows2164 : actualRows2164=WordField.canonicalRows actualModulus 2164 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2164 : actualRows2164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2164=2892 := by core033_kernel_decide
theorem rows2165 : actualRows2165=WordField.canonicalRows actualModulus 2165 (.badd 2163 2164) := by core033_kernel_decide
theorem stats2165 : actualRows2165.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2165=5388 := by core033_kernel_decide
def partRows31 : List R1CS.Row := actualRows2102++actualRows2103++actualRows2104++actualRows2105++actualRows2106++actualRows2107++actualRows2108++actualRows2109++actualRows2110++actualRows2111++actualRows2112++actualRows2113++actualRows2114++actualRows2115++actualRows2116++actualRows2117++actualRows2118++actualRows2119++actualRows2120++actualRows2121++actualRows2122++actualRows2123++actualRows2124++actualRows2125++actualRows2126++actualRows2127++actualRows2128++actualRows2129++actualRows2130++actualRows2131++actualRows2132++actualRows2133++actualRows2134++actualRows2135++actualRows2136++actualRows2137++actualRows2138++actualRows2139++actualRows2140++actualRows2141++actualRows2142++actualRows2143++actualRows2144++actualRows2145++actualRows2146++actualRows2147++actualRows2148++actualRows2149++actualRows2150++actualRows2151++actualRows2152++actualRows2153++actualRows2154++actualRows2155++actualRows2156++actualRows2157++actualRows2158++actualRows2159++actualRows2160++actualRows2161++actualRows2162++actualRows2163++actualRows2164++actualRows2165
def partOps31 : List WordIR.Op := [.band 2101 1530,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2103 2104,.bnot 2105,.band 2106 1442,.bxor 2102 2107,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2109 2110,.band 2111 1541,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2113 2114,.bnot 2115,.band 2116 1453,.bxor 2112 2117,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2119 2120,.band 2121 1552,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2123 2124,.bnot 2125,.band 2126 1464,.bxor 2122 2127,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2129 2130,.band 2131 1563,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2133 2134,.bnot 2135,.band 2136 1475,.bxor 2132 2137,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2139 2140,.band 2141 1574,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2143 2144,.bnot 2145,.band 2146 1486,.bxor 2142 2147,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2149 2150,.band 2151 1585,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2153 2154,.bnot 2155,.band 2156 1497,.bxor 2152 2157,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2159 2160,.band 2161 1618,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2163 2164]
theorem partExact31 : partRows31=WordField.rows actualModulus 2102 partOps31 := by
  simp only [partRows31,partOps31,WordField.rows,rows2102,rows2103,rows2104,rows2105,rows2106,rows2107,rows2108,rows2109,rows2110,rows2111,rows2112,rows2113,rows2114,rows2115,rows2116,rows2117,rows2118,rows2119,rows2120,rows2121,rows2122,rows2123,rows2124,rows2125,rows2126,rows2127,rows2128,rows2129,rows2130,rows2131,rows2132,rows2133,rows2134,rows2135,rows2136,rows2137,rows2138,rows2139,rows2140,rows2141,rows2142,rows2143,rows2144,rows2145,rows2146,rows2147,rows2148,rows2149,rows2150,rows2151,rows2152,rows2153,rows2154,rows2155,rows2156,rows2157,rows2158,rows2159,rows2160,rows2161,rows2162,rows2163,rows2164,rows2165,List.append_assoc,List.append_nil]
theorem partLength31 : partOps31.length=64 := by decide
theorem partStats31 : partRows31.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows31=338064 := by
  simp only [partRows31,List.length_append,MatrixRowBlocks.rows_weight_append,stats2102.1,stats2102.2,stats2103.1,stats2103.2,stats2104.1,stats2104.2,stats2105.1,stats2105.2,stats2106.1,stats2106.2,stats2107.1,stats2107.2,stats2108.1,stats2108.2,stats2109.1,stats2109.2,stats2110.1,stats2110.2,stats2111.1,stats2111.2,stats2112.1,stats2112.2,stats2113.1,stats2113.2,stats2114.1,stats2114.2,stats2115.1,stats2115.2,stats2116.1,stats2116.2,stats2117.1,stats2117.2,stats2118.1,stats2118.2,stats2119.1,stats2119.2,stats2120.1,stats2120.2,stats2121.1,stats2121.2,stats2122.1,stats2122.2,stats2123.1,stats2123.2,stats2124.1,stats2124.2,stats2125.1,stats2125.2,stats2126.1,stats2126.2,stats2127.1,stats2127.2,stats2128.1,stats2128.2,stats2129.1,stats2129.2,stats2130.1,stats2130.2,stats2131.1,stats2131.2,stats2132.1,stats2132.2,stats2133.1,stats2133.2,stats2134.1,stats2134.2,stats2135.1,stats2135.2,stats2136.1,stats2136.2,stats2137.1,stats2137.2,stats2138.1,stats2138.2,stats2139.1,stats2139.2,stats2140.1,stats2140.2,stats2141.1,stats2141.2,stats2142.1,stats2142.2,stats2143.1,stats2143.2,stats2144.1,stats2144.2,stats2145.1,stats2145.2,stats2146.1,stats2146.2,stats2147.1,stats2147.2,stats2148.1,stats2148.2,stats2149.1,stats2149.2,stats2150.1,stats2150.2,stats2151.1,stats2151.2,stats2152.1,stats2152.2,stats2153.1,stats2153.2,stats2154.1,stats2154.2,stats2155.1,stats2155.2,stats2156.1,stats2156.2,stats2157.1,stats2157.2,stats2158.1,stats2158.2,stats2159.1,stats2159.2,stats2160.1,stats2160.2,stats2161.1,stats2161.2,stats2162.1,stats2162.2,stats2163.1,stats2163.2,stats2164.1,stats2164.2,stats2165.1,stats2165.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
