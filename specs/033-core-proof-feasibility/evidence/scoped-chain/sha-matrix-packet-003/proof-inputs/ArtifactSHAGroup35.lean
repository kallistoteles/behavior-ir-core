import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2240 : List WordIR.Op := [.bxor 2262 2263]
def bytes2240 : Bytes := ("    let r000008d8: u32 = r000008d6 ^ r000008d7;\n" : String).toByteArray.data.toList
theorem checked2240 : bytes2240=statementBytes 2264 (op2240.map lower) ∧ bytes2240.length=48 := by core033_kernel_decide
def op2241 : List WordIR.Op := [.badd 2259 2264]
def bytes2241 : Bytes := ("    let r000008d9: u32 = r000008d3.wrapping_add(r000008d8);\n" : String).toByteArray.data.toList
theorem checked2241 : bytes2241=statementBytes 2265 (op2241.map lower) ∧ bytes2241.length=60 := by core033_kernel_decide
def op2242 : List WordIR.Op := [.badd 2254 2265]
def bytes2242 : Bytes := ("    let r000008da: u32 = r000008ce.wrapping_add(r000008d9);\n" : String).toByteArray.data.toList
theorem checked2242 : bytes2242=statementBytes 2266 (op2242.map lower) ∧ bytes2242.length=60 := by core033_kernel_decide
def op2243 : List WordIR.Op := [.badd 2158 2254]
def bytes2243 : Bytes := ("    let r000008db: u32 = r0000086e.wrapping_add(r000008ce);\n" : String).toByteArray.data.toList
theorem checked2243 : bytes2243=statementBytes 2267 (op2243.map lower) ∧ bytes2243.length=60 := by core033_kernel_decide
def op2244 : List WordIR.Op := [.rotr 2267 6]
def bytes2244 : Bytes := ("    let r000008dc: u32 = r000008db.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2244 : bytes2244=statementBytes 2268 (op2244.map lower) ∧ bytes2244.length=65 := by core033_kernel_decide
def op2245 : List WordIR.Op := [.rotr 2267 11]
def bytes2245 : Bytes := ("    let r000008dd: u32 = r000008db.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2245 : bytes2245=statementBytes 2269 (op2245.map lower) ∧ bytes2245.length=65 := by core033_kernel_decide
def op2246 : List WordIR.Op := [.bxor 2268 2269]
def bytes2246 : Bytes := ("    let r000008de: u32 = r000008dc ^ r000008dd;\n" : String).toByteArray.data.toList
theorem checked2246 : bytes2246=statementBytes 2270 (op2246.map lower) ∧ bytes2246.length=48 := by core033_kernel_decide
def op2247 : List WordIR.Op := [.rotr 2267 25]
def bytes2247 : Bytes := ("    let r000008df: u32 = r000008db.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2247 : bytes2247=statementBytes 2271 (op2247.map lower) ∧ bytes2247.length=65 := by core033_kernel_decide
def op2248 : List WordIR.Op := [.bxor 2270 2271]
def bytes2248 : Bytes := ("    let r000008e0: u32 = r000008de ^ r000008df;\n" : String).toByteArray.data.toList
theorem checked2248 : bytes2248=statementBytes 2272 (op2248.map lower) ∧ bytes2248.length=48 := by core033_kernel_decide
def op2249 : List WordIR.Op := [.badd 2186 2272]
def bytes2249 : Bytes := ("    let r000008e1: u32 = r0000088a.wrapping_add(r000008e0);\n" : String).toByteArray.data.toList
theorem checked2249 : bytes2249=statementBytes 2273 (op2249.map lower) ∧ bytes2249.length=60 := by core033_kernel_decide
def op2250 : List WordIR.Op := [.band 2267 2240]
def bytes2250 : Bytes := ("    let r000008e2: u32 = r000008db & r000008c0;\n" : String).toByteArray.data.toList
theorem checked2250 : bytes2250=statementBytes 2274 (op2250.map lower) ∧ bytes2250.length=48 := by core033_kernel_decide
def op2251 : List WordIR.Op := [.bnot 2267]
def bytes2251 : Bytes := ("    let r000008e3: u32 = !r000008db;\n" : String).toByteArray.data.toList
theorem checked2251 : bytes2251=statementBytes 2275 (op2251.map lower) ∧ bytes2251.length=37 := by core033_kernel_decide
def op2252 : List WordIR.Op := [.band 2275 2213]
def bytes2252 : Bytes := ("    let r000008e4: u32 = r000008e3 & r000008a5;\n" : String).toByteArray.data.toList
theorem checked2252 : bytes2252=statementBytes 2276 (op2252.map lower) ∧ bytes2252.length=48 := by core033_kernel_decide
def op2253 : List WordIR.Op := [.bxor 2274 2276]
def bytes2253 : Bytes := ("    let r000008e5: u32 = r000008e2 ^ r000008e4;\n" : String).toByteArray.data.toList
theorem checked2253 : bytes2253=statementBytes 2277 (op2253.map lower) ∧ bytes2253.length=48 := by core033_kernel_decide
def op2254 : List WordIR.Op := [.badd 2273 2277]
def bytes2254 : Bytes := ("    let r000008e6: u32 = r000008e1.wrapping_add(r000008e5);\n" : String).toByteArray.data.toList
theorem checked2254 : bytes2254=statementBytes 2278 (op2254.map lower) ∧ bytes2254.length=60 := by core033_kernel_decide
def op2255 : List WordIR.Op := [.literal (BitVec.ofNat 32 2428436474)]
def bytes2255 : Bytes := ("    let r000008e7: u32 = 0x90befffa_u32;\n" : String).toByteArray.data.toList
theorem checked2255 : bytes2255=statementBytes 2279 (op2255.map lower) ∧ bytes2255.length=41 := by core033_kernel_decide
def op2256 : List WordIR.Op := [.badd 2278 2279]
def bytes2256 : Bytes := ("    let r000008e8: u32 = r000008e6.wrapping_add(r000008e7);\n" : String).toByteArray.data.toList
theorem checked2256 : bytes2256=statementBytes 2280 (op2256.map lower) ∧ bytes2256.length=60 := by core033_kernel_decide
def op2257 : List WordIR.Op := [.badd 2280 608]
def bytes2257 : Bytes := ("    let r000008e9: u32 = r000008e8.wrapping_add(r00000260);\n" : String).toByteArray.data.toList
theorem checked2257 : bytes2257=statementBytes 2281 (op2257.map lower) ∧ bytes2257.length=60 := by core033_kernel_decide
def op2258 : List WordIR.Op := [.rotr 2266 2]
def bytes2258 : Bytes := ("    let r000008ea: u32 = r000008da.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2258 : bytes2258=statementBytes 2282 (op2258.map lower) ∧ bytes2258.length=65 := by core033_kernel_decide
def op2259 : List WordIR.Op := [.rotr 2266 13]
def bytes2259 : Bytes := ("    let r000008eb: u32 = r000008da.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2259 : bytes2259=statementBytes 2283 (op2259.map lower) ∧ bytes2259.length=65 := by core033_kernel_decide
def op2260 : List WordIR.Op := [.bxor 2282 2283]
def bytes2260 : Bytes := ("    let r000008ec: u32 = r000008ea ^ r000008eb;\n" : String).toByteArray.data.toList
theorem checked2260 : bytes2260=statementBytes 2284 (op2260.map lower) ∧ bytes2260.length=48 := by core033_kernel_decide
def op2261 : List WordIR.Op := [.rotr 2266 22]
def bytes2261 : Bytes := ("    let r000008ed: u32 = r000008da.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2261 : bytes2261=statementBytes 2285 (op2261.map lower) ∧ bytes2261.length=65 := by core033_kernel_decide
def op2262 : List WordIR.Op := [.bxor 2284 2285]
def bytes2262 : Bytes := ("    let r000008ee: u32 = r000008ec ^ r000008ed;\n" : String).toByteArray.data.toList
theorem checked2262 : bytes2262=statementBytes 2286 (op2262.map lower) ∧ bytes2262.length=48 := by core033_kernel_decide
def op2263 : List WordIR.Op := [.band 2266 2239]
def bytes2263 : Bytes := ("    let r000008ef: u32 = r000008da & r000008bf;\n" : String).toByteArray.data.toList
theorem checked2263 : bytes2263=statementBytes 2287 (op2263.map lower) ∧ bytes2263.length=48 := by core033_kernel_decide
def op2264 : List WordIR.Op := [.band 2266 2212]
def bytes2264 : Bytes := ("    let r000008f0: u32 = r000008da & r000008a4;\n" : String).toByteArray.data.toList
theorem checked2264 : bytes2264=statementBytes 2288 (op2264.map lower) ∧ bytes2264.length=48 := by core033_kernel_decide
def op2265 : List WordIR.Op := [.bxor 2287 2288]
def bytes2265 : Bytes := ("    let r000008f1: u32 = r000008ef ^ r000008f0;\n" : String).toByteArray.data.toList
theorem checked2265 : bytes2265=statementBytes 2289 (op2265.map lower) ∧ bytes2265.length=48 := by core033_kernel_decide
def op2266 : List WordIR.Op := [.band 2239 2212]
def bytes2266 : Bytes := ("    let r000008f2: u32 = r000008bf & r000008a4;\n" : String).toByteArray.data.toList
theorem checked2266 : bytes2266=statementBytes 2290 (op2266.map lower) ∧ bytes2266.length=48 := by core033_kernel_decide
def op2267 : List WordIR.Op := [.bxor 2289 2290]
def bytes2267 : Bytes := ("    let r000008f3: u32 = r000008f1 ^ r000008f2;\n" : String).toByteArray.data.toList
theorem checked2267 : bytes2267=statementBytes 2291 (op2267.map lower) ∧ bytes2267.length=48 := by core033_kernel_decide
def op2268 : List WordIR.Op := [.badd 2286 2291]
def bytes2268 : Bytes := ("    let r000008f4: u32 = r000008ee.wrapping_add(r000008f3);\n" : String).toByteArray.data.toList
theorem checked2268 : bytes2268=statementBytes 2292 (op2268.map lower) ∧ bytes2268.length=60 := by core033_kernel_decide
def op2269 : List WordIR.Op := [.badd 2281 2292]
def bytes2269 : Bytes := ("    let r000008f5: u32 = r000008e9.wrapping_add(r000008f4);\n" : String).toByteArray.data.toList
theorem checked2269 : bytes2269=statementBytes 2293 (op2269.map lower) ∧ bytes2269.length=60 := by core033_kernel_decide
def op2270 : List WordIR.Op := [.badd 2185 2281]
def bytes2270 : Bytes := ("    let r000008f6: u32 = r00000889.wrapping_add(r000008e9);\n" : String).toByteArray.data.toList
theorem checked2270 : bytes2270=statementBytes 2294 (op2270.map lower) ∧ bytes2270.length=60 := by core033_kernel_decide
def op2271 : List WordIR.Op := [.rotr 2294 6]
def bytes2271 : Bytes := ("    let r000008f7: u32 = r000008f6.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2271 : bytes2271=statementBytes 2295 (op2271.map lower) ∧ bytes2271.length=65 := by core033_kernel_decide
def op2272 : List WordIR.Op := [.rotr 2294 11]
def bytes2272 : Bytes := ("    let r000008f8: u32 = r000008f6.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2272 : bytes2272=statementBytes 2296 (op2272.map lower) ∧ bytes2272.length=65 := by core033_kernel_decide
def op2273 : List WordIR.Op := [.bxor 2295 2296]
def bytes2273 : Bytes := ("    let r000008f9: u32 = r000008f7 ^ r000008f8;\n" : String).toByteArray.data.toList
theorem checked2273 : bytes2273=statementBytes 2297 (op2273.map lower) ∧ bytes2273.length=48 := by core033_kernel_decide
def op2274 : List WordIR.Op := [.rotr 2294 25]
def bytes2274 : Bytes := ("    let r000008fa: u32 = r000008f6.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2274 : bytes2274=statementBytes 2298 (op2274.map lower) ∧ bytes2274.length=65 := by core033_kernel_decide
def op2275 : List WordIR.Op := [.bxor 2297 2298]
def bytes2275 : Bytes := ("    let r000008fb: u32 = r000008f9 ^ r000008fa;\n" : String).toByteArray.data.toList
theorem checked2275 : bytes2275=statementBytes 2299 (op2275.map lower) ∧ bytes2275.length=48 := by core033_kernel_decide
def op2276 : List WordIR.Op := [.badd 2213 2299]
def bytes2276 : Bytes := ("    let r000008fc: u32 = r000008a5.wrapping_add(r000008fb);\n" : String).toByteArray.data.toList
theorem checked2276 : bytes2276=statementBytes 2300 (op2276.map lower) ∧ bytes2276.length=60 := by core033_kernel_decide
def op2277 : List WordIR.Op := [.band 2294 2267]
def bytes2277 : Bytes := ("    let r000008fd: u32 = r000008f6 & r000008db;\n" : String).toByteArray.data.toList
theorem checked2277 : bytes2277=statementBytes 2301 (op2277.map lower) ∧ bytes2277.length=48 := by core033_kernel_decide
def op2278 : List WordIR.Op := [.bnot 2294]
def bytes2278 : Bytes := ("    let r000008fe: u32 = !r000008f6;\n" : String).toByteArray.data.toList
theorem checked2278 : bytes2278=statementBytes 2302 (op2278.map lower) ∧ bytes2278.length=37 := by core033_kernel_decide
def op2279 : List WordIR.Op := [.band 2302 2240]
def bytes2279 : Bytes := ("    let r000008ff: u32 = r000008fe & r000008c0;\n" : String).toByteArray.data.toList
theorem checked2279 : bytes2279=statementBytes 2303 (op2279.map lower) ∧ bytes2279.length=48 := by core033_kernel_decide
def op2280 : List WordIR.Op := [.bxor 2301 2303]
def bytes2280 : Bytes := ("    let r00000900: u32 = r000008fd ^ r000008ff;\n" : String).toByteArray.data.toList
theorem checked2280 : bytes2280=statementBytes 2304 (op2280.map lower) ∧ bytes2280.length=48 := by core033_kernel_decide
def op2281 : List WordIR.Op := [.badd 2300 2304]
def bytes2281 : Bytes := ("    let r00000901: u32 = r000008fc.wrapping_add(r00000900);\n" : String).toByteArray.data.toList
theorem checked2281 : bytes2281=statementBytes 2305 (op2281.map lower) ∧ bytes2281.length=60 := by core033_kernel_decide
def op2282 : List WordIR.Op := [.literal (BitVec.ofNat 32 2756734187)]
def bytes2282 : Bytes := ("    let r00000902: u32 = 0xa4506ceb_u32;\n" : String).toByteArray.data.toList
theorem checked2282 : bytes2282=statementBytes 2306 (op2282.map lower) ∧ bytes2282.length=41 := by core033_kernel_decide
def op2283 : List WordIR.Op := [.badd 2305 2306]
def bytes2283 : Bytes := ("    let r00000903: u32 = r00000901.wrapping_add(r00000902);\n" : String).toByteArray.data.toList
theorem checked2283 : bytes2283=statementBytes 2307 (op2283.map lower) ∧ bytes2283.length=60 := by core033_kernel_decide
def op2284 : List WordIR.Op := [.badd 2307 621]
def bytes2284 : Bytes := ("    let r00000904: u32 = r00000903.wrapping_add(r0000026d);\n" : String).toByteArray.data.toList
theorem checked2284 : bytes2284=statementBytes 2308 (op2284.map lower) ∧ bytes2284.length=60 := by core033_kernel_decide
def op2285 : List WordIR.Op := [.rotr 2293 2]
def bytes2285 : Bytes := ("    let r00000905: u32 = r000008f5.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2285 : bytes2285=statementBytes 2309 (op2285.map lower) ∧ bytes2285.length=65 := by core033_kernel_decide
def op2286 : List WordIR.Op := [.rotr 2293 13]
def bytes2286 : Bytes := ("    let r00000906: u32 = r000008f5.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2286 : bytes2286=statementBytes 2310 (op2286.map lower) ∧ bytes2286.length=65 := by core033_kernel_decide
def op2287 : List WordIR.Op := [.bxor 2309 2310]
def bytes2287 : Bytes := ("    let r00000907: u32 = r00000905 ^ r00000906;\n" : String).toByteArray.data.toList
theorem checked2287 : bytes2287=statementBytes 2311 (op2287.map lower) ∧ bytes2287.length=48 := by core033_kernel_decide
def op2288 : List WordIR.Op := [.rotr 2293 22]
def bytes2288 : Bytes := ("    let r00000908: u32 = r000008f5.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2288 : bytes2288=statementBytes 2312 (op2288.map lower) ∧ bytes2288.length=65 := by core033_kernel_decide
def op2289 : List WordIR.Op := [.bxor 2311 2312]
def bytes2289 : Bytes := ("    let r00000909: u32 = r00000907 ^ r00000908;\n" : String).toByteArray.data.toList
theorem checked2289 : bytes2289=statementBytes 2313 (op2289.map lower) ∧ bytes2289.length=48 := by core033_kernel_decide
def op2290 : List WordIR.Op := [.band 2293 2266]
def bytes2290 : Bytes := ("    let r0000090a: u32 = r000008f5 & r000008da;\n" : String).toByteArray.data.toList
theorem checked2290 : bytes2290=statementBytes 2314 (op2290.map lower) ∧ bytes2290.length=48 := by core033_kernel_decide
def op2291 : List WordIR.Op := [.band 2293 2239]
def bytes2291 : Bytes := ("    let r0000090b: u32 = r000008f5 & r000008bf;\n" : String).toByteArray.data.toList
theorem checked2291 : bytes2291=statementBytes 2315 (op2291.map lower) ∧ bytes2291.length=48 := by core033_kernel_decide
def op2292 : List WordIR.Op := [.bxor 2314 2315]
def bytes2292 : Bytes := ("    let r0000090c: u32 = r0000090a ^ r0000090b;\n" : String).toByteArray.data.toList
theorem checked2292 : bytes2292=statementBytes 2316 (op2292.map lower) ∧ bytes2292.length=48 := by core033_kernel_decide
def op2293 : List WordIR.Op := [.band 2266 2239]
def bytes2293 : Bytes := ("    let r0000090d: u32 = r000008da & r000008bf;\n" : String).toByteArray.data.toList
theorem checked2293 : bytes2293=statementBytes 2317 (op2293.map lower) ∧ bytes2293.length=48 := by core033_kernel_decide
def op2294 : List WordIR.Op := [.bxor 2316 2317]
def bytes2294 : Bytes := ("    let r0000090e: u32 = r0000090c ^ r0000090d;\n" : String).toByteArray.data.toList
theorem checked2294 : bytes2294=statementBytes 2318 (op2294.map lower) ∧ bytes2294.length=48 := by core033_kernel_decide
def op2295 : List WordIR.Op := [.badd 2313 2318]
def bytes2295 : Bytes := ("    let r0000090f: u32 = r00000909.wrapping_add(r0000090e);\n" : String).toByteArray.data.toList
theorem checked2295 : bytes2295=statementBytes 2319 (op2295.map lower) ∧ bytes2295.length=60 := by core033_kernel_decide
def op2296 : List WordIR.Op := [.badd 2308 2319]
def bytes2296 : Bytes := ("    let r00000910: u32 = r00000904.wrapping_add(r0000090f);\n" : String).toByteArray.data.toList
theorem checked2296 : bytes2296=statementBytes 2320 (op2296.map lower) ∧ bytes2296.length=60 := by core033_kernel_decide
def op2297 : List WordIR.Op := [.badd 2212 2308]
def bytes2297 : Bytes := ("    let r00000911: u32 = r000008a4.wrapping_add(r00000904);\n" : String).toByteArray.data.toList
theorem checked2297 : bytes2297=statementBytes 2321 (op2297.map lower) ∧ bytes2297.length=60 := by core033_kernel_decide
def op2298 : List WordIR.Op := [.rotr 2321 6]
def bytes2298 : Bytes := ("    let r00000912: u32 = r00000911.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2298 : bytes2298=statementBytes 2322 (op2298.map lower) ∧ bytes2298.length=65 := by core033_kernel_decide
def op2299 : List WordIR.Op := [.rotr 2321 11]
def bytes2299 : Bytes := ("    let r00000913: u32 = r00000911.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2299 : bytes2299=statementBytes 2323 (op2299.map lower) ∧ bytes2299.length=65 := by core033_kernel_decide
def op2300 : List WordIR.Op := [.bxor 2322 2323]
def bytes2300 : Bytes := ("    let r00000914: u32 = r00000912 ^ r00000913;\n" : String).toByteArray.data.toList
theorem checked2300 : bytes2300=statementBytes 2324 (op2300.map lower) ∧ bytes2300.length=48 := by core033_kernel_decide
def op2301 : List WordIR.Op := [.rotr 2321 25]
def bytes2301 : Bytes := ("    let r00000915: u32 = r00000911.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2301 : bytes2301=statementBytes 2325 (op2301.map lower) ∧ bytes2301.length=65 := by core033_kernel_decide
def op2302 : List WordIR.Op := [.bxor 2324 2325]
def bytes2302 : Bytes := ("    let r00000916: u32 = r00000914 ^ r00000915;\n" : String).toByteArray.data.toList
theorem checked2302 : bytes2302=statementBytes 2326 (op2302.map lower) ∧ bytes2302.length=48 := by core033_kernel_decide
def op2303 : List WordIR.Op := [.badd 2240 2326]
def bytes2303 : Bytes := ("    let r00000917: u32 = r000008c0.wrapping_add(r00000916);\n" : String).toByteArray.data.toList
theorem checked2303 : bytes2303=statementBytes 2327 (op2303.map lower) ∧ bytes2303.length=60 := by core033_kernel_decide
def innerBlocks35 : List (List WordIR.Op) := [op2240,op2241,op2242,op2243,op2244,op2245,op2246,op2247,op2248,op2249,op2250,op2251,op2252,op2253,op2254,op2255,op2256,op2257,op2258,op2259,op2260,op2261,op2262,op2263,op2264,op2265,op2266,op2267,op2268,op2269,op2270,op2271,op2272,op2273,op2274,op2275,op2276,op2277,op2278,op2279,op2280,op2281,op2282,op2283,op2284,op2285,op2286,op2287,op2288,op2289,op2290,op2291,op2292,op2293,op2294,op2295,op2296,op2297,op2298,op2299,op2300,op2301,op2302,op2303]
def innerBytes35 : List Bytes := [bytes2240,bytes2241,bytes2242,bytes2243,bytes2244,bytes2245,bytes2246,bytes2247,bytes2248,bytes2249,bytes2250,bytes2251,bytes2252,bytes2253,bytes2254,bytes2255,bytes2256,bytes2257,bytes2258,bytes2259,bytes2260,bytes2261,bytes2262,bytes2263,bytes2264,bytes2265,bytes2266,bytes2267,bytes2268,bytes2269,bytes2270,bytes2271,bytes2272,bytes2273,bytes2274,bytes2275,bytes2276,bytes2277,bytes2278,bytes2279,bytes2280,bytes2281,bytes2282,bytes2283,bytes2284,bytes2285,bytes2286,bytes2287,bytes2288,bytes2289,bytes2290,bytes2291,bytes2292,bytes2293,bytes2294,bytes2295,bytes2296,bytes2297,bytes2298,bytes2299,bytes2300,bytes2301,bytes2302,bytes2303]
def partOps35 : List WordIR.Op := innerBlocks35.flatten
def partBytes35 : Bytes := innerBytes35.flatten
theorem partChain35 : BlockChain 2264 innerBlocks35 innerBytes35 := by
  unfold innerBlocks35 innerBytes35
  exact (.cons _ _ _ _ _ checked2240.1 (.cons _ _ _ _ _ checked2241.1 (.cons _ _ _ _ _ checked2242.1 (.cons _ _ _ _ _ checked2243.1 (.cons _ _ _ _ _ checked2244.1 (.cons _ _ _ _ _ checked2245.1 (.cons _ _ _ _ _ checked2246.1 (.cons _ _ _ _ _ checked2247.1 (.cons _ _ _ _ _ checked2248.1 (.cons _ _ _ _ _ checked2249.1 (.cons _ _ _ _ _ checked2250.1 (.cons _ _ _ _ _ checked2251.1 (.cons _ _ _ _ _ checked2252.1 (.cons _ _ _ _ _ checked2253.1 (.cons _ _ _ _ _ checked2254.1 (.cons _ _ _ _ _ checked2255.1 (.cons _ _ _ _ _ checked2256.1 (.cons _ _ _ _ _ checked2257.1 (.cons _ _ _ _ _ checked2258.1 (.cons _ _ _ _ _ checked2259.1 (.cons _ _ _ _ _ checked2260.1 (.cons _ _ _ _ _ checked2261.1 (.cons _ _ _ _ _ checked2262.1 (.cons _ _ _ _ _ checked2263.1 (.cons _ _ _ _ _ checked2264.1 (.cons _ _ _ _ _ checked2265.1 (.cons _ _ _ _ _ checked2266.1 (.cons _ _ _ _ _ checked2267.1 (.cons _ _ _ _ _ checked2268.1 (.cons _ _ _ _ _ checked2269.1 (.cons _ _ _ _ _ checked2270.1 (.cons _ _ _ _ _ checked2271.1 (.cons _ _ _ _ _ checked2272.1 (.cons _ _ _ _ _ checked2273.1 (.cons _ _ _ _ _ checked2274.1 (.cons _ _ _ _ _ checked2275.1 (.cons _ _ _ _ _ checked2276.1 (.cons _ _ _ _ _ checked2277.1 (.cons _ _ _ _ _ checked2278.1 (.cons _ _ _ _ _ checked2279.1 (.cons _ _ _ _ _ checked2280.1 (.cons _ _ _ _ _ checked2281.1 (.cons _ _ _ _ _ checked2282.1 (.cons _ _ _ _ _ checked2283.1 (.cons _ _ _ _ _ checked2284.1 (.cons _ _ _ _ _ checked2285.1 (.cons _ _ _ _ _ checked2286.1 (.cons _ _ _ _ _ checked2287.1 (.cons _ _ _ _ _ checked2288.1 (.cons _ _ _ _ _ checked2289.1 (.cons _ _ _ _ _ checked2290.1 (.cons _ _ _ _ _ checked2291.1 (.cons _ _ _ _ _ checked2292.1 (.cons _ _ _ _ _ checked2293.1 (.cons _ _ _ _ _ checked2294.1 (.cons _ _ _ _ _ checked2295.1 (.cons _ _ _ _ _ checked2296.1 (.cons _ _ _ _ _ checked2297.1 (.cons _ _ _ _ _ checked2298.1 (.cons _ _ _ _ _ checked2299.1 (.cons _ _ _ _ _ checked2300.1 (.cons _ _ _ _ _ checked2301.1 (.cons _ _ _ _ _ checked2302.1 (.cons _ _ _ _ _ checked2303.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked35 : partBytes35=statementBytes 2264 (partOps35.map lower) ∧ partBytes35.length=3507 := by
  constructor
  · exact (chain_exact partChain35).trans (body_exact innerBlocks35 2264)
  · simp only [partBytes35,WordSource.chunk_sizes_exact,innerBytes35,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2240.2,checked2241.2,checked2242.2,checked2243.2,checked2244.2,checked2245.2,checked2246.2,checked2247.2,checked2248.2,checked2249.2,checked2250.2,checked2251.2,checked2252.2,checked2253.2,checked2254.2,checked2255.2,checked2256.2,checked2257.2,checked2258.2,checked2259.2,checked2260.2,checked2261.2,checked2262.2,checked2263.2,checked2264.2,checked2265.2,checked2266.2,checked2267.2,checked2268.2,checked2269.2,checked2270.2,checked2271.2,checked2272.2,checked2273.2,checked2274.2,checked2275.2,checked2276.2,checked2277.2,checked2278.2,checked2279.2,checked2280.2,checked2281.2,checked2282.2,checked2283.2,checked2284.2,checked2285.2,checked2286.2,checked2287.2,checked2288.2,checked2289.2,checked2290.2,checked2291.2,checked2292.2,checked2293.2,checked2294.2,checked2295.2,checked2296.2,checked2297.2,checked2298.2,checked2299.2,checked2300.2,checked2301.2,checked2302.2,checked2303.2]
    decide
theorem partLength35 : partOps35.length=64 := by
  simp only [partOps35,innerBlocks35,op2240,op2241,op2242,op2243,op2244,op2245,op2246,op2247,op2248,op2249,op2250,op2251,op2252,op2253,op2254,op2255,op2256,op2257,op2258,op2259,op2260,op2261,op2262,op2263,op2264,op2265,op2266,op2267,op2268,op2269,op2270,op2271,op2272,op2273,op2274,op2275,op2276,op2277,op2278,op2279,op2280,op2281,op2282,op2283,op2284,op2285,op2286,op2287,op2288,op2289,op2290,op2291,op2292,op2293,op2294,op2295,op2296,op2297,op2298,op2299,op2300,op2301,op2302,op2303,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
