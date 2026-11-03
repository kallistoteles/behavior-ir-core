import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup33
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2112 : List WordIR.Op := [.badd 2178 2183]
def bytes2112 : Bytes := ("    let r00000888: u32 = r00000882.wrapping_add(r00000887);\n" : String).toByteArray.data.toList
theorem checked2112 : bytes2112=statementBytes 2184 (op2112.map lower) ∧ bytes2112.length=60 := by core033_kernel_decide
def op2113 : List WordIR.Op := [.badd 2173 2184]
def bytes2113 : Bytes := ("    let r00000889: u32 = r0000087d.wrapping_add(r00000888);\n" : String).toByteArray.data.toList
theorem checked2113 : bytes2113=statementBytes 2185 (op2113.map lower) ∧ bytes2113.length=60 := by core033_kernel_decide
def op2114 : List WordIR.Op := [.badd 2077 2173]
def bytes2114 : Bytes := ("    let r0000088a: u32 = r0000081d.wrapping_add(r0000087d);\n" : String).toByteArray.data.toList
theorem checked2114 : bytes2114=statementBytes 2186 (op2114.map lower) ∧ bytes2114.length=60 := by core033_kernel_decide
def op2115 : List WordIR.Op := [.rotr 2186 6]
def bytes2115 : Bytes := ("    let r0000088b: u32 = r0000088a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2115 : bytes2115=statementBytes 2187 (op2115.map lower) ∧ bytes2115.length=65 := by core033_kernel_decide
def op2116 : List WordIR.Op := [.rotr 2186 11]
def bytes2116 : Bytes := ("    let r0000088c: u32 = r0000088a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2116 : bytes2116=statementBytes 2188 (op2116.map lower) ∧ bytes2116.length=65 := by core033_kernel_decide
def op2117 : List WordIR.Op := [.bxor 2187 2188]
def bytes2117 : Bytes := ("    let r0000088d: u32 = r0000088b ^ r0000088c;\n" : String).toByteArray.data.toList
theorem checked2117 : bytes2117=statementBytes 2189 (op2117.map lower) ∧ bytes2117.length=48 := by core033_kernel_decide
def op2118 : List WordIR.Op := [.rotr 2186 25]
def bytes2118 : Bytes := ("    let r0000088e: u32 = r0000088a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2118 : bytes2118=statementBytes 2190 (op2118.map lower) ∧ bytes2118.length=65 := by core033_kernel_decide
def op2119 : List WordIR.Op := [.bxor 2189 2190]
def bytes2119 : Bytes := ("    let r0000088f: u32 = r0000088d ^ r0000088e;\n" : String).toByteArray.data.toList
theorem checked2119 : bytes2119=statementBytes 2191 (op2119.map lower) ∧ bytes2119.length=48 := by core033_kernel_decide
def op2120 : List WordIR.Op := [.badd 2105 2191]
def bytes2120 : Bytes := ("    let r00000890: u32 = r00000839.wrapping_add(r0000088f);\n" : String).toByteArray.data.toList
theorem checked2120 : bytes2120=statementBytes 2192 (op2120.map lower) ∧ bytes2120.length=60 := by core033_kernel_decide
def op2121 : List WordIR.Op := [.band 2186 2159]
def bytes2121 : Bytes := ("    let r00000891: u32 = r0000088a & r0000086f;\n" : String).toByteArray.data.toList
theorem checked2121 : bytes2121=statementBytes 2193 (op2121.map lower) ∧ bytes2121.length=48 := by core033_kernel_decide
def op2122 : List WordIR.Op := [.bnot 2186]
def bytes2122 : Bytes := ("    let r00000892: u32 = !r0000088a;\n" : String).toByteArray.data.toList
theorem checked2122 : bytes2122=statementBytes 2194 (op2122.map lower) ∧ bytes2122.length=37 := by core033_kernel_decide
def op2123 : List WordIR.Op := [.band 2194 2132]
def bytes2123 : Bytes := ("    let r00000893: u32 = r00000892 & r00000854;\n" : String).toByteArray.data.toList
theorem checked2123 : bytes2123=statementBytes 2195 (op2123.map lower) ∧ bytes2123.length=48 := by core033_kernel_decide
def op2124 : List WordIR.Op := [.bxor 2193 2195]
def bytes2124 : Bytes := ("    let r00000894: u32 = r00000891 ^ r00000893;\n" : String).toByteArray.data.toList
theorem checked2124 : bytes2124=statementBytes 2196 (op2124.map lower) ∧ bytes2124.length=48 := by core033_kernel_decide
def op2125 : List WordIR.Op := [.badd 2192 2196]
def bytes2125 : Bytes := ("    let r00000895: u32 = r00000890.wrapping_add(r00000894);\n" : String).toByteArray.data.toList
theorem checked2125 : bytes2125=statementBytes 2197 (op2125.map lower) ∧ bytes2125.length=60 := by core033_kernel_decide
def op2126 : List WordIR.Op := [.literal (BitVec.ofNat 32 310598401)]
def bytes2126 : Bytes := ("    let r00000896: u32 = 0x12835b01_u32;\n" : String).toByteArray.data.toList
theorem checked2126 : bytes2126=statementBytes 2198 (op2126.map lower) ∧ bytes2126.length=41 := by core033_kernel_decide
def op2127 : List WordIR.Op := [.badd 2197 2198]
def bytes2127 : Bytes := ("    let r00000897: u32 = r00000895.wrapping_add(r00000896);\n" : String).toByteArray.data.toList
theorem checked2127 : bytes2127=statementBytes 2199 (op2127.map lower) ∧ bytes2127.length=60 := by core033_kernel_decide
def op2128 : List WordIR.Op := [.badd 2199 131]
def bytes2128 : Bytes := ("    let r00000898: u32 = r00000897.wrapping_add(r00000083);\n" : String).toByteArray.data.toList
theorem checked2128 : bytes2128=statementBytes 2200 (op2128.map lower) ∧ bytes2128.length=60 := by core033_kernel_decide
def op2129 : List WordIR.Op := [.rotr 2185 2]
def bytes2129 : Bytes := ("    let r00000899: u32 = r00000889.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2129 : bytes2129=statementBytes 2201 (op2129.map lower) ∧ bytes2129.length=65 := by core033_kernel_decide
def op2130 : List WordIR.Op := [.rotr 2185 13]
def bytes2130 : Bytes := ("    let r0000089a: u32 = r00000889.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2130 : bytes2130=statementBytes 2202 (op2130.map lower) ∧ bytes2130.length=65 := by core033_kernel_decide
def op2131 : List WordIR.Op := [.bxor 2201 2202]
def bytes2131 : Bytes := ("    let r0000089b: u32 = r00000899 ^ r0000089a;\n" : String).toByteArray.data.toList
theorem checked2131 : bytes2131=statementBytes 2203 (op2131.map lower) ∧ bytes2131.length=48 := by core033_kernel_decide
def op2132 : List WordIR.Op := [.rotr 2185 22]
def bytes2132 : Bytes := ("    let r0000089c: u32 = r00000889.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2132 : bytes2132=statementBytes 2204 (op2132.map lower) ∧ bytes2132.length=65 := by core033_kernel_decide
def op2133 : List WordIR.Op := [.bxor 2203 2204]
def bytes2133 : Bytes := ("    let r0000089d: u32 = r0000089b ^ r0000089c;\n" : String).toByteArray.data.toList
theorem checked2133 : bytes2133=statementBytes 2205 (op2133.map lower) ∧ bytes2133.length=48 := by core033_kernel_decide
def op2134 : List WordIR.Op := [.band 2185 2158]
def bytes2134 : Bytes := ("    let r0000089e: u32 = r00000889 & r0000086e;\n" : String).toByteArray.data.toList
theorem checked2134 : bytes2134=statementBytes 2206 (op2134.map lower) ∧ bytes2134.length=48 := by core033_kernel_decide
def op2135 : List WordIR.Op := [.band 2185 2131]
def bytes2135 : Bytes := ("    let r0000089f: u32 = r00000889 & r00000853;\n" : String).toByteArray.data.toList
theorem checked2135 : bytes2135=statementBytes 2207 (op2135.map lower) ∧ bytes2135.length=48 := by core033_kernel_decide
def op2136 : List WordIR.Op := [.bxor 2206 2207]
def bytes2136 : Bytes := ("    let r000008a0: u32 = r0000089e ^ r0000089f;\n" : String).toByteArray.data.toList
theorem checked2136 : bytes2136=statementBytes 2208 (op2136.map lower) ∧ bytes2136.length=48 := by core033_kernel_decide
def op2137 : List WordIR.Op := [.band 2158 2131]
def bytes2137 : Bytes := ("    let r000008a1: u32 = r0000086e & r00000853;\n" : String).toByteArray.data.toList
theorem checked2137 : bytes2137=statementBytes 2209 (op2137.map lower) ∧ bytes2137.length=48 := by core033_kernel_decide
def op2138 : List WordIR.Op := [.bxor 2208 2209]
def bytes2138 : Bytes := ("    let r000008a2: u32 = r000008a0 ^ r000008a1;\n" : String).toByteArray.data.toList
theorem checked2138 : bytes2138=statementBytes 2210 (op2138.map lower) ∧ bytes2138.length=48 := by core033_kernel_decide
def op2139 : List WordIR.Op := [.badd 2205 2210]
def bytes2139 : Bytes := ("    let r000008a3: u32 = r0000089d.wrapping_add(r000008a2);\n" : String).toByteArray.data.toList
theorem checked2139 : bytes2139=statementBytes 2211 (op2139.map lower) ∧ bytes2139.length=60 := by core033_kernel_decide
def op2140 : List WordIR.Op := [.badd 2200 2211]
def bytes2140 : Bytes := ("    let r000008a4: u32 = r00000898.wrapping_add(r000008a3);\n" : String).toByteArray.data.toList
theorem checked2140 : bytes2140=statementBytes 2212 (op2140.map lower) ∧ bytes2140.length=60 := by core033_kernel_decide
def op2141 : List WordIR.Op := [.badd 2104 2200]
def bytes2141 : Bytes := ("    let r000008a5: u32 = r00000838.wrapping_add(r00000898);\n" : String).toByteArray.data.toList
theorem checked2141 : bytes2141=statementBytes 2213 (op2141.map lower) ∧ bytes2141.length=60 := by core033_kernel_decide
def op2142 : List WordIR.Op := [.rotr 2213 6]
def bytes2142 : Bytes := ("    let r000008a6: u32 = r000008a5.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2142 : bytes2142=statementBytes 2214 (op2142.map lower) ∧ bytes2142.length=65 := by core033_kernel_decide
def op2143 : List WordIR.Op := [.rotr 2213 11]
def bytes2143 : Bytes := ("    let r000008a7: u32 = r000008a5.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2143 : bytes2143=statementBytes 2215 (op2143.map lower) ∧ bytes2143.length=65 := by core033_kernel_decide
def op2144 : List WordIR.Op := [.bxor 2214 2215]
def bytes2144 : Bytes := ("    let r000008a8: u32 = r000008a6 ^ r000008a7;\n" : String).toByteArray.data.toList
theorem checked2144 : bytes2144=statementBytes 2216 (op2144.map lower) ∧ bytes2144.length=48 := by core033_kernel_decide
def op2145 : List WordIR.Op := [.rotr 2213 25]
def bytes2145 : Bytes := ("    let r000008a9: u32 = r000008a5.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2145 : bytes2145=statementBytes 2217 (op2145.map lower) ∧ bytes2145.length=65 := by core033_kernel_decide
def op2146 : List WordIR.Op := [.bxor 2216 2217]
def bytes2146 : Bytes := ("    let r000008aa: u32 = r000008a8 ^ r000008a9;\n" : String).toByteArray.data.toList
theorem checked2146 : bytes2146=statementBytes 2218 (op2146.map lower) ∧ bytes2146.length=48 := by core033_kernel_decide
def op2147 : List WordIR.Op := [.badd 2132 2218]
def bytes2147 : Bytes := ("    let r000008ab: u32 = r00000854.wrapping_add(r000008aa);\n" : String).toByteArray.data.toList
theorem checked2147 : bytes2147=statementBytes 2219 (op2147.map lower) ∧ bytes2147.length=60 := by core033_kernel_decide
def op2148 : List WordIR.Op := [.band 2213 2186]
def bytes2148 : Bytes := ("    let r000008ac: u32 = r000008a5 & r0000088a;\n" : String).toByteArray.data.toList
theorem checked2148 : bytes2148=statementBytes 2220 (op2148.map lower) ∧ bytes2148.length=48 := by core033_kernel_decide
def op2149 : List WordIR.Op := [.bnot 2213]
def bytes2149 : Bytes := ("    let r000008ad: u32 = !r000008a5;\n" : String).toByteArray.data.toList
theorem checked2149 : bytes2149=statementBytes 2221 (op2149.map lower) ∧ bytes2149.length=37 := by core033_kernel_decide
def op2150 : List WordIR.Op := [.band 2221 2159]
def bytes2150 : Bytes := ("    let r000008ae: u32 = r000008ad & r0000086f;\n" : String).toByteArray.data.toList
theorem checked2150 : bytes2150=statementBytes 2222 (op2150.map lower) ∧ bytes2150.length=48 := by core033_kernel_decide
def op2151 : List WordIR.Op := [.bxor 2220 2222]
def bytes2151 : Bytes := ("    let r000008af: u32 = r000008ac ^ r000008ae;\n" : String).toByteArray.data.toList
theorem checked2151 : bytes2151=statementBytes 2223 (op2151.map lower) ∧ bytes2151.length=48 := by core033_kernel_decide
def op2152 : List WordIR.Op := [.badd 2219 2223]
def bytes2152 : Bytes := ("    let r000008b0: u32 = r000008ab.wrapping_add(r000008af);\n" : String).toByteArray.data.toList
theorem checked2152 : bytes2152=statementBytes 2224 (op2152.map lower) ∧ bytes2152.length=60 := by core033_kernel_decide
def op2153 : List WordIR.Op := [.literal (BitVec.ofNat 32 607225278)]
def bytes2153 : Bytes := ("    let r000008b1: u32 = 0x243185be_u32;\n" : String).toByteArray.data.toList
theorem checked2153 : bytes2153=statementBytes 2225 (op2153.map lower) ∧ bytes2153.length=41 := by core033_kernel_decide
def op2154 : List WordIR.Op := [.badd 2224 2225]
def bytes2154 : Bytes := ("    let r000008b2: u32 = r000008b0.wrapping_add(r000008b1);\n" : String).toByteArray.data.toList
theorem checked2154 : bytes2154=statementBytes 2226 (op2154.map lower) ∧ bytes2154.length=60 := by core033_kernel_decide
def op2155 : List WordIR.Op := [.badd 2226 137]
def bytes2155 : Bytes := ("    let r000008b3: u32 = r000008b2.wrapping_add(r00000089);\n" : String).toByteArray.data.toList
theorem checked2155 : bytes2155=statementBytes 2227 (op2155.map lower) ∧ bytes2155.length=60 := by core033_kernel_decide
def op2156 : List WordIR.Op := [.rotr 2212 2]
def bytes2156 : Bytes := ("    let r000008b4: u32 = r000008a4.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2156 : bytes2156=statementBytes 2228 (op2156.map lower) ∧ bytes2156.length=65 := by core033_kernel_decide
def op2157 : List WordIR.Op := [.rotr 2212 13]
def bytes2157 : Bytes := ("    let r000008b5: u32 = r000008a4.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2157 : bytes2157=statementBytes 2229 (op2157.map lower) ∧ bytes2157.length=65 := by core033_kernel_decide
def op2158 : List WordIR.Op := [.bxor 2228 2229]
def bytes2158 : Bytes := ("    let r000008b6: u32 = r000008b4 ^ r000008b5;\n" : String).toByteArray.data.toList
theorem checked2158 : bytes2158=statementBytes 2230 (op2158.map lower) ∧ bytes2158.length=48 := by core033_kernel_decide
def op2159 : List WordIR.Op := [.rotr 2212 22]
def bytes2159 : Bytes := ("    let r000008b7: u32 = r000008a4.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2159 : bytes2159=statementBytes 2231 (op2159.map lower) ∧ bytes2159.length=65 := by core033_kernel_decide
def op2160 : List WordIR.Op := [.bxor 2230 2231]
def bytes2160 : Bytes := ("    let r000008b8: u32 = r000008b6 ^ r000008b7;\n" : String).toByteArray.data.toList
theorem checked2160 : bytes2160=statementBytes 2232 (op2160.map lower) ∧ bytes2160.length=48 := by core033_kernel_decide
def op2161 : List WordIR.Op := [.band 2212 2185]
def bytes2161 : Bytes := ("    let r000008b9: u32 = r000008a4 & r00000889;\n" : String).toByteArray.data.toList
theorem checked2161 : bytes2161=statementBytes 2233 (op2161.map lower) ∧ bytes2161.length=48 := by core033_kernel_decide
def op2162 : List WordIR.Op := [.band 2212 2158]
def bytes2162 : Bytes := ("    let r000008ba: u32 = r000008a4 & r0000086e;\n" : String).toByteArray.data.toList
theorem checked2162 : bytes2162=statementBytes 2234 (op2162.map lower) ∧ bytes2162.length=48 := by core033_kernel_decide
def op2163 : List WordIR.Op := [.bxor 2233 2234]
def bytes2163 : Bytes := ("    let r000008bb: u32 = r000008b9 ^ r000008ba;\n" : String).toByteArray.data.toList
theorem checked2163 : bytes2163=statementBytes 2235 (op2163.map lower) ∧ bytes2163.length=48 := by core033_kernel_decide
def op2164 : List WordIR.Op := [.band 2185 2158]
def bytes2164 : Bytes := ("    let r000008bc: u32 = r00000889 & r0000086e;\n" : String).toByteArray.data.toList
theorem checked2164 : bytes2164=statementBytes 2236 (op2164.map lower) ∧ bytes2164.length=48 := by core033_kernel_decide
def op2165 : List WordIR.Op := [.bxor 2235 2236]
def bytes2165 : Bytes := ("    let r000008bd: u32 = r000008bb ^ r000008bc;\n" : String).toByteArray.data.toList
theorem checked2165 : bytes2165=statementBytes 2237 (op2165.map lower) ∧ bytes2165.length=48 := by core033_kernel_decide
def op2166 : List WordIR.Op := [.badd 2232 2237]
def bytes2166 : Bytes := ("    let r000008be: u32 = r000008b8.wrapping_add(r000008bd);\n" : String).toByteArray.data.toList
theorem checked2166 : bytes2166=statementBytes 2238 (op2166.map lower) ∧ bytes2166.length=60 := by core033_kernel_decide
def op2167 : List WordIR.Op := [.badd 2227 2238]
def bytes2167 : Bytes := ("    let r000008bf: u32 = r000008b3.wrapping_add(r000008be);\n" : String).toByteArray.data.toList
theorem checked2167 : bytes2167=statementBytes 2239 (op2167.map lower) ∧ bytes2167.length=60 := by core033_kernel_decide
def op2168 : List WordIR.Op := [.badd 2131 2227]
def bytes2168 : Bytes := ("    let r000008c0: u32 = r00000853.wrapping_add(r000008b3);\n" : String).toByteArray.data.toList
theorem checked2168 : bytes2168=statementBytes 2240 (op2168.map lower) ∧ bytes2168.length=60 := by core033_kernel_decide
def op2169 : List WordIR.Op := [.rotr 2240 6]
def bytes2169 : Bytes := ("    let r000008c1: u32 = r000008c0.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2169 : bytes2169=statementBytes 2241 (op2169.map lower) ∧ bytes2169.length=65 := by core033_kernel_decide
def op2170 : List WordIR.Op := [.rotr 2240 11]
def bytes2170 : Bytes := ("    let r000008c2: u32 = r000008c0.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2170 : bytes2170=statementBytes 2242 (op2170.map lower) ∧ bytes2170.length=65 := by core033_kernel_decide
def op2171 : List WordIR.Op := [.bxor 2241 2242]
def bytes2171 : Bytes := ("    let r000008c3: u32 = r000008c1 ^ r000008c2;\n" : String).toByteArray.data.toList
theorem checked2171 : bytes2171=statementBytes 2243 (op2171.map lower) ∧ bytes2171.length=48 := by core033_kernel_decide
def op2172 : List WordIR.Op := [.rotr 2240 25]
def bytes2172 : Bytes := ("    let r000008c4: u32 = r000008c0.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2172 : bytes2172=statementBytes 2244 (op2172.map lower) ∧ bytes2172.length=65 := by core033_kernel_decide
def op2173 : List WordIR.Op := [.bxor 2243 2244]
def bytes2173 : Bytes := ("    let r000008c5: u32 = r000008c3 ^ r000008c4;\n" : String).toByteArray.data.toList
theorem checked2173 : bytes2173=statementBytes 2245 (op2173.map lower) ∧ bytes2173.length=48 := by core033_kernel_decide
def op2174 : List WordIR.Op := [.badd 2159 2245]
def bytes2174 : Bytes := ("    let r000008c6: u32 = r0000086f.wrapping_add(r000008c5);\n" : String).toByteArray.data.toList
theorem checked2174 : bytes2174=statementBytes 2246 (op2174.map lower) ∧ bytes2174.length=60 := by core033_kernel_decide
def op2175 : List WordIR.Op := [.band 2240 2213]
def bytes2175 : Bytes := ("    let r000008c7: u32 = r000008c0 & r000008a5;\n" : String).toByteArray.data.toList
theorem checked2175 : bytes2175=statementBytes 2247 (op2175.map lower) ∧ bytes2175.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2112,op2113,op2114,op2115,op2116,op2117,op2118,op2119,op2120,op2121,op2122,op2123,op2124,op2125,op2126,op2127,op2128,op2129,op2130,op2131,op2132,op2133,op2134,op2135,op2136,op2137,op2138,op2139,op2140,op2141,op2142,op2143,op2144,op2145,op2146,op2147,op2148,op2149,op2150,op2151,op2152,op2153,op2154,op2155,op2156,op2157,op2158,op2159,op2160,op2161,op2162,op2163,op2164,op2165,op2166,op2167,op2168,op2169,op2170,op2171,op2172,op2173,op2174,op2175]
def chunks : List Bytes := [bytes2112,bytes2113,bytes2114,bytes2115,bytes2116,bytes2117,bytes2118,bytes2119,bytes2120,bytes2121,bytes2122,bytes2123,bytes2124,bytes2125,bytes2126,bytes2127,bytes2128,bytes2129,bytes2130,bytes2131,bytes2132,bytes2133,bytes2134,bytes2135,bytes2136,bytes2137,bytes2138,bytes2139,bytes2140,bytes2141,bytes2142,bytes2143,bytes2144,bytes2145,bytes2146,bytes2147,bytes2148,bytes2149,bytes2150,bytes2151,bytes2152,bytes2153,bytes2154,bytes2155,bytes2156,bytes2157,bytes2158,bytes2159,bytes2160,bytes2161,bytes2162,bytes2163,bytes2164,bytes2165,bytes2166,bytes2167,bytes2168,bytes2169,bytes2170,bytes2171,bytes2172,bytes2173,bytes2174,bytes2175]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2184 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2112.1 (.cons _ _ _ _ _ checked2113.1 (.cons _ _ _ _ _ checked2114.1 (.cons _ _ _ _ _ checked2115.1 (.cons _ _ _ _ _ checked2116.1 (.cons _ _ _ _ _ checked2117.1 (.cons _ _ _ _ _ checked2118.1 (.cons _ _ _ _ _ checked2119.1 (.cons _ _ _ _ _ checked2120.1 (.cons _ _ _ _ _ checked2121.1 (.cons _ _ _ _ _ checked2122.1 (.cons _ _ _ _ _ checked2123.1 (.cons _ _ _ _ _ checked2124.1 (.cons _ _ _ _ _ checked2125.1 (.cons _ _ _ _ _ checked2126.1 (.cons _ _ _ _ _ checked2127.1 (.cons _ _ _ _ _ checked2128.1 (.cons _ _ _ _ _ checked2129.1 (.cons _ _ _ _ _ checked2130.1 (.cons _ _ _ _ _ checked2131.1 (.cons _ _ _ _ _ checked2132.1 (.cons _ _ _ _ _ checked2133.1 (.cons _ _ _ _ _ checked2134.1 (.cons _ _ _ _ _ checked2135.1 (.cons _ _ _ _ _ checked2136.1 (.cons _ _ _ _ _ checked2137.1 (.cons _ _ _ _ _ checked2138.1 (.cons _ _ _ _ _ checked2139.1 (.cons _ _ _ _ _ checked2140.1 (.cons _ _ _ _ _ checked2141.1 (.cons _ _ _ _ _ checked2142.1 (.cons _ _ _ _ _ checked2143.1 (.cons _ _ _ _ _ checked2144.1 (.cons _ _ _ _ _ checked2145.1 (.cons _ _ _ _ _ checked2146.1 (.cons _ _ _ _ _ checked2147.1 (.cons _ _ _ _ _ checked2148.1 (.cons _ _ _ _ _ checked2149.1 (.cons _ _ _ _ _ checked2150.1 (.cons _ _ _ _ _ checked2151.1 (.cons _ _ _ _ _ checked2152.1 (.cons _ _ _ _ _ checked2153.1 (.cons _ _ _ _ _ checked2154.1 (.cons _ _ _ _ _ checked2155.1 (.cons _ _ _ _ _ checked2156.1 (.cons _ _ _ _ _ checked2157.1 (.cons _ _ _ _ _ checked2158.1 (.cons _ _ _ _ _ checked2159.1 (.cons _ _ _ _ _ checked2160.1 (.cons _ _ _ _ _ checked2161.1 (.cons _ _ _ _ _ checked2162.1 (.cons _ _ _ _ _ checked2163.1 (.cons _ _ _ _ _ checked2164.1 (.cons _ _ _ _ _ checked2165.1 (.cons _ _ _ _ _ checked2166.1 (.cons _ _ _ _ _ checked2167.1 (.cons _ _ _ _ _ checked2168.1 (.cons _ _ _ _ _ checked2169.1 (.cons _ _ _ _ _ checked2170.1 (.cons _ _ _ _ _ checked2171.1 (.cons _ _ _ _ _ checked2172.1 (.cons _ _ _ _ _ checked2173.1 (.cons _ _ _ _ _ checked2174.1 (.cons _ _ _ _ _ checked2175.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2184 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3507 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2112.2,checked2113.2,checked2114.2,checked2115.2,checked2116.2,checked2117.2,checked2118.2,checked2119.2,checked2120.2,checked2121.2,checked2122.2,checked2123.2,checked2124.2,checked2125.2,checked2126.2,checked2127.2,checked2128.2,checked2129.2,checked2130.2,checked2131.2,checked2132.2,checked2133.2,checked2134.2,checked2135.2,checked2136.2,checked2137.2,checked2138.2,checked2139.2,checked2140.2,checked2141.2,checked2142.2,checked2143.2,checked2144.2,checked2145.2,checked2146.2,checked2147.2,checked2148.2,checked2149.2,checked2150.2,checked2151.2,checked2152.2,checked2153.2,checked2154.2,checked2155.2,checked2156.2,checked2157.2,checked2158.2,checked2159.2,checked2160.2,checked2161.2,checked2162.2,checked2163.2,checked2164.2,checked2165.2,checked2166.2,checked2167.2,checked2168.2,checked2169.2,checked2170.2,checked2171.2,checked2172.2,checked2173.2,checked2174.2,checked2175.2]
  decide
end ArtifactHashBlockGroup33
