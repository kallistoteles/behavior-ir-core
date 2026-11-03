import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup35
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2240 : List WordIR.Op := [.band 2331 2335]
def bytes2240 : Bytes := ("    let r00000920: u32 = r0000091b & r0000091f;\n" : String).toByteArray.data.toList
theorem checked2240 : bytes2240=statementBytes 2336 (op2240.map lower) ∧ bytes2240.length=48 := by core033_kernel_decide
def op2241 : List WordIR.Op := [.bxor 2328 2336]
def bytes2241 : Bytes := ("    let r00000921: u32 = r00000918 ^ r00000920;\n" : String).toByteArray.data.toList
theorem checked2241 : bytes2241=statementBytes 2337 (op2241.map lower) ∧ bytes2241.length=48 := by core033_kernel_decide
def op2242 : List WordIR.Op := [.shr 2337 31]
def bytes2242 : Bytes := ("    let r00000922: u32 = r00000921 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2242 : bytes2242=statementBytes 2338 (op2242.map lower) ∧ bytes2242.length=54 := by core033_kernel_decide
def op2243 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2243 : Bytes := ("    let r00000923: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2243 : bytes2243=statementBytes 2339 (op2243.map lower) ∧ bytes2243.length=41 := by core033_kernel_decide
def op2244 : List WordIR.Op := [.bxor 2338 2339]
def bytes2244 : Bytes := ("    let r00000924: u32 = r00000922 ^ r00000923;\n" : String).toByteArray.data.toList
theorem checked2244 : bytes2244=statementBytes 2340 (op2244.map lower) ∧ bytes2244.length=48 := by core033_kernel_decide
def op2245 : List WordIR.Op := [.band 2325 2340]
def bytes2245 : Bytes := ("    let r00000925: u32 = r00000915 & r00000924;\n" : String).toByteArray.data.toList
theorem checked2245 : bytes2245=statementBytes 2341 (op2245.map lower) ∧ bytes2245.length=48 := by core033_kernel_decide
def op2246 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2246 : Bytes := ("    let r00000926: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2246 : bytes2246=statementBytes 2342 (op2246.map lower) ∧ bytes2246.length=41 := by core033_kernel_decide
def op2247 : List WordIR.Op := [.bnot 2342]
def bytes2247 : Bytes := ("    let r00000927: u32 = !r00000926;\n" : String).toByteArray.data.toList
theorem checked2247 : bytes2247=statementBytes 2343 (op2247.map lower) ∧ bytes2247.length=37 := by core033_kernel_decide
def op2248 : List WordIR.Op := [.band 1615 2343]
def bytes2248 : Bytes := ("    let r00000928: u32 = r0000064f & r00000927;\n" : String).toByteArray.data.toList
theorem checked2248 : bytes2248=statementBytes 2344 (op2248.map lower) ∧ bytes2248.length=48 := by core033_kernel_decide
def op2249 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2249 : Bytes := ("    let r00000929: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2249 : bytes2249=statementBytes 2345 (op2249.map lower) ∧ bytes2249.length=41 := by core033_kernel_decide
def op2250 : List WordIR.Op := [.bnot 2345]
def bytes2250 : Bytes := ("    let r0000092a: u32 = !r00000929;\n" : String).toByteArray.data.toList
theorem checked2250 : bytes2250=statementBytes 2346 (op2250.map lower) ∧ bytes2250.length=37 := by core033_kernel_decide
def op2251 : List WordIR.Op := [.bxor 1615 2346]
def bytes2251 : Bytes := ("    let r0000092b: u32 = r0000064f ^ r0000092a;\n" : String).toByteArray.data.toList
theorem checked2251 : bytes2251=statementBytes 2347 (op2251.map lower) ∧ bytes2251.length=48 := by core033_kernel_decide
def op2252 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2252 : Bytes := ("    let r0000092c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2252 : bytes2252=statementBytes 2348 (op2252.map lower) ∧ bytes2252.length=41 := by core033_kernel_decide
def op2253 : List WordIR.Op := [.bnot 2348]
def bytes2253 : Bytes := ("    let r0000092d: u32 = !r0000092c;\n" : String).toByteArray.data.toList
theorem checked2253 : bytes2253=statementBytes 2349 (op2253.map lower) ∧ bytes2253.length=37 := by core033_kernel_decide
def op2254 : List WordIR.Op := [.badd 1615 2349]
def bytes2254 : Bytes := ("    let r0000092e: u32 = r0000064f.wrapping_add(r0000092d);\n" : String).toByteArray.data.toList
theorem checked2254 : bytes2254=statementBytes 2350 (op2254.map lower) ∧ bytes2254.length=60 := by core033_kernel_decide
def op2255 : List WordIR.Op := [.bnot 2350]
def bytes2255 : Bytes := ("    let r0000092f: u32 = !r0000092e;\n" : String).toByteArray.data.toList
theorem checked2255 : bytes2255=statementBytes 2351 (op2255.map lower) ∧ bytes2255.length=37 := by core033_kernel_decide
def op2256 : List WordIR.Op := [.band 2347 2351]
def bytes2256 : Bytes := ("    let r00000930: u32 = r0000092b & r0000092f;\n" : String).toByteArray.data.toList
theorem checked2256 : bytes2256=statementBytes 2352 (op2256.map lower) ∧ bytes2256.length=48 := by core033_kernel_decide
def op2257 : List WordIR.Op := [.bxor 2344 2352]
def bytes2257 : Bytes := ("    let r00000931: u32 = r00000928 ^ r00000930;\n" : String).toByteArray.data.toList
theorem checked2257 : bytes2257=statementBytes 2353 (op2257.map lower) ∧ bytes2257.length=48 := by core033_kernel_decide
def op2258 : List WordIR.Op := [.shr 2353 31]
def bytes2258 : Bytes := ("    let r00000932: u32 = r00000931 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2258 : bytes2258=statementBytes 2354 (op2258.map lower) ∧ bytes2258.length=54 := by core033_kernel_decide
def op2259 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2259 : Bytes := ("    let r00000933: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2259 : bytes2259=statementBytes 2355 (op2259.map lower) ∧ bytes2259.length=41 := by core033_kernel_decide
def op2260 : List WordIR.Op := [.bxor 2354 2355]
def bytes2260 : Bytes := ("    let r00000934: u32 = r00000932 ^ r00000933;\n" : String).toByteArray.data.toList
theorem checked2260 : bytes2260=statementBytes 2356 (op2260.map lower) ∧ bytes2260.length=48 := by core033_kernel_decide
def op2261 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2261 : Bytes := ("    let r00000935: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2261 : bytes2261=statementBytes 2357 (op2261.map lower) ∧ bytes2261.length=41 := by core033_kernel_decide
def op2262 : List WordIR.Op := [.bnot 2357]
def bytes2262 : Bytes := ("    let r00000936: u32 = !r00000935;\n" : String).toByteArray.data.toList
theorem checked2262 : bytes2262=statementBytes 2358 (op2262.map lower) ∧ bytes2262.length=37 := by core033_kernel_decide
def op2263 : List WordIR.Op := [.band 1605 2358]
def bytes2263 : Bytes := ("    let r00000937: u32 = r00000645 & r00000936;\n" : String).toByteArray.data.toList
theorem checked2263 : bytes2263=statementBytes 2359 (op2263.map lower) ∧ bytes2263.length=48 := by core033_kernel_decide
def op2264 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2264 : Bytes := ("    let r00000938: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2264 : bytes2264=statementBytes 2360 (op2264.map lower) ∧ bytes2264.length=41 := by core033_kernel_decide
def op2265 : List WordIR.Op := [.bnot 2360]
def bytes2265 : Bytes := ("    let r00000939: u32 = !r00000938;\n" : String).toByteArray.data.toList
theorem checked2265 : bytes2265=statementBytes 2361 (op2265.map lower) ∧ bytes2265.length=37 := by core033_kernel_decide
def op2266 : List WordIR.Op := [.bxor 1605 2361]
def bytes2266 : Bytes := ("    let r0000093a: u32 = r00000645 ^ r00000939;\n" : String).toByteArray.data.toList
theorem checked2266 : bytes2266=statementBytes 2362 (op2266.map lower) ∧ bytes2266.length=48 := by core033_kernel_decide
def op2267 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2267 : Bytes := ("    let r0000093b: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2267 : bytes2267=statementBytes 2363 (op2267.map lower) ∧ bytes2267.length=41 := by core033_kernel_decide
def op2268 : List WordIR.Op := [.bnot 2363]
def bytes2268 : Bytes := ("    let r0000093c: u32 = !r0000093b;\n" : String).toByteArray.data.toList
theorem checked2268 : bytes2268=statementBytes 2364 (op2268.map lower) ∧ bytes2268.length=37 := by core033_kernel_decide
def op2269 : List WordIR.Op := [.badd 1605 2364]
def bytes2269 : Bytes := ("    let r0000093d: u32 = r00000645.wrapping_add(r0000093c);\n" : String).toByteArray.data.toList
theorem checked2269 : bytes2269=statementBytes 2365 (op2269.map lower) ∧ bytes2269.length=60 := by core033_kernel_decide
def op2270 : List WordIR.Op := [.bnot 2365]
def bytes2270 : Bytes := ("    let r0000093e: u32 = !r0000093d;\n" : String).toByteArray.data.toList
theorem checked2270 : bytes2270=statementBytes 2366 (op2270.map lower) ∧ bytes2270.length=37 := by core033_kernel_decide
def op2271 : List WordIR.Op := [.band 2362 2366]
def bytes2271 : Bytes := ("    let r0000093f: u32 = r0000093a & r0000093e;\n" : String).toByteArray.data.toList
theorem checked2271 : bytes2271=statementBytes 2367 (op2271.map lower) ∧ bytes2271.length=48 := by core033_kernel_decide
def op2272 : List WordIR.Op := [.bxor 2359 2367]
def bytes2272 : Bytes := ("    let r00000940: u32 = r00000937 ^ r0000093f;\n" : String).toByteArray.data.toList
theorem checked2272 : bytes2272=statementBytes 2368 (op2272.map lower) ∧ bytes2272.length=48 := by core033_kernel_decide
def op2273 : List WordIR.Op := [.shr 2368 31]
def bytes2273 : Bytes := ("    let r00000941: u32 = r00000940 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2273 : bytes2273=statementBytes 2369 (op2273.map lower) ∧ bytes2273.length=54 := by core033_kernel_decide
def op2274 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2274 : Bytes := ("    let r00000942: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2274 : bytes2274=statementBytes 2370 (op2274.map lower) ∧ bytes2274.length=41 := by core033_kernel_decide
def op2275 : List WordIR.Op := [.bxor 2369 2370]
def bytes2275 : Bytes := ("    let r00000943: u32 = r00000941 ^ r00000942;\n" : String).toByteArray.data.toList
theorem checked2275 : bytes2275=statementBytes 2371 (op2275.map lower) ∧ bytes2275.length=48 := by core033_kernel_decide
def op2276 : List WordIR.Op := [.band 2356 2371]
def bytes2276 : Bytes := ("    let r00000944: u32 = r00000934 & r00000943;\n" : String).toByteArray.data.toList
theorem checked2276 : bytes2276=statementBytes 2372 (op2276.map lower) ∧ bytes2276.length=48 := by core033_kernel_decide
def op2277 : List WordIR.Op := [.band 2341 2372]
def bytes2277 : Bytes := ("    let r00000945: u32 = r00000925 & r00000944;\n" : String).toByteArray.data.toList
theorem checked2277 : bytes2277=statementBytes 2373 (op2277.map lower) ∧ bytes2277.length=48 := by core033_kernel_decide
def op2278 : List WordIR.Op := [.badd 1495 1615]
def bytes2278 : Bytes := ("    let r00000946: u32 = r000005d7.wrapping_add(r0000064f);\n" : String).toByteArray.data.toList
theorem checked2278 : bytes2278=statementBytes 2374 (op2278.map lower) ∧ bytes2278.length=60 := by core033_kernel_decide
def op2279 : List WordIR.Op := [.band 1485 1605]
def bytes2279 : Bytes := ("    let r00000947: u32 = r000005cd & r00000645;\n" : String).toByteArray.data.toList
theorem checked2279 : bytes2279=statementBytes 2375 (op2279.map lower) ∧ bytes2279.length=48 := by core033_kernel_decide
def op2280 : List WordIR.Op := [.bxor 1485 1605]
def bytes2280 : Bytes := ("    let r00000948: u32 = r000005cd ^ r00000645;\n" : String).toByteArray.data.toList
theorem checked2280 : bytes2280=statementBytes 2376 (op2280.map lower) ∧ bytes2280.length=48 := by core033_kernel_decide
def op2281 : List WordIR.Op := [.badd 1485 1605]
def bytes2281 : Bytes := ("    let r00000949: u32 = r000005cd.wrapping_add(r00000645);\n" : String).toByteArray.data.toList
theorem checked2281 : bytes2281=statementBytes 2377 (op2281.map lower) ∧ bytes2281.length=60 := by core033_kernel_decide
def op2282 : List WordIR.Op := [.bnot 2377]
def bytes2282 : Bytes := ("    let r0000094a: u32 = !r00000949;\n" : String).toByteArray.data.toList
theorem checked2282 : bytes2282=statementBytes 2378 (op2282.map lower) ∧ bytes2282.length=37 := by core033_kernel_decide
def op2283 : List WordIR.Op := [.band 2376 2378]
def bytes2283 : Bytes := ("    let r0000094b: u32 = r00000948 & r0000094a;\n" : String).toByteArray.data.toList
theorem checked2283 : bytes2283=statementBytes 2379 (op2283.map lower) ∧ bytes2283.length=48 := by core033_kernel_decide
def op2284 : List WordIR.Op := [.bxor 2375 2379]
def bytes2284 : Bytes := ("    let r0000094c: u32 = r00000947 ^ r0000094b;\n" : String).toByteArray.data.toList
theorem checked2284 : bytes2284=statementBytes 2380 (op2284.map lower) ∧ bytes2284.length=48 := by core033_kernel_decide
def op2285 : List WordIR.Op := [.shr 2380 31]
def bytes2285 : Bytes := ("    let r0000094d: u32 = r0000094c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2285 : bytes2285=statementBytes 2381 (op2285.map lower) ∧ bytes2285.length=54 := by core033_kernel_decide
def op2286 : List WordIR.Op := [.badd 2374 2381]
def bytes2286 : Bytes := ("    let r0000094e: u32 = r00000946.wrapping_add(r0000094d);\n" : String).toByteArray.data.toList
theorem checked2286 : bytes2286=statementBytes 2382 (op2286.map lower) ∧ bytes2286.length=60 := by core033_kernel_decide
def op2287 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2287 : Bytes := ("    let r0000094f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2287 : bytes2287=statementBytes 2383 (op2287.map lower) ∧ bytes2287.length=41 := by core033_kernel_decide
def op2288 : List WordIR.Op := [.bnot 2383]
def bytes2288 : Bytes := ("    let r00000950: u32 = !r0000094f;\n" : String).toByteArray.data.toList
theorem checked2288 : bytes2288=statementBytes 2384 (op2288.map lower) ∧ bytes2288.length=37 := by core033_kernel_decide
def op2289 : List WordIR.Op := [.band 2382 2384]
def bytes2289 : Bytes := ("    let r00000951: u32 = r0000094e & r00000950;\n" : String).toByteArray.data.toList
theorem checked2289 : bytes2289=statementBytes 2385 (op2289.map lower) ∧ bytes2289.length=48 := by core033_kernel_decide
def op2290 : List WordIR.Op := [.badd 1495 1615]
def bytes2290 : Bytes := ("    let r00000952: u32 = r000005d7.wrapping_add(r0000064f);\n" : String).toByteArray.data.toList
theorem checked2290 : bytes2290=statementBytes 2386 (op2290.map lower) ∧ bytes2290.length=60 := by core033_kernel_decide
def op2291 : List WordIR.Op := [.band 1485 1605]
def bytes2291 : Bytes := ("    let r00000953: u32 = r000005cd & r00000645;\n" : String).toByteArray.data.toList
theorem checked2291 : bytes2291=statementBytes 2387 (op2291.map lower) ∧ bytes2291.length=48 := by core033_kernel_decide
def op2292 : List WordIR.Op := [.bxor 1485 1605]
def bytes2292 : Bytes := ("    let r00000954: u32 = r000005cd ^ r00000645;\n" : String).toByteArray.data.toList
theorem checked2292 : bytes2292=statementBytes 2388 (op2292.map lower) ∧ bytes2292.length=48 := by core033_kernel_decide
def op2293 : List WordIR.Op := [.badd 1485 1605]
def bytes2293 : Bytes := ("    let r00000955: u32 = r000005cd.wrapping_add(r00000645);\n" : String).toByteArray.data.toList
theorem checked2293 : bytes2293=statementBytes 2389 (op2293.map lower) ∧ bytes2293.length=60 := by core033_kernel_decide
def op2294 : List WordIR.Op := [.bnot 2389]
def bytes2294 : Bytes := ("    let r00000956: u32 = !r00000955;\n" : String).toByteArray.data.toList
theorem checked2294 : bytes2294=statementBytes 2390 (op2294.map lower) ∧ bytes2294.length=37 := by core033_kernel_decide
def op2295 : List WordIR.Op := [.band 2388 2390]
def bytes2295 : Bytes := ("    let r00000957: u32 = r00000954 & r00000956;\n" : String).toByteArray.data.toList
theorem checked2295 : bytes2295=statementBytes 2391 (op2295.map lower) ∧ bytes2295.length=48 := by core033_kernel_decide
def op2296 : List WordIR.Op := [.bxor 2387 2391]
def bytes2296 : Bytes := ("    let r00000958: u32 = r00000953 ^ r00000957;\n" : String).toByteArray.data.toList
theorem checked2296 : bytes2296=statementBytes 2392 (op2296.map lower) ∧ bytes2296.length=48 := by core033_kernel_decide
def op2297 : List WordIR.Op := [.shr 2392 31]
def bytes2297 : Bytes := ("    let r00000959: u32 = r00000958 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2297 : bytes2297=statementBytes 2393 (op2297.map lower) ∧ bytes2297.length=54 := by core033_kernel_decide
def op2298 : List WordIR.Op := [.badd 2386 2393]
def bytes2298 : Bytes := ("    let r0000095a: u32 = r00000952.wrapping_add(r00000959);\n" : String).toByteArray.data.toList
theorem checked2298 : bytes2298=statementBytes 2394 (op2298.map lower) ∧ bytes2298.length=60 := by core033_kernel_decide
def op2299 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2299 : Bytes := ("    let r0000095b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2299 : bytes2299=statementBytes 2395 (op2299.map lower) ∧ bytes2299.length=41 := by core033_kernel_decide
def op2300 : List WordIR.Op := [.bnot 2395]
def bytes2300 : Bytes := ("    let r0000095c: u32 = !r0000095b;\n" : String).toByteArray.data.toList
theorem checked2300 : bytes2300=statementBytes 2396 (op2300.map lower) ∧ bytes2300.length=37 := by core033_kernel_decide
def op2301 : List WordIR.Op := [.bxor 2394 2396]
def bytes2301 : Bytes := ("    let r0000095d: u32 = r0000095a ^ r0000095c;\n" : String).toByteArray.data.toList
theorem checked2301 : bytes2301=statementBytes 2397 (op2301.map lower) ∧ bytes2301.length=48 := by core033_kernel_decide
def op2302 : List WordIR.Op := [.badd 1495 1615]
def bytes2302 : Bytes := ("    let r0000095e: u32 = r000005d7.wrapping_add(r0000064f);\n" : String).toByteArray.data.toList
theorem checked2302 : bytes2302=statementBytes 2398 (op2302.map lower) ∧ bytes2302.length=60 := by core033_kernel_decide
def op2303 : List WordIR.Op := [.band 1485 1605]
def bytes2303 : Bytes := ("    let r0000095f: u32 = r000005cd & r00000645;\n" : String).toByteArray.data.toList
theorem checked2303 : bytes2303=statementBytes 2399 (op2303.map lower) ∧ bytes2303.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2240,op2241,op2242,op2243,op2244,op2245,op2246,op2247,op2248,op2249,op2250,op2251,op2252,op2253,op2254,op2255,op2256,op2257,op2258,op2259,op2260,op2261,op2262,op2263,op2264,op2265,op2266,op2267,op2268,op2269,op2270,op2271,op2272,op2273,op2274,op2275,op2276,op2277,op2278,op2279,op2280,op2281,op2282,op2283,op2284,op2285,op2286,op2287,op2288,op2289,op2290,op2291,op2292,op2293,op2294,op2295,op2296,op2297,op2298,op2299,op2300,op2301,op2302,op2303]
def chunks : List Bytes := [bytes2240,bytes2241,bytes2242,bytes2243,bytes2244,bytes2245,bytes2246,bytes2247,bytes2248,bytes2249,bytes2250,bytes2251,bytes2252,bytes2253,bytes2254,bytes2255,bytes2256,bytes2257,bytes2258,bytes2259,bytes2260,bytes2261,bytes2262,bytes2263,bytes2264,bytes2265,bytes2266,bytes2267,bytes2268,bytes2269,bytes2270,bytes2271,bytes2272,bytes2273,bytes2274,bytes2275,bytes2276,bytes2277,bytes2278,bytes2279,bytes2280,bytes2281,bytes2282,bytes2283,bytes2284,bytes2285,bytes2286,bytes2287,bytes2288,bytes2289,bytes2290,bytes2291,bytes2292,bytes2293,bytes2294,bytes2295,bytes2296,bytes2297,bytes2298,bytes2299,bytes2300,bytes2301,bytes2302,bytes2303]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2336 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2240.1 (.cons _ _ _ _ _ checked2241.1 (.cons _ _ _ _ _ checked2242.1 (.cons _ _ _ _ _ checked2243.1 (.cons _ _ _ _ _ checked2244.1 (.cons _ _ _ _ _ checked2245.1 (.cons _ _ _ _ _ checked2246.1 (.cons _ _ _ _ _ checked2247.1 (.cons _ _ _ _ _ checked2248.1 (.cons _ _ _ _ _ checked2249.1 (.cons _ _ _ _ _ checked2250.1 (.cons _ _ _ _ _ checked2251.1 (.cons _ _ _ _ _ checked2252.1 (.cons _ _ _ _ _ checked2253.1 (.cons _ _ _ _ _ checked2254.1 (.cons _ _ _ _ _ checked2255.1 (.cons _ _ _ _ _ checked2256.1 (.cons _ _ _ _ _ checked2257.1 (.cons _ _ _ _ _ checked2258.1 (.cons _ _ _ _ _ checked2259.1 (.cons _ _ _ _ _ checked2260.1 (.cons _ _ _ _ _ checked2261.1 (.cons _ _ _ _ _ checked2262.1 (.cons _ _ _ _ _ checked2263.1 (.cons _ _ _ _ _ checked2264.1 (.cons _ _ _ _ _ checked2265.1 (.cons _ _ _ _ _ checked2266.1 (.cons _ _ _ _ _ checked2267.1 (.cons _ _ _ _ _ checked2268.1 (.cons _ _ _ _ _ checked2269.1 (.cons _ _ _ _ _ checked2270.1 (.cons _ _ _ _ _ checked2271.1 (.cons _ _ _ _ _ checked2272.1 (.cons _ _ _ _ _ checked2273.1 (.cons _ _ _ _ _ checked2274.1 (.cons _ _ _ _ _ checked2275.1 (.cons _ _ _ _ _ checked2276.1 (.cons _ _ _ _ _ checked2277.1 (.cons _ _ _ _ _ checked2278.1 (.cons _ _ _ _ _ checked2279.1 (.cons _ _ _ _ _ checked2280.1 (.cons _ _ _ _ _ checked2281.1 (.cons _ _ _ _ _ checked2282.1 (.cons _ _ _ _ _ checked2283.1 (.cons _ _ _ _ _ checked2284.1 (.cons _ _ _ _ _ checked2285.1 (.cons _ _ _ _ _ checked2286.1 (.cons _ _ _ _ _ checked2287.1 (.cons _ _ _ _ _ checked2288.1 (.cons _ _ _ _ _ checked2289.1 (.cons _ _ _ _ _ checked2290.1 (.cons _ _ _ _ _ checked2291.1 (.cons _ _ _ _ _ checked2292.1 (.cons _ _ _ _ _ checked2293.1 (.cons _ _ _ _ _ checked2294.1 (.cons _ _ _ _ _ checked2295.1 (.cons _ _ _ _ _ checked2296.1 (.cons _ _ _ _ _ checked2297.1 (.cons _ _ _ _ _ checked2298.1 (.cons _ _ _ _ _ checked2299.1 (.cons _ _ _ _ _ checked2300.1 (.cons _ _ _ _ _ checked2301.1 (.cons _ _ _ _ _ checked2302.1 (.cons _ _ _ _ _ checked2303.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2336 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3001 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2240.2,checked2241.2,checked2242.2,checked2243.2,checked2244.2,checked2245.2,checked2246.2,checked2247.2,checked2248.2,checked2249.2,checked2250.2,checked2251.2,checked2252.2,checked2253.2,checked2254.2,checked2255.2,checked2256.2,checked2257.2,checked2258.2,checked2259.2,checked2260.2,checked2261.2,checked2262.2,checked2263.2,checked2264.2,checked2265.2,checked2266.2,checked2267.2,checked2268.2,checked2269.2,checked2270.2,checked2271.2,checked2272.2,checked2273.2,checked2274.2,checked2275.2,checked2276.2,checked2277.2,checked2278.2,checked2279.2,checked2280.2,checked2281.2,checked2282.2,checked2283.2,checked2284.2,checked2285.2,checked2286.2,checked2287.2,checked2288.2,checked2289.2,checked2290.2,checked2291.2,checked2292.2,checked2293.2,checked2294.2,checked2295.2,checked2296.2,checked2297.2,checked2298.2,checked2299.2,checked2300.2,checked2301.2,checked2302.2,checked2303.2]
  decide
end ArtifactPairedPathRoundGroup35
