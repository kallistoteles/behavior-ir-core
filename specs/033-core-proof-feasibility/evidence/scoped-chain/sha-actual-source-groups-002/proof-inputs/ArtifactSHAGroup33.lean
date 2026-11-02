import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2112 : List WordIR.Op := [.rotr 2132 25]
def bytes2112 : Bytes := ("    let r00000858: u32 = r00000854.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2112 : bytes2112=statementBytes 2136 (op2112.map lower) ∧ bytes2112.length=65 := by core033_kernel_decide
def op2113 : List WordIR.Op := [.bxor 2135 2136]
def bytes2113 : Bytes := ("    let r00000859: u32 = r00000857 ^ r00000858;\n" : String).toByteArray.data.toList
theorem checked2113 : bytes2113=statementBytes 2137 (op2113.map lower) ∧ bytes2113.length=48 := by core033_kernel_decide
def op2114 : List WordIR.Op := [.badd 2051 2137]
def bytes2114 : Bytes := ("    let r0000085a: u32 = r00000803.wrapping_add(r00000859);\n" : String).toByteArray.data.toList
theorem checked2114 : bytes2114=statementBytes 2138 (op2114.map lower) ∧ bytes2114.length=60 := by core033_kernel_decide
def op2115 : List WordIR.Op := [.band 2132 2105]
def bytes2115 : Bytes := ("    let r0000085b: u32 = r00000854 & r00000839;\n" : String).toByteArray.data.toList
theorem checked2115 : bytes2115=statementBytes 2139 (op2115.map lower) ∧ bytes2115.length=48 := by core033_kernel_decide
def op2116 : List WordIR.Op := [.bnot 2132]
def bytes2116 : Bytes := ("    let r0000085c: u32 = !r00000854;\n" : String).toByteArray.data.toList
theorem checked2116 : bytes2116=statementBytes 2140 (op2116.map lower) ∧ bytes2116.length=37 := by core033_kernel_decide
def op2117 : List WordIR.Op := [.band 2140 2078]
def bytes2117 : Bytes := ("    let r0000085d: u32 = r0000085c & r0000081e;\n" : String).toByteArray.data.toList
theorem checked2117 : bytes2117=statementBytes 2141 (op2117.map lower) ∧ bytes2117.length=48 := by core033_kernel_decide
def op2118 : List WordIR.Op := [.bxor 2139 2141]
def bytes2118 : Bytes := ("    let r0000085e: u32 = r0000085b ^ r0000085d;\n" : String).toByteArray.data.toList
theorem checked2118 : bytes2118=statementBytes 2142 (op2118.map lower) ∧ bytes2118.length=48 := by core033_kernel_decide
def op2119 : List WordIR.Op := [.badd 2138 2142]
def bytes2119 : Bytes := ("    let r0000085f: u32 = r0000085a.wrapping_add(r0000085e);\n" : String).toByteArray.data.toList
theorem checked2119 : bytes2119=statementBytes 2143 (op2119.map lower) ∧ bytes2119.length=60 := by core033_kernel_decide
def op2120 : List WordIR.Op := [.literal (BitVec.ofNat 32 1747873779)]
def bytes2120 : Bytes := ("    let r00000860: u32 = 0x682e6ff3_u32;\n" : String).toByteArray.data.toList
theorem checked2120 : bytes2120=statementBytes 2144 (op2120.map lower) ∧ bytes2120.length=41 := by core033_kernel_decide
def op2121 : List WordIR.Op := [.badd 2143 2144]
def bytes2121 : Bytes := ("    let r00000861: u32 = r0000085f.wrapping_add(r00000860);\n" : String).toByteArray.data.toList
theorem checked2121 : bytes2121=statementBytes 2145 (op2121.map lower) ∧ bytes2121.length=60 := by core033_kernel_decide
def op2122 : List WordIR.Op := [.badd 2145 543]
def bytes2122 : Bytes := ("    let r00000862: u32 = r00000861.wrapping_add(r0000021f);\n" : String).toByteArray.data.toList
theorem checked2122 : bytes2122=statementBytes 2146 (op2122.map lower) ∧ bytes2122.length=60 := by core033_kernel_decide
def op2123 : List WordIR.Op := [.rotr 2131 2]
def bytes2123 : Bytes := ("    let r00000863: u32 = r00000853.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2123 : bytes2123=statementBytes 2147 (op2123.map lower) ∧ bytes2123.length=65 := by core033_kernel_decide
def op2124 : List WordIR.Op := [.rotr 2131 13]
def bytes2124 : Bytes := ("    let r00000864: u32 = r00000853.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2124 : bytes2124=statementBytes 2148 (op2124.map lower) ∧ bytes2124.length=65 := by core033_kernel_decide
def op2125 : List WordIR.Op := [.bxor 2147 2148]
def bytes2125 : Bytes := ("    let r00000865: u32 = r00000863 ^ r00000864;\n" : String).toByteArray.data.toList
theorem checked2125 : bytes2125=statementBytes 2149 (op2125.map lower) ∧ bytes2125.length=48 := by core033_kernel_decide
def op2126 : List WordIR.Op := [.rotr 2131 22]
def bytes2126 : Bytes := ("    let r00000866: u32 = r00000853.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2126 : bytes2126=statementBytes 2150 (op2126.map lower) ∧ bytes2126.length=65 := by core033_kernel_decide
def op2127 : List WordIR.Op := [.bxor 2149 2150]
def bytes2127 : Bytes := ("    let r00000867: u32 = r00000865 ^ r00000866;\n" : String).toByteArray.data.toList
theorem checked2127 : bytes2127=statementBytes 2151 (op2127.map lower) ∧ bytes2127.length=48 := by core033_kernel_decide
def op2128 : List WordIR.Op := [.band 2131 2104]
def bytes2128 : Bytes := ("    let r00000868: u32 = r00000853 & r00000838;\n" : String).toByteArray.data.toList
theorem checked2128 : bytes2128=statementBytes 2152 (op2128.map lower) ∧ bytes2128.length=48 := by core033_kernel_decide
def op2129 : List WordIR.Op := [.band 2131 2077]
def bytes2129 : Bytes := ("    let r00000869: u32 = r00000853 & r0000081d;\n" : String).toByteArray.data.toList
theorem checked2129 : bytes2129=statementBytes 2153 (op2129.map lower) ∧ bytes2129.length=48 := by core033_kernel_decide
def op2130 : List WordIR.Op := [.bxor 2152 2153]
def bytes2130 : Bytes := ("    let r0000086a: u32 = r00000868 ^ r00000869;\n" : String).toByteArray.data.toList
theorem checked2130 : bytes2130=statementBytes 2154 (op2130.map lower) ∧ bytes2130.length=48 := by core033_kernel_decide
def op2131 : List WordIR.Op := [.band 2104 2077]
def bytes2131 : Bytes := ("    let r0000086b: u32 = r00000838 & r0000081d;\n" : String).toByteArray.data.toList
theorem checked2131 : bytes2131=statementBytes 2155 (op2131.map lower) ∧ bytes2131.length=48 := by core033_kernel_decide
def op2132 : List WordIR.Op := [.bxor 2154 2155]
def bytes2132 : Bytes := ("    let r0000086c: u32 = r0000086a ^ r0000086b;\n" : String).toByteArray.data.toList
theorem checked2132 : bytes2132=statementBytes 2156 (op2132.map lower) ∧ bytes2132.length=48 := by core033_kernel_decide
def op2133 : List WordIR.Op := [.badd 2151 2156]
def bytes2133 : Bytes := ("    let r0000086d: u32 = r00000867.wrapping_add(r0000086c);\n" : String).toByteArray.data.toList
theorem checked2133 : bytes2133=statementBytes 2157 (op2133.map lower) ∧ bytes2133.length=60 := by core033_kernel_decide
def op2134 : List WordIR.Op := [.badd 2146 2157]
def bytes2134 : Bytes := ("    let r0000086e: u32 = r00000862.wrapping_add(r0000086d);\n" : String).toByteArray.data.toList
theorem checked2134 : bytes2134=statementBytes 2158 (op2134.map lower) ∧ bytes2134.length=60 := by core033_kernel_decide
def op2135 : List WordIR.Op := [.badd 2050 2146]
def bytes2135 : Bytes := ("    let r0000086f: u32 = r00000802.wrapping_add(r00000862);\n" : String).toByteArray.data.toList
theorem checked2135 : bytes2135=statementBytes 2159 (op2135.map lower) ∧ bytes2135.length=60 := by core033_kernel_decide
def op2136 : List WordIR.Op := [.rotr 2159 6]
def bytes2136 : Bytes := ("    let r00000870: u32 = r0000086f.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2136 : bytes2136=statementBytes 2160 (op2136.map lower) ∧ bytes2136.length=65 := by core033_kernel_decide
def op2137 : List WordIR.Op := [.rotr 2159 11]
def bytes2137 : Bytes := ("    let r00000871: u32 = r0000086f.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2137 : bytes2137=statementBytes 2161 (op2137.map lower) ∧ bytes2137.length=65 := by core033_kernel_decide
def op2138 : List WordIR.Op := [.bxor 2160 2161]
def bytes2138 : Bytes := ("    let r00000872: u32 = r00000870 ^ r00000871;\n" : String).toByteArray.data.toList
theorem checked2138 : bytes2138=statementBytes 2162 (op2138.map lower) ∧ bytes2138.length=48 := by core033_kernel_decide
def op2139 : List WordIR.Op := [.rotr 2159 25]
def bytes2139 : Bytes := ("    let r00000873: u32 = r0000086f.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2139 : bytes2139=statementBytes 2163 (op2139.map lower) ∧ bytes2139.length=65 := by core033_kernel_decide
def op2140 : List WordIR.Op := [.bxor 2162 2163]
def bytes2140 : Bytes := ("    let r00000874: u32 = r00000872 ^ r00000873;\n" : String).toByteArray.data.toList
theorem checked2140 : bytes2140=statementBytes 2164 (op2140.map lower) ∧ bytes2140.length=48 := by core033_kernel_decide
def op2141 : List WordIR.Op := [.badd 2078 2164]
def bytes2141 : Bytes := ("    let r00000875: u32 = r0000081e.wrapping_add(r00000874);\n" : String).toByteArray.data.toList
theorem checked2141 : bytes2141=statementBytes 2165 (op2141.map lower) ∧ bytes2141.length=60 := by core033_kernel_decide
def op2142 : List WordIR.Op := [.band 2159 2132]
def bytes2142 : Bytes := ("    let r00000876: u32 = r0000086f & r00000854;\n" : String).toByteArray.data.toList
theorem checked2142 : bytes2142=statementBytes 2166 (op2142.map lower) ∧ bytes2142.length=48 := by core033_kernel_decide
def op2143 : List WordIR.Op := [.bnot 2159]
def bytes2143 : Bytes := ("    let r00000877: u32 = !r0000086f;\n" : String).toByteArray.data.toList
theorem checked2143 : bytes2143=statementBytes 2167 (op2143.map lower) ∧ bytes2143.length=37 := by core033_kernel_decide
def op2144 : List WordIR.Op := [.band 2167 2105]
def bytes2144 : Bytes := ("    let r00000878: u32 = r00000877 & r00000839;\n" : String).toByteArray.data.toList
theorem checked2144 : bytes2144=statementBytes 2168 (op2144.map lower) ∧ bytes2144.length=48 := by core033_kernel_decide
def op2145 : List WordIR.Op := [.bxor 2166 2168]
def bytes2145 : Bytes := ("    let r00000879: u32 = r00000876 ^ r00000878;\n" : String).toByteArray.data.toList
theorem checked2145 : bytes2145=statementBytes 2169 (op2145.map lower) ∧ bytes2145.length=48 := by core033_kernel_decide
def op2146 : List WordIR.Op := [.badd 2165 2169]
def bytes2146 : Bytes := ("    let r0000087a: u32 = r00000875.wrapping_add(r00000879);\n" : String).toByteArray.data.toList
theorem checked2146 : bytes2146=statementBytes 2170 (op2146.map lower) ∧ bytes2146.length=60 := by core033_kernel_decide
def op2147 : List WordIR.Op := [.literal (BitVec.ofNat 32 1955562222)]
def bytes2147 : Bytes := ("    let r0000087b: u32 = 0x748f82ee_u32;\n" : String).toByteArray.data.toList
theorem checked2147 : bytes2147=statementBytes 2171 (op2147.map lower) ∧ bytes2147.length=41 := by core033_kernel_decide
def op2148 : List WordIR.Op := [.badd 2170 2171]
def bytes2148 : Bytes := ("    let r0000087c: u32 = r0000087a.wrapping_add(r0000087b);\n" : String).toByteArray.data.toList
theorem checked2148 : bytes2148=statementBytes 2172 (op2148.map lower) ∧ bytes2148.length=60 := by core033_kernel_decide
def op2149 : List WordIR.Op := [.badd 2172 556]
def bytes2149 : Bytes := ("    let r0000087d: u32 = r0000087c.wrapping_add(r0000022c);\n" : String).toByteArray.data.toList
theorem checked2149 : bytes2149=statementBytes 2173 (op2149.map lower) ∧ bytes2149.length=60 := by core033_kernel_decide
def op2150 : List WordIR.Op := [.rotr 2158 2]
def bytes2150 : Bytes := ("    let r0000087e: u32 = r0000086e.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2150 : bytes2150=statementBytes 2174 (op2150.map lower) ∧ bytes2150.length=65 := by core033_kernel_decide
def op2151 : List WordIR.Op := [.rotr 2158 13]
def bytes2151 : Bytes := ("    let r0000087f: u32 = r0000086e.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2151 : bytes2151=statementBytes 2175 (op2151.map lower) ∧ bytes2151.length=65 := by core033_kernel_decide
def op2152 : List WordIR.Op := [.bxor 2174 2175]
def bytes2152 : Bytes := ("    let r00000880: u32 = r0000087e ^ r0000087f;\n" : String).toByteArray.data.toList
theorem checked2152 : bytes2152=statementBytes 2176 (op2152.map lower) ∧ bytes2152.length=48 := by core033_kernel_decide
def op2153 : List WordIR.Op := [.rotr 2158 22]
def bytes2153 : Bytes := ("    let r00000881: u32 = r0000086e.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2153 : bytes2153=statementBytes 2177 (op2153.map lower) ∧ bytes2153.length=65 := by core033_kernel_decide
def op2154 : List WordIR.Op := [.bxor 2176 2177]
def bytes2154 : Bytes := ("    let r00000882: u32 = r00000880 ^ r00000881;\n" : String).toByteArray.data.toList
theorem checked2154 : bytes2154=statementBytes 2178 (op2154.map lower) ∧ bytes2154.length=48 := by core033_kernel_decide
def op2155 : List WordIR.Op := [.band 2158 2131]
def bytes2155 : Bytes := ("    let r00000883: u32 = r0000086e & r00000853;\n" : String).toByteArray.data.toList
theorem checked2155 : bytes2155=statementBytes 2179 (op2155.map lower) ∧ bytes2155.length=48 := by core033_kernel_decide
def op2156 : List WordIR.Op := [.band 2158 2104]
def bytes2156 : Bytes := ("    let r00000884: u32 = r0000086e & r00000838;\n" : String).toByteArray.data.toList
theorem checked2156 : bytes2156=statementBytes 2180 (op2156.map lower) ∧ bytes2156.length=48 := by core033_kernel_decide
def op2157 : List WordIR.Op := [.bxor 2179 2180]
def bytes2157 : Bytes := ("    let r00000885: u32 = r00000883 ^ r00000884;\n" : String).toByteArray.data.toList
theorem checked2157 : bytes2157=statementBytes 2181 (op2157.map lower) ∧ bytes2157.length=48 := by core033_kernel_decide
def op2158 : List WordIR.Op := [.band 2131 2104]
def bytes2158 : Bytes := ("    let r00000886: u32 = r00000853 & r00000838;\n" : String).toByteArray.data.toList
theorem checked2158 : bytes2158=statementBytes 2182 (op2158.map lower) ∧ bytes2158.length=48 := by core033_kernel_decide
def op2159 : List WordIR.Op := [.bxor 2181 2182]
def bytes2159 : Bytes := ("    let r00000887: u32 = r00000885 ^ r00000886;\n" : String).toByteArray.data.toList
theorem checked2159 : bytes2159=statementBytes 2183 (op2159.map lower) ∧ bytes2159.length=48 := by core033_kernel_decide
def op2160 : List WordIR.Op := [.badd 2178 2183]
def bytes2160 : Bytes := ("    let r00000888: u32 = r00000882.wrapping_add(r00000887);\n" : String).toByteArray.data.toList
theorem checked2160 : bytes2160=statementBytes 2184 (op2160.map lower) ∧ bytes2160.length=60 := by core033_kernel_decide
def op2161 : List WordIR.Op := [.badd 2173 2184]
def bytes2161 : Bytes := ("    let r00000889: u32 = r0000087d.wrapping_add(r00000888);\n" : String).toByteArray.data.toList
theorem checked2161 : bytes2161=statementBytes 2185 (op2161.map lower) ∧ bytes2161.length=60 := by core033_kernel_decide
def op2162 : List WordIR.Op := [.badd 2077 2173]
def bytes2162 : Bytes := ("    let r0000088a: u32 = r0000081d.wrapping_add(r0000087d);\n" : String).toByteArray.data.toList
theorem checked2162 : bytes2162=statementBytes 2186 (op2162.map lower) ∧ bytes2162.length=60 := by core033_kernel_decide
def op2163 : List WordIR.Op := [.rotr 2186 6]
def bytes2163 : Bytes := ("    let r0000088b: u32 = r0000088a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2163 : bytes2163=statementBytes 2187 (op2163.map lower) ∧ bytes2163.length=65 := by core033_kernel_decide
def op2164 : List WordIR.Op := [.rotr 2186 11]
def bytes2164 : Bytes := ("    let r0000088c: u32 = r0000088a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2164 : bytes2164=statementBytes 2188 (op2164.map lower) ∧ bytes2164.length=65 := by core033_kernel_decide
def op2165 : List WordIR.Op := [.bxor 2187 2188]
def bytes2165 : Bytes := ("    let r0000088d: u32 = r0000088b ^ r0000088c;\n" : String).toByteArray.data.toList
theorem checked2165 : bytes2165=statementBytes 2189 (op2165.map lower) ∧ bytes2165.length=48 := by core033_kernel_decide
def op2166 : List WordIR.Op := [.rotr 2186 25]
def bytes2166 : Bytes := ("    let r0000088e: u32 = r0000088a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2166 : bytes2166=statementBytes 2190 (op2166.map lower) ∧ bytes2166.length=65 := by core033_kernel_decide
def op2167 : List WordIR.Op := [.bxor 2189 2190]
def bytes2167 : Bytes := ("    let r0000088f: u32 = r0000088d ^ r0000088e;\n" : String).toByteArray.data.toList
theorem checked2167 : bytes2167=statementBytes 2191 (op2167.map lower) ∧ bytes2167.length=48 := by core033_kernel_decide
def op2168 : List WordIR.Op := [.badd 2105 2191]
def bytes2168 : Bytes := ("    let r00000890: u32 = r00000839.wrapping_add(r0000088f);\n" : String).toByteArray.data.toList
theorem checked2168 : bytes2168=statementBytes 2192 (op2168.map lower) ∧ bytes2168.length=60 := by core033_kernel_decide
def op2169 : List WordIR.Op := [.band 2186 2159]
def bytes2169 : Bytes := ("    let r00000891: u32 = r0000088a & r0000086f;\n" : String).toByteArray.data.toList
theorem checked2169 : bytes2169=statementBytes 2193 (op2169.map lower) ∧ bytes2169.length=48 := by core033_kernel_decide
def op2170 : List WordIR.Op := [.bnot 2186]
def bytes2170 : Bytes := ("    let r00000892: u32 = !r0000088a;\n" : String).toByteArray.data.toList
theorem checked2170 : bytes2170=statementBytes 2194 (op2170.map lower) ∧ bytes2170.length=37 := by core033_kernel_decide
def op2171 : List WordIR.Op := [.band 2194 2132]
def bytes2171 : Bytes := ("    let r00000893: u32 = r00000892 & r00000854;\n" : String).toByteArray.data.toList
theorem checked2171 : bytes2171=statementBytes 2195 (op2171.map lower) ∧ bytes2171.length=48 := by core033_kernel_decide
def op2172 : List WordIR.Op := [.bxor 2193 2195]
def bytes2172 : Bytes := ("    let r00000894: u32 = r00000891 ^ r00000893;\n" : String).toByteArray.data.toList
theorem checked2172 : bytes2172=statementBytes 2196 (op2172.map lower) ∧ bytes2172.length=48 := by core033_kernel_decide
def op2173 : List WordIR.Op := [.badd 2192 2196]
def bytes2173 : Bytes := ("    let r00000895: u32 = r00000890.wrapping_add(r00000894);\n" : String).toByteArray.data.toList
theorem checked2173 : bytes2173=statementBytes 2197 (op2173.map lower) ∧ bytes2173.length=60 := by core033_kernel_decide
def op2174 : List WordIR.Op := [.literal (BitVec.ofNat 32 2024104815)]
def bytes2174 : Bytes := ("    let r00000896: u32 = 0x78a5636f_u32;\n" : String).toByteArray.data.toList
theorem checked2174 : bytes2174=statementBytes 2198 (op2174.map lower) ∧ bytes2174.length=41 := by core033_kernel_decide
def op2175 : List WordIR.Op := [.badd 2197 2198]
def bytes2175 : Bytes := ("    let r00000897: u32 = r00000895.wrapping_add(r00000896);\n" : String).toByteArray.data.toList
theorem checked2175 : bytes2175=statementBytes 2199 (op2175.map lower) ∧ bytes2175.length=60 := by core033_kernel_decide
def innerBlocks33 : List (List WordIR.Op) := [op2112,op2113,op2114,op2115,op2116,op2117,op2118,op2119,op2120,op2121,op2122,op2123,op2124,op2125,op2126,op2127,op2128,op2129,op2130,op2131,op2132,op2133,op2134,op2135,op2136,op2137,op2138,op2139,op2140,op2141,op2142,op2143,op2144,op2145,op2146,op2147,op2148,op2149,op2150,op2151,op2152,op2153,op2154,op2155,op2156,op2157,op2158,op2159,op2160,op2161,op2162,op2163,op2164,op2165,op2166,op2167,op2168,op2169,op2170,op2171,op2172,op2173,op2174,op2175]
def innerBytes33 : List Bytes := [bytes2112,bytes2113,bytes2114,bytes2115,bytes2116,bytes2117,bytes2118,bytes2119,bytes2120,bytes2121,bytes2122,bytes2123,bytes2124,bytes2125,bytes2126,bytes2127,bytes2128,bytes2129,bytes2130,bytes2131,bytes2132,bytes2133,bytes2134,bytes2135,bytes2136,bytes2137,bytes2138,bytes2139,bytes2140,bytes2141,bytes2142,bytes2143,bytes2144,bytes2145,bytes2146,bytes2147,bytes2148,bytes2149,bytes2150,bytes2151,bytes2152,bytes2153,bytes2154,bytes2155,bytes2156,bytes2157,bytes2158,bytes2159,bytes2160,bytes2161,bytes2162,bytes2163,bytes2164,bytes2165,bytes2166,bytes2167,bytes2168,bytes2169,bytes2170,bytes2171,bytes2172,bytes2173,bytes2174,bytes2175]
def partOps33 : List WordIR.Op := innerBlocks33.flatten
def partBytes33 : Bytes := innerBytes33.flatten
theorem partChain33 : BlockChain 2136 innerBlocks33 innerBytes33 := by
  unfold innerBlocks33 innerBytes33
  exact (.cons _ _ _ _ _ checked2112.1 (.cons _ _ _ _ _ checked2113.1 (.cons _ _ _ _ _ checked2114.1 (.cons _ _ _ _ _ checked2115.1 (.cons _ _ _ _ _ checked2116.1 (.cons _ _ _ _ _ checked2117.1 (.cons _ _ _ _ _ checked2118.1 (.cons _ _ _ _ _ checked2119.1 (.cons _ _ _ _ _ checked2120.1 (.cons _ _ _ _ _ checked2121.1 (.cons _ _ _ _ _ checked2122.1 (.cons _ _ _ _ _ checked2123.1 (.cons _ _ _ _ _ checked2124.1 (.cons _ _ _ _ _ checked2125.1 (.cons _ _ _ _ _ checked2126.1 (.cons _ _ _ _ _ checked2127.1 (.cons _ _ _ _ _ checked2128.1 (.cons _ _ _ _ _ checked2129.1 (.cons _ _ _ _ _ checked2130.1 (.cons _ _ _ _ _ checked2131.1 (.cons _ _ _ _ _ checked2132.1 (.cons _ _ _ _ _ checked2133.1 (.cons _ _ _ _ _ checked2134.1 (.cons _ _ _ _ _ checked2135.1 (.cons _ _ _ _ _ checked2136.1 (.cons _ _ _ _ _ checked2137.1 (.cons _ _ _ _ _ checked2138.1 (.cons _ _ _ _ _ checked2139.1 (.cons _ _ _ _ _ checked2140.1 (.cons _ _ _ _ _ checked2141.1 (.cons _ _ _ _ _ checked2142.1 (.cons _ _ _ _ _ checked2143.1 (.cons _ _ _ _ _ checked2144.1 (.cons _ _ _ _ _ checked2145.1 (.cons _ _ _ _ _ checked2146.1 (.cons _ _ _ _ _ checked2147.1 (.cons _ _ _ _ _ checked2148.1 (.cons _ _ _ _ _ checked2149.1 (.cons _ _ _ _ _ checked2150.1 (.cons _ _ _ _ _ checked2151.1 (.cons _ _ _ _ _ checked2152.1 (.cons _ _ _ _ _ checked2153.1 (.cons _ _ _ _ _ checked2154.1 (.cons _ _ _ _ _ checked2155.1 (.cons _ _ _ _ _ checked2156.1 (.cons _ _ _ _ _ checked2157.1 (.cons _ _ _ _ _ checked2158.1 (.cons _ _ _ _ _ checked2159.1 (.cons _ _ _ _ _ checked2160.1 (.cons _ _ _ _ _ checked2161.1 (.cons _ _ _ _ _ checked2162.1 (.cons _ _ _ _ _ checked2163.1 (.cons _ _ _ _ _ checked2164.1 (.cons _ _ _ _ _ checked2165.1 (.cons _ _ _ _ _ checked2166.1 (.cons _ _ _ _ _ checked2167.1 (.cons _ _ _ _ _ checked2168.1 (.cons _ _ _ _ _ checked2169.1 (.cons _ _ _ _ _ checked2170.1 (.cons _ _ _ _ _ checked2171.1 (.cons _ _ _ _ _ checked2172.1 (.cons _ _ _ _ _ checked2173.1 (.cons _ _ _ _ _ checked2174.1 (.cons _ _ _ _ _ checked2175.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked33 : partBytes33=statementBytes 2136 (partOps33.map lower) ∧ partBytes33.length=3443 := by
  constructor
  · exact (chain_exact partChain33).trans (body_exact innerBlocks33 2136)
  · simp only [partBytes33,WordSource.chunk_sizes_exact,innerBytes33,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2112.2,checked2113.2,checked2114.2,checked2115.2,checked2116.2,checked2117.2,checked2118.2,checked2119.2,checked2120.2,checked2121.2,checked2122.2,checked2123.2,checked2124.2,checked2125.2,checked2126.2,checked2127.2,checked2128.2,checked2129.2,checked2130.2,checked2131.2,checked2132.2,checked2133.2,checked2134.2,checked2135.2,checked2136.2,checked2137.2,checked2138.2,checked2139.2,checked2140.2,checked2141.2,checked2142.2,checked2143.2,checked2144.2,checked2145.2,checked2146.2,checked2147.2,checked2148.2,checked2149.2,checked2150.2,checked2151.2,checked2152.2,checked2153.2,checked2154.2,checked2155.2,checked2156.2,checked2157.2,checked2158.2,checked2159.2,checked2160.2,checked2161.2,checked2162.2,checked2163.2,checked2164.2,checked2165.2,checked2166.2,checked2167.2,checked2168.2,checked2169.2,checked2170.2,checked2171.2,checked2172.2,checked2173.2,checked2174.2,checked2175.2]
    decide
theorem partLength33 : partOps33.length=64 := by
  simp only [partOps33,innerBlocks33,op2112,op2113,op2114,op2115,op2116,op2117,op2118,op2119,op2120,op2121,op2122,op2123,op2124,op2125,op2126,op2127,op2128,op2129,op2130,op2131,op2132,op2133,op2134,op2135,op2136,op2137,op2138,op2139,op2140,op2141,op2142,op2143,op2144,op2145,op2146,op2147,op2148,op2149,op2150,op2151,op2152,op2153,op2154,op2155,op2156,op2157,op2158,op2159,op2160,op2161,op2162,op2163,op2164,op2165,op2166,op2167,op2168,op2169,op2170,op2171,op2172,op2173,op2174,op2175,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
