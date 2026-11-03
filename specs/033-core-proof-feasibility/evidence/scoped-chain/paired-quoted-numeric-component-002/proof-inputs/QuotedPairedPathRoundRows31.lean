import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData32
import PairedPathRoundInstructionMatrixData33
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2080 : actualRows2080=WordField.canonicalRows actualModulus 2080 (.shr 1595 16) := by core033_kernel_decide
theorem stats2080 : actualRows2080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2080=3972 := by core033_kernel_decide
theorem rows2081 : actualRows2081=WordField.canonicalRows actualModulus 2081 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2081 : actualRows2081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2081=3396 := by core033_kernel_decide
theorem rows2082 : actualRows2082=WordField.canonicalRows actualModulus 2082 (.band 2080 2081) := by core033_kernel_decide
theorem stats2082 : actualRows2082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2082=5124 := by core033_kernel_decide
theorem rows2083 : actualRows2083=WordField.canonicalRows actualModulus 2083 (.shr 1595 24) := by core033_kernel_decide
theorem stats2083 : actualRows2083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2083=3396 := by core033_kernel_decide
theorem rows2084 : actualRows2084=WordField.canonicalRows actualModulus 2084 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2084 : actualRows2084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2084=3396 := by core033_kernel_decide
theorem rows2085 : actualRows2085=WordField.canonicalRows actualModulus 2085 (.band 2083 2084) := by core033_kernel_decide
theorem stats2085 : actualRows2085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2085=5124 := by core033_kernel_decide
theorem rows2086 : actualRows2086=WordField.canonicalRows actualModulus 2086 (.shr 1485 0) := by core033_kernel_decide
theorem stats2086 : actualRows2086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2086=5124 := by core033_kernel_decide
theorem rows2087 : actualRows2087=WordField.canonicalRows actualModulus 2087 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2087 : actualRows2087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2087=3396 := by core033_kernel_decide
theorem rows2088 : actualRows2088=WordField.canonicalRows actualModulus 2088 (.band 2086 2087) := by core033_kernel_decide
theorem stats2088 : actualRows2088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2088=5124 := by core033_kernel_decide
theorem rows2089 : actualRows2089=WordField.canonicalRows actualModulus 2089 (.shr 1485 8) := by core033_kernel_decide
theorem stats2089 : actualRows2089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2089=4548 := by core033_kernel_decide
theorem rows2090 : actualRows2090=WordField.canonicalRows actualModulus 2090 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2090 : actualRows2090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2090=3396 := by core033_kernel_decide
theorem rows2091 : actualRows2091=WordField.canonicalRows actualModulus 2091 (.band 2089 2090) := by core033_kernel_decide
theorem stats2091 : actualRows2091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2091=5124 := by core033_kernel_decide
theorem rows2092 : actualRows2092=WordField.canonicalRows actualModulus 2092 (.shr 1485 16) := by core033_kernel_decide
theorem stats2092 : actualRows2092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2092=3972 := by core033_kernel_decide
theorem rows2093 : actualRows2093=WordField.canonicalRows actualModulus 2093 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2093 : actualRows2093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2093=3396 := by core033_kernel_decide
theorem rows2094 : actualRows2094=WordField.canonicalRows actualModulus 2094 (.band 2092 2093) := by core033_kernel_decide
theorem stats2094 : actualRows2094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2094=5124 := by core033_kernel_decide
theorem rows2095 : actualRows2095=WordField.canonicalRows actualModulus 2095 (.shr 1485 24) := by core033_kernel_decide
theorem stats2095 : actualRows2095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2095=3396 := by core033_kernel_decide
theorem rows2096 : actualRows2096=WordField.canonicalRows actualModulus 2096 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2096 : actualRows2096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2096=3396 := by core033_kernel_decide
theorem rows2097 : actualRows2097=WordField.canonicalRows actualModulus 2097 (.band 2095 2096) := by core033_kernel_decide
theorem stats2097 : actualRows2097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2097=5124 := by core033_kernel_decide
theorem rows2098 : actualRows2098=WordField.canonicalRows actualModulus 2098 (.shr 1495 0) := by core033_kernel_decide
theorem stats2098 : actualRows2098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2098=5124 := by core033_kernel_decide
theorem rows2099 : actualRows2099=WordField.canonicalRows actualModulus 2099 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2099 : actualRows2099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2099=3396 := by core033_kernel_decide
theorem rows2100 : actualRows2100=WordField.canonicalRows actualModulus 2100 (.band 2098 2099) := by core033_kernel_decide
theorem stats2100 : actualRows2100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2100=5124 := by core033_kernel_decide
theorem rows2101 : actualRows2101=WordField.canonicalRows actualModulus 2101 (.shr 1495 8) := by core033_kernel_decide
theorem stats2101 : actualRows2101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2101=4548 := by core033_kernel_decide
theorem rows2102 : actualRows2102=WordField.canonicalRows actualModulus 2102 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2102 : actualRows2102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2102=3396 := by core033_kernel_decide
theorem rows2103 : actualRows2103=WordField.canonicalRows actualModulus 2103 (.band 2101 2102) := by core033_kernel_decide
theorem stats2103 : actualRows2103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2103=5124 := by core033_kernel_decide
theorem rows2104 : actualRows2104=WordField.canonicalRows actualModulus 2104 (.shr 1495 16) := by core033_kernel_decide
theorem stats2104 : actualRows2104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2104=3972 := by core033_kernel_decide
theorem rows2105 : actualRows2105=WordField.canonicalRows actualModulus 2105 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2105 : actualRows2105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2105=3396 := by core033_kernel_decide
theorem rows2106 : actualRows2106=WordField.canonicalRows actualModulus 2106 (.band 2104 2105) := by core033_kernel_decide
theorem stats2106 : actualRows2106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2106=5124 := by core033_kernel_decide
theorem rows2107 : actualRows2107=WordField.canonicalRows actualModulus 2107 (.shr 1495 24) := by core033_kernel_decide
theorem stats2107 : actualRows2107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2107=3396 := by core033_kernel_decide
theorem rows2108 : actualRows2108=WordField.canonicalRows actualModulus 2108 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2108 : actualRows2108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2108=3396 := by core033_kernel_decide
theorem rows2109 : actualRows2109=WordField.canonicalRows actualModulus 2109 (.band 2107 2108) := by core033_kernel_decide
theorem stats2109 : actualRows2109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2109=5124 := by core033_kernel_decide
theorem rows2110 : actualRows2110=WordField.canonicalRows actualModulus 2110 (.shr 1605 0) := by core033_kernel_decide
theorem stats2110 : actualRows2110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2110=5124 := by core033_kernel_decide
theorem rows2111 : actualRows2111=WordField.canonicalRows actualModulus 2111 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2111 : actualRows2111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2111=3396 := by core033_kernel_decide
theorem rows2112 : actualRows2112=WordField.canonicalRows actualModulus 2112 (.band 2110 2111) := by core033_kernel_decide
theorem stats2112 : actualRows2112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2112=5124 := by core033_kernel_decide
theorem rows2113 : actualRows2113=WordField.canonicalRows actualModulus 2113 (.shr 1605 8) := by core033_kernel_decide
theorem stats2113 : actualRows2113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2113=4548 := by core033_kernel_decide
theorem rows2114 : actualRows2114=WordField.canonicalRows actualModulus 2114 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2114 : actualRows2114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2114=3396 := by core033_kernel_decide
theorem rows2115 : actualRows2115=WordField.canonicalRows actualModulus 2115 (.band 2113 2114) := by core033_kernel_decide
theorem stats2115 : actualRows2115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2115=5124 := by core033_kernel_decide
theorem rows2116 : actualRows2116=WordField.canonicalRows actualModulus 2116 (.shr 1605 16) := by core033_kernel_decide
theorem stats2116 : actualRows2116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2116=3972 := by core033_kernel_decide
theorem rows2117 : actualRows2117=WordField.canonicalRows actualModulus 2117 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2117 : actualRows2117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2117=3396 := by core033_kernel_decide
theorem rows2118 : actualRows2118=WordField.canonicalRows actualModulus 2118 (.band 2116 2117) := by core033_kernel_decide
theorem stats2118 : actualRows2118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2118=5124 := by core033_kernel_decide
theorem rows2119 : actualRows2119=WordField.canonicalRows actualModulus 2119 (.shr 1605 24) := by core033_kernel_decide
theorem stats2119 : actualRows2119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2119=3396 := by core033_kernel_decide
theorem rows2120 : actualRows2120=WordField.canonicalRows actualModulus 2120 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2120 : actualRows2120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2120=3396 := by core033_kernel_decide
theorem rows2121 : actualRows2121=WordField.canonicalRows actualModulus 2121 (.band 2119 2120) := by core033_kernel_decide
theorem stats2121 : actualRows2121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2121=5124 := by core033_kernel_decide
theorem rows2122 : actualRows2122=WordField.canonicalRows actualModulus 2122 (.shr 1615 0) := by core033_kernel_decide
theorem stats2122 : actualRows2122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2122=5124 := by core033_kernel_decide
theorem rows2123 : actualRows2123=WordField.canonicalRows actualModulus 2123 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2123 : actualRows2123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2123=3396 := by core033_kernel_decide
theorem rows2124 : actualRows2124=WordField.canonicalRows actualModulus 2124 (.band 2122 2123) := by core033_kernel_decide
theorem stats2124 : actualRows2124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2124=5124 := by core033_kernel_decide
theorem rows2125 : actualRows2125=WordField.canonicalRows actualModulus 2125 (.shr 1615 8) := by core033_kernel_decide
theorem stats2125 : actualRows2125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2125=4548 := by core033_kernel_decide
theorem rows2126 : actualRows2126=WordField.canonicalRows actualModulus 2126 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2126 : actualRows2126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2126=3396 := by core033_kernel_decide
theorem rows2127 : actualRows2127=WordField.canonicalRows actualModulus 2127 (.band 2125 2126) := by core033_kernel_decide
theorem stats2127 : actualRows2127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2127=5124 := by core033_kernel_decide
theorem rows2128 : actualRows2128=WordField.canonicalRows actualModulus 2128 (.shr 1615 16) := by core033_kernel_decide
theorem stats2128 : actualRows2128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2128=3972 := by core033_kernel_decide
theorem rows2129 : actualRows2129=WordField.canonicalRows actualModulus 2129 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2129 : actualRows2129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2129=3396 := by core033_kernel_decide
theorem rows2130 : actualRows2130=WordField.canonicalRows actualModulus 2130 (.band 2128 2129) := by core033_kernel_decide
theorem stats2130 : actualRows2130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2130=5124 := by core033_kernel_decide
theorem rows2131 : actualRows2131=WordField.canonicalRows actualModulus 2131 (.shr 1615 24) := by core033_kernel_decide
theorem stats2131 : actualRows2131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2131=3396 := by core033_kernel_decide
theorem rows2132 : actualRows2132=WordField.canonicalRows actualModulus 2132 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2132 : actualRows2132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2132=3396 := by core033_kernel_decide
theorem rows2133 : actualRows2133=WordField.canonicalRows actualModulus 2133 (.band 2131 2132) := by core033_kernel_decide
theorem stats2133 : actualRows2133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2133=5124 := by core033_kernel_decide
theorem rows2134 : actualRows2134=WordField.canonicalRows actualModulus 2134 (.shr 1654 0) := by core033_kernel_decide
theorem stats2134 : actualRows2134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2134=5124 := by core033_kernel_decide
theorem rows2135 : actualRows2135=WordField.canonicalRows actualModulus 2135 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2135 : actualRows2135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2135=3396 := by core033_kernel_decide
theorem rows2136 : actualRows2136=WordField.canonicalRows actualModulus 2136 (.band 2134 2135) := by core033_kernel_decide
theorem stats2136 : actualRows2136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2136=5124 := by core033_kernel_decide
theorem rows2137 : actualRows2137=WordField.canonicalRows actualModulus 2137 (.shr 1654 8) := by core033_kernel_decide
theorem stats2137 : actualRows2137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2137=4548 := by core033_kernel_decide
theorem rows2138 : actualRows2138=WordField.canonicalRows actualModulus 2138 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2138 : actualRows2138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2138=3396 := by core033_kernel_decide
theorem rows2139 : actualRows2139=WordField.canonicalRows actualModulus 2139 (.band 2137 2138) := by core033_kernel_decide
theorem stats2139 : actualRows2139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2139=5124 := by core033_kernel_decide
theorem rows2140 : actualRows2140=WordField.canonicalRows actualModulus 2140 (.shr 1654 16) := by core033_kernel_decide
theorem stats2140 : actualRows2140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2140=3972 := by core033_kernel_decide
theorem rows2141 : actualRows2141=WordField.canonicalRows actualModulus 2141 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2141 : actualRows2141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2141=3396 := by core033_kernel_decide
theorem rows2142 : actualRows2142=WordField.canonicalRows actualModulus 2142 (.band 2140 2141) := by core033_kernel_decide
theorem stats2142 : actualRows2142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2142=5124 := by core033_kernel_decide
theorem rows2143 : actualRows2143=WordField.canonicalRows actualModulus 2143 (.shr 1654 24) := by core033_kernel_decide
theorem stats2143 : actualRows2143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2143=3396 := by core033_kernel_decide
def partRows31 : List R1CS.Row := actualRows2080++actualRows2081++actualRows2082++actualRows2083++actualRows2084++actualRows2085++actualRows2086++actualRows2087++actualRows2088++actualRows2089++actualRows2090++actualRows2091++actualRows2092++actualRows2093++actualRows2094++actualRows2095++actualRows2096++actualRows2097++actualRows2098++actualRows2099++actualRows2100++actualRows2101++actualRows2102++actualRows2103++actualRows2104++actualRows2105++actualRows2106++actualRows2107++actualRows2108++actualRows2109++actualRows2110++actualRows2111++actualRows2112++actualRows2113++actualRows2114++actualRows2115++actualRows2116++actualRows2117++actualRows2118++actualRows2119++actualRows2120++actualRows2121++actualRows2122++actualRows2123++actualRows2124++actualRows2125++actualRows2126++actualRows2127++actualRows2128++actualRows2129++actualRows2130++actualRows2131++actualRows2132++actualRows2133++actualRows2134++actualRows2135++actualRows2136++actualRows2137++actualRows2138++actualRows2139++actualRows2140++actualRows2141++actualRows2142++actualRows2143
def partOps31 : List WordIR.Op := [.shr 1595 16,.literal (BitVec.ofNat 32 255),.band 2080 2081,.shr 1595 24,.literal (BitVec.ofNat 32 255),.band 2083 2084,.shr 1485 0,.literal (BitVec.ofNat 32 255),.band 2086 2087,.shr 1485 8,.literal (BitVec.ofNat 32 255),.band 2089 2090,.shr 1485 16,.literal (BitVec.ofNat 32 255),.band 2092 2093,.shr 1485 24,.literal (BitVec.ofNat 32 255),.band 2095 2096,.shr 1495 0,.literal (BitVec.ofNat 32 255),.band 2098 2099,.shr 1495 8,.literal (BitVec.ofNat 32 255),.band 2101 2102,.shr 1495 16,.literal (BitVec.ofNat 32 255),.band 2104 2105,.shr 1495 24,.literal (BitVec.ofNat 32 255),.band 2107 2108,.shr 1605 0,.literal (BitVec.ofNat 32 255),.band 2110 2111,.shr 1605 8,.literal (BitVec.ofNat 32 255),.band 2113 2114,.shr 1605 16,.literal (BitVec.ofNat 32 255),.band 2116 2117,.shr 1605 24,.literal (BitVec.ofNat 32 255),.band 2119 2120,.shr 1615 0,.literal (BitVec.ofNat 32 255),.band 2122 2123,.shr 1615 8,.literal (BitVec.ofNat 32 255),.band 2125 2126,.shr 1615 16,.literal (BitVec.ofNat 32 255),.band 2128 2129,.shr 1615 24,.literal (BitVec.ofNat 32 255),.band 2131 2132,.shr 1654 0,.literal (BitVec.ofNat 32 255),.band 2134 2135,.shr 1654 8,.literal (BitVec.ofNat 32 255),.band 2137 2138,.shr 1654 16,.literal (BitVec.ofNat 32 255),.band 2140 2141,.shr 1654 24]
theorem partExact31 : partRows31=WordField.rows actualModulus 2080 partOps31 := by
  simp only [partRows31,partOps31,WordField.rows,rows2080,rows2081,rows2082,rows2083,rows2084,rows2085,rows2086,rows2087,rows2088,rows2089,rows2090,rows2091,rows2092,rows2093,rows2094,rows2095,rows2096,rows2097,rows2098,rows2099,rows2100,rows2101,rows2102,rows2103,rows2104,rows2105,rows2106,rows2107,rows2108,rows2109,rows2110,rows2111,rows2112,rows2113,rows2114,rows2115,rows2116,rows2117,rows2118,rows2119,rows2120,rows2121,rows2122,rows2123,rows2124,rows2125,rows2126,rows2127,rows2128,rows2129,rows2130,rows2131,rows2132,rows2133,rows2134,rows2135,rows2136,rows2137,rows2138,rows2139,rows2140,rows2141,rows2142,rows2143,List.append_assoc,List.append_nil]
