import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup33
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2112 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2112 : Bytes := ("    let r000008b6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2112 : bytes2112=statementBytes 2230 (op2112.map lower) ∧ bytes2112.length=41 := by core033_kernel_decide
def op2113 : List WordIR.Op := [.badd 2229 2230]
def bytes2113 : Bytes := ("    let r000008b7: u32 = r000008b5.wrapping_add(r000008b6);\n" : String).toByteArray.data.toList
theorem checked2113 : bytes2113=statementBytes 2231 (op2113.map lower) ∧ bytes2113.length=60 := by core033_kernel_decide
def op2114 : List WordIR.Op := [.band 2231 1453]
def bytes2114 : Bytes := ("    let r000008b8: u32 = r000008b7 & r000005ad;\n" : String).toByteArray.data.toList
theorem checked2114 : bytes2114=statementBytes 2232 (op2114.map lower) ∧ bytes2114.length=48 := by core033_kernel_decide
def op2115 : List WordIR.Op := [.bnot 2078]
def bytes2115 : Bytes := ("    let r000008b9: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2115 : bytes2115=statementBytes 2233 (op2115.map lower) ∧ bytes2115.length=37 := by core033_kernel_decide
def op2116 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2116 : Bytes := ("    let r000008ba: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2116 : bytes2116=statementBytes 2234 (op2116.map lower) ∧ bytes2116.length=41 := by core033_kernel_decide
def op2117 : List WordIR.Op := [.badd 2233 2234]
def bytes2117 : Bytes := ("    let r000008bb: u32 = r000008b9.wrapping_add(r000008ba);\n" : String).toByteArray.data.toList
theorem checked2117 : bytes2117=statementBytes 2235 (op2117.map lower) ∧ bytes2117.length=60 := by core033_kernel_decide
def op2118 : List WordIR.Op := [.bnot 2235]
def bytes2118 : Bytes := ("    let r000008bc: u32 = !r000008bb;\n" : String).toByteArray.data.toList
theorem checked2118 : bytes2118=statementBytes 2236 (op2118.map lower) ∧ bytes2118.length=37 := by core033_kernel_decide
def op2119 : List WordIR.Op := [.band 2236 1541]
def bytes2119 : Bytes := ("    let r000008bd: u32 = r000008bc & r00000605;\n" : String).toByteArray.data.toList
theorem checked2119 : bytes2119=statementBytes 2237 (op2119.map lower) ∧ bytes2119.length=48 := by core033_kernel_decide
def op2120 : List WordIR.Op := [.bxor 2232 2237]
def bytes2120 : Bytes := ("    let r000008be: u32 = r000008b8 ^ r000008bd;\n" : String).toByteArray.data.toList
theorem checked2120 : bytes2120=statementBytes 2238 (op2120.map lower) ∧ bytes2120.length=48 := by core033_kernel_decide
def op2121 : List WordIR.Op := [.bnot 2078]
def bytes2121 : Bytes := ("    let r000008bf: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2121 : bytes2121=statementBytes 2239 (op2121.map lower) ∧ bytes2121.length=37 := by core033_kernel_decide
def op2122 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2122 : Bytes := ("    let r000008c0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2122 : bytes2122=statementBytes 2240 (op2122.map lower) ∧ bytes2122.length=41 := by core033_kernel_decide
def op2123 : List WordIR.Op := [.badd 2239 2240]
def bytes2123 : Bytes := ("    let r000008c1: u32 = r000008bf.wrapping_add(r000008c0);\n" : String).toByteArray.data.toList
theorem checked2123 : bytes2123=statementBytes 2241 (op2123.map lower) ∧ bytes2123.length=60 := by core033_kernel_decide
def op2124 : List WordIR.Op := [.band 2241 1464]
def bytes2124 : Bytes := ("    let r000008c2: u32 = r000008c1 & r000005b8;\n" : String).toByteArray.data.toList
theorem checked2124 : bytes2124=statementBytes 2242 (op2124.map lower) ∧ bytes2124.length=48 := by core033_kernel_decide
def op2125 : List WordIR.Op := [.bnot 2078]
def bytes2125 : Bytes := ("    let r000008c3: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2125 : bytes2125=statementBytes 2243 (op2125.map lower) ∧ bytes2125.length=37 := by core033_kernel_decide
def op2126 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2126 : Bytes := ("    let r000008c4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2126 : bytes2126=statementBytes 2244 (op2126.map lower) ∧ bytes2126.length=41 := by core033_kernel_decide
def op2127 : List WordIR.Op := [.badd 2243 2244]
def bytes2127 : Bytes := ("    let r000008c5: u32 = r000008c3.wrapping_add(r000008c4);\n" : String).toByteArray.data.toList
theorem checked2127 : bytes2127=statementBytes 2245 (op2127.map lower) ∧ bytes2127.length=60 := by core033_kernel_decide
def op2128 : List WordIR.Op := [.bnot 2245]
def bytes2128 : Bytes := ("    let r000008c6: u32 = !r000008c5;\n" : String).toByteArray.data.toList
theorem checked2128 : bytes2128=statementBytes 2246 (op2128.map lower) ∧ bytes2128.length=37 := by core033_kernel_decide
def op2129 : List WordIR.Op := [.band 2246 1552]
def bytes2129 : Bytes := ("    let r000008c7: u32 = r000008c6 & r00000610;\n" : String).toByteArray.data.toList
theorem checked2129 : bytes2129=statementBytes 2247 (op2129.map lower) ∧ bytes2129.length=48 := by core033_kernel_decide
def op2130 : List WordIR.Op := [.bxor 2242 2247]
def bytes2130 : Bytes := ("    let r000008c8: u32 = r000008c2 ^ r000008c7;\n" : String).toByteArray.data.toList
theorem checked2130 : bytes2130=statementBytes 2248 (op2130.map lower) ∧ bytes2130.length=48 := by core033_kernel_decide
def op2131 : List WordIR.Op := [.bnot 2078]
def bytes2131 : Bytes := ("    let r000008c9: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2131 : bytes2131=statementBytes 2249 (op2131.map lower) ∧ bytes2131.length=37 := by core033_kernel_decide
def op2132 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2132 : Bytes := ("    let r000008ca: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2132 : bytes2132=statementBytes 2250 (op2132.map lower) ∧ bytes2132.length=41 := by core033_kernel_decide
def op2133 : List WordIR.Op := [.badd 2249 2250]
def bytes2133 : Bytes := ("    let r000008cb: u32 = r000008c9.wrapping_add(r000008ca);\n" : String).toByteArray.data.toList
theorem checked2133 : bytes2133=statementBytes 2251 (op2133.map lower) ∧ bytes2133.length=60 := by core033_kernel_decide
def op2134 : List WordIR.Op := [.band 2251 1475]
def bytes2134 : Bytes := ("    let r000008cc: u32 = r000008cb & r000005c3;\n" : String).toByteArray.data.toList
theorem checked2134 : bytes2134=statementBytes 2252 (op2134.map lower) ∧ bytes2134.length=48 := by core033_kernel_decide
def op2135 : List WordIR.Op := [.bnot 2078]
def bytes2135 : Bytes := ("    let r000008cd: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2135 : bytes2135=statementBytes 2253 (op2135.map lower) ∧ bytes2135.length=37 := by core033_kernel_decide
def op2136 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2136 : Bytes := ("    let r000008ce: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2136 : bytes2136=statementBytes 2254 (op2136.map lower) ∧ bytes2136.length=41 := by core033_kernel_decide
def op2137 : List WordIR.Op := [.badd 2253 2254]
def bytes2137 : Bytes := ("    let r000008cf: u32 = r000008cd.wrapping_add(r000008ce);\n" : String).toByteArray.data.toList
theorem checked2137 : bytes2137=statementBytes 2255 (op2137.map lower) ∧ bytes2137.length=60 := by core033_kernel_decide
def op2138 : List WordIR.Op := [.bnot 2255]
def bytes2138 : Bytes := ("    let r000008d0: u32 = !r000008cf;\n" : String).toByteArray.data.toList
theorem checked2138 : bytes2138=statementBytes 2256 (op2138.map lower) ∧ bytes2138.length=37 := by core033_kernel_decide
def op2139 : List WordIR.Op := [.band 2256 1563]
def bytes2139 : Bytes := ("    let r000008d1: u32 = r000008d0 & r0000061b;\n" : String).toByteArray.data.toList
theorem checked2139 : bytes2139=statementBytes 2257 (op2139.map lower) ∧ bytes2139.length=48 := by core033_kernel_decide
def op2140 : List WordIR.Op := [.bxor 2252 2257]
def bytes2140 : Bytes := ("    let r000008d2: u32 = r000008cc ^ r000008d1;\n" : String).toByteArray.data.toList
theorem checked2140 : bytes2140=statementBytes 2258 (op2140.map lower) ∧ bytes2140.length=48 := by core033_kernel_decide
def op2141 : List WordIR.Op := [.bnot 2078]
def bytes2141 : Bytes := ("    let r000008d3: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2141 : bytes2141=statementBytes 2259 (op2141.map lower) ∧ bytes2141.length=37 := by core033_kernel_decide
def op2142 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2142 : Bytes := ("    let r000008d4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2142 : bytes2142=statementBytes 2260 (op2142.map lower) ∧ bytes2142.length=41 := by core033_kernel_decide
def op2143 : List WordIR.Op := [.badd 2259 2260]
def bytes2143 : Bytes := ("    let r000008d5: u32 = r000008d3.wrapping_add(r000008d4);\n" : String).toByteArray.data.toList
theorem checked2143 : bytes2143=statementBytes 2261 (op2143.map lower) ∧ bytes2143.length=60 := by core033_kernel_decide
def op2144 : List WordIR.Op := [.band 2261 1486]
def bytes2144 : Bytes := ("    let r000008d6: u32 = r000008d5 & r000005ce;\n" : String).toByteArray.data.toList
theorem checked2144 : bytes2144=statementBytes 2262 (op2144.map lower) ∧ bytes2144.length=48 := by core033_kernel_decide
def op2145 : List WordIR.Op := [.bnot 2078]
def bytes2145 : Bytes := ("    let r000008d7: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2145 : bytes2145=statementBytes 2263 (op2145.map lower) ∧ bytes2145.length=37 := by core033_kernel_decide
def op2146 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2146 : Bytes := ("    let r000008d8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2146 : bytes2146=statementBytes 2264 (op2146.map lower) ∧ bytes2146.length=41 := by core033_kernel_decide
def op2147 : List WordIR.Op := [.badd 2263 2264]
def bytes2147 : Bytes := ("    let r000008d9: u32 = r000008d7.wrapping_add(r000008d8);\n" : String).toByteArray.data.toList
theorem checked2147 : bytes2147=statementBytes 2265 (op2147.map lower) ∧ bytes2147.length=60 := by core033_kernel_decide
def op2148 : List WordIR.Op := [.bnot 2265]
def bytes2148 : Bytes := ("    let r000008da: u32 = !r000008d9;\n" : String).toByteArray.data.toList
theorem checked2148 : bytes2148=statementBytes 2266 (op2148.map lower) ∧ bytes2148.length=37 := by core033_kernel_decide
def op2149 : List WordIR.Op := [.band 2266 1574]
def bytes2149 : Bytes := ("    let r000008db: u32 = r000008da & r00000626;\n" : String).toByteArray.data.toList
theorem checked2149 : bytes2149=statementBytes 2267 (op2149.map lower) ∧ bytes2149.length=48 := by core033_kernel_decide
def op2150 : List WordIR.Op := [.bxor 2262 2267]
def bytes2150 : Bytes := ("    let r000008dc: u32 = r000008d6 ^ r000008db;\n" : String).toByteArray.data.toList
theorem checked2150 : bytes2150=statementBytes 2268 (op2150.map lower) ∧ bytes2150.length=48 := by core033_kernel_decide
def op2151 : List WordIR.Op := [.bnot 2078]
def bytes2151 : Bytes := ("    let r000008dd: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2151 : bytes2151=statementBytes 2269 (op2151.map lower) ∧ bytes2151.length=37 := by core033_kernel_decide
def op2152 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2152 : Bytes := ("    let r000008de: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2152 : bytes2152=statementBytes 2270 (op2152.map lower) ∧ bytes2152.length=41 := by core033_kernel_decide
def op2153 : List WordIR.Op := [.badd 2269 2270]
def bytes2153 : Bytes := ("    let r000008df: u32 = r000008dd.wrapping_add(r000008de);\n" : String).toByteArray.data.toList
theorem checked2153 : bytes2153=statementBytes 2271 (op2153.map lower) ∧ bytes2153.length=60 := by core033_kernel_decide
def op2154 : List WordIR.Op := [.band 2271 1497]
def bytes2154 : Bytes := ("    let r000008e0: u32 = r000008df & r000005d9;\n" : String).toByteArray.data.toList
theorem checked2154 : bytes2154=statementBytes 2272 (op2154.map lower) ∧ bytes2154.length=48 := by core033_kernel_decide
def op2155 : List WordIR.Op := [.bnot 2078]
def bytes2155 : Bytes := ("    let r000008e1: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2155 : bytes2155=statementBytes 2273 (op2155.map lower) ∧ bytes2155.length=37 := by core033_kernel_decide
def op2156 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2156 : Bytes := ("    let r000008e2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2156 : bytes2156=statementBytes 2274 (op2156.map lower) ∧ bytes2156.length=41 := by core033_kernel_decide
def op2157 : List WordIR.Op := [.badd 2273 2274]
def bytes2157 : Bytes := ("    let r000008e3: u32 = r000008e1.wrapping_add(r000008e2);\n" : String).toByteArray.data.toList
theorem checked2157 : bytes2157=statementBytes 2275 (op2157.map lower) ∧ bytes2157.length=60 := by core033_kernel_decide
def op2158 : List WordIR.Op := [.bnot 2275]
def bytes2158 : Bytes := ("    let r000008e4: u32 = !r000008e3;\n" : String).toByteArray.data.toList
theorem checked2158 : bytes2158=statementBytes 2276 (op2158.map lower) ∧ bytes2158.length=37 := by core033_kernel_decide
def op2159 : List WordIR.Op := [.band 2276 1585]
def bytes2159 : Bytes := ("    let r000008e5: u32 = r000008e4 & r00000631;\n" : String).toByteArray.data.toList
theorem checked2159 : bytes2159=statementBytes 2277 (op2159.map lower) ∧ bytes2159.length=48 := by core033_kernel_decide
def op2160 : List WordIR.Op := [.bxor 2272 2277]
def bytes2160 : Bytes := ("    let r000008e6: u32 = r000008e0 ^ r000008e5;\n" : String).toByteArray.data.toList
theorem checked2160 : bytes2160=statementBytes 2278 (op2160.map lower) ∧ bytes2160.length=48 := by core033_kernel_decide
def op2161 : List WordIR.Op := [.bnot 2078]
def bytes2161 : Bytes := ("    let r000008e7: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2161 : bytes2161=statementBytes 2279 (op2161.map lower) ∧ bytes2161.length=37 := by core033_kernel_decide
def op2162 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2162 : Bytes := ("    let r000008e8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2162 : bytes2162=statementBytes 2280 (op2162.map lower) ∧ bytes2162.length=41 := by core033_kernel_decide
def op2163 : List WordIR.Op := [.badd 2279 2280]
def bytes2163 : Bytes := ("    let r000008e9: u32 = r000008e7.wrapping_add(r000008e8);\n" : String).toByteArray.data.toList
theorem checked2163 : bytes2163=statementBytes 2281 (op2163.map lower) ∧ bytes2163.length=60 := by core033_kernel_decide
def op2164 : List WordIR.Op := [.band 2281 1596]
def bytes2164 : Bytes := ("    let r000008ea: u32 = r000008e9 & r0000063c;\n" : String).toByteArray.data.toList
theorem checked2164 : bytes2164=statementBytes 2282 (op2164.map lower) ∧ bytes2164.length=48 := by core033_kernel_decide
def op2165 : List WordIR.Op := [.bnot 2078]
def bytes2165 : Bytes := ("    let r000008eb: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2165 : bytes2165=statementBytes 2283 (op2165.map lower) ∧ bytes2165.length=37 := by core033_kernel_decide
def op2166 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2166 : Bytes := ("    let r000008ec: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2166 : bytes2166=statementBytes 2284 (op2166.map lower) ∧ bytes2166.length=41 := by core033_kernel_decide
def op2167 : List WordIR.Op := [.badd 2283 2284]
def bytes2167 : Bytes := ("    let r000008ed: u32 = r000008eb.wrapping_add(r000008ec);\n" : String).toByteArray.data.toList
theorem checked2167 : bytes2167=statementBytes 2285 (op2167.map lower) ∧ bytes2167.length=60 := by core033_kernel_decide
def op2168 : List WordIR.Op := [.bnot 2285]
def bytes2168 : Bytes := ("    let r000008ee: u32 = !r000008ed;\n" : String).toByteArray.data.toList
theorem checked2168 : bytes2168=statementBytes 2286 (op2168.map lower) ∧ bytes2168.length=37 := by core033_kernel_decide
def op2169 : List WordIR.Op := [.band 2286 1618]
def bytes2169 : Bytes := ("    let r000008ef: u32 = r000008ee & r00000652;\n" : String).toByteArray.data.toList
theorem checked2169 : bytes2169=statementBytes 2287 (op2169.map lower) ∧ bytes2169.length=48 := by core033_kernel_decide
def op2170 : List WordIR.Op := [.bxor 2282 2287]
def bytes2170 : Bytes := ("    let r000008f0: u32 = r000008ea ^ r000008ef;\n" : String).toByteArray.data.toList
theorem checked2170 : bytes2170=statementBytes 2288 (op2170.map lower) ∧ bytes2170.length=48 := by core033_kernel_decide
def op2171 : List WordIR.Op := [.bnot 2078]
def bytes2171 : Bytes := ("    let r000008f1: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2171 : bytes2171=statementBytes 2289 (op2171.map lower) ∧ bytes2171.length=37 := by core033_kernel_decide
def op2172 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2172 : Bytes := ("    let r000008f2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2172 : bytes2172=statementBytes 2290 (op2172.map lower) ∧ bytes2172.length=41 := by core033_kernel_decide
def op2173 : List WordIR.Op := [.badd 2289 2290]
def bytes2173 : Bytes := ("    let r000008f3: u32 = r000008f1.wrapping_add(r000008f2);\n" : String).toByteArray.data.toList
theorem checked2173 : bytes2173=statementBytes 2291 (op2173.map lower) ∧ bytes2173.length=60 := by core033_kernel_decide
def op2174 : List WordIR.Op := [.band 2291 1607]
def bytes2174 : Bytes := ("    let r000008f4: u32 = r000008f3 & r00000647;\n" : String).toByteArray.data.toList
theorem checked2174 : bytes2174=statementBytes 2292 (op2174.map lower) ∧ bytes2174.length=48 := by core033_kernel_decide
def op2175 : List WordIR.Op := [.bnot 2078]
def bytes2175 : Bytes := ("    let r000008f5: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2175 : bytes2175=statementBytes 2293 (op2175.map lower) ∧ bytes2175.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2112,op2113,op2114,op2115,op2116,op2117,op2118,op2119,op2120,op2121,op2122,op2123,op2124,op2125,op2126,op2127,op2128,op2129,op2130,op2131,op2132,op2133,op2134,op2135,op2136,op2137,op2138,op2139,op2140,op2141,op2142,op2143,op2144,op2145,op2146,op2147,op2148,op2149,op2150,op2151,op2152,op2153,op2154,op2155,op2156,op2157,op2158,op2159,op2160,op2161,op2162,op2163,op2164,op2165,op2166,op2167,op2168,op2169,op2170,op2171,op2172,op2173,op2174,op2175]
def chunks : List Bytes := [bytes2112,bytes2113,bytes2114,bytes2115,bytes2116,bytes2117,bytes2118,bytes2119,bytes2120,bytes2121,bytes2122,bytes2123,bytes2124,bytes2125,bytes2126,bytes2127,bytes2128,bytes2129,bytes2130,bytes2131,bytes2132,bytes2133,bytes2134,bytes2135,bytes2136,bytes2137,bytes2138,bytes2139,bytes2140,bytes2141,bytes2142,bytes2143,bytes2144,bytes2145,bytes2146,bytes2147,bytes2148,bytes2149,bytes2150,bytes2151,bytes2152,bytes2153,bytes2154,bytes2155,bytes2156,bytes2157,bytes2158,bytes2159,bytes2160,bytes2161,bytes2162,bytes2163,bytes2164,bytes2165,bytes2166,bytes2167,bytes2168,bytes2169,bytes2170,bytes2171,bytes2172,bytes2173,bytes2174,bytes2175]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2230 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2112.1 (.cons _ _ _ _ _ checked2113.1 (.cons _ _ _ _ _ checked2114.1 (.cons _ _ _ _ _ checked2115.1 (.cons _ _ _ _ _ checked2116.1 (.cons _ _ _ _ _ checked2117.1 (.cons _ _ _ _ _ checked2118.1 (.cons _ _ _ _ _ checked2119.1 (.cons _ _ _ _ _ checked2120.1 (.cons _ _ _ _ _ checked2121.1 (.cons _ _ _ _ _ checked2122.1 (.cons _ _ _ _ _ checked2123.1 (.cons _ _ _ _ _ checked2124.1 (.cons _ _ _ _ _ checked2125.1 (.cons _ _ _ _ _ checked2126.1 (.cons _ _ _ _ _ checked2127.1 (.cons _ _ _ _ _ checked2128.1 (.cons _ _ _ _ _ checked2129.1 (.cons _ _ _ _ _ checked2130.1 (.cons _ _ _ _ _ checked2131.1 (.cons _ _ _ _ _ checked2132.1 (.cons _ _ _ _ _ checked2133.1 (.cons _ _ _ _ _ checked2134.1 (.cons _ _ _ _ _ checked2135.1 (.cons _ _ _ _ _ checked2136.1 (.cons _ _ _ _ _ checked2137.1 (.cons _ _ _ _ _ checked2138.1 (.cons _ _ _ _ _ checked2139.1 (.cons _ _ _ _ _ checked2140.1 (.cons _ _ _ _ _ checked2141.1 (.cons _ _ _ _ _ checked2142.1 (.cons _ _ _ _ _ checked2143.1 (.cons _ _ _ _ _ checked2144.1 (.cons _ _ _ _ _ checked2145.1 (.cons _ _ _ _ _ checked2146.1 (.cons _ _ _ _ _ checked2147.1 (.cons _ _ _ _ _ checked2148.1 (.cons _ _ _ _ _ checked2149.1 (.cons _ _ _ _ _ checked2150.1 (.cons _ _ _ _ _ checked2151.1 (.cons _ _ _ _ _ checked2152.1 (.cons _ _ _ _ _ checked2153.1 (.cons _ _ _ _ _ checked2154.1 (.cons _ _ _ _ _ checked2155.1 (.cons _ _ _ _ _ checked2156.1 (.cons _ _ _ _ _ checked2157.1 (.cons _ _ _ _ _ checked2158.1 (.cons _ _ _ _ _ checked2159.1 (.cons _ _ _ _ _ checked2160.1 (.cons _ _ _ _ _ checked2161.1 (.cons _ _ _ _ _ checked2162.1 (.cons _ _ _ _ _ checked2163.1 (.cons _ _ _ _ _ checked2164.1 (.cons _ _ _ _ _ checked2165.1 (.cons _ _ _ _ _ checked2166.1 (.cons _ _ _ _ _ checked2167.1 (.cons _ _ _ _ _ checked2168.1 (.cons _ _ _ _ _ checked2169.1 (.cons _ _ _ _ _ checked2170.1 (.cons _ _ _ _ _ checked2171.1 (.cons _ _ _ _ _ checked2172.1 (.cons _ _ _ _ _ checked2173.1 (.cons _ _ _ _ _ checked2174.1 (.cons _ _ _ _ _ checked2175.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2230 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2928 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2112.2,checked2113.2,checked2114.2,checked2115.2,checked2116.2,checked2117.2,checked2118.2,checked2119.2,checked2120.2,checked2121.2,checked2122.2,checked2123.2,checked2124.2,checked2125.2,checked2126.2,checked2127.2,checked2128.2,checked2129.2,checked2130.2,checked2131.2,checked2132.2,checked2133.2,checked2134.2,checked2135.2,checked2136.2,checked2137.2,checked2138.2,checked2139.2,checked2140.2,checked2141.2,checked2142.2,checked2143.2,checked2144.2,checked2145.2,checked2146.2,checked2147.2,checked2148.2,checked2149.2,checked2150.2,checked2151.2,checked2152.2,checked2153.2,checked2154.2,checked2155.2,checked2156.2,checked2157.2,checked2158.2,checked2159.2,checked2160.2,checked2161.2,checked2162.2,checked2163.2,checked2164.2,checked2165.2,checked2166.2,checked2167.2,checked2168.2,checked2169.2,checked2170.2,checked2171.2,checked2172.2,checked2173.2,checked2174.2,checked2175.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup33
