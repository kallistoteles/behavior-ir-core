import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup36
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2304 : List WordIR.Op := [.literal (BitVec.ofNat 32 2870763221)]
def bytes2304 : Bytes := ("    let r0000092b: u32 = 0xab1c5ed5_u32;\n" : String).toByteArray.data.toList
theorem checked2304 : bytes2304=statementBytes 2347 (op2304.map lower) ∧ bytes2304.length=41 := by core033_kernel_decide
def op2305 : List WordIR.Op := [.badd 2346 2347]
def bytes2305 : Bytes := ("    let r0000092c: u32 = r0000092a.wrapping_add(r0000092b);\n" : String).toByteArray.data.toList
theorem checked2305 : bytes2305=statementBytes 2348 (op2305.map lower) ∧ bytes2305.length=60 := by core033_kernel_decide
def op2306 : List WordIR.Op := [.badd 2348 904]
def bytes2306 : Bytes := ("    let r0000092d: u32 = r0000092c.wrapping_add(r00000388);\n" : String).toByteArray.data.toList
theorem checked2306 : bytes2306=statementBytes 2349 (op2306.map lower) ∧ bytes2306.length=60 := by core033_kernel_decide
def op2307 : List WordIR.Op := [.rotr 2334 2]
def bytes2307 : Bytes := ("    let r0000092e: u32 = r0000091e.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2307 : bytes2307=statementBytes 2350 (op2307.map lower) ∧ bytes2307.length=65 := by core033_kernel_decide
def op2308 : List WordIR.Op := [.rotr 2334 13]
def bytes2308 : Bytes := ("    let r0000092f: u32 = r0000091e.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2308 : bytes2308=statementBytes 2351 (op2308.map lower) ∧ bytes2308.length=65 := by core033_kernel_decide
def op2309 : List WordIR.Op := [.bxor 2350 2351]
def bytes2309 : Bytes := ("    let r00000930: u32 = r0000092e ^ r0000092f;\n" : String).toByteArray.data.toList
theorem checked2309 : bytes2309=statementBytes 2352 (op2309.map lower) ∧ bytes2309.length=48 := by core033_kernel_decide
def op2310 : List WordIR.Op := [.rotr 2334 22]
def bytes2310 : Bytes := ("    let r00000931: u32 = r0000091e.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2310 : bytes2310=statementBytes 2353 (op2310.map lower) ∧ bytes2310.length=65 := by core033_kernel_decide
def op2311 : List WordIR.Op := [.bxor 2352 2353]
def bytes2311 : Bytes := ("    let r00000932: u32 = r00000930 ^ r00000931;\n" : String).toByteArray.data.toList
theorem checked2311 : bytes2311=statementBytes 2354 (op2311.map lower) ∧ bytes2311.length=48 := by core033_kernel_decide
def op2312 : List WordIR.Op := [.band 2334 2308]
def bytes2312 : Bytes := ("    let r00000933: u32 = r0000091e & r00000904;\n" : String).toByteArray.data.toList
theorem checked2312 : bytes2312=statementBytes 2355 (op2312.map lower) ∧ bytes2312.length=48 := by core033_kernel_decide
def op2313 : List WordIR.Op := [.band 2334 2282]
def bytes2313 : Bytes := ("    let r00000934: u32 = r0000091e & r000008ea;\n" : String).toByteArray.data.toList
theorem checked2313 : bytes2313=statementBytes 2356 (op2313.map lower) ∧ bytes2313.length=48 := by core033_kernel_decide
def op2314 : List WordIR.Op := [.bxor 2355 2356]
def bytes2314 : Bytes := ("    let r00000935: u32 = r00000933 ^ r00000934;\n" : String).toByteArray.data.toList
theorem checked2314 : bytes2314=statementBytes 2357 (op2314.map lower) ∧ bytes2314.length=48 := by core033_kernel_decide
def op2315 : List WordIR.Op := [.bxor 2357 2329]
def bytes2315 : Bytes := ("    let r00000936: u32 = r00000935 ^ r00000919;\n" : String).toByteArray.data.toList
theorem checked2315 : bytes2315=statementBytes 2358 (op2315.map lower) ∧ bytes2315.length=48 := by core033_kernel_decide
def op2316 : List WordIR.Op := [.badd 2354 2358]
def bytes2316 : Bytes := ("    let r00000937: u32 = r00000932.wrapping_add(r00000936);\n" : String).toByteArray.data.toList
theorem checked2316 : bytes2316=statementBytes 2359 (op2316.map lower) ∧ bytes2316.length=60 := by core033_kernel_decide
def op2317 : List WordIR.Op := [.badd 2349 2359]
def bytes2317 : Bytes := ("    let r00000938: u32 = r0000092d.wrapping_add(r00000937);\n" : String).toByteArray.data.toList
theorem checked2317 : bytes2317=statementBytes 2360 (op2317.map lower) ∧ bytes2317.length=60 := by core033_kernel_decide
def op2318 : List WordIR.Op := [.badd 2256 2349]
def bytes2318 : Bytes := ("    let r00000939: u32 = r000008d0.wrapping_add(r0000092d);\n" : String).toByteArray.data.toList
theorem checked2318 : bytes2318=statementBytes 2361 (op2318.map lower) ∧ bytes2318.length=60 := by core033_kernel_decide
def op2319 : List WordIR.Op := [.rotr 2361 6]
def bytes2319 : Bytes := ("    let r0000093a: u32 = r00000939.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2319 : bytes2319=statementBytes 2362 (op2319.map lower) ∧ bytes2319.length=65 := by core033_kernel_decide
def op2320 : List WordIR.Op := [.rotr 2361 11]
def bytes2320 : Bytes := ("    let r0000093b: u32 = r00000939.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2320 : bytes2320=statementBytes 2363 (op2320.map lower) ∧ bytes2320.length=65 := by core033_kernel_decide
def op2321 : List WordIR.Op := [.bxor 2362 2363]
def bytes2321 : Bytes := ("    let r0000093c: u32 = r0000093a ^ r0000093b;\n" : String).toByteArray.data.toList
theorem checked2321 : bytes2321=statementBytes 2364 (op2321.map lower) ∧ bytes2321.length=48 := by core033_kernel_decide
def op2322 : List WordIR.Op := [.rotr 2361 25]
def bytes2322 : Bytes := ("    let r0000093d: u32 = r00000939.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2322 : bytes2322=statementBytes 2365 (op2322.map lower) ∧ bytes2322.length=65 := by core033_kernel_decide
def op2323 : List WordIR.Op := [.bxor 2364 2365]
def bytes2323 : Bytes := ("    let r0000093e: u32 = r0000093c ^ r0000093d;\n" : String).toByteArray.data.toList
theorem checked2323 : bytes2323=statementBytes 2366 (op2323.map lower) ∧ bytes2323.length=48 := by core033_kernel_decide
def op2324 : List WordIR.Op := [.badd 2283 2366]
def bytes2324 : Bytes := ("    let r0000093f: u32 = r000008eb.wrapping_add(r0000093e);\n" : String).toByteArray.data.toList
theorem checked2324 : bytes2324=statementBytes 2367 (op2324.map lower) ∧ bytes2324.length=60 := by core033_kernel_decide
def op2325 : List WordIR.Op := [.band 2361 2335]
def bytes2325 : Bytes := ("    let r00000940: u32 = r00000939 & r0000091f;\n" : String).toByteArray.data.toList
theorem checked2325 : bytes2325=statementBytes 2368 (op2325.map lower) ∧ bytes2325.length=48 := by core033_kernel_decide
def op2326 : List WordIR.Op := [.bnot 2361]
def bytes2326 : Bytes := ("    let r00000941: u32 = !r00000939;\n" : String).toByteArray.data.toList
theorem checked2326 : bytes2326=statementBytes 2369 (op2326.map lower) ∧ bytes2326.length=37 := by core033_kernel_decide
def op2327 : List WordIR.Op := [.band 2369 2309]
def bytes2327 : Bytes := ("    let r00000942: u32 = r00000941 & r00000905;\n" : String).toByteArray.data.toList
theorem checked2327 : bytes2327=statementBytes 2370 (op2327.map lower) ∧ bytes2327.length=48 := by core033_kernel_decide
def op2328 : List WordIR.Op := [.bxor 2368 2370]
def bytes2328 : Bytes := ("    let r00000943: u32 = r00000940 ^ r00000942;\n" : String).toByteArray.data.toList
theorem checked2328 : bytes2328=statementBytes 2371 (op2328.map lower) ∧ bytes2328.length=48 := by core033_kernel_decide
def op2329 : List WordIR.Op := [.badd 2367 2371]
def bytes2329 : Bytes := ("    let r00000944: u32 = r0000093f.wrapping_add(r00000943);\n" : String).toByteArray.data.toList
theorem checked2329 : bytes2329=statementBytes 2372 (op2329.map lower) ∧ bytes2329.length=60 := by core033_kernel_decide
def op2330 : List WordIR.Op := [.literal (BitVec.ofNat 32 3624381080)]
def bytes2330 : Bytes := ("    let r00000945: u32 = 0xd807aa98_u32;\n" : String).toByteArray.data.toList
theorem checked2330 : bytes2330=statementBytes 2373 (op2330.map lower) ∧ bytes2330.length=41 := by core033_kernel_decide
def op2331 : List WordIR.Op := [.badd 2372 2373]
def bytes2331 : Bytes := ("    let r00000946: u32 = r00000944.wrapping_add(r00000945);\n" : String).toByteArray.data.toList
theorem checked2331 : bytes2331=statementBytes 2374 (op2331.map lower) ∧ bytes2331.length=60 := by core033_kernel_decide
def op2332 : List WordIR.Op := [.badd 2374 910]
def bytes2332 : Bytes := ("    let r00000947: u32 = r00000946.wrapping_add(r0000038e);\n" : String).toByteArray.data.toList
theorem checked2332 : bytes2332=statementBytes 2375 (op2332.map lower) ∧ bytes2332.length=60 := by core033_kernel_decide
def op2333 : List WordIR.Op := [.rotr 2360 2]
def bytes2333 : Bytes := ("    let r00000948: u32 = r00000938.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2333 : bytes2333=statementBytes 2376 (op2333.map lower) ∧ bytes2333.length=65 := by core033_kernel_decide
def op2334 : List WordIR.Op := [.rotr 2360 13]
def bytes2334 : Bytes := ("    let r00000949: u32 = r00000938.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2334 : bytes2334=statementBytes 2377 (op2334.map lower) ∧ bytes2334.length=65 := by core033_kernel_decide
def op2335 : List WordIR.Op := [.bxor 2376 2377]
def bytes2335 : Bytes := ("    let r0000094a: u32 = r00000948 ^ r00000949;\n" : String).toByteArray.data.toList
theorem checked2335 : bytes2335=statementBytes 2378 (op2335.map lower) ∧ bytes2335.length=48 := by core033_kernel_decide
def op2336 : List WordIR.Op := [.rotr 2360 22]
def bytes2336 : Bytes := ("    let r0000094b: u32 = r00000938.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2336 : bytes2336=statementBytes 2379 (op2336.map lower) ∧ bytes2336.length=65 := by core033_kernel_decide
def op2337 : List WordIR.Op := [.bxor 2378 2379]
def bytes2337 : Bytes := ("    let r0000094c: u32 = r0000094a ^ r0000094b;\n" : String).toByteArray.data.toList
theorem checked2337 : bytes2337=statementBytes 2380 (op2337.map lower) ∧ bytes2337.length=48 := by core033_kernel_decide
def op2338 : List WordIR.Op := [.band 2360 2334]
def bytes2338 : Bytes := ("    let r0000094d: u32 = r00000938 & r0000091e;\n" : String).toByteArray.data.toList
theorem checked2338 : bytes2338=statementBytes 2381 (op2338.map lower) ∧ bytes2338.length=48 := by core033_kernel_decide
def op2339 : List WordIR.Op := [.band 2360 2308]
def bytes2339 : Bytes := ("    let r0000094e: u32 = r00000938 & r00000904;\n" : String).toByteArray.data.toList
theorem checked2339 : bytes2339=statementBytes 2382 (op2339.map lower) ∧ bytes2339.length=48 := by core033_kernel_decide
def op2340 : List WordIR.Op := [.bxor 2381 2382]
def bytes2340 : Bytes := ("    let r0000094f: u32 = r0000094d ^ r0000094e;\n" : String).toByteArray.data.toList
theorem checked2340 : bytes2340=statementBytes 2383 (op2340.map lower) ∧ bytes2340.length=48 := by core033_kernel_decide
def op2341 : List WordIR.Op := [.bxor 2383 2355]
def bytes2341 : Bytes := ("    let r00000950: u32 = r0000094f ^ r00000933;\n" : String).toByteArray.data.toList
theorem checked2341 : bytes2341=statementBytes 2384 (op2341.map lower) ∧ bytes2341.length=48 := by core033_kernel_decide
def op2342 : List WordIR.Op := [.badd 2380 2384]
def bytes2342 : Bytes := ("    let r00000951: u32 = r0000094c.wrapping_add(r00000950);\n" : String).toByteArray.data.toList
theorem checked2342 : bytes2342=statementBytes 2385 (op2342.map lower) ∧ bytes2342.length=60 := by core033_kernel_decide
def op2343 : List WordIR.Op := [.badd 2375 2385]
def bytes2343 : Bytes := ("    let r00000952: u32 = r00000947.wrapping_add(r00000951);\n" : String).toByteArray.data.toList
theorem checked2343 : bytes2343=statementBytes 2386 (op2343.map lower) ∧ bytes2343.length=60 := by core033_kernel_decide
def op2344 : List WordIR.Op := [.badd 2282 2375]
def bytes2344 : Bytes := ("    let r00000953: u32 = r000008ea.wrapping_add(r00000947);\n" : String).toByteArray.data.toList
theorem checked2344 : bytes2344=statementBytes 2387 (op2344.map lower) ∧ bytes2344.length=60 := by core033_kernel_decide
def op2345 : List WordIR.Op := [.rotr 2387 6]
def bytes2345 : Bytes := ("    let r00000954: u32 = r00000953.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2345 : bytes2345=statementBytes 2388 (op2345.map lower) ∧ bytes2345.length=65 := by core033_kernel_decide
def op2346 : List WordIR.Op := [.rotr 2387 11]
def bytes2346 : Bytes := ("    let r00000955: u32 = r00000953.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2346 : bytes2346=statementBytes 2389 (op2346.map lower) ∧ bytes2346.length=65 := by core033_kernel_decide
def op2347 : List WordIR.Op := [.bxor 2388 2389]
def bytes2347 : Bytes := ("    let r00000956: u32 = r00000954 ^ r00000955;\n" : String).toByteArray.data.toList
theorem checked2347 : bytes2347=statementBytes 2390 (op2347.map lower) ∧ bytes2347.length=48 := by core033_kernel_decide
def op2348 : List WordIR.Op := [.rotr 2387 25]
def bytes2348 : Bytes := ("    let r00000957: u32 = r00000953.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2348 : bytes2348=statementBytes 2391 (op2348.map lower) ∧ bytes2348.length=65 := by core033_kernel_decide
def op2349 : List WordIR.Op := [.bxor 2390 2391]
def bytes2349 : Bytes := ("    let r00000958: u32 = r00000956 ^ r00000957;\n" : String).toByteArray.data.toList
theorem checked2349 : bytes2349=statementBytes 2392 (op2349.map lower) ∧ bytes2349.length=48 := by core033_kernel_decide
def op2350 : List WordIR.Op := [.badd 2309 2392]
def bytes2350 : Bytes := ("    let r00000959: u32 = r00000905.wrapping_add(r00000958);\n" : String).toByteArray.data.toList
theorem checked2350 : bytes2350=statementBytes 2393 (op2350.map lower) ∧ bytes2350.length=60 := by core033_kernel_decide
def op2351 : List WordIR.Op := [.band 2387 2361]
def bytes2351 : Bytes := ("    let r0000095a: u32 = r00000953 & r00000939;\n" : String).toByteArray.data.toList
theorem checked2351 : bytes2351=statementBytes 2394 (op2351.map lower) ∧ bytes2351.length=48 := by core033_kernel_decide
def op2352 : List WordIR.Op := [.bnot 2387]
def bytes2352 : Bytes := ("    let r0000095b: u32 = !r00000953;\n" : String).toByteArray.data.toList
theorem checked2352 : bytes2352=statementBytes 2395 (op2352.map lower) ∧ bytes2352.length=37 := by core033_kernel_decide
def op2353 : List WordIR.Op := [.band 2395 2335]
def bytes2353 : Bytes := ("    let r0000095c: u32 = r0000095b & r0000091f;\n" : String).toByteArray.data.toList
theorem checked2353 : bytes2353=statementBytes 2396 (op2353.map lower) ∧ bytes2353.length=48 := by core033_kernel_decide
def op2354 : List WordIR.Op := [.bxor 2394 2396]
def bytes2354 : Bytes := ("    let r0000095d: u32 = r0000095a ^ r0000095c;\n" : String).toByteArray.data.toList
theorem checked2354 : bytes2354=statementBytes 2397 (op2354.map lower) ∧ bytes2354.length=48 := by core033_kernel_decide
def op2355 : List WordIR.Op := [.badd 2393 2397]
def bytes2355 : Bytes := ("    let r0000095e: u32 = r00000959.wrapping_add(r0000095d);\n" : String).toByteArray.data.toList
theorem checked2355 : bytes2355=statementBytes 2398 (op2355.map lower) ∧ bytes2355.length=60 := by core033_kernel_decide
def op2356 : List WordIR.Op := [.literal (BitVec.ofNat 32 310598401)]
def bytes2356 : Bytes := ("    let r0000095f: u32 = 0x12835b01_u32;\n" : String).toByteArray.data.toList
theorem checked2356 : bytes2356=statementBytes 2399 (op2356.map lower) ∧ bytes2356.length=41 := by core033_kernel_decide
def op2357 : List WordIR.Op := [.badd 2398 2399]
def bytes2357 : Bytes := ("    let r00000960: u32 = r0000095e.wrapping_add(r0000095f);\n" : String).toByteArray.data.toList
theorem checked2357 : bytes2357=statementBytes 2400 (op2357.map lower) ∧ bytes2357.length=60 := by core033_kernel_decide
def op2358 : List WordIR.Op := [.badd 2400 916]
def bytes2358 : Bytes := ("    let r00000961: u32 = r00000960.wrapping_add(r00000394);\n" : String).toByteArray.data.toList
theorem checked2358 : bytes2358=statementBytes 2401 (op2358.map lower) ∧ bytes2358.length=60 := by core033_kernel_decide
def op2359 : List WordIR.Op := [.rotr 2386 2]
def bytes2359 : Bytes := ("    let r00000962: u32 = r00000952.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2359 : bytes2359=statementBytes 2402 (op2359.map lower) ∧ bytes2359.length=65 := by core033_kernel_decide
def op2360 : List WordIR.Op := [.rotr 2386 13]
def bytes2360 : Bytes := ("    let r00000963: u32 = r00000952.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2360 : bytes2360=statementBytes 2403 (op2360.map lower) ∧ bytes2360.length=65 := by core033_kernel_decide
def op2361 : List WordIR.Op := [.bxor 2402 2403]
def bytes2361 : Bytes := ("    let r00000964: u32 = r00000962 ^ r00000963;\n" : String).toByteArray.data.toList
theorem checked2361 : bytes2361=statementBytes 2404 (op2361.map lower) ∧ bytes2361.length=48 := by core033_kernel_decide
def op2362 : List WordIR.Op := [.rotr 2386 22]
def bytes2362 : Bytes := ("    let r00000965: u32 = r00000952.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2362 : bytes2362=statementBytes 2405 (op2362.map lower) ∧ bytes2362.length=65 := by core033_kernel_decide
def op2363 : List WordIR.Op := [.bxor 2404 2405]
def bytes2363 : Bytes := ("    let r00000966: u32 = r00000964 ^ r00000965;\n" : String).toByteArray.data.toList
theorem checked2363 : bytes2363=statementBytes 2406 (op2363.map lower) ∧ bytes2363.length=48 := by core033_kernel_decide
def op2364 : List WordIR.Op := [.band 2386 2360]
def bytes2364 : Bytes := ("    let r00000967: u32 = r00000952 & r00000938;\n" : String).toByteArray.data.toList
theorem checked2364 : bytes2364=statementBytes 2407 (op2364.map lower) ∧ bytes2364.length=48 := by core033_kernel_decide
def op2365 : List WordIR.Op := [.band 2386 2334]
def bytes2365 : Bytes := ("    let r00000968: u32 = r00000952 & r0000091e;\n" : String).toByteArray.data.toList
theorem checked2365 : bytes2365=statementBytes 2408 (op2365.map lower) ∧ bytes2365.length=48 := by core033_kernel_decide
def op2366 : List WordIR.Op := [.bxor 2407 2408]
def bytes2366 : Bytes := ("    let r00000969: u32 = r00000967 ^ r00000968;\n" : String).toByteArray.data.toList
theorem checked2366 : bytes2366=statementBytes 2409 (op2366.map lower) ∧ bytes2366.length=48 := by core033_kernel_decide
def op2367 : List WordIR.Op := [.bxor 2409 2381]
def bytes2367 : Bytes := ("    let r0000096a: u32 = r00000969 ^ r0000094d;\n" : String).toByteArray.data.toList
theorem checked2367 : bytes2367=statementBytes 2410 (op2367.map lower) ∧ bytes2367.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2304,op2305,op2306,op2307,op2308,op2309,op2310,op2311,op2312,op2313,op2314,op2315,op2316,op2317,op2318,op2319,op2320,op2321,op2322,op2323,op2324,op2325,op2326,op2327,op2328,op2329,op2330,op2331,op2332,op2333,op2334,op2335,op2336,op2337,op2338,op2339,op2340,op2341,op2342,op2343,op2344,op2345,op2346,op2347,op2348,op2349,op2350,op2351,op2352,op2353,op2354,op2355,op2356,op2357,op2358,op2359,op2360,op2361,op2362,op2363,op2364,op2365,op2366,op2367]
def chunks : List Bytes := [bytes2304,bytes2305,bytes2306,bytes2307,bytes2308,bytes2309,bytes2310,bytes2311,bytes2312,bytes2313,bytes2314,bytes2315,bytes2316,bytes2317,bytes2318,bytes2319,bytes2320,bytes2321,bytes2322,bytes2323,bytes2324,bytes2325,bytes2326,bytes2327,bytes2328,bytes2329,bytes2330,bytes2331,bytes2332,bytes2333,bytes2334,bytes2335,bytes2336,bytes2337,bytes2338,bytes2339,bytes2340,bytes2341,bytes2342,bytes2343,bytes2344,bytes2345,bytes2346,bytes2347,bytes2348,bytes2349,bytes2350,bytes2351,bytes2352,bytes2353,bytes2354,bytes2355,bytes2356,bytes2357,bytes2358,bytes2359,bytes2360,bytes2361,bytes2362,bytes2363,bytes2364,bytes2365,bytes2366,bytes2367]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2347 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2304.1 (.cons _ _ _ _ _ checked2305.1 (.cons _ _ _ _ _ checked2306.1 (.cons _ _ _ _ _ checked2307.1 (.cons _ _ _ _ _ checked2308.1 (.cons _ _ _ _ _ checked2309.1 (.cons _ _ _ _ _ checked2310.1 (.cons _ _ _ _ _ checked2311.1 (.cons _ _ _ _ _ checked2312.1 (.cons _ _ _ _ _ checked2313.1 (.cons _ _ _ _ _ checked2314.1 (.cons _ _ _ _ _ checked2315.1 (.cons _ _ _ _ _ checked2316.1 (.cons _ _ _ _ _ checked2317.1 (.cons _ _ _ _ _ checked2318.1 (.cons _ _ _ _ _ checked2319.1 (.cons _ _ _ _ _ checked2320.1 (.cons _ _ _ _ _ checked2321.1 (.cons _ _ _ _ _ checked2322.1 (.cons _ _ _ _ _ checked2323.1 (.cons _ _ _ _ _ checked2324.1 (.cons _ _ _ _ _ checked2325.1 (.cons _ _ _ _ _ checked2326.1 (.cons _ _ _ _ _ checked2327.1 (.cons _ _ _ _ _ checked2328.1 (.cons _ _ _ _ _ checked2329.1 (.cons _ _ _ _ _ checked2330.1 (.cons _ _ _ _ _ checked2331.1 (.cons _ _ _ _ _ checked2332.1 (.cons _ _ _ _ _ checked2333.1 (.cons _ _ _ _ _ checked2334.1 (.cons _ _ _ _ _ checked2335.1 (.cons _ _ _ _ _ checked2336.1 (.cons _ _ _ _ _ checked2337.1 (.cons _ _ _ _ _ checked2338.1 (.cons _ _ _ _ _ checked2339.1 (.cons _ _ _ _ _ checked2340.1 (.cons _ _ _ _ _ checked2341.1 (.cons _ _ _ _ _ checked2342.1 (.cons _ _ _ _ _ checked2343.1 (.cons _ _ _ _ _ checked2344.1 (.cons _ _ _ _ _ checked2345.1 (.cons _ _ _ _ _ checked2346.1 (.cons _ _ _ _ _ checked2347.1 (.cons _ _ _ _ _ checked2348.1 (.cons _ _ _ _ _ checked2349.1 (.cons _ _ _ _ _ checked2350.1 (.cons _ _ _ _ _ checked2351.1 (.cons _ _ _ _ _ checked2352.1 (.cons _ _ _ _ _ checked2353.1 (.cons _ _ _ _ _ checked2354.1 (.cons _ _ _ _ _ checked2355.1 (.cons _ _ _ _ _ checked2356.1 (.cons _ _ _ _ _ checked2357.1 (.cons _ _ _ _ _ checked2358.1 (.cons _ _ _ _ _ checked2359.1 (.cons _ _ _ _ _ checked2360.1 (.cons _ _ _ _ _ checked2361.1 (.cons _ _ _ _ _ checked2362.1 (.cons _ _ _ _ _ checked2363.1 (.cons _ _ _ _ _ checked2364.1 (.cons _ _ _ _ _ checked2365.1 (.cons _ _ _ _ _ checked2366.1 (.cons _ _ _ _ _ checked2367.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2347 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3476 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2304.2,checked2305.2,checked2306.2,checked2307.2,checked2308.2,checked2309.2,checked2310.2,checked2311.2,checked2312.2,checked2313.2,checked2314.2,checked2315.2,checked2316.2,checked2317.2,checked2318.2,checked2319.2,checked2320.2,checked2321.2,checked2322.2,checked2323.2,checked2324.2,checked2325.2,checked2326.2,checked2327.2,checked2328.2,checked2329.2,checked2330.2,checked2331.2,checked2332.2,checked2333.2,checked2334.2,checked2335.2,checked2336.2,checked2337.2,checked2338.2,checked2339.2,checked2340.2,checked2341.2,checked2342.2,checked2343.2,checked2344.2,checked2345.2,checked2346.2,checked2347.2,checked2348.2,checked2349.2,checked2350.2,checked2351.2,checked2352.2,checked2353.2,checked2354.2,checked2355.2,checked2356.2,checked2357.2,checked2358.2,checked2359.2,checked2360.2,checked2361.2,checked2362.2,checked2363.2,checked2364.2,checked2365.2,checked2366.2,checked2367.2]
  decide
end ArtifactSharedFrameGroup36
