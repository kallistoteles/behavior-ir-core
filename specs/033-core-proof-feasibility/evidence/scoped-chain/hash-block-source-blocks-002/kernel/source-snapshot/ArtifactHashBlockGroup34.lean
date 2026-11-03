import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup34
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2176 : List WordIR.Op := [.bnot 2240]
def bytes2176 : Bytes := ("    let r000008c8: u32 = !r000008c0;\n" : String).toByteArray.data.toList
theorem checked2176 : bytes2176=statementBytes 2248 (op2176.map lower) ∧ bytes2176.length=37 := by core033_kernel_decide
def op2177 : List WordIR.Op := [.band 2248 2186]
def bytes2177 : Bytes := ("    let r000008c9: u32 = r000008c8 & r0000088a;\n" : String).toByteArray.data.toList
theorem checked2177 : bytes2177=statementBytes 2249 (op2177.map lower) ∧ bytes2177.length=48 := by core033_kernel_decide
def op2178 : List WordIR.Op := [.bxor 2247 2249]
def bytes2178 : Bytes := ("    let r000008ca: u32 = r000008c7 ^ r000008c9;\n" : String).toByteArray.data.toList
theorem checked2178 : bytes2178=statementBytes 2250 (op2178.map lower) ∧ bytes2178.length=48 := by core033_kernel_decide
def op2179 : List WordIR.Op := [.badd 2246 2250]
def bytes2179 : Bytes := ("    let r000008cb: u32 = r000008c6.wrapping_add(r000008ca);\n" : String).toByteArray.data.toList
theorem checked2179 : bytes2179=statementBytes 2251 (op2179.map lower) ∧ bytes2179.length=60 := by core033_kernel_decide
def op2180 : List WordIR.Op := [.literal (BitVec.ofNat 32 1426881987)]
def bytes2180 : Bytes := ("    let r000008cc: u32 = 0x550c7dc3_u32;\n" : String).toByteArray.data.toList
theorem checked2180 : bytes2180=statementBytes 2252 (op2180.map lower) ∧ bytes2180.length=41 := by core033_kernel_decide
def op2181 : List WordIR.Op := [.badd 2251 2252]
def bytes2181 : Bytes := ("    let r000008cd: u32 = r000008cb.wrapping_add(r000008cc);\n" : String).toByteArray.data.toList
theorem checked2181 : bytes2181=statementBytes 2253 (op2181.map lower) ∧ bytes2181.length=60 := by core033_kernel_decide
def op2182 : List WordIR.Op := [.badd 2253 143]
def bytes2182 : Bytes := ("    let r000008ce: u32 = r000008cd.wrapping_add(r0000008f);\n" : String).toByteArray.data.toList
theorem checked2182 : bytes2182=statementBytes 2254 (op2182.map lower) ∧ bytes2182.length=60 := by core033_kernel_decide
def op2183 : List WordIR.Op := [.rotr 2239 2]
def bytes2183 : Bytes := ("    let r000008cf: u32 = r000008bf.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2183 : bytes2183=statementBytes 2255 (op2183.map lower) ∧ bytes2183.length=65 := by core033_kernel_decide
def op2184 : List WordIR.Op := [.rotr 2239 13]
def bytes2184 : Bytes := ("    let r000008d0: u32 = r000008bf.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2184 : bytes2184=statementBytes 2256 (op2184.map lower) ∧ bytes2184.length=65 := by core033_kernel_decide
def op2185 : List WordIR.Op := [.bxor 2255 2256]
def bytes2185 : Bytes := ("    let r000008d1: u32 = r000008cf ^ r000008d0;\n" : String).toByteArray.data.toList
theorem checked2185 : bytes2185=statementBytes 2257 (op2185.map lower) ∧ bytes2185.length=48 := by core033_kernel_decide
def op2186 : List WordIR.Op := [.rotr 2239 22]
def bytes2186 : Bytes := ("    let r000008d2: u32 = r000008bf.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2186 : bytes2186=statementBytes 2258 (op2186.map lower) ∧ bytes2186.length=65 := by core033_kernel_decide
def op2187 : List WordIR.Op := [.bxor 2257 2258]
def bytes2187 : Bytes := ("    let r000008d3: u32 = r000008d1 ^ r000008d2;\n" : String).toByteArray.data.toList
theorem checked2187 : bytes2187=statementBytes 2259 (op2187.map lower) ∧ bytes2187.length=48 := by core033_kernel_decide
def op2188 : List WordIR.Op := [.band 2239 2212]
def bytes2188 : Bytes := ("    let r000008d4: u32 = r000008bf & r000008a4;\n" : String).toByteArray.data.toList
theorem checked2188 : bytes2188=statementBytes 2260 (op2188.map lower) ∧ bytes2188.length=48 := by core033_kernel_decide
def op2189 : List WordIR.Op := [.band 2239 2185]
def bytes2189 : Bytes := ("    let r000008d5: u32 = r000008bf & r00000889;\n" : String).toByteArray.data.toList
theorem checked2189 : bytes2189=statementBytes 2261 (op2189.map lower) ∧ bytes2189.length=48 := by core033_kernel_decide
def op2190 : List WordIR.Op := [.bxor 2260 2261]
def bytes2190 : Bytes := ("    let r000008d6: u32 = r000008d4 ^ r000008d5;\n" : String).toByteArray.data.toList
theorem checked2190 : bytes2190=statementBytes 2262 (op2190.map lower) ∧ bytes2190.length=48 := by core033_kernel_decide
def op2191 : List WordIR.Op := [.band 2212 2185]
def bytes2191 : Bytes := ("    let r000008d7: u32 = r000008a4 & r00000889;\n" : String).toByteArray.data.toList
theorem checked2191 : bytes2191=statementBytes 2263 (op2191.map lower) ∧ bytes2191.length=48 := by core033_kernel_decide
def op2192 : List WordIR.Op := [.bxor 2262 2263]
def bytes2192 : Bytes := ("    let r000008d8: u32 = r000008d6 ^ r000008d7;\n" : String).toByteArray.data.toList
theorem checked2192 : bytes2192=statementBytes 2264 (op2192.map lower) ∧ bytes2192.length=48 := by core033_kernel_decide
def op2193 : List WordIR.Op := [.badd 2259 2264]
def bytes2193 : Bytes := ("    let r000008d9: u32 = r000008d3.wrapping_add(r000008d8);\n" : String).toByteArray.data.toList
theorem checked2193 : bytes2193=statementBytes 2265 (op2193.map lower) ∧ bytes2193.length=60 := by core033_kernel_decide
def op2194 : List WordIR.Op := [.badd 2254 2265]
def bytes2194 : Bytes := ("    let r000008da: u32 = r000008ce.wrapping_add(r000008d9);\n" : String).toByteArray.data.toList
theorem checked2194 : bytes2194=statementBytes 2266 (op2194.map lower) ∧ bytes2194.length=60 := by core033_kernel_decide
def op2195 : List WordIR.Op := [.badd 2158 2254]
def bytes2195 : Bytes := ("    let r000008db: u32 = r0000086e.wrapping_add(r000008ce);\n" : String).toByteArray.data.toList
theorem checked2195 : bytes2195=statementBytes 2267 (op2195.map lower) ∧ bytes2195.length=60 := by core033_kernel_decide
def op2196 : List WordIR.Op := [.rotr 2267 6]
def bytes2196 : Bytes := ("    let r000008dc: u32 = r000008db.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2196 : bytes2196=statementBytes 2268 (op2196.map lower) ∧ bytes2196.length=65 := by core033_kernel_decide
def op2197 : List WordIR.Op := [.rotr 2267 11]
def bytes2197 : Bytes := ("    let r000008dd: u32 = r000008db.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2197 : bytes2197=statementBytes 2269 (op2197.map lower) ∧ bytes2197.length=65 := by core033_kernel_decide
def op2198 : List WordIR.Op := [.bxor 2268 2269]
def bytes2198 : Bytes := ("    let r000008de: u32 = r000008dc ^ r000008dd;\n" : String).toByteArray.data.toList
theorem checked2198 : bytes2198=statementBytes 2270 (op2198.map lower) ∧ bytes2198.length=48 := by core033_kernel_decide
def op2199 : List WordIR.Op := [.rotr 2267 25]
def bytes2199 : Bytes := ("    let r000008df: u32 = r000008db.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2199 : bytes2199=statementBytes 2271 (op2199.map lower) ∧ bytes2199.length=65 := by core033_kernel_decide
def op2200 : List WordIR.Op := [.bxor 2270 2271]
def bytes2200 : Bytes := ("    let r000008e0: u32 = r000008de ^ r000008df;\n" : String).toByteArray.data.toList
theorem checked2200 : bytes2200=statementBytes 2272 (op2200.map lower) ∧ bytes2200.length=48 := by core033_kernel_decide
def op2201 : List WordIR.Op := [.badd 2186 2272]
def bytes2201 : Bytes := ("    let r000008e1: u32 = r0000088a.wrapping_add(r000008e0);\n" : String).toByteArray.data.toList
theorem checked2201 : bytes2201=statementBytes 2273 (op2201.map lower) ∧ bytes2201.length=60 := by core033_kernel_decide
def op2202 : List WordIR.Op := [.band 2267 2240]
def bytes2202 : Bytes := ("    let r000008e2: u32 = r000008db & r000008c0;\n" : String).toByteArray.data.toList
theorem checked2202 : bytes2202=statementBytes 2274 (op2202.map lower) ∧ bytes2202.length=48 := by core033_kernel_decide
def op2203 : List WordIR.Op := [.bnot 2267]
def bytes2203 : Bytes := ("    let r000008e3: u32 = !r000008db;\n" : String).toByteArray.data.toList
theorem checked2203 : bytes2203=statementBytes 2275 (op2203.map lower) ∧ bytes2203.length=37 := by core033_kernel_decide
def op2204 : List WordIR.Op := [.band 2275 2213]
def bytes2204 : Bytes := ("    let r000008e4: u32 = r000008e3 & r000008a5;\n" : String).toByteArray.data.toList
theorem checked2204 : bytes2204=statementBytes 2276 (op2204.map lower) ∧ bytes2204.length=48 := by core033_kernel_decide
def op2205 : List WordIR.Op := [.bxor 2274 2276]
def bytes2205 : Bytes := ("    let r000008e5: u32 = r000008e2 ^ r000008e4;\n" : String).toByteArray.data.toList
theorem checked2205 : bytes2205=statementBytes 2277 (op2205.map lower) ∧ bytes2205.length=48 := by core033_kernel_decide
def op2206 : List WordIR.Op := [.badd 2273 2277]
def bytes2206 : Bytes := ("    let r000008e6: u32 = r000008e1.wrapping_add(r000008e5);\n" : String).toByteArray.data.toList
theorem checked2206 : bytes2206=statementBytes 2278 (op2206.map lower) ∧ bytes2206.length=60 := by core033_kernel_decide
def op2207 : List WordIR.Op := [.literal (BitVec.ofNat 32 1925078388)]
def bytes2207 : Bytes := ("    let r000008e7: u32 = 0x72be5d74_u32;\n" : String).toByteArray.data.toList
theorem checked2207 : bytes2207=statementBytes 2279 (op2207.map lower) ∧ bytes2207.length=41 := by core033_kernel_decide
def op2208 : List WordIR.Op := [.badd 2278 2279]
def bytes2208 : Bytes := ("    let r000008e8: u32 = r000008e6.wrapping_add(r000008e7);\n" : String).toByteArray.data.toList
theorem checked2208 : bytes2208=statementBytes 2280 (op2208.map lower) ∧ bytes2208.length=60 := by core033_kernel_decide
def op2209 : List WordIR.Op := [.badd 2280 149]
def bytes2209 : Bytes := ("    let r000008e9: u32 = r000008e8.wrapping_add(r00000095);\n" : String).toByteArray.data.toList
theorem checked2209 : bytes2209=statementBytes 2281 (op2209.map lower) ∧ bytes2209.length=60 := by core033_kernel_decide
def op2210 : List WordIR.Op := [.rotr 2266 2]
def bytes2210 : Bytes := ("    let r000008ea: u32 = r000008da.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2210 : bytes2210=statementBytes 2282 (op2210.map lower) ∧ bytes2210.length=65 := by core033_kernel_decide
def op2211 : List WordIR.Op := [.rotr 2266 13]
def bytes2211 : Bytes := ("    let r000008eb: u32 = r000008da.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2211 : bytes2211=statementBytes 2283 (op2211.map lower) ∧ bytes2211.length=65 := by core033_kernel_decide
def op2212 : List WordIR.Op := [.bxor 2282 2283]
def bytes2212 : Bytes := ("    let r000008ec: u32 = r000008ea ^ r000008eb;\n" : String).toByteArray.data.toList
theorem checked2212 : bytes2212=statementBytes 2284 (op2212.map lower) ∧ bytes2212.length=48 := by core033_kernel_decide
def op2213 : List WordIR.Op := [.rotr 2266 22]
def bytes2213 : Bytes := ("    let r000008ed: u32 = r000008da.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2213 : bytes2213=statementBytes 2285 (op2213.map lower) ∧ bytes2213.length=65 := by core033_kernel_decide
def op2214 : List WordIR.Op := [.bxor 2284 2285]
def bytes2214 : Bytes := ("    let r000008ee: u32 = r000008ec ^ r000008ed;\n" : String).toByteArray.data.toList
theorem checked2214 : bytes2214=statementBytes 2286 (op2214.map lower) ∧ bytes2214.length=48 := by core033_kernel_decide
def op2215 : List WordIR.Op := [.band 2266 2239]
def bytes2215 : Bytes := ("    let r000008ef: u32 = r000008da & r000008bf;\n" : String).toByteArray.data.toList
theorem checked2215 : bytes2215=statementBytes 2287 (op2215.map lower) ∧ bytes2215.length=48 := by core033_kernel_decide
def op2216 : List WordIR.Op := [.band 2266 2212]
def bytes2216 : Bytes := ("    let r000008f0: u32 = r000008da & r000008a4;\n" : String).toByteArray.data.toList
theorem checked2216 : bytes2216=statementBytes 2288 (op2216.map lower) ∧ bytes2216.length=48 := by core033_kernel_decide
def op2217 : List WordIR.Op := [.bxor 2287 2288]
def bytes2217 : Bytes := ("    let r000008f1: u32 = r000008ef ^ r000008f0;\n" : String).toByteArray.data.toList
theorem checked2217 : bytes2217=statementBytes 2289 (op2217.map lower) ∧ bytes2217.length=48 := by core033_kernel_decide
def op2218 : List WordIR.Op := [.band 2239 2212]
def bytes2218 : Bytes := ("    let r000008f2: u32 = r000008bf & r000008a4;\n" : String).toByteArray.data.toList
theorem checked2218 : bytes2218=statementBytes 2290 (op2218.map lower) ∧ bytes2218.length=48 := by core033_kernel_decide
def op2219 : List WordIR.Op := [.bxor 2289 2290]
def bytes2219 : Bytes := ("    let r000008f3: u32 = r000008f1 ^ r000008f2;\n" : String).toByteArray.data.toList
theorem checked2219 : bytes2219=statementBytes 2291 (op2219.map lower) ∧ bytes2219.length=48 := by core033_kernel_decide
def op2220 : List WordIR.Op := [.badd 2286 2291]
def bytes2220 : Bytes := ("    let r000008f4: u32 = r000008ee.wrapping_add(r000008f3);\n" : String).toByteArray.data.toList
theorem checked2220 : bytes2220=statementBytes 2292 (op2220.map lower) ∧ bytes2220.length=60 := by core033_kernel_decide
def op2221 : List WordIR.Op := [.badd 2281 2292]
def bytes2221 : Bytes := ("    let r000008f5: u32 = r000008e9.wrapping_add(r000008f4);\n" : String).toByteArray.data.toList
theorem checked2221 : bytes2221=statementBytes 2293 (op2221.map lower) ∧ bytes2221.length=60 := by core033_kernel_decide
def op2222 : List WordIR.Op := [.badd 2185 2281]
def bytes2222 : Bytes := ("    let r000008f6: u32 = r00000889.wrapping_add(r000008e9);\n" : String).toByteArray.data.toList
theorem checked2222 : bytes2222=statementBytes 2294 (op2222.map lower) ∧ bytes2222.length=60 := by core033_kernel_decide
def op2223 : List WordIR.Op := [.rotr 2294 6]
def bytes2223 : Bytes := ("    let r000008f7: u32 = r000008f6.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2223 : bytes2223=statementBytes 2295 (op2223.map lower) ∧ bytes2223.length=65 := by core033_kernel_decide
def op2224 : List WordIR.Op := [.rotr 2294 11]
def bytes2224 : Bytes := ("    let r000008f8: u32 = r000008f6.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2224 : bytes2224=statementBytes 2296 (op2224.map lower) ∧ bytes2224.length=65 := by core033_kernel_decide
def op2225 : List WordIR.Op := [.bxor 2295 2296]
def bytes2225 : Bytes := ("    let r000008f9: u32 = r000008f7 ^ r000008f8;\n" : String).toByteArray.data.toList
theorem checked2225 : bytes2225=statementBytes 2297 (op2225.map lower) ∧ bytes2225.length=48 := by core033_kernel_decide
def op2226 : List WordIR.Op := [.rotr 2294 25]
def bytes2226 : Bytes := ("    let r000008fa: u32 = r000008f6.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2226 : bytes2226=statementBytes 2298 (op2226.map lower) ∧ bytes2226.length=65 := by core033_kernel_decide
def op2227 : List WordIR.Op := [.bxor 2297 2298]
def bytes2227 : Bytes := ("    let r000008fb: u32 = r000008f9 ^ r000008fa;\n" : String).toByteArray.data.toList
theorem checked2227 : bytes2227=statementBytes 2299 (op2227.map lower) ∧ bytes2227.length=48 := by core033_kernel_decide
def op2228 : List WordIR.Op := [.badd 2213 2299]
def bytes2228 : Bytes := ("    let r000008fc: u32 = r000008a5.wrapping_add(r000008fb);\n" : String).toByteArray.data.toList
theorem checked2228 : bytes2228=statementBytes 2300 (op2228.map lower) ∧ bytes2228.length=60 := by core033_kernel_decide
def op2229 : List WordIR.Op := [.band 2294 2267]
def bytes2229 : Bytes := ("    let r000008fd: u32 = r000008f6 & r000008db;\n" : String).toByteArray.data.toList
theorem checked2229 : bytes2229=statementBytes 2301 (op2229.map lower) ∧ bytes2229.length=48 := by core033_kernel_decide
def op2230 : List WordIR.Op := [.bnot 2294]
def bytes2230 : Bytes := ("    let r000008fe: u32 = !r000008f6;\n" : String).toByteArray.data.toList
theorem checked2230 : bytes2230=statementBytes 2302 (op2230.map lower) ∧ bytes2230.length=37 := by core033_kernel_decide
def op2231 : List WordIR.Op := [.band 2302 2240]
def bytes2231 : Bytes := ("    let r000008ff: u32 = r000008fe & r000008c0;\n" : String).toByteArray.data.toList
theorem checked2231 : bytes2231=statementBytes 2303 (op2231.map lower) ∧ bytes2231.length=48 := by core033_kernel_decide
def op2232 : List WordIR.Op := [.bxor 2301 2303]
def bytes2232 : Bytes := ("    let r00000900: u32 = r000008fd ^ r000008ff;\n" : String).toByteArray.data.toList
theorem checked2232 : bytes2232=statementBytes 2304 (op2232.map lower) ∧ bytes2232.length=48 := by core033_kernel_decide
def op2233 : List WordIR.Op := [.badd 2300 2304]
def bytes2233 : Bytes := ("    let r00000901: u32 = r000008fc.wrapping_add(r00000900);\n" : String).toByteArray.data.toList
theorem checked2233 : bytes2233=statementBytes 2305 (op2233.map lower) ∧ bytes2233.length=60 := by core033_kernel_decide
def op2234 : List WordIR.Op := [.literal (BitVec.ofNat 32 2162078206)]
def bytes2234 : Bytes := ("    let r00000902: u32 = 0x80deb1fe_u32;\n" : String).toByteArray.data.toList
theorem checked2234 : bytes2234=statementBytes 2306 (op2234.map lower) ∧ bytes2234.length=41 := by core033_kernel_decide
def op2235 : List WordIR.Op := [.badd 2305 2306]
def bytes2235 : Bytes := ("    let r00000903: u32 = r00000901.wrapping_add(r00000902);\n" : String).toByteArray.data.toList
theorem checked2235 : bytes2235=statementBytes 2307 (op2235.map lower) ∧ bytes2235.length=60 := by core033_kernel_decide
def op2236 : List WordIR.Op := [.badd 2307 155]
def bytes2236 : Bytes := ("    let r00000904: u32 = r00000903.wrapping_add(r0000009b);\n" : String).toByteArray.data.toList
theorem checked2236 : bytes2236=statementBytes 2308 (op2236.map lower) ∧ bytes2236.length=60 := by core033_kernel_decide
def op2237 : List WordIR.Op := [.rotr 2293 2]
def bytes2237 : Bytes := ("    let r00000905: u32 = r000008f5.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2237 : bytes2237=statementBytes 2309 (op2237.map lower) ∧ bytes2237.length=65 := by core033_kernel_decide
def op2238 : List WordIR.Op := [.rotr 2293 13]
def bytes2238 : Bytes := ("    let r00000906: u32 = r000008f5.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2238 : bytes2238=statementBytes 2310 (op2238.map lower) ∧ bytes2238.length=65 := by core033_kernel_decide
def op2239 : List WordIR.Op := [.bxor 2309 2310]
def bytes2239 : Bytes := ("    let r00000907: u32 = r00000905 ^ r00000906;\n" : String).toByteArray.data.toList
theorem checked2239 : bytes2239=statementBytes 2311 (op2239.map lower) ∧ bytes2239.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2176,op2177,op2178,op2179,op2180,op2181,op2182,op2183,op2184,op2185,op2186,op2187,op2188,op2189,op2190,op2191,op2192,op2193,op2194,op2195,op2196,op2197,op2198,op2199,op2200,op2201,op2202,op2203,op2204,op2205,op2206,op2207,op2208,op2209,op2210,op2211,op2212,op2213,op2214,op2215,op2216,op2217,op2218,op2219,op2220,op2221,op2222,op2223,op2224,op2225,op2226,op2227,op2228,op2229,op2230,op2231,op2232,op2233,op2234,op2235,op2236,op2237,op2238,op2239]
def chunks : List Bytes := [bytes2176,bytes2177,bytes2178,bytes2179,bytes2180,bytes2181,bytes2182,bytes2183,bytes2184,bytes2185,bytes2186,bytes2187,bytes2188,bytes2189,bytes2190,bytes2191,bytes2192,bytes2193,bytes2194,bytes2195,bytes2196,bytes2197,bytes2198,bytes2199,bytes2200,bytes2201,bytes2202,bytes2203,bytes2204,bytes2205,bytes2206,bytes2207,bytes2208,bytes2209,bytes2210,bytes2211,bytes2212,bytes2213,bytes2214,bytes2215,bytes2216,bytes2217,bytes2218,bytes2219,bytes2220,bytes2221,bytes2222,bytes2223,bytes2224,bytes2225,bytes2226,bytes2227,bytes2228,bytes2229,bytes2230,bytes2231,bytes2232,bytes2233,bytes2234,bytes2235,bytes2236,bytes2237,bytes2238,bytes2239]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2248 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2176.1 (.cons _ _ _ _ _ checked2177.1 (.cons _ _ _ _ _ checked2178.1 (.cons _ _ _ _ _ checked2179.1 (.cons _ _ _ _ _ checked2180.1 (.cons _ _ _ _ _ checked2181.1 (.cons _ _ _ _ _ checked2182.1 (.cons _ _ _ _ _ checked2183.1 (.cons _ _ _ _ _ checked2184.1 (.cons _ _ _ _ _ checked2185.1 (.cons _ _ _ _ _ checked2186.1 (.cons _ _ _ _ _ checked2187.1 (.cons _ _ _ _ _ checked2188.1 (.cons _ _ _ _ _ checked2189.1 (.cons _ _ _ _ _ checked2190.1 (.cons _ _ _ _ _ checked2191.1 (.cons _ _ _ _ _ checked2192.1 (.cons _ _ _ _ _ checked2193.1 (.cons _ _ _ _ _ checked2194.1 (.cons _ _ _ _ _ checked2195.1 (.cons _ _ _ _ _ checked2196.1 (.cons _ _ _ _ _ checked2197.1 (.cons _ _ _ _ _ checked2198.1 (.cons _ _ _ _ _ checked2199.1 (.cons _ _ _ _ _ checked2200.1 (.cons _ _ _ _ _ checked2201.1 (.cons _ _ _ _ _ checked2202.1 (.cons _ _ _ _ _ checked2203.1 (.cons _ _ _ _ _ checked2204.1 (.cons _ _ _ _ _ checked2205.1 (.cons _ _ _ _ _ checked2206.1 (.cons _ _ _ _ _ checked2207.1 (.cons _ _ _ _ _ checked2208.1 (.cons _ _ _ _ _ checked2209.1 (.cons _ _ _ _ _ checked2210.1 (.cons _ _ _ _ _ checked2211.1 (.cons _ _ _ _ _ checked2212.1 (.cons _ _ _ _ _ checked2213.1 (.cons _ _ _ _ _ checked2214.1 (.cons _ _ _ _ _ checked2215.1 (.cons _ _ _ _ _ checked2216.1 (.cons _ _ _ _ _ checked2217.1 (.cons _ _ _ _ _ checked2218.1 (.cons _ _ _ _ _ checked2219.1 (.cons _ _ _ _ _ checked2220.1 (.cons _ _ _ _ _ checked2221.1 (.cons _ _ _ _ _ checked2222.1 (.cons _ _ _ _ _ checked2223.1 (.cons _ _ _ _ _ checked2224.1 (.cons _ _ _ _ _ checked2225.1 (.cons _ _ _ _ _ checked2226.1 (.cons _ _ _ _ _ checked2227.1 (.cons _ _ _ _ _ checked2228.1 (.cons _ _ _ _ _ checked2229.1 (.cons _ _ _ _ _ checked2230.1 (.cons _ _ _ _ _ checked2231.1 (.cons _ _ _ _ _ checked2232.1 (.cons _ _ _ _ _ checked2233.1 (.cons _ _ _ _ _ checked2234.1 (.cons _ _ _ _ _ checked2235.1 (.cons _ _ _ _ _ checked2236.1 (.cons _ _ _ _ _ checked2237.1 (.cons _ _ _ _ _ checked2238.1 (.cons _ _ _ _ _ checked2239.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2248 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3460 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2176.2,checked2177.2,checked2178.2,checked2179.2,checked2180.2,checked2181.2,checked2182.2,checked2183.2,checked2184.2,checked2185.2,checked2186.2,checked2187.2,checked2188.2,checked2189.2,checked2190.2,checked2191.2,checked2192.2,checked2193.2,checked2194.2,checked2195.2,checked2196.2,checked2197.2,checked2198.2,checked2199.2,checked2200.2,checked2201.2,checked2202.2,checked2203.2,checked2204.2,checked2205.2,checked2206.2,checked2207.2,checked2208.2,checked2209.2,checked2210.2,checked2211.2,checked2212.2,checked2213.2,checked2214.2,checked2215.2,checked2216.2,checked2217.2,checked2218.2,checked2219.2,checked2220.2,checked2221.2,checked2222.2,checked2223.2,checked2224.2,checked2225.2,checked2226.2,checked2227.2,checked2228.2,checked2229.2,checked2230.2,checked2231.2,checked2232.2,checked2233.2,checked2234.2,checked2235.2,checked2236.2,checked2237.2,checked2238.2,checked2239.2]
  decide
end ArtifactHashBlockGroup34