theorem partLength31 : partOps31.length=64 := by decide
theorem partStats31 : partRows31.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows31=271488 := by
  simp only [partRows31,List.length_append,MatrixRowBlocks.rows_weight_append,stats2080.1,stats2080.2,stats2081.1,stats2081.2,stats2082.1,stats2082.2,stats2083.1,stats2083.2,stats2084.1,stats2084.2,stats2085.1,stats2085.2,stats2086.1,stats2086.2,stats2087.1,stats2087.2,stats2088.1,stats2088.2,stats2089.1,stats2089.2,stats2090.1,stats2090.2,stats2091.1,stats2091.2,stats2092.1,stats2092.2,stats2093.1,stats2093.2,stats2094.1,stats2094.2,stats2095.1,stats2095.2,stats2096.1,stats2096.2,stats2097.1,stats2097.2,stats2098.1,stats2098.2,stats2099.1,stats2099.2,stats2100.1,stats2100.2,stats2101.1,stats2101.2,stats2102.1,stats2102.2,stats2103.1,stats2103.2,stats2104.1,stats2104.2,stats2105.1,stats2105.2,stats2106.1,stats2106.2,stats2107.1,stats2107.2,stats2108.1,stats2108.2,stats2109.1,stats2109.2,stats2110.1,stats2110.2,stats2111.1,stats2111.2,stats2112.1,stats2112.2,stats2113.1,stats2113.2,stats2114.1,stats2114.2,stats2115.1,stats2115.2,stats2116.1,stats2116.2,stats2117.1,stats2117.2,stats2118.1,stats2118.2,stats2119.1,stats2119.2,stats2120.1,stats2120.2,stats2121.1,stats2121.2,stats2122.1,stats2122.2,stats2123.1,stats2123.2,stats2124.1,stats2124.2,stats2125.1,stats2125.2,stats2126.1,stats2126.2,stats2127.1,stats2127.2,stats2128.1,stats2128.2,stats2129.1,stats2129.2,stats2130.1,stats2130.2,stats2131.1,stats2131.2,stats2132.1,stats2132.2,stats2133.1,stats2133.2,stats2134.1,stats2134.2,stats2135.1,stats2135.2,stats2136.1,stats2136.2,stats2137.1,stats2137.2,stats2138.1,stats2138.2,stats2139.1,stats2139.2,stats2140.1,stats2140.2,stats2141.1,stats2141.2,stats2142.1,stats2142.2,stats2143.1,stats2143.2]
  decide
end QuotedPairedPathRoundCheckedRows
