import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2304 : List WordIR.Op := [.band 2321 2294]
def bytes2304 : Bytes := ("    let r00000918: u32 = r00000911 & r000008f6;\n" : String).toByteArray.data.toList
theorem checked2304 : bytes2304=statementBytes 2328 (op2304.map lower) ∧ bytes2304.length=48 := by core033_kernel_decide
def op2305 : List WordIR.Op := [.bnot 2321]
def bytes2305 : Bytes := ("    let r00000919: u32 = !r00000911;\n" : String).toByteArray.data.toList
theorem checked2305 : bytes2305=statementBytes 2329 (op2305.map lower) ∧ bytes2305.length=37 := by core033_kernel_decide
def op2306 : List WordIR.Op := [.band 2329 2267]
def bytes2306 : Bytes := ("    let r0000091a: u32 = r00000919 & r000008db;\n" : String).toByteArray.data.toList
theorem checked2306 : bytes2306=statementBytes 2330 (op2306.map lower) ∧ bytes2306.length=48 := by core033_kernel_decide
def op2307 : List WordIR.Op := [.bxor 2328 2330]
def bytes2307 : Bytes := ("    let r0000091b: u32 = r00000918 ^ r0000091a;\n" : String).toByteArray.data.toList
theorem checked2307 : bytes2307=statementBytes 2331 (op2307.map lower) ∧ bytes2307.length=48 := by core033_kernel_decide
def op2308 : List WordIR.Op := [.badd 2327 2331]
def bytes2308 : Bytes := ("    let r0000091c: u32 = r00000917.wrapping_add(r0000091b);\n" : String).toByteArray.data.toList
theorem checked2308 : bytes2308=statementBytes 2332 (op2308.map lower) ∧ bytes2308.length=60 := by core033_kernel_decide
def op2309 : List WordIR.Op := [.literal (BitVec.ofNat 32 3204031479)]
def bytes2309 : Bytes := ("    let r0000091d: u32 = 0xbef9a3f7_u32;\n" : String).toByteArray.data.toList
theorem checked2309 : bytes2309=statementBytes 2333 (op2309.map lower) ∧ bytes2309.length=41 := by core033_kernel_decide
def op2310 : List WordIR.Op := [.badd 2332 2333]
def bytes2310 : Bytes := ("    let r0000091e: u32 = r0000091c.wrapping_add(r0000091d);\n" : String).toByteArray.data.toList
theorem checked2310 : bytes2310=statementBytes 2334 (op2310.map lower) ∧ bytes2310.length=60 := by core033_kernel_decide
def op2311 : List WordIR.Op := [.badd 2334 634]
def bytes2311 : Bytes := ("    let r0000091f: u32 = r0000091e.wrapping_add(r0000027a);\n" : String).toByteArray.data.toList
theorem checked2311 : bytes2311=statementBytes 2335 (op2311.map lower) ∧ bytes2311.length=60 := by core033_kernel_decide
def op2312 : List WordIR.Op := [.rotr 2320 2]
def bytes2312 : Bytes := ("    let r00000920: u32 = r00000910.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2312 : bytes2312=statementBytes 2336 (op2312.map lower) ∧ bytes2312.length=65 := by core033_kernel_decide
def op2313 : List WordIR.Op := [.rotr 2320 13]
def bytes2313 : Bytes := ("    let r00000921: u32 = r00000910.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2313 : bytes2313=statementBytes 2337 (op2313.map lower) ∧ bytes2313.length=65 := by core033_kernel_decide
def op2314 : List WordIR.Op := [.bxor 2336 2337]
def bytes2314 : Bytes := ("    let r00000922: u32 = r00000920 ^ r00000921;\n" : String).toByteArray.data.toList
theorem checked2314 : bytes2314=statementBytes 2338 (op2314.map lower) ∧ bytes2314.length=48 := by core033_kernel_decide
def op2315 : List WordIR.Op := [.rotr 2320 22]
def bytes2315 : Bytes := ("    let r00000923: u32 = r00000910.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2315 : bytes2315=statementBytes 2339 (op2315.map lower) ∧ bytes2315.length=65 := by core033_kernel_decide
def op2316 : List WordIR.Op := [.bxor 2338 2339]
def bytes2316 : Bytes := ("    let r00000924: u32 = r00000922 ^ r00000923;\n" : String).toByteArray.data.toList
theorem checked2316 : bytes2316=statementBytes 2340 (op2316.map lower) ∧ bytes2316.length=48 := by core033_kernel_decide
def op2317 : List WordIR.Op := [.band 2320 2293]
def bytes2317 : Bytes := ("    let r00000925: u32 = r00000910 & r000008f5;\n" : String).toByteArray.data.toList
theorem checked2317 : bytes2317=statementBytes 2341 (op2317.map lower) ∧ bytes2317.length=48 := by core033_kernel_decide
def op2318 : List WordIR.Op := [.band 2320 2266]
def bytes2318 : Bytes := ("    let r00000926: u32 = r00000910 & r000008da;\n" : String).toByteArray.data.toList
theorem checked2318 : bytes2318=statementBytes 2342 (op2318.map lower) ∧ bytes2318.length=48 := by core033_kernel_decide
def op2319 : List WordIR.Op := [.bxor 2341 2342]
def bytes2319 : Bytes := ("    let r00000927: u32 = r00000925 ^ r00000926;\n" : String).toByteArray.data.toList
theorem checked2319 : bytes2319=statementBytes 2343 (op2319.map lower) ∧ bytes2319.length=48 := by core033_kernel_decide
def op2320 : List WordIR.Op := [.band 2293 2266]
def bytes2320 : Bytes := ("    let r00000928: u32 = r000008f5 & r000008da;\n" : String).toByteArray.data.toList
theorem checked2320 : bytes2320=statementBytes 2344 (op2320.map lower) ∧ bytes2320.length=48 := by core033_kernel_decide
def op2321 : List WordIR.Op := [.bxor 2343 2344]
def bytes2321 : Bytes := ("    let r00000929: u32 = r00000927 ^ r00000928;\n" : String).toByteArray.data.toList
theorem checked2321 : bytes2321=statementBytes 2345 (op2321.map lower) ∧ bytes2321.length=48 := by core033_kernel_decide
def op2322 : List WordIR.Op := [.badd 2340 2345]
def bytes2322 : Bytes := ("    let r0000092a: u32 = r00000924.wrapping_add(r00000929);\n" : String).toByteArray.data.toList
theorem checked2322 : bytes2322=statementBytes 2346 (op2322.map lower) ∧ bytes2322.length=60 := by core033_kernel_decide
def op2323 : List WordIR.Op := [.badd 2335 2346]
def bytes2323 : Bytes := ("    let r0000092b: u32 = r0000091f.wrapping_add(r0000092a);\n" : String).toByteArray.data.toList
theorem checked2323 : bytes2323=statementBytes 2347 (op2323.map lower) ∧ bytes2323.length=60 := by core033_kernel_decide
def op2324 : List WordIR.Op := [.badd 2239 2335]
def bytes2324 : Bytes := ("    let r0000092c: u32 = r000008bf.wrapping_add(r0000091f);\n" : String).toByteArray.data.toList
theorem checked2324 : bytes2324=statementBytes 2348 (op2324.map lower) ∧ bytes2324.length=60 := by core033_kernel_decide
def op2325 : List WordIR.Op := [.rotr 2348 6]
def bytes2325 : Bytes := ("    let r0000092d: u32 = r0000092c.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2325 : bytes2325=statementBytes 2349 (op2325.map lower) ∧ bytes2325.length=65 := by core033_kernel_decide
def op2326 : List WordIR.Op := [.rotr 2348 11]
def bytes2326 : Bytes := ("    let r0000092e: u32 = r0000092c.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2326 : bytes2326=statementBytes 2350 (op2326.map lower) ∧ bytes2326.length=65 := by core033_kernel_decide
def op2327 : List WordIR.Op := [.bxor 2349 2350]
def bytes2327 : Bytes := ("    let r0000092f: u32 = r0000092d ^ r0000092e;\n" : String).toByteArray.data.toList
theorem checked2327 : bytes2327=statementBytes 2351 (op2327.map lower) ∧ bytes2327.length=48 := by core033_kernel_decide
def op2328 : List WordIR.Op := [.rotr 2348 25]
def bytes2328 : Bytes := ("    let r00000930: u32 = r0000092c.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2328 : bytes2328=statementBytes 2352 (op2328.map lower) ∧ bytes2328.length=65 := by core033_kernel_decide
def op2329 : List WordIR.Op := [.bxor 2351 2352]
def bytes2329 : Bytes := ("    let r00000931: u32 = r0000092f ^ r00000930;\n" : String).toByteArray.data.toList
theorem checked2329 : bytes2329=statementBytes 2353 (op2329.map lower) ∧ bytes2329.length=48 := by core033_kernel_decide
def op2330 : List WordIR.Op := [.badd 2267 2353]
def bytes2330 : Bytes := ("    let r00000932: u32 = r000008db.wrapping_add(r00000931);\n" : String).toByteArray.data.toList
theorem checked2330 : bytes2330=statementBytes 2354 (op2330.map lower) ∧ bytes2330.length=60 := by core033_kernel_decide
def op2331 : List WordIR.Op := [.band 2348 2321]
def bytes2331 : Bytes := ("    let r00000933: u32 = r0000092c & r00000911;\n" : String).toByteArray.data.toList
theorem checked2331 : bytes2331=statementBytes 2355 (op2331.map lower) ∧ bytes2331.length=48 := by core033_kernel_decide
def op2332 : List WordIR.Op := [.bnot 2348]
def bytes2332 : Bytes := ("    let r00000934: u32 = !r0000092c;\n" : String).toByteArray.data.toList
theorem checked2332 : bytes2332=statementBytes 2356 (op2332.map lower) ∧ bytes2332.length=37 := by core033_kernel_decide
def op2333 : List WordIR.Op := [.band 2356 2294]
def bytes2333 : Bytes := ("    let r00000935: u32 = r00000934 & r000008f6;\n" : String).toByteArray.data.toList
theorem checked2333 : bytes2333=statementBytes 2357 (op2333.map lower) ∧ bytes2333.length=48 := by core033_kernel_decide
def op2334 : List WordIR.Op := [.bxor 2355 2357]
def bytes2334 : Bytes := ("    let r00000936: u32 = r00000933 ^ r00000935;\n" : String).toByteArray.data.toList
theorem checked2334 : bytes2334=statementBytes 2358 (op2334.map lower) ∧ bytes2334.length=48 := by core033_kernel_decide
def op2335 : List WordIR.Op := [.badd 2354 2358]
def bytes2335 : Bytes := ("    let r00000937: u32 = r00000932.wrapping_add(r00000936);\n" : String).toByteArray.data.toList
theorem checked2335 : bytes2335=statementBytes 2359 (op2335.map lower) ∧ bytes2335.length=60 := by core033_kernel_decide
def op2336 : List WordIR.Op := [.literal (BitVec.ofNat 32 3329325298)]
def bytes2336 : Bytes := ("    let r00000938: u32 = 0xc67178f2_u32;\n" : String).toByteArray.data.toList
theorem checked2336 : bytes2336=statementBytes 2360 (op2336.map lower) ∧ bytes2336.length=41 := by core033_kernel_decide
def op2337 : List WordIR.Op := [.badd 2359 2360]
def bytes2337 : Bytes := ("    let r00000939: u32 = r00000937.wrapping_add(r00000938);\n" : String).toByteArray.data.toList
theorem checked2337 : bytes2337=statementBytes 2361 (op2337.map lower) ∧ bytes2337.length=60 := by core033_kernel_decide
def op2338 : List WordIR.Op := [.badd 2361 647]
def bytes2338 : Bytes := ("    let r0000093a: u32 = r00000939.wrapping_add(r00000287);\n" : String).toByteArray.data.toList
theorem checked2338 : bytes2338=statementBytes 2362 (op2338.map lower) ∧ bytes2338.length=60 := by core033_kernel_decide
def op2339 : List WordIR.Op := [.rotr 2347 2]
def bytes2339 : Bytes := ("    let r0000093b: u32 = r0000092b.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2339 : bytes2339=statementBytes 2363 (op2339.map lower) ∧ bytes2339.length=65 := by core033_kernel_decide
def op2340 : List WordIR.Op := [.rotr 2347 13]
def bytes2340 : Bytes := ("    let r0000093c: u32 = r0000092b.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2340 : bytes2340=statementBytes 2364 (op2340.map lower) ∧ bytes2340.length=65 := by core033_kernel_decide
def op2341 : List WordIR.Op := [.bxor 2363 2364]
def bytes2341 : Bytes := ("    let r0000093d: u32 = r0000093b ^ r0000093c;\n" : String).toByteArray.data.toList
theorem checked2341 : bytes2341=statementBytes 2365 (op2341.map lower) ∧ bytes2341.length=48 := by core033_kernel_decide
def op2342 : List WordIR.Op := [.rotr 2347 22]
def bytes2342 : Bytes := ("    let r0000093e: u32 = r0000092b.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2342 : bytes2342=statementBytes 2366 (op2342.map lower) ∧ bytes2342.length=65 := by core033_kernel_decide
def op2343 : List WordIR.Op := [.bxor 2365 2366]
def bytes2343 : Bytes := ("    let r0000093f: u32 = r0000093d ^ r0000093e;\n" : String).toByteArray.data.toList
theorem checked2343 : bytes2343=statementBytes 2367 (op2343.map lower) ∧ bytes2343.length=48 := by core033_kernel_decide
def op2344 : List WordIR.Op := [.band 2347 2320]
def bytes2344 : Bytes := ("    let r00000940: u32 = r0000092b & r00000910;\n" : String).toByteArray.data.toList
theorem checked2344 : bytes2344=statementBytes 2368 (op2344.map lower) ∧ bytes2344.length=48 := by core033_kernel_decide
def op2345 : List WordIR.Op := [.band 2347 2293]
def bytes2345 : Bytes := ("    let r00000941: u32 = r0000092b & r000008f5;\n" : String).toByteArray.data.toList
theorem checked2345 : bytes2345=statementBytes 2369 (op2345.map lower) ∧ bytes2345.length=48 := by core033_kernel_decide
def op2346 : List WordIR.Op := [.bxor 2368 2369]
def bytes2346 : Bytes := ("    let r00000942: u32 = r00000940 ^ r00000941;\n" : String).toByteArray.data.toList
theorem checked2346 : bytes2346=statementBytes 2370 (op2346.map lower) ∧ bytes2346.length=48 := by core033_kernel_decide
def op2347 : List WordIR.Op := [.band 2320 2293]
def bytes2347 : Bytes := ("    let r00000943: u32 = r00000910 & r000008f5;\n" : String).toByteArray.data.toList
theorem checked2347 : bytes2347=statementBytes 2371 (op2347.map lower) ∧ bytes2347.length=48 := by core033_kernel_decide
def op2348 : List WordIR.Op := [.bxor 2370 2371]
def bytes2348 : Bytes := ("    let r00000944: u32 = r00000942 ^ r00000943;\n" : String).toByteArray.data.toList
theorem checked2348 : bytes2348=statementBytes 2372 (op2348.map lower) ∧ bytes2348.length=48 := by core033_kernel_decide
def op2349 : List WordIR.Op := [.badd 2367 2372]
def bytes2349 : Bytes := ("    let r00000945: u32 = r0000093f.wrapping_add(r00000944);\n" : String).toByteArray.data.toList
theorem checked2349 : bytes2349=statementBytes 2373 (op2349.map lower) ∧ bytes2349.length=60 := by core033_kernel_decide
def op2350 : List WordIR.Op := [.badd 2362 2373]
def bytes2350 : Bytes := ("    let r00000946: u32 = r0000093a.wrapping_add(r00000945);\n" : String).toByteArray.data.toList
theorem checked2350 : bytes2350=statementBytes 2374 (op2350.map lower) ∧ bytes2350.length=60 := by core033_kernel_decide
def op2351 : List WordIR.Op := [.badd 2266 2362]
def bytes2351 : Bytes := ("    let r00000947: u32 = r000008da.wrapping_add(r0000093a);\n" : String).toByteArray.data.toList
theorem checked2351 : bytes2351=statementBytes 2375 (op2351.map lower) ∧ bytes2351.length=60 := by core033_kernel_decide
def op2352 : List WordIR.Op := [.badd 0 2374]
def bytes2352 : Bytes := ("    let r00000948: u32 = r00000000.wrapping_add(r00000946);\n" : String).toByteArray.data.toList
theorem checked2352 : bytes2352=statementBytes 2376 (op2352.map lower) ∧ bytes2352.length=60 := by core033_kernel_decide
def op2353 : List WordIR.Op := [.badd 1 2347]
def bytes2353 : Bytes := ("    let r00000949: u32 = r00000001.wrapping_add(r0000092b);\n" : String).toByteArray.data.toList
theorem checked2353 : bytes2353=statementBytes 2377 (op2353.map lower) ∧ bytes2353.length=60 := by core033_kernel_decide
def op2354 : List WordIR.Op := [.badd 2 2320]
def bytes2354 : Bytes := ("    let r0000094a: u32 = r00000002.wrapping_add(r00000910);\n" : String).toByteArray.data.toList
theorem checked2354 : bytes2354=statementBytes 2378 (op2354.map lower) ∧ bytes2354.length=60 := by core033_kernel_decide
def op2355 : List WordIR.Op := [.badd 3 2293]
def bytes2355 : Bytes := ("    let r0000094b: u32 = r00000003.wrapping_add(r000008f5);\n" : String).toByteArray.data.toList
theorem checked2355 : bytes2355=statementBytes 2379 (op2355.map lower) ∧ bytes2355.length=60 := by core033_kernel_decide
def op2356 : List WordIR.Op := [.badd 4 2375]
def bytes2356 : Bytes := ("    let r0000094c: u32 = r00000004.wrapping_add(r00000947);\n" : String).toByteArray.data.toList
theorem checked2356 : bytes2356=statementBytes 2380 (op2356.map lower) ∧ bytes2356.length=60 := by core033_kernel_decide
def op2357 : List WordIR.Op := [.badd 5 2348]
def bytes2357 : Bytes := ("    let r0000094d: u32 = r00000005.wrapping_add(r0000092c);\n" : String).toByteArray.data.toList
theorem checked2357 : bytes2357=statementBytes 2381 (op2357.map lower) ∧ bytes2357.length=60 := by core033_kernel_decide
def op2358 : List WordIR.Op := [.badd 6 2321]
def bytes2358 : Bytes := ("    let r0000094e: u32 = r00000006.wrapping_add(r00000911);\n" : String).toByteArray.data.toList
theorem checked2358 : bytes2358=statementBytes 2382 (op2358.map lower) ∧ bytes2358.length=60 := by core033_kernel_decide
def op2359 : List WordIR.Op := [.badd 7 2294]
def bytes2359 : Bytes := ("    let r0000094f: u32 = r00000007.wrapping_add(r000008f6);\n" : String).toByteArray.data.toList
theorem checked2359 : bytes2359=statementBytes 2383 (op2359.map lower) ∧ bytes2359.length=60 := by core033_kernel_decide
def innerBlocks36 : List (List WordIR.Op) := [op2304,op2305,op2306,op2307,op2308,op2309,op2310,op2311,op2312,op2313,op2314,op2315,op2316,op2317,op2318,op2319,op2320,op2321,op2322,op2323,op2324,op2325,op2326,op2327,op2328,op2329,op2330,op2331,op2332,op2333,op2334,op2335,op2336,op2337,op2338,op2339,op2340,op2341,op2342,op2343,op2344,op2345,op2346,op2347,op2348,op2349,op2350,op2351,op2352,op2353,op2354,op2355,op2356,op2357,op2358,op2359]
def innerBytes36 : List Bytes := [bytes2304,bytes2305,bytes2306,bytes2307,bytes2308,bytes2309,bytes2310,bytes2311,bytes2312,bytes2313,bytes2314,bytes2315,bytes2316,bytes2317,bytes2318,bytes2319,bytes2320,bytes2321,bytes2322,bytes2323,bytes2324,bytes2325,bytes2326,bytes2327,bytes2328,bytes2329,bytes2330,bytes2331,bytes2332,bytes2333,bytes2334,bytes2335,bytes2336,bytes2337,bytes2338,bytes2339,bytes2340,bytes2341,bytes2342,bytes2343,bytes2344,bytes2345,bytes2346,bytes2347,bytes2348,bytes2349,bytes2350,bytes2351,bytes2352,bytes2353,bytes2354,bytes2355,bytes2356,bytes2357,bytes2358,bytes2359]
def partOps36 : List WordIR.Op := innerBlocks36.flatten
def partBytes36 : Bytes := innerBytes36.flatten
theorem partChain36 : BlockChain 2328 innerBlocks36 innerBytes36 := by
  unfold innerBlocks36 innerBytes36
  exact (.cons _ _ _ _ _ checked2304.1 (.cons _ _ _ _ _ checked2305.1 (.cons _ _ _ _ _ checked2306.1 (.cons _ _ _ _ _ checked2307.1 (.cons _ _ _ _ _ checked2308.1 (.cons _ _ _ _ _ checked2309.1 (.cons _ _ _ _ _ checked2310.1 (.cons _ _ _ _ _ checked2311.1 (.cons _ _ _ _ _ checked2312.1 (.cons _ _ _ _ _ checked2313.1 (.cons _ _ _ _ _ checked2314.1 (.cons _ _ _ _ _ checked2315.1 (.cons _ _ _ _ _ checked2316.1 (.cons _ _ _ _ _ checked2317.1 (.cons _ _ _ _ _ checked2318.1 (.cons _ _ _ _ _ checked2319.1 (.cons _ _ _ _ _ checked2320.1 (.cons _ _ _ _ _ checked2321.1 (.cons _ _ _ _ _ checked2322.1 (.cons _ _ _ _ _ checked2323.1 (.cons _ _ _ _ _ checked2324.1 (.cons _ _ _ _ _ checked2325.1 (.cons _ _ _ _ _ checked2326.1 (.cons _ _ _ _ _ checked2327.1 (.cons _ _ _ _ _ checked2328.1 (.cons _ _ _ _ _ checked2329.1 (.cons _ _ _ _ _ checked2330.1 (.cons _ _ _ _ _ checked2331.1 (.cons _ _ _ _ _ checked2332.1 (.cons _ _ _ _ _ checked2333.1 (.cons _ _ _ _ _ checked2334.1 (.cons _ _ _ _ _ checked2335.1 (.cons _ _ _ _ _ checked2336.1 (.cons _ _ _ _ _ checked2337.1 (.cons _ _ _ _ _ checked2338.1 (.cons _ _ _ _ _ checked2339.1 (.cons _ _ _ _ _ checked2340.1 (.cons _ _ _ _ _ checked2341.1 (.cons _ _ _ _ _ checked2342.1 (.cons _ _ _ _ _ checked2343.1 (.cons _ _ _ _ _ checked2344.1 (.cons _ _ _ _ _ checked2345.1 (.cons _ _ _ _ _ checked2346.1 (.cons _ _ _ _ _ checked2347.1 (.cons _ _ _ _ _ checked2348.1 (.cons _ _ _ _ _ checked2349.1 (.cons _ _ _ _ _ checked2350.1 (.cons _ _ _ _ _ checked2351.1 (.cons _ _ _ _ _ checked2352.1 (.cons _ _ _ _ _ checked2353.1 (.cons _ _ _ _ _ checked2354.1 (.cons _ _ _ _ _ checked2355.1 (.cons _ _ _ _ _ checked2356.1 (.cons _ _ _ _ _ checked2357.1 (.cons _ _ _ _ _ checked2358.1 (.cons _ _ _ _ _ checked2359.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked36 : partBytes36=statementBytes 2328 (partOps36.map lower) ∧ partBytes36.length=3057 := by
  constructor
  · exact (chain_exact partChain36).trans (body_exact innerBlocks36 2328)
  · simp only [partBytes36,WordSource.chunk_sizes_exact,innerBytes36,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2304.2,checked2305.2,checked2306.2,checked2307.2,checked2308.2,checked2309.2,checked2310.2,checked2311.2,checked2312.2,checked2313.2,checked2314.2,checked2315.2,checked2316.2,checked2317.2,checked2318.2,checked2319.2,checked2320.2,checked2321.2,checked2322.2,checked2323.2,checked2324.2,checked2325.2,checked2326.2,checked2327.2,checked2328.2,checked2329.2,checked2330.2,checked2331.2,checked2332.2,checked2333.2,checked2334.2,checked2335.2,checked2336.2,checked2337.2,checked2338.2,checked2339.2,checked2340.2,checked2341.2,checked2342.2,checked2343.2,checked2344.2,checked2345.2,checked2346.2,checked2347.2,checked2348.2,checked2349.2,checked2350.2,checked2351.2,checked2352.2,checked2353.2,checked2354.2,checked2355.2,checked2356.2,checked2357.2,checked2358.2,checked2359.2]
theorem partLength36 : partOps36.length=56 := by
  simp only [partOps36,innerBlocks36,op2304,op2305,op2306,op2307,op2308,op2309,op2310,op2311,op2312,op2313,op2314,op2315,op2316,op2317,op2318,op2319,op2320,op2321,op2322,op2323,op2324,op2325,op2326,op2327,op2328,op2329,op2330,op2331,op2332,op2333,op2334,op2335,op2336,op2337,op2338,op2339,op2340,op2341,op2342,op2343,op2344,op2345,op2346,op2347,op2348,op2349,op2350,op2351,op2352,op2353,op2354,op2355,op2356,op2357,op2358,op2359,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
