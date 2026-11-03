import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup36
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2304 : List WordIR.Op := [.bxor 1485 1605]
def bytes2304 : Bytes := ("    let r00000960: u32 = r000005cd ^ r00000645;\n" : String).toByteArray.data.toList
theorem checked2304 : bytes2304=statementBytes 2400 (op2304.map lower) ∧ bytes2304.length=48 := by core033_kernel_decide
def op2305 : List WordIR.Op := [.badd 1485 1605]
def bytes2305 : Bytes := ("    let r00000961: u32 = r000005cd.wrapping_add(r00000645);\n" : String).toByteArray.data.toList
theorem checked2305 : bytes2305=statementBytes 2401 (op2305.map lower) ∧ bytes2305.length=60 := by core033_kernel_decide
def op2306 : List WordIR.Op := [.bnot 2401]
def bytes2306 : Bytes := ("    let r00000962: u32 = !r00000961;\n" : String).toByteArray.data.toList
theorem checked2306 : bytes2306=statementBytes 2402 (op2306.map lower) ∧ bytes2306.length=37 := by core033_kernel_decide
def op2307 : List WordIR.Op := [.band 2400 2402]
def bytes2307 : Bytes := ("    let r00000963: u32 = r00000960 & r00000962;\n" : String).toByteArray.data.toList
theorem checked2307 : bytes2307=statementBytes 2403 (op2307.map lower) ∧ bytes2307.length=48 := by core033_kernel_decide
def op2308 : List WordIR.Op := [.bxor 2399 2403]
def bytes2308 : Bytes := ("    let r00000964: u32 = r0000095f ^ r00000963;\n" : String).toByteArray.data.toList
theorem checked2308 : bytes2308=statementBytes 2404 (op2308.map lower) ∧ bytes2308.length=48 := by core033_kernel_decide
def op2309 : List WordIR.Op := [.shr 2404 31]
def bytes2309 : Bytes := ("    let r00000965: u32 = r00000964 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2309 : bytes2309=statementBytes 2405 (op2309.map lower) ∧ bytes2309.length=54 := by core033_kernel_decide
def op2310 : List WordIR.Op := [.badd 2398 2405]
def bytes2310 : Bytes := ("    let r00000966: u32 = r0000095e.wrapping_add(r00000965);\n" : String).toByteArray.data.toList
theorem checked2310 : bytes2310=statementBytes 2406 (op2310.map lower) ∧ bytes2310.length=60 := by core033_kernel_decide
def op2311 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2311 : Bytes := ("    let r00000967: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2311 : bytes2311=statementBytes 2407 (op2311.map lower) ∧ bytes2311.length=41 := by core033_kernel_decide
def op2312 : List WordIR.Op := [.bnot 2407]
def bytes2312 : Bytes := ("    let r00000968: u32 = !r00000967;\n" : String).toByteArray.data.toList
theorem checked2312 : bytes2312=statementBytes 2408 (op2312.map lower) ∧ bytes2312.length=37 := by core033_kernel_decide
def op2313 : List WordIR.Op := [.badd 2406 2408]
def bytes2313 : Bytes := ("    let r00000969: u32 = r00000966.wrapping_add(r00000968);\n" : String).toByteArray.data.toList
theorem checked2313 : bytes2313=statementBytes 2409 (op2313.map lower) ∧ bytes2313.length=60 := by core033_kernel_decide
def op2314 : List WordIR.Op := [.bnot 2409]
def bytes2314 : Bytes := ("    let r0000096a: u32 = !r00000969;\n" : String).toByteArray.data.toList
theorem checked2314 : bytes2314=statementBytes 2410 (op2314.map lower) ∧ bytes2314.length=37 := by core033_kernel_decide
def op2315 : List WordIR.Op := [.band 2397 2410]
def bytes2315 : Bytes := ("    let r0000096b: u32 = r0000095d & r0000096a;\n" : String).toByteArray.data.toList
theorem checked2315 : bytes2315=statementBytes 2411 (op2315.map lower) ∧ bytes2315.length=48 := by core033_kernel_decide
def op2316 : List WordIR.Op := [.bxor 2385 2411]
def bytes2316 : Bytes := ("    let r0000096c: u32 = r00000951 ^ r0000096b;\n" : String).toByteArray.data.toList
theorem checked2316 : bytes2316=statementBytes 2412 (op2316.map lower) ∧ bytes2316.length=48 := by core033_kernel_decide
def op2317 : List WordIR.Op := [.shr 2412 31]
def bytes2317 : Bytes := ("    let r0000096d: u32 = r0000096c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2317 : bytes2317=statementBytes 2413 (op2317.map lower) ∧ bytes2317.length=54 := by core033_kernel_decide
def op2318 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2318 : Bytes := ("    let r0000096e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2318 : bytes2318=statementBytes 2414 (op2318.map lower) ∧ bytes2318.length=41 := by core033_kernel_decide
def op2319 : List WordIR.Op := [.bxor 2413 2414]
def bytes2319 : Bytes := ("    let r0000096f: u32 = r0000096d ^ r0000096e;\n" : String).toByteArray.data.toList
theorem checked2319 : bytes2319=statementBytes 2415 (op2319.map lower) ∧ bytes2319.length=48 := by core033_kernel_decide
def op2320 : List WordIR.Op := [.badd 1485 1605]
def bytes2320 : Bytes := ("    let r00000970: u32 = r000005cd.wrapping_add(r00000645);\n" : String).toByteArray.data.toList
theorem checked2320 : bytes2320=statementBytes 2416 (op2320.map lower) ∧ bytes2320.length=60 := by core033_kernel_decide
def op2321 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2321 : Bytes := ("    let r00000971: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2321 : bytes2321=statementBytes 2417 (op2321.map lower) ∧ bytes2321.length=41 := by core033_kernel_decide
def op2322 : List WordIR.Op := [.bnot 2417]
def bytes2322 : Bytes := ("    let r00000972: u32 = !r00000971;\n" : String).toByteArray.data.toList
theorem checked2322 : bytes2322=statementBytes 2418 (op2322.map lower) ∧ bytes2322.length=37 := by core033_kernel_decide
def op2323 : List WordIR.Op := [.band 2416 2418]
def bytes2323 : Bytes := ("    let r00000973: u32 = r00000970 & r00000972;\n" : String).toByteArray.data.toList
theorem checked2323 : bytes2323=statementBytes 2419 (op2323.map lower) ∧ bytes2323.length=48 := by core033_kernel_decide
def op2324 : List WordIR.Op := [.badd 1485 1605]
def bytes2324 : Bytes := ("    let r00000974: u32 = r000005cd.wrapping_add(r00000645);\n" : String).toByteArray.data.toList
theorem checked2324 : bytes2324=statementBytes 2420 (op2324.map lower) ∧ bytes2324.length=60 := by core033_kernel_decide
def op2325 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2325 : Bytes := ("    let r00000975: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2325 : bytes2325=statementBytes 2421 (op2325.map lower) ∧ bytes2325.length=41 := by core033_kernel_decide
def op2326 : List WordIR.Op := [.bnot 2421]
def bytes2326 : Bytes := ("    let r00000976: u32 = !r00000975;\n" : String).toByteArray.data.toList
theorem checked2326 : bytes2326=statementBytes 2422 (op2326.map lower) ∧ bytes2326.length=37 := by core033_kernel_decide
def op2327 : List WordIR.Op := [.bxor 2420 2422]
def bytes2327 : Bytes := ("    let r00000977: u32 = r00000974 ^ r00000976;\n" : String).toByteArray.data.toList
theorem checked2327 : bytes2327=statementBytes 2423 (op2327.map lower) ∧ bytes2327.length=48 := by core033_kernel_decide
def op2328 : List WordIR.Op := [.badd 1485 1605]
def bytes2328 : Bytes := ("    let r00000978: u32 = r000005cd.wrapping_add(r00000645);\n" : String).toByteArray.data.toList
theorem checked2328 : bytes2328=statementBytes 2424 (op2328.map lower) ∧ bytes2328.length=60 := by core033_kernel_decide
def op2329 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2329 : Bytes := ("    let r00000979: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2329 : bytes2329=statementBytes 2425 (op2329.map lower) ∧ bytes2329.length=41 := by core033_kernel_decide
def op2330 : List WordIR.Op := [.bnot 2425]
def bytes2330 : Bytes := ("    let r0000097a: u32 = !r00000979;\n" : String).toByteArray.data.toList
theorem checked2330 : bytes2330=statementBytes 2426 (op2330.map lower) ∧ bytes2330.length=37 := by core033_kernel_decide
def op2331 : List WordIR.Op := [.badd 2424 2426]
def bytes2331 : Bytes := ("    let r0000097b: u32 = r00000978.wrapping_add(r0000097a);\n" : String).toByteArray.data.toList
theorem checked2331 : bytes2331=statementBytes 2427 (op2331.map lower) ∧ bytes2331.length=60 := by core033_kernel_decide
def op2332 : List WordIR.Op := [.bnot 2427]
def bytes2332 : Bytes := ("    let r0000097c: u32 = !r0000097b;\n" : String).toByteArray.data.toList
theorem checked2332 : bytes2332=statementBytes 2428 (op2332.map lower) ∧ bytes2332.length=37 := by core033_kernel_decide
def op2333 : List WordIR.Op := [.band 2423 2428]
def bytes2333 : Bytes := ("    let r0000097d: u32 = r00000977 & r0000097c;\n" : String).toByteArray.data.toList
theorem checked2333 : bytes2333=statementBytes 2429 (op2333.map lower) ∧ bytes2333.length=48 := by core033_kernel_decide
def op2334 : List WordIR.Op := [.bxor 2419 2429]
def bytes2334 : Bytes := ("    let r0000097e: u32 = r00000973 ^ r0000097d;\n" : String).toByteArray.data.toList
theorem checked2334 : bytes2334=statementBytes 2430 (op2334.map lower) ∧ bytes2334.length=48 := by core033_kernel_decide
def op2335 : List WordIR.Op := [.shr 2430 31]
def bytes2335 : Bytes := ("    let r0000097f: u32 = r0000097e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2335 : bytes2335=statementBytes 2431 (op2335.map lower) ∧ bytes2335.length=54 := by core033_kernel_decide
def op2336 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2336 : Bytes := ("    let r00000980: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2336 : bytes2336=statementBytes 2432 (op2336.map lower) ∧ bytes2336.length=41 := by core033_kernel_decide
def op2337 : List WordIR.Op := [.bxor 2431 2432]
def bytes2337 : Bytes := ("    let r00000981: u32 = r0000097f ^ r00000980;\n" : String).toByteArray.data.toList
theorem checked2337 : bytes2337=statementBytes 2433 (op2337.map lower) ∧ bytes2337.length=48 := by core033_kernel_decide
def op2338 : List WordIR.Op := [.band 2415 2433]
def bytes2338 : Bytes := ("    let r00000982: u32 = r0000096f & r00000981;\n" : String).toByteArray.data.toList
theorem checked2338 : bytes2338=statementBytes 2434 (op2338.map lower) ∧ bytes2338.length=48 := by core033_kernel_decide
def op2339 : List WordIR.Op := [.band 2373 2434]
def bytes2339 : Bytes := ("    let r00000983: u32 = r00000945 & r00000982;\n" : String).toByteArray.data.toList
theorem checked2339 : bytes2339=statementBytes 2435 (op2339.map lower) ∧ bytes2339.length=48 := by core033_kernel_decide
def op2340 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2340 : Bytes := ("    let r00000984: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2340 : bytes2340=statementBytes 2436 (op2340.map lower) ∧ bytes2340.length=41 := by core033_kernel_decide
def op2341 : List WordIR.Op := [.bxor 616 2436]
def bytes2341 : Bytes := ("    let r00000985: u32 = r00000268 ^ r00000984;\n" : String).toByteArray.data.toList
theorem checked2341 : bytes2341=statementBytes 2437 (op2341.map lower) ∧ bytes2341.length=48 := by core033_kernel_decide
def op2342 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2342 : Bytes := ("    let r00000986: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2342 : bytes2342=statementBytes 2438 (op2342.map lower) ∧ bytes2342.length=41 := by core033_kernel_decide
def op2343 : List WordIR.Op := [.bnot 2438]
def bytes2343 : Bytes := ("    let r00000987: u32 = !r00000986;\n" : String).toByteArray.data.toList
theorem checked2343 : bytes2343=statementBytes 2439 (op2343.map lower) ∧ bytes2343.length=37 := by core033_kernel_decide
def op2344 : List WordIR.Op := [.band 2437 2439]
def bytes2344 : Bytes := ("    let r00000988: u32 = r00000985 & r00000987;\n" : String).toByteArray.data.toList
theorem checked2344 : bytes2344=statementBytes 2440 (op2344.map lower) ∧ bytes2344.length=48 := by core033_kernel_decide
def op2345 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2345 : Bytes := ("    let r00000989: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2345 : bytes2345=statementBytes 2441 (op2345.map lower) ∧ bytes2345.length=41 := by core033_kernel_decide
def op2346 : List WordIR.Op := [.bxor 616 2441]
def bytes2346 : Bytes := ("    let r0000098a: u32 = r00000268 ^ r00000989;\n" : String).toByteArray.data.toList
theorem checked2346 : bytes2346=statementBytes 2442 (op2346.map lower) ∧ bytes2346.length=48 := by core033_kernel_decide
def op2347 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2347 : Bytes := ("    let r0000098b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2347 : bytes2347=statementBytes 2443 (op2347.map lower) ∧ bytes2347.length=41 := by core033_kernel_decide
def op2348 : List WordIR.Op := [.bnot 2443]
def bytes2348 : Bytes := ("    let r0000098c: u32 = !r0000098b;\n" : String).toByteArray.data.toList
theorem checked2348 : bytes2348=statementBytes 2444 (op2348.map lower) ∧ bytes2348.length=37 := by core033_kernel_decide
def op2349 : List WordIR.Op := [.bxor 2442 2444]
def bytes2349 : Bytes := ("    let r0000098d: u32 = r0000098a ^ r0000098c;\n" : String).toByteArray.data.toList
theorem checked2349 : bytes2349=statementBytes 2445 (op2349.map lower) ∧ bytes2349.length=48 := by core033_kernel_decide
def op2350 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2350 : Bytes := ("    let r0000098e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2350 : bytes2350=statementBytes 2446 (op2350.map lower) ∧ bytes2350.length=41 := by core033_kernel_decide
def op2351 : List WordIR.Op := [.bxor 616 2446]
def bytes2351 : Bytes := ("    let r0000098f: u32 = r00000268 ^ r0000098e;\n" : String).toByteArray.data.toList
theorem checked2351 : bytes2351=statementBytes 2447 (op2351.map lower) ∧ bytes2351.length=48 := by core033_kernel_decide
def op2352 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2352 : Bytes := ("    let r00000990: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2352 : bytes2352=statementBytes 2448 (op2352.map lower) ∧ bytes2352.length=41 := by core033_kernel_decide
def op2353 : List WordIR.Op := [.bnot 2448]
def bytes2353 : Bytes := ("    let r00000991: u32 = !r00000990;\n" : String).toByteArray.data.toList
theorem checked2353 : bytes2353=statementBytes 2449 (op2353.map lower) ∧ bytes2353.length=37 := by core033_kernel_decide
def op2354 : List WordIR.Op := [.badd 2447 2449]
def bytes2354 : Bytes := ("    let r00000992: u32 = r0000098f.wrapping_add(r00000991);\n" : String).toByteArray.data.toList
theorem checked2354 : bytes2354=statementBytes 2450 (op2354.map lower) ∧ bytes2354.length=60 := by core033_kernel_decide
def op2355 : List WordIR.Op := [.bnot 2450]
def bytes2355 : Bytes := ("    let r00000993: u32 = !r00000992;\n" : String).toByteArray.data.toList
theorem checked2355 : bytes2355=statementBytes 2451 (op2355.map lower) ∧ bytes2355.length=37 := by core033_kernel_decide
def op2356 : List WordIR.Op := [.band 2445 2451]
def bytes2356 : Bytes := ("    let r00000994: u32 = r0000098d & r00000993;\n" : String).toByteArray.data.toList
theorem checked2356 : bytes2356=statementBytes 2452 (op2356.map lower) ∧ bytes2356.length=48 := by core033_kernel_decide
def op2357 : List WordIR.Op := [.bxor 2440 2452]
def bytes2357 : Bytes := ("    let r00000995: u32 = r00000988 ^ r00000994;\n" : String).toByteArray.data.toList
theorem checked2357 : bytes2357=statementBytes 2453 (op2357.map lower) ∧ bytes2357.length=48 := by core033_kernel_decide
def op2358 : List WordIR.Op := [.shr 2453 31]
def bytes2358 : Bytes := ("    let r00000996: u32 = r00000995 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2358 : bytes2358=statementBytes 2454 (op2358.map lower) ∧ bytes2358.length=54 := by core033_kernel_decide
def op2359 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2359 : Bytes := ("    let r00000997: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2359 : bytes2359=statementBytes 2455 (op2359.map lower) ∧ bytes2359.length=41 := by core033_kernel_decide
def op2360 : List WordIR.Op := [.bxor 2454 2455]
def bytes2360 : Bytes := ("    let r00000998: u32 = r00000996 ^ r00000997;\n" : String).toByteArray.data.toList
theorem checked2360 : bytes2360=statementBytes 2456 (op2360.map lower) ∧ bytes2360.length=48 := by core033_kernel_decide
def op2361 : List WordIR.Op := [.bnot 2456]
def bytes2361 : Bytes := ("    let r00000999: u32 = !r00000998;\n" : String).toByteArray.data.toList
theorem checked2361 : bytes2361=statementBytes 2457 (op2361.map lower) ∧ bytes2361.length=37 := by core033_kernel_decide
def op2362 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2362 : Bytes := ("    let r0000099a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2362 : bytes2362=statementBytes 2458 (op2362.map lower) ∧ bytes2362.length=41 := by core033_kernel_decide
def op2363 : List WordIR.Op := [.badd 2457 2458]
def bytes2363 : Bytes := ("    let r0000099b: u32 = r00000999.wrapping_add(r0000099a);\n" : String).toByteArray.data.toList
theorem checked2363 : bytes2363=statementBytes 2459 (op2363.map lower) ∧ bytes2363.length=60 := by core033_kernel_decide
def op2364 : List WordIR.Op := [.band 2459 1001]
def bytes2364 : Bytes := ("    let r0000099c: u32 = r0000099b & r000003e9;\n" : String).toByteArray.data.toList
theorem checked2364 : bytes2364=statementBytes 2460 (op2364.map lower) ∧ bytes2364.length=48 := by core033_kernel_decide
def op2365 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2365 : Bytes := ("    let r0000099d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2365 : bytes2365=statementBytes 2461 (op2365.map lower) ∧ bytes2365.length=41 := by core033_kernel_decide
def op2366 : List WordIR.Op := [.bxor 616 2461]
def bytes2366 : Bytes := ("    let r0000099e: u32 = r00000268 ^ r0000099d;\n" : String).toByteArray.data.toList
theorem checked2366 : bytes2366=statementBytes 2462 (op2366.map lower) ∧ bytes2366.length=48 := by core033_kernel_decide
def op2367 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2367 : Bytes := ("    let r0000099f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2367 : bytes2367=statementBytes 2463 (op2367.map lower) ∧ bytes2367.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2304,op2305,op2306,op2307,op2308,op2309,op2310,op2311,op2312,op2313,op2314,op2315,op2316,op2317,op2318,op2319,op2320,op2321,op2322,op2323,op2324,op2325,op2326,op2327,op2328,op2329,op2330,op2331,op2332,op2333,op2334,op2335,op2336,op2337,op2338,op2339,op2340,op2341,op2342,op2343,op2344,op2345,op2346,op2347,op2348,op2349,op2350,op2351,op2352,op2353,op2354,op2355,op2356,op2357,op2358,op2359,op2360,op2361,op2362,op2363,op2364,op2365,op2366,op2367]
def chunks : List Bytes := [bytes2304,bytes2305,bytes2306,bytes2307,bytes2308,bytes2309,bytes2310,bytes2311,bytes2312,bytes2313,bytes2314,bytes2315,bytes2316,bytes2317,bytes2318,bytes2319,bytes2320,bytes2321,bytes2322,bytes2323,bytes2324,bytes2325,bytes2326,bytes2327,bytes2328,bytes2329,bytes2330,bytes2331,bytes2332,bytes2333,bytes2334,bytes2335,bytes2336,bytes2337,bytes2338,bytes2339,bytes2340,bytes2341,bytes2342,bytes2343,bytes2344,bytes2345,bytes2346,bytes2347,bytes2348,bytes2349,bytes2350,bytes2351,bytes2352,bytes2353,bytes2354,bytes2355,bytes2356,bytes2357,bytes2358,bytes2359,bytes2360,bytes2361,bytes2362,bytes2363,bytes2364,bytes2365,bytes2366,bytes2367]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2400 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2304.1 (.cons _ _ _ _ _ checked2305.1 (.cons _ _ _ _ _ checked2306.1 (.cons _ _ _ _ _ checked2307.1 (.cons _ _ _ _ _ checked2308.1 (.cons _ _ _ _ _ checked2309.1 (.cons _ _ _ _ _ checked2310.1 (.cons _ _ _ _ _ checked2311.1 (.cons _ _ _ _ _ checked2312.1 (.cons _ _ _ _ _ checked2313.1 (.cons _ _ _ _ _ checked2314.1 (.cons _ _ _ _ _ checked2315.1 (.cons _ _ _ _ _ checked2316.1 (.cons _ _ _ _ _ checked2317.1 (.cons _ _ _ _ _ checked2318.1 (.cons _ _ _ _ _ checked2319.1 (.cons _ _ _ _ _ checked2320.1 (.cons _ _ _ _ _ checked2321.1 (.cons _ _ _ _ _ checked2322.1 (.cons _ _ _ _ _ checked2323.1 (.cons _ _ _ _ _ checked2324.1 (.cons _ _ _ _ _ checked2325.1 (.cons _ _ _ _ _ checked2326.1 (.cons _ _ _ _ _ checked2327.1 (.cons _ _ _ _ _ checked2328.1 (.cons _ _ _ _ _ checked2329.1 (.cons _ _ _ _ _ checked2330.1 (.cons _ _ _ _ _ checked2331.1 (.cons _ _ _ _ _ checked2332.1 (.cons _ _ _ _ _ checked2333.1 (.cons _ _ _ _ _ checked2334.1 (.cons _ _ _ _ _ checked2335.1 (.cons _ _ _ _ _ checked2336.1 (.cons _ _ _ _ _ checked2337.1 (.cons _ _ _ _ _ checked2338.1 (.cons _ _ _ _ _ checked2339.1 (.cons _ _ _ _ _ checked2340.1 (.cons _ _ _ _ _ checked2341.1 (.cons _ _ _ _ _ checked2342.1 (.cons _ _ _ _ _ checked2343.1 (.cons _ _ _ _ _ checked2344.1 (.cons _ _ _ _ _ checked2345.1 (.cons _ _ _ _ _ checked2346.1 (.cons _ _ _ _ _ checked2347.1 (.cons _ _ _ _ _ checked2348.1 (.cons _ _ _ _ _ checked2349.1 (.cons _ _ _ _ _ checked2350.1 (.cons _ _ _ _ _ checked2351.1 (.cons _ _ _ _ _ checked2352.1 (.cons _ _ _ _ _ checked2353.1 (.cons _ _ _ _ _ checked2354.1 (.cons _ _ _ _ _ checked2355.1 (.cons _ _ _ _ _ checked2356.1 (.cons _ _ _ _ _ checked2357.1 (.cons _ _ _ _ _ checked2358.1 (.cons _ _ _ _ _ checked2359.1 (.cons _ _ _ _ _ checked2360.1 (.cons _ _ _ _ _ checked2361.1 (.cons _ _ _ _ _ checked2362.1 (.cons _ _ _ _ _ checked2363.1 (.cons _ _ _ _ _ checked2364.1 (.cons _ _ _ _ _ checked2365.1 (.cons _ _ _ _ _ checked2366.1 (.cons _ _ _ _ _ checked2367.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2400 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2960 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2304.2,checked2305.2,checked2306.2,checked2307.2,checked2308.2,checked2309.2,checked2310.2,checked2311.2,checked2312.2,checked2313.2,checked2314.2,checked2315.2,checked2316.2,checked2317.2,checked2318.2,checked2319.2,checked2320.2,checked2321.2,checked2322.2,checked2323.2,checked2324.2,checked2325.2,checked2326.2,checked2327.2,checked2328.2,checked2329.2,checked2330.2,checked2331.2,checked2332.2,checked2333.2,checked2334.2,checked2335.2,checked2336.2,checked2337.2,checked2338.2,checked2339.2,checked2340.2,checked2341.2,checked2342.2,checked2343.2,checked2344.2,checked2345.2,checked2346.2,checked2347.2,checked2348.2,checked2349.2,checked2350.2,checked2351.2,checked2352.2,checked2353.2,checked2354.2,checked2355.2,checked2356.2,checked2357.2,checked2358.2,checked2359.2,checked2360.2,checked2361.2,checked2362.2,checked2363.2,checked2364.2,checked2365.2,checked2366.2,checked2367.2]
  decide
end ArtifactPairedPathRoundGroup36
